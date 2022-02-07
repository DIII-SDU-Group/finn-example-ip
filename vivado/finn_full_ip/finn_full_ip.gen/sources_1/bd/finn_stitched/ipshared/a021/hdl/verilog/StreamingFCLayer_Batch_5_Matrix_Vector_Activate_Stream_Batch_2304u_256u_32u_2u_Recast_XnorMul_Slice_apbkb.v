// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module StreamingFCLayer_Batch_5_Matrix_Vector_Activate_Stream_Batch_2304u_256u_32u_2u_Recast_XnorMul_Slice_apbkb_rom (
addr0, ce0, q0, clk);

parameter DWIDTH = 12;
parameter AWIDTH = 7;
parameter MEM_SIZE = 128;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input clk;

reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("/tmp/finn_dev_nm/code_gen_ipgen_StreamingFCLayer_Batch_5__3j7998n/project_StreamingFCLayer_Batch_5/sol1/impl/ip/hdl/verilog/StreamingFCLayer_Batch_5_Matrix_Vector_Activate_Stream_Batch_2304u_256u_32u_2u_Recast_XnorMul_Slice_apbkb_rom.dat", ram);
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
module StreamingFCLayer_Batch_5_Matrix_Vector_Activate_Stream_Batch_2304u_256u_32u_2u_Recast_XnorMul_Slice_apbkb(
    reset,
    clk,
    address0,
    ce0,
    q0);

parameter DataWidth = 32'd12;
parameter AddressRange = 32'd128;
parameter AddressWidth = 32'd7;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;



StreamingFCLayer_Batch_5_Matrix_Vector_Activate_Stream_Batch_2304u_256u_32u_2u_Recast_XnorMul_Slice_apbkb_rom StreamingFCLayer_Batch_5_Matrix_Vector_Activate_Stream_Batch_2304u_256u_32u_2u_Recast_XnorMul_Slice_apbkb_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ));

endmodule

