// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="FMPadding_Batch_3_FMPadding_Batch_3,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu3eg-sbva484-1-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.212000,HLS_SYN_LAT=147971,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=62,HLS_SYN_LUT=400,HLS_VERSION=2020_2}" *)

module FMPadding_Batch_3 (
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
wire   [0:0] icmp_ln279_fu_197_p2;
wire   [0:0] select_ln280_fu_311_p3;
reg    out_V_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] icmp_ln279_reg_375;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln279_reg_375_pp0_iter1_reg;
reg   [17:0] indvar_flatten19_reg_83;
reg   [5:0] y_reg_94;
reg   [13:0] indvar_flatten_reg_105;
reg   [5:0] x_reg_116;
reg   [7:0] simd_reg_127;
wire   [17:0] add_ln279_fu_149_p2;
reg    ap_predicate_op53_read_state2;
reg    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
reg    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage0_11001;
wire   [5:0] select_ln279_2_fu_273_p3;
wire   [5:0] select_ln280_1_fu_319_p3;
wire   [1:0] tmp_fu_327_p1;
wire   [7:0] simd_1_fu_343_p3;
wire   [13:0] select_ln280_2_fu_357_p3;
wire    ap_CS_fsm_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire   [1:0] ap_phi_reg_pp0_iter0_outData_1_reg_138;
reg   [1:0] ap_phi_reg_pp0_iter1_outData_1_reg_138;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] cmp3_i_i_fu_155_p2;
wire   [0:0] cmp4_i_i_fu_161_p2;
wire   [0:0] cmp6_i_i_fu_179_p2;
wire   [0:0] cmp5_i_i_fu_173_p2;
wire   [0:0] tmp2_fu_185_p2;
wire   [0:0] tmp1_fu_167_p2;
wire   [0:0] icmp_ln280_fu_203_p2;
wire   [5:0] add_ln279_1_fu_217_p2;
wire   [0:0] cmp3_i_i_mid1_fu_223_p2;
wire   [0:0] cmp4_i_i_mid1_fu_229_p2;
wire   [0:0] tmp1_mid1_fu_235_p2;
wire   [0:0] or_cond_i_i_fu_191_p2;
wire   [0:0] icmp_ln281_fu_261_p2;
wire   [0:0] xor_ln279_fu_255_p2;
wire   [5:0] select_ln279_fu_209_p3;
wire   [5:0] x_2_fu_281_p2;
wire   [0:0] cmp6_i_i_mid1_fu_293_p2;
wire   [0:0] cmp5_i_i_mid1_fu_287_p2;
wire   [0:0] tmp2_mid1_fu_299_p2;
wire   [0:0] select_ln279_1_fu_241_p3;
wire   [0:0] and_ln279_fu_267_p2;
wire   [0:0] or_cond_i_i_mid1_fu_305_p2;
wire   [0:0] or_ln279_fu_249_p2;
wire   [0:0] or_ln281_fu_337_p2;
wire   [7:0] add_ln281_fu_331_p2;
wire   [13:0] add_ln280_1_fu_351_p2;
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
reg    ap_condition_94;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

FMPadding_Batch_3_regslice_both #(
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

