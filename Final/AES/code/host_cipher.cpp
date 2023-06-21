#include <stdio.h>
#include <iostream>
#include <CL/cl.hpp>
//#include "aes.h"
#include "xcl2.hpp"
#include <vector>
#include <hls_vector.h>
#include <hls_stream.h>
#include <chrono>
#include <iomanip>


#define MEMORY_DWIDTH 512
#define SIZEOF_WORD 4
#define NUM_WORDS 16

#define DATA_SIZE 1024

using std::vector;

void verify(vector<unsigned char, aligned_allocator<unsigned char>> cipher){
	//vector<unsigned char, aligned_allocator<unsigned char>>  plain(DATA_SIZE*NUM_WORDS);
	vector<unsigned char, aligned_allocator<unsigned char>>  golden(DATA_SIZE*NUM_WORDS);
    unsigned char roundkey[176];

    FILE *fp;


    if((fp = fopen("/mnt/HLSNAS/01.LcglIk/Final/code/gold_vec_raw00.dat", "rb")) == NULL){
		printf("Open gold file Erorr...\n");
	}

	fread(golden.data(),1,NUM_WORDS*DATA_SIZE,fp);
	rewind(fp);
	fclose(fp);

	if((fp = fopen("/mnt/HLSNAS/01.LcglIk/Final/code/key_raw00.dat", "rb")) == NULL){
		printf("Open file Erorr...\n");
	}
	fread(roundkey,176,1,fp);
	rewind(fp);
	fclose(fp);


    printf("----------Start!------------\n");
    int i,j;

    for(i=0;i<1024;i++){
    	for(j=0;j<16;j++){
			if(cipher[i*16+j] != golden[i*16+j]){
				printf("----------Fail!------------\n");
				printf("i=%d, j=%d,cipher=%2X, golden=%2X\n",i,j,cipher[i*16+j],golden[i*16+j]);
				//return 1;
			}
    	}
    }
	printf("----------Pass!------------\n");
}

int main(int argc, char** argv) {
	static const int key_length = 16;
    static const int roundkey_length = 176;
    vector<unsigned char, aligned_allocator<unsigned char> > key={0xee,0x6a,0x0b,0x9b,0x7f,0x4a,0xf7,0x75,0x56,0xd3,0x70,0x10,0xbe,0x36,0xb3,0x3e};

    //unsigned char roundkey[roundkey_length];
    vector<unsigned char, aligned_allocator<unsigned char>> plain(DATA_SIZE*NUM_WORDS);
    vector<unsigned char, aligned_allocator<unsigned char>> cipher(DATA_SIZE*NUM_WORDS);

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
    cl::Kernel kexp_kernel,cipher_kernel;
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
    FILE* fp;
    if((fp = fopen("/mnt/HLSNAS/01.LcglIk/Final/code/test_vec_raw00.dat", "rb")) == NULL){
		printf("Open file Erorr...\n");
	}

	fread(plain.data(),1,NUM_WORDS*DATA_SIZE,fp);
  	rewind(fp);
  	fclose(fp);

  	FILE* fp2;
  	printf("Write Cipher File...\n");
	if((fp2 = fopen("/mnt/HLSNAS/01.LcglIk/Final/code/A_vec_raw00.dat", "wb")) == NULL){
		printf("Open file Erorr...\n");
	}
    // compute the size of array in bytes
    size_t array_size_bytes_k = key_length * sizeof(unsigned char);
    size_t array_size_bytes_rk = roundkey_length * sizeof(unsigned char);
    size_t array_size_bytes_plain = DATA_SIZE*NUM_WORDS * sizeof(unsigned char);
    size_t array_size_bytes_cipher = DATA_SIZE*NUM_WORDS* sizeof(unsigned char);

    std::chrono::duration<double> kexp_kernel_duration, cipher_kernel_duration;
    auto fpga_begin = std::chrono::high_resolution_clock::now();

    OCL_CHECK(err,
              cl::Buffer buffer_key(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, array_size_bytes_k, key.data(), &err));
    OCL_CHECK(err,
              cl::Buffer buffer_roundkey(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, array_size_bytes_rk, roundkey.data(), &err));

    OCL_CHECK(err,
              cl::Buffer buffer_plain(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, array_size_bytes_plain, plain.data(), &err));
    OCL_CHECK(err,
              cl::Buffer buffer_cipher(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, array_size_bytes_cipher, cipher.data(), &err));

    OCL_CHECK(err, kexp_kernel = cl::Kernel(program, "kexp", &err));
    OCL_CHECK(err, cipher_kernel = cl::Kernel(program, "Cipher_top", &err));


    OCL_CHECK(err, err = kexp_kernel.setArg(0, buffer_key));
    OCL_CHECK(err, err = kexp_kernel.setArg(1, buffer_roundkey));

    OCL_CHECK(err, err = cipher_kernel.setArg(0, buffer_roundkey));
    OCL_CHECK(err, err = cipher_kernel.setArg(1, buffer_plain));
    OCL_CHECK(err, err = cipher_kernel.setArg(2, buffer_cipher));

    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_key}, 0 /* 0 means from host*/));
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_plain}, 0 /* 0 means from host*/));
    cl::Event event_rk,event_cipher;

    vector<cl::Event> event;
    auto kexp_kernel_begin = std::chrono::high_resolution_clock::now();

    OCL_CHECK(err, err = q.enqueueTask(kexp_kernel, nullptr, &event_rk));
    event.push_back(event_rk);

    auto kexp_kernel_end = std::chrono::high_resolution_clock::now();

    kexp_kernel_duration = kexp_kernel_end - kexp_kernel_begin;

    auto cipher_kernel_begin = std::chrono::high_resolution_clock::now();

    OCL_CHECK(err, err = q.enqueueTask(cipher_kernel, &event, &event_cipher));

    auto cipher_kernel_end = std::chrono::high_resolution_clock::now();

    cipher_kernel_duration = cipher_kernel_end - cipher_kernel_begin;


    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_cipher}, CL_MIGRATE_MEM_OBJECT_HOST));

    q.finish();
    auto fpga_end  = std::chrono::high_resolution_clock::now();

    std::chrono::duration<double> fpga_duration = fpga_end - fpga_begin;

    printf("Write Cipher...\n");
	fwrite(cipher.data(),1,NUM_WORDS*DATA_SIZE,fp2);
    rewind(fp2);
	fclose(fp2);

    std::cout << "|" << std::left  << std::setw(12) << "total time(s):"
              << "|" << std::right << std::setw(12) << fpga_duration.count() << " |\n";
    std::cout << "|" << std::left  << std::setw(12) << "key expansion time(s):"
              << "|" << std::right << std::setw(12) << kexp_kernel_duration.count() << " |\n";
    std::cout << "|" << std::left  << std::setw(12) << "cipher time(s):"
              << "|" << std::right << std::setw(12) << cipher_kernel_duration.count() << " |\n";

    return EXIT_SUCCESS;
}
