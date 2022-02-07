// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSTREAMTOFINN_H
#define XSTREAMTOFINN_H

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
#include "xstreamtofinn_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Axi_cpu_BaseAddress;
} XStreamtofinn_Config;
#endif

typedef struct {
    u64 Axi_cpu_BaseAddress;
    u32 IsReady;
} XStreamtofinn;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XStreamtofinn_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XStreamtofinn_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XStreamtofinn_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XStreamtofinn_ReadReg(BaseAddress, RegOffset) \
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
int XStreamtofinn_Initialize(XStreamtofinn *InstancePtr, u16 DeviceId);
XStreamtofinn_Config* XStreamtofinn_LookupConfig(u16 DeviceId);
int XStreamtofinn_CfgInitialize(XStreamtofinn *InstancePtr, XStreamtofinn_Config *ConfigPtr);
#else
int XStreamtofinn_Initialize(XStreamtofinn *InstancePtr, const char* InstanceName);
int XStreamtofinn_Release(XStreamtofinn *InstancePtr);
#endif

void XStreamtofinn_Start(XStreamtofinn *InstancePtr);
u32 XStreamtofinn_IsDone(XStreamtofinn *InstancePtr);
u32 XStreamtofinn_IsIdle(XStreamtofinn *InstancePtr);
u32 XStreamtofinn_IsReady(XStreamtofinn *InstancePtr);
void XStreamtofinn_EnableAutoRestart(XStreamtofinn *InstancePtr);
void XStreamtofinn_DisableAutoRestart(XStreamtofinn *InstancePtr);

u32 XStreamtofinn_Get_image_in_BaseAddress(XStreamtofinn *InstancePtr);
u32 XStreamtofinn_Get_image_in_HighAddress(XStreamtofinn *InstancePtr);
u32 XStreamtofinn_Get_image_in_TotalBytes(XStreamtofinn *InstancePtr);
u32 XStreamtofinn_Get_image_in_BitWidth(XStreamtofinn *InstancePtr);
u32 XStreamtofinn_Get_image_in_Depth(XStreamtofinn *InstancePtr);
u32 XStreamtofinn_Write_image_in_Words(XStreamtofinn *InstancePtr, int offset, word_type *data, int length);
u32 XStreamtofinn_Read_image_in_Words(XStreamtofinn *InstancePtr, int offset, word_type *data, int length);
u32 XStreamtofinn_Write_image_in_Bytes(XStreamtofinn *InstancePtr, int offset, char *data, int length);
u32 XStreamtofinn_Read_image_in_Bytes(XStreamtofinn *InstancePtr, int offset, char *data, int length);

void XStreamtofinn_InterruptGlobalEnable(XStreamtofinn *InstancePtr);
void XStreamtofinn_InterruptGlobalDisable(XStreamtofinn *InstancePtr);
void XStreamtofinn_InterruptEnable(XStreamtofinn *InstancePtr, u32 Mask);
void XStreamtofinn_InterruptDisable(XStreamtofinn *InstancePtr, u32 Mask);
void XStreamtofinn_InterruptClear(XStreamtofinn *InstancePtr, u32 Mask);
u32 XStreamtofinn_InterruptGetEnabled(XStreamtofinn *InstancePtr);
u32 XStreamtofinn_InterruptGetStatus(XStreamtofinn *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
