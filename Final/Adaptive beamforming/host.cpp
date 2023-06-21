/*
 * Copyright (C) 2019-2022, Xilinx, Inc.
 * Copyright (C) 2022-2023, Advanced Micro Devices, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <iostream>
#include <string.h>
#include <sys/time.h>
#include <algorithm>
#include <complex>
#include <fstream>
#include "math.h"

#include "xcl2.hpp"
//#include "xf_utils_sw/logger.hpp"

//#include "matrixUtility.hpp"

//user code
#include "ext/utils.hpp"
// Memory alignment
template <typename T>
T* aligned_alloc(std::size_t num) {
    void* ptr = nullptr;
    if (posix_memalign(&ptr, 4096, num * sizeof(T))) {
        throw std::bad_alloc();
    }
    return reinterpret_cast<T*>(ptr);
}

// Compute time difference
unsigned long diff(const struct timeval* newTime, const struct timeval* oldTime) {
    return (newTime->tv_sec - oldTime->tv_sec) * 1000000 + (newTime->tv_usec - oldTime->tv_usec);
}

// Arguments parser
class ArgParser {
   public:
    ArgParser(int& argc, const char** argv) {
        for (int i = 1; i < argc; ++i) mTokens.push_back(std::string(argv[i]));
    }
    bool getCmdOption(const std::string option, std::string& value) const {
        std::vector<std::string>::const_iterator itr;
        itr = std::find(this->mTokens.begin(), this->mTokens.end(), option);
        if (itr != this->mTokens.end() && ++itr != this->mTokens.end()) {
            value = *itr;
            return true;
        }
        return false;
    }

   private:
    std::vector<std::string> mTokens;
};

//! Core function of QR benchmark
int main(int argc, const char* argv[]) {
    // Initialize parser
    ArgParser parser(argc, argv);
    std::cout << "================Adative Beamforming================" << std::endl;
    // Initialize paths addresses
    std::string xclbin_path;
    std::string num_str;
    int num_runs, numRow, numCol, seed;

    // Read In paths addresses
    if (!parser.getCmdOption("-xclbin", xclbin_path)) {
        std::cout << "INFO:input path is not set!\n";
    }
    std::cout << "read xclbin file from..." << xclbin_path<<std::endl;
    if (!parser.getCmdOption("-runs", num_str)) {
        num_runs = 1;
        std::cout << "INFO:row size M is not set!\n";
    } else {
        num_runs = std::stoi(num_str);
    }
    if (!parser.getCmdOption("-M", num_str)) {
        numRow = 100;
        std::cout << "INFO:row size M is not set!\n";
    } else {
        numRow = std::stoi(num_str);
    }
    if (!parser.getCmdOption("-N", num_str)) {
        numCol = 10;
        std::cout << "INFO:column size N is not set!\n";
    } else {
        numCol = std::stoi(num_str);
    }
    if (!parser.getCmdOption("-seed", num_str)) {
        seed = 12;
        std::cout << "INFO:seed is not set!\n";
    } else {
        seed = std::stoi(num_str);
    }

    // Platform related operations
    //xf::common::utils_sw::Logger logger;
    cl_int err = CL_SUCCESS;

    std::vector<cl::Device> devices = xcl::get_xil_devices();
    cl::Device device = devices[0];

    // Creating Context and Command Queue for selected Device
    cl::Context context(device, NULL, NULL, NULL, &err);
    //logger.logCreateContext(err);

    cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE | CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE, &err);
    //logger.logCreateCommandQueue(err);

    std::string devName = device.getInfo<CL_DEVICE_NAME>();
    printf("INFO: Found Device=%s\n", devName.c_str());

    cl::Program::Binaries xclBins = xcl::import_binary_file(xclbin_path);
    devices.resize(1);

    cl::Program program(context, devices, xclBins, NULL, &err);
    //logger.logCreateProgram(err);

    cl::Kernel Top_Kernel(program, "Top_Kernel", &err);
    //llogger.logCreateKernel(err);

    // Output the inputs information
    std::cout << "INFO: Matrix Row M: " << numRow << std::endl;
    std::cout << "INFO: Matrix Col N: " << numCol << std::endl;

    // Initialization of host buffers
    
    //****************************************************************//
    //Input Output Data Setting                                       //
    //****************************************************************//
    int in_size = numRow * numCol;
    int W_size = 100;
    int Vs_size = 10;
    std::complex<double>* dataA_qrd;
    std::complex<double>* dataW_qrd;
    std::complex<double>* dataVs_qrd;
    dataA_qrd = aligned_alloc<std::complex<double>>(in_size);
    //dataQ_qrd = aligned_alloc<std::complex<double>>(Q_size);
    dataW_qrd = aligned_alloc<std::complex<double>>(W_size);
    dataVs_qrd = aligned_alloc<std::complex<double>>(Vs_size);

    //****************************************************************//
    //Get Input Testbench                                             //
    //****************************************************************//
