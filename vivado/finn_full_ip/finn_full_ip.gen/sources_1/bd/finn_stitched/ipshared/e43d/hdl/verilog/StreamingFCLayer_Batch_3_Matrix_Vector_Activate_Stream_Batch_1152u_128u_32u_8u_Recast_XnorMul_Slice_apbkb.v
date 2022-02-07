// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module StreamingFCLayer_Batch_3_Matrix_Vector_Activate_Stream_Batch_1152u_128u_32u_8u_Recast_XnorMul_Slice_apbkb_rom (
addr0, ce0, q0, clk);

parameter DWIDTH = 10;
parameter AWIDTH = 4;
parameter MEM_SIZE = 16;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input clk;

reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("/tmp/finn_dev_nm/code_gen_ipgen_StreamingFCLayer_Batch_3_ffmkj9yy/project_StreamingFCLayer_Batch_3/sol1/impl/ip/hdl/verilog/StreamingFCLayer_Batch_3_Matrix_Vector_Activate_Stream_Batch_1152u_128u_32u_8u_Recast_XnorMul_Slice_apbkb_rom.dat", ram);
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
module StreamingFCLayer_Batch_3_Matrix_Vector_Activate_Stream_Batch_1152u_128u_32u_8u_Recast_XnorMul_Slice_apbkb(
    reset,
    clk,
    address0,
    ce0,
    q0);

parameter DataWidth = 32'd10;
parameter AddressRange = 32'd16;
parameter AddressWidth = 32'd4;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;



StreamingFCLayer_Batch_3_Matrix_Vector_Activate_Stream_Batch_1152u_128u_32u_8u_Recast_XnorMul_Slice_apbkb_rom StreamingFCLayer_Batch_3_Matrix_Vector_Activate_Stream_Batch_1152u_128u_32u_8u_Recast_XnorMul_Slice_apbkb_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ));

endmodule

