// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
(* rom_style = "distributed" *) module Thresholding_Batch_0_Thresholding_Batch_65536u_3u_1u_Slice_ap_uint_8_8u_Slice_ap_int_8_8u_ap_uint_bGp_rom (
addr0, ce0, q0, clk);

parameter DWIDTH = 7;
parameter AWIDTH = 2;
parameter MEM_SIZE = 3;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input clk;

(* ram_style = "distributed" *)reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("/tmp/finn_dev_nm/code_gen_ipgen_Thresholding_Batch_0_w968i9ab/project_Thresholding_Batch_0/sol1/impl/ip/hdl/verilog/Thresholding_Batch_0_Thresholding_Batch_65536u_3u_1u_Slice_ap_uint_8_8u_Slice_ap_int_8_8u_ap_uint_bGp_rom.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[addr0];
    end
end



endmodule

`timescale 1 ns / 1 ps
module Thresholding_Batch_0_Thresholding_Batch_65536u_3u_1u_Slice_ap_uint_8_8u_Slice_ap_int_8_8u_ap_uint_bGp(
    reset,
    clk,
    address0,
    ce0,
    q0);

parameter DataWidth = 32'd7;
parameter AddressRange = 32'd3;
parameter AddressWidth = 32'd2;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;



Thresholding_Batch_0_Thresholding_Batch_65536u_3u_1u_Slice_ap_uint_8_8u_Slice_ap_int_8_8u_ap_uint_bGp_rom Thresholding_Batch_0_Thresholding_Batch_65536u_3u_1u_Slice_ap_uint_8_8u_Slice_ap_int_8_8u_ap_uint_bGp_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ));

endmodule

