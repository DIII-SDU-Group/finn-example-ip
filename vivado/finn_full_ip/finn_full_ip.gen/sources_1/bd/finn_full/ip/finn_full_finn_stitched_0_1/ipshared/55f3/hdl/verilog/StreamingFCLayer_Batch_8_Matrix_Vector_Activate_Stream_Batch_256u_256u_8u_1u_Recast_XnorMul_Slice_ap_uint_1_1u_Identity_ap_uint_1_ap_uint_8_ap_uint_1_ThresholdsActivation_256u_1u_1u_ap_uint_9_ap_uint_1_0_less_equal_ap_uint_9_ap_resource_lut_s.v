// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module StreamingFCLayer_Batch_8_Matrix_Vector_Activate_Stream_Batch_256u_256u_8u_1u_Recast_XnorMul_Slice_ap_uint_1_1u_Identity_ap_uint_1_ap_uint_8_ap_uint_1_ThresholdsActivation_256u_1u_1u_ap_uint_9_ap_uint_1_0_less_equal_ap_uint_9_ap_resource_lut_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in0_V_TDATA,
        in0_V_TVALID,
        in0_V_TREADY,
        out_V_TDATA,
        out_V_TVALID,
        out_V_TREADY,
        weights_V_TDATA,
        weights_V_TVALID,
        weights_V_TREADY
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] in0_V_TDATA;
input   in0_V_TVALID;
output   in0_V_TREADY;
output  [7:0] out_V_TDATA;
output   out_V_TVALID;
input   out_V_TREADY;
input  [7:0] weights_V_TDATA;
input   weights_V_TVALID;
output   weights_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in0_V_TREADY;
reg out_V_TVALID;
reg weights_V_TREADY;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] threshs_m_thresholds_V_0_0_address0;
reg    threshs_m_thresholds_V_0_0_ce0;
wire   [8:0] threshs_m_thresholds_V_0_0_q0;
reg    in0_V_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln248_fu_448_p2;
wire   [0:0] icmp_ln252_fu_457_p2;
reg    out_V_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] icmp_ln289_reg_1444;
reg    weights_V_TDATA_blk_n;
reg   [13:0] i_reg_318;
wire   [13:0] i_1_fu_442_p2;
reg    ap_predicate_op92_read_state2;
reg    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
wire   [4:0] trunc_ln256_fu_637_p1;
wire   [8:0] accu_V_0_0_fu_1131_p2;
reg   [8:0] accu_V_0_0_reg_1439;
wire   [0:0] icmp_ln289_fu_1143_p2;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg   [7:0] ap_phi_mux_inElem_phi_fu_332_p66;
wire   [7:0] ap_phi_reg_pp0_iter0_inElem_reg_329;
wire   [7:0] tmp_2_fu_566_p34;
wire   [63:0] idxprom2_i_fu_1162_p1;
reg   [8:0] accu_V_0_0_1_fu_146;
reg   [31:0] sf_fu_150;
wire   [31:0] sf_1_fu_1137_p2;
reg   [7:0] inputBuf_V_31_fu_154;
reg   [7:0] inputBuf_V_31_1_fu_158;
reg   [7:0] inputBuf_V_31_2_fu_162;
reg   [7:0] inputBuf_V_31_3_fu_166;
reg   [7:0] inputBuf_V_31_4_fu_170;
reg   [7:0] inputBuf_V_31_5_fu_174;
reg   [7:0] inputBuf_V_31_6_fu_178;
reg   [7:0] inputBuf_V_31_7_fu_182;
reg   [7:0] inputBuf_V_31_8_fu_186;
reg   [7:0] inputBuf_V_31_9_fu_190;
reg   [7:0] inputBuf_V_31_10_fu_194;
reg   [7:0] inputBuf_V_31_11_fu_198;
reg   [7:0] inputBuf_V_31_12_fu_202;
reg   [7:0] inputBuf_V_31_13_fu_206;
reg   [7:0] inputBuf_V_31_14_fu_210;
reg   [7:0] inputBuf_V_31_15_fu_214;
reg   [7:0] inputBuf_V_31_16_fu_218;
reg   [7:0] inputBuf_V_31_17_fu_222;
reg   [7:0] inputBuf_V_31_18_fu_226;
reg   [7:0] inputBuf_V_31_19_fu_230;
reg   [7:0] inputBuf_V_31_20_fu_234;
reg   [7:0] inputBuf_V_31_21_fu_238;
reg   [7:0] inputBuf_V_31_22_fu_242;
reg   [7:0] inputBuf_V_31_23_fu_246;
reg   [7:0] inputBuf_V_31_24_fu_250;
reg   [7:0] inputBuf_V_31_25_fu_254;
reg   [7:0] inputBuf_V_31_26_fu_258;
reg   [7:0] inputBuf_V_31_27_fu_262;
reg   [7:0] inputBuf_V_31_28_fu_266;
reg   [7:0] inputBuf_V_31_29_fu_270;
reg   [7:0] inputBuf_V_31_30_fu_274;
reg   [7:0] inputBuf_V_31_31_fu_278;
reg   [31:0] nf_1_fu_282;
wire   [31:0] nf_2_fu_1179_p3;
reg    ap_block_pp0_stage0_01001;
wire   [4:0] tmp_2_fu_566_p33;
wire   [0:0] icmp_ln271_fu_807_p2;
wire   [0:0] p_Result_s_fu_881_p3;
wire   [0:0] trunc_ln674_fu_821_p1;
wire   [0:0] xor_ln870_fu_889_p2;
wire   [0:0] xor_ln870_1_fu_895_p2;
wire   [0:0] p_Result_1_fu_905_p3;
wire   [0:0] tmp_fu_825_p3;
wire   [0:0] xor_ln870_2_fu_913_p2;
wire   [0:0] xor_ln870_3_fu_919_p2;
wire   [0:0] p_Result_2_fu_929_p3;
wire   [0:0] tmp_1_fu_833_p3;
wire   [0:0] xor_ln870_4_fu_937_p2;
wire   [0:0] xor_ln870_5_fu_943_p2;
wire   [0:0] p_Result_3_fu_953_p3;
wire   [0:0] tmp_3_fu_841_p3;
wire   [0:0] xor_ln870_6_fu_961_p2;
wire   [0:0] xor_ln870_7_fu_967_p2;
wire   [0:0] p_Result_4_fu_977_p3;
wire   [0:0] tmp_4_fu_849_p3;
wire   [0:0] xor_ln870_8_fu_985_p2;
wire   [0:0] xor_ln870_9_fu_991_p2;
wire   [0:0] p_Result_5_fu_1001_p3;
wire   [0:0] tmp_5_fu_857_p3;
wire   [0:0] xor_ln870_10_fu_1009_p2;
wire   [0:0] xor_ln870_11_fu_1015_p2;
wire   [0:0] p_Result_6_fu_1025_p3;
wire   [0:0] tmp_6_fu_865_p3;
wire   [0:0] xor_ln870_12_fu_1033_p2;
wire   [0:0] xor_ln870_13_fu_1039_p2;
wire   [0:0] p_Result_7_fu_1049_p3;
wire   [0:0] tmp_7_fu_873_p3;
wire   [0:0] xor_ln870_14_fu_1057_p2;
wire   [0:0] xor_ln870_15_fu_1063_p2;
wire   [8:0] select_ln271_fu_813_p3;
wire   [8:0] zext_ln691_fu_1021_p1;
wire   [1:0] zext_ln820_5_fu_1045_p1;
wire   [1:0] zext_ln820_4_fu_997_p1;
wire   [1:0] add_ln691_1_fu_1079_p2;
wire   [8:0] zext_ln691_2_fu_1085_p1;
wire   [8:0] add_ln691_fu_1073_p2;
wire   [1:0] zext_ln820_3_fu_973_p1;
wire   [1:0] zext_ln820_fu_901_p1;
wire   [1:0] add_ln691_3_fu_1095_p2;
wire   [1:0] zext_ln820_1_fu_925_p1;
wire   [1:0] zext_ln691_1_fu_1069_p1;
wire   [1:0] add_ln691_4_fu_1105_p2;
wire   [1:0] zext_ln820_2_fu_949_p1;
wire   [1:0] add_ln691_5_fu_1111_p2;
wire   [2:0] zext_ln691_4_fu_1117_p1;
wire   [2:0] zext_ln691_3_fu_1101_p1;
wire   [2:0] add_ln691_6_fu_1121_p2;
wire   [8:0] zext_ln691_5_fu_1127_p1;
wire   [8:0] add_ln691_2_fu_1089_p2;
wire   [31:0] nf_fu_1167_p2;
wire   [0:0] icmp_ln301_fu_1173_p2;
wire   [0:0] icmp_ln890_fu_1192_p2;
wire   [0:0] result_V_fu_1197_p2;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

