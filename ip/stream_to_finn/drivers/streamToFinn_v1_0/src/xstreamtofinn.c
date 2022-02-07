// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xstreamtofinn.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XStreamtofinn_CfgInitialize(XStreamtofinn *InstancePtr, XStreamtofinn_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axi_cpu_BaseAddress = ConfigPtr->Axi_cpu_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XStreamtofinn_Start(XStreamtofinn *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreamtofinn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_AP_CTRL) & 0x80;
    XStreamtofinn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_AP_CTRL, Data | 0x01);
}

u32 XStreamtofinn_IsDone(XStreamtofinn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreamtofinn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XStreamtofinn_IsIdle(XStreamtofinn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreamtofinn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XStreamtofinn_IsReady(XStreamtofinn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XStreamtofinn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XStreamtofinn_EnableAutoRestart(XStreamtofinn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStreamtofinn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_AP_CTRL, 0x80);
}

void XStreamtofinn_DisableAutoRestart(XStreamtofinn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStreamtofinn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_AP_CTRL, 0);
}

u32 XStreamtofinn_Get_image_in_BaseAddress(XStreamtofinn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axi_cpu_BaseAddress + XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_BASE);
}

u32 XStreamtofinn_Get_image_in_HighAddress(XStreamtofinn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axi_cpu_BaseAddress + XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_HIGH);
}

u32 XStreamtofinn_Get_image_in_TotalBytes(XStreamtofinn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_HIGH - XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_BASE + 1);
}

u32 XStreamtofinn_Get_image_in_BitWidth(XStreamtofinn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSTREAMTOFINN_AXI_CPU_WIDTH_IMAGE_IN;
}

u32 XStreamtofinn_Get_image_in_Depth(XStreamtofinn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSTREAMTOFINN_AXI_CPU_DEPTH_IMAGE_IN;
}

u32 XStreamtofinn_Write_image_in_Words(XStreamtofinn *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_HIGH - XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axi_cpu_BaseAddress + XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XStreamtofinn_Read_image_in_Words(XStreamtofinn *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_HIGH - XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axi_cpu_BaseAddress + XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_BASE + (offset + i)*4);
    }
    return length;
}

u32 XStreamtofinn_Write_image_in_Bytes(XStreamtofinn *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_HIGH - XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axi_cpu_BaseAddress + XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XStreamtofinn_Read_image_in_Bytes(XStreamtofinn *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_HIGH - XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axi_cpu_BaseAddress + XSTREAMTOFINN_AXI_CPU_ADDR_IMAGE_IN_BASE + offset + i);
    }
    return length;
}

void XStreamtofinn_InterruptGlobalEnable(XStreamtofinn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStreamtofinn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_GIE, 1);
}

void XStreamtofinn_InterruptGlobalDisable(XStreamtofinn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStreamtofinn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_GIE, 0);
}

void XStreamtofinn_InterruptEnable(XStreamtofinn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XStreamtofinn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_IER);
    XStreamtofinn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_IER, Register | Mask);
}

void XStreamtofinn_InterruptDisable(XStreamtofinn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XStreamtofinn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_IER);
    XStreamtofinn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_IER, Register & (~Mask));
}

void XStreamtofinn_InterruptClear(XStreamtofinn *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XStreamtofinn_WriteReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_ISR, Mask);
}

u32 XStreamtofinn_InterruptGetEnabled(XStreamtofinn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XStreamtofinn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_IER);
}

u32 XStreamtofinn_InterruptGetStatus(XStreamtofinn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XStreamtofinn_ReadReg(InstancePtr->Axi_cpu_BaseAddress, XSTREAMTOFINN_AXI_CPU_ADDR_ISR);
}

