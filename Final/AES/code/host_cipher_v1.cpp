#include <stdio.h>
#include <iostream>
#include <CL/cl.hpp>
#include <CL/opencl.h>
//#include "aes.h"
#include "xcl2.hpp"
#include <vector>
#include <hls_vector.h>
#include <hls_stream.h>
#include <iomanip>
#include <chrono>


#define MEMORY_DWIDTH 512
#define SIZEOF_WORD 4
#define NUM_WORDS 16

#define DATA_SIZE 1024

using std::vector;

void verify(vector<unsigned char, aligned_allocator<unsigned char>> cipher, size_t loop_count){
	//vector<unsigned char, aligned_allocator<unsigned char>>  plain(DATA_SIZE*NUM_WORDS);
	vector<unsigned char, aligned_allocator<unsigned char>>  golden(DATA_SIZE*NUM_WORDS);
    unsigned char roundkey[176];
    FILE *fp;
	if((fp = fopen("/mnt/HLSNAS/01.LcglIk/Final/code/data/gold_vec_raw00.dat", "rb")) == NULL){
		printf("Open gold file Erorr...\n");
	}
    for(size_t i=0;i<loop_count;i++){
    	fread(golden.data(),1,NUM_WORDS*DATA_SIZE,fp);
    }
	rewind(fp);
	fclose(fp);

	if((fp = fopen("/mnt/HLSNAS/01.LcglIk/Final/code/16MB/key_raw00.dat", "rb")) == NULL){
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

void event_cb(cl_event event1, cl_int cmd_status, void* data) {
    cl_int err;
    cl_command_type command;
    cl::Event event(event1);
    OCL_CHECK(err, err = event.getInfo(CL_EVENT_COMMAND_TYPE, &command));
    cl_int status;
    OCL_CHECK(err, err = event.getInfo(CL_EVENT_COMMAND_EXECUTION_STATUS, &status));
    const char* command_str;
    const char* status_str;
    switch (command) {
        case CL_COMMAND_READ_BUFFER:
            command_str = "buffer read";
            break;
        case CL_COMMAND_WRITE_BUFFER:
            command_str = "buffer write";
            break;
        case CL_COMMAND_NDRANGE_KERNEL:
            command_str = "kernel";
            break;
        case CL_COMMAND_MAP_BUFFER:
            command_str = "kernel";
            break;
        case CL_COMMAND_COPY_BUFFER:
            command_str = "kernel";
            break;
        case CL_COMMAND_MIGRATE_MEM_OBJECTS:
            command_str = "buffer migrate";
            break;
        default:
            command_str = "unknown";
    }
    switch (status) {
        case CL_QUEUED:
            status_str = "Queued";
            break;
        case CL_SUBMITTED:
            status_str = "Submitted";
            break;
        case CL_RUNNING:
            status_str = "Executing";
            break;
        case CL_COMPLETE:
            status_str = "Completed";
            break;
    }
    printf("[%s]: %s %s\n", reinterpret_cast<char*>(data), status_str, command_str);
    fflush(stdout);
}

void set_callback(cl::Event event, const char* queue_name) {
    cl_int err;
    OCL_CHECK(err, err = event.setCallback(CL_COMPLETE, event_cb, (void*)queue_name));
}

int main(int argc, char** argv) {
	static const int key_length = 16;
    static const int roundkey_length = 176;
    size_t ARRAY_SIZE = DATA_SIZE*NUM_WORDS*(1024LL*1024);
    size_t elements_per_iteration = DATA_SIZE*NUM_WORDS;
    size_t num_iterations = ARRAY_SIZE / elements_per_iteration;

    printf("Loading Key...\n");
    vector<unsigned char, aligned_allocator<unsigned char>> key={0x51,0x21,0x17,0x74,0x52,0xc5,0x79,0xa2,0x0b,0x10,0x76,0x58,0x22,0x63,0xf3,0xb8};
/*    vector<unsigned char, aligned_allocator<unsigned char>> key(key_length);

    FILE* fp;
    if((fp = fopen("/mnt/HLSNAS/01.LcglIk/Final/code/16MB/key_raw00.dat", "rb")) == NULL){
    	printf("Open file Erorr...\n");
    	}
    fread(key.data(),16,1,fp);
    rewind(fp);
    fclose(fp);*/

    //unsigned char roundkey[roundkey_length];

    FILE* fp1;
    printf("Open Plain File...\n");
	if((fp1 = fopen("/mnt/HLSNAS/01.LcglIk/Final/code/data/test_vec_raw00.dat", "rb")) == NULL){
		printf("Open file Erorr...\n");
	}

    FILE* fp2;
    printf("Write Cipher File...\n");
	if((fp2 = fopen("/mnt/HLSNAS/01.LcglIk/Final/code/data/A_vec_raw00.dat", "wb")) == NULL){
		printf("Open file Erorr...\n");
	}
    vector<vector<unsigned char,aligned_allocator<unsigned char>>> plain;
    vector<vector<unsigned char,aligned_allocator<unsigned char>>> cipher;
    vector<unsigned char,aligned_allocator<unsigned char>> roundkey;
    vector<unsigned char,aligned_allocator<unsigned char>> roundkey1(roundkey_length);

    for(int i=0;i<20;i++){
    	vector<unsigned char, aligned_allocator<unsigned char>> plain0(DATA_SIZE*NUM_WORDS);
    	vector<unsigned char, aligned_allocator<unsigned char>> cipher0(DATA_SIZE*NUM_WORDS);
	    plain.push_back(plain0);
	    cipher.push_back(cipher0);
    }


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
        OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE, &err));
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
    size_t array_size_bytes_plain = DATA_SIZE*NUM_WORDS * sizeof(unsigned char);
    size_t array_size_bytes_cipher = DATA_SIZE*NUM_WORDS* sizeof(unsigned char);

    auto fpga_begin = std::chrono::high_resolution_clock::now();

    std::chrono::duration<double> kexp_kernel_duration, cipher_kernel_duration, kernel_duration;

    cl::Kernel kexp_kernel;
    cl::Event  kexp_events;

    cl::Buffer buffer_key;
    cl::Buffer buffer_roundkey1;

    std::cout << "Creating Kexp Buffers..." << std::endl;
	OCL_CHECK(err,
			buffer_key = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, array_size_bytes_k, key.data(), &err));
	OCL_CHECK(err,
			buffer_roundkey1 = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, array_size_bytes_rk, roundkey1.data(), &err));


	cl::Event kexp_transfer;
	vector<cl::Event> wait_kexp;

	std::cout << "Copying Kexp data (Host to Device)..." << std::endl;
	OCL_CHECK(err, kexp_kernel = cl::Kernel(program, "kexp", &err));
	OCL_CHECK(err, err = kexp_kernel.setArg(0, buffer_key));
	OCL_CHECK(err, err = kexp_kernel.setArg(1, buffer_roundkey1));

	OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_key}, 0/* 0 means from host*/, &wait_kexp, &kexp_transfer));
	wait_kexp.push_back(kexp_transfer);
	set_callback(kexp_transfer, "write_event_queue");

    auto kernel_begin = std::chrono::high_resolution_clock::now();
    auto kexp_kernel_begin = std::chrono::high_resolution_clock::now();

    printf("Enqueueing kernel.\n");
	std::cout << "Running kexp_kernel" << std::endl;
	OCL_CHECK(err, err = q.enqueueTask(kexp_kernel, &wait_kexp, &kexp_events));
	wait_kexp.push_back(kexp_events);
    set_callback(kexp_events, "kexp_kernel_queue");
    auto kexp_kernel_end = std::chrono::high_resolution_clock::now();

    kexp_kernel_duration += kexp_kernel_end - kexp_kernel_begin;

