// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdct.h"

extern XDct_Config XDct_ConfigTable[];

XDct_Config *XDct_LookupConfig(u16 DeviceId) {
	XDct_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDCT_NUM_INSTANCES; Index++) {
		if (XDct_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDct_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDct_Initialize(XDct *InstancePtr, u16 DeviceId) {
	XDct_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDct_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDct_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

