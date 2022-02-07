// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xstreamtofinn.h"

extern XStreamtofinn_Config XStreamtofinn_ConfigTable[];

XStreamtofinn_Config *XStreamtofinn_LookupConfig(u16 DeviceId) {
	XStreamtofinn_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSTREAMTOFINN_NUM_INSTANCES; Index++) {
		if (XStreamtofinn_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XStreamtofinn_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XStreamtofinn_Initialize(XStreamtofinn *InstancePtr, u16 DeviceId) {
	XStreamtofinn_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XStreamtofinn_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XStreamtofinn_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