FMPadding_Batch_3_regslice_both #(
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
    if ((1'b1 == ap_condition_94)) begin
        if (((select_ln280_fu_311_p3 == 1'd1) & (icmp_ln279_fu_197_p2 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_outData_1_reg_138 <= 2'd0;
        end else if (((select_ln280_fu_311_p3 == 1'd0) & (icmp_ln279_fu_197_p2 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_outData_1_reg_138 <= tmp_fu_327_p1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_outData_1_reg_138 <= ap_phi_reg_pp0_iter0_outData_1_reg_138;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln279_fu_197_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten19_reg_83 <= add_ln279_fu_149_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten19_reg_83 <= 18'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln279_fu_197_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_105 <= select_ln280_2_fu_357_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten_reg_105 <= 14'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln279_fu_197_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        simd_reg_127 <= simd_1_fu_343_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        simd_reg_127 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln279_fu_197_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_reg_116 <= select_ln280_1_fu_319_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        x_reg_116 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln279_fu_197_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        y_reg_94 <= select_ln279_2_fu_273_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        y_reg_94 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln279_reg_375 <= icmp_ln279_fu_197_p2;
        icmp_ln279_reg_375_pp0_iter1_reg <= icmp_ln279_reg_375;
    end
end

always @ (*) begin
    if ((icmp_ln279_fu_197_p2 == 1'd1)) begin
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
    if (((select_ln280_fu_311_p3 == 1'd0) & (icmp_ln279_fu_197_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in0_V_TDATA_blk_n = in0_V_TVALID_int_regslice;
    end else begin
        in0_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op53_read_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in0_V_TREADY_int_regslice = 1'b1;
    end else begin
        in0_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln279_reg_375_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln279_reg_375 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        out_V_TDATA_blk_n = out_V_TREADY_int_regslice;
    end else begin
        out_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln279_reg_375 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln279_fu_197_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln279_fu_197_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
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

assign add_ln279_1_fu_217_p2 = (y_reg_94 + 6'd1);

assign add_ln279_fu_149_p2 = (indvar_flatten19_reg_83 + 18'd1);

assign add_ln280_1_fu_351_p2 = (indvar_flatten_reg_105 + 14'd1);

assign add_ln281_fu_331_p2 = (simd_reg_127 + 8'd1);

assign and_ln279_fu_267_p2 = (xor_ln279_fu_255_p2 & icmp_ln281_fu_261_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_predicate_op53_read_state2 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln279_reg_375_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)) | ((icmp_ln279_reg_375 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (out_V_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_predicate_op53_read_state2 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((icmp_ln279_reg_375_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_375 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_predicate_op53_read_state2 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((icmp_ln279_reg_375_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln279_reg_375 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((ap_predicate_op53_read_state2 == 1'b1) & (in0_V_TVALID_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = ((icmp_ln279_reg_375 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((icmp_ln279_reg_375 == 1'd0) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state4_io = ((icmp_ln279_reg_375_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = ((icmp_ln279_reg_375_pp0_iter1_reg == 1'd0) & (out_V_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_condition_94 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_outData_1_reg_138 = 'bx;

always @ (*) begin
    ap_predicate_op53_read_state2 = ((select_ln280_fu_311_p3 == 1'd0) & (icmp_ln279_fu_197_p2 == 1'd0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign cmp3_i_i_fu_155_p2 = ((y_reg_94 == 6'd0) ? 1'b1 : 1'b0);

assign cmp3_i_i_mid1_fu_223_p2 = ((add_ln279_1_fu_217_p2 == 6'd0) ? 1'b1 : 1'b0);

assign cmp4_i_i_fu_161_p2 = ((y_reg_94 > 6'd32) ? 1'b1 : 1'b0);

assign cmp4_i_i_mid1_fu_229_p2 = ((add_ln279_1_fu_217_p2 > 6'd32) ? 1'b1 : 1'b0);

assign cmp5_i_i_fu_173_p2 = ((x_reg_116 == 6'd0) ? 1'b1 : 1'b0);

assign cmp5_i_i_mid1_fu_287_p2 = ((x_2_fu_281_p2 == 6'd0) ? 1'b1 : 1'b0);

assign cmp6_i_i_fu_179_p2 = ((x_reg_116 > 6'd32) ? 1'b1 : 1'b0);

assign cmp6_i_i_mid1_fu_293_p2 = ((x_2_fu_281_p2 > 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln279_fu_197_p2 = ((indvar_flatten19_reg_83 == 18'd147968) ? 1'b1 : 1'b0);

assign icmp_ln280_fu_203_p2 = ((indvar_flatten_reg_105 == 14'd4352) ? 1'b1 : 1'b0);

assign icmp_ln281_fu_261_p2 = ((simd_reg_127 == 8'd128) ? 1'b1 : 1'b0);

assign in0_V_TREADY = regslice_both_in0_V_U_ack_in;

assign or_cond_i_i_fu_191_p2 = (tmp2_fu_185_p2 | tmp1_fu_167_p2);

assign or_cond_i_i_mid1_fu_305_p2 = (tmp2_mid1_fu_299_p2 | select_ln279_1_fu_241_p3);

assign or_ln279_fu_249_p2 = (or_cond_i_i_fu_191_p2 | icmp_ln280_fu_203_p2);

assign or_ln281_fu_337_p2 = (icmp_ln280_fu_203_p2 | and_ln279_fu_267_p2);

assign out_V_TDATA_int_regslice = ap_phi_reg_pp0_iter1_outData_1_reg_138;

assign out_V_TVALID = regslice_both_out_V_U_vld_out;

assign select_ln279_1_fu_241_p3 = ((icmp_ln280_fu_203_p2[0:0] == 1'b1) ? tmp1_mid1_fu_235_p2 : tmp1_fu_167_p2);

assign select_ln279_2_fu_273_p3 = ((icmp_ln280_fu_203_p2[0:0] == 1'b1) ? add_ln279_1_fu_217_p2 : y_reg_94);

assign select_ln279_fu_209_p3 = ((icmp_ln280_fu_203_p2[0:0] == 1'b1) ? 6'd0 : x_reg_116);

assign select_ln280_1_fu_319_p3 = ((and_ln279_fu_267_p2[0:0] == 1'b1) ? x_2_fu_281_p2 : select_ln279_fu_209_p3);

assign select_ln280_2_fu_357_p3 = ((icmp_ln280_fu_203_p2[0:0] == 1'b1) ? 14'd1 : add_ln280_1_fu_351_p2);

assign select_ln280_fu_311_p3 = ((and_ln279_fu_267_p2[0:0] == 1'b1) ? or_cond_i_i_mid1_fu_305_p2 : or_ln279_fu_249_p2);

assign simd_1_fu_343_p3 = ((or_ln281_fu_337_p2[0:0] == 1'b1) ? 8'd1 : add_ln281_fu_331_p2);

assign tmp1_fu_167_p2 = (cmp4_i_i_fu_161_p2 | cmp3_i_i_fu_155_p2);

assign tmp1_mid1_fu_235_p2 = (cmp4_i_i_mid1_fu_229_p2 | cmp3_i_i_mid1_fu_223_p2);

assign tmp2_fu_185_p2 = (cmp6_i_i_fu_179_p2 | cmp5_i_i_fu_173_p2);

assign tmp2_mid1_fu_299_p2 = (cmp6_i_i_mid1_fu_293_p2 | cmp5_i_i_mid1_fu_287_p2);

assign tmp_fu_327_p1 = in0_V_TDATA_int_regslice[1:0];

assign x_2_fu_281_p2 = (select_ln279_fu_209_p3 + 6'd1);

assign xor_ln279_fu_255_p2 = (icmp_ln280_fu_203_p2 ^ 1'd1);

endmodule //FMPadding_Batch_3