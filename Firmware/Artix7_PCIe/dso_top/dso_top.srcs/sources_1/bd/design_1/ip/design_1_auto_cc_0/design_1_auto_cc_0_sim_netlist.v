// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Mar 15 11:10:25 2021
// Host        : DESKTOP-J72MK93 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_auto_cc_0 -prefix
//               design_1_auto_cc_0_ design_1_auto_cc_0_sim_netlist.v
// Design      : design_1_auto_cc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_ARADDR_RIGHT = "30" *) (* C_ARADDR_WIDTH = "29" *) (* C_ARBURST_RIGHT = "17" *) 
(* C_ARBURST_WIDTH = "2" *) (* C_ARCACHE_RIGHT = "12" *) (* C_ARCACHE_WIDTH = "4" *) 
(* C_ARID_RIGHT = "59" *) (* C_ARID_WIDTH = "5" *) (* C_ARLEN_RIGHT = "22" *) 
(* C_ARLEN_WIDTH = "8" *) (* C_ARLOCK_RIGHT = "16" *) (* C_ARLOCK_WIDTH = "1" *) 
(* C_ARPROT_RIGHT = "9" *) (* C_ARPROT_WIDTH = "3" *) (* C_ARQOS_RIGHT = "1" *) 
(* C_ARQOS_WIDTH = "4" *) (* C_ARREGION_RIGHT = "5" *) (* C_ARREGION_WIDTH = "4" *) 
(* C_ARSIZE_RIGHT = "19" *) (* C_ARSIZE_WIDTH = "3" *) (* C_ARUSER_RIGHT = "0" *) 
(* C_ARUSER_WIDTH = "1" *) (* C_AR_WIDTH = "64" *) (* C_AWADDR_RIGHT = "33" *) 
(* C_AWADDR_WIDTH = "29" *) (* C_AWBURST_RIGHT = "20" *) (* C_AWBURST_WIDTH = "2" *) 
(* C_AWCACHE_RIGHT = "15" *) (* C_AWCACHE_WIDTH = "4" *) (* C_AWID_RIGHT = "62" *) 
(* C_AWID_WIDTH = "5" *) (* C_AWLEN_RIGHT = "25" *) (* C_AWLEN_WIDTH = "8" *) 
(* C_AWLOCK_RIGHT = "19" *) (* C_AWLOCK_WIDTH = "1" *) (* C_AWPROT_RIGHT = "12" *) 
(* C_AWPROT_WIDTH = "3" *) (* C_AWQOS_RIGHT = "4" *) (* C_AWQOS_WIDTH = "4" *) 
(* C_AWREGION_RIGHT = "8" *) (* C_AWREGION_WIDTH = "4" *) (* C_AWSIZE_RIGHT = "22" *) 
(* C_AWSIZE_WIDTH = "3" *) (* C_AWUSER_RIGHT = "0" *) (* C_AWUSER_WIDTH = "4" *) 
(* C_AW_WIDTH = "67" *) (* C_AXI_ADDR_WIDTH = "29" *) (* C_AXI_ARUSER_WIDTH = "1" *) 
(* C_AXI_AWUSER_WIDTH = "4" *) (* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "128" *) 
(* C_AXI_ID_WIDTH = "5" *) (* C_AXI_IS_ACLK_ASYNC = "1" *) (* C_AXI_PROTOCOL = "0" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "1" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_BID_RIGHT = "3" *) 
(* C_BID_WIDTH = "5" *) (* C_BRESP_RIGHT = "1" *) (* C_BRESP_WIDTH = "2" *) 
(* C_BUSER_RIGHT = "0" *) (* C_BUSER_WIDTH = "1" *) (* C_B_WIDTH = "8" *) 
(* C_FAMILY = "artix7" *) (* C_FIFO_AR_WIDTH = "64" *) (* C_FIFO_AW_WIDTH = "67" *) 
(* C_FIFO_B_WIDTH = "8" *) (* C_FIFO_R_WIDTH = "137" *) (* C_FIFO_W_WIDTH = "146" *) 
(* C_M_AXI_ACLK_RATIO = "2" *) (* C_RDATA_RIGHT = "4" *) (* C_RDATA_WIDTH = "128" *) 
(* C_RID_RIGHT = "132" *) (* C_RID_WIDTH = "5" *) (* C_RLAST_RIGHT = "1" *) 
(* C_RLAST_WIDTH = "1" *) (* C_RRESP_RIGHT = "2" *) (* C_RRESP_WIDTH = "2" *) 
(* C_RUSER_RIGHT = "0" *) (* C_RUSER_WIDTH = "1" *) (* C_R_WIDTH = "137" *) 
(* C_SYNCHRONIZER_STAGE = "3" *) (* C_S_AXI_ACLK_RATIO = "1" *) (* C_WDATA_RIGHT = "18" *) 
(* C_WDATA_WIDTH = "128" *) (* C_WID_RIGHT = "146" *) (* C_WID_WIDTH = "0" *) 
(* C_WLAST_RIGHT = "1" *) (* C_WLAST_WIDTH = "1" *) (* C_WSTRB_RIGHT = "2" *) 
(* C_WSTRB_WIDTH = "16" *) (* C_WUSER_RIGHT = "0" *) (* C_WUSER_WIDTH = "1" *) 
(* C_W_WIDTH = "146" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_ACLK_RATIO = "2" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_FULLY_REG = "1" *) (* P_LIGHT_WT = "0" *) (* P_LUTRAM_ASYNC = "12" *) 
(* P_ROUNDING_OFFSET = "0" *) (* P_SI_LT_MI = "1'b1" *) 
module design_1_auto_cc_0_axi_clock_converter_v2_1_20_axi_clock_converter
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  (* keep = "true" *) input s_axi_aclk;
  (* keep = "true" *) input s_axi_aresetn;
  input [4:0]s_axi_awid;
  input [28:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [4:0]s_axi_wid;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [4:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [4:0]s_axi_arid;
  input [28:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [4:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  (* keep = "true" *) input m_axi_aclk;
  (* keep = "true" *) input m_axi_aresetn;
  output [4:0]m_axi_awid;
  output [28:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [4:0]m_axi_wid;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [4:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [4:0]m_axi_arid;
  output [28:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [4:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire \gen_clock_conv.async_conv_reset_n ;
  (* RTL_KEEP = "true" *) wire m_axi_aclk;
  wire [28:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  (* RTL_KEEP = "true" *) wire m_axi_aresetn;
  wire [4:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [2:0]m_axi_arsize;
  wire [0:0]m_axi_aruser;
  wire m_axi_arvalid;
  wire [28:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [4:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire [3:0]m_axi_awuser;
  wire m_axi_awvalid;
  wire [4:0]m_axi_bid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [127:0]m_axi_rdata;
  wire [4:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire [127:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [15:0]m_axi_wstrb;
  wire [0:0]m_axi_wuser;
  wire m_axi_wvalid;
  (* RTL_KEEP = "true" *) wire s_axi_aclk;
  wire [28:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  (* RTL_KEEP = "true" *) wire s_axi_aresetn;
  wire [4:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [28:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [4:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [3:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire [4:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_buser;
  wire s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [4:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_ruser;
  wire s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire [0:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_almost_empty_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_almost_full_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_dbiterr_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_overflow_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_prog_empty_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_prog_full_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_sbiterr_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_underflow_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_dbiterr_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_overflow_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_prog_empty_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_prog_full_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_sbiterr_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_underflow_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_dbiterr_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_overflow_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_prog_empty_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_prog_full_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_sbiterr_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_underflow_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_dbiterr_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_overflow_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_prog_empty_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_prog_full_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_sbiterr_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_underflow_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_dbiterr_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_overflow_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_prog_empty_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_prog_full_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_sbiterr_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_underflow_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_dbiterr_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_overflow_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_prog_empty_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_prog_full_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_sbiterr_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_underflow_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_dbiterr_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_empty_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_full_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tlast_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tvalid_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_overflow_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_prog_empty_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_prog_full_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_rd_rst_busy_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_s_axis_tready_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_sbiterr_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_underflow_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_valid_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_wr_ack_UNCONNECTED ;
  wire \NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_wr_rst_busy_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_wr_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_data_count_UNCONNECTED ;
  wire [17:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_dout_UNCONNECTED ;
  wire [4:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axi_wid_UNCONNECTED ;
  wire [7:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tdata_UNCONNECTED ;
  wire [0:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tdest_UNCONNECTED ;
  wire [0:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tid_UNCONNECTED ;
  wire [0:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tkeep_UNCONNECTED ;
  wire [0:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tstrb_UNCONNECTED ;
  wire [3:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tuser_UNCONNECTED ;
  wire [9:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_rd_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_wr_data_count_UNCONNECTED ;

  assign m_axi_wid[4] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "29" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "4" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "128" *) 
  (* C_AXI_ID_WIDTH = "5" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "18" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "64" *) 
  (* C_DIN_WIDTH_RDCH = "137" *) 
  (* C_DIN_WIDTH_WACH = "67" *) 
  (* C_DIN_WIDTH_WDCH = "146" *) 
  (* C_DIN_WIDTH_WRCH = "8" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "18" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "1" *) 
  (* C_HAS_AXI_AWUSER = "1" *) 
  (* C_HAS_AXI_BUSER = "1" *) 
  (* C_HAS_AXI_ID = "1" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "1" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "1" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "11" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "12" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "2" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx4" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1021" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "13" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "13" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "13" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "13" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "13" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "16" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "16" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "4" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "4" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_auto_cc_0_fifo_generator_v13_2_5 \gen_clock_conv.gen_async_conv.asyncfifo_axi 
       (.almost_empty(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_almost_full_UNCONNECTED ),
        .axi_ar_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_data_count_UNCONNECTED [4:0]),
        .axi_ar_dbiterr(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_dbiterr_UNCONNECTED ),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_overflow_UNCONNECTED ),
        .axi_ar_prog_empty(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_prog_empty_UNCONNECTED ),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_prog_full_UNCONNECTED ),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_rd_data_count_UNCONNECTED [4:0]),
        .axi_ar_sbiterr(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_sbiterr_UNCONNECTED ),
        .axi_ar_underflow(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_underflow_UNCONNECTED ),
        .axi_ar_wr_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_ar_wr_data_count_UNCONNECTED [4:0]),
        .axi_aw_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_data_count_UNCONNECTED [4:0]),
        .axi_aw_dbiterr(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_dbiterr_UNCONNECTED ),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_overflow_UNCONNECTED ),
        .axi_aw_prog_empty(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_prog_empty_UNCONNECTED ),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_prog_full_UNCONNECTED ),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_rd_data_count_UNCONNECTED [4:0]),
        .axi_aw_sbiterr(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_sbiterr_UNCONNECTED ),
        .axi_aw_underflow(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_underflow_UNCONNECTED ),
        .axi_aw_wr_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_aw_wr_data_count_UNCONNECTED [4:0]),
        .axi_b_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_data_count_UNCONNECTED [4:0]),
        .axi_b_dbiterr(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_dbiterr_UNCONNECTED ),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_overflow_UNCONNECTED ),
        .axi_b_prog_empty(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_prog_empty_UNCONNECTED ),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_prog_full_UNCONNECTED ),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_rd_data_count_UNCONNECTED [4:0]),
        .axi_b_sbiterr(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_sbiterr_UNCONNECTED ),
        .axi_b_underflow(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_underflow_UNCONNECTED ),
        .axi_b_wr_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_b_wr_data_count_UNCONNECTED [4:0]),
        .axi_r_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_data_count_UNCONNECTED [4:0]),
        .axi_r_dbiterr(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_dbiterr_UNCONNECTED ),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_overflow_UNCONNECTED ),
        .axi_r_prog_empty(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_prog_empty_UNCONNECTED ),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_prog_full_UNCONNECTED ),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_rd_data_count_UNCONNECTED [4:0]),
        .axi_r_sbiterr(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_sbiterr_UNCONNECTED ),
        .axi_r_underflow(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_underflow_UNCONNECTED ),
        .axi_r_wr_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_r_wr_data_count_UNCONNECTED [4:0]),
        .axi_w_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_data_count_UNCONNECTED [4:0]),
        .axi_w_dbiterr(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_dbiterr_UNCONNECTED ),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_overflow_UNCONNECTED ),
        .axi_w_prog_empty(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_prog_empty_UNCONNECTED ),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_prog_full_UNCONNECTED ),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_rd_data_count_UNCONNECTED [4:0]),
        .axi_w_sbiterr(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_sbiterr_UNCONNECTED ),
        .axi_w_underflow(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_underflow_UNCONNECTED ),
        .axi_w_wr_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axi_w_wr_data_count_UNCONNECTED [4:0]),
        .axis_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_data_count_UNCONNECTED [10:0]),
        .axis_dbiterr(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_dbiterr_UNCONNECTED ),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_overflow_UNCONNECTED ),
        .axis_prog_empty(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_prog_empty_UNCONNECTED ),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_prog_full_UNCONNECTED ),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_rd_data_count_UNCONNECTED [10:0]),
        .axis_sbiterr(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_sbiterr_UNCONNECTED ),
        .axis_underflow(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_underflow_UNCONNECTED ),
        .axis_wr_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_axis_wr_data_count_UNCONNECTED [10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_data_count_UNCONNECTED [9:0]),
        .dbiterr(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_dbiterr_UNCONNECTED ),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_dout_UNCONNECTED [17:0]),
        .empty(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_empty_UNCONNECTED ),
        .full(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_full_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(m_axi_aclk),
        .m_aclk_en(1'b1),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(m_axi_arid),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(m_axi_arregion),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(m_axi_aruser),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(m_axi_awid),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(m_axi_awuser),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(m_axi_buser),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(m_axi_ruser),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axi_wid_UNCONNECTED [4:0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(m_axi_wuser),
        .m_axi_wvalid(m_axi_wvalid),
        .m_axis_tdata(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tdata_UNCONNECTED [7:0]),
        .m_axis_tdest(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tdest_UNCONNECTED [0]),
        .m_axis_tid(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tid_UNCONNECTED [0]),
        .m_axis_tkeep(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tkeep_UNCONNECTED [0]),
        .m_axis_tlast(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tlast_UNCONNECTED ),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tstrb_UNCONNECTED [0]),
        .m_axis_tuser(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tuser_UNCONNECTED [3:0]),
        .m_axis_tvalid(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_m_axis_tvalid_UNCONNECTED ),
        .overflow(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_overflow_UNCONNECTED ),
        .prog_empty(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_prog_empty_UNCONNECTED ),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_prog_full_UNCONNECTED ),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_rd_data_count_UNCONNECTED [9:0]),
        .rd_en(1'b0),
        .rd_rst(1'b0),
        .rd_rst_busy(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_rd_rst_busy_UNCONNECTED ),
        .rst(1'b0),
        .s_aclk(s_axi_aclk),
        .s_aclk_en(1'b1),
        .s_aresetn(\gen_clock_conv.async_conv_reset_n ),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion(s_axi_arregion),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(s_axi_aruser),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(s_axi_awuser),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(s_axi_buser),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(s_axi_ruser),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(s_axi_wuser),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_s_axis_tready_UNCONNECTED ),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_underflow_UNCONNECTED ),
        .valid(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_valid_UNCONNECTED ),
        .wr_ack(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_wr_ack_UNCONNECTED ),
        .wr_clk(1'b0),
        .wr_data_count(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_wr_data_count_UNCONNECTED [9:0]),
        .wr_en(1'b0),
        .wr_rst(1'b0),
        .wr_rst_busy(\NLW_gen_clock_conv.gen_async_conv.asyncfifo_axi_wr_rst_busy_UNCONNECTED ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_clock_conv.gen_async_conv.asyncfifo_axi_i_1 
       (.I0(s_axi_aresetn),
        .I1(m_axi_aresetn),
        .O(\gen_clock_conv.async_conv_reset_n ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_auto_cc_0,axi_clock_converter_v2_1_20_axi_clock_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_clock_converter_v2_1_20_axi_clock_converter,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_auto_cc_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_CLK, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) input [4:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [28:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWUSER" *) input [3:0]s_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [127:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [15:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [4:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [4:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [28:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [4:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [127:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 5, ADDR_WIDTH 29, AWUSER_WIDTH 4, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 MI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MI_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, INSERT_VIP 0" *) input m_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 MI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input m_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWID" *) output [4:0]m_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [28:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREGION" *) output [3:0]m_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWUSER" *) output [3:0]m_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [127:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [15:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BID" *) input [4:0]m_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARID" *) output [4:0]m_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [28:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [0:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREGION" *) output [3:0]m_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RID" *) input [4:0]m_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [127:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 5, ADDR_WIDTH 29, AWUSER_WIDTH 4, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire m_axi_aclk;
  wire [28:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire m_axi_aresetn;
  wire [4:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [28:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [4:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire [3:0]m_axi_awuser;
  wire m_axi_awvalid;
  wire [4:0]m_axi_bid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [127:0]m_axi_rdata;
  wire [4:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [127:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [15:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire s_axi_aclk;
  wire [28:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [4:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [28:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [4:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [3:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire [4:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [4:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [4:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_ARADDR_RIGHT = "30" *) 
  (* C_ARADDR_WIDTH = "29" *) 
  (* C_ARBURST_RIGHT = "17" *) 
  (* C_ARBURST_WIDTH = "2" *) 
  (* C_ARCACHE_RIGHT = "12" *) 
  (* C_ARCACHE_WIDTH = "4" *) 
  (* C_ARID_RIGHT = "59" *) 
  (* C_ARID_WIDTH = "5" *) 
  (* C_ARLEN_RIGHT = "22" *) 
  (* C_ARLEN_WIDTH = "8" *) 
  (* C_ARLOCK_RIGHT = "16" *) 
  (* C_ARLOCK_WIDTH = "1" *) 
  (* C_ARPROT_RIGHT = "9" *) 
  (* C_ARPROT_WIDTH = "3" *) 
  (* C_ARQOS_RIGHT = "1" *) 
  (* C_ARQOS_WIDTH = "4" *) 
  (* C_ARREGION_RIGHT = "5" *) 
  (* C_ARREGION_WIDTH = "4" *) 
  (* C_ARSIZE_RIGHT = "19" *) 
  (* C_ARSIZE_WIDTH = "3" *) 
  (* C_ARUSER_RIGHT = "0" *) 
  (* C_ARUSER_WIDTH = "1" *) 
  (* C_AR_WIDTH = "64" *) 
  (* C_AWADDR_RIGHT = "33" *) 
  (* C_AWADDR_WIDTH = "29" *) 
  (* C_AWBURST_RIGHT = "20" *) 
  (* C_AWBURST_WIDTH = "2" *) 
  (* C_AWCACHE_RIGHT = "15" *) 
  (* C_AWCACHE_WIDTH = "4" *) 
  (* C_AWID_RIGHT = "62" *) 
  (* C_AWID_WIDTH = "5" *) 
  (* C_AWLEN_RIGHT = "25" *) 
  (* C_AWLEN_WIDTH = "8" *) 
  (* C_AWLOCK_RIGHT = "19" *) 
  (* C_AWLOCK_WIDTH = "1" *) 
  (* C_AWPROT_RIGHT = "12" *) 
  (* C_AWPROT_WIDTH = "3" *) 
  (* C_AWQOS_RIGHT = "4" *) 
  (* C_AWQOS_WIDTH = "4" *) 
  (* C_AWREGION_RIGHT = "8" *) 
  (* C_AWREGION_WIDTH = "4" *) 
  (* C_AWSIZE_RIGHT = "22" *) 
  (* C_AWSIZE_WIDTH = "3" *) 
  (* C_AWUSER_RIGHT = "0" *) 
  (* C_AWUSER_WIDTH = "4" *) 
  (* C_AW_WIDTH = "67" *) 
  (* C_AXI_ADDR_WIDTH = "29" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "4" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "128" *) 
  (* C_AXI_ID_WIDTH = "5" *) 
  (* C_AXI_IS_ACLK_ASYNC = "1" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "1" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_BID_RIGHT = "3" *) 
  (* C_BID_WIDTH = "5" *) 
  (* C_BRESP_RIGHT = "1" *) 
  (* C_BRESP_WIDTH = "2" *) 
  (* C_BUSER_RIGHT = "0" *) 
  (* C_BUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FIFO_AR_WIDTH = "64" *) 
  (* C_FIFO_AW_WIDTH = "67" *) 
  (* C_FIFO_B_WIDTH = "8" *) 
  (* C_FIFO_R_WIDTH = "137" *) 
  (* C_FIFO_W_WIDTH = "146" *) 
  (* C_M_AXI_ACLK_RATIO = "2" *) 
  (* C_RDATA_RIGHT = "4" *) 
  (* C_RDATA_WIDTH = "128" *) 
  (* C_RID_RIGHT = "132" *) 
  (* C_RID_WIDTH = "5" *) 
  (* C_RLAST_RIGHT = "1" *) 
  (* C_RLAST_WIDTH = "1" *) 
  (* C_RRESP_RIGHT = "2" *) 
  (* C_RRESP_WIDTH = "2" *) 
  (* C_RUSER_RIGHT = "0" *) 
  (* C_RUSER_WIDTH = "1" *) 
  (* C_R_WIDTH = "137" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_S_AXI_ACLK_RATIO = "1" *) 
  (* C_WDATA_RIGHT = "18" *) 
  (* C_WDATA_WIDTH = "128" *) 
  (* C_WID_RIGHT = "146" *) 
  (* C_WID_WIDTH = "0" *) 
  (* C_WLAST_RIGHT = "1" *) 
  (* C_WLAST_WIDTH = "1" *) 
  (* C_WSTRB_RIGHT = "2" *) 
  (* C_WSTRB_WIDTH = "16" *) 
  (* C_WUSER_RIGHT = "0" *) 
  (* C_WUSER_WIDTH = "1" *) 
  (* C_W_WIDTH = "146" *) 
  (* P_ACLK_RATIO = "2" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_FULLY_REG = "1" *) 
  (* P_LIGHT_WT = "0" *) 
  (* P_LUTRAM_ASYNC = "12" *) 
  (* P_ROUNDING_OFFSET = "0" *) 
  (* P_SI_LT_MI = "1'b1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_auto_cc_0_axi_clock_converter_v2_1_20_axi_clock_converter inst
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_aresetn(m_axi_aresetn),
        .m_axi_arid(m_axi_arid),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(m_axi_arregion),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(m_axi_awid),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(m_axi_awuser),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[4:0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion(s_axi_arregion),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(s_axi_awuser),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_cc_0_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_cc_0_xpm_cdc_async_rst__10
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_cc_0_xpm_cdc_async_rst__11
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_cc_0_xpm_cdc_async_rst__12
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_cc_0_xpm_cdc_async_rst__13
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_cc_0_xpm_cdc_async_rst__5
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_cc_0_xpm_cdc_async_rst__6
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_cc_0_xpm_cdc_async_rst__7
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_cc_0_xpm_cdc_async_rst__8
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_cc_0_xpm_cdc_async_rst__9
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "GRAY" *) 
module design_1_auto_cc_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_auto_cc_0_xpm_cdc_gray__10
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_auto_cc_0_xpm_cdc_gray__11
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_auto_cc_0_xpm_cdc_gray__12
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_auto_cc_0_xpm_cdc_gray__13
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_auto_cc_0_xpm_cdc_gray__14
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_auto_cc_0_xpm_cdc_gray__15
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_auto_cc_0_xpm_cdc_gray__16
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_auto_cc_0_xpm_cdc_gray__17
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module design_1_auto_cc_0_xpm_cdc_gray__18
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__3
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__4
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__parameterized1
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__parameterized1__10
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__parameterized1__11
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__parameterized1__12
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__parameterized1__13
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__parameterized1__14
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__parameterized1__15
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__parameterized1__16
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__parameterized1__17
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_auto_cc_0_xpm_cdc_single__parameterized1__18
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

module design_1_auto_cc_0_clk_x_pntrs
   (\dest_out_bin_ff_reg[2] ,
    WR_PNTR_RD,
    \dest_out_bin_ff_reg[2]_0 ,
    RD_PNTR_WR,
    Q,
    ram_full_i_reg,
    m_aclk,
    \src_gray_ff_reg[3] ,
    s_aclk,
    \src_gray_ff_reg[3]_0 );
  output \dest_out_bin_ff_reg[2] ;
  output [3:0]WR_PNTR_RD;
  output \dest_out_bin_ff_reg[2]_0 ;
  output [3:0]RD_PNTR_WR;
  input [2:0]Q;
  input [2:0]ram_full_i_reg;
  input m_aclk;
  input [3:0]\src_gray_ff_reg[3] ;
  input s_aclk;
  input [3:0]\src_gray_ff_reg[3]_0 ;

  wire [2:0]Q;
  wire [3:0]RD_PNTR_WR;
  wire [3:0]WR_PNTR_RD;
  wire \dest_out_bin_ff_reg[2] ;
  wire \dest_out_bin_ff_reg[2]_0 ;
  wire m_aclk;
  wire [2:0]ram_full_i_reg;
  wire s_aclk;
  wire [3:0]\src_gray_ff_reg[3] ;
  wire [3:0]\src_gray_ff_reg[3]_0 ;

  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_i_i_4__0
       (.I0(WR_PNTR_RD[2]),
        .I1(Q[2]),
        .I2(WR_PNTR_RD[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(WR_PNTR_RD[0]),
        .O(\dest_out_bin_ff_reg[2] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_2__3
       (.I0(RD_PNTR_WR[2]),
        .I1(ram_full_i_reg[2]),
        .I2(RD_PNTR_WR[1]),
        .I3(ram_full_i_reg[1]),
        .I4(ram_full_i_reg[0]),
        .I5(RD_PNTR_WR[0]),
        .O(\dest_out_bin_ff_reg[2]_0 ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_gray rd_pntr_cdc_inst
       (.dest_clk(m_aclk),
        .dest_out_bin(RD_PNTR_WR),
        .src_clk(s_aclk),
        .src_in_bin(\src_gray_ff_reg[3]_0 ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_gray__18 wr_pntr_cdc_inst
       (.dest_clk(s_aclk),
        .dest_out_bin(WR_PNTR_RD),
        .src_clk(m_aclk),
        .src_in_bin(\src_gray_ff_reg[3] ));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module design_1_auto_cc_0_clk_x_pntrs__xdcDup__1
   (\dest_out_bin_ff_reg[2] ,
    RD_PNTR_WR,
    \dest_out_bin_ff_reg[2]_0 ,
    WR_PNTR_RD,
    Q,
    ram_empty_i_reg,
    s_aclk,
    \src_gray_ff_reg[3] ,
    m_aclk,
    \src_gray_ff_reg[3]_0 );
  output \dest_out_bin_ff_reg[2] ;
  output [3:0]RD_PNTR_WR;
  output \dest_out_bin_ff_reg[2]_0 ;
  output [3:0]WR_PNTR_RD;
  input [2:0]Q;
  input [2:0]ram_empty_i_reg;
  input s_aclk;
  input [3:0]\src_gray_ff_reg[3] ;
  input m_aclk;
  input [3:0]\src_gray_ff_reg[3]_0 ;

  wire [2:0]Q;
  wire [3:0]RD_PNTR_WR;
  wire [3:0]WR_PNTR_RD;
  wire \dest_out_bin_ff_reg[2] ;
  wire \dest_out_bin_ff_reg[2]_0 ;
  wire m_aclk;
  wire [2:0]ram_empty_i_reg;
  wire s_aclk;
  wire [3:0]\src_gray_ff_reg[3] ;
  wire [3:0]\src_gray_ff_reg[3]_0 ;

  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_i_i_4__1
       (.I0(WR_PNTR_RD[2]),
        .I1(ram_empty_i_reg[2]),
        .I2(WR_PNTR_RD[1]),
        .I3(ram_empty_i_reg[1]),
        .I4(ram_empty_i_reg[0]),
        .I5(WR_PNTR_RD[0]),
        .O(\dest_out_bin_ff_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_2
       (.I0(RD_PNTR_WR[2]),
        .I1(Q[2]),
        .I2(RD_PNTR_WR[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(RD_PNTR_WR[0]),
        .O(\dest_out_bin_ff_reg[2] ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_gray__11 rd_pntr_cdc_inst
       (.dest_clk(s_aclk),
        .dest_out_bin(RD_PNTR_WR),
        .src_clk(m_aclk),
        .src_in_bin(\src_gray_ff_reg[3]_0 ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_gray__10 wr_pntr_cdc_inst
       (.dest_clk(m_aclk),
        .dest_out_bin(WR_PNTR_RD),
        .src_clk(s_aclk),
        .src_in_bin(\src_gray_ff_reg[3] ));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module design_1_auto_cc_0_clk_x_pntrs__xdcDup__2
   (\dest_out_bin_ff_reg[2] ,
    RD_PNTR_WR,
    \dest_out_bin_ff_reg[2]_0 ,
    WR_PNTR_RD,
    Q,
    ram_empty_i_reg,
    s_aclk,
    \src_gray_ff_reg[3] ,
    m_aclk,
    \src_gray_ff_reg[3]_0 );
  output \dest_out_bin_ff_reg[2] ;
  output [3:0]RD_PNTR_WR;
  output \dest_out_bin_ff_reg[2]_0 ;
  output [3:0]WR_PNTR_RD;
  input [2:0]Q;
  input [2:0]ram_empty_i_reg;
  input s_aclk;
  input [3:0]\src_gray_ff_reg[3] ;
  input m_aclk;
  input [3:0]\src_gray_ff_reg[3]_0 ;

  wire [2:0]Q;
  wire [3:0]RD_PNTR_WR;
  wire [3:0]WR_PNTR_RD;
  wire \dest_out_bin_ff_reg[2] ;
  wire \dest_out_bin_ff_reg[2]_0 ;
  wire m_aclk;
  wire [2:0]ram_empty_i_reg;
  wire s_aclk;
  wire [3:0]\src_gray_ff_reg[3] ;
  wire [3:0]\src_gray_ff_reg[3]_0 ;

  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_i_i_4__2
       (.I0(WR_PNTR_RD[2]),
        .I1(ram_empty_i_reg[2]),
        .I2(WR_PNTR_RD[1]),
        .I3(ram_empty_i_reg[1]),
        .I4(ram_empty_i_reg[0]),
        .I5(WR_PNTR_RD[0]),
        .O(\dest_out_bin_ff_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_2__0
       (.I0(RD_PNTR_WR[2]),
        .I1(Q[2]),
        .I2(RD_PNTR_WR[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(RD_PNTR_WR[0]),
        .O(\dest_out_bin_ff_reg[2] ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_gray__13 rd_pntr_cdc_inst
       (.dest_clk(s_aclk),
        .dest_out_bin(RD_PNTR_WR),
        .src_clk(m_aclk),
        .src_in_bin(\src_gray_ff_reg[3]_0 ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_gray__12 wr_pntr_cdc_inst
       (.dest_clk(m_aclk),
        .dest_out_bin(WR_PNTR_RD),
        .src_clk(s_aclk),
        .src_in_bin(\src_gray_ff_reg[3] ));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module design_1_auto_cc_0_clk_x_pntrs__xdcDup__3
   (\dest_out_bin_ff_reg[2] ,
    WR_PNTR_RD,
    \dest_out_bin_ff_reg[2]_0 ,
    RD_PNTR_WR,
    Q,
    ram_full_i_reg,
    m_aclk,
    \src_gray_ff_reg[3] ,
    s_aclk,
    \src_gray_ff_reg[3]_0 );
  output \dest_out_bin_ff_reg[2] ;
  output [3:0]WR_PNTR_RD;
  output \dest_out_bin_ff_reg[2]_0 ;
  output [3:0]RD_PNTR_WR;
  input [2:0]Q;
  input [2:0]ram_full_i_reg;
  input m_aclk;
  input [3:0]\src_gray_ff_reg[3] ;
  input s_aclk;
  input [3:0]\src_gray_ff_reg[3]_0 ;

  wire [2:0]Q;
  wire [3:0]RD_PNTR_WR;
  wire [3:0]WR_PNTR_RD;
  wire \dest_out_bin_ff_reg[2] ;
  wire \dest_out_bin_ff_reg[2]_0 ;
  wire m_aclk;
  wire [2:0]ram_full_i_reg;
  wire s_aclk;
  wire [3:0]\src_gray_ff_reg[3] ;
  wire [3:0]\src_gray_ff_reg[3]_0 ;

  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_i_i_4
       (.I0(WR_PNTR_RD[2]),
        .I1(Q[2]),
        .I2(WR_PNTR_RD[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(WR_PNTR_RD[0]),
        .O(\dest_out_bin_ff_reg[2] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_2__2
       (.I0(RD_PNTR_WR[2]),
        .I1(ram_full_i_reg[2]),
        .I2(RD_PNTR_WR[1]),
        .I3(ram_full_i_reg[1]),
        .I4(ram_full_i_reg[0]),
        .I5(RD_PNTR_WR[0]),
        .O(\dest_out_bin_ff_reg[2]_0 ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_gray__15 rd_pntr_cdc_inst
       (.dest_clk(m_aclk),
        .dest_out_bin(RD_PNTR_WR),
        .src_clk(s_aclk),
        .src_in_bin(\src_gray_ff_reg[3]_0 ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_gray__14 wr_pntr_cdc_inst
       (.dest_clk(s_aclk),
        .dest_out_bin(WR_PNTR_RD),
        .src_clk(m_aclk),
        .src_in_bin(\src_gray_ff_reg[3] ));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module design_1_auto_cc_0_clk_x_pntrs__xdcDup__4
   (\dest_out_bin_ff_reg[2] ,
    RD_PNTR_WR,
    \dest_out_bin_ff_reg[2]_0 ,
    WR_PNTR_RD,
    Q,
    ram_empty_i_reg,
    s_aclk,
    \src_gray_ff_reg[3] ,
    m_aclk,
    \src_gray_ff_reg[3]_0 );
  output \dest_out_bin_ff_reg[2] ;
  output [3:0]RD_PNTR_WR;
  output \dest_out_bin_ff_reg[2]_0 ;
  output [3:0]WR_PNTR_RD;
  input [2:0]Q;
  input [2:0]ram_empty_i_reg;
  input s_aclk;
  input [3:0]\src_gray_ff_reg[3] ;
  input m_aclk;
  input [3:0]\src_gray_ff_reg[3]_0 ;

  wire [2:0]Q;
  wire [3:0]RD_PNTR_WR;
  wire [3:0]WR_PNTR_RD;
  wire \dest_out_bin_ff_reg[2] ;
  wire \dest_out_bin_ff_reg[2]_0 ;
  wire m_aclk;
  wire [2:0]ram_empty_i_reg;
  wire s_aclk;
  wire [3:0]\src_gray_ff_reg[3] ;
  wire [3:0]\src_gray_ff_reg[3]_0 ;

  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_i_i_4__3
       (.I0(WR_PNTR_RD[2]),
        .I1(ram_empty_i_reg[2]),
        .I2(WR_PNTR_RD[1]),
        .I3(ram_empty_i_reg[1]),
        .I4(ram_empty_i_reg[0]),
        .I5(WR_PNTR_RD[0]),
        .O(\dest_out_bin_ff_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_2__1
       (.I0(RD_PNTR_WR[2]),
        .I1(Q[2]),
        .I2(RD_PNTR_WR[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(RD_PNTR_WR[0]),
        .O(\dest_out_bin_ff_reg[2] ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_gray__17 rd_pntr_cdc_inst
       (.dest_clk(s_aclk),
        .dest_out_bin(RD_PNTR_WR),
        .src_clk(m_aclk),
        .src_in_bin(\src_gray_ff_reg[3]_0 ));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_gray__16 wr_pntr_cdc_inst
       (.dest_clk(m_aclk),
        .dest_out_bin(WR_PNTR_RD),
        .src_clk(s_aclk),
        .src_in_bin(\src_gray_ff_reg[3] ));
endmodule

module design_1_auto_cc_0_dmem
   (dout_i,
    s_aclk,
    \gpr1.dout_i_reg[1]_0 ,
    DI,
    \gpr1.dout_i_reg[1]_1 ,
    \gpr1.dout_i_reg[1]_2 ,
    \gpr1.dout_i_reg[0]_0 ,
    m_aclk);
  output [66:0]dout_i;
  input s_aclk;
  input [0:0]\gpr1.dout_i_reg[1]_0 ;
  input [66:0]DI;
  input [3:0]\gpr1.dout_i_reg[1]_1 ;
  input [3:0]\gpr1.dout_i_reg[1]_2 ;
  input [0:0]\gpr1.dout_i_reg[0]_0 ;
  input m_aclk;

  wire [66:0]DI;
  wire [66:0]dout_i;
  wire [66:0]dout_i0;
  wire [0:0]\gpr1.dout_i_reg[0]_0 ;
  wire [0:0]\gpr1.dout_i_reg[1]_0 ;
  wire [3:0]\gpr1.dout_i_reg[1]_1 ;
  wire [3:0]\gpr1.dout_i_reg[1]_2 ;
  wire m_aclk;
  wire s_aclk;
  wire [1:0]NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_60_65_DOD_UNCONNECTED;
  wire [1:1]NLW_RAM_reg_0_15_66_66_DOA_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_66_66_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_66_66_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_66_66_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1072" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M RAM_reg_0_15_0_5
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(DI[1:0]),
        .DIB(DI[3:2]),
        .DIC(DI[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[1:0]),
        .DOB(dout_i0[3:2]),
        .DOC(dout_i0[5:4]),
        .DOD(NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1072" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M RAM_reg_0_15_12_17
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(DI[13:12]),
        .DIB(DI[15:14]),
        .DIC(DI[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[13:12]),
        .DOB(dout_i0[15:14]),
        .DOC(dout_i0[17:16]),
        .DOD(NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1072" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M RAM_reg_0_15_18_23
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(DI[19:18]),
        .DIB(DI[21:20]),
        .DIC(DI[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[19:18]),
        .DOB(dout_i0[21:20]),
        .DOC(dout_i0[23:22]),
        .DOD(NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1072" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M RAM_reg_0_15_24_29
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(DI[25:24]),
        .DIB(DI[27:26]),
        .DIC(DI[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[25:24]),
        .DOB(dout_i0[27:26]),
        .DOC(dout_i0[29:28]),
        .DOD(NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1072" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "35" *) 
  RAM32M RAM_reg_0_15_30_35
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(DI[31:30]),
        .DIB(DI[33:32]),
        .DIC(DI[35:34]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[31:30]),
        .DOB(dout_i0[33:32]),
        .DOC(dout_i0[35:34]),
        .DOD(NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1072" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "41" *) 
  RAM32M RAM_reg_0_15_36_41
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(DI[37:36]),
        .DIB(DI[39:38]),
        .DIC(DI[41:40]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[37:36]),
        .DOB(dout_i0[39:38]),
        .DOC(dout_i0[41:40]),
        .DOD(NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1072" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "47" *) 
  RAM32M RAM_reg_0_15_42_47
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(DI[43:42]),
        .DIB(DI[45:44]),
        .DIC(DI[47:46]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[43:42]),
        .DOB(dout_i0[45:44]),
        .DOC(dout_i0[47:46]),
        .DOD(NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1072" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "53" *) 
  RAM32M RAM_reg_0_15_48_53
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(DI[49:48]),
        .DIB(DI[51:50]),
        .DIC(DI[53:52]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[49:48]),
        .DOB(dout_i0[51:50]),
        .DOC(dout_i0[53:52]),
        .DOD(NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1072" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "59" *) 
  RAM32M RAM_reg_0_15_54_59
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(DI[55:54]),
        .DIB(DI[57:56]),
        .DIC(DI[59:58]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[55:54]),
        .DOB(dout_i0[57:56]),
        .DOC(dout_i0[59:58]),
        .DOD(NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1072" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "65" *) 
  RAM32M RAM_reg_0_15_60_65
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(DI[61:60]),
        .DIB(DI[63:62]),
        .DIC(DI[65:64]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[61:60]),
        .DOB(dout_i0[63:62]),
        .DOC(dout_i0[65:64]),
        .DOD(NLW_RAM_reg_0_15_60_65_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1072" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "66" *) 
  (* ram_slice_end = "66" *) 
  RAM32M RAM_reg_0_15_66_66
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA({1'b0,DI[66]}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({NLW_RAM_reg_0_15_66_66_DOA_UNCONNECTED[1],dout_i0[66]}),
        .DOB(NLW_RAM_reg_0_15_66_66_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_RAM_reg_0_15_66_66_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_15_66_66_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1072" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M RAM_reg_0_15_6_11
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(DI[7:6]),
        .DIB(DI[9:8]),
        .DIC(DI[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[7:6]),
        .DOB(dout_i0[9:8]),
        .DOC(dout_i0[11:10]),
        .DOD(NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[0]),
        .Q(dout_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[10]),
        .Q(dout_i[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[11]),
        .Q(dout_i[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[12]),
        .Q(dout_i[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[13]),
        .Q(dout_i[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[14]),
        .Q(dout_i[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[15]),
        .Q(dout_i[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[16] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[16]),
        .Q(dout_i[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[17] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[17]),
        .Q(dout_i[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[18] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[18]),
        .Q(dout_i[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[19] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[19]),
        .Q(dout_i[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[1]),
        .Q(dout_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[20] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[20]),
        .Q(dout_i[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[21] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[21]),
        .Q(dout_i[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[22] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[22]),
        .Q(dout_i[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[23] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[23]),
        .Q(dout_i[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[24] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[24]),
        .Q(dout_i[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[25] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[25]),
        .Q(dout_i[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[26] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[26]),
        .Q(dout_i[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[27] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[27]),
        .Q(dout_i[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[28] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[28]),
        .Q(dout_i[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[29] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[29]),
        .Q(dout_i[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[2]),
        .Q(dout_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[30] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[30]),
        .Q(dout_i[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[31] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[31]),
        .Q(dout_i[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[32] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[32]),
        .Q(dout_i[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[33] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[33]),
        .Q(dout_i[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[34] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[34]),
        .Q(dout_i[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[35] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[35]),
        .Q(dout_i[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[36] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[36]),
        .Q(dout_i[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[37] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[37]),
        .Q(dout_i[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[38] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[38]),
        .Q(dout_i[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[39] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[39]),
        .Q(dout_i[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[3]),
        .Q(dout_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[40] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[40]),
        .Q(dout_i[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[41] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[41]),
        .Q(dout_i[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[42] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[42]),
        .Q(dout_i[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[43] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[43]),
        .Q(dout_i[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[44] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[44]),
        .Q(dout_i[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[45] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[45]),
        .Q(dout_i[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[46] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[46]),
        .Q(dout_i[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[47] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[47]),
        .Q(dout_i[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[48] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[48]),
        .Q(dout_i[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[49] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[49]),
        .Q(dout_i[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[4]),
        .Q(dout_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[50] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[50]),
        .Q(dout_i[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[51] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[51]),
        .Q(dout_i[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[52] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[52]),
        .Q(dout_i[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[53] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[53]),
        .Q(dout_i[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[54] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[54]),
        .Q(dout_i[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[55] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[55]),
        .Q(dout_i[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[56] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[56]),
        .Q(dout_i[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[57] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[57]),
        .Q(dout_i[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[58] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[58]),
        .Q(dout_i[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[59] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[59]),
        .Q(dout_i[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[5]),
        .Q(dout_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[60] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[60]),
        .Q(dout_i[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[61] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[61]),
        .Q(dout_i[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[62] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[62]),
        .Q(dout_i[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[63] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[63]),
        .Q(dout_i[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[64] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[64]),
        .Q(dout_i[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[65] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[65]),
        .Q(dout_i[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[66] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[66]),
        .Q(dout_i[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[6]),
        .Q(dout_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[7]),
        .Q(dout_i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[8]),
        .Q(dout_i[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[9]),
        .Q(dout_i[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module design_1_auto_cc_0_dmem__parameterized0
   (dout_i,
    s_aclk,
    \gpr1.dout_i_reg[1]_0 ,
    I79,
    \gpr1.dout_i_reg[1]_1 ,
    \gpr1.dout_i_reg[1]_2 ,
    \gpr1.dout_i_reg[0]_0 ,
    m_aclk);
  output [145:0]dout_i;
  input s_aclk;
  input [0:0]\gpr1.dout_i_reg[1]_0 ;
  input [145:0]I79;
  input [3:0]\gpr1.dout_i_reg[1]_1 ;
  input [3:0]\gpr1.dout_i_reg[1]_2 ;
  input [0:0]\gpr1.dout_i_reg[0]_0 ;
  input m_aclk;

  wire [145:0]I79;
  wire RAM_reg_0_15_0_5_n_0;
  wire RAM_reg_0_15_0_5_n_1;
  wire RAM_reg_0_15_0_5_n_2;
  wire RAM_reg_0_15_0_5_n_3;
  wire RAM_reg_0_15_0_5_n_4;
  wire RAM_reg_0_15_0_5_n_5;
  wire RAM_reg_0_15_102_107_n_0;
  wire RAM_reg_0_15_102_107_n_1;
  wire RAM_reg_0_15_102_107_n_2;
  wire RAM_reg_0_15_102_107_n_3;
  wire RAM_reg_0_15_102_107_n_4;
  wire RAM_reg_0_15_102_107_n_5;
  wire RAM_reg_0_15_108_113_n_0;
  wire RAM_reg_0_15_108_113_n_1;
  wire RAM_reg_0_15_108_113_n_2;
  wire RAM_reg_0_15_108_113_n_3;
  wire RAM_reg_0_15_108_113_n_4;
  wire RAM_reg_0_15_108_113_n_5;
  wire RAM_reg_0_15_114_119_n_0;
  wire RAM_reg_0_15_114_119_n_1;
  wire RAM_reg_0_15_114_119_n_2;
  wire RAM_reg_0_15_114_119_n_3;
  wire RAM_reg_0_15_114_119_n_4;
  wire RAM_reg_0_15_114_119_n_5;
  wire RAM_reg_0_15_120_125_n_0;
  wire RAM_reg_0_15_120_125_n_1;
  wire RAM_reg_0_15_120_125_n_2;
  wire RAM_reg_0_15_120_125_n_3;
  wire RAM_reg_0_15_120_125_n_4;
  wire RAM_reg_0_15_120_125_n_5;
  wire RAM_reg_0_15_126_131_n_0;
  wire RAM_reg_0_15_126_131_n_1;
  wire RAM_reg_0_15_126_131_n_2;
  wire RAM_reg_0_15_126_131_n_3;
  wire RAM_reg_0_15_126_131_n_4;
  wire RAM_reg_0_15_126_131_n_5;
  wire RAM_reg_0_15_12_17_n_0;
  wire RAM_reg_0_15_12_17_n_1;
  wire RAM_reg_0_15_12_17_n_2;
  wire RAM_reg_0_15_12_17_n_3;
  wire RAM_reg_0_15_12_17_n_4;
  wire RAM_reg_0_15_12_17_n_5;
  wire RAM_reg_0_15_132_137_n_0;
  wire RAM_reg_0_15_132_137_n_1;
  wire RAM_reg_0_15_132_137_n_2;
  wire RAM_reg_0_15_132_137_n_3;
  wire RAM_reg_0_15_132_137_n_4;
  wire RAM_reg_0_15_132_137_n_5;
  wire RAM_reg_0_15_138_143_n_0;
  wire RAM_reg_0_15_138_143_n_1;
  wire RAM_reg_0_15_138_143_n_2;
  wire RAM_reg_0_15_138_143_n_3;
  wire RAM_reg_0_15_138_143_n_4;
  wire RAM_reg_0_15_138_143_n_5;
  wire RAM_reg_0_15_144_145_n_0;
  wire RAM_reg_0_15_144_145_n_1;
  wire RAM_reg_0_15_18_23_n_0;
  wire RAM_reg_0_15_18_23_n_1;
  wire RAM_reg_0_15_18_23_n_2;
  wire RAM_reg_0_15_18_23_n_3;
  wire RAM_reg_0_15_18_23_n_4;
  wire RAM_reg_0_15_18_23_n_5;
  wire RAM_reg_0_15_24_29_n_0;
  wire RAM_reg_0_15_24_29_n_1;
  wire RAM_reg_0_15_24_29_n_2;
  wire RAM_reg_0_15_24_29_n_3;
  wire RAM_reg_0_15_24_29_n_4;
  wire RAM_reg_0_15_24_29_n_5;
  wire RAM_reg_0_15_30_35_n_0;
  wire RAM_reg_0_15_30_35_n_1;
  wire RAM_reg_0_15_30_35_n_2;
  wire RAM_reg_0_15_30_35_n_3;
  wire RAM_reg_0_15_30_35_n_4;
  wire RAM_reg_0_15_30_35_n_5;
  wire RAM_reg_0_15_36_41_n_0;
  wire RAM_reg_0_15_36_41_n_1;
  wire RAM_reg_0_15_36_41_n_2;
  wire RAM_reg_0_15_36_41_n_3;
  wire RAM_reg_0_15_36_41_n_4;
  wire RAM_reg_0_15_36_41_n_5;
  wire RAM_reg_0_15_42_47_n_0;
  wire RAM_reg_0_15_42_47_n_1;
  wire RAM_reg_0_15_42_47_n_2;
  wire RAM_reg_0_15_42_47_n_3;
  wire RAM_reg_0_15_42_47_n_4;
  wire RAM_reg_0_15_42_47_n_5;
  wire RAM_reg_0_15_48_53_n_0;
  wire RAM_reg_0_15_48_53_n_1;
  wire RAM_reg_0_15_48_53_n_2;
  wire RAM_reg_0_15_48_53_n_3;
  wire RAM_reg_0_15_48_53_n_4;
  wire RAM_reg_0_15_48_53_n_5;
  wire RAM_reg_0_15_54_59_n_0;
  wire RAM_reg_0_15_54_59_n_1;
  wire RAM_reg_0_15_54_59_n_2;
  wire RAM_reg_0_15_54_59_n_3;
  wire RAM_reg_0_15_54_59_n_4;
  wire RAM_reg_0_15_54_59_n_5;
  wire RAM_reg_0_15_60_65_n_0;
  wire RAM_reg_0_15_60_65_n_1;
  wire RAM_reg_0_15_60_65_n_2;
  wire RAM_reg_0_15_60_65_n_3;
  wire RAM_reg_0_15_60_65_n_4;
  wire RAM_reg_0_15_60_65_n_5;
  wire RAM_reg_0_15_66_71_n_0;
  wire RAM_reg_0_15_66_71_n_1;
  wire RAM_reg_0_15_66_71_n_2;
  wire RAM_reg_0_15_66_71_n_3;
  wire RAM_reg_0_15_66_71_n_4;
  wire RAM_reg_0_15_66_71_n_5;
  wire RAM_reg_0_15_6_11_n_0;
  wire RAM_reg_0_15_6_11_n_1;
  wire RAM_reg_0_15_6_11_n_2;
  wire RAM_reg_0_15_6_11_n_3;
  wire RAM_reg_0_15_6_11_n_4;
  wire RAM_reg_0_15_6_11_n_5;
  wire RAM_reg_0_15_72_77_n_0;
  wire RAM_reg_0_15_72_77_n_1;
  wire RAM_reg_0_15_72_77_n_2;
  wire RAM_reg_0_15_72_77_n_3;
  wire RAM_reg_0_15_72_77_n_4;
  wire RAM_reg_0_15_72_77_n_5;
  wire RAM_reg_0_15_78_83_n_0;
  wire RAM_reg_0_15_78_83_n_1;
  wire RAM_reg_0_15_78_83_n_2;
  wire RAM_reg_0_15_78_83_n_3;
  wire RAM_reg_0_15_78_83_n_4;
  wire RAM_reg_0_15_78_83_n_5;
  wire RAM_reg_0_15_84_89_n_0;
  wire RAM_reg_0_15_84_89_n_1;
  wire RAM_reg_0_15_84_89_n_2;
  wire RAM_reg_0_15_84_89_n_3;
  wire RAM_reg_0_15_84_89_n_4;
  wire RAM_reg_0_15_84_89_n_5;
  wire RAM_reg_0_15_90_95_n_0;
  wire RAM_reg_0_15_90_95_n_1;
  wire RAM_reg_0_15_90_95_n_2;
  wire RAM_reg_0_15_90_95_n_3;
  wire RAM_reg_0_15_90_95_n_4;
  wire RAM_reg_0_15_90_95_n_5;
  wire RAM_reg_0_15_96_101_n_0;
  wire RAM_reg_0_15_96_101_n_1;
  wire RAM_reg_0_15_96_101_n_2;
  wire RAM_reg_0_15_96_101_n_3;
  wire RAM_reg_0_15_96_101_n_4;
  wire RAM_reg_0_15_96_101_n_5;
  wire [145:0]dout_i;
  wire [0:0]\gpr1.dout_i_reg[0]_0 ;
  wire [0:0]\gpr1.dout_i_reg[1]_0 ;
  wire [3:0]\gpr1.dout_i_reg[1]_1 ;
  wire [3:0]\gpr1.dout_i_reg[1]_2 ;
  wire m_aclk;
  wire s_aclk;
  wire [1:0]NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_102_107_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_108_113_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_114_119_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_120_125_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_126_131_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_132_137_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_138_143_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_144_145_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_144_145_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_144_145_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_60_65_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_66_71_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_72_77_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_78_83_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_84_89_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_90_95_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_96_101_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M RAM_reg_0_15_0_5
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[1:0]),
        .DIB(I79[3:2]),
        .DIC(I79[5:4]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_0_5_n_0,RAM_reg_0_15_0_5_n_1}),
        .DOB({RAM_reg_0_15_0_5_n_2,RAM_reg_0_15_0_5_n_3}),
        .DOC({RAM_reg_0_15_0_5_n_4,RAM_reg_0_15_0_5_n_5}),
        .DOD(NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "102" *) 
  (* ram_slice_end = "107" *) 
  RAM32M RAM_reg_0_15_102_107
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[103:102]),
        .DIB(I79[105:104]),
        .DIC(I79[107:106]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_102_107_n_0,RAM_reg_0_15_102_107_n_1}),
        .DOB({RAM_reg_0_15_102_107_n_2,RAM_reg_0_15_102_107_n_3}),
        .DOC({RAM_reg_0_15_102_107_n_4,RAM_reg_0_15_102_107_n_5}),
        .DOD(NLW_RAM_reg_0_15_102_107_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "108" *) 
  (* ram_slice_end = "113" *) 
  RAM32M RAM_reg_0_15_108_113
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[109:108]),
        .DIB(I79[111:110]),
        .DIC(I79[113:112]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_108_113_n_0,RAM_reg_0_15_108_113_n_1}),
        .DOB({RAM_reg_0_15_108_113_n_2,RAM_reg_0_15_108_113_n_3}),
        .DOC({RAM_reg_0_15_108_113_n_4,RAM_reg_0_15_108_113_n_5}),
        .DOD(NLW_RAM_reg_0_15_108_113_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "114" *) 
  (* ram_slice_end = "119" *) 
  RAM32M RAM_reg_0_15_114_119
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[115:114]),
        .DIB(I79[117:116]),
        .DIC(I79[119:118]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_114_119_n_0,RAM_reg_0_15_114_119_n_1}),
        .DOB({RAM_reg_0_15_114_119_n_2,RAM_reg_0_15_114_119_n_3}),
        .DOC({RAM_reg_0_15_114_119_n_4,RAM_reg_0_15_114_119_n_5}),
        .DOD(NLW_RAM_reg_0_15_114_119_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "120" *) 
  (* ram_slice_end = "125" *) 
  RAM32M RAM_reg_0_15_120_125
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[121:120]),
        .DIB(I79[123:122]),
        .DIC(I79[125:124]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_120_125_n_0,RAM_reg_0_15_120_125_n_1}),
        .DOB({RAM_reg_0_15_120_125_n_2,RAM_reg_0_15_120_125_n_3}),
        .DOC({RAM_reg_0_15_120_125_n_4,RAM_reg_0_15_120_125_n_5}),
        .DOD(NLW_RAM_reg_0_15_120_125_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "126" *) 
  (* ram_slice_end = "131" *) 
  RAM32M RAM_reg_0_15_126_131
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[127:126]),
        .DIB(I79[129:128]),
        .DIC(I79[131:130]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_126_131_n_0,RAM_reg_0_15_126_131_n_1}),
        .DOB({RAM_reg_0_15_126_131_n_2,RAM_reg_0_15_126_131_n_3}),
        .DOC({RAM_reg_0_15_126_131_n_4,RAM_reg_0_15_126_131_n_5}),
        .DOD(NLW_RAM_reg_0_15_126_131_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M RAM_reg_0_15_12_17
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[13:12]),
        .DIB(I79[15:14]),
        .DIC(I79[17:16]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_12_17_n_0,RAM_reg_0_15_12_17_n_1}),
        .DOB({RAM_reg_0_15_12_17_n_2,RAM_reg_0_15_12_17_n_3}),
        .DOC({RAM_reg_0_15_12_17_n_4,RAM_reg_0_15_12_17_n_5}),
        .DOD(NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "132" *) 
  (* ram_slice_end = "137" *) 
  RAM32M RAM_reg_0_15_132_137
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[133:132]),
        .DIB(I79[135:134]),
        .DIC(I79[137:136]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_132_137_n_0,RAM_reg_0_15_132_137_n_1}),
        .DOB({RAM_reg_0_15_132_137_n_2,RAM_reg_0_15_132_137_n_3}),
        .DOC({RAM_reg_0_15_132_137_n_4,RAM_reg_0_15_132_137_n_5}),
        .DOD(NLW_RAM_reg_0_15_132_137_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "138" *) 
  (* ram_slice_end = "143" *) 
  RAM32M RAM_reg_0_15_138_143
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[139:138]),
        .DIB(I79[141:140]),
        .DIC(I79[143:142]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_138_143_n_0,RAM_reg_0_15_138_143_n_1}),
        .DOB({RAM_reg_0_15_138_143_n_2,RAM_reg_0_15_138_143_n_3}),
        .DOC({RAM_reg_0_15_138_143_n_4,RAM_reg_0_15_138_143_n_5}),
        .DOD(NLW_RAM_reg_0_15_138_143_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "144" *) 
  (* ram_slice_end = "145" *) 
  RAM32M RAM_reg_0_15_144_145
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[145:144]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_144_145_n_0,RAM_reg_0_15_144_145_n_1}),
        .DOB(NLW_RAM_reg_0_15_144_145_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_RAM_reg_0_15_144_145_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_15_144_145_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M RAM_reg_0_15_18_23
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[19:18]),
        .DIB(I79[21:20]),
        .DIC(I79[23:22]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_18_23_n_0,RAM_reg_0_15_18_23_n_1}),
        .DOB({RAM_reg_0_15_18_23_n_2,RAM_reg_0_15_18_23_n_3}),
        .DOC({RAM_reg_0_15_18_23_n_4,RAM_reg_0_15_18_23_n_5}),
        .DOD(NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M RAM_reg_0_15_24_29
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[25:24]),
        .DIB(I79[27:26]),
        .DIC(I79[29:28]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_24_29_n_0,RAM_reg_0_15_24_29_n_1}),
        .DOB({RAM_reg_0_15_24_29_n_2,RAM_reg_0_15_24_29_n_3}),
        .DOC({RAM_reg_0_15_24_29_n_4,RAM_reg_0_15_24_29_n_5}),
        .DOD(NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "35" *) 
  RAM32M RAM_reg_0_15_30_35
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[31:30]),
        .DIB(I79[33:32]),
        .DIC(I79[35:34]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_30_35_n_0,RAM_reg_0_15_30_35_n_1}),
        .DOB({RAM_reg_0_15_30_35_n_2,RAM_reg_0_15_30_35_n_3}),
        .DOC({RAM_reg_0_15_30_35_n_4,RAM_reg_0_15_30_35_n_5}),
        .DOD(NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "41" *) 
  RAM32M RAM_reg_0_15_36_41
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[37:36]),
        .DIB(I79[39:38]),
        .DIC(I79[41:40]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_36_41_n_0,RAM_reg_0_15_36_41_n_1}),
        .DOB({RAM_reg_0_15_36_41_n_2,RAM_reg_0_15_36_41_n_3}),
        .DOC({RAM_reg_0_15_36_41_n_4,RAM_reg_0_15_36_41_n_5}),
        .DOD(NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "47" *) 
  RAM32M RAM_reg_0_15_42_47
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[43:42]),
        .DIB(I79[45:44]),
        .DIC(I79[47:46]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_42_47_n_0,RAM_reg_0_15_42_47_n_1}),
        .DOB({RAM_reg_0_15_42_47_n_2,RAM_reg_0_15_42_47_n_3}),
        .DOC({RAM_reg_0_15_42_47_n_4,RAM_reg_0_15_42_47_n_5}),
        .DOD(NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "53" *) 
  RAM32M RAM_reg_0_15_48_53
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[49:48]),
        .DIB(I79[51:50]),
        .DIC(I79[53:52]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_48_53_n_0,RAM_reg_0_15_48_53_n_1}),
        .DOB({RAM_reg_0_15_48_53_n_2,RAM_reg_0_15_48_53_n_3}),
        .DOC({RAM_reg_0_15_48_53_n_4,RAM_reg_0_15_48_53_n_5}),
        .DOD(NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "59" *) 
  RAM32M RAM_reg_0_15_54_59
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[55:54]),
        .DIB(I79[57:56]),
        .DIC(I79[59:58]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_54_59_n_0,RAM_reg_0_15_54_59_n_1}),
        .DOB({RAM_reg_0_15_54_59_n_2,RAM_reg_0_15_54_59_n_3}),
        .DOC({RAM_reg_0_15_54_59_n_4,RAM_reg_0_15_54_59_n_5}),
        .DOD(NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "65" *) 
  RAM32M RAM_reg_0_15_60_65
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[61:60]),
        .DIB(I79[63:62]),
        .DIC(I79[65:64]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_60_65_n_0,RAM_reg_0_15_60_65_n_1}),
        .DOB({RAM_reg_0_15_60_65_n_2,RAM_reg_0_15_60_65_n_3}),
        .DOC({RAM_reg_0_15_60_65_n_4,RAM_reg_0_15_60_65_n_5}),
        .DOD(NLW_RAM_reg_0_15_60_65_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "66" *) 
  (* ram_slice_end = "71" *) 
  RAM32M RAM_reg_0_15_66_71
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[67:66]),
        .DIB(I79[69:68]),
        .DIC(I79[71:70]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_66_71_n_0,RAM_reg_0_15_66_71_n_1}),
        .DOB({RAM_reg_0_15_66_71_n_2,RAM_reg_0_15_66_71_n_3}),
        .DOC({RAM_reg_0_15_66_71_n_4,RAM_reg_0_15_66_71_n_5}),
        .DOD(NLW_RAM_reg_0_15_66_71_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M RAM_reg_0_15_6_11
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[7:6]),
        .DIB(I79[9:8]),
        .DIC(I79[11:10]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_6_11_n_0,RAM_reg_0_15_6_11_n_1}),
        .DOB({RAM_reg_0_15_6_11_n_2,RAM_reg_0_15_6_11_n_3}),
        .DOC({RAM_reg_0_15_6_11_n_4,RAM_reg_0_15_6_11_n_5}),
        .DOD(NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "77" *) 
  RAM32M RAM_reg_0_15_72_77
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[73:72]),
        .DIB(I79[75:74]),
        .DIC(I79[77:76]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_72_77_n_0,RAM_reg_0_15_72_77_n_1}),
        .DOB({RAM_reg_0_15_72_77_n_2,RAM_reg_0_15_72_77_n_3}),
        .DOC({RAM_reg_0_15_72_77_n_4,RAM_reg_0_15_72_77_n_5}),
        .DOD(NLW_RAM_reg_0_15_72_77_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "78" *) 
  (* ram_slice_end = "83" *) 
  RAM32M RAM_reg_0_15_78_83
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[79:78]),
        .DIB(I79[81:80]),
        .DIC(I79[83:82]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_78_83_n_0,RAM_reg_0_15_78_83_n_1}),
        .DOB({RAM_reg_0_15_78_83_n_2,RAM_reg_0_15_78_83_n_3}),
        .DOC({RAM_reg_0_15_78_83_n_4,RAM_reg_0_15_78_83_n_5}),
        .DOD(NLW_RAM_reg_0_15_78_83_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "84" *) 
  (* ram_slice_end = "89" *) 
  RAM32M RAM_reg_0_15_84_89
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[85:84]),
        .DIB(I79[87:86]),
        .DIC(I79[89:88]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_84_89_n_0,RAM_reg_0_15_84_89_n_1}),
        .DOB({RAM_reg_0_15_84_89_n_2,RAM_reg_0_15_84_89_n_3}),
        .DOC({RAM_reg_0_15_84_89_n_4,RAM_reg_0_15_84_89_n_5}),
        .DOD(NLW_RAM_reg_0_15_84_89_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "90" *) 
  (* ram_slice_end = "95" *) 
  RAM32M RAM_reg_0_15_90_95
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[91:90]),
        .DIB(I79[93:92]),
        .DIC(I79[95:94]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_90_95_n_0,RAM_reg_0_15_90_95_n_1}),
        .DOB({RAM_reg_0_15_90_95_n_2,RAM_reg_0_15_90_95_n_3}),
        .DOC({RAM_reg_0_15_90_95_n_4,RAM_reg_0_15_90_95_n_5}),
        .DOD(NLW_RAM_reg_0_15_90_95_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2336" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "96" *) 
  (* ram_slice_end = "101" *) 
  RAM32M RAM_reg_0_15_96_101
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I79[97:96]),
        .DIB(I79[99:98]),
        .DIC(I79[101:100]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_96_101_n_0,RAM_reg_0_15_96_101_n_1}),
        .DOB({RAM_reg_0_15_96_101_n_2,RAM_reg_0_15_96_101_n_3}),
        .DOC({RAM_reg_0_15_96_101_n_4,RAM_reg_0_15_96_101_n_5}),
        .DOD(NLW_RAM_reg_0_15_96_101_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_1),
        .Q(dout_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[100] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_96_101_n_5),
        .Q(dout_i[100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[101] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_96_101_n_4),
        .Q(dout_i[101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[102] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_102_107_n_1),
        .Q(dout_i[102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[103] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_102_107_n_0),
        .Q(dout_i[103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[104] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_102_107_n_3),
        .Q(dout_i[104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[105] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_102_107_n_2),
        .Q(dout_i[105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[106] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_102_107_n_5),
        .Q(dout_i[106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[107] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_102_107_n_4),
        .Q(dout_i[107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[108] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_108_113_n_1),
        .Q(dout_i[108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[109] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_108_113_n_0),
        .Q(dout_i[109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_5),
        .Q(dout_i[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[110] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_108_113_n_3),
        .Q(dout_i[110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[111] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_108_113_n_2),
        .Q(dout_i[111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[112] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_108_113_n_5),
        .Q(dout_i[112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[113] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_108_113_n_4),
        .Q(dout_i[113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[114] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_114_119_n_1),
        .Q(dout_i[114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[115] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_114_119_n_0),
        .Q(dout_i[115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[116] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_114_119_n_3),
        .Q(dout_i[116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[117] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_114_119_n_2),
        .Q(dout_i[117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[118] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_114_119_n_5),
        .Q(dout_i[118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[119] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_114_119_n_4),
        .Q(dout_i[119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_4),
        .Q(dout_i[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[120] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_120_125_n_1),
        .Q(dout_i[120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[121] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_120_125_n_0),
        .Q(dout_i[121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[122] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_120_125_n_3),
        .Q(dout_i[122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[123] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_120_125_n_2),
        .Q(dout_i[123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[124] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_120_125_n_5),
        .Q(dout_i[124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[125] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_120_125_n_4),
        .Q(dout_i[125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[126] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_126_131_n_1),
        .Q(dout_i[126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[127] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_126_131_n_0),
        .Q(dout_i[127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[128] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_126_131_n_3),
        .Q(dout_i[128]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[129] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_126_131_n_2),
        .Q(dout_i[129]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_1),
        .Q(dout_i[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[130] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_126_131_n_5),
        .Q(dout_i[130]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[131] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_126_131_n_4),
        .Q(dout_i[131]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[132] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_132_137_n_1),
        .Q(dout_i[132]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[133] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_132_137_n_0),
        .Q(dout_i[133]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[134] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_132_137_n_3),
        .Q(dout_i[134]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[135] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_132_137_n_2),
        .Q(dout_i[135]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[136] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_132_137_n_5),
        .Q(dout_i[136]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[137] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_132_137_n_4),
        .Q(dout_i[137]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[138] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_138_143_n_1),
        .Q(dout_i[138]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[139] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_138_143_n_0),
        .Q(dout_i[139]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_0),
        .Q(dout_i[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[140] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_138_143_n_3),
        .Q(dout_i[140]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[141] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_138_143_n_2),
        .Q(dout_i[141]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[142] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_138_143_n_5),
        .Q(dout_i[142]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[143] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_138_143_n_4),
        .Q(dout_i[143]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[144] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_144_145_n_1),
        .Q(dout_i[144]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[145] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_144_145_n_0),
        .Q(dout_i[145]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_3),
        .Q(dout_i[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_2),
        .Q(dout_i[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[16] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_5),
        .Q(dout_i[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[17] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_4),
        .Q(dout_i[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[18] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_1),
        .Q(dout_i[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[19] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_0),
        .Q(dout_i[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_0),
        .Q(dout_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[20] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_3),
        .Q(dout_i[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[21] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_2),
        .Q(dout_i[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[22] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_5),
        .Q(dout_i[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[23] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_4),
        .Q(dout_i[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[24] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_1),
        .Q(dout_i[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[25] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_0),
        .Q(dout_i[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[26] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_3),
        .Q(dout_i[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[27] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_2),
        .Q(dout_i[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[28] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_5),
        .Q(dout_i[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[29] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_4),
        .Q(dout_i[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_3),
        .Q(dout_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[30] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_1),
        .Q(dout_i[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[31] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_0),
        .Q(dout_i[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[32] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_3),
        .Q(dout_i[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[33] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_2),
        .Q(dout_i[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[34] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_5),
        .Q(dout_i[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[35] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_4),
        .Q(dout_i[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[36] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_1),
        .Q(dout_i[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[37] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_0),
        .Q(dout_i[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[38] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_3),
        .Q(dout_i[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[39] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_2),
        .Q(dout_i[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_2),
        .Q(dout_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[40] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_5),
        .Q(dout_i[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[41] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_4),
        .Q(dout_i[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[42] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_1),
        .Q(dout_i[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[43] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_0),
        .Q(dout_i[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[44] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_3),
        .Q(dout_i[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[45] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_2),
        .Q(dout_i[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[46] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_5),
        .Q(dout_i[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[47] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_4),
        .Q(dout_i[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[48] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_1),
        .Q(dout_i[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[49] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_0),
        .Q(dout_i[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_5),
        .Q(dout_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[50] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_3),
        .Q(dout_i[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[51] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_2),
        .Q(dout_i[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[52] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_5),
        .Q(dout_i[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[53] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_4),
        .Q(dout_i[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[54] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_1),
        .Q(dout_i[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[55] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_0),
        .Q(dout_i[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[56] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_3),
        .Q(dout_i[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[57] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_2),
        .Q(dout_i[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[58] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_5),
        .Q(dout_i[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[59] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_4),
        .Q(dout_i[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_4),
        .Q(dout_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[60] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_65_n_1),
        .Q(dout_i[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[61] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_65_n_0),
        .Q(dout_i[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[62] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_65_n_3),
        .Q(dout_i[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[63] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_65_n_2),
        .Q(dout_i[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[64] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_65_n_5),
        .Q(dout_i[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[65] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_65_n_4),
        .Q(dout_i[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[66] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_66_71_n_1),
        .Q(dout_i[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[67] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_66_71_n_0),
        .Q(dout_i[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[68] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_66_71_n_3),
        .Q(dout_i[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[69] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_66_71_n_2),
        .Q(dout_i[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_1),
        .Q(dout_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[70] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_66_71_n_5),
        .Q(dout_i[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[71] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_66_71_n_4),
        .Q(dout_i[71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[72] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_72_77_n_1),
        .Q(dout_i[72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[73] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_72_77_n_0),
        .Q(dout_i[73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[74] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_72_77_n_3),
        .Q(dout_i[74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[75] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_72_77_n_2),
        .Q(dout_i[75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[76] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_72_77_n_5),
        .Q(dout_i[76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[77] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_72_77_n_4),
        .Q(dout_i[77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[78] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_78_83_n_1),
        .Q(dout_i[78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[79] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_78_83_n_0),
        .Q(dout_i[79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_0),
        .Q(dout_i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[80] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_78_83_n_3),
        .Q(dout_i[80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[81] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_78_83_n_2),
        .Q(dout_i[81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[82] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_78_83_n_5),
        .Q(dout_i[82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[83] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_78_83_n_4),
        .Q(dout_i[83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[84] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_84_89_n_1),
        .Q(dout_i[84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[85] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_84_89_n_0),
        .Q(dout_i[85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[86] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_84_89_n_3),
        .Q(dout_i[86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[87] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_84_89_n_2),
        .Q(dout_i[87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[88] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_84_89_n_5),
        .Q(dout_i[88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[89] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_84_89_n_4),
        .Q(dout_i[89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_3),
        .Q(dout_i[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[90] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_90_95_n_1),
        .Q(dout_i[90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[91] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_90_95_n_0),
        .Q(dout_i[91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[92] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_90_95_n_3),
        .Q(dout_i[92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[93] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_90_95_n_2),
        .Q(dout_i[93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[94] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_90_95_n_5),
        .Q(dout_i[94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[95] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_90_95_n_4),
        .Q(dout_i[95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[96] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_96_101_n_1),
        .Q(dout_i[96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[97] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_96_101_n_0),
        .Q(dout_i[97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[98] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_96_101_n_3),
        .Q(dout_i[98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[99] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_96_101_n_2),
        .Q(dout_i[99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_2),
        .Q(dout_i[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module design_1_auto_cc_0_dmem__parameterized1
   (dout_i,
    m_aclk,
    I64,
    I83,
    \gpr1.dout_i_reg[1]_0 ,
    count_d2,
    \gpr1.dout_i_reg[0]_0 ,
    s_aclk);
  output [7:0]dout_i;
  input m_aclk;
  input I64;
  input [7:0]I83;
  input [3:0]\gpr1.dout_i_reg[1]_0 ;
  input [3:0]count_d2;
  input [0:0]\gpr1.dout_i_reg[0]_0 ;
  input s_aclk;

  wire I64;
  wire [7:0]I83;
  wire RAM_reg_0_15_0_5_n_0;
  wire RAM_reg_0_15_0_5_n_1;
  wire RAM_reg_0_15_0_5_n_2;
  wire RAM_reg_0_15_0_5_n_3;
  wire RAM_reg_0_15_0_5_n_4;
  wire RAM_reg_0_15_0_5_n_5;
  wire RAM_reg_0_15_6_7_n_0;
  wire RAM_reg_0_15_6_7_n_1;
  wire [3:0]count_d2;
  wire [7:0]dout_i;
  wire [0:0]\gpr1.dout_i_reg[0]_0 ;
  wire [3:0]\gpr1.dout_i_reg[1]_0 ;
  wire m_aclk;
  wire s_aclk;
  wire [1:0]NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M RAM_reg_0_15_0_5
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_0 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_0 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_0 }),
        .ADDRD({1'b0,count_d2}),
        .DIA(I83[1:0]),
        .DIB(I83[3:2]),
        .DIC(I83[5:4]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_0_5_n_0,RAM_reg_0_15_0_5_n_1}),
        .DOB({RAM_reg_0_15_0_5_n_2,RAM_reg_0_15_0_5_n_3}),
        .DOC({RAM_reg_0_15_0_5_n_4,RAM_reg_0_15_0_5_n_5}),
        .DOD(NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(I64));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32M RAM_reg_0_15_6_7
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_0 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_0 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_0 }),
        .ADDRD({1'b0,count_d2}),
        .DIA(I83[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_6_7_n_0,RAM_reg_0_15_6_7_n_1}),
        .DOB(NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(I64));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_1),
        .Q(dout_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_0),
        .Q(dout_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_3),
        .Q(dout_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_2),
        .Q(dout_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_5),
        .Q(dout_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_4),
        .Q(dout_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_7_n_1),
        .Q(dout_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_7_n_0),
        .Q(dout_i[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module design_1_auto_cc_0_dmem__parameterized2
   (dout_i,
    s_aclk,
    \gpr1.dout_i_reg[1]_0 ,
    I87,
    \gpr1.dout_i_reg[1]_1 ,
    \gpr1.dout_i_reg[1]_2 ,
    \gpr1.dout_i_reg[0]_0 ,
    m_aclk);
  output [63:0]dout_i;
  input s_aclk;
  input [0:0]\gpr1.dout_i_reg[1]_0 ;
  input [63:0]I87;
  input [3:0]\gpr1.dout_i_reg[1]_1 ;
  input [3:0]\gpr1.dout_i_reg[1]_2 ;
  input [0:0]\gpr1.dout_i_reg[0]_0 ;
  input m_aclk;

  wire [63:0]I87;
  wire RAM_reg_0_15_0_5_n_0;
  wire RAM_reg_0_15_0_5_n_1;
  wire RAM_reg_0_15_0_5_n_2;
  wire RAM_reg_0_15_0_5_n_3;
  wire RAM_reg_0_15_0_5_n_4;
  wire RAM_reg_0_15_0_5_n_5;
  wire RAM_reg_0_15_12_17_n_0;
  wire RAM_reg_0_15_12_17_n_1;
  wire RAM_reg_0_15_12_17_n_2;
  wire RAM_reg_0_15_12_17_n_3;
  wire RAM_reg_0_15_12_17_n_4;
  wire RAM_reg_0_15_12_17_n_5;
  wire RAM_reg_0_15_18_23_n_0;
  wire RAM_reg_0_15_18_23_n_1;
  wire RAM_reg_0_15_18_23_n_2;
  wire RAM_reg_0_15_18_23_n_3;
  wire RAM_reg_0_15_18_23_n_4;
  wire RAM_reg_0_15_18_23_n_5;
  wire RAM_reg_0_15_24_29_n_0;
  wire RAM_reg_0_15_24_29_n_1;
  wire RAM_reg_0_15_24_29_n_2;
  wire RAM_reg_0_15_24_29_n_3;
  wire RAM_reg_0_15_24_29_n_4;
  wire RAM_reg_0_15_24_29_n_5;
  wire RAM_reg_0_15_30_35_n_0;
  wire RAM_reg_0_15_30_35_n_1;
  wire RAM_reg_0_15_30_35_n_2;
  wire RAM_reg_0_15_30_35_n_3;
  wire RAM_reg_0_15_30_35_n_4;
  wire RAM_reg_0_15_30_35_n_5;
  wire RAM_reg_0_15_36_41_n_0;
  wire RAM_reg_0_15_36_41_n_1;
  wire RAM_reg_0_15_36_41_n_2;
  wire RAM_reg_0_15_36_41_n_3;
  wire RAM_reg_0_15_36_41_n_4;
  wire RAM_reg_0_15_36_41_n_5;
  wire RAM_reg_0_15_42_47_n_0;
  wire RAM_reg_0_15_42_47_n_1;
  wire RAM_reg_0_15_42_47_n_2;
  wire RAM_reg_0_15_42_47_n_3;
  wire RAM_reg_0_15_42_47_n_4;
  wire RAM_reg_0_15_42_47_n_5;
  wire RAM_reg_0_15_48_53_n_0;
  wire RAM_reg_0_15_48_53_n_1;
  wire RAM_reg_0_15_48_53_n_2;
  wire RAM_reg_0_15_48_53_n_3;
  wire RAM_reg_0_15_48_53_n_4;
  wire RAM_reg_0_15_48_53_n_5;
  wire RAM_reg_0_15_54_59_n_0;
  wire RAM_reg_0_15_54_59_n_1;
  wire RAM_reg_0_15_54_59_n_2;
  wire RAM_reg_0_15_54_59_n_3;
  wire RAM_reg_0_15_54_59_n_4;
  wire RAM_reg_0_15_54_59_n_5;
  wire RAM_reg_0_15_60_63_n_0;
  wire RAM_reg_0_15_60_63_n_1;
  wire RAM_reg_0_15_60_63_n_2;
  wire RAM_reg_0_15_60_63_n_3;
  wire RAM_reg_0_15_6_11_n_0;
  wire RAM_reg_0_15_6_11_n_1;
  wire RAM_reg_0_15_6_11_n_2;
  wire RAM_reg_0_15_6_11_n_3;
  wire RAM_reg_0_15_6_11_n_4;
  wire RAM_reg_0_15_6_11_n_5;
  wire [63:0]dout_i;
  wire [0:0]\gpr1.dout_i_reg[0]_0 ;
  wire [0:0]\gpr1.dout_i_reg[1]_0 ;
  wire [3:0]\gpr1.dout_i_reg[1]_1 ;
  wire [3:0]\gpr1.dout_i_reg[1]_2 ;
  wire m_aclk;
  wire s_aclk;
  wire [1:0]NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_60_63_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_60_63_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M RAM_reg_0_15_0_5
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I87[1:0]),
        .DIB(I87[3:2]),
        .DIC(I87[5:4]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_0_5_n_0,RAM_reg_0_15_0_5_n_1}),
        .DOB({RAM_reg_0_15_0_5_n_2,RAM_reg_0_15_0_5_n_3}),
        .DOC({RAM_reg_0_15_0_5_n_4,RAM_reg_0_15_0_5_n_5}),
        .DOD(NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M RAM_reg_0_15_12_17
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I87[13:12]),
        .DIB(I87[15:14]),
        .DIC(I87[17:16]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_12_17_n_0,RAM_reg_0_15_12_17_n_1}),
        .DOB({RAM_reg_0_15_12_17_n_2,RAM_reg_0_15_12_17_n_3}),
        .DOC({RAM_reg_0_15_12_17_n_4,RAM_reg_0_15_12_17_n_5}),
        .DOD(NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M RAM_reg_0_15_18_23
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I87[19:18]),
        .DIB(I87[21:20]),
        .DIC(I87[23:22]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_18_23_n_0,RAM_reg_0_15_18_23_n_1}),
        .DOB({RAM_reg_0_15_18_23_n_2,RAM_reg_0_15_18_23_n_3}),
        .DOC({RAM_reg_0_15_18_23_n_4,RAM_reg_0_15_18_23_n_5}),
        .DOD(NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M RAM_reg_0_15_24_29
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I87[25:24]),
        .DIB(I87[27:26]),
        .DIC(I87[29:28]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_24_29_n_0,RAM_reg_0_15_24_29_n_1}),
        .DOB({RAM_reg_0_15_24_29_n_2,RAM_reg_0_15_24_29_n_3}),
        .DOC({RAM_reg_0_15_24_29_n_4,RAM_reg_0_15_24_29_n_5}),
        .DOD(NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "35" *) 
  RAM32M RAM_reg_0_15_30_35
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I87[31:30]),
        .DIB(I87[33:32]),
        .DIC(I87[35:34]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_30_35_n_0,RAM_reg_0_15_30_35_n_1}),
        .DOB({RAM_reg_0_15_30_35_n_2,RAM_reg_0_15_30_35_n_3}),
        .DOC({RAM_reg_0_15_30_35_n_4,RAM_reg_0_15_30_35_n_5}),
        .DOD(NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "41" *) 
  RAM32M RAM_reg_0_15_36_41
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I87[37:36]),
        .DIB(I87[39:38]),
        .DIC(I87[41:40]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_36_41_n_0,RAM_reg_0_15_36_41_n_1}),
        .DOB({RAM_reg_0_15_36_41_n_2,RAM_reg_0_15_36_41_n_3}),
        .DOC({RAM_reg_0_15_36_41_n_4,RAM_reg_0_15_36_41_n_5}),
        .DOD(NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "47" *) 
  RAM32M RAM_reg_0_15_42_47
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I87[43:42]),
        .DIB(I87[45:44]),
        .DIC(I87[47:46]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_42_47_n_0,RAM_reg_0_15_42_47_n_1}),
        .DOB({RAM_reg_0_15_42_47_n_2,RAM_reg_0_15_42_47_n_3}),
        .DOC({RAM_reg_0_15_42_47_n_4,RAM_reg_0_15_42_47_n_5}),
        .DOD(NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "53" *) 
  RAM32M RAM_reg_0_15_48_53
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I87[49:48]),
        .DIB(I87[51:50]),
        .DIC(I87[53:52]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_48_53_n_0,RAM_reg_0_15_48_53_n_1}),
        .DOB({RAM_reg_0_15_48_53_n_2,RAM_reg_0_15_48_53_n_3}),
        .DOC({RAM_reg_0_15_48_53_n_4,RAM_reg_0_15_48_53_n_5}),
        .DOD(NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "59" *) 
  RAM32M RAM_reg_0_15_54_59
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I87[55:54]),
        .DIB(I87[57:56]),
        .DIC(I87[59:58]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_54_59_n_0,RAM_reg_0_15_54_59_n_1}),
        .DOB({RAM_reg_0_15_54_59_n_2,RAM_reg_0_15_54_59_n_3}),
        .DOC({RAM_reg_0_15_54_59_n_4,RAM_reg_0_15_54_59_n_5}),
        .DOD(NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "63" *) 
  RAM32M RAM_reg_0_15_60_63
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I87[61:60]),
        .DIB(I87[63:62]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_60_63_n_0,RAM_reg_0_15_60_63_n_1}),
        .DOB({RAM_reg_0_15_60_63_n_2,RAM_reg_0_15_60_63_n_3}),
        .DOC(NLW_RAM_reg_0_15_60_63_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_15_60_63_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M RAM_reg_0_15_6_11
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I87[7:6]),
        .DIB(I87[9:8]),
        .DIC(I87[11:10]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_6_11_n_0,RAM_reg_0_15_6_11_n_1}),
        .DOB({RAM_reg_0_15_6_11_n_2,RAM_reg_0_15_6_11_n_3}),
        .DOC({RAM_reg_0_15_6_11_n_4,RAM_reg_0_15_6_11_n_5}),
        .DOD(NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_1),
        .Q(dout_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_5),
        .Q(dout_i[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_4),
        .Q(dout_i[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_1),
        .Q(dout_i[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_0),
        .Q(dout_i[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_3),
        .Q(dout_i[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_2),
        .Q(dout_i[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[16] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_5),
        .Q(dout_i[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[17] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_4),
        .Q(dout_i[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[18] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_1),
        .Q(dout_i[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[19] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_0),
        .Q(dout_i[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_0),
        .Q(dout_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[20] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_3),
        .Q(dout_i[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[21] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_2),
        .Q(dout_i[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[22] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_5),
        .Q(dout_i[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[23] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_4),
        .Q(dout_i[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[24] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_1),
        .Q(dout_i[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[25] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_0),
        .Q(dout_i[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[26] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_3),
        .Q(dout_i[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[27] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_2),
        .Q(dout_i[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[28] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_5),
        .Q(dout_i[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[29] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_4),
        .Q(dout_i[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_3),
        .Q(dout_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[30] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_1),
        .Q(dout_i[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[31] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_0),
        .Q(dout_i[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[32] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_3),
        .Q(dout_i[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[33] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_2),
        .Q(dout_i[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[34] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_5),
        .Q(dout_i[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[35] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_4),
        .Q(dout_i[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[36] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_1),
        .Q(dout_i[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[37] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_0),
        .Q(dout_i[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[38] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_3),
        .Q(dout_i[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[39] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_2),
        .Q(dout_i[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_2),
        .Q(dout_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[40] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_5),
        .Q(dout_i[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[41] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_4),
        .Q(dout_i[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[42] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_1),
        .Q(dout_i[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[43] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_0),
        .Q(dout_i[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[44] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_3),
        .Q(dout_i[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[45] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_2),
        .Q(dout_i[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[46] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_5),
        .Q(dout_i[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[47] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_4),
        .Q(dout_i[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[48] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_1),
        .Q(dout_i[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[49] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_0),
        .Q(dout_i[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_5),
        .Q(dout_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[50] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_3),
        .Q(dout_i[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[51] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_2),
        .Q(dout_i[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[52] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_5),
        .Q(dout_i[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[53] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_4),
        .Q(dout_i[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[54] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_1),
        .Q(dout_i[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[55] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_0),
        .Q(dout_i[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[56] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_3),
        .Q(dout_i[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[57] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_2),
        .Q(dout_i[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[58] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_5),
        .Q(dout_i[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[59] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_4),
        .Q(dout_i[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_4),
        .Q(dout_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[60] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_63_n_1),
        .Q(dout_i[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[61] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_63_n_0),
        .Q(dout_i[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[62] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_63_n_3),
        .Q(dout_i[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[63] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_63_n_2),
        .Q(dout_i[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_1),
        .Q(dout_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_0),
        .Q(dout_i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_3),
        .Q(dout_i[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(m_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_2),
        .Q(dout_i[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module design_1_auto_cc_0_dmem__parameterized3
   (dout_i,
    m_aclk,
    \gpr1.dout_i_reg[1]_0 ,
    I91,
    \gpr1.dout_i_reg[1]_1 ,
    \gpr1.dout_i_reg[1]_2 ,
    \gpr1.dout_i_reg[0]_0 ,
    s_aclk);
  output [136:0]dout_i;
  input m_aclk;
  input [0:0]\gpr1.dout_i_reg[1]_0 ;
  input [136:0]I91;
  input [3:0]\gpr1.dout_i_reg[1]_1 ;
  input [3:0]\gpr1.dout_i_reg[1]_2 ;
  input [0:0]\gpr1.dout_i_reg[0]_0 ;
  input s_aclk;

  wire [136:0]I91;
  wire RAM_reg_0_15_0_5_n_0;
  wire RAM_reg_0_15_0_5_n_1;
  wire RAM_reg_0_15_0_5_n_2;
  wire RAM_reg_0_15_0_5_n_3;
  wire RAM_reg_0_15_0_5_n_4;
  wire RAM_reg_0_15_0_5_n_5;
  wire RAM_reg_0_15_102_107_n_0;
  wire RAM_reg_0_15_102_107_n_1;
  wire RAM_reg_0_15_102_107_n_2;
  wire RAM_reg_0_15_102_107_n_3;
  wire RAM_reg_0_15_102_107_n_4;
  wire RAM_reg_0_15_102_107_n_5;
  wire RAM_reg_0_15_108_113_n_0;
  wire RAM_reg_0_15_108_113_n_1;
  wire RAM_reg_0_15_108_113_n_2;
  wire RAM_reg_0_15_108_113_n_3;
  wire RAM_reg_0_15_108_113_n_4;
  wire RAM_reg_0_15_108_113_n_5;
  wire RAM_reg_0_15_114_119_n_0;
  wire RAM_reg_0_15_114_119_n_1;
  wire RAM_reg_0_15_114_119_n_2;
  wire RAM_reg_0_15_114_119_n_3;
  wire RAM_reg_0_15_114_119_n_4;
  wire RAM_reg_0_15_114_119_n_5;
  wire RAM_reg_0_15_120_125_n_0;
  wire RAM_reg_0_15_120_125_n_1;
  wire RAM_reg_0_15_120_125_n_2;
  wire RAM_reg_0_15_120_125_n_3;
  wire RAM_reg_0_15_120_125_n_4;
  wire RAM_reg_0_15_120_125_n_5;
  wire RAM_reg_0_15_126_131_n_0;
  wire RAM_reg_0_15_126_131_n_1;
  wire RAM_reg_0_15_126_131_n_2;
  wire RAM_reg_0_15_126_131_n_3;
  wire RAM_reg_0_15_126_131_n_4;
  wire RAM_reg_0_15_126_131_n_5;
  wire RAM_reg_0_15_12_17_n_0;
  wire RAM_reg_0_15_12_17_n_1;
  wire RAM_reg_0_15_12_17_n_2;
  wire RAM_reg_0_15_12_17_n_3;
  wire RAM_reg_0_15_12_17_n_4;
  wire RAM_reg_0_15_12_17_n_5;
  wire RAM_reg_0_15_132_136_n_0;
  wire RAM_reg_0_15_132_136_n_1;
  wire RAM_reg_0_15_132_136_n_2;
  wire RAM_reg_0_15_132_136_n_3;
  wire RAM_reg_0_15_132_136_n_5;
  wire RAM_reg_0_15_18_23_n_0;
  wire RAM_reg_0_15_18_23_n_1;
  wire RAM_reg_0_15_18_23_n_2;
  wire RAM_reg_0_15_18_23_n_3;
  wire RAM_reg_0_15_18_23_n_4;
  wire RAM_reg_0_15_18_23_n_5;
  wire RAM_reg_0_15_24_29_n_0;
  wire RAM_reg_0_15_24_29_n_1;
  wire RAM_reg_0_15_24_29_n_2;
  wire RAM_reg_0_15_24_29_n_3;
  wire RAM_reg_0_15_24_29_n_4;
  wire RAM_reg_0_15_24_29_n_5;
  wire RAM_reg_0_15_30_35_n_0;
  wire RAM_reg_0_15_30_35_n_1;
  wire RAM_reg_0_15_30_35_n_2;
  wire RAM_reg_0_15_30_35_n_3;
  wire RAM_reg_0_15_30_35_n_4;
  wire RAM_reg_0_15_30_35_n_5;
  wire RAM_reg_0_15_36_41_n_0;
  wire RAM_reg_0_15_36_41_n_1;
  wire RAM_reg_0_15_36_41_n_2;
  wire RAM_reg_0_15_36_41_n_3;
  wire RAM_reg_0_15_36_41_n_4;
  wire RAM_reg_0_15_36_41_n_5;
  wire RAM_reg_0_15_42_47_n_0;
  wire RAM_reg_0_15_42_47_n_1;
  wire RAM_reg_0_15_42_47_n_2;
  wire RAM_reg_0_15_42_47_n_3;
  wire RAM_reg_0_15_42_47_n_4;
  wire RAM_reg_0_15_42_47_n_5;
  wire RAM_reg_0_15_48_53_n_0;
  wire RAM_reg_0_15_48_53_n_1;
  wire RAM_reg_0_15_48_53_n_2;
  wire RAM_reg_0_15_48_53_n_3;
  wire RAM_reg_0_15_48_53_n_4;
  wire RAM_reg_0_15_48_53_n_5;
  wire RAM_reg_0_15_54_59_n_0;
  wire RAM_reg_0_15_54_59_n_1;
  wire RAM_reg_0_15_54_59_n_2;
  wire RAM_reg_0_15_54_59_n_3;
  wire RAM_reg_0_15_54_59_n_4;
  wire RAM_reg_0_15_54_59_n_5;
  wire RAM_reg_0_15_60_65_n_0;
  wire RAM_reg_0_15_60_65_n_1;
  wire RAM_reg_0_15_60_65_n_2;
  wire RAM_reg_0_15_60_65_n_3;
  wire RAM_reg_0_15_60_65_n_4;
  wire RAM_reg_0_15_60_65_n_5;
  wire RAM_reg_0_15_66_71_n_0;
  wire RAM_reg_0_15_66_71_n_1;
  wire RAM_reg_0_15_66_71_n_2;
  wire RAM_reg_0_15_66_71_n_3;
  wire RAM_reg_0_15_66_71_n_4;
  wire RAM_reg_0_15_66_71_n_5;
  wire RAM_reg_0_15_6_11_n_0;
  wire RAM_reg_0_15_6_11_n_1;
  wire RAM_reg_0_15_6_11_n_2;
  wire RAM_reg_0_15_6_11_n_3;
  wire RAM_reg_0_15_6_11_n_4;
  wire RAM_reg_0_15_6_11_n_5;
  wire RAM_reg_0_15_72_77_n_0;
  wire RAM_reg_0_15_72_77_n_1;
  wire RAM_reg_0_15_72_77_n_2;
  wire RAM_reg_0_15_72_77_n_3;
  wire RAM_reg_0_15_72_77_n_4;
  wire RAM_reg_0_15_72_77_n_5;
  wire RAM_reg_0_15_78_83_n_0;
  wire RAM_reg_0_15_78_83_n_1;
  wire RAM_reg_0_15_78_83_n_2;
  wire RAM_reg_0_15_78_83_n_3;
  wire RAM_reg_0_15_78_83_n_4;
  wire RAM_reg_0_15_78_83_n_5;
  wire RAM_reg_0_15_84_89_n_0;
  wire RAM_reg_0_15_84_89_n_1;
  wire RAM_reg_0_15_84_89_n_2;
  wire RAM_reg_0_15_84_89_n_3;
  wire RAM_reg_0_15_84_89_n_4;
  wire RAM_reg_0_15_84_89_n_5;
  wire RAM_reg_0_15_90_95_n_0;
  wire RAM_reg_0_15_90_95_n_1;
  wire RAM_reg_0_15_90_95_n_2;
  wire RAM_reg_0_15_90_95_n_3;
  wire RAM_reg_0_15_90_95_n_4;
  wire RAM_reg_0_15_90_95_n_5;
  wire RAM_reg_0_15_96_101_n_0;
  wire RAM_reg_0_15_96_101_n_1;
  wire RAM_reg_0_15_96_101_n_2;
  wire RAM_reg_0_15_96_101_n_3;
  wire RAM_reg_0_15_96_101_n_4;
  wire RAM_reg_0_15_96_101_n_5;
  wire [136:0]dout_i;
  wire [0:0]\gpr1.dout_i_reg[0]_0 ;
  wire [0:0]\gpr1.dout_i_reg[1]_0 ;
  wire [3:0]\gpr1.dout_i_reg[1]_1 ;
  wire [3:0]\gpr1.dout_i_reg[1]_2 ;
  wire m_aclk;
  wire s_aclk;
  wire [1:0]NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_102_107_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_108_113_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_114_119_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_120_125_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_126_131_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED;
  wire [1:1]NLW_RAM_reg_0_15_132_136_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_132_136_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_60_65_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_66_71_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_72_77_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_78_83_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_84_89_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_90_95_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_96_101_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M RAM_reg_0_15_0_5
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[1:0]),
        .DIB(I91[3:2]),
        .DIC(I91[5:4]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_0_5_n_0,RAM_reg_0_15_0_5_n_1}),
        .DOB({RAM_reg_0_15_0_5_n_2,RAM_reg_0_15_0_5_n_3}),
        .DOC({RAM_reg_0_15_0_5_n_4,RAM_reg_0_15_0_5_n_5}),
        .DOD(NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "102" *) 
  (* ram_slice_end = "107" *) 
  RAM32M RAM_reg_0_15_102_107
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[103:102]),
        .DIB(I91[105:104]),
        .DIC(I91[107:106]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_102_107_n_0,RAM_reg_0_15_102_107_n_1}),
        .DOB({RAM_reg_0_15_102_107_n_2,RAM_reg_0_15_102_107_n_3}),
        .DOC({RAM_reg_0_15_102_107_n_4,RAM_reg_0_15_102_107_n_5}),
        .DOD(NLW_RAM_reg_0_15_102_107_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "108" *) 
  (* ram_slice_end = "113" *) 
  RAM32M RAM_reg_0_15_108_113
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[109:108]),
        .DIB(I91[111:110]),
        .DIC(I91[113:112]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_108_113_n_0,RAM_reg_0_15_108_113_n_1}),
        .DOB({RAM_reg_0_15_108_113_n_2,RAM_reg_0_15_108_113_n_3}),
        .DOC({RAM_reg_0_15_108_113_n_4,RAM_reg_0_15_108_113_n_5}),
        .DOD(NLW_RAM_reg_0_15_108_113_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "114" *) 
  (* ram_slice_end = "119" *) 
  RAM32M RAM_reg_0_15_114_119
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[115:114]),
        .DIB(I91[117:116]),
        .DIC(I91[119:118]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_114_119_n_0,RAM_reg_0_15_114_119_n_1}),
        .DOB({RAM_reg_0_15_114_119_n_2,RAM_reg_0_15_114_119_n_3}),
        .DOC({RAM_reg_0_15_114_119_n_4,RAM_reg_0_15_114_119_n_5}),
        .DOD(NLW_RAM_reg_0_15_114_119_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "120" *) 
  (* ram_slice_end = "125" *) 
  RAM32M RAM_reg_0_15_120_125
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[121:120]),
        .DIB(I91[123:122]),
        .DIC(I91[125:124]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_120_125_n_0,RAM_reg_0_15_120_125_n_1}),
        .DOB({RAM_reg_0_15_120_125_n_2,RAM_reg_0_15_120_125_n_3}),
        .DOC({RAM_reg_0_15_120_125_n_4,RAM_reg_0_15_120_125_n_5}),
        .DOD(NLW_RAM_reg_0_15_120_125_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "126" *) 
  (* ram_slice_end = "131" *) 
  RAM32M RAM_reg_0_15_126_131
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[127:126]),
        .DIB(I91[129:128]),
        .DIC(I91[131:130]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_126_131_n_0,RAM_reg_0_15_126_131_n_1}),
        .DOB({RAM_reg_0_15_126_131_n_2,RAM_reg_0_15_126_131_n_3}),
        .DOC({RAM_reg_0_15_126_131_n_4,RAM_reg_0_15_126_131_n_5}),
        .DOD(NLW_RAM_reg_0_15_126_131_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M RAM_reg_0_15_12_17
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[13:12]),
        .DIB(I91[15:14]),
        .DIC(I91[17:16]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_12_17_n_0,RAM_reg_0_15_12_17_n_1}),
        .DOB({RAM_reg_0_15_12_17_n_2,RAM_reg_0_15_12_17_n_3}),
        .DOC({RAM_reg_0_15_12_17_n_4,RAM_reg_0_15_12_17_n_5}),
        .DOD(NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "132" *) 
  (* ram_slice_end = "136" *) 
  RAM32M RAM_reg_0_15_132_136
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[133:132]),
        .DIB(I91[135:134]),
        .DIC({1'b0,I91[136]}),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_132_136_n_0,RAM_reg_0_15_132_136_n_1}),
        .DOB({RAM_reg_0_15_132_136_n_2,RAM_reg_0_15_132_136_n_3}),
        .DOC({NLW_RAM_reg_0_15_132_136_DOC_UNCONNECTED[1],RAM_reg_0_15_132_136_n_5}),
        .DOD(NLW_RAM_reg_0_15_132_136_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M RAM_reg_0_15_18_23
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[19:18]),
        .DIB(I91[21:20]),
        .DIC(I91[23:22]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_18_23_n_0,RAM_reg_0_15_18_23_n_1}),
        .DOB({RAM_reg_0_15_18_23_n_2,RAM_reg_0_15_18_23_n_3}),
        .DOC({RAM_reg_0_15_18_23_n_4,RAM_reg_0_15_18_23_n_5}),
        .DOD(NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M RAM_reg_0_15_24_29
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[25:24]),
        .DIB(I91[27:26]),
        .DIC(I91[29:28]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_24_29_n_0,RAM_reg_0_15_24_29_n_1}),
        .DOB({RAM_reg_0_15_24_29_n_2,RAM_reg_0_15_24_29_n_3}),
        .DOC({RAM_reg_0_15_24_29_n_4,RAM_reg_0_15_24_29_n_5}),
        .DOD(NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "35" *) 
  RAM32M RAM_reg_0_15_30_35
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[31:30]),
        .DIB(I91[33:32]),
        .DIC(I91[35:34]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_30_35_n_0,RAM_reg_0_15_30_35_n_1}),
        .DOB({RAM_reg_0_15_30_35_n_2,RAM_reg_0_15_30_35_n_3}),
        .DOC({RAM_reg_0_15_30_35_n_4,RAM_reg_0_15_30_35_n_5}),
        .DOD(NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "41" *) 
  RAM32M RAM_reg_0_15_36_41
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[37:36]),
        .DIB(I91[39:38]),
        .DIC(I91[41:40]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_36_41_n_0,RAM_reg_0_15_36_41_n_1}),
        .DOB({RAM_reg_0_15_36_41_n_2,RAM_reg_0_15_36_41_n_3}),
        .DOC({RAM_reg_0_15_36_41_n_4,RAM_reg_0_15_36_41_n_5}),
        .DOD(NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "47" *) 
  RAM32M RAM_reg_0_15_42_47
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[43:42]),
        .DIB(I91[45:44]),
        .DIC(I91[47:46]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_42_47_n_0,RAM_reg_0_15_42_47_n_1}),
        .DOB({RAM_reg_0_15_42_47_n_2,RAM_reg_0_15_42_47_n_3}),
        .DOC({RAM_reg_0_15_42_47_n_4,RAM_reg_0_15_42_47_n_5}),
        .DOD(NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "53" *) 
  RAM32M RAM_reg_0_15_48_53
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[49:48]),
        .DIB(I91[51:50]),
        .DIC(I91[53:52]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_48_53_n_0,RAM_reg_0_15_48_53_n_1}),
        .DOB({RAM_reg_0_15_48_53_n_2,RAM_reg_0_15_48_53_n_3}),
        .DOC({RAM_reg_0_15_48_53_n_4,RAM_reg_0_15_48_53_n_5}),
        .DOD(NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "59" *) 
  RAM32M RAM_reg_0_15_54_59
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[55:54]),
        .DIB(I91[57:56]),
        .DIC(I91[59:58]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_54_59_n_0,RAM_reg_0_15_54_59_n_1}),
        .DOB({RAM_reg_0_15_54_59_n_2,RAM_reg_0_15_54_59_n_3}),
        .DOC({RAM_reg_0_15_54_59_n_4,RAM_reg_0_15_54_59_n_5}),
        .DOD(NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "65" *) 
  RAM32M RAM_reg_0_15_60_65
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[61:60]),
        .DIB(I91[63:62]),
        .DIC(I91[65:64]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_60_65_n_0,RAM_reg_0_15_60_65_n_1}),
        .DOB({RAM_reg_0_15_60_65_n_2,RAM_reg_0_15_60_65_n_3}),
        .DOC({RAM_reg_0_15_60_65_n_4,RAM_reg_0_15_60_65_n_5}),
        .DOD(NLW_RAM_reg_0_15_60_65_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "66" *) 
  (* ram_slice_end = "71" *) 
  RAM32M RAM_reg_0_15_66_71
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[67:66]),
        .DIB(I91[69:68]),
        .DIC(I91[71:70]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_66_71_n_0,RAM_reg_0_15_66_71_n_1}),
        .DOB({RAM_reg_0_15_66_71_n_2,RAM_reg_0_15_66_71_n_3}),
        .DOC({RAM_reg_0_15_66_71_n_4,RAM_reg_0_15_66_71_n_5}),
        .DOD(NLW_RAM_reg_0_15_66_71_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M RAM_reg_0_15_6_11
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[7:6]),
        .DIB(I91[9:8]),
        .DIC(I91[11:10]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_6_11_n_0,RAM_reg_0_15_6_11_n_1}),
        .DOB({RAM_reg_0_15_6_11_n_2,RAM_reg_0_15_6_11_n_3}),
        .DOC({RAM_reg_0_15_6_11_n_4,RAM_reg_0_15_6_11_n_5}),
        .DOD(NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "77" *) 
  RAM32M RAM_reg_0_15_72_77
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[73:72]),
        .DIB(I91[75:74]),
        .DIC(I91[77:76]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_72_77_n_0,RAM_reg_0_15_72_77_n_1}),
        .DOB({RAM_reg_0_15_72_77_n_2,RAM_reg_0_15_72_77_n_3}),
        .DOC({RAM_reg_0_15_72_77_n_4,RAM_reg_0_15_72_77_n_5}),
        .DOD(NLW_RAM_reg_0_15_72_77_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "78" *) 
  (* ram_slice_end = "83" *) 
  RAM32M RAM_reg_0_15_78_83
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[79:78]),
        .DIB(I91[81:80]),
        .DIC(I91[83:82]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_78_83_n_0,RAM_reg_0_15_78_83_n_1}),
        .DOB({RAM_reg_0_15_78_83_n_2,RAM_reg_0_15_78_83_n_3}),
        .DOC({RAM_reg_0_15_78_83_n_4,RAM_reg_0_15_78_83_n_5}),
        .DOD(NLW_RAM_reg_0_15_78_83_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "84" *) 
  (* ram_slice_end = "89" *) 
  RAM32M RAM_reg_0_15_84_89
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[85:84]),
        .DIB(I91[87:86]),
        .DIC(I91[89:88]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_84_89_n_0,RAM_reg_0_15_84_89_n_1}),
        .DOB({RAM_reg_0_15_84_89_n_2,RAM_reg_0_15_84_89_n_3}),
        .DOC({RAM_reg_0_15_84_89_n_4,RAM_reg_0_15_84_89_n_5}),
        .DOD(NLW_RAM_reg_0_15_84_89_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "90" *) 
  (* ram_slice_end = "95" *) 
  RAM32M RAM_reg_0_15_90_95
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[91:90]),
        .DIB(I91[93:92]),
        .DIC(I91[95:94]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_90_95_n_0,RAM_reg_0_15_90_95_n_1}),
        .DOB({RAM_reg_0_15_90_95_n_2,RAM_reg_0_15_90_95_n_3}),
        .DOC({RAM_reg_0_15_90_95_n_4,RAM_reg_0_15_90_95_n_5}),
        .DOD(NLW_RAM_reg_0_15_90_95_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "96" *) 
  (* ram_slice_end = "101" *) 
  RAM32M RAM_reg_0_15_96_101
       (.ADDRA({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRB({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRC({1'b0,\gpr1.dout_i_reg[1]_1 }),
        .ADDRD({1'b0,\gpr1.dout_i_reg[1]_2 }),
        .DIA(I91[97:96]),
        .DIB(I91[99:98]),
        .DIC(I91[101:100]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_15_96_101_n_0,RAM_reg_0_15_96_101_n_1}),
        .DOB({RAM_reg_0_15_96_101_n_2,RAM_reg_0_15_96_101_n_3}),
        .DOC({RAM_reg_0_15_96_101_n_4,RAM_reg_0_15_96_101_n_5}),
        .DOD(NLW_RAM_reg_0_15_96_101_DOD_UNCONNECTED[1:0]),
        .WCLK(m_aclk),
        .WE(\gpr1.dout_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_1),
        .Q(dout_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[100] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_96_101_n_5),
        .Q(dout_i[100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[101] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_96_101_n_4),
        .Q(dout_i[101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[102] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_102_107_n_1),
        .Q(dout_i[102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[103] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_102_107_n_0),
        .Q(dout_i[103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[104] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_102_107_n_3),
        .Q(dout_i[104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[105] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_102_107_n_2),
        .Q(dout_i[105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[106] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_102_107_n_5),
        .Q(dout_i[106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[107] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_102_107_n_4),
        .Q(dout_i[107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[108] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_108_113_n_1),
        .Q(dout_i[108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[109] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_108_113_n_0),
        .Q(dout_i[109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_5),
        .Q(dout_i[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[110] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_108_113_n_3),
        .Q(dout_i[110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[111] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_108_113_n_2),
        .Q(dout_i[111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[112] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_108_113_n_5),
        .Q(dout_i[112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[113] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_108_113_n_4),
        .Q(dout_i[113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[114] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_114_119_n_1),
        .Q(dout_i[114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[115] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_114_119_n_0),
        .Q(dout_i[115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[116] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_114_119_n_3),
        .Q(dout_i[116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[117] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_114_119_n_2),
        .Q(dout_i[117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[118] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_114_119_n_5),
        .Q(dout_i[118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[119] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_114_119_n_4),
        .Q(dout_i[119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_4),
        .Q(dout_i[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[120] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_120_125_n_1),
        .Q(dout_i[120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[121] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_120_125_n_0),
        .Q(dout_i[121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[122] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_120_125_n_3),
        .Q(dout_i[122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[123] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_120_125_n_2),
        .Q(dout_i[123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[124] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_120_125_n_5),
        .Q(dout_i[124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[125] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_120_125_n_4),
        .Q(dout_i[125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[126] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_126_131_n_1),
        .Q(dout_i[126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[127] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_126_131_n_0),
        .Q(dout_i[127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[128] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_126_131_n_3),
        .Q(dout_i[128]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[129] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_126_131_n_2),
        .Q(dout_i[129]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_1),
        .Q(dout_i[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[130] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_126_131_n_5),
        .Q(dout_i[130]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[131] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_126_131_n_4),
        .Q(dout_i[131]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[132] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_132_136_n_1),
        .Q(dout_i[132]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[133] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_132_136_n_0),
        .Q(dout_i[133]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[134] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_132_136_n_3),
        .Q(dout_i[134]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[135] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_132_136_n_2),
        .Q(dout_i[135]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[136] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_132_136_n_5),
        .Q(dout_i[136]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_0),
        .Q(dout_i[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_3),
        .Q(dout_i[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_2),
        .Q(dout_i[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_5),
        .Q(dout_i[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_12_17_n_4),
        .Q(dout_i[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_1),
        .Q(dout_i[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_0),
        .Q(dout_i[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_0),
        .Q(dout_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_3),
        .Q(dout_i[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_2),
        .Q(dout_i[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_5),
        .Q(dout_i[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_18_23_n_4),
        .Q(dout_i[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_1),
        .Q(dout_i[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_0),
        .Q(dout_i[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_3),
        .Q(dout_i[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_2),
        .Q(dout_i[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_5),
        .Q(dout_i[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_24_29_n_4),
        .Q(dout_i[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_3),
        .Q(dout_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_1),
        .Q(dout_i[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_0),
        .Q(dout_i[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_3),
        .Q(dout_i[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_2),
        .Q(dout_i[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_5),
        .Q(dout_i[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_30_35_n_4),
        .Q(dout_i[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_1),
        .Q(dout_i[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_0),
        .Q(dout_i[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_3),
        .Q(dout_i[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_2),
        .Q(dout_i[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_2),
        .Q(dout_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_5),
        .Q(dout_i[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[41] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_36_41_n_4),
        .Q(dout_i[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[42] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_1),
        .Q(dout_i[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[43] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_0),
        .Q(dout_i[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[44] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_3),
        .Q(dout_i[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[45] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_2),
        .Q(dout_i[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[46] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_5),
        .Q(dout_i[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[47] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_42_47_n_4),
        .Q(dout_i[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[48] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_1),
        .Q(dout_i[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[49] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_0),
        .Q(dout_i[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_5),
        .Q(dout_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[50] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_3),
        .Q(dout_i[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[51] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_2),
        .Q(dout_i[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[52] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_5),
        .Q(dout_i[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[53] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_48_53_n_4),
        .Q(dout_i[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[54] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_1),
        .Q(dout_i[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[55] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_0),
        .Q(dout_i[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[56] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_3),
        .Q(dout_i[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[57] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_2),
        .Q(dout_i[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[58] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_5),
        .Q(dout_i[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[59] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_54_59_n_4),
        .Q(dout_i[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_0_5_n_4),
        .Q(dout_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[60] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_65_n_1),
        .Q(dout_i[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[61] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_65_n_0),
        .Q(dout_i[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[62] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_65_n_3),
        .Q(dout_i[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[63] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_65_n_2),
        .Q(dout_i[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[64] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_65_n_5),
        .Q(dout_i[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[65] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_60_65_n_4),
        .Q(dout_i[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[66] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_66_71_n_1),
        .Q(dout_i[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[67] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_66_71_n_0),
        .Q(dout_i[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[68] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_66_71_n_3),
        .Q(dout_i[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[69] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_66_71_n_2),
        .Q(dout_i[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_1),
        .Q(dout_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[70] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_66_71_n_5),
        .Q(dout_i[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[71] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_66_71_n_4),
        .Q(dout_i[71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[72] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_72_77_n_1),
        .Q(dout_i[72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[73] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_72_77_n_0),
        .Q(dout_i[73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[74] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_72_77_n_3),
        .Q(dout_i[74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[75] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_72_77_n_2),
        .Q(dout_i[75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[76] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_72_77_n_5),
        .Q(dout_i[76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[77] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_72_77_n_4),
        .Q(dout_i[77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[78] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_78_83_n_1),
        .Q(dout_i[78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[79] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_78_83_n_0),
        .Q(dout_i[79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_0),
        .Q(dout_i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[80] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_78_83_n_3),
        .Q(dout_i[80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[81] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_78_83_n_2),
        .Q(dout_i[81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[82] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_78_83_n_5),
        .Q(dout_i[82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[83] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_78_83_n_4),
        .Q(dout_i[83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[84] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_84_89_n_1),
        .Q(dout_i[84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[85] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_84_89_n_0),
        .Q(dout_i[85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[86] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_84_89_n_3),
        .Q(dout_i[86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[87] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_84_89_n_2),
        .Q(dout_i[87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[88] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_84_89_n_5),
        .Q(dout_i[88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[89] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_84_89_n_4),
        .Q(dout_i[89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_3),
        .Q(dout_i[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[90] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_90_95_n_1),
        .Q(dout_i[90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[91] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_90_95_n_0),
        .Q(dout_i[91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[92] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_90_95_n_3),
        .Q(dout_i[92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[93] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_90_95_n_2),
        .Q(dout_i[93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[94] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_90_95_n_5),
        .Q(dout_i[94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[95] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_90_95_n_4),
        .Q(dout_i[95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[96] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_96_101_n_1),
        .Q(dout_i[96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[97] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_96_101_n_0),
        .Q(dout_i[97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[98] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_96_101_n_3),
        .Q(dout_i[98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[99] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_96_101_n_2),
        .Q(dout_i[99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_15_6_11_n_2),
        .Q(dout_i[9]),
        .R(1'b0));
endmodule

module design_1_auto_cc_0_fifo_generator_ramfifo
   (src_in,
    s_axi_awready,
    m_axi_awvalid,
    Q,
    src_arst,
    s_aclk,
    m_aclk,
    s_axi_awvalid,
    m_axi_awready,
    DI);
  output src_in;
  output s_axi_awready;
  output m_axi_awvalid;
  output [66:0]Q;
  input src_arst;
  input s_aclk;
  input m_aclk;
  input s_axi_awvalid;
  input m_axi_awready;
  input [66:0]DI;

  wire [66:0]DI;
  wire [66:0]Q;
  wire dout_i0;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_5 ;
  wire m_aclk;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire ram_rd_en_i;
  wire ram_wr_en;
  wire [3:0]rd_pntr;
  wire [2:0]rd_pntr_plus1;
  wire [3:0]rd_pntr_wr;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_0;
  wire rstblk_n_1;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire src_arst;
  wire src_in;
  wire [3:0]wr_pntr;
  wire [2:0]wr_pntr_plus2;
  wire [3:0]wr_pntr_rd;

  design_1_auto_cc_0_clk_x_pntrs__xdcDup__1 \gntv_or_sync_fifo.gcx.clkx 
       (.Q(wr_pntr_plus2),
        .RD_PNTR_WR(rd_pntr_wr),
        .WR_PNTR_RD(wr_pntr_rd),
        .\dest_out_bin_ff_reg[2] (\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .\dest_out_bin_ff_reg[2]_0 (\gntv_or_sync_fifo.gcx.clkx_n_5 ),
        .m_aclk(m_aclk),
        .ram_empty_i_reg(rd_pntr_plus1),
        .s_aclk(s_aclk),
        .\src_gray_ff_reg[3] (wr_pntr),
        .\src_gray_ff_reg[3]_0 (rd_pntr));
  design_1_auto_cc_0_rd_logic_7 \gntv_or_sync_fifo.gl0.rd 
       (.E(ram_rd_en_i),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(wr_pntr_rd),
        .\gc0.count_d1_reg[3] (rd_pntr),
        .\gc0.count_d1_reg[3]_0 (rstblk_n_1),
        .m_aclk(m_aclk),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (dout_i0),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_5 ));
  design_1_auto_cc_0_wr_logic_8 \gntv_or_sync_fifo.gl0.wr 
       (.AR(rstblk_n_0),
        .E(ram_wr_en),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(rd_pntr_wr),
        .\gic0.gc0.count_d2_reg[3] (wr_pntr),
        .out(rst_full_ff_i),
        .ram_full_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .ram_full_i_reg_0(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
  design_1_auto_cc_0_memory \gntv_or_sync_fifo.mem 
       (.DI(DI),
        .E(dout_i0),
        .Q(Q),
        .\gpr1.dout_i_reg[0] (ram_rd_en_i),
        .\gpr1.dout_i_reg[1] (ram_wr_en),
        .\gpr1.dout_i_reg[1]_0 (rd_pntr),
        .\gpr1.dout_i_reg[1]_1 (wr_pntr),
        .m_aclk(m_aclk),
        .s_aclk(s_aclk));
  design_1_auto_cc_0_reset_blk_ramfifo__xdcDup__1 rstblk
       (.AR(rstblk_n_0),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rst_full_gen_i),
        .m_aclk(m_aclk),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 (rstblk_n_1),
        .out(rst_full_ff_i),
        .s_aclk(s_aclk),
        .src_arst(src_arst),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_auto_cc_0_fifo_generator_ramfifo__parameterized0
   (src_in,
    s_axi_wready,
    m_axi_wvalid,
    \goreg_dm.dout_i_reg[145] ,
    src_arst,
    s_aclk,
    m_aclk,
    s_axi_wvalid,
    m_axi_wready,
    I79);
  output src_in;
  output s_axi_wready;
  output m_axi_wvalid;
  output [145:0]\goreg_dm.dout_i_reg[145] ;
  input src_arst;
  input s_aclk;
  input m_aclk;
  input s_axi_wvalid;
  input m_axi_wready;
  input [145:0]I79;

  wire [145:0]I79;
  wire dout_i0;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_5 ;
  wire [145:0]\goreg_dm.dout_i_reg[145] ;
  wire m_aclk;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire ram_rd_en_i;
  wire ram_wr_en;
  wire [3:0]rd_pntr;
  wire [2:0]rd_pntr_plus1;
  wire [3:0]rd_pntr_wr;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_0;
  wire rstblk_n_1;
  wire s_aclk;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire src_arst;
  wire src_in;
  wire [3:0]wr_pntr;
  wire [2:0]wr_pntr_plus2;
  wire [3:0]wr_pntr_rd;

  design_1_auto_cc_0_clk_x_pntrs__xdcDup__2 \gntv_or_sync_fifo.gcx.clkx 
       (.Q(wr_pntr_plus2),
        .RD_PNTR_WR(rd_pntr_wr),
        .WR_PNTR_RD(wr_pntr_rd),
        .\dest_out_bin_ff_reg[2] (\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .\dest_out_bin_ff_reg[2]_0 (\gntv_or_sync_fifo.gcx.clkx_n_5 ),
        .m_aclk(m_aclk),
        .ram_empty_i_reg(rd_pntr_plus1),
        .s_aclk(s_aclk),
        .\src_gray_ff_reg[3] (wr_pntr),
        .\src_gray_ff_reg[3]_0 (rd_pntr));
  design_1_auto_cc_0_rd_logic_0 \gntv_or_sync_fifo.gl0.rd 
       (.E(ram_rd_en_i),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(wr_pntr_rd),
        .\gc0.count_d1_reg[3] (rd_pntr),
        .\gc0.count_d1_reg[3]_0 (rstblk_n_1),
        .m_aclk(m_aclk),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (dout_i0),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_5 ));
  design_1_auto_cc_0_wr_logic_1 \gntv_or_sync_fifo.gl0.wr 
       (.AR(rstblk_n_0),
        .E(ram_wr_en),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(rd_pntr_wr),
        .\gic0.gc0.count_d2_reg[3] (wr_pntr),
        .out(rst_full_ff_i),
        .ram_full_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .ram_full_i_reg_0(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
  design_1_auto_cc_0_memory__parameterized0 \gntv_or_sync_fifo.mem 
       (.E(dout_i0),
        .I79(I79),
        .\goreg_dm.dout_i_reg[145]_0 (\goreg_dm.dout_i_reg[145] ),
        .\gpr1.dout_i_reg[0] (ram_rd_en_i),
        .\gpr1.dout_i_reg[1] (ram_wr_en),
        .\gpr1.dout_i_reg[1]_0 (rd_pntr),
        .\gpr1.dout_i_reg[1]_1 (wr_pntr),
        .m_aclk(m_aclk),
        .s_aclk(s_aclk));
  design_1_auto_cc_0_reset_blk_ramfifo__xdcDup__2 rstblk
       (.AR(rstblk_n_0),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rst_full_gen_i),
        .m_aclk(m_aclk),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 (rstblk_n_1),
        .out(rst_full_ff_i),
        .s_aclk(s_aclk),
        .src_arst(src_arst),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_auto_cc_0_fifo_generator_ramfifo__parameterized1
   (s_axi_bvalid,
    m_axi_bready,
    \goreg_dm.dout_i_reg[7] ,
    src_arst,
    m_aclk,
    s_aclk,
    s_axi_bready,
    m_axi_bvalid,
    I83);
  output s_axi_bvalid;
  output m_axi_bready;
  output [7:0]\goreg_dm.dout_i_reg[7] ;
  input src_arst;
  input m_aclk;
  input s_aclk;
  input s_axi_bready;
  input m_axi_bvalid;
  input [7:0]I83;

  wire [7:0]I83;
  wire dout_i0;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_5 ;
  wire [7:0]\goreg_dm.dout_i_reg[7] ;
  wire m_aclk;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire ram_rd_en_i;
  wire ram_wr_en;
  wire [3:0]rd_pntr;
  wire [2:0]rd_pntr_plus1;
  wire [3:0]rd_pntr_wr;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_0;
  wire rstblk_n_1;
  wire s_aclk;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire src_arst;
  wire [3:0]wr_pntr;
  wire [2:0]wr_pntr_plus2;
  wire [3:0]wr_pntr_rd;

  design_1_auto_cc_0_clk_x_pntrs__xdcDup__3 \gntv_or_sync_fifo.gcx.clkx 
       (.Q(rd_pntr_plus1),
        .RD_PNTR_WR(rd_pntr_wr),
        .WR_PNTR_RD(wr_pntr_rd),
        .\dest_out_bin_ff_reg[2] (\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .\dest_out_bin_ff_reg[2]_0 (\gntv_or_sync_fifo.gcx.clkx_n_5 ),
        .m_aclk(m_aclk),
        .ram_full_i_reg(wr_pntr_plus2),
        .s_aclk(s_aclk),
        .\src_gray_ff_reg[3] (wr_pntr),
        .\src_gray_ff_reg[3]_0 (rd_pntr));
  design_1_auto_cc_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.E(ram_rd_en_i),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(wr_pntr_rd),
        .\gc0.count_d1_reg[3] (rd_pntr),
        .\gc0.count_d1_reg[3]_0 (rstblk_n_1),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (dout_i0),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .s_aclk(s_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid));
  design_1_auto_cc_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AR(rstblk_n_0),
        .E(ram_wr_en),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(rd_pntr_wr),
        .\gic0.gc0.count_d2_reg[3] (wr_pntr),
        .m_aclk(m_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .out(rst_full_ff_i),
        .ram_full_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_5 ),
        .ram_full_i_reg_0(rst_full_gen_i));
  design_1_auto_cc_0_memory__parameterized1 \gntv_or_sync_fifo.mem 
       (.E(dout_i0),
        .I64(ram_wr_en),
        .I83(I83),
        .count_d2(wr_pntr),
        .\goreg_dm.dout_i_reg[7]_0 (\goreg_dm.dout_i_reg[7] ),
        .\gpr1.dout_i_reg[0] (ram_rd_en_i),
        .\gpr1.dout_i_reg[1] (rd_pntr),
        .m_aclk(m_aclk),
        .s_aclk(s_aclk));
  design_1_auto_cc_0_reset_blk_ramfifo__xdcDup__3 rstblk
       (.AR(rstblk_n_0),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rst_full_gen_i),
        .m_aclk(m_aclk),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 (rstblk_n_1),
        .out(rst_full_ff_i),
        .s_aclk(s_aclk),
        .src_arst(src_arst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_auto_cc_0_fifo_generator_ramfifo__parameterized2
   (src_in,
    s_axi_arready,
    m_axi_arvalid,
    \goreg_dm.dout_i_reg[63] ,
    src_arst,
    s_aclk,
    m_aclk,
    s_axi_arvalid,
    m_axi_arready,
    I87);
  output src_in;
  output s_axi_arready;
  output m_axi_arvalid;
  output [63:0]\goreg_dm.dout_i_reg[63] ;
  input src_arst;
  input s_aclk;
  input m_aclk;
  input s_axi_arvalid;
  input m_axi_arready;
  input [63:0]I87;

  wire [63:0]I87;
  wire dout_i0;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_5 ;
  wire [63:0]\goreg_dm.dout_i_reg[63] ;
  wire m_aclk;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire ram_rd_en_i;
  wire ram_wr_en;
  wire [3:0]rd_pntr;
  wire [2:0]rd_pntr_plus1;
  wire [3:0]rd_pntr_wr;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_0;
  wire rstblk_n_1;
  wire s_aclk;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire src_arst;
  wire src_in;
  wire [3:0]wr_pntr;
  wire [2:0]wr_pntr_plus2;
  wire [3:0]wr_pntr_rd;

  design_1_auto_cc_0_clk_x_pntrs__xdcDup__4 \gntv_or_sync_fifo.gcx.clkx 
       (.Q(wr_pntr_plus2),
        .RD_PNTR_WR(rd_pntr_wr),
        .WR_PNTR_RD(wr_pntr_rd),
        .\dest_out_bin_ff_reg[2] (\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .\dest_out_bin_ff_reg[2]_0 (\gntv_or_sync_fifo.gcx.clkx_n_5 ),
        .m_aclk(m_aclk),
        .ram_empty_i_reg(rd_pntr_plus1),
        .s_aclk(s_aclk),
        .\src_gray_ff_reg[3] (wr_pntr),
        .\src_gray_ff_reg[3]_0 (rd_pntr));
  design_1_auto_cc_0_rd_logic_21 \gntv_or_sync_fifo.gl0.rd 
       (.E(ram_rd_en_i),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(wr_pntr_rd),
        .\gc0.count_d1_reg[3] (rd_pntr),
        .\gc0.count_d1_reg[3]_0 (rstblk_n_1),
        .m_aclk(m_aclk),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (dout_i0),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_5 ));
  design_1_auto_cc_0_wr_logic_22 \gntv_or_sync_fifo.gl0.wr 
       (.AR(rstblk_n_0),
        .E(ram_wr_en),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(rd_pntr_wr),
        .\gic0.gc0.count_d2_reg[3] (wr_pntr),
        .out(rst_full_ff_i),
        .ram_full_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .ram_full_i_reg_0(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
  design_1_auto_cc_0_memory__parameterized2 \gntv_or_sync_fifo.mem 
       (.E(dout_i0),
        .I87(I87),
        .\goreg_dm.dout_i_reg[63]_0 (\goreg_dm.dout_i_reg[63] ),
        .\gpr1.dout_i_reg[0] (ram_rd_en_i),
        .\gpr1.dout_i_reg[1] (ram_wr_en),
        .\gpr1.dout_i_reg[1]_0 (rd_pntr),
        .\gpr1.dout_i_reg[1]_1 (wr_pntr),
        .m_aclk(m_aclk),
        .s_aclk(s_aclk));
  design_1_auto_cc_0_reset_blk_ramfifo__xdcDup__4 rstblk
       (.AR(rstblk_n_0),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rst_full_gen_i),
        .m_aclk(m_aclk),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 (rstblk_n_1),
        .out(rst_full_ff_i),
        .s_aclk(s_aclk),
        .src_arst(src_arst),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_auto_cc_0_fifo_generator_ramfifo__parameterized3
   (src_arst,
    s_axi_rvalid,
    m_axi_rready,
    \goreg_dm.dout_i_reg[136] ,
    m_aclk,
    s_aclk,
    s_axi_rready,
    m_axi_rvalid,
    s_aresetn,
    I91);
  output src_arst;
  output s_axi_rvalid;
  output m_axi_rready;
  output [136:0]\goreg_dm.dout_i_reg[136] ;
  input m_aclk;
  input s_aclk;
  input s_axi_rready;
  input m_axi_rvalid;
  input s_aresetn;
  input [136:0]I91;

  wire [136:0]I91;
  wire dout_i0;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_5 ;
  wire [136:0]\goreg_dm.dout_i_reg[136] ;
  wire m_aclk;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire ram_rd_en_i;
  wire ram_wr_en;
  wire [3:0]rd_pntr;
  wire [2:0]rd_pntr_plus1;
  wire [3:0]rd_pntr_wr;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_1;
  wire rstblk_n_2;
  wire s_aclk;
  wire s_aresetn;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire src_arst;
  wire [3:0]wr_pntr;
  wire [2:0]wr_pntr_plus2;
  wire [3:0]wr_pntr_rd;

  design_1_auto_cc_0_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.Q(rd_pntr_plus1),
        .RD_PNTR_WR(rd_pntr_wr),
        .WR_PNTR_RD(wr_pntr_rd),
        .\dest_out_bin_ff_reg[2] (\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .\dest_out_bin_ff_reg[2]_0 (\gntv_or_sync_fifo.gcx.clkx_n_5 ),
        .m_aclk(m_aclk),
        .ram_full_i_reg(wr_pntr_plus2),
        .s_aclk(s_aclk),
        .\src_gray_ff_reg[3] (wr_pntr),
        .\src_gray_ff_reg[3]_0 (rd_pntr));
  design_1_auto_cc_0_rd_logic_14 \gntv_or_sync_fifo.gl0.rd 
       (.E(ram_rd_en_i),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(wr_pntr_rd),
        .\gc0.count_d1_reg[3] (rd_pntr),
        .\gc0.count_d1_reg[3]_0 (rstblk_n_2),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (dout_i0),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .s_aclk(s_aclk),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
  design_1_auto_cc_0_wr_logic_15 \gntv_or_sync_fifo.gl0.wr 
       (.AR(rstblk_n_1),
        .E(ram_wr_en),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(rd_pntr_wr),
        .\gic0.gc0.count_d2_reg[3] (wr_pntr),
        .m_aclk(m_aclk),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out(rst_full_ff_i),
        .ram_full_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_5 ),
        .ram_full_i_reg_0(rst_full_gen_i));
  design_1_auto_cc_0_memory__parameterized3 \gntv_or_sync_fifo.mem 
       (.E(dout_i0),
        .I91(I91),
        .\goreg_dm.dout_i_reg[136]_0 (\goreg_dm.dout_i_reg[136] ),
        .\gpr1.dout_i_reg[0] (ram_rd_en_i),
        .\gpr1.dout_i_reg[1] (ram_wr_en),
        .\gpr1.dout_i_reg[1]_0 (rd_pntr),
        .\gpr1.dout_i_reg[1]_1 (wr_pntr),
        .m_aclk(m_aclk),
        .s_aclk(s_aclk));
  design_1_auto_cc_0_reset_blk_ramfifo rstblk
       (.AR(rstblk_n_1),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rst_full_gen_i),
        .m_aclk(m_aclk),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 (rstblk_n_2),
        .out(rst_full_ff_i),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .src_arst(src_arst));
endmodule

module design_1_auto_cc_0_fifo_generator_top
   (src_in,
    s_axi_awready,
    m_axi_awvalid,
    Q,
    src_arst,
    s_aclk,
    m_aclk,
    s_axi_awvalid,
    m_axi_awready,
    DI);
  output src_in;
  output s_axi_awready;
  output m_axi_awvalid;
  output [66:0]Q;
  input src_arst;
  input s_aclk;
  input m_aclk;
  input s_axi_awvalid;
  input m_axi_awready;
  input [66:0]DI;

  wire [66:0]DI;
  wire [66:0]Q;
  wire m_aclk;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire src_arst;
  wire src_in;

  design_1_auto_cc_0_fifo_generator_ramfifo \grf.rf 
       (.DI(DI),
        .Q(Q),
        .m_aclk(m_aclk),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .src_arst(src_arst),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_auto_cc_0_fifo_generator_top__parameterized0
   (src_in,
    s_axi_wready,
    m_axi_wvalid,
    \goreg_dm.dout_i_reg[145] ,
    src_arst,
    s_aclk,
    m_aclk,
    s_axi_wvalid,
    m_axi_wready,
    I79);
  output src_in;
  output s_axi_wready;
  output m_axi_wvalid;
  output [145:0]\goreg_dm.dout_i_reg[145] ;
  input src_arst;
  input s_aclk;
  input m_aclk;
  input s_axi_wvalid;
  input m_axi_wready;
  input [145:0]I79;

  wire [145:0]I79;
  wire [145:0]\goreg_dm.dout_i_reg[145] ;
  wire m_aclk;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire s_aclk;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire src_arst;
  wire src_in;

  design_1_auto_cc_0_fifo_generator_ramfifo__parameterized0 \grf.rf 
       (.I79(I79),
        .\goreg_dm.dout_i_reg[145] (\goreg_dm.dout_i_reg[145] ),
        .m_aclk(m_aclk),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_aclk(s_aclk),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .src_arst(src_arst),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_auto_cc_0_fifo_generator_top__parameterized1
   (s_axi_bvalid,
    m_axi_bready,
    \goreg_dm.dout_i_reg[7] ,
    src_arst,
    m_aclk,
    s_aclk,
    s_axi_bready,
    m_axi_bvalid,
    I83);
  output s_axi_bvalid;
  output m_axi_bready;
  output [7:0]\goreg_dm.dout_i_reg[7] ;
  input src_arst;
  input m_aclk;
  input s_aclk;
  input s_axi_bready;
  input m_axi_bvalid;
  input [7:0]I83;

  wire [7:0]I83;
  wire [7:0]\goreg_dm.dout_i_reg[7] ;
  wire m_aclk;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire s_aclk;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire src_arst;

  design_1_auto_cc_0_fifo_generator_ramfifo__parameterized1 \grf.rf 
       (.I83(I83),
        .\goreg_dm.dout_i_reg[7] (\goreg_dm.dout_i_reg[7] ),
        .m_aclk(m_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .s_aclk(s_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .src_arst(src_arst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_auto_cc_0_fifo_generator_top__parameterized2
   (src_in,
    s_axi_arready,
    m_axi_arvalid,
    \goreg_dm.dout_i_reg[63] ,
    src_arst,
    s_aclk,
    m_aclk,
    s_axi_arvalid,
    m_axi_arready,
    I87);
  output src_in;
  output s_axi_arready;
  output m_axi_arvalid;
  output [63:0]\goreg_dm.dout_i_reg[63] ;
  input src_arst;
  input s_aclk;
  input m_aclk;
  input s_axi_arvalid;
  input m_axi_arready;
  input [63:0]I87;

  wire [63:0]I87;
  wire [63:0]\goreg_dm.dout_i_reg[63] ;
  wire m_aclk;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire s_aclk;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire src_arst;
  wire src_in;

  design_1_auto_cc_0_fifo_generator_ramfifo__parameterized2 \grf.rf 
       (.I87(I87),
        .\goreg_dm.dout_i_reg[63] (\goreg_dm.dout_i_reg[63] ),
        .m_aclk(m_aclk),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .s_aclk(s_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .src_arst(src_arst),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_auto_cc_0_fifo_generator_top__parameterized3
   (src_arst,
    s_axi_rvalid,
    m_axi_rready,
    \goreg_dm.dout_i_reg[136] ,
    m_aclk,
    s_aclk,
    s_axi_rready,
    m_axi_rvalid,
    s_aresetn,
    I91);
  output src_arst;
  output s_axi_rvalid;
  output m_axi_rready;
  output [136:0]\goreg_dm.dout_i_reg[136] ;
  input m_aclk;
  input s_aclk;
  input s_axi_rready;
  input m_axi_rvalid;
  input s_aresetn;
  input [136:0]I91;

  wire [136:0]I91;
  wire [136:0]\goreg_dm.dout_i_reg[136] ;
  wire m_aclk;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire s_aclk;
  wire s_aresetn;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire src_arst;

  design_1_auto_cc_0_fifo_generator_ramfifo__parameterized3 \grf.rf 
       (.I91(I91),
        .\goreg_dm.dout_i_reg[136] (\goreg_dm.dout_i_reg[136] ),
        .m_aclk(m_aclk),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .src_arst(src_arst));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "29" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "4" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "128" *) (* C_AXI_ID_WIDTH = "5" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "18" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "64" *) (* C_DIN_WIDTH_RDCH = "137" *) 
(* C_DIN_WIDTH_WACH = "67" *) (* C_DIN_WIDTH_WDCH = "146" *) (* C_DIN_WIDTH_WRCH = "8" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "18" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "1" *) (* C_HAS_AXI_AWUSER = "1" *) (* C_HAS_AXI_BUSER = "1" *) 
(* C_HAS_AXI_ID = "1" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "1" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "1" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "11" *) (* C_IMPLEMENTATION_TYPE_RACH = "12" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "12" *) (* C_IMPLEMENTATION_TYPE_WACH = "12" *) (* C_IMPLEMENTATION_TYPE_WDCH = "12" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "12" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "2" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "4kx4" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1021" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "13" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "13" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "13" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "13" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "13" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "15" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "15" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "3" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "16" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "16" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "4" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "4" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) 
module design_1_auto_cc_0_fifo_generator_v13_2_5
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [17:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [17:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [4:0]s_axi_awid;
  input [28:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [4:0]s_axi_wid;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [4:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [4:0]m_axi_awid;
  output [28:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [4:0]m_axi_wid;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [4:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [4:0]s_axi_arid;
  input [28:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [4:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [4:0]m_axi_arid;
  output [28:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [4:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [3:0]axi_w_prog_full_thresh;
  input [3:0]axi_w_prog_empty_thresh;
  output [4:0]axi_w_data_count;
  output [4:0]axi_w_wr_data_count;
  output [4:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [3:0]axi_r_prog_full_thresh;
  input [3:0]axi_r_prog_empty_thresh;
  output [4:0]axi_r_data_count;
  output [4:0]axi_r_wr_data_count;
  output [4:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire m_aclk;
  wire [28:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [4:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [2:0]m_axi_arsize;
  wire [0:0]m_axi_aruser;
  wire m_axi_arvalid;
  wire [28:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [4:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire [3:0]m_axi_awuser;
  wire m_axi_awvalid;
  wire [4:0]m_axi_bid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [127:0]m_axi_rdata;
  wire [4:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire [127:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [15:0]m_axi_wstrb;
  wire [0:0]m_axi_wuser;
  wire m_axi_wvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [28:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [4:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [28:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [4:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [3:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire [4:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_buser;
  wire s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [4:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_ruser;
  wire s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire [0:0]s_axi_wuser;
  wire s_axi_wvalid;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const0> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const0> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const0> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const0> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const0> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const0> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign m_axi_wid[4] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_cc_0_fifo_generator_v13_2_5_synth inst_fifo_gen
       (.DI({s_axi_awid,s_axi_awaddr,s_axi_awlen,s_axi_awsize,s_axi_awburst,s_axi_awlock,s_axi_awcache,s_axi_awprot,s_axi_awqos,s_axi_awregion,s_axi_awuser}),
        .I79({s_axi_wdata,s_axi_wstrb,s_axi_wuser,s_axi_wlast}),
        .I83({m_axi_bid,m_axi_bresp,m_axi_buser}),
        .I87({s_axi_arid,s_axi_araddr,s_axi_arlen,s_axi_arsize,s_axi_arburst,s_axi_arlock,s_axi_arcache,s_axi_arprot,s_axi_arqos,s_axi_arregion,s_axi_aruser}),
        .I91({m_axi_rid,m_axi_rdata,m_axi_rresp,m_axi_ruser,m_axi_rlast}),
        .Q({m_axi_awid,m_axi_awaddr,m_axi_awlen,m_axi_awsize,m_axi_awburst,m_axi_awlock,m_axi_awcache,m_axi_awprot,m_axi_awqos,m_axi_awregion,m_axi_awuser}),
        .\goreg_dm.dout_i_reg[136] ({s_axi_rid,s_axi_rdata,s_axi_rresp,s_axi_ruser,s_axi_rlast}),
        .\goreg_dm.dout_i_reg[145] ({m_axi_wdata,m_axi_wstrb,m_axi_wuser,m_axi_wlast}),
        .\goreg_dm.dout_i_reg[63] ({m_axi_arid,m_axi_araddr,m_axi_arlen,m_axi_arsize,m_axi_arburst,m_axi_arlock,m_axi_arcache,m_axi_arprot,m_axi_arqos,m_axi_arregion,m_axi_aruser}),
        .\goreg_dm.dout_i_reg[7] ({s_axi_bid,s_axi_bresp,s_axi_buser}),
        .m_aclk(m_aclk),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module design_1_auto_cc_0_fifo_generator_v13_2_5_synth
   (Q,
    \goreg_dm.dout_i_reg[145] ,
    \goreg_dm.dout_i_reg[7] ,
    \goreg_dm.dout_i_reg[63] ,
    \goreg_dm.dout_i_reg[136] ,
    s_axi_awready,
    s_axi_wready,
    s_axi_bvalid,
    m_axi_awvalid,
    m_axi_wvalid,
    m_axi_bready,
    s_axi_arready,
    s_axi_rvalid,
    m_axi_arvalid,
    m_axi_rready,
    s_aclk,
    m_aclk,
    DI,
    I79,
    I83,
    I87,
    I91,
    s_axi_bready,
    s_axi_rready,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    m_axi_awready,
    m_axi_wready,
    m_axi_bvalid,
    m_axi_arready,
    m_axi_rvalid,
    s_aresetn);
  output [66:0]Q;
  output [145:0]\goreg_dm.dout_i_reg[145] ;
  output [7:0]\goreg_dm.dout_i_reg[7] ;
  output [63:0]\goreg_dm.dout_i_reg[63] ;
  output [136:0]\goreg_dm.dout_i_reg[136] ;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_bvalid;
  output m_axi_awvalid;
  output m_axi_wvalid;
  output m_axi_bready;
  output s_axi_arready;
  output s_axi_rvalid;
  output m_axi_arvalid;
  output m_axi_rready;
  input s_aclk;
  input m_aclk;
  input [66:0]DI;
  input [145:0]I79;
  input [7:0]I83;
  input [63:0]I87;
  input [136:0]I91;
  input s_axi_bready;
  input s_axi_rready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input m_axi_awready;
  input m_axi_wready;
  input m_axi_bvalid;
  input m_axi_arready;
  input m_axi_rvalid;
  input s_aresetn;

  wire [66:0]DI;
  wire [145:0]I79;
  wire [7:0]I83;
  wire [63:0]I87;
  wire [136:0]I91;
  wire [66:0]Q;
  wire dest_out;
  wire [136:0]\goreg_dm.dout_i_reg[136] ;
  wire [145:0]\goreg_dm.dout_i_reg[145] ;
  wire [63:0]\goreg_dm.dout_i_reg[63] ;
  wire [7:0]\goreg_dm.dout_i_reg[7] ;
  wire inverted_reset;
  wire m_aclk;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire s_aclk;
  wire s_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire wr_rst_busy_rach;
  wire wr_rst_busy_rach_sync;
  wire wr_rst_busy_wach;
  wire wr_rst_busy_wdch;
  wire wr_rst_busy_wdch_sync;

  design_1_auto_cc_0_fifo_generator_top__parameterized2 \gaxi_full_lite.gread_ch.grach2.axi_rach 
       (.I87(I87),
        .\goreg_dm.dout_i_reg[63] (\goreg_dm.dout_i_reg[63] ),
        .m_aclk(m_aclk),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .s_aclk(s_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .src_arst(inverted_reset),
        .src_in(wr_rst_busy_rach));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single \gaxi_full_lite.gread_ch.grach2.cdc_wr_rst_busy_ic_3.xpm_cdc_single_inst3 
       (.dest_clk(m_aclk),
        .dest_out(wr_rst_busy_rach_sync),
        .src_clk(s_aclk),
        .src_in(wr_rst_busy_rach));
  design_1_auto_cc_0_fifo_generator_top__parameterized3 \gaxi_full_lite.gread_ch.grdch2.axi_rdch 
       (.I91(I91),
        .\goreg_dm.dout_i_reg[136] (\goreg_dm.dout_i_reg[136] ),
        .m_aclk(m_aclk),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .src_arst(inverted_reset));
  design_1_auto_cc_0_fifo_generator_top \gaxi_full_lite.gwrite_ch.gwach2.axi_wach 
       (.DI(DI),
        .Q(Q),
        .m_aclk(m_aclk),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .src_arst(inverted_reset),
        .src_in(wr_rst_busy_wach));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__3 \gaxi_full_lite.gwrite_ch.gwach2.cdc_wr_rst_busy_ic_1.xpm_cdc_single_inst1 
       (.dest_clk(m_aclk),
        .dest_out(dest_out),
        .src_clk(s_aclk),
        .src_in(wr_rst_busy_wach));
  design_1_auto_cc_0_fifo_generator_top__parameterized0 \gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch 
       (.I79(I79),
        .\goreg_dm.dout_i_reg[145] (\goreg_dm.dout_i_reg[145] ),
        .m_aclk(m_aclk),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_aclk(s_aclk),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .src_arst(inverted_reset),
        .src_in(wr_rst_busy_wdch));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__4 \gaxi_full_lite.gwrite_ch.gwdch2.cdc_wr_rst_busy_ic_2.xpm_cdc_single_inst2 
       (.dest_clk(m_aclk),
        .dest_out(wr_rst_busy_wdch_sync),
        .src_clk(s_aclk),
        .src_in(wr_rst_busy_wdch));
  design_1_auto_cc_0_fifo_generator_top__parameterized1 \gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch 
       (.I83(I83),
        .\goreg_dm.dout_i_reg[7] (\goreg_dm.dout_i_reg[7] ),
        .m_aclk(m_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .s_aclk(s_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .src_arst(inverted_reset));
endmodule

module design_1_auto_cc_0_memory
   (Q,
    E,
    m_aclk,
    s_aclk,
    \gpr1.dout_i_reg[1] ,
    DI,
    \gpr1.dout_i_reg[1]_0 ,
    \gpr1.dout_i_reg[1]_1 ,
    \gpr1.dout_i_reg[0] );
  output [66:0]Q;
  input [0:0]E;
  input m_aclk;
  input s_aclk;
  input [0:0]\gpr1.dout_i_reg[1] ;
  input [66:0]DI;
  input [3:0]\gpr1.dout_i_reg[1]_0 ;
  input [3:0]\gpr1.dout_i_reg[1]_1 ;
  input [0:0]\gpr1.dout_i_reg[0] ;

  wire [66:0]DI;
  wire [0:0]E;
  wire [66:0]Q;
  wire \gdm.dm_gen.dm_n_0 ;
  wire \gdm.dm_gen.dm_n_1 ;
  wire \gdm.dm_gen.dm_n_10 ;
  wire \gdm.dm_gen.dm_n_11 ;
  wire \gdm.dm_gen.dm_n_12 ;
  wire \gdm.dm_gen.dm_n_13 ;
  wire \gdm.dm_gen.dm_n_14 ;
  wire \gdm.dm_gen.dm_n_15 ;
  wire \gdm.dm_gen.dm_n_16 ;
  wire \gdm.dm_gen.dm_n_17 ;
  wire \gdm.dm_gen.dm_n_18 ;
  wire \gdm.dm_gen.dm_n_19 ;
  wire \gdm.dm_gen.dm_n_2 ;
  wire \gdm.dm_gen.dm_n_20 ;
  wire \gdm.dm_gen.dm_n_21 ;
  wire \gdm.dm_gen.dm_n_22 ;
  wire \gdm.dm_gen.dm_n_23 ;
  wire \gdm.dm_gen.dm_n_24 ;
  wire \gdm.dm_gen.dm_n_25 ;
  wire \gdm.dm_gen.dm_n_26 ;
  wire \gdm.dm_gen.dm_n_27 ;
  wire \gdm.dm_gen.dm_n_28 ;
  wire \gdm.dm_gen.dm_n_29 ;
  wire \gdm.dm_gen.dm_n_3 ;
  wire \gdm.dm_gen.dm_n_30 ;
  wire \gdm.dm_gen.dm_n_31 ;
  wire \gdm.dm_gen.dm_n_32 ;
  wire \gdm.dm_gen.dm_n_33 ;
  wire \gdm.dm_gen.dm_n_34 ;
  wire \gdm.dm_gen.dm_n_35 ;
  wire \gdm.dm_gen.dm_n_36 ;
  wire \gdm.dm_gen.dm_n_37 ;
  wire \gdm.dm_gen.dm_n_38 ;
  wire \gdm.dm_gen.dm_n_39 ;
  wire \gdm.dm_gen.dm_n_4 ;
  wire \gdm.dm_gen.dm_n_40 ;
  wire \gdm.dm_gen.dm_n_41 ;
  wire \gdm.dm_gen.dm_n_42 ;
  wire \gdm.dm_gen.dm_n_43 ;
  wire \gdm.dm_gen.dm_n_44 ;
  wire \gdm.dm_gen.dm_n_45 ;
  wire \gdm.dm_gen.dm_n_46 ;
  wire \gdm.dm_gen.dm_n_47 ;
  wire \gdm.dm_gen.dm_n_48 ;
  wire \gdm.dm_gen.dm_n_49 ;
  wire \gdm.dm_gen.dm_n_5 ;
  wire \gdm.dm_gen.dm_n_50 ;
  wire \gdm.dm_gen.dm_n_51 ;
  wire \gdm.dm_gen.dm_n_52 ;
  wire \gdm.dm_gen.dm_n_53 ;
  wire \gdm.dm_gen.dm_n_54 ;
  wire \gdm.dm_gen.dm_n_55 ;
  wire \gdm.dm_gen.dm_n_56 ;
  wire \gdm.dm_gen.dm_n_57 ;
  wire \gdm.dm_gen.dm_n_58 ;
  wire \gdm.dm_gen.dm_n_59 ;
  wire \gdm.dm_gen.dm_n_6 ;
  wire \gdm.dm_gen.dm_n_60 ;
  wire \gdm.dm_gen.dm_n_61 ;
  wire \gdm.dm_gen.dm_n_62 ;
  wire \gdm.dm_gen.dm_n_63 ;
  wire \gdm.dm_gen.dm_n_64 ;
  wire \gdm.dm_gen.dm_n_65 ;
  wire \gdm.dm_gen.dm_n_66 ;
  wire \gdm.dm_gen.dm_n_7 ;
  wire \gdm.dm_gen.dm_n_8 ;
  wire \gdm.dm_gen.dm_n_9 ;
  wire [0:0]\gpr1.dout_i_reg[0] ;
  wire [0:0]\gpr1.dout_i_reg[1] ;
  wire [3:0]\gpr1.dout_i_reg[1]_0 ;
  wire [3:0]\gpr1.dout_i_reg[1]_1 ;
  wire m_aclk;
  wire s_aclk;

  design_1_auto_cc_0_dmem \gdm.dm_gen.dm 
       (.DI(DI),
        .dout_i({\gdm.dm_gen.dm_n_0 ,\gdm.dm_gen.dm_n_1 ,\gdm.dm_gen.dm_n_2 ,\gdm.dm_gen.dm_n_3 ,\gdm.dm_gen.dm_n_4 ,\gdm.dm_gen.dm_n_5 ,\gdm.dm_gen.dm_n_6 ,\gdm.dm_gen.dm_n_7 ,\gdm.dm_gen.dm_n_8 ,\gdm.dm_gen.dm_n_9 ,\gdm.dm_gen.dm_n_10 ,\gdm.dm_gen.dm_n_11 ,\gdm.dm_gen.dm_n_12 ,\gdm.dm_gen.dm_n_13 ,\gdm.dm_gen.dm_n_14 ,\gdm.dm_gen.dm_n_15 ,\gdm.dm_gen.dm_n_16 ,\gdm.dm_gen.dm_n_17 ,\gdm.dm_gen.dm_n_18 ,\gdm.dm_gen.dm_n_19 ,\gdm.dm_gen.dm_n_20 ,\gdm.dm_gen.dm_n_21 ,\gdm.dm_gen.dm_n_22 ,\gdm.dm_gen.dm_n_23 ,\gdm.dm_gen.dm_n_24 ,\gdm.dm_gen.dm_n_25 ,\gdm.dm_gen.dm_n_26 ,\gdm.dm_gen.dm_n_27 ,\gdm.dm_gen.dm_n_28 ,\gdm.dm_gen.dm_n_29 ,\gdm.dm_gen.dm_n_30 ,\gdm.dm_gen.dm_n_31 ,\gdm.dm_gen.dm_n_32 ,\gdm.dm_gen.dm_n_33 ,\gdm.dm_gen.dm_n_34 ,\gdm.dm_gen.dm_n_35 ,\gdm.dm_gen.dm_n_36 ,\gdm.dm_gen.dm_n_37 ,\gdm.dm_gen.dm_n_38 ,\gdm.dm_gen.dm_n_39 ,\gdm.dm_gen.dm_n_40 ,\gdm.dm_gen.dm_n_41 ,\gdm.dm_gen.dm_n_42 ,\gdm.dm_gen.dm_n_43 ,\gdm.dm_gen.dm_n_44 ,\gdm.dm_gen.dm_n_45 ,\gdm.dm_gen.dm_n_46 ,\gdm.dm_gen.dm_n_47 ,\gdm.dm_gen.dm_n_48 ,\gdm.dm_gen.dm_n_49 ,\gdm.dm_gen.dm_n_50 ,\gdm.dm_gen.dm_n_51 ,\gdm.dm_gen.dm_n_52 ,\gdm.dm_gen.dm_n_53 ,\gdm.dm_gen.dm_n_54 ,\gdm.dm_gen.dm_n_55 ,\gdm.dm_gen.dm_n_56 ,\gdm.dm_gen.dm_n_57 ,\gdm.dm_gen.dm_n_58 ,\gdm.dm_gen.dm_n_59 ,\gdm.dm_gen.dm_n_60 ,\gdm.dm_gen.dm_n_61 ,\gdm.dm_gen.dm_n_62 ,\gdm.dm_gen.dm_n_63 ,\gdm.dm_gen.dm_n_64 ,\gdm.dm_gen.dm_n_65 ,\gdm.dm_gen.dm_n_66 }),
        .\gpr1.dout_i_reg[0]_0 (\gpr1.dout_i_reg[0] ),
        .\gpr1.dout_i_reg[1]_0 (\gpr1.dout_i_reg[1] ),
        .\gpr1.dout_i_reg[1]_1 (\gpr1.dout_i_reg[1]_0 ),
        .\gpr1.dout_i_reg[1]_2 (\gpr1.dout_i_reg[1]_1 ),
        .m_aclk(m_aclk),
        .s_aclk(s_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_66 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[10] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_56 ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[11] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_55 ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[12] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_54 ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[13] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_53 ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[14] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_52 ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[15] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_51 ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[16] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_50 ),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[17] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_49 ),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[18] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_48 ),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[19] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_47 ),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_65 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[20] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_46 ),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[21] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_45 ),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[22] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_44 ),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[23] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_43 ),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[24] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_42 ),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[25] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_41 ),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[26] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_40 ),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[27] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_39 ),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[28] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_38 ),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[29] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_37 ),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_64 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[30] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_36 ),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[31] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_35 ),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[32] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_34 ),
        .Q(Q[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[33] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_33 ),
        .Q(Q[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[34] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_32 ),
        .Q(Q[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[35] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_31 ),
        .Q(Q[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[36] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_30 ),
        .Q(Q[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[37] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_29 ),
        .Q(Q[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[38] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_28 ),
        .Q(Q[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[39] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_27 ),
        .Q(Q[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_63 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[40] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_26 ),
        .Q(Q[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[41] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_25 ),
        .Q(Q[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[42] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_24 ),
        .Q(Q[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[43] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_23 ),
        .Q(Q[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[44] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_22 ),
        .Q(Q[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[45] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_21 ),
        .Q(Q[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[46] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_20 ),
        .Q(Q[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[47] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_19 ),
        .Q(Q[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[48] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_18 ),
        .Q(Q[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[49] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_17 ),
        .Q(Q[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_62 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[50] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_16 ),
        .Q(Q[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[51] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_15 ),
        .Q(Q[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[52] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_14 ),
        .Q(Q[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[53] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_13 ),
        .Q(Q[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[54] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_12 ),
        .Q(Q[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[55] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_11 ),
        .Q(Q[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[56] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_10 ),
        .Q(Q[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[57] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_9 ),
        .Q(Q[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[58] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_8 ),
        .Q(Q[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[59] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_7 ),
        .Q(Q[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_61 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[60] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_6 ),
        .Q(Q[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[61] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_5 ),
        .Q(Q[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[62] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_4 ),
        .Q(Q[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[63] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_3 ),
        .Q(Q[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[64] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_2 ),
        .Q(Q[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[65] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_1 ),
        .Q(Q[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[66] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_0 ),
        .Q(Q[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_60 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_59 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_58 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[9] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_57 ),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_auto_cc_0_memory__parameterized0
   (\goreg_dm.dout_i_reg[145]_0 ,
    E,
    m_aclk,
    s_aclk,
    \gpr1.dout_i_reg[1] ,
    I79,
    \gpr1.dout_i_reg[1]_0 ,
    \gpr1.dout_i_reg[1]_1 ,
    \gpr1.dout_i_reg[0] );
  output [145:0]\goreg_dm.dout_i_reg[145]_0 ;
  input [0:0]E;
  input m_aclk;
  input s_aclk;
  input [0:0]\gpr1.dout_i_reg[1] ;
  input [145:0]I79;
  input [3:0]\gpr1.dout_i_reg[1]_0 ;
  input [3:0]\gpr1.dout_i_reg[1]_1 ;
  input [0:0]\gpr1.dout_i_reg[0] ;

  wire [0:0]E;
  wire [145:0]I79;
  wire \gdm.dm_gen.dm_n_0 ;
  wire \gdm.dm_gen.dm_n_1 ;
  wire \gdm.dm_gen.dm_n_10 ;
  wire \gdm.dm_gen.dm_n_100 ;
  wire \gdm.dm_gen.dm_n_101 ;
  wire \gdm.dm_gen.dm_n_102 ;
  wire \gdm.dm_gen.dm_n_103 ;
  wire \gdm.dm_gen.dm_n_104 ;
  wire \gdm.dm_gen.dm_n_105 ;
  wire \gdm.dm_gen.dm_n_106 ;
  wire \gdm.dm_gen.dm_n_107 ;
  wire \gdm.dm_gen.dm_n_108 ;
  wire \gdm.dm_gen.dm_n_109 ;
  wire \gdm.dm_gen.dm_n_11 ;
  wire \gdm.dm_gen.dm_n_110 ;
  wire \gdm.dm_gen.dm_n_111 ;
  wire \gdm.dm_gen.dm_n_112 ;
  wire \gdm.dm_gen.dm_n_113 ;
  wire \gdm.dm_gen.dm_n_114 ;
  wire \gdm.dm_gen.dm_n_115 ;
  wire \gdm.dm_gen.dm_n_116 ;
  wire \gdm.dm_gen.dm_n_117 ;
  wire \gdm.dm_gen.dm_n_118 ;
  wire \gdm.dm_gen.dm_n_119 ;
  wire \gdm.dm_gen.dm_n_12 ;
  wire \gdm.dm_gen.dm_n_120 ;
  wire \gdm.dm_gen.dm_n_121 ;
  wire \gdm.dm_gen.dm_n_122 ;
  wire \gdm.dm_gen.dm_n_123 ;
  wire \gdm.dm_gen.dm_n_124 ;
  wire \gdm.dm_gen.dm_n_125 ;
  wire \gdm.dm_gen.dm_n_126 ;
  wire \gdm.dm_gen.dm_n_127 ;
  wire \gdm.dm_gen.dm_n_128 ;
  wire \gdm.dm_gen.dm_n_129 ;
  wire \gdm.dm_gen.dm_n_13 ;
  wire \gdm.dm_gen.dm_n_130 ;
  wire \gdm.dm_gen.dm_n_131 ;
  wire \gdm.dm_gen.dm_n_132 ;
  wire \gdm.dm_gen.dm_n_133 ;
  wire \gdm.dm_gen.dm_n_134 ;
  wire \gdm.dm_gen.dm_n_135 ;
  wire \gdm.dm_gen.dm_n_136 ;
  wire \gdm.dm_gen.dm_n_137 ;
  wire \gdm.dm_gen.dm_n_138 ;
  wire \gdm.dm_gen.dm_n_139 ;
  wire \gdm.dm_gen.dm_n_14 ;
  wire \gdm.dm_gen.dm_n_140 ;
  wire \gdm.dm_gen.dm_n_141 ;
  wire \gdm.dm_gen.dm_n_142 ;
  wire \gdm.dm_gen.dm_n_143 ;
  wire \gdm.dm_gen.dm_n_144 ;
  wire \gdm.dm_gen.dm_n_145 ;
  wire \gdm.dm_gen.dm_n_15 ;
  wire \gdm.dm_gen.dm_n_16 ;
  wire \gdm.dm_gen.dm_n_17 ;
  wire \gdm.dm_gen.dm_n_18 ;
  wire \gdm.dm_gen.dm_n_19 ;
  wire \gdm.dm_gen.dm_n_2 ;
  wire \gdm.dm_gen.dm_n_20 ;
  wire \gdm.dm_gen.dm_n_21 ;
  wire \gdm.dm_gen.dm_n_22 ;
  wire \gdm.dm_gen.dm_n_23 ;
  wire \gdm.dm_gen.dm_n_24 ;
  wire \gdm.dm_gen.dm_n_25 ;
  wire \gdm.dm_gen.dm_n_26 ;
  wire \gdm.dm_gen.dm_n_27 ;
  wire \gdm.dm_gen.dm_n_28 ;
  wire \gdm.dm_gen.dm_n_29 ;
  wire \gdm.dm_gen.dm_n_3 ;
  wire \gdm.dm_gen.dm_n_30 ;
  wire \gdm.dm_gen.dm_n_31 ;
  wire \gdm.dm_gen.dm_n_32 ;
  wire \gdm.dm_gen.dm_n_33 ;
  wire \gdm.dm_gen.dm_n_34 ;
  wire \gdm.dm_gen.dm_n_35 ;
  wire \gdm.dm_gen.dm_n_36 ;
  wire \gdm.dm_gen.dm_n_37 ;
  wire \gdm.dm_gen.dm_n_38 ;
  wire \gdm.dm_gen.dm_n_39 ;
  wire \gdm.dm_gen.dm_n_4 ;
  wire \gdm.dm_gen.dm_n_40 ;
  wire \gdm.dm_gen.dm_n_41 ;
  wire \gdm.dm_gen.dm_n_42 ;
  wire \gdm.dm_gen.dm_n_43 ;
  wire \gdm.dm_gen.dm_n_44 ;
  wire \gdm.dm_gen.dm_n_45 ;
  wire \gdm.dm_gen.dm_n_46 ;
  wire \gdm.dm_gen.dm_n_47 ;
  wire \gdm.dm_gen.dm_n_48 ;
  wire \gdm.dm_gen.dm_n_49 ;
  wire \gdm.dm_gen.dm_n_5 ;
  wire \gdm.dm_gen.dm_n_50 ;
  wire \gdm.dm_gen.dm_n_51 ;
  wire \gdm.dm_gen.dm_n_52 ;
  wire \gdm.dm_gen.dm_n_53 ;
  wire \gdm.dm_gen.dm_n_54 ;
  wire \gdm.dm_gen.dm_n_55 ;
  wire \gdm.dm_gen.dm_n_56 ;
  wire \gdm.dm_gen.dm_n_57 ;
  wire \gdm.dm_gen.dm_n_58 ;
  wire \gdm.dm_gen.dm_n_59 ;
  wire \gdm.dm_gen.dm_n_6 ;
  wire \gdm.dm_gen.dm_n_60 ;
  wire \gdm.dm_gen.dm_n_61 ;
  wire \gdm.dm_gen.dm_n_62 ;
  wire \gdm.dm_gen.dm_n_63 ;
  wire \gdm.dm_gen.dm_n_64 ;
  wire \gdm.dm_gen.dm_n_65 ;
  wire \gdm.dm_gen.dm_n_66 ;
  wire \gdm.dm_gen.dm_n_67 ;
  wire \gdm.dm_gen.dm_n_68 ;
  wire \gdm.dm_gen.dm_n_69 ;
  wire \gdm.dm_gen.dm_n_7 ;
  wire \gdm.dm_gen.dm_n_70 ;
  wire \gdm.dm_gen.dm_n_71 ;
  wire \gdm.dm_gen.dm_n_72 ;
  wire \gdm.dm_gen.dm_n_73 ;
  wire \gdm.dm_gen.dm_n_74 ;
  wire \gdm.dm_gen.dm_n_75 ;
  wire \gdm.dm_gen.dm_n_76 ;
  wire \gdm.dm_gen.dm_n_77 ;
  wire \gdm.dm_gen.dm_n_78 ;
  wire \gdm.dm_gen.dm_n_79 ;
  wire \gdm.dm_gen.dm_n_8 ;
  wire \gdm.dm_gen.dm_n_80 ;
  wire \gdm.dm_gen.dm_n_81 ;
  wire \gdm.dm_gen.dm_n_82 ;
  wire \gdm.dm_gen.dm_n_83 ;
  wire \gdm.dm_gen.dm_n_84 ;
  wire \gdm.dm_gen.dm_n_85 ;
  wire \gdm.dm_gen.dm_n_86 ;
  wire \gdm.dm_gen.dm_n_87 ;
  wire \gdm.dm_gen.dm_n_88 ;
  wire \gdm.dm_gen.dm_n_89 ;
  wire \gdm.dm_gen.dm_n_9 ;
  wire \gdm.dm_gen.dm_n_90 ;
  wire \gdm.dm_gen.dm_n_91 ;
  wire \gdm.dm_gen.dm_n_92 ;
  wire \gdm.dm_gen.dm_n_93 ;
  wire \gdm.dm_gen.dm_n_94 ;
  wire \gdm.dm_gen.dm_n_95 ;
  wire \gdm.dm_gen.dm_n_96 ;
  wire \gdm.dm_gen.dm_n_97 ;
  wire \gdm.dm_gen.dm_n_98 ;
  wire \gdm.dm_gen.dm_n_99 ;
  wire [145:0]\goreg_dm.dout_i_reg[145]_0 ;
  wire [0:0]\gpr1.dout_i_reg[0] ;
  wire [0:0]\gpr1.dout_i_reg[1] ;
  wire [3:0]\gpr1.dout_i_reg[1]_0 ;
  wire [3:0]\gpr1.dout_i_reg[1]_1 ;
  wire m_aclk;
  wire s_aclk;

  design_1_auto_cc_0_dmem__parameterized0 \gdm.dm_gen.dm 
       (.I79(I79),
        .dout_i({\gdm.dm_gen.dm_n_0 ,\gdm.dm_gen.dm_n_1 ,\gdm.dm_gen.dm_n_2 ,\gdm.dm_gen.dm_n_3 ,\gdm.dm_gen.dm_n_4 ,\gdm.dm_gen.dm_n_5 ,\gdm.dm_gen.dm_n_6 ,\gdm.dm_gen.dm_n_7 ,\gdm.dm_gen.dm_n_8 ,\gdm.dm_gen.dm_n_9 ,\gdm.dm_gen.dm_n_10 ,\gdm.dm_gen.dm_n_11 ,\gdm.dm_gen.dm_n_12 ,\gdm.dm_gen.dm_n_13 ,\gdm.dm_gen.dm_n_14 ,\gdm.dm_gen.dm_n_15 ,\gdm.dm_gen.dm_n_16 ,\gdm.dm_gen.dm_n_17 ,\gdm.dm_gen.dm_n_18 ,\gdm.dm_gen.dm_n_19 ,\gdm.dm_gen.dm_n_20 ,\gdm.dm_gen.dm_n_21 ,\gdm.dm_gen.dm_n_22 ,\gdm.dm_gen.dm_n_23 ,\gdm.dm_gen.dm_n_24 ,\gdm.dm_gen.dm_n_25 ,\gdm.dm_gen.dm_n_26 ,\gdm.dm_gen.dm_n_27 ,\gdm.dm_gen.dm_n_28 ,\gdm.dm_gen.dm_n_29 ,\gdm.dm_gen.dm_n_30 ,\gdm.dm_gen.dm_n_31 ,\gdm.dm_gen.dm_n_32 ,\gdm.dm_gen.dm_n_33 ,\gdm.dm_gen.dm_n_34 ,\gdm.dm_gen.dm_n_35 ,\gdm.dm_gen.dm_n_36 ,\gdm.dm_gen.dm_n_37 ,\gdm.dm_gen.dm_n_38 ,\gdm.dm_gen.dm_n_39 ,\gdm.dm_gen.dm_n_40 ,\gdm.dm_gen.dm_n_41 ,\gdm.dm_gen.dm_n_42 ,\gdm.dm_gen.dm_n_43 ,\gdm.dm_gen.dm_n_44 ,\gdm.dm_gen.dm_n_45 ,\gdm.dm_gen.dm_n_46 ,\gdm.dm_gen.dm_n_47 ,\gdm.dm_gen.dm_n_48 ,\gdm.dm_gen.dm_n_49 ,\gdm.dm_gen.dm_n_50 ,\gdm.dm_gen.dm_n_51 ,\gdm.dm_gen.dm_n_52 ,\gdm.dm_gen.dm_n_53 ,\gdm.dm_gen.dm_n_54 ,\gdm.dm_gen.dm_n_55 ,\gdm.dm_gen.dm_n_56 ,\gdm.dm_gen.dm_n_57 ,\gdm.dm_gen.dm_n_58 ,\gdm.dm_gen.dm_n_59 ,\gdm.dm_gen.dm_n_60 ,\gdm.dm_gen.dm_n_61 ,\gdm.dm_gen.dm_n_62 ,\gdm.dm_gen.dm_n_63 ,\gdm.dm_gen.dm_n_64 ,\gdm.dm_gen.dm_n_65 ,\gdm.dm_gen.dm_n_66 ,\gdm.dm_gen.dm_n_67 ,\gdm.dm_gen.dm_n_68 ,\gdm.dm_gen.dm_n_69 ,\gdm.dm_gen.dm_n_70 ,\gdm.dm_gen.dm_n_71 ,\gdm.dm_gen.dm_n_72 ,\gdm.dm_gen.dm_n_73 ,\gdm.dm_gen.dm_n_74 ,\gdm.dm_gen.dm_n_75 ,\gdm.dm_gen.dm_n_76 ,\gdm.dm_gen.dm_n_77 ,\gdm.dm_gen.dm_n_78 ,\gdm.dm_gen.dm_n_79 ,\gdm.dm_gen.dm_n_80 ,\gdm.dm_gen.dm_n_81 ,\gdm.dm_gen.dm_n_82 ,\gdm.dm_gen.dm_n_83 ,\gdm.dm_gen.dm_n_84 ,\gdm.dm_gen.dm_n_85 ,\gdm.dm_gen.dm_n_86 ,\gdm.dm_gen.dm_n_87 ,\gdm.dm_gen.dm_n_88 ,\gdm.dm_gen.dm_n_89 ,\gdm.dm_gen.dm_n_90 ,\gdm.dm_gen.dm_n_91 ,\gdm.dm_gen.dm_n_92 ,\gdm.dm_gen.dm_n_93 ,\gdm.dm_gen.dm_n_94 ,\gdm.dm_gen.dm_n_95 ,\gdm.dm_gen.dm_n_96 ,\gdm.dm_gen.dm_n_97 ,\gdm.dm_gen.dm_n_98 ,\gdm.dm_gen.dm_n_99 ,\gdm.dm_gen.dm_n_100 ,\gdm.dm_gen.dm_n_101 ,\gdm.dm_gen.dm_n_102 ,\gdm.dm_gen.dm_n_103 ,\gdm.dm_gen.dm_n_104 ,\gdm.dm_gen.dm_n_105 ,\gdm.dm_gen.dm_n_106 ,\gdm.dm_gen.dm_n_107 ,\gdm.dm_gen.dm_n_108 ,\gdm.dm_gen.dm_n_109 ,\gdm.dm_gen.dm_n_110 ,\gdm.dm_gen.dm_n_111 ,\gdm.dm_gen.dm_n_112 ,\gdm.dm_gen.dm_n_113 ,\gdm.dm_gen.dm_n_114 ,\gdm.dm_gen.dm_n_115 ,\gdm.dm_gen.dm_n_116 ,\gdm.dm_gen.dm_n_117 ,\gdm.dm_gen.dm_n_118 ,\gdm.dm_gen.dm_n_119 ,\gdm.dm_gen.dm_n_120 ,\gdm.dm_gen.dm_n_121 ,\gdm.dm_gen.dm_n_122 ,\gdm.dm_gen.dm_n_123 ,\gdm.dm_gen.dm_n_124 ,\gdm.dm_gen.dm_n_125 ,\gdm.dm_gen.dm_n_126 ,\gdm.dm_gen.dm_n_127 ,\gdm.dm_gen.dm_n_128 ,\gdm.dm_gen.dm_n_129 ,\gdm.dm_gen.dm_n_130 ,\gdm.dm_gen.dm_n_131 ,\gdm.dm_gen.dm_n_132 ,\gdm.dm_gen.dm_n_133 ,\gdm.dm_gen.dm_n_134 ,\gdm.dm_gen.dm_n_135 ,\gdm.dm_gen.dm_n_136 ,\gdm.dm_gen.dm_n_137 ,\gdm.dm_gen.dm_n_138 ,\gdm.dm_gen.dm_n_139 ,\gdm.dm_gen.dm_n_140 ,\gdm.dm_gen.dm_n_141 ,\gdm.dm_gen.dm_n_142 ,\gdm.dm_gen.dm_n_143 ,\gdm.dm_gen.dm_n_144 ,\gdm.dm_gen.dm_n_145 }),
        .\gpr1.dout_i_reg[0]_0 (\gpr1.dout_i_reg[0] ),
        .\gpr1.dout_i_reg[1]_0 (\gpr1.dout_i_reg[1] ),
        .\gpr1.dout_i_reg[1]_1 (\gpr1.dout_i_reg[1]_0 ),
        .\gpr1.dout_i_reg[1]_2 (\gpr1.dout_i_reg[1]_1 ),
        .m_aclk(m_aclk),
        .s_aclk(s_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_145 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[100] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_45 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[101] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_44 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[102] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_43 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[103] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_42 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[104] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_41 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[105] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_40 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[106] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_39 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[107] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_38 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[108] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_37 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[109] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_36 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[10] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_135 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[110] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_35 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[111] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_34 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[112] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_33 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[113] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_32 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[114] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_31 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[115] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_30 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[116] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_29 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[117] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_28 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[118] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_27 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[119] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_26 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[11] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_134 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[120] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_25 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[121] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_24 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[122] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_23 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[123] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_22 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[124] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_21 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[125] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_20 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[126] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_19 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[127] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_18 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[128] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_17 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [128]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[129] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_16 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [129]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[12] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_133 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[130] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_15 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [130]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[131] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_14 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [131]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[132] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_13 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [132]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[133] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_12 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [133]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[134] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_11 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [134]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[135] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_10 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [135]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[136] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_9 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [136]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[137] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_8 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [137]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[138] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_7 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [138]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[139] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_6 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [139]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[13] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_132 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[140] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_5 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [140]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[141] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_4 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [141]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[142] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_3 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [142]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[143] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_2 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [143]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[144] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_1 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [144]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[145] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_0 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [145]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[14] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_131 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[15] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_130 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[16] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_129 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[17] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_128 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[18] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_127 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[19] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_126 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_144 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[20] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_125 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[21] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_124 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[22] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_123 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[23] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_122 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[24] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_121 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[25] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_120 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[26] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_119 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[27] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_118 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[28] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_117 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[29] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_116 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_143 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[30] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_115 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[31] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_114 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[32] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_113 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[33] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_112 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[34] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_111 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[35] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_110 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[36] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_109 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[37] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_108 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[38] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_107 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[39] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_106 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_142 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[40] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_105 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[41] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_104 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[42] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_103 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[43] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_102 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[44] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_101 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[45] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_100 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[46] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_99 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[47] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_98 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[48] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_97 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[49] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_96 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_141 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[50] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_95 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[51] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_94 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[52] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_93 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[53] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_92 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[54] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_91 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[55] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_90 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[56] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_89 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[57] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_88 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[58] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_87 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[59] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_86 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_140 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[60] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_85 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[61] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_84 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[62] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_83 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[63] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_82 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[64] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_81 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[65] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_80 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[66] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_79 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[67] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_78 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[68] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_77 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[69] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_76 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_139 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[70] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_75 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[71] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_74 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[72] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_73 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[73] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_72 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[74] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_71 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[75] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_70 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[76] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_69 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[77] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_68 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[78] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_67 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[79] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_66 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_138 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[80] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_65 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[81] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_64 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[82] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_63 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[83] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_62 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[84] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_61 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[85] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_60 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[86] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_59 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[87] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_58 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[88] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_57 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[89] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_56 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_137 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[90] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_55 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[91] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_54 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[92] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_53 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[93] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_52 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[94] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_51 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[95] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_50 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[96] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_49 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[97] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_48 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[98] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_47 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[99] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_46 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[9] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_136 ),
        .Q(\goreg_dm.dout_i_reg[145]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_auto_cc_0_memory__parameterized1
   (\goreg_dm.dout_i_reg[7]_0 ,
    E,
    s_aclk,
    m_aclk,
    I64,
    I83,
    \gpr1.dout_i_reg[1] ,
    count_d2,
    \gpr1.dout_i_reg[0] );
  output [7:0]\goreg_dm.dout_i_reg[7]_0 ;
  input [0:0]E;
  input s_aclk;
  input m_aclk;
  input I64;
  input [7:0]I83;
  input [3:0]\gpr1.dout_i_reg[1] ;
  input [3:0]count_d2;
  input [0:0]\gpr1.dout_i_reg[0] ;

  wire [0:0]E;
  wire I64;
  wire [7:0]I83;
  wire [3:0]count_d2;
  wire \gdm.dm_gen.dm_n_0 ;
  wire \gdm.dm_gen.dm_n_1 ;
  wire \gdm.dm_gen.dm_n_2 ;
  wire \gdm.dm_gen.dm_n_3 ;
  wire \gdm.dm_gen.dm_n_4 ;
  wire \gdm.dm_gen.dm_n_5 ;
  wire \gdm.dm_gen.dm_n_6 ;
  wire \gdm.dm_gen.dm_n_7 ;
  wire [7:0]\goreg_dm.dout_i_reg[7]_0 ;
  wire [0:0]\gpr1.dout_i_reg[0] ;
  wire [3:0]\gpr1.dout_i_reg[1] ;
  wire m_aclk;
  wire s_aclk;

  design_1_auto_cc_0_dmem__parameterized1 \gdm.dm_gen.dm 
       (.I64(I64),
        .I83(I83),
        .count_d2(count_d2),
        .dout_i({\gdm.dm_gen.dm_n_0 ,\gdm.dm_gen.dm_n_1 ,\gdm.dm_gen.dm_n_2 ,\gdm.dm_gen.dm_n_3 ,\gdm.dm_gen.dm_n_4 ,\gdm.dm_gen.dm_n_5 ,\gdm.dm_gen.dm_n_6 ,\gdm.dm_gen.dm_n_7 }),
        .\gpr1.dout_i_reg[0]_0 (\gpr1.dout_i_reg[0] ),
        .\gpr1.dout_i_reg[1]_0 (\gpr1.dout_i_reg[1] ),
        .m_aclk(m_aclk),
        .s_aclk(s_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_7 ),
        .Q(\goreg_dm.dout_i_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_6 ),
        .Q(\goreg_dm.dout_i_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_5 ),
        .Q(\goreg_dm.dout_i_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_4 ),
        .Q(\goreg_dm.dout_i_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_3 ),
        .Q(\goreg_dm.dout_i_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_2 ),
        .Q(\goreg_dm.dout_i_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_1 ),
        .Q(\goreg_dm.dout_i_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_0 ),
        .Q(\goreg_dm.dout_i_reg[7]_0 [7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_auto_cc_0_memory__parameterized2
   (\goreg_dm.dout_i_reg[63]_0 ,
    E,
    m_aclk,
    s_aclk,
    \gpr1.dout_i_reg[1] ,
    I87,
    \gpr1.dout_i_reg[1]_0 ,
    \gpr1.dout_i_reg[1]_1 ,
    \gpr1.dout_i_reg[0] );
  output [63:0]\goreg_dm.dout_i_reg[63]_0 ;
  input [0:0]E;
  input m_aclk;
  input s_aclk;
  input [0:0]\gpr1.dout_i_reg[1] ;
  input [63:0]I87;
  input [3:0]\gpr1.dout_i_reg[1]_0 ;
  input [3:0]\gpr1.dout_i_reg[1]_1 ;
  input [0:0]\gpr1.dout_i_reg[0] ;

  wire [0:0]E;
  wire [63:0]I87;
  wire \gdm.dm_gen.dm_n_0 ;
  wire \gdm.dm_gen.dm_n_1 ;
  wire \gdm.dm_gen.dm_n_10 ;
  wire \gdm.dm_gen.dm_n_11 ;
  wire \gdm.dm_gen.dm_n_12 ;
  wire \gdm.dm_gen.dm_n_13 ;
  wire \gdm.dm_gen.dm_n_14 ;
  wire \gdm.dm_gen.dm_n_15 ;
  wire \gdm.dm_gen.dm_n_16 ;
  wire \gdm.dm_gen.dm_n_17 ;
  wire \gdm.dm_gen.dm_n_18 ;
  wire \gdm.dm_gen.dm_n_19 ;
  wire \gdm.dm_gen.dm_n_2 ;
  wire \gdm.dm_gen.dm_n_20 ;
  wire \gdm.dm_gen.dm_n_21 ;
  wire \gdm.dm_gen.dm_n_22 ;
  wire \gdm.dm_gen.dm_n_23 ;
  wire \gdm.dm_gen.dm_n_24 ;
  wire \gdm.dm_gen.dm_n_25 ;
  wire \gdm.dm_gen.dm_n_26 ;
  wire \gdm.dm_gen.dm_n_27 ;
  wire \gdm.dm_gen.dm_n_28 ;
  wire \gdm.dm_gen.dm_n_29 ;
  wire \gdm.dm_gen.dm_n_3 ;
  wire \gdm.dm_gen.dm_n_30 ;
  wire \gdm.dm_gen.dm_n_31 ;
  wire \gdm.dm_gen.dm_n_32 ;
  wire \gdm.dm_gen.dm_n_33 ;
  wire \gdm.dm_gen.dm_n_34 ;
  wire \gdm.dm_gen.dm_n_35 ;
  wire \gdm.dm_gen.dm_n_36 ;
  wire \gdm.dm_gen.dm_n_37 ;
  wire \gdm.dm_gen.dm_n_38 ;
  wire \gdm.dm_gen.dm_n_39 ;
  wire \gdm.dm_gen.dm_n_4 ;
  wire \gdm.dm_gen.dm_n_40 ;
  wire \gdm.dm_gen.dm_n_41 ;
  wire \gdm.dm_gen.dm_n_42 ;
  wire \gdm.dm_gen.dm_n_43 ;
  wire \gdm.dm_gen.dm_n_44 ;
  wire \gdm.dm_gen.dm_n_45 ;
  wire \gdm.dm_gen.dm_n_46 ;
  wire \gdm.dm_gen.dm_n_47 ;
  wire \gdm.dm_gen.dm_n_48 ;
  wire \gdm.dm_gen.dm_n_49 ;
  wire \gdm.dm_gen.dm_n_5 ;
  wire \gdm.dm_gen.dm_n_50 ;
  wire \gdm.dm_gen.dm_n_51 ;
  wire \gdm.dm_gen.dm_n_52 ;
  wire \gdm.dm_gen.dm_n_53 ;
  wire \gdm.dm_gen.dm_n_54 ;
  wire \gdm.dm_gen.dm_n_55 ;
  wire \gdm.dm_gen.dm_n_56 ;
  wire \gdm.dm_gen.dm_n_57 ;
  wire \gdm.dm_gen.dm_n_58 ;
  wire \gdm.dm_gen.dm_n_59 ;
  wire \gdm.dm_gen.dm_n_6 ;
  wire \gdm.dm_gen.dm_n_60 ;
  wire \gdm.dm_gen.dm_n_61 ;
  wire \gdm.dm_gen.dm_n_62 ;
  wire \gdm.dm_gen.dm_n_63 ;
  wire \gdm.dm_gen.dm_n_7 ;
  wire \gdm.dm_gen.dm_n_8 ;
  wire \gdm.dm_gen.dm_n_9 ;
  wire [63:0]\goreg_dm.dout_i_reg[63]_0 ;
  wire [0:0]\gpr1.dout_i_reg[0] ;
  wire [0:0]\gpr1.dout_i_reg[1] ;
  wire [3:0]\gpr1.dout_i_reg[1]_0 ;
  wire [3:0]\gpr1.dout_i_reg[1]_1 ;
  wire m_aclk;
  wire s_aclk;

  design_1_auto_cc_0_dmem__parameterized2 \gdm.dm_gen.dm 
       (.I87(I87),
        .dout_i({\gdm.dm_gen.dm_n_0 ,\gdm.dm_gen.dm_n_1 ,\gdm.dm_gen.dm_n_2 ,\gdm.dm_gen.dm_n_3 ,\gdm.dm_gen.dm_n_4 ,\gdm.dm_gen.dm_n_5 ,\gdm.dm_gen.dm_n_6 ,\gdm.dm_gen.dm_n_7 ,\gdm.dm_gen.dm_n_8 ,\gdm.dm_gen.dm_n_9 ,\gdm.dm_gen.dm_n_10 ,\gdm.dm_gen.dm_n_11 ,\gdm.dm_gen.dm_n_12 ,\gdm.dm_gen.dm_n_13 ,\gdm.dm_gen.dm_n_14 ,\gdm.dm_gen.dm_n_15 ,\gdm.dm_gen.dm_n_16 ,\gdm.dm_gen.dm_n_17 ,\gdm.dm_gen.dm_n_18 ,\gdm.dm_gen.dm_n_19 ,\gdm.dm_gen.dm_n_20 ,\gdm.dm_gen.dm_n_21 ,\gdm.dm_gen.dm_n_22 ,\gdm.dm_gen.dm_n_23 ,\gdm.dm_gen.dm_n_24 ,\gdm.dm_gen.dm_n_25 ,\gdm.dm_gen.dm_n_26 ,\gdm.dm_gen.dm_n_27 ,\gdm.dm_gen.dm_n_28 ,\gdm.dm_gen.dm_n_29 ,\gdm.dm_gen.dm_n_30 ,\gdm.dm_gen.dm_n_31 ,\gdm.dm_gen.dm_n_32 ,\gdm.dm_gen.dm_n_33 ,\gdm.dm_gen.dm_n_34 ,\gdm.dm_gen.dm_n_35 ,\gdm.dm_gen.dm_n_36 ,\gdm.dm_gen.dm_n_37 ,\gdm.dm_gen.dm_n_38 ,\gdm.dm_gen.dm_n_39 ,\gdm.dm_gen.dm_n_40 ,\gdm.dm_gen.dm_n_41 ,\gdm.dm_gen.dm_n_42 ,\gdm.dm_gen.dm_n_43 ,\gdm.dm_gen.dm_n_44 ,\gdm.dm_gen.dm_n_45 ,\gdm.dm_gen.dm_n_46 ,\gdm.dm_gen.dm_n_47 ,\gdm.dm_gen.dm_n_48 ,\gdm.dm_gen.dm_n_49 ,\gdm.dm_gen.dm_n_50 ,\gdm.dm_gen.dm_n_51 ,\gdm.dm_gen.dm_n_52 ,\gdm.dm_gen.dm_n_53 ,\gdm.dm_gen.dm_n_54 ,\gdm.dm_gen.dm_n_55 ,\gdm.dm_gen.dm_n_56 ,\gdm.dm_gen.dm_n_57 ,\gdm.dm_gen.dm_n_58 ,\gdm.dm_gen.dm_n_59 ,\gdm.dm_gen.dm_n_60 ,\gdm.dm_gen.dm_n_61 ,\gdm.dm_gen.dm_n_62 ,\gdm.dm_gen.dm_n_63 }),
        .\gpr1.dout_i_reg[0]_0 (\gpr1.dout_i_reg[0] ),
        .\gpr1.dout_i_reg[1]_0 (\gpr1.dout_i_reg[1] ),
        .\gpr1.dout_i_reg[1]_1 (\gpr1.dout_i_reg[1]_0 ),
        .\gpr1.dout_i_reg[1]_2 (\gpr1.dout_i_reg[1]_1 ),
        .m_aclk(m_aclk),
        .s_aclk(s_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_63 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[10] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_53 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[11] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_52 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[12] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_51 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[13] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_50 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[14] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_49 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[15] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_48 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[16] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_47 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[17] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_46 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[18] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_45 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[19] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_44 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_62 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[20] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_43 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[21] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_42 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[22] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_41 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[23] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_40 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[24] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_39 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[25] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_38 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[26] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_37 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[27] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_36 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[28] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_35 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[29] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_34 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_61 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[30] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_33 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[31] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_32 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[32] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_31 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[33] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_30 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[34] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_29 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[35] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_28 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[36] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_27 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[37] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_26 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[38] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_25 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[39] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_24 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_60 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[40] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_23 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[41] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_22 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[42] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_21 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[43] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_20 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[44] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_19 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[45] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_18 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[46] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_17 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[47] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_16 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[48] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_15 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[49] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_14 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_59 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[50] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_13 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[51] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_12 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[52] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_11 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[53] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_10 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[54] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_9 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[55] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_8 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[56] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_7 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[57] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_6 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[58] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_5 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[59] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_4 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_58 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[60] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_3 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[61] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_2 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[62] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_1 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[63] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_0 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_57 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_56 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_55 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[9] 
       (.C(m_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_54 ),
        .Q(\goreg_dm.dout_i_reg[63]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_auto_cc_0_memory__parameterized3
   (\goreg_dm.dout_i_reg[136]_0 ,
    E,
    s_aclk,
    m_aclk,
    \gpr1.dout_i_reg[1] ,
    I91,
    \gpr1.dout_i_reg[1]_0 ,
    \gpr1.dout_i_reg[1]_1 ,
    \gpr1.dout_i_reg[0] );
  output [136:0]\goreg_dm.dout_i_reg[136]_0 ;
  input [0:0]E;
  input s_aclk;
  input m_aclk;
  input [0:0]\gpr1.dout_i_reg[1] ;
  input [136:0]I91;
  input [3:0]\gpr1.dout_i_reg[1]_0 ;
  input [3:0]\gpr1.dout_i_reg[1]_1 ;
  input [0:0]\gpr1.dout_i_reg[0] ;

  wire [0:0]E;
  wire [136:0]I91;
  wire \gdm.dm_gen.dm_n_0 ;
  wire \gdm.dm_gen.dm_n_1 ;
  wire \gdm.dm_gen.dm_n_10 ;
  wire \gdm.dm_gen.dm_n_100 ;
  wire \gdm.dm_gen.dm_n_101 ;
  wire \gdm.dm_gen.dm_n_102 ;
  wire \gdm.dm_gen.dm_n_103 ;
  wire \gdm.dm_gen.dm_n_104 ;
  wire \gdm.dm_gen.dm_n_105 ;
  wire \gdm.dm_gen.dm_n_106 ;
  wire \gdm.dm_gen.dm_n_107 ;
  wire \gdm.dm_gen.dm_n_108 ;
  wire \gdm.dm_gen.dm_n_109 ;
  wire \gdm.dm_gen.dm_n_11 ;
  wire \gdm.dm_gen.dm_n_110 ;
  wire \gdm.dm_gen.dm_n_111 ;
  wire \gdm.dm_gen.dm_n_112 ;
  wire \gdm.dm_gen.dm_n_113 ;
  wire \gdm.dm_gen.dm_n_114 ;
  wire \gdm.dm_gen.dm_n_115 ;
  wire \gdm.dm_gen.dm_n_116 ;
  wire \gdm.dm_gen.dm_n_117 ;
  wire \gdm.dm_gen.dm_n_118 ;
  wire \gdm.dm_gen.dm_n_119 ;
  wire \gdm.dm_gen.dm_n_12 ;
  wire \gdm.dm_gen.dm_n_120 ;
  wire \gdm.dm_gen.dm_n_121 ;
  wire \gdm.dm_gen.dm_n_122 ;
  wire \gdm.dm_gen.dm_n_123 ;
  wire \gdm.dm_gen.dm_n_124 ;
  wire \gdm.dm_gen.dm_n_125 ;
  wire \gdm.dm_gen.dm_n_126 ;
  wire \gdm.dm_gen.dm_n_127 ;
  wire \gdm.dm_gen.dm_n_128 ;
  wire \gdm.dm_gen.dm_n_129 ;
  wire \gdm.dm_gen.dm_n_13 ;
  wire \gdm.dm_gen.dm_n_130 ;
  wire \gdm.dm_gen.dm_n_131 ;
  wire \gdm.dm_gen.dm_n_132 ;
  wire \gdm.dm_gen.dm_n_133 ;
  wire \gdm.dm_gen.dm_n_134 ;
  wire \gdm.dm_gen.dm_n_135 ;
  wire \gdm.dm_gen.dm_n_136 ;
  wire \gdm.dm_gen.dm_n_14 ;
  wire \gdm.dm_gen.dm_n_15 ;
  wire \gdm.dm_gen.dm_n_16 ;
  wire \gdm.dm_gen.dm_n_17 ;
  wire \gdm.dm_gen.dm_n_18 ;
  wire \gdm.dm_gen.dm_n_19 ;
  wire \gdm.dm_gen.dm_n_2 ;
  wire \gdm.dm_gen.dm_n_20 ;
  wire \gdm.dm_gen.dm_n_21 ;
  wire \gdm.dm_gen.dm_n_22 ;
  wire \gdm.dm_gen.dm_n_23 ;
  wire \gdm.dm_gen.dm_n_24 ;
  wire \gdm.dm_gen.dm_n_25 ;
  wire \gdm.dm_gen.dm_n_26 ;
  wire \gdm.dm_gen.dm_n_27 ;
  wire \gdm.dm_gen.dm_n_28 ;
  wire \gdm.dm_gen.dm_n_29 ;
  wire \gdm.dm_gen.dm_n_3 ;
  wire \gdm.dm_gen.dm_n_30 ;
  wire \gdm.dm_gen.dm_n_31 ;
  wire \gdm.dm_gen.dm_n_32 ;
  wire \gdm.dm_gen.dm_n_33 ;
  wire \gdm.dm_gen.dm_n_34 ;
  wire \gdm.dm_gen.dm_n_35 ;
  wire \gdm.dm_gen.dm_n_36 ;
  wire \gdm.dm_gen.dm_n_37 ;
  wire \gdm.dm_gen.dm_n_38 ;
  wire \gdm.dm_gen.dm_n_39 ;
  wire \gdm.dm_gen.dm_n_4 ;
  wire \gdm.dm_gen.dm_n_40 ;
  wire \gdm.dm_gen.dm_n_41 ;
  wire \gdm.dm_gen.dm_n_42 ;
  wire \gdm.dm_gen.dm_n_43 ;
  wire \gdm.dm_gen.dm_n_44 ;
  wire \gdm.dm_gen.dm_n_45 ;
  wire \gdm.dm_gen.dm_n_46 ;
  wire \gdm.dm_gen.dm_n_47 ;
  wire \gdm.dm_gen.dm_n_48 ;
  wire \gdm.dm_gen.dm_n_49 ;
  wire \gdm.dm_gen.dm_n_5 ;
  wire \gdm.dm_gen.dm_n_50 ;
  wire \gdm.dm_gen.dm_n_51 ;
  wire \gdm.dm_gen.dm_n_52 ;
  wire \gdm.dm_gen.dm_n_53 ;
  wire \gdm.dm_gen.dm_n_54 ;
  wire \gdm.dm_gen.dm_n_55 ;
  wire \gdm.dm_gen.dm_n_56 ;
  wire \gdm.dm_gen.dm_n_57 ;
  wire \gdm.dm_gen.dm_n_58 ;
  wire \gdm.dm_gen.dm_n_59 ;
  wire \gdm.dm_gen.dm_n_6 ;
  wire \gdm.dm_gen.dm_n_60 ;
  wire \gdm.dm_gen.dm_n_61 ;
  wire \gdm.dm_gen.dm_n_62 ;
  wire \gdm.dm_gen.dm_n_63 ;
  wire \gdm.dm_gen.dm_n_64 ;
  wire \gdm.dm_gen.dm_n_65 ;
  wire \gdm.dm_gen.dm_n_66 ;
  wire \gdm.dm_gen.dm_n_67 ;
  wire \gdm.dm_gen.dm_n_68 ;
  wire \gdm.dm_gen.dm_n_69 ;
  wire \gdm.dm_gen.dm_n_7 ;
  wire \gdm.dm_gen.dm_n_70 ;
  wire \gdm.dm_gen.dm_n_71 ;
  wire \gdm.dm_gen.dm_n_72 ;
  wire \gdm.dm_gen.dm_n_73 ;
  wire \gdm.dm_gen.dm_n_74 ;
  wire \gdm.dm_gen.dm_n_75 ;
  wire \gdm.dm_gen.dm_n_76 ;
  wire \gdm.dm_gen.dm_n_77 ;
  wire \gdm.dm_gen.dm_n_78 ;
  wire \gdm.dm_gen.dm_n_79 ;
  wire \gdm.dm_gen.dm_n_8 ;
  wire \gdm.dm_gen.dm_n_80 ;
  wire \gdm.dm_gen.dm_n_81 ;
  wire \gdm.dm_gen.dm_n_82 ;
  wire \gdm.dm_gen.dm_n_83 ;
  wire \gdm.dm_gen.dm_n_84 ;
  wire \gdm.dm_gen.dm_n_85 ;
  wire \gdm.dm_gen.dm_n_86 ;
  wire \gdm.dm_gen.dm_n_87 ;
  wire \gdm.dm_gen.dm_n_88 ;
  wire \gdm.dm_gen.dm_n_89 ;
  wire \gdm.dm_gen.dm_n_9 ;
  wire \gdm.dm_gen.dm_n_90 ;
  wire \gdm.dm_gen.dm_n_91 ;
  wire \gdm.dm_gen.dm_n_92 ;
  wire \gdm.dm_gen.dm_n_93 ;
  wire \gdm.dm_gen.dm_n_94 ;
  wire \gdm.dm_gen.dm_n_95 ;
  wire \gdm.dm_gen.dm_n_96 ;
  wire \gdm.dm_gen.dm_n_97 ;
  wire \gdm.dm_gen.dm_n_98 ;
  wire \gdm.dm_gen.dm_n_99 ;
  wire [136:0]\goreg_dm.dout_i_reg[136]_0 ;
  wire [0:0]\gpr1.dout_i_reg[0] ;
  wire [0:0]\gpr1.dout_i_reg[1] ;
  wire [3:0]\gpr1.dout_i_reg[1]_0 ;
  wire [3:0]\gpr1.dout_i_reg[1]_1 ;
  wire m_aclk;
  wire s_aclk;

  design_1_auto_cc_0_dmem__parameterized3 \gdm.dm_gen.dm 
       (.I91(I91),
        .dout_i({\gdm.dm_gen.dm_n_0 ,\gdm.dm_gen.dm_n_1 ,\gdm.dm_gen.dm_n_2 ,\gdm.dm_gen.dm_n_3 ,\gdm.dm_gen.dm_n_4 ,\gdm.dm_gen.dm_n_5 ,\gdm.dm_gen.dm_n_6 ,\gdm.dm_gen.dm_n_7 ,\gdm.dm_gen.dm_n_8 ,\gdm.dm_gen.dm_n_9 ,\gdm.dm_gen.dm_n_10 ,\gdm.dm_gen.dm_n_11 ,\gdm.dm_gen.dm_n_12 ,\gdm.dm_gen.dm_n_13 ,\gdm.dm_gen.dm_n_14 ,\gdm.dm_gen.dm_n_15 ,\gdm.dm_gen.dm_n_16 ,\gdm.dm_gen.dm_n_17 ,\gdm.dm_gen.dm_n_18 ,\gdm.dm_gen.dm_n_19 ,\gdm.dm_gen.dm_n_20 ,\gdm.dm_gen.dm_n_21 ,\gdm.dm_gen.dm_n_22 ,\gdm.dm_gen.dm_n_23 ,\gdm.dm_gen.dm_n_24 ,\gdm.dm_gen.dm_n_25 ,\gdm.dm_gen.dm_n_26 ,\gdm.dm_gen.dm_n_27 ,\gdm.dm_gen.dm_n_28 ,\gdm.dm_gen.dm_n_29 ,\gdm.dm_gen.dm_n_30 ,\gdm.dm_gen.dm_n_31 ,\gdm.dm_gen.dm_n_32 ,\gdm.dm_gen.dm_n_33 ,\gdm.dm_gen.dm_n_34 ,\gdm.dm_gen.dm_n_35 ,\gdm.dm_gen.dm_n_36 ,\gdm.dm_gen.dm_n_37 ,\gdm.dm_gen.dm_n_38 ,\gdm.dm_gen.dm_n_39 ,\gdm.dm_gen.dm_n_40 ,\gdm.dm_gen.dm_n_41 ,\gdm.dm_gen.dm_n_42 ,\gdm.dm_gen.dm_n_43 ,\gdm.dm_gen.dm_n_44 ,\gdm.dm_gen.dm_n_45 ,\gdm.dm_gen.dm_n_46 ,\gdm.dm_gen.dm_n_47 ,\gdm.dm_gen.dm_n_48 ,\gdm.dm_gen.dm_n_49 ,\gdm.dm_gen.dm_n_50 ,\gdm.dm_gen.dm_n_51 ,\gdm.dm_gen.dm_n_52 ,\gdm.dm_gen.dm_n_53 ,\gdm.dm_gen.dm_n_54 ,\gdm.dm_gen.dm_n_55 ,\gdm.dm_gen.dm_n_56 ,\gdm.dm_gen.dm_n_57 ,\gdm.dm_gen.dm_n_58 ,\gdm.dm_gen.dm_n_59 ,\gdm.dm_gen.dm_n_60 ,\gdm.dm_gen.dm_n_61 ,\gdm.dm_gen.dm_n_62 ,\gdm.dm_gen.dm_n_63 ,\gdm.dm_gen.dm_n_64 ,\gdm.dm_gen.dm_n_65 ,\gdm.dm_gen.dm_n_66 ,\gdm.dm_gen.dm_n_67 ,\gdm.dm_gen.dm_n_68 ,\gdm.dm_gen.dm_n_69 ,\gdm.dm_gen.dm_n_70 ,\gdm.dm_gen.dm_n_71 ,\gdm.dm_gen.dm_n_72 ,\gdm.dm_gen.dm_n_73 ,\gdm.dm_gen.dm_n_74 ,\gdm.dm_gen.dm_n_75 ,\gdm.dm_gen.dm_n_76 ,\gdm.dm_gen.dm_n_77 ,\gdm.dm_gen.dm_n_78 ,\gdm.dm_gen.dm_n_79 ,\gdm.dm_gen.dm_n_80 ,\gdm.dm_gen.dm_n_81 ,\gdm.dm_gen.dm_n_82 ,\gdm.dm_gen.dm_n_83 ,\gdm.dm_gen.dm_n_84 ,\gdm.dm_gen.dm_n_85 ,\gdm.dm_gen.dm_n_86 ,\gdm.dm_gen.dm_n_87 ,\gdm.dm_gen.dm_n_88 ,\gdm.dm_gen.dm_n_89 ,\gdm.dm_gen.dm_n_90 ,\gdm.dm_gen.dm_n_91 ,\gdm.dm_gen.dm_n_92 ,\gdm.dm_gen.dm_n_93 ,\gdm.dm_gen.dm_n_94 ,\gdm.dm_gen.dm_n_95 ,\gdm.dm_gen.dm_n_96 ,\gdm.dm_gen.dm_n_97 ,\gdm.dm_gen.dm_n_98 ,\gdm.dm_gen.dm_n_99 ,\gdm.dm_gen.dm_n_100 ,\gdm.dm_gen.dm_n_101 ,\gdm.dm_gen.dm_n_102 ,\gdm.dm_gen.dm_n_103 ,\gdm.dm_gen.dm_n_104 ,\gdm.dm_gen.dm_n_105 ,\gdm.dm_gen.dm_n_106 ,\gdm.dm_gen.dm_n_107 ,\gdm.dm_gen.dm_n_108 ,\gdm.dm_gen.dm_n_109 ,\gdm.dm_gen.dm_n_110 ,\gdm.dm_gen.dm_n_111 ,\gdm.dm_gen.dm_n_112 ,\gdm.dm_gen.dm_n_113 ,\gdm.dm_gen.dm_n_114 ,\gdm.dm_gen.dm_n_115 ,\gdm.dm_gen.dm_n_116 ,\gdm.dm_gen.dm_n_117 ,\gdm.dm_gen.dm_n_118 ,\gdm.dm_gen.dm_n_119 ,\gdm.dm_gen.dm_n_120 ,\gdm.dm_gen.dm_n_121 ,\gdm.dm_gen.dm_n_122 ,\gdm.dm_gen.dm_n_123 ,\gdm.dm_gen.dm_n_124 ,\gdm.dm_gen.dm_n_125 ,\gdm.dm_gen.dm_n_126 ,\gdm.dm_gen.dm_n_127 ,\gdm.dm_gen.dm_n_128 ,\gdm.dm_gen.dm_n_129 ,\gdm.dm_gen.dm_n_130 ,\gdm.dm_gen.dm_n_131 ,\gdm.dm_gen.dm_n_132 ,\gdm.dm_gen.dm_n_133 ,\gdm.dm_gen.dm_n_134 ,\gdm.dm_gen.dm_n_135 ,\gdm.dm_gen.dm_n_136 }),
        .\gpr1.dout_i_reg[0]_0 (\gpr1.dout_i_reg[0] ),
        .\gpr1.dout_i_reg[1]_0 (\gpr1.dout_i_reg[1] ),
        .\gpr1.dout_i_reg[1]_1 (\gpr1.dout_i_reg[1]_0 ),
        .\gpr1.dout_i_reg[1]_2 (\gpr1.dout_i_reg[1]_1 ),
        .m_aclk(m_aclk),
        .s_aclk(s_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_136 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[100] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_36 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[101] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_35 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[102] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_34 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[103] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_33 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[104] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_32 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[105] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_31 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[106] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_30 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[107] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_29 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[108] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_28 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[109] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_27 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_126 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[110] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_26 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[111] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_25 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[112] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_24 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[113] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_23 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[114] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_22 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[115] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_21 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[116] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_20 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[117] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_19 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[118] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_18 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[119] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_17 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_125 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[120] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_16 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[121] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_15 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[122] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_14 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[123] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_13 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[124] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_12 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[125] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_11 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[126] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_10 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[127] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_9 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[128] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_8 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [128]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[129] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_7 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [129]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_124 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[130] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_6 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [130]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[131] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_5 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [131]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[132] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_4 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [132]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[133] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_3 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [133]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[134] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_2 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [134]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[135] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_1 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [135]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[136] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_0 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [136]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_123 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_122 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_121 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_120 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_119 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_118 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_117 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_135 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_116 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_115 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_114 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_113 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_112 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_111 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_110 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_109 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_108 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_107 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_134 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_106 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_105 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_104 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_103 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_102 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_101 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_100 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_99 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_98 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_97 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_133 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_96 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[41] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_95 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[42] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_94 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[43] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_93 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[44] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_92 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[45] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_91 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[46] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_90 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[47] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_89 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[48] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_88 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[49] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_87 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_132 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[50] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_86 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[51] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_85 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[52] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_84 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[53] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_83 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[54] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_82 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[55] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_81 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[56] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_80 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[57] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_79 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[58] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_78 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[59] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_77 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_131 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[60] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_76 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[61] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_75 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[62] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_74 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[63] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_73 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[64] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_72 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[65] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_71 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[66] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_70 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[67] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_69 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[68] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_68 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[69] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_67 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_130 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[70] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_66 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[71] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_65 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[72] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_64 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[73] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_63 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[74] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_62 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[75] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_61 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[76] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_60 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[77] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_59 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[78] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_58 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[79] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_57 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_129 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[80] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_56 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[81] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_55 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[82] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_54 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[83] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_53 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[84] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_52 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[85] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_51 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[86] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_50 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[87] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_49 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[88] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_48 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[89] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_47 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_128 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[90] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_46 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[91] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_45 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[92] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_44 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[93] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_43 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[94] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_42 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[95] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_41 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[96] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_40 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[97] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_39 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[98] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_38 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[99] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_37 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_127 ),
        .Q(\goreg_dm.dout_i_reg[136]_0 [9]),
        .R(1'b0));
endmodule

module design_1_auto_cc_0_rd_bin_cntr
   (\gc0.count_d1_reg[2]_0 ,
    Q,
    \gc0.count_d1_reg[3]_0 ,
    ram_empty_i_reg,
    ram_empty_i_reg_0,
    WR_PNTR_RD,
    E,
    s_aclk,
    \gc0.count_d1_reg[3]_1 );
  output \gc0.count_d1_reg[2]_0 ;
  output [3:0]Q;
  output [3:0]\gc0.count_d1_reg[3]_0 ;
  input ram_empty_i_reg;
  input ram_empty_i_reg_0;
  input [3:0]WR_PNTR_RD;
  input [0:0]E;
  input s_aclk;
  input \gc0.count_d1_reg[3]_1 ;

  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]WR_PNTR_RD;
  wire \gc0.count_d1_reg[2]_0 ;
  wire [3:0]\gc0.count_d1_reg[3]_0 ;
  wire \gc0.count_d1_reg[3]_1 ;
  wire [3:0]plusOp__1;
  wire ram_empty_i_i_2_n_0;
  wire ram_empty_i_i_3_n_0;
  wire ram_empty_i_reg;
  wire ram_empty_i_reg_0;
  wire s_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp__1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[0]),
        .Q(\gc0.count_d1_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[1]),
        .Q(\gc0.count_d1_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[2]),
        .Q(\gc0.count_d1_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[3]),
        .Q(\gc0.count_d1_reg[3]_0 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__1[0]),
        .PRE(\gc0.count_d1_reg[3]_1 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(plusOp__1[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(plusOp__1[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(plusOp__1[3]),
        .Q(Q[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_empty_i_i_1
       (.I0(ram_empty_i_i_2_n_0),
        .I1(ram_empty_i_i_3_n_0),
        .I2(ram_empty_i_reg),
        .I3(ram_empty_i_reg_0),
        .O(\gc0.count_d1_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_2
       (.I0(\gc0.count_d1_reg[3]_0 [2]),
        .I1(WR_PNTR_RD[2]),
        .I2(\gc0.count_d1_reg[3]_0 [3]),
        .I3(WR_PNTR_RD[3]),
        .O(ram_empty_i_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_3
       (.I0(\gc0.count_d1_reg[3]_0 [0]),
        .I1(WR_PNTR_RD[0]),
        .I2(\gc0.count_d1_reg[3]_0 [1]),
        .I3(WR_PNTR_RD[1]),
        .O(ram_empty_i_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_auto_cc_0_rd_bin_cntr_13
   (\gc0.count_d1_reg[2]_0 ,
    Q,
    \gc0.count_d1_reg[3]_0 ,
    ram_empty_i_reg,
    ram_empty_i_reg_0,
    WR_PNTR_RD,
    E,
    m_aclk,
    \gc0.count_d1_reg[3]_1 );
  output \gc0.count_d1_reg[2]_0 ;
  output [3:0]Q;
  output [3:0]\gc0.count_d1_reg[3]_0 ;
  input ram_empty_i_reg;
  input ram_empty_i_reg_0;
  input [3:0]WR_PNTR_RD;
  input [0:0]E;
  input m_aclk;
  input \gc0.count_d1_reg[3]_1 ;

  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]WR_PNTR_RD;
  wire \gc0.count_d1_reg[2]_0 ;
  wire [3:0]\gc0.count_d1_reg[3]_0 ;
  wire \gc0.count_d1_reg[3]_1 ;
  wire m_aclk;
  wire [3:0]plusOp__4;
  wire ram_empty_i_i_2__1_n_0;
  wire ram_empty_i_i_3__1_n_0;
  wire ram_empty_i_reg;
  wire ram_empty_i_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1__1 
       (.I0(Q[0]),
        .O(plusOp__4[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp__4[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[0]),
        .Q(\gc0.count_d1_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[1]),
        .Q(\gc0.count_d1_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[2]),
        .Q(\gc0.count_d1_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[3]),
        .Q(\gc0.count_d1_reg[3]_0 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .D(plusOp__4[0]),
        .PRE(\gc0.count_d1_reg[3]_1 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(plusOp__4[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(plusOp__4[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(plusOp__4[3]),
        .Q(Q[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_empty_i_i_1__1
       (.I0(ram_empty_i_i_2__1_n_0),
        .I1(ram_empty_i_i_3__1_n_0),
        .I2(ram_empty_i_reg),
        .I3(ram_empty_i_reg_0),
        .O(\gc0.count_d1_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_2__1
       (.I0(\gc0.count_d1_reg[3]_0 [2]),
        .I1(WR_PNTR_RD[2]),
        .I2(\gc0.count_d1_reg[3]_0 [3]),
        .I3(WR_PNTR_RD[3]),
        .O(ram_empty_i_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_3__1
       (.I0(\gc0.count_d1_reg[3]_0 [0]),
        .I1(WR_PNTR_RD[0]),
        .I2(\gc0.count_d1_reg[3]_0 [1]),
        .I3(WR_PNTR_RD[1]),
        .O(ram_empty_i_i_3__1_n_0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_auto_cc_0_rd_bin_cntr_20
   (\gc0.count_d1_reg[2]_0 ,
    Q,
    \gc0.count_d1_reg[3]_0 ,
    ram_empty_i_reg,
    ram_empty_i_reg_0,
    WR_PNTR_RD,
    E,
    s_aclk,
    \gc0.count_d1_reg[3]_1 );
  output \gc0.count_d1_reg[2]_0 ;
  output [3:0]Q;
  output [3:0]\gc0.count_d1_reg[3]_0 ;
  input ram_empty_i_reg;
  input ram_empty_i_reg_0;
  input [3:0]WR_PNTR_RD;
  input [0:0]E;
  input s_aclk;
  input \gc0.count_d1_reg[3]_1 ;

  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]WR_PNTR_RD;
  wire \gc0.count_d1_reg[2]_0 ;
  wire [3:0]\gc0.count_d1_reg[3]_0 ;
  wire \gc0.count_d1_reg[3]_1 ;
  wire [3:0]plusOp__3;
  wire ram_empty_i_i_2__0_n_0;
  wire ram_empty_i_i_3__0_n_0;
  wire ram_empty_i_reg;
  wire ram_empty_i_reg_0;
  wire s_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1__0 
       (.I0(Q[0]),
        .O(plusOp__3[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp__3[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[0]),
        .Q(\gc0.count_d1_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[1]),
        .Q(\gc0.count_d1_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[2]),
        .Q(\gc0.count_d1_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[3]),
        .Q(\gc0.count_d1_reg[3]_0 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__3[0]),
        .PRE(\gc0.count_d1_reg[3]_1 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(plusOp__3[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(plusOp__3[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(plusOp__3[3]),
        .Q(Q[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_empty_i_i_1__0
       (.I0(ram_empty_i_i_2__0_n_0),
        .I1(ram_empty_i_i_3__0_n_0),
        .I2(ram_empty_i_reg),
        .I3(ram_empty_i_reg_0),
        .O(\gc0.count_d1_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_2__0
       (.I0(\gc0.count_d1_reg[3]_0 [2]),
        .I1(WR_PNTR_RD[2]),
        .I2(\gc0.count_d1_reg[3]_0 [3]),
        .I3(WR_PNTR_RD[3]),
        .O(ram_empty_i_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_3__0
       (.I0(\gc0.count_d1_reg[3]_0 [0]),
        .I1(WR_PNTR_RD[0]),
        .I2(\gc0.count_d1_reg[3]_0 [1]),
        .I3(WR_PNTR_RD[1]),
        .O(ram_empty_i_i_3__0_n_0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_auto_cc_0_rd_bin_cntr_27
   (\gc0.count_d1_reg[2]_0 ,
    Q,
    \gc0.count_d1_reg[3]_0 ,
    ram_empty_i_reg,
    ram_empty_i_reg_0,
    WR_PNTR_RD,
    E,
    m_aclk,
    \gc0.count_d1_reg[3]_1 );
  output \gc0.count_d1_reg[2]_0 ;
  output [3:0]Q;
  output [3:0]\gc0.count_d1_reg[3]_0 ;
  input ram_empty_i_reg;
  input ram_empty_i_reg_0;
  input [3:0]WR_PNTR_RD;
  input [0:0]E;
  input m_aclk;
  input \gc0.count_d1_reg[3]_1 ;

  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]WR_PNTR_RD;
  wire \gc0.count_d1_reg[2]_0 ;
  wire [3:0]\gc0.count_d1_reg[3]_0 ;
  wire \gc0.count_d1_reg[3]_1 ;
  wire m_aclk;
  wire [3:0]plusOp__7;
  wire ram_empty_i_i_2__3_n_0;
  wire ram_empty_i_i_3__3_n_0;
  wire ram_empty_i_reg;
  wire ram_empty_i_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1__3 
       (.I0(Q[0]),
        .O(plusOp__7[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__7[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__7[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp__7[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[0]),
        .Q(\gc0.count_d1_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[1]),
        .Q(\gc0.count_d1_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[2]),
        .Q(\gc0.count_d1_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[3]),
        .Q(\gc0.count_d1_reg[3]_0 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .D(plusOp__7[0]),
        .PRE(\gc0.count_d1_reg[3]_1 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(plusOp__7[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(plusOp__7[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(plusOp__7[3]),
        .Q(Q[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_empty_i_i_1__3
       (.I0(ram_empty_i_i_2__3_n_0),
        .I1(ram_empty_i_i_3__3_n_0),
        .I2(ram_empty_i_reg),
        .I3(ram_empty_i_reg_0),
        .O(\gc0.count_d1_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_2__3
       (.I0(\gc0.count_d1_reg[3]_0 [2]),
        .I1(WR_PNTR_RD[2]),
        .I2(\gc0.count_d1_reg[3]_0 [3]),
        .I3(WR_PNTR_RD[3]),
        .O(ram_empty_i_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_3__3
       (.I0(\gc0.count_d1_reg[3]_0 [0]),
        .I1(WR_PNTR_RD[0]),
        .I2(\gc0.count_d1_reg[3]_0 [1]),
        .I3(WR_PNTR_RD[1]),
        .O(ram_empty_i_i_3__3_n_0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_auto_cc_0_rd_bin_cntr_6
   (\gc0.count_d1_reg[2]_0 ,
    Q,
    \gc0.count_d1_reg[3]_0 ,
    ram_empty_i_reg,
    ram_empty_i_reg_0,
    WR_PNTR_RD,
    E,
    m_aclk,
    \gc0.count_d1_reg[3]_1 );
  output \gc0.count_d1_reg[2]_0 ;
  output [3:0]Q;
  output [3:0]\gc0.count_d1_reg[3]_0 ;
  input ram_empty_i_reg;
  input ram_empty_i_reg_0;
  input [3:0]WR_PNTR_RD;
  input [0:0]E;
  input m_aclk;
  input \gc0.count_d1_reg[3]_1 ;

  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]WR_PNTR_RD;
  wire \gc0.count_d1_reg[2]_0 ;
  wire [3:0]\gc0.count_d1_reg[3]_0 ;
  wire \gc0.count_d1_reg[3]_1 ;
  wire m_aclk;
  wire [3:0]plusOp__5;
  wire ram_empty_i_i_2__2_n_0;
  wire ram_empty_i_i_3__2_n_0;
  wire ram_empty_i_reg;
  wire ram_empty_i_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1__2 
       (.I0(Q[0]),
        .O(plusOp__5[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__5[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp__5[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[0]),
        .Q(\gc0.count_d1_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[1]),
        .Q(\gc0.count_d1_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[2]),
        .Q(\gc0.count_d1_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(Q[3]),
        .Q(\gc0.count_d1_reg[3]_0 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .D(plusOp__5[0]),
        .PRE(\gc0.count_d1_reg[3]_1 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(plusOp__5[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(plusOp__5[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[3]_1 ),
        .D(plusOp__5[3]),
        .Q(Q[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    ram_empty_i_i_1__2
       (.I0(ram_empty_i_i_2__2_n_0),
        .I1(ram_empty_i_i_3__2_n_0),
        .I2(ram_empty_i_reg),
        .I3(ram_empty_i_reg_0),
        .O(\gc0.count_d1_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_2__2
       (.I0(\gc0.count_d1_reg[3]_0 [2]),
        .I1(WR_PNTR_RD[2]),
        .I2(\gc0.count_d1_reg[3]_0 [3]),
        .I3(WR_PNTR_RD[3]),
        .O(ram_empty_i_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_3__2
       (.I0(\gc0.count_d1_reg[3]_0 [0]),
        .I1(WR_PNTR_RD[0]),
        .I2(\gc0.count_d1_reg[3]_0 [1]),
        .I3(WR_PNTR_RD[1]),
        .O(ram_empty_i_i_3__2_n_0));
endmodule

module design_1_auto_cc_0_rd_fwft
   (\gpregsm1.curr_fwft_state_reg[1]_0 ,
    E,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    s_axi_bvalid,
    s_aclk,
    \gpregsm1.user_valid_reg_0 ,
    s_axi_bready,
    out,
    WR_PNTR_RD,
    Q);
  output \gpregsm1.curr_fwft_state_reg[1]_0 ;
  output [0:0]E;
  output [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output s_axi_bvalid;
  input s_aclk;
  input \gpregsm1.user_valid_reg_0 ;
  input s_axi_bready;
  input out;
  input [0:0]WR_PNTR_RD;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]WR_PNTR_RD;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0;
  wire \gpregsm1.curr_fwft_state_reg[1]_0 ;
  wire \gpregsm1.user_valid_reg_0 ;
  wire [1:0]next_fwft_state;
  wire [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire out;
  wire s_aclk;
  wire s_axi_bready;
  wire s_axi_bvalid;
  (* DONT_TOUCH *) wire user_valid;

  LUT5 #(
    .INIT(32'hEF80EB00)) 
    aempty_fwft_fb_i_i_1
       (.I0(out),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(aempty_fwft_fb_i),
        .I4(s_axi_bready),
        .O(aempty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(aempty_fwft_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(aempty_fwft_i));
  LUT4 #(
    .INIT(16'hBA22)) 
    empty_fwft_fb_i_i_1
       (.I0(empty_fwft_fb_i),
        .I1(curr_fwft_state[1]),
        .I2(s_axi_bready),
        .I3(curr_fwft_state[0]),
        .O(empty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(empty_fwft_fb_i));
  LUT4 #(
    .INIT(16'hBA22)) 
    empty_fwft_fb_o_i_i_1
       (.I0(empty_fwft_fb_o_i),
        .I1(curr_fwft_state[1]),
        .I2(s_axi_bready),
        .I3(curr_fwft_state[0]),
        .O(empty_fwft_fb_o_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(empty_fwft_fb_o_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(empty_fwft_i));
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc0.count_d1[3]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(s_axi_bready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .O(E));
  LUT4 #(
    .INIT(16'h4404)) 
    \goreg_dm.dout_i[7]_i_1 
       (.I0(\gpregsm1.user_valid_reg_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(s_axi_bready),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ));
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(s_axi_bready),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(s_axi_bready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(\gpregsm1.user_valid_reg_0 ),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(\gpregsm1.user_valid_reg_0 ),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(\gpregsm1.user_valid_reg_0 ),
        .D(next_fwft_state[0]),
        .Q(user_valid));
  LUT6 #(
    .INIT(64'h00DF0000000000DF)) 
    ram_empty_i_i_5
       (.I0(curr_fwft_state[1]),
        .I1(s_axi_bready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .I4(WR_PNTR_RD),
        .I5(Q),
        .O(\gpregsm1.curr_fwft_state_reg[1]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_bvalid_INST_0
       (.I0(empty_fwft_i),
        .O(s_axi_bvalid));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_auto_cc_0_rd_fwft_11
   (\gpregsm1.curr_fwft_state_reg[1]_0 ,
    E,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    m_axi_awvalid,
    m_aclk,
    \gpregsm1.user_valid_reg_0 ,
    m_axi_awready,
    out,
    WR_PNTR_RD,
    Q);
  output \gpregsm1.curr_fwft_state_reg[1]_0 ;
  output [0:0]E;
  output [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output m_axi_awvalid;
  input m_aclk;
  input \gpregsm1.user_valid_reg_0 ;
  input m_axi_awready;
  input out;
  input [0:0]WR_PNTR_RD;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]WR_PNTR_RD;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0;
  wire \gpregsm1.curr_fwft_state_reg[1]_0 ;
  wire \gpregsm1.user_valid_reg_0 ;
  wire m_aclk;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [1:0]next_fwft_state;
  wire [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire out;
  (* DONT_TOUCH *) wire user_valid;

  LUT5 #(
    .INIT(32'hEF80EB00)) 
    aempty_fwft_fb_i_i_1__1
       (.I0(out),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(aempty_fwft_fb_i),
        .I4(m_axi_awready),
        .O(aempty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(aempty_fwft_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(aempty_fwft_i));
  LUT4 #(
    .INIT(16'hBA22)) 
    empty_fwft_fb_i_i_1__1
       (.I0(empty_fwft_fb_i),
        .I1(curr_fwft_state[1]),
        .I2(m_axi_awready),
        .I3(curr_fwft_state[0]),
        .O(empty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(empty_fwft_fb_i));
  LUT4 #(
    .INIT(16'hBA22)) 
    empty_fwft_fb_o_i_i_1__1
       (.I0(empty_fwft_fb_o_i),
        .I1(curr_fwft_state[1]),
        .I2(m_axi_awready),
        .I3(curr_fwft_state[0]),
        .O(empty_fwft_fb_o_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(empty_fwft_fb_o_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(empty_fwft_i));
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc0.count_d1[3]_i_1__1 
       (.I0(curr_fwft_state[1]),
        .I1(m_axi_awready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .O(E));
  LUT4 #(
    .INIT(16'h4404)) 
    \goreg_dm.dout_i[66]_i_1 
       (.I0(\gpregsm1.user_valid_reg_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(m_axi_awready),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ));
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1__1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(m_axi_awready),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1__1 
       (.I0(curr_fwft_state[1]),
        .I1(m_axi_awready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(\gpregsm1.user_valid_reg_0 ),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(\gpregsm1.user_valid_reg_0 ),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(\gpregsm1.user_valid_reg_0 ),
        .D(next_fwft_state[0]),
        .Q(user_valid));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_awvalid_INST_0
       (.I0(empty_fwft_i),
        .O(m_axi_awvalid));
  LUT6 #(
    .INIT(64'h00DF0000000000DF)) 
    ram_empty_i_i_5__1
       (.I0(curr_fwft_state[1]),
        .I1(m_axi_awready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .I4(WR_PNTR_RD),
        .I5(Q),
        .O(\gpregsm1.curr_fwft_state_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_auto_cc_0_rd_fwft_18
   (\gpregsm1.curr_fwft_state_reg[1]_0 ,
    E,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    s_axi_rvalid,
    s_aclk,
    \gpregsm1.user_valid_reg_0 ,
    s_axi_rready,
    out,
    WR_PNTR_RD,
    Q);
  output \gpregsm1.curr_fwft_state_reg[1]_0 ;
  output [0:0]E;
  output [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output s_axi_rvalid;
  input s_aclk;
  input \gpregsm1.user_valid_reg_0 ;
  input s_axi_rready;
  input out;
  input [0:0]WR_PNTR_RD;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]WR_PNTR_RD;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0;
  wire \gpregsm1.curr_fwft_state_reg[1]_0 ;
  wire \gpregsm1.user_valid_reg_0 ;
  wire [1:0]next_fwft_state;
  wire [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire out;
  wire s_aclk;
  wire s_axi_rready;
  wire s_axi_rvalid;
  (* DONT_TOUCH *) wire user_valid;

  LUT5 #(
    .INIT(32'hEF80EB00)) 
    aempty_fwft_fb_i_i_1__0
       (.I0(out),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(aempty_fwft_fb_i),
        .I4(s_axi_rready),
        .O(aempty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(aempty_fwft_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(aempty_fwft_i));
  LUT4 #(
    .INIT(16'hBA22)) 
    empty_fwft_fb_i_i_1__0
       (.I0(empty_fwft_fb_i),
        .I1(curr_fwft_state[1]),
        .I2(s_axi_rready),
        .I3(curr_fwft_state[0]),
        .O(empty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(empty_fwft_fb_i));
  LUT4 #(
    .INIT(16'hBA22)) 
    empty_fwft_fb_o_i_i_1__0
       (.I0(empty_fwft_fb_o_i),
        .I1(curr_fwft_state[1]),
        .I2(s_axi_rready),
        .I3(curr_fwft_state[0]),
        .O(empty_fwft_fb_o_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(empty_fwft_fb_o_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(empty_fwft_i));
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc0.count_d1[3]_i_1__0 
       (.I0(curr_fwft_state[1]),
        .I1(s_axi_rready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .O(E));
  LUT4 #(
    .INIT(16'h4404)) 
    \goreg_dm.dout_i[136]_i_1 
       (.I0(\gpregsm1.user_valid_reg_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(s_axi_rready),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ));
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1__0 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(s_axi_rready),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1__0 
       (.I0(curr_fwft_state[1]),
        .I1(s_axi_rready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(\gpregsm1.user_valid_reg_0 ),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(\gpregsm1.user_valid_reg_0 ),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(\gpregsm1.user_valid_reg_0 ),
        .D(next_fwft_state[0]),
        .Q(user_valid));
  LUT6 #(
    .INIT(64'h00DF0000000000DF)) 
    ram_empty_i_i_5__0
       (.I0(curr_fwft_state[1]),
        .I1(s_axi_rready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .I4(WR_PNTR_RD),
        .I5(Q),
        .O(\gpregsm1.curr_fwft_state_reg[1]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_rvalid_INST_0
       (.I0(empty_fwft_i),
        .O(s_axi_rvalid));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_auto_cc_0_rd_fwft_25
   (\gpregsm1.curr_fwft_state_reg[1]_0 ,
    E,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    m_axi_arvalid,
    m_aclk,
    \gpregsm1.user_valid_reg_0 ,
    m_axi_arready,
    out,
    WR_PNTR_RD,
    Q);
  output \gpregsm1.curr_fwft_state_reg[1]_0 ;
  output [0:0]E;
  output [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output m_axi_arvalid;
  input m_aclk;
  input \gpregsm1.user_valid_reg_0 ;
  input m_axi_arready;
  input out;
  input [0:0]WR_PNTR_RD;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]WR_PNTR_RD;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0;
  wire \gpregsm1.curr_fwft_state_reg[1]_0 ;
  wire \gpregsm1.user_valid_reg_0 ;
  wire m_aclk;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [1:0]next_fwft_state;
  wire [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire out;
  (* DONT_TOUCH *) wire user_valid;

  LUT5 #(
    .INIT(32'hEF80EB00)) 
    aempty_fwft_fb_i_i_1__3
       (.I0(out),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(aempty_fwft_fb_i),
        .I4(m_axi_arready),
        .O(aempty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(aempty_fwft_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(aempty_fwft_i));
  LUT4 #(
    .INIT(16'hBA22)) 
    empty_fwft_fb_i_i_1__3
       (.I0(empty_fwft_fb_i),
        .I1(curr_fwft_state[1]),
        .I2(m_axi_arready),
        .I3(curr_fwft_state[0]),
        .O(empty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(empty_fwft_fb_i));
  LUT4 #(
    .INIT(16'hBA22)) 
    empty_fwft_fb_o_i_i_1__3
       (.I0(empty_fwft_fb_o_i),
        .I1(curr_fwft_state[1]),
        .I2(m_axi_arready),
        .I3(curr_fwft_state[0]),
        .O(empty_fwft_fb_o_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(empty_fwft_fb_o_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(empty_fwft_i));
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc0.count_d1[3]_i_1__3 
       (.I0(curr_fwft_state[1]),
        .I1(m_axi_arready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .O(E));
  LUT4 #(
    .INIT(16'h4404)) 
    \goreg_dm.dout_i[63]_i_1 
       (.I0(\gpregsm1.user_valid_reg_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(m_axi_arready),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ));
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1__3 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(m_axi_arready),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1__3 
       (.I0(curr_fwft_state[1]),
        .I1(m_axi_arready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(\gpregsm1.user_valid_reg_0 ),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(\gpregsm1.user_valid_reg_0 ),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(\gpregsm1.user_valid_reg_0 ),
        .D(next_fwft_state[0]),
        .Q(user_valid));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_arvalid_INST_0
       (.I0(empty_fwft_i),
        .O(m_axi_arvalid));
  LUT6 #(
    .INIT(64'h00DF0000000000DF)) 
    ram_empty_i_i_5__3
       (.I0(curr_fwft_state[1]),
        .I1(m_axi_arready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .I4(WR_PNTR_RD),
        .I5(Q),
        .O(\gpregsm1.curr_fwft_state_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_auto_cc_0_rd_fwft_4
   (\gpregsm1.curr_fwft_state_reg[1]_0 ,
    E,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    m_axi_wvalid,
    m_aclk,
    \gpregsm1.user_valid_reg_0 ,
    m_axi_wready,
    out,
    WR_PNTR_RD,
    Q);
  output \gpregsm1.curr_fwft_state_reg[1]_0 ;
  output [0:0]E;
  output [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output m_axi_wvalid;
  input m_aclk;
  input \gpregsm1.user_valid_reg_0 ;
  input m_axi_wready;
  input out;
  input [0:0]WR_PNTR_RD;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]WR_PNTR_RD;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0;
  wire \gpregsm1.curr_fwft_state_reg[1]_0 ;
  wire \gpregsm1.user_valid_reg_0 ;
  wire m_aclk;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [1:0]next_fwft_state;
  wire [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire out;
  (* DONT_TOUCH *) wire user_valid;

  LUT5 #(
    .INIT(32'hEF80EB00)) 
    aempty_fwft_fb_i_i_1__2
       (.I0(out),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(aempty_fwft_fb_i),
        .I4(m_axi_wready),
        .O(aempty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(aempty_fwft_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(aempty_fwft_i));
  LUT4 #(
    .INIT(16'hBA22)) 
    empty_fwft_fb_i_i_1__2
       (.I0(empty_fwft_fb_i),
        .I1(curr_fwft_state[1]),
        .I2(m_axi_wready),
        .I3(curr_fwft_state[0]),
        .O(empty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(empty_fwft_fb_i));
  LUT4 #(
    .INIT(16'hBA22)) 
    empty_fwft_fb_o_i_i_1__2
       (.I0(empty_fwft_fb_o_i),
        .I1(curr_fwft_state[1]),
        .I2(m_axi_wready),
        .I3(curr_fwft_state[0]),
        .O(empty_fwft_fb_o_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(empty_fwft_fb_o_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\gpregsm1.user_valid_reg_0 ),
        .Q(empty_fwft_i));
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc0.count_d1[3]_i_1__2 
       (.I0(curr_fwft_state[1]),
        .I1(m_axi_wready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .O(E));
  LUT4 #(
    .INIT(16'h4404)) 
    \goreg_dm.dout_i[145]_i_1 
       (.I0(\gpregsm1.user_valid_reg_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(m_axi_wready),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ));
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1__2 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(m_axi_wready),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1__2 
       (.I0(curr_fwft_state[1]),
        .I1(m_axi_wready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(\gpregsm1.user_valid_reg_0 ),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(\gpregsm1.user_valid_reg_0 ),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(\gpregsm1.user_valid_reg_0 ),
        .D(next_fwft_state[0]),
        .Q(user_valid));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_wvalid_INST_0
       (.I0(empty_fwft_i),
        .O(m_axi_wvalid));
  LUT6 #(
    .INIT(64'h00DF0000000000DF)) 
    ram_empty_i_i_5__2
       (.I0(curr_fwft_state[1]),
        .I1(m_axi_wready),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .I4(WR_PNTR_RD),
        .I5(Q),
        .O(\gpregsm1.curr_fwft_state_reg[1]_0 ));
endmodule

module design_1_auto_cc_0_rd_logic
   (Q,
    E,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    \gc0.count_d1_reg[3] ,
    s_axi_bvalid,
    s_aclk,
    \gc0.count_d1_reg[3]_0 ,
    s_axi_bready,
    ram_empty_i_reg,
    WR_PNTR_RD);
  output [2:0]Q;
  output [0:0]E;
  output [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output [3:0]\gc0.count_d1_reg[3] ;
  output s_axi_bvalid;
  input s_aclk;
  input \gc0.count_d1_reg[3]_0 ;
  input s_axi_bready;
  input ram_empty_i_reg;
  input [3:0]WR_PNTR_RD;

  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]WR_PNTR_RD;
  wire empty_fb_i;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire \gc0.count_d1_reg[3]_0 ;
  wire \gr1.gr1_int.rfwft_n_0 ;
  wire [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire ram_empty_i_reg;
  wire [3:3]rd_pntr_plus1;
  wire rpntr_n_0;
  wire s_aclk;
  wire s_axi_bready;
  wire s_axi_bvalid;

  design_1_auto_cc_0_rd_fwft \gr1.gr1_int.rfwft 
       (.E(E),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(WR_PNTR_RD[3]),
        .\gpregsm1.curr_fwft_state_reg[1]_0 (\gr1.gr1_int.rfwft_n_0 ),
        .\gpregsm1.user_valid_reg_0 (\gc0.count_d1_reg[3]_0 ),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .out(empty_fb_i),
        .s_aclk(s_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid));
  design_1_auto_cc_0_rd_status_flags_as \gras.rsts 
       (.out(empty_fb_i),
        .ram_empty_i_reg_0(rpntr_n_0),
        .ram_empty_i_reg_1(\gc0.count_d1_reg[3]_0 ),
        .s_aclk(s_aclk));
  design_1_auto_cc_0_rd_bin_cntr rpntr
       (.E(E),
        .Q({rd_pntr_plus1,Q}),
        .WR_PNTR_RD(WR_PNTR_RD),
        .\gc0.count_d1_reg[2]_0 (rpntr_n_0),
        .\gc0.count_d1_reg[3]_0 (\gc0.count_d1_reg[3] ),
        .\gc0.count_d1_reg[3]_1 (\gc0.count_d1_reg[3]_0 ),
        .ram_empty_i_reg(ram_empty_i_reg),
        .ram_empty_i_reg_0(\gr1.gr1_int.rfwft_n_0 ),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_auto_cc_0_rd_logic_0
   (Q,
    E,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    \gc0.count_d1_reg[3] ,
    m_axi_wvalid,
    m_aclk,
    \gc0.count_d1_reg[3]_0 ,
    m_axi_wready,
    ram_empty_i_reg,
    WR_PNTR_RD);
  output [2:0]Q;
  output [0:0]E;
  output [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output [3:0]\gc0.count_d1_reg[3] ;
  output m_axi_wvalid;
  input m_aclk;
  input \gc0.count_d1_reg[3]_0 ;
  input m_axi_wready;
  input ram_empty_i_reg;
  input [3:0]WR_PNTR_RD;

  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]WR_PNTR_RD;
  wire empty_fb_i;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire \gc0.count_d1_reg[3]_0 ;
  wire \gr1.gr1_int.rfwft_n_0 ;
  wire m_aclk;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire ram_empty_i_reg;
  wire [3:3]rd_pntr_plus1;
  wire rpntr_n_0;

  design_1_auto_cc_0_rd_fwft_4 \gr1.gr1_int.rfwft 
       (.E(E),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(WR_PNTR_RD[3]),
        .\gpregsm1.curr_fwft_state_reg[1]_0 (\gr1.gr1_int.rfwft_n_0 ),
        .\gpregsm1.user_valid_reg_0 (\gc0.count_d1_reg[3]_0 ),
        .m_aclk(m_aclk),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .out(empty_fb_i));
  design_1_auto_cc_0_rd_status_flags_as_5 \gras.rsts 
       (.m_aclk(m_aclk),
        .out(empty_fb_i),
        .ram_empty_i_reg_0(rpntr_n_0),
        .ram_empty_i_reg_1(\gc0.count_d1_reg[3]_0 ));
  design_1_auto_cc_0_rd_bin_cntr_6 rpntr
       (.E(E),
        .Q({rd_pntr_plus1,Q}),
        .WR_PNTR_RD(WR_PNTR_RD),
        .\gc0.count_d1_reg[2]_0 (rpntr_n_0),
        .\gc0.count_d1_reg[3]_0 (\gc0.count_d1_reg[3] ),
        .\gc0.count_d1_reg[3]_1 (\gc0.count_d1_reg[3]_0 ),
        .m_aclk(m_aclk),
        .ram_empty_i_reg(ram_empty_i_reg),
        .ram_empty_i_reg_0(\gr1.gr1_int.rfwft_n_0 ));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_auto_cc_0_rd_logic_14
   (Q,
    E,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    \gc0.count_d1_reg[3] ,
    s_axi_rvalid,
    s_aclk,
    \gc0.count_d1_reg[3]_0 ,
    s_axi_rready,
    ram_empty_i_reg,
    WR_PNTR_RD);
  output [2:0]Q;
  output [0:0]E;
  output [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output [3:0]\gc0.count_d1_reg[3] ;
  output s_axi_rvalid;
  input s_aclk;
  input \gc0.count_d1_reg[3]_0 ;
  input s_axi_rready;
  input ram_empty_i_reg;
  input [3:0]WR_PNTR_RD;

  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]WR_PNTR_RD;
  wire empty_fb_i;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire \gc0.count_d1_reg[3]_0 ;
  wire \gr1.gr1_int.rfwft_n_0 ;
  wire [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire ram_empty_i_reg;
  wire [3:3]rd_pntr_plus1;
  wire rpntr_n_0;
  wire s_aclk;
  wire s_axi_rready;
  wire s_axi_rvalid;

  design_1_auto_cc_0_rd_fwft_18 \gr1.gr1_int.rfwft 
       (.E(E),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(WR_PNTR_RD[3]),
        .\gpregsm1.curr_fwft_state_reg[1]_0 (\gr1.gr1_int.rfwft_n_0 ),
        .\gpregsm1.user_valid_reg_0 (\gc0.count_d1_reg[3]_0 ),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .out(empty_fb_i),
        .s_aclk(s_aclk),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
  design_1_auto_cc_0_rd_status_flags_as_19 \gras.rsts 
       (.out(empty_fb_i),
        .ram_empty_i_reg_0(rpntr_n_0),
        .ram_empty_i_reg_1(\gc0.count_d1_reg[3]_0 ),
        .s_aclk(s_aclk));
  design_1_auto_cc_0_rd_bin_cntr_20 rpntr
       (.E(E),
        .Q({rd_pntr_plus1,Q}),
        .WR_PNTR_RD(WR_PNTR_RD),
        .\gc0.count_d1_reg[2]_0 (rpntr_n_0),
        .\gc0.count_d1_reg[3]_0 (\gc0.count_d1_reg[3] ),
        .\gc0.count_d1_reg[3]_1 (\gc0.count_d1_reg[3]_0 ),
        .ram_empty_i_reg(ram_empty_i_reg),
        .ram_empty_i_reg_0(\gr1.gr1_int.rfwft_n_0 ),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_auto_cc_0_rd_logic_21
   (Q,
    E,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    \gc0.count_d1_reg[3] ,
    m_axi_arvalid,
    m_aclk,
    \gc0.count_d1_reg[3]_0 ,
    m_axi_arready,
    ram_empty_i_reg,
    WR_PNTR_RD);
  output [2:0]Q;
  output [0:0]E;
  output [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output [3:0]\gc0.count_d1_reg[3] ;
  output m_axi_arvalid;
  input m_aclk;
  input \gc0.count_d1_reg[3]_0 ;
  input m_axi_arready;
  input ram_empty_i_reg;
  input [3:0]WR_PNTR_RD;

  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]WR_PNTR_RD;
  wire empty_fb_i;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire \gc0.count_d1_reg[3]_0 ;
  wire \gr1.gr1_int.rfwft_n_0 ;
  wire m_aclk;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire ram_empty_i_reg;
  wire [3:3]rd_pntr_plus1;
  wire rpntr_n_0;

  design_1_auto_cc_0_rd_fwft_25 \gr1.gr1_int.rfwft 
       (.E(E),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(WR_PNTR_RD[3]),
        .\gpregsm1.curr_fwft_state_reg[1]_0 (\gr1.gr1_int.rfwft_n_0 ),
        .\gpregsm1.user_valid_reg_0 (\gc0.count_d1_reg[3]_0 ),
        .m_aclk(m_aclk),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .out(empty_fb_i));
  design_1_auto_cc_0_rd_status_flags_as_26 \gras.rsts 
       (.m_aclk(m_aclk),
        .out(empty_fb_i),
        .ram_empty_i_reg_0(rpntr_n_0),
        .ram_empty_i_reg_1(\gc0.count_d1_reg[3]_0 ));
  design_1_auto_cc_0_rd_bin_cntr_27 rpntr
       (.E(E),
        .Q({rd_pntr_plus1,Q}),
        .WR_PNTR_RD(WR_PNTR_RD),
        .\gc0.count_d1_reg[2]_0 (rpntr_n_0),
        .\gc0.count_d1_reg[3]_0 (\gc0.count_d1_reg[3] ),
        .\gc0.count_d1_reg[3]_1 (\gc0.count_d1_reg[3]_0 ),
        .m_aclk(m_aclk),
        .ram_empty_i_reg(ram_empty_i_reg),
        .ram_empty_i_reg_0(\gr1.gr1_int.rfwft_n_0 ));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_auto_cc_0_rd_logic_7
   (Q,
    E,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    \gc0.count_d1_reg[3] ,
    m_axi_awvalid,
    m_aclk,
    \gc0.count_d1_reg[3]_0 ,
    m_axi_awready,
    ram_empty_i_reg,
    WR_PNTR_RD);
  output [2:0]Q;
  output [0:0]E;
  output [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output [3:0]\gc0.count_d1_reg[3] ;
  output m_axi_awvalid;
  input m_aclk;
  input \gc0.count_d1_reg[3]_0 ;
  input m_axi_awready;
  input ram_empty_i_reg;
  input [3:0]WR_PNTR_RD;

  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]WR_PNTR_RD;
  wire empty_fb_i;
  wire [3:0]\gc0.count_d1_reg[3] ;
  wire \gc0.count_d1_reg[3]_0 ;
  wire \gr1.gr1_int.rfwft_n_0 ;
  wire m_aclk;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire ram_empty_i_reg;
  wire [3:3]rd_pntr_plus1;
  wire rpntr_n_0;

  design_1_auto_cc_0_rd_fwft_11 \gr1.gr1_int.rfwft 
       (.E(E),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(WR_PNTR_RD[3]),
        .\gpregsm1.curr_fwft_state_reg[1]_0 (\gr1.gr1_int.rfwft_n_0 ),
        .\gpregsm1.user_valid_reg_0 (\gc0.count_d1_reg[3]_0 ),
        .m_aclk(m_aclk),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .out(empty_fb_i));
  design_1_auto_cc_0_rd_status_flags_as_12 \gras.rsts 
       (.m_aclk(m_aclk),
        .out(empty_fb_i),
        .ram_empty_i_reg_0(rpntr_n_0),
        .ram_empty_i_reg_1(\gc0.count_d1_reg[3]_0 ));
  design_1_auto_cc_0_rd_bin_cntr_13 rpntr
       (.E(E),
        .Q({rd_pntr_plus1,Q}),
        .WR_PNTR_RD(WR_PNTR_RD),
        .\gc0.count_d1_reg[2]_0 (rpntr_n_0),
        .\gc0.count_d1_reg[3]_0 (\gc0.count_d1_reg[3] ),
        .\gc0.count_d1_reg[3]_1 (\gc0.count_d1_reg[3]_0 ),
        .m_aclk(m_aclk),
        .ram_empty_i_reg(ram_empty_i_reg),
        .ram_empty_i_reg_0(\gr1.gr1_int.rfwft_n_0 ));
endmodule

module design_1_auto_cc_0_rd_status_flags_as
   (out,
    ram_empty_i_reg_0,
    s_aclk,
    ram_empty_i_reg_1);
  output out;
  input ram_empty_i_reg_0;
  input s_aclk;
  input ram_empty_i_reg_1;

  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;
  wire s_aclk;

  assign out = ram_empty_fb_i;
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_empty_i_reg_0),
        .PRE(ram_empty_i_reg_1),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_empty_i_reg_0),
        .PRE(ram_empty_i_reg_1),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module design_1_auto_cc_0_rd_status_flags_as_12
   (out,
    ram_empty_i_reg_0,
    m_aclk,
    ram_empty_i_reg_1);
  output out;
  input ram_empty_i_reg_0;
  input m_aclk;
  input ram_empty_i_reg_1;

  wire m_aclk;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;

  assign out = ram_empty_fb_i;
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(ram_empty_i_reg_0),
        .PRE(ram_empty_i_reg_1),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(ram_empty_i_reg_0),
        .PRE(ram_empty_i_reg_1),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module design_1_auto_cc_0_rd_status_flags_as_19
   (out,
    ram_empty_i_reg_0,
    s_aclk,
    ram_empty_i_reg_1);
  output out;
  input ram_empty_i_reg_0;
  input s_aclk;
  input ram_empty_i_reg_1;

  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;
  wire s_aclk;

  assign out = ram_empty_fb_i;
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_empty_i_reg_0),
        .PRE(ram_empty_i_reg_1),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_empty_i_reg_0),
        .PRE(ram_empty_i_reg_1),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module design_1_auto_cc_0_rd_status_flags_as_26
   (out,
    ram_empty_i_reg_0,
    m_aclk,
    ram_empty_i_reg_1);
  output out;
  input ram_empty_i_reg_0;
  input m_aclk;
  input ram_empty_i_reg_1;

  wire m_aclk;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;

  assign out = ram_empty_fb_i;
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(ram_empty_i_reg_0),
        .PRE(ram_empty_i_reg_1),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(ram_empty_i_reg_0),
        .PRE(ram_empty_i_reg_1),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module design_1_auto_cc_0_rd_status_flags_as_5
   (out,
    ram_empty_i_reg_0,
    m_aclk,
    ram_empty_i_reg_1);
  output out;
  input ram_empty_i_reg_0;
  input m_aclk;
  input ram_empty_i_reg_1;

  wire m_aclk;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;

  assign out = ram_empty_fb_i;
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(ram_empty_i_reg_0),
        .PRE(ram_empty_i_reg_1),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(ram_empty_i_reg_0),
        .PRE(ram_empty_i_reg_1),
        .Q(ram_empty_i));
endmodule

module design_1_auto_cc_0_reset_blk_ramfifo
   (src_arst,
    AR,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ,
    out,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    m_aclk,
    s_aclk,
    s_aresetn);
  output src_arst;
  output [0:0]AR;
  output \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ;
  output out;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  input m_aclk;
  input s_aclk;
  input s_aresetn;

  wire [0:0]AR;
  wire dest_out;
  wire \grstd1.grst_full.grst_f.rst_d3_i_1__3_n_0 ;
  wire m_aclk;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__3_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__3_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__3_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1] ;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
  wire [3:0]rd_rst_wr_ext;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d4;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d5;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d6;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d7;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire s_aclk;
  wire s_aresetn;
  wire sckt_rd_rst_wr;
  wire src_arst;
  wire wr_rst_busy_rdch;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;

  assign \grstd1.grst_full.grst_f.rst_d3_reg_0  = rst_d3;
  assign out = rst_d2;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(wr_rst_busy_rdch),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  LUT2 #(
    .INIT(4'hE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1__3 
       (.I0(rst_d2),
        .I1(AR),
        .O(\grstd1.grst_full.grst_f.rst_d3_i_1__3_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_i_1__3_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d4_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(rst_d3),
        .PRE(rst_wr_reg2),
        .Q(rst_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(wr_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(wr_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b1),
        .O(rst_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(wr_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b1),
        .O(rd_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b1),
        .O(rd_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b1),
        .O(rd_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(rst_wr_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(rst_rd_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b1),
        .O(rst_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b1),
        .O(rst_d6));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(sckt_rd_rst_wr),
        .Q(rd_rst_wr_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[0]),
        .Q(rd_rst_wr_ext[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[1]),
        .Q(rd_rst_wr_ext[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[2]),
        .Q(rd_rst_wr_ext[3]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_async_rst \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst 
       (.dest_arst(rst_rd_reg2),
        .dest_clk(s_aclk),
        .src_arst(src_arst));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__3 
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ),
        .I1(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1] ),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__3_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__3_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__3 
       (.I0(AR),
        .I1(rd_rst_wr_ext[0]),
        .I2(rd_rst_wr_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__3_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__3_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(AR));
  LUT5 #(
    .INIT(32'hAAAA08AA)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__3 
       (.I0(wr_rst_busy_rdch),
        .I1(rd_rst_wr_ext[1]),
        .I2(rd_rst_wr_ext[0]),
        .I3(rd_rst_wr_ext[3]),
        .I4(rd_rst_wr_ext[2]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__3_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__3_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_busy_rdch));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(dest_out),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1] ));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__parameterized1 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr 
       (.dest_clk(m_aclk),
        .dest_out(sckt_rd_rst_wr),
        .src_clk(s_aclk),
        .src_in(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__parameterized1__18 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd 
       (.dest_clk(s_aclk),
        .dest_out(dest_out),
        .src_clk(m_aclk),
        .src_in(AR));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_async_rst__13 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(m_aclk),
        .src_arst(src_arst));
  LUT1 #(
    .INIT(2'h1)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst_i_1 
       (.I0(s_aresetn),
        .O(src_arst));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_auto_cc_0_reset_blk_ramfifo__xdcDup__1
   (AR,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ,
    out,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    src_in,
    src_arst,
    s_aclk,
    m_aclk);
  output [0:0]AR;
  output \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ;
  output out;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  output src_in;
  input src_arst;
  input s_aclk;
  input m_aclk;

  wire [0:0]AR;
  wire dest_out;
  wire \grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ;
  wire m_aclk;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
  wire [3:0]rd_rst_wr_ext;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d4;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d5;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d6;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d7;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire s_aclk;
  wire sckt_rd_rst_wr;
  wire src_arst;
  wire src_in;
  wire [1:0]wr_rst_rd_ext;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;

  assign \grstd1.grst_full.grst_f.rst_d3_reg_0  = rst_d3;
  assign out = rst_d2;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(src_in),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  LUT2 #(
    .INIT(4'hE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1 
       (.I0(rst_d2),
        .I1(AR),
        .O(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d4_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d3),
        .PRE(rst_wr_reg2),
        .Q(rst_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(wr_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(wr_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b1),
        .O(rst_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(wr_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b1),
        .O(rd_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b1),
        .O(rd_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b1),
        .O(rd_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(rst_wr_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(rst_rd_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b1),
        .O(rst_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b1),
        .O(rst_d6));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(sckt_rd_rst_wr),
        .Q(rd_rst_wr_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[0]),
        .Q(rd_rst_wr_ext[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[1]),
        .Q(rd_rst_wr_ext[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[2]),
        .Q(rd_rst_wr_ext[3]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_async_rst__6 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst 
       (.dest_arst(rst_rd_reg2),
        .dest_clk(m_aclk),
        .src_arst(src_arst));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1 
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ),
        .I1(wr_rst_rd_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1 
       (.I0(AR),
        .I1(rd_rst_wr_ext[0]),
        .I2(rd_rst_wr_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(AR));
  LUT5 #(
    .INIT(32'hAAAA08AA)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1 
       (.I0(src_in),
        .I1(rd_rst_wr_ext[1]),
        .I2(rd_rst_wr_ext[0]),
        .I3(rd_rst_wr_ext[3]),
        .I4(rd_rst_wr_ext[2]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(src_in));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(dest_out),
        .Q(wr_rst_rd_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(wr_rst_rd_ext[0]),
        .Q(wr_rst_rd_ext[1]));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__parameterized1__11 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr 
       (.dest_clk(s_aclk),
        .dest_out(sckt_rd_rst_wr),
        .src_clk(m_aclk),
        .src_in(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__parameterized1__10 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd 
       (.dest_clk(m_aclk),
        .dest_out(dest_out),
        .src_clk(s_aclk),
        .src_in(AR));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_async_rst__5 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(s_aclk),
        .src_arst(src_arst));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_auto_cc_0_reset_blk_ramfifo__xdcDup__2
   (AR,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ,
    out,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    src_in,
    src_arst,
    s_aclk,
    m_aclk);
  output [0:0]AR;
  output \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ;
  output out;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  output src_in;
  input src_arst;
  input s_aclk;
  input m_aclk;

  wire [0:0]AR;
  wire dest_out;
  wire \grstd1.grst_full.grst_f.rst_d3_i_1__0_n_0 ;
  wire m_aclk;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1] ;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
  wire [3:0]rd_rst_wr_ext;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d4;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d5;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d6;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d7;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire s_aclk;
  wire sckt_rd_rst_wr;
  wire src_arst;
  wire src_in;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;

  assign \grstd1.grst_full.grst_f.rst_d3_reg_0  = rst_d3;
  assign out = rst_d2;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(src_in),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  LUT2 #(
    .INIT(4'hE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1__0 
       (.I0(rst_d2),
        .I1(AR),
        .O(\grstd1.grst_full.grst_f.rst_d3_i_1__0_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_i_1__0_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d4_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d3),
        .PRE(rst_wr_reg2),
        .Q(rst_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(wr_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(wr_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b1),
        .O(rst_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(wr_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b1),
        .O(rd_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b1),
        .O(rd_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b1),
        .O(rd_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(rst_wr_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(rst_rd_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b1),
        .O(rst_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b1),
        .O(rst_d6));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(sckt_rd_rst_wr),
        .Q(rd_rst_wr_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[0]),
        .Q(rd_rst_wr_ext[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[1]),
        .Q(rd_rst_wr_ext[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[2]),
        .Q(rd_rst_wr_ext[3]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_async_rst__8 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst 
       (.dest_arst(rst_rd_reg2),
        .dest_clk(m_aclk),
        .src_arst(src_arst));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0 
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ),
        .I1(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1] ),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0 
       (.I0(AR),
        .I1(rd_rst_wr_ext[0]),
        .I2(rd_rst_wr_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(AR));
  LUT5 #(
    .INIT(32'hAAAA08AA)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0 
       (.I0(src_in),
        .I1(rd_rst_wr_ext[1]),
        .I2(rd_rst_wr_ext[0]),
        .I3(rd_rst_wr_ext[3]),
        .I4(rd_rst_wr_ext[2]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(src_in));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(dest_out),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1] ));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__parameterized1__13 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr 
       (.dest_clk(s_aclk),
        .dest_out(sckt_rd_rst_wr),
        .src_clk(m_aclk),
        .src_in(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__parameterized1__12 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd 
       (.dest_clk(m_aclk),
        .dest_out(dest_out),
        .src_clk(s_aclk),
        .src_in(AR));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_async_rst__7 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(s_aclk),
        .src_arst(src_arst));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_auto_cc_0_reset_blk_ramfifo__xdcDup__3
   (AR,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ,
    out,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    src_arst,
    m_aclk,
    s_aclk);
  output [0:0]AR;
  output \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ;
  output out;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  input src_arst;
  input m_aclk;
  input s_aclk;

  wire [0:0]AR;
  wire dest_out;
  wire \grstd1.grst_full.grst_f.rst_d3_i_1__2_n_0 ;
  wire m_aclk;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1] ;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
  wire [3:0]rd_rst_wr_ext;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d4;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d5;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d6;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d7;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire s_aclk;
  wire sckt_rd_rst_wr;
  wire src_arst;
  wire wr_rst_busy_wrch;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;

  assign \grstd1.grst_full.grst_f.rst_d3_reg_0  = rst_d3;
  assign out = rst_d2;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(wr_rst_busy_wrch),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  LUT2 #(
    .INIT(4'hE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1__2 
       (.I0(rst_d2),
        .I1(AR),
        .O(\grstd1.grst_full.grst_f.rst_d3_i_1__2_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_i_1__2_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d4_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(rst_d3),
        .PRE(rst_wr_reg2),
        .Q(rst_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(wr_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(wr_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b1),
        .O(rst_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(wr_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b1),
        .O(rd_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b1),
        .O(rd_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b1),
        .O(rd_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(rst_wr_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(rst_rd_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b1),
        .O(rst_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b1),
        .O(rst_d6));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(sckt_rd_rst_wr),
        .Q(rd_rst_wr_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[0]),
        .Q(rd_rst_wr_ext[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[1]),
        .Q(rd_rst_wr_ext[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[2]),
        .Q(rd_rst_wr_ext[3]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_async_rst__10 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst 
       (.dest_arst(rst_rd_reg2),
        .dest_clk(s_aclk),
        .src_arst(src_arst));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__1 
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ),
        .I1(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1] ),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__1 
       (.I0(AR),
        .I1(rd_rst_wr_ext[0]),
        .I2(rd_rst_wr_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(AR));
  LUT5 #(
    .INIT(32'hAAAA08AA)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__1 
       (.I0(wr_rst_busy_wrch),
        .I1(rd_rst_wr_ext[1]),
        .I2(rd_rst_wr_ext[0]),
        .I3(rd_rst_wr_ext[3]),
        .I4(rd_rst_wr_ext[2]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_busy_wrch));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(dest_out),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1] ));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__parameterized1__15 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr 
       (.dest_clk(m_aclk),
        .dest_out(sckt_rd_rst_wr),
        .src_clk(s_aclk),
        .src_in(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__parameterized1__14 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd 
       (.dest_clk(s_aclk),
        .dest_out(dest_out),
        .src_clk(m_aclk),
        .src_in(AR));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_async_rst__9 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(m_aclk),
        .src_arst(src_arst));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_auto_cc_0_reset_blk_ramfifo__xdcDup__4
   (AR,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ,
    out,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    src_in,
    src_arst,
    s_aclk,
    m_aclk);
  output [0:0]AR;
  output \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ;
  output out;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  output src_in;
  input src_arst;
  input s_aclk;
  input m_aclk;

  wire [0:0]AR;
  wire dest_out;
  wire \grstd1.grst_full.grst_f.rst_d3_i_1__1_n_0 ;
  wire m_aclk;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__2_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__2_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__2_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1] ;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
  wire [3:0]rd_rst_wr_ext;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d4;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d5;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d6;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d7;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire s_aclk;
  wire sckt_rd_rst_wr;
  wire src_arst;
  wire src_in;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;

  assign \grstd1.grst_full.grst_f.rst_d3_reg_0  = rst_d3;
  assign out = rst_d2;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(src_in),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  LUT2 #(
    .INIT(4'hE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1__1 
       (.I0(rst_d2),
        .I1(AR),
        .O(\grstd1.grst_full.grst_f.rst_d3_i_1__1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_i_1__1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d4_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d3),
        .PRE(rst_wr_reg2),
        .Q(rst_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(wr_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(wr_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b1),
        .O(rst_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(wr_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b1),
        .O(rd_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b1),
        .O(rd_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b1),
        .O(rd_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(rst_wr_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(rst_rd_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b1),
        .O(rst_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b1),
        .O(rst_d6));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(sckt_rd_rst_wr),
        .Q(rd_rst_wr_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[0]),
        .Q(rd_rst_wr_ext[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[1]),
        .Q(rd_rst_wr_ext[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[2]),
        .Q(rd_rst_wr_ext[3]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_async_rst__12 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst 
       (.dest_arst(rst_rd_reg2),
        .dest_clk(m_aclk),
        .src_arst(src_arst));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__2 
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ),
        .I1(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1] ),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__2_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__2_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__2 
       (.I0(AR),
        .I1(rd_rst_wr_ext[0]),
        .I2(rd_rst_wr_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__2_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__2_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(AR));
  LUT5 #(
    .INIT(32'hAAAA08AA)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__2 
       (.I0(src_in),
        .I1(rd_rst_wr_ext[1]),
        .I2(rd_rst_wr_ext[0]),
        .I3(rd_rst_wr_ext[3]),
        .I4(rd_rst_wr_ext[2]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__2_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__2_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(src_in));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(dest_out),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1] ));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__parameterized1__17 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr 
       (.dest_clk(s_aclk),
        .dest_out(sckt_rd_rst_wr),
        .src_clk(m_aclk),
        .src_in(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_single__parameterized1__16 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd 
       (.dest_clk(m_aclk),
        .dest_out(dest_out),
        .src_clk(s_aclk),
        .src_in(AR));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_cc_0_xpm_cdc_async_rst__11 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(s_aclk),
        .src_arst(src_arst));
endmodule

module design_1_auto_cc_0_wr_bin_cntr
   (\dest_out_bin_ff_reg[3] ,
    Q,
    \gic0.gc0.count_d2_reg[3]_0 ,
    ram_full_i_reg,
    ram_full_i_reg_0,
    RD_PNTR_WR,
    ram_full_i_reg_1,
    E,
    m_aclk,
    AR);
  output \dest_out_bin_ff_reg[3] ;
  output [3:0]Q;
  output [3:0]\gic0.gc0.count_d2_reg[3]_0 ;
  input ram_full_i_reg;
  input ram_full_i_reg_0;
  input [3:0]RD_PNTR_WR;
  input ram_full_i_reg_1;
  input [0:0]E;
  input m_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]RD_PNTR_WR;
  wire \dest_out_bin_ff_reg[3] ;
  wire [3:0]\gic0.gc0.count_d2_reg[3]_0 ;
  wire m_aclk;
  wire [3:0]plusOp__6;
  wire ram_full_i_i_4__2_n_0;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire ram_full_i_reg_1;
  wire [3:0]wr_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1__2 
       (.I0(Q[0]),
        .O(plusOp__6[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__6[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__6[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp__6[3]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .D(Q[0]),
        .PRE(AR),
        .Q(wr_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(wr_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[2]),
        .Q(wr_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[3]),
        .Q(wr_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[0]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[1]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[2]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[3]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__6[0]),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .D(plusOp__6[1]),
        .PRE(AR),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__6[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__6[3]),
        .Q(Q[3]));
  LUT6 #(
    .INIT(64'h0000F88F00008888)) 
    ram_full_i_i_1__2
       (.I0(ram_full_i_reg),
        .I1(ram_full_i_reg_0),
        .I2(RD_PNTR_WR[3]),
        .I3(wr_pntr_plus1[3]),
        .I4(ram_full_i_reg_1),
        .I5(ram_full_i_i_4__2_n_0),
        .O(\dest_out_bin_ff_reg[3] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_4__2
       (.I0(wr_pntr_plus1[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(wr_pntr_plus1[1]),
        .I3(RD_PNTR_WR[1]),
        .I4(RD_PNTR_WR[0]),
        .I5(wr_pntr_plus1[0]),
        .O(ram_full_i_i_4__2_n_0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_auto_cc_0_wr_bin_cntr_10
   (Q,
    \dest_out_bin_ff_reg[3] ,
    \gic0.gc0.count_d2_reg[3]_0 ,
    ram_full_i_reg,
    ram_full_i_reg_0,
    RD_PNTR_WR,
    ram_full_i_reg_1,
    E,
    s_aclk,
    AR);
  output [3:0]Q;
  output \dest_out_bin_ff_reg[3] ;
  output [3:0]\gic0.gc0.count_d2_reg[3]_0 ;
  input ram_full_i_reg;
  input ram_full_i_reg_0;
  input [3:0]RD_PNTR_WR;
  input ram_full_i_reg_1;
  input [0:0]E;
  input s_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]RD_PNTR_WR;
  wire \dest_out_bin_ff_reg[3] ;
  wire [3:0]\gic0.gc0.count_d2_reg[3]_0 ;
  wire [3:0]plusOp;
  wire ram_full_i_i_4_n_0;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire ram_full_i_reg_1;
  wire s_aclk;
  wire [3:0]wr_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp[3]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[0]),
        .PRE(AR),
        .Q(wr_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(wr_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[2]),
        .Q(wr_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[3]),
        .Q(wr_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[0]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[1]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[2]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[3]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[0]),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[1]),
        .PRE(AR),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[3]),
        .Q(Q[3]));
  LUT6 #(
    .INIT(64'h0000F88F00008888)) 
    ram_full_i_i_1
       (.I0(ram_full_i_reg),
        .I1(ram_full_i_reg_0),
        .I2(RD_PNTR_WR[3]),
        .I3(wr_pntr_plus1[3]),
        .I4(ram_full_i_reg_1),
        .I5(ram_full_i_i_4_n_0),
        .O(\dest_out_bin_ff_reg[3] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_4
       (.I0(wr_pntr_plus1[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(wr_pntr_plus1[1]),
        .I3(RD_PNTR_WR[1]),
        .I4(RD_PNTR_WR[0]),
        .I5(wr_pntr_plus1[0]),
        .O(ram_full_i_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_auto_cc_0_wr_bin_cntr_17
   (\dest_out_bin_ff_reg[3] ,
    Q,
    \gic0.gc0.count_d2_reg[3]_0 ,
    ram_full_i_reg,
    ram_full_i_reg_0,
    RD_PNTR_WR,
    ram_full_i_reg_1,
    E,
    m_aclk,
    AR);
  output \dest_out_bin_ff_reg[3] ;
  output [3:0]Q;
  output [3:0]\gic0.gc0.count_d2_reg[3]_0 ;
  input ram_full_i_reg;
  input ram_full_i_reg_0;
  input [3:0]RD_PNTR_WR;
  input ram_full_i_reg_1;
  input [0:0]E;
  input m_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]RD_PNTR_WR;
  wire \dest_out_bin_ff_reg[3] ;
  wire [3:0]\gic0.gc0.count_d2_reg[3]_0 ;
  wire m_aclk;
  wire [3:0]plusOp__8;
  wire ram_full_i_i_4__3_n_0;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire ram_full_i_reg_1;
  wire [3:0]wr_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1__3 
       (.I0(Q[0]),
        .O(plusOp__8[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__8[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__8[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp__8[3]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .D(Q[0]),
        .PRE(AR),
        .Q(wr_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(wr_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[2]),
        .Q(wr_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[3]),
        .Q(wr_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[0]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[1]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[2]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[3]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__8[0]),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .D(plusOp__8[1]),
        .PRE(AR),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__8[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__8[3]),
        .Q(Q[3]));
  LUT6 #(
    .INIT(64'h0000F88F00008888)) 
    ram_full_i_i_1__3
       (.I0(ram_full_i_reg),
        .I1(ram_full_i_reg_0),
        .I2(RD_PNTR_WR[3]),
        .I3(wr_pntr_plus1[3]),
        .I4(ram_full_i_reg_1),
        .I5(ram_full_i_i_4__3_n_0),
        .O(\dest_out_bin_ff_reg[3] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_4__3
       (.I0(wr_pntr_plus1[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(wr_pntr_plus1[1]),
        .I3(RD_PNTR_WR[1]),
        .I4(RD_PNTR_WR[0]),
        .I5(wr_pntr_plus1[0]),
        .O(ram_full_i_i_4__3_n_0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_auto_cc_0_wr_bin_cntr_24
   (Q,
    \dest_out_bin_ff_reg[3] ,
    \gic0.gc0.count_d2_reg[3]_0 ,
    ram_full_i_reg,
    ram_full_i_reg_0,
    RD_PNTR_WR,
    ram_full_i_reg_1,
    E,
    s_aclk,
    AR);
  output [3:0]Q;
  output \dest_out_bin_ff_reg[3] ;
  output [3:0]\gic0.gc0.count_d2_reg[3]_0 ;
  input ram_full_i_reg;
  input ram_full_i_reg_0;
  input [3:0]RD_PNTR_WR;
  input ram_full_i_reg_1;
  input [0:0]E;
  input s_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]RD_PNTR_WR;
  wire \dest_out_bin_ff_reg[3] ;
  wire [3:0]\gic0.gc0.count_d2_reg[3]_0 ;
  wire [3:0]plusOp__2;
  wire ram_full_i_i_4__1_n_0;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire ram_full_i_reg_1;
  wire s_aclk;
  wire [3:0]wr_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1__1 
       (.I0(Q[0]),
        .O(plusOp__2[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp__2[3]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[0]),
        .PRE(AR),
        .Q(wr_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(wr_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[2]),
        .Q(wr_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[3]),
        .Q(wr_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[0]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[1]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[2]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[3]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__2[0]),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__2[1]),
        .PRE(AR),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__2[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__2[3]),
        .Q(Q[3]));
  LUT6 #(
    .INIT(64'h0000F88F00008888)) 
    ram_full_i_i_1__1
       (.I0(ram_full_i_reg),
        .I1(ram_full_i_reg_0),
        .I2(RD_PNTR_WR[3]),
        .I3(wr_pntr_plus1[3]),
        .I4(ram_full_i_reg_1),
        .I5(ram_full_i_i_4__1_n_0),
        .O(\dest_out_bin_ff_reg[3] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_4__1
       (.I0(wr_pntr_plus1[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(wr_pntr_plus1[1]),
        .I3(RD_PNTR_WR[1]),
        .I4(RD_PNTR_WR[0]),
        .I5(wr_pntr_plus1[0]),
        .O(ram_full_i_i_4__1_n_0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_auto_cc_0_wr_bin_cntr_3
   (Q,
    \dest_out_bin_ff_reg[3] ,
    \gic0.gc0.count_d2_reg[3]_0 ,
    ram_full_i_reg,
    ram_full_i_reg_0,
    RD_PNTR_WR,
    ram_full_i_reg_1,
    E,
    s_aclk,
    AR);
  output [3:0]Q;
  output \dest_out_bin_ff_reg[3] ;
  output [3:0]\gic0.gc0.count_d2_reg[3]_0 ;
  input ram_full_i_reg;
  input ram_full_i_reg_0;
  input [3:0]RD_PNTR_WR;
  input ram_full_i_reg_1;
  input [0:0]E;
  input s_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]RD_PNTR_WR;
  wire \dest_out_bin_ff_reg[3] ;
  wire [3:0]\gic0.gc0.count_d2_reg[3]_0 ;
  wire [3:0]plusOp__0;
  wire ram_full_i_i_4__0_n_0;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire ram_full_i_reg_1;
  wire s_aclk;
  wire [3:0]wr_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1__0 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp__0[3]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[0]),
        .PRE(AR),
        .Q(wr_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(wr_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[2]),
        .Q(wr_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[3]),
        .Q(wr_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[0]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[1]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[2]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[3]),
        .Q(\gic0.gc0.count_d2_reg[3]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[0]),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__0[1]),
        .PRE(AR),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[3]),
        .Q(Q[3]));
  LUT6 #(
    .INIT(64'h0000F88F00008888)) 
    ram_full_i_i_1__0
       (.I0(ram_full_i_reg),
        .I1(ram_full_i_reg_0),
        .I2(RD_PNTR_WR[3]),
        .I3(wr_pntr_plus1[3]),
        .I4(ram_full_i_reg_1),
        .I5(ram_full_i_i_4__0_n_0),
        .O(\dest_out_bin_ff_reg[3] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_4__0
       (.I0(wr_pntr_plus1[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(wr_pntr_plus1[1]),
        .I3(RD_PNTR_WR[1]),
        .I4(RD_PNTR_WR[0]),
        .I5(wr_pntr_plus1[0]),
        .O(ram_full_i_i_4__0_n_0));
endmodule

module design_1_auto_cc_0_wr_logic
   (Q,
    E,
    m_axi_bready,
    \gic0.gc0.count_d2_reg[3] ,
    m_aclk,
    out,
    ram_full_i_reg,
    RD_PNTR_WR,
    ram_full_i_reg_0,
    m_axi_bvalid,
    AR);
  output [2:0]Q;
  output [0:0]E;
  output m_axi_bready;
  output [3:0]\gic0.gc0.count_d2_reg[3] ;
  input m_aclk;
  input out;
  input ram_full_i_reg;
  input [3:0]RD_PNTR_WR;
  input ram_full_i_reg_0;
  input m_axi_bvalid;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]RD_PNTR_WR;
  wire [3:0]\gic0.gc0.count_d2_reg[3] ;
  wire \gwas.wsts_n_0 ;
  wire m_aclk;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire out;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire wpntr_n_0;
  wire [3:3]wr_pntr_plus2;

  design_1_auto_cc_0_wr_status_flags_as \gwas.wsts 
       (.E(E),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(RD_PNTR_WR[3]),
        .m_aclk(m_aclk),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .out(out),
        .ram_full_fb_i_reg_0(\gwas.wsts_n_0 ),
        .ram_full_i_reg_0(wpntr_n_0));
  design_1_auto_cc_0_wr_bin_cntr wpntr
       (.AR(AR),
        .E(E),
        .Q({wr_pntr_plus2,Q}),
        .RD_PNTR_WR(RD_PNTR_WR),
        .\dest_out_bin_ff_reg[3] (wpntr_n_0),
        .\gic0.gc0.count_d2_reg[3]_0 (\gic0.gc0.count_d2_reg[3] ),
        .m_aclk(m_aclk),
        .ram_full_i_reg(ram_full_i_reg),
        .ram_full_i_reg_0(\gwas.wsts_n_0 ),
        .ram_full_i_reg_1(ram_full_i_reg_0));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_auto_cc_0_wr_logic_1
   (Q,
    E,
    s_axi_wready,
    \gic0.gc0.count_d2_reg[3] ,
    s_aclk,
    out,
    ram_full_i_reg,
    RD_PNTR_WR,
    ram_full_i_reg_0,
    s_axi_wvalid,
    AR);
  output [2:0]Q;
  output [0:0]E;
  output s_axi_wready;
  output [3:0]\gic0.gc0.count_d2_reg[3] ;
  input s_aclk;
  input out;
  input ram_full_i_reg;
  input [3:0]RD_PNTR_WR;
  input ram_full_i_reg_0;
  input s_axi_wvalid;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]RD_PNTR_WR;
  wire [3:0]\gic0.gc0.count_d2_reg[3] ;
  wire \gwas.wsts_n_0 ;
  wire out;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire s_aclk;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire wpntr_n_4;
  wire [3:3]wr_pntr_plus2;

  design_1_auto_cc_0_wr_status_flags_as_2 \gwas.wsts 
       (.E(E),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(RD_PNTR_WR[3]),
        .out(out),
        .ram_full_fb_i_reg_0(\gwas.wsts_n_0 ),
        .ram_full_i_reg_0(wpntr_n_4),
        .s_aclk(s_aclk),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
  design_1_auto_cc_0_wr_bin_cntr_3 wpntr
       (.AR(AR),
        .E(E),
        .Q({wr_pntr_plus2,Q}),
        .RD_PNTR_WR(RD_PNTR_WR),
        .\dest_out_bin_ff_reg[3] (wpntr_n_4),
        .\gic0.gc0.count_d2_reg[3]_0 (\gic0.gc0.count_d2_reg[3] ),
        .ram_full_i_reg(ram_full_i_reg),
        .ram_full_i_reg_0(\gwas.wsts_n_0 ),
        .ram_full_i_reg_1(ram_full_i_reg_0),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_auto_cc_0_wr_logic_15
   (Q,
    E,
    m_axi_rready,
    \gic0.gc0.count_d2_reg[3] ,
    m_aclk,
    out,
    ram_full_i_reg,
    RD_PNTR_WR,
    ram_full_i_reg_0,
    m_axi_rvalid,
    AR);
  output [2:0]Q;
  output [0:0]E;
  output m_axi_rready;
  output [3:0]\gic0.gc0.count_d2_reg[3] ;
  input m_aclk;
  input out;
  input ram_full_i_reg;
  input [3:0]RD_PNTR_WR;
  input ram_full_i_reg_0;
  input m_axi_rvalid;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]RD_PNTR_WR;
  wire [3:0]\gic0.gc0.count_d2_reg[3] ;
  wire \gwas.wsts_n_0 ;
  wire m_aclk;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire out;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire wpntr_n_0;
  wire [3:3]wr_pntr_plus2;

  design_1_auto_cc_0_wr_status_flags_as_16 \gwas.wsts 
       (.E(E),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(RD_PNTR_WR[3]),
        .m_aclk(m_aclk),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .ram_full_fb_i_reg_0(\gwas.wsts_n_0 ),
        .ram_full_i_reg_0(wpntr_n_0));
  design_1_auto_cc_0_wr_bin_cntr_17 wpntr
       (.AR(AR),
        .E(E),
        .Q({wr_pntr_plus2,Q}),
        .RD_PNTR_WR(RD_PNTR_WR),
        .\dest_out_bin_ff_reg[3] (wpntr_n_0),
        .\gic0.gc0.count_d2_reg[3]_0 (\gic0.gc0.count_d2_reg[3] ),
        .m_aclk(m_aclk),
        .ram_full_i_reg(ram_full_i_reg),
        .ram_full_i_reg_0(\gwas.wsts_n_0 ),
        .ram_full_i_reg_1(ram_full_i_reg_0));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_auto_cc_0_wr_logic_22
   (Q,
    E,
    s_axi_arready,
    \gic0.gc0.count_d2_reg[3] ,
    s_aclk,
    out,
    ram_full_i_reg,
    RD_PNTR_WR,
    ram_full_i_reg_0,
    s_axi_arvalid,
    AR);
  output [2:0]Q;
  output [0:0]E;
  output s_axi_arready;
  output [3:0]\gic0.gc0.count_d2_reg[3] ;
  input s_aclk;
  input out;
  input ram_full_i_reg;
  input [3:0]RD_PNTR_WR;
  input ram_full_i_reg_0;
  input s_axi_arvalid;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]RD_PNTR_WR;
  wire [3:0]\gic0.gc0.count_d2_reg[3] ;
  wire \gwas.wsts_n_0 ;
  wire out;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire s_aclk;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire wpntr_n_4;
  wire [3:3]wr_pntr_plus2;

  design_1_auto_cc_0_wr_status_flags_as_23 \gwas.wsts 
       (.E(E),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(RD_PNTR_WR[3]),
        .out(out),
        .ram_full_fb_i_reg_0(\gwas.wsts_n_0 ),
        .ram_full_i_reg_0(wpntr_n_4),
        .s_aclk(s_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
  design_1_auto_cc_0_wr_bin_cntr_24 wpntr
       (.AR(AR),
        .E(E),
        .Q({wr_pntr_plus2,Q}),
        .RD_PNTR_WR(RD_PNTR_WR),
        .\dest_out_bin_ff_reg[3] (wpntr_n_4),
        .\gic0.gc0.count_d2_reg[3]_0 (\gic0.gc0.count_d2_reg[3] ),
        .ram_full_i_reg(ram_full_i_reg),
        .ram_full_i_reg_0(\gwas.wsts_n_0 ),
        .ram_full_i_reg_1(ram_full_i_reg_0),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_auto_cc_0_wr_logic_8
   (Q,
    E,
    s_axi_awready,
    \gic0.gc0.count_d2_reg[3] ,
    s_aclk,
    out,
    ram_full_i_reg,
    RD_PNTR_WR,
    ram_full_i_reg_0,
    s_axi_awvalid,
    AR);
  output [2:0]Q;
  output [0:0]E;
  output s_axi_awready;
  output [3:0]\gic0.gc0.count_d2_reg[3] ;
  input s_aclk;
  input out;
  input ram_full_i_reg;
  input [3:0]RD_PNTR_WR;
  input ram_full_i_reg_0;
  input s_axi_awvalid;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]RD_PNTR_WR;
  wire [3:0]\gic0.gc0.count_d2_reg[3] ;
  wire \gwas.wsts_n_0 ;
  wire out;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire wpntr_n_4;
  wire [3:3]wr_pntr_plus2;

  design_1_auto_cc_0_wr_status_flags_as_9 \gwas.wsts 
       (.E(E),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(RD_PNTR_WR[3]),
        .out(out),
        .ram_full_fb_i_reg_0(\gwas.wsts_n_0 ),
        .ram_full_i_reg_0(wpntr_n_4),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
  design_1_auto_cc_0_wr_bin_cntr_10 wpntr
       (.AR(AR),
        .E(E),
        .Q({wr_pntr_plus2,Q}),
        .RD_PNTR_WR(RD_PNTR_WR),
        .\dest_out_bin_ff_reg[3] (wpntr_n_4),
        .\gic0.gc0.count_d2_reg[3]_0 (\gic0.gc0.count_d2_reg[3] ),
        .ram_full_i_reg(ram_full_i_reg),
        .ram_full_i_reg_0(\gwas.wsts_n_0 ),
        .ram_full_i_reg_1(ram_full_i_reg_0),
        .s_aclk(s_aclk));
endmodule

module design_1_auto_cc_0_wr_status_flags_as
   (ram_full_fb_i_reg_0,
    E,
    m_axi_bready,
    ram_full_i_reg_0,
    m_aclk,
    out,
    m_axi_bvalid,
    Q,
    RD_PNTR_WR);
  output ram_full_fb_i_reg_0;
  output [0:0]E;
  output m_axi_bready;
  input ram_full_i_reg_0;
  input m_aclk;
  input out;
  input m_axi_bvalid;
  input [0:0]Q;
  input [0:0]RD_PNTR_WR;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]RD_PNTR_WR;
  wire m_aclk;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire out;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  wire ram_full_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_full_i;
  wire ram_full_i_reg_0;

  LUT2 #(
    .INIT(4'h2)) 
    \gic0.gc0.count_d1[3]_i_1__2 
       (.I0(m_axi_bvalid),
        .I1(ram_full_fb_i),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_bready_INST_0
       (.I0(ram_full_i),
        .O(m_axi_bready));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(ram_full_i_reg_0),
        .PRE(out),
        .Q(ram_full_fb_i));
  LUT4 #(
    .INIT(16'h4004)) 
    ram_full_i_i_3__2
       (.I0(ram_full_fb_i),
        .I1(m_axi_bvalid),
        .I2(Q),
        .I3(RD_PNTR_WR),
        .O(ram_full_fb_i_reg_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(ram_full_i_reg_0),
        .PRE(out),
        .Q(ram_full_i));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module design_1_auto_cc_0_wr_status_flags_as_16
   (ram_full_fb_i_reg_0,
    E,
    m_axi_rready,
    ram_full_i_reg_0,
    m_aclk,
    out,
    m_axi_rvalid,
    Q,
    RD_PNTR_WR);
  output ram_full_fb_i_reg_0;
  output [0:0]E;
  output m_axi_rready;
  input ram_full_i_reg_0;
  input m_aclk;
  input out;
  input m_axi_rvalid;
  input [0:0]Q;
  input [0:0]RD_PNTR_WR;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]RD_PNTR_WR;
  wire m_aclk;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire out;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  wire ram_full_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_full_i;
  wire ram_full_i_reg_0;

  LUT2 #(
    .INIT(4'h2)) 
    \gic0.gc0.count_d1[3]_i_1__3 
       (.I0(m_axi_rvalid),
        .I1(ram_full_fb_i),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_rready_INST_0
       (.I0(ram_full_i),
        .O(m_axi_rready));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(ram_full_i_reg_0),
        .PRE(out),
        .Q(ram_full_fb_i));
  LUT4 #(
    .INIT(16'h4004)) 
    ram_full_i_i_3__3
       (.I0(ram_full_fb_i),
        .I1(m_axi_rvalid),
        .I2(Q),
        .I3(RD_PNTR_WR),
        .O(ram_full_fb_i_reg_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(ram_full_i_reg_0),
        .PRE(out),
        .Q(ram_full_i));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module design_1_auto_cc_0_wr_status_flags_as_2
   (ram_full_fb_i_reg_0,
    E,
    s_axi_wready,
    ram_full_i_reg_0,
    s_aclk,
    out,
    s_axi_wvalid,
    Q,
    RD_PNTR_WR);
  output ram_full_fb_i_reg_0;
  output [0:0]E;
  output s_axi_wready;
  input ram_full_i_reg_0;
  input s_aclk;
  input out;
  input s_axi_wvalid;
  input [0:0]Q;
  input [0:0]RD_PNTR_WR;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]RD_PNTR_WR;
  wire out;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  wire ram_full_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_full_i;
  wire ram_full_i_reg_0;
  wire s_aclk;
  wire s_axi_wready;
  wire s_axi_wvalid;

  LUT2 #(
    .INIT(4'h2)) 
    \gic0.gc0.count_d1[3]_i_1__0 
       (.I0(s_axi_wvalid),
        .I1(ram_full_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_i_reg_0),
        .PRE(out),
        .Q(ram_full_fb_i));
  LUT4 #(
    .INIT(16'h4004)) 
    ram_full_i_i_3__0
       (.I0(ram_full_fb_i),
        .I1(s_axi_wvalid),
        .I2(Q),
        .I3(RD_PNTR_WR),
        .O(ram_full_fb_i_reg_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_i_reg_0),
        .PRE(out),
        .Q(ram_full_i));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_wready_INST_0
       (.I0(ram_full_i),
        .O(s_axi_wready));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module design_1_auto_cc_0_wr_status_flags_as_23
   (ram_full_fb_i_reg_0,
    E,
    s_axi_arready,
    ram_full_i_reg_0,
    s_aclk,
    out,
    s_axi_arvalid,
    Q,
    RD_PNTR_WR);
  output ram_full_fb_i_reg_0;
  output [0:0]E;
  output s_axi_arready;
  input ram_full_i_reg_0;
  input s_aclk;
  input out;
  input s_axi_arvalid;
  input [0:0]Q;
  input [0:0]RD_PNTR_WR;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]RD_PNTR_WR;
  wire out;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  wire ram_full_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_full_i;
  wire ram_full_i_reg_0;
  wire s_aclk;
  wire s_axi_arready;
  wire s_axi_arvalid;

  LUT2 #(
    .INIT(4'h2)) 
    \gic0.gc0.count_d1[3]_i_1__1 
       (.I0(s_axi_arvalid),
        .I1(ram_full_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_i_reg_0),
        .PRE(out),
        .Q(ram_full_fb_i));
  LUT4 #(
    .INIT(16'h4004)) 
    ram_full_i_i_3__1
       (.I0(ram_full_fb_i),
        .I1(s_axi_arvalid),
        .I2(Q),
        .I3(RD_PNTR_WR),
        .O(ram_full_fb_i_reg_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_i_reg_0),
        .PRE(out),
        .Q(ram_full_i));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_arready_INST_0
       (.I0(ram_full_i),
        .O(s_axi_arready));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module design_1_auto_cc_0_wr_status_flags_as_9
   (ram_full_fb_i_reg_0,
    E,
    s_axi_awready,
    ram_full_i_reg_0,
    s_aclk,
    out,
    s_axi_awvalid,
    Q,
    RD_PNTR_WR);
  output ram_full_fb_i_reg_0;
  output [0:0]E;
  output s_axi_awready;
  input ram_full_i_reg_0;
  input s_aclk;
  input out;
  input s_axi_awvalid;
  input [0:0]Q;
  input [0:0]RD_PNTR_WR;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]RD_PNTR_WR;
  wire out;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  wire ram_full_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_full_i;
  wire ram_full_i_reg_0;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;

  LUT2 #(
    .INIT(4'h2)) 
    \gic0.gc0.count_d1[3]_i_1 
       (.I0(s_axi_awvalid),
        .I1(ram_full_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_i_reg_0),
        .PRE(out),
        .Q(ram_full_fb_i));
  LUT4 #(
    .INIT(16'h4004)) 
    ram_full_i_i_3
       (.I0(ram_full_fb_i),
        .I1(s_axi_awvalid),
        .I2(Q),
        .I3(RD_PNTR_WR),
        .O(ram_full_fb_i_reg_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_i_reg_0),
        .PRE(out),
        .Q(ram_full_i));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_awready_INST_0
       (.I0(ram_full_i),
        .O(s_axi_awready));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