//    cl::Event read_events_kexp;
//    std::cout << "Getting kexp Results (Device to Host)..." << std::endl;
//	OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_roundkey1}, CL_MIGRATE_MEM_OBJECT_HOST, &wait_kexp, &read_events_kexp));
//	read_events_kexp.wait();

	cl::Kernel cipher_kernel;
	cl::Buffer buffer_roundkey;
	vector<cl::Buffer> buffer_plain(20);
	vector<cl::Buffer> buffer_cipher(20);
    cl::Event  cipher_events;

	int i=0;
	int z=0;
	int j;
    for (size_t iteration_idx = 0; iteration_idx < num_iterations; iteration_idx++){
    	j=z%20;
        printf("Read Plain...\n");
    	fread(plain[j].data(),1,NUM_WORDS*DATA_SIZE,fp1);
        std::cout << "Creating Cipher Buffers..." << std::endl;
//        	buffer_roundkey = buffer_roundkey1;
        OCL_CHECK(err,
        		buffer_plain[j] = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, array_size_bytes_plain, plain[j].data(), &err));
        OCL_CHECK(err,
        		buffer_cipher[j] = cl::Buffer(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, array_size_bytes_cipher, cipher[j].data(), &err));


        cl::Event write_event;
        std::cout << "Copying Cipher data (Host to Device)..." << std::endl;
        OCL_CHECK(err, cipher_kernel = cl::Kernel(program, "Cipher_top", &err));

        OCL_CHECK(err, err = cipher_kernel.setArg(0, buffer_roundkey1));
        OCL_CHECK(err, err = cipher_kernel.setArg(1, buffer_plain[j]));
        OCL_CHECK(err, err = cipher_kernel.setArg(2, buffer_cipher[j]));

        OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_plain[j]}, 0 /* 0 means from host*/,nullptr, &write_event));
        write_event.wait();
    	set_callback(write_event, "write_event_queue");

        auto cipher_kernel_begin = std::chrono::high_resolution_clock::now();

        vector<cl::Event> eventList;
        printf("Enqueueing kernel...\n");
        std::cout << "Running cipher_kernel: " << std::endl;
        OCL_CHECK(err, err = q.enqueueTask(cipher_kernel, nullptr, &cipher_events));
        eventList.push_back(cipher_events);
        OCL_CHECK(err, err = cl::Event::waitForEvents(eventList));
		set_callback(cipher_events, "cipher_kernel_queue");

        auto cipher_kernel_end = std::chrono::high_resolution_clock::now();
        auto kernel_end = std::chrono::high_resolution_clock::now();
        cipher_kernel_duration += cipher_kernel_end - cipher_kernel_begin;
        kernel_duration = kernel_end - kernel_begin;

		vector<cl::Event> flagWait;
        cl::Event read_events;
        std::cout << "Getting Cipher Results (Device to Host)..." << std::endl;
        OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_cipher[j]}, CL_MIGRATE_MEM_OBJECT_HOST, &eventList, &read_events));
        flagWait.push_back(read_events);
        OCL_CHECK(err, err = cl::Event::waitForEvents(flagWait));
    	set_callback(read_events, "total_queue");

        printf("Releasing Cipher Buffer...\n");
 	    buffer_roundkey = nullptr;
        buffer_plain[j] = nullptr;
		buffer_cipher[j] = nullptr;
		cipher_events = nullptr;

        printf("Write Cipher...\n");
    	fwrite(cipher.data(),1,NUM_WORDS*DATA_SIZE,fp2);

        printf("Finish...\n");
        OCL_CHECK(err, err = q.finish());



