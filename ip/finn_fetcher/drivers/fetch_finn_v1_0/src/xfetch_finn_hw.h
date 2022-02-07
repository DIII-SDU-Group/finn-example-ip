// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXI_CPU
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 ~
// 0x17 : Memory 'res_out' (4 * 8b)
//        Word n : bit [ 7: 0] - res_out[4n]
//                 bit [15: 8] - res_out[4n+1]
//                 bit [23:16] - res_out[4n+2]
//                 bit [31:24] - res_out[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFETCH_FINN_AXI_CPU_ADDR_AP_CTRL      0x00
#define XFETCH_FINN_AXI_CPU_ADDR_GIE          0x04
#define XFETCH_FINN_AXI_CPU_ADDR_IER          0x08
#define XFETCH_FINN_AXI_CPU_ADDR_ISR          0x0c
#define XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_BASE 0x10
#define XFETCH_FINN_AXI_CPU_ADDR_RES_OUT_HIGH 0x17
#define XFETCH_FINN_AXI_CPU_WIDTH_RES_OUT     8
#define XFETCH_FINN_AXI_CPU_DEPTH_RES_OUT     4

