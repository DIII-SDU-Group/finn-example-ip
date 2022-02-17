// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module StreamingFCLayer_Batch_8_Matrix_Vector_Activate_Stream_Batch_256u_256u_8u_1u_Slice_ap_int_2u_Slice_ap_int_2_2u_Recast_Binary_ap_uint_1_ap_uint_16_ap_uint_2_ThresholdsActivation_256u_1u_2u_ap_int_11_ap_int_2_1_less_equal_ap_int_11_ap_resource_lut_s (
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
input  [15:0] in0_V_TDATA;
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
wire   [10:0] threshs_m_thresholds_V_0_0_q0;
wire   [7:0] threshs_m_thresholds_V_0_1_address0;
reg    threshs_m_thresholds_V_0_1_ce0;
wire   [10:0] threshs_m_thresholds_V_0_1_q0;
reg    in0_V_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln248_fu_471_p2;
wire   [0:0] icmp_ln252_fu_480_p2;
reg    out_V_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] icmp_ln289_reg_1550;
reg    weights_V_TDATA_blk_n;
reg   [13:0] i_reg_341;
wire   [13:0] i_1_fu_465_p2;
reg    ap_predicate_op92_read_state2;
reg    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
wire   [4:0] trunc_ln256_fu_660_p1;
wire   [10:0] accu_V_0_0_fu_1212_p2;
reg   [10:0] accu_V_0_0_reg_1544;
wire   [0:0] icmp_ln289_fu_1224_p2;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg   [15:0] ap_phi_mux_inElem_phi_fu_355_p66;
wire   [15:0] ap_phi_reg_pp0_iter0_inElem_reg_352;
wire   [15:0] tmp_fu_589_p34;
wire   [63:0] idxprom2_i_fu_1243_p1;
reg   [10:0] accu_V_0_0_1_fu_156;
reg   [31:0] sf_fu_160;
wire   [31:0] sf_1_fu_1218_p2;
reg   [15:0] inputBuf_V_31_fu_164;
reg   [15:0] inputBuf_V_31_1_fu_168;
reg   [15:0] inputBuf_V_31_2_fu_172;
reg   [15:0] inputBuf_V_31_3_fu_176;
reg   [15:0] inputBuf_V_31_4_fu_180;
reg   [15:0] inputBuf_V_31_5_fu_184;
reg   [15:0] inputBuf_V_31_6_fu_188;
reg   [15:0] inputBuf_V_31_7_fu_192;
reg   [15:0] inputBuf_V_31_8_fu_196;
reg   [15:0] inputBuf_V_31_9_fu_200;
reg   [15:0] inputBuf_V_31_10_fu_204;
reg   [15:0] inputBuf_V_31_11_fu_208;
reg   [15:0] inputBuf_V_31_12_fu_212;
reg   [15:0] inputBuf_V_31_13_fu_216;
reg   [15:0] inputBuf_V_31_14_fu_220;
reg   [15:0] inputBuf_V_31_15_fu_224;
reg   [15:0] inputBuf_V_31_16_fu_228;
reg   [15:0] inputBuf_V_31_17_fu_232;
reg   [15:0] inputBuf_V_31_18_fu_236;
reg   [15:0] inputBuf_V_31_19_fu_240;
reg   [15:0] inputBuf_V_31_20_fu_244;
reg   [15:0] inputBuf_V_31_21_fu_248;
reg   [15:0] inputBuf_V_31_22_fu_252;
reg   [15:0] inputBuf_V_31_23_fu_256;
reg   [15:0] inputBuf_V_31_24_fu_260;
reg   [15:0] inputBuf_V_31_25_fu_264;
reg   [15:0] inputBuf_V_31_26_fu_268;
reg   [15:0] inputBuf_V_31_27_fu_272;
reg   [15:0] inputBuf_V_31_28_fu_276;
reg   [15:0] inputBuf_V_31_29_fu_280;
reg   [15:0] inputBuf_V_31_30_fu_284;
reg   [15:0] inputBuf_V_31_31_fu_288;
reg   [31:0] nf_1_fu_292;
wire   [31:0] nf_2_fu_1261_p3;
reg    ap_block_pp0_stage0_01001;
wire   [4:0] tmp_fu_589_p33;
wire   [0:0] icmp_ln271_fu_830_p2;
wire   [1:0] trunc_ln674_1_fu_904_p1;
wire  signed [2:0] rhs_0_fu_908_p1;
wire   [0:0] trunc_ln674_fu_844_p1;
wire   [2:0] sub_ln1347_fu_912_p2;
wire   [2:0] select_ln89_fu_918_p3;
wire   [1:0] p_Result_9_1_fu_930_p4;
wire  signed [2:0] rhs_1_fu_940_p1;
wire   [0:0] tmp_3_fu_848_p3;
wire   [2:0] sub_ln1347_1_fu_944_p2;
wire   [2:0] select_ln89_1_fu_950_p3;
wire   [1:0] p_Result_9_2_fu_962_p4;
wire  signed [2:0] rhs_2_fu_972_p1;
wire   [0:0] tmp_4_fu_856_p3;
wire   [2:0] sub_ln1347_2_fu_976_p2;
wire   [2:0] select_ln89_2_fu_982_p3;
wire   [1:0] p_Result_9_3_fu_994_p4;
wire  signed [2:0] rhs_3_fu_1004_p1;
wire   [0:0] tmp_5_fu_864_p3;
wire   [2:0] sub_ln1347_3_fu_1008_p2;
wire   [2:0] select_ln89_3_fu_1014_p3;
wire   [1:0] p_Result_9_4_fu_1026_p4;
wire  signed [2:0] rhs_4_fu_1036_p1;
wire   [0:0] tmp_6_fu_872_p3;
wire   [2:0] sub_ln1347_4_fu_1040_p2;
wire   [2:0] select_ln89_4_fu_1046_p3;
wire   [1:0] p_Result_9_5_fu_1058_p4;
wire  signed [2:0] rhs_5_fu_1068_p1;
wire   [0:0] tmp_7_fu_880_p3;
wire   [2:0] sub_ln1347_5_fu_1072_p2;
wire   [2:0] select_ln89_5_fu_1078_p3;
wire   [1:0] p_Result_9_6_fu_1090_p4;
wire  signed [2:0] rhs_6_fu_1100_p1;
wire   [0:0] tmp_8_fu_888_p3;
wire   [2:0] sub_ln1347_6_fu_1104_p2;
wire   [2:0] select_ln89_6_fu_1110_p3;
wire   [1:0] p_Result_9_7_fu_1122_p4;
wire  signed [2:0] rhs_7_fu_1132_p1;
wire   [0:0] tmp_9_fu_896_p3;
wire   [2:0] sub_ln1347_7_fu_1136_p2;
wire   [2:0] select_ln89_7_fu_1142_p3;
wire   [10:0] select_ln271_fu_836_p3;
wire  signed [10:0] sext_ln691_fu_1086_p1;
wire  signed [3:0] sext_ln674_5_fu_1118_p1;
wire  signed [3:0] sext_ln674_4_fu_1054_p1;
wire   [3:0] add_ln691_1_fu_1160_p2;
wire  signed [10:0] sext_ln691_2_fu_1166_p1;
wire   [10:0] add_ln691_fu_1154_p2;
wire  signed [3:0] sext_ln674_3_fu_1022_p1;
wire  signed [3:0] sext_ln674_fu_926_p1;
wire   [3:0] add_ln691_3_fu_1176_p2;
wire  signed [3:0] sext_ln674_1_fu_958_p1;
wire  signed [3:0] sext_ln691_1_fu_1150_p1;
wire   [3:0] add_ln691_4_fu_1186_p2;
wire  signed [3:0] sext_ln674_2_fu_990_p1;
wire   [3:0] add_ln691_5_fu_1192_p2;
wire  signed [4:0] sext_ln691_4_fu_1198_p1;
wire  signed [4:0] sext_ln691_3_fu_1182_p1;
wire   [4:0] add_ln691_6_fu_1202_p2;
wire  signed [10:0] sext_ln691_5_fu_1208_p1;
wire   [10:0] add_ln691_2_fu_1170_p2;
wire   [31:0] nf_fu_1249_p2;
wire   [0:0] icmp_ln301_fu_1255_p2;
wire   [0:0] result_V_fu_1274_p2;
wire   [0:0] icmp_ln890_fu_1287_p2;
wire   [0:0] xor_ln890_fu_1292_p2;
wire   [1:0] select_ln183_fu_1279_p3;
wire   [1:0] zext_ln691_fu_1298_p1;
wire   [1:0] result_V_2_fu_1302_p2;
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

