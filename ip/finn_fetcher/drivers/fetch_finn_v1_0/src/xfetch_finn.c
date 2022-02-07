// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfetch_finn.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFetch_finn_CfgInitialize(XFetch_finn *InstancePtr, XFetch_finn_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axi_cpu_BaseAddress = ConfigPtr->Axi_cpu_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFetch_finn_Start(XFetch_finn *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetch_finn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_AP_CTRL) & 0x80;
    XFetch_finn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFetch_finn_IsDone(XFetch_finn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetch_finn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFetch_finn_IsIdle(XFetch_finn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetch_finn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFetch_finn_IsReady(XFetch_finn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFetch_finn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFetch_finn_EnableAutoRestart(XFetch_finn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetch_finn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_AP_CTRL, 0x80);
}

void XFetch_finn_DisableAutoRestart(XFetch_finn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetch_finn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_AP_CTRL, 0);
}

u32 XFetch_finn_Get_res_out_BaseAddress(XFetch_finn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axi_cpu_BaseAddress + XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_BASE);
}

u32 XFetch_finn_Get_res_out_HighAddress(XFetch_finn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axi_cpu_BaseAddress + XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_HIGH);
}

u32 XFetch_finn_Get_res_out_TotalBytes(XFetch_finn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_HIGH - XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_BASE + 1);
}

u32 XFetch_finn_Get_res_out_BitWidth(XFetch_finn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFETCH_FINN_AXI_CPU_WIDTH_RES_OUT;
}

u32 XFetch_finn_Get_res_out_Depth(XFetch_finn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFETCH_FINN_AXI_CPU_DEPTH_RES_OUT;
}

u32 XFetch_finn_Write_res_out_Words(XFetch_finn *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_HIGH - XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axi_cpu_BaseAddress + XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XFetch_finn_Read_res_out_Words(XFetch_finn *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_HIGH - XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axi_cpu_BaseAddress + XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_BASE + (offset + i)*4);
    }
    return length;
}

u32 XFetch_finn_Write_res_out_Bytes(XFetch_finn *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_HIGH - XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axi_cpu_BaseAddress + XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XFetch_finn_Read_res_out_Bytes(XFetch_finn *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_HIGH - XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axi_cpu_BaseAddress + XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_BASE + offset + i);
    }
    return length;
}

void XFetch_finn_InterruptGlobalEnable(XFetch_finn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetch_finn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_GIE, 1);
}

void XFetch_finn_InterruptGlobalDisable(XFetch_finn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetch_finn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_GIE, 0);
}

void XFetch_finn_InterruptEnable(XFetch_finn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFetch_finn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_IER);
    XFetch_finn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_IER, Register | Mask);
}

void XFetch_finn_InterruptDisable(XFetch_finn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFetch_finn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_IER);
    XFetch_finn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_IER, Register & (~Mask));
}

void XFetch_finn_InterruptClear(XFetch_finn *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFetch_finn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_ISR, Mask);
}

u32 XFetch_finn_InterruptGetEnabled(XFetch_finn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFetch_finn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_IER);
}

u32 XFetch_finn_InterruptGetStatus(XFetch_finn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFetch_finn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XFETCH_FINN_AXI_CPU_ADDR_ISR);
}

