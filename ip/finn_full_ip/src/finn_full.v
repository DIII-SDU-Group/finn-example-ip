//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Mon Feb  7 21:41:17 2022
//Host        : nm running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target finn_full.bd
//Design      : finn_full
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "finn_full,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=finn_full,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=3,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=2,numHdlrefBlks=0,numPkgbdBlks=1,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "finn_full.hwdef" *) 
module finn_full
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF s_axi_stream_to_finn:s_axi_result, ASSOCIATED_RESET rst_n, CLK_DOMAIN finn_full_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_RESULT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_RESULT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt_result;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_STREAM_TO_FINN INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_STREAM_TO_FINN, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt_stream_to_finn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_result, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN finn_full_clk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [4:0]s_axi_result_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result ARREADY" *) output s_axi_result_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result ARVALID" *) input s_axi_result_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result AWADDR" *) input [4:0]s_axi_result_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result AWREADY" *) output s_axi_result_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result AWVALID" *) input s_axi_result_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result BREADY" *) input s_axi_result_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result BRESP" *) output [1:0]s_axi_result_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result BVALID" *) output s_axi_result_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result RDATA" *) output [31:0]s_axi_result_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result RREADY" *) input s_axi_result_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result RRESP" *) output [1:0]s_axi_result_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result RVALID" *) output s_axi_result_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result WDATA" *) input [31:0]s_axi_result_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result WREADY" *) output s_axi_result_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result WSTRB" *) input [3:0]s_axi_result_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_result WVALID" *) input s_axi_result_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_stream_to_finn, ADDR_WIDTH 14, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN finn_full_clk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [13:0]s_axi_stream_to_finn_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn ARREADY" *) output s_axi_stream_to_finn_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn ARVALID" *) input s_axi_stream_to_finn_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn AWADDR" *) input [13:0]s_axi_stream_to_finn_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn AWREADY" *) output s_axi_stream_to_finn_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn AWVALID" *) input s_axi_stream_to_finn_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn BREADY" *) input s_axi_stream_to_finn_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn BRESP" *) output [1:0]s_axi_stream_to_finn_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn BVALID" *) output s_axi_stream_to_finn_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn RDATA" *) output [31:0]s_axi_stream_to_finn_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn RREADY" *) input s_axi_stream_to_finn_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn RRESP" *) output [1:0]s_axi_stream_to_finn_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn RVALID" *) output s_axi_stream_to_finn_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn WDATA" *) input [31:0]s_axi_stream_to_finn_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn WREADY" *) output s_axi_stream_to_finn_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn WSTRB" *) input [3:0]s_axi_stream_to_finn_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_stream_to_finn WVALID" *) input s_axi_stream_to_finn_wvalid;

  wire Net;
  wire Net1;
  wire fetch_finn_0_interrupt;
  wire [31:0]finn_stitched_0_m_axis_0_TDATA;
  wire finn_stitched_0_m_axis_0_TREADY;
  wire finn_stitched_0_m_axis_0_TVALID;
  wire [13:0]s_axi_AXI_CPU_0_1_ARADDR;
  wire s_axi_AXI_CPU_0_1_ARREADY;
  wire s_axi_AXI_CPU_0_1_ARVALID;
  wire [13:0]s_axi_AXI_CPU_0_1_AWADDR;
  wire s_axi_AXI_CPU_0_1_AWREADY;
  wire s_axi_AXI_CPU_0_1_AWVALID;
  wire s_axi_AXI_CPU_0_1_BREADY;
  wire [1:0]s_axi_AXI_CPU_0_1_BRESP;
  wire s_axi_AXI_CPU_0_1_BVALID;
  wire [31:0]s_axi_AXI_CPU_0_1_RDATA;
  wire s_axi_AXI_CPU_0_1_RREADY;
  wire [1:0]s_axi_AXI_CPU_0_1_RRESP;
  wire s_axi_AXI_CPU_0_1_RVALID;
  wire [31:0]s_axi_AXI_CPU_0_1_WDATA;
  wire s_axi_AXI_CPU_0_1_WREADY;
  wire [3:0]s_axi_AXI_CPU_0_1_WSTRB;
  wire s_axi_AXI_CPU_0_1_WVALID;
  wire [4:0]s_axi_AXI_CPU_1_1_ARADDR;
  wire s_axi_AXI_CPU_1_1_ARREADY;
  wire s_axi_AXI_CPU_1_1_ARVALID;
  wire [4:0]s_axi_AXI_CPU_1_1_AWADDR;
  wire s_axi_AXI_CPU_1_1_AWREADY;
  wire s_axi_AXI_CPU_1_1_AWVALID;
  wire s_axi_AXI_CPU_1_1_BREADY;
  wire [1:0]s_axi_AXI_CPU_1_1_BRESP;
  wire s_axi_AXI_CPU_1_1_BVALID;
  wire [31:0]s_axi_AXI_CPU_1_1_RDATA;
  wire s_axi_AXI_CPU_1_1_RREADY;
  wire [1:0]s_axi_AXI_CPU_1_1_RRESP;
  wire s_axi_AXI_CPU_1_1_RVALID;
  wire [31:0]s_axi_AXI_CPU_1_1_WDATA;
  wire s_axi_AXI_CPU_1_1_WREADY;
  wire [3:0]s_axi_AXI_CPU_1_1_WSTRB;
  wire s_axi_AXI_CPU_1_1_WVALID;
  wire streamToFinn_0_interrupt;
  wire [7:0]streamToFinn_0_stream_finn_V_TDATA;
  wire streamToFinn_0_stream_finn_V_TREADY;
  wire streamToFinn_0_stream_finn_V_TVALID;

  assign Net = clk;
  assign Net1 = rst_n;
  assign interrupt_result = fetch_finn_0_interrupt;
  assign interrupt_stream_to_finn = streamToFinn_0_interrupt;
  assign s_axi_AXI_CPU_0_1_ARADDR = s_axi_stream_to_finn_araddr[13:0];
  assign s_axi_AXI_CPU_0_1_ARVALID = s_axi_stream_to_finn_arvalid;
  assign s_axi_AXI_CPU_0_1_AWADDR = s_axi_stream_to_finn_awaddr[13:0];
  assign s_axi_AXI_CPU_0_1_AWVALID = s_axi_stream_to_finn_awvalid;
  assign s_axi_AXI_CPU_0_1_BREADY = s_axi_stream_to_finn_bready;
  assign s_axi_AXI_CPU_0_1_RREADY = s_axi_stream_to_finn_rready;
  assign s_axi_AXI_CPU_0_1_WDATA = s_axi_stream_to_finn_wdata[31:0];
  assign s_axi_AXI_CPU_0_1_WSTRB = s_axi_stream_to_finn_wstrb[3:0];
  assign s_axi_AXI_CPU_0_1_WVALID = s_axi_stream_to_finn_wvalid;
  assign s_axi_AXI_CPU_1_1_ARADDR = s_axi_result_araddr[4:0];
  assign s_axi_AXI_CPU_1_1_ARVALID = s_axi_result_arvalid;
  assign s_axi_AXI_CPU_1_1_AWADDR = s_axi_result_awaddr[4:0];
  assign s_axi_AXI_CPU_1_1_AWVALID = s_axi_result_awvalid;
  assign s_axi_AXI_CPU_1_1_BREADY = s_axi_result_bready;
  assign s_axi_AXI_CPU_1_1_RREADY = s_axi_result_rready;
  assign s_axi_AXI_CPU_1_1_WDATA = s_axi_result_wdata[31:0];
  assign s_axi_AXI_CPU_1_1_WSTRB = s_axi_result_wstrb[3:0];
  assign s_axi_AXI_CPU_1_1_WVALID = s_axi_result_wvalid;
  assign s_axi_result_arready = s_axi_AXI_CPU_1_1_ARREADY;
  assign s_axi_result_awready = s_axi_AXI_CPU_1_1_AWREADY;
  assign s_axi_result_bresp[1:0] = s_axi_AXI_CPU_1_1_BRESP;
  assign s_axi_result_bvalid = s_axi_AXI_CPU_1_1_BVALID;
  assign s_axi_result_rdata[31:0] = s_axi_AXI_CPU_1_1_RDATA;
  assign s_axi_result_rresp[1:0] = s_axi_AXI_CPU_1_1_RRESP;
  assign s_axi_result_rvalid = s_axi_AXI_CPU_1_1_RVALID;
  assign s_axi_result_wready = s_axi_AXI_CPU_1_1_WREADY;
  assign s_axi_stream_to_finn_arready = s_axi_AXI_CPU_0_1_ARREADY;
  assign s_axi_stream_to_finn_awready = s_axi_AXI_CPU_0_1_AWREADY;
  assign s_axi_stream_to_finn_bresp[1:0] = s_axi_AXI_CPU_0_1_BRESP;
  assign s_axi_stream_to_finn_bvalid = s_axi_AXI_CPU_0_1_BVALID;
  assign s_axi_stream_to_finn_rdata[31:0] = s_axi_AXI_CPU_0_1_RDATA;
  assign s_axi_stream_to_finn_rresp[1:0] = s_axi_AXI_CPU_0_1_RRESP;
  assign s_axi_stream_to_finn_rvalid = s_axi_AXI_CPU_0_1_RVALID;
  assign s_axi_stream_to_finn_wready = s_axi_AXI_CPU_0_1_WREADY;
  finn_full_fetch_finn_0_0 fetch_finn_0
       (.ap_clk(Net),
        .ap_rst_n(Net1),
        .finn_stream_V_TDATA(finn_stitched_0_m_axis_0_TDATA),
        .finn_stream_V_TREADY(finn_stitched_0_m_axis_0_TREADY),
        .finn_stream_V_TVALID(finn_stitched_0_m_axis_0_TVALID),
        .interrupt(fetch_finn_0_interrupt),
        .s_axi_AXI_CPU_ARADDR(s_axi_AXI_CPU_1_1_ARADDR),
        .s_axi_AXI_CPU_ARREADY(s_axi_AXI_CPU_1_1_ARREADY),
        .s_axi_AXI_CPU_ARVALID(s_axi_AXI_CPU_1_1_ARVALID),
        .s_axi_AXI_CPU_AWADDR(s_axi_AXI_CPU_1_1_AWADDR),
        .s_axi_AXI_CPU_AWREADY(s_axi_AXI_CPU_1_1_AWREADY),
        .s_axi_AXI_CPU_AWVALID(s_axi_AXI_CPU_1_1_AWVALID),
        .s_axi_AXI_CPU_BREADY(s_axi_AXI_CPU_1_1_BREADY),
        .s_axi_AXI_CPU_BRESP(s_axi_AXI_CPU_1_1_BRESP),
        .s_axi_AXI_CPU_BVALID(s_axi_AXI_CPU_1_1_BVALID),
        .s_axi_AXI_CPU_RDATA(s_axi_AXI_CPU_1_1_RDATA),
        .s_axi_AXI_CPU_RREADY(s_axi_AXI_CPU_1_1_RREADY),
        .s_axi_AXI_CPU_RRESP(s_axi_AXI_CPU_1_1_RRESP),
        .s_axi_AXI_CPU_RVALID(s_axi_AXI_CPU_1_1_RVALID),
        .s_axi_AXI_CPU_WDATA(s_axi_AXI_CPU_1_1_WDATA),
        .s_axi_AXI_CPU_WREADY(s_axi_AXI_CPU_1_1_WREADY),
        .s_axi_AXI_CPU_WSTRB(s_axi_AXI_CPU_1_1_WSTRB),
        .s_axi_AXI_CPU_WVALID(s_axi_AXI_CPU_1_1_WVALID));
  finn_full_finn_stitched_0_1 finn_stitched_0
       (.ap_clk(Net),
        .ap_rst_n(Net1),
        .m_axis_0_tdata(finn_stitched_0_m_axis_0_TDATA),
        .m_axis_0_tready(finn_stitched_0_m_axis_0_TREADY),
        .m_axis_0_tvalid(finn_stitched_0_m_axis_0_TVALID),
        .s_axis_0_tdata(streamToFinn_0_stream_finn_V_TDATA),
        .s_axis_0_tready(streamToFinn_0_stream_finn_V_TREADY),
        .s_axis_0_tvalid(streamToFinn_0_stream_finn_V_TVALID));
  finn_full_streamToFinn_0_0 streamToFinn_0
       (.ap_clk(Net),
        .ap_rst_n(Net1),
        .interrupt(streamToFinn_0_interrupt),
        .s_axi_AXI_CPU_ARADDR(s_axi_AXI_CPU_0_1_ARADDR),
        .s_axi_AXI_CPU_ARREADY(s_axi_AXI_CPU_0_1_ARREADY),
        .s_axi_AXI_CPU_ARVALID(s_axi_AXI_CPU_0_1_ARVALID),
        .s_axi_AXI_CPU_AWADDR(s_axi_AXI_CPU_0_1_AWADDR),
        .s_axi_AXI_CPU_AWREADY(s_axi_AXI_CPU_0_1_AWREADY),
        .s_axi_AXI_CPU_AWVALID(s_axi_AXI_CPU_0_1_AWVALID),
        .s_axi_AXI_CPU_BREADY(s_axi_AXI_CPU_0_1_BREADY),
        .s_axi_AXI_CPU_BRESP(s_axi_AXI_CPU_0_1_BRESP),
        .s_axi_AXI_CPU_BVALID(s_axi_AXI_CPU_0_1_BVALID),
        .s_axi_AXI_CPU_RDATA(s_axi_AXI_CPU_0_1_RDATA),
        .s_axi_AXI_CPU_RREADY(s_axi_AXI_CPU_0_1_RREADY),
        .s_axi_AXI_CPU_RRESP(s_axi_AXI_CPU_0_1_RRESP),
        .s_axi_AXI_CPU_RVALID(s_axi_AXI_CPU_0_1_RVALID),
        .s_axi_AXI_CPU_WDATA(s_axi_AXI_CPU_0_1_WDATA),
        .s_axi_AXI_CPU_WREADY(s_axi_AXI_CPU_0_1_WREADY),
        .s_axi_AXI_CPU_WSTRB(s_axi_AXI_CPU_0_1_WSTRB),
        .s_axi_AXI_CPU_WVALID(s_axi_AXI_CPU_0_1_WVALID),
        .stream_finn_V_TDATA(streamToFinn_0_stream_finn_V_TDATA),
        .stream_finn_V_TREADY(streamToFinn_0_stream_finn_V_TREADY),
        .stream_finn_V_TVALID(streamToFinn_0_stream_finn_V_TVALID));
endmodule
