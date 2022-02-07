// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="StreamingDataWidthConverter_Batch_22_StreamingDataWidthConverter_Batch_22,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu3eg-sbva484-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.839000,HLS_SYN_LAT=259,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=558,HLS_SYN_LUT=260,HLS_VERSION=2020_2}" *)

module StreamingDataWidthConverter_Batch_22 (
        ap_clk,
        ap_rst_n,
        in0_V_TDATA,
        in0_V_TVALID,
        in0_V_TREADY,
        out_V_TDATA,
        out_V_TVALID,
        out_V_TREADY
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst_n;
input  [255:0] in0_V_TDATA;
input   in0_V_TVALID;
output   in0_V_TREADY;
output  [7:0] out_V_TDATA;
output   out_V_TVALID;
input   out_V_TREADY;

 reg    ap_rst_n_inv;
reg    in0_V_TDATA_blk_n;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln476_fu_115_p2;
wire   [0:0] icmp_ln479_fu_121_p2;
reg    out_V_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] icmp_ln476_reg_176;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln476_reg_176_pp0_iter1_reg;
reg   [8:0] t_reg_67;
reg   [31:0] o_reg_78;
reg   [251:0] ei_V_reg_89;
wire   [8:0] t_1_fu_109_p2;
reg    ap_predicate_op19_read_state2;
reg    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
reg    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln479_reg_180;
wire   [31:0] o_2_fu_139_p3;
wire    ap_CS_fsm_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_flush_enable;
reg    ap_condition_pp0_exit_iter1_state3;
reg   [255:0] ap_phi_mux_ei_V_3_phi_fu_103_p4;
wire   [255:0] ap_phi_reg_pp0_iter0_ei_V_3_reg_100;
reg   [255:0] ap_phi_reg_pp0_iter1_ei_V_3_reg_100;
wire   [255:0] zext_ln476_fu_147_p1;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] o_1_fu_127_p2;
wire   [0:0] icmp_ln490_fu_133_p2;
wire   [3:0] eo_V_fu_152_p1;
reg   [2:0] ap_NS_fsm;
wire    ap_CS_fsm_state5;
wire    regslice_both_out_V_U_apdone_blk;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_in0_V_U_apdone_blk;
wire   [255:0] in0_V_TDATA_int_regslice;
wire    in0_V_TVALID_int_regslice;
reg    in0_V_TREADY_int_regslice;
wire    regslice_both_in0_V_U_ack_in;
wire   [7:0] out_V_TDATA_int_regslice;
reg    out_V_TVALID_int_regslice;
wire    out_V_TREADY_int_regslice;
wire    regslice_both_out_V_U_vld_out;
reg    ap_condition_91;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

StreamingDataWidthConverter_Batch_22_regslice_both #(
    .DataWidth( 256 ))
regslice_both_in0_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in0_V_TDATA),
    .vld_in(in0_V_TVALID),
    .ack_in(regslice_both_in0_V_U_ack_in),
    .data_out(in0_V_TDATA_int_regslice),
    .vld_out(in0_V_TVALID_int_regslice),
    .ack_out(in0_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_in0_V_U_apdone_blk)
);

StreamingDataWidthConverter_Batch_22_regslice_both #(
    .DataWidth( 8 ))
regslice_both_out_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(out_V_TDATA_int_regslice),
    .vld_in(out_V_TVALID_int_regslice),
    .ack_in(out_V_TREADY_int_regslice),
    .data_out(out_V_TDATA),
    .vld_out(regslice_both_out_V_U_vld_out),
    .ack_out(out_V_TREADY),
    .apdone_blk(regslice_both_out_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state1)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter1_state3)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter1_state3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state1)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_91)) begin
        if (((icmp_ln479_fu_121_p2 == 1'd1) & (icmp_ln476_fu_115_p2 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_ei_V_3_reg_100 <= in0_V_TDATA_int_regslice;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_ei_V_3_reg_100 <= ap_phi_reg_pp0_iter0_ei_V_3_reg_100;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln476_reg_176 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ei_V_reg_89 <= {{ap_phi_mux_ei_V_3_phi_fu_103_p4[255:4]}};
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        ei_V_reg_89 <= 252'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln476_fu_115_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        o_reg_78 <= o_2_fu_139_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        o_reg_78 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln476_fu_115_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_reg_67 <= t_1_fu_109_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        t_reg_67 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln476_reg_176 <= icmp_ln476_fu_115_p2;
        icmp_ln476_reg_176_pp0_iter1_reg <= icmp_ln476_reg_176;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln476_fu_115_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln479_reg_180 <= icmp_ln479_fu_121_p2;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_condition_pp0_exit_iter1_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter1_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln476_fu_115_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln479_reg_180 == 1'd0) & (icmp_ln476_reg_176 == 1'd0))) begin
        ap_phi_mux_ei_V_3_phi_fu_103_p4 = zext_ln476_fu_147_p1;
    end else begin
        ap_phi_mux_ei_V_3_phi_fu_103_p4 = ap_phi_reg_pp0_iter1_ei_V_3_reg_100;
    end
end

always @ (*) begin
    if (((icmp_ln479_fu_121_p2 == 1'd1) & (icmp_ln476_fu_115_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in0_V_TDATA_blk_n = in0_V_TVALID_int_regslice;
    end else begin
        in0_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op19_read_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in0_V_TREADY_int_regslice = 1'b1;
    end else begin
        in0_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln476_reg_176_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln476_reg_176 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        out_V_TDATA_blk_n = out_V_TREADY_int_regslice;
    end else begin
        out_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln476_reg_176 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_V_TVALID_int_regslice = 1'b1;
    end else begin
        out_V_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((regslice_both_out_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_predicate_op19_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0)) | ((icmp_ln476_reg_176_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)) | ((icmp_ln476_reg_176 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_predicate_op19_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((icmp_ln476_reg_176_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln476_reg_176 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_predicate_op19_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((icmp_ln476_reg_176_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln476_reg_176 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((ap_predicate_op19_read_state2 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = ((icmp_ln476_reg_176 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((icmp_ln476_reg_176 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state4_io = ((icmp_ln476_reg_176_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = ((icmp_ln476_reg_176_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_condition_91 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_ei_V_3_reg_100 = 'bx;

always @ (*) begin
    ap_predicate_op19_read_state2 = ((icmp_ln479_fu_121_p2 == 1'd1) & (icmp_ln476_fu_115_p2 == 1'd0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign eo_V_fu_152_p1 = ap_phi_mux_ei_V_3_phi_fu_103_p4[3:0];

assign icmp_ln476_fu_115_p2 = ((t_reg_67 == 9'd256) ? 1'b1 : 1'b0);

assign icmp_ln479_fu_121_p2 = ((o_reg_78 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln490_fu_133_p2 = ((o_1_fu_127_p2 == 32'd64) ? 1'b1 : 1'b0);

assign in0_V_TREADY = regslice_both_in0_V_U_ack_in;

assign o_1_fu_127_p2 = (o_reg_78 + 32'd1);

assign o_2_fu_139_p3 = ((icmp_ln490_fu_133_p2[0:0] == 1'b1) ? 32'd0 : o_1_fu_127_p2);

assign out_V_TDATA_int_regslice = eo_V_fu_152_p1;

assign out_V_TVALID = regslice_both_out_V_U_vld_out;

assign t_1_fu_109_p2 = (t_reg_67 + 9'd1);

assign zext_ln476_fu_147_p1 = ei_V_reg_89;

endmodule //StreamingDataWidthConverter_Batch_22