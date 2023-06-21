#include <stdio.h>
#include <iostream>
#include <CL/cl.hpp>
//#include "aes.h"
#include "xcl2.hpp"
#include <vector>
#include <chrono>
#include <iomanip>

using std::vector;
void verify(vector<unsigned char, aligned_allocator<unsigned char> > roundkey){
    unsigned char i;
    unsigned char golden[] = {0x2b,0x7e,0x15,0x16,0x28,0xae,0xd2,0xa6,0xab,0xf7,0x15,0x88,0x09,0xcf,0x4f,0x3c
                                ,0xa0,0xfa,0xfe,0x17,0x88,0x54,0x2c,0xb1,0x23,0xa3,0x39,0x39,0x2a,0x6c,0x76,0x05
                                ,0xf2,0xc2,0x95,0xf2,0x7a,0x96,0xb9,0x43,0x59,0x35,0x80,0x7a,0x73,0x59,0xf6,0x7f
                                ,0x3d,0x80,0x47,0x7d,0x47,0x16,0xfe,0x3e,0x1e,0x23,0x7e,0x44,0x6d,0x7a,0x88,0x3b
                                ,0xef,0x44,0xa5,0x41,0xa8,0x52,0x5b,0x7f,0xb6,0x71,0x25,0x3b,0xdb,0x0b,0xad,0x00
                                ,0xd4,0xd1,0xc6,0xf8,0x7c,0x83,0x9d,0x87,0xca,0xf2,0xb8,0xbc,0x11,0xf9,0x15,0xbc
                                ,0x6d,0x88,0xa3,0x7a,0x11,0x0b,0x3e,0xfd,0xdb,0xf9,0x86,0x41,0xca,0x00,0x93,0xfd
                                ,0x4e,0x54,0xf7,0x0e,0x5f,0x5f,0xc9,0xf3,0x84,0xa6,0x4f,0xb2,0x4e,0xa6,0xdc,0x4f
                                ,0xea,0xd2,0x73,0x21,0xb5,0x8d,0xba,0xd2,0x31,0x2b,0xf5,0x60,0x7f,0x8d,0x29,0x2f
                                ,0xac,0x77,0x66,0xf3,0x19,0xfa,0xdc,0x21,0x28,0xd1,0x29,0x41,0x57,0x5c,0x00,0x6e
                                ,0xd0,0x14,0xf9,0xa8,0xc9,0xee,0x25,0x89,0xe1,0x3f,0x0c,0xc8,0xb6,0x63,0x0c,0xa6};


    for(i=0;i<176;i++){
            if(roundkey[i]!=golden[i]){
            	printf("i=%d roundkey=0x%2X golden=0x%2X\n",i,roundkey[i],golden[i]);
                printf("----------Fail!------------\n");
                //return 1;
            }
    }
    printf("" "----------Pass!------------\n");
}



// This example illustrates how to use array partitioning attributes in HLS
// kernels for FPGA devices using matmul.
int main(int argc, char** argv) {
    static const int key_length = 16;
    static const int roundkey_length = 176;
    vector<unsigned char, aligned_allocator<unsigned char> > key={0x2b,0x7e,0x15,0x16,0x28,0xae,0xd2,0xa6,0xab,0xf7,0x15,0x88,0x09,0xcf,0x4f,0x3c};

    //unsigned char key[] = {0x2b,0x7e,0x15,0x16,0x28,0xae,0xd2,0xa6,0xab,0xf7,0x15,0x88,0x09,0xcf,0x4f,0x3c};
    //unsigned char roundkey[roundkey_length];
    vector<unsigned char, aligned_allocator<unsigned char> > roundkey(roundkey_length);
	if (argc != 4)
	{
		std::cout << "HOST-Error: Incorrect command line syntax " << std::endl;
		std::cout << "HOST-Info:  Usage: " << argv[0] << " <Platform_Vendor> <Device_Name> <XCLBIN_File>  <Test Vectors Size>" << std::endl << std::endl;
		return EXIT_FAILURE;
	}
    std::string binaryFile = argv[3];


    cl_int err;
    cl::CommandQueue q;
    cl::Context context;
    cl::Kernel kexp_kernel;
    cl::Program program;

    auto devices = xcl::get_xil_devices();

    // read_binary_file() is a utility API which will load the binaryFile
    // and will return the pointer to file buffer.


    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};



    bool valid_device = false;
    for (unsigned int i = 0; i < devices.size(); i++) {
        auto device = devices[i];
        // Creating Context and Command Queue for selected Device
        OCL_CHECK(err, context = cl::Context(device, nullptr, nullptr, nullptr, &err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err));
        std::cout << "Trying to program device[" << i << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
        program = cl::Program(context, {device}, bins, nullptr, &err);
        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device[" << i << "] with xclbin file!\n";
        } else {
            std::cout << "Device[" << i << "]: program successful!\n";
            valid_device = true;
            break; // we break because we found a valid device
        }
    }
    if (!valid_device) {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }

    // compute the size of array in bytes
    size_t array_size_bytes_k = key_length * sizeof(unsigned char);
    size_t array_size_bytes_rk = roundkey_length * sizeof(unsigned char);
    OCL_CHECK(err,
              cl::Buffer buffer_key(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, array_size_bytes_k, key.data(), &err));
    OCL_CHECK(err,
              cl::Buffer buffer_roundkey(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, array_size_bytes_rk, roundkey.data(), &err));
    std::cout << "|-------------------------+-------------------------|\n"
              << "| Kernel                  |    Wall-Clock Time (ns) |\n"
              << "|-------------------------+-------------------------|\n";

    OCL_CHECK(err, kexp_kernel = cl::Kernel(program, "kexp", &err));

    OCL_CHECK(err, err = kexp_kernel.setArg(0, buffer_key));
    OCL_CHECK(err, err = kexp_kernel.setArg(1, buffer_roundkey));

    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_key}, 0 /* 0 means from host*/));

    cl::Event event;

    OCL_CHECK(err, err = q.enqueueTask(kexp_kernel, nullptr, &event));
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_roundkey}, CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();


    verify(roundkey);

    return EXIT_SUCCESS;
}
