// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module StreamingFCLayer_Batch_2_Matrix_Vector_Activate_Stream_Batch_576u_128u_16u_8u_Slice_ap_int_2u_Slice_apibs_rom (
addr0, ce0, q0, clk);

parameter DWIDTH = 11;
parameter AWIDTH = 4;
parameter MEM_SIZE = 16;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input clk;

reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("/tmp/finn_dev_nm/code_gen_ipgen_StreamingFCLayer_Batch_2_9ao_flvf/project_StreamingFCLayer_Batch_2/sol1/impl/ip/hdl/verilog/StreamingFCLayer_Batch_2_Matrix_Vector_Activate_Stream_Batch_576u_128u_16u_8u_Slice_ap_int_2u_Slice_apibs_rom.dat", ram);
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
module StreamingFCLayer_Batch_2_Matrix_Vector_Activate_Stream_Batch_576u_128u_16u_8u_Slice_ap_int_2u_Slice_apibs(
    reset,
    clk,
    address0,
    ce0,
    q0);

parameter DataWidth = 32'd11;
parameter AddressRange = 32'd16;
parameter AddressWidth = 32'd4;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;



StreamingFCLayer_Batch_2_Matrix_Vector_Activate_Stream_Batch_576u_128u_16u_8u_Slice_ap_int_2u_Slice_apibs_rom StreamingFCLayer_Batch_2_Matrix_Vector_Activate_Stream_Batch_576u_128u_16u_8u_Slice_ap_int_2u_Slice_apibs_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ));

endmodule

