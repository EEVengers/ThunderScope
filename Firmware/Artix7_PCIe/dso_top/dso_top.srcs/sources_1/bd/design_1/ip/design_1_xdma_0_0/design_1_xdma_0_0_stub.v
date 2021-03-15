// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Mar 15 11:13:56 2021
// Host        : DESKTOP-J72MK93 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_xdma_0_0 -prefix
//               design_1_xdma_0_0_ design_1_xdma_0_0_stub.v
// Design      : design_1_xdma_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "design_1_xdma_0_0_core_top,Vivado 2020.1" *)
module design_1_xdma_0_0(sys_clk, sys_rst_n, user_lnk_up, pci_exp_txp, 
  pci_exp_txn, pci_exp_rxp, pci_exp_rxn, axi_aclk, axi_aresetn, usr_irq_req, usr_irq_ack, 
  msi_enable, msi_vector_width, m_axi_awready, m_axi_wready, m_axi_bid, m_axi_bresp, 
  m_axi_bvalid, m_axi_arready, m_axi_rid, m_axi_rdata, m_axi_rresp, m_axi_rlast, m_axi_rvalid, 
  m_axi_awid, m_axi_awaddr, m_axi_awlen, m_axi_awsize, m_axi_awburst, m_axi_awprot, 
  m_axi_awvalid, m_axi_awlock, m_axi_awcache, m_axi_wdata, m_axi_wstrb, m_axi_wlast, 
  m_axi_wvalid, m_axi_bready, m_axi_arid, m_axi_araddr, m_axi_arlen, m_axi_arsize, 
  m_axi_arburst, m_axi_arprot, m_axi_arvalid, m_axi_arlock, m_axi_arcache, m_axi_rready, 
  m_axil_awaddr, m_axil_awprot, m_axil_awvalid, m_axil_awready, m_axil_wdata, m_axil_wstrb, 
  m_axil_wvalid, m_axil_wready, m_axil_bvalid, m_axil_bresp, m_axil_bready, m_axil_araddr, 
  m_axil_arprot, m_axil_arvalid, m_axil_arready, m_axil_rdata, m_axil_rresp, m_axil_rvalid, 
  m_axil_rready)
/* synthesis syn_black_box black_box_pad_pin="sys_clk,sys_rst_n,user_lnk_up,pci_exp_txp[3:0],pci_exp_txn[3:0],pci_exp_rxp[3:0],pci_exp_rxn[3:0],axi_aclk,axi_aresetn,usr_irq_req[0:0],usr_irq_ack[0:0],msi_enable,msi_vector_width[2:0],m_axi_awready,m_axi_wready,m_axi_bid[3:0],m_axi_bresp[1:0],m_axi_bvalid,m_axi_arready,m_axi_rid[3:0],m_axi_rdata[127:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,m_axi_awid[3:0],m_axi_awaddr[63:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awprot[2:0],m_axi_awvalid,m_axi_awlock,m_axi_awcache[3:0],m_axi_wdata[127:0],m_axi_wstrb[15:0],m_axi_wlast,m_axi_wvalid,m_axi_bready,m_axi_arid[3:0],m_axi_araddr[63:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arprot[2:0],m_axi_arvalid,m_axi_arlock,m_axi_arcache[3:0],m_axi_rready,m_axil_awaddr[31:0],m_axil_awprot[2:0],m_axil_awvalid,m_axil_awready,m_axil_wdata[31:0],m_axil_wstrb[3:0],m_axil_wvalid,m_axil_wready,m_axil_bvalid,m_axil_bresp[1:0],m_axil_bready,m_axil_araddr[31:0],m_axil_arprot[2:0],m_axil_arvalid,m_axil_arready,m_axil_rdata[31:0],m_axil_rresp[1:0],m_axil_rvalid,m_axil_rready" */;
  input sys_clk;
  input sys_rst_n;
  output user_lnk_up;
  output [3:0]pci_exp_txp;
  output [3:0]pci_exp_txn;
  input [3:0]pci_exp_rxp;
  input [3:0]pci_exp_rxn;
  output axi_aclk;
  output axi_aresetn;
  input [0:0]usr_irq_req;
  output [0:0]usr_irq_ack;
  output msi_enable;
  output [2:0]msi_vector_width;
  input m_axi_awready;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output [3:0]m_axi_awid;
  output [63:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  output m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [63:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  output m_axi_arlock;
  output [3:0]m_axi_arcache;
  output m_axi_rready;
  output [31:0]m_axil_awaddr;
  output [2:0]m_axil_awprot;
  output m_axil_awvalid;
  input m_axil_awready;
  output [31:0]m_axil_wdata;
  output [3:0]m_axil_wstrb;
  output m_axil_wvalid;
  input m_axil_wready;
  input m_axil_bvalid;
  input [1:0]m_axil_bresp;
  output m_axil_bready;
  output [31:0]m_axil_araddr;
  output [2:0]m_axil_arprot;
  output m_axil_arvalid;
  input m_axil_arready;
  input [31:0]m_axil_rdata;
  input [1:0]m_axil_rresp;
  input m_axil_rvalid;
  output m_axil_rready;
endmodule
