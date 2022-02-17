//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Thu Feb 17 16:11:57 2022
//Host        : nm running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target finn_stitched.bd
//Design      : finn_stitched
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module StreamingFCLayer_Batch_0_imp_MCWOMF
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [23:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [31:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [31:0]StreamingFCLayer_Batch_0_out_V_TDATA;
  wire StreamingFCLayer_Batch_0_out_V_TREADY;
  wire StreamingFCLayer_Batch_0_out_V_TVALID;
  wire [47:0]StreamingFCLayer_Batch_0_wstrm_m_axis_0_TDATA;
  wire StreamingFCLayer_Batch_0_wstrm_m_axis_0_TREADY;
  wire StreamingFCLayer_Batch_0_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [23:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingFCLayer_Batch_0_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[23:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[31:0] = StreamingFCLayer_Batch_0_out_V_TDATA;
  assign out_V_tvalid = StreamingFCLayer_Batch_0_out_V_TVALID;
  finn_stitched_StreamingFCLayer_Batch_0_3 StreamingFCLayer_Batch_0
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingFCLayer_Batch_0_out_V_TDATA),
        .out_V_TREADY(StreamingFCLayer_Batch_0_out_V_TREADY),
        .out_V_TVALID(StreamingFCLayer_Batch_0_out_V_TVALID),
        .weights_V_TDATA(StreamingFCLayer_Batch_0_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingFCLayer_Batch_0_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingFCLayer_Batch_0_wstrm_m_axis_0_TVALID));
  finn_stitched_StreamingFCLayer_Batch_0_wstrm_2 StreamingFCLayer_Batch_0_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingFCLayer_Batch_0_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingFCLayer_Batch_0_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingFCLayer_Batch_0_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingFCLayer_Batch_1_imp_1L1QJF5
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [31:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [31:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [31:0]StreamingFCLayer_Batch_1_out_V_TDATA;
  wire StreamingFCLayer_Batch_1_out_V_TREADY;
  wire StreamingFCLayer_Batch_1_out_V_TVALID;
  wire [255:0]StreamingFCLayer_Batch_1_wstrm_m_axis_0_TDATA;
  wire StreamingFCLayer_Batch_1_wstrm_m_axis_0_TREADY;
  wire StreamingFCLayer_Batch_1_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [31:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingFCLayer_Batch_1_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[31:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[31:0] = StreamingFCLayer_Batch_1_out_V_TDATA;
  assign out_V_tvalid = StreamingFCLayer_Batch_1_out_V_TVALID;
  finn_stitched_StreamingFCLayer_Batch_1_3 StreamingFCLayer_Batch_1
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingFCLayer_Batch_1_out_V_TDATA),
        .out_V_TREADY(StreamingFCLayer_Batch_1_out_V_TREADY),
        .out_V_TVALID(StreamingFCLayer_Batch_1_out_V_TVALID),
        .weights_V_TDATA(StreamingFCLayer_Batch_1_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingFCLayer_Batch_1_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingFCLayer_Batch_1_wstrm_m_axis_0_TVALID));
  finn_stitched_StreamingFCLayer_Batch_1_wstrm_3 StreamingFCLayer_Batch_1_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingFCLayer_Batch_1_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingFCLayer_Batch_1_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingFCLayer_Batch_1_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingFCLayer_Batch_2_imp_1DDRJEY
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [31:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [15:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [15:0]StreamingFCLayer_Batch_2_out_V_TDATA;
  wire StreamingFCLayer_Batch_2_out_V_TREADY;
  wire StreamingFCLayer_Batch_2_out_V_TVALID;
  wire [127:0]StreamingFCLayer_Batch_2_wstrm_m_axis_0_TDATA;
  wire StreamingFCLayer_Batch_2_wstrm_m_axis_0_TREADY;
  wire StreamingFCLayer_Batch_2_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [31:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingFCLayer_Batch_2_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[31:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[15:0] = StreamingFCLayer_Batch_2_out_V_TDATA;
  assign out_V_tvalid = StreamingFCLayer_Batch_2_out_V_TVALID;
  finn_stitched_StreamingFCLayer_Batch_2_1 StreamingFCLayer_Batch_2
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingFCLayer_Batch_2_out_V_TDATA),
        .out_V_TREADY(StreamingFCLayer_Batch_2_out_V_TREADY),
        .out_V_TVALID(StreamingFCLayer_Batch_2_out_V_TVALID),
        .weights_V_TDATA(StreamingFCLayer_Batch_2_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingFCLayer_Batch_2_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingFCLayer_Batch_2_wstrm_m_axis_0_TVALID));
  finn_stitched_StreamingFCLayer_Batch_2_wstrm_3 StreamingFCLayer_Batch_2_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingFCLayer_Batch_2_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingFCLayer_Batch_2_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingFCLayer_Batch_2_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingFCLayer_Batch_3_imp_CH3EKC
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [31:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingFCLayer_Batch_3_out_V_TDATA;
  wire StreamingFCLayer_Batch_3_out_V_TREADY;
  wire StreamingFCLayer_Batch_3_out_V_TVALID;
  wire [63:0]StreamingFCLayer_Batch_3_wstrm_m_axis_0_TDATA;
  wire StreamingFCLayer_Batch_3_wstrm_m_axis_0_TREADY;
  wire StreamingFCLayer_Batch_3_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [31:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingFCLayer_Batch_3_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[31:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingFCLayer_Batch_3_out_V_TDATA;
  assign out_V_tvalid = StreamingFCLayer_Batch_3_out_V_TVALID;
  finn_stitched_StreamingFCLayer_Batch_3_3 StreamingFCLayer_Batch_3
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingFCLayer_Batch_3_out_V_TDATA),
        .out_V_TREADY(StreamingFCLayer_Batch_3_out_V_TREADY),
        .out_V_TVALID(StreamingFCLayer_Batch_3_out_V_TVALID),
        .weights_V_TDATA(StreamingFCLayer_Batch_3_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingFCLayer_Batch_3_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingFCLayer_Batch_3_wstrm_m_axis_0_TVALID));
  finn_stitched_StreamingFCLayer_Batch_3_wstrm_3 StreamingFCLayer_Batch_3_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingFCLayer_Batch_3_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingFCLayer_Batch_3_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingFCLayer_Batch_3_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingFCLayer_Batch_4_imp_KBDL8C
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [31:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingFCLayer_Batch_4_out_V_TDATA;
  wire StreamingFCLayer_Batch_4_out_V_TREADY;
  wire StreamingFCLayer_Batch_4_out_V_TVALID;
  wire [31:0]StreamingFCLayer_Batch_4_wstrm_m_axis_0_TDATA;
  wire StreamingFCLayer_Batch_4_wstrm_m_axis_0_TREADY;
  wire StreamingFCLayer_Batch_4_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [31:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingFCLayer_Batch_4_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[31:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingFCLayer_Batch_4_out_V_TDATA;
  assign out_V_tvalid = StreamingFCLayer_Batch_4_out_V_TVALID;
  finn_stitched_StreamingFCLayer_Batch_4_2 StreamingFCLayer_Batch_4
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingFCLayer_Batch_4_out_V_TDATA),
        .out_V_TREADY(StreamingFCLayer_Batch_4_out_V_TREADY),
        .out_V_TVALID(StreamingFCLayer_Batch_4_out_V_TVALID),
        .weights_V_TDATA(StreamingFCLayer_Batch_4_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingFCLayer_Batch_4_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingFCLayer_Batch_4_wstrm_m_axis_0_TVALID));
  finn_stitched_StreamingFCLayer_Batch_4_wstrm_3 StreamingFCLayer_Batch_4_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingFCLayer_Batch_4_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingFCLayer_Batch_4_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingFCLayer_Batch_4_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingFCLayer_Batch_5_imp_1MVRWZU
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [15:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingFCLayer_Batch_5_out_V_TDATA;
  wire StreamingFCLayer_Batch_5_out_V_TREADY;
  wire StreamingFCLayer_Batch_5_out_V_TVALID;
  wire [15:0]StreamingFCLayer_Batch_5_wstrm_m_axis_0_TDATA;
  wire StreamingFCLayer_Batch_5_wstrm_m_axis_0_TREADY;
  wire StreamingFCLayer_Batch_5_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [15:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingFCLayer_Batch_5_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[15:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingFCLayer_Batch_5_out_V_TDATA;
  assign out_V_tvalid = StreamingFCLayer_Batch_5_out_V_TVALID;
  finn_stitched_StreamingFCLayer_Batch_5_3 StreamingFCLayer_Batch_5
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingFCLayer_Batch_5_out_V_TDATA),
        .out_V_TREADY(StreamingFCLayer_Batch_5_out_V_TREADY),
        .out_V_TVALID(StreamingFCLayer_Batch_5_out_V_TVALID),
        .weights_V_TDATA(StreamingFCLayer_Batch_5_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingFCLayer_Batch_5_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingFCLayer_Batch_5_wstrm_m_axis_0_TVALID));
  finn_stitched_StreamingFCLayer_Batch_5_wstrm_3 StreamingFCLayer_Batch_5_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingFCLayer_Batch_5_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingFCLayer_Batch_5_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingFCLayer_Batch_5_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingFCLayer_Batch_6_imp_1APHHCH
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [15:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingFCLayer_Batch_6_out_V_TDATA;
  wire StreamingFCLayer_Batch_6_out_V_TREADY;
  wire StreamingFCLayer_Batch_6_out_V_TVALID;
  wire [7:0]StreamingFCLayer_Batch_6_wstrm_m_axis_0_TDATA;
  wire StreamingFCLayer_Batch_6_wstrm_m_axis_0_TREADY;
  wire StreamingFCLayer_Batch_6_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [15:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingFCLayer_Batch_6_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[15:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingFCLayer_Batch_6_out_V_TDATA;
  assign out_V_tvalid = StreamingFCLayer_Batch_6_out_V_TVALID;
  finn_stitched_StreamingFCLayer_Batch_6_3 StreamingFCLayer_Batch_6
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingFCLayer_Batch_6_out_V_TDATA),
        .out_V_TREADY(StreamingFCLayer_Batch_6_out_V_TREADY),
        .out_V_TVALID(StreamingFCLayer_Batch_6_out_V_TVALID),
        .weights_V_TDATA(StreamingFCLayer_Batch_6_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingFCLayer_Batch_6_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingFCLayer_Batch_6_wstrm_m_axis_0_TVALID));
  finn_stitched_StreamingFCLayer_Batch_6_wstrm_3 StreamingFCLayer_Batch_6_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingFCLayer_Batch_6_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingFCLayer_Batch_6_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingFCLayer_Batch_6_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingFCLayer_Batch_7_imp_ESVUXZ
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingFCLayer_Batch_7_out_V_TDATA;
  wire StreamingFCLayer_Batch_7_out_V_TREADY;
  wire StreamingFCLayer_Batch_7_out_V_TVALID;
  wire [7:0]StreamingFCLayer_Batch_7_wstrm_m_axis_0_TDATA;
  wire StreamingFCLayer_Batch_7_wstrm_m_axis_0_TREADY;
  wire StreamingFCLayer_Batch_7_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingFCLayer_Batch_7_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingFCLayer_Batch_7_out_V_TDATA;
  assign out_V_tvalid = StreamingFCLayer_Batch_7_out_V_TVALID;
  finn_stitched_StreamingFCLayer_Batch_7_3 StreamingFCLayer_Batch_7
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingFCLayer_Batch_7_out_V_TDATA),
        .out_V_TREADY(StreamingFCLayer_Batch_7_out_V_TREADY),
        .out_V_TVALID(StreamingFCLayer_Batch_7_out_V_TVALID),
        .weights_V_TDATA(StreamingFCLayer_Batch_7_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingFCLayer_Batch_7_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingFCLayer_Batch_7_wstrm_m_axis_0_TVALID));
  finn_stitched_StreamingFCLayer_Batch_7_wstrm_3 StreamingFCLayer_Batch_7_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingFCLayer_Batch_7_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingFCLayer_Batch_7_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingFCLayer_Batch_7_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingFCLayer_Batch_8_imp_ROX40H
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [15:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingFCLayer_Batch_8_out_V_TDATA;
  wire StreamingFCLayer_Batch_8_out_V_TREADY;
  wire StreamingFCLayer_Batch_8_out_V_TVALID;
  wire [7:0]StreamingFCLayer_Batch_8_wstrm_m_axis_0_TDATA;
  wire StreamingFCLayer_Batch_8_wstrm_m_axis_0_TREADY;
  wire StreamingFCLayer_Batch_8_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [15:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingFCLayer_Batch_8_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[15:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingFCLayer_Batch_8_out_V_TDATA;
  assign out_V_tvalid = StreamingFCLayer_Batch_8_out_V_TVALID;
  finn_stitched_StreamingFCLayer_Batch_8_3 StreamingFCLayer_Batch_8
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingFCLayer_Batch_8_out_V_TDATA),
        .out_V_TREADY(StreamingFCLayer_Batch_8_out_V_TREADY),
        .out_V_TVALID(StreamingFCLayer_Batch_8_out_V_TVALID),
        .weights_V_TDATA(StreamingFCLayer_Batch_8_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingFCLayer_Batch_8_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingFCLayer_Batch_8_wstrm_m_axis_0_TVALID));
  finn_stitched_StreamingFCLayer_Batch_8_wstrm_1 StreamingFCLayer_Batch_8_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingFCLayer_Batch_8_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingFCLayer_Batch_8_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingFCLayer_Batch_8_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingFCLayer_Batch_9_imp_1YOPI3R
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [31:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [31:0]StreamingFCLayer_Batch_9_out_V_TDATA;
  wire StreamingFCLayer_Batch_9_out_V_TREADY;
  wire StreamingFCLayer_Batch_9_out_V_TVALID;
  wire [15:0]StreamingFCLayer_Batch_9_wstrm_m_axis_0_TDATA;
  wire StreamingFCLayer_Batch_9_wstrm_m_axis_0_TREADY;
  wire StreamingFCLayer_Batch_9_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingFCLayer_Batch_9_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[31:0] = StreamingFCLayer_Batch_9_out_V_TDATA;
  assign out_V_tvalid = StreamingFCLayer_Batch_9_out_V_TVALID;
  finn_stitched_StreamingFCLayer_Batch_9_3 StreamingFCLayer_Batch_9
       (.ap_clk(ap_clk_1),
        .ap_rst_n(ap_rst_n_1),
        .in0_V_TDATA(in0_V_1_TDATA),
        .in0_V_TREADY(in0_V_1_TREADY),
        .in0_V_TVALID(in0_V_1_TVALID),
        .out_V_TDATA(StreamingFCLayer_Batch_9_out_V_TDATA),
        .out_V_TREADY(StreamingFCLayer_Batch_9_out_V_TREADY),
        .out_V_TVALID(StreamingFCLayer_Batch_9_out_V_TVALID),
        .weights_V_TDATA(StreamingFCLayer_Batch_9_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(StreamingFCLayer_Batch_9_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(StreamingFCLayer_Batch_9_wstrm_m_axis_0_TVALID));
  finn_stitched_StreamingFCLayer_Batch_9_wstrm_3 StreamingFCLayer_Batch_9_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(StreamingFCLayer_Batch_9_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(StreamingFCLayer_Batch_9_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(StreamingFCLayer_Batch_9_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingFIFO_10_imp_IPSSJ8
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_52 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_16_imp_1G30HJ6
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_53 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_17_imp_AQT0OK
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_54 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_23_imp_CVK72U
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_55 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_24_imp_KZLIQE
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_56 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_26_imp_1BE1CXN
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [31:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [31:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [31:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [31:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[31:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[31:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_57 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_2_imp_1T5YBPF
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_49 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_30_imp_1TGT4V9
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_58 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_31_imp_X0K9EB
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_59 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_33_imp_1621MWU
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [31:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [31:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [31:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [31:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[31:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[31:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_60 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_37_imp_13GW1ET
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_61 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_38_imp_1O493V7
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_62 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_40_imp_VC8JY7
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [15:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [15:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [15:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [15:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[15:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[15:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_63 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_44_imp_T8K4X0
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_64 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_45_imp_1VSDE36
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_65 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_47_imp_5W7Q67
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [15:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [15:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [15:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [15:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[15:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[15:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_66 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_4_imp_50ZGQD
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [23:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [23:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [23:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [23:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[23:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[23:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_50 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_8_imp_FSKLLK
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [7:0]fifo_M_AXIS_TDATA;
  wire fifo_M_AXIS_TREADY;
  wire fifo_M_AXIS_TVALID;
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign fifo_M_AXIS_TREADY = out_V_tready;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = fifo_M_AXIS_TDATA;
  assign out_V_tvalid = fifo_M_AXIS_TVALID;
  finn_stitched_fifo_51 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module finn_ip_imp_13S4NNM
   (ap_clk,
    ap_rst_n,
    m_axis_0_tdata,
    m_axis_0_tready,
    m_axis_0_tvalid,
    s_axis_0_tdata,
    s_axis_0_tready,
    s_axis_0_tvalid);
  input ap_clk;
  input ap_rst_n;
  output [31:0]m_axis_0_tdata;
  input m_axis_0_tready;
  output m_axis_0_tvalid;
  input [7:0]s_axis_0_tdata;
  output s_axis_0_tready;
  input s_axis_0_tvalid;

  wire [7:0]ConvolutionInputGenerator_0_out_V_TDATA;
  wire ConvolutionInputGenerator_0_out_V_TREADY;
  wire ConvolutionInputGenerator_0_out_V_TVALID;
  wire [7:0]ConvolutionInputGenerator_1_out_V_TDATA;
  wire ConvolutionInputGenerator_1_out_V_TREADY;
  wire ConvolutionInputGenerator_1_out_V_TVALID;
  wire [7:0]ConvolutionInputGenerator_2_out_V_TDATA;
  wire ConvolutionInputGenerator_2_out_V_TREADY;
  wire ConvolutionInputGenerator_2_out_V_TVALID;
  wire [7:0]ConvolutionInputGenerator_3_out_V_TDATA;
  wire ConvolutionInputGenerator_3_out_V_TREADY;
  wire ConvolutionInputGenerator_3_out_V_TVALID;
  wire [7:0]ConvolutionInputGenerator_4_out_V_TDATA;
  wire ConvolutionInputGenerator_4_out_V_TREADY;
  wire ConvolutionInputGenerator_4_out_V_TVALID;
  wire [7:0]ConvolutionInputGenerator_5_out_V_TDATA;
  wire ConvolutionInputGenerator_5_out_V_TREADY;
  wire ConvolutionInputGenerator_5_out_V_TVALID;
  wire [7:0]ConvolutionInputGenerator_6_out_V_TDATA;
  wire ConvolutionInputGenerator_6_out_V_TREADY;
  wire ConvolutionInputGenerator_6_out_V_TVALID;
  wire [7:0]FMPadding_Batch_0_out_V_TDATA;
  wire FMPadding_Batch_0_out_V_TREADY;
  wire FMPadding_Batch_0_out_V_TVALID;
  wire [7:0]FMPadding_Batch_1_out_V_TDATA;
  wire FMPadding_Batch_1_out_V_TREADY;
  wire FMPadding_Batch_1_out_V_TVALID;
  wire [7:0]FMPadding_Batch_2_out_V_TDATA;
  wire FMPadding_Batch_2_out_V_TREADY;
  wire FMPadding_Batch_2_out_V_TVALID;
  wire [7:0]FMPadding_Batch_3_out_V_TDATA;
  wire FMPadding_Batch_3_out_V_TREADY;
  wire FMPadding_Batch_3_out_V_TVALID;
  wire [7:0]FMPadding_Batch_4_out_V_TDATA;
  wire FMPadding_Batch_4_out_V_TREADY;
  wire FMPadding_Batch_4_out_V_TVALID;
  wire [7:0]FMPadding_Batch_5_out_V_TDATA;
  wire FMPadding_Batch_5_out_V_TREADY;
  wire FMPadding_Batch_5_out_V_TVALID;
  wire [7:0]FMPadding_Batch_6_out_V_TDATA;
  wire FMPadding_Batch_6_out_V_TREADY;
  wire FMPadding_Batch_6_out_V_TVALID;
  wire [23:0]StreamingDataWidthConverter_Batch_0_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_0_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_0_out_V_TVALID;
  wire [31:0]StreamingDataWidthConverter_Batch_10_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_10_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_10_out_V_TVALID;
  wire [255:0]StreamingDataWidthConverter_Batch_11_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_11_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_11_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_12_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_12_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_12_out_V_TVALID;
  wire [31:0]StreamingDataWidthConverter_Batch_13_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_13_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_13_out_V_TVALID;
  wire [511:0]StreamingDataWidthConverter_Batch_14_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_14_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_14_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_15_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_15_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_15_out_V_TVALID;
  wire [15:0]StreamingDataWidthConverter_Batch_16_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_16_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_16_out_V_TVALID;
  wire [511:0]StreamingDataWidthConverter_Batch_17_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_17_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_17_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_18_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_18_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_18_out_V_TVALID;
  wire [15:0]StreamingDataWidthConverter_Batch_19_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_19_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_19_out_V_TVALID;
  wire [127:0]StreamingDataWidthConverter_Batch_1_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_1_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_1_out_V_TVALID;
  wire [511:0]StreamingDataWidthConverter_Batch_20_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_20_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_20_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_21_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_21_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_21_out_V_TVALID;
  wire [15:0]StreamingDataWidthConverter_Batch_22_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_22_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_22_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_23_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_23_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_23_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_2_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_2_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_2_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_3_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_3_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_3_out_V_TVALID;
  wire [31:0]StreamingDataWidthConverter_Batch_4_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_4_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_4_out_V_TVALID;
  wire [127:0]StreamingDataWidthConverter_Batch_5_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_5_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_5_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_6_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_6_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_6_out_V_TVALID;
  wire [31:0]StreamingDataWidthConverter_Batch_7_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_7_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_7_out_V_TVALID;
  wire [255:0]StreamingDataWidthConverter_Batch_8_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_8_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_8_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_9_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_9_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_9_out_V_TVALID;
  wire [31:0]StreamingFCLayer_Batch_0_out_V_TDATA;
  wire StreamingFCLayer_Batch_0_out_V_TREADY;
  wire StreamingFCLayer_Batch_0_out_V_TVALID;
  wire [31:0]StreamingFCLayer_Batch_1_out_V_TDATA;
  wire StreamingFCLayer_Batch_1_out_V_TREADY;
  wire StreamingFCLayer_Batch_1_out_V_TVALID;
  wire [15:0]StreamingFCLayer_Batch_2_out_V_TDATA;
  wire StreamingFCLayer_Batch_2_out_V_TREADY;
  wire StreamingFCLayer_Batch_2_out_V_TVALID;
  wire [7:0]StreamingFCLayer_Batch_3_out_V_TDATA;
  wire StreamingFCLayer_Batch_3_out_V_TREADY;
  wire StreamingFCLayer_Batch_3_out_V_TVALID;
  wire [7:0]StreamingFCLayer_Batch_4_out_V_TDATA;
  wire StreamingFCLayer_Batch_4_out_V_TREADY;
  wire StreamingFCLayer_Batch_4_out_V_TVALID;
  wire [7:0]StreamingFCLayer_Batch_5_out_V_TDATA;
  wire StreamingFCLayer_Batch_5_out_V_TREADY;
  wire StreamingFCLayer_Batch_5_out_V_TVALID;
  wire [7:0]StreamingFCLayer_Batch_6_out_V_TDATA;
  wire StreamingFCLayer_Batch_6_out_V_TREADY;
  wire StreamingFCLayer_Batch_6_out_V_TVALID;
  wire [7:0]StreamingFCLayer_Batch_7_out_V_TDATA;
  wire StreamingFCLayer_Batch_7_out_V_TREADY;
  wire StreamingFCLayer_Batch_7_out_V_TVALID;
  wire [7:0]StreamingFCLayer_Batch_8_out_V_TDATA;
  wire StreamingFCLayer_Batch_8_out_V_TREADY;
  wire StreamingFCLayer_Batch_8_out_V_TVALID;
  wire [31:0]StreamingFCLayer_Batch_9_out_V_TDATA;
  wire StreamingFCLayer_Batch_9_out_V_TREADY;
  wire StreamingFCLayer_Batch_9_out_V_TVALID;
  wire [7:0]StreamingFIFO_0_out_V_TDATA;
  wire StreamingFIFO_0_out_V_TREADY;
  wire StreamingFIFO_0_out_V_TVALID;
  wire [7:0]StreamingFIFO_10_out_V_TDATA;
  wire StreamingFIFO_10_out_V_TREADY;
  wire StreamingFIFO_10_out_V_TVALID;
  wire [31:0]StreamingFIFO_12_out_V_TDATA;
  wire StreamingFIFO_12_out_V_TREADY;
  wire StreamingFIFO_12_out_V_TVALID;
  wire [127:0]StreamingFIFO_15_out_V_TDATA;
  wire StreamingFIFO_15_out_V_TREADY;
  wire StreamingFIFO_15_out_V_TVALID;
  wire [7:0]StreamingFIFO_16_out_V_TDATA;
  wire StreamingFIFO_16_out_V_TREADY;
  wire StreamingFIFO_16_out_V_TVALID;
  wire [7:0]StreamingFIFO_17_out_V_TDATA;
  wire StreamingFIFO_17_out_V_TREADY;
  wire StreamingFIFO_17_out_V_TVALID;
  wire [31:0]StreamingFIFO_19_out_V_TDATA;
  wire StreamingFIFO_19_out_V_TREADY;
  wire StreamingFIFO_19_out_V_TVALID;
  wire [7:0]StreamingFIFO_1_out_V_TDATA;
  wire StreamingFIFO_1_out_V_TREADY;
  wire StreamingFIFO_1_out_V_TVALID;
  wire [255:0]StreamingFIFO_22_out_V_TDATA;
  wire StreamingFIFO_22_out_V_TREADY;
  wire StreamingFIFO_22_out_V_TVALID;
  wire [7:0]StreamingFIFO_23_out_V_TDATA;
  wire StreamingFIFO_23_out_V_TREADY;
  wire StreamingFIFO_23_out_V_TVALID;
  wire [7:0]StreamingFIFO_24_out_V_TDATA;
  wire StreamingFIFO_24_out_V_TREADY;
  wire StreamingFIFO_24_out_V_TVALID;
  wire [31:0]StreamingFIFO_26_out_V_TDATA;
  wire StreamingFIFO_26_out_V_TREADY;
  wire StreamingFIFO_26_out_V_TVALID;
  wire [255:0]StreamingFIFO_29_out_V_TDATA;
  wire StreamingFIFO_29_out_V_TREADY;
  wire StreamingFIFO_29_out_V_TVALID;
  wire [7:0]StreamingFIFO_2_out_V_TDATA;
  wire StreamingFIFO_2_out_V_TREADY;
  wire StreamingFIFO_2_out_V_TVALID;
  wire [7:0]StreamingFIFO_30_out_V_TDATA;
  wire StreamingFIFO_30_out_V_TREADY;
  wire StreamingFIFO_30_out_V_TVALID;
  wire [7:0]StreamingFIFO_31_out_V_TDATA;
  wire StreamingFIFO_31_out_V_TREADY;
  wire StreamingFIFO_31_out_V_TVALID;
  wire [31:0]StreamingFIFO_33_out_V_TDATA;
  wire StreamingFIFO_33_out_V_TREADY;
  wire StreamingFIFO_33_out_V_TVALID;
  wire [511:0]StreamingFIFO_36_out_V_TDATA;
  wire StreamingFIFO_36_out_V_TREADY;
  wire StreamingFIFO_36_out_V_TVALID;
  wire [7:0]StreamingFIFO_37_out_V_TDATA;
  wire StreamingFIFO_37_out_V_TREADY;
  wire StreamingFIFO_37_out_V_TVALID;
  wire [7:0]StreamingFIFO_38_out_V_TDATA;
  wire StreamingFIFO_38_out_V_TREADY;
  wire StreamingFIFO_38_out_V_TVALID;
  wire [15:0]StreamingFIFO_40_out_V_TDATA;
  wire StreamingFIFO_40_out_V_TREADY;
  wire StreamingFIFO_40_out_V_TVALID;
  wire [7:0]StreamingFIFO_44_out_V_TDATA;
  wire StreamingFIFO_44_out_V_TREADY;
  wire StreamingFIFO_44_out_V_TVALID;
  wire [7:0]StreamingFIFO_45_out_V_TDATA;
  wire StreamingFIFO_45_out_V_TREADY;
  wire StreamingFIFO_45_out_V_TVALID;
  wire [15:0]StreamingFIFO_47_out_V_TDATA;
  wire StreamingFIFO_47_out_V_TREADY;
  wire StreamingFIFO_47_out_V_TVALID;
  wire [23:0]StreamingFIFO_4_out_V_TDATA;
  wire StreamingFIFO_4_out_V_TREADY;
  wire StreamingFIFO_4_out_V_TVALID;
  wire [127:0]StreamingFIFO_6_out_V_TDATA;
  wire StreamingFIFO_6_out_V_TREADY;
  wire StreamingFIFO_6_out_V_TVALID;
  wire [127:0]StreamingFIFO_7_out_V_TDATA;
  wire StreamingFIFO_7_out_V_TREADY;
  wire StreamingFIFO_7_out_V_TVALID;
  wire [7:0]StreamingFIFO_8_out_V_TDATA;
  wire StreamingFIFO_8_out_V_TREADY;
  wire StreamingFIFO_8_out_V_TVALID;
  wire [127:0]StreamingMaxPool_Batch_0_out_V_TDATA;
  wire StreamingMaxPool_Batch_0_out_V_TREADY;
  wire StreamingMaxPool_Batch_0_out_V_TVALID;
  wire [127:0]StreamingMaxPool_Batch_1_out_V_TDATA;
  wire StreamingMaxPool_Batch_1_out_V_TREADY;
  wire StreamingMaxPool_Batch_1_out_V_TVALID;
  wire [255:0]StreamingMaxPool_Batch_2_out_V_TDATA;
  wire StreamingMaxPool_Batch_2_out_V_TREADY;
  wire StreamingMaxPool_Batch_2_out_V_TVALID;
  wire [255:0]StreamingMaxPool_Batch_3_out_V_TDATA;
  wire StreamingMaxPool_Batch_3_out_V_TREADY;
  wire StreamingMaxPool_Batch_3_out_V_TVALID;
  wire [511:0]StreamingMaxPool_Batch_4_out_V_TDATA;
  wire StreamingMaxPool_Batch_4_out_V_TREADY;
  wire StreamingMaxPool_Batch_4_out_V_TVALID;
  wire [511:0]StreamingMaxPool_Batch_5_out_V_TDATA;
  wire StreamingMaxPool_Batch_5_out_V_TREADY;
  wire StreamingMaxPool_Batch_5_out_V_TVALID;
  wire [511:0]StreamingMaxPool_Batch_6_out_V_TDATA;
  wire StreamingMaxPool_Batch_6_out_V_TREADY;
  wire StreamingMaxPool_Batch_6_out_V_TVALID;
  wire [7:0]Thresholding_Batch_0_out_V_TDATA;
  wire Thresholding_Batch_0_out_V_TREADY;
  wire Thresholding_Batch_0_out_V_TVALID;
  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [7:0]in0_V_0_1_TDATA;
  wire in0_V_0_1_TREADY;
  wire in0_V_0_1_TVALID;

  assign StreamingFCLayer_Batch_9_out_V_TREADY = m_axis_0_tready;
  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign in0_V_0_1_TDATA = s_axis_0_tdata[7:0];
  assign in0_V_0_1_TVALID = s_axis_0_tvalid;
  assign m_axis_0_tdata[31:0] = StreamingFCLayer_Batch_9_out_V_TDATA;
  assign m_axis_0_tvalid = StreamingFCLayer_Batch_9_out_V_TVALID;
  assign s_axis_0_tready = in0_V_0_1_TREADY;
  finn_stitched_ConvolutionInputGenerator_0_2 ConvolutionInputGenerator_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_2_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_2_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_2_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_0_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_0_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_0_out_V_TVALID));
  finn_stitched_ConvolutionInputGenerator_1_3 ConvolutionInputGenerator_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_10_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_10_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_10_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_1_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_1_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_1_out_V_TVALID));
  finn_stitched_ConvolutionInputGenerator_2_3 ConvolutionInputGenerator_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_17_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_17_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_17_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_2_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_2_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_2_out_V_TVALID));
  finn_stitched_ConvolutionInputGenerator_3_2 ConvolutionInputGenerator_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_24_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_24_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_24_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_3_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_3_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_3_out_V_TVALID));
  finn_stitched_ConvolutionInputGenerator_4_2 ConvolutionInputGenerator_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_31_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_31_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_31_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_4_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_4_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_4_out_V_TVALID));
  finn_stitched_ConvolutionInputGenerator_5_3 ConvolutionInputGenerator_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_38_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_38_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_38_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_5_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_5_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_5_out_V_TVALID));
  finn_stitched_ConvolutionInputGenerator_6_3 ConvolutionInputGenerator_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_45_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_45_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_45_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_6_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_6_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_6_out_V_TVALID));
  finn_stitched_FMPadding_Batch_0_1 FMPadding_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_1_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_1_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_1_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_0_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_0_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_0_out_V_TVALID));
  finn_stitched_FMPadding_Batch_1_2 FMPadding_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_8_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_8_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_8_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_1_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_1_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_1_out_V_TVALID));
  finn_stitched_FMPadding_Batch_2_3 FMPadding_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_16_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_16_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_16_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_2_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_2_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_2_out_V_TVALID));
  finn_stitched_FMPadding_Batch_3_3 FMPadding_Batch_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_23_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_23_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_23_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_3_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_3_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_3_out_V_TVALID));
  finn_stitched_FMPadding_Batch_4_2 FMPadding_Batch_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_30_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_30_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_30_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_4_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_4_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_4_out_V_TVALID));
  finn_stitched_FMPadding_Batch_5_3 FMPadding_Batch_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_37_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_37_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_37_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_5_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_5_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_5_out_V_TVALID));
  finn_stitched_FMPadding_Batch_6_3 FMPadding_Batch_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_44_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_44_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_44_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_6_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_6_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_6_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_0_3 StreamingDataWidthConverter_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_0_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_0_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_0_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_0_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_0_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_0_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_1_3 StreamingDataWidthConverter_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_0_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_0_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_0_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_1_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_1_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_1_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_10_2 StreamingDataWidthConverter_Batch_10
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_3_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_3_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_3_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_10_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_10_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_10_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_11_3 StreamingDataWidthConverter_Batch_11
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_3_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_3_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_3_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_11_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_11_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_11_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_12_3 StreamingDataWidthConverter_Batch_12
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_29_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_29_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_29_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_12_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_12_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_12_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_13_3 StreamingDataWidthConverter_Batch_13
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_4_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_4_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_4_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_13_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_13_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_13_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_14_2 StreamingDataWidthConverter_Batch_14
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_4_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_4_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_4_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_14_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_14_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_14_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_15_1 StreamingDataWidthConverter_Batch_15
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_36_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_36_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_36_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_15_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_15_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_15_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_16_3 StreamingDataWidthConverter_Batch_16
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_5_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_5_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_5_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_16_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_16_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_16_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_17_3 StreamingDataWidthConverter_Batch_17
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_5_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_5_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_5_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_17_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_17_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_17_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_18_3 StreamingDataWidthConverter_Batch_18
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_5_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_5_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_5_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_18_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_18_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_18_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_19_1 StreamingDataWidthConverter_Batch_19
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_6_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_6_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_6_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_19_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_19_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_19_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_2_3 StreamingDataWidthConverter_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_7_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_7_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_7_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_2_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_2_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_2_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_20_3 StreamingDataWidthConverter_Batch_20
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_6_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_6_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_6_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_20_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_20_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_20_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_21_3 StreamingDataWidthConverter_Batch_21
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_6_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_6_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_6_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_21_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_21_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_21_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_22_3 StreamingDataWidthConverter_Batch_22
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_7_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_7_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_7_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_22_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_22_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_22_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_23_0 StreamingDataWidthConverter_Batch_23
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_8_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_8_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_8_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_23_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_23_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_23_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_3_3 StreamingDataWidthConverter_Batch_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(FMPadding_Batch_1_out_V_TDATA),
        .in0_V_TREADY(FMPadding_Batch_1_out_V_TREADY),
        .in0_V_TVALID(FMPadding_Batch_1_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_3_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_3_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_3_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_4_1 StreamingDataWidthConverter_Batch_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_1_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_1_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_1_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_4_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_4_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_4_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_5_3 StreamingDataWidthConverter_Batch_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_1_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_1_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_1_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_5_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_5_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_5_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_6_3 StreamingDataWidthConverter_Batch_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_15_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_15_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_15_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_6_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_6_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_6_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_7_3 StreamingDataWidthConverter_Batch_7
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_2_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_2_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_2_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_7_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_7_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_7_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_8_3 StreamingDataWidthConverter_Batch_8
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_2_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_2_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_2_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_8_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_8_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_8_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_9_3 StreamingDataWidthConverter_Batch_9
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_22_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_22_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_22_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_9_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_9_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_9_out_V_TVALID));
  StreamingFCLayer_Batch_0_imp_MCWOMF StreamingFCLayer_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_4_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_4_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_4_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_0_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_0_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_0_out_V_TVALID));
  StreamingFCLayer_Batch_1_imp_1L1QJF5 StreamingFCLayer_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_12_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_12_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_12_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_1_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_1_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_1_out_V_TVALID));
  StreamingFCLayer_Batch_2_imp_1DDRJEY StreamingFCLayer_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_19_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_19_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_19_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_2_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_2_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_2_out_V_TVALID));
  StreamingFCLayer_Batch_3_imp_CH3EKC StreamingFCLayer_Batch_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_26_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_26_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_26_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_3_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_3_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_3_out_V_TVALID));
  StreamingFCLayer_Batch_4_imp_KBDL8C StreamingFCLayer_Batch_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_33_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_33_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_33_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_4_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_4_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_4_out_V_TVALID));
  StreamingFCLayer_Batch_5_imp_1MVRWZU StreamingFCLayer_Batch_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_40_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_40_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_40_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_5_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_5_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_5_out_V_TVALID));
  StreamingFCLayer_Batch_6_imp_1APHHCH StreamingFCLayer_Batch_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_47_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_47_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_47_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_6_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_6_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_6_out_V_TVALID));
  StreamingFCLayer_Batch_7_imp_ESVUXZ StreamingFCLayer_Batch_7
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_21_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_21_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_21_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_7_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_7_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_7_out_V_TVALID));
  StreamingFCLayer_Batch_8_imp_ROX40H StreamingFCLayer_Batch_8
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_22_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_22_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_22_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_8_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_8_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_8_out_V_TVALID));
  StreamingFCLayer_Batch_9_imp_1YOPI3R StreamingFCLayer_Batch_9
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_23_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_23_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_23_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_9_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_9_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_9_out_V_TVALID));
  finn_stitched_StreamingFIFO_0_3 StreamingFIFO_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(in0_V_0_1_TDATA),
        .in0_V_TREADY(in0_V_0_1_TREADY),
        .in0_V_TVALID(in0_V_0_1_TVALID),
        .out_V_TDATA(StreamingFIFO_0_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_0_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_0_out_V_TVALID));
  finn_stitched_StreamingFIFO_1_1 StreamingFIFO_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(Thresholding_Batch_0_out_V_TDATA),
        .in0_V_TREADY(Thresholding_Batch_0_out_V_TREADY),
        .in0_V_TVALID(Thresholding_Batch_0_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_1_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_1_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_1_out_V_TVALID));
  StreamingFIFO_10_imp_IPSSJ8 StreamingFIFO_10
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_3_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_3_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_3_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_10_out_V_TDATA),
        .out_V_tready(StreamingFIFO_10_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_10_out_V_TVALID));
  finn_stitched_StreamingFIFO_12_0 StreamingFIFO_12
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_4_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_4_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_4_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_12_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_12_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_12_out_V_TVALID));
  finn_stitched_StreamingFIFO_15_1 StreamingFIFO_15
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_1_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_1_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_1_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_15_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_15_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_15_out_V_TVALID));
  StreamingFIFO_16_imp_1G30HJ6 StreamingFIFO_16
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_6_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_6_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_6_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_16_out_V_TDATA),
        .out_V_tready(StreamingFIFO_16_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_16_out_V_TVALID));
  StreamingFIFO_17_imp_AQT0OK StreamingFIFO_17
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(FMPadding_Batch_2_out_V_TDATA),
        .in0_V_tready(FMPadding_Batch_2_out_V_TREADY),
        .in0_V_tvalid(FMPadding_Batch_2_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_17_out_V_TDATA),
        .out_V_tready(StreamingFIFO_17_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_17_out_V_TVALID));
  finn_stitched_StreamingFIFO_19_0 StreamingFIFO_19
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_7_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_7_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_7_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_19_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_19_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_19_out_V_TVALID));
  StreamingFIFO_2_imp_1T5YBPF StreamingFIFO_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(FMPadding_Batch_0_out_V_TDATA),
        .in0_V_tready(FMPadding_Batch_0_out_V_TREADY),
        .in0_V_tvalid(FMPadding_Batch_0_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_2_out_V_TDATA),
        .out_V_tready(StreamingFIFO_2_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_2_out_V_TVALID));
  finn_stitched_StreamingFIFO_22_3 StreamingFIFO_22
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_2_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_2_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_2_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_22_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_22_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_22_out_V_TVALID));
  StreamingFIFO_23_imp_CVK72U StreamingFIFO_23
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_9_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_9_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_9_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_23_out_V_TDATA),
        .out_V_tready(StreamingFIFO_23_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_23_out_V_TVALID));
  StreamingFIFO_24_imp_KZLIQE StreamingFIFO_24
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(FMPadding_Batch_3_out_V_TDATA),
        .in0_V_tready(FMPadding_Batch_3_out_V_TREADY),
        .in0_V_tvalid(FMPadding_Batch_3_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_24_out_V_TDATA),
        .out_V_tready(StreamingFIFO_24_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_24_out_V_TVALID));
  StreamingFIFO_26_imp_1BE1CXN StreamingFIFO_26
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_10_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_10_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_10_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_26_out_V_TDATA),
        .out_V_tready(StreamingFIFO_26_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_26_out_V_TVALID));
  finn_stitched_StreamingFIFO_29_1 StreamingFIFO_29
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_3_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_3_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_3_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_29_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_29_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_29_out_V_TVALID));
  StreamingFIFO_30_imp_1TGT4V9 StreamingFIFO_30
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_12_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_12_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_12_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_30_out_V_TDATA),
        .out_V_tready(StreamingFIFO_30_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_30_out_V_TVALID));
  StreamingFIFO_31_imp_X0K9EB StreamingFIFO_31
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(FMPadding_Batch_4_out_V_TDATA),
        .in0_V_tready(FMPadding_Batch_4_out_V_TREADY),
        .in0_V_tvalid(FMPadding_Batch_4_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_31_out_V_TDATA),
        .out_V_tready(StreamingFIFO_31_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_31_out_V_TVALID));
  StreamingFIFO_33_imp_1621MWU StreamingFIFO_33
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_13_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_13_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_13_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_33_out_V_TDATA),
        .out_V_tready(StreamingFIFO_33_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_33_out_V_TVALID));
  finn_stitched_StreamingFIFO_36_1 StreamingFIFO_36
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_4_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_4_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_4_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_36_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_36_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_36_out_V_TVALID));
  StreamingFIFO_37_imp_13GW1ET StreamingFIFO_37
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_15_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_15_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_15_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_37_out_V_TDATA),
        .out_V_tready(StreamingFIFO_37_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_37_out_V_TVALID));
  StreamingFIFO_38_imp_1O493V7 StreamingFIFO_38
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(FMPadding_Batch_5_out_V_TDATA),
        .in0_V_tready(FMPadding_Batch_5_out_V_TREADY),
        .in0_V_tvalid(FMPadding_Batch_5_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_38_out_V_TDATA),
        .out_V_tready(StreamingFIFO_38_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_38_out_V_TVALID));
  StreamingFIFO_4_imp_50ZGQD StreamingFIFO_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_0_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_0_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_0_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_4_out_V_TDATA),
        .out_V_tready(StreamingFIFO_4_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_4_out_V_TVALID));
  StreamingFIFO_40_imp_VC8JY7 StreamingFIFO_40
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_16_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_16_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_16_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_40_out_V_TDATA),
        .out_V_tready(StreamingFIFO_40_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_40_out_V_TVALID));
  StreamingFIFO_44_imp_T8K4X0 StreamingFIFO_44
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_18_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_18_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_18_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_44_out_V_TDATA),
        .out_V_tready(StreamingFIFO_44_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_44_out_V_TVALID));
  StreamingFIFO_45_imp_1VSDE36 StreamingFIFO_45
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(FMPadding_Batch_6_out_V_TDATA),
        .in0_V_tready(FMPadding_Batch_6_out_V_TREADY),
        .in0_V_tvalid(FMPadding_Batch_6_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_45_out_V_TDATA),
        .out_V_tready(StreamingFIFO_45_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_45_out_V_TVALID));
  StreamingFIFO_47_imp_5W7Q67 StreamingFIFO_47
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_19_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_19_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_19_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_47_out_V_TDATA),
        .out_V_tready(StreamingFIFO_47_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_47_out_V_TVALID));
  finn_stitched_StreamingFIFO_6_0 StreamingFIFO_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_1_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_1_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_1_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_6_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_6_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_6_out_V_TVALID));
  finn_stitched_StreamingFIFO_7_1 StreamingFIFO_7
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_0_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_0_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_0_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_7_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_7_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_7_out_V_TVALID));
  StreamingFIFO_8_imp_FSKLLK StreamingFIFO_8
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_2_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_2_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_2_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_8_out_V_TDATA),
        .out_V_tready(StreamingFIFO_8_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_8_out_V_TVALID));
  finn_stitched_StreamingMaxPool_Batch_0_3 StreamingMaxPool_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_6_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_6_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_6_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_0_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_0_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_0_out_V_TVALID));
  finn_stitched_StreamingMaxPool_Batch_1_3 StreamingMaxPool_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_5_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_5_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_5_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_1_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_1_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_1_out_V_TVALID));
  finn_stitched_StreamingMaxPool_Batch_2_3 StreamingMaxPool_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_8_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_8_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_8_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_2_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_2_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_2_out_V_TVALID));
  finn_stitched_StreamingMaxPool_Batch_3_2 StreamingMaxPool_Batch_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_11_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_11_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_11_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_3_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_3_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_3_out_V_TVALID));
  finn_stitched_StreamingMaxPool_Batch_4_3 StreamingMaxPool_Batch_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_14_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_14_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_14_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_4_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_4_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_4_out_V_TVALID));
  finn_stitched_StreamingMaxPool_Batch_5_3 StreamingMaxPool_Batch_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_17_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_17_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_17_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_5_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_5_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_5_out_V_TVALID));
  finn_stitched_StreamingMaxPool_Batch_6_3 StreamingMaxPool_Batch_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_20_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_20_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_20_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_6_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_6_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_6_out_V_TVALID));
  finn_stitched_Thresholding_Batch_0_3 Thresholding_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_0_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_0_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_0_out_V_TVALID),
        .out_V_TDATA(Thresholding_Batch_0_out_V_TDATA),
        .out_V_TREADY(Thresholding_Batch_0_out_V_TREADY),
        .out_V_TVALID(Thresholding_Batch_0_out_V_TVALID));