StreamingFCLayer_Batch_8_Matrix_Vector_Activate_Stream_Batch_256u_256u_8u_1u_Slice_ap_int_2u_Slice_ap_bkb #(
    .DataWidth( 11 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
threshs_m_thresholds_V_0_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(threshs_m_thresholds_V_0_0_address0),
    .ce0(threshs_m_thresholds_V_0_0_ce0),
    .q0(threshs_m_thresholds_V_0_0_q0)
);

StreamingFCLayer_Batch_8_Matrix_Vector_Activate_Stream_Batch_256u_256u_8u_1u_Slice_ap_int_2u_Slice_ap_cud #(
    .DataWidth( 11 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
threshs_m_thresholds_V_0_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(threshs_m_thresholds_V_0_1_address0),
    .ce0(threshs_m_thresholds_V_0_1_ce0),
    .q0(threshs_m_thresholds_V_0_1_q0)
);

StreamingFCLayer_Batch_8_mux_325_16_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 16 ),
    .din4_WIDTH( 16 ),
    .din5_WIDTH( 16 ),
    .din6_WIDTH( 16 ),
    .din7_WIDTH( 16 ),
    .din8_WIDTH( 16 ),
    .din9_WIDTH( 16 ),
    .din10_WIDTH( 16 ),
    .din11_WIDTH( 16 ),
    .din12_WIDTH( 16 ),
    .din13_WIDTH( 16 ),
    .din14_WIDTH( 16 ),
    .din15_WIDTH( 16 ),
    .din16_WIDTH( 16 ),
    .din17_WIDTH( 16 ),
    .din18_WIDTH( 16 ),
    .din19_WIDTH( 16 ),
    .din20_WIDTH( 16 ),
    .din21_WIDTH( 16 ),
    .din22_WIDTH( 16 ),
    .din23_WIDTH( 16 ),
    .din24_WIDTH( 16 ),
    .din25_WIDTH( 16 ),
    .din26_WIDTH( 16 ),
    .din27_WIDTH( 16 ),
    .din28_WIDTH( 16 ),
    .din29_WIDTH( 16 ),
    .din30_WIDTH( 16 ),
    .din31_WIDTH( 16 ),
    .din32_WIDTH( 5 ),
    .dout_WIDTH( 16 ))