StreamingFCLayer_Batch_8_Matrix_Vector_Activate_Stream_Batch_256u_256u_8u_1u_Recast_XnorMul_Slice_ap_ubkb #(
    .DataWidth( 9 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
threshs_m_thresholds_V_0_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(threshs_m_thresholds_V_0_0_address0),
    .ce0(threshs_m_thresholds_V_0_0_ce0),
    .q0(threshs_m_thresholds_V_0_0_q0)
);

StreamingFCLayer_Batch_8_mux_325_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .din10_WIDTH( 8 ),
    .din11_WIDTH( 8 ),
    .din12_WIDTH( 8 ),
    .din13_WIDTH( 8 ),
    .din14_WIDTH( 8 ),
    .din15_WIDTH( 8 ),
    .din16_WIDTH( 8 ),
    .din17_WIDTH( 8 ),
    .din18_WIDTH( 8 ),
    .din19_WIDTH( 8 ),
    .din20_WIDTH( 8 ),
    .din21_WIDTH( 8 ),
    .din22_WIDTH( 8 ),
    .din23_WIDTH( 8 ),
    .din24_WIDTH( 8 ),
    .din25_WIDTH( 8 ),
    .din26_WIDTH( 8 ),
    .din27_WIDTH( 8 ),
    .din28_WIDTH( 8 ),
    .din29_WIDTH( 8 ),
    .din30_WIDTH( 8 ),
    .din31_WIDTH( 8 ),
    .din32_WIDTH( 5 ),
    .dout_WIDTH( 8 ))
