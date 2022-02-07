// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: DIII:finn:finn_stitched:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "IPI" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module finn_full_finn_stitched_0_0 (
  ap_clk,
  ap_rst_n,
  m_axis_output_tdata,
  m_axis_output_tready,
  m_axis_output_tvalid,
  s_axis_input_tdata,
  s_axis_input_tready,
  s_axis_input_tvalid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, FREQ_HZ 100000000.000000, PHASE 0.000, ASSOCIATED_BUSIF s_axis_input:m_axis_output, ASSOCIATED_RESET ap_rst_n, FREQ_TOLERANCE_HZ 0, CLK_DOMAIN finn_full_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_output TDATA" *)
output wire [31 : 0] m_axis_output_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_output TREADY" *)
input wire m_axis_output_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_output, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, LAYERED_METADATA undef, FREQ_HZ 100000000.000000, PHASE 0.000, CLK_DOMAIN finn_full_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_output TVALID" *)
output wire m_axis_output_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_input TDATA" *)
input wire [7 : 0] s_axis_input_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_input TREADY" *)
output wire s_axis_input_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_input, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, LAYERED_METADATA undef, FREQ_HZ 100000000.000000, PHASE 0.000, CLK_DOMAIN finn_full_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_input TVALID" *)
input wire s_axis_input_tvalid;

  finn_stitched inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axis_output_tdata(m_axis_output_tdata),
    .m_axis_output_tready(m_axis_output_tready),
    .m_axis_output_tvalid(m_axis_output_tvalid),
    .s_axis_input_tdata(s_axis_input_tdata),
    .s_axis_input_tready(s_axis_input_tready),
    .s_axis_input_tvalid(s_axis_input_tvalid)
  );
endmodule
