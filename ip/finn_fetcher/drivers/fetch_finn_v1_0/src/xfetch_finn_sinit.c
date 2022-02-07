// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfetch_finn.h"

extern XFetch_finn_Config XFetch_finn_ConfigTable[];

XFetch_finn_Config *XFetch_finn_LookupConfig(u16 DeviceId) {
	XFetch_finn_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFETCH_FINN_NUM_INSTANCES; Index++) {
		if (XFetch_finn_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFetch_finn_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFetch_finn_Initialize(XFetch_finn *InstancePtr, u16 DeviceId) {
	XFetch_finn_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFetch_finn_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFetch_finn_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

