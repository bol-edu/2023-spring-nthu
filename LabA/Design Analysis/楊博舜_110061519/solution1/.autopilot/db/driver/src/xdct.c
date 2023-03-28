// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdct.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDct_CfgInitialize(XDct *InstancePtr, XDct_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDct_Start(XDct *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDct_IsDone(XDct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDct_IsIdle(XDct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDct_IsReady(XDct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDct_Continue(XDct *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XDct_EnableAutoRestart(XDct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XDct_DisableAutoRestart(XDct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_AP_CTRL, 0);
}

void XDct_Set_input_r(XDct *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_INPUT_R_DATA, (u32)(Data));
    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_INPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XDct_Get_input_r(XDct *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_INPUT_R_DATA);
    Data += (u64)XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_INPUT_R_DATA + 4) << 32;
    return Data;
}

void XDct_Set_output_r(XDct *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_OUTPUT_R_DATA, (u32)(Data));
    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_OUTPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XDct_Get_output_r(XDct *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_OUTPUT_R_DATA);
    Data += (u64)XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_OUTPUT_R_DATA + 4) << 32;
    return Data;
}

void XDct_InterruptGlobalEnable(XDct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_GIE, 1);
}

void XDct_InterruptGlobalDisable(XDct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_GIE, 0);
}

void XDct_InterruptEnable(XDct *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_IER);
    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_IER, Register | Mask);
}

void XDct_InterruptDisable(XDct *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_IER);
    XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XDct_InterruptClear(XDct *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XDct_WriteReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_ISR, Mask);
}

u32 XDct_InterruptGetEnabled(XDct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_IER);
}

u32 XDct_InterruptGetStatus(XDct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XDct_ReadReg(InstancePtr->Control_BaseAddress, XDCT_CONTROL_ADDR_ISR);
}