mux_325_8_1_1_U1(
    .din0(inputBuf_V_31_fu_154),
    .din1(inputBuf_V_31_1_fu_158),
    .din2(inputBuf_V_31_2_fu_162),
    .din3(inputBuf_V_31_3_fu_166),
    .din4(inputBuf_V_31_4_fu_170),
    .din5(inputBuf_V_31_5_fu_174),
    .din6(inputBuf_V_31_6_fu_178),
    .din7(inputBuf_V_31_7_fu_182),
    .din8(inputBuf_V_31_8_fu_186),
    .din9(inputBuf_V_31_9_fu_190),
    .din10(inputBuf_V_31_10_fu_194),
    .din11(inputBuf_V_31_11_fu_198),
    .din12(inputBuf_V_31_12_fu_202),
    .din13(inputBuf_V_31_13_fu_206),
    .din14(inputBuf_V_31_14_fu_210),
    .din15(inputBuf_V_31_15_fu_214),
    .din16(inputBuf_V_31_16_fu_218),
    .din17(inputBuf_V_31_17_fu_222),
    .din18(inputBuf_V_31_18_fu_226),
    .din19(inputBuf_V_31_19_fu_230),
    .din20(inputBuf_V_31_20_fu_234),
    .din21(inputBuf_V_31_21_fu_238),
    .din22(inputBuf_V_31_22_fu_242),
    .din23(inputBuf_V_31_23_fu_246),
    .din24(inputBuf_V_31_24_fu_250),
    .din25(inputBuf_V_31_25_fu_254),
    .din26(inputBuf_V_31_26_fu_258),
    .din27(inputBuf_V_31_27_fu_262),
    .din28(inputBuf_V_31_28_fu_266),
    .din29(inputBuf_V_31_29_fu_270),
    .din30(inputBuf_V_31_30_fu_274),
    .din31(inputBuf_V_31_31_fu_278),
    .din32(tmp_2_fu_566_p33),
    .dout(tmp_2_fu_566_p34)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_318 <= i_1_fu_442_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_318 <= 14'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        nf_1_fu_282 <= 32'd0;
    end else if (((icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln289_fu_1143_p2 == 1'd1))) begin
        nf_1_fu_282 <= nf_2_fu_1179_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln289_fu_1143_p2 == 1'd1)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        sf_fu_150 <= 32'd0;
    end else if (((icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln289_fu_1143_p2 == 1'd0))) begin
        sf_fu_150 <= sf_1_fu_1137_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        accu_V_0_0_1_fu_146 <= accu_V_0_0_fu_1131_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        accu_V_0_0_reg_1439 <= accu_V_0_0_fu_1131_p2;
        icmp_ln289_reg_1444 <= icmp_ln289_fu_1143_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd10))) begin
        inputBuf_V_31_10_fu_194 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd11))) begin
        inputBuf_V_31_11_fu_198 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd12))) begin
        inputBuf_V_31_12_fu_202 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd13))) begin
        inputBuf_V_31_13_fu_206 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd14))) begin
        inputBuf_V_31_14_fu_210 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd15))) begin
        inputBuf_V_31_15_fu_214 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd16))) begin
        inputBuf_V_31_16_fu_218 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd17))) begin
        inputBuf_V_31_17_fu_222 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd18))) begin
        inputBuf_V_31_18_fu_226 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd19))) begin
        inputBuf_V_31_19_fu_230 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd1))) begin
        inputBuf_V_31_1_fu_158 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd20))) begin
        inputBuf_V_31_20_fu_234 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd21))) begin
        inputBuf_V_31_21_fu_238 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd22))) begin
        inputBuf_V_31_22_fu_242 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd23))) begin
        inputBuf_V_31_23_fu_246 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd24))) begin
        inputBuf_V_31_24_fu_250 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd25))) begin
        inputBuf_V_31_25_fu_254 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd26))) begin
        inputBuf_V_31_26_fu_258 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd27))) begin
        inputBuf_V_31_27_fu_262 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd28))) begin
        inputBuf_V_31_28_fu_266 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd29))) begin
        inputBuf_V_31_29_fu_270 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd2))) begin
        inputBuf_V_31_2_fu_162 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd30))) begin
        inputBuf_V_31_30_fu_274 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd31))) begin
        inputBuf_V_31_31_fu_278 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd3))) begin
        inputBuf_V_31_3_fu_166 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd4))) begin
        inputBuf_V_31_4_fu_170 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd5))) begin
        inputBuf_V_31_5_fu_174 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd6))) begin
        inputBuf_V_31_6_fu_178 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd7))) begin
        inputBuf_V_31_7_fu_182 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd8))) begin
        inputBuf_V_31_8_fu_186 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd9))) begin
        inputBuf_V_31_9_fu_190 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_637_p1 == 5'd0))) begin
        inputBuf_V_31_fu_154 <= in0_V_TDATA;
    end