// 	    printf("Releasing Kernel...\n");
// 	    kexp_kernel.clear();
// 	    cipher_kernel.clear();

// 	    printf("Releasing events...\n");
//        kexp_events.clear();
//        cipher_events.clear();
//        read_events.clear();

        std::cout << "loop "<< iteration_idx+1 << " completed" << std::endl;
        z++;
    }

//  printf("Releasing kexp Buffer...\n");
// 	buffer_key = nullptr;
// 	buffer_roundkey1 = nullptr;

    auto fpga_end = std::chrono::high_resolution_clock::now();

    std::chrono::duration<double> fpga_duration = fpga_end - fpga_begin;

    printf("Flushing...\n");
    OCL_CHECK(err, err = q.flush());
    rewind(fp1);
	fclose(fp1);
    rewind(fp2);
	fclose(fp2);

    std::cout << "|" << std::left << std::setw(12) << "total time(s):"
              << "|" << std::right << std::setw(12) << fpga_duration.count() << " |\n";
    std::cout << "|" << std::left << std::setw(12) << "key expansion time(s):"
              << "|" << std::right << std::setw(12) << kexp_kernel_duration.count() << " |\n";
    std::cout << "|" << std::left << std::setw(12) << "cipher time(s):"
              << "|" << std::right << std::setw(12) << cipher_kernel_duration.count() << " |\n";
    std::cout << "|" << std::left << std::setw(12) << "total kernel time(s):"
              << "|" << std::right << std::setw(12) << kernel_duration.count() << " |\n";

    return EXIT_SUCCESS;
}