endmodule

(* CORE_GENERATION_INFO = "finn_stitched,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=finn_stitched,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=123,numReposBlks=94,numNonXlnxBlks=0,numHierBlks=29,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=56,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "finn_stitched.hwdef" *) 
module finn_stitched
   (ap_clk,
    ap_rst_n,
    m_axis_tdata,
    m_axis_tready,
    m_axis_tvalid,
    s_axis_tdata,
    s_axis_tready,
    s_axis_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF s_axis:m_axis, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN finn_stitched_ap_clk_0, FREQ_HZ 100000000.000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, CLK_DOMAIN finn_stitched_ap_clk_0, FREQ_HZ 100000000.000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis " *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis " *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, CLK_DOMAIN finn_stitched_ap_clk_0, FREQ_HZ 100000000.000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis " *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis " *) input s_axis_tvalid;

  wire [31:0]StreamingFCLayer_Batch_9_out_V_TDATA;
  wire StreamingFCLayer_Batch_9_out_V_TREADY;
  wire StreamingFCLayer_Batch_9_out_V_TVALID;
  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [7:0]in0_V_0_1_TDATA;
  wire in0_V_0_1_TREADY;
  wire in0_V_0_1_TVALID;

  assign StreamingFCLayer_Batch_9_out_V_TREADY = m_axis_tready;
  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign in0_V_0_1_TDATA = s_axis_tdata[7:0];
  assign in0_V_0_1_TVALID = s_axis_tvalid;
  assign m_axis_tdata[31:0] = StreamingFCLayer_Batch_9_out_V_TDATA;
  assign m_axis_tvalid = StreamingFCLayer_Batch_9_out_V_TVALID;
  assign s_axis_tready = in0_V_0_1_TREADY;
  finn_ip_imp_13S4NNM finn_ip
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .m_axis_0_tdata(StreamingFCLayer_Batch_9_out_V_TDATA),
        .m_axis_0_tready(StreamingFCLayer_Batch_9_out_V_TREADY),
        .m_axis_0_tvalid(StreamingFCLayer_Batch_9_out_V_TVALID),
        .s_axis_0_tdata(in0_V_0_1_TDATA),
        .s_axis_0_tready(in0_V_0_1_TREADY),
        .s_axis_0_tvalid(in0_V_0_1_TVALID));
endmodule
