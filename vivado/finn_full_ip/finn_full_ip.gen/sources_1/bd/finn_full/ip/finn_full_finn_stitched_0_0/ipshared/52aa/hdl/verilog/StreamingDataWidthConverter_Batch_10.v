// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="StreamingDataWidthConverter_Batch_10_StreamingDataWidthConverter_Batch_10,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu3eg-sbva484-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.134000,HLS_SYN_LAT=147971,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=63,HLS_SYN_LUT=203,HLS_VERSION=2020_2}" *)

module StreamingDataWidthConverter_Batch_10 (
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
input  [7:0] in0_V_TDATA;
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
wire   [0:0] icmp_ln508_fu_100_p2;
reg    out_V_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] icmp_ln517_reg_168;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln517_reg_168_pp0_iter1_reg;
reg   [17:0] t_reg_67;
reg   [0:0] r_reg_78;
wire   [17:0] t_1_fu_94_p2;
reg    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
reg    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln508_reg_154;
wire   [0:0] ei_V_fu_109_p1;
reg   [0:0] ei_V_reg_158;
wire   [1:0] p_Result_s_fu_113_p3;
reg   [1:0] p_Result_s_reg_163;
wire   [0:0] icmp_ln517_fu_127_p2;
wire    ap_CS_fsm_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg   [0:0] ap_phi_mux_r_phi_fu_82_p4;
reg   [31:0] i_fu_50;
wire   [31:0] i_1_fu_121_p2;
reg    ap_block_pp0_stage0_01001;
reg   [2:0] ap_NS_fsm;
wire    ap_CS_fsm_state5;
wire    regslice_both_out_V_U_apdone_blk;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_in0_V_U_apdone_blk;
wire   [7:0] in0_V_TDATA_int_regslice;
wire    in0_V_TVALID_int_regslice;
reg    in0_V_TREADY_int_regslice;
wire    regslice_both_in0_V_U_ack_in;
wire   [7:0] out_V_TDATA_int_regslice;
reg    out_V_TVALID_int_regslice;
wire    out_V_TREADY_int_regslice;
wire    regslice_both_out_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

StreamingDataWidthConverter_Batch_10_regslice_both #(
    .DataWidth( 8 ))
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

StreamingDataWidthConverter_Batch_10_regslice_both #(
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
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
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state1)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) | ((icmp_ln517_fu_127_p2 == 1'd1) & (icmp_ln508_fu_100_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        i_fu_50 <= 32'd0;
    end else if (((icmp_ln517_fu_127_p2 == 1'd0) & (icmp_ln508_fu_100_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_50 <= i_1_fu_121_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln508_reg_154 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r_reg_78 <= ei_V_reg_158;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        r_reg_78 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln508_fu_100_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_reg_67 <= t_1_fu_94_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        t_reg_67 <= 18'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln508_fu_100_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ei_V_reg_158 <= ei_V_fu_109_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln508_reg_154 <= icmp_ln508_fu_100_p2;
        icmp_ln517_reg_168_pp0_iter1_reg <= icmp_ln517_reg_168;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln508_fu_100_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln517_reg_168 <= icmp_ln517_fu_127_p2;
        p_Result_s_reg_163 <= p_Result_s_fu_113_p3;
    end
end

always @ (*) begin
    if ((icmp_ln508_fu_100_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
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
    if (((icmp_ln508_reg_154 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_r_phi_fu_82_p4 = ei_V_reg_158;
    end else begin
        ap_phi_mux_r_phi_fu_82_p4 = r_reg_78;
    end
end

always @ (*) begin
    if (((icmp_ln508_fu_100_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in0_V_TDATA_blk_n = in0_V_TVALID_int_regslice;
    end else begin
        in0_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln508_fu_100_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in0_V_TREADY_int_regslice = 1'b1;
    end else begin
        in0_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln517_reg_168_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln517_reg_168 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        out_V_TDATA_blk_n = out_V_TREADY_int_regslice;
    end else begin
        out_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln517_reg_168 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln508_fu_100_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln508_fu_100_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (regslice_both_out_V_U_apdone_blk == 1'b0))) begin
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
    ap_block_pp0_stage0_01001 = (((icmp_ln517_reg_168_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)) | ((icmp_ln517_reg_168 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)) | ((icmp_ln508_fu_100_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((icmp_ln517_reg_168_pp0_iter1_reg == 1'd1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln517_reg_168 == 1'd1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln508_fu_100_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((icmp_ln517_reg_168_pp0_iter1_reg == 1'd1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln517_reg_168 == 1'd1) & (out_V_TREADY_int_regslice == 1'b0)))) | ((icmp_ln508_fu_100_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((icmp_ln508_fu_100_p2 == 1'd0) & (in0_V_TVALID_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = ((icmp_ln517_reg_168 == 1'd1) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((icmp_ln517_reg_168 == 1'd1) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state4_io = ((icmp_ln517_reg_168_pp0_iter1_reg == 1'd1) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = ((icmp_ln517_reg_168_pp0_iter1_reg == 1'd1) & (out_V_TREADY_int_regslice == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ei_V_fu_109_p1 = in0_V_TDATA_int_regslice[0:0];

assign i_1_fu_121_p2 = (i_fu_50 + 32'd1);

assign icmp_ln508_fu_100_p2 = ((t_reg_67 == 18'd147968) ? 1'b1 : 1'b0);

assign icmp_ln517_fu_127_p2 = ((i_1_fu_121_p2 == 32'd2) ? 1'b1 : 1'b0);

assign in0_V_TREADY = regslice_both_in0_V_U_ack_in;

assign out_V_TDATA_int_regslice = p_Result_s_reg_163;

assign out_V_TVALID = regslice_both_out_V_U_vld_out;

assign p_Result_s_fu_113_p3 = {{ei_V_fu_109_p1}, {ap_phi_mux_r_phi_fu_82_p4}};

assign t_1_fu_94_p2 = (t_reg_67 + 18'd1);

endmodule //StreamingDataWidthConverter_Batch_10
