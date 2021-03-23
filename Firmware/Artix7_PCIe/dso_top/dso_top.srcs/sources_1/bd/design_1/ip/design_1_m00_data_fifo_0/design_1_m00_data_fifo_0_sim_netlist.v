// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Mar 23 12:15:08 2021
// Host        : DESKTOP-J72MK93 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/dso_top_ddr3/dso_top_ddr3.srcs/sources_1/bd/design_1/ip/design_1_m00_data_fifo_0/design_1_m00_data_fifo_0_sim_netlist.v
// Design      : design_1_m00_data_fifo_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_m00_data_fifo_0,axi_data_fifo_v2_1_20_axi_data_fifo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_data_fifo_v2_1_20_axi_data_fifo,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_m00_data_fifo_0
   (aclk,
    aresetn,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) input [0:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [29:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [255:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [31:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [0:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [0:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [29:0]s_axi_araddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [0:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [255:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 1, ADDR_WIDTH 30, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 128, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWID" *) output [0:0]m_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [29:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREGION" *) output [3:0]m_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [255:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [31:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BID" *) input [0:0]m_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARID" *) output [0:0]m_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [29:0]m_axi_araddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RID" *) input [0:0]m_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [255:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 1, ADDR_WIDTH 30, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 128, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [29:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [0:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [29:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [0:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [0:0]m_axi_bid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [255:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [255:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [31:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [29:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [29:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [255:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "30" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "256" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_READ_FIFO_DELAY = "1" *) 
  (* C_AXI_READ_FIFO_DEPTH = "512" *) 
  (* C_AXI_READ_FIFO_TYPE = "bram" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WRITE_FIFO_DELAY = "1" *) 
  (* C_AXI_WRITE_FIFO_DEPTH = "512" *) 
  (* C_AXI_WRITE_FIFO_TYPE = "bram" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "artix7" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_PRIM_FIFO_TYPE = "512x72" *) 
  (* P_READ_FIFO_DEPTH_LOG = "9" *) 
  (* P_WIDTH_RACH = "61" *) 
  (* P_WIDTH_RDCH = "261" *) 
  (* P_WIDTH_WACH = "61" *) 
  (* P_WIDTH_WDCH = "290" *) 
  (* P_WIDTH_WRCH = "4" *) 
  (* P_WRITE_FIFO_DEPTH_LOG = "9" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_m00_data_fifo_0_axi_data_fifo_v2_1_20_axi_data_fifo inst
       (.aclk(aclk),
        .aresetn(aresetn),
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
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
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
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
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
        .s_axi_awuser(1'b0),
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
        .s_axi_wid(1'b0),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "30" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "256" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_PROTOCOL = "0" *) (* C_AXI_READ_FIFO_DELAY = "1" *) (* C_AXI_READ_FIFO_DEPTH = "512" *) 
(* C_AXI_READ_FIFO_TYPE = "bram" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_WRITE_FIFO_DELAY = "1" *) (* C_AXI_WRITE_FIFO_DEPTH = "512" *) (* C_AXI_WRITE_FIFO_TYPE = "bram" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "artix7" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* ORIG_REF_NAME = "axi_data_fifo_v2_1_20_axi_data_fifo" *) (* P_AXI3 = "1" *) (* P_AXI4 = "0" *) 
(* P_AXILITE = "2" *) (* P_PRIM_FIFO_TYPE = "512x72" *) (* P_READ_FIFO_DEPTH_LOG = "9" *) 
(* P_WIDTH_RACH = "61" *) (* P_WIDTH_RDCH = "261" *) (* P_WIDTH_WACH = "61" *) 
(* P_WIDTH_WDCH = "290" *) (* P_WIDTH_WRCH = "4" *) (* P_WRITE_FIFO_DEPTH_LOG = "9" *) 
module design_1_m00_data_fifo_0_axi_data_fifo_v2_1_20_axi_data_fifo
   (aclk,
    aresetn,
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
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [29:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [29:0]s_axi_araddr;
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
  output [0:0]s_axi_rid;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [29:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [29:0]m_axi_araddr;
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
  input [0:0]m_axi_rid;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [29:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [0:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [2:0]m_axi_arsize;
  wire [0:0]m_axi_aruser;
  wire m_axi_arvalid;
  wire [29:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [0:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire [0:0]m_axi_awuser;
  wire m_axi_awvalid;
  wire [0:0]m_axi_bid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [255:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire [255:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [31:0]m_axi_wstrb;
  wire [0:0]m_axi_wuser;
  wire m_axi_wvalid;
  wire [29:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [29:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_buser;
  wire s_axi_bvalid;
  wire [255:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_ruser;
  wire s_axi_rvalid;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire [0:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire \NLW_gen_fifo.fifo_gen_inst_almost_empty_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_almost_full_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_ar_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_ar_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_ar_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_aw_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_aw_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_aw_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_b_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_b_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_b_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_b_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_b_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_b_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_r_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_r_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_r_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_r_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_r_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_r_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_w_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_w_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_w_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_w_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_w_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axi_w_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axis_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axis_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axis_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axis_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axis_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_axis_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_empty_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_full_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_m_axis_tlast_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_m_axis_tvalid_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_rd_rst_busy_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_s_axis_tready_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_valid_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_wr_ack_UNCONNECTED ;
  wire \NLW_gen_fifo.fifo_gen_inst_wr_rst_busy_UNCONNECTED ;
  wire [5:0]\NLW_gen_fifo.fifo_gen_inst_axi_ar_data_count_UNCONNECTED ;
  wire [5:0]\NLW_gen_fifo.fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED ;
  wire [5:0]\NLW_gen_fifo.fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED ;
  wire [5:0]\NLW_gen_fifo.fifo_gen_inst_axi_aw_data_count_UNCONNECTED ;
  wire [5:0]\NLW_gen_fifo.fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED ;
  wire [5:0]\NLW_gen_fifo.fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo.fifo_gen_inst_axi_b_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo.fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo.fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo.fifo_gen_inst_axi_r_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo.fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo.fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo.fifo_gen_inst_axi_w_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo.fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo.fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo.fifo_gen_inst_axis_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo.fifo_gen_inst_axis_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo.fifo_gen_inst_axis_wr_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo.fifo_gen_inst_data_count_UNCONNECTED ;
  wire [17:0]\NLW_gen_fifo.fifo_gen_inst_dout_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.fifo_gen_inst_m_axi_wid_UNCONNECTED ;
  wire [63:0]\NLW_gen_fifo.fifo_gen_inst_m_axis_tdata_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo.fifo_gen_inst_m_axis_tdest_UNCONNECTED ;
  wire [7:0]\NLW_gen_fifo.fifo_gen_inst_m_axis_tid_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo.fifo_gen_inst_m_axis_tkeep_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo.fifo_gen_inst_m_axis_tstrb_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo.fifo_gen_inst_m_axis_tuser_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo.fifo_gen_inst_rd_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo.fifo_gen_inst_wr_data_count_UNCONNECTED ;

  assign m_axi_wid[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "1" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "1" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "30" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "256" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "18" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "61" *) 
  (* C_DIN_WIDTH_RDCH = "261" *) 
  (* C_DIN_WIDTH_WACH = "61" *) 
  (* C_DIN_WIDTH_WDCH = "290" *) 
  (* C_DIN_WIDTH_WRCH = "290" *) 
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
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
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
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "2" *) 
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
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "30" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "510" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "30" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "510" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "5" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "5" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "5" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "5" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "5" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "5" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "511" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "511" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "5" *) 
  (* C_PROG_FULL_TYPE_RACH = "5" *) 
  (* C_PROG_FULL_TYPE_RDCH = "5" *) 
  (* C_PROG_FULL_TYPE_WACH = "5" *) 
  (* C_PROG_FULL_TYPE_WDCH = "5" *) 
  (* C_PROG_FULL_TYPE_WRCH = "5" *) 
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
  (* C_SYNCHRONIZER_STAGE = "2" *) 
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
  (* C_WRCH_TYPE = "2" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "32" *) 
  (* C_WR_DEPTH_RDCH = "512" *) 
  (* C_WR_DEPTH_WACH = "32" *) 
  (* C_WR_DEPTH_WDCH = "512" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "5" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "9" *) 
  (* C_WR_PNTR_WIDTH_WACH = "5" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "9" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_m00_data_fifo_0_fifo_generator_v13_2_5 \gen_fifo.fifo_gen_inst 
       (.almost_empty(\NLW_gen_fifo.fifo_gen_inst_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_gen_fifo.fifo_gen_inst_almost_full_UNCONNECTED ),
        .axi_ar_data_count(\NLW_gen_fifo.fifo_gen_inst_axi_ar_data_count_UNCONNECTED [5:0]),
        .axi_ar_dbiterr(\NLW_gen_fifo.fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED ),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(\NLW_gen_fifo.fifo_gen_inst_axi_ar_overflow_UNCONNECTED ),
        .axi_ar_prog_empty(\NLW_gen_fifo.fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED ),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(\NLW_gen_fifo.fifo_gen_inst_axi_ar_prog_full_UNCONNECTED ),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(\NLW_gen_fifo.fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED [5:0]),
        .axi_ar_sbiterr(\NLW_gen_fifo.fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED ),
        .axi_ar_underflow(\NLW_gen_fifo.fifo_gen_inst_axi_ar_underflow_UNCONNECTED ),
        .axi_ar_wr_data_count(\NLW_gen_fifo.fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED [5:0]),
        .axi_aw_data_count(\NLW_gen_fifo.fifo_gen_inst_axi_aw_data_count_UNCONNECTED [5:0]),
        .axi_aw_dbiterr(\NLW_gen_fifo.fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED ),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(\NLW_gen_fifo.fifo_gen_inst_axi_aw_overflow_UNCONNECTED ),
        .axi_aw_prog_empty(\NLW_gen_fifo.fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED ),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(\NLW_gen_fifo.fifo_gen_inst_axi_aw_prog_full_UNCONNECTED ),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(\NLW_gen_fifo.fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED [5:0]),
        .axi_aw_sbiterr(\NLW_gen_fifo.fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED ),
        .axi_aw_underflow(\NLW_gen_fifo.fifo_gen_inst_axi_aw_underflow_UNCONNECTED ),
        .axi_aw_wr_data_count(\NLW_gen_fifo.fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED [5:0]),
        .axi_b_data_count(\NLW_gen_fifo.fifo_gen_inst_axi_b_data_count_UNCONNECTED [4:0]),
        .axi_b_dbiterr(\NLW_gen_fifo.fifo_gen_inst_axi_b_dbiterr_UNCONNECTED ),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(\NLW_gen_fifo.fifo_gen_inst_axi_b_overflow_UNCONNECTED ),
        .axi_b_prog_empty(\NLW_gen_fifo.fifo_gen_inst_axi_b_prog_empty_UNCONNECTED ),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(\NLW_gen_fifo.fifo_gen_inst_axi_b_prog_full_UNCONNECTED ),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(\NLW_gen_fifo.fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED [4:0]),
        .axi_b_sbiterr(\NLW_gen_fifo.fifo_gen_inst_axi_b_sbiterr_UNCONNECTED ),
        .axi_b_underflow(\NLW_gen_fifo.fifo_gen_inst_axi_b_underflow_UNCONNECTED ),
        .axi_b_wr_data_count(\NLW_gen_fifo.fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED [4:0]),
        .axi_r_data_count(\NLW_gen_fifo.fifo_gen_inst_axi_r_data_count_UNCONNECTED [9:0]),
        .axi_r_dbiterr(\NLW_gen_fifo.fifo_gen_inst_axi_r_dbiterr_UNCONNECTED ),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(\NLW_gen_fifo.fifo_gen_inst_axi_r_overflow_UNCONNECTED ),
        .axi_r_prog_empty(\NLW_gen_fifo.fifo_gen_inst_axi_r_prog_empty_UNCONNECTED ),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(\NLW_gen_fifo.fifo_gen_inst_axi_r_prog_full_UNCONNECTED ),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(\NLW_gen_fifo.fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED [9:0]),
        .axi_r_sbiterr(\NLW_gen_fifo.fifo_gen_inst_axi_r_sbiterr_UNCONNECTED ),
        .axi_r_underflow(\NLW_gen_fifo.fifo_gen_inst_axi_r_underflow_UNCONNECTED ),
        .axi_r_wr_data_count(\NLW_gen_fifo.fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED [9:0]),
        .axi_w_data_count(\NLW_gen_fifo.fifo_gen_inst_axi_w_data_count_UNCONNECTED [9:0]),
        .axi_w_dbiterr(\NLW_gen_fifo.fifo_gen_inst_axi_w_dbiterr_UNCONNECTED ),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(\NLW_gen_fifo.fifo_gen_inst_axi_w_overflow_UNCONNECTED ),
        .axi_w_prog_empty(\NLW_gen_fifo.fifo_gen_inst_axi_w_prog_empty_UNCONNECTED ),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(\NLW_gen_fifo.fifo_gen_inst_axi_w_prog_full_UNCONNECTED ),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(\NLW_gen_fifo.fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED [9:0]),
        .axi_w_sbiterr(\NLW_gen_fifo.fifo_gen_inst_axi_w_sbiterr_UNCONNECTED ),
        .axi_w_underflow(\NLW_gen_fifo.fifo_gen_inst_axi_w_underflow_UNCONNECTED ),
        .axi_w_wr_data_count(\NLW_gen_fifo.fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED [9:0]),
        .axis_data_count(\NLW_gen_fifo.fifo_gen_inst_axis_data_count_UNCONNECTED [10:0]),
        .axis_dbiterr(\NLW_gen_fifo.fifo_gen_inst_axis_dbiterr_UNCONNECTED ),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(\NLW_gen_fifo.fifo_gen_inst_axis_overflow_UNCONNECTED ),
        .axis_prog_empty(\NLW_gen_fifo.fifo_gen_inst_axis_prog_empty_UNCONNECTED ),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(\NLW_gen_fifo.fifo_gen_inst_axis_prog_full_UNCONNECTED ),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(\NLW_gen_fifo.fifo_gen_inst_axis_rd_data_count_UNCONNECTED [10:0]),
        .axis_sbiterr(\NLW_gen_fifo.fifo_gen_inst_axis_sbiterr_UNCONNECTED ),
        .axis_underflow(\NLW_gen_fifo.fifo_gen_inst_axis_underflow_UNCONNECTED ),
        .axis_wr_data_count(\NLW_gen_fifo.fifo_gen_inst_axis_wr_data_count_UNCONNECTED [10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(\NLW_gen_fifo.fifo_gen_inst_data_count_UNCONNECTED [9:0]),
        .dbiterr(\NLW_gen_fifo.fifo_gen_inst_dbiterr_UNCONNECTED ),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(\NLW_gen_fifo.fifo_gen_inst_dout_UNCONNECTED [17:0]),
        .empty(\NLW_gen_fifo.fifo_gen_inst_empty_UNCONNECTED ),
        .full(\NLW_gen_fifo.fifo_gen_inst_full_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
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
        .m_axi_wid(\NLW_gen_fifo.fifo_gen_inst_m_axi_wid_UNCONNECTED [0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(m_axi_wuser),
        .m_axi_wvalid(m_axi_wvalid),
        .m_axis_tdata(\NLW_gen_fifo.fifo_gen_inst_m_axis_tdata_UNCONNECTED [63:0]),
        .m_axis_tdest(\NLW_gen_fifo.fifo_gen_inst_m_axis_tdest_UNCONNECTED [3:0]),
        .m_axis_tid(\NLW_gen_fifo.fifo_gen_inst_m_axis_tid_UNCONNECTED [7:0]),
        .m_axis_tkeep(\NLW_gen_fifo.fifo_gen_inst_m_axis_tkeep_UNCONNECTED [3:0]),
        .m_axis_tlast(\NLW_gen_fifo.fifo_gen_inst_m_axis_tlast_UNCONNECTED ),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(\NLW_gen_fifo.fifo_gen_inst_m_axis_tstrb_UNCONNECTED [3:0]),
        .m_axis_tuser(\NLW_gen_fifo.fifo_gen_inst_m_axis_tuser_UNCONNECTED [3:0]),
        .m_axis_tvalid(\NLW_gen_fifo.fifo_gen_inst_m_axis_tvalid_UNCONNECTED ),
        .overflow(\NLW_gen_fifo.fifo_gen_inst_overflow_UNCONNECTED ),
        .prog_empty(\NLW_gen_fifo.fifo_gen_inst_prog_empty_UNCONNECTED ),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(\NLW_gen_fifo.fifo_gen_inst_prog_full_UNCONNECTED ),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(\NLW_gen_fifo.fifo_gen_inst_rd_data_count_UNCONNECTED [9:0]),
        .rd_en(1'b0),
        .rd_rst(1'b0),
        .rd_rst_busy(\NLW_gen_fifo.fifo_gen_inst_rd_rst_busy_UNCONNECTED ),
        .rst(1'b0),
        .s_aclk(aclk),
        .s_aclk_en(1'b1),
        .s_aresetn(aresetn),
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
        .s_axi_wid(1'b0),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(s_axi_wuser),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(\NLW_gen_fifo.fifo_gen_inst_s_axis_tready_UNCONNECTED ),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(\NLW_gen_fifo.fifo_gen_inst_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(\NLW_gen_fifo.fifo_gen_inst_underflow_UNCONNECTED ),
        .valid(\NLW_gen_fifo.fifo_gen_inst_valid_UNCONNECTED ),
        .wr_ack(\NLW_gen_fifo.fifo_gen_inst_wr_ack_UNCONNECTED ),
        .wr_clk(1'b0),
        .wr_data_count(\NLW_gen_fifo.fifo_gen_inst_wr_data_count_UNCONNECTED [9:0]),
        .wr_en(1'b0),
        .wr_rst(1'b0),
        .wr_rst_busy(\NLW_gen_fifo.fifo_gen_inst_wr_rst_busy_UNCONNECTED ));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module design_1_m00_data_fifo_0_xpm_cdc_async_rst
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
module design_1_m00_data_fifo_0_xpm_cdc_async_rst__3
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
module design_1_m00_data_fifo_0_xpm_cdc_async_rst__4
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
module design_1_m00_data_fifo_0_xpm_cdc_async_rst__5
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
module design_1_m00_data_fifo_0_xpm_cdc_async_rst__6
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

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module design_1_m00_data_fifo_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module design_1_m00_data_fifo_0_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_reg_slice" *) 
module design_1_m00_data_fifo_0_axi_reg_slice
   (\gfwd_rev_pipeline1.m_valid_i_reg_0 ,
    arready_pkt,
    rd_fifo_free_space1,
    \gfwd_rev_pipeline1.storage_data1_reg[60]_0 ,
    src_rst,
    s_aclk,
    m_axi_arready,
    s_ready_i0__0,
    CO,
    out,
    \_inferred__0/i__carry ,
    s_axi_rready,
    D);
  output \gfwd_rev_pipeline1.m_valid_i_reg_0 ;
  output arready_pkt;
  output rd_fifo_free_space1;
  output [60:0]\gfwd_rev_pipeline1.storage_data1_reg[60]_0 ;
  input src_rst;
  input s_aclk;
  input m_axi_arready;
  input s_ready_i0__0;
  input [0:0]CO;
  input out;
  input \_inferred__0/i__carry ;
  input s_axi_rready;
  input [60:0]D;

  wire [0:0]CO;
  wire [60:0]D;
  wire \_inferred__0/i__carry ;
  wire areset_d1;
  wire arready_pkt;
  wire extnd_reset;
  wire \gfwd_rev_pipeline1.m_valid_i_reg_0 ;
  wire \gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ;
  wire [60:0]\gfwd_rev_pipeline1.storage_data1_reg[60]_0 ;
  wire m_axi_arready;
  wire out;
  wire rd_fifo_free_space1;
  wire rstblk_n_1;
  wire rstblk_n_2;
  wire s_aclk;
  wire s_axi_rready;
  wire s_ready_i0__0;
  wire src_rst;

  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.areset_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(extnd_reset),
        .Q(areset_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.m_valid_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rstblk_n_2),
        .Q(\gfwd_rev_pipeline1.m_valid_i_reg_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.s_ready_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rstblk_n_1),
        .Q(arready_pkt),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gfwd_rev_pipeline1.storage_data1[60]_i_1__0 
       (.I0(\gfwd_rev_pipeline1.m_valid_i_reg_0 ),
        .O(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[0] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[10] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[10]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[11] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[11]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[12] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[12]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[13] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[13]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[14] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[14]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[15] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[15]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[16] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[16]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[17] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[17]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[18] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[18]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[19] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[19]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[1] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[20] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[20]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[21] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[21]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[22] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[22]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[23] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[23]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[24] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[24]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[25] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[25]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[26] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[26]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[27] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[27]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[28] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[28]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[29] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[29]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[2] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[30] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[30]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[31] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[31]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[32] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[32]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[33] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[33]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[34] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[34]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[35] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[35]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[36] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[36]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[37] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[37]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[38] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[38]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[39] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[39]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[3] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[40] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[40]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[41] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[41]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[42] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[42]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[43] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[43]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[44] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[44]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[45] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[45]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[46] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[46]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[47] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[47]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[48] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[48]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[49] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[49]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[4] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[50] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[50]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[51] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[51]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[52] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[52]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[53] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[53]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[54] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[54]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[55] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[55]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[56] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[56]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[57] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[57]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[58] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[58]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[59] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[59]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[5] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[60] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[60]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[6] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[7] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[8] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[9] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1__0_n_0 ),
        .D(D[9]),
        .Q(\gfwd_rev_pipeline1.storage_data1_reg[60]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08000808)) 
    i__carry_i_1
       (.I0(CO),
        .I1(arready_pkt),
        .I2(out),
        .I3(\_inferred__0/i__carry ),
        .I4(s_axi_rready),
        .O(rd_fifo_free_space1));
  design_1_m00_data_fifo_0_reset_blk_ramfifo__parameterized1 rstblk
       (.areset_d1(areset_d1),
        .arready_pkt(arready_pkt),
        .\gfwd_rev_pipeline1.s_ready_i_reg (rstblk_n_1),
        .\gfwd_rev_pipeline1.s_ready_i_reg_0 (\gfwd_rev_pipeline1.m_valid_i_reg_0 ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arready_0(rstblk_n_2),
        .out(extnd_reset),
        .s_aclk(s_aclk),
        .s_ready_i0__0(s_ready_i0__0),
        .src_rst(src_rst));
endmodule

(* ORIG_REF_NAME = "axi_reg_slice" *) 
module design_1_m00_data_fifo_0_axi_reg_slice__xdcDup__1
   (\gfwd_rev_pipeline1.m_valid_i_reg_0 ,
    awready_pkt,
    Q,
    src_rst,
    s_aclk,
    m_axi_awready,
    s_ready_i0__0,
    D);
  output \gfwd_rev_pipeline1.m_valid_i_reg_0 ;
  output awready_pkt;
  output [60:0]Q;
  input src_rst;
  input s_aclk;
  input m_axi_awready;
  input s_ready_i0__0;
  input [60:0]D;

  wire [60:0]D;
  wire [60:0]Q;
  wire areset_d1;
  wire awready_pkt;
  wire extnd_reset;
  wire \gfwd_rev_pipeline1.m_valid_i_reg_0 ;
  wire \gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ;
  wire m_axi_awready;
  wire rstblk_n_1;
  wire rstblk_n_2;
  wire s_aclk;
  wire s_ready_i0__0;
  wire src_rst;

  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.areset_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(extnd_reset),
        .Q(areset_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.m_valid_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rstblk_n_2),
        .Q(\gfwd_rev_pipeline1.m_valid_i_reg_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.s_ready_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rstblk_n_1),
        .Q(awready_pkt),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gfwd_rev_pipeline1.storage_data1[60]_i_1 
       (.I0(\gfwd_rev_pipeline1.m_valid_i_reg_0 ),
        .O(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[0] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[10] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[11] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[12] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[13] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[14] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[15] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[16] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[17] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[18] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[19] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[1] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[20] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[21] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[22] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[23] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[24] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[25] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[26] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[27] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[28] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[29] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[2] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[30] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[31] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[32] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[33] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[34] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[35] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[36] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[37] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[37]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[38] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[38]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[39] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[39]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[3] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[40] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[40]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[41] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[41]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[42] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[42]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[43] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[43]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[44] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[44]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[45] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[45]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[46] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[46]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[47] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[47]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[48] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[48]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[49] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[49]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[4] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[50] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[50]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[51] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[51]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[52] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[52]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[53] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[53]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[54] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[54]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[55] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[55]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[56] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[56]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[57] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[57]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[58] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[58]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[59] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[59]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[5] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[60] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[60]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[6] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[7] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[8] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gfwd_rev_pipeline1.storage_data1_reg[9] 
       (.C(s_aclk),
        .CE(\gfwd_rev_pipeline1.storage_data1[60]_i_1_n_0 ),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  design_1_m00_data_fifo_0_reset_blk_ramfifo__parameterized1__xdcDup__1 rstblk
       (.areset_d1(areset_d1),
        .awready_pkt(awready_pkt),
        .\gfwd_rev_pipeline1.s_ready_i_reg (rstblk_n_1),
        .\gfwd_rev_pipeline1.s_ready_i_reg_0 (\gfwd_rev_pipeline1.m_valid_i_reg_0 ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awready_0(rstblk_n_2),
        .out(extnd_reset),
        .s_aclk(s_aclk),
        .s_ready_i0__0(s_ready_i0__0),
        .src_rst(src_rst));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_generic_cstr
   (D,
    ENB_dly_D,
    ENB_dly_D_0,
    ENB_dly_D_1,
    ENB_dly_D_2,
    ENB_dly_D_3,
    s_aclk,
    ENB_I,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    DIADI,
    s_axi_wdata,
    s_axi_wstrb,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    ENB_I_4,
    ENB_I_5,
    ENB_I_6,
    ENB_I_7,
    out,
    s_axi_wvalid);
  output [289:0]D;
  output ENB_dly_D;
  output ENB_dly_D_0;
  output ENB_dly_D_1;
  output ENB_dly_D_2;
  output ENB_dly_D_3;
  input s_aclk;
  input ENB_I;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [15:0]DIADI;
  input [255:0]s_axi_wdata;
  input [17:0]s_axi_wstrb;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input ENB_I_4;
  input ENB_I_5;
  input ENB_I_6;
  input ENB_I_7;
  input out;
  input s_axi_wvalid;

  wire [289:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [15:0]DIADI;
  wire ENB_I;
  wire ENB_I_4;
  wire ENB_I_5;
  wire ENB_I_6;
  wire ENB_I_7;
  wire ENB_dly_D;
  wire ENB_dly_D_0;
  wire ENB_dly_D_1;
  wire ENB_dly_D_2;
  wire ENB_dly_D_3;
  wire [8:0]Q;
  wire out;
  wire s_aclk;
  wire [255:0]s_axi_wdata;
  wire [17:0]s_axi_wstrb;
  wire s_axi_wvalid;

  design_1_m00_data_fifo_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.D(D[35:0]),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .DIADI(DIADI),
        .DIBDI({s_axi_wdata[0],s_axi_wstrb[17:11],s_axi_wstrb[9:2]}),
        .ENB_I(ENB_I),
        .ENB_dly_D(ENB_dly_D),
        .Q(Q),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[1]),
        .s_axi_wstrb({s_axi_wstrb[10],s_axi_wstrb[1:0]}),
        .s_axi_wvalid(s_axi_wvalid));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.D(D[107:36]),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .ENB_I_4(ENB_I_4),
        .ENB_dly_D_0(ENB_dly_D_0),
        .Q(Q),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[73:2]),
        .s_axi_wvalid(s_axi_wvalid));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.D(D[179:108]),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .ENB_I_5(ENB_I_5),
        .ENB_dly_D_1(ENB_dly_D_1),
        .Q(Q),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[145:74]),
        .s_axi_wvalid(s_axi_wvalid));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.D(D[251:180]),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .ENB_I_6(ENB_I_6),
        .ENB_dly_D_2(ENB_dly_D_2),
        .Q(Q),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[217:146]),
        .s_axi_wvalid(s_axi_wvalid));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.D(D[289:252]),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .ENB_I_7(ENB_I_7),
        .ENB_dly_D_3(ENB_dly_D_3),
        .Q(Q),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[255:218]),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_generic_cstr__parameterized0
   (D,
    ENB_dly_D,
    ENB_dly_D_0,
    ENB_dly_D_1,
    ENB_dly_D_2,
    s_aclk,
    ENB_I,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    m_axi_rdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    E,
    ENB_I_3,
    ENB_I_4,
    ENB_I_5,
    m_axi_rid,
    out,
    m_axi_rvalid);
  output [260:0]D;
  output ENB_dly_D;
  output ENB_dly_D_0;
  output ENB_dly_D_1;
  output ENB_dly_D_2;
  input s_aclk;
  input ENB_I;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [255:0]m_axi_rdata;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input [0:0]E;
  input ENB_I_3;
  input ENB_I_4;
  input ENB_I_5;
  input [0:0]m_axi_rid;
  input out;
  input m_axi_rvalid;

  wire [260:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [0:0]E;
  wire ENB_I;
  wire ENB_I_3;
  wire ENB_I_4;
  wire ENB_I_5;
  wire ENB_dly_D;
  wire ENB_dly_D_0;
  wire ENB_dly_D_1;
  wire ENB_dly_D_2;
  wire [8:0]Q;
  wire [255:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rvalid;
  wire out;
  wire s_aclk;

  design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized4 \ramloop[0].ram.r 
       (.D(D[71:0]),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .E(E),
        .ENB_I(ENB_I),
        .ENB_dly_D(ENB_dly_D),
        .Q(Q),
        .m_axi_rdata(m_axi_rdata[67:0]),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .s_aclk(s_aclk));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized5 \ramloop[1].ram.r 
       (.D(D[143:72]),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .E(E),
        .ENB_I_3(ENB_I_3),
        .ENB_dly_D_0(ENB_dly_D_0),
        .Q(Q),
        .m_axi_rdata(m_axi_rdata[139:68]),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .s_aclk(s_aclk));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized6 \ramloop[2].ram.r 
       (.D(D[215:144]),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .E(E),
        .ENB_I_4(ENB_I_4),
        .ENB_dly_D_1(ENB_dly_D_1),
        .Q(Q),
        .m_axi_rdata(m_axi_rdata[211:140]),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .s_aclk(s_aclk));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized7 \ramloop[3].ram.r 
       (.D(D[260:216]),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .E(E),
        .ENB_I_5(ENB_I_5),
        .ENB_dly_D_2(ENB_dly_D_2),
        .Q(Q),
        .m_axi_rdata(m_axi_rdata[255:212]),
        .m_axi_rid(m_axi_rid),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_width
   (D,
    ENB_dly_D,
    s_aclk,
    ENB_I,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    Q,
    DIADI,
    DIBDI,
    s_axi_wstrb,
    s_axi_wdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    out,
    s_axi_wvalid);
  output [35:0]D;
  output ENB_dly_D;
  input s_aclk;
  input ENB_I;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [8:0]Q;
  input [15:0]DIADI;
  input [15:0]DIBDI;
  input [2:0]s_axi_wstrb;
  input [0:0]s_axi_wdata;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input out;
  input s_axi_wvalid;

  wire [35:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [15:0]DIADI;
  wire [15:0]DIBDI;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_dly;
  wire ENB_dly_D;
  wire POR_A0;
  wire POR_B;
  wire POR_B0;
  wire [8:0]Q;
  wire [4:0]RSTA_SHFT_REG;
  wire [4:0]RSTB_SHFT_REG;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ;
  wire out;
  wire s_aclk;
  wire [0:0]s_axi_wdata;
  wire [2:0]s_axi_wstrb;
  wire s_axi_wvalid;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ),
        .Q(ENA_dly_D),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(POR_A0),
        .Q(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1 
       (.I0(RSTA_SHFT_REG[0]),
        .I1(RSTA_SHFT_REG[4]),
        .O(POR_A0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ENB_dly),
        .Q(ENB_dly_D),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(POR_B),
        .Q(ENB_dly),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_B_i_1 
       (.I0(RSTB_SHFT_REG[0]),
        .I1(RSTB_SHFT_REG[4]),
        .O(POR_B0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_B_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(POR_B0),
        .Q(POR_B),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(RSTA_SHFT_REG[0]),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(RSTA_SHFT_REG[0]),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(RSTA_SHFT_REG[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(RSTB_SHFT_REG[0]),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(RSTB_SHFT_REG[0]),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(RSTB_SHFT_REG[4]),
        .R(1'b0));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .DIADI(DIADI),
        .DIBDI(DIBDI),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .POR_B(POR_B),
        .Q(Q),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized0
   (D,
    ENB_dly_D_0,
    s_aclk,
    ENB_I_4,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    s_axi_wdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    out,
    s_axi_wvalid);
  output [71:0]D;
  output ENB_dly_D_0;
  input s_aclk;
  input ENB_I_4;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [71:0]s_axi_wdata;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input out;
  input s_axi_wvalid;

  wire [71:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire ENA_dly_D;
  wire ENB_I_4;
  wire ENB_dly;
  wire ENB_dly_D_0;
  wire POR_B;
  wire [8:0]Q;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__0_n_0 ;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ;
  wire \SAFETY_CKT_GEN.POR_B_i_1__0_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ;
  wire out;
  wire s_aclk;
  wire [71:0]s_axi_wdata;
  wire s_axi_wvalid;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ),
        .Q(ENA_dly_D),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__0_n_0 ),
        .Q(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__0 
       (.I0(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ENB_dly),
        .Q(ENB_dly_D_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(POR_B),
        .Q(ENB_dly),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_B_i_1__0 
       (.I0(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.POR_B_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_B_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.POR_B_i_1__0_n_0 ),
        .Q(POR_B),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized0 \prim_noinit.ram 
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I_4(ENB_I_4),
        .POR_B(POR_B),
        .Q(Q),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized1
   (D,
    ENB_dly_D_1,
    s_aclk,
    ENB_I_5,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    s_axi_wdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    out,
    s_axi_wvalid);
  output [71:0]D;
  output ENB_dly_D_1;
  input s_aclk;
  input ENB_I_5;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [71:0]s_axi_wdata;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input out;
  input s_axi_wvalid;

  wire [71:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire ENA_dly_D;
  wire ENB_I_5;
  wire ENB_dly;
  wire ENB_dly_D_1;
  wire POR_B;
  wire [8:0]Q;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__1_n_0 ;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ;
  wire \SAFETY_CKT_GEN.POR_B_i_1__1_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ;
  wire out;
  wire s_aclk;
  wire [71:0]s_axi_wdata;
  wire s_axi_wvalid;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ),
        .Q(ENA_dly_D),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__1_n_0 ),
        .Q(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__1 
       (.I0(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ENB_dly),
        .Q(ENB_dly_D_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(POR_B),
        .Q(ENB_dly),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_B_i_1__1 
       (.I0(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.POR_B_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_B_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.POR_B_i_1__1_n_0 ),
        .Q(POR_B),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized1 \prim_noinit.ram 
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I_5(ENB_I_5),
        .POR_B(POR_B),
        .Q(Q),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized2
   (D,
    ENB_dly_D_2,
    s_aclk,
    ENB_I_6,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    s_axi_wdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    out,
    s_axi_wvalid);
  output [71:0]D;
  output ENB_dly_D_2;
  input s_aclk;
  input ENB_I_6;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [71:0]s_axi_wdata;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input out;
  input s_axi_wvalid;

  wire [71:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire ENA_dly_D;
  wire ENB_I_6;
  wire ENB_dly;
  wire ENB_dly_D_2;
  wire POR_B;
  wire [8:0]Q;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__2_n_0 ;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ;
  wire \SAFETY_CKT_GEN.POR_B_i_1__2_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ;
  wire out;
  wire s_aclk;
  wire [71:0]s_axi_wdata;
  wire s_axi_wvalid;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ),
        .Q(ENA_dly_D),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__2_n_0 ),
        .Q(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__2 
       (.I0(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ENB_dly),
        .Q(ENB_dly_D_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(POR_B),
        .Q(ENB_dly),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_B_i_1__2 
       (.I0(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.POR_B_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_B_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.POR_B_i_1__2_n_0 ),
        .Q(POR_B),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized2 \prim_noinit.ram 
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I_6(ENB_I_6),
        .POR_B(POR_B),
        .Q(Q),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized3
   (D,
    ENB_dly_D_3,
    s_aclk,
    ENB_I_7,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    s_axi_wdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    out,
    s_axi_wvalid);
  output [37:0]D;
  output ENB_dly_D_3;
  input s_aclk;
  input ENB_I_7;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [37:0]s_axi_wdata;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input out;
  input s_axi_wvalid;

  wire [37:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire ENA_dly_D;
  wire ENB_I_7;
  wire ENB_dly;
  wire ENB_dly_D_3;
  wire POR_B;
  wire [8:0]Q;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__3_n_0 ;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ;
  wire \SAFETY_CKT_GEN.POR_B_i_1__3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ;
  wire out;
  wire s_aclk;
  wire [37:0]s_axi_wdata;
  wire s_axi_wvalid;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ),
        .Q(ENA_dly_D),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__3_n_0 ),
        .Q(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__3 
       (.I0(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ENB_dly),
        .Q(ENB_dly_D_3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(POR_B),
        .Q(ENB_dly),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_B_i_1__3 
       (.I0(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.POR_B_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_B_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.POR_B_i_1__3_n_0 ),
        .Q(POR_B),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized3 \prim_noinit.ram 
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I_7(ENB_I_7),
        .POR_B(POR_B),
        .Q(Q),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized4
   (D,
    ENB_dly_D,
    s_aclk,
    ENB_I,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    m_axi_rdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    E,
    out,
    m_axi_rvalid);
  output [71:0]D;
  output ENB_dly_D;
  input s_aclk;
  input ENB_I;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [67:0]m_axi_rdata;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input [0:0]E;
  input out;
  input m_axi_rvalid;

  wire [71:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [0:0]E;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_dly;
  wire ENB_dly_D;
  wire POR_B;
  wire [8:0]Q;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__4_n_0 ;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ;
  wire \SAFETY_CKT_GEN.POR_B_i_1__4_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ;
  wire [67:0]m_axi_rdata;
  wire m_axi_rvalid;
  wire out;
  wire s_aclk;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ),
        .Q(ENA_dly_D),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__4_n_0 ),
        .Q(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__4 
       (.I0(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ENB_dly),
        .Q(ENB_dly_D),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(POR_B),
        .Q(ENB_dly),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_B_i_1__4 
       (.I0(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.POR_B_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_B_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.POR_B_i_1__4_n_0 ),
        .Q(POR_B),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized4 \prim_noinit.ram 
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .E(E),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .POR_B(POR_B),
        .Q(Q),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized5
   (D,
    ENB_dly_D_0,
    s_aclk,
    ENB_I_3,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    m_axi_rdata,
    E,
    out,
    m_axi_rvalid);
  output [71:0]D;
  output ENB_dly_D_0;
  input s_aclk;
  input ENB_I_3;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [71:0]m_axi_rdata;
  input [0:0]E;
  input out;
  input m_axi_rvalid;

  wire [71:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]E;
  wire ENA_dly_D;
  wire ENB_I_3;
  wire ENB_dly;
  wire ENB_dly_D_0;
  wire POR_B;
  wire [8:0]Q;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__5_n_0 ;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ;
  wire \SAFETY_CKT_GEN.POR_B_i_1__5_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ;
  wire [71:0]m_axi_rdata;
  wire m_axi_rvalid;
  wire out;
  wire s_aclk;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ),
        .Q(ENA_dly_D),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__5_n_0 ),
        .Q(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__5 
       (.I0(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ENB_dly),
        .Q(ENB_dly_D_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(POR_B),
        .Q(ENB_dly),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_B_i_1__5 
       (.I0(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.POR_B_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_B_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.POR_B_i_1__5_n_0 ),
        .Q(POR_B),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized5 \prim_noinit.ram 
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .E(E),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I_3(ENB_I_3),
        .POR_B(POR_B),
        .Q(Q),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized6
   (D,
    ENB_dly_D_1,
    s_aclk,
    ENB_I_4,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    m_axi_rdata,
    E,
    out,
    m_axi_rvalid);
  output [71:0]D;
  output ENB_dly_D_1;
  input s_aclk;
  input ENB_I_4;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [71:0]m_axi_rdata;
  input [0:0]E;
  input out;
  input m_axi_rvalid;

  wire [71:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]E;
  wire ENA_dly_D;
  wire ENB_I_4;
  wire ENB_dly;
  wire ENB_dly_D_1;
  wire POR_B;
  wire [8:0]Q;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__6_n_0 ;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ;
  wire \SAFETY_CKT_GEN.POR_B_i_1__6_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ;
  wire [71:0]m_axi_rdata;
  wire m_axi_rvalid;
  wire out;
  wire s_aclk;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ),
        .Q(ENA_dly_D),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__6_n_0 ),
        .Q(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__6 
       (.I0(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ENB_dly),
        .Q(ENB_dly_D_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(POR_B),
        .Q(ENB_dly),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_B_i_1__6 
       (.I0(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.POR_B_i_1__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_B_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.POR_B_i_1__6_n_0 ),
        .Q(POR_B),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized6 \prim_noinit.ram 
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .E(E),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I_4(ENB_I_4),
        .POR_B(POR_B),
        .Q(Q),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_width__parameterized7
   (D,
    ENB_dly_D_2,
    s_aclk,
    ENB_I_5,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    m_axi_rdata,
    m_axi_rid,
    E,
    out,
    m_axi_rvalid);
  output [44:0]D;
  output ENB_dly_D_2;
  input s_aclk;
  input ENB_I_5;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [43:0]m_axi_rdata;
  input [0:0]m_axi_rid;
  input [0:0]E;
  input out;
  input m_axi_rvalid;

  wire [44:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]E;
  wire ENA_dly_D;
  wire ENB_I_5;
  wire ENB_dly;
  wire ENB_dly_D_2;
  wire POR_B;
  wire [8:0]Q;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__7_n_0 ;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ;
  wire \SAFETY_CKT_GEN.POR_B_i_1__7_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ;
  wire [43:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rvalid;
  wire out;
  wire s_aclk;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ),
        .Q(ENA_dly_D),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__7_n_0 ),
        .Q(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__7 
       (.I0(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1__7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ENB_dly),
        .Q(ENB_dly_D_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(POR_B),
        .Q(ENB_dly),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_B_i_1__7 
       (.I0(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.POR_B_i_1__7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_B_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.POR_B_i_1__7_n_0 ),
        .Q(POR_B),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg " *) 
  (* srl_name = "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized7 \prim_noinit.ram 
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .E(E),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I_5(ENB_I_5),
        .POR_B(POR_B),
        .Q(Q),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper
   (D,
    s_aclk,
    ENB_I,
    POR_B,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    Q,
    DIADI,
    DIBDI,
    s_axi_wstrb,
    s_axi_wdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,
    ENA_dly_D,
    out,
    s_axi_wvalid);
  output [35:0]D;
  input s_aclk;
  input ENB_I;
  input POR_B;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [8:0]Q;
  input [15:0]DIADI;
  input [15:0]DIBDI;
  input [2:0]s_axi_wstrb;
  input [0:0]s_axi_wdata;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  input ENA_dly_D;
  input out;
  input s_axi_wvalid;

  wire [35:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  wire [15:0]DIADI;
  wire [15:0]DIBDI;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I;
  wire POR_B;
  wire [8:0]Q;
  wire out;
  wire s_aclk;
  wire [0:0]s_axi_wdata;
  wire [2:0]s_axi_wstrb;
  wire s_axi_wvalid;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({Q,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DIADI(DIADI),
        .DIBDI(DIBDI),
        .DIPADIP(s_axi_wstrb[1:0]),
        .DIPBDIP({s_axi_wdata,s_axi_wstrb[2]}),
        .DOADO({D[16:9],D[7:0]}),
        .DOBDO({D[34:27],D[25:18]}),
        .DOPADOP({D[17],D[8]}),
        .DOPBDOP({D[35],D[26]}),
        .ENARDEN(ENB_I),
        .ENBWREN(ENA_I),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_B),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 }));
  LUT3 #(
    .INIT(8'hBA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2 
       (.I0(ENA_dly_D),
        .I1(out),
        .I2(s_axi_wvalid),
        .O(ENA_I));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized0
   (D,
    s_aclk,
    ENB_I_4,
    POR_B,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    Q,
    s_axi_wdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,
    ENA_dly_D,
    out,
    s_axi_wvalid);
  output [71:0]D;
  input s_aclk;
  input ENB_I_4;
  input POR_B;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input [8:0]Q;
  input [71:0]s_axi_wdata;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ;
  input ENA_dly_D;
  input out;
  input s_axi_wvalid;

  wire [71:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I_4;
  wire POR_B;
  wire [8:0]Q;
  wire out;
  wire s_aclk;
  wire [71:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({s_axi_wdata[34:27],s_axi_wdata[25:18],s_axi_wdata[16:9],s_axi_wdata[7:0]}),
        .DIBDI({s_axi_wdata[70:63],s_axi_wdata[61:54],s_axi_wdata[52:45],s_axi_wdata[43:36]}),
        .DIPADIP({s_axi_wdata[35],s_axi_wdata[26],s_axi_wdata[17],s_axi_wdata[8]}),
        .DIPBDIP({s_axi_wdata[71],s_axi_wdata[62],s_axi_wdata[53],s_axi_wdata[44]}),
        .DOADO({D[34:27],D[25:18],D[16:9],D[7:0]}),
        .DOBDO({D[70:63],D[61:54],D[52:45],D[43:36]}),
        .DOPADOP({D[35],D[26],D[17],D[8]}),
        .DOPBDOP({D[71],D[62],D[53],D[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENB_I_4),
        .ENBWREN(ENA_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_B),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 }));
  LUT3 #(
    .INIT(8'hBA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_2 
       (.I0(ENA_dly_D),
        .I1(out),
        .I2(s_axi_wvalid),
        .O(ENA_I));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized1
   (D,
    s_aclk,
    ENB_I_5,
    POR_B,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    Q,
    s_axi_wdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,
    ENA_dly_D,
    out,
    s_axi_wvalid);
  output [71:0]D;
  input s_aclk;
  input ENB_I_5;
  input POR_B;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input [8:0]Q;
  input [71:0]s_axi_wdata;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ;
  input ENA_dly_D;
  input out;
  input s_axi_wvalid;

  wire [71:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I_5;
  wire POR_B;
  wire [8:0]Q;
  wire out;
  wire s_aclk;
  wire [71:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({s_axi_wdata[34:27],s_axi_wdata[25:18],s_axi_wdata[16:9],s_axi_wdata[7:0]}),
        .DIBDI({s_axi_wdata[70:63],s_axi_wdata[61:54],s_axi_wdata[52:45],s_axi_wdata[43:36]}),
        .DIPADIP({s_axi_wdata[35],s_axi_wdata[26],s_axi_wdata[17],s_axi_wdata[8]}),
        .DIPBDIP({s_axi_wdata[71],s_axi_wdata[62],s_axi_wdata[53],s_axi_wdata[44]}),
        .DOADO({D[34:27],D[25:18],D[16:9],D[7:0]}),
        .DOBDO({D[70:63],D[61:54],D[52:45],D[43:36]}),
        .DOPADOP({D[35],D[26],D[17],D[8]}),
        .DOPBDOP({D[71],D[62],D[53],D[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENB_I_5),
        .ENBWREN(ENA_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_B),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 }));
  LUT3 #(
    .INIT(8'hBA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_2__0 
       (.I0(ENA_dly_D),
        .I1(out),
        .I2(s_axi_wvalid),
        .O(ENA_I));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized2
   (D,
    s_aclk,
    ENB_I_6,
    POR_B,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    Q,
    s_axi_wdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,
    ENA_dly_D,
    out,
    s_axi_wvalid);
  output [71:0]D;
  input s_aclk;
  input ENB_I_6;
  input POR_B;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input [8:0]Q;
  input [71:0]s_axi_wdata;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ;
  input ENA_dly_D;
  input out;
  input s_axi_wvalid;

  wire [71:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I_6;
  wire POR_B;
  wire [8:0]Q;
  wire out;
  wire s_aclk;
  wire [71:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({s_axi_wdata[34:27],s_axi_wdata[25:18],s_axi_wdata[16:9],s_axi_wdata[7:0]}),
        .DIBDI({s_axi_wdata[70:63],s_axi_wdata[61:54],s_axi_wdata[52:45],s_axi_wdata[43:36]}),
        .DIPADIP({s_axi_wdata[35],s_axi_wdata[26],s_axi_wdata[17],s_axi_wdata[8]}),
        .DIPBDIP({s_axi_wdata[71],s_axi_wdata[62],s_axi_wdata[53],s_axi_wdata[44]}),
        .DOADO({D[34:27],D[25:18],D[16:9],D[7:0]}),
        .DOBDO({D[70:63],D[61:54],D[52:45],D[43:36]}),
        .DOPADOP({D[35],D[26],D[17],D[8]}),
        .DOPBDOP({D[71],D[62],D[53],D[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENB_I_6),
        .ENBWREN(ENA_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_B),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 }));
  LUT3 #(
    .INIT(8'hBA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_2__1 
       (.I0(ENA_dly_D),
        .I1(out),
        .I2(s_axi_wvalid),
        .O(ENA_I));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized3
   (D,
    s_aclk,
    ENB_I_7,
    POR_B,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    Q,
    s_axi_wdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,
    ENA_dly_D,
    out,
    s_axi_wvalid);
  output [37:0]D;
  input s_aclk;
  input ENB_I_7;
  input POR_B;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input [8:0]Q;
  input [37:0]s_axi_wdata;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ;
  input ENA_dly_D;
  input out;
  input s_axi_wvalid;

  wire [37:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_12 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_13 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_14 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_20 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_21 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_22 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_29 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_30 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_36 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_37 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_38 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_39 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_4 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_44 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_45 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_46 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_5 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_52 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_53 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_54 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_6 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_60 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_61 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_62 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_68 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_7 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_71 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_73 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_74 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_75 ;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I_7;
  wire POR_B;
  wire [8:0]Q;
  wire out;
  wire s_aclk;
  wire [37:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,s_axi_wdata[18:15],1'b0,1'b0,1'b0,s_axi_wdata[14:10],1'b0,1'b0,1'b0,s_axi_wdata[9:5],1'b0,1'b0,1'b0,s_axi_wdata[4:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,s_axi_wdata[37:34],1'b0,1'b0,1'b0,s_axi_wdata[33:29],1'b0,1'b0,1'b0,s_axi_wdata[28:24],1'b0,1'b0,1'b0,s_axi_wdata[23:19]}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_4 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_5 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_6 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_7 ,D[18:15],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_12 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_13 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_14 ,D[14:10],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_20 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_21 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_22 ,D[9:5],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_29 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_30 ,D[4:0]}),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_36 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_37 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_38 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_39 ,D[37:34],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_44 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_45 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_46 ,D[33:29],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_52 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_53 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_54 ,D[28:24],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_60 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_61 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_62 ,D[23:19]}),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_68 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_71 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_73 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_74 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENB_I_7),
        .ENBWREN(ENA_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_B),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 }));
  LUT3 #(
    .INIT(8'hBA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_2__2 
       (.I0(ENA_dly_D),
        .I1(out),
        .I2(s_axi_wvalid),
        .O(ENA_I));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized4
   (D,
    s_aclk,
    ENB_I,
    POR_B,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    Q,
    m_axi_rdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ,
    E,
    ENA_dly_D,
    out,
    m_axi_rvalid);
  output [71:0]D;
  input s_aclk;
  input ENB_I;
  input POR_B;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input [8:0]Q;
  input [67:0]m_axi_rdata;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ;
  input [0:0]E;
  input ENA_dly_D;
  input out;
  input m_axi_rvalid;

  wire [71:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 ;
  wire [0:0]E;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I;
  wire POR_B;
  wire [8:0]Q;
  wire [67:0]m_axi_rdata;
  wire m_axi_rvalid;
  wire out;
  wire s_aclk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({m_axi_rdata[30:23],m_axi_rdata[21:14],m_axi_rdata[12:5],m_axi_rdata[3:0],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1 }),
        .DIBDI({m_axi_rdata[66:59],m_axi_rdata[57:50],m_axi_rdata[48:41],m_axi_rdata[39:32]}),
        .DIPADIP({m_axi_rdata[31],m_axi_rdata[22],m_axi_rdata[13],m_axi_rdata[4]}),
        .DIPBDIP({m_axi_rdata[67],m_axi_rdata[58],m_axi_rdata[49],m_axi_rdata[40]}),
        .DOADO({D[34:27],D[25:18],D[16:9],D[7:0]}),
        .DOBDO({D[70:63],D[61:54],D[52:45],D[43:36]}),
        .DOPADOP({D[35],D[26],D[17],D[8]}),
        .DOPBDOP({D[71],D[62],D[53],D[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENB_I),
        .ENBWREN(ENA_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_B),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({E,E,E,E,E,E,E,E}));
  LUT3 #(
    .INIT(8'hBA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_2__3 
       (.I0(ENA_dly_D),
        .I1(out),
        .I2(m_axi_rvalid),
        .O(ENA_I));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized5
   (D,
    s_aclk,
    ENB_I_3,
    POR_B,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    Q,
    m_axi_rdata,
    E,
    ENA_dly_D,
    out,
    m_axi_rvalid);
  output [71:0]D;
  input s_aclk;
  input ENB_I_3;
  input POR_B;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input [8:0]Q;
  input [71:0]m_axi_rdata;
  input [0:0]E;
  input ENA_dly_D;
  input out;
  input m_axi_rvalid;

  wire [71:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [0:0]E;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I_3;
  wire POR_B;
  wire [8:0]Q;
  wire [71:0]m_axi_rdata;
  wire m_axi_rvalid;
  wire out;
  wire s_aclk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({m_axi_rdata[34:27],m_axi_rdata[25:18],m_axi_rdata[16:9],m_axi_rdata[7:0]}),
        .DIBDI({m_axi_rdata[70:63],m_axi_rdata[61:54],m_axi_rdata[52:45],m_axi_rdata[43:36]}),
        .DIPADIP({m_axi_rdata[35],m_axi_rdata[26],m_axi_rdata[17],m_axi_rdata[8]}),
        .DIPBDIP({m_axi_rdata[71],m_axi_rdata[62],m_axi_rdata[53],m_axi_rdata[44]}),
        .DOADO({D[34:27],D[25:18],D[16:9],D[7:0]}),
        .DOBDO({D[70:63],D[61:54],D[52:45],D[43:36]}),
        .DOPADOP({D[35],D[26],D[17],D[8]}),
        .DOPBDOP({D[71],D[62],D[53],D[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENB_I_3),
        .ENBWREN(ENA_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_B),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({E,E,E,E,E,E,E,E}));
  LUT3 #(
    .INIT(8'hBA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_2__4 
       (.I0(ENA_dly_D),
        .I1(out),
        .I2(m_axi_rvalid),
        .O(ENA_I));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized6
   (D,
    s_aclk,
    ENB_I_4,
    POR_B,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    Q,
    m_axi_rdata,
    E,
    ENA_dly_D,
    out,
    m_axi_rvalid);
  output [71:0]D;
  input s_aclk;
  input ENB_I_4;
  input POR_B;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input [8:0]Q;
  input [71:0]m_axi_rdata;
  input [0:0]E;
  input ENA_dly_D;
  input out;
  input m_axi_rvalid;

  wire [71:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [0:0]E;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I_4;
  wire POR_B;
  wire [8:0]Q;
  wire [71:0]m_axi_rdata;
  wire m_axi_rvalid;
  wire out;
  wire s_aclk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({m_axi_rdata[34:27],m_axi_rdata[25:18],m_axi_rdata[16:9],m_axi_rdata[7:0]}),
        .DIBDI({m_axi_rdata[70:63],m_axi_rdata[61:54],m_axi_rdata[52:45],m_axi_rdata[43:36]}),
        .DIPADIP({m_axi_rdata[35],m_axi_rdata[26],m_axi_rdata[17],m_axi_rdata[8]}),
        .DIPBDIP({m_axi_rdata[71],m_axi_rdata[62],m_axi_rdata[53],m_axi_rdata[44]}),
        .DOADO({D[34:27],D[25:18],D[16:9],D[7:0]}),
        .DOBDO({D[70:63],D[61:54],D[52:45],D[43:36]}),
        .DOPADOP({D[35],D[26],D[17],D[8]}),
        .DOPBDOP({D[71],D[62],D[53],D[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENB_I_4),
        .ENBWREN(ENA_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_B),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({E,E,E,E,E,E,E,E}));
  LUT3 #(
    .INIT(8'hBA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_2__5 
       (.I0(ENA_dly_D),
        .I1(out),
        .I2(m_axi_rvalid),
        .O(ENA_I));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_prim_wrapper__parameterized7
   (D,
    s_aclk,
    ENB_I_5,
    POR_B,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    Q,
    m_axi_rdata,
    m_axi_rid,
    E,
    ENA_dly_D,
    out,
    m_axi_rvalid);
  output [44:0]D;
  input s_aclk;
  input ENB_I_5;
  input POR_B;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input [8:0]Q;
  input [43:0]m_axi_rdata;
  input [0:0]m_axi_rid;
  input [0:0]E;
  input ENA_dly_D;
  input out;
  input m_axi_rvalid;

  wire [44:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_12 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_13 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_20 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_21 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_29 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_36 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_37 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_38 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_4 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_44 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_45 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_5 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_52 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_53 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_54 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_6 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_60 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_61 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_68 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_71 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_73 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_74 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_75 ;
  wire [0:0]E;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I_5;
  wire POR_B;
  wire [8:0]Q;
  wire [43:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rvalid;
  wire out;
  wire s_aclk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,m_axi_rdata[22:18],1'b0,1'b0,m_axi_rdata[17:12],1'b0,1'b0,m_axi_rdata[11:6],1'b0,1'b0,m_axi_rdata[5:0]}),
        .DIBDI({1'b0,1'b0,1'b0,m_axi_rid,m_axi_rdata[43:40],1'b0,1'b0,m_axi_rdata[39:34],1'b0,1'b0,1'b0,m_axi_rdata[33:29],1'b0,1'b0,m_axi_rdata[28:23]}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_4 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_5 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_6 ,D[22:18],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_12 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_13 ,D[17:12],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_20 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_21 ,D[11:6],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_29 ,D[5:0]}),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_36 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_37 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_38 ,D[44:40],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_44 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_45 ,D[39:34],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_52 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_53 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_54 ,D[33:29],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_60 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_61 ,D[28:23]}),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_68 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_71 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_73 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_74 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENB_I_5),
        .ENBWREN(ENA_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_B),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({E,E,E,E,E,E,E,E}));
  LUT3 #(
    .INIT(8'hBA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_2__6 
       (.I0(ENA_dly_D),
        .I1(out),
        .I2(m_axi_rvalid),
        .O(ENA_I));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_top
   (D,
    ENB_dly_D,
    ENB_dly_D_0,
    ENB_dly_D_1,
    ENB_dly_D_2,
    ENB_dly_D_3,
    s_aclk,
    ENB_I,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    DIADI,
    s_axi_wdata,
    s_axi_wstrb,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    ENB_I_4,
    ENB_I_5,
    ENB_I_6,
    ENB_I_7,
    out,
    s_axi_wvalid);
  output [289:0]D;
  output ENB_dly_D;
  output ENB_dly_D_0;
  output ENB_dly_D_1;
  output ENB_dly_D_2;
  output ENB_dly_D_3;
  input s_aclk;
  input ENB_I;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [15:0]DIADI;
  input [255:0]s_axi_wdata;
  input [17:0]s_axi_wstrb;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input ENB_I_4;
  input ENB_I_5;
  input ENB_I_6;
  input ENB_I_7;
  input out;
  input s_axi_wvalid;

  wire [289:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [15:0]DIADI;
  wire ENB_I;
  wire ENB_I_4;
  wire ENB_I_5;
  wire ENB_I_6;
  wire ENB_I_7;
  wire ENB_dly_D;
  wire ENB_dly_D_0;
  wire ENB_dly_D_1;
  wire ENB_dly_D_2;
  wire ENB_dly_D_3;
  wire [8:0]Q;
  wire out;
  wire s_aclk;
  wire [255:0]s_axi_wdata;
  wire [17:0]s_axi_wstrb;
  wire s_axi_wvalid;

  design_1_m00_data_fifo_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .DIADI(DIADI),
        .ENB_I(ENB_I),
        .ENB_I_4(ENB_I_4),
        .ENB_I_5(ENB_I_5),
        .ENB_I_6(ENB_I_6),
        .ENB_I_7(ENB_I_7),
        .ENB_dly_D(ENB_dly_D),
        .ENB_dly_D_0(ENB_dly_D_0),
        .ENB_dly_D_1(ENB_dly_D_1),
        .ENB_dly_D_2(ENB_dly_D_2),
        .ENB_dly_D_3(ENB_dly_D_3),
        .Q(Q),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_top__parameterized0
   (D,
    ENB_dly_D,
    ENB_dly_D_0,
    ENB_dly_D_1,
    ENB_dly_D_2,
    s_aclk,
    ENB_I,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    m_axi_rdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    E,
    ENB_I_3,
    ENB_I_4,
    ENB_I_5,
    m_axi_rid,
    out,
    m_axi_rvalid);
  output [260:0]D;
  output ENB_dly_D;
  output ENB_dly_D_0;
  output ENB_dly_D_1;
  output ENB_dly_D_2;
  input s_aclk;
  input ENB_I;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [255:0]m_axi_rdata;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input [0:0]E;
  input ENB_I_3;
  input ENB_I_4;
  input ENB_I_5;
  input [0:0]m_axi_rid;
  input out;
  input m_axi_rvalid;

  wire [260:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [0:0]E;
  wire ENB_I;
  wire ENB_I_3;
  wire ENB_I_4;
  wire ENB_I_5;
  wire ENB_dly_D;
  wire ENB_dly_D_0;
  wire ENB_dly_D_1;
  wire ENB_dly_D_2;
  wire [8:0]Q;
  wire [255:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rvalid;
  wire out;
  wire s_aclk;

  design_1_m00_data_fifo_0_blk_mem_gen_generic_cstr__parameterized0 \valid.cstr 
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .E(E),
        .ENB_I(ENB_I),
        .ENB_I_3(ENB_I_3),
        .ENB_I_4(ENB_I_4),
        .ENB_I_5(ENB_I_5),
        .ENB_dly_D(ENB_dly_D),
        .ENB_dly_D_0(ENB_dly_D_0),
        .ENB_dly_D_1(ENB_dly_D_1),
        .ENB_dly_D_2(ENB_dly_D_2),
        .Q(Q),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_v8_4_4
   (D,
    ENB_dly_D,
    ENB_dly_D_0,
    ENB_dly_D_1,
    ENB_dly_D_2,
    ENB_dly_D_3,
    s_aclk,
    ENB_I,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    DIADI,
    s_axi_wdata,
    s_axi_wstrb,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    ENB_I_4,
    ENB_I_5,
    ENB_I_6,
    ENB_I_7,
    out,
    s_axi_wvalid);
  output [289:0]D;
  output ENB_dly_D;
  output ENB_dly_D_0;
  output ENB_dly_D_1;
  output ENB_dly_D_2;
  output ENB_dly_D_3;
  input s_aclk;
  input ENB_I;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [15:0]DIADI;
  input [255:0]s_axi_wdata;
  input [17:0]s_axi_wstrb;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input ENB_I_4;
  input ENB_I_5;
  input ENB_I_6;
  input ENB_I_7;
  input out;
  input s_axi_wvalid;

  wire [289:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [15:0]DIADI;
  wire ENB_I;
  wire ENB_I_4;
  wire ENB_I_5;
  wire ENB_I_6;
  wire ENB_I_7;
  wire ENB_dly_D;
  wire ENB_dly_D_0;
  wire ENB_dly_D_1;
  wire ENB_dly_D_2;
  wire ENB_dly_D_3;
  wire [8:0]Q;
  wire out;
  wire s_aclk;
  wire [255:0]s_axi_wdata;
  wire [17:0]s_axi_wstrb;
  wire s_axi_wvalid;

  design_1_m00_data_fifo_0_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .DIADI(DIADI),
        .ENB_I(ENB_I),
        .ENB_I_4(ENB_I_4),
        .ENB_I_5(ENB_I_5),
        .ENB_I_6(ENB_I_6),
        .ENB_I_7(ENB_I_7),
        .ENB_dly_D(ENB_dly_D),
        .ENB_dly_D_0(ENB_dly_D_0),
        .ENB_dly_D_1(ENB_dly_D_1),
        .ENB_dly_D_2(ENB_dly_D_2),
        .ENB_dly_D_3(ENB_dly_D_3),
        .Q(Q),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_v8_4_4__parameterized1
   (D,
    ENB_dly_D,
    ENB_dly_D_0,
    ENB_dly_D_1,
    ENB_dly_D_2,
    s_aclk,
    ENB_I,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    m_axi_rdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    E,
    ENB_I_3,
    ENB_I_4,
    ENB_I_5,
    m_axi_rid,
    out,
    m_axi_rvalid);
  output [260:0]D;
  output ENB_dly_D;
  output ENB_dly_D_0;
  output ENB_dly_D_1;
  output ENB_dly_D_2;
  input s_aclk;
  input ENB_I;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [255:0]m_axi_rdata;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input [0:0]E;
  input ENB_I_3;
  input ENB_I_4;
  input ENB_I_5;
  input [0:0]m_axi_rid;
  input out;
  input m_axi_rvalid;

  wire [260:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [0:0]E;
  wire ENB_I;
  wire ENB_I_3;
  wire ENB_I_4;
  wire ENB_I_5;
  wire ENB_dly_D;
  wire ENB_dly_D_0;
  wire ENB_dly_D_1;
  wire ENB_dly_D_2;
  wire [8:0]Q;
  wire [255:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rvalid;
  wire out;
  wire s_aclk;

  design_1_m00_data_fifo_0_blk_mem_gen_v8_4_4_synth__parameterized0 inst_blk_mem_gen
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .E(E),
        .ENB_I(ENB_I),
        .ENB_I_3(ENB_I_3),
        .ENB_I_4(ENB_I_4),
        .ENB_I_5(ENB_I_5),
        .ENB_dly_D(ENB_dly_D),
        .ENB_dly_D_0(ENB_dly_D_0),
        .ENB_dly_D_1(ENB_dly_D_1),
        .ENB_dly_D_2(ENB_dly_D_2),
        .Q(Q),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4_synth" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_v8_4_4_synth
   (D,
    ENB_dly_D,
    ENB_dly_D_0,
    ENB_dly_D_1,
    ENB_dly_D_2,
    ENB_dly_D_3,
    s_aclk,
    ENB_I,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    DIADI,
    s_axi_wdata,
    s_axi_wstrb,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    ENB_I_4,
    ENB_I_5,
    ENB_I_6,
    ENB_I_7,
    out,
    s_axi_wvalid);
  output [289:0]D;
  output ENB_dly_D;
  output ENB_dly_D_0;
  output ENB_dly_D_1;
  output ENB_dly_D_2;
  output ENB_dly_D_3;
  input s_aclk;
  input ENB_I;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [15:0]DIADI;
  input [255:0]s_axi_wdata;
  input [17:0]s_axi_wstrb;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input ENB_I_4;
  input ENB_I_5;
  input ENB_I_6;
  input ENB_I_7;
  input out;
  input s_axi_wvalid;

  wire [289:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [15:0]DIADI;
  wire ENB_I;
  wire ENB_I_4;
  wire ENB_I_5;
  wire ENB_I_6;
  wire ENB_I_7;
  wire ENB_dly_D;
  wire ENB_dly_D_0;
  wire ENB_dly_D_1;
  wire ENB_dly_D_2;
  wire ENB_dly_D_3;
  wire [8:0]Q;
  wire out;
  wire s_aclk;
  wire [255:0]s_axi_wdata;
  wire [17:0]s_axi_wstrb;
  wire s_axi_wvalid;

  design_1_m00_data_fifo_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .DIADI(DIADI),
        .ENB_I(ENB_I),
        .ENB_I_4(ENB_I_4),
        .ENB_I_5(ENB_I_5),
        .ENB_I_6(ENB_I_6),
        .ENB_I_7(ENB_I_7),
        .ENB_dly_D(ENB_dly_D),
        .ENB_dly_D_0(ENB_dly_D_0),
        .ENB_dly_D_1(ENB_dly_D_1),
        .ENB_dly_D_2(ENB_dly_D_2),
        .ENB_dly_D_3(ENB_dly_D_3),
        .Q(Q),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4_synth" *) 
module design_1_m00_data_fifo_0_blk_mem_gen_v8_4_4_synth__parameterized0
   (D,
    ENB_dly_D,
    ENB_dly_D_0,
    ENB_dly_D_1,
    ENB_dly_D_2,
    s_aclk,
    ENB_I,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    m_axi_rdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    E,
    ENB_I_3,
    ENB_I_4,
    ENB_I_5,
    m_axi_rid,
    out,
    m_axi_rvalid);
  output [260:0]D;
  output ENB_dly_D;
  output ENB_dly_D_0;
  output ENB_dly_D_1;
  output ENB_dly_D_2;
  input s_aclk;
  input ENB_I;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [255:0]m_axi_rdata;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input [0:0]E;
  input ENB_I_3;
  input ENB_I_4;
  input ENB_I_5;
  input [0:0]m_axi_rid;
  input out;
  input m_axi_rvalid;

  wire [260:0]D;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [0:0]E;
  wire ENB_I;
  wire ENB_I_3;
  wire ENB_I_4;
  wire ENB_I_5;
  wire ENB_dly_D;
  wire ENB_dly_D_0;
  wire ENB_dly_D_1;
  wire ENB_dly_D_2;
  wire [8:0]Q;
  wire [255:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rvalid;
  wire out;
  wire s_aclk;

  design_1_m00_data_fifo_0_blk_mem_gen_top__parameterized0 \gnbram.gnativebmg.native_blk_mem_gen 
       (.D(D),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .E(E),
        .ENB_I(ENB_I),
        .ENB_I_3(ENB_I_3),
        .ENB_I_4(ENB_I_4),
        .ENB_I_5(ENB_I_5),
        .ENB_dly_D(ENB_dly_D),
        .ENB_dly_D_0(ENB_dly_D_0),
        .ENB_dly_D_1(ENB_dly_D_1),
        .ENB_dly_D_2(ENB_dly_D_2),
        .Q(Q),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module design_1_m00_data_fifo_0_compare__parameterized0
   (comp0,
    v1_reg);
  output comp0;
  input [4:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire [4:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module design_1_m00_data_fifo_0_compare__parameterized0_0
   (\grstd1.grst_full.grst_f.rst_d3_reg ,
    v1_reg_0,
    SR,
    ram_rd_en,
    comp0,
    ram_full_i_reg,
    out,
    s_axi_wvalid);
  output \grstd1.grst_full.grst_f.rst_d3_reg ;
  input [4:0]v1_reg_0;
  input [0:0]SR;
  input ram_rd_en;
  input comp0;
  input ram_full_i_reg;
  input out;
  input s_axi_wvalid;

  wire [0:0]SR;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire out;
  wire ram_full_fb_i_i_2_n_0;
  wire ram_full_i_reg;
  wire ram_rd_en;
  wire s_axi_wvalid;
  wire [4:0]v1_reg_0;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0[4]}));
  LUT6 #(
    .INIT(64'hAEAEAFFFAEAEAEAE)) 
    ram_full_fb_i_i_1__0
       (.I0(SR),
        .I1(ram_full_fb_i_i_2_n_0),
        .I2(ram_rd_en),
        .I3(comp0),
        .I4(ram_full_i_reg),
        .I5(out),
        .O(\grstd1.grst_full.grst_f.rst_d3_reg ));
  LUT3 #(
    .INIT(8'h40)) 
    ram_full_fb_i_i_2
       (.I0(out),
        .I1(s_axi_wvalid),
        .I2(comp1),
        .O(ram_full_fb_i_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module design_1_m00_data_fifo_0_compare__parameterized0_1
   (ram_empty_fb_i_reg,
    \gmux.gm[1].gms.ms_0 ,
    \gmux.gm[2].gms.ms_0 ,
    \gmux.gm[3].gms.ms_0 ,
    \gmux.gm[4].gms.ms_0 ,
    ram_empty_i_reg,
    out,
    ram_empty_i_reg_0,
    E,
    comp1,
    ram_empty_i_reg_1);
  output ram_empty_fb_i_reg;
  input \gmux.gm[1].gms.ms_0 ;
  input \gmux.gm[2].gms.ms_0 ;
  input \gmux.gm[3].gms.ms_0 ;
  input \gmux.gm[4].gms.ms_0 ;
  input ram_empty_i_reg;
  input out;
  input ram_empty_i_reg_0;
  input [0:0]E;
  input comp1;
  input [0:0]ram_empty_i_reg_1;

  wire [0:0]E;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire \gmux.gm[1].gms.ms_0 ;
  wire \gmux.gm[2].gms.ms_0 ;
  wire \gmux.gm[3].gms.ms_0 ;
  wire \gmux.gm[4].gms.ms_0 ;
  wire out;
  wire ram_empty_fb_i_reg;
  wire ram_empty_i_reg;
  wire ram_empty_i_reg_0;
  wire [0:0]ram_empty_i_reg_1;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S({\gmux.gm[4].gms.ms_0 ,\gmux.gm[3].gms.ms_0 ,\gmux.gm[2].gms.ms_0 ,\gmux.gm[1].gms.ms_0 }));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],ram_empty_i_reg}));
  LUT6 #(
    .INIT(64'hF2F2F2F2FFFAFAFA)) 
    ram_empty_fb_i_i_1__0
       (.I0(out),
        .I1(comp0),
        .I2(ram_empty_i_reg_0),
        .I3(E),
        .I4(comp1),
        .I5(ram_empty_i_reg_1),
        .O(ram_empty_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module design_1_m00_data_fifo_0_compare__parameterized0_12
   (ram_empty_fb_i_reg,
    \gmux.gm[1].gms.ms_0 ,
    \gmux.gm[2].gms.ms_0 ,
    \gmux.gm[3].gms.ms_0 ,
    \gmux.gm[4].gms.ms_0 ,
    ram_empty_i_reg,
    out,
    ram_empty_i_reg_0,
    E,
    comp1,
    ram_empty_i_reg_1);
  output ram_empty_fb_i_reg;
  input \gmux.gm[1].gms.ms_0 ;
  input \gmux.gm[2].gms.ms_0 ;
  input \gmux.gm[3].gms.ms_0 ;
  input \gmux.gm[4].gms.ms_0 ;
  input ram_empty_i_reg;
  input out;
  input ram_empty_i_reg_0;
  input [0:0]E;
  input comp1;
  input [0:0]ram_empty_i_reg_1;

  wire [0:0]E;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire \gmux.gm[1].gms.ms_0 ;
  wire \gmux.gm[2].gms.ms_0 ;
  wire \gmux.gm[3].gms.ms_0 ;
  wire \gmux.gm[4].gms.ms_0 ;
  wire out;
  wire ram_empty_fb_i_reg;
  wire ram_empty_i_reg;
  wire ram_empty_i_reg_0;
  wire [0:0]ram_empty_i_reg_1;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S({\gmux.gm[4].gms.ms_0 ,\gmux.gm[3].gms.ms_0 ,\gmux.gm[2].gms.ms_0 ,\gmux.gm[1].gms.ms_0 }));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],ram_empty_i_reg}));
  LUT6 #(
    .INIT(64'hF2F2F2F2FFFAFAFA)) 
    ram_empty_fb_i_i_1__2
       (.I0(out),
        .I1(comp0),
        .I2(ram_empty_i_reg_0),
        .I3(E),
        .I4(comp1),
        .I5(ram_empty_i_reg_1),
        .O(ram_empty_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module design_1_m00_data_fifo_0_compare__parameterized0_13
   (comp1,
    v1_reg);
  output comp1;
  input [4:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp1;
  wire [4:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module design_1_m00_data_fifo_0_compare__parameterized0_2
   (comp1,
    v1_reg);
  output comp1;
  input [4:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp1;
  wire [4:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module design_1_m00_data_fifo_0_compare__parameterized0_7
   (comp0,
    v1_reg);
  output comp0;
  input [4:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire [4:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module design_1_m00_data_fifo_0_compare__parameterized0_8
   (\grstd1.grst_full.grst_f.rst_d3_reg ,
    v1_reg_0,
    SR,
    ram_rd_en,
    comp0,
    ram_full_i_reg,
    out,
    m_axi_rvalid);
  output \grstd1.grst_full.grst_f.rst_d3_reg ;
  input [4:0]v1_reg_0;
  input [0:0]SR;
  input ram_rd_en;
  input comp0;
  input ram_full_i_reg;
  input out;
  input m_axi_rvalid;

  wire [0:0]SR;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire m_axi_rvalid;
  wire out;
  wire ram_full_fb_i_i_2__0_n_0;
  wire ram_full_i_reg;
  wire ram_rd_en;
  wire [4:0]v1_reg_0;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0[4]}));
  LUT6 #(
    .INIT(64'hAEAEAFFFAEAEAEAE)) 
    ram_full_fb_i_i_1__2
       (.I0(SR),
        .I1(ram_full_fb_i_i_2__0_n_0),
        .I2(ram_rd_en),
        .I3(comp0),
        .I4(ram_full_i_reg),
        .I5(out),
        .O(\grstd1.grst_full.grst_f.rst_d3_reg ));
  LUT3 #(
    .INIT(8'h40)) 
    ram_full_fb_i_i_2__0
       (.I0(out),
        .I1(m_axi_rvalid),
        .I2(comp1),
        .O(ram_full_fb_i_i_2__0_n_0));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module design_1_m00_data_fifo_0_dmem
   (dout_i,
    s_aclk,
    EN,
    \gpr1.dout_i_reg[60]_0 ,
    count_d1,
    count_d10_in,
    \gpr1.dout_i_reg[0]_0 );
  output [60:0]dout_i;
  input s_aclk;
  input EN;
  input [60:0]\gpr1.dout_i_reg[60]_0 ;
  input [4:0]count_d1;
  input [4:0]count_d10_in;
  input [0:0]\gpr1.dout_i_reg[0]_0 ;

  wire EN;
  wire [4:0]count_d1;
  wire [4:0]count_d10_in;
  wire [60:0]dout_i;
  wire [60:0]dout_i0;
  wire [0:0]\gpr1.dout_i_reg[0]_0 ;
  wire [60:0]\gpr1.dout_i_reg[60]_0 ;
  wire s_aclk;
  wire [1:0]NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_48_53_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_54_59_DOD_UNCONNECTED;
  wire [1:1]NLW_RAM_reg_0_31_60_60_DOA_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_60_60_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_60_60_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_60_60_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M RAM_reg_0_31_0_5
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(\gpr1.dout_i_reg[60]_0 [1:0]),
        .DIB(\gpr1.dout_i_reg[60]_0 [3:2]),
        .DIC(\gpr1.dout_i_reg[60]_0 [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[1:0]),
        .DOB(dout_i0[3:2]),
        .DOC(dout_i0[5:4]),
        .DOD(NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M RAM_reg_0_31_12_17
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(\gpr1.dout_i_reg[60]_0 [13:12]),
        .DIB(\gpr1.dout_i_reg[60]_0 [15:14]),
        .DIC(\gpr1.dout_i_reg[60]_0 [17:16]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[13:12]),
        .DOB(dout_i0[15:14]),
        .DOC(dout_i0[17:16]),
        .DOD(NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M RAM_reg_0_31_18_23
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(\gpr1.dout_i_reg[60]_0 [19:18]),
        .DIB(\gpr1.dout_i_reg[60]_0 [21:20]),
        .DIC(\gpr1.dout_i_reg[60]_0 [23:22]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[19:18]),
        .DOB(dout_i0[21:20]),
        .DOC(dout_i0[23:22]),
        .DOD(NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M RAM_reg_0_31_24_29
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(\gpr1.dout_i_reg[60]_0 [25:24]),
        .DIB(\gpr1.dout_i_reg[60]_0 [27:26]),
        .DIC(\gpr1.dout_i_reg[60]_0 [29:28]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[25:24]),
        .DOB(dout_i0[27:26]),
        .DOC(dout_i0[29:28]),
        .DOD(NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "35" *) 
  RAM32M RAM_reg_0_31_30_35
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(\gpr1.dout_i_reg[60]_0 [31:30]),
        .DIB(\gpr1.dout_i_reg[60]_0 [33:32]),
        .DIC(\gpr1.dout_i_reg[60]_0 [35:34]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[31:30]),
        .DOB(dout_i0[33:32]),
        .DOC(dout_i0[35:34]),
        .DOD(NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "41" *) 
  RAM32M RAM_reg_0_31_36_41
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(\gpr1.dout_i_reg[60]_0 [37:36]),
        .DIB(\gpr1.dout_i_reg[60]_0 [39:38]),
        .DIC(\gpr1.dout_i_reg[60]_0 [41:40]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[37:36]),
        .DOB(dout_i0[39:38]),
        .DOC(dout_i0[41:40]),
        .DOD(NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "47" *) 
  RAM32M RAM_reg_0_31_42_47
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(\gpr1.dout_i_reg[60]_0 [43:42]),
        .DIB(\gpr1.dout_i_reg[60]_0 [45:44]),
        .DIC(\gpr1.dout_i_reg[60]_0 [47:46]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[43:42]),
        .DOB(dout_i0[45:44]),
        .DOC(dout_i0[47:46]),
        .DOD(NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "53" *) 
  RAM32M RAM_reg_0_31_48_53
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(\gpr1.dout_i_reg[60]_0 [49:48]),
        .DIB(\gpr1.dout_i_reg[60]_0 [51:50]),
        .DIC(\gpr1.dout_i_reg[60]_0 [53:52]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[49:48]),
        .DOB(dout_i0[51:50]),
        .DOC(dout_i0[53:52]),
        .DOD(NLW_RAM_reg_0_31_48_53_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "59" *) 
  RAM32M RAM_reg_0_31_54_59
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(\gpr1.dout_i_reg[60]_0 [55:54]),
        .DIB(\gpr1.dout_i_reg[60]_0 [57:56]),
        .DIC(\gpr1.dout_i_reg[60]_0 [59:58]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[55:54]),
        .DOB(dout_i0[57:56]),
        .DOC(dout_i0[59:58]),
        .DOD(NLW_RAM_reg_0_31_54_59_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "60" *) 
  RAM32M RAM_reg_0_31_60_60
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA({1'b0,\gpr1.dout_i_reg[60]_0 [60]}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({NLW_RAM_reg_0_31_60_60_DOA_UNCONNECTED[1],dout_i0[60]}),
        .DOB(NLW_RAM_reg_0_31_60_60_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_RAM_reg_0_31_60_60_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_31_60_60_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M RAM_reg_0_31_6_11
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(\gpr1.dout_i_reg[60]_0 [7:6]),
        .DIB(\gpr1.dout_i_reg[60]_0 [9:8]),
        .DIC(\gpr1.dout_i_reg[60]_0 [11:10]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i0[7:6]),
        .DOB(dout_i0[9:8]),
        .DOC(dout_i0[11:10]),
        .DOD(NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(EN));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[0]),
        .Q(dout_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[10]),
        .Q(dout_i[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[11]),
        .Q(dout_i[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[12]),
        .Q(dout_i[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[13]),
        .Q(dout_i[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[14]),
        .Q(dout_i[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[15]),
        .Q(dout_i[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[16]),
        .Q(dout_i[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[17]),
        .Q(dout_i[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[18]),
        .Q(dout_i[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[19]),
        .Q(dout_i[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[1]),
        .Q(dout_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[20]),
        .Q(dout_i[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[21]),
        .Q(dout_i[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[22]),
        .Q(dout_i[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[23]),
        .Q(dout_i[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[24]),
        .Q(dout_i[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[25]),
        .Q(dout_i[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[26]),
        .Q(dout_i[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[27]),
        .Q(dout_i[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[28]),
        .Q(dout_i[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[29]),
        .Q(dout_i[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[2]),
        .Q(dout_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[30]),
        .Q(dout_i[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[31]),
        .Q(dout_i[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[32]),
        .Q(dout_i[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[33]),
        .Q(dout_i[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[34]),
        .Q(dout_i[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[35]),
        .Q(dout_i[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[36]),
        .Q(dout_i[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[37]),
        .Q(dout_i[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[38]),
        .Q(dout_i[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[39]),
        .Q(dout_i[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[3]),
        .Q(dout_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[40]),
        .Q(dout_i[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[41] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[41]),
        .Q(dout_i[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[42] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[42]),
        .Q(dout_i[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[43] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[43]),
        .Q(dout_i[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[44] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[44]),
        .Q(dout_i[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[45] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[45]),
        .Q(dout_i[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[46] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[46]),
        .Q(dout_i[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[47] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[47]),
        .Q(dout_i[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[48] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[48]),
        .Q(dout_i[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[49] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[49]),
        .Q(dout_i[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[4]),
        .Q(dout_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[50] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[50]),
        .Q(dout_i[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[51] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[51]),
        .Q(dout_i[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[52] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[52]),
        .Q(dout_i[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[53] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[53]),
        .Q(dout_i[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[54] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[54]),
        .Q(dout_i[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[55] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[55]),
        .Q(dout_i[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[56] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[56]),
        .Q(dout_i[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[57] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[57]),
        .Q(dout_i[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[58] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[58]),
        .Q(dout_i[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[59] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[59]),
        .Q(dout_i[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[5]),
        .Q(dout_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[60] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[60]),
        .Q(dout_i[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[6]),
        .Q(dout_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[7]),
        .Q(dout_i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[8]),
        .Q(dout_i[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(dout_i0[9]),
        .Q(dout_i[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module design_1_m00_data_fifo_0_dmem_17
   (dout_i,
    s_aclk,
    I45,
    I541,
    count_d1,
    count_d10_in,
    \gpr1.dout_i_reg[0]_0 );
  output [60:0]dout_i;
  input s_aclk;
  input I45;
  input [60:0]I541;
  input [4:0]count_d1;
  input [4:0]count_d10_in;
  input [0:0]\gpr1.dout_i_reg[0]_0 ;

  wire I45;
  wire [60:0]I541;
  wire RAM_reg_0_31_0_5_n_0;
  wire RAM_reg_0_31_0_5_n_1;
  wire RAM_reg_0_31_0_5_n_2;
  wire RAM_reg_0_31_0_5_n_3;
  wire RAM_reg_0_31_0_5_n_4;
  wire RAM_reg_0_31_0_5_n_5;
  wire RAM_reg_0_31_12_17_n_0;
  wire RAM_reg_0_31_12_17_n_1;
  wire RAM_reg_0_31_12_17_n_2;
  wire RAM_reg_0_31_12_17_n_3;
  wire RAM_reg_0_31_12_17_n_4;
  wire RAM_reg_0_31_12_17_n_5;
  wire RAM_reg_0_31_18_23_n_0;
  wire RAM_reg_0_31_18_23_n_1;
  wire RAM_reg_0_31_18_23_n_2;
  wire RAM_reg_0_31_18_23_n_3;
  wire RAM_reg_0_31_18_23_n_4;
  wire RAM_reg_0_31_18_23_n_5;
  wire RAM_reg_0_31_24_29_n_0;
  wire RAM_reg_0_31_24_29_n_1;
  wire RAM_reg_0_31_24_29_n_2;
  wire RAM_reg_0_31_24_29_n_3;
  wire RAM_reg_0_31_24_29_n_4;
  wire RAM_reg_0_31_24_29_n_5;
  wire RAM_reg_0_31_30_35_n_0;
  wire RAM_reg_0_31_30_35_n_1;
  wire RAM_reg_0_31_30_35_n_2;
  wire RAM_reg_0_31_30_35_n_3;
  wire RAM_reg_0_31_30_35_n_4;
  wire RAM_reg_0_31_30_35_n_5;
  wire RAM_reg_0_31_36_41_n_0;
  wire RAM_reg_0_31_36_41_n_1;
  wire RAM_reg_0_31_36_41_n_2;
  wire RAM_reg_0_31_36_41_n_3;
  wire RAM_reg_0_31_36_41_n_4;
  wire RAM_reg_0_31_36_41_n_5;
  wire RAM_reg_0_31_42_47_n_0;
  wire RAM_reg_0_31_42_47_n_1;
  wire RAM_reg_0_31_42_47_n_2;
  wire RAM_reg_0_31_42_47_n_3;
  wire RAM_reg_0_31_42_47_n_4;
  wire RAM_reg_0_31_42_47_n_5;
  wire RAM_reg_0_31_48_53_n_0;
  wire RAM_reg_0_31_48_53_n_1;
  wire RAM_reg_0_31_48_53_n_2;
  wire RAM_reg_0_31_48_53_n_3;
  wire RAM_reg_0_31_48_53_n_4;
  wire RAM_reg_0_31_48_53_n_5;
  wire RAM_reg_0_31_54_59_n_0;
  wire RAM_reg_0_31_54_59_n_1;
  wire RAM_reg_0_31_54_59_n_2;
  wire RAM_reg_0_31_54_59_n_3;
  wire RAM_reg_0_31_54_59_n_4;
  wire RAM_reg_0_31_54_59_n_5;
  wire RAM_reg_0_31_60_60_n_1;
  wire RAM_reg_0_31_6_11_n_0;
  wire RAM_reg_0_31_6_11_n_1;
  wire RAM_reg_0_31_6_11_n_2;
  wire RAM_reg_0_31_6_11_n_3;
  wire RAM_reg_0_31_6_11_n_4;
  wire RAM_reg_0_31_6_11_n_5;
  wire [4:0]count_d1;
  wire [4:0]count_d10_in;
  wire [60:0]dout_i;
  wire [0:0]\gpr1.dout_i_reg[0]_0 ;
  wire s_aclk;
  wire [1:0]NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_48_53_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_54_59_DOD_UNCONNECTED;
  wire [1:1]NLW_RAM_reg_0_31_60_60_DOA_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_60_60_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_60_60_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_60_60_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M RAM_reg_0_31_0_5
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(I541[1:0]),
        .DIB(I541[3:2]),
        .DIC(I541[5:4]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_31_0_5_n_0,RAM_reg_0_31_0_5_n_1}),
        .DOB({RAM_reg_0_31_0_5_n_2,RAM_reg_0_31_0_5_n_3}),
        .DOC({RAM_reg_0_31_0_5_n_4,RAM_reg_0_31_0_5_n_5}),
        .DOD(NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(I45));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M RAM_reg_0_31_12_17
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(I541[13:12]),
        .DIB(I541[15:14]),
        .DIC(I541[17:16]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_31_12_17_n_0,RAM_reg_0_31_12_17_n_1}),
        .DOB({RAM_reg_0_31_12_17_n_2,RAM_reg_0_31_12_17_n_3}),
        .DOC({RAM_reg_0_31_12_17_n_4,RAM_reg_0_31_12_17_n_5}),
        .DOD(NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(I45));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M RAM_reg_0_31_18_23
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(I541[19:18]),
        .DIB(I541[21:20]),
        .DIC(I541[23:22]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_31_18_23_n_0,RAM_reg_0_31_18_23_n_1}),
        .DOB({RAM_reg_0_31_18_23_n_2,RAM_reg_0_31_18_23_n_3}),
        .DOC({RAM_reg_0_31_18_23_n_4,RAM_reg_0_31_18_23_n_5}),
        .DOD(NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(I45));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M RAM_reg_0_31_24_29
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(I541[25:24]),
        .DIB(I541[27:26]),
        .DIC(I541[29:28]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_31_24_29_n_0,RAM_reg_0_31_24_29_n_1}),
        .DOB({RAM_reg_0_31_24_29_n_2,RAM_reg_0_31_24_29_n_3}),
        .DOC({RAM_reg_0_31_24_29_n_4,RAM_reg_0_31_24_29_n_5}),
        .DOD(NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(I45));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "35" *) 
  RAM32M RAM_reg_0_31_30_35
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(I541[31:30]),
        .DIB(I541[33:32]),
        .DIC(I541[35:34]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_31_30_35_n_0,RAM_reg_0_31_30_35_n_1}),
        .DOB({RAM_reg_0_31_30_35_n_2,RAM_reg_0_31_30_35_n_3}),
        .DOC({RAM_reg_0_31_30_35_n_4,RAM_reg_0_31_30_35_n_5}),
        .DOD(NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(I45));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "41" *) 
  RAM32M RAM_reg_0_31_36_41
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(I541[37:36]),
        .DIB(I541[39:38]),
        .DIC(I541[41:40]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_31_36_41_n_0,RAM_reg_0_31_36_41_n_1}),
        .DOB({RAM_reg_0_31_36_41_n_2,RAM_reg_0_31_36_41_n_3}),
        .DOC({RAM_reg_0_31_36_41_n_4,RAM_reg_0_31_36_41_n_5}),
        .DOD(NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(I45));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "47" *) 
  RAM32M RAM_reg_0_31_42_47
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(I541[43:42]),
        .DIB(I541[45:44]),
        .DIC(I541[47:46]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_31_42_47_n_0,RAM_reg_0_31_42_47_n_1}),
        .DOB({RAM_reg_0_31_42_47_n_2,RAM_reg_0_31_42_47_n_3}),
        .DOC({RAM_reg_0_31_42_47_n_4,RAM_reg_0_31_42_47_n_5}),
        .DOD(NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(I45));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "53" *) 
  RAM32M RAM_reg_0_31_48_53
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(I541[49:48]),
        .DIB(I541[51:50]),
        .DIC(I541[53:52]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_31_48_53_n_0,RAM_reg_0_31_48_53_n_1}),
        .DOB({RAM_reg_0_31_48_53_n_2,RAM_reg_0_31_48_53_n_3}),
        .DOC({RAM_reg_0_31_48_53_n_4,RAM_reg_0_31_48_53_n_5}),
        .DOD(NLW_RAM_reg_0_31_48_53_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(I45));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "59" *) 
  RAM32M RAM_reg_0_31_54_59
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(I541[55:54]),
        .DIB(I541[57:56]),
        .DIC(I541[59:58]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_31_54_59_n_0,RAM_reg_0_31_54_59_n_1}),
        .DOB({RAM_reg_0_31_54_59_n_2,RAM_reg_0_31_54_59_n_3}),
        .DOC({RAM_reg_0_31_54_59_n_4,RAM_reg_0_31_54_59_n_5}),
        .DOD(NLW_RAM_reg_0_31_54_59_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(I45));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "60" *) 
  RAM32M RAM_reg_0_31_60_60
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA({1'b0,I541[60]}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({NLW_RAM_reg_0_31_60_60_DOA_UNCONNECTED[1],RAM_reg_0_31_60_60_n_1}),
        .DOB(NLW_RAM_reg_0_31_60_60_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_RAM_reg_0_31_60_60_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_31_60_60_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(I45));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1952" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M RAM_reg_0_31_6_11
       (.ADDRA(count_d1),
        .ADDRB(count_d1),
        .ADDRC(count_d1),
        .ADDRD(count_d10_in),
        .DIA(I541[7:6]),
        .DIB(I541[9:8]),
        .DIC(I541[11:10]),
        .DID({1'b0,1'b0}),
        .DOA({RAM_reg_0_31_6_11_n_0,RAM_reg_0_31_6_11_n_1}),
        .DOB({RAM_reg_0_31_6_11_n_2,RAM_reg_0_31_6_11_n_3}),
        .DOC({RAM_reg_0_31_6_11_n_4,RAM_reg_0_31_6_11_n_5}),
        .DOD(NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(I45));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_0_5_n_1),
        .Q(dout_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_6_11_n_5),
        .Q(dout_i[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_6_11_n_4),
        .Q(dout_i[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_12_17_n_1),
        .Q(dout_i[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_12_17_n_0),
        .Q(dout_i[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_12_17_n_3),
        .Q(dout_i[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_12_17_n_2),
        .Q(dout_i[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_12_17_n_5),
        .Q(dout_i[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_12_17_n_4),
        .Q(dout_i[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_18_23_n_1),
        .Q(dout_i[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_18_23_n_0),
        .Q(dout_i[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_0_5_n_0),
        .Q(dout_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_18_23_n_3),
        .Q(dout_i[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_18_23_n_2),
        .Q(dout_i[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_18_23_n_5),
        .Q(dout_i[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_18_23_n_4),
        .Q(dout_i[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_24_29_n_1),
        .Q(dout_i[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_24_29_n_0),
        .Q(dout_i[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_24_29_n_3),
        .Q(dout_i[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_24_29_n_2),
        .Q(dout_i[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_24_29_n_5),
        .Q(dout_i[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_24_29_n_4),
        .Q(dout_i[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_0_5_n_3),
        .Q(dout_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_30_35_n_1),
        .Q(dout_i[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_30_35_n_0),
        .Q(dout_i[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_30_35_n_3),
        .Q(dout_i[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_30_35_n_2),
        .Q(dout_i[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_30_35_n_5),
        .Q(dout_i[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_30_35_n_4),
        .Q(dout_i[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_36_41_n_1),
        .Q(dout_i[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_36_41_n_0),
        .Q(dout_i[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_36_41_n_3),
        .Q(dout_i[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_36_41_n_2),
        .Q(dout_i[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_0_5_n_2),
        .Q(dout_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_36_41_n_5),
        .Q(dout_i[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[41] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_36_41_n_4),
        .Q(dout_i[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[42] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_42_47_n_1),
        .Q(dout_i[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[43] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_42_47_n_0),
        .Q(dout_i[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[44] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_42_47_n_3),
        .Q(dout_i[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[45] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_42_47_n_2),
        .Q(dout_i[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[46] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_42_47_n_5),
        .Q(dout_i[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[47] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_42_47_n_4),
        .Q(dout_i[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[48] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_48_53_n_1),
        .Q(dout_i[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[49] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_48_53_n_0),
        .Q(dout_i[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_0_5_n_5),
        .Q(dout_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[50] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_48_53_n_3),
        .Q(dout_i[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[51] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_48_53_n_2),
        .Q(dout_i[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[52] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_48_53_n_5),
        .Q(dout_i[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[53] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_48_53_n_4),
        .Q(dout_i[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[54] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_54_59_n_1),
        .Q(dout_i[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[55] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_54_59_n_0),
        .Q(dout_i[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[56] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_54_59_n_3),
        .Q(dout_i[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[57] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_54_59_n_2),
        .Q(dout_i[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[58] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_54_59_n_5),
        .Q(dout_i[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[59] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_54_59_n_4),
        .Q(dout_i[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_0_5_n_4),
        .Q(dout_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[60] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_60_60_n_1),
        .Q(dout_i[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_6_11_n_1),
        .Q(dout_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_6_11_n_0),
        .Q(dout_i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_6_11_n_3),
        .Q(dout_i[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(\gpr1.dout_i_reg[0]_0 ),
        .D(RAM_reg_0_31_6_11_n_2),
        .Q(dout_i[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_m00_data_fifo_0_fifo_generator_ramfifo
   (out,
    \goreg_dm.dout_i_reg[60] ,
    D,
    E,
    s_ready_i0__0,
    s_axi_arready,
    DI,
    S,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ,
    \goreg_dm.dout_i_reg[25] ,
    \goreg_dm.dout_i_reg[29] ,
    \goreg_dm.dout_i_reg[28] ,
    src_rst,
    s_aclk,
    Q,
    arready_pkt,
    CO,
    rd_fifo_free_space11_out__0,
    rd_fifo_free_space,
    s_axi_rready,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ,
    s_axi_arvalid,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0 ,
    rd_fifo_free_space1,
    I541);
  output out;
  output [60:0]\goreg_dm.dout_i_reg[60] ;
  output [9:0]D;
  output [0:0]E;
  output s_ready_i0__0;
  output s_axi_arready;
  output [3:0]DI;
  output [3:0]S;
  output [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ;
  output [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ;
  output [3:0]\goreg_dm.dout_i_reg[25] ;
  output [3:0]\goreg_dm.dout_i_reg[29] ;
  output [0:0]\goreg_dm.dout_i_reg[28] ;
  input src_rst;
  input s_aclk;
  input [9:0]Q;
  input arready_pkt;
  input [0:0]CO;
  input rd_fifo_free_space11_out__0;
  input [9:0]rd_fifo_free_space;
  input s_axi_rready;
  input \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  input s_axi_arvalid;
  input [1:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0 ;
  input rd_fifo_free_space1;
  input [60:0]I541;

  wire [0:0]CO;
  wire [9:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [60:0]I541;
  wire [9:0]Q;
  wire [3:0]S;
  wire arready_pkt;
  wire dout_i0;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  wire [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ;
  wire [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ;
  wire [1:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0 ;
  wire [3:0]\goreg_dm.dout_i_reg[25] ;
  wire [0:0]\goreg_dm.dout_i_reg[28] ;
  wire [3:0]\goreg_dm.dout_i_reg[29] ;
  wire [60:0]\goreg_dm.dout_i_reg[60] ;
  wire \gwss.wsts/comp0 ;
  wire out;
  wire ram_rd_en;
  wire ram_rd_en_i;
  wire ram_wr_en;
  wire [9:0]rd_fifo_free_space;
  wire rd_fifo_free_space1;
  wire rd_fifo_free_space11_out__0;
  wire [4:0]rd_pntr;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_2;
  wire s_aclk;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_rready;
  wire s_ready_i0__0;
  wire src_rst;
  wire [4:0]wr_pntr;

  design_1_m00_data_fifo_0_rd_logic_14 \gntv_or_sync_fifo.gl0.rd 
       (.AR(rstblk_n_2),
        .CO(CO),
        .E(dout_i0),
        .Q(Q[9:8]),
        .\_inferred__0/i__carry (\goreg_dm.dout_i_reg[60] [22]),
        .arready_pkt(arready_pkt),
        .comp0(\gwss.wsts/comp0 ),
        .empty_fwft_i_reg(E),
        .empty_fwft_i_reg_0(ram_rd_en_i),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] (\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] (\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] (\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ),
        .\gc0.count_d1_reg[4] (rd_pntr),
        .\gfwd_rev_pipeline1.s_ready_i_reg (\goreg_dm.dout_i_reg[25] [0]),
        .\gpregsm1.curr_fwft_state_reg[1] (ram_rd_en),
        .out(out),
        .ram_empty_fb_i_i_4__0(wr_pntr),
        .ram_empty_fb_i_reg(ram_wr_en),
        .s_aclk(s_aclk),
        .s_axi_rready(s_axi_rready),
        .s_ready_i0__0(s_ready_i0__0));
  design_1_m00_data_fifo_0_wr_logic_15 \gntv_or_sync_fifo.gl0.wr 
       (.AR(rstblk_n_2),
        .E(ram_wr_en),
        .I52(rd_pntr),
        .Q(wr_pntr),
        .comp0(\gwss.wsts/comp0 ),
        .out(rst_full_ff_i),
        .ram_full_i_reg(ram_rd_en),
        .ram_full_i_reg_0(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
  design_1_m00_data_fifo_0_memory_16 \gntv_or_sync_fifo.mem 
       (.D(D),
        .DI(DI),
        .E(dout_i0),
        .I45(ram_wr_en),
        .I541(I541),
        .Q(Q[8:0]),
        .S(S),
        .count_d1(rd_pntr),
        .count_d10_in(wr_pntr),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] (\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0 ),
        .\goreg_dm.dout_i_reg[25]_0 (\goreg_dm.dout_i_reg[25] [3:1]),
        .\goreg_dm.dout_i_reg[28]_0 (\goreg_dm.dout_i_reg[28] ),
        .\goreg_dm.dout_i_reg[29]_0 (\goreg_dm.dout_i_reg[29] ),
        .\goreg_dm.dout_i_reg[60]_0 (\goreg_dm.dout_i_reg[60] ),
        .\gpr1.dout_i_reg[0] (ram_rd_en_i),
        .rd_fifo_free_space(rd_fifo_free_space),
        .rd_fifo_free_space1(rd_fifo_free_space1),
        .rd_fifo_free_space11_out__0(rd_fifo_free_space11_out__0),
        .s_aclk(s_aclk));
  design_1_m00_data_fifo_0_reset_blk_ramfifo__parameterized0 rstblk
       (.AR(rstblk_n_2),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rst_full_gen_i),
        .out(rst_full_ff_i),
        .s_aclk(s_aclk),
        .src_rst(src_rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_m00_data_fifo_0_fifo_generator_ramfifo__parameterized0
   (out,
    SR,
    E,
    s_axi_wready,
    m_axi_wvalid,
    \goreg_bm.dout_i_reg[289] ,
    s_aclk,
    src_rst,
    DIADI,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_ready_i0__0,
    m_axi_wready);
  output out;
  output [0:0]SR;
  output [0:0]E;
  output s_axi_wready;
  output m_axi_wvalid;
  output [289:0]\goreg_bm.dout_i_reg[289] ;
  input s_aclk;
  input src_rst;
  input [15:0]DIADI;
  input [255:0]s_axi_wdata;
  input [17:0]s_axi_wstrb;
  input s_axi_wvalid;
  input s_ready_i0__0;
  input m_axi_wready;

  wire [15:0]DIADI;
  wire [0:0]E;
  wire [0:0]SR;
  wire dout_i;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENB_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENB_dly_D ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENB_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENB_dly_D ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENB_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENB_dly_D ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/ENB_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/ENB_dly_D ;
  wire \gntv_or_sync_fifo.gl0.wr_n_17 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_18 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_19 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_20 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_21 ;
  wire [289:0]\goreg_bm.dout_i_reg[289] ;
  wire [4:0]\grss.rsts/c2/v1_reg ;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire out;
  wire ram_rd_en;
  wire ram_wr_en;
  wire [8:0]rd_pntr;
  wire [8:0]rd_pntr_plus1;
  wire rst_full_gen_i;
  wire rstblk_n_1;
  wire rstblk_n_2;
  wire s_aclk;
  wire [255:0]s_axi_wdata;
  wire s_axi_wready;
  wire [17:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire s_ready_i0__0;
  wire src_rst;
  wire [8:0]wr_pntr;

  design_1_m00_data_fifo_0_rd_logic__parameterized0 \gntv_or_sync_fifo.gl0.rd 
       (.E(dout_i),
        .ENB_I(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/ENB_I ),
        .ENB_I_0(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENB_I ),
        .ENB_I_1(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENB_I ),
        .ENB_I_2(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENB_I ),
        .ENB_I_3(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I ),
        .ENB_dly_D(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/ENB_dly_D ),
        .ENB_dly_D_4(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENB_dly_D ),
        .ENB_dly_D_5(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENB_dly_D ),
        .ENB_dly_D_6(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENB_dly_D ),
        .ENB_dly_D_7(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D ),
        .Q({rstblk_n_1,rstblk_n_2}),
        .\gc0.count_d1_reg[8] (rd_pntr),
        .\gc0.count_reg[0] (SR),
        .\gc0.count_reg[8] (rd_pntr_plus1),
        .\gmux.gm[1].gms.ms (\gntv_or_sync_fifo.gl0.wr_n_17 ),
        .\gmux.gm[2].gms.ms (\gntv_or_sync_fifo.gl0.wr_n_18 ),
        .\gmux.gm[3].gms.ms (\gntv_or_sync_fifo.gl0.wr_n_19 ),
        .\gmux.gm[4].gms.ms (\gntv_or_sync_fifo.gl0.wr_n_20 ),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gl0.wr_n_21 ),
        .ram_empty_i_reg_0(ram_wr_en),
        .ram_rd_en(ram_rd_en),
        .s_aclk(s_aclk),
        .v1_reg(\grss.rsts/c2/v1_reg ));
  design_1_m00_data_fifo_0_wr_logic__parameterized0 \gntv_or_sync_fifo.gl0.wr 
       (.DIADI(DIADI[0]),
        .E(E),
        .Q(wr_pntr),
        .SR(SR),
        .\gcc0.gc0.count_d1_reg[0] (\gntv_or_sync_fifo.gl0.wr_n_17 ),
        .\gcc0.gc0.count_d1_reg[2] (\gntv_or_sync_fifo.gl0.wr_n_18 ),
        .\gcc0.gc0.count_d1_reg[4] (\gntv_or_sync_fifo.gl0.wr_n_19 ),
        .\gcc0.gc0.count_d1_reg[6] (\gntv_or_sync_fifo.gl0.wr_n_20 ),
        .\gcc0.gc0.count_d1_reg[8] (\gntv_or_sync_fifo.gl0.wr_n_21 ),
        .\gmux.gm[4].gms.ms (rd_pntr),
        .\gmux.gm[4].gms.ms_0 (rd_pntr_plus1),
        .out(out),
        .ram_full_i_reg(rst_full_gen_i),
        .ram_rd_en(ram_rd_en),
        .s_aclk(s_aclk),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wvalid_0(ram_wr_en),
        .s_ready_i0__0(s_ready_i0__0),
        .v1_reg(\grss.rsts/c2/v1_reg ));
  design_1_m00_data_fifo_0_memory__parameterized0 \gntv_or_sync_fifo.mem 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (rd_pntr),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (ram_wr_en),
        .DIADI(DIADI),
        .E(dout_i),
        .ENB_I(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I ),
        .ENB_I_4(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENB_I ),
        .ENB_I_5(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENB_I ),
        .ENB_I_6(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENB_I ),
        .ENB_I_7(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/ENB_I ),
        .ENB_dly_D(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D ),
        .ENB_dly_D_0(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENB_dly_D ),
        .ENB_dly_D_1(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENB_dly_D ),
        .ENB_dly_D_2(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENB_dly_D ),
        .ENB_dly_D_3(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/ENB_dly_D ),
        .Q(wr_pntr),
        .\goreg_bm.dout_i_reg[289]_0 (\goreg_bm.dout_i_reg[289] ),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  design_1_m00_data_fifo_0_reset_blk_ramfifo__parameterized2__xdcDup__1 rstblk
       (.Q({rstblk_n_1,rstblk_n_2}),
        .SR(SR),
        .out(rst_full_gen_i),
        .s_aclk(s_aclk),
        .src_rst(src_rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_m00_data_fifo_0_fifo_generator_ramfifo__parameterized1
   (src_rst,
    out,
    rd_fifo_free_space11_out__0,
    S,
    s_axi_rvalid,
    m_axi_rready,
    \goreg_bm.dout_i_reg[260] ,
    s_aclk,
    m_axi_rdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    m_axi_rid,
    s_axi_rready,
    CO,
    arready_pkt,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ,
    m_axi_rvalid,
    Q,
    s_aresetn);
  output src_rst;
  output out;
  output rd_fifo_free_space11_out__0;
  output [0:0]S;
  output s_axi_rvalid;
  output m_axi_rready;
  output [260:0]\goreg_bm.dout_i_reg[260] ;
  input s_aclk;
  input [255:0]m_axi_rdata;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [0:0]m_axi_rid;
  input s_axi_rready;
  input [0:0]CO;
  input arready_pkt;
  input \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  input m_axi_rvalid;
  input [0:0]Q;
  input s_aresetn;

  wire [0:0]CO;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]Q;
  wire [0:0]S;
  wire arready_pkt;
  wire dout_i;
  wire full_fb_rdch;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENB_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENB_dly_D ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENB_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENB_dly_D ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENB_I ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENB_dly_D ;
  wire \gntv_or_sync_fifo.gl0.wr_n_16 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_17 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_18 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_19 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_20 ;
  wire [260:0]\goreg_bm.dout_i_reg[260] ;
  wire [4:0]\grss.rsts/c2/v1_reg ;
  wire [255:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire out;
  wire ram_rd_en;
  wire ram_wr_en;
  wire rd_fifo_free_space11_out__0;
  wire [8:0]rd_pntr;
  wire [8:0]rd_pntr_plus1;
  wire rst_full_gen_i;
  wire rstblk_n_2;
  wire rstblk_n_3;
  wire rstblk_n_4;
  wire s_aclk;
  wire s_aresetn;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire src_rst;
  wire [8:0]wr_pntr;

  design_1_m00_data_fifo_0_rd_logic__parameterized0_3 \gntv_or_sync_fifo.gl0.rd 
       (.CO(CO),
        .E(dout_i),
        .ENB_I(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENB_I ),
        .ENB_I_0(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENB_I ),
        .ENB_I_1(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENB_I ),
        .ENB_I_2(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I ),
        .ENB_dly_D(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENB_dly_D ),
        .ENB_dly_D_3(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENB_dly_D ),
        .ENB_dly_D_4(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENB_dly_D ),
        .ENB_dly_D_5(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D ),
        .Q({rstblk_n_2,rstblk_n_3}),
        .S(S),
        .\_inferred__0/i__carry__1 (Q),
        .arready_pkt(arready_pkt),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] (\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ),
        .\gc0.count_d1_reg[8] (rd_pntr),
        .\gc0.count_d1_reg[8]_0 (rstblk_n_4),
        .\gc0.count_reg[8] (rd_pntr_plus1),
        .\gmux.gm[1].gms.ms (\gntv_or_sync_fifo.gl0.wr_n_16 ),
        .\gmux.gm[2].gms.ms (\gntv_or_sync_fifo.gl0.wr_n_17 ),
        .\gmux.gm[3].gms.ms (\gntv_or_sync_fifo.gl0.wr_n_18 ),
        .\gmux.gm[4].gms.ms (\gntv_or_sync_fifo.gl0.wr_n_19 ),
        .out(out),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gl0.wr_n_20 ),
        .ram_empty_i_reg_0(ram_wr_en),
        .ram_rd_en(ram_rd_en),
        .rd_fifo_free_space11_out__0(rd_fifo_free_space11_out__0),
        .s_aclk(s_aclk),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .v1_reg(\grss.rsts/c2/v1_reg ));
  design_1_m00_data_fifo_0_wr_logic__parameterized0_4 \gntv_or_sync_fifo.gl0.wr 
       (.E(ram_wr_en),
        .Q(wr_pntr),
        .SR(rstblk_n_4),
        .\gcc0.gc0.count_d1_reg[0] (\gntv_or_sync_fifo.gl0.wr_n_16 ),
        .\gcc0.gc0.count_d1_reg[2] (\gntv_or_sync_fifo.gl0.wr_n_17 ),
        .\gcc0.gc0.count_d1_reg[4] (\gntv_or_sync_fifo.gl0.wr_n_18 ),
        .\gcc0.gc0.count_d1_reg[6] (\gntv_or_sync_fifo.gl0.wr_n_19 ),
        .\gcc0.gc0.count_d1_reg[8] (\gntv_or_sync_fifo.gl0.wr_n_20 ),
        .\gmux.gm[4].gms.ms (rd_pntr),
        .\gmux.gm[4].gms.ms_0 (rd_pntr_plus1),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out(full_fb_rdch),
        .ram_full_i_reg(rst_full_gen_i),
        .ram_rd_en(ram_rd_en),
        .s_aclk(s_aclk),
        .v1_reg(\grss.rsts/c2/v1_reg ));
  design_1_m00_data_fifo_0_memory__parameterized1 \gntv_or_sync_fifo.mem 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (rd_pntr),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .E(ram_wr_en),
        .ENB_I(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I ),
        .ENB_I_3(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENB_I ),
        .ENB_I_4(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENB_I ),
        .ENB_I_5(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENB_I ),
        .ENB_dly_D(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D ),
        .ENB_dly_D_0(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENB_dly_D ),
        .ENB_dly_D_1(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/ENB_dly_D ),
        .ENB_dly_D_2(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/ENB_dly_D ),
        .Q(wr_pntr),
        .\goreg_bm.dout_i_reg[260]_0 (\goreg_bm.dout_i_reg[260] ),
        .\goreg_bm.dout_i_reg[260]_1 (dout_i),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rvalid(m_axi_rvalid),
        .out(full_fb_rdch),
        .s_aclk(s_aclk));
  design_1_m00_data_fifo_0_reset_blk_ramfifo__parameterized2 rstblk
       (.Q({rstblk_n_2,rstblk_n_3}),
        .SR(rstblk_n_4),
        .out(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .src_rst(src_rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_m00_data_fifo_0_fifo_generator_ramfifo__xdcDup__1
   (empty_fwft_i_reg,
    s_axi_awready,
    D,
    \goreg_dm.dout_i_reg[60] ,
    src_rst,
    s_aclk,
    Q,
    out,
    s_axi_wvalid,
    DIADI,
    awready_pkt,
    s_axi_awvalid,
    DI,
    S,
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ,
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] ,
    \gpr1.dout_i_reg[60] );
  output empty_fwft_i_reg;
  output s_axi_awready;
  output [8:0]D;
  output [60:0]\goreg_dm.dout_i_reg[60] ;
  input src_rst;
  input s_aclk;
  input [9:0]Q;
  input out;
  input s_axi_wvalid;
  input [0:0]DIADI;
  input awready_pkt;
  input s_axi_awvalid;
  input [0:0]DI;
  input [2:0]S;
  input [3:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ;
  input [0:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] ;
  input [60:0]\gpr1.dout_i_reg[60] ;

  wire [8:0]D;
  wire [0:0]DI;
  wire [0:0]DIADI;
  wire [9:0]Q;
  wire [2:0]S;
  wire awready_pkt;
  wire dout_i0;
  wire empty_fwft_i_reg;
  wire [3:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ;
  wire [0:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] ;
  wire \gntv_or_sync_fifo.gl0.rd_n_0 ;
  wire [60:0]\goreg_dm.dout_i_reg[60] ;
  wire [60:0]\gpr1.dout_i_reg[60] ;
  wire [0:0]\gr1.gr1_int.rfwft/p_0_in ;
  wire \gwss.wsts/comp0 ;
  wire out;
  wire ram_rd_en;
  wire ram_rd_en_i;
  wire ram_wr_en;
  wire [4:0]rd_pntr;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_3;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire src_rst;
  wire [4:0]wr_pntr;

  design_1_m00_data_fifo_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.AR(rstblk_n_3),
        .D(D),
        .DI(DI),
        .DIADI(DIADI),
        .E(ram_rd_en_i),
        .Q(Q),
        .S(S),
        .awready_pkt(awready_pkt),
        .comp0(\gwss.wsts/comp0 ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4] (out),
        .\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] (\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ),
        .\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] (\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] ),
        .\gc0.count_d1_reg[4] (rd_pntr),
        .out({\gntv_or_sync_fifo.gl0.rd_n_0 ,\gr1.gr1_int.rfwft/p_0_in }),
        .ram_empty_fb_i_i_4(wr_pntr),
        .ram_empty_fb_i_reg(ram_wr_en),
        .ram_rd_en(ram_rd_en),
        .s_aclk(s_aclk),
        .s_axi_wvalid(s_axi_wvalid));
  design_1_m00_data_fifo_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AR(rstblk_n_3),
        .E(ram_wr_en),
        .PNTR(rd_pntr),
        .Q(wr_pntr),
        .comp0(\gwss.wsts/comp0 ),
        .out(rst_full_ff_i),
        .ram_full_i_reg(rst_full_gen_i),
        .ram_rd_en(ram_rd_en),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
  design_1_m00_data_fifo_0_memory \gntv_or_sync_fifo.mem 
       (.E(dout_i0),
        .EN(ram_wr_en),
        .count_d1(rd_pntr),
        .count_d10_in(wr_pntr),
        .\goreg_dm.dout_i_reg[60]_0 (\goreg_dm.dout_i_reg[60] ),
        .\gpr1.dout_i_reg[0] (ram_rd_en_i),
        .\gpr1.dout_i_reg[60] (\gpr1.dout_i_reg[60] ),
        .s_aclk(s_aclk));
  design_1_m00_data_fifo_0_reset_blk_ramfifo__parameterized0__xdcDup__1 rstblk
       (.AR(rstblk_n_3),
        .E(dout_i0),
        .\goreg_dm.dout_i_reg[60] ({\gntv_or_sync_fifo.gl0.rd_n_0 ,\gr1.gr1_int.rfwft/p_0_in }),
        .\goreg_dm.dout_i_reg[60]_0 (empty_fwft_i_reg),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rst_full_gen_i),
        .out(rst_full_ff_i),
        .s_aclk(s_aclk),
        .src_rst(src_rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_m00_data_fifo_0_fifo_generator_top
   (out,
    \goreg_dm.dout_i_reg[60] ,
    D,
    E,
    s_ready_i0__0,
    s_axi_arready,
    DI,
    S,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ,
    \goreg_dm.dout_i_reg[25] ,
    \goreg_dm.dout_i_reg[29] ,
    \goreg_dm.dout_i_reg[28] ,
    src_rst,
    s_aclk,
    Q,
    arready_pkt,
    CO,
    rd_fifo_free_space11_out__0,
    rd_fifo_free_space,
    s_axi_rready,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ,
    s_axi_arvalid,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0 ,
    rd_fifo_free_space1,
    I541);
  output out;
  output [60:0]\goreg_dm.dout_i_reg[60] ;
  output [9:0]D;
  output [0:0]E;
  output s_ready_i0__0;
  output s_axi_arready;
  output [3:0]DI;
  output [3:0]S;
  output [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ;
  output [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ;
  output [3:0]\goreg_dm.dout_i_reg[25] ;
  output [3:0]\goreg_dm.dout_i_reg[29] ;
  output [0:0]\goreg_dm.dout_i_reg[28] ;
  input src_rst;
  input s_aclk;
  input [9:0]Q;
  input arready_pkt;
  input [0:0]CO;
  input rd_fifo_free_space11_out__0;
  input [9:0]rd_fifo_free_space;
  input s_axi_rready;
  input \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  input s_axi_arvalid;
  input [1:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0 ;
  input rd_fifo_free_space1;
  input [60:0]I541;

  wire [0:0]CO;
  wire [9:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [60:0]I541;
  wire [9:0]Q;
  wire [3:0]S;
  wire arready_pkt;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  wire [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ;
  wire [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ;
  wire [1:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0 ;
  wire [3:0]\goreg_dm.dout_i_reg[25] ;
  wire [0:0]\goreg_dm.dout_i_reg[28] ;
  wire [3:0]\goreg_dm.dout_i_reg[29] ;
  wire [60:0]\goreg_dm.dout_i_reg[60] ;
  wire out;
  wire [9:0]rd_fifo_free_space;
  wire rd_fifo_free_space1;
  wire rd_fifo_free_space11_out__0;
  wire s_aclk;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_rready;
  wire s_ready_i0__0;
  wire src_rst;

  design_1_m00_data_fifo_0_fifo_generator_ramfifo \grf.rf 
       (.CO(CO),
        .D(D),
        .DI(DI),
        .E(E),
        .I541(I541),
        .Q(Q),
        .S(S),
        .arready_pkt(arready_pkt),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] (\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] (\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] (\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0 (\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0 ),
        .\goreg_dm.dout_i_reg[25] (\goreg_dm.dout_i_reg[25] ),
        .\goreg_dm.dout_i_reg[28] (\goreg_dm.dout_i_reg[28] ),
        .\goreg_dm.dout_i_reg[29] (\goreg_dm.dout_i_reg[29] ),
        .\goreg_dm.dout_i_reg[60] (\goreg_dm.dout_i_reg[60] ),
        .out(out),
        .rd_fifo_free_space(rd_fifo_free_space),
        .rd_fifo_free_space1(rd_fifo_free_space1),
        .rd_fifo_free_space11_out__0(rd_fifo_free_space11_out__0),
        .s_aclk(s_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rready(s_axi_rready),
        .s_ready_i0__0(s_ready_i0__0),
        .src_rst(src_rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_m00_data_fifo_0_fifo_generator_top__parameterized0
   (out,
    sckt_wr_rst_o_wdch,
    E,
    s_axi_wready,
    m_axi_wvalid,
    \goreg_bm.dout_i_reg[289] ,
    s_aclk,
    src_rst,
    DIADI,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_ready_i0__0,
    m_axi_wready);
  output out;
  output sckt_wr_rst_o_wdch;
  output [0:0]E;
  output s_axi_wready;
  output m_axi_wvalid;
  output [289:0]\goreg_bm.dout_i_reg[289] ;
  input s_aclk;
  input src_rst;
  input [15:0]DIADI;
  input [255:0]s_axi_wdata;
  input [17:0]s_axi_wstrb;
  input s_axi_wvalid;
  input s_ready_i0__0;
  input m_axi_wready;

  wire [15:0]DIADI;
  wire [0:0]E;
  wire [289:0]\goreg_bm.dout_i_reg[289] ;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire out;
  wire s_aclk;
  wire [255:0]s_axi_wdata;
  wire s_axi_wready;
  wire [17:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire s_ready_i0__0;
  wire sckt_wr_rst_o_wdch;
  wire src_rst;

  design_1_m00_data_fifo_0_fifo_generator_ramfifo__parameterized0 \grf.rf 
       (.DIADI(DIADI),
        .E(E),
        .SR(sckt_wr_rst_o_wdch),
        .\goreg_bm.dout_i_reg[289] (\goreg_bm.dout_i_reg[289] ),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i0__0(s_ready_i0__0),
        .src_rst(src_rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_m00_data_fifo_0_fifo_generator_top__parameterized1
   (src_rst,
    out,
    rd_fifo_free_space11_out__0,
    S,
    s_axi_rvalid,
    m_axi_rready,
    \goreg_bm.dout_i_reg[260] ,
    s_aclk,
    m_axi_rdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    m_axi_rid,
    s_axi_rready,
    CO,
    arready_pkt,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ,
    m_axi_rvalid,
    Q,
    s_aresetn);
  output src_rst;
  output out;
  output rd_fifo_free_space11_out__0;
  output [0:0]S;
  output s_axi_rvalid;
  output m_axi_rready;
  output [260:0]\goreg_bm.dout_i_reg[260] ;
  input s_aclk;
  input [255:0]m_axi_rdata;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [0:0]m_axi_rid;
  input s_axi_rready;
  input [0:0]CO;
  input arready_pkt;
  input \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  input m_axi_rvalid;
  input [0:0]Q;
  input s_aresetn;

  wire [0:0]CO;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]Q;
  wire [0:0]S;
  wire arready_pkt;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  wire [260:0]\goreg_bm.dout_i_reg[260] ;
  wire [255:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire out;
  wire rd_fifo_free_space11_out__0;
  wire s_aclk;
  wire s_aresetn;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire src_rst;

  design_1_m00_data_fifo_0_fifo_generator_ramfifo__parameterized1 \grf.rf 
       (.CO(CO),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .Q(Q),
        .S(S),
        .arready_pkt(arready_pkt),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] (\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ),
        .\goreg_bm.dout_i_reg[260] (\goreg_bm.dout_i_reg[260] ),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .rd_fifo_free_space11_out__0(rd_fifo_free_space11_out__0),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .src_rst(src_rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_m00_data_fifo_0_fifo_generator_top__xdcDup__1
   (s_ready_i0__0,
    s_axi_awready,
    D,
    \goreg_dm.dout_i_reg[60] ,
    src_rst,
    s_aclk,
    Q,
    out,
    s_axi_wvalid,
    DIADI,
    awready_pkt,
    s_axi_awvalid,
    DI,
    S,
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ,
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] ,
    \gpr1.dout_i_reg[60] );
  output s_ready_i0__0;
  output s_axi_awready;
  output [8:0]D;
  output [60:0]\goreg_dm.dout_i_reg[60] ;
  input src_rst;
  input s_aclk;
  input [9:0]Q;
  input out;
  input s_axi_wvalid;
  input [0:0]DIADI;
  input awready_pkt;
  input s_axi_awvalid;
  input [0:0]DI;
  input [2:0]S;
  input [3:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ;
  input [0:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] ;
  input [60:0]\gpr1.dout_i_reg[60] ;

  wire [8:0]D;
  wire [0:0]DI;
  wire [0:0]DIADI;
  wire [9:0]Q;
  wire [2:0]S;
  wire awready_pkt;
  wire [3:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ;
  wire [0:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] ;
  wire [60:0]\goreg_dm.dout_i_reg[60] ;
  wire [60:0]\gpr1.dout_i_reg[60] ;
  wire out;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire s_ready_i0__0;
  wire src_rst;

  design_1_m00_data_fifo_0_fifo_generator_ramfifo__xdcDup__1 \grf.rf 
       (.D(D),
        .DI(DI),
        .DIADI(DIADI),
        .Q(Q),
        .S(S),
        .awready_pkt(awready_pkt),
        .empty_fwft_i_reg(s_ready_i0__0),
        .\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] (\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ),
        .\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] (\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] ),
        .\goreg_dm.dout_i_reg[60] (\goreg_dm.dout_i_reg[60] ),
        .\gpr1.dout_i_reg[60] (\gpr1.dout_i_reg[60] ),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .src_rst(src_rst));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "1" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "1" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TDEST_WIDTH = "4" *) 
(* C_AXIS_TID_WIDTH = "8" *) (* C_AXIS_TKEEP_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "4" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "30" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "256" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "18" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "61" *) (* C_DIN_WIDTH_RDCH = "261" *) 
(* C_DIN_WIDTH_WACH = "61" *) (* C_DIN_WIDTH_WDCH = "290" *) (* C_DIN_WIDTH_WRCH = "290" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "18" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "0" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "0" *) 
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
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "2" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "2" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "2" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "512x72" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "30" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "510" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "30" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "510" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "5" *) (* C_PROG_EMPTY_TYPE_RACH = "5" *) (* C_PROG_EMPTY_TYPE_RDCH = "5" *) 
(* C_PROG_EMPTY_TYPE_WACH = "5" *) (* C_PROG_EMPTY_TYPE_WDCH = "5" *) (* C_PROG_EMPTY_TYPE_WRCH = "5" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "31" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "511" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "31" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "511" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "5" *) (* C_PROG_FULL_TYPE_RACH = "5" *) (* C_PROG_FULL_TYPE_RDCH = "5" *) 
(* C_PROG_FULL_TYPE_WACH = "5" *) (* C_PROG_FULL_TYPE_WDCH = "5" *) (* C_PROG_FULL_TYPE_WRCH = "5" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "2" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "32" *) 
(* C_WR_DEPTH_RDCH = "512" *) (* C_WR_DEPTH_WACH = "32" *) (* C_WR_DEPTH_WDCH = "512" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "5" *) (* C_WR_PNTR_WIDTH_RDCH = "9" *) 
(* C_WR_PNTR_WIDTH_WACH = "5" *) (* C_WR_PNTR_WIDTH_WDCH = "9" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_5" *) 
module design_1_m00_data_fifo_0_fifo_generator_v13_2_5
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
  input [0:0]s_axi_awid;
  input [29:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [29:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [29:0]s_axi_araddr;
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
  output [0:0]s_axi_rid;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [29:0]m_axi_araddr;
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
  input [0:0]m_axi_rid;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [7:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [7:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [4:0]axi_aw_prog_full_thresh;
  input [4:0]axi_aw_prog_empty_thresh;
  output [5:0]axi_aw_data_count;
  output [5:0]axi_aw_wr_data_count;
  output [5:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [8:0]axi_w_prog_full_thresh;
  input [8:0]axi_w_prog_empty_thresh;
  output [9:0]axi_w_data_count;
  output [9:0]axi_w_wr_data_count;
  output [9:0]axi_w_rd_data_count;
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
  input [4:0]axi_ar_prog_full_thresh;
  input [4:0]axi_ar_prog_empty_thresh;
  output [5:0]axi_ar_data_count;
  output [5:0]axi_ar_wr_data_count;
  output [5:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [8:0]axi_r_prog_full_thresh;
  input [8:0]axi_r_prog_empty_thresh;
  output [9:0]axi_r_data_count;
  output [9:0]axi_r_wr_data_count;
  output [9:0]axi_r_rd_data_count;
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
  wire [29:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [0:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [2:0]m_axi_arsize;
  wire [0:0]m_axi_aruser;
  wire m_axi_arvalid;
  wire [29:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [0:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire [0:0]m_axi_awuser;
  wire m_axi_awvalid;
  wire [0:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [255:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire [255:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [31:0]m_axi_wstrb;
  wire [0:0]m_axi_wuser;
  wire m_axi_wvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [29:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [29:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [255:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_ruser;
  wire s_axi_rvalid;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire [0:0]s_axi_wuser;
  wire s_axi_wvalid;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[5] = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const0> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[5] = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[5] = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[5] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const0> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[5] = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[5] = \<const0> ;
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
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const0> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const0> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
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
  assign m_axi_bready = s_axi_bready;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \<const0> ;
  assign m_axis_tdata[61] = \<const0> ;
  assign m_axis_tdata[60] = \<const0> ;
  assign m_axis_tdata[59] = \<const0> ;
  assign m_axis_tdata[58] = \<const0> ;
  assign m_axis_tdata[57] = \<const0> ;
  assign m_axis_tdata[56] = \<const0> ;
  assign m_axis_tdata[55] = \<const0> ;
  assign m_axis_tdata[54] = \<const0> ;
  assign m_axis_tdata[53] = \<const0> ;
  assign m_axis_tdata[52] = \<const0> ;
  assign m_axis_tdata[51] = \<const0> ;
  assign m_axis_tdata[50] = \<const0> ;
  assign m_axis_tdata[49] = \<const0> ;
  assign m_axis_tdata[48] = \<const0> ;
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \<const0> ;
  assign m_axis_tdata[45] = \<const0> ;
  assign m_axis_tdata[44] = \<const0> ;
  assign m_axis_tdata[43] = \<const0> ;
  assign m_axis_tdata[42] = \<const0> ;
  assign m_axis_tdata[41] = \<const0> ;
  assign m_axis_tdata[40] = \<const0> ;
  assign m_axis_tdata[39] = \<const0> ;
  assign m_axis_tdata[38] = \<const0> ;
  assign m_axis_tdata[37] = \<const0> ;
  assign m_axis_tdata[36] = \<const0> ;
  assign m_axis_tdata[35] = \<const0> ;
  assign m_axis_tdata[34] = \<const0> ;
  assign m_axis_tdata[33] = \<const0> ;
  assign m_axis_tdata[32] = \<const0> ;
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[3] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[7] = \<const0> ;
  assign m_axis_tid[6] = \<const0> ;
  assign m_axis_tid[5] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
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
  assign s_axi_bid[0] = m_axi_bid;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_buser[0] = m_axi_buser;
  assign s_axi_bvalid = m_axi_bvalid;
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
  design_1_m00_data_fifo_0_fifo_generator_v13_2_5_synth inst_fifo_gen
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ({m_axi_rresp,m_axi_ruser,m_axi_rlast}),
        .DI({s_axi_awid,s_axi_awaddr,s_axi_awlen,s_axi_awsize,s_axi_awburst,s_axi_awlock,s_axi_awcache,s_axi_awprot,s_axi_awqos,s_axi_awregion,s_axi_awuser}),
        .DIADI({s_axi_wstrb[14:7],s_axi_wstrb[5:0],s_axi_wuser,s_axi_wlast}),
        .I541({s_axi_arid,s_axi_araddr,s_axi_arlen,s_axi_arsize,s_axi_arburst,s_axi_arlock,s_axi_arcache,s_axi_arprot,s_axi_arqos,s_axi_arregion,s_axi_aruser}),
        .Q({m_axi_awid,m_axi_awaddr,m_axi_awlen,m_axi_awsize,m_axi_awburst,m_axi_awlock,m_axi_awcache,m_axi_awprot,m_axi_awqos,m_axi_awregion,m_axi_awuser}),
        .\gfwd_rev_pipeline1.m_valid_i_reg (m_axi_awvalid),
        .\gfwd_rev_pipeline1.m_valid_i_reg_0 (m_axi_arvalid),
        .\gfwd_rev_pipeline1.storage_data1_reg[60] ({m_axi_arid,m_axi_araddr,m_axi_arlen,m_axi_arsize,m_axi_arburst,m_axi_arlock,m_axi_arcache,m_axi_arprot,m_axi_arqos,m_axi_arregion,m_axi_aruser}),
        .\goreg_bm.dout_i_reg[260] ({s_axi_rid,s_axi_rdata,s_axi_rresp,s_axi_ruser,s_axi_rlast}),
        .\goreg_bm.dout_i_reg[289] ({m_axi_wdata,m_axi_wstrb,m_axi_wuser,m_axi_wlast}),
        .m_axi_arready(m_axi_arready),
        .m_axi_awready(m_axi_awready),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
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
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({s_axi_wstrb[31:15],s_axi_wstrb[6]}),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_5_synth" *) 
module design_1_m00_data_fifo_0_fifo_generator_v13_2_5_synth
   (Q,
    \goreg_bm.dout_i_reg[289] ,
    \gfwd_rev_pipeline1.storage_data1_reg[60] ,
    \goreg_bm.dout_i_reg[260] ,
    \gfwd_rev_pipeline1.m_valid_i_reg ,
    \gfwd_rev_pipeline1.m_valid_i_reg_0 ,
    s_axi_arready,
    s_axi_awready,
    s_axi_wready,
    m_axi_wvalid,
    s_axi_rvalid,
    m_axi_rready,
    s_aclk,
    s_axi_wvalid,
    DIADI,
    s_axi_wdata,
    s_axi_wstrb,
    m_axi_rdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    m_axi_rid,
    DI,
    I541,
    m_axi_awready,
    m_axi_arready,
    s_axi_awvalid,
    m_axi_wready,
    s_axi_rready,
    s_axi_arvalid,
    m_axi_rvalid,
    s_aresetn);
  output [60:0]Q;
  output [289:0]\goreg_bm.dout_i_reg[289] ;
  output [60:0]\gfwd_rev_pipeline1.storage_data1_reg[60] ;
  output [260:0]\goreg_bm.dout_i_reg[260] ;
  output \gfwd_rev_pipeline1.m_valid_i_reg ;
  output \gfwd_rev_pipeline1.m_valid_i_reg_0 ;
  output s_axi_arready;
  output s_axi_awready;
  output s_axi_wready;
  output m_axi_wvalid;
  output s_axi_rvalid;
  output m_axi_rready;
  input s_aclk;
  input s_axi_wvalid;
  input [15:0]DIADI;
  input [255:0]s_axi_wdata;
  input [17:0]s_axi_wstrb;
  input [255:0]m_axi_rdata;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [0:0]m_axi_rid;
  input [60:0]DI;
  input [60:0]I541;
  input m_axi_awready;
  input m_axi_arready;
  input s_axi_awvalid;
  input m_axi_wready;
  input s_axi_rready;
  input s_axi_arvalid;
  input m_axi_rvalid;
  input s_aresetn;

  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [60:0]DI;
  wire [15:0]DIADI;
  wire [60:0]I541;
  wire [60:0]Q;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__1_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire arready_pkt;
  wire arvalid_en;
  wire arvalid_en0_carry_n_0;
  wire arvalid_en0_carry_n_1;
  wire arvalid_en0_carry_n_2;
  wire arvalid_en0_carry_n_3;
  wire awready_pkt;
  wire empty_fb_rdch;
  wire full_fb_wdch;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_6_n_0 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_7_n_0 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[0] ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[1] ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[2] ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[3] ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[4] ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5] ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[6] ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[7] ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8] ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[9] ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_1 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_10 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_11 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_12 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_13 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_14 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_15 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_16 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_17 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_18 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_19 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_2 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_20 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_21 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_22 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_23 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_24 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_25 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_26 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_27 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_28 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_29 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_3 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_30 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_31 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_4 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_40 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_41 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_42 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_43 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_44 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_45 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_46 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_47 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_48 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_49 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_5 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_50 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_51 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_52 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_53 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_54 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_55 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_56 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_57 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_58 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_59 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_6 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_60 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_61 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_7 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_72 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_75 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_76 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_77 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_78 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_79 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_8 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_80 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_81 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_82 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_83 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_84 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_85 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_86 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_87 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_88 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_89 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_9 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_90 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_91 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_92 ;
  wire \gaxi_full_lite.gread_ch.grach2.axi_rach_n_93 ;
  wire \gaxi_full_lite.gread_ch.grdch2.axi_rdch_n_3 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[0]_i_1_n_0 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_2_n_0 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_3_n_0 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_4_n_0 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_5_n_0 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_2_n_0 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_3_n_0 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_4_n_0 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_5_n_0 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[9]_i_3_n_0 ;
  wire [9:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_10 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_11 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_12 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_13 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_14 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_15 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_16 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_17 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_18 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_19 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_2 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_20 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_21 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_22 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_23 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_24 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_25 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_26 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_27 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_28 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_29 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_3 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_30 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_31 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_32 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_33 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_34 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_35 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_36 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_37 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_38 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_39 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_4 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_40 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_41 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_42 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_43 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_44 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_45 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_46 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_47 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_48 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_49 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_5 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_50 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_51 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_52 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_53 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_54 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_55 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_56 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_57 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_58 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_59 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_6 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_60 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_61 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_62 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_63 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_64 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_65 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_66 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_67 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_68 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_69 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_7 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_70 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_71 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_8 ;
  wire \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_9 ;
  wire \gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_2 ;
  wire \gfwd_rev_pipeline1.m_valid_i_reg ;
  wire \gfwd_rev_pipeline1.m_valid_i_reg_0 ;
  wire [60:0]\gfwd_rev_pipeline1.storage_data1_reg[60] ;
  wire [260:0]\goreg_bm.dout_i_reg[260] ;
  wire [289:0]\goreg_bm.dout_i_reg[289] ;
  wire inverted_reset;
  wire inverted_reset_sync_cc;
  wire m_axi_arready;
  wire m_axi_awready;
  wire [255:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [9:0]p_1_in;
  wire rach_empty;
  wire [9:0]rd_fifo_free_space;
  wire rd_fifo_free_space1;
  wire rd_fifo_free_space11_out__0;
  wire s_aclk;
  wire s_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [255:0]s_axi_wdata;
  wire s_axi_wready;
  wire [17:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire s_ready_i0__0;
  wire s_ready_i0__0_0;
  wire sckt_wr_rst_o_wdch;
  wire [7:0]value;
  wire [3:1]\NLW__inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]NLW_arvalid_en0_carry_O_UNCONNECTED;
  wire [3:1]NLW_arvalid_en0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_arvalid_en0_carry__0_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[0] ),
        .DI({\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[3] ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[2] ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[1] ,rd_fifo_free_space1}),
        .O(rd_fifo_free_space[3:0]),
        .S({\gaxi_full_lite.gread_ch.grach2.axi_rach_n_85 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_86 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_87 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_88 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[7] ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[6] ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5] ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[4] }),
        .O(rd_fifo_free_space[7:4]),
        .S({\gaxi_full_lite.gread_ch.grach2.axi_rach_n_89 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_90 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_91 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_92 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW__inferred__0/i__carry__1_CO_UNCONNECTED [3:1],\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8] }),
        .O({\NLW__inferred__0/i__carry__1_O_UNCONNECTED [3:2],rd_fifo_free_space[9:8]}),
        .S({1'b0,1'b0,\gaxi_full_lite.gread_ch.grdch2.axi_rdch_n_3 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_93 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 arvalid_en0_carry
       (.CI(1'b0),
        .CO({arvalid_en0_carry_n_0,arvalid_en0_carry_n_1,arvalid_en0_carry_n_2,arvalid_en0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\gaxi_full_lite.gread_ch.grach2.axi_rach_n_75 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_76 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_77 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_78 }),
        .O(NLW_arvalid_en0_carry_O_UNCONNECTED[3:0]),
        .S({\gaxi_full_lite.gread_ch.grach2.axi_rach_n_79 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_80 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_81 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_82 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 arvalid_en0_carry__0
       (.CI(arvalid_en0_carry_n_0),
        .CO({NLW_arvalid_en0_carry__0_CO_UNCONNECTED[3:1],arvalid_en}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_83 }),
        .O(NLW_arvalid_en0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_84 }));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_6 
       (.I0(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[9] ),
        .O(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_7 
       (.I0(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8] ),
        .O(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gread_ch.grach2.axi_rach_n_72 ),
        .CLR(inverted_reset_sync_cc),
        .D(p_1_in[0]),
        .Q(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[1] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gread_ch.grach2.axi_rach_n_72 ),
        .CLR(inverted_reset_sync_cc),
        .D(p_1_in[1]),
        .Q(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[2] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gread_ch.grach2.axi_rach_n_72 ),
        .CLR(inverted_reset_sync_cc),
        .D(p_1_in[2]),
        .Q(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gread_ch.grach2.axi_rach_n_72 ),
        .CLR(inverted_reset_sync_cc),
        .D(p_1_in[3]),
        .Q(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[4] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gread_ch.grach2.axi_rach_n_72 ),
        .CLR(inverted_reset_sync_cc),
        .D(p_1_in[4]),
        .Q(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[5] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gread_ch.grach2.axi_rach_n_72 ),
        .CLR(inverted_reset_sync_cc),
        .D(p_1_in[5]),
        .Q(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gread_ch.grach2.axi_rach_n_72 ),
        .CLR(inverted_reset_sync_cc),
        .D(p_1_in[6]),
        .Q(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gread_ch.grach2.axi_rach_n_72 ),
        .CLR(inverted_reset_sync_cc),
        .D(p_1_in[7]),
        .Q(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gread_ch.grach2.axi_rach_n_72 ),
        .CLR(inverted_reset_sync_cc),
        .D(p_1_in[8]),
        .Q(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8] ));
  FDPE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gread_ch.grach2.axi_rach_n_72 ),
        .D(p_1_in[9]),
        .PRE(inverted_reset_sync_cc),
        .Q(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[9] ));
  design_1_m00_data_fifo_0_fifo_generator_top \gaxi_full_lite.gread_ch.grach2.axi_rach 
       (.CO(arvalid_en),
        .D(p_1_in),
        .DI({\gaxi_full_lite.gread_ch.grach2.axi_rach_n_75 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_76 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_77 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_78 }),
        .E(\gaxi_full_lite.gread_ch.grach2.axi_rach_n_72 ),
        .I541(I541),
        .Q({\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[9] ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8] ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[7] ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[6] ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5] ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[4] ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[3] ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[2] ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[1] ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[0] }),
        .S({\gaxi_full_lite.gread_ch.grach2.axi_rach_n_79 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_80 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_81 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_82 }),
        .arready_pkt(arready_pkt),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] (empty_fb_rdch),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] (\gaxi_full_lite.gread_ch.grach2.axi_rach_n_83 ),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] (\gaxi_full_lite.gread_ch.grach2.axi_rach_n_84 ),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0 ({\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_6_n_0 ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_7_n_0 }),
        .\goreg_dm.dout_i_reg[25] ({\gaxi_full_lite.gread_ch.grach2.axi_rach_n_85 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_86 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_87 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_88 }),
        .\goreg_dm.dout_i_reg[28] (\gaxi_full_lite.gread_ch.grach2.axi_rach_n_93 ),
        .\goreg_dm.dout_i_reg[29] ({\gaxi_full_lite.gread_ch.grach2.axi_rach_n_89 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_90 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_91 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_92 }),
        .\goreg_dm.dout_i_reg[60] ({\gaxi_full_lite.gread_ch.grach2.axi_rach_n_1 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_2 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_3 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_4 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_5 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_6 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_7 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_8 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_9 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_10 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_11 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_12 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_13 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_14 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_15 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_16 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_17 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_18 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_19 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_20 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_21 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_22 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_23 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_24 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_25 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_26 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_27 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_28 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_29 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_30 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_31 ,value,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_40 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_41 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_42 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_43 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_44 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_45 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_46 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_47 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_48 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_49 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_50 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_51 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_52 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_53 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_54 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_55 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_56 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_57 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_58 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_59 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_60 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_61 }),
        .out(rach_empty),
        .rd_fifo_free_space(rd_fifo_free_space),
        .rd_fifo_free_space1(rd_fifo_free_space1),
        .rd_fifo_free_space11_out__0(rd_fifo_free_space11_out__0),
        .s_aclk(s_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rready(s_axi_rready),
        .s_ready_i0__0(s_ready_i0__0),
        .src_rst(inverted_reset));
  design_1_m00_data_fifo_0_axi_reg_slice \gaxi_full_lite.gread_ch.grach2.gaxi_arvld.rach_pkt_reg_slice 
       (.CO(arvalid_en),
        .D({\gaxi_full_lite.gread_ch.grach2.axi_rach_n_1 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_2 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_3 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_4 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_5 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_6 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_7 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_8 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_9 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_10 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_11 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_12 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_13 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_14 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_15 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_16 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_17 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_18 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_19 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_20 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_21 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_22 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_23 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_24 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_25 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_26 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_27 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_28 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_29 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_30 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_31 ,value,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_40 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_41 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_42 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_43 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_44 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_45 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_46 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_47 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_48 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_49 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_50 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_51 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_52 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_53 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_54 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_55 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_56 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_57 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_58 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_59 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_60 ,\gaxi_full_lite.gread_ch.grach2.axi_rach_n_61 }),
        .\_inferred__0/i__carry (empty_fb_rdch),
        .arready_pkt(arready_pkt),
        .\gfwd_rev_pipeline1.m_valid_i_reg_0 (\gfwd_rev_pipeline1.m_valid_i_reg_0 ),
        .\gfwd_rev_pipeline1.storage_data1_reg[60]_0 (\gfwd_rev_pipeline1.storage_data1_reg[60] ),
        .m_axi_arready(m_axi_arready),
        .out(rach_empty),
        .rd_fifo_free_space1(rd_fifo_free_space1),
        .s_aclk(s_aclk),
        .s_axi_rready(s_axi_rready),
        .s_ready_i0__0(s_ready_i0__0),
        .src_rst(inverted_reset));
  design_1_m00_data_fifo_0_fifo_generator_top__parameterized1 \gaxi_full_lite.gread_ch.grdch2.axi_rdch 
       (.CO(arvalid_en),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .Q(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[9] ),
        .S(\gaxi_full_lite.gread_ch.grdch2.axi_rdch_n_3 ),
        .arready_pkt(arready_pkt),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] (rach_empty),
        .\goreg_bm.dout_i_reg[260] (\goreg_bm.dout_i_reg[260] ),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out(empty_fb_rdch),
        .rd_fifo_free_space11_out__0(rd_fifo_free_space11_out__0),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .src_rst(inverted_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[0]_i_1 
       (.I0(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [0]),
        .O(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_2 
       (.I0(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [1]),
        .O(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_3 
       (.I0(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [3]),
        .I1(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [4]),
        .O(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_4 
       (.I0(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [2]),
        .I1(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [3]),
        .O(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_5 
       (.I0(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [1]),
        .I1(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [2]),
        .O(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_2 
       (.I0(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [7]),
        .I1(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [8]),
        .O(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_3 
       (.I0(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [6]),
        .I1(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [7]),
        .O(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_4 
       (.I0(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [5]),
        .I1(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [6]),
        .O(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_5 
       (.I0(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [4]),
        .I1(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [5]),
        .O(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[9]_i_3 
       (.I0(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [8]),
        .I1(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [9]),
        .O(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[0] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_2 ),
        .D(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[0]_i_1_n_0 ),
        .Q(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [0]),
        .R(sckt_wr_rst_o_wdch));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[1] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_2 ),
        .D(\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_10 ),
        .Q(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [1]),
        .R(sckt_wr_rst_o_wdch));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[2] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_2 ),
        .D(\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_9 ),
        .Q(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [2]),
        .R(sckt_wr_rst_o_wdch));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[3] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_2 ),
        .D(\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_8 ),
        .Q(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [3]),
        .R(sckt_wr_rst_o_wdch));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_2 ),
        .D(\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_7 ),
        .Q(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [4]),
        .R(sckt_wr_rst_o_wdch));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[5] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_2 ),
        .D(\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_6 ),
        .Q(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [5]),
        .R(sckt_wr_rst_o_wdch));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[6] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_2 ),
        .D(\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_5 ),
        .Q(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [6]),
        .R(sckt_wr_rst_o_wdch));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[7] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_2 ),
        .D(\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_4 ),
        .Q(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [7]),
        .R(sckt_wr_rst_o_wdch));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_2 ),
        .D(\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_3 ),
        .Q(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [8]),
        .R(sckt_wr_rst_o_wdch));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] 
       (.C(s_aclk),
        .CE(\gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_2 ),
        .D(\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_2 ),
        .Q(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg [9]),
        .R(sckt_wr_rst_o_wdch));
  design_1_m00_data_fifo_0_fifo_generator_top__xdcDup__1 \gaxi_full_lite.gwrite_ch.gwach2.axi_wach 
       (.D({\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_2 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_3 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_4 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_5 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_6 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_7 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_8 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_9 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_10 }),
        .DI(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_2_n_0 ),
        .DIADI(DIADI[0]),
        .Q(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg ),
        .S({\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_3_n_0 ,\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_4_n_0 ,\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_5_n_0 }),
        .awready_pkt(awready_pkt),
        .\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ({\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_2_n_0 ,\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_3_n_0 ,\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_4_n_0 ,\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_5_n_0 }),
        .\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] (\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[9]_i_3_n_0 ),
        .\goreg_dm.dout_i_reg[60] ({\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_11 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_12 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_13 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_14 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_15 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_16 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_17 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_18 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_19 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_20 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_21 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_22 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_23 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_24 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_25 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_26 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_27 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_28 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_29 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_30 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_31 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_32 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_33 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_34 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_35 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_36 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_37 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_38 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_39 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_40 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_41 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_42 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_43 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_44 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_45 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_46 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_47 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_48 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_49 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_50 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_51 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_52 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_53 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_54 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_55 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_56 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_57 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_58 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_59 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_60 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_61 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_62 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_63 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_64 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_65 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_66 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_67 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_68 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_69 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_70 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_71 }),
        .\gpr1.dout_i_reg[60] (DI),
        .out(full_fb_wdch),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i0__0(s_ready_i0__0_0),
        .src_rst(inverted_reset));
  design_1_m00_data_fifo_0_axi_reg_slice__xdcDup__1 \gaxi_full_lite.gwrite_ch.gwach2.gawvld_pkt_fifo.wach_pkt_reg_slice 
       (.D({\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_11 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_12 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_13 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_14 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_15 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_16 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_17 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_18 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_19 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_20 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_21 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_22 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_23 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_24 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_25 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_26 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_27 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_28 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_29 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_30 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_31 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_32 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_33 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_34 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_35 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_36 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_37 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_38 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_39 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_40 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_41 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_42 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_43 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_44 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_45 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_46 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_47 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_48 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_49 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_50 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_51 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_52 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_53 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_54 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_55 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_56 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_57 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_58 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_59 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_60 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_61 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_62 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_63 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_64 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_65 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_66 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_67 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_68 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_69 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_70 ,\gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_71 }),
        .Q(Q),
        .awready_pkt(awready_pkt),
        .\gfwd_rev_pipeline1.m_valid_i_reg_0 (\gfwd_rev_pipeline1.m_valid_i_reg ),
        .m_axi_awready(m_axi_awready),
        .s_aclk(s_aclk),
        .s_ready_i0__0(s_ready_i0__0_0),
        .src_rst(inverted_reset));
  design_1_m00_data_fifo_0_fifo_generator_top__parameterized0 \gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch 
       (.DIADI(DIADI),
        .E(\gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_2 ),
        .\goreg_bm.dout_i_reg[289] (\goreg_bm.dout_i_reg[289] ),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .out(full_fb_wdch),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i0__0(s_ready_i0__0_0),
        .sckt_wr_rst_o_wdch(sckt_wr_rst_o_wdch),
        .src_rst(inverted_reset));
  design_1_m00_data_fifo_0_reset_blk_ramfifo \reset_gen_cc.rstblk_cc 
       (.AR(inverted_reset_sync_cc),
        .s_aclk(s_aclk),
        .src_rst(inverted_reset));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_m00_data_fifo_0_memory
   (\goreg_dm.dout_i_reg[60]_0 ,
    E,
    s_aclk,
    EN,
    \gpr1.dout_i_reg[60] ,
    count_d1,
    count_d10_in,
    \gpr1.dout_i_reg[0] );
  output [60:0]\goreg_dm.dout_i_reg[60]_0 ;
  input [0:0]E;
  input s_aclk;
  input EN;
  input [60:0]\gpr1.dout_i_reg[60] ;
  input [4:0]count_d1;
  input [4:0]count_d10_in;
  input [0:0]\gpr1.dout_i_reg[0] ;

  wire [0:0]E;
  wire EN;
  wire [4:0]count_d1;
  wire [4:0]count_d10_in;
  wire [60:0]dout_i;
  wire [60:0]\goreg_dm.dout_i_reg[60]_0 ;
  wire [0:0]\gpr1.dout_i_reg[0] ;
  wire [60:0]\gpr1.dout_i_reg[60] ;
  wire s_aclk;

  design_1_m00_data_fifo_0_dmem \gdm.dm_gen.dm 
       (.EN(EN),
        .count_d1(count_d1),
        .count_d10_in(count_d10_in),
        .dout_i(dout_i),
        .\gpr1.dout_i_reg[0]_0 (\gpr1.dout_i_reg[0] ),
        .\gpr1.dout_i_reg[60]_0 (\gpr1.dout_i_reg[60] ),
        .s_aclk(s_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[0]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[10]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[11]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[12]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[13]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[14]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[15]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[16]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[17]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[18]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[19]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[1]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[20]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[21]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[22]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[23]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[24]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[25]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[26]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[27]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[28]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[29]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[2]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[30]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[31]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[32]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[33]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[34]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[35]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[36]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[37]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[38]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[39]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[3]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[40]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[41] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[41]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[42] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[42]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[43] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[43]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[44] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[44]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[45] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[45]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[46] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[46]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[47] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[47]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[48] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[48]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[49] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[49]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[4]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[50] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[50]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[51] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[51]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[52] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[52]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[53] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[53]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[54] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[54]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[55] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[55]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[56] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[56]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[57] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[57]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[58] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[58]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[59] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[59]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[5]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[60] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[60]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[6]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[7]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[8]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(E),
        .D(dout_i[9]),
        .Q(\goreg_dm.dout_i_reg[60]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_m00_data_fifo_0_memory_16
   (\goreg_dm.dout_i_reg[60]_0 ,
    D,
    DI,
    S,
    \goreg_dm.dout_i_reg[25]_0 ,
    \goreg_dm.dout_i_reg[29]_0 ,
    \goreg_dm.dout_i_reg[28]_0 ,
    Q,
    rd_fifo_free_space11_out__0,
    rd_fifo_free_space,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ,
    rd_fifo_free_space1,
    E,
    s_aclk,
    I45,
    I541,
    count_d1,
    count_d10_in,
    \gpr1.dout_i_reg[0] );
  output [60:0]\goreg_dm.dout_i_reg[60]_0 ;
  output [9:0]D;
  output [3:0]DI;
  output [3:0]S;
  output [2:0]\goreg_dm.dout_i_reg[25]_0 ;
  output [3:0]\goreg_dm.dout_i_reg[29]_0 ;
  output [0:0]\goreg_dm.dout_i_reg[28]_0 ;
  input [8:0]Q;
  input rd_fifo_free_space11_out__0;
  input [9:0]rd_fifo_free_space;
  input [1:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ;
  input rd_fifo_free_space1;
  input [0:0]E;
  input s_aclk;
  input I45;
  input [60:0]I541;
  input [4:0]count_d1;
  input [4:0]count_d10_in;
  input [0:0]\gpr1.dout_i_reg[0] ;

  wire [9:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire I45;
  wire [60:0]I541;
  wire [8:0]Q;
  wire [3:0]S;
  wire [4:0]count_d1;
  wire [4:0]count_d10_in;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_3_n_0 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_4_n_0 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_5_n_0 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_6_n_0 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_3_n_0 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_4_n_0 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_5_n_0 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_6_n_0 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_0 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_1 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_2 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_3 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_0 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_1 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_2 ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_3 ;
  wire [1:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_n_3 ;
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
  wire \gdm.dm_gen.dm_n_7 ;
  wire \gdm.dm_gen.dm_n_8 ;
  wire \gdm.dm_gen.dm_n_9 ;
  wire [2:0]\goreg_dm.dout_i_reg[25]_0 ;
  wire [0:0]\goreg_dm.dout_i_reg[28]_0 ;
  wire [3:0]\goreg_dm.dout_i_reg[29]_0 ;
  wire [60:0]\goreg_dm.dout_i_reg[60]_0 ;
  wire [0:0]\gpr1.dout_i_reg[0] ;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire [9:0]minusOp;
  wire [9:0]rd_fifo_free_space;
  wire rd_fifo_free_space1;
  wire rd_fifo_free_space11_out__0;
  wire s_aclk;
  wire [3:1]\NLW_gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h2F02)) 
    arvalid_en0_carry_i_1
       (.I0(Q[6]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [28]),
        .I2(\goreg_dm.dout_i_reg[60]_0 [29]),
        .I3(Q[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    arvalid_en0_carry_i_2
       (.I0(Q[4]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [26]),
        .I2(\goreg_dm.dout_i_reg[60]_0 [27]),
        .I3(Q[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    arvalid_en0_carry_i_3
       (.I0(Q[2]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [24]),
        .I2(\goreg_dm.dout_i_reg[60]_0 [25]),
        .I3(Q[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    arvalid_en0_carry_i_4
       (.I0(Q[0]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [22]),
        .I2(\goreg_dm.dout_i_reg[60]_0 [23]),
        .I3(Q[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    arvalid_en0_carry_i_5
       (.I0(\goreg_dm.dout_i_reg[60]_0 [29]),
        .I1(Q[7]),
        .I2(\goreg_dm.dout_i_reg[60]_0 [28]),
        .I3(Q[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    arvalid_en0_carry_i_6
       (.I0(\goreg_dm.dout_i_reg[60]_0 [27]),
        .I1(Q[5]),
        .I2(\goreg_dm.dout_i_reg[60]_0 [26]),
        .I3(Q[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    arvalid_en0_carry_i_7
       (.I0(\goreg_dm.dout_i_reg[60]_0 [25]),
        .I1(Q[3]),
        .I2(\goreg_dm.dout_i_reg[60]_0 [24]),
        .I3(Q[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    arvalid_en0_carry_i_8
       (.I0(\goreg_dm.dout_i_reg[60]_0 [23]),
        .I1(Q[1]),
        .I2(\goreg_dm.dout_i_reg[60]_0 [22]),
        .I3(Q[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[0]_i_1 
       (.I0(minusOp[0]),
        .I1(rd_fifo_free_space11_out__0),
        .I2(rd_fifo_free_space[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[1]_i_1 
       (.I0(minusOp[1]),
        .I1(rd_fifo_free_space11_out__0),
        .I2(rd_fifo_free_space[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[2]_i_1 
       (.I0(minusOp[2]),
        .I1(rd_fifo_free_space11_out__0),
        .I2(rd_fifo_free_space[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_1 
       (.I0(minusOp[3]),
        .I1(rd_fifo_free_space11_out__0),
        .I2(rd_fifo_free_space[3]),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_3 
       (.I0(Q[3]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [25]),
        .O(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_4 
       (.I0(Q[2]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [24]),
        .O(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_5 
       (.I0(Q[1]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [23]),
        .O(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_6 
       (.I0(Q[0]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [22]),
        .O(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[4]_i_1 
       (.I0(minusOp[4]),
        .I1(rd_fifo_free_space11_out__0),
        .I2(rd_fifo_free_space[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[5]_i_1 
       (.I0(minusOp[5]),
        .I1(rd_fifo_free_space11_out__0),
        .I2(rd_fifo_free_space[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[6]_i_1 
       (.I0(minusOp[6]),
        .I1(rd_fifo_free_space11_out__0),
        .I2(rd_fifo_free_space[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_1 
       (.I0(minusOp[7]),
        .I1(rd_fifo_free_space11_out__0),
        .I2(rd_fifo_free_space[7]),
        .O(D[7]));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_3 
       (.I0(Q[7]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [29]),
        .O(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_4 
       (.I0(Q[6]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [28]),
        .O(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_5 
       (.I0(Q[5]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [27]),
        .O(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_6 
       (.I0(Q[4]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [26]),
        .O(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[8]_i_1 
       (.I0(minusOp[8]),
        .I1(rd_fifo_free_space11_out__0),
        .I2(rd_fifo_free_space[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_2 
       (.I0(minusOp[9]),
        .I1(rd_fifo_free_space11_out__0),
        .I2(rd_fifo_free_space[9]),
        .O(D[9]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_0 ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_1 ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_2 ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O(minusOp[3:0]),
        .S({\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_3_n_0 ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_4_n_0 ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_5_n_0 ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2 
       (.CI(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_0 ),
        .CO({\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_0 ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_1 ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_2 ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(minusOp[7:4]),
        .S({\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_3_n_0 ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_4_n_0 ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_5_n_0 ,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4 
       (.CI(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_0 ),
        .CO({\NLW_gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_CO_UNCONNECTED [3:1],\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[8]}),
        .O({\NLW_gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_O_UNCONNECTED [3:2],minusOp[9:8]}),
        .S({1'b0,1'b0,\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] }));
  design_1_m00_data_fifo_0_dmem_17 \gdm.dm_gen.dm 
       (.I45(I45),
        .I541(I541),
        .count_d1(count_d1),
        .count_d10_in(count_d10_in),
        .dout_i({\gdm.dm_gen.dm_n_0 ,\gdm.dm_gen.dm_n_1 ,\gdm.dm_gen.dm_n_2 ,\gdm.dm_gen.dm_n_3 ,\gdm.dm_gen.dm_n_4 ,\gdm.dm_gen.dm_n_5 ,\gdm.dm_gen.dm_n_6 ,\gdm.dm_gen.dm_n_7 ,\gdm.dm_gen.dm_n_8 ,\gdm.dm_gen.dm_n_9 ,\gdm.dm_gen.dm_n_10 ,\gdm.dm_gen.dm_n_11 ,\gdm.dm_gen.dm_n_12 ,\gdm.dm_gen.dm_n_13 ,\gdm.dm_gen.dm_n_14 ,\gdm.dm_gen.dm_n_15 ,\gdm.dm_gen.dm_n_16 ,\gdm.dm_gen.dm_n_17 ,\gdm.dm_gen.dm_n_18 ,\gdm.dm_gen.dm_n_19 ,\gdm.dm_gen.dm_n_20 ,\gdm.dm_gen.dm_n_21 ,\gdm.dm_gen.dm_n_22 ,\gdm.dm_gen.dm_n_23 ,\gdm.dm_gen.dm_n_24 ,\gdm.dm_gen.dm_n_25 ,\gdm.dm_gen.dm_n_26 ,\gdm.dm_gen.dm_n_27 ,\gdm.dm_gen.dm_n_28 ,\gdm.dm_gen.dm_n_29 ,\gdm.dm_gen.dm_n_30 ,\gdm.dm_gen.dm_n_31 ,\gdm.dm_gen.dm_n_32 ,\gdm.dm_gen.dm_n_33 ,\gdm.dm_gen.dm_n_34 ,\gdm.dm_gen.dm_n_35 ,\gdm.dm_gen.dm_n_36 ,\gdm.dm_gen.dm_n_37 ,\gdm.dm_gen.dm_n_38 ,\gdm.dm_gen.dm_n_39 ,\gdm.dm_gen.dm_n_40 ,\gdm.dm_gen.dm_n_41 ,\gdm.dm_gen.dm_n_42 ,\gdm.dm_gen.dm_n_43 ,\gdm.dm_gen.dm_n_44 ,\gdm.dm_gen.dm_n_45 ,\gdm.dm_gen.dm_n_46 ,\gdm.dm_gen.dm_n_47 ,\gdm.dm_gen.dm_n_48 ,\gdm.dm_gen.dm_n_49 ,\gdm.dm_gen.dm_n_50 ,\gdm.dm_gen.dm_n_51 ,\gdm.dm_gen.dm_n_52 ,\gdm.dm_gen.dm_n_53 ,\gdm.dm_gen.dm_n_54 ,\gdm.dm_gen.dm_n_55 ,\gdm.dm_gen.dm_n_56 ,\gdm.dm_gen.dm_n_57 ,\gdm.dm_gen.dm_n_58 ,\gdm.dm_gen.dm_n_59 ,\gdm.dm_gen.dm_n_60 }),
        .\gpr1.dout_i_reg[0]_0 (\gpr1.dout_i_reg[0] ),
        .s_aclk(s_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_60 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_50 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_49 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_48 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_47 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_46 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_45 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_44 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_43 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_42 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_41 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_59 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_40 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_39 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_38 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_37 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_36 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_35 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_34 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_33 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_32 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_31 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_58 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_30 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_29 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_28 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_27 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_26 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_25 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_24 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_23 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_22 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_21 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_57 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_20 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[41] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_19 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[42] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_18 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[43] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_17 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[44] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_16 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[45] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_15 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[46] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_14 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[47] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_13 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[48] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_12 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[49] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_11 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_56 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[50] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_10 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[51] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_9 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[52] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_8 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[53] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_7 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[54] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_6 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[55] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_5 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[56] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_4 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[57] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_3 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[58] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_2 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[59] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_1 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_55 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[60] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_0 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_54 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_53 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_52 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_51 ),
        .Q(\goreg_dm.dout_i_reg[60]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7BBB8444)) 
    i__carry__0_i_1
       (.I0(\goreg_dm.dout_i_reg[60]_0 [29]),
        .I1(rd_fifo_free_space1),
        .I2(i__carry__0_i_5_n_0),
        .I3(\goreg_dm.dout_i_reg[60]_0 [28]),
        .I4(Q[7]),
        .O(\goreg_dm.dout_i_reg[29]_0 [3]));
  LUT4 #(
    .INIT(16'h7B84)) 
    i__carry__0_i_2
       (.I0(\goreg_dm.dout_i_reg[60]_0 [28]),
        .I1(rd_fifo_free_space1),
        .I2(i__carry__0_i_5_n_0),
        .I3(Q[6]),
        .O(\goreg_dm.dout_i_reg[29]_0 [2]));
  LUT4 #(
    .INIT(16'h7B84)) 
    i__carry__0_i_3
       (.I0(\goreg_dm.dout_i_reg[60]_0 [27]),
        .I1(rd_fifo_free_space1),
        .I2(i__carry__0_i_6_n_0),
        .I3(Q[5]),
        .O(\goreg_dm.dout_i_reg[29]_0 [1]));
  LUT4 #(
    .INIT(16'h7B84)) 
    i__carry__0_i_4
       (.I0(\goreg_dm.dout_i_reg[60]_0 [26]),
        .I1(rd_fifo_free_space1),
        .I2(i__carry__0_i_7_n_0),
        .I3(Q[4]),
        .O(\goreg_dm.dout_i_reg[29]_0 [0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    i__carry__0_i_5
       (.I0(\goreg_dm.dout_i_reg[60]_0 [27]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [25]),
        .I2(\goreg_dm.dout_i_reg[60]_0 [23]),
        .I3(\goreg_dm.dout_i_reg[60]_0 [22]),
        .I4(\goreg_dm.dout_i_reg[60]_0 [24]),
        .I5(\goreg_dm.dout_i_reg[60]_0 [26]),
        .O(i__carry__0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    i__carry__0_i_6
       (.I0(\goreg_dm.dout_i_reg[60]_0 [26]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [24]),
        .I2(\goreg_dm.dout_i_reg[60]_0 [22]),
        .I3(\goreg_dm.dout_i_reg[60]_0 [23]),
        .I4(\goreg_dm.dout_i_reg[60]_0 [25]),
        .O(i__carry__0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    i__carry__0_i_7
       (.I0(\goreg_dm.dout_i_reg[60]_0 [25]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [23]),
        .I2(\goreg_dm.dout_i_reg[60]_0 [22]),
        .I3(\goreg_dm.dout_i_reg[60]_0 [24]),
        .O(i__carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'hD5552AAA)) 
    i__carry__1_i_2
       (.I0(rd_fifo_free_space1),
        .I1(i__carry__0_i_5_n_0),
        .I2(\goreg_dm.dout_i_reg[60]_0 [28]),
        .I3(\goreg_dm.dout_i_reg[60]_0 [29]),
        .I4(Q[8]),
        .O(\goreg_dm.dout_i_reg[28]_0 ));
  LUT6 #(
    .INIT(64'h6AAAFFFF95550000)) 
    i__carry_i_2
       (.I0(\goreg_dm.dout_i_reg[60]_0 [25]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [24]),
        .I2(\goreg_dm.dout_i_reg[60]_0 [22]),
        .I3(\goreg_dm.dout_i_reg[60]_0 [23]),
        .I4(rd_fifo_free_space1),
        .I5(Q[3]),
        .O(\goreg_dm.dout_i_reg[25]_0 [2]));
  LUT5 #(
    .INIT(32'h6AFF9500)) 
    i__carry_i_3
       (.I0(\goreg_dm.dout_i_reg[60]_0 [24]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [23]),
        .I2(\goreg_dm.dout_i_reg[60]_0 [22]),
        .I3(rd_fifo_free_space1),
        .I4(Q[2]),
        .O(\goreg_dm.dout_i_reg[25]_0 [1]));
  LUT4 #(
    .INIT(16'h6F90)) 
    i__carry_i_4
       (.I0(\goreg_dm.dout_i_reg[60]_0 [23]),
        .I1(\goreg_dm.dout_i_reg[60]_0 [22]),
        .I2(rd_fifo_free_space1),
        .I3(Q[1]),
        .O(\goreg_dm.dout_i_reg[25]_0 [0]));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_m00_data_fifo_0_memory__parameterized0
   (ENB_dly_D,
    ENB_dly_D_0,
    ENB_dly_D_1,
    ENB_dly_D_2,
    ENB_dly_D_3,
    \goreg_bm.dout_i_reg[289]_0 ,
    s_aclk,
    ENB_I,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    DIADI,
    s_axi_wdata,
    s_axi_wstrb,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    ENB_I_4,
    ENB_I_5,
    ENB_I_6,
    ENB_I_7,
    out,
    s_axi_wvalid,
    E);
  output ENB_dly_D;
  output ENB_dly_D_0;
  output ENB_dly_D_1;
  output ENB_dly_D_2;
  output ENB_dly_D_3;
  output [289:0]\goreg_bm.dout_i_reg[289]_0 ;
  input s_aclk;
  input ENB_I;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [15:0]DIADI;
  input [255:0]s_axi_wdata;
  input [17:0]s_axi_wstrb;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input ENB_I_4;
  input ENB_I_5;
  input ENB_I_6;
  input ENB_I_7;
  input out;
  input s_axi_wvalid;
  input [0:0]E;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [15:0]DIADI;
  wire [0:0]E;
  wire ENB_I;
  wire ENB_I_4;
  wire ENB_I_5;
  wire ENB_I_6;
  wire ENB_I_7;
  wire ENB_dly_D;
  wire ENB_dly_D_0;
  wire ENB_dly_D_1;
  wire ENB_dly_D_2;
  wire ENB_dly_D_3;
  wire [8:0]Q;
  wire [289:0]doutb;
  wire [289:0]\goreg_bm.dout_i_reg[289]_0 ;
  wire out;
  wire s_aclk;
  wire [255:0]s_axi_wdata;
  wire [17:0]s_axi_wstrb;
  wire s_axi_wvalid;

  design_1_m00_data_fifo_0_blk_mem_gen_v8_4_4 \gbm.gbmg.gbmga.ngecc.bmg 
       (.D(doutb),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .DIADI(DIADI),
        .ENB_I(ENB_I),
        .ENB_I_4(ENB_I_4),
        .ENB_I_5(ENB_I_5),
        .ENB_I_6(ENB_I_6),
        .ENB_I_7(ENB_I_7),
        .ENB_dly_D(ENB_dly_D),
        .ENB_dly_D_0(ENB_dly_D_0),
        .ENB_dly_D_1(ENB_dly_D_1),
        .ENB_dly_D_2(ENB_dly_D_2),
        .ENB_dly_D_3(ENB_dly_D_3),
        .Q(Q),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[0]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[100] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[100]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[101] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[101]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[102] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[102]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[103] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[103]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[104] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[104]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[105] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[105]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[106] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[106]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[107] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[107]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[108] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[108]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[109] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[109]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[10]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[110] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[110]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[111] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[111]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[112] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[112]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[113] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[113]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[114] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[114]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[115] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[115]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[116] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[116]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[117] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[117]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[118] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[118]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[119] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[119]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[11]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[120] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[120]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[121] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[121]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[122] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[122]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[123] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[123]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[124] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[124]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[125] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[125]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[126] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[126]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[127] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[127]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[128] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[128]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [128]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[129] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[129]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [129]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[12]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[130] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[130]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [130]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[131] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[131]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [131]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[132] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[132]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [132]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[133] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[133]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [133]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[134] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[134]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [134]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[135] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[135]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [135]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[136] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[136]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [136]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[137] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[137]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [137]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[138] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[138]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [138]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[139] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[139]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [139]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[13]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[140] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[140]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [140]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[141] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[141]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [141]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[142] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[142]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [142]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[143] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[143]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [143]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[144] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[144]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [144]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[145] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[145]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [145]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[146] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[146]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [146]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[147] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[147]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [147]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[148] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[148]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [148]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[149] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[149]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [149]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[14]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[150] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[150]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [150]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[151] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[151]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [151]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[152] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[152]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [152]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[153] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[153]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [153]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[154] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[154]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [154]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[155] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[155]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [155]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[156] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[156]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [156]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[157] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[157]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [157]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[158] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[158]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [158]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[159] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[159]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [159]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[15]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[160] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[160]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [160]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[161] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[161]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [161]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[162] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[162]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [162]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[163] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[163]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [163]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[164] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[164]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [164]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[165] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[165]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [165]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[166] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[166]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [166]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[167] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[167]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [167]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[168] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[168]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [168]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[169] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[169]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [169]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[16]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[170] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[170]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [170]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[171] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[171]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [171]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[172] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[172]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [172]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[173] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[173]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [173]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[174] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[174]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [174]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[175] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[175]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [175]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[176] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[176]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [176]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[177] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[177]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [177]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[178] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[178]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [178]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[179] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[179]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [179]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[17]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[180] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[180]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [180]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[181] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[181]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [181]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[182] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[182]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [182]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[183] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[183]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [183]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[184] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[184]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [184]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[185] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[185]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [185]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[186] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[186]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [186]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[187] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[187]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [187]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[188] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[188]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [188]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[189] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[189]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [189]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[18]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[190] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[190]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [190]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[191] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[191]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [191]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[192] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[192]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [192]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[193] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[193]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [193]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[194] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[194]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [194]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[195] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[195]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [195]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[196] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[196]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [196]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[197] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[197]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [197]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[198] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[198]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [198]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[199] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[199]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [199]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[19]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[1]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[200] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[200]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [200]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[201] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[201]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [201]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[202] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[202]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [202]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[203] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[203]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [203]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[204] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[204]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [204]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[205] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[205]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [205]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[206] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[206]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [206]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[207] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[207]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [207]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[208] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[208]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [208]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[209] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[209]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [209]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[20]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[210] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[210]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [210]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[211] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[211]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [211]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[212] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[212]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [212]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[213] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[213]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [213]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[214] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[214]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [214]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[215] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[215]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [215]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[216] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[216]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [216]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[217] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[217]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [217]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[218] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[218]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [218]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[219] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[219]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [219]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[21]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[220] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[220]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [220]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[221] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[221]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [221]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[222] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[222]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [222]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[223] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[223]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [223]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[224] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[224]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [224]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[225] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[225]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [225]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[226] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[226]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [226]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[227] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[227]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [227]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[228] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[228]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [228]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[229] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[229]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [229]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[22]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[230] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[230]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [230]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[231] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[231]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [231]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[232] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[232]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [232]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[233] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[233]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [233]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[234] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[234]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [234]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[235] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[235]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [235]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[236] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[236]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [236]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[237] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[237]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [237]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[238] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[238]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [238]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[239] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[239]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [239]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[23]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[240] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[240]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [240]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[241] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[241]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [241]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[242] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[242]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [242]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[243] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[243]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [243]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[244] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[244]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [244]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[245] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[245]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [245]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[246] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[246]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [246]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[247] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[247]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [247]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[248] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[248]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [248]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[249] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[249]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [249]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[24]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[250] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[250]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [250]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[251] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[251]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [251]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[252] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[252]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [252]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[253] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[253]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [253]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[254] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[254]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [254]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[255] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[255]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [255]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[256] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[256]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [256]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[257] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[257]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [257]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[258] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[258]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [258]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[259] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[259]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [259]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[25]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[260] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[260]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [260]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[261] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[261]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [261]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[262] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[262]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [262]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[263] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[263]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [263]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[264] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[264]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [264]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[265] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[265]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [265]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[266] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[266]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [266]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[267] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[267]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [267]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[268] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[268]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [268]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[269] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[269]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [269]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[26]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[270] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[270]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [270]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[271] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[271]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [271]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[272] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[272]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [272]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[273] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[273]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [273]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[274] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[274]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [274]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[275] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[275]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [275]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[276] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[276]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [276]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[277] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[277]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [277]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[278] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[278]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [278]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[279] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[279]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [279]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[27]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[280] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[280]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [280]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[281] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[281]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [281]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[282] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[282]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [282]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[283] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[283]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [283]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[284] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[284]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [284]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[285] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[285]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [285]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[286] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[286]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [286]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[287] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[287]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [287]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[288] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[288]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [288]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[289] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[289]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [289]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[28]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[29]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[2]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[30]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[31]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[32]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[33]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[34]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[35]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[36]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[37]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[38]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[39]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[3]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[40]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[41] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[41]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[42] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[42]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[43] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[43]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[44] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[44]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[45] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[45]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[46] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[46]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[47] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[47]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[48] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[48]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[49] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[49]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[4]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[50] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[50]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[51] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[51]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[52] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[52]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[53] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[53]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[54] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[54]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[55] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[55]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[56] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[56]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[57] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[57]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[58] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[58]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[59] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[59]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[5]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[60] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[60]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[61] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[61]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[62] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[62]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[63] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[63]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[64] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[64]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[65] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[65]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[66] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[66]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[67] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[67]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[68] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[68]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[69] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[69]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[6]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[70] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[70]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[71] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[71]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[72] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[72]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[73] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[73]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[74] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[74]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[75] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[75]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[76] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[76]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[77] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[77]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[78] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[78]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[79] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[79]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[7]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[80] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[80]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[81] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[81]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[82] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[82]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[83] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[83]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[84] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[84]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[85] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[85]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[86] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[86]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[87] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[87]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[88] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[88]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[89] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[89]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[8]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[90] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[90]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[91] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[91]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[92] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[92]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[93] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[93]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[94] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[94]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[95] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[95]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[96] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[96]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[97] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[97]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[98] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[98]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[99] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[99]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(E),
        .D(doutb[9]),
        .Q(\goreg_bm.dout_i_reg[289]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_m00_data_fifo_0_memory__parameterized1
   (ENB_dly_D,
    ENB_dly_D_0,
    ENB_dly_D_1,
    ENB_dly_D_2,
    \goreg_bm.dout_i_reg[260]_0 ,
    s_aclk,
    ENB_I,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    Q,
    m_axi_rdata,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ,
    E,
    ENB_I_3,
    ENB_I_4,
    ENB_I_5,
    m_axi_rid,
    out,
    m_axi_rvalid,
    \goreg_bm.dout_i_reg[260]_1 );
  output ENB_dly_D;
  output ENB_dly_D_0;
  output ENB_dly_D_1;
  output ENB_dly_D_2;
  output [260:0]\goreg_bm.dout_i_reg[260]_0 ;
  input s_aclk;
  input ENB_I;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input [8:0]Q;
  input [255:0]m_axi_rdata;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  input [0:0]E;
  input ENB_I_3;
  input ENB_I_4;
  input ENB_I_5;
  input [0:0]m_axi_rid;
  input out;
  input m_axi_rvalid;
  input [0:0]\goreg_bm.dout_i_reg[260]_1 ;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ;
  wire [0:0]E;
  wire ENB_I;
  wire ENB_I_3;
  wire ENB_I_4;
  wire ENB_I_5;
  wire ENB_dly_D;
  wire ENB_dly_D_0;
  wire ENB_dly_D_1;
  wire ENB_dly_D_2;
  wire [8:0]Q;
  wire [260:0]doutb;
  wire [260:0]\goreg_bm.dout_i_reg[260]_0 ;
  wire [0:0]\goreg_bm.dout_i_reg[260]_1 ;
  wire [255:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rvalid;
  wire out;
  wire s_aclk;

  design_1_m00_data_fifo_0_blk_mem_gen_v8_4_4__parameterized1 \gbm.gbmg.gbmga.ngecc.bmg 
       (.D(doutb),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0 ),
        .E(E),
        .ENB_I(ENB_I),
        .ENB_I_3(ENB_I_3),
        .ENB_I_4(ENB_I_4),
        .ENB_I_5(ENB_I_5),
        .ENB_dly_D(ENB_dly_D),
        .ENB_dly_D_0(ENB_dly_D_0),
        .ENB_dly_D_1(ENB_dly_D_1),
        .ENB_dly_D_2(ENB_dly_D_2),
        .Q(Q),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .s_aclk(s_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[0]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[100] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[100]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[101] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[101]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[102] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[102]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[103] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[103]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[104] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[104]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[105] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[105]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[106] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[106]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[107] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[107]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[108] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[108]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[109] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[109]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[10]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[110] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[110]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[111] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[111]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[112] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[112]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[113] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[113]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[114] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[114]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[115] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[115]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[116] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[116]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[117] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[117]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[118] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[118]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[119] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[119]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[11]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[120] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[120]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[121] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[121]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[122] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[122]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[123] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[123]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[124] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[124]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[125] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[125]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[126] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[126]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[127] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[127]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[128] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[128]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [128]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[129] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[129]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [129]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[12]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[130] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[130]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [130]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[131] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[131]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [131]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[132] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[132]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [132]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[133] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[133]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [133]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[134] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[134]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [134]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[135] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[135]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [135]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[136] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[136]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [136]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[137] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[137]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [137]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[138] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[138]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [138]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[139] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[139]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [139]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[13]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[140] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[140]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [140]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[141] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[141]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [141]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[142] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[142]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [142]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[143] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[143]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [143]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[144] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[144]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [144]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[145] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[145]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [145]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[146] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[146]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [146]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[147] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[147]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [147]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[148] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[148]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [148]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[149] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[149]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [149]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[14]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[150] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[150]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [150]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[151] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[151]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [151]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[152] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[152]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [152]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[153] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[153]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [153]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[154] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[154]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [154]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[155] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[155]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [155]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[156] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[156]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [156]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[157] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[157]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [157]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[158] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[158]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [158]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[159] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[159]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [159]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[15]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[160] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[160]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [160]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[161] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[161]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [161]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[162] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[162]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [162]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[163] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[163]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [163]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[164] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[164]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [164]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[165] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[165]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [165]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[166] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[166]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [166]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[167] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[167]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [167]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[168] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[168]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [168]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[169] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[169]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [169]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[16]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[170] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[170]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [170]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[171] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[171]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [171]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[172] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[172]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [172]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[173] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[173]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [173]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[174] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[174]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [174]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[175] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[175]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [175]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[176] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[176]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [176]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[177] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[177]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [177]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[178] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[178]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [178]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[179] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[179]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [179]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[17]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[180] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[180]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [180]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[181] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[181]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [181]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[182] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[182]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [182]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[183] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[183]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [183]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[184] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[184]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [184]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[185] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[185]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [185]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[186] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[186]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [186]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[187] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[187]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [187]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[188] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[188]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [188]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[189] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[189]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [189]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[18]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[190] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[190]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [190]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[191] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[191]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [191]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[192] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[192]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [192]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[193] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[193]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [193]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[194] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[194]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [194]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[195] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[195]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [195]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[196] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[196]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [196]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[197] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[197]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [197]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[198] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[198]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [198]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[199] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[199]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [199]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[19]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[1]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[200] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[200]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [200]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[201] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[201]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [201]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[202] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[202]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [202]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[203] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[203]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [203]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[204] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[204]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [204]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[205] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[205]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [205]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[206] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[206]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [206]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[207] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[207]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [207]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[208] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[208]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [208]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[209] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[209]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [209]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[20]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[210] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[210]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [210]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[211] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[211]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [211]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[212] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[212]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [212]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[213] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[213]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [213]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[214] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[214]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [214]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[215] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[215]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [215]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[216] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[216]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [216]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[217] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[217]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [217]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[218] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[218]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [218]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[219] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[219]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [219]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[21]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[220] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[220]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [220]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[221] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[221]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [221]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[222] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[222]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [222]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[223] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[223]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [223]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[224] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[224]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [224]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[225] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[225]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [225]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[226] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[226]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [226]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[227] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[227]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [227]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[228] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[228]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [228]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[229] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[229]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [229]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[22]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[230] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[230]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [230]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[231] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[231]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [231]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[232] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[232]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [232]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[233] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[233]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [233]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[234] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[234]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [234]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[235] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[235]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [235]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[236] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[236]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [236]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[237] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[237]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [237]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[238] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[238]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [238]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[239] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[239]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [239]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[23]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[240] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[240]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [240]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[241] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[241]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [241]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[242] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[242]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [242]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[243] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[243]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [243]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[244] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[244]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [244]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[245] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[245]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [245]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[246] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[246]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [246]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[247] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[247]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [247]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[248] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[248]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [248]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[249] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[249]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [249]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[24]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[250] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[250]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [250]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[251] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[251]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [251]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[252] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[252]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [252]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[253] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[253]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [253]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[254] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[254]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [254]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[255] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[255]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [255]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[256] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[256]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [256]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[257] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[257]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [257]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[258] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[258]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [258]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[259] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[259]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [259]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[25]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[260] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[260]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [260]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[26]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[27]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[28]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[29]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[2]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[30]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[31]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[32]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[33]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[34]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[35]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[36]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[37]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[38]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[39]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[3]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[40]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[41] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[41]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[42] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[42]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[43] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[43]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[44] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[44]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[45] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[45]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[46] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[46]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[47] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[47]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[48] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[48]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[49] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[49]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[4]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[50] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[50]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[51] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[51]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[52] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[52]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[53] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[53]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[54] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[54]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[55] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[55]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[56] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[56]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[57] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[57]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[58] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[58]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[59] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[59]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[5]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[60] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[60]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[61] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[61]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[62] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[62]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[63] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[63]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[64] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[64]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[65] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[65]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[66] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[66]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[67] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[67]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[68] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[68]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[69] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[69]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[6]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[70] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[70]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[71] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[71]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[72] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[72]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[73] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[73]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[74] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[74]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[75] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[75]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[76] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[76]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[77] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[77]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[78] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[78]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[79] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[79]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[7]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[80] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[80]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[81] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[81]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[82] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[82]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[83] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[83]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[84] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[84]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[85] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[85]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[86] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[86]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[87] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[87]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[88] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[88]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[89] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[89]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[8]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[90] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[90]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[91] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[91]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[92] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[92]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[93] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[93]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[94] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[94]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[95] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[95]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[96] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[96]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[97] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[97]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[98] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[98]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[99] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[99]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i_reg[260]_1 ),
        .D(doutb[9]),
        .Q(\goreg_bm.dout_i_reg[260]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_m00_data_fifo_0_rd_bin_cntr
   (ram_empty_fb_i_reg,
    comp0,
    \gc0.count_d1_reg[4]_0 ,
    out,
    E,
    ram_empty_fb_i_reg_0,
    ram_empty_fb_i_i_4_0,
    s_aclk,
    AR);
  output ram_empty_fb_i_reg;
  output comp0;
  output [4:0]\gc0.count_d1_reg[4]_0 ;
  input out;
  input [0:0]E;
  input [0:0]ram_empty_fb_i_reg_0;
  input [4:0]ram_empty_fb_i_i_4_0;
  input s_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire comp0;
  wire [4:0]\gc0.count_d1_reg[4]_0 ;
  wire \grss.rsts/comp1 ;
  wire out;
  wire [4:0]plusOp;
  wire [4:0]ram_empty_fb_i_i_4_0;
  wire ram_empty_fb_i_i_5_n_0;
  wire ram_empty_fb_i_i_6_n_0;
  wire ram_empty_fb_i_reg;
  wire [0:0]ram_empty_fb_i_reg_0;
  wire [4:0]rd_pntr_plus1;
  wire s_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[3]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[0]),
        .Q(\gc0.count_d1_reg[4]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[1]),
        .Q(\gc0.count_d1_reg[4]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[2]),
        .Q(\gc0.count_d1_reg[4]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[3]),
        .Q(\gc0.count_d1_reg[4]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[4]),
        .Q(\gc0.count_d1_reg[4]_0 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(AR),
        .Q(rd_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[2]),
        .Q(rd_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]));
  LUT5 #(
    .INIT(32'h2222FAAA)) 
    ram_empty_fb_i_i_1
       (.I0(out),
        .I1(comp0),
        .I2(\grss.rsts/comp1 ),
        .I3(E),
        .I4(ram_empty_fb_i_reg_0),
        .O(ram_empty_fb_i_reg));
  LUT5 #(
    .INIT(32'h82000082)) 
    ram_empty_fb_i_i_3
       (.I0(ram_empty_fb_i_i_5_n_0),
        .I1(\gc0.count_d1_reg[4]_0 [1]),
        .I2(ram_empty_fb_i_i_4_0[1]),
        .I3(\gc0.count_d1_reg[4]_0 [0]),
        .I4(ram_empty_fb_i_i_4_0[0]),
        .O(comp0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h82000082)) 
    ram_empty_fb_i_i_4
       (.I0(ram_empty_fb_i_i_6_n_0),
        .I1(rd_pntr_plus1[1]),
        .I2(ram_empty_fb_i_i_4_0[1]),
        .I3(rd_pntr_plus1[0]),
        .I4(ram_empty_fb_i_i_4_0[0]),
        .O(\grss.rsts/comp1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_fb_i_i_5
       (.I0(\gc0.count_d1_reg[4]_0 [3]),
        .I1(ram_empty_fb_i_i_4_0[3]),
        .I2(\gc0.count_d1_reg[4]_0 [2]),
        .I3(ram_empty_fb_i_i_4_0[2]),
        .I4(ram_empty_fb_i_i_4_0[4]),
        .I5(\gc0.count_d1_reg[4]_0 [4]),
        .O(ram_empty_fb_i_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_fb_i_i_6
       (.I0(rd_pntr_plus1[3]),
        .I1(ram_empty_fb_i_i_4_0[3]),
        .I2(rd_pntr_plus1[2]),
        .I3(ram_empty_fb_i_i_4_0[2]),
        .I4(rd_pntr_plus1[4]),
        .I5(ram_empty_fb_i_i_4_0[4]),
        .O(ram_empty_fb_i_i_6_n_0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_m00_data_fifo_0_rd_bin_cntr_22
   (ram_empty_fb_i_reg,
    comp0,
    \gc0.count_d1_reg[4]_0 ,
    out,
    E,
    ram_empty_fb_i_reg_0,
    ram_empty_fb_i_i_4__0_0,
    s_aclk,
    AR);
  output ram_empty_fb_i_reg;
  output comp0;
  output [4:0]\gc0.count_d1_reg[4]_0 ;
  input out;
  input [0:0]E;
  input [0:0]ram_empty_fb_i_reg_0;
  input [4:0]ram_empty_fb_i_i_4__0_0;
  input s_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire comp0;
  wire [4:0]\gc0.count_d1_reg[4]_0 ;
  wire \grss.rsts/comp1 ;
  wire out;
  wire [4:0]plusOp__1;
  wire [4:0]ram_empty_fb_i_i_4__0_0;
  wire ram_empty_fb_i_i_5__0_n_0;
  wire ram_empty_fb_i_i_6__0_n_0;
  wire ram_empty_fb_i_reg;
  wire [0:0]ram_empty_fb_i_reg_0;
  wire [4:0]rd_pntr_plus1;
  wire s_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp__1[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1__0 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1__0 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[3]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp__1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[0]),
        .Q(\gc0.count_d1_reg[4]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[1]),
        .Q(\gc0.count_d1_reg[4]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[2]),
        .Q(\gc0.count_d1_reg[4]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[3]),
        .Q(\gc0.count_d1_reg[4]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[4]),
        .Q(\gc0.count_d1_reg[4]_0 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__1[0]),
        .PRE(AR),
        .Q(rd_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[1]),
        .Q(rd_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[2]),
        .Q(rd_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[3]),
        .Q(rd_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[4]),
        .Q(rd_pntr_plus1[4]));
  LUT5 #(
    .INIT(32'h2222FAAA)) 
    ram_empty_fb_i_i_1__1
       (.I0(out),
        .I1(comp0),
        .I2(\grss.rsts/comp1 ),
        .I3(E),
        .I4(ram_empty_fb_i_reg_0),
        .O(ram_empty_fb_i_reg));
  LUT5 #(
    .INIT(32'h82000082)) 
    ram_empty_fb_i_i_3__0
       (.I0(ram_empty_fb_i_i_5__0_n_0),
        .I1(\gc0.count_d1_reg[4]_0 [1]),
        .I2(ram_empty_fb_i_i_4__0_0[1]),
        .I3(\gc0.count_d1_reg[4]_0 [0]),
        .I4(ram_empty_fb_i_i_4__0_0[0]),
        .O(comp0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h82000082)) 
    ram_empty_fb_i_i_4__0
       (.I0(ram_empty_fb_i_i_6__0_n_0),
        .I1(rd_pntr_plus1[1]),
        .I2(ram_empty_fb_i_i_4__0_0[1]),
        .I3(rd_pntr_plus1[0]),
        .I4(ram_empty_fb_i_i_4__0_0[0]),
        .O(\grss.rsts/comp1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_fb_i_i_5__0
       (.I0(\gc0.count_d1_reg[4]_0 [3]),
        .I1(ram_empty_fb_i_i_4__0_0[3]),
        .I2(\gc0.count_d1_reg[4]_0 [2]),
        .I3(ram_empty_fb_i_i_4__0_0[2]),
        .I4(ram_empty_fb_i_i_4__0_0[4]),
        .I5(\gc0.count_d1_reg[4]_0 [4]),
        .O(ram_empty_fb_i_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_fb_i_i_6__0
       (.I0(rd_pntr_plus1[3]),
        .I1(ram_empty_fb_i_i_4__0_0[3]),
        .I2(rd_pntr_plus1[2]),
        .I3(ram_empty_fb_i_i_4__0_0[2]),
        .I4(rd_pntr_plus1[4]),
        .I5(ram_empty_fb_i_i_4__0_0[4]),
        .O(ram_empty_fb_i_i_6__0_n_0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_m00_data_fifo_0_rd_bin_cntr__parameterized0
   (Q,
    \gc0.count_d1_reg[8]_0 ,
    \gc0.count_reg[0]_0 ,
    E,
    s_aclk);
  output [8:0]Q;
  output [8:0]\gc0.count_d1_reg[8]_0 ;
  input \gc0.count_reg[0]_0 ;
  input [0:0]E;
  input s_aclk;

  wire [0:0]E;
  wire [8:0]Q;
  wire \gc0.count[8]_i_2_n_0 ;
  wire [8:0]\gc0.count_d1_reg[8]_0 ;
  wire \gc0.count_reg[0]_0 ;
  wire [8:0]plusOp__3;
  wire s_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1__1 
       (.I0(Q[0]),
        .O(plusOp__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp__3[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc0.count[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp__3[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[6]_i_1 
       (.I0(\gc0.count[8]_i_2_n_0 ),
        .I1(Q[6]),
        .O(plusOp__3[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[7]_i_1 
       (.I0(\gc0.count[8]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp__3[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[8]_i_1 
       (.I0(Q[6]),
        .I1(\gc0.count[8]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(plusOp__3[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc0.count[8]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\gc0.count[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[0]),
        .Q(\gc0.count_d1_reg[8]_0 [0]),
        .R(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[1]),
        .Q(\gc0.count_d1_reg[8]_0 [1]),
        .R(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[2]),
        .Q(\gc0.count_d1_reg[8]_0 [2]),
        .R(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[3]),
        .Q(\gc0.count_d1_reg[8]_0 [3]),
        .R(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[4]),
        .Q(\gc0.count_d1_reg[8]_0 [4]),
        .R(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[5]),
        .Q(\gc0.count_d1_reg[8]_0 [5]),
        .R(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[6]),
        .Q(\gc0.count_d1_reg[8]_0 [6]),
        .R(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[7]),
        .Q(\gc0.count_d1_reg[8]_0 [7]),
        .R(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[8]),
        .Q(\gc0.count_d1_reg[8]_0 [8]),
        .R(\gc0.count_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__3[0]),
        .Q(Q[0]),
        .S(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__3[1]),
        .Q(Q[1]),
        .R(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__3[2]),
        .Q(Q[2]),
        .R(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__3[3]),
        .Q(Q[3]),
        .R(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__3[4]),
        .Q(Q[4]),
        .R(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__3[5]),
        .Q(Q[5]),
        .R(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__3[6]),
        .Q(Q[6]),
        .R(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__3[7]),
        .Q(Q[7]),
        .R(\gc0.count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__3[8]),
        .Q(Q[8]),
        .R(\gc0.count_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_m00_data_fifo_0_rd_bin_cntr__parameterized0_11
   (Q,
    \gc0.count_d1_reg[8]_0 ,
    \gc0.count_d1_reg[8]_1 ,
    E,
    s_aclk);
  output [8:0]Q;
  output [8:0]\gc0.count_d1_reg[8]_0 ;
  input \gc0.count_d1_reg[8]_1 ;
  input [0:0]E;
  input s_aclk;

  wire [0:0]E;
  wire [8:0]Q;
  wire \gc0.count[8]_i_2__0_n_0 ;
  wire [8:0]\gc0.count_d1_reg[8]_0 ;
  wire \gc0.count_d1_reg[8]_1 ;
  wire [8:0]plusOp__5;
  wire s_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1__2 
       (.I0(Q[0]),
        .O(plusOp__5[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp__5[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp__5[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp__5[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc0.count[5]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp__5[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[6]_i_1__0 
       (.I0(\gc0.count[8]_i_2__0_n_0 ),
        .I1(Q[6]),
        .O(plusOp__5[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[7]_i_1__0 
       (.I0(\gc0.count[8]_i_2__0_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp__5[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\gc0.count[8]_i_2__0_n_0 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(plusOp__5[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc0.count[8]_i_2__0 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\gc0.count[8]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[0]),
        .Q(\gc0.count_d1_reg[8]_0 [0]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[1]),
        .Q(\gc0.count_d1_reg[8]_0 [1]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[2]),
        .Q(\gc0.count_d1_reg[8]_0 [2]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[3]),
        .Q(\gc0.count_d1_reg[8]_0 [3]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[4]),
        .Q(\gc0.count_d1_reg[8]_0 [4]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[5]),
        .Q(\gc0.count_d1_reg[8]_0 [5]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[6]),
        .Q(\gc0.count_d1_reg[8]_0 [6]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[7]),
        .Q(\gc0.count_d1_reg[8]_0 [7]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[8]),
        .Q(\gc0.count_d1_reg[8]_0 [8]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__5[0]),
        .Q(Q[0]),
        .S(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__5[1]),
        .Q(Q[1]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__5[2]),
        .Q(Q[2]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__5[3]),
        .Q(Q[3]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__5[4]),
        .Q(Q[4]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__5[5]),
        .Q(Q[5]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__5[6]),
        .Q(Q[6]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__5[7]),
        .Q(Q[7]),
        .R(\gc0.count_d1_reg[8]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__5[8]),
        .Q(Q[8]),
        .R(\gc0.count_d1_reg[8]_1 ));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_m00_data_fifo_0_rd_fwft
   (out,
    empty_fwft_i_reg_0,
    E,
    \gpregsm1.curr_fwft_state_reg[1]_0 ,
    D,
    s_aclk,
    AR,
    Q,
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4] ,
    s_axi_wvalid,
    DIADI,
    \gpregsm1.curr_fwft_state_reg[1]_1 ,
    awready_pkt,
    DI,
    S,
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ,
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] );
  output [1:0]out;
  output empty_fwft_i_reg_0;
  output [0:0]E;
  output [0:0]\gpregsm1.curr_fwft_state_reg[1]_0 ;
  output [8:0]D;
  input s_aclk;
  input [0:0]AR;
  input [9:0]Q;
  input \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4] ;
  input s_axi_wvalid;
  input [0:0]DIADI;
  input \gpregsm1.curr_fwft_state_reg[1]_1 ;
  input awready_pkt;
  input [0:0]DI;
  input [2:0]S;
  input [3:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ;
  input [0:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] ;

  wire [0:0]AR;
  wire [8:0]D;
  wire [0:0]DI;
  wire [0:0]DIADI;
  wire [0:0]E;
  wire [9:0]Q;
  wire [2:0]S;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0;
  wire awready_pkt;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0;
  wire empty_fwft_i_reg_0;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_6_n_0 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4] ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_0 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_1 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_2 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_3 ;
  wire [3:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_0 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_1 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_2 ;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_3 ;
  wire [0:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] ;
  wire \gfwd_rev_pipeline1.m_valid_i_i_3_n_0 ;
  wire \gfwd_rev_pipeline1.m_valid_i_i_4_n_0 ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1]_0 ;
  wire \gpregsm1.curr_fwft_state_reg[1]_1 ;
  wire [1:0]next_fwft_state;
  wire s_aclk;
  wire s_axi_wvalid;
  (* DONT_TOUCH *) wire user_valid;
  wire [3:0]\NLW_gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]_i_2_O_UNCONNECTED ;

  assign out[1:0] = curr_fwft_state;
  LUT5 #(
    .INIT(32'hFCFB8000)) 
    aempty_fwft_fb_i_i_1
       (.I0(empty_fwft_i_reg_0),
        .I1(curr_fwft_state[0]),
        .I2(\gpregsm1.curr_fwft_state_reg[1]_1 ),
        .I3(curr_fwft_state[1]),
        .I4(aempty_fwft_fb_i),
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
        .PRE(AR),
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
        .PRE(AR),
        .Q(aempty_fwft_i));
  LUT4 #(
    .INIT(16'hA0EA)) 
    empty_fwft_fb_i_i_1
       (.I0(empty_fwft_fb_i),
        .I1(empty_fwft_i_reg_0),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
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
        .PRE(AR),
        .Q(empty_fwft_fb_i));
  LUT4 #(
    .INIT(16'hA0EA)) 
    empty_fwft_fb_o_i_i_1
       (.I0(empty_fwft_fb_o_i),
        .I1(empty_fwft_i_reg_0),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
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
        .PRE(AR),
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
        .PRE(AR),
        .Q(empty_fwft_i));
  LUT5 #(
    .INIT(32'h56555555)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_6 
       (.I0(Q[1]),
        .I1(empty_fwft_i_reg_0),
        .I2(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4] ),
        .I3(s_axi_wvalid),
        .I4(DIADI),
        .O(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_0 ,\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_1 ,\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_2 ,\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],DI}),
        .O(D[3:0]),
        .S({S,\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1 
       (.CI(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_0 ),
        .CO({\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_0 ,\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_1 ,\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_2 ,\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(D[7:4]),
        .S(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]_i_2 
       (.CI(\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_0 ),
        .CO(\NLW_gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]_i_2_O_UNCONNECTED [3:1],D[8]}),
        .S({1'b0,1'b0,1'b0,\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] }));
  LUT4 #(
    .INIT(16'h00F7)) 
    \gc0.count_d1[4]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(empty_fwft_i_reg_0),
        .I3(\gpregsm1.curr_fwft_state_reg[1]_1 ),
        .O(\gpregsm1.curr_fwft_state_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h4440)) 
    \gfwd_rev_pipeline1.m_valid_i_i_2 
       (.I0(empty_fwft_i),
        .I1(awready_pkt),
        .I2(\gfwd_rev_pipeline1.m_valid_i_i_3_n_0 ),
        .I3(\gfwd_rev_pipeline1.m_valid_i_i_4_n_0 ),
        .O(empty_fwft_i_reg_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gfwd_rev_pipeline1.m_valid_i_i_3 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .O(\gfwd_rev_pipeline1.m_valid_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gfwd_rev_pipeline1.m_valid_i_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[0]),
        .I5(Q[9]),
        .O(\gfwd_rev_pipeline1.m_valid_i_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gpr1.dout_i[60]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg[1]_0 ),
        .I1(\gpregsm1.curr_fwft_state_reg[1]_1 ),
        .O(E));
  LUT3 #(
    .INIT(8'hF4)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(empty_fwft_i_reg_0),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(empty_fwft_i_reg_0),
        .I2(curr_fwft_state[0]),
        .I3(\gpregsm1.curr_fwft_state_reg[1]_1 ),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(AR),
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
        .CLR(AR),
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
        .CLR(AR),
        .D(next_fwft_state[0]),
        .Q(user_valid));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_m00_data_fifo_0_rd_fwft_20
   (out,
    E,
    empty_fwft_i_reg_0,
    s_ready_i0__0,
    empty_fwft_i_reg_1,
    \gpregsm1.curr_fwft_state_reg[1]_0 ,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ,
    \gfwd_rev_pipeline1.s_ready_i_reg ,
    s_aclk,
    AR,
    arready_pkt,
    CO,
    s_axi_rready,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ,
    \gpregsm1.curr_fwft_state_reg[1]_1 ,
    Q,
    \_inferred__0/i__carry );
  output out;
  output [0:0]E;
  output [0:0]empty_fwft_i_reg_0;
  output s_ready_i0__0;
  output [0:0]empty_fwft_i_reg_1;
  output [0:0]\gpregsm1.curr_fwft_state_reg[1]_0 ;
  output [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ;
  output [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ;
  output [0:0]\gfwd_rev_pipeline1.s_ready_i_reg ;
  input s_aclk;
  input [0:0]AR;
  input arready_pkt;
  input [0:0]CO;
  input s_axi_rready;
  input \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  input \gpregsm1.curr_fwft_state_reg[1]_1 ;
  input [1:0]Q;
  input [0:0]\_inferred__0/i__carry ;

  wire [0:0]AR;
  wire [0:0]CO;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]\_inferred__0/i__carry ;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0;
  wire arready_pkt;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0;
  wire [0:0]empty_fwft_i_reg_0;
  wire [0:0]empty_fwft_i_reg_1;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  wire [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ;
  wire [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ;
  wire [0:0]\gfwd_rev_pipeline1.s_ready_i_reg ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1]_0 ;
  wire \gpregsm1.curr_fwft_state_reg[1]_1 ;
  wire [1:0]next_fwft_state;
  wire s_aclk;
  wire s_axi_rready;
  wire s_ready_i0__0;
  (* DONT_TOUCH *) wire user_valid;

  assign out = empty_fwft_i;
  LUT5 #(
    .INIT(32'hFCFB8000)) 
    aempty_fwft_fb_i_i_1__1
       (.I0(s_ready_i0__0),
        .I1(curr_fwft_state[0]),
        .I2(\gpregsm1.curr_fwft_state_reg[1]_1 ),
        .I3(curr_fwft_state[1]),
        .I4(aempty_fwft_fb_i),
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
        .PRE(AR),
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
        .PRE(AR),
        .Q(aempty_fwft_i));
  LUT2 #(
    .INIT(4'hE)) 
    arvalid_en0_carry__0_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ));
  LUT2 #(
    .INIT(4'h1)) 
    arvalid_en0_carry__0_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ));
  LUT6 #(
    .INIT(64'hAAAA0000BAAAAAAA)) 
    empty_fwft_fb_i_i_1__1
       (.I0(empty_fwft_fb_i),
        .I1(empty_fwft_i),
        .I2(arready_pkt),
        .I3(CO),
        .I4(curr_fwft_state[0]),
        .I5(curr_fwft_state[1]),
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
        .PRE(AR),
        .Q(empty_fwft_fb_i));
  LUT6 #(
    .INIT(64'hAAAA0000BAAAAAAA)) 
    empty_fwft_fb_o_i_i_1__1
       (.I0(empty_fwft_fb_o_i),
        .I1(empty_fwft_i),
        .I2(arready_pkt),
        .I3(CO),
        .I4(curr_fwft_state[0]),
        .I5(curr_fwft_state[1]),
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
        .PRE(AR),
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
        .PRE(AR),
        .Q(empty_fwft_i));
  LUT5 #(
    .INIT(32'h4040FF40)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_1 
       (.I0(empty_fwft_i),
        .I1(arready_pkt),
        .I2(CO),
        .I3(s_axi_rready),
        .I4(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ),
        .O(empty_fwft_i_reg_0));
  LUT6 #(
    .INIT(64'h000000007777F777)) 
    \gc0.count_d1[4]_i_1__0 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(CO),
        .I3(arready_pkt),
        .I4(empty_fwft_i),
        .I5(\gpregsm1.curr_fwft_state_reg[1]_1 ),
        .O(\gpregsm1.curr_fwft_state_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \gfwd_rev_pipeline1.m_valid_i_i_2__0 
       (.I0(empty_fwft_i),
        .I1(arready_pkt),
        .I2(CO),
        .O(s_ready_i0__0));
  LUT6 #(
    .INIT(64'h0444040404040404)) 
    \goreg_dm.dout_i[60]_i_1__0 
       (.I0(AR),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(empty_fwft_i),
        .I4(arready_pkt),
        .I5(CO),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000040FFFFFF)) 
    \gpr1.dout_i[60]_i_1__0 
       (.I0(empty_fwft_i),
        .I1(arready_pkt),
        .I2(CO),
        .I3(curr_fwft_state[0]),
        .I4(curr_fwft_state[1]),
        .I5(\gpregsm1.curr_fwft_state_reg[1]_1 ),
        .O(empty_fwft_i_reg_1));
  LUT5 #(
    .INIT(32'hFFFFF700)) 
    \gpregsm1.curr_fwft_state[0]_i_1__1 
       (.I0(CO),
        .I1(arready_pkt),
        .I2(empty_fwft_i),
        .I3(curr_fwft_state[0]),
        .I4(curr_fwft_state[1]),
        .O(next_fwft_state[0]));
  LUT6 #(
    .INIT(64'hAA2A0000FFFFFFFF)) 
    \gpregsm1.curr_fwft_state[1]_i_1__1 
       (.I0(curr_fwft_state[1]),
        .I1(CO),
        .I2(arready_pkt),
        .I3(empty_fwft_i),
        .I4(curr_fwft_state[0]),
        .I5(\gpregsm1.curr_fwft_state_reg[1]_1 ),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(AR),
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
        .CLR(AR),
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
        .CLR(AR),
        .D(next_fwft_state[0]),
        .Q(user_valid));
  LUT6 #(
    .INIT(64'hF7FFF7F7FFFFFFFF)) 
    i__carry_i_5
       (.I0(CO),
        .I1(arready_pkt),
        .I2(empty_fwft_i),
        .I3(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ),
        .I4(s_axi_rready),
        .I5(\_inferred__0/i__carry ),
        .O(\gfwd_rev_pipeline1.s_ready_i_reg ));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_m00_data_fifo_0_rd_fwft__parameterized0
   (ENB_I,
    E,
    ENB_I_0,
    ENB_I_1,
    ENB_I_2,
    ENB_I_3,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    m_axi_wvalid,
    s_aclk,
    \gpregsm1.user_valid_reg_0 ,
    ENB_dly_D,
    Q,
    out,
    ENB_dly_D_4,
    ENB_dly_D_5,
    ENB_dly_D_6,
    ENB_dly_D_7,
    m_axi_wready);
  output ENB_I;
  output [0:0]E;
  output ENB_I_0;
  output ENB_I_1;
  output ENB_I_2;
  output ENB_I_3;
  output [0:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  output m_axi_wvalid;
  input s_aclk;
  input \gpregsm1.user_valid_reg_0 ;
  input ENB_dly_D;
  input [1:0]Q;
  input out;
  input ENB_dly_D_4;
  input ENB_dly_D_5;
  input ENB_dly_D_6;
  input ENB_dly_D_7;
  input m_axi_wready;

  wire [0:0]E;
  wire ENB_I;
  wire ENB_I_0;
  wire ENB_I_1;
  wire ENB_I_2;
  wire ENB_I_3;
  wire ENB_dly_D;
  wire ENB_dly_D_4;
  wire ENB_dly_D_5;
  wire ENB_dly_D_6;
  wire ENB_dly_D_7;
  wire [1:0]Q;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  wire aempty_fwft_fb_i_i_1__0_n_0;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  wire empty_fwft_fb_i_i_1__0_n_0;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i_reg0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire \gpregsm1.user_valid_reg_0 ;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [1:0]next_fwft_state;
  wire [0:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire out;
  wire s_aclk;
  (* DONT_TOUCH *) wire user_valid;
  wire wdch_rd_en__0;

  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1 
       (.I0(ENB_dly_D_7),
        .I1(E),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(out),
        .O(ENB_I_3));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_1 
       (.I0(ENB_dly_D),
        .I1(E),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(out),
        .O(ENB_I));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_1__0 
       (.I0(ENB_dly_D_4),
        .I1(E),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(out),
        .O(ENB_I_0));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_1__1 
       (.I0(ENB_dly_D_5),
        .I1(E),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(out),
        .O(ENB_I_1));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_1__2 
       (.I0(ENB_dly_D_6),
        .I1(E),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(out),
        .O(ENB_I_2));
  LUT6 #(
    .INIT(64'hFFFAFFEFEAAAAAAA)) 
    aempty_fwft_fb_i_i_1__0
       (.I0(\gpregsm1.user_valid_reg_0 ),
        .I1(wdch_rd_en__0),
        .I2(curr_fwft_state[0]),
        .I3(out),
        .I4(curr_fwft_state[1]),
        .I5(aempty_fwft_fb_i),
        .O(aempty_fwft_fb_i_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    aempty_fwft_fb_i_i_2
       (.I0(m_axi_wready),
        .I1(empty_fwft_fb_o_i),
        .O(wdch_rd_en__0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(aempty_fwft_fb_i_i_1__0_n_0),
        .Q(aempty_fwft_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(aempty_fwft_fb_i_i_1__0_n_0),
        .Q(aempty_fwft_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF0F0F0FFF4FFF0)) 
    empty_fwft_fb_i_i_1__0
       (.I0(empty_fwft_fb_o_i),
        .I1(m_axi_wready),
        .I2(\gpregsm1.user_valid_reg_0 ),
        .I3(empty_fwft_fb_i),
        .I4(curr_fwft_state[0]),
        .I5(curr_fwft_state[1]),
        .O(empty_fwft_fb_i_i_1__0_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_i_i_1__0_n_0),
        .Q(empty_fwft_fb_i),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hC0EC)) 
    empty_fwft_fb_o_i_i_1__0
       (.I0(m_axi_wready),
        .I1(empty_fwft_fb_o_i),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
        .O(empty_fwft_fb_o_i_reg0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i_reg0),
        .Q(empty_fwft_fb_o_i),
        .S(\gpregsm1.user_valid_reg_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_i_i_1__0_n_0),
        .Q(empty_fwft_i),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00007F77)) 
    \gc0.count_d1[8]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(empty_fwft_fb_o_i),
        .I3(m_axi_wready),
        .I4(out),
        .O(E));
  LUT6 #(
    .INIT(64'h0010001010100010)) 
    \goreg_bm.dout_i[289]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .I4(m_axi_wready),
        .I5(empty_fwft_fb_o_i),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  LUT4 #(
    .INIT(16'hFFB0)) 
    \gpregsm1.curr_fwft_state[0]_i_1__0 
       (.I0(empty_fwft_fb_o_i),
        .I1(m_axi_wready),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
        .O(next_fwft_state[0]));
  LUT5 #(
    .INIT(32'hB000FFFF)) 
    \gpregsm1.curr_fwft_state[1]_i_2 
       (.I0(empty_fwft_fb_o_i),
        .I1(m_axi_wready),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .I4(out),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]),
        .R(\gpregsm1.user_valid_reg_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]),
        .R(\gpregsm1.user_valid_reg_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(user_valid),
        .R(\gpregsm1.user_valid_reg_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_wvalid_INST_0
       (.I0(empty_fwft_i),
        .O(m_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_m00_data_fifo_0_rd_fwft__parameterized0_9
   (out,
    rd_fifo_free_space11_out__0,
    ENB_I,
    E,
    ENB_I_0,
    ENB_I_1,
    ENB_I_2,
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ,
    S,
    s_axi_rvalid,
    s_aclk,
    \gpregsm1.user_valid_reg_0 ,
    s_axi_rready,
    CO,
    arready_pkt,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ,
    ENB_dly_D,
    Q,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ,
    ENB_dly_D_3,
    ENB_dly_D_4,
    ENB_dly_D_5,
    \_inferred__0/i__carry__1 );
  output out;
  output rd_fifo_free_space11_out__0;
  output ENB_I;
  output [0:0]E;
  output ENB_I_0;
  output ENB_I_1;
  output ENB_I_2;
  output [0:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  output [0:0]S;
  output s_axi_rvalid;
  input s_aclk;
  input \gpregsm1.user_valid_reg_0 ;
  input s_axi_rready;
  input [0:0]CO;
  input arready_pkt;
  input \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  input ENB_dly_D;
  input [1:0]Q;
  input \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  input ENB_dly_D_3;
  input ENB_dly_D_4;
  input ENB_dly_D_5;
  input [0:0]\_inferred__0/i__carry__1 ;

  wire [0:0]CO;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ;
  wire [0:0]E;
  wire ENB_I;
  wire ENB_I_0;
  wire ENB_I_1;
  wire ENB_I_2;
  wire ENB_dly_D;
  wire ENB_dly_D_3;
  wire ENB_dly_D_4;
  wire ENB_dly_D_5;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]\_inferred__0/i__carry__1 ;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  wire aempty_fwft_fb_i_i_1__2_n_0;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire arready_pkt;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  wire empty_fwft_fb_i_i_1__2_n_0;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i_reg0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  wire \gpregsm1.user_valid_reg_0 ;
  wire [1:0]next_fwft_state;
  wire [0:0]\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ;
  wire rd_fifo_free_space11_out__0;
  wire rdch_rd_en__0;
  wire s_aclk;
  wire s_axi_rready;
  wire s_axi_rvalid;
  (* DONT_TOUCH *) wire user_valid;

  assign out = empty_fwft_fb_o_i;
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_1__3 
       (.I0(ENB_dly_D),
        .I1(E),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .O(ENB_I));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_1__4 
       (.I0(ENB_dly_D_3),
        .I1(E),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .O(ENB_I_0));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_1__5 
       (.I0(ENB_dly_D_4),
        .I1(E),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .O(ENB_I_1));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_1__6 
       (.I0(ENB_dly_D_5),
        .I1(E),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .O(ENB_I_2));
  LUT6 #(
    .INIT(64'hFFFAFFEFEAAAAAAA)) 
    aempty_fwft_fb_i_i_1__2
       (.I0(\gpregsm1.user_valid_reg_0 ),
        .I1(rdch_rd_en__0),
        .I2(curr_fwft_state[0]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .I4(curr_fwft_state[1]),
        .I5(aempty_fwft_fb_i),
        .O(aempty_fwft_fb_i_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    aempty_fwft_fb_i_i_2__0
       (.I0(s_axi_rready),
        .I1(empty_fwft_fb_o_i),
        .O(rdch_rd_en__0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(aempty_fwft_fb_i_i_1__2_n_0),
        .Q(aempty_fwft_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(aempty_fwft_fb_i_i_1__2_n_0),
        .Q(aempty_fwft_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF0F0F0FFF4FFF0)) 
    empty_fwft_fb_i_i_1__2
       (.I0(empty_fwft_fb_o_i),
        .I1(s_axi_rready),
        .I2(\gpregsm1.user_valid_reg_0 ),
        .I3(empty_fwft_fb_i),
        .I4(curr_fwft_state[0]),
        .I5(curr_fwft_state[1]),
        .O(empty_fwft_fb_i_i_1__2_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_i_i_1__2_n_0),
        .Q(empty_fwft_fb_i),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hC0EC)) 
    empty_fwft_fb_o_i_i_1__2
       (.I0(s_axi_rready),
        .I1(empty_fwft_fb_o_i),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
        .O(empty_fwft_fb_o_i_reg0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i_reg0),
        .Q(empty_fwft_fb_o_i),
        .S(\gpregsm1.user_valid_reg_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_fb_i_i_1__2_n_0),
        .Q(empty_fwft_i),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5 
       (.I0(empty_fwft_fb_o_i),
        .I1(s_axi_rready),
        .I2(CO),
        .I3(arready_pkt),
        .I4(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ),
        .O(rd_fifo_free_space11_out__0));
  LUT5 #(
    .INIT(32'h00007F77)) 
    \gc0.count_d1[8]_i_1__0 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(empty_fwft_fb_o_i),
        .I3(s_axi_rready),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .O(E));
  LUT6 #(
    .INIT(64'h0010001010100010)) 
    \goreg_bm.dout_i[260]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .I4(s_axi_rready),
        .I5(empty_fwft_fb_o_i),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] ));
  LUT4 #(
    .INIT(16'hFFB0)) 
    \gpregsm1.curr_fwft_state[0]_i_1__2 
       (.I0(empty_fwft_fb_o_i),
        .I1(s_axi_rready),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
        .O(next_fwft_state[0]));
  LUT5 #(
    .INIT(32'hB000FFFF)) 
    \gpregsm1.curr_fwft_state[1]_i_2__0 
       (.I0(empty_fwft_fb_o_i),
        .I1(s_axi_rready),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram ),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]),
        .R(\gpregsm1.user_valid_reg_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]),
        .R(\gpregsm1.user_valid_reg_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_fwft_state[0]),
        .Q(user_valid),
        .R(\gpregsm1.user_valid_reg_0 ));
  LUT6 #(
    .INIT(64'hF2FFFFFF0D000000)) 
    i__carry__1_i_1
       (.I0(s_axi_rready),
        .I1(empty_fwft_fb_o_i),
        .I2(\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ),
        .I3(arready_pkt),
        .I4(CO),
        .I5(\_inferred__0/i__carry__1 ),
        .O(S));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_rvalid_INST_0
       (.I0(empty_fwft_i),
        .O(s_axi_rvalid));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_m00_data_fifo_0_rd_logic
   (out,
    empty_fwft_i_reg,
    E,
    ram_rd_en,
    comp0,
    \gc0.count_d1_reg[4] ,
    D,
    s_aclk,
    AR,
    Q,
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4] ,
    s_axi_wvalid,
    DIADI,
    ram_empty_fb_i_reg,
    awready_pkt,
    ram_empty_fb_i_i_4,
    DI,
    S,
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ,
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] );
  output [1:0]out;
  output empty_fwft_i_reg;
  output [0:0]E;
  output ram_rd_en;
  output comp0;
  output [4:0]\gc0.count_d1_reg[4] ;
  output [8:0]D;
  input s_aclk;
  input [0:0]AR;
  input [9:0]Q;
  input \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4] ;
  input s_axi_wvalid;
  input [0:0]DIADI;
  input [0:0]ram_empty_fb_i_reg;
  input awready_pkt;
  input [4:0]ram_empty_fb_i_i_4;
  input [0:0]DI;
  input [2:0]S;
  input [3:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ;
  input [0:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] ;

  wire [0:0]AR;
  wire [8:0]D;
  wire [0:0]DI;
  wire [0:0]DIADI;
  wire [0:0]E;
  wire [9:0]Q;
  wire [2:0]S;
  wire awready_pkt;
  wire comp0;
  wire empty_fb_i;
  wire empty_fwft_i_reg;
  wire \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4] ;
  wire [3:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ;
  wire [0:0]\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] ;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [1:0]out;
  wire [4:0]ram_empty_fb_i_i_4;
  wire [0:0]ram_empty_fb_i_reg;
  wire ram_rd_en;
  wire rpntr_n_0;
  wire s_aclk;
  wire s_axi_wvalid;

  design_1_m00_data_fifo_0_rd_fwft \gr1.gr1_int.rfwft 
       (.AR(AR),
        .D(D),
        .DI(DI),
        .DIADI(DIADI),
        .E(E),
        .Q(Q),
        .S(S),
        .awready_pkt(awready_pkt),
        .empty_fwft_i_reg_0(empty_fwft_i_reg),
        .\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4] (\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4] ),
        .\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] (\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8] ),
        .\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] (\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9] ),
        .\gpregsm1.curr_fwft_state_reg[1]_0 (ram_rd_en),
        .\gpregsm1.curr_fwft_state_reg[1]_1 (empty_fb_i),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_wvalid(s_axi_wvalid));
  design_1_m00_data_fifo_0_rd_status_flags_ss \grss.rsts 
       (.AR(AR),
        .out(empty_fb_i),
        .ram_empty_fb_i_reg_0(rpntr_n_0),
        .s_aclk(s_aclk));
  design_1_m00_data_fifo_0_rd_bin_cntr rpntr
       (.AR(AR),
        .E(ram_rd_en),
        .comp0(comp0),
        .\gc0.count_d1_reg[4]_0 (\gc0.count_d1_reg[4] ),
        .out(empty_fb_i),
        .ram_empty_fb_i_i_4_0(ram_empty_fb_i_i_4),
        .ram_empty_fb_i_reg(rpntr_n_0),
        .ram_empty_fb_i_reg_0(ram_empty_fb_i_reg),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_m00_data_fifo_0_rd_logic_14
   (out,
    E,
    empty_fwft_i_reg,
    s_ready_i0__0,
    empty_fwft_i_reg_0,
    comp0,
    \gpregsm1.curr_fwft_state_reg[1] ,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ,
    \gc0.count_d1_reg[4] ,
    \gfwd_rev_pipeline1.s_ready_i_reg ,
    s_aclk,
    AR,
    arready_pkt,
    CO,
    s_axi_rready,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ,
    ram_empty_fb_i_reg,
    Q,
    ram_empty_fb_i_i_4__0,
    \_inferred__0/i__carry );
  output out;
  output [0:0]E;
  output [0:0]empty_fwft_i_reg;
  output s_ready_i0__0;
  output [0:0]empty_fwft_i_reg_0;
  output comp0;
  output [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  output [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ;
  output [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ;
  output [4:0]\gc0.count_d1_reg[4] ;
  output [0:0]\gfwd_rev_pipeline1.s_ready_i_reg ;
  input s_aclk;
  input [0:0]AR;
  input arready_pkt;
  input [0:0]CO;
  input s_axi_rready;
  input \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  input [0:0]ram_empty_fb_i_reg;
  input [1:0]Q;
  input [4:0]ram_empty_fb_i_i_4__0;
  input [0:0]\_inferred__0/i__carry ;

  wire [0:0]AR;
  wire [0:0]CO;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]\_inferred__0/i__carry ;
  wire arready_pkt;
  wire comp0;
  wire empty_fb_i;
  wire [0:0]empty_fwft_i_reg;
  wire [0:0]empty_fwft_i_reg_0;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  wire [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ;
  wire [0:0]\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [0:0]\gfwd_rev_pipeline1.s_ready_i_reg ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire out;
  wire [4:0]ram_empty_fb_i_i_4__0;
  wire [0:0]ram_empty_fb_i_reg;
  wire rpntr_n_0;
  wire s_aclk;
  wire s_axi_rready;
  wire s_ready_i0__0;

  design_1_m00_data_fifo_0_rd_fwft_20 \gr1.gr1_int.rfwft 
       (.AR(AR),
        .CO(CO),
        .E(E),
        .Q(Q),
        .\_inferred__0/i__carry (\_inferred__0/i__carry ),
        .arready_pkt(arready_pkt),
        .empty_fwft_i_reg_0(empty_fwft_i_reg),
        .empty_fwft_i_reg_1(empty_fwft_i_reg_0),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] (\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] (\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8] ),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] (\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9] ),
        .\gfwd_rev_pipeline1.s_ready_i_reg (\gfwd_rev_pipeline1.s_ready_i_reg ),
        .\gpregsm1.curr_fwft_state_reg[1]_0 (\gpregsm1.curr_fwft_state_reg[1] ),
        .\gpregsm1.curr_fwft_state_reg[1]_1 (empty_fb_i),
        .out(out),
        .s_aclk(s_aclk),
        .s_axi_rready(s_axi_rready),
        .s_ready_i0__0(s_ready_i0__0));
  design_1_m00_data_fifo_0_rd_status_flags_ss_21 \grss.rsts 
       (.AR(AR),
        .out(empty_fb_i),
        .ram_empty_fb_i_reg_0(rpntr_n_0),
        .s_aclk(s_aclk));
  design_1_m00_data_fifo_0_rd_bin_cntr_22 rpntr
       (.AR(AR),
        .E(\gpregsm1.curr_fwft_state_reg[1] ),
        .comp0(comp0),
        .\gc0.count_d1_reg[4]_0 (\gc0.count_d1_reg[4] ),
        .out(empty_fb_i),
        .ram_empty_fb_i_i_4__0_0(ram_empty_fb_i_i_4__0),
        .ram_empty_fb_i_reg(rpntr_n_0),
        .ram_empty_fb_i_reg_0(ram_empty_fb_i_reg),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_m00_data_fifo_0_rd_logic__parameterized0
   (ENB_I,
    ram_rd_en,
    ENB_I_0,
    ENB_I_1,
    ENB_I_2,
    ENB_I_3,
    E,
    \gc0.count_reg[8] ,
    m_axi_wvalid,
    \gc0.count_d1_reg[8] ,
    \gmux.gm[1].gms.ms ,
    \gmux.gm[2].gms.ms ,
    \gmux.gm[3].gms.ms ,
    \gmux.gm[4].gms.ms ,
    ram_empty_i_reg,
    v1_reg,
    s_aclk,
    \gc0.count_reg[0] ,
    ENB_dly_D,
    Q,
    ENB_dly_D_4,
    ENB_dly_D_5,
    ENB_dly_D_6,
    ENB_dly_D_7,
    m_axi_wready,
    ram_empty_i_reg_0);
  output ENB_I;
  output ram_rd_en;
  output ENB_I_0;
  output ENB_I_1;
  output ENB_I_2;
  output ENB_I_3;
  output [0:0]E;
  output [8:0]\gc0.count_reg[8] ;
  output m_axi_wvalid;
  output [8:0]\gc0.count_d1_reg[8] ;
  input \gmux.gm[1].gms.ms ;
  input \gmux.gm[2].gms.ms ;
  input \gmux.gm[3].gms.ms ;
  input \gmux.gm[4].gms.ms ;
  input ram_empty_i_reg;
  input [4:0]v1_reg;
  input s_aclk;
  input \gc0.count_reg[0] ;
  input ENB_dly_D;
  input [1:0]Q;
  input ENB_dly_D_4;
  input ENB_dly_D_5;
  input ENB_dly_D_6;
  input ENB_dly_D_7;
  input m_axi_wready;
  input [0:0]ram_empty_i_reg_0;

  wire [0:0]E;
  wire ENB_I;
  wire ENB_I_0;
  wire ENB_I_1;
  wire ENB_I_2;
  wire ENB_I_3;
  wire ENB_dly_D;
  wire ENB_dly_D_4;
  wire ENB_dly_D_5;
  wire ENB_dly_D_6;
  wire ENB_dly_D_7;
  wire [1:0]Q;
  wire empty_fb_i;
  wire [8:0]\gc0.count_d1_reg[8] ;
  wire \gc0.count_reg[0] ;
  wire [8:0]\gc0.count_reg[8] ;
  wire \gmux.gm[1].gms.ms ;
  wire \gmux.gm[2].gms.ms ;
  wire \gmux.gm[3].gms.ms ;
  wire \gmux.gm[4].gms.ms ;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire ram_empty_i_reg;
  wire [0:0]ram_empty_i_reg_0;
  wire ram_rd_en;
  wire s_aclk;
  wire [4:0]v1_reg;

  design_1_m00_data_fifo_0_rd_fwft__parameterized0 \gr1.gr1_int.rfwft 
       (.E(ram_rd_en),
        .ENB_I(ENB_I),
        .ENB_I_0(ENB_I_0),
        .ENB_I_1(ENB_I_1),
        .ENB_I_2(ENB_I_2),
        .ENB_I_3(ENB_I_3),
        .ENB_dly_D(ENB_dly_D),
        .ENB_dly_D_4(ENB_dly_D_4),
        .ENB_dly_D_5(ENB_dly_D_5),
        .ENB_dly_D_6(ENB_dly_D_6),
        .ENB_dly_D_7(ENB_dly_D_7),
        .Q(Q),
        .\gpregsm1.user_valid_reg_0 (\gc0.count_reg[0] ),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (E),
        .out(empty_fb_i),
        .s_aclk(s_aclk));
  design_1_m00_data_fifo_0_rd_status_flags_ss__parameterized0 \grss.rsts 
       (.E(ram_rd_en),
        .\gmux.gm[1].gms.ms (\gmux.gm[1].gms.ms ),
        .\gmux.gm[2].gms.ms (\gmux.gm[2].gms.ms ),
        .\gmux.gm[3].gms.ms (\gmux.gm[3].gms.ms ),
        .\gmux.gm[4].gms.ms (\gmux.gm[4].gms.ms ),
        .out(empty_fb_i),
        .ram_empty_i_reg_0(ram_empty_i_reg),
        .ram_empty_i_reg_1(\gc0.count_reg[0] ),
        .ram_empty_i_reg_2(ram_empty_i_reg_0),
        .s_aclk(s_aclk),
        .v1_reg(v1_reg));
  design_1_m00_data_fifo_0_rd_bin_cntr__parameterized0 rpntr
       (.E(ram_rd_en),
        .Q(\gc0.count_reg[8] ),
        .\gc0.count_d1_reg[8]_0 (\gc0.count_d1_reg[8] ),
        .\gc0.count_reg[0]_0 (\gc0.count_reg[0] ),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_m00_data_fifo_0_rd_logic__parameterized0_3
   (out,
    rd_fifo_free_space11_out__0,
    ENB_I,
    ram_rd_en,
    ENB_I_0,
    ENB_I_1,
    ENB_I_2,
    E,
    \gc0.count_reg[8] ,
    S,
    s_axi_rvalid,
    \gc0.count_d1_reg[8] ,
    \gmux.gm[1].gms.ms ,
    \gmux.gm[2].gms.ms ,
    \gmux.gm[3].gms.ms ,
    \gmux.gm[4].gms.ms ,
    ram_empty_i_reg,
    v1_reg,
    s_aclk,
    \gc0.count_d1_reg[8]_0 ,
    s_axi_rready,
    CO,
    arready_pkt,
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ,
    ENB_dly_D,
    Q,
    ENB_dly_D_3,
    ENB_dly_D_4,
    ENB_dly_D_5,
    ram_empty_i_reg_0,
    \_inferred__0/i__carry__1 );
  output out;
  output rd_fifo_free_space11_out__0;
  output ENB_I;
  output ram_rd_en;
  output ENB_I_0;
  output ENB_I_1;
  output ENB_I_2;
  output [0:0]E;
  output [8:0]\gc0.count_reg[8] ;
  output [0:0]S;
  output s_axi_rvalid;
  output [8:0]\gc0.count_d1_reg[8] ;
  input \gmux.gm[1].gms.ms ;
  input \gmux.gm[2].gms.ms ;
  input \gmux.gm[3].gms.ms ;
  input \gmux.gm[4].gms.ms ;
  input ram_empty_i_reg;
  input [4:0]v1_reg;
  input s_aclk;
  input \gc0.count_d1_reg[8]_0 ;
  input s_axi_rready;
  input [0:0]CO;
  input arready_pkt;
  input \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  input ENB_dly_D;
  input [1:0]Q;
  input ENB_dly_D_3;
  input ENB_dly_D_4;
  input ENB_dly_D_5;
  input [0:0]ram_empty_i_reg_0;
  input [0:0]\_inferred__0/i__carry__1 ;

  wire [0:0]CO;
  wire [0:0]E;
  wire ENB_I;
  wire ENB_I_0;
  wire ENB_I_1;
  wire ENB_I_2;
  wire ENB_dly_D;
  wire ENB_dly_D_3;
  wire ENB_dly_D_4;
  wire ENB_dly_D_5;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]\_inferred__0/i__carry__1 ;
  wire arready_pkt;
  wire empty_fb_i;
  wire \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ;
  wire [8:0]\gc0.count_d1_reg[8] ;
  wire \gc0.count_d1_reg[8]_0 ;
  wire [8:0]\gc0.count_reg[8] ;
  wire \gmux.gm[1].gms.ms ;
  wire \gmux.gm[2].gms.ms ;
  wire \gmux.gm[3].gms.ms ;
  wire \gmux.gm[4].gms.ms ;
  wire out;
  wire ram_empty_i_reg;
  wire [0:0]ram_empty_i_reg_0;
  wire ram_rd_en;
  wire rd_fifo_free_space11_out__0;
  wire s_aclk;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [4:0]v1_reg;

  design_1_m00_data_fifo_0_rd_fwft__parameterized0_9 \gr1.gr1_int.rfwft 
       (.CO(CO),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram (empty_fb_i),
        .E(ram_rd_en),
        .ENB_I(ENB_I),
        .ENB_I_0(ENB_I_0),
        .ENB_I_1(ENB_I_1),
        .ENB_I_2(ENB_I_2),
        .ENB_dly_D(ENB_dly_D),
        .ENB_dly_D_3(ENB_dly_D_3),
        .ENB_dly_D_4(ENB_dly_D_4),
        .ENB_dly_D_5(ENB_dly_D_5),
        .Q(Q),
        .S(S),
        .\_inferred__0/i__carry__1 (\_inferred__0/i__carry__1 ),
        .arready_pkt(arready_pkt),
        .\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] (\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0] ),
        .\gpregsm1.user_valid_reg_0 (\gc0.count_d1_reg[8]_0 ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] (E),
        .out(out),
        .rd_fifo_free_space11_out__0(rd_fifo_free_space11_out__0),
        .s_aclk(s_aclk),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
  design_1_m00_data_fifo_0_rd_status_flags_ss__parameterized0_10 \grss.rsts 
       (.E(ram_rd_en),
        .\gmux.gm[1].gms.ms (\gmux.gm[1].gms.ms ),
        .\gmux.gm[2].gms.ms (\gmux.gm[2].gms.ms ),
        .\gmux.gm[3].gms.ms (\gmux.gm[3].gms.ms ),
        .\gmux.gm[4].gms.ms (\gmux.gm[4].gms.ms ),
        .out(empty_fb_i),
        .ram_empty_i_reg_0(ram_empty_i_reg),
        .ram_empty_i_reg_1(\gc0.count_d1_reg[8]_0 ),
        .ram_empty_i_reg_2(ram_empty_i_reg_0),
        .s_aclk(s_aclk),
        .v1_reg(v1_reg));
  design_1_m00_data_fifo_0_rd_bin_cntr__parameterized0_11 rpntr
       (.E(ram_rd_en),
        .Q(\gc0.count_reg[8] ),
        .\gc0.count_d1_reg[8]_0 (\gc0.count_d1_reg[8] ),
        .\gc0.count_d1_reg[8]_1 (\gc0.count_d1_reg[8]_0 ),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module design_1_m00_data_fifo_0_rd_status_flags_ss
   (out,
    ram_empty_fb_i_reg_0,
    s_aclk,
    AR);
  output out;
  input ram_empty_fb_i_reg_0;
  input s_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  wire ram_empty_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_empty_i;
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
        .D(ram_empty_fb_i_reg_0),
        .PRE(AR),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_empty_fb_i_reg_0),
        .PRE(AR),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module design_1_m00_data_fifo_0_rd_status_flags_ss_21
   (out,
    ram_empty_fb_i_reg_0,
    s_aclk,
    AR);
  output out;
  input ram_empty_fb_i_reg_0;
  input s_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  wire ram_empty_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_empty_i;
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
        .D(ram_empty_fb_i_reg_0),
        .PRE(AR),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_empty_fb_i_reg_0),
        .PRE(AR),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module design_1_m00_data_fifo_0_rd_status_flags_ss__parameterized0
   (out,
    \gmux.gm[1].gms.ms ,
    \gmux.gm[2].gms.ms ,
    \gmux.gm[3].gms.ms ,
    \gmux.gm[4].gms.ms ,
    ram_empty_i_reg_0,
    v1_reg,
    s_aclk,
    ram_empty_i_reg_1,
    E,
    ram_empty_i_reg_2);
  output out;
  input \gmux.gm[1].gms.ms ;
  input \gmux.gm[2].gms.ms ;
  input \gmux.gm[3].gms.ms ;
  input \gmux.gm[4].gms.ms ;
  input ram_empty_i_reg_0;
  input [4:0]v1_reg;
  input s_aclk;
  input ram_empty_i_reg_1;
  input [0:0]E;
  input [0:0]ram_empty_i_reg_2;

  wire [0:0]E;
  wire c1_n_0;
  wire comp1;
  wire \gmux.gm[1].gms.ms ;
  wire \gmux.gm[2].gms.ms ;
  wire \gmux.gm[3].gms.ms ;
  wire \gmux.gm[4].gms.ms ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;
  wire [0:0]ram_empty_i_reg_2;
  wire s_aclk;
  wire [4:0]v1_reg;

  assign out = ram_empty_fb_i;
  design_1_m00_data_fifo_0_compare__parameterized0_1 c1
       (.E(E),
        .comp1(comp1),
        .\gmux.gm[1].gms.ms_0 (\gmux.gm[1].gms.ms ),
        .\gmux.gm[2].gms.ms_0 (\gmux.gm[2].gms.ms ),
        .\gmux.gm[3].gms.ms_0 (\gmux.gm[3].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms ),
        .out(ram_empty_fb_i),
        .ram_empty_fb_i_reg(c1_n_0),
        .ram_empty_i_reg(ram_empty_i_reg_0),
        .ram_empty_i_reg_0(ram_empty_i_reg_1),
        .ram_empty_i_reg_1(ram_empty_i_reg_2));
  design_1_m00_data_fifo_0_compare__parameterized0_2 c2
       (.comp1(comp1),
        .v1_reg(v1_reg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(c1_n_0),
        .Q(ram_empty_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(c1_n_0),
        .Q(ram_empty_i),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module design_1_m00_data_fifo_0_rd_status_flags_ss__parameterized0_10
   (out,
    \gmux.gm[1].gms.ms ,
    \gmux.gm[2].gms.ms ,
    \gmux.gm[3].gms.ms ,
    \gmux.gm[4].gms.ms ,
    ram_empty_i_reg_0,
    v1_reg,
    s_aclk,
    ram_empty_i_reg_1,
    E,
    ram_empty_i_reg_2);
  output out;
  input \gmux.gm[1].gms.ms ;
  input \gmux.gm[2].gms.ms ;
  input \gmux.gm[3].gms.ms ;
  input \gmux.gm[4].gms.ms ;
  input ram_empty_i_reg_0;
  input [4:0]v1_reg;
  input s_aclk;
  input ram_empty_i_reg_1;
  input [0:0]E;
  input [0:0]ram_empty_i_reg_2;

  wire [0:0]E;
  wire c1_n_0;
  wire comp1;
  wire \gmux.gm[1].gms.ms ;
  wire \gmux.gm[2].gms.ms ;
  wire \gmux.gm[3].gms.ms ;
  wire \gmux.gm[4].gms.ms ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;
  wire [0:0]ram_empty_i_reg_2;
  wire s_aclk;
  wire [4:0]v1_reg;

  assign out = ram_empty_fb_i;
  design_1_m00_data_fifo_0_compare__parameterized0_12 c1
       (.E(E),
        .comp1(comp1),
        .\gmux.gm[1].gms.ms_0 (\gmux.gm[1].gms.ms ),
        .\gmux.gm[2].gms.ms_0 (\gmux.gm[2].gms.ms ),
        .\gmux.gm[3].gms.ms_0 (\gmux.gm[3].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms ),
        .out(ram_empty_fb_i),
        .ram_empty_fb_i_reg(c1_n_0),
        .ram_empty_i_reg(ram_empty_i_reg_0),
        .ram_empty_i_reg_0(ram_empty_i_reg_1),
        .ram_empty_i_reg_1(ram_empty_i_reg_2));
  design_1_m00_data_fifo_0_compare__parameterized0_13 c2
       (.comp1(comp1),
        .v1_reg(v1_reg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(c1_n_0),
        .Q(ram_empty_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(c1_n_0),
        .Q(ram_empty_i),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_m00_data_fifo_0_reset_blk_ramfifo
   (AR,
    src_rst,
    s_aclk);
  output [0:0]AR;
  input src_rst;
  input s_aclk;

  wire [0:0]AR;
  wire \grstd1.grst_full.grst_f.rst_d1_i_1_n_0 ;
  (* DONT_TOUCH *) wire [1:0]rd_rst_reg;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  wire rst_d30;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d4;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d5;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d6;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d7;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire s_aclk;
  wire [3:0]sckt_wr_rst_cc;
  wire src_rst;
  (* DONT_TOUCH *) wire [1:0]wr_rst_reg;

  LUT3 #(
    .INIT(8'hFE)) 
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_3 
       (.I0(sckt_wr_rst_cc[1]),
        .I1(sckt_wr_rst_cc[0]),
        .I2(rst_wr_reg2),
        .O(AR));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \grstd1.grst_full.grst_f.rst_d1_i_1 
       (.I0(sckt_wr_rst_cc[2]),
        .I1(sckt_wr_rst_cc[3]),
        .I2(sckt_wr_rst_cc[0]),
        .I3(sckt_wr_rst_cc[1]),
        .I4(rst_wr_reg2),
        .O(\grstd1.grst_full.grst_f.rst_d1_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d1_i_1_n_0 ),
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
  LUT4 #(
    .INIT(16'hFFFE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1 
       (.I0(rst_d2),
        .I1(rst_wr_reg2),
        .I2(sckt_wr_rst_cc[0]),
        .I3(sckt_wr_rst_cc[1]),
        .O(rst_d30));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d30),
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
        .O(wr_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(wr_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(rd_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b1),
        .O(rd_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(rst_wr_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(rst_rd_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(rst_rd_reg2));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b1),
        .O(rst_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b1),
        .O(rst_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b1),
        .O(rst_d7));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_wr_reg2),
        .Q(sckt_wr_rst_cc[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(sckt_wr_rst_cc[0]),
        .Q(sckt_wr_rst_cc[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(sckt_wr_rst_cc[1]),
        .Q(sckt_wr_rst_cc[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(sckt_wr_rst_cc[2]),
        .Q(sckt_wr_rst_cc[3]),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_m00_data_fifo_0_xpm_cdc_async_rst__3 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(s_aclk),
        .src_arst(src_rst));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_m00_data_fifo_0_reset_blk_ramfifo__parameterized0
   (out,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    AR,
    src_rst,
    s_aclk);
  output out;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  output [0:0]AR;
  input src_rst;
  input s_aclk;

  wire [0:0]AR;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  wire rst_d30;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d4;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d5;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d6;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d7;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire s_aclk;
  wire src_rst;
  wire wr_rst_busy_rach;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;

  assign \grstd1.grst_full.grst_f.rst_d3_reg_0  = rst_d3;
  assign out = rst_d2;
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \grstd1.grst_full.grst_f.rst_d1_i_1__2 
       (.I0(rst_wr_reg2),
        .I1(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .I2(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ),
        .I3(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .I4(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .O(wr_rst_busy_rach));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(wr_rst_busy_rach),
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
  LUT4 #(
    .INIT(16'hFFFE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1__3 
       (.I0(rst_d2),
        .I1(rst_wr_reg2),
        .I2(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .I3(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .O(rst_d30));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d30),
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
        .O(rst_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
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
       (.I0(1'b0),
        .O(rst_rd_reg2));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b1),
        .O(rst_d5));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_wr_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_m00_data_fifo_0_xpm_cdc_async_rst__6 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(s_aclk),
        .src_arst(src_rst));
  LUT3 #(
    .INIT(8'hFE)) 
    ram_empty_fb_i_i_2__0
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .I1(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .I2(rst_wr_reg2),
        .O(AR));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_m00_data_fifo_0_reset_blk_ramfifo__parameterized0__xdcDup__1
   (out,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    E,
    AR,
    src_rst,
    s_aclk,
    \goreg_dm.dout_i_reg[60] ,
    \goreg_dm.dout_i_reg[60]_0 );
  output out;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  output [0:0]E;
  output [0:0]AR;
  input src_rst;
  input s_aclk;
  input [1:0]\goreg_dm.dout_i_reg[60] ;
  input \goreg_dm.dout_i_reg[60]_0 ;

  wire [0:0]AR;
  wire [0:0]E;
  wire [1:0]\goreg_dm.dout_i_reg[60] ;
  wire \goreg_dm.dout_i_reg[60]_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  wire rst_d30;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d4;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d5;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d6;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d7;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire s_aclk;
  wire src_rst;
  wire wr_rst_busy_wach;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;

  assign \grstd1.grst_full.grst_f.rst_d3_reg_0  = rst_d3;
  assign out = rst_d2;
  LUT6 #(
    .INIT(64'h0100010000000100)) 
    \goreg_dm.dout_i[60]_i_1 
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .I1(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .I2(rst_wr_reg2),
        .I3(\goreg_dm.dout_i_reg[60] [1]),
        .I4(\goreg_dm.dout_i_reg[60] [0]),
        .I5(\goreg_dm.dout_i_reg[60]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \grstd1.grst_full.grst_f.rst_d1_i_1__0 
       (.I0(rst_wr_reg2),
        .I1(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .I2(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ),
        .I3(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .I4(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .O(wr_rst_busy_wach));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(wr_rst_busy_wach),
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
  LUT4 #(
    .INIT(16'hFFFE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1__0 
       (.I0(rst_d2),
        .I1(rst_wr_reg2),
        .I2(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .I3(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .O(rst_d30));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d30),
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
        .O(rst_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
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
       (.I0(1'b0),
        .O(rst_rd_reg2));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b1),
        .O(rst_d5));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_wr_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_m00_data_fifo_0_xpm_cdc_async_rst__4 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(s_aclk),
        .src_arst(src_rst));
  LUT3 #(
    .INIT(8'hFE)) 
    ram_empty_fb_i_i_2
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .I1(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .I2(rst_wr_reg2),
        .O(AR));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_m00_data_fifo_0_reset_blk_ramfifo__parameterized1
   (out,
    \gfwd_rev_pipeline1.s_ready_i_reg ,
    m_axi_arready_0,
    src_rst,
    s_aclk,
    arready_pkt,
    areset_d1,
    m_axi_arready,
    \gfwd_rev_pipeline1.s_ready_i_reg_0 ,
    s_ready_i0__0);
  output out;
  output \gfwd_rev_pipeline1.s_ready_i_reg ;
  output m_axi_arready_0;
  input src_rst;
  input s_aclk;
  input arready_pkt;
  input areset_d1;
  input m_axi_arready;
  input \gfwd_rev_pipeline1.s_ready_i_reg_0 ;
  input s_ready_i0__0;

  wire areset_d1;
  wire arready_pkt;
  wire \gfwd_rev_pipeline1.s_ready_i_reg ;
  wire \gfwd_rev_pipeline1.s_ready_i_reg_0 ;
  wire \grstd1.grst_full.grst_f.rst_d1_i_1__3_n_0 ;
  wire m_axi_arready;
  wire m_axi_arready_0;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_d3;
  wire rst_d30;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_d4;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_d5;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_d6;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_d7;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_wr_reg2;
  wire s_aclk;
  wire s_ready_i0__0;
  wire src_rst;
  (* DONT_TOUCH *) wire [1:0]wr_rst_reg;

  assign out = rst_d2;
  LUT5 #(
    .INIT(32'h33000322)) 
    \gfwd_rev_pipeline1.m_valid_i_i_1__0 
       (.I0(s_ready_i0__0),
        .I1(rst_d30),
        .I2(m_axi_arready),
        .I3(\gfwd_rev_pipeline1.s_ready_i_reg_0 ),
        .I4(areset_d1),
        .O(m_axi_arready_0));
  LUT6 #(
    .INIT(64'h00000000FCCCFEEE)) 
    \gfwd_rev_pipeline1.s_ready_i_i_1__0 
       (.I0(arready_pkt),
        .I1(areset_d1),
        .I2(m_axi_arready),
        .I3(\gfwd_rev_pipeline1.s_ready_i_reg_0 ),
        .I4(s_ready_i0__0),
        .I5(rst_d30),
        .O(\gfwd_rev_pipeline1.s_ready_i_reg ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \grstd1.grst_full.grst_f.rst_d1_i_1__3 
       (.I0(rst_wr_reg2),
        .I1(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .I2(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .I3(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ),
        .I4(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .O(\grstd1.grst_full.grst_f.rst_d1_i_1__3_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "false" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d1_i_1__3_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "false" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1__4 
       (.I0(rst_d2),
        .I1(rst_wr_reg2),
        .I2(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .I3(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .O(rst_d30));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "false" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d30),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "false" *) 
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
        .O(wr_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(wr_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b1),
        .O(rst_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(rd_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b1),
        .O(rd_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b1),
        .O(rd_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(rst_wr_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(rst_rd_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(rst_rd_reg2));
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
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_wr_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_m00_data_fifo_0_xpm_cdc_async_rst \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(s_aclk),
        .src_arst(src_rst));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_m00_data_fifo_0_reset_blk_ramfifo__parameterized1__xdcDup__1
   (out,
    \gfwd_rev_pipeline1.s_ready_i_reg ,
    m_axi_awready_0,
    src_rst,
    s_aclk,
    awready_pkt,
    areset_d1,
    m_axi_awready,
    \gfwd_rev_pipeline1.s_ready_i_reg_0 ,
    s_ready_i0__0);
  output out;
  output \gfwd_rev_pipeline1.s_ready_i_reg ;
  output m_axi_awready_0;
  input src_rst;
  input s_aclk;
  input awready_pkt;
  input areset_d1;
  input m_axi_awready;
  input \gfwd_rev_pipeline1.s_ready_i_reg_0 ;
  input s_ready_i0__0;

  wire areset_d1;
  wire awready_pkt;
  wire \gfwd_rev_pipeline1.s_ready_i_reg ;
  wire \gfwd_rev_pipeline1.s_ready_i_reg_0 ;
  wire \grstd1.grst_full.grst_f.rst_d1_i_1__1_n_0 ;
  wire m_axi_awready;
  wire m_axi_awready_0;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_d3;
  wire rst_d30;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_d4;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_d5;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_d6;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_d7;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "false" *) wire rst_wr_reg2;
  wire s_aclk;
  wire s_ready_i0__0;
  wire src_rst;
  (* DONT_TOUCH *) wire [1:0]wr_rst_reg;

  assign out = rst_d2;
  LUT5 #(
    .INIT(32'h33000322)) 
    \gfwd_rev_pipeline1.m_valid_i_i_1 
       (.I0(s_ready_i0__0),
        .I1(rst_d30),
        .I2(m_axi_awready),
        .I3(\gfwd_rev_pipeline1.s_ready_i_reg_0 ),
        .I4(areset_d1),
        .O(m_axi_awready_0));
  LUT6 #(
    .INIT(64'h00000000FCCCFEEE)) 
    \gfwd_rev_pipeline1.s_ready_i_i_1 
       (.I0(awready_pkt),
        .I1(areset_d1),
        .I2(m_axi_awready),
        .I3(\gfwd_rev_pipeline1.s_ready_i_reg_0 ),
        .I4(s_ready_i0__0),
        .I5(rst_d30),
        .O(\gfwd_rev_pipeline1.s_ready_i_reg ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \grstd1.grst_full.grst_f.rst_d1_i_1__1 
       (.I0(rst_wr_reg2),
        .I1(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .I2(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .I3(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ),
        .I4(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .O(\grstd1.grst_full.grst_f.rst_d1_i_1__1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "false" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d1_i_1__1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "false" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1__1 
       (.I0(rst_d2),
        .I1(rst_wr_reg2),
        .I2(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .I3(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .O(rst_d30));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "false" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d30),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "false" *) 
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
        .O(wr_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(wr_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b1),
        .O(rst_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(rd_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b1),
        .O(rd_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b1),
        .O(rd_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(rst_wr_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(rst_rd_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(rst_rd_reg2));
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
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_wr_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_m00_data_fifo_0_xpm_cdc_async_rst__5 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(s_aclk),
        .src_arst(src_rst));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_m00_data_fifo_0_reset_blk_ramfifo__parameterized2
   (src_rst,
    out,
    Q,
    SR,
    s_aclk,
    s_aresetn);
  output src_rst;
  output out;
  output [1:0]Q;
  output [0:0]SR;
  input s_aclk;
  input s_aresetn;

  wire [1:0]Q;
  wire [0:0]SR;
  wire dest_rst;
  wire \grstd1.grst_full.grst_f.rst_d3_i_1__5_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
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
  wire src_rst;
  wire wr_rst_busy_i;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;

  assign out = rst_d3;
  LUT2 #(
    .INIT(4'hE)) 
    \gpregsm1.curr_fwft_state[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(wr_rst_busy_i),
        .Q(rst_d1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .Q(rst_d2),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1__5 
       (.I0(rst_d2),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\grstd1.grst_full.grst_f.rst_d3_i_1__5_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_i_1__5_n_0 ),
        .Q(rst_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d4_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d3),
        .Q(rst_d4),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(rst_wr_reg2));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(wr_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b1),
        .O(rst_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b1),
        .O(rst_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b1),
        .O(rst_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(wr_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b1),
        .O(wr_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b1),
        .O(rd_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b1),
        .O(rd_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b1),
        .O(rd_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(rst_wr_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(rst_rd_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(rst_rd_reg2));
  LUT1 #(
    .INIT(2'h1)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst_i_1 
       (.I0(s_aresetn),
        .O(src_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(dest_rst),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .Q(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ),
        .R(1'b0));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "5" *) 
  (* INIT = "1" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_m00_data_fifo_0_xpm_cdc_sync_rst \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst 
       (.dest_clk(s_aclk),
        .dest_rst(dest_rst),
        .src_rst(src_rst));
  LUT4 #(
    .INIT(16'hFFFE)) 
    wr_rst_busy_i_inferred_i_1__0
       (.I0(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ),
        .I1(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(wr_rst_busy_i));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_m00_data_fifo_0_reset_blk_ramfifo__parameterized2__xdcDup__1
   (out,
    Q,
    SR,
    src_rst,
    s_aclk);
  output out;
  output [1:0]Q;
  output [0:0]SR;
  input src_rst;
  input s_aclk;

  wire [1:0]Q;
  wire [0:0]SR;
  wire dest_rst;
  wire \grstd1.grst_full.grst_f.rst_d3_i_1__2_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
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
  wire src_rst;
  wire wr_rst_busy_i;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;

  assign out = rst_d3;
  LUT2 #(
    .INIT(4'hE)) 
    \gpregsm1.curr_fwft_state[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(wr_rst_busy_i),
        .Q(rst_d1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .Q(rst_d2),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1__2 
       (.I0(rst_d2),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\grstd1.grst_full.grst_f.rst_d3_i_1__2_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_i_1__2_n_0 ),
        .Q(rst_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d4_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d3),
        .Q(rst_d4),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(rst_wr_reg2));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(wr_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b1),
        .O(rst_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b1),
        .O(rst_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b1),
        .O(rst_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(wr_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b1),
        .O(wr_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b1),
        .O(rd_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b1),
        .O(rd_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b1),
        .O(rd_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(rst_wr_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(rst_rd_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(rst_rd_reg2));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(dest_rst),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .Q(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ),
        .R(1'b0));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "5" *) 
  (* INIT = "1" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_m00_data_fifo_0_xpm_cdc_sync_rst__2 \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst 
       (.dest_clk(s_aclk),
        .dest_rst(dest_rst),
        .src_rst(src_rst));
  LUT4 #(
    .INIT(16'hFFFE)) 
    wr_rst_busy_i_inferred_i_1
       (.I0(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3] ),
        .I1(\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(wr_rst_busy_i));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_m00_data_fifo_0_wr_bin_cntr
   (comp1,
    Q,
    PNTR,
    E,
    s_aclk,
    AR);
  output comp1;
  output [4:0]Q;
  input [4:0]PNTR;
  input [0:0]E;
  input s_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [4:0]PNTR;
  wire [4:0]Q;
  wire comp1;
  wire [4:0]plusOp__0;
  wire ram_full_fb_i_i_3_n_0;
  wire s_aclk;
  wire [4:0]wr_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(wr_pntr_plus1[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(wr_pntr_plus1[0]),
        .I1(wr_pntr_plus1[1]),
        .O(plusOp__0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(wr_pntr_plus1[0]),
        .I1(wr_pntr_plus1[1]),
        .I2(wr_pntr_plus1[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(wr_pntr_plus1[1]),
        .I1(wr_pntr_plus1[0]),
        .I2(wr_pntr_plus1[2]),
        .I3(wr_pntr_plus1[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(wr_pntr_plus1[2]),
        .I1(wr_pntr_plus1[0]),
        .I2(wr_pntr_plus1[1]),
        .I3(wr_pntr_plus1[3]),
        .I4(wr_pntr_plus1[4]),
        .O(plusOp__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[4]),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(AR),
        .Q(wr_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[1]),
        .Q(wr_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[2]),
        .Q(wr_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[3]),
        .Q(wr_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[4]),
        .Q(wr_pntr_plus1[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h82000082)) 
    ram_full_fb_i_i_2__1
       (.I0(ram_full_fb_i_i_3_n_0),
        .I1(wr_pntr_plus1[1]),
        .I2(PNTR[1]),
        .I3(PNTR[0]),
        .I4(wr_pntr_plus1[0]),
        .O(comp1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_fb_i_i_3
       (.I0(wr_pntr_plus1[3]),
        .I1(PNTR[3]),
        .I2(PNTR[2]),
        .I3(wr_pntr_plus1[2]),
        .I4(wr_pntr_plus1[4]),
        .I5(PNTR[4]),
        .O(ram_full_fb_i_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_m00_data_fifo_0_wr_bin_cntr_19
   (comp1,
    Q,
    I52,
    E,
    s_aclk,
    AR);
  output comp1;
  output [4:0]Q;
  input [4:0]I52;
  input [0:0]E;
  input s_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [4:0]I52;
  wire [4:0]Q;
  wire comp1;
  wire [4:0]plusOp__2;
  wire ram_full_fb_i_i_3__0_n_0;
  wire s_aclk;
  wire [4:0]wr_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1__0 
       (.I0(wr_pntr_plus1[0]),
        .O(plusOp__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1__0 
       (.I0(wr_pntr_plus1[0]),
        .I1(wr_pntr_plus1[1]),
        .O(plusOp__2[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1__0 
       (.I0(wr_pntr_plus1[0]),
        .I1(wr_pntr_plus1[1]),
        .I2(wr_pntr_plus1[2]),
        .O(plusOp__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1__0 
       (.I0(wr_pntr_plus1[1]),
        .I1(wr_pntr_plus1[0]),
        .I2(wr_pntr_plus1[2]),
        .I3(wr_pntr_plus1[3]),
        .O(plusOp__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1__0 
       (.I0(wr_pntr_plus1[2]),
        .I1(wr_pntr_plus1[0]),
        .I2(wr_pntr_plus1[1]),
        .I3(wr_pntr_plus1[3]),
        .I4(wr_pntr_plus1[4]),
        .O(plusOp__2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[4]),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__2[0]),
        .PRE(AR),
        .Q(wr_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__2[1]),
        .Q(wr_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__2[2]),
        .Q(wr_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__2[3]),
        .Q(wr_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__2[4]),
        .Q(wr_pntr_plus1[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h82000082)) 
    ram_full_fb_i_i_2__2
       (.I0(ram_full_fb_i_i_3__0_n_0),
        .I1(wr_pntr_plus1[1]),
        .I2(I52[1]),
        .I3(I52[0]),
        .I4(wr_pntr_plus1[0]),
        .O(comp1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_fb_i_i_3__0
       (.I0(wr_pntr_plus1[3]),
        .I1(I52[3]),
        .I2(I52[2]),
        .I3(wr_pntr_plus1[2]),
        .I4(wr_pntr_plus1[4]),
        .I5(I52[4]),
        .O(ram_full_fb_i_i_3__0_n_0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_m00_data_fifo_0_wr_bin_cntr__parameterized0
   (v1_reg_0,
    Q,
    v1_reg,
    v1_reg_1,
    \gcc0.gc0.count_d1_reg[0]_0 ,
    \gcc0.gc0.count_d1_reg[2]_0 ,
    \gcc0.gc0.count_d1_reg[4]_0 ,
    \gcc0.gc0.count_d1_reg[6]_0 ,
    \gcc0.gc0.count_d1_reg[8]_0 ,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 ,
    SR,
    E,
    s_aclk);
  output [4:0]v1_reg_0;
  output [8:0]Q;
  output [4:0]v1_reg;
  output [4:0]v1_reg_1;
  output \gcc0.gc0.count_d1_reg[0]_0 ;
  output \gcc0.gc0.count_d1_reg[2]_0 ;
  output \gcc0.gc0.count_d1_reg[4]_0 ;
  output \gcc0.gc0.count_d1_reg[6]_0 ;
  output \gcc0.gc0.count_d1_reg[8]_0 ;
  input [8:0]\gmux.gm[4].gms.ms ;
  input [8:0]\gmux.gm[4].gms.ms_0 ;
  input [0:0]SR;
  input [0:0]E;
  input s_aclk;

  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]SR;
  wire \gcc0.gc0.count[8]_i_2_n_0 ;
  wire \gcc0.gc0.count_d1_reg[0]_0 ;
  wire \gcc0.gc0.count_d1_reg[2]_0 ;
  wire \gcc0.gc0.count_d1_reg[4]_0 ;
  wire \gcc0.gc0.count_d1_reg[6]_0 ;
  wire \gcc0.gc0.count_d1_reg[8]_0 ;
  wire [8:0]\gmux.gm[4].gms.ms ;
  wire [8:0]\gmux.gm[4].gms.ms_0 ;
  wire [8:0]plusOp__4;
  wire s_aclk;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire [4:0]v1_reg_1;
  wire [8:0]wr_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1__1 
       (.I0(wr_pntr_plus1[0]),
        .O(plusOp__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1__1 
       (.I0(wr_pntr_plus1[0]),
        .I1(wr_pntr_plus1[1]),
        .O(plusOp__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1__1 
       (.I0(wr_pntr_plus1[0]),
        .I1(wr_pntr_plus1[1]),
        .I2(wr_pntr_plus1[2]),
        .O(plusOp__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1__1 
       (.I0(wr_pntr_plus1[1]),
        .I1(wr_pntr_plus1[0]),
        .I2(wr_pntr_plus1[2]),
        .I3(wr_pntr_plus1[3]),
        .O(plusOp__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1__1 
       (.I0(wr_pntr_plus1[2]),
        .I1(wr_pntr_plus1[0]),
        .I2(wr_pntr_plus1[1]),
        .I3(wr_pntr_plus1[3]),
        .I4(wr_pntr_plus1[4]),
        .O(plusOp__4[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gcc0.gc0.count[5]_i_1 
       (.I0(wr_pntr_plus1[3]),
        .I1(wr_pntr_plus1[1]),
        .I2(wr_pntr_plus1[0]),
        .I3(wr_pntr_plus1[2]),
        .I4(wr_pntr_plus1[4]),
        .I5(wr_pntr_plus1[5]),
        .O(plusOp__4[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[6]_i_1 
       (.I0(\gcc0.gc0.count[8]_i_2_n_0 ),
        .I1(wr_pntr_plus1[6]),
        .O(plusOp__4[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[7]_i_1 
       (.I0(\gcc0.gc0.count[8]_i_2_n_0 ),
        .I1(wr_pntr_plus1[6]),
        .I2(wr_pntr_plus1[7]),
        .O(plusOp__4[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[8]_i_1 
       (.I0(wr_pntr_plus1[6]),
        .I1(\gcc0.gc0.count[8]_i_2_n_0 ),
        .I2(wr_pntr_plus1[7]),
        .I3(wr_pntr_plus1[8]),
        .O(plusOp__4[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gcc0.gc0.count[8]_i_2 
       (.I0(wr_pntr_plus1[5]),
        .I1(wr_pntr_plus1[3]),
        .I2(wr_pntr_plus1[1]),
        .I3(wr_pntr_plus1[0]),
        .I4(wr_pntr_plus1[2]),
        .I5(wr_pntr_plus1[4]),
        .O(\gcc0.gc0.count[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[8]),
        .Q(Q[8]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__4[0]),
        .Q(wr_pntr_plus1[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__4[1]),
        .Q(wr_pntr_plus1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__4[2]),
        .Q(wr_pntr_plus1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__4[3]),
        .Q(wr_pntr_plus1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__4[4]),
        .Q(wr_pntr_plus1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__4[5]),
        .Q(wr_pntr_plus1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__4[6]),
        .Q(wr_pntr_plus1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__4[7]),
        .Q(wr_pntr_plus1[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__4[8]),
        .Q(wr_pntr_plus1[8]),
        .R(SR));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(Q[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[4].gms.ms [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(Q[0]),
        .I1(\gmux.gm[4].gms.ms_0 [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[4].gms.ms_0 [1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(wr_pntr_plus1[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(\gmux.gm[4].gms.ms [1]),
        .I3(wr_pntr_plus1[1]),
        .O(v1_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__5 
       (.I0(Q[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[4].gms.ms [1]),
        .O(\gcc0.gc0.count_d1_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(Q[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[4].gms.ms [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(Q[2]),
        .I1(\gmux.gm[4].gms.ms_0 [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[4].gms.ms_0 [3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(wr_pntr_plus1[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(\gmux.gm[4].gms.ms [3]),
        .I3(wr_pntr_plus1[3]),
        .O(v1_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__5 
       (.I0(Q[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[4].gms.ms [3]),
        .O(\gcc0.gc0.count_d1_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(Q[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[4].gms.ms [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(Q[4]),
        .I1(\gmux.gm[4].gms.ms_0 [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[4].gms.ms_0 [5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(wr_pntr_plus1[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(\gmux.gm[4].gms.ms [5]),
        .I3(wr_pntr_plus1[5]),
        .O(v1_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__5 
       (.I0(Q[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[4].gms.ms [5]),
        .O(\gcc0.gc0.count_d1_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(Q[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[4].gms.ms [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(Q[6]),
        .I1(\gmux.gm[4].gms.ms_0 [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[4].gms.ms_0 [7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(wr_pntr_plus1[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(\gmux.gm[4].gms.ms [7]),
        .I3(wr_pntr_plus1[7]),
        .O(v1_reg_1[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__5 
       (.I0(Q[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[4].gms.ms [7]),
        .O(\gcc0.gc0.count_d1_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(Q[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .O(v1_reg_0[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(Q[8]),
        .I1(\gmux.gm[4].gms.ms_0 [8]),
        .O(v1_reg[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(wr_pntr_plus1[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .O(v1_reg_1[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__5 
       (.I0(Q[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .O(\gcc0.gc0.count_d1_reg[8]_0 ));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_m00_data_fifo_0_wr_bin_cntr__parameterized0_6
   (v1_reg_0,
    Q,
    v1_reg,
    v1_reg_1,
    \gcc0.gc0.count_d1_reg[0]_0 ,
    \gcc0.gc0.count_d1_reg[2]_0 ,
    \gcc0.gc0.count_d1_reg[4]_0 ,
    \gcc0.gc0.count_d1_reg[6]_0 ,
    \gcc0.gc0.count_d1_reg[8]_0 ,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 ,
    SR,
    E,
    s_aclk);
  output [4:0]v1_reg_0;
  output [8:0]Q;
  output [4:0]v1_reg;
  output [4:0]v1_reg_1;
  output \gcc0.gc0.count_d1_reg[0]_0 ;
  output \gcc0.gc0.count_d1_reg[2]_0 ;
  output \gcc0.gc0.count_d1_reg[4]_0 ;
  output \gcc0.gc0.count_d1_reg[6]_0 ;
  output \gcc0.gc0.count_d1_reg[8]_0 ;
  input [8:0]\gmux.gm[4].gms.ms ;
  input [8:0]\gmux.gm[4].gms.ms_0 ;
  input [0:0]SR;
  input [0:0]E;
  input s_aclk;

  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]SR;
  wire \gcc0.gc0.count[8]_i_2__0_n_0 ;
  wire \gcc0.gc0.count_d1_reg[0]_0 ;
  wire \gcc0.gc0.count_d1_reg[2]_0 ;
  wire \gcc0.gc0.count_d1_reg[4]_0 ;
  wire \gcc0.gc0.count_d1_reg[6]_0 ;
  wire \gcc0.gc0.count_d1_reg[8]_0 ;
  wire [8:0]\gmux.gm[4].gms.ms ;
  wire [8:0]\gmux.gm[4].gms.ms_0 ;
  wire [8:0]plusOp__6;
  wire s_aclk;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire [4:0]v1_reg_1;
  wire [8:0]wr_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1__2 
       (.I0(wr_pntr_plus1[0]),
        .O(plusOp__6[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1__2 
       (.I0(wr_pntr_plus1[0]),
        .I1(wr_pntr_plus1[1]),
        .O(plusOp__6[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1__2 
       (.I0(wr_pntr_plus1[0]),
        .I1(wr_pntr_plus1[1]),
        .I2(wr_pntr_plus1[2]),
        .O(plusOp__6[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1__2 
       (.I0(wr_pntr_plus1[1]),
        .I1(wr_pntr_plus1[0]),
        .I2(wr_pntr_plus1[2]),
        .I3(wr_pntr_plus1[3]),
        .O(plusOp__6[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1__2 
       (.I0(wr_pntr_plus1[2]),
        .I1(wr_pntr_plus1[0]),
        .I2(wr_pntr_plus1[1]),
        .I3(wr_pntr_plus1[3]),
        .I4(wr_pntr_plus1[4]),
        .O(plusOp__6[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gcc0.gc0.count[5]_i_1__0 
       (.I0(wr_pntr_plus1[3]),
        .I1(wr_pntr_plus1[1]),
        .I2(wr_pntr_plus1[0]),
        .I3(wr_pntr_plus1[2]),
        .I4(wr_pntr_plus1[4]),
        .I5(wr_pntr_plus1[5]),
        .O(plusOp__6[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[6]_i_1__0 
       (.I0(\gcc0.gc0.count[8]_i_2__0_n_0 ),
        .I1(wr_pntr_plus1[6]),
        .O(plusOp__6[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[7]_i_1__0 
       (.I0(\gcc0.gc0.count[8]_i_2__0_n_0 ),
        .I1(wr_pntr_plus1[6]),
        .I2(wr_pntr_plus1[7]),
        .O(plusOp__6[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[8]_i_1__0 
       (.I0(wr_pntr_plus1[6]),
        .I1(\gcc0.gc0.count[8]_i_2__0_n_0 ),
        .I2(wr_pntr_plus1[7]),
        .I3(wr_pntr_plus1[8]),
        .O(plusOp__6[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gcc0.gc0.count[8]_i_2__0 
       (.I0(wr_pntr_plus1[5]),
        .I1(wr_pntr_plus1[3]),
        .I2(wr_pntr_plus1[1]),
        .I3(wr_pntr_plus1[0]),
        .I4(wr_pntr_plus1[2]),
        .I5(wr_pntr_plus1[4]),
        .O(\gcc0.gc0.count[8]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus1[8]),
        .Q(Q[8]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__6[0]),
        .Q(wr_pntr_plus1[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__6[1]),
        .Q(wr_pntr_plus1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__6[2]),
        .Q(wr_pntr_plus1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__6[3]),
        .Q(wr_pntr_plus1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__6[4]),
        .Q(wr_pntr_plus1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__6[5]),
        .Q(wr_pntr_plus1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__6[6]),
        .Q(wr_pntr_plus1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__6[7]),
        .Q(wr_pntr_plus1[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__6[8]),
        .Q(wr_pntr_plus1[8]),
        .R(SR));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(Q[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[4].gms.ms [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__3 
       (.I0(Q[0]),
        .I1(\gmux.gm[4].gms.ms_0 [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[4].gms.ms_0 [1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__4 
       (.I0(wr_pntr_plus1[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(\gmux.gm[4].gms.ms [1]),
        .I3(wr_pntr_plus1[1]),
        .O(v1_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__6 
       (.I0(Q[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[4].gms.ms [1]),
        .O(\gcc0.gc0.count_d1_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(Q[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[4].gms.ms [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__3 
       (.I0(Q[2]),
        .I1(\gmux.gm[4].gms.ms_0 [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[4].gms.ms_0 [3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__4 
       (.I0(wr_pntr_plus1[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(\gmux.gm[4].gms.ms [3]),
        .I3(wr_pntr_plus1[3]),
        .O(v1_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__6 
       (.I0(Q[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[4].gms.ms [3]),
        .O(\gcc0.gc0.count_d1_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(Q[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[4].gms.ms [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__3 
       (.I0(Q[4]),
        .I1(\gmux.gm[4].gms.ms_0 [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[4].gms.ms_0 [5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__4 
       (.I0(wr_pntr_plus1[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(\gmux.gm[4].gms.ms [5]),
        .I3(wr_pntr_plus1[5]),
        .O(v1_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__6 
       (.I0(Q[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[4].gms.ms [5]),
        .O(\gcc0.gc0.count_d1_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(Q[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[4].gms.ms [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__3 
       (.I0(Q[6]),
        .I1(\gmux.gm[4].gms.ms_0 [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[4].gms.ms_0 [7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__4 
       (.I0(wr_pntr_plus1[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(\gmux.gm[4].gms.ms [7]),
        .I3(wr_pntr_plus1[7]),
        .O(v1_reg_1[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__6 
       (.I0(Q[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[4].gms.ms [7]),
        .O(\gcc0.gc0.count_d1_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(Q[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .O(v1_reg_0[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__3 
       (.I0(Q[8]),
        .I1(\gmux.gm[4].gms.ms_0 [8]),
        .O(v1_reg[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__4 
       (.I0(wr_pntr_plus1[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .O(v1_reg_1[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__6 
       (.I0(Q[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .O(\gcc0.gc0.count_d1_reg[8]_0 ));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_m00_data_fifo_0_wr_logic
   (E,
    s_axi_awready,
    Q,
    s_aclk,
    out,
    ram_rd_en,
    comp0,
    ram_full_i_reg,
    s_axi_awvalid,
    PNTR,
    AR);
  output [0:0]E;
  output s_axi_awready;
  output [4:0]Q;
  input s_aclk;
  input out;
  input ram_rd_en;
  input comp0;
  input ram_full_i_reg;
  input s_axi_awvalid;
  input [4:0]PNTR;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [4:0]PNTR;
  wire [4:0]Q;
  wire comp0;
  wire comp1;
  wire out;
  wire ram_full_i_reg;
  wire ram_rd_en;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;

  design_1_m00_data_fifo_0_wr_status_flags_ss \gwss.wsts 
       (.E(E),
        .comp0(comp0),
        .comp1(comp1),
        .out(out),
        .ram_full_i_reg_0(ram_full_i_reg),
        .ram_rd_en(ram_rd_en),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
  design_1_m00_data_fifo_0_wr_bin_cntr wpntr
       (.AR(AR),
        .E(E),
        .PNTR(PNTR),
        .Q(Q),
        .comp1(comp1),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_m00_data_fifo_0_wr_logic_15
   (E,
    s_axi_arready,
    Q,
    s_aclk,
    out,
    ram_full_i_reg,
    comp0,
    ram_full_i_reg_0,
    s_axi_arvalid,
    I52,
    AR);
  output [0:0]E;
  output s_axi_arready;
  output [4:0]Q;
  input s_aclk;
  input out;
  input [0:0]ram_full_i_reg;
  input comp0;
  input ram_full_i_reg_0;
  input s_axi_arvalid;
  input [4:0]I52;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [4:0]I52;
  wire [4:0]Q;
  wire comp0;
  wire comp1;
  wire out;
  wire [0:0]ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire s_aclk;
  wire s_axi_arready;
  wire s_axi_arvalid;

  design_1_m00_data_fifo_0_wr_status_flags_ss_18 \gwss.wsts 
       (.E(E),
        .comp0(comp0),
        .comp1(comp1),
        .out(out),
        .ram_full_i_reg_0(ram_full_i_reg),
        .ram_full_i_reg_1(ram_full_i_reg_0),
        .s_aclk(s_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
  design_1_m00_data_fifo_0_wr_bin_cntr_19 wpntr
       (.AR(AR),
        .E(E),
        .I52(I52),
        .Q(Q),
        .comp1(comp1),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_m00_data_fifo_0_wr_logic__parameterized0
   (out,
    E,
    s_axi_wvalid_0,
    Q,
    v1_reg,
    \gcc0.gc0.count_d1_reg[0] ,
    \gcc0.gc0.count_d1_reg[2] ,
    \gcc0.gc0.count_d1_reg[4] ,
    \gcc0.gc0.count_d1_reg[6] ,
    \gcc0.gc0.count_d1_reg[8] ,
    s_axi_wready,
    s_aclk,
    DIADI,
    s_axi_wvalid,
    s_ready_i0__0,
    SR,
    ram_rd_en,
    ram_full_i_reg,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 );
  output out;
  output [0:0]E;
  output [0:0]s_axi_wvalid_0;
  output [8:0]Q;
  output [4:0]v1_reg;
  output \gcc0.gc0.count_d1_reg[0] ;
  output \gcc0.gc0.count_d1_reg[2] ;
  output \gcc0.gc0.count_d1_reg[4] ;
  output \gcc0.gc0.count_d1_reg[6] ;
  output \gcc0.gc0.count_d1_reg[8] ;
  output s_axi_wready;
  input s_aclk;
  input [0:0]DIADI;
  input s_axi_wvalid;
  input s_ready_i0__0;
  input [0:0]SR;
  input ram_rd_en;
  input ram_full_i_reg;
  input [8:0]\gmux.gm[4].gms.ms ;
  input [8:0]\gmux.gm[4].gms.ms_0 ;

  wire [0:0]DIADI;
  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]SR;
  wire [4:0]\c0/v1_reg ;
  wire [4:0]\c1/v1_reg ;
  wire \gcc0.gc0.count_d1_reg[0] ;
  wire \gcc0.gc0.count_d1_reg[2] ;
  wire \gcc0.gc0.count_d1_reg[4] ;
  wire \gcc0.gc0.count_d1_reg[6] ;
  wire \gcc0.gc0.count_d1_reg[8] ;
  wire [8:0]\gmux.gm[4].gms.ms ;
  wire [8:0]\gmux.gm[4].gms.ms_0 ;
  wire out;
  wire ram_full_i_reg;
  wire ram_rd_en;
  wire s_aclk;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [0:0]s_axi_wvalid_0;
  wire s_ready_i0__0;
  wire [4:0]v1_reg;

  design_1_m00_data_fifo_0_wr_status_flags_ss__parameterized0 \gwss.wsts 
       (.DIADI(DIADI),
        .E(E),
        .SR(SR),
        .out(out),
        .ram_full_i_reg_0(ram_full_i_reg),
        .ram_rd_en(ram_rd_en),
        .s_aclk(s_aclk),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wvalid_0(s_axi_wvalid_0),
        .s_ready_i0__0(s_ready_i0__0),
        .v1_reg(\c0/v1_reg ),
        .v1_reg_0(\c1/v1_reg ));
  design_1_m00_data_fifo_0_wr_bin_cntr__parameterized0 wpntr
       (.E(s_axi_wvalid_0),
        .Q(Q),
        .SR(SR),
        .\gcc0.gc0.count_d1_reg[0]_0 (\gcc0.gc0.count_d1_reg[0] ),
        .\gcc0.gc0.count_d1_reg[2]_0 (\gcc0.gc0.count_d1_reg[2] ),
        .\gcc0.gc0.count_d1_reg[4]_0 (\gcc0.gc0.count_d1_reg[4] ),
        .\gcc0.gc0.count_d1_reg[6]_0 (\gcc0.gc0.count_d1_reg[6] ),
        .\gcc0.gc0.count_d1_reg[8]_0 (\gcc0.gc0.count_d1_reg[8] ),
        .\gmux.gm[4].gms.ms (\gmux.gm[4].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms_0 ),
        .s_aclk(s_aclk),
        .v1_reg(v1_reg),
        .v1_reg_0(\c0/v1_reg ),
        .v1_reg_1(\c1/v1_reg ));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_m00_data_fifo_0_wr_logic__parameterized0_4
   (out,
    E,
    Q,
    v1_reg,
    \gcc0.gc0.count_d1_reg[0] ,
    \gcc0.gc0.count_d1_reg[2] ,
    \gcc0.gc0.count_d1_reg[4] ,
    \gcc0.gc0.count_d1_reg[6] ,
    \gcc0.gc0.count_d1_reg[8] ,
    m_axi_rready,
    s_aclk,
    SR,
    ram_rd_en,
    ram_full_i_reg,
    m_axi_rvalid,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 );
  output out;
  output [0:0]E;
  output [8:0]Q;
  output [4:0]v1_reg;
  output \gcc0.gc0.count_d1_reg[0] ;
  output \gcc0.gc0.count_d1_reg[2] ;
  output \gcc0.gc0.count_d1_reg[4] ;
  output \gcc0.gc0.count_d1_reg[6] ;
  output \gcc0.gc0.count_d1_reg[8] ;
  output m_axi_rready;
  input s_aclk;
  input [0:0]SR;
  input ram_rd_en;
  input ram_full_i_reg;
  input m_axi_rvalid;
  input [8:0]\gmux.gm[4].gms.ms ;
  input [8:0]\gmux.gm[4].gms.ms_0 ;

  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]SR;
  wire [4:0]\c0/v1_reg ;
  wire [4:0]\c1/v1_reg ;
  wire \gcc0.gc0.count_d1_reg[0] ;
  wire \gcc0.gc0.count_d1_reg[2] ;
  wire \gcc0.gc0.count_d1_reg[4] ;
  wire \gcc0.gc0.count_d1_reg[6] ;
  wire \gcc0.gc0.count_d1_reg[8] ;
  wire [8:0]\gmux.gm[4].gms.ms ;
  wire [8:0]\gmux.gm[4].gms.ms_0 ;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire out;
  wire ram_full_i_reg;
  wire ram_rd_en;
  wire s_aclk;
  wire [4:0]v1_reg;

  design_1_m00_data_fifo_0_wr_status_flags_ss__parameterized0_5 \gwss.wsts 
       (.E(E),
        .SR(SR),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .ram_full_i_reg_0(ram_full_i_reg),
        .ram_rd_en(ram_rd_en),
        .s_aclk(s_aclk),
        .v1_reg(\c0/v1_reg ),
        .v1_reg_0(\c1/v1_reg ));
  design_1_m00_data_fifo_0_wr_bin_cntr__parameterized0_6 wpntr
       (.E(E),
        .Q(Q),
        .SR(SR),
        .\gcc0.gc0.count_d1_reg[0]_0 (\gcc0.gc0.count_d1_reg[0] ),
        .\gcc0.gc0.count_d1_reg[2]_0 (\gcc0.gc0.count_d1_reg[2] ),
        .\gcc0.gc0.count_d1_reg[4]_0 (\gcc0.gc0.count_d1_reg[4] ),
        .\gcc0.gc0.count_d1_reg[6]_0 (\gcc0.gc0.count_d1_reg[6] ),
        .\gcc0.gc0.count_d1_reg[8]_0 (\gcc0.gc0.count_d1_reg[8] ),
        .\gmux.gm[4].gms.ms (\gmux.gm[4].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms_0 ),
        .s_aclk(s_aclk),
        .v1_reg(v1_reg),
        .v1_reg_0(\c0/v1_reg ),
        .v1_reg_1(\c1/v1_reg ));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module design_1_m00_data_fifo_0_wr_status_flags_ss
   (E,
    s_axi_awready,
    s_aclk,
    out,
    comp1,
    ram_rd_en,
    comp0,
    ram_full_i_reg_0,
    s_axi_awvalid);
  output [0:0]E;
  output s_axi_awready;
  input s_aclk;
  input out;
  input comp1;
  input ram_rd_en;
  input comp0;
  input ram_full_i_reg_0;
  input s_axi_awvalid;

  wire [0:0]E;
  wire comp0;
  wire comp1;
  wire out;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  wire ram_full_comb;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire ram_full_i_reg_0;
  wire ram_rd_en;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;

  LUT3 #(
    .INIT(8'h04)) 
    \gcc0.gc0.count_d1[4]_i_1 
       (.I0(ram_full_fb_i),
        .I1(s_axi_awvalid),
        .I2(ram_full_i),
        .O(E));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(ram_afull_fb));
  LUT6 #(
    .INIT(64'h08080FFF08080808)) 
    ram_full_fb_i_i_1
       (.I0(comp1),
        .I1(E),
        .I2(ram_rd_en),
        .I3(comp0),
        .I4(ram_full_i_reg_0),
        .I5(ram_full_fb_i),
        .O(ram_full_comb));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_comb),
        .PRE(out),
        .Q(ram_full_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_comb),
        .PRE(out),
        .Q(ram_full_i));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_awready_INST_0
       (.I0(ram_full_i),
        .O(s_axi_awready));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module design_1_m00_data_fifo_0_wr_status_flags_ss_18
   (E,
    s_axi_arready,
    s_aclk,
    out,
    comp1,
    ram_full_i_reg_0,
    comp0,
    ram_full_i_reg_1,
    s_axi_arvalid);
  output [0:0]E;
  output s_axi_arready;
  input s_aclk;
  input out;
  input comp1;
  input [0:0]ram_full_i_reg_0;
  input comp0;
  input ram_full_i_reg_1;
  input s_axi_arvalid;

  wire [0:0]E;
  wire comp0;
  wire comp1;
  wire out;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  wire ram_full_comb;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire [0:0]ram_full_i_reg_0;
  wire ram_full_i_reg_1;
  wire s_aclk;
  wire s_axi_arready;
  wire s_axi_arvalid;

  LUT3 #(
    .INIT(8'h04)) 
    \gcc0.gc0.count_d1[4]_i_1__0 
       (.I0(ram_full_fb_i),
        .I1(s_axi_arvalid),
        .I2(ram_full_i),
        .O(E));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(ram_afull_fb));
  LUT6 #(
    .INIT(64'h08080FFF08080808)) 
    ram_full_fb_i_i_1__1
       (.I0(comp1),
        .I1(E),
        .I2(ram_full_i_reg_0),
        .I3(comp0),
        .I4(ram_full_i_reg_1),
        .I5(ram_full_fb_i),
        .O(ram_full_comb));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_comb),
        .PRE(out),
        .Q(ram_full_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_comb),
        .PRE(out),
        .Q(ram_full_i));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_arready_INST_0
       (.I0(ram_full_i),
        .O(s_axi_arready));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module design_1_m00_data_fifo_0_wr_status_flags_ss__parameterized0
   (out,
    E,
    s_axi_wvalid_0,
    s_axi_wready,
    v1_reg,
    v1_reg_0,
    s_aclk,
    DIADI,
    s_axi_wvalid,
    s_ready_i0__0,
    SR,
    ram_rd_en,
    ram_full_i_reg_0);
  output out;
  output [0:0]E;
  output [0:0]s_axi_wvalid_0;
  output s_axi_wready;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input s_aclk;
  input [0:0]DIADI;
  input s_axi_wvalid;
  input s_ready_i0__0;
  input [0:0]SR;
  input ram_rd_en;
  input ram_full_i_reg_0;

  wire [0:0]DIADI;
  wire [0:0]E;
  wire [0:0]SR;
  wire c1_n_0;
  wire comp0;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire ram_full_i_reg_0;
  wire ram_rd_en;
  wire s_aclk;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [0:0]s_axi_wvalid_0;
  wire s_ready_i0__0;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_3 
       (.I0(s_axi_wvalid),
        .I1(ram_full_fb_i),
        .O(s_axi_wvalid_0));
  design_1_m00_data_fifo_0_compare__parameterized0 c0
       (.comp0(comp0),
        .v1_reg(v1_reg));
  design_1_m00_data_fifo_0_compare__parameterized0_0 c1
       (.SR(SR),
        .comp0(comp0),
        .\grstd1.grst_full.grst_f.rst_d3_reg (c1_n_0),
        .out(ram_full_fb_i),
        .ram_full_i_reg(ram_full_i_reg_0),
        .ram_rd_en(ram_rd_en),
        .s_axi_wvalid(s_axi_wvalid),
        .v1_reg_0(v1_reg_0));
  LUT4 #(
    .INIT(16'hF708)) 
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[9]_i_1 
       (.I0(DIADI),
        .I1(s_axi_wvalid),
        .I2(ram_full_fb_i),
        .I3(s_ready_i0__0),
        .O(E));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(ram_afull_fb));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(c1_n_0),
        .Q(ram_full_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(c1_n_0),
        .Q(ram_full_i),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_wready_INST_0
       (.I0(ram_full_i),
        .O(s_axi_wready));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module design_1_m00_data_fifo_0_wr_status_flags_ss__parameterized0_5
   (out,
    E,
    m_axi_rready,
    v1_reg,
    v1_reg_0,
    s_aclk,
    SR,
    ram_rd_en,
    ram_full_i_reg_0,
    m_axi_rvalid);
  output out;
  output [0:0]E;
  output m_axi_rready;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input s_aclk;
  input [0:0]SR;
  input ram_rd_en;
  input ram_full_i_reg_0;
  input m_axi_rvalid;

  wire [0:0]E;
  wire [0:0]SR;
  wire c1_n_0;
  wire comp0;
  wire m_axi_rready;
  wire m_axi_rvalid;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire ram_full_i_reg_0;
  wire ram_rd_en;
  wire s_aclk;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_3 
       (.I0(m_axi_rvalid),
        .I1(ram_full_fb_i),
        .O(E));
  design_1_m00_data_fifo_0_compare__parameterized0_7 c0
       (.comp0(comp0),
        .v1_reg(v1_reg));
  design_1_m00_data_fifo_0_compare__parameterized0_8 c1
       (.SR(SR),
        .comp0(comp0),
        .\grstd1.grst_full.grst_f.rst_d3_reg (c1_n_0),
        .m_axi_rvalid(m_axi_rvalid),
        .out(ram_full_fb_i),
        .ram_full_i_reg(ram_full_i_reg_0),
        .ram_rd_en(ram_rd_en),
        .v1_reg_0(v1_reg_0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(ram_afull_fb));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_rready_INST_0
       (.I0(ram_full_i),
        .O(m_axi_rready));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(c1_n_0),
        .Q(ram_full_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(c1_n_0),
        .Q(ram_full_i),
        .R(1'b0));
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