mux_325_16_1_1_U1(
    .din0(inputBuf_V_31_fu_164),
    .din1(inputBuf_V_31_1_fu_168),
    .din2(inputBuf_V_31_2_fu_172),
    .din3(inputBuf_V_31_3_fu_176),
    .din4(inputBuf_V_31_4_fu_180),
    .din5(inputBuf_V_31_5_fu_184),
    .din6(inputBuf_V_31_6_fu_188),
    .din7(inputBuf_V_31_7_fu_192),
    .din8(inputBuf_V_31_8_fu_196),
    .din9(inputBuf_V_31_9_fu_200),
    .din10(inputBuf_V_31_10_fu_204),
    .din11(inputBuf_V_31_11_fu_208),
    .din12(inputBuf_V_31_12_fu_212),
    .din13(inputBuf_V_31_13_fu_216),
    .din14(inputBuf_V_31_14_fu_220),
    .din15(inputBuf_V_31_15_fu_224),
    .din16(inputBuf_V_31_16_fu_228),
    .din17(inputBuf_V_31_17_fu_232),
    .din18(inputBuf_V_31_18_fu_236),
    .din19(inputBuf_V_31_19_fu_240),
    .din20(inputBuf_V_31_20_fu_244),
    .din21(inputBuf_V_31_21_fu_248),
    .din22(inputBuf_V_31_22_fu_252),
    .din23(inputBuf_V_31_23_fu_256),
    .din24(inputBuf_V_31_24_fu_260),
    .din25(inputBuf_V_31_25_fu_264),
    .din26(inputBuf_V_31_26_fu_268),
    .din27(inputBuf_V_31_27_fu_272),
    .din28(inputBuf_V_31_28_fu_276),
    .din29(inputBuf_V_31_29_fu_280),
    .din30(inputBuf_V_31_30_fu_284),
    .din31(inputBuf_V_31_31_fu_288),
    .din32(tmp_fu_589_p33),
    .dout(tmp_fu_589_p34)
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
    if (((icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_341 <= i_1_fu_465_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_341 <= 14'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        nf_1_fu_292 <= 32'd0;
    end else if (((icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln289_fu_1224_p2 == 1'd1))) begin
        nf_1_fu_292 <= nf_2_fu_1261_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln289_fu_1224_p2 == 1'd1)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        sf_fu_160 <= 32'd0;
    end else if (((icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln289_fu_1224_p2 == 1'd0))) begin
        sf_fu_160 <= sf_1_fu_1218_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        accu_V_0_0_1_fu_156 <= accu_V_0_0_fu_1212_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        accu_V_0_0_reg_1544 <= accu_V_0_0_fu_1212_p2;
        icmp_ln289_reg_1550 <= icmp_ln289_fu_1224_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd10))) begin
        inputBuf_V_31_10_fu_204 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd11))) begin
        inputBuf_V_31_11_fu_208 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd12))) begin
        inputBuf_V_31_12_fu_212 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd13))) begin
        inputBuf_V_31_13_fu_216 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd14))) begin
        inputBuf_V_31_14_fu_220 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd15))) begin
        inputBuf_V_31_15_fu_224 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd16))) begin
        inputBuf_V_31_16_fu_228 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd17))) begin
        inputBuf_V_31_17_fu_232 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd18))) begin
        inputBuf_V_31_18_fu_236 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd19))) begin
        inputBuf_V_31_19_fu_240 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd1))) begin
        inputBuf_V_31_1_fu_168 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd20))) begin
        inputBuf_V_31_20_fu_244 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd21))) begin
        inputBuf_V_31_21_fu_248 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd22))) begin
        inputBuf_V_31_22_fu_252 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd23))) begin
        inputBuf_V_31_23_fu_256 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd24))) begin
        inputBuf_V_31_24_fu_260 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd25))) begin
        inputBuf_V_31_25_fu_264 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd26))) begin
        inputBuf_V_31_26_fu_268 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd27))) begin
        inputBuf_V_31_27_fu_272 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd28))) begin
        inputBuf_V_31_28_fu_276 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd29))) begin
        inputBuf_V_31_29_fu_280 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd2))) begin
        inputBuf_V_31_2_fu_172 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd30))) begin
        inputBuf_V_31_30_fu_284 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd31))) begin
        inputBuf_V_31_31_fu_288 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd3))) begin
        inputBuf_V_31_3_fu_176 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd4))) begin
        inputBuf_V_31_4_fu_180 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd5))) begin
        inputBuf_V_31_5_fu_184 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd6))) begin
        inputBuf_V_31_6_fu_188 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd7))) begin
        inputBuf_V_31_7_fu_192 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd8))) begin
        inputBuf_V_31_8_fu_196 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd9))) begin
        inputBuf_V_31_9_fu_200 <= in0_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln256_fu_660_p1 == 5'd0))) begin
        inputBuf_V_31_fu_164 <= in0_V_TDATA;
    end
