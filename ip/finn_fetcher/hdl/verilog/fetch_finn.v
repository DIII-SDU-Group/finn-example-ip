// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fetch_finn_fetch_finn,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu3eg-sbva484-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.488000,HLS_SYN_LAT=6,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=0,HLS_SYN_FF=122,HLS_SYN_LUT=169,HLS_VERSION=2020_2}" *)

module fetch_finn (
        ap_clk,
        ap_rst_n,
        finn_stream_V_TDATA,
        finn_stream_V_TVALID,
        finn_stream_V_TREADY,
        s_axi_AXI_CPU_AWVALID,
        s_axi_AXI_CPU_AWREADY,
        s_axi_AXI_CPU_AWADDR,
        s_axi_AXI_CPU_WVALID,
        s_axi_AXI_CPU_WREADY,
        s_axi_AXI_CPU_WDATA,
        s_axi_AXI_CPU_WSTRB,
        s_axi_AXI_CPU_ARVALID,
        s_axi_AXI_CPU_ARREADY,
        s_axi_AXI_CPU_ARADDR,
        s_axi_AXI_CPU_RVALID,
        s_axi_AXI_CPU_RREADY,
        s_axi_AXI_CPU_RDATA,
        s_axi_AXI_CPU_RRESP,
        s_axi_AXI_CPU_BVALID,
        s_axi_AXI_CPU_BREADY,
        s_axi_AXI_CPU_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
parameter    C_S_AXI_AXI_CPU_DATA_WIDTH = 32;
parameter    C_S_AXI_AXI_CPU_ADDR_WIDTH = 5;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_AXI_CPU_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input  [7:0] finn_stream_V_TDATA;
input   finn_stream_V_TVALID;
output   finn_stream_V_TREADY;
input   s_axi_AXI_CPU_AWVALID;
output   s_axi_AXI_CPU_AWREADY;
input  [C_S_AXI_AXI_CPU_ADDR_WIDTH - 1:0] s_axi_AXI_CPU_AWADDR;
input   s_axi_AXI_CPU_WVALID;
output   s_axi_AXI_CPU_WREADY;
input  [C_S_AXI_AXI_CPU_DATA_WIDTH - 1:0] s_axi_AXI_CPU_WDATA;
input  [C_S_AXI_AXI_CPU_WSTRB_WIDTH - 1:0] s_axi_AXI_CPU_WSTRB;
input   s_axi_AXI_CPU_ARVALID;
output   s_axi_AXI_CPU_ARREADY;
input  [C_S_AXI_AXI_CPU_ADDR_WIDTH - 1:0] s_axi_AXI_CPU_ARADDR;
output   s_axi_AXI_CPU_RVALID;
input   s_axi_AXI_CPU_RREADY;
output  [C_S_AXI_AXI_CPU_DATA_WIDTH - 1:0] s_axi_AXI_CPU_RDATA;
output  [1:0] s_axi_AXI_CPU_RRESP;
output   s_axi_AXI_CPU_BVALID;
input   s_axi_AXI_CPU_BREADY;
output  [1:0] s_axi_AXI_CPU_BRESP;
output   interrupt;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [1:0] res_out_address0;
reg    res_out_ce0;
reg    res_out_we0;
reg    finn_stream_V_TDATA_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln10_fu_97_p2;
wire   [2:0] add_ln10_fu_91_p2;
reg    ap_block_state2;
reg   [2:0] i_reg_80;
wire   [63:0] i_cast_fu_103_p1;
wire    ap_CS_fsm_state3;
reg   [2:0] ap_NS_fsm;
wire    regslice_both_finn_stream_V_U_apdone_blk;
wire   [7:0] finn_stream_V_TDATA_int_regslice;
wire    finn_stream_V_TVALID_int_regslice;
reg    finn_stream_V_TREADY_int_regslice;
wire    regslice_both_finn_stream_V_U_ack_in;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

fetch_finn_AXI_CPU_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXI_CPU_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXI_CPU_DATA_WIDTH ))
AXI_CPU_s_axi_U(
    .AWVALID(s_axi_AXI_CPU_AWVALID),
    .AWREADY(s_axi_AXI_CPU_AWREADY),
    .AWADDR(s_axi_AXI_CPU_AWADDR),
    .WVALID(s_axi_AXI_CPU_WVALID),
    .WREADY(s_axi_AXI_CPU_WREADY),
    .WDATA(s_axi_AXI_CPU_WDATA),
    .WSTRB(s_axi_AXI_CPU_WSTRB),
    .ARVALID(s_axi_AXI_CPU_ARVALID),
    .ARREADY(s_axi_AXI_CPU_ARREADY),
    .ARADDR(s_axi_AXI_CPU_ARADDR),
    .RVALID(s_axi_AXI_CPU_RVALID),
    .RREADY(s_axi_AXI_CPU_RREADY),
    .RDATA(s_axi_AXI_CPU_RDATA),
    .RRESP(s_axi_AXI_CPU_RRESP),
    .BVALID(s_axi_AXI_CPU_BVALID),
    .BREADY(s_axi_AXI_CPU_BREADY),
    .BRESP(s_axi_AXI_CPU_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .res_out_address0(res_out_address0),
    .res_out_ce0(res_out_ce0),
    .res_out_we0(res_out_we0),
    .res_out_d0(finn_stream_V_TDATA_int_regslice),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

fetch_finn_regslice_both #(
    .DataWidth( 8 ))
regslice_both_finn_stream_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(finn_stream_V_TDATA),
    .vld_in(finn_stream_V_TVALID),
    .ack_in(regslice_both_finn_stream_V_U_ack_in),
    .data_out(finn_stream_V_TDATA_int_regslice),
    .vld_out(finn_stream_V_TVALID_int_regslice),
    .ack_out(finn_stream_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_finn_stream_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_80 <= 3'd0;
    end else if ((~((icmp_ln10_fu_97_p2 == 1'd0) & (finn_stream_V_TVALID_int_regslice == 1'b0)) & (icmp_ln10_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_80 <= add_ln10_fu_91_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln10_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        finn_stream_V_TDATA_blk_n = finn_stream_V_TVALID_int_regslice;
    end else begin
        finn_stream_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln10_fu_97_p2 == 1'd0) & (finn_stream_V_TVALID_int_regslice == 1'b0)) & (icmp_ln10_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        finn_stream_V_TREADY_int_regslice = 1'b1;
    end else begin
        finn_stream_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln10_fu_97_p2 == 1'd0) & (finn_stream_V_TVALID_int_regslice == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        res_out_ce0 = 1'b1;
    end else begin
        res_out_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln10_fu_97_p2 == 1'd0) & (finn_stream_V_TVALID_int_regslice == 1'b0)) & (icmp_ln10_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        res_out_we0 = 1'b1;
    end else begin
        res_out_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((icmp_ln10_fu_97_p2 == 1'd0) & (finn_stream_V_TVALID_int_regslice == 1'b0)) & (icmp_ln10_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~((icmp_ln10_fu_97_p2 == 1'd0) & (finn_stream_V_TVALID_int_regslice == 1'b0)) & (icmp_ln10_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln10_fu_91_p2 = (i_reg_80 + 3'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state2 = ((icmp_ln10_fu_97_p2 == 1'd0) & (finn_stream_V_TVALID_int_regslice == 1'b0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign finn_stream_V_TREADY = regslice_both_finn_stream_V_U_ack_in;

assign i_cast_fu_103_p1 = i_reg_80;

assign icmp_ln10_fu_97_p2 = ((i_reg_80 == 3'd4) ? 1'b1 : 1'b0);

assign res_out_address0 = i_cast_fu_103_p1;

endmodule //fetch_finn
