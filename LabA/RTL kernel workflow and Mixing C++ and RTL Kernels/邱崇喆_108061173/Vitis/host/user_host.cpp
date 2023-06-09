/**
* Copyright (C) 2021 Xilinx, Inc
*
* Licensed under the Apache License, Version 2.0 (the "License"). You may
* not use this file except in compliance with the License. A copy of the
* License is located at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations
* under the License.
*/

#include <iostream>
#include <cstring>

// XRT includes
#include <xrt/xrt_kernel.h>  ///added for cpp_kernel
#include "xrt/xrt_bo.h"
#include "xrt/xrt_device.h"
#include <experimental/xrt_xclbin.h>
#include <experimental/xrt_ip.h>  //for User-managed Kernel

#define DATA_SIZE 4096
#define IP_START 0x1
#define IP_IDLE 0x4
#define USER_OFFSET 0x0
#define SCALAR00 0x10
#define A_OFFSET 0x18
#define B_OFFSET 0x24


int main(int argc, char** argv) {

    std::cout << "argc = " << argc << std::endl;
	for(int i=0; i < argc; i++){
	    std::cout << "argv[" << i << "] = " << argv[i] << std::endl;
	}

    // Read settings
	  std::string binaryFile = argv[1];
    auto xclbin = xrt::xclbin(binaryFile);
    int device_index = 0;

    std::cout << "Open the device " << device_index << std::endl;
    auto device = xrt::device(device_index);
    std::cout << "Load the xclbin " << binaryFile << std::endl;
    auto uuid = device.load_xclbin(binaryFile);
 
    size_t vector_size_bytes = sizeof(int) * DATA_SIZE;

    auto ip1 = xrt::ip(device, uuid, "Vadd_A_B:{Vadd_A_B_1}");
    //auto ip2 = xrt::ip(device, uuid, "Vadd_A_B:{Vadd_A_B_2}");
    //auto ip3 = xrt::ip(device, uuid, "Vadd_A_B:{Vadd_A_B_3}");

    std::cout << "Allocate Buffer in Global Memory\n";
    //auto boA = xrt::bo(device, vector_size_bytes, krnl.group_id(1)); //Match kernel arguments to RTL kernel
    //auto boB = xrt::bo(device, vector_size_bytes, krnl.group_id(2));
    auto ip1_boA = xrt::bo(device, vector_size_bytes, 0);
    auto ip1_boB = xrt::bo(device, vector_size_bytes, 1);
    //auto ip2_boA = xrt::bo(device, vector_size_bytes, 0);
    //auto ip2_boB = xrt::bo(device, vector_size_bytes, 1);
    //auto ip3_boA = xrt::bo(device, vector_size_bytes, 0);
    //auto ip3_boB = xrt::bo(device, vector_size_bytes, 1);

    // Map the contents of the buffer object into host memory
    auto bo0_map = ip1_boA.map<int*>();
    auto bo1_map = ip1_boB.map<int*>();
 
    std::fill(bo0_map, bo0_map + DATA_SIZE, 0);
    std::fill(bo1_map, bo1_map + DATA_SIZE, 0);

    // Create the test data
    int bufReference[DATA_SIZE];
    for (int i = 0; i < DATA_SIZE; ++i) {
        bo0_map[i] = i;
        bo1_map[i] = i;
        bufReference[i] = bo0_map[i] + bo1_map[i]; //Generate check data for validation
    }

    std::cout << "loaded the data" << std::endl;
    uint64_t buf_addr[2];
    // Get the buffer physical address
    buf_addr[0] = ip1_boA.address();
    buf_addr[1] = ip1_boB.address();

    // Synchronize buffer content with device side
    std::cout << "synchronize input buffer data to device global memory\n";
    ip1_boA.sync(XCL_BO_SYNC_BO_TO_DEVICE);
    ip1_boB.sync(XCL_BO_SYNC_BO_TO_DEVICE);


    ////////cpp_kernel//////////
    std::cout << "setting up cpp_kernel" << std::endl;
    auto cpp_krnl=xrt::kernel(device,uuid,"krnl_vadd:{krnl_vadd_1}");

    auto bo_a=xrt::bo(device, vector_size_bytes, cpp_krnl.group_id(0));
    auto bo_b=xrt::bo(device, vector_size_bytes, cpp_krnl.group_id(1));
    auto bo_c=xrt::bo(device, vector_size_bytes, cpp_krnl.group_id(2));

    auto bo_a_map = bo_a.map<int*>(); //it's like copy the pointer
    auto bo_b_map = bo_b.map<int*>();
    auto bo_c_map = bo_c.map<int*>();

    int cpp_ref_outcome[DATA_SIZE];
    for (int i = 0; i < DATA_SIZE; ++i) {
    	bo_a_map[i] = i;
    	bo_b_map[i] = i;
    	cpp_ref_outcome[i] = bo_a_map[i] + bo_b_map[i]; //Generate check data for validation
    }

    bo_a.sync(XCL_BO_SYNC_BO_TO_DEVICE);
    bo_b.sync(XCL_BO_SYNC_BO_TO_DEVICE);
    std::cout << "Execution of the cpp_krnl\n";
    auto run = cpp_krnl(bo_a, bo_b, bo_c, DATA_SIZE);
    run.wait();
    //get the output
    bo_c.sync(XCL_BO_SYNC_BO_FROM_DEVICE);

    //////////////////////////end of cpp kernel///////////


    //std::cout << "Execution of the kernel\n";
    //auto run = krnl(DATA_SIZE, boA, boB); //DATA_SIZE=size
    //run.wait();

    std::cout << "INFO: Setting IP Data" << std::endl;
    std::cout << "Setting Register \"A\" (Input Address)" << std::endl;
    ip1.write_register(A_OFFSET, buf_addr[0]);
    ip1.write_register(A_OFFSET + 4, buf_addr[0] >> 32);

    std::cout << "Setting Register \"B\" (Input Address)" << std::endl;
    ip1.write_register(B_OFFSET, buf_addr[1]);
    ip1.write_register(B_OFFSET + 4, buf_addr[1] >> 32);
    ip1.write_register(SCALAR00,DATA_SIZE);

    uint32_t axi_ctrl = IP_START;
    std::cout << "INFO: IP Start" << std::endl;
    //axi_ctrl = IP_START;
    ip1.write_register(USER_OFFSET, axi_ctrl);

    // Wait until the IP is DONE
    int i = 0;
    //axi_ctrl = 0;
    while (axi_ctrl != IP_IDLE) {
    //while ((axi_ctrl & IP_IDLE) != IP_IDLE) {
        axi_ctrl = ip1.read_register(USER_OFFSET);
        i = i + 1;
        std::cout << "Read Loop iteration: " << i << " and Axi Control = " << axi_ctrl << "\n";
        if (i > 100000) {
	  axi_ctrl = IP_IDLE;
          ip1.write_register(USER_OFFSET, axi_ctrl);
        }
    }

    std::cout << "INFO: IP Done" << std::endl;
    // Get the output;
    std::cout << "Get the output data from the device" << std::endl;
    ip1_boB.sync(XCL_BO_SYNC_BO_FROM_DEVICE);


    std::cout << "output result" << std::endl;
    for (int k = 0; k < DATA_SIZE; ++k) {
        std::cout << bo1_map[k] << std::endl;
    }



    // Validate results
    if (std::memcmp(bo1_map, bufReference, DATA_SIZE)){
        std::cout << "rtl_kernel output not match the reference output" << std::endl;
    }
    else{
    	std::cout << "rtl_kernel was successfully implemented" << std::endl;
    }
    ///
    if (std::memcmp(bo_c_map, cpp_ref_outcome, DATA_SIZE)){
       std::cout << "cpp_kernel output not match the reference output" << std::endl;
    }
    else{
    	std::cout << "cpp_kernel was successfully implemented" << std::endl;
    }

    std::cout << "TEST PASSED\n";
    return 0;
}