end

always @ (*) begin
    if ((icmp_ln248_fu_471_p2 == 1'd1)) begin
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
    if (((icmp_ln252_fu_480_p2 == 1'd0) & (icmp_ln248_fu_471_p2 == 1'd0))) begin
        ap_phi_mux_inElem_phi_fu_355_p66 = tmp_fu_589_p34;
    end else if ((((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd0)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd1)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd2)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd3)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd4)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd5)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd6)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd7)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd8)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd9)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd10)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd11)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd12)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd13)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd14)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd15)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd16)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd17)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd18)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd19)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd20)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd21)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd22)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd23)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd24)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd25)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd26)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd27)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd28)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd29)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd30)) | ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (trunc_ln256_fu_660_p1 == 5'd31)))) begin
        ap_phi_mux_inElem_phi_fu_355_p66 = in0_V_TDATA;
    end else begin
        ap_phi_mux_inElem_phi_fu_355_p66 = ap_phi_reg_pp0_iter0_inElem_reg_352;
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
    if (((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln289_reg_1550 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_V_TDATA_blk_n = out_V_TREADY;
    end else begin
        out_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln289_reg_1550 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        threshs_m_thresholds_V_0_1_ce0 = 1'b1;
    end else begin
        threshs_m_thresholds_V_0_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights_V_TDATA_blk_n = weights_V_TVALID;
    end else begin
        weights_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln248_fu_471_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            if (~((icmp_ln248_fu_471_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln248_fu_471_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
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

assign accu_V_0_0_fu_1212_p2 = ($signed(sext_ln691_5_fu_1208_p1) + $signed(add_ln691_2_fu_1170_p2));

assign add_ln691_1_fu_1160_p2 = ($signed(sext_ln674_5_fu_1118_p1) + $signed(sext_ln674_4_fu_1054_p1));

assign add_ln691_2_fu_1170_p2 = ($signed(sext_ln691_2_fu_1166_p1) + $signed(add_ln691_fu_1154_p2));

assign add_ln691_3_fu_1176_p2 = ($signed(sext_ln674_3_fu_1022_p1) + $signed(sext_ln674_fu_926_p1));

assign add_ln691_4_fu_1186_p2 = ($signed(sext_ln674_1_fu_958_p1) + $signed(sext_ln691_1_fu_1150_p1));

assign add_ln691_5_fu_1192_p2 = ($signed(add_ln691_4_fu_1186_p2) + $signed(sext_ln674_2_fu_990_p1));

assign add_ln691_6_fu_1202_p2 = ($signed(sext_ln691_4_fu_1198_p1) + $signed(sext_ln691_3_fu_1182_p1));

assign add_ln691_fu_1154_p2 = ($signed(select_ln271_fu_836_p3) + $signed(sext_ln691_fu_1086_p1));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln289_reg_1550 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (out_V_TREADY == 1'b0)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((ap_predicate_op92_read_state2 == 1'b1) & (in0_V_TVALID == 1'b0)) | ((icmp_ln248_fu_471_p2 == 1'd0) & (weights_V_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln289_reg_1550 == 1'd1) & (out_V_TREADY == 1'b0)))) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((ap_predicate_op92_read_state2 == 1'b1) & (in0_V_TVALID == 1'b0)) | ((icmp_ln248_fu_471_p2 == 1'd0) & (weights_V_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state3_io) | ((icmp_ln289_reg_1550 == 1'd1) & (out_V_TREADY == 1'b0)))) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((ap_predicate_op92_read_state2 == 1'b1) & (in0_V_TVALID == 1'b0)) | ((icmp_ln248_fu_471_p2 == 1'd0) & (weights_V_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = (((ap_predicate_op92_read_state2 == 1'b1) & (in0_V_TVALID == 1'b0)) | ((icmp_ln248_fu_471_p2 == 1'd0) & (weights_V_TVALID == 1'b0)));
end

always @ (*) begin
    ap_block_state3_io = ((icmp_ln289_reg_1550 == 1'd1) & (out_V_TREADY == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((icmp_ln289_reg_1550 == 1'd1) & (out_V_TREADY == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_inElem_reg_352 = 'bx;

always @ (*) begin
    ap_predicate_op92_read_state2 = ((icmp_ln252_fu_480_p2 == 1'd1) & (icmp_ln248_fu_471_p2 == 1'd0));
end

assign i_1_fu_465_p2 = (i_reg_341 + 14'd1);

assign icmp_ln248_fu_471_p2 = ((i_reg_341 == 14'd8192) ? 1'b1 : 1'b0);

assign icmp_ln252_fu_480_p2 = ((nf_1_fu_292 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln271_fu_830_p2 = ((sf_fu_160 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln289_fu_1224_p2 = ((sf_1_fu_1218_p2 == 32'd32) ? 1'b1 : 1'b0);

assign icmp_ln301_fu_1255_p2 = ((nf_fu_1249_p2 == 32'd256) ? 1'b1 : 1'b0);

assign icmp_ln890_fu_1287_p2 = (($signed(accu_V_0_0_reg_1544) < $signed(threshs_m_thresholds_V_0_1_q0)) ? 1'b1 : 1'b0);

assign idxprom2_i_fu_1243_p1 = nf_1_fu_292;

assign nf_2_fu_1261_p3 = ((icmp_ln301_fu_1255_p2[0:0] == 1'b1) ? 32'd0 : nf_fu_1249_p2);

assign nf_fu_1249_p2 = (nf_1_fu_292 + 32'd1);

assign out_V_TDATA = result_V_2_fu_1302_p2;

assign p_Result_9_1_fu_930_p4 = {{ap_phi_mux_inElem_phi_fu_355_p66[3:2]}};

assign p_Result_9_2_fu_962_p4 = {{ap_phi_mux_inElem_phi_fu_355_p66[5:4]}};

assign p_Result_9_3_fu_994_p4 = {{ap_phi_mux_inElem_phi_fu_355_p66[7:6]}};

assign p_Result_9_4_fu_1026_p4 = {{ap_phi_mux_inElem_phi_fu_355_p66[9:8]}};

assign p_Result_9_5_fu_1058_p4 = {{ap_phi_mux_inElem_phi_fu_355_p66[11:10]}};

assign p_Result_9_6_fu_1090_p4 = {{ap_phi_mux_inElem_phi_fu_355_p66[13:12]}};

assign p_Result_9_7_fu_1122_p4 = {{ap_phi_mux_inElem_phi_fu_355_p66[15:14]}};

assign result_V_2_fu_1302_p2 = (select_ln183_fu_1279_p3 + zext_ln691_fu_1298_p1);

assign result_V_fu_1274_p2 = (($signed(threshs_m_thresholds_V_0_0_q0) > $signed(accu_V_0_0_reg_1544)) ? 1'b1 : 1'b0);

assign rhs_0_fu_908_p1 = $signed(trunc_ln674_1_fu_904_p1);

assign rhs_1_fu_940_p1 = $signed(p_Result_9_1_fu_930_p4);

assign rhs_2_fu_972_p1 = $signed(p_Result_9_2_fu_962_p4);

assign rhs_3_fu_1004_p1 = $signed(p_Result_9_3_fu_994_p4);

assign rhs_4_fu_1036_p1 = $signed(p_Result_9_4_fu_1026_p4);

assign rhs_5_fu_1068_p1 = $signed(p_Result_9_5_fu_1058_p4);

assign rhs_6_fu_1100_p1 = $signed(p_Result_9_6_fu_1090_p4);

assign rhs_7_fu_1132_p1 = $signed(p_Result_9_7_fu_1122_p4);

assign select_ln183_fu_1279_p3 = ((result_V_fu_1274_p2[0:0] == 1'b1) ? 2'd3 : 2'd0);

assign select_ln271_fu_836_p3 = ((icmp_ln271_fu_830_p2[0:0] == 1'b1) ? 11'd0 : accu_V_0_0_1_fu_156);

assign select_ln89_1_fu_950_p3 = ((tmp_3_fu_848_p3[0:0] == 1'b1) ? rhs_1_fu_940_p1 : sub_ln1347_1_fu_944_p2);

assign select_ln89_2_fu_982_p3 = ((tmp_4_fu_856_p3[0:0] == 1'b1) ? rhs_2_fu_972_p1 : sub_ln1347_2_fu_976_p2);

assign select_ln89_3_fu_1014_p3 = ((tmp_5_fu_864_p3[0:0] == 1'b1) ? rhs_3_fu_1004_p1 : sub_ln1347_3_fu_1008_p2);

assign select_ln89_4_fu_1046_p3 = ((tmp_6_fu_872_p3[0:0] == 1'b1) ? rhs_4_fu_1036_p1 : sub_ln1347_4_fu_1040_p2);

assign select_ln89_5_fu_1078_p3 = ((tmp_7_fu_880_p3[0:0] == 1'b1) ? rhs_5_fu_1068_p1 : sub_ln1347_5_fu_1072_p2);

assign select_ln89_6_fu_1110_p3 = ((tmp_8_fu_888_p3[0:0] == 1'b1) ? rhs_6_fu_1100_p1 : sub_ln1347_6_fu_1104_p2);

assign select_ln89_7_fu_1142_p3 = ((tmp_9_fu_896_p3[0:0] == 1'b1) ? rhs_7_fu_1132_p1 : sub_ln1347_7_fu_1136_p2);

assign select_ln89_fu_918_p3 = ((trunc_ln674_fu_844_p1[0:0] == 1'b1) ? rhs_0_fu_908_p1 : sub_ln1347_fu_912_p2);

assign sext_ln674_1_fu_958_p1 = $signed(select_ln89_1_fu_950_p3);

assign sext_ln674_2_fu_990_p1 = $signed(select_ln89_2_fu_982_p3);

assign sext_ln674_3_fu_1022_p1 = $signed(select_ln89_3_fu_1014_p3);

assign sext_ln674_4_fu_1054_p1 = $signed(select_ln89_4_fu_1046_p3);

assign sext_ln674_5_fu_1118_p1 = $signed(select_ln89_6_fu_1110_p3);

assign sext_ln674_fu_926_p1 = $signed(select_ln89_fu_918_p3);

assign sext_ln691_1_fu_1150_p1 = $signed(select_ln89_7_fu_1142_p3);

assign sext_ln691_2_fu_1166_p1 = $signed(add_ln691_1_fu_1160_p2);

assign sext_ln691_3_fu_1182_p1 = $signed(add_ln691_3_fu_1176_p2);

assign sext_ln691_4_fu_1198_p1 = $signed(add_ln691_5_fu_1192_p2);

assign sext_ln691_5_fu_1208_p1 = $signed(add_ln691_6_fu_1202_p2);

assign sext_ln691_fu_1086_p1 = $signed(select_ln89_5_fu_1078_p3);

assign sf_1_fu_1218_p2 = (sf_fu_160 + 32'd1);

assign sub_ln1347_1_fu_944_p2 = ($signed(3'd0) - $signed(rhs_1_fu_940_p1));

assign sub_ln1347_2_fu_976_p2 = ($signed(3'd0) - $signed(rhs_2_fu_972_p1));

assign sub_ln1347_3_fu_1008_p2 = ($signed(3'd0) - $signed(rhs_3_fu_1004_p1));

assign sub_ln1347_4_fu_1040_p2 = ($signed(3'd0) - $signed(rhs_4_fu_1036_p1));

assign sub_ln1347_5_fu_1072_p2 = ($signed(3'd0) - $signed(rhs_5_fu_1068_p1));

assign sub_ln1347_6_fu_1104_p2 = ($signed(3'd0) - $signed(rhs_6_fu_1100_p1));

assign sub_ln1347_7_fu_1136_p2 = ($signed(3'd0) - $signed(rhs_7_fu_1132_p1));

assign sub_ln1347_fu_912_p2 = ($signed(3'd0) - $signed(rhs_0_fu_908_p1));

assign threshs_m_thresholds_V_0_0_address0 = idxprom2_i_fu_1243_p1;

assign threshs_m_thresholds_V_0_1_address0 = idxprom2_i_fu_1243_p1;

assign tmp_3_fu_848_p3 = weights_V_TDATA[32'd1];

assign tmp_4_fu_856_p3 = weights_V_TDATA[32'd2];

assign tmp_5_fu_864_p3 = weights_V_TDATA[32'd3];

assign tmp_6_fu_872_p3 = weights_V_TDATA[32'd4];

assign tmp_7_fu_880_p3 = weights_V_TDATA[32'd5];

assign tmp_8_fu_888_p3 = weights_V_TDATA[32'd6];

assign tmp_9_fu_896_p3 = weights_V_TDATA[32'd7];

assign tmp_fu_589_p33 = sf_fu_160[4:0];

assign trunc_ln256_fu_660_p1 = sf_fu_160[4:0];

assign trunc_ln674_1_fu_904_p1 = ap_phi_mux_inElem_phi_fu_355_p66[1:0];

assign trunc_ln674_fu_844_p1 = weights_V_TDATA[0:0];

assign xor_ln890_fu_1292_p2 = (icmp_ln890_fu_1287_p2 ^ 1'd1);

assign zext_ln691_fu_1298_p1 = xor_ln890_fu_1292_p2;

endmodule //StreamingFCLayer_Batch_8_Matrix_Vector_Activate_Stream_Batch_256u_256u_8u_1u_Slice_ap_int_2u_Slice_ap_int_2_2u_Recast_Binary_ap_uint_1_ap_uint_16_ap_uint_2_ThresholdsActivation_256u_1u_2u_ap_int_11_ap_int_2_1_less_equal_ap_int_11_ap_resource_lut_s