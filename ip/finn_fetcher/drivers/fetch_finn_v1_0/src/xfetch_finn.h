// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XFETCH_FINN_H
#define XFETCH_FINN_H

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
#include "xfetch_finn_hw.h"

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
} XFetch_finn_Config;
#endif

typedef struct {
    u64 Axi_cpu_BaseAddress;
    u32 IsReady;
} XFetch_finn;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFetch_finn_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFetch_finn_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFetch_finn_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFetch_finn_ReadReg(BaseAddress, RegOffset) \
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
int XFetch_finn_Initialize(XFetch_finn *InstancePtr, u16 DeviceId);
XFetch_finn_Config* XFetch_finn_LookupConfig(u16 DeviceId);
int XFetch_finn_CfgInitialize(XFetch_finn *InstancePtr, XFetch_finn_Config *ConfigPtr);
#else
int XFetch_finn_Initialize(XFetch_finn *InstancePtr, const char* InstanceName);
int XFetch_finn_Release(XFetch_finn *InstancePtr);
#endif

void XFetch_finn_Start(XFetch_finn *InstancePtr);
u32 XFetch_finn_IsDone(XFetch_finn *InstancePtr);
u32 XFetch_finn_IsIdle(XFetch_finn *InstancePtr);
u32 XFetch_finn_IsReady(XFetch_finn *InstancePtr);
void XFetch_finn_EnableAutoRestart(XFetch_finn *InstancePtr);
void XFetch_finn_DisableAutoRestart(XFetch_finn *InstancePtr);

u32 XFetch_finn_Get_res_out_BaseAddress(XFetch_finn *InstancePtr);
u32 XFetch_finn_Get_res_out_HighAddress(XFetch_finn *InstancePtr);
u32 XFetch_finn_Get_res_out_TotalBytes(XFetch_finn *InstancePtr);
u32 XFetch_finn_Get_res_out_BitWidth(XFetch_finn *InstancePtr);
u32 XFetch_finn_Get_res_out_Depth(XFetch_finn *InstancePtr);
u32 XFetch_finn_Write_res_out_Words(XFetch_finn *InstancePtr, int offset, word_type *data, int length);
u32 XFetch_finn_Read_res_out_Words(XFetch_finn *InstancePtr, int offset, word_type *data, int length);
u32 XFetch_finn_Write_res_out_Bytes(XFetch_finn *InstancePtr, int offset, char *data, int length);
u32 XFetch_finn_Read_res_out_Bytes(XFetch_finn *InstancePtr, int offset, char *data, int length);

void XFetch_finn_InterruptGlobalEnable(XFetch_finn *InstancePtr);
void XFetch_finn_InterruptGlobalDisable(XFetch_finn *InstancePtr);
void XFetch_finn_InterruptEnable(XFetch_finn *InstancePtr, u32 Mask);
void XFetch_finn_InterruptDisable(XFetch_finn *InstancePtr, u32 Mask);
void XFetch_finn_InterruptClear(XFetch_finn *InstancePtr, u32 Mask);
u32 XFetch_finn_InterruptGetEnabled(XFetch_finn *InstancePtr);
u32 XFetch_finn_InterruptGetStatus(XFetch_finn *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
