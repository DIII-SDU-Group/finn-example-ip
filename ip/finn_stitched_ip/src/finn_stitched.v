//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Mon Feb  7 21:36:33 2022
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
  output [63:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [63:0]StreamingFCLayer_Batch_0_out_V_TDATA;
  wire StreamingFCLayer_Batch_0_out_V_TREADY;
  wire StreamingFCLayer_Batch_0_out_V_TVALID;
  wire [191:0]StreamingFCLayer_Batch_0_wstrm_m_axis_0_TDATA;
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
  assign out_V_tdata[63:0] = StreamingFCLayer_Batch_0_out_V_TDATA;
  assign out_V_tvalid = StreamingFCLayer_Batch_0_out_V_TVALID;
  finn_stitched_StreamingFCLayer_Batch_0_1 StreamingFCLayer_Batch_0
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
  finn_stitched_StreamingFCLayer_Batch_0_wstrm_0 StreamingFCLayer_Batch_0_wstrm
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
  wire [1023:0]StreamingFCLayer_Batch_1_wstrm_m_axis_0_TDATA;
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
  finn_stitched_StreamingFCLayer_Batch_1_1 StreamingFCLayer_Batch_1
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
  finn_stitched_StreamingFCLayer_Batch_1_wstrm_1 StreamingFCLayer_Batch_1_wstrm
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
  wire [511:0]StreamingFCLayer_Batch_2_wstrm_m_axis_0_TDATA;
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
  finn_stitched_StreamingFCLayer_Batch_2_wstrm_1 StreamingFCLayer_Batch_2_wstrm
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
  wire [255:0]StreamingFCLayer_Batch_3_wstrm_m_axis_0_TDATA;
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
  finn_stitched_StreamingFCLayer_Batch_3_1 StreamingFCLayer_Batch_3
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
  finn_stitched_StreamingFCLayer_Batch_3_wstrm_1 StreamingFCLayer_Batch_3_wstrm
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
  wire [127:0]StreamingFCLayer_Batch_4_wstrm_m_axis_0_TDATA;
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
  finn_stitched_StreamingFCLayer_Batch_4_0 StreamingFCLayer_Batch_4
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
  finn_stitched_StreamingFCLayer_Batch_4_wstrm_1 StreamingFCLayer_Batch_4_wstrm
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
  input [31:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingFCLayer_Batch_5_out_V_TDATA;
  wire StreamingFCLayer_Batch_5_out_V_TREADY;
  wire StreamingFCLayer_Batch_5_out_V_TVALID;
  wire [63:0]StreamingFCLayer_Batch_5_wstrm_m_axis_0_TDATA;
  wire StreamingFCLayer_Batch_5_wstrm_m_axis_0_TREADY;
  wire StreamingFCLayer_Batch_5_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [31:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingFCLayer_Batch_5_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[31:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingFCLayer_Batch_5_out_V_TDATA;
  assign out_V_tvalid = StreamingFCLayer_Batch_5_out_V_TVALID;
  finn_stitched_StreamingFCLayer_Batch_5_1 StreamingFCLayer_Batch_5
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
  finn_stitched_StreamingFCLayer_Batch_5_wstrm_1 StreamingFCLayer_Batch_5_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
  input [31:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]StreamingFCLayer_Batch_6_out_V_TDATA;
  wire StreamingFCLayer_Batch_6_out_V_TREADY;
  wire StreamingFCLayer_Batch_6_out_V_TVALID;
  wire [31:0]StreamingFCLayer_Batch_6_wstrm_m_axis_0_TDATA;
  wire StreamingFCLayer_Batch_6_wstrm_m_axis_0_TREADY;
  wire StreamingFCLayer_Batch_6_wstrm_m_axis_0_TVALID;
  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [31:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingFCLayer_Batch_6_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[31:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingFCLayer_Batch_6_out_V_TDATA;
  assign out_V_tvalid = StreamingFCLayer_Batch_6_out_V_TVALID;
  finn_stitched_StreamingFCLayer_Batch_6_1 StreamingFCLayer_Batch_6
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
  finn_stitched_StreamingFCLayer_Batch_6_wstrm_1 StreamingFCLayer_Batch_6_wstrm
       (.aclk(ap_clk_1),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aresetn(ap_rst_n_1),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
  finn_stitched_StreamingFCLayer_Batch_7_1 StreamingFCLayer_Batch_7
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
  finn_stitched_StreamingFCLayer_Batch_7_wstrm_1 StreamingFCLayer_Batch_7_wstrm
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
  input [7:0]in0_V_tdata;
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
  wire [7:0]in0_V_1_TDATA;
  wire in0_V_1_TREADY;
  wire in0_V_1_TVALID;

  assign StreamingFCLayer_Batch_8_out_V_TREADY = out_V_tready;
  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign in0_V_1_TDATA = in0_V_tdata[7:0];
  assign in0_V_1_TVALID = in0_V_tvalid;
  assign in0_V_tready = in0_V_1_TREADY;
  assign out_V_tdata[7:0] = StreamingFCLayer_Batch_8_out_V_TDATA;
  assign out_V_tvalid = StreamingFCLayer_Batch_8_out_V_TVALID;
  finn_stitched_StreamingFCLayer_Batch_8_1 StreamingFCLayer_Batch_8
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
  finn_stitched_StreamingFCLayer_Batch_8_wstrm_0 StreamingFCLayer_Batch_8_wstrm
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
  finn_stitched_StreamingFCLayer_Batch_9_1 StreamingFCLayer_Batch_9
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
  finn_stitched_StreamingFCLayer_Batch_9_wstrm_1 StreamingFCLayer_Batch_9_wstrm
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
  finn_stitched_fifo_20 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_1_imp_15TOQHK
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
  finn_stitched_fifo_16 fifo
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
  finn_stitched_fifo_21 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_25_imp_1NK8Z8G
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
  finn_stitched_fifo_22 fifo
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
  finn_stitched_fifo_23 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_32_imp_2Y0288
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
  finn_stitched_fifo_24 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_34_imp_1V8Z6DA
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
  finn_stitched_fifo_25 fifo
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
  finn_stitched_fifo_26 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_39_imp_JBN4PX
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
  finn_stitched_fifo_27 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_3_imp_X8X9DH
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
  finn_stitched_fifo_17 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_41_imp_1U16MBT
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
  finn_stitched_fifo_28 fifo
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
  finn_stitched_fifo_29 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_46_imp_11SDWEH
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
  finn_stitched_fifo_30 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_48_imp_IRW4AX
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
  finn_stitched_fifo_31 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_7_imp_UNQ7CE
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
  finn_stitched_fifo_18 fifo
       (.m_axis_tdata(fifo_M_AXIS_TDATA),
        .m_axis_tready(fifo_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_M_AXIS_TVALID),
        .s_axis_aclk(ap_clk_1),
        .s_axis_aresetn(ap_rst_n_1),
        .s_axis_tdata(in0_V_1_TDATA),
        .s_axis_tready(in0_V_1_TREADY),
        .s_axis_tvalid(in0_V_1_TVALID));
endmodule

module StreamingFIFO_9_imp_1A11A9A
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
  finn_stitched_fifo_19 fifo
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

  wire [23:0]ConvolutionInputGenerator_0_out_V_TDATA;
  wire ConvolutionInputGenerator_0_out_V_TREADY;
  wire ConvolutionInputGenerator_0_out_V_TVALID;
  wire [15:0]ConvolutionInputGenerator_1_out_V_TDATA;
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
  wire [7:0]StreamingDataWidthConverter_Batch_10_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_10_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_10_out_V_TVALID;
  wire [31:0]StreamingDataWidthConverter_Batch_11_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_11_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_11_out_V_TVALID;
  wire [127:0]StreamingDataWidthConverter_Batch_12_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_12_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_12_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_13_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_13_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_13_out_V_TVALID;
  wire [31:0]StreamingDataWidthConverter_Batch_14_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_14_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_14_out_V_TVALID;
  wire [255:0]StreamingDataWidthConverter_Batch_15_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_15_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_15_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_16_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_16_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_16_out_V_TVALID;
  wire [31:0]StreamingDataWidthConverter_Batch_17_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_17_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_17_out_V_TVALID;
  wire [255:0]StreamingDataWidthConverter_Batch_18_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_18_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_18_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_19_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_19_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_19_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_1_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_1_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_1_out_V_TVALID;
  wire [31:0]StreamingDataWidthConverter_Batch_20_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_20_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_20_out_V_TVALID;
  wire [255:0]StreamingDataWidthConverter_Batch_21_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_21_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_21_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_22_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_22_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_22_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_23_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_23_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_23_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_24_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_24_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_24_out_V_TVALID;
  wire [15:0]StreamingDataWidthConverter_Batch_2_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_2_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_2_out_V_TVALID;
  wire [31:0]StreamingDataWidthConverter_Batch_3_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_3_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_3_out_V_TVALID;
  wire [63:0]StreamingDataWidthConverter_Batch_4_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_4_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_4_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_5_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_5_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_5_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_6_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_6_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_6_out_V_TVALID;
  wire [31:0]StreamingDataWidthConverter_Batch_7_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_7_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_7_out_V_TVALID;
  wire [127:0]StreamingDataWidthConverter_Batch_8_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_8_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_8_out_V_TVALID;
  wire [7:0]StreamingDataWidthConverter_Batch_9_out_V_TDATA;
  wire StreamingDataWidthConverter_Batch_9_out_V_TREADY;
  wire StreamingDataWidthConverter_Batch_9_out_V_TVALID;
  wire [63:0]StreamingFCLayer_Batch_0_out_V_TDATA;
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
  wire [31:0]StreamingFIFO_11_out_V_TDATA;
  wire StreamingFIFO_11_out_V_TREADY;
  wire StreamingFIFO_11_out_V_TVALID;
  wire [63:0]StreamingFIFO_14_out_V_TDATA;
  wire StreamingFIFO_14_out_V_TREADY;
  wire StreamingFIFO_14_out_V_TVALID;
  wire [7:0]StreamingFIFO_15_out_V_TDATA;
  wire StreamingFIFO_15_out_V_TREADY;
  wire StreamingFIFO_15_out_V_TVALID;
  wire [7:0]StreamingFIFO_17_out_V_TDATA;
  wire StreamingFIFO_17_out_V_TREADY;
  wire StreamingFIFO_17_out_V_TVALID;
  wire [31:0]StreamingFIFO_19_out_V_TDATA;
  wire StreamingFIFO_19_out_V_TREADY;
  wire StreamingFIFO_19_out_V_TVALID;
  wire [7:0]StreamingFIFO_1_out_V_TDATA;
  wire StreamingFIFO_1_out_V_TREADY;
  wire StreamingFIFO_1_out_V_TVALID;
  wire [127:0]StreamingFIFO_22_out_V_TDATA;
  wire StreamingFIFO_22_out_V_TREADY;
  wire StreamingFIFO_22_out_V_TVALID;
  wire [7:0]StreamingFIFO_23_out_V_TDATA;
  wire StreamingFIFO_23_out_V_TREADY;
  wire StreamingFIFO_23_out_V_TVALID;
  wire [7:0]StreamingFIFO_25_out_V_TDATA;
  wire StreamingFIFO_25_out_V_TREADY;
  wire StreamingFIFO_25_out_V_TVALID;
  wire [31:0]StreamingFIFO_27_out_V_TDATA;
  wire StreamingFIFO_27_out_V_TREADY;
  wire StreamingFIFO_27_out_V_TVALID;
  wire [127:0]StreamingFIFO_30_out_V_TDATA;
  wire StreamingFIFO_30_out_V_TREADY;
  wire StreamingFIFO_30_out_V_TVALID;
  wire [7:0]StreamingFIFO_31_out_V_TDATA;
  wire StreamingFIFO_31_out_V_TREADY;
  wire StreamingFIFO_31_out_V_TVALID;
  wire [7:0]StreamingFIFO_32_out_V_TDATA;
  wire StreamingFIFO_32_out_V_TREADY;
  wire StreamingFIFO_32_out_V_TVALID;
  wire [31:0]StreamingFIFO_34_out_V_TDATA;
  wire StreamingFIFO_34_out_V_TREADY;
  wire StreamingFIFO_34_out_V_TVALID;
  wire [255:0]StreamingFIFO_37_out_V_TDATA;
  wire StreamingFIFO_37_out_V_TREADY;
  wire StreamingFIFO_37_out_V_TVALID;
  wire [7:0]StreamingFIFO_38_out_V_TDATA;
  wire StreamingFIFO_38_out_V_TREADY;
  wire StreamingFIFO_38_out_V_TVALID;
  wire [7:0]StreamingFIFO_39_out_V_TDATA;
  wire StreamingFIFO_39_out_V_TREADY;
  wire StreamingFIFO_39_out_V_TVALID;
  wire [23:0]StreamingFIFO_3_out_V_TDATA;
  wire StreamingFIFO_3_out_V_TREADY;
  wire StreamingFIFO_3_out_V_TVALID;
  wire [31:0]StreamingFIFO_41_out_V_TDATA;
  wire StreamingFIFO_41_out_V_TREADY;
  wire StreamingFIFO_41_out_V_TVALID;
  wire [7:0]StreamingFIFO_45_out_V_TDATA;
  wire StreamingFIFO_45_out_V_TREADY;
  wire StreamingFIFO_45_out_V_TVALID;
  wire [7:0]StreamingFIFO_46_out_V_TDATA;
  wire StreamingFIFO_46_out_V_TREADY;
  wire StreamingFIFO_46_out_V_TVALID;
  wire [31:0]StreamingFIFO_48_out_V_TDATA;
  wire StreamingFIFO_48_out_V_TREADY;
  wire StreamingFIFO_48_out_V_TVALID;
  wire [63:0]StreamingFIFO_5_out_V_TDATA;
  wire StreamingFIFO_5_out_V_TREADY;
  wire StreamingFIFO_5_out_V_TVALID;
  wire [63:0]StreamingFIFO_6_out_V_TDATA;
  wire StreamingFIFO_6_out_V_TREADY;
  wire StreamingFIFO_6_out_V_TVALID;
  wire [7:0]StreamingFIFO_7_out_V_TDATA;
  wire StreamingFIFO_7_out_V_TREADY;
  wire StreamingFIFO_7_out_V_TVALID;
  wire [15:0]StreamingFIFO_9_out_V_TDATA;
  wire StreamingFIFO_9_out_V_TREADY;
  wire StreamingFIFO_9_out_V_TVALID;
  wire [63:0]StreamingMaxPool_Batch_0_out_V_TDATA;
  wire StreamingMaxPool_Batch_0_out_V_TREADY;
  wire StreamingMaxPool_Batch_0_out_V_TVALID;
  wire [63:0]StreamingMaxPool_Batch_1_out_V_TDATA;
  wire StreamingMaxPool_Batch_1_out_V_TREADY;
  wire StreamingMaxPool_Batch_1_out_V_TVALID;
  wire [127:0]StreamingMaxPool_Batch_2_out_V_TDATA;
  wire StreamingMaxPool_Batch_2_out_V_TREADY;
  wire StreamingMaxPool_Batch_2_out_V_TVALID;
  wire [127:0]StreamingMaxPool_Batch_3_out_V_TDATA;
  wire StreamingMaxPool_Batch_3_out_V_TREADY;
  wire StreamingMaxPool_Batch_3_out_V_TVALID;
  wire [255:0]StreamingMaxPool_Batch_4_out_V_TDATA;
  wire StreamingMaxPool_Batch_4_out_V_TREADY;
  wire StreamingMaxPool_Batch_4_out_V_TVALID;
  wire [255:0]StreamingMaxPool_Batch_5_out_V_TDATA;
  wire StreamingMaxPool_Batch_5_out_V_TREADY;
  wire StreamingMaxPool_Batch_5_out_V_TVALID;
  wire [255:0]StreamingMaxPool_Batch_6_out_V_TDATA;
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
  finn_stitched_ConvolutionInputGenerator_0_0 ConvolutionInputGenerator_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_3_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_3_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_3_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_0_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_0_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_0_out_V_TVALID));
  finn_stitched_ConvolutionInputGenerator_1_1 ConvolutionInputGenerator_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_9_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_9_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_9_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_1_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_1_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_1_out_V_TVALID));
  finn_stitched_ConvolutionInputGenerator_2_1 ConvolutionInputGenerator_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_17_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_17_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_17_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_2_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_2_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_2_out_V_TVALID));
  finn_stitched_ConvolutionInputGenerator_3_0 ConvolutionInputGenerator_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_25_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_25_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_25_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_3_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_3_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_3_out_V_TVALID));
  finn_stitched_ConvolutionInputGenerator_4_0 ConvolutionInputGenerator_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_32_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_32_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_32_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_4_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_4_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_4_out_V_TVALID));
  finn_stitched_ConvolutionInputGenerator_5_1 ConvolutionInputGenerator_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_39_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_39_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_39_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_5_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_5_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_5_out_V_TVALID));
  finn_stitched_ConvolutionInputGenerator_6_1 ConvolutionInputGenerator_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_46_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_46_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_46_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_6_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_6_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_6_out_V_TVALID));
  finn_stitched_FMPadding_Batch_0_0 FMPadding_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_1_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_1_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_1_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_0_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_0_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_0_out_V_TVALID));
  finn_stitched_FMPadding_Batch_1_0 FMPadding_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_7_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_7_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_7_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_1_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_1_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_1_out_V_TVALID));
  finn_stitched_FMPadding_Batch_2_1 FMPadding_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_15_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_15_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_15_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_2_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_2_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_2_out_V_TVALID));
  finn_stitched_FMPadding_Batch_3_1 FMPadding_Batch_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_23_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_23_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_23_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_3_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_3_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_3_out_V_TVALID));
  finn_stitched_FMPadding_Batch_4_0 FMPadding_Batch_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_31_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_31_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_31_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_4_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_4_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_4_out_V_TVALID));
  finn_stitched_FMPadding_Batch_5_1 FMPadding_Batch_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_38_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_38_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_38_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_5_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_5_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_5_out_V_TVALID));
  finn_stitched_FMPadding_Batch_6_1 FMPadding_Batch_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_45_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_45_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_45_out_V_TVALID),
        .out_V_TDATA(FMPadding_Batch_6_out_V_TDATA),
        .out_V_TREADY(FMPadding_Batch_6_out_V_TREADY),
        .out_V_TVALID(FMPadding_Batch_6_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_0_1 StreamingDataWidthConverter_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(FMPadding_Batch_0_out_V_TDATA),
        .in0_V_TREADY(FMPadding_Batch_0_out_V_TREADY),
        .in0_V_TVALID(FMPadding_Batch_0_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_0_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_0_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_0_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_1_1 StreamingDataWidthConverter_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_6_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_6_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_6_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_1_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_1_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_1_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_10_0 StreamingDataWidthConverter_Batch_10
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(FMPadding_Batch_3_out_V_TDATA),
        .in0_V_TREADY(FMPadding_Batch_3_out_V_TREADY),
        .in0_V_TVALID(FMPadding_Batch_3_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_10_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_10_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_10_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_11_1 StreamingDataWidthConverter_Batch_11
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_3_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_3_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_3_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_11_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_11_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_11_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_12_1 StreamingDataWidthConverter_Batch_12
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_3_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_3_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_3_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_12_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_12_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_12_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_13_1 StreamingDataWidthConverter_Batch_13
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_30_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_30_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_30_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_13_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_13_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_13_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_14_0 StreamingDataWidthConverter_Batch_14
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_4_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_4_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_4_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_14_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_14_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_14_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_15_1 StreamingDataWidthConverter_Batch_15
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_4_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_4_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_4_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_15_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_15_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_15_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_16_1 StreamingDataWidthConverter_Batch_16
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_37_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_37_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_37_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_16_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_16_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_16_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_17_1 StreamingDataWidthConverter_Batch_17
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_5_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_5_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_5_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_17_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_17_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_17_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_18_1 StreamingDataWidthConverter_Batch_18
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_5_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_5_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_5_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_18_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_18_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_18_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_19_1 StreamingDataWidthConverter_Batch_19
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_5_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_5_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_5_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_19_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_19_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_19_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_2_1 StreamingDataWidthConverter_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(FMPadding_Batch_1_out_V_TDATA),
        .in0_V_TREADY(FMPadding_Batch_1_out_V_TREADY),
        .in0_V_TVALID(FMPadding_Batch_1_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_2_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_2_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_2_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_20_1 StreamingDataWidthConverter_Batch_20
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_6_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_6_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_6_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_20_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_20_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_20_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_21_1 StreamingDataWidthConverter_Batch_21
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_6_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_6_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_6_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_21_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_21_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_21_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_22_1 StreamingDataWidthConverter_Batch_22
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_6_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_6_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_6_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_22_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_22_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_22_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_23_1 StreamingDataWidthConverter_Batch_23
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_7_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_7_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_7_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_23_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_23_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_23_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_24_1 StreamingDataWidthConverter_Batch_24
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_8_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_8_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_8_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_24_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_24_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_24_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_3_1 StreamingDataWidthConverter_Batch_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_1_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_1_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_1_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_3_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_3_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_3_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_4_1 StreamingDataWidthConverter_Batch_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_1_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_1_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_1_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_4_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_4_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_4_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_5_1 StreamingDataWidthConverter_Batch_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_14_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_14_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_14_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_5_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_5_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_5_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_6_1 StreamingDataWidthConverter_Batch_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(FMPadding_Batch_2_out_V_TDATA),
        .in0_V_TREADY(FMPadding_Batch_2_out_V_TREADY),
        .in0_V_TVALID(FMPadding_Batch_2_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_6_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_6_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_6_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_7_1 StreamingDataWidthConverter_Batch_7
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(ConvolutionInputGenerator_2_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_2_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_2_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_7_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_7_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_7_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_8_1 StreamingDataWidthConverter_Batch_8
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_2_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_2_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_2_out_V_TVALID),
        .out_V_TDATA(StreamingDataWidthConverter_Batch_8_out_V_TDATA),
        .out_V_TREADY(StreamingDataWidthConverter_Batch_8_out_V_TREADY),
        .out_V_TVALID(StreamingDataWidthConverter_Batch_8_out_V_TVALID));
  finn_stitched_StreamingDataWidthConverter_Batch_9_1 StreamingDataWidthConverter_Batch_9
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
        .in0_V_tdata(ConvolutionInputGenerator_0_out_V_TDATA),
        .in0_V_tready(ConvolutionInputGenerator_0_out_V_TREADY),
        .in0_V_tvalid(ConvolutionInputGenerator_0_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_0_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_0_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_0_out_V_TVALID));
  StreamingFCLayer_Batch_1_imp_1L1QJF5 StreamingFCLayer_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_11_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_11_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_11_out_V_TVALID),
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
        .in0_V_tdata(StreamingFIFO_27_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_27_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_27_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_3_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_3_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_3_out_V_TVALID));
  StreamingFCLayer_Batch_4_imp_KBDL8C StreamingFCLayer_Batch_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_34_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_34_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_34_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_4_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_4_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_4_out_V_TVALID));
  StreamingFCLayer_Batch_5_imp_1MVRWZU StreamingFCLayer_Batch_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_41_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_41_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_41_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_5_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_5_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_5_out_V_TVALID));
  StreamingFCLayer_Batch_6_imp_1APHHCH StreamingFCLayer_Batch_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingFIFO_48_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_48_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_48_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_6_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_6_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_6_out_V_TVALID));
  StreamingFCLayer_Batch_7_imp_ESVUXZ StreamingFCLayer_Batch_7
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_22_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_22_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_22_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_7_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_7_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_7_out_V_TVALID));
  StreamingFCLayer_Batch_8_imp_ROX40H StreamingFCLayer_Batch_8
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_23_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_23_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_23_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_8_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_8_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_8_out_V_TVALID));
  StreamingFCLayer_Batch_9_imp_1YOPI3R StreamingFCLayer_Batch_9
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_24_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_24_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_24_out_V_TVALID),
        .out_V_tdata(StreamingFCLayer_Batch_9_out_V_TDATA),
        .out_V_tready(StreamingFCLayer_Batch_9_out_V_TREADY),
        .out_V_tvalid(StreamingFCLayer_Batch_9_out_V_TVALID));
  finn_stitched_StreamingFIFO_0_1 StreamingFIFO_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(in0_V_0_1_TDATA),
        .in0_V_TREADY(in0_V_0_1_TREADY),
        .in0_V_TVALID(in0_V_0_1_TVALID),
        .out_V_TDATA(StreamingFIFO_0_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_0_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_0_out_V_TVALID));
  StreamingFIFO_1_imp_15TOQHK StreamingFIFO_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(Thresholding_Batch_0_out_V_TDATA),
        .in0_V_tready(Thresholding_Batch_0_out_V_TREADY),
        .in0_V_tvalid(Thresholding_Batch_0_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_1_out_V_TDATA),
        .out_V_tready(StreamingFIFO_1_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_1_out_V_TVALID));
  finn_stitched_StreamingFIFO_11_1 StreamingFIFO_11
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_3_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_3_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_3_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_11_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_11_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_11_out_V_TVALID));
  finn_stitched_StreamingFIFO_14_1 StreamingFIFO_14
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_1_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_1_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_1_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_14_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_14_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_14_out_V_TVALID));
  finn_stitched_StreamingFIFO_15_1 StreamingFIFO_15
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_5_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_5_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_5_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_15_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_15_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_15_out_V_TVALID));
  StreamingFIFO_17_imp_AQT0OK StreamingFIFO_17
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_6_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_6_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_6_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_17_out_V_TDATA),
        .out_V_tready(StreamingFIFO_17_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_17_out_V_TVALID));
  finn_stitched_StreamingFIFO_19_1 StreamingFIFO_19
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_7_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_7_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_7_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_19_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_19_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_19_out_V_TVALID));
  finn_stitched_StreamingFIFO_22_1 StreamingFIFO_22
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
  StreamingFIFO_25_imp_1NK8Z8G StreamingFIFO_25
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_10_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_10_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_10_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_25_out_V_TDATA),
        .out_V_tready(StreamingFIFO_25_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_25_out_V_TVALID));
  finn_stitched_StreamingFIFO_27_1 StreamingFIFO_27
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_11_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_11_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_11_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_27_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_27_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_27_out_V_TVALID));
  StreamingFIFO_3_imp_X8X9DH StreamingFIFO_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_0_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_0_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_0_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_3_out_V_TDATA),
        .out_V_tready(StreamingFIFO_3_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_3_out_V_TVALID));
  finn_stitched_StreamingFIFO_30_1 StreamingFIFO_30
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_3_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_3_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_3_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_30_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_30_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_30_out_V_TVALID));
  StreamingFIFO_31_imp_X0K9EB StreamingFIFO_31
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_13_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_13_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_13_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_31_out_V_TDATA),
        .out_V_tready(StreamingFIFO_31_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_31_out_V_TVALID));
  StreamingFIFO_32_imp_2Y0288 StreamingFIFO_32
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(FMPadding_Batch_4_out_V_TDATA),
        .in0_V_tready(FMPadding_Batch_4_out_V_TREADY),
        .in0_V_tvalid(FMPadding_Batch_4_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_32_out_V_TDATA),
        .out_V_tready(StreamingFIFO_32_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_32_out_V_TVALID));
  StreamingFIFO_34_imp_1V8Z6DA StreamingFIFO_34
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_14_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_14_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_14_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_34_out_V_TDATA),
        .out_V_tready(StreamingFIFO_34_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_34_out_V_TVALID));
  finn_stitched_StreamingFIFO_37_1 StreamingFIFO_37
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_4_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_4_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_4_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_37_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_37_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_37_out_V_TVALID));
  StreamingFIFO_38_imp_1O493V7 StreamingFIFO_38
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_16_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_16_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_16_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_38_out_V_TDATA),
        .out_V_tready(StreamingFIFO_38_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_38_out_V_TVALID));
  StreamingFIFO_39_imp_JBN4PX StreamingFIFO_39
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(FMPadding_Batch_5_out_V_TDATA),
        .in0_V_tready(FMPadding_Batch_5_out_V_TREADY),
        .in0_V_tvalid(FMPadding_Batch_5_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_39_out_V_TDATA),
        .out_V_tready(StreamingFIFO_39_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_39_out_V_TVALID));
  StreamingFIFO_41_imp_1U16MBT StreamingFIFO_41
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_17_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_17_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_17_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_41_out_V_TDATA),
        .out_V_tready(StreamingFIFO_41_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_41_out_V_TVALID));
  StreamingFIFO_45_imp_1VSDE36 StreamingFIFO_45
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_19_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_19_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_19_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_45_out_V_TDATA),
        .out_V_tready(StreamingFIFO_45_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_45_out_V_TVALID));
  StreamingFIFO_46_imp_11SDWEH StreamingFIFO_46
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(FMPadding_Batch_6_out_V_TDATA),
        .in0_V_tready(FMPadding_Batch_6_out_V_TREADY),
        .in0_V_tvalid(FMPadding_Batch_6_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_46_out_V_TDATA),
        .out_V_tready(StreamingFIFO_46_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_46_out_V_TVALID));
  StreamingFIFO_48_imp_IRW4AX StreamingFIFO_48
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_20_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_20_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_20_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_48_out_V_TDATA),
        .out_V_tready(StreamingFIFO_48_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_48_out_V_TVALID));
  finn_stitched_StreamingFIFO_5_1 StreamingFIFO_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFCLayer_Batch_0_out_V_TDATA),
        .in0_V_TREADY(StreamingFCLayer_Batch_0_out_V_TREADY),
        .in0_V_TVALID(StreamingFCLayer_Batch_0_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_5_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_5_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_5_out_V_TVALID));
  finn_stitched_StreamingFIFO_6_1 StreamingFIFO_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingMaxPool_Batch_0_out_V_TDATA),
        .in0_V_TREADY(StreamingMaxPool_Batch_0_out_V_TREADY),
        .in0_V_TVALID(StreamingMaxPool_Batch_0_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_6_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_6_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_6_out_V_TVALID));
  StreamingFIFO_7_imp_UNQ7CE StreamingFIFO_7
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_1_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_1_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_1_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_7_out_V_TDATA),
        .out_V_tready(StreamingFIFO_7_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_7_out_V_TVALID));
  StreamingFIFO_9_imp_1A11A9A StreamingFIFO_9
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_tdata(StreamingDataWidthConverter_Batch_2_out_V_TDATA),
        .in0_V_tready(StreamingDataWidthConverter_Batch_2_out_V_TREADY),
        .in0_V_tvalid(StreamingDataWidthConverter_Batch_2_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_9_out_V_TDATA),
        .out_V_tready(StreamingFIFO_9_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_9_out_V_TVALID));
  finn_stitched_StreamingMaxPool_Batch_0_1 StreamingMaxPool_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_5_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_5_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_5_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_0_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_0_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_0_out_V_TVALID));
  finn_stitched_StreamingMaxPool_Batch_1_1 StreamingMaxPool_Batch_1
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_4_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_4_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_4_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_1_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_1_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_1_out_V_TVALID));
  finn_stitched_StreamingMaxPool_Batch_2_1 StreamingMaxPool_Batch_2
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_8_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_8_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_8_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_2_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_2_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_2_out_V_TVALID));
  finn_stitched_StreamingMaxPool_Batch_3_0 StreamingMaxPool_Batch_3
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_12_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_12_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_12_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_3_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_3_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_3_out_V_TVALID));
  finn_stitched_StreamingMaxPool_Batch_4_1 StreamingMaxPool_Batch_4
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_15_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_15_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_15_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_4_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_4_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_4_out_V_TVALID));
  finn_stitched_StreamingMaxPool_Batch_5_1 StreamingMaxPool_Batch_5
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_18_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_18_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_18_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_5_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_5_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_5_out_V_TVALID));
  finn_stitched_StreamingMaxPool_Batch_6_1 StreamingMaxPool_Batch_6
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingDataWidthConverter_Batch_21_out_V_TDATA),
        .in0_V_TREADY(StreamingDataWidthConverter_Batch_21_out_V_TREADY),
        .in0_V_TVALID(StreamingDataWidthConverter_Batch_21_out_V_TVALID),
        .out_V_TDATA(StreamingMaxPool_Batch_6_out_V_TDATA),
        .out_V_TREADY(StreamingMaxPool_Batch_6_out_V_TREADY),
        .out_V_TVALID(StreamingMaxPool_Batch_6_out_V_TVALID));
  finn_stitched_Thresholding_Batch_0_1 Thresholding_Batch_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .in0_V_TDATA(StreamingFIFO_0_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_0_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_0_out_V_TVALID),
        .out_V_TDATA(Thresholding_Batch_0_out_V_TDATA),
        .out_V_TREADY(Thresholding_Batch_0_out_V_TREADY),
        .out_V_TVALID(Thresholding_Batch_0_out_V_TVALID));
endmodule

(* CORE_GENERATION_INFO = "finn_stitched,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=finn_stitched,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=121,numReposBlks=94,numNonXlnxBlks=0,numHierBlks=27,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=57,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "finn_stitched.hwdef" *) 
module finn_stitched
   (ap_clk,
    ap_rst_n,
    m_axis_0_tdata,
    m_axis_0_tready,
    m_axis_0_tvalid,
    s_axis_0_tdata,
    s_axis_0_tready,
    s_axis_0_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF s_axis_0:m_axis_0, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN finn_stitched_ap_clk_0, FREQ_HZ 100000000.000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_0, CLK_DOMAIN finn_stitched_ap_clk_0, FREQ_HZ 100000000.000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]m_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) input m_axis_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 " *) output m_axis_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_0, CLK_DOMAIN finn_stitched_ap_clk_0, FREQ_HZ 100000000.000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]s_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 " *) output s_axis_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 " *) input s_axis_0_tvalid;

  wire [31:0]StreamingFCLayer_Batch_9_out_V_TDATA;
  wire StreamingFCLayer_Batch_9_out_V_TREADY;
  wire StreamingFCLayer_Batch_9_out_V_TVALID;
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
