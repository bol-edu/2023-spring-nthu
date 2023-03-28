// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDCT_H
#define XDCT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xdct_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XDct_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XDct;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDct_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDct_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDct_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDct_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XDct_Initialize(XDct *InstancePtr, u16 DeviceId);
XDct_Config* XDct_LookupConfig(u16 DeviceId);
int XDct_CfgInitialize(XDct *InstancePtr, XDct_Config *ConfigPtr);
#else
int XDct_Initialize(XDct *InstancePtr, const char* InstanceName);
int XDct_Release(XDct *InstancePtr);
#endif

void XDct_Start(XDct *InstancePtr);
u32 XDct_IsDone(XDct *InstancePtr);
u32 XDct_IsIdle(XDct *InstancePtr);
u32 XDct_IsReady(XDct *InstancePtr);
void XDct_Continue(XDct *InstancePtr);
void XDct_EnableAutoRestart(XDct *InstancePtr);
void XDct_DisableAutoRestart(XDct *InstancePtr);

void XDct_Set_input_r(XDct *InstancePtr, u64 Data);
u64 XDct_Get_input_r(XDct *InstancePtr);
void XDct_Set_output_r(XDct *InstancePtr, u64 Data);
u64 XDct_Get_output_r(XDct *InstancePtr);

void XDct_InterruptGlobalEnable(XDct *InstancePtr);
void XDct_InterruptGlobalDisable(XDct *InstancePtr);
void XDct_InterruptEnable(XDct *InstancePtr, u32 Mask);
void XDct_InterruptDisable(XDct *InstancePtr, u32 Mask);
void XDct_InterruptClear(XDct *InstancePtr, u32 Mask);
u32 XDct_InterruptGetEnabled(XDct *InstancePtr);
u32 XDct_InterruptGetStatus(XDct *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