//vector of  to coordinate read
    event:cl::Event buffDone,krnlDone,flagDone;
    std::vector<cl::Event> wordWait;
    std::vector<cl::Event> krnlWait;
    std::vector<cl::Event> flagWait;
    
    std::complex<double> A[numRow][numCol];
    std::complex<double> Vs[Vs_size];

        // DDR Settings
    std::vector<cl_mem_ext_ptr_t> mext_A(1);
    std::vector<cl_mem_ext_ptr_t> mext_Vs(1);
    std::vector<cl_mem_ext_ptr_t> mext_W(1);
    // mext_i[0].flags = XCL_MEM_DDR_BANK0;
    // mext_o[0].flags = XCL_MEM_DDR_BANK0;
    // mext_i[0].obj = dataA_qrd;
    // mext_i[0].param = 0;
    // mext_o[0].obj = tau_qrd;
    // mext_o[0].param = 0;
    mext_A[0] = {0, dataA_qrd, Top_Kernel()};
    mext_Vs[0] = {1, dataVs_qrd, Top_Kernel()};
    mext_W[0] = {2, dataW_qrd, Top_Kernel()};


for(int angle_factor=51;angle_factor<53;angle_factor++){ 
    double incident_angle_in_rad=(angle_factor*0.9)*M_PI/180; //incident angle=angle_factor*0.9
    

    std::string base_path = "./organized_input/";
    std::string file_A =
        base_path + "A_" + std::to_string(angle_factor) + ".txt";
   
    std::cout <<"read file: "<< file_A << std::endl;
    

    std::complex<double>* A_ptr = reinterpret_cast<std::complex<double>*>(A);
    
    //std::complex<double>* Q_ptr = reinterpret_cast<std::complex<double>*>(Q_expected);
    //std::complex<double>* R_ptr = reinterpret_cast<std::complex<double>*>(R_expected);

    //prepare input A and Vs
    int A_size = numRow * numCol;
    readTxt(file_A, A_ptr, A_size);

    int k = 0;
    for (int r = 0; r < numRow; r++) {
        for (int c = 0; c < numCol; c++) {
            dataA_qrd[k] = A[r][c];
            k++;
        }
    }

    for(int i = 0; i < Vs_size; i++){
        dataVs_qrd[i] =std::polar(1.0,-i*M_PI*sin(incident_angle_in_rad));
        std::cout<<dataVs_qrd[i]<<std::endl;
    }
    //--------------------------------------------------------------





    // Create device buffer and map dev buf to host buf
    
    std::vector<cl::Buffer> input_buffer(1),input_Vs_buffer(1), output_buffer_W(1);

    input_buffer[0] = cl::Buffer(context, CL_MEM_EXT_PTR_XILINX | CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                                 sizeof(std::complex<double>) * in_size, &mext_A[0]);
    //output_buffer_Q[0] = cl::Buffer(context, CL_MEM_EXT_PTR_XILINX | CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,
    //                              sizeof(std::complex<double>) * Q_size, &mext_Q[0]);
    input_Vs_buffer[0] = cl::Buffer(context, CL_MEM_EXT_PTR_XILINX | CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                                 sizeof(std::complex<double>) * Vs_size, &mext_Vs[0]);
    output_buffer_W[0] = cl::Buffer(context, CL_MEM_EXT_PTR_XILINX | CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,
                                  sizeof(std::complex<double>) * W_size, &mext_W[0]); 
    // Data transfer from host buffer to device buffer
    std::vector<std::vector<cl::Event> > kernel_evt(2);
    kernel_evt[0].resize(1);
    kernel_evt[1].resize(1);

    std::vector<cl::Memory> ob_in,ob_vs, ob_out_W; //ob_out_Q;
    ob_in.push_back(input_buffer[0]);
    ob_vs.push_back(input_Vs_buffer[0]);    
    ob_out_W.push_back(output_buffer_W[0]);
    //ob_out_Q.push_back(input_buffer[0]);
    //ob_out_Q.push_back(output_buffer_Q[0]);
    //ob_out_R.push_back(input_buffer[0]);

    // Setup kernel
    Top_Kernel.setArg(0, input_buffer[0]);
    Top_Kernel.setArg(1, input_Vs_buffer[0]);
    Top_Kernel.setArg(2, output_buffer_W[0]);

    q.enqueueMigrateMemObjects(ob_in, 0, nullptr, &kernel_evt[0][0]); // 0 : migrate from host to dev
    q.finish();
    q.enqueueMigrateMemObjects(ob_vs, 0, nullptr, &kernel_evt[1][0]);
    q.finish();
    std::cout << "INFO: Finish data transfer from host to device" << std::endl;

    
    //Top_Kernel.setArg(2, output_buffer_R[0]);
    //q.finish();
    std::cout << "INFO: Finish kernel setup" << std::endl;

    // Variables to measure time
    struct timeval tstart, tend;

    // Launch kernel and compute kernel execution time
    gettimeofday(&tstart, 0);

    q.enqueueTask(Top_Kernel, nullptr, nullptr);
    
    q.finish();
    gettimeofday(&tend, 0);
    std::cout << "INFO: Finish kernel execution" << std::endl;
    int exec_time = diff(&tend, &tstart);
    std::cout << "INFO: FPGA executiom per run: " << exec_time << " us\n";

   
    // Data transfer from device buffer to host buffer
    //q.enqueueMigrateMemObjects(ob_out_Q, 1, nullptr, nullptr); // 1 : migrate from dev to host
    q.enqueueMigrateMemObjects(ob_out_W, 1, nullptr, nullptr); // 1 : migrate from dev to host
    q.finish();
    std::cout << "printout  W matrix" << std::endl;
    for(int j=0;j<W_size;j++)
        std::cout << dataW_qrd[j] << std::endl; 

}


}
