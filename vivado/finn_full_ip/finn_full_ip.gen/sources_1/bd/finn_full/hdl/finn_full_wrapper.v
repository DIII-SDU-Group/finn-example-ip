//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Mon Feb  7 21:41:17 2022
//Host        : nm running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target finn_full_wrapper.bd
//Design      : finn_full_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module finn_full_wrapper
   (clk,
    interrupt_result,
    interrupt_stream_to_finn,
    rst_n,
    s_axi_result_araddr,
    s_axi_result_arready,
    s_axi_result_arvalid,
    s_axi_result_awaddr,
    s_axi_result_awready,
    s_axi_result_awvalid,
    s_axi_result_bready,
    s_axi_result_bresp,
    s_axi_result_bvalid,
    s_axi_result_rdata,
    s_axi_result_rready,
    s_axi_result_rresp,
    s_axi_result_rvalid,
    s_axi_result_wdata,
    s_axi_result_wready,
    s_axi_result_wstrb,
    s_axi_result_wvalid,
    s_axi_stream_to_finn_araddr,
    s_axi_stream_to_finn_arready,
    s_axi_stream_to_finn_arvalid,
    s_axi_stream_to_finn_awaddr,
    s_axi_stream_to_finn_awready,
    s_axi_stream_to_finn_awvalid,
    s_axi_stream_to_finn_bready,
    s_axi_stream_to_finn_bresp,
    s_axi_stream_to_finn_bvalid,
    s_axi_stream_to_finn_rdata,
    s_axi_stream_to_finn_rready,
    s_axi_stream_to_finn_rresp,
    s_axi_stream_to_finn_rvalid,
    s_axi_stream_to_finn_wdata,
    s_axi_stream_to_finn_wready,
    s_axi_stream_to_finn_wstrb,
    s_axi_stream_to_finn_wvalid);
  input clk;
  output interrupt_result;
  output interrupt_stream_to_finn;
  input rst_n;
  input [4:0]s_axi_result_araddr;
  output s_axi_result_arready;
  input s_axi_result_arvalid;
  input [4:0]s_axi_result_awaddr;
  output s_axi_result_awready;
  input s_axi_result_awvalid;
  input s_axi_result_bready;
  output [1:0]s_axi_result_bresp;
  output s_axi_result_bvalid;
  output [31:0]s_axi_result_rdata;
  input s_axi_result_rready;
  output [1:0]s_axi_result_rresp;
  output s_axi_result_rvalid;
  input [31:0]s_axi_result_wdata;
  output s_axi_result_wready;
  input [3:0]s_axi_result_wstrb;
  input s_axi_result_wvalid;
  input [13:0]s_axi_stream_to_finn_araddr;
  output s_axi_stream_to_finn_arready;
  input s_axi_stream_to_finn_arvalid;
  input [13:0]s_axi_stream_to_finn_awaddr;
  output s_axi_stream_to_finn_awready;
  input s_axi_stream_to_finn_awvalid;
  input s_axi_stream_to_finn_bready;
  output [1:0]s_axi_stream_to_finn_bresp;
  output s_axi_stream_to_finn_bvalid;
  output [31:0]s_axi_stream_to_finn_rdata;
  input s_axi_stream_to_finn_rready;
  output [1:0]s_axi_stream_to_finn_rresp;
  output s_axi_stream_to_finn_rvalid;
  input [31:0]s_axi_stream_to_finn_wdata;
  output s_axi_stream_to_finn_wready;
  input [3:0]s_axi_stream_to_finn_wstrb;
  input s_axi_stream_to_finn_wvalid;

  wire clk;
  wire interrupt_result;
  wire interrupt_stream_to_finn;
  wire rst_n;
  wire [4:0]s_axi_result_araddr;
  wire s_axi_result_arready;
  wire s_axi_result_arvalid;
  wire [4:0]s_axi_result_awaddr;
  wire s_axi_result_awready;
  wire s_axi_result_awvalid;
  wire s_axi_result_bready;
  wire [1:0]s_axi_result_bresp;
  wire s_axi_result_bvalid;
  wire [31:0]s_axi_result_rdata;
  wire s_axi_result_rready;
  wire [1:0]s_axi_result_rresp;
  wire s_axi_result_rvalid;
  wire [31:0]s_axi_result_wdata;
  wire s_axi_result_wready;
  wire [3:0]s_axi_result_wstrb;
  wire s_axi_result_wvalid;
  wire [13:0]s_axi_stream_to_finn_araddr;
  wire s_axi_stream_to_finn_arready;
  wire s_axi_stream_to_finn_arvalid;
  wire [13:0]s_axi_stream_to_finn_awaddr;
  wire s_axi_stream_to_finn_awready;
  wire s_axi_stream_to_finn_awvalid;
  wire s_axi_stream_to_finn_bready;
  wire [1:0]s_axi_stream_to_finn_bresp;
  wire s_axi_stream_to_finn_bvalid;
  wire [31:0]s_axi_stream_to_finn_rdata;
  wire s_axi_stream_to_finn_rready;
  wire [1:0]s_axi_stream_to_finn_rresp;
  wire s_axi_stream_to_finn_rvalid;
  wire [31:0]s_axi_stream_to_finn_wdata;
  wire s_axi_stream_to_finn_wready;
  wire [3:0]s_axi_stream_to_finn_wstrb;
  wire s_axi_stream_to_finn_wvalid;

  finn_full finn_full_i
       (.clk(clk),
        .interrupt_result(interrupt_result),
        .interrupt_stream_to_finn(interrupt_stream_to_finn),
        .rst_n(rst_n),
        .s_axi_result_araddr(s_axi_result_araddr),
        .s_axi_result_arready(s_axi_result_arready),
        .s_axi_result_arvalid(s_axi_result_arvalid),
        .s_axi_result_awaddr(s_axi_result_awaddr),
        .s_axi_result_awready(s_axi_result_awready),
        .s_axi_result_awvalid(s_axi_result_awvalid),
        .s_axi_result_bready(s_axi_result_bready),
        .s_axi_result_bresp(s_axi_result_bresp),
        .s_axi_result_bvalid(s_axi_result_bvalid),
        .s_axi_result_rdata(s_axi_result_rdata),
        .s_axi_result_rready(s_axi_result_rready),
        .s_axi_result_rresp(s_axi_result_rresp),
        .s_axi_result_rvalid(s_axi_result_rvalid),
        .s_axi_result_wdata(s_axi_result_wdata),
        .s_axi_result_wready(s_axi_result_wready),
        .s_axi_result_wstrb(s_axi_result_wstrb),
        .s_axi_result_wvalid(s_axi_result_wvalid),
        .s_axi_stream_to_finn_araddr(s_axi_stream_to_finn_araddr),
        .s_axi_stream_to_finn_arready(s_axi_stream_to_finn_arready),
        .s_axi_stream_to_finn_arvalid(s_axi_stream_to_finn_arvalid),
        .s_axi_stream_to_finn_awaddr(s_axi_stream_to_finn_awaddr),
        .s_axi_stream_to_finn_awready(s_axi_stream_to_finn_awready),
        .s_axi_stream_to_finn_awvalid(s_axi_stream_to_finn_awvalid),
        .s_axi_stream_to_finn_bready(s_axi_stream_to_finn_bready),
        .s_axi_stream_to_finn_bresp(s_axi_stream_to_finn_bresp),
        .s_axi_stream_to_finn_bvalid(s_axi_stream_to_finn_bvalid),
        .s_axi_stream_to_finn_rdata(s_axi_stream_to_finn_rdata),
        .s_axi_stream_to_finn_rready(s_axi_stream_to_finn_rready),
        .s_axi_stream_to_finn_rresp(s_axi_stream_to_finn_rresp),
        .s_axi_stream_to_finn_rvalid(s_axi_stream_to_finn_rvalid),
        .s_axi_stream_to_finn_wdata(s_axi_stream_to_finn_wdata),
        .s_axi_stream_to_finn_wready(s_axi_stream_to_finn_wready),
        .s_axi_stream_to_finn_wstrb(s_axi_stream_to_finn_wstrb),
        .s_axi_stream_to_finn_wvalid(s_axi_stream_to_finn_wvalid));
endmodule
