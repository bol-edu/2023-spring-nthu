// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "D:/master/HLS/labA_InterfaceSynthesis/lab1/adders.c"
# 1 "D:/master/HLS/labA_InterfaceSynthesis/lab1/adders.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "D:/master/HLS/labA_InterfaceSynthesis/lab1/adders.c" 2
# 46 "D:/master/HLS/labA_InterfaceSynthesis/lab1/adders.c"
# 1 "D:/master/HLS/labA_InterfaceSynthesis/lab1/adders.h" 1
# 49 "D:/master/HLS/labA_InterfaceSynthesis/lab1/adders.h"
int adders(int in1, int in2, int in3);
# 47 "D:/master/HLS/labA_InterfaceSynthesis/lab1/adders.c" 2

int adders(int in1, int in2, int in3) {
#pragma HLS INTERFACE mode=ap_ctrl_none port=return


#pragma HLS INTERFACE ap_none port=in3
#pragma HLS INTERFACE ap_none port=in2
#pragma HLS INTERFACE ap_none port=in1


 int sum;

 sum = in1 + in2 + in3;

 return sum;

}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
int apatb_adders_ir(int, int, int);
#ifdef __cplusplus
extern "C"
#endif
int adders_hw_stub(int in1, int in2, int in3){
int _ret = adders(in1, in2, in3);
return _ret;
}
#ifdef __cplusplus
extern "C"
#endif
int apatb_adders_sw(int in1, int in2, int in3){
int _ret = apatb_adders_ir(in1, in2, in3);
return _ret;
}
#endif
# 63 "D:/master/HLS/labA_InterfaceSynthesis/lab1/adders.c"

