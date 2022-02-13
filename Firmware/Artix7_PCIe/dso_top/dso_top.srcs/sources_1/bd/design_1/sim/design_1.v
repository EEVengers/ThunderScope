//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Sun Feb 13 11:02:18 2022
//Host        : DESKTOP-J72MK93 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module AXI_LITE_IO_imp_1879I2S
   (AXI_STR_TXD_0_tdata,
    AXI_STR_TXD_0_tlast,
    AXI_STR_TXD_0_tready,
    AXI_STR_TXD_0_tvalid,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    axi_aclk,
    axi_resetn,
    gpio2_io_i,
    gpio_io_o_0);
  output [31:0]AXI_STR_TXD_0_tdata;
  output AXI_STR_TXD_0_tlast;
  input AXI_STR_TXD_0_tready;
  output AXI_STR_TXD_0_tvalid;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input axi_aclk;
  input axi_resetn;
  input [31:0]gpio2_io_i;
  output [31:0]gpio_io_o_0;

  wire [31:0]Conn1_TDATA;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire Conn1_TVALID;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [0:0]S00_AXI_1_ARREADY;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [0:0]S00_AXI_1_AWREADY;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire [0:0]S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire [0:0]S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire [0:0]S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire axi_aclk_1;
  wire [31:0]axi_crossbar_0_M00_AXI_ARADDR;
  wire axi_crossbar_0_M00_AXI_ARREADY;
  wire [0:0]axi_crossbar_0_M00_AXI_ARVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_AWADDR;
  wire axi_crossbar_0_M00_AXI_AWREADY;
  wire [0:0]axi_crossbar_0_M00_AXI_AWVALID;
  wire [0:0]axi_crossbar_0_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_BRESP;
  wire axi_crossbar_0_M00_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_RDATA;
  wire [0:0]axi_crossbar_0_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_RRESP;
  wire axi_crossbar_0_M00_AXI_RVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_WDATA;
  wire axi_crossbar_0_M00_AXI_WREADY;
  wire [3:0]axi_crossbar_0_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_0_M00_AXI_WVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_ARADDR;
  wire axi_crossbar_0_M01_AXI_ARREADY;
  wire [1:1]axi_crossbar_0_M01_AXI_ARVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_AWADDR;
  wire axi_crossbar_0_M01_AXI_AWREADY;
  wire [1:1]axi_crossbar_0_M01_AXI_AWVALID;
  wire [1:1]axi_crossbar_0_M01_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_BRESP;
  wire axi_crossbar_0_M01_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M01_AXI_RDATA;
  wire [1:1]axi_crossbar_0_M01_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_RRESP;
  wire axi_crossbar_0_M01_AXI_RVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_WDATA;
  wire axi_crossbar_0_M01_AXI_WREADY;
  wire [7:4]axi_crossbar_0_M01_AXI_WSTRB;
  wire [1:1]axi_crossbar_0_M01_AXI_WVALID;
  wire [31:0]axi_gpio_0_gpio_io_o;
  wire axi_resetn_1;
  wire [31:0]gpio2_io_i_1;

  assign AXI_STR_TXD_0_tdata[31:0] = Conn1_TDATA;
  assign AXI_STR_TXD_0_tlast = Conn1_TLAST;
  assign AXI_STR_TXD_0_tvalid = Conn1_TVALID;
  assign Conn1_TREADY = AXI_STR_TXD_0_tready;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[31:0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[31:0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[31:0];
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[3:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[31:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign axi_aclk_1 = axi_aclk;
  assign axi_resetn_1 = axi_resetn;
  assign gpio2_io_i_1 = gpio2_io_i[31:0];
  assign gpio_io_o_0[31:0] = axi_gpio_0_gpio_io_o;
  design_1_axi_crossbar_0_0 axi_crossbar_0
       (.aclk(axi_aclk_1),
        .aresetn(axi_resetn_1),
        .m_axi_araddr({axi_crossbar_0_M01_AXI_ARADDR,axi_crossbar_0_M00_AXI_ARADDR}),
        .m_axi_arready({axi_crossbar_0_M01_AXI_ARREADY,axi_crossbar_0_M00_AXI_ARREADY}),
        .m_axi_arvalid({axi_crossbar_0_M01_AXI_ARVALID,axi_crossbar_0_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_0_M01_AXI_AWADDR,axi_crossbar_0_M00_AXI_AWADDR}),
        .m_axi_awready({axi_crossbar_0_M01_AXI_AWREADY,axi_crossbar_0_M00_AXI_AWREADY}),
        .m_axi_awvalid({axi_crossbar_0_M01_AXI_AWVALID,axi_crossbar_0_M00_AXI_AWVALID}),
        .m_axi_bready({axi_crossbar_0_M01_AXI_BREADY,axi_crossbar_0_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_0_M01_AXI_BRESP,axi_crossbar_0_M00_AXI_BRESP}),
        .m_axi_bvalid({axi_crossbar_0_M01_AXI_BVALID,axi_crossbar_0_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_0_M01_AXI_RDATA,axi_crossbar_0_M00_AXI_RDATA}),
        .m_axi_rready({axi_crossbar_0_M01_AXI_RREADY,axi_crossbar_0_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_0_M01_AXI_RRESP,axi_crossbar_0_M00_AXI_RRESP}),
        .m_axi_rvalid({axi_crossbar_0_M01_AXI_RVALID,axi_crossbar_0_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_0_M01_AXI_WDATA,axi_crossbar_0_M00_AXI_WDATA}),
        .m_axi_wready({axi_crossbar_0_M01_AXI_WREADY,axi_crossbar_0_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_0_M01_AXI_WSTRB,axi_crossbar_0_M00_AXI_WSTRB}),
        .m_axi_wvalid({axi_crossbar_0_M01_AXI_WVALID,axi_crossbar_0_M00_AXI_WVALID}),
        .s_axi_araddr(S00_AXI_1_ARADDR),
        .s_axi_arprot(S00_AXI_1_ARPROT),
        .s_axi_arready(S00_AXI_1_ARREADY),
        .s_axi_arvalid(S00_AXI_1_ARVALID),
        .s_axi_awaddr(S00_AXI_1_AWADDR),
        .s_axi_awprot(S00_AXI_1_AWPROT),
        .s_axi_awready(S00_AXI_1_AWREADY),
        .s_axi_awvalid(S00_AXI_1_AWVALID),
        .s_axi_bready(S00_AXI_1_BREADY),
        .s_axi_bresp(S00_AXI_1_BRESP),
        .s_axi_bvalid(S00_AXI_1_BVALID),
        .s_axi_rdata(S00_AXI_1_RDATA),
        .s_axi_rready(S00_AXI_1_RREADY),
        .s_axi_rresp(S00_AXI_1_RRESP),
        .s_axi_rvalid(S00_AXI_1_RVALID),
        .s_axi_wdata(S00_AXI_1_WDATA),
        .s_axi_wready(S00_AXI_1_WREADY),
        .s_axi_wstrb(S00_AXI_1_WSTRB),
        .s_axi_wvalid(S00_AXI_1_WVALID));
  design_1_axi_fifo_mm_s_0_0 axi_fifo_mm_s_0
       (.axi_str_txd_tdata(Conn1_TDATA),
        .axi_str_txd_tlast(Conn1_TLAST),
        .axi_str_txd_tready(Conn1_TREADY),
        .axi_str_txd_tvalid(Conn1_TVALID),
        .s_axi_aclk(axi_aclk_1),
        .s_axi_araddr(axi_crossbar_0_M00_AXI_ARADDR),
        .s_axi_aresetn(axi_resetn_1),
        .s_axi_arready(axi_crossbar_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M00_AXI_AWADDR),
        .s_axi_awready(axi_crossbar_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_crossbar_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M00_AXI_RDATA),
        .s_axi_rready(axi_crossbar_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M00_AXI_WDATA),
        .s_axi_wready(axi_crossbar_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M00_AXI_WVALID));
  design_1_axi_gpio_0_1 axi_gpio_0
       (.gpio2_io_i(gpio2_io_i_1),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(axi_aclk_1),
        .s_axi_araddr(axi_crossbar_0_M01_AXI_ARADDR[40:32]),
        .s_axi_aresetn(axi_resetn_1),
        .s_axi_arready(axi_crossbar_0_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_crossbar_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_crossbar_0_M01_AXI_AWADDR[40:32]),
        .s_axi_awready(axi_crossbar_0_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_crossbar_0_M01_AXI_AWVALID),
        .s_axi_bready(axi_crossbar_0_M01_AXI_BREADY),
        .s_axi_bresp(axi_crossbar_0_M01_AXI_BRESP),
        .s_axi_bvalid(axi_crossbar_0_M01_AXI_BVALID),
        .s_axi_rdata(axi_crossbar_0_M01_AXI_RDATA),
        .s_axi_rready(axi_crossbar_0_M01_AXI_RREADY),
        .s_axi_rresp(axi_crossbar_0_M01_AXI_RRESP),
        .s_axi_rvalid(axi_crossbar_0_M01_AXI_RVALID),
        .s_axi_wdata(axi_crossbar_0_M01_AXI_WDATA),
        .s_axi_wready(axi_crossbar_0_M01_AXI_WREADY),
        .s_axi_wstrb(axi_crossbar_0_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_crossbar_0_M01_AXI_WVALID));
endmodule

module Datamover_imp_6RC1MV
   (M_AXI_S2MM_awaddr,
    M_AXI_S2MM_awburst,
    M_AXI_S2MM_awcache,
    M_AXI_S2MM_awlen,
    M_AXI_S2MM_awprot,
    M_AXI_S2MM_awready,
    M_AXI_S2MM_awsize,
    M_AXI_S2MM_awuser,
    M_AXI_S2MM_awvalid,
    M_AXI_S2MM_bready,
    M_AXI_S2MM_bresp,
    M_AXI_S2MM_bvalid,
    M_AXI_S2MM_wdata,
    M_AXI_S2MM_wlast,
    M_AXI_S2MM_wready,
    M_AXI_S2MM_wstrb,
    M_AXI_S2MM_wvalid,
    S_AXIS_S2MM_CMD_tdata,
    S_AXIS_S2MM_CMD_tready,
    S_AXIS_S2MM_CMD_tvalid,
    S_AXIS_S2MM_tdata,
    S_AXIS_S2MM_tkeep,
    S_AXIS_S2MM_tlast,
    S_AXIS_S2MM_tready,
    S_AXIS_S2MM_tvalid,
    axi_aclk,
    axi_aresetn,
    s2mm_err,
    s2mm_halt,
    s2mm_wr_xfer_cmplt);
  output [31:0]M_AXI_S2MM_awaddr;
  output [1:0]M_AXI_S2MM_awburst;
  output [3:0]M_AXI_S2MM_awcache;
  output [7:0]M_AXI_S2MM_awlen;
  output [2:0]M_AXI_S2MM_awprot;
  input M_AXI_S2MM_awready;
  output [2:0]M_AXI_S2MM_awsize;
  output [3:0]M_AXI_S2MM_awuser;
  output M_AXI_S2MM_awvalid;
  output M_AXI_S2MM_bready;
  input [1:0]M_AXI_S2MM_bresp;
  input M_AXI_S2MM_bvalid;
  output [255:0]M_AXI_S2MM_wdata;
  output M_AXI_S2MM_wlast;
  input M_AXI_S2MM_wready;
  output [31:0]M_AXI_S2MM_wstrb;
  output M_AXI_S2MM_wvalid;
  input [71:0]S_AXIS_S2MM_CMD_tdata;
  output S_AXIS_S2MM_CMD_tready;
  input S_AXIS_S2MM_CMD_tvalid;
  input [127:0]S_AXIS_S2MM_tdata;
  input [15:0]S_AXIS_S2MM_tkeep;
  input S_AXIS_S2MM_tlast;
  output S_AXIS_S2MM_tready;
  input S_AXIS_S2MM_tvalid;
  input axi_aclk;
  input axi_aresetn;
  output s2mm_err;
  input s2mm_halt;
  output s2mm_wr_xfer_cmplt;

  wire [71:0]Conn2_TDATA;
  wire Conn2_TREADY;
  wire Conn2_TVALID;
  wire [31:0]Conn3_AWADDR;
  wire [1:0]Conn3_AWBURST;
  wire [3:0]Conn3_AWCACHE;
  wire [7:0]Conn3_AWLEN;
  wire [2:0]Conn3_AWPROT;
  wire Conn3_AWREADY;
  wire [2:0]Conn3_AWSIZE;
  wire [3:0]Conn3_AWUSER;
  wire Conn3_AWVALID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [255:0]Conn3_WDATA;
  wire Conn3_WLAST;
  wire Conn3_WREADY;
  wire [31:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire [127:0]S_AXIS_S2MM_1_TDATA;
  wire [15:0]S_AXIS_S2MM_1_TKEEP;
  wire S_AXIS_S2MM_1_TLAST;
  wire S_AXIS_S2MM_1_TREADY;
  wire S_AXIS_S2MM_1_TVALID;
  wire axi_aclk_1;
  wire axi_aresetn_1;
  wire axi_datamover_0_s2mm_err;
  wire axi_datamover_0_s2mm_wr_xfer_cmplt;
  wire s2mm_halt_0_1;
  wire [0:0]xlconstant_0_dout;

  assign Conn2_TDATA = S_AXIS_S2MM_CMD_tdata[71:0];
  assign Conn2_TVALID = S_AXIS_S2MM_CMD_tvalid;
  assign Conn3_AWREADY = M_AXI_S2MM_awready;
  assign Conn3_BRESP = M_AXI_S2MM_bresp[1:0];
  assign Conn3_BVALID = M_AXI_S2MM_bvalid;
  assign Conn3_WREADY = M_AXI_S2MM_wready;
  assign M_AXI_S2MM_awaddr[31:0] = Conn3_AWADDR;
  assign M_AXI_S2MM_awburst[1:0] = Conn3_AWBURST;
  assign M_AXI_S2MM_awcache[3:0] = Conn3_AWCACHE;
  assign M_AXI_S2MM_awlen[7:0] = Conn3_AWLEN;
  assign M_AXI_S2MM_awprot[2:0] = Conn3_AWPROT;
  assign M_AXI_S2MM_awsize[2:0] = Conn3_AWSIZE;
  assign M_AXI_S2MM_awuser[3:0] = Conn3_AWUSER;
  assign M_AXI_S2MM_awvalid = Conn3_AWVALID;
  assign M_AXI_S2MM_bready = Conn3_BREADY;
  assign M_AXI_S2MM_wdata[255:0] = Conn3_WDATA;
  assign M_AXI_S2MM_wlast = Conn3_WLAST;
  assign M_AXI_S2MM_wstrb[31:0] = Conn3_WSTRB;
  assign M_AXI_S2MM_wvalid = Conn3_WVALID;
  assign S_AXIS_S2MM_1_TDATA = S_AXIS_S2MM_tdata[127:0];
  assign S_AXIS_S2MM_1_TKEEP = S_AXIS_S2MM_tkeep[15:0];
  assign S_AXIS_S2MM_1_TLAST = S_AXIS_S2MM_tlast;
  assign S_AXIS_S2MM_1_TVALID = S_AXIS_S2MM_tvalid;
  assign S_AXIS_S2MM_CMD_tready = Conn2_TREADY;
  assign S_AXIS_S2MM_tready = S_AXIS_S2MM_1_TREADY;
  assign axi_aclk_1 = axi_aclk;
  assign axi_aresetn_1 = axi_aresetn;
  assign s2mm_err = axi_datamover_0_s2mm_err;
  assign s2mm_halt_0_1 = s2mm_halt;
  assign s2mm_wr_xfer_cmplt = axi_datamover_0_s2mm_wr_xfer_cmplt;
  design_1_axi_datamover_0_0 axi_datamover_0
       (.m_axi_s2mm_aclk(axi_aclk_1),
        .m_axi_s2mm_aresetn(axi_aresetn_1),
        .m_axi_s2mm_awaddr(Conn3_AWADDR),
        .m_axi_s2mm_awburst(Conn3_AWBURST),
        .m_axi_s2mm_awcache(Conn3_AWCACHE),
        .m_axi_s2mm_awlen(Conn3_AWLEN),
        .m_axi_s2mm_awprot(Conn3_AWPROT),
        .m_axi_s2mm_awready(Conn3_AWREADY),
        .m_axi_s2mm_awsize(Conn3_AWSIZE),
        .m_axi_s2mm_awuser(Conn3_AWUSER),
        .m_axi_s2mm_awvalid(Conn3_AWVALID),
        .m_axi_s2mm_bready(Conn3_BREADY),
        .m_axi_s2mm_bresp(Conn3_BRESP),
        .m_axi_s2mm_bvalid(Conn3_BVALID),
        .m_axi_s2mm_wdata(Conn3_WDATA),
        .m_axi_s2mm_wlast(Conn3_WLAST),
        .m_axi_s2mm_wready(Conn3_WREADY),
        .m_axi_s2mm_wstrb(Conn3_WSTRB),
        .m_axi_s2mm_wvalid(Conn3_WVALID),
        .m_axis_s2mm_cmdsts_aresetn(axi_aresetn_1),
        .m_axis_s2mm_cmdsts_awclk(axi_aclk_1),
        .m_axis_s2mm_sts_tready(1'b1),
        .s2mm_allow_addr_req(xlconstant_0_dout),
        .s2mm_dbg_sel({1'b0,1'b0,1'b0,1'b0}),
        .s2mm_err(axi_datamover_0_s2mm_err),
        .s2mm_halt(s2mm_halt_0_1),
        .s2mm_wr_xfer_cmplt(axi_datamover_0_s2mm_wr_xfer_cmplt),
        .s_axis_s2mm_cmd_tdata(Conn2_TDATA),
        .s_axis_s2mm_cmd_tready(Conn2_TREADY),
        .s_axis_s2mm_cmd_tvalid(Conn2_TVALID),
        .s_axis_s2mm_tdata(S_AXIS_S2MM_1_TDATA),
        .s_axis_s2mm_tkeep(S_AXIS_S2MM_1_TKEEP),
        .s_axis_s2mm_tlast(S_AXIS_S2MM_1_TLAST),
        .s_axis_s2mm_tready(S_AXIS_S2MM_1_TREADY),
        .s_axis_s2mm_tvalid(S_AXIS_S2MM_1_TVALID));
  design_1_xlconstant_0_3 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module Memory_imp_BJ9R2P
   (ACLK,
    DDR3_addr,
    DDR3_ba,
    DDR3_cas_n,
    DDR3_ck_n,
    DDR3_ck_p,
    DDR3_cke,
    DDR3_cs_n,
    DDR3_dm,
    DDR3_dq,
    DDR3_dqs_n,
    DDR3_dqs_p,
    DDR3_odt,
    DDR3_ras_n,
    DDR3_reset_n,
    DDR3_we_n,
    M00_AXI_0_araddr,
    M00_AXI_0_arburst,
    M00_AXI_0_arcache,
    M00_AXI_0_arid,
    M00_AXI_0_arlen,
    M00_AXI_0_arlock,
    M00_AXI_0_arprot,
    M00_AXI_0_arqos,
    M00_AXI_0_arready,
    M00_AXI_0_arregion,
    M00_AXI_0_arsize,
    M00_AXI_0_arvalid,
    M00_AXI_0_awaddr,
    M00_AXI_0_awburst,
    M00_AXI_0_awcache,
    M00_AXI_0_awid,
    M00_AXI_0_awlen,
    M00_AXI_0_awlock,
    M00_AXI_0_awprot,
    M00_AXI_0_awqos,
    M00_AXI_0_awready,
    M00_AXI_0_awregion,
    M00_AXI_0_awsize,
    M00_AXI_0_awuser,
    M00_AXI_0_awvalid,
    M00_AXI_0_bid,
    M00_AXI_0_bready,
    M00_AXI_0_bresp,
    M00_AXI_0_bvalid,
    M00_AXI_0_rdata,
    M00_AXI_0_rid,
    M00_AXI_0_rlast,
    M00_AXI_0_rready,
    M00_AXI_0_rresp,
    M00_AXI_0_rvalid,
    M00_AXI_0_wdata,
    M00_AXI_0_wlast,
    M00_AXI_0_wready,
    M00_AXI_0_wstrb,
    M00_AXI_0_wvalid,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awuser,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S_AXI_0_araddr,
    S_AXI_0_arburst,
    S_AXI_0_arcache,
    S_AXI_0_arid,
    S_AXI_0_arlen,
    S_AXI_0_arlock,
    S_AXI_0_arprot,
    S_AXI_0_arqos,
    S_AXI_0_arready,
    S_AXI_0_arsize,
    S_AXI_0_arvalid,
    S_AXI_0_awaddr,
    S_AXI_0_awburst,
    S_AXI_0_awcache,
    S_AXI_0_awid,
    S_AXI_0_awlen,
    S_AXI_0_awlock,
    S_AXI_0_awprot,
    S_AXI_0_awqos,
    S_AXI_0_awready,
    S_AXI_0_awsize,
    S_AXI_0_awvalid,
    S_AXI_0_bid,
    S_AXI_0_bready,
    S_AXI_0_bresp,
    S_AXI_0_bvalid,
    S_AXI_0_rdata,
    S_AXI_0_rid,
    S_AXI_0_rlast,
    S_AXI_0_rready,
    S_AXI_0_rresp,
    S_AXI_0_rvalid,
    S_AXI_0_wdata,
    S_AXI_0_wlast,
    S_AXI_0_wready,
    S_AXI_0_wstrb,
    S_AXI_0_wvalid,
    init_calib_complete_0,
    ui_clk_0,
    ui_clk_sync_rst_0);
  input ACLK;
  output [12:0]DDR3_addr;
  output [2:0]DDR3_ba;
  output DDR3_cas_n;
  output [0:0]DDR3_ck_n;
  output [0:0]DDR3_ck_p;
  output [0:0]DDR3_cke;
  output [0:0]DDR3_cs_n;
  output [3:0]DDR3_dm;
  inout [31:0]DDR3_dq;
  inout [3:0]DDR3_dqs_n;
  inout [3:0]DDR3_dqs_p;
  output [0:0]DDR3_odt;
  output DDR3_ras_n;
  output DDR3_reset_n;
  output DDR3_we_n;
  output [31:0]M00_AXI_0_araddr;
  output [1:0]M00_AXI_0_arburst;
  output [3:0]M00_AXI_0_arcache;
  output [0:0]M00_AXI_0_arid;
  output [7:0]M00_AXI_0_arlen;
  output [0:0]M00_AXI_0_arlock;
  output [2:0]M00_AXI_0_arprot;
  output [3:0]M00_AXI_0_arqos;
  input [0:0]M00_AXI_0_arready;
  output [3:0]M00_AXI_0_arregion;
  output [2:0]M00_AXI_0_arsize;
  output [0:0]M00_AXI_0_arvalid;
  output [31:0]M00_AXI_0_awaddr;
  output [1:0]M00_AXI_0_awburst;
  output [3:0]M00_AXI_0_awcache;
  output [0:0]M00_AXI_0_awid;
  output [7:0]M00_AXI_0_awlen;
  output [0:0]M00_AXI_0_awlock;
  output [2:0]M00_AXI_0_awprot;
  output [3:0]M00_AXI_0_awqos;
  input [0:0]M00_AXI_0_awready;
  output [3:0]M00_AXI_0_awregion;
  output [2:0]M00_AXI_0_awsize;
  output [3:0]M00_AXI_0_awuser;
  output [0:0]M00_AXI_0_awvalid;
  input [0:0]M00_AXI_0_bid;
  output [0:0]M00_AXI_0_bready;
  input [1:0]M00_AXI_0_bresp;
  input [0:0]M00_AXI_0_bvalid;
  input [255:0]M00_AXI_0_rdata;
  input [0:0]M00_AXI_0_rid;
  input [0:0]M00_AXI_0_rlast;
  output [0:0]M00_AXI_0_rready;
  input [1:0]M00_AXI_0_rresp;
  input [0:0]M00_AXI_0_rvalid;
  output [255:0]M00_AXI_0_wdata;
  output [0:0]M00_AXI_0_wlast;
  input [0:0]M00_AXI_0_wready;
  output [31:0]M00_AXI_0_wstrb;
  output [0:0]M00_AXI_0_wvalid;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  output [255:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awprot;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input [3:0]S01_AXI_awuser;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input [255:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [31:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input [27:0]S_AXI_0_araddr;
  input [1:0]S_AXI_0_arburst;
  input [3:0]S_AXI_0_arcache;
  input [0:0]S_AXI_0_arid;
  input [7:0]S_AXI_0_arlen;
  input S_AXI_0_arlock;
  input [2:0]S_AXI_0_arprot;
  input [3:0]S_AXI_0_arqos;
  output S_AXI_0_arready;
  input [2:0]S_AXI_0_arsize;
  input S_AXI_0_arvalid;
  input [27:0]S_AXI_0_awaddr;
  input [1:0]S_AXI_0_awburst;
  input [3:0]S_AXI_0_awcache;
  input [0:0]S_AXI_0_awid;
  input [7:0]S_AXI_0_awlen;
  input S_AXI_0_awlock;
  input [2:0]S_AXI_0_awprot;
  input [3:0]S_AXI_0_awqos;
  output S_AXI_0_awready;
  input [2:0]S_AXI_0_awsize;
  input S_AXI_0_awvalid;
  output [0:0]S_AXI_0_bid;
  input S_AXI_0_bready;
  output [1:0]S_AXI_0_bresp;
  output S_AXI_0_bvalid;
  output [255:0]S_AXI_0_rdata;
  output [0:0]S_AXI_0_rid;
  output S_AXI_0_rlast;
  input S_AXI_0_rready;
  output [1:0]S_AXI_0_rresp;
  output S_AXI_0_rvalid;
  input [255:0]S_AXI_0_wdata;
  input S_AXI_0_wlast;
  output S_AXI_0_wready;
  input [31:0]S_AXI_0_wstrb;
  input S_AXI_0_wvalid;
  output [0:0]init_calib_complete_0;
  output ui_clk_0;
  output ui_clk_sync_rst_0;

  wire [12:0]Conn1_ADDR;
  wire [2:0]Conn1_BA;
  wire Conn1_CAS_N;
  wire [0:0]Conn1_CKE;
  wire [0:0]Conn1_CK_N;
  wire [0:0]Conn1_CK_P;
  wire [0:0]Conn1_CS_N;
  wire [3:0]Conn1_DM;
  wire [31:0]Conn1_DQ;
  wire [3:0]Conn1_DQS_N;
  wire [3:0]Conn1_DQS_P;
  wire [0:0]Conn1_ODT;
  wire Conn1_RAS_N;
  wire Conn1_RESET_N;
  wire Conn1_WE_N;
  wire [31:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [0:0]Conn2_ARID;
  wire [7:0]Conn2_ARLEN;
  wire [0:0]Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire [3:0]Conn2_ARQOS;
  wire [0:0]Conn2_ARREADY;
  wire [3:0]Conn2_ARREGION;
  wire [2:0]Conn2_ARSIZE;
  wire [0:0]Conn2_ARVALID;
  wire [31:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [0:0]Conn2_AWID;
  wire [7:0]Conn2_AWLEN;
  wire [0:0]Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire [3:0]Conn2_AWQOS;
  wire [0:0]Conn2_AWREADY;
  wire [3:0]Conn2_AWREGION;
  wire [2:0]Conn2_AWSIZE;
  wire [3:0]Conn2_AWUSER;
  wire [0:0]Conn2_AWVALID;
  wire [0:0]Conn2_BID;
  wire [0:0]Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire [0:0]Conn2_BVALID;
  wire [255:0]Conn2_RDATA;
  wire [0:0]Conn2_RID;
  wire [0:0]Conn2_RLAST;
  wire [0:0]Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire [0:0]Conn2_RVALID;
  wire [255:0]Conn2_WDATA;
  wire [0:0]Conn2_WLAST;
  wire [0:0]Conn2_WREADY;
  wire [31:0]Conn2_WSTRB;
  wire [0:0]Conn2_WVALID;
  wire [27:0]Conn3_ARADDR;
  wire [1:0]Conn3_ARBURST;
  wire [3:0]Conn3_ARCACHE;
  wire [0:0]Conn3_ARID;
  wire [7:0]Conn3_ARLEN;
  wire Conn3_ARLOCK;
  wire [2:0]Conn3_ARPROT;
  wire [3:0]Conn3_ARQOS;
  wire Conn3_ARREADY;
  wire [2:0]Conn3_ARSIZE;
  wire Conn3_ARVALID;
  wire [27:0]Conn3_AWADDR;
  wire [1:0]Conn3_AWBURST;
  wire [3:0]Conn3_AWCACHE;
  wire [0:0]Conn3_AWID;
  wire [7:0]Conn3_AWLEN;
  wire Conn3_AWLOCK;
  wire [2:0]Conn3_AWPROT;
  wire [3:0]Conn3_AWQOS;
  wire Conn3_AWREADY;
  wire [2:0]Conn3_AWSIZE;
  wire Conn3_AWVALID;
  wire [0:0]Conn3_BID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [255:0]Conn3_RDATA;
  wire [0:0]Conn3_RID;
  wire Conn3_RLAST;
  wire Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire [255:0]Conn3_WDATA;
  wire Conn3_WLAST;
  wire Conn3_WREADY;
  wire [31:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire S00_ARESETN_1;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [0:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire [0:0]S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [255:0]S00_AXI_1_RDATA;
  wire [0:0]S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire [0:0]S00_AXI_1_RVALID;
  wire [31:0]S01_AXI_1_AWADDR;
  wire [1:0]S01_AXI_1_AWBURST;
  wire [3:0]S01_AXI_1_AWCACHE;
  wire [7:0]S01_AXI_1_AWLEN;
  wire [2:0]S01_AXI_1_AWPROT;
  wire [1:1]S01_AXI_1_AWREADY;
  wire [2:0]S01_AXI_1_AWSIZE;
  wire [3:0]S01_AXI_1_AWUSER;
  wire S01_AXI_1_AWVALID;
  wire S01_AXI_1_BREADY;
  wire [3:2]S01_AXI_1_BRESP;
  wire [1:1]S01_AXI_1_BVALID;
  wire [255:0]S01_AXI_1_WDATA;
  wire S01_AXI_1_WLAST;
  wire [1:1]S01_AXI_1_WREADY;
  wire [31:0]S01_AXI_1_WSTRB;
  wire S01_AXI_1_WVALID;
  wire clk_wiz_0_clk_out1;
  wire mig_7series_0_init_calib_complete;
  wire mig_7series_0_ui_clk;
  wire mig_7series_0_ui_clk_sync_rst;
  wire [0:0]util_ds_buf_0_BUFG_O;
  wire xdma_0_axi_aclk;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [1:0]NLW_axi_crossbar_0_s_axi_awready_UNCONNECTED;
  wire [3:0]NLW_axi_crossbar_0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_axi_crossbar_0_s_axi_bvalid_UNCONNECTED;
  wire [1:0]NLW_axi_crossbar_0_s_axi_wready_UNCONNECTED;

  assign Conn2_ARREADY = M00_AXI_0_arready[0];
  assign Conn2_AWREADY = M00_AXI_0_awready[0];
  assign Conn2_BID = M00_AXI_0_bid[0];
  assign Conn2_BRESP = M00_AXI_0_bresp[1:0];
  assign Conn2_BVALID = M00_AXI_0_bvalid[0];
  assign Conn2_RDATA = M00_AXI_0_rdata[255:0];
  assign Conn2_RID = M00_AXI_0_rid[0];
  assign Conn2_RLAST = M00_AXI_0_rlast[0];
  assign Conn2_RRESP = M00_AXI_0_rresp[1:0];
  assign Conn2_RVALID = M00_AXI_0_rvalid[0];
  assign Conn2_WREADY = M00_AXI_0_wready[0];
  assign Conn3_ARADDR = S_AXI_0_araddr[27:0];
  assign Conn3_ARBURST = S_AXI_0_arburst[1:0];
  assign Conn3_ARCACHE = S_AXI_0_arcache[3:0];
  assign Conn3_ARID = S_AXI_0_arid[0];
  assign Conn3_ARLEN = S_AXI_0_arlen[7:0];
  assign Conn3_ARLOCK = S_AXI_0_arlock;
  assign Conn3_ARPROT = S_AXI_0_arprot[2:0];
  assign Conn3_ARQOS = S_AXI_0_arqos[3:0];
  assign Conn3_ARSIZE = S_AXI_0_arsize[2:0];
  assign Conn3_ARVALID = S_AXI_0_arvalid;
  assign Conn3_AWADDR = S_AXI_0_awaddr[27:0];
  assign Conn3_AWBURST = S_AXI_0_awburst[1:0];
  assign Conn3_AWCACHE = S_AXI_0_awcache[3:0];
  assign Conn3_AWID = S_AXI_0_awid[0];
  assign Conn3_AWLEN = S_AXI_0_awlen[7:0];
  assign Conn3_AWLOCK = S_AXI_0_awlock;
  assign Conn3_AWPROT = S_AXI_0_awprot[2:0];
  assign Conn3_AWQOS = S_AXI_0_awqos[3:0];
  assign Conn3_AWSIZE = S_AXI_0_awsize[2:0];
  assign Conn3_AWVALID = S_AXI_0_awvalid;
  assign Conn3_BREADY = S_AXI_0_bready;
  assign Conn3_RREADY = S_AXI_0_rready;
  assign Conn3_WDATA = S_AXI_0_wdata[255:0];
  assign Conn3_WLAST = S_AXI_0_wlast;
  assign Conn3_WSTRB = S_AXI_0_wstrb[31:0];
  assign Conn3_WVALID = S_AXI_0_wvalid;
  assign DDR3_addr[12:0] = Conn1_ADDR;
  assign DDR3_ba[2:0] = Conn1_BA;
  assign DDR3_cas_n = Conn1_CAS_N;
  assign DDR3_ck_n[0] = Conn1_CK_N;
  assign DDR3_ck_p[0] = Conn1_CK_P;
  assign DDR3_cke[0] = Conn1_CKE;
  assign DDR3_cs_n[0] = Conn1_CS_N;
  assign DDR3_dm[3:0] = Conn1_DM;
  assign DDR3_odt[0] = Conn1_ODT;
  assign DDR3_ras_n = Conn1_RAS_N;
  assign DDR3_reset_n = Conn1_RESET_N;
  assign DDR3_we_n = Conn1_WE_N;
  assign M00_AXI_0_araddr[31:0] = Conn2_ARADDR;
  assign M00_AXI_0_arburst[1:0] = Conn2_ARBURST;
  assign M00_AXI_0_arcache[3:0] = Conn2_ARCACHE;
  assign M00_AXI_0_arid[0] = Conn2_ARID;
  assign M00_AXI_0_arlen[7:0] = Conn2_ARLEN;
  assign M00_AXI_0_arlock[0] = Conn2_ARLOCK;
  assign M00_AXI_0_arprot[2:0] = Conn2_ARPROT;
  assign M00_AXI_0_arqos[3:0] = Conn2_ARQOS;
  assign M00_AXI_0_arregion[3:0] = Conn2_ARREGION;
  assign M00_AXI_0_arsize[2:0] = Conn2_ARSIZE;
  assign M00_AXI_0_arvalid[0] = Conn2_ARVALID;
  assign M00_AXI_0_awaddr[31:0] = Conn2_AWADDR;
  assign M00_AXI_0_awburst[1:0] = Conn2_AWBURST;
  assign M00_AXI_0_awcache[3:0] = Conn2_AWCACHE;
  assign M00_AXI_0_awid[0] = Conn2_AWID;
  assign M00_AXI_0_awlen[7:0] = Conn2_AWLEN;
  assign M00_AXI_0_awlock[0] = Conn2_AWLOCK;
  assign M00_AXI_0_awprot[2:0] = Conn2_AWPROT;
  assign M00_AXI_0_awqos[3:0] = Conn2_AWQOS;
  assign M00_AXI_0_awregion[3:0] = Conn2_AWREGION;
  assign M00_AXI_0_awsize[2:0] = Conn2_AWSIZE;
  assign M00_AXI_0_awuser[3:0] = Conn2_AWUSER;
  assign M00_AXI_0_awvalid[0] = Conn2_AWVALID;
  assign M00_AXI_0_bready[0] = Conn2_BREADY;
  assign M00_AXI_0_rready[0] = Conn2_RREADY;
  assign M00_AXI_0_wdata[255:0] = Conn2_WDATA;
  assign M00_AXI_0_wlast[0] = Conn2_WLAST;
  assign M00_AXI_0_wstrb[31:0] = Conn2_WSTRB;
  assign M00_AXI_0_wvalid[0] = Conn2_WVALID;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[31:0];
  assign S00_AXI_1_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARLOCK = S00_AXI_arlock[0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARQOS = S00_AXI_arqos[3:0];
  assign S00_AXI_1_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_rdata[255:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rlast = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S01_AXI_1_AWADDR = S01_AXI_awaddr[31:0];
  assign S01_AXI_1_AWBURST = S01_AXI_awburst[1:0];
  assign S01_AXI_1_AWCACHE = S01_AXI_awcache[3:0];
  assign S01_AXI_1_AWLEN = S01_AXI_awlen[7:0];
  assign S01_AXI_1_AWPROT = S01_AXI_awprot[2:0];
  assign S01_AXI_1_AWSIZE = S01_AXI_awsize[2:0];
  assign S01_AXI_1_AWUSER = S01_AXI_awuser[3:0];
  assign S01_AXI_1_AWVALID = S01_AXI_awvalid;
  assign S01_AXI_1_BREADY = S01_AXI_bready;
  assign S01_AXI_1_WDATA = S01_AXI_wdata[255:0];
  assign S01_AXI_1_WLAST = S01_AXI_wlast;
  assign S01_AXI_1_WSTRB = S01_AXI_wstrb[31:0];
  assign S01_AXI_1_WVALID = S01_AXI_wvalid;
  assign S01_AXI_awready = S01_AXI_1_AWREADY;
  assign S01_AXI_bresp[1:0] = S01_AXI_1_BRESP;
  assign S01_AXI_bvalid = S01_AXI_1_BVALID;
  assign S01_AXI_wready = S01_AXI_1_WREADY;
  assign S_AXI_0_arready = Conn3_ARREADY;
  assign S_AXI_0_awready = Conn3_AWREADY;
  assign S_AXI_0_bid[0] = Conn3_BID;
  assign S_AXI_0_bresp[1:0] = Conn3_BRESP;
  assign S_AXI_0_bvalid = Conn3_BVALID;
  assign S_AXI_0_rdata[255:0] = Conn3_RDATA;
  assign S_AXI_0_rid[0] = Conn3_RID;
  assign S_AXI_0_rlast = Conn3_RLAST;
  assign S_AXI_0_rresp[1:0] = Conn3_RRESP;
  assign S_AXI_0_rvalid = Conn3_RVALID;
  assign S_AXI_0_wready = Conn3_WREADY;
  assign init_calib_complete_0[0] = util_ds_buf_0_BUFG_O;
  assign ui_clk_0 = mig_7series_0_ui_clk;
  assign ui_clk_sync_rst_0 = mig_7series_0_ui_clk_sync_rst;
  assign xdma_0_axi_aclk = ACLK;
  design_1_axi_crossbar_0_1 axi_crossbar_0
       (.aclk(xdma_0_axi_aclk),
        .aresetn(S00_ARESETN_1),
        .m_axi_araddr(Conn2_ARADDR),
        .m_axi_arburst(Conn2_ARBURST),
        .m_axi_arcache(Conn2_ARCACHE),
        .m_axi_arid(Conn2_ARID),
        .m_axi_arlen(Conn2_ARLEN),
        .m_axi_arlock(Conn2_ARLOCK),
        .m_axi_arprot(Conn2_ARPROT),
        .m_axi_arqos(Conn2_ARQOS),
        .m_axi_arready(Conn2_ARREADY),
        .m_axi_arregion(Conn2_ARREGION),
        .m_axi_arsize(Conn2_ARSIZE),
        .m_axi_arvalid(Conn2_ARVALID),
        .m_axi_awaddr(Conn2_AWADDR),
        .m_axi_awburst(Conn2_AWBURST),
        .m_axi_awcache(Conn2_AWCACHE),
        .m_axi_awid(Conn2_AWID),
        .m_axi_awlen(Conn2_AWLEN),
        .m_axi_awlock(Conn2_AWLOCK),
        .m_axi_awprot(Conn2_AWPROT),
        .m_axi_awqos(Conn2_AWQOS),
        .m_axi_awready(Conn2_AWREADY),
        .m_axi_awregion(Conn2_AWREGION),
        .m_axi_awsize(Conn2_AWSIZE),
        .m_axi_awuser(Conn2_AWUSER),
        .m_axi_awvalid(Conn2_AWVALID),
        .m_axi_bid(Conn2_BID),
        .m_axi_bready(Conn2_BREADY),
        .m_axi_bresp(Conn2_BRESP),
        .m_axi_bvalid(Conn2_BVALID),
        .m_axi_rdata(Conn2_RDATA),
        .m_axi_rid(Conn2_RID),
        .m_axi_rlast(Conn2_RLAST),
        .m_axi_rready(Conn2_RREADY),
        .m_axi_rresp(Conn2_RRESP),
        .m_axi_rvalid(Conn2_RVALID),
        .m_axi_wdata(Conn2_WDATA),
        .m_axi_wlast(Conn2_WLAST),
        .m_axi_wready(Conn2_WREADY),
        .m_axi_wstrb(Conn2_WSTRB),
        .m_axi_wvalid(Conn2_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S00_AXI_1_ARADDR}),
        .s_axi_arburst({1'b0,1'b0,S00_AXI_1_ARBURST}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,S00_AXI_1_ARCACHE}),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S00_AXI_1_ARLEN}),
        .s_axi_arlock({1'b0,S00_AXI_1_ARLOCK}),
        .s_axi_arprot({1'b0,1'b0,1'b0,S00_AXI_1_ARPROT}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,S00_AXI_1_ARQOS}),
        .s_axi_arready(S00_AXI_1_ARREADY),
        .s_axi_arsize({1'b1,1'b0,1'b0,S00_AXI_1_ARSIZE}),
        .s_axi_arvalid({1'b0,S00_AXI_1_ARVALID}),
        .s_axi_awaddr({S01_AXI_1_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({S01_AXI_1_AWBURST,1'b0,1'b1}),
        .s_axi_awcache({S01_AXI_1_AWCACHE,1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen({S01_AXI_1_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({S01_AXI_1_AWPROT,1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready({S01_AXI_1_AWREADY,NLW_axi_crossbar_0_s_axi_awready_UNCONNECTED[0]}),
        .s_axi_awsize({S01_AXI_1_AWSIZE,1'b1,1'b0,1'b1}),
        .s_axi_awuser({S01_AXI_1_AWUSER,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awvalid({S01_AXI_1_AWVALID,1'b0}),
        .s_axi_bready({S01_AXI_1_BREADY,1'b0}),
        .s_axi_bresp({S01_AXI_1_BRESP,NLW_axi_crossbar_0_s_axi_bresp_UNCONNECTED[1:0]}),
        .s_axi_bvalid({S01_AXI_1_BVALID,NLW_axi_crossbar_0_s_axi_bvalid_UNCONNECTED[0]}),
        .s_axi_rdata(S00_AXI_1_RDATA),
        .s_axi_rlast(S00_AXI_1_RLAST),
        .s_axi_rready({1'b0,S00_AXI_1_RREADY}),
        .s_axi_rresp(S00_AXI_1_RRESP),
        .s_axi_rvalid(S00_AXI_1_RVALID),
        .s_axi_wdata({S01_AXI_1_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast({S01_AXI_1_WLAST,1'b0}),
        .s_axi_wready({S01_AXI_1_WREADY,NLW_axi_crossbar_0_s_axi_wready_UNCONNECTED[0]}),
        .s_axi_wstrb({S01_AXI_1_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid({S01_AXI_1_WVALID,1'b0}));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(xdma_0_axi_aclk),
        .clk_out1(clk_wiz_0_clk_out1),
        .resetn(xlconstant_0_dout));
  design_1_mig_7series_0_1 mig_7series_0
       (.aresetn(xlconstant_1_dout),
        .ddr3_addr(Conn1_ADDR),
        .ddr3_ba(Conn1_BA),
        .ddr3_cas_n(Conn1_CAS_N),
        .ddr3_ck_n(Conn1_CK_N),
        .ddr3_ck_p(Conn1_CK_P),
        .ddr3_cke(Conn1_CKE),
        .ddr3_cs_n(Conn1_CS_N),
        .ddr3_dm(Conn1_DM),
        .ddr3_dq(DDR3_dq[31:0]),
        .ddr3_dqs_n(DDR3_dqs_n[3:0]),
        .ddr3_dqs_p(DDR3_dqs_p[3:0]),
        .ddr3_odt(Conn1_ODT),
        .ddr3_ras_n(Conn1_RAS_N),
        .ddr3_reset_n(Conn1_RESET_N),
        .ddr3_we_n(Conn1_WE_N),
        .init_calib_complete(mig_7series_0_init_calib_complete),
        .s_axi_araddr(Conn3_ARADDR),
        .s_axi_arburst(Conn3_ARBURST),
        .s_axi_arcache(Conn3_ARCACHE),
        .s_axi_arid(Conn3_ARID),
        .s_axi_arlen(Conn3_ARLEN),
        .s_axi_arlock(Conn3_ARLOCK),
        .s_axi_arprot(Conn3_ARPROT),
        .s_axi_arqos(Conn3_ARQOS),
        .s_axi_arready(Conn3_ARREADY),
        .s_axi_arsize(Conn3_ARSIZE),
        .s_axi_arvalid(Conn3_ARVALID),
        .s_axi_awaddr(Conn3_AWADDR),
        .s_axi_awburst(Conn3_AWBURST),
        .s_axi_awcache(Conn3_AWCACHE),
        .s_axi_awid(Conn3_AWID),
        .s_axi_awlen(Conn3_AWLEN),
        .s_axi_awlock(Conn3_AWLOCK),
        .s_axi_awprot(Conn3_AWPROT),
        .s_axi_awqos(Conn3_AWQOS),
        .s_axi_awready(Conn3_AWREADY),
        .s_axi_awsize(Conn3_AWSIZE),
        .s_axi_awvalid(Conn3_AWVALID),
        .s_axi_bid(Conn3_BID),
        .s_axi_bready(Conn3_BREADY),
        .s_axi_bresp(Conn3_BRESP),
        .s_axi_bvalid(Conn3_BVALID),
        .s_axi_rdata(Conn3_RDATA),
        .s_axi_rid(Conn3_RID),
        .s_axi_rlast(Conn3_RLAST),
        .s_axi_rready(Conn3_RREADY),
        .s_axi_rresp(Conn3_RRESP),
        .s_axi_rvalid(Conn3_RVALID),
        .s_axi_wdata(Conn3_WDATA),
        .s_axi_wlast(Conn3_WLAST),
        .s_axi_wready(Conn3_WREADY),
        .s_axi_wstrb(Conn3_WSTRB),
        .s_axi_wvalid(Conn3_WVALID),
        .sys_clk_i(clk_wiz_0_clk_out1),
        .sys_rst(xlconstant_1_dout),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  design_1_util_ds_buf_0_1 util_ds_buf_0
       (.BUFG_I(mig_7series_0_init_calib_complete),
        .BUFG_O(util_ds_buf_0_BUFG_O));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_0_2 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

module PCIe_imp_ZJ4W1S
   (M_AXI_LITE_araddr,
    M_AXI_LITE_arprot,
    M_AXI_LITE_arready,
    M_AXI_LITE_arvalid,
    M_AXI_LITE_awaddr,
    M_AXI_LITE_awprot,
    M_AXI_LITE_awready,
    M_AXI_LITE_awvalid,
    M_AXI_LITE_bready,
    M_AXI_LITE_bresp,
    M_AXI_LITE_bvalid,
    M_AXI_LITE_rdata,
    M_AXI_LITE_rready,
    M_AXI_LITE_rresp,
    M_AXI_LITE_rvalid,
    M_AXI_LITE_wdata,
    M_AXI_LITE_wready,
    M_AXI_LITE_wstrb,
    M_AXI_LITE_wvalid,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    axi_aclk,
    axi_aresetn,
    pcie_clk_n,
    pcie_clk_p,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_perstn);
  output [31:0]M_AXI_LITE_araddr;
  output [2:0]M_AXI_LITE_arprot;
  input M_AXI_LITE_arready;
  output M_AXI_LITE_arvalid;
  output [31:0]M_AXI_LITE_awaddr;
  output [2:0]M_AXI_LITE_awprot;
  input M_AXI_LITE_awready;
  output M_AXI_LITE_awvalid;
  output M_AXI_LITE_bready;
  input [1:0]M_AXI_LITE_bresp;
  input M_AXI_LITE_bvalid;
  input [31:0]M_AXI_LITE_rdata;
  output M_AXI_LITE_rready;
  input [1:0]M_AXI_LITE_rresp;
  input M_AXI_LITE_rvalid;
  output [31:0]M_AXI_LITE_wdata;
  input M_AXI_LITE_wready;
  output [3:0]M_AXI_LITE_wstrb;
  output M_AXI_LITE_wvalid;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output axi_aclk;
  output axi_aresetn;
  input [0:0]pcie_clk_n;
  input [0:0]pcie_clk_p;
  input [3:0]pcie_mgt_rxn;
  input [3:0]pcie_mgt_rxp;
  output [3:0]pcie_mgt_txn;
  output [3:0]pcie_mgt_txp;
  input pcie_perstn;

  wire [0:0]CLK_IN_D_0_1_CLK_N;
  wire [0:0]CLK_IN_D_0_1_CLK_P;
  wire [31:0]PCIe_M_AXI_LITE_ARADDR;
  wire [2:0]PCIe_M_AXI_LITE_ARPROT;
  wire PCIe_M_AXI_LITE_ARREADY;
  wire PCIe_M_AXI_LITE_ARVALID;
  wire [31:0]PCIe_M_AXI_LITE_AWADDR;
  wire [2:0]PCIe_M_AXI_LITE_AWPROT;
  wire PCIe_M_AXI_LITE_AWREADY;
  wire PCIe_M_AXI_LITE_AWVALID;
  wire PCIe_M_AXI_LITE_BREADY;
  wire [1:0]PCIe_M_AXI_LITE_BRESP;
  wire PCIe_M_AXI_LITE_BVALID;
  wire [31:0]PCIe_M_AXI_LITE_RDATA;
  wire PCIe_M_AXI_LITE_RREADY;
  wire [1:0]PCIe_M_AXI_LITE_RRESP;
  wire PCIe_M_AXI_LITE_RVALID;
  wire [31:0]PCIe_M_AXI_LITE_WDATA;
  wire PCIe_M_AXI_LITE_WREADY;
  wire [3:0]PCIe_M_AXI_LITE_WSTRB;
  wire PCIe_M_AXI_LITE_WVALID;
  wire PCIe_axi_aresetn;
  wire sys_rst_n_0_1;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [63:0]xdma_0_M_AXI1_ARADDR;
  wire [1:0]xdma_0_M_AXI1_ARBURST;
  wire [3:0]xdma_0_M_AXI1_ARCACHE;
  wire [1:0]xdma_0_M_AXI1_ARID;
  wire [7:0]xdma_0_M_AXI1_ARLEN;
  wire xdma_0_M_AXI1_ARLOCK;
  wire [2:0]xdma_0_M_AXI1_ARPROT;
  wire xdma_0_M_AXI1_ARREADY;
  wire [2:0]xdma_0_M_AXI1_ARSIZE;
  wire xdma_0_M_AXI1_ARVALID;
  wire [127:0]xdma_0_M_AXI1_RDATA;
  wire [1:0]xdma_0_M_AXI1_RID;
  wire xdma_0_M_AXI1_RLAST;
  wire xdma_0_M_AXI1_RREADY;
  wire [1:0]xdma_0_M_AXI1_RRESP;
  wire xdma_0_M_AXI1_RVALID;
  wire [31:0]xdma_0_M_AXI_ARADDR;
  wire [1:0]xdma_0_M_AXI_ARBURST;
  wire [3:0]xdma_0_M_AXI_ARCACHE;
  wire [7:0]xdma_0_M_AXI_ARLEN;
  wire [0:0]xdma_0_M_AXI_ARLOCK;
  wire [2:0]xdma_0_M_AXI_ARPROT;
  wire [3:0]xdma_0_M_AXI_ARQOS;
  wire xdma_0_M_AXI_ARREADY;
  wire [2:0]xdma_0_M_AXI_ARSIZE;
  wire xdma_0_M_AXI_ARVALID;
  wire [255:0]xdma_0_M_AXI_RDATA;
  wire xdma_0_M_AXI_RLAST;
  wire xdma_0_M_AXI_RREADY;
  wire [1:0]xdma_0_M_AXI_RRESP;
  wire xdma_0_M_AXI_RVALID;
  wire xdma_0_axi_aclk;
  wire [3:0]xdma_0_pcie_mgt_rxn;
  wire [3:0]xdma_0_pcie_mgt_rxp;
  wire [3:0]xdma_0_pcie_mgt_txn;
  wire [3:0]xdma_0_pcie_mgt_txp;

  assign CLK_IN_D_0_1_CLK_N = pcie_clk_n[0];
  assign CLK_IN_D_0_1_CLK_P = pcie_clk_p[0];
  assign M_AXI_LITE_araddr[31:0] = PCIe_M_AXI_LITE_ARADDR;
  assign M_AXI_LITE_arprot[2:0] = PCIe_M_AXI_LITE_ARPROT;
  assign M_AXI_LITE_arvalid = PCIe_M_AXI_LITE_ARVALID;
  assign M_AXI_LITE_awaddr[31:0] = PCIe_M_AXI_LITE_AWADDR;
  assign M_AXI_LITE_awprot[2:0] = PCIe_M_AXI_LITE_AWPROT;
  assign M_AXI_LITE_awvalid = PCIe_M_AXI_LITE_AWVALID;
  assign M_AXI_LITE_bready = PCIe_M_AXI_LITE_BREADY;
  assign M_AXI_LITE_rready = PCIe_M_AXI_LITE_RREADY;
  assign M_AXI_LITE_wdata[31:0] = PCIe_M_AXI_LITE_WDATA;
  assign M_AXI_LITE_wstrb[3:0] = PCIe_M_AXI_LITE_WSTRB;
  assign M_AXI_LITE_wvalid = PCIe_M_AXI_LITE_WVALID;
  assign M_AXI_araddr[31:0] = xdma_0_M_AXI_ARADDR;
  assign M_AXI_arburst[1:0] = xdma_0_M_AXI_ARBURST;
  assign M_AXI_arcache[3:0] = xdma_0_M_AXI_ARCACHE;
  assign M_AXI_arlen[7:0] = xdma_0_M_AXI_ARLEN;
  assign M_AXI_arlock[0] = xdma_0_M_AXI_ARLOCK;
  assign M_AXI_arprot[2:0] = xdma_0_M_AXI_ARPROT;
  assign M_AXI_arqos[3:0] = xdma_0_M_AXI_ARQOS;
  assign M_AXI_arsize[2:0] = xdma_0_M_AXI_ARSIZE;
  assign M_AXI_arvalid = xdma_0_M_AXI_ARVALID;
  assign M_AXI_rready = xdma_0_M_AXI_RREADY;
  assign PCIe_M_AXI_LITE_ARREADY = M_AXI_LITE_arready;
  assign PCIe_M_AXI_LITE_AWREADY = M_AXI_LITE_awready;
  assign PCIe_M_AXI_LITE_BRESP = M_AXI_LITE_bresp[1:0];
  assign PCIe_M_AXI_LITE_BVALID = M_AXI_LITE_bvalid;
  assign PCIe_M_AXI_LITE_RDATA = M_AXI_LITE_rdata[31:0];
  assign PCIe_M_AXI_LITE_RRESP = M_AXI_LITE_rresp[1:0];
  assign PCIe_M_AXI_LITE_RVALID = M_AXI_LITE_rvalid;
  assign PCIe_M_AXI_LITE_WREADY = M_AXI_LITE_wready;
  assign axi_aclk = xdma_0_axi_aclk;
  assign axi_aresetn = PCIe_axi_aresetn;
  assign pcie_mgt_txn[3:0] = xdma_0_pcie_mgt_txn;
  assign pcie_mgt_txp[3:0] = xdma_0_pcie_mgt_txp;
  assign sys_rst_n_0_1 = pcie_perstn;
  assign xdma_0_M_AXI_ARREADY = M_AXI_arready;
  assign xdma_0_M_AXI_RDATA = M_AXI_rdata[255:0];
  assign xdma_0_M_AXI_RLAST = M_AXI_rlast;
  assign xdma_0_M_AXI_RRESP = M_AXI_rresp[1:0];
  assign xdma_0_M_AXI_RVALID = M_AXI_rvalid;
  assign xdma_0_pcie_mgt_rxn = pcie_mgt_rxn[3:0];
  assign xdma_0_pcie_mgt_rxp = pcie_mgt_rxp[3:0];
  design_1_axi_dwidth_converter_0_0 axi_dwidth_converter_0
       (.m_axi_araddr(xdma_0_M_AXI_ARADDR),
        .m_axi_arburst(xdma_0_M_AXI_ARBURST),
        .m_axi_arcache(xdma_0_M_AXI_ARCACHE),
        .m_axi_arlen(xdma_0_M_AXI_ARLEN),
        .m_axi_arlock(xdma_0_M_AXI_ARLOCK),
        .m_axi_arprot(xdma_0_M_AXI_ARPROT),
        .m_axi_arqos(xdma_0_M_AXI_ARQOS),
        .m_axi_arready(xdma_0_M_AXI_ARREADY),
        .m_axi_arsize(xdma_0_M_AXI_ARSIZE),
        .m_axi_arvalid(xdma_0_M_AXI_ARVALID),
        .m_axi_rdata(xdma_0_M_AXI_RDATA),
        .m_axi_rlast(xdma_0_M_AXI_RLAST),
        .m_axi_rready(xdma_0_M_AXI_RREADY),
        .m_axi_rresp(xdma_0_M_AXI_RRESP),
        .m_axi_rvalid(xdma_0_M_AXI_RVALID),
        .s_axi_aclk(xdma_0_axi_aclk),
        .s_axi_araddr(xdma_0_M_AXI1_ARADDR[31:0]),
        .s_axi_arburst(xdma_0_M_AXI1_ARBURST),
        .s_axi_arcache(xdma_0_M_AXI1_ARCACHE),
        .s_axi_aresetn(PCIe_axi_aresetn),
        .s_axi_arid(xdma_0_M_AXI1_ARID),
        .s_axi_arlen(xdma_0_M_AXI1_ARLEN),
        .s_axi_arlock(xdma_0_M_AXI1_ARLOCK),
        .s_axi_arprot(xdma_0_M_AXI1_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(xdma_0_M_AXI1_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(xdma_0_M_AXI1_ARSIZE),
        .s_axi_arvalid(xdma_0_M_AXI1_ARVALID),
        .s_axi_rdata(xdma_0_M_AXI1_RDATA),
        .s_axi_rid(xdma_0_M_AXI1_RID),
        .s_axi_rlast(xdma_0_M_AXI1_RLAST),
        .s_axi_rready(xdma_0_M_AXI1_RREADY),
        .s_axi_rresp(xdma_0_M_AXI1_RRESP),
        .s_axi_rvalid(xdma_0_M_AXI1_RVALID));
  design_1_util_ds_buf_0_0 util_ds_buf_0
       (.IBUF_DS_N(CLK_IN_D_0_1_CLK_N),
        .IBUF_DS_P(CLK_IN_D_0_1_CLK_P),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  design_1_xdma_0_0 xdma_0
       (.axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(PCIe_axi_aresetn),
        .h2c_dsc_byp_ctl_0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .h2c_dsc_byp_dst_addr_0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .h2c_dsc_byp_len_0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .h2c_dsc_byp_load_0(1'b0),
        .h2c_dsc_byp_src_addr_0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_araddr(xdma_0_M_AXI1_ARADDR),
        .m_axi_arburst(xdma_0_M_AXI1_ARBURST),
        .m_axi_arcache(xdma_0_M_AXI1_ARCACHE),
        .m_axi_arid(xdma_0_M_AXI1_ARID),
        .m_axi_arlen(xdma_0_M_AXI1_ARLEN),
        .m_axi_arlock(xdma_0_M_AXI1_ARLOCK),
        .m_axi_arprot(xdma_0_M_AXI1_ARPROT),
        .m_axi_arready(xdma_0_M_AXI1_ARREADY),
        .m_axi_arsize(xdma_0_M_AXI1_ARSIZE),
        .m_axi_arvalid(xdma_0_M_AXI1_ARVALID),
        .m_axi_awready(1'b0),
        .m_axi_bid({1'b0,1'b0}),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata(xdma_0_M_AXI1_RDATA),
        .m_axi_rid(xdma_0_M_AXI1_RID),
        .m_axi_rlast(xdma_0_M_AXI1_RLAST),
        .m_axi_rready(xdma_0_M_AXI1_RREADY),
        .m_axi_rresp(xdma_0_M_AXI1_RRESP),
        .m_axi_rvalid(xdma_0_M_AXI1_RVALID),
        .m_axi_wready(1'b0),
        .m_axil_araddr(PCIe_M_AXI_LITE_ARADDR),
        .m_axil_arprot(PCIe_M_AXI_LITE_ARPROT),
        .m_axil_arready(PCIe_M_AXI_LITE_ARREADY),
        .m_axil_arvalid(PCIe_M_AXI_LITE_ARVALID),
        .m_axil_awaddr(PCIe_M_AXI_LITE_AWADDR),
        .m_axil_awprot(PCIe_M_AXI_LITE_AWPROT),
        .m_axil_awready(PCIe_M_AXI_LITE_AWREADY),
        .m_axil_awvalid(PCIe_M_AXI_LITE_AWVALID),
        .m_axil_bready(PCIe_M_AXI_LITE_BREADY),
        .m_axil_bresp(PCIe_M_AXI_LITE_BRESP),
        .m_axil_bvalid(PCIe_M_AXI_LITE_BVALID),
        .m_axil_rdata(PCIe_M_AXI_LITE_RDATA),
        .m_axil_rready(PCIe_M_AXI_LITE_RREADY),
        .m_axil_rresp(PCIe_M_AXI_LITE_RRESP),
        .m_axil_rvalid(PCIe_M_AXI_LITE_RVALID),
        .m_axil_wdata(PCIe_M_AXI_LITE_WDATA),
        .m_axil_wready(PCIe_M_AXI_LITE_WREADY),
        .m_axil_wstrb(PCIe_M_AXI_LITE_WSTRB),
        .m_axil_wvalid(PCIe_M_AXI_LITE_WVALID),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .sys_clk(util_ds_buf_0_IBUF_OUT),
        .sys_rst_n(sys_rst_n_0_1),
        .usr_irq_req(1'b0));
endmodule

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=18,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=10,da_board_cnt=1,da_clkrst_cnt=5,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (AXI_STR_TXD_0_tdata,
    AXI_STR_TXD_0_tlast,
    AXI_STR_TXD_0_tready,
    AXI_STR_TXD_0_tvalid,
    DDR3_addr,
    DDR3_ba,
    DDR3_cas_n,
    DDR3_ck_n,
    DDR3_ck_p,
    DDR3_cke,
    DDR3_cs_n,
    DDR3_dm,
    DDR3_dq,
    DDR3_dqs_n,
    DDR3_dqs_p,
    DDR3_odt,
    DDR3_ras_n,
    DDR3_reset_n,
    DDR3_we_n,
    M00_AXI_0_araddr,
    M00_AXI_0_arburst,
    M00_AXI_0_arcache,
    M00_AXI_0_arid,
    M00_AXI_0_arlen,
    M00_AXI_0_arlock,
    M00_AXI_0_arprot,
    M00_AXI_0_arqos,
    M00_AXI_0_arready,
    M00_AXI_0_arregion,
    M00_AXI_0_arsize,
    M00_AXI_0_arvalid,
    M00_AXI_0_awaddr,
    M00_AXI_0_awburst,
    M00_AXI_0_awcache,
    M00_AXI_0_awid,
    M00_AXI_0_awlen,
    M00_AXI_0_awlock,
    M00_AXI_0_awprot,
    M00_AXI_0_awqos,
    M00_AXI_0_awready,
    M00_AXI_0_awregion,
    M00_AXI_0_awsize,
    M00_AXI_0_awuser,
    M00_AXI_0_awvalid,
    M00_AXI_0_bid,
    M00_AXI_0_bready,
    M00_AXI_0_bresp,
    M00_AXI_0_bvalid,
    M00_AXI_0_rdata,
    M00_AXI_0_rid,
    M00_AXI_0_rlast,
    M00_AXI_0_rready,
    M00_AXI_0_rresp,
    M00_AXI_0_rvalid,
    M00_AXI_0_wdata,
    M00_AXI_0_wlast,
    M00_AXI_0_wready,
    M00_AXI_0_wstrb,
    M00_AXI_0_wvalid,
    S01_ARESETN,
    S_AXIS_S2MM_CMD_tdata,
    S_AXIS_S2MM_CMD_tready,
    S_AXIS_S2MM_CMD_tvalid,
    S_AXIS_S2MM_tdata,
    S_AXIS_S2MM_tkeep,
    S_AXIS_S2MM_tlast,
    S_AXIS_S2MM_tready,
    S_AXIS_S2MM_tvalid,
    S_AXI_0_araddr,
    S_AXI_0_arburst,
    S_AXI_0_arcache,
    S_AXI_0_arid,
    S_AXI_0_arlen,
    S_AXI_0_arlock,
    S_AXI_0_arprot,
    S_AXI_0_arqos,
    S_AXI_0_arready,
    S_AXI_0_arsize,
    S_AXI_0_arvalid,
    S_AXI_0_awaddr,
    S_AXI_0_awburst,
    S_AXI_0_awcache,
    S_AXI_0_awid,
    S_AXI_0_awlen,
    S_AXI_0_awlock,
    S_AXI_0_awprot,
    S_AXI_0_awqos,
    S_AXI_0_awready,
    S_AXI_0_awsize,
    S_AXI_0_awvalid,
    S_AXI_0_bid,
    S_AXI_0_bready,
    S_AXI_0_bresp,
    S_AXI_0_bvalid,
    S_AXI_0_rdata,
    S_AXI_0_rid,
    S_AXI_0_rlast,
    S_AXI_0_rready,
    S_AXI_0_rresp,
    S_AXI_0_rvalid,
    S_AXI_0_wdata,
    S_AXI_0_wlast,
    S_AXI_0_wready,
    S_AXI_0_wstrb,
    S_AXI_0_wvalid,
    axi_aclk,
    axi_aresetn,
    gpio2_io_i,
    gpio_io_o_0,
    init_calib_complete_0,
    pcie_clk_n,
    pcie_clk_p,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_perstn,
    s2mm_err,
    s2mm_halt,
    s2mm_wr_xfer_cmplt,
    ui_clk_0,
    ui_clk_sync_rst_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_STR_TXD_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_STR_TXD_0, FREQ_HZ 125000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]AXI_STR_TXD_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_STR_TXD_0 TLAST" *) output AXI_STR_TXD_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_STR_TXD_0 TREADY" *) input AXI_STR_TXD_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXI_STR_TXD_0 TVALID" *) output AXI_STR_TXD_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR3, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [12:0]DDR3_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 BA" *) output [2:0]DDR3_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CAS_N" *) output DDR3_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CK_N" *) output [0:0]DDR3_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CK_P" *) output [0:0]DDR3_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CKE" *) output [0:0]DDR3_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CS_N" *) output [0:0]DDR3_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DM" *) output [3:0]DDR3_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DQ" *) inout [31:0]DDR3_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DQS_N" *) inout [3:0]DDR3_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DQS_P" *) inout [3:0]DDR3_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 ODT" *) output [0:0]DDR3_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 RAS_N" *) output DDR3_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 RESET_N" *) output DDR3_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 WE_N" *) output DDR3_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_0, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 4, BUSER_WIDTH 0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, DATA_WIDTH 256, FREQ_HZ 125000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 128, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M00_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARBURST" *) output [1:0]M00_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARCACHE" *) output [3:0]M00_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARID" *) output [0:0]M00_AXI_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARLEN" *) output [7:0]M00_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARLOCK" *) output [0:0]M00_AXI_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARPROT" *) output [2:0]M00_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARQOS" *) output [3:0]M00_AXI_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARREADY" *) input [0:0]M00_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARREGION" *) output [3:0]M00_AXI_0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARSIZE" *) output [2:0]M00_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 ARVALID" *) output [0:0]M00_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWADDR" *) output [31:0]M00_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWBURST" *) output [1:0]M00_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWCACHE" *) output [3:0]M00_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWID" *) output [0:0]M00_AXI_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWLEN" *) output [7:0]M00_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWLOCK" *) output [0:0]M00_AXI_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWPROT" *) output [2:0]M00_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWQOS" *) output [3:0]M00_AXI_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWREADY" *) input [0:0]M00_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWREGION" *) output [3:0]M00_AXI_0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWSIZE" *) output [2:0]M00_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWUSER" *) output [3:0]M00_AXI_0_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWVALID" *) output [0:0]M00_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 BID" *) input [0:0]M00_AXI_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 BREADY" *) output [0:0]M00_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 BRESP" *) input [1:0]M00_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 BVALID" *) input [0:0]M00_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 RDATA" *) input [255:0]M00_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 RID" *) input [0:0]M00_AXI_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 RLAST" *) input [0:0]M00_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 RREADY" *) output [0:0]M00_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 RRESP" *) input [1:0]M00_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 RVALID" *) input [0:0]M00_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 WDATA" *) output [255:0]M00_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 WLAST" *) output [0:0]M00_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 WREADY" *) input [0:0]M00_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 WSTRB" *) output [31:0]M00_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_0 WVALID" *) output [0:0]M00_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S01_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S01_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input S01_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_CMD TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_S2MM_CMD, FREQ_HZ 125000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [71:0]S_AXIS_S2MM_CMD_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_CMD TREADY" *) output S_AXIS_S2MM_CMD_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_CMD TVALID" *) input S_AXIS_S2MM_CMD_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_S2MM, FREQ_HZ 125000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [127:0]S_AXIS_S2MM_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TKEEP" *) input [15:0]S_AXIS_S2MM_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TLAST" *) input S_AXIS_S2MM_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TREADY" *) output S_AXIS_S2MM_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TVALID" *) input S_AXIS_S2MM_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_0, ADDR_WIDTH 28, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_mig_7series_0_1_ui_clk, DATA_WIDTH 256, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 128, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [27:0]S_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARBURST" *) input [1:0]S_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARCACHE" *) input [3:0]S_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARID" *) input [0:0]S_AXI_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARLEN" *) input [7:0]S_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARLOCK" *) input S_AXI_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARPROT" *) input [2:0]S_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARQOS" *) input [3:0]S_AXI_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARREADY" *) output S_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARSIZE" *) input [2:0]S_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARVALID" *) input S_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWADDR" *) input [27:0]S_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWBURST" *) input [1:0]S_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWCACHE" *) input [3:0]S_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWID" *) input [0:0]S_AXI_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWLEN" *) input [7:0]S_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWLOCK" *) input S_AXI_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWPROT" *) input [2:0]S_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWQOS" *) input [3:0]S_AXI_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWREADY" *) output S_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWSIZE" *) input [2:0]S_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWVALID" *) input S_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BID" *) output [0:0]S_AXI_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BREADY" *) input S_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BRESP" *) output [1:0]S_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BVALID" *) output S_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RDATA" *) output [255:0]S_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RID" *) output [0:0]S_AXI_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RLAST" *) output S_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RREADY" *) input S_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RRESP" *) output [1:0]S_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RVALID" *) output S_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WDATA" *) input [255:0]S_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WLAST" *) input S_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WREADY" *) output S_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WSTRB" *) input [31:0]S_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WVALID" *) input S_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXI_ACLK, ASSOCIATED_BUSIF M00_AXI_0, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) output axi_aclk;
  output axi_aresetn;
  input [31:0]gpio2_io_i;
  output [31:0]gpio_io_o_0;
  output [0:0]init_calib_complete_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie CLK_P" *) input [0:0]pcie_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) input [3:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [3:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [3:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [3:0]pcie_mgt_txp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_PERSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_PERSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input pcie_perstn;
  output s2mm_err;
  input s2mm_halt;
  output s2mm_wr_xfer_cmplt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.UI_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.UI_CLK_0, ASSOCIATED_BUSIF S_AXI_0, CLK_DOMAIN design_1_mig_7series_0_1_ui_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) output ui_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.UI_CLK_SYNC_RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.UI_CLK_SYNC_RST_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) output ui_clk_sync_rst_0;

  wire [31:0]AXI_LITE_IO_AXI_STR_TXD_0_TDATA;
  wire AXI_LITE_IO_AXI_STR_TXD_0_TLAST;
  wire AXI_LITE_IO_AXI_STR_TXD_0_TREADY;
  wire AXI_LITE_IO_AXI_STR_TXD_0_TVALID;
  wire [31:0]AXI_LITE_IO_gpio_io_o_0;
  wire [0:0]CLK_IN_D_0_1_CLK_N;
  wire [0:0]CLK_IN_D_0_1_CLK_P;
  wire [31:0]Datamover_M_AXI_S2MM_AWADDR;
  wire [1:0]Datamover_M_AXI_S2MM_AWBURST;
  wire [3:0]Datamover_M_AXI_S2MM_AWCACHE;
  wire [7:0]Datamover_M_AXI_S2MM_AWLEN;
  wire [2:0]Datamover_M_AXI_S2MM_AWPROT;
  wire Datamover_M_AXI_S2MM_AWREADY;
  wire [2:0]Datamover_M_AXI_S2MM_AWSIZE;
  wire [3:0]Datamover_M_AXI_S2MM_AWUSER;
  wire Datamover_M_AXI_S2MM_AWVALID;
  wire Datamover_M_AXI_S2MM_BREADY;
  wire [1:0]Datamover_M_AXI_S2MM_BRESP;
  wire Datamover_M_AXI_S2MM_BVALID;
  wire [255:0]Datamover_M_AXI_S2MM_WDATA;
  wire Datamover_M_AXI_S2MM_WLAST;
  wire Datamover_M_AXI_S2MM_WREADY;
  wire [31:0]Datamover_M_AXI_S2MM_WSTRB;
  wire Datamover_M_AXI_S2MM_WVALID;
  wire Datamover_s2mm_err_0;
  wire Datamover_s2mm_wr_xfer_cmplt_0;
  wire [12:0]Memory_DDR3_0_ADDR;
  wire [2:0]Memory_DDR3_0_BA;
  wire Memory_DDR3_0_CAS_N;
  wire [0:0]Memory_DDR3_0_CKE;
  wire [0:0]Memory_DDR3_0_CK_N;
  wire [0:0]Memory_DDR3_0_CK_P;
  wire [0:0]Memory_DDR3_0_CS_N;
  wire [3:0]Memory_DDR3_0_DM;
  wire [31:0]Memory_DDR3_0_DQ;
  wire [3:0]Memory_DDR3_0_DQS_N;
  wire [3:0]Memory_DDR3_0_DQS_P;
  wire [0:0]Memory_DDR3_0_ODT;
  wire Memory_DDR3_0_RAS_N;
  wire Memory_DDR3_0_RESET_N;
  wire Memory_DDR3_0_WE_N;
  wire [31:0]Memory_M00_AXI_0_ARADDR;
  wire [1:0]Memory_M00_AXI_0_ARBURST;
  wire [3:0]Memory_M00_AXI_0_ARCACHE;
  wire [0:0]Memory_M00_AXI_0_ARID;
  wire [7:0]Memory_M00_AXI_0_ARLEN;
  wire [0:0]Memory_M00_AXI_0_ARLOCK;
  wire [2:0]Memory_M00_AXI_0_ARPROT;
  wire [3:0]Memory_M00_AXI_0_ARQOS;
  wire [0:0]Memory_M00_AXI_0_ARREADY;
  wire [3:0]Memory_M00_AXI_0_ARREGION;
  wire [2:0]Memory_M00_AXI_0_ARSIZE;
  wire [0:0]Memory_M00_AXI_0_ARVALID;
  wire [31:0]Memory_M00_AXI_0_AWADDR;
  wire [1:0]Memory_M00_AXI_0_AWBURST;
  wire [3:0]Memory_M00_AXI_0_AWCACHE;
  wire [0:0]Memory_M00_AXI_0_AWID;
  wire [7:0]Memory_M00_AXI_0_AWLEN;
  wire [0:0]Memory_M00_AXI_0_AWLOCK;
  wire [2:0]Memory_M00_AXI_0_AWPROT;
  wire [3:0]Memory_M00_AXI_0_AWQOS;
  wire [0:0]Memory_M00_AXI_0_AWREADY;
  wire [3:0]Memory_M00_AXI_0_AWREGION;
  wire [2:0]Memory_M00_AXI_0_AWSIZE;
  wire [3:0]Memory_M00_AXI_0_AWUSER;
  wire [0:0]Memory_M00_AXI_0_AWVALID;
  wire [0:0]Memory_M00_AXI_0_BID;
  wire [0:0]Memory_M00_AXI_0_BREADY;
  wire [1:0]Memory_M00_AXI_0_BRESP;
  wire [0:0]Memory_M00_AXI_0_BVALID;
  wire [255:0]Memory_M00_AXI_0_RDATA;
  wire [0:0]Memory_M00_AXI_0_RID;
  wire [0:0]Memory_M00_AXI_0_RLAST;
  wire [0:0]Memory_M00_AXI_0_RREADY;
  wire [1:0]Memory_M00_AXI_0_RRESP;
  wire [0:0]Memory_M00_AXI_0_RVALID;
  wire [255:0]Memory_M00_AXI_0_WDATA;
  wire [0:0]Memory_M00_AXI_0_WLAST;
  wire [0:0]Memory_M00_AXI_0_WREADY;
  wire [31:0]Memory_M00_AXI_0_WSTRB;
  wire [0:0]Memory_M00_AXI_0_WVALID;
  wire [0:0]Memory_init_calib_complete_0;
  wire Memory_ui_clk_0;
  wire Memory_ui_clk_sync_rst_0;
  wire [31:0]PCIe_M_AXI_LITE_ARADDR;
  wire [2:0]PCIe_M_AXI_LITE_ARPROT;
  wire PCIe_M_AXI_LITE_ARREADY;
  wire PCIe_M_AXI_LITE_ARVALID;
  wire [31:0]PCIe_M_AXI_LITE_AWADDR;
  wire [2:0]PCIe_M_AXI_LITE_AWPROT;
  wire PCIe_M_AXI_LITE_AWREADY;
  wire PCIe_M_AXI_LITE_AWVALID;
  wire PCIe_M_AXI_LITE_BREADY;
  wire [1:0]PCIe_M_AXI_LITE_BRESP;
  wire PCIe_M_AXI_LITE_BVALID;
  wire [31:0]PCIe_M_AXI_LITE_RDATA;
  wire PCIe_M_AXI_LITE_RREADY;
  wire [1:0]PCIe_M_AXI_LITE_RRESP;
  wire PCIe_M_AXI_LITE_RVALID;
  wire [31:0]PCIe_M_AXI_LITE_WDATA;
  wire PCIe_M_AXI_LITE_WREADY;
  wire [3:0]PCIe_M_AXI_LITE_WSTRB;
  wire PCIe_M_AXI_LITE_WVALID;
  wire PCIe_axi_aresetn;
  wire S01_ARESETN_0_1;
  wire [127:0]S_AXIS_S2MM_0_1_TDATA;
  wire [15:0]S_AXIS_S2MM_0_1_TKEEP;
  wire S_AXIS_S2MM_0_1_TLAST;
  wire S_AXIS_S2MM_0_1_TREADY;
  wire S_AXIS_S2MM_0_1_TVALID;
  wire [71:0]S_AXIS_S2MM_CMD_0_1_TDATA;
  wire S_AXIS_S2MM_CMD_0_1_TREADY;
  wire S_AXIS_S2MM_CMD_0_1_TVALID;
  wire [27:0]S_AXI_0_1_ARADDR;
  wire [1:0]S_AXI_0_1_ARBURST;
  wire [3:0]S_AXI_0_1_ARCACHE;
  wire [0:0]S_AXI_0_1_ARID;
  wire [7:0]S_AXI_0_1_ARLEN;
  wire S_AXI_0_1_ARLOCK;
  wire [2:0]S_AXI_0_1_ARPROT;
  wire [3:0]S_AXI_0_1_ARQOS;
  wire S_AXI_0_1_ARREADY;
  wire [2:0]S_AXI_0_1_ARSIZE;
  wire S_AXI_0_1_ARVALID;
  wire [27:0]S_AXI_0_1_AWADDR;
  wire [1:0]S_AXI_0_1_AWBURST;
  wire [3:0]S_AXI_0_1_AWCACHE;
  wire [0:0]S_AXI_0_1_AWID;
  wire [7:0]S_AXI_0_1_AWLEN;
  wire S_AXI_0_1_AWLOCK;
  wire [2:0]S_AXI_0_1_AWPROT;
  wire [3:0]S_AXI_0_1_AWQOS;
  wire S_AXI_0_1_AWREADY;
  wire [2:0]S_AXI_0_1_AWSIZE;
  wire S_AXI_0_1_AWVALID;
  wire [0:0]S_AXI_0_1_BID;
  wire S_AXI_0_1_BREADY;
  wire [1:0]S_AXI_0_1_BRESP;
  wire S_AXI_0_1_BVALID;
  wire [255:0]S_AXI_0_1_RDATA;
  wire [0:0]S_AXI_0_1_RID;
  wire S_AXI_0_1_RLAST;
  wire S_AXI_0_1_RREADY;
  wire [1:0]S_AXI_0_1_RRESP;
  wire S_AXI_0_1_RVALID;
  wire [255:0]S_AXI_0_1_WDATA;
  wire S_AXI_0_1_WLAST;
  wire S_AXI_0_1_WREADY;
  wire [31:0]S_AXI_0_1_WSTRB;
  wire S_AXI_0_1_WVALID;
  wire [31:0]gpio2_io_i_0_1;
  wire s2mm_halt_0_1;
  wire sys_rst_n_0_1;
  wire [31:0]xdma_0_M_AXI_ARADDR;
  wire [1:0]xdma_0_M_AXI_ARBURST;
  wire [3:0]xdma_0_M_AXI_ARCACHE;
  wire [7:0]xdma_0_M_AXI_ARLEN;
  wire [0:0]xdma_0_M_AXI_ARLOCK;
  wire [2:0]xdma_0_M_AXI_ARPROT;
  wire [3:0]xdma_0_M_AXI_ARQOS;
  wire xdma_0_M_AXI_ARREADY;
  wire [2:0]xdma_0_M_AXI_ARSIZE;
  wire xdma_0_M_AXI_ARVALID;
  wire [255:0]xdma_0_M_AXI_RDATA;
  wire xdma_0_M_AXI_RLAST;
  wire xdma_0_M_AXI_RREADY;
  wire [1:0]xdma_0_M_AXI_RRESP;
  wire xdma_0_M_AXI_RVALID;
  wire xdma_0_axi_aclk;
  wire [3:0]xdma_0_pcie_mgt_rxn;
  wire [3:0]xdma_0_pcie_mgt_rxp;
  wire [3:0]xdma_0_pcie_mgt_txn;
  wire [3:0]xdma_0_pcie_mgt_txp;

  assign AXI_LITE_IO_AXI_STR_TXD_0_TREADY = AXI_STR_TXD_0_tready;
  assign AXI_STR_TXD_0_tdata[31:0] = AXI_LITE_IO_AXI_STR_TXD_0_TDATA;
  assign AXI_STR_TXD_0_tlast = AXI_LITE_IO_AXI_STR_TXD_0_TLAST;
  assign AXI_STR_TXD_0_tvalid = AXI_LITE_IO_AXI_STR_TXD_0_TVALID;
  assign CLK_IN_D_0_1_CLK_N = pcie_clk_n[0];
  assign CLK_IN_D_0_1_CLK_P = pcie_clk_p[0];
  assign DDR3_addr[12:0] = Memory_DDR3_0_ADDR;
  assign DDR3_ba[2:0] = Memory_DDR3_0_BA;
  assign DDR3_cas_n = Memory_DDR3_0_CAS_N;
  assign DDR3_ck_n[0] = Memory_DDR3_0_CK_N;
  assign DDR3_ck_p[0] = Memory_DDR3_0_CK_P;
  assign DDR3_cke[0] = Memory_DDR3_0_CKE;
  assign DDR3_cs_n[0] = Memory_DDR3_0_CS_N;
  assign DDR3_dm[3:0] = Memory_DDR3_0_DM;
  assign DDR3_odt[0] = Memory_DDR3_0_ODT;
  assign DDR3_ras_n = Memory_DDR3_0_RAS_N;
  assign DDR3_reset_n = Memory_DDR3_0_RESET_N;
  assign DDR3_we_n = Memory_DDR3_0_WE_N;
  assign M00_AXI_0_araddr[31:0] = Memory_M00_AXI_0_ARADDR;
  assign M00_AXI_0_arburst[1:0] = Memory_M00_AXI_0_ARBURST;
  assign M00_AXI_0_arcache[3:0] = Memory_M00_AXI_0_ARCACHE;
  assign M00_AXI_0_arid[0] = Memory_M00_AXI_0_ARID;
  assign M00_AXI_0_arlen[7:0] = Memory_M00_AXI_0_ARLEN;
  assign M00_AXI_0_arlock[0] = Memory_M00_AXI_0_ARLOCK;
  assign M00_AXI_0_arprot[2:0] = Memory_M00_AXI_0_ARPROT;
  assign M00_AXI_0_arqos[3:0] = Memory_M00_AXI_0_ARQOS;
  assign M00_AXI_0_arregion[3:0] = Memory_M00_AXI_0_ARREGION;
  assign M00_AXI_0_arsize[2:0] = Memory_M00_AXI_0_ARSIZE;
  assign M00_AXI_0_arvalid[0] = Memory_M00_AXI_0_ARVALID;
  assign M00_AXI_0_awaddr[31:0] = Memory_M00_AXI_0_AWADDR;
  assign M00_AXI_0_awburst[1:0] = Memory_M00_AXI_0_AWBURST;
  assign M00_AXI_0_awcache[3:0] = Memory_M00_AXI_0_AWCACHE;
  assign M00_AXI_0_awid[0] = Memory_M00_AXI_0_AWID;
  assign M00_AXI_0_awlen[7:0] = Memory_M00_AXI_0_AWLEN;
  assign M00_AXI_0_awlock[0] = Memory_M00_AXI_0_AWLOCK;
  assign M00_AXI_0_awprot[2:0] = Memory_M00_AXI_0_AWPROT;
  assign M00_AXI_0_awqos[3:0] = Memory_M00_AXI_0_AWQOS;
  assign M00_AXI_0_awregion[3:0] = Memory_M00_AXI_0_AWREGION;
  assign M00_AXI_0_awsize[2:0] = Memory_M00_AXI_0_AWSIZE;
  assign M00_AXI_0_awuser[3:0] = Memory_M00_AXI_0_AWUSER;
  assign M00_AXI_0_awvalid[0] = Memory_M00_AXI_0_AWVALID;
  assign M00_AXI_0_bready[0] = Memory_M00_AXI_0_BREADY;
  assign M00_AXI_0_rready[0] = Memory_M00_AXI_0_RREADY;
  assign M00_AXI_0_wdata[255:0] = Memory_M00_AXI_0_WDATA;
  assign M00_AXI_0_wlast[0] = Memory_M00_AXI_0_WLAST;
  assign M00_AXI_0_wstrb[31:0] = Memory_M00_AXI_0_WSTRB;
  assign M00_AXI_0_wvalid[0] = Memory_M00_AXI_0_WVALID;
  assign Memory_M00_AXI_0_ARREADY = M00_AXI_0_arready[0];
  assign Memory_M00_AXI_0_AWREADY = M00_AXI_0_awready[0];
  assign Memory_M00_AXI_0_BID = M00_AXI_0_bid[0];
  assign Memory_M00_AXI_0_BRESP = M00_AXI_0_bresp[1:0];
  assign Memory_M00_AXI_0_BVALID = M00_AXI_0_bvalid[0];
  assign Memory_M00_AXI_0_RDATA = M00_AXI_0_rdata[255:0];
  assign Memory_M00_AXI_0_RID = M00_AXI_0_rid[0];
  assign Memory_M00_AXI_0_RLAST = M00_AXI_0_rlast[0];
  assign Memory_M00_AXI_0_RRESP = M00_AXI_0_rresp[1:0];
  assign Memory_M00_AXI_0_RVALID = M00_AXI_0_rvalid[0];
  assign Memory_M00_AXI_0_WREADY = M00_AXI_0_wready[0];
  assign S01_ARESETN_0_1 = S01_ARESETN;
  assign S_AXIS_S2MM_0_1_TDATA = S_AXIS_S2MM_tdata[127:0];
  assign S_AXIS_S2MM_0_1_TKEEP = S_AXIS_S2MM_tkeep[15:0];
  assign S_AXIS_S2MM_0_1_TLAST = S_AXIS_S2MM_tlast;
  assign S_AXIS_S2MM_0_1_TVALID = S_AXIS_S2MM_tvalid;
  assign S_AXIS_S2MM_CMD_0_1_TDATA = S_AXIS_S2MM_CMD_tdata[71:0];
  assign S_AXIS_S2MM_CMD_0_1_TVALID = S_AXIS_S2MM_CMD_tvalid;
  assign S_AXIS_S2MM_CMD_tready = S_AXIS_S2MM_CMD_0_1_TREADY;
  assign S_AXIS_S2MM_tready = S_AXIS_S2MM_0_1_TREADY;
  assign S_AXI_0_1_ARADDR = S_AXI_0_araddr[27:0];
  assign S_AXI_0_1_ARBURST = S_AXI_0_arburst[1:0];
  assign S_AXI_0_1_ARCACHE = S_AXI_0_arcache[3:0];
  assign S_AXI_0_1_ARID = S_AXI_0_arid[0];
  assign S_AXI_0_1_ARLEN = S_AXI_0_arlen[7:0];
  assign S_AXI_0_1_ARLOCK = S_AXI_0_arlock;
  assign S_AXI_0_1_ARPROT = S_AXI_0_arprot[2:0];
  assign S_AXI_0_1_ARQOS = S_AXI_0_arqos[3:0];
  assign S_AXI_0_1_ARSIZE = S_AXI_0_arsize[2:0];
  assign S_AXI_0_1_ARVALID = S_AXI_0_arvalid;
  assign S_AXI_0_1_AWADDR = S_AXI_0_awaddr[27:0];
  assign S_AXI_0_1_AWBURST = S_AXI_0_awburst[1:0];
  assign S_AXI_0_1_AWCACHE = S_AXI_0_awcache[3:0];
  assign S_AXI_0_1_AWID = S_AXI_0_awid[0];
  assign S_AXI_0_1_AWLEN = S_AXI_0_awlen[7:0];
  assign S_AXI_0_1_AWLOCK = S_AXI_0_awlock;
  assign S_AXI_0_1_AWPROT = S_AXI_0_awprot[2:0];
  assign S_AXI_0_1_AWQOS = S_AXI_0_awqos[3:0];
  assign S_AXI_0_1_AWSIZE = S_AXI_0_awsize[2:0];
  assign S_AXI_0_1_AWVALID = S_AXI_0_awvalid;
  assign S_AXI_0_1_BREADY = S_AXI_0_bready;
  assign S_AXI_0_1_RREADY = S_AXI_0_rready;
  assign S_AXI_0_1_WDATA = S_AXI_0_wdata[255:0];
  assign S_AXI_0_1_WLAST = S_AXI_0_wlast;
  assign S_AXI_0_1_WSTRB = S_AXI_0_wstrb[31:0];
  assign S_AXI_0_1_WVALID = S_AXI_0_wvalid;
  assign S_AXI_0_arready = S_AXI_0_1_ARREADY;
  assign S_AXI_0_awready = S_AXI_0_1_AWREADY;
  assign S_AXI_0_bid[0] = S_AXI_0_1_BID;
  assign S_AXI_0_bresp[1:0] = S_AXI_0_1_BRESP;
  assign S_AXI_0_bvalid = S_AXI_0_1_BVALID;
  assign S_AXI_0_rdata[255:0] = S_AXI_0_1_RDATA;
  assign S_AXI_0_rid[0] = S_AXI_0_1_RID;
  assign S_AXI_0_rlast = S_AXI_0_1_RLAST;
  assign S_AXI_0_rresp[1:0] = S_AXI_0_1_RRESP;
  assign S_AXI_0_rvalid = S_AXI_0_1_RVALID;
  assign S_AXI_0_wready = S_AXI_0_1_WREADY;
  assign axi_aclk = xdma_0_axi_aclk;
  assign axi_aresetn = PCIe_axi_aresetn;
  assign gpio2_io_i_0_1 = gpio2_io_i[31:0];
  assign gpio_io_o_0[31:0] = AXI_LITE_IO_gpio_io_o_0;
  assign init_calib_complete_0[0] = Memory_init_calib_complete_0;
  assign pcie_mgt_txn[3:0] = xdma_0_pcie_mgt_txn;
  assign pcie_mgt_txp[3:0] = xdma_0_pcie_mgt_txp;
  assign s2mm_err = Datamover_s2mm_err_0;
  assign s2mm_halt_0_1 = s2mm_halt;
  assign s2mm_wr_xfer_cmplt = Datamover_s2mm_wr_xfer_cmplt_0;
  assign sys_rst_n_0_1 = pcie_perstn;
  assign ui_clk_0 = Memory_ui_clk_0;
  assign ui_clk_sync_rst_0 = Memory_ui_clk_sync_rst_0;
  assign xdma_0_pcie_mgt_rxn = pcie_mgt_rxn[3:0];
  assign xdma_0_pcie_mgt_rxp = pcie_mgt_rxp[3:0];
  AXI_LITE_IO_imp_1879I2S AXI_LITE_IO
       (.AXI_STR_TXD_0_tdata(AXI_LITE_IO_AXI_STR_TXD_0_TDATA),
        .AXI_STR_TXD_0_tlast(AXI_LITE_IO_AXI_STR_TXD_0_TLAST),
        .AXI_STR_TXD_0_tready(AXI_LITE_IO_AXI_STR_TXD_0_TREADY),
        .AXI_STR_TXD_0_tvalid(AXI_LITE_IO_AXI_STR_TXD_0_TVALID),
        .S00_AXI_araddr(PCIe_M_AXI_LITE_ARADDR),
        .S00_AXI_arprot(PCIe_M_AXI_LITE_ARPROT),
        .S00_AXI_arready(PCIe_M_AXI_LITE_ARREADY),
        .S00_AXI_arvalid(PCIe_M_AXI_LITE_ARVALID),
        .S00_AXI_awaddr(PCIe_M_AXI_LITE_AWADDR),
        .S00_AXI_awprot(PCIe_M_AXI_LITE_AWPROT),
        .S00_AXI_awready(PCIe_M_AXI_LITE_AWREADY),
        .S00_AXI_awvalid(PCIe_M_AXI_LITE_AWVALID),
        .S00_AXI_bready(PCIe_M_AXI_LITE_BREADY),
        .S00_AXI_bresp(PCIe_M_AXI_LITE_BRESP),
        .S00_AXI_bvalid(PCIe_M_AXI_LITE_BVALID),
        .S00_AXI_rdata(PCIe_M_AXI_LITE_RDATA),
        .S00_AXI_rready(PCIe_M_AXI_LITE_RREADY),
        .S00_AXI_rresp(PCIe_M_AXI_LITE_RRESP),
        .S00_AXI_rvalid(PCIe_M_AXI_LITE_RVALID),
        .S00_AXI_wdata(PCIe_M_AXI_LITE_WDATA),
        .S00_AXI_wready(PCIe_M_AXI_LITE_WREADY),
        .S00_AXI_wstrb(PCIe_M_AXI_LITE_WSTRB),
        .S00_AXI_wvalid(PCIe_M_AXI_LITE_WVALID),
        .axi_aclk(xdma_0_axi_aclk),
        .axi_resetn(PCIe_axi_aresetn),
        .gpio2_io_i(gpio2_io_i_0_1),
        .gpio_io_o_0(AXI_LITE_IO_gpio_io_o_0));
  Datamover_imp_6RC1MV Datamover
       (.M_AXI_S2MM_awaddr(Datamover_M_AXI_S2MM_AWADDR),
        .M_AXI_S2MM_awburst(Datamover_M_AXI_S2MM_AWBURST),
        .M_AXI_S2MM_awcache(Datamover_M_AXI_S2MM_AWCACHE),
        .M_AXI_S2MM_awlen(Datamover_M_AXI_S2MM_AWLEN),
        .M_AXI_S2MM_awprot(Datamover_M_AXI_S2MM_AWPROT),
        .M_AXI_S2MM_awready(Datamover_M_AXI_S2MM_AWREADY),
        .M_AXI_S2MM_awsize(Datamover_M_AXI_S2MM_AWSIZE),
        .M_AXI_S2MM_awuser(Datamover_M_AXI_S2MM_AWUSER),
        .M_AXI_S2MM_awvalid(Datamover_M_AXI_S2MM_AWVALID),
        .M_AXI_S2MM_bready(Datamover_M_AXI_S2MM_BREADY),
        .M_AXI_S2MM_bresp(Datamover_M_AXI_S2MM_BRESP),
        .M_AXI_S2MM_bvalid(Datamover_M_AXI_S2MM_BVALID),
        .M_AXI_S2MM_wdata(Datamover_M_AXI_S2MM_WDATA),
        .M_AXI_S2MM_wlast(Datamover_M_AXI_S2MM_WLAST),
        .M_AXI_S2MM_wready(Datamover_M_AXI_S2MM_WREADY),
        .M_AXI_S2MM_wstrb(Datamover_M_AXI_S2MM_WSTRB),
        .M_AXI_S2MM_wvalid(Datamover_M_AXI_S2MM_WVALID),
        .S_AXIS_S2MM_CMD_tdata(S_AXIS_S2MM_CMD_0_1_TDATA),
        .S_AXIS_S2MM_CMD_tready(S_AXIS_S2MM_CMD_0_1_TREADY),
        .S_AXIS_S2MM_CMD_tvalid(S_AXIS_S2MM_CMD_0_1_TVALID),
        .S_AXIS_S2MM_tdata(S_AXIS_S2MM_0_1_TDATA),
        .S_AXIS_S2MM_tkeep(S_AXIS_S2MM_0_1_TKEEP),
        .S_AXIS_S2MM_tlast(S_AXIS_S2MM_0_1_TLAST),
        .S_AXIS_S2MM_tready(S_AXIS_S2MM_0_1_TREADY),
        .S_AXIS_S2MM_tvalid(S_AXIS_S2MM_0_1_TVALID),
        .axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(S01_ARESETN_0_1),
        .s2mm_err(Datamover_s2mm_err_0),
        .s2mm_halt(s2mm_halt_0_1),
        .s2mm_wr_xfer_cmplt(Datamover_s2mm_wr_xfer_cmplt_0));
  Memory_imp_BJ9R2P Memory
       (.ACLK(xdma_0_axi_aclk),
        .DDR3_addr(Memory_DDR3_0_ADDR),
        .DDR3_ba(Memory_DDR3_0_BA),
        .DDR3_cas_n(Memory_DDR3_0_CAS_N),
        .DDR3_ck_n(Memory_DDR3_0_CK_N),
        .DDR3_ck_p(Memory_DDR3_0_CK_P),
        .DDR3_cke(Memory_DDR3_0_CKE),
        .DDR3_cs_n(Memory_DDR3_0_CS_N),
        .DDR3_dm(Memory_DDR3_0_DM),
        .DDR3_dq(DDR3_dq[31:0]),
        .DDR3_dqs_n(DDR3_dqs_n[3:0]),
        .DDR3_dqs_p(DDR3_dqs_p[3:0]),
        .DDR3_odt(Memory_DDR3_0_ODT),
        .DDR3_ras_n(Memory_DDR3_0_RAS_N),
        .DDR3_reset_n(Memory_DDR3_0_RESET_N),
        .DDR3_we_n(Memory_DDR3_0_WE_N),
        .M00_AXI_0_araddr(Memory_M00_AXI_0_ARADDR),
        .M00_AXI_0_arburst(Memory_M00_AXI_0_ARBURST),
        .M00_AXI_0_arcache(Memory_M00_AXI_0_ARCACHE),
        .M00_AXI_0_arid(Memory_M00_AXI_0_ARID),
        .M00_AXI_0_arlen(Memory_M00_AXI_0_ARLEN),
        .M00_AXI_0_arlock(Memory_M00_AXI_0_ARLOCK),
        .M00_AXI_0_arprot(Memory_M00_AXI_0_ARPROT),
        .M00_AXI_0_arqos(Memory_M00_AXI_0_ARQOS),
        .M00_AXI_0_arready(Memory_M00_AXI_0_ARREADY),
        .M00_AXI_0_arregion(Memory_M00_AXI_0_ARREGION),
        .M00_AXI_0_arsize(Memory_M00_AXI_0_ARSIZE),
        .M00_AXI_0_arvalid(Memory_M00_AXI_0_ARVALID),
        .M00_AXI_0_awaddr(Memory_M00_AXI_0_AWADDR),
        .M00_AXI_0_awburst(Memory_M00_AXI_0_AWBURST),
        .M00_AXI_0_awcache(Memory_M00_AXI_0_AWCACHE),
        .M00_AXI_0_awid(Memory_M00_AXI_0_AWID),
        .M00_AXI_0_awlen(Memory_M00_AXI_0_AWLEN),
        .M00_AXI_0_awlock(Memory_M00_AXI_0_AWLOCK),
        .M00_AXI_0_awprot(Memory_M00_AXI_0_AWPROT),
        .M00_AXI_0_awqos(Memory_M00_AXI_0_AWQOS),
        .M00_AXI_0_awready(Memory_M00_AXI_0_AWREADY),
        .M00_AXI_0_awregion(Memory_M00_AXI_0_AWREGION),
        .M00_AXI_0_awsize(Memory_M00_AXI_0_AWSIZE),
        .M00_AXI_0_awuser(Memory_M00_AXI_0_AWUSER),
        .M00_AXI_0_awvalid(Memory_M00_AXI_0_AWVALID),
        .M00_AXI_0_bid(Memory_M00_AXI_0_BID),
        .M00_AXI_0_bready(Memory_M00_AXI_0_BREADY),
        .M00_AXI_0_bresp(Memory_M00_AXI_0_BRESP),
        .M00_AXI_0_bvalid(Memory_M00_AXI_0_BVALID),
        .M00_AXI_0_rdata(Memory_M00_AXI_0_RDATA),
        .M00_AXI_0_rid(Memory_M00_AXI_0_RID),
        .M00_AXI_0_rlast(Memory_M00_AXI_0_RLAST),
        .M00_AXI_0_rready(Memory_M00_AXI_0_RREADY),
        .M00_AXI_0_rresp(Memory_M00_AXI_0_RRESP),
        .M00_AXI_0_rvalid(Memory_M00_AXI_0_RVALID),
        .M00_AXI_0_wdata(Memory_M00_AXI_0_WDATA),
        .M00_AXI_0_wlast(Memory_M00_AXI_0_WLAST),
        .M00_AXI_0_wready(Memory_M00_AXI_0_WREADY),
        .M00_AXI_0_wstrb(Memory_M00_AXI_0_WSTRB),
        .M00_AXI_0_wvalid(Memory_M00_AXI_0_WVALID),
        .S00_ARESETN(PCIe_axi_aresetn),
        .S00_AXI_araddr(xdma_0_M_AXI_ARADDR),
        .S00_AXI_arburst(xdma_0_M_AXI_ARBURST),
        .S00_AXI_arcache(xdma_0_M_AXI_ARCACHE),
        .S00_AXI_arlen(xdma_0_M_AXI_ARLEN),
        .S00_AXI_arlock(xdma_0_M_AXI_ARLOCK),
        .S00_AXI_arprot(xdma_0_M_AXI_ARPROT),
        .S00_AXI_arqos(xdma_0_M_AXI_ARQOS),
        .S00_AXI_arready(xdma_0_M_AXI_ARREADY),
        .S00_AXI_arsize(xdma_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(xdma_0_M_AXI_ARVALID),
        .S00_AXI_rdata(xdma_0_M_AXI_RDATA),
        .S00_AXI_rlast(xdma_0_M_AXI_RLAST),
        .S00_AXI_rready(xdma_0_M_AXI_RREADY),
        .S00_AXI_rresp(xdma_0_M_AXI_RRESP),
        .S00_AXI_rvalid(xdma_0_M_AXI_RVALID),
        .S01_AXI_awaddr(Datamover_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(Datamover_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(Datamover_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(Datamover_M_AXI_S2MM_AWLEN),
        .S01_AXI_awprot(Datamover_M_AXI_S2MM_AWPROT),
        .S01_AXI_awready(Datamover_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(Datamover_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awuser(Datamover_M_AXI_S2MM_AWUSER),
        .S01_AXI_awvalid(Datamover_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(Datamover_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(Datamover_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(Datamover_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(Datamover_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(Datamover_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(Datamover_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(Datamover_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(Datamover_M_AXI_S2MM_WVALID),
        .S_AXI_0_araddr(S_AXI_0_1_ARADDR),
        .S_AXI_0_arburst(S_AXI_0_1_ARBURST),
        .S_AXI_0_arcache(S_AXI_0_1_ARCACHE),
        .S_AXI_0_arid(S_AXI_0_1_ARID),
        .S_AXI_0_arlen(S_AXI_0_1_ARLEN),
        .S_AXI_0_arlock(S_AXI_0_1_ARLOCK),
        .S_AXI_0_arprot(S_AXI_0_1_ARPROT),
        .S_AXI_0_arqos(S_AXI_0_1_ARQOS),
        .S_AXI_0_arready(S_AXI_0_1_ARREADY),
        .S_AXI_0_arsize(S_AXI_0_1_ARSIZE),
        .S_AXI_0_arvalid(S_AXI_0_1_ARVALID),
        .S_AXI_0_awaddr(S_AXI_0_1_AWADDR),
        .S_AXI_0_awburst(S_AXI_0_1_AWBURST),
        .S_AXI_0_awcache(S_AXI_0_1_AWCACHE),
        .S_AXI_0_awid(S_AXI_0_1_AWID),
        .S_AXI_0_awlen(S_AXI_0_1_AWLEN),
        .S_AXI_0_awlock(S_AXI_0_1_AWLOCK),
        .S_AXI_0_awprot(S_AXI_0_1_AWPROT),
        .S_AXI_0_awqos(S_AXI_0_1_AWQOS),
        .S_AXI_0_awready(S_AXI_0_1_AWREADY),
        .S_AXI_0_awsize(S_AXI_0_1_AWSIZE),
        .S_AXI_0_awvalid(S_AXI_0_1_AWVALID),
        .S_AXI_0_bid(S_AXI_0_1_BID),
        .S_AXI_0_bready(S_AXI_0_1_BREADY),
        .S_AXI_0_bresp(S_AXI_0_1_BRESP),
        .S_AXI_0_bvalid(S_AXI_0_1_BVALID),
        .S_AXI_0_rdata(S_AXI_0_1_RDATA),
        .S_AXI_0_rid(S_AXI_0_1_RID),
        .S_AXI_0_rlast(S_AXI_0_1_RLAST),
        .S_AXI_0_rready(S_AXI_0_1_RREADY),
        .S_AXI_0_rresp(S_AXI_0_1_RRESP),
        .S_AXI_0_rvalid(S_AXI_0_1_RVALID),
        .S_AXI_0_wdata(S_AXI_0_1_WDATA),
        .S_AXI_0_wlast(S_AXI_0_1_WLAST),
        .S_AXI_0_wready(S_AXI_0_1_WREADY),
        .S_AXI_0_wstrb(S_AXI_0_1_WSTRB),
        .S_AXI_0_wvalid(S_AXI_0_1_WVALID),
        .init_calib_complete_0(Memory_init_calib_complete_0),
        .ui_clk_0(Memory_ui_clk_0),
        .ui_clk_sync_rst_0(Memory_ui_clk_sync_rst_0));
  PCIe_imp_ZJ4W1S PCIe
       (.M_AXI_LITE_araddr(PCIe_M_AXI_LITE_ARADDR),
        .M_AXI_LITE_arprot(PCIe_M_AXI_LITE_ARPROT),
        .M_AXI_LITE_arready(PCIe_M_AXI_LITE_ARREADY),
        .M_AXI_LITE_arvalid(PCIe_M_AXI_LITE_ARVALID),
        .M_AXI_LITE_awaddr(PCIe_M_AXI_LITE_AWADDR),
        .M_AXI_LITE_awprot(PCIe_M_AXI_LITE_AWPROT),
        .M_AXI_LITE_awready(PCIe_M_AXI_LITE_AWREADY),
        .M_AXI_LITE_awvalid(PCIe_M_AXI_LITE_AWVALID),
        .M_AXI_LITE_bready(PCIe_M_AXI_LITE_BREADY),
        .M_AXI_LITE_bresp(PCIe_M_AXI_LITE_BRESP),
        .M_AXI_LITE_bvalid(PCIe_M_AXI_LITE_BVALID),
        .M_AXI_LITE_rdata(PCIe_M_AXI_LITE_RDATA),
        .M_AXI_LITE_rready(PCIe_M_AXI_LITE_RREADY),
        .M_AXI_LITE_rresp(PCIe_M_AXI_LITE_RRESP),
        .M_AXI_LITE_rvalid(PCIe_M_AXI_LITE_RVALID),
        .M_AXI_LITE_wdata(PCIe_M_AXI_LITE_WDATA),
        .M_AXI_LITE_wready(PCIe_M_AXI_LITE_WREADY),
        .M_AXI_LITE_wstrb(PCIe_M_AXI_LITE_WSTRB),
        .M_AXI_LITE_wvalid(PCIe_M_AXI_LITE_WVALID),
        .M_AXI_araddr(xdma_0_M_AXI_ARADDR),
        .M_AXI_arburst(xdma_0_M_AXI_ARBURST),
        .M_AXI_arcache(xdma_0_M_AXI_ARCACHE),
        .M_AXI_arlen(xdma_0_M_AXI_ARLEN),
        .M_AXI_arlock(xdma_0_M_AXI_ARLOCK),
        .M_AXI_arprot(xdma_0_M_AXI_ARPROT),
        .M_AXI_arqos(xdma_0_M_AXI_ARQOS),
        .M_AXI_arready(xdma_0_M_AXI_ARREADY),
        .M_AXI_arsize(xdma_0_M_AXI_ARSIZE),
        .M_AXI_arvalid(xdma_0_M_AXI_ARVALID),
        .M_AXI_rdata(xdma_0_M_AXI_RDATA),
        .M_AXI_rlast(xdma_0_M_AXI_RLAST),
        .M_AXI_rready(xdma_0_M_AXI_RREADY),
        .M_AXI_rresp(xdma_0_M_AXI_RRESP),
        .M_AXI_rvalid(xdma_0_M_AXI_RVALID),
        .axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(PCIe_axi_aresetn),
        .pcie_clk_n(CLK_IN_D_0_1_CLK_N),
        .pcie_clk_p(CLK_IN_D_0_1_CLK_P),
        .pcie_mgt_rxn(xdma_0_pcie_mgt_rxn),
        .pcie_mgt_rxp(xdma_0_pcie_mgt_rxp),
        .pcie_mgt_txn(xdma_0_pcie_mgt_txn),
        .pcie_mgt_txp(xdma_0_pcie_mgt_txp),
        .pcie_perstn(sys_rst_n_0_1));
endmodule