end

always @ (*) begin
    if ((icmp_ln248_fu_448_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln252_fu_457_p2 == 1'd0) & (icmp_ln248_fu_448_p2 == 1'd0))) begin
        ap_phi_mux_inElem_phi_fu_332_p66 = tmp_2_fu_566_p34;
    end else if ((((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd0)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd1)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd2)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd3)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd4)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd5)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd6)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd7)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd8)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd9)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd10)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd11)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd12)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd13)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd14)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd15)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd16)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd17)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd18)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd19)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd20)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd21)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd22)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd23)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd24)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd25)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd26)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd27)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd28)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd29)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd30)) | ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (trunc_ln256_fu_637_p1 == 5'd31)))) begin
        ap_phi_mux_inElem_phi_fu_332_p66 = in0_V_TDATA;
    end else begin
        ap_phi_mux_inElem_phi_fu_332_p66 = ap_phi_reg_pp0_iter0_inElem_reg_329;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in0_V_TDATA_blk_n = in0_V_TVALID;
    end else begin
        in0_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op92_read_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in0_V_TREADY = 1'b1;
    end else begin
        in0_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln289_reg_1444 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_V_TDATA_blk_n = out_V_TREADY;
    end else begin
        out_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln289_reg_1444 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_V_TVALID = 1'b1;
    end else begin
        out_V_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        threshs_m_thresholds_V_0_0_ce0 = 1'b1;
    end else begin
        threshs_m_thresholds_V_0_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights_V_TDATA_blk_n = weights_V_TVALID;
    end else begin
        weights_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln248_fu_448_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights_V_TREADY = 1'b1;
    end else begin
        weights_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((icmp_ln248_fu_448_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln248_fu_448_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign accu_V_0_0_fu_1131_p2 = (zext_ln691_5_fu_1127_p1 + add_ln691_2_fu_1089_p2);

assign add_ln691_1_fu_1079_p2 = (zext_ln820_5_fu_1045_p1 + zext_ln820_4_fu_997_p1);

assign add_ln691_2_fu_1089_p2 = (zext_ln691_2_fu_1085_p1 + add_ln691_fu_1073_p2);

assign add_ln691_3_fu_1095_p2 = (zext_ln820_3_fu_973_p1 + zext_ln820_fu_901_p1);

assign add_ln691_4_fu_1105_p2 = (zext_ln820_1_fu_925_p1 + zext_ln691_1_fu_1069_p1);

assign add_ln691_5_fu_1111_p2 = (add_ln691_4_fu_1105_p2 + zext_ln820_2_fu_949_p1);

assign add_ln691_6_fu_1121_p2 = (zext_ln691_4_fu_1117_p1 + zext_ln691_3_fu_1101_p1);

assign add_ln691_fu_1073_p2 = (select_ln271_fu_813_p3 + zext_ln691_fu_1021_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln289_reg_1444 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (out_V_TREADY == 1'b0)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((ap_predicate_op92_read_state2 == 1'b1) & (in0_V_TVALID == 1'b0)) | ((icmp_ln248_fu_448_p2 == 1'd0) & (weights_V_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln289_reg_1444 == 1'd1) & (out_V_TREADY == 1'b0)))) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((ap_predicate_op92_read_state2 == 1'b1) & (in0_V_TVALID == 1'b0)) | ((icmp_ln248_fu_448_p2 == 1'd0) & (weights_V_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln289_reg_1444 == 1'd1) & (out_V_TREADY == 1'b0)))) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((ap_predicate_op92_read_state2 == 1'b1) & (in0_V_TVALID == 1'b0)) | ((icmp_ln248_fu_448_p2 == 1'd0) & (weights_V_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = (((ap_predicate_op92_read_state2 == 1'b1) & (in0_V_TVALID == 1'b0)) | ((icmp_ln248_fu_448_p2 == 1'd0) & (weights_V_TVALID == 1'b0)));
end

always @ (*) begin
    ap_block_state3_io = ((icmp_ln289_reg_1444 == 1'd1) & (out_V_TREADY == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((icmp_ln289_reg_1444 == 1'd1) & (out_V_TREADY == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_inElem_reg_329 = 'bx;

always @ (*) begin
    ap_predicate_op92_read_state2 = ((icmp_ln252_fu_457_p2 == 1'd1) & (icmp_ln248_fu_448_p2 == 1'd0));
end

assign i_1_fu_442_p2 = (i_reg_318 + 14'd1);

assign icmp_ln248_fu_448_p2 = ((i_reg_318 == 14'd8192) ? 1'b1 : 1'b0);

assign icmp_ln252_fu_457_p2 = ((nf_1_fu_282 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln271_fu_807_p2 = ((sf_fu_150 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln289_fu_1143_p2 = ((sf_1_fu_1137_p2 == 32'd32) ? 1'b1 : 1'b0);

assign icmp_ln301_fu_1173_p2 = ((nf_fu_1167_p2 == 32'd256) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_1192_p2 = ((accu_V_0_0_reg_1439 < threshs_m_thresholds_V_0_0_q0) ? 1'b1 : 1'b0);

assign idxprom2_i_fu_1162_p1 = nf_1_fu_282;

assign nf_2_fu_1179_p3 = ((icmp_ln301_fu_1173_p2[0:0] == 1'b1) ? 32'd0 : nf_fu_1167_p2);

assign nf_fu_1167_p2 = (nf_1_fu_282 + 32'd1);

assign out_V_TDATA = result_V_fu_1197_p2;

assign p_Result_1_fu_905_p3 = ap_phi_mux_inElem_phi_fu_332_p66[8'd1];

assign p_Result_2_fu_929_p3 = ap_phi_mux_inElem_phi_fu_332_p66[8'd2];

assign p_Result_3_fu_953_p3 = ap_phi_mux_inElem_phi_fu_332_p66[8'd3];

assign p_Result_4_fu_977_p3 = ap_phi_mux_inElem_phi_fu_332_p66[8'd4];

assign p_Result_5_fu_1001_p3 = ap_phi_mux_inElem_phi_fu_332_p66[8'd5];

assign p_Result_6_fu_1025_p3 = ap_phi_mux_inElem_phi_fu_332_p66[8'd6];

assign p_Result_7_fu_1049_p3 = ap_phi_mux_inElem_phi_fu_332_p66[8'd7];

assign p_Result_s_fu_881_p3 = ap_phi_mux_inElem_phi_fu_332_p66[8'd0];

assign result_V_fu_1197_p2 = (icmp_ln890_fu_1192_p2 ^ 1'd1);

assign select_ln271_fu_813_p3 = ((icmp_ln271_fu_807_p2[0:0] == 1'b1) ? 9'd0 : accu_V_0_0_1_fu_146);

assign sf_1_fu_1137_p2 = (sf_fu_150 + 32'd1);

assign threshs_m_thresholds_V_0_0_address0 = idxprom2_i_fu_1162_p1;

assign tmp_1_fu_833_p3 = weights_V_TDATA[32'd2];

assign tmp_2_fu_566_p33 = sf_fu_150[4:0];

assign tmp_3_fu_841_p3 = weights_V_TDATA[32'd3];

assign tmp_4_fu_849_p3 = weights_V_TDATA[32'd4];

assign tmp_5_fu_857_p3 = weights_V_TDATA[32'd5];

assign tmp_6_fu_865_p3 = weights_V_TDATA[32'd6];

assign tmp_7_fu_873_p3 = weights_V_TDATA[32'd7];

assign tmp_fu_825_p3 = weights_V_TDATA[32'd1];

assign trunc_ln256_fu_637_p1 = sf_fu_150[4:0];

assign trunc_ln674_fu_821_p1 = weights_V_TDATA[0:0];

assign xor_ln870_10_fu_1009_p2 = (tmp_5_fu_857_p3 ^ p_Result_5_fu_1001_p3);

assign xor_ln870_11_fu_1015_p2 = (xor_ln870_10_fu_1009_p2 ^ 1'd1);

assign xor_ln870_12_fu_1033_p2 = (tmp_6_fu_865_p3 ^ p_Result_6_fu_1025_p3);

assign xor_ln870_13_fu_1039_p2 = (xor_ln870_12_fu_1033_p2 ^ 1'd1);

assign xor_ln870_14_fu_1057_p2 = (tmp_7_fu_873_p3 ^ p_Result_7_fu_1049_p3);

assign xor_ln870_15_fu_1063_p2 = (xor_ln870_14_fu_1057_p2 ^ 1'd1);

assign xor_ln870_1_fu_895_p2 = (xor_ln870_fu_889_p2 ^ 1'd1);

assign xor_ln870_2_fu_913_p2 = (tmp_fu_825_p3 ^ p_Result_1_fu_905_p3);

assign xor_ln870_3_fu_919_p2 = (xor_ln870_2_fu_913_p2 ^ 1'd1);

assign xor_ln870_4_fu_937_p2 = (tmp_1_fu_833_p3 ^ p_Result_2_fu_929_p3);

assign xor_ln870_5_fu_943_p2 = (xor_ln870_4_fu_937_p2 ^ 1'd1);

assign xor_ln870_6_fu_961_p2 = (tmp_3_fu_841_p3 ^ p_Result_3_fu_953_p3);

assign xor_ln870_7_fu_967_p2 = (xor_ln870_6_fu_961_p2 ^ 1'd1);

assign xor_ln870_8_fu_985_p2 = (tmp_4_fu_849_p3 ^ p_Result_4_fu_977_p3);

assign xor_ln870_9_fu_991_p2 = (xor_ln870_8_fu_985_p2 ^ 1'd1);

assign xor_ln870_fu_889_p2 = (trunc_ln674_fu_821_p1 ^ p_Result_s_fu_881_p3);

assign zext_ln691_1_fu_1069_p1 = xor_ln870_15_fu_1063_p2;

assign zext_ln691_2_fu_1085_p1 = add_ln691_1_fu_1079_p2;

assign zext_ln691_3_fu_1101_p1 = add_ln691_3_fu_1095_p2;

assign zext_ln691_4_fu_1117_p1 = add_ln691_5_fu_1111_p2;

assign zext_ln691_5_fu_1127_p1 = add_ln691_6_fu_1121_p2;

assign zext_ln691_fu_1021_p1 = xor_ln870_11_fu_1015_p2;

assign zext_ln820_1_fu_925_p1 = xor_ln870_3_fu_919_p2;

assign zext_ln820_2_fu_949_p1 = xor_ln870_5_fu_943_p2;

assign zext_ln820_3_fu_973_p1 = xor_ln870_7_fu_967_p2;

assign zext_ln820_4_fu_997_p1 = xor_ln870_9_fu_991_p2;

assign zext_ln820_5_fu_1045_p1 = xor_ln870_13_fu_1039_p2;

assign zext_ln820_fu_901_p1 = xor_ln870_1_fu_895_p2;

endmodule //StreamingFCLayer_Batch_8_Matrix_Vector_Activate_Stream_Batch_256u_256u_8u_1u_Recast_XnorMul_Slice_ap_uint_1_1u_Identity_ap_uint_1_ap_uint_8_ap_uint_1_ThresholdsActivation_256u_1u_1u_ap_uint_9_ap_uint_1_0_less_equal_ap_uint_9_ap_resource_lut_s