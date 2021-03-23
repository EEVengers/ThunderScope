// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Mar 22 18:59:51 2021
// Host        : DESKTOP-J72MK93 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/dso_top_ddr3_4KB/dso_top_ddr3.srcs/sources_1/bd/design_1/ip/design_1_auto_us_df_1/design_1_auto_us_df_1_sim_netlist.v
// Design      : design_1_auto_us_df_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_auto_us_df_1,axi_dwidth_converter_v2_1_21_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_dwidth_converter_v2_1_21_top,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_auto_us_df_1
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
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_CLK, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET S_AXI_ARESETN, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) input [3:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [127:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [15:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [3:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 128, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_bready;

  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [255:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [31:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_rready_UNCONNECTED;
  wire NLW_inst_s_axi_arready_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_inst_s_axi_rvalid_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [127:0]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_IS_ACLK_ASYNC = "0" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_SUPPORTS_READ = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FIFO_MODE = "1" *) 
  (* C_MAX_SPLIT_BEATS = "16" *) 
  (* C_M_AXI_ACLK_RATIO = "2" *) 
  (* C_M_AXI_BYTES_LOG = "5" *) 
  (* C_M_AXI_DATA_WIDTH = "256" *) 
  (* C_PACKING_LEVEL = "1" *) 
  (* C_RATIO = "0" *) 
  (* C_RATIO_LOG = "0" *) 
  (* C_SUPPORTS_ID = "1" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_S_AXI_ACLK_RATIO = "1" *) 
  (* C_S_AXI_BYTES_LOG = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "128" *) 
  (* C_S_AXI_ID_WIDTH = "4" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_CONVERSION = "2" *) 
  (* P_MAX_SPLIT_BEATS = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top inst
       (.m_axi_aclk(1'b0),
        .m_axi_araddr(NLW_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_aresetn(1'b0),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_arvalid(NLW_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b1),
        .m_axi_rready(NLW_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
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
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(NLW_inst_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_21_a_upsizer" *) 
module design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_a_upsizer
   (CO,
    m_valid_i_reg_inv,
    cmd_push_block_reg_0,
    s_axi_aresetn,
    s_axi_bid,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ,
    out,
    cmd_push_block0,
    DI,
    S,
    m_axi_bvalid,
    s_axi_bready,
    E,
    \USE_WRITE.wr_cmd_ready ,
    s_ready_i_reg,
    \USE_WRITE.m_axi_awready_i ,
    Q);
  output [0:0]CO;
  output m_valid_i_reg_inv;
  output cmd_push_block_reg_0;
  output s_axi_aresetn;
  output [3:0]s_axi_bid;
  input \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ;
  input out;
  input cmd_push_block0;
  input [3:0]DI;
  input [3:0]S;
  input m_axi_bvalid;
  input s_axi_bready;
  input [0:0]E;
  input \USE_WRITE.wr_cmd_ready ;
  input s_ready_i_reg;
  input \USE_WRITE.m_axi_awready_i ;
  input [3:0]Q;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]E;
  wire \NO_CMD_QUEUE.cmd_cnt[0]_i_1_n_0 ;
  wire \NO_CMD_QUEUE.cmd_cnt[4]_i_3_n_0 ;
  wire [4:0]\NO_CMD_QUEUE.cmd_cnt_reg ;
  wire [3:0]Q;
  wire [3:0]S;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ;
  wire \USE_WRITE.m_axi_awready_i ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire cmd_packed_wrap_i1_carry_n_1;
  wire cmd_packed_wrap_i1_carry_n_2;
  wire cmd_packed_wrap_i1_carry_n_3;
  wire cmd_push_block;
  wire cmd_push_block0;
  wire cmd_push_block_reg_0;
  wire \gen_id_queue.id_queue_n_2 ;
  wire \gen_id_queue.id_queue_n_3 ;
  wire \gen_id_queue.id_queue_n_4 ;
  wire \gen_id_queue.id_queue_n_5 ;
  wire \gen_id_queue.id_queue_n_6 ;
  wire m_axi_bvalid;
  wire m_valid_i_inv_i_3_n_0;
  wire m_valid_i_reg_inv;
  wire out;
  wire s_axi_aresetn;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire s_ready_i_reg;
  wire [3:0]NLW_cmd_packed_wrap_i1_carry_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \NO_CMD_QUEUE.cmd_cnt[0]_i_1 
       (.I0(\NO_CMD_QUEUE.cmd_cnt_reg [0]),
        .O(\NO_CMD_QUEUE.cmd_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \NO_CMD_QUEUE.cmd_cnt[4]_i_3 
       (.I0(\NO_CMD_QUEUE.cmd_cnt_reg [3]),
        .I1(\NO_CMD_QUEUE.cmd_cnt_reg [2]),
        .O(\NO_CMD_QUEUE.cmd_cnt[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \NO_CMD_QUEUE.cmd_cnt_reg[0] 
       (.C(out),
        .CE(\gen_id_queue.id_queue_n_6 ),
        .D(\NO_CMD_QUEUE.cmd_cnt[0]_i_1_n_0 ),
        .Q(\NO_CMD_QUEUE.cmd_cnt_reg [0]),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \NO_CMD_QUEUE.cmd_cnt_reg[1] 
       (.C(out),
        .CE(\gen_id_queue.id_queue_n_6 ),
        .D(\gen_id_queue.id_queue_n_5 ),
        .Q(\NO_CMD_QUEUE.cmd_cnt_reg [1]),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \NO_CMD_QUEUE.cmd_cnt_reg[2] 
       (.C(out),
        .CE(\gen_id_queue.id_queue_n_6 ),
        .D(\gen_id_queue.id_queue_n_4 ),
        .Q(\NO_CMD_QUEUE.cmd_cnt_reg [2]),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \NO_CMD_QUEUE.cmd_cnt_reg[3] 
       (.C(out),
        .CE(\gen_id_queue.id_queue_n_6 ),
        .D(\gen_id_queue.id_queue_n_3 ),
        .Q(\NO_CMD_QUEUE.cmd_cnt_reg [3]),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \NO_CMD_QUEUE.cmd_cnt_reg[4] 
       (.C(out),
        .CE(\gen_id_queue.id_queue_n_6 ),
        .D(\gen_id_queue.id_queue_n_2 ),
        .Q(\NO_CMD_QUEUE.cmd_cnt_reg [4]),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 cmd_packed_wrap_i1_carry
       (.CI(1'b0),
        .CO({CO,cmd_packed_wrap_i1_carry_n_1,cmd_packed_wrap_i1_carry_n_2,cmd_packed_wrap_i1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_cmd_packed_wrap_i1_carry_O_UNCONNECTED[3:0]),
        .S(S));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(out),
        .CE(1'b1),
        .D(cmd_push_block0),
        .Q(cmd_push_block),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ));
  design_1_auto_us_df_1_generic_baseblocks_v2_1_0_command_fifo \gen_id_queue.id_queue 
       (.D({\gen_id_queue.id_queue_n_2 ,\gen_id_queue.id_queue_n_3 ,\gen_id_queue.id_queue_n_4 ,\gen_id_queue.id_queue_n_5 }),
        .E(E),
        .\NO_CMD_QUEUE.cmd_cnt_reg[4] (\NO_CMD_QUEUE.cmd_cnt[4]_i_3_n_0 ),
        .Q(\NO_CMD_QUEUE.cmd_cnt_reg ),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]_0 (Q),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 (\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg ),
        .\USE_WRITE.m_axi_awready_i (\USE_WRITE.m_axi_awready_i ),
        .\USE_WRITE.wr_cmd_ready (\USE_WRITE.wr_cmd_ready ),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block_reg(cmd_push_block_reg_0),
        .cmd_ready_i_reg(\gen_id_queue.id_queue_n_6 ),
        .m_axi_bvalid(m_axi_bvalid),
        .m_valid_i_reg_inv(m_valid_i_reg_inv),
        .m_valid_i_reg_inv_0(m_valid_i_inv_i_3_n_0),
        .out(out),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_ready_i_reg(s_ready_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_valid_i_inv_i_3
       (.I0(\NO_CMD_QUEUE.cmd_cnt_reg [3]),
        .I1(\NO_CMD_QUEUE.cmd_cnt_reg [2]),
        .O(m_valid_i_inv_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_21_axi_upsizer" *) 
module design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_axi_upsizer
   (S_AXI_WREADY_i_reg,
    M_AXI_WVALID_i_reg,
    m_axi_awlen,
    m_axi_awaddr,
    m_axi_awsize,
    m_axi_wdata,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    s_axi_bid,
    s_axi_awready,
    M_AXI_WLAST_i_reg,
    m_axi_wstrb,
    m_axi_awvalid,
    s_axi_wvalid,
    s_axi_wlast,
    m_axi_bvalid,
    s_axi_bready,
    m_axi_wready,
    dina,
    out,
    \aresetn_d_reg[1] ,
    m_axi_awready,
    D,
    s_axi_awvalid);
  output S_AXI_WREADY_i_reg;
  output M_AXI_WVALID_i_reg;
  output [7:0]m_axi_awlen;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awsize;
  output [255:0]m_axi_wdata;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [3:0]s_axi_bid;
  output s_axi_awready;
  output M_AXI_WLAST_i_reg;
  output [31:0]m_axi_wstrb;
  output m_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_wlast;
  input m_axi_bvalid;
  input s_axi_bready;
  input m_axi_wready;
  input [143:0]dina;
  input out;
  input \aresetn_d_reg[1] ;
  input m_axi_awready;
  input [64:0]D;
  input s_axi_awvalid;

  wire [64:0]D;
  wire M_AXI_WLAST_i_reg;
  wire M_AXI_WVALID_i_reg;
  wire S_AXI_WREADY_i_reg;
  wire \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_319 ;
  wire \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_320 ;
  wire \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_325 ;
  wire \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_361 ;
  wire [7:0]\USE_WRITE.m_axi_awaddr_i ;
  wire [1:0]\USE_WRITE.m_axi_awburst_i ;
  wire [7:0]\USE_WRITE.m_axi_awlen_i ;
  wire \USE_WRITE.m_axi_awready_i ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire \USE_WRITE.write_addr_inst_n_1 ;
  wire \USE_WRITE.write_addr_inst_n_2 ;
  wire \USE_WRITE.write_addr_inst_n_3 ;
  wire \aresetn_d_reg[1] ;
  wire cmd_packed_wrap_i1;
  wire cmd_push_block0;
  wire [143:0]dina;
  wire [4:0]f_mi_be_last_index_return;
  wire [14:0]f_si_wrap_be_return;
  wire f_si_wrap_word_return;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bvalid;
  wire [255:0]m_axi_wdata;
  wire m_axi_wready;
  wire [31:0]m_axi_wstrb;
  wire out;
  wire [0:0]p_0_in;
  wire s_axi_awlock_ii;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire [0:0]si_buf_addr;
  wire si_register_slice_inst_n_0;
  wire si_register_slice_inst_n_100;
  wire si_register_slice_inst_n_101;
  wire si_register_slice_inst_n_117;
  wire si_register_slice_inst_n_118;
  wire si_register_slice_inst_n_119;
  wire si_register_slice_inst_n_120;
  wire si_register_slice_inst_n_121;
  wire si_register_slice_inst_n_122;
  wire si_register_slice_inst_n_123;
  wire si_register_slice_inst_n_124;
  wire si_register_slice_inst_n_13;
  wire si_register_slice_inst_n_17;
  wire si_register_slice_inst_n_77;
  wire si_register_slice_inst_n_78;
  wire si_register_slice_inst_n_79;
  wire si_register_slice_inst_n_80;
  wire si_register_slice_inst_n_81;
  wire si_register_slice_inst_n_82;
  wire si_register_slice_inst_n_84;
  wire si_register_slice_inst_n_85;
  wire si_register_slice_inst_n_86;
  wire si_register_slice_inst_n_87;
  wire si_register_slice_inst_n_88;
  wire si_register_slice_inst_n_89;
  wire si_register_slice_inst_n_9;
  wire si_register_slice_inst_n_90;
  wire si_register_slice_inst_n_91;
  wire si_register_slice_inst_n_92;
  wire si_register_slice_inst_n_93;
  wire si_register_slice_inst_n_94;
  wire si_register_slice_inst_n_95;
  wire si_register_slice_inst_n_96;
  wire si_register_slice_inst_n_97;
  wire si_register_slice_inst_n_98;
  wire si_register_slice_inst_n_99;
  wire [0:0]si_wrap_cnt_reg;
  wire [31:4]sr_awaddr;
  wire [1:0]sr_awburst;
  wire [3:0]sr_awcache;
  wire [3:0]sr_awid;
  wire [2:0]sr_awprot;
  wire [3:0]sr_awqos;
  wire [3:0]sr_awregion;
  wire [2:0]sr_awsize;
  wire sr_awvalid;

  design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_w_upsizer_pktfifo \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst 
       (.D(m_axi_awlen),
        .\FSM_sequential_si_state_reg[0]_0 (\USE_WRITE.write_addr_inst_n_1 ),
        .\FSM_sequential_si_state_reg[1]_0 (\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_325 ),
        .M_AXI_WLAST_i_reg_0(M_AXI_WLAST_i_reg),
        .M_AXI_WVALID_i_reg_0(M_AXI_WVALID_i_reg),
        .Q(si_buf_addr),
        .S_AXI_WREADY_i_reg_0(S_AXI_WREADY_i_reg),
        .\USE_WRITE.m_axi_awready_i (\USE_WRITE.m_axi_awready_i ),
        .\USE_WRITE.wr_cmd_ready (\USE_WRITE.wr_cmd_ready ),
        .\aresetn_d_reg[1] (\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_320 ),
        .\aresetn_d_reg[1]_0 (\aresetn_d_reg[1] ),
        .\aresetn_d_reg[1]_1 (si_register_slice_inst_n_0),
        .cmd_push_block0(cmd_push_block0),
        .dina(dina),
        .f_si_wrap_word_return(f_si_wrap_word_return),
        .\goreg_dm.dout_i_reg[22] (m_axi_awburst),
        .\goreg_dm.dout_i_reg[25] (m_axi_awsize),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .\m_payload_i_reg[35] (si_register_slice_inst_n_81),
        .\m_payload_i_reg[61] ({sr_awregion,sr_awqos,s_axi_awlock_ii,sr_awcache,sr_awburst,sr_awsize,sr_awprot,sr_awaddr[31:7],sr_awaddr[4]}),
        .\m_payload_i_reg[66] ({f_mi_be_last_index_return,\USE_WRITE.m_axi_awlen_i [7:6],si_register_slice_inst_n_9,\USE_WRITE.m_axi_awlen_i [4:2],si_register_slice_inst_n_13,\USE_WRITE.m_axi_awlen_i [0],\USE_WRITE.m_axi_awburst_i ,si_register_slice_inst_n_17,\USE_WRITE.m_axi_awaddr_i }),
        .m_valid_i_reg_inv(\USE_WRITE.write_addr_inst_n_2 ),
        .out(out),
        .s_axi_aresetn(\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_319 ),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg(\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_361 ),
        .\si_be_reg[0]_0 (si_register_slice_inst_n_95),
        .\si_be_reg[10]_0 (si_register_slice_inst_n_98),
        .\si_be_reg[11]_0 (si_register_slice_inst_n_120),
        .\si_be_reg[12]_0 (si_register_slice_inst_n_93),
        .\si_be_reg[13]_0 (si_register_slice_inst_n_94),
        .\si_be_reg[14]_0 (si_register_slice_inst_n_99),
        .\si_be_reg[15]_0 (si_register_slice_inst_n_100),
        .\si_be_reg[15]_1 (si_register_slice_inst_n_121),
        .\si_be_reg[1]_0 (si_register_slice_inst_n_117),
        .\si_be_reg[2]_0 (si_register_slice_inst_n_96),
        .\si_be_reg[3]_0 (si_register_slice_inst_n_118),
        .\si_be_reg[4]_0 (si_register_slice_inst_n_89),
        .\si_be_reg[5]_0 (si_register_slice_inst_n_90),
        .\si_be_reg[6]_0 (si_register_slice_inst_n_97),
        .\si_be_reg[7]_0 (si_register_slice_inst_n_119),
        .\si_be_reg[8]_0 (si_register_slice_inst_n_91),
        .\si_be_reg[9]_0 (si_register_slice_inst_n_92),
        .\si_ptr_reg[0]_0 (si_register_slice_inst_n_82),
        .\si_ptr_reg[1]_0 (si_register_slice_inst_n_84),
        .\si_ptr_reg[2]_0 (si_register_slice_inst_n_101),
        .\si_wrap_be_next_reg[14]_0 (f_si_wrap_be_return),
        .\si_wrap_cnt_reg[0]_0 (si_wrap_cnt_reg),
        .\si_wrap_cnt_reg[0]_1 (p_0_in),
        .\si_wrap_cnt_reg[1]_0 (si_register_slice_inst_n_122),
        .\si_wrap_cnt_reg[2]_0 (si_register_slice_inst_n_123),
        .\si_wrap_cnt_reg[3]_0 (si_register_slice_inst_n_124));
  design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_a_upsizer \USE_WRITE.write_addr_inst 
       (.CO(cmd_packed_wrap_i1),
        .DI({si_register_slice_inst_n_85,si_register_slice_inst_n_86,si_register_slice_inst_n_87,si_register_slice_inst_n_88}),
        .E(sr_awvalid),
        .Q(sr_awid),
        .S({si_register_slice_inst_n_77,si_register_slice_inst_n_78,si_register_slice_inst_n_79,si_register_slice_inst_n_80}),
        .\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg (\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_319 ),
        .\USE_WRITE.m_axi_awready_i (\USE_WRITE.m_axi_awready_i ),
        .\USE_WRITE.wr_cmd_ready (\USE_WRITE.wr_cmd_ready ),
        .cmd_push_block0(cmd_push_block0),
        .cmd_push_block_reg_0(\USE_WRITE.write_addr_inst_n_2 ),
        .m_axi_bvalid(m_axi_bvalid),
        .m_valid_i_reg_inv(\USE_WRITE.write_addr_inst_n_1 ),
        .out(out),
        .s_axi_aresetn(\USE_WRITE.write_addr_inst_n_3 ),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_ready_i_reg(\aresetn_d_reg[1] ));
  design_1_auto_us_df_1_axi_register_slice_v2_1_21_axi_register_slice__parameterized0 si_register_slice_inst
       (.CO(cmd_packed_wrap_i1),
        .D(D),
        .DI({si_register_slice_inst_n_85,si_register_slice_inst_n_86,si_register_slice_inst_n_87,si_register_slice_inst_n_88}),
        .E(sr_awvalid),
        .Q({sr_awregion,sr_awqos,sr_awid,s_axi_awlock_ii,sr_awcache,sr_awburst,sr_awsize,sr_awprot,sr_awaddr[31:7],sr_awaddr[4]}),
        .S({si_register_slice_inst_n_77,si_register_slice_inst_n_78,si_register_slice_inst_n_79,si_register_slice_inst_n_80}),
        .\aresetn_d_reg[0] (si_register_slice_inst_n_0),
        .\aresetn_d_reg[0]_0 (\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_319 ),
        .f_si_wrap_word_return(f_si_wrap_word_return),
        .\m_payload_i_reg[0] (si_register_slice_inst_n_94),
        .\m_payload_i_reg[0]_0 (si_register_slice_inst_n_95),
        .\m_payload_i_reg[0]_1 (si_register_slice_inst_n_96),
        .\m_payload_i_reg[0]_2 (si_register_slice_inst_n_97),
        .\m_payload_i_reg[0]_3 (si_register_slice_inst_n_98),
        .\m_payload_i_reg[0]_4 (si_register_slice_inst_n_99),
        .\m_payload_i_reg[1] (si_register_slice_inst_n_117),
        .\m_payload_i_reg[1]_0 (si_register_slice_inst_n_118),
        .\m_payload_i_reg[2] (si_register_slice_inst_n_91),
        .\m_payload_i_reg[2]_0 (si_register_slice_inst_n_92),
        .\m_payload_i_reg[2]_1 (si_register_slice_inst_n_93),
        .\m_payload_i_reg[2]_2 (si_register_slice_inst_n_120),
        .\m_payload_i_reg[35] (si_register_slice_inst_n_101),
        .\m_payload_i_reg[36] (si_register_slice_inst_n_121),
        .\m_payload_i_reg[37] (si_register_slice_inst_n_100),
        .\m_payload_i_reg[37]_0 (f_si_wrap_be_return),
        .\m_payload_i_reg[39] ({f_mi_be_last_index_return,\USE_WRITE.m_axi_awlen_i [7:6],si_register_slice_inst_n_9,\USE_WRITE.m_axi_awlen_i [4:2],si_register_slice_inst_n_13,\USE_WRITE.m_axi_awlen_i [0],\USE_WRITE.m_axi_awburst_i ,si_register_slice_inst_n_17,\USE_WRITE.m_axi_awaddr_i }),
        .\m_payload_i_reg[3] (si_register_slice_inst_n_89),
        .\m_payload_i_reg[3]_0 (si_register_slice_inst_n_90),
        .\m_payload_i_reg[3]_1 (si_register_slice_inst_n_119),
        .\m_payload_i_reg[41] (si_register_slice_inst_n_81),
        .\m_payload_i_reg[45] (si_register_slice_inst_n_122),
        .\m_payload_i_reg[46] (si_register_slice_inst_n_123),
        .\m_payload_i_reg[5] (si_register_slice_inst_n_82),
        .\m_payload_i_reg[6] (si_register_slice_inst_n_84),
        .\m_payload_i_reg[7] (si_register_slice_inst_n_124),
        .m_valid_i_reg_inv(\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_361 ),
        .out(out),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_ready_i_reg(\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_320 ),
        .s_ready_i_reg_0(\USE_WRITE.write_addr_inst_n_3 ),
        .\si_ptr_reg[0] (si_buf_addr),
        .\si_wrap_cnt_reg[0] (p_0_in),
        .\si_wrap_cnt_reg[0]_0 (\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_325 ),
        .\si_wrap_cnt_reg[0]_1 (si_wrap_cnt_reg));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_IS_ACLK_ASYNC = "0" *) (* C_AXI_PROTOCOL = "0" *) 
(* C_AXI_SUPPORTS_READ = "0" *) (* C_AXI_SUPPORTS_WRITE = "1" *) (* C_FAMILY = "artix7" *) 
(* C_FIFO_MODE = "1" *) (* C_MAX_SPLIT_BEATS = "16" *) (* C_M_AXI_ACLK_RATIO = "2" *) 
(* C_M_AXI_BYTES_LOG = "5" *) (* C_M_AXI_DATA_WIDTH = "256" *) (* C_PACKING_LEVEL = "1" *) 
(* C_RATIO = "0" *) (* C_RATIO_LOG = "0" *) (* C_SUPPORTS_ID = "1" *) 
(* C_SYNCHRONIZER_STAGE = "3" *) (* C_S_AXI_ACLK_RATIO = "1" *) (* C_S_AXI_BYTES_LOG = "4" *) 
(* C_S_AXI_DATA_WIDTH = "128" *) (* C_S_AXI_ID_WIDTH = "4" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_21_top" *) (* P_AXI3 = "1" *) (* P_AXI4 = "0" *) 
(* P_AXILITE = "2" *) (* P_CONVERSION = "2" *) (* P_MAX_SPLIT_BEATS = "16" *) 
module design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top
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
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
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
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* keep = "true" *) input s_axi_aclk;
  (* keep = "true" *) input s_axi_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  (* keep = "true" *) input m_axi_aclk;
  (* keep = "true" *) input m_axi_aresetn;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [255:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  (* RTL_KEEP = "true" *) wire m_axi_aclk;
  (* RTL_KEEP = "true" *) wire m_axi_aresetn;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [255:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [31:0]m_axi_wstrb;
  wire m_axi_wvalid;
  (* RTL_KEEP = "true" *) wire s_axi_aclk;
  (* RTL_KEEP = "true" *) wire s_axi_aresetn;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[127] = \<const0> ;
  assign s_axi_rdata[126] = \<const0> ;
  assign s_axi_rdata[125] = \<const0> ;
  assign s_axi_rdata[124] = \<const0> ;
  assign s_axi_rdata[123] = \<const0> ;
  assign s_axi_rdata[122] = \<const0> ;
  assign s_axi_rdata[121] = \<const0> ;
  assign s_axi_rdata[120] = \<const0> ;
  assign s_axi_rdata[119] = \<const0> ;
  assign s_axi_rdata[118] = \<const0> ;
  assign s_axi_rdata[117] = \<const0> ;
  assign s_axi_rdata[116] = \<const0> ;
  assign s_axi_rdata[115] = \<const0> ;
  assign s_axi_rdata[114] = \<const0> ;
  assign s_axi_rdata[113] = \<const0> ;
  assign s_axi_rdata[112] = \<const0> ;
  assign s_axi_rdata[111] = \<const0> ;
  assign s_axi_rdata[110] = \<const0> ;
  assign s_axi_rdata[109] = \<const0> ;
  assign s_axi_rdata[108] = \<const0> ;
  assign s_axi_rdata[107] = \<const0> ;
  assign s_axi_rdata[106] = \<const0> ;
  assign s_axi_rdata[105] = \<const0> ;
  assign s_axi_rdata[104] = \<const0> ;
  assign s_axi_rdata[103] = \<const0> ;
  assign s_axi_rdata[102] = \<const0> ;
  assign s_axi_rdata[101] = \<const0> ;
  assign s_axi_rdata[100] = \<const0> ;
  assign s_axi_rdata[99] = \<const0> ;
  assign s_axi_rdata[98] = \<const0> ;
  assign s_axi_rdata[97] = \<const0> ;
  assign s_axi_rdata[96] = \<const0> ;
  assign s_axi_rdata[95] = \<const0> ;
  assign s_axi_rdata[94] = \<const0> ;
  assign s_axi_rdata[93] = \<const0> ;
  assign s_axi_rdata[92] = \<const0> ;
  assign s_axi_rdata[91] = \<const0> ;
  assign s_axi_rdata[90] = \<const0> ;
  assign s_axi_rdata[89] = \<const0> ;
  assign s_axi_rdata[88] = \<const0> ;
  assign s_axi_rdata[87] = \<const0> ;
  assign s_axi_rdata[86] = \<const0> ;
  assign s_axi_rdata[85] = \<const0> ;
  assign s_axi_rdata[84] = \<const0> ;
  assign s_axi_rdata[83] = \<const0> ;
  assign s_axi_rdata[82] = \<const0> ;
  assign s_axi_rdata[81] = \<const0> ;
  assign s_axi_rdata[80] = \<const0> ;
  assign s_axi_rdata[79] = \<const0> ;
  assign s_axi_rdata[78] = \<const0> ;
  assign s_axi_rdata[77] = \<const0> ;
  assign s_axi_rdata[76] = \<const0> ;
  assign s_axi_rdata[75] = \<const0> ;
  assign s_axi_rdata[74] = \<const0> ;
  assign s_axi_rdata[73] = \<const0> ;
  assign s_axi_rdata[72] = \<const0> ;
  assign s_axi_rdata[71] = \<const0> ;
  assign s_axi_rdata[70] = \<const0> ;
  assign s_axi_rdata[69] = \<const0> ;
  assign s_axi_rdata[68] = \<const0> ;
  assign s_axi_rdata[67] = \<const0> ;
  assign s_axi_rdata[66] = \<const0> ;
  assign s_axi_rdata[65] = \<const0> ;
  assign s_axi_rdata[64] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_axi_upsizer \gen_upsizer.gen_full_upsizer.axi_upsizer_inst 
       (.D({s_axi_awregion,s_axi_awqos,s_axi_awid,s_axi_awlock,s_axi_awlen,s_axi_awcache,s_axi_awburst,s_axi_awsize,s_axi_awprot,s_axi_awaddr}),
        .M_AXI_WLAST_i_reg(m_axi_wlast),
        .M_AXI_WVALID_i_reg(m_axi_wvalid),
        .S_AXI_WREADY_i_reg(s_axi_wready),
        .\aresetn_d_reg[1] (s_axi_aresetn),
        .dina({s_axi_wstrb[15],s_axi_wdata[127:120],s_axi_wstrb[14],s_axi_wdata[119:112],s_axi_wstrb[13],s_axi_wdata[111:104],s_axi_wstrb[12],s_axi_wdata[103:96],s_axi_wstrb[11],s_axi_wdata[95:88],s_axi_wstrb[10],s_axi_wdata[87:80],s_axi_wstrb[9],s_axi_wdata[79:72],s_axi_wstrb[8],s_axi_wdata[71:64],s_axi_wstrb[7],s_axi_wdata[63:56],s_axi_wstrb[6],s_axi_wdata[55:48],s_axi_wstrb[5],s_axi_wdata[47:40],s_axi_wstrb[4],s_axi_wdata[39:32],s_axi_wstrb[3],s_axi_wdata[31:24],s_axi_wstrb[2],s_axi_wdata[23:16],s_axi_wstrb[1],s_axi_wdata[15:8],s_axi_wstrb[0],s_axi_wdata[7:0]}),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .out(s_axi_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_21_w_upsizer_pktfifo" *) 
module design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_w_upsizer_pktfifo
   (m_axi_wdata,
    Q,
    m_axi_awaddr,
    D,
    \goreg_dm.dout_i_reg[25] ,
    \goreg_dm.dout_i_reg[22] ,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    \USE_WRITE.wr_cmd_ready ,
    s_axi_aresetn,
    \aresetn_d_reg[1] ,
    M_AXI_WVALID_i_reg_0,
    M_AXI_WLAST_i_reg_0,
    m_axi_awvalid,
    S_AXI_WREADY_i_reg_0,
    \FSM_sequential_si_state_reg[1]_0 ,
    \si_wrap_cnt_reg[0]_0 ,
    cmd_push_block0,
    \USE_WRITE.m_axi_awready_i ,
    m_axi_wstrb,
    s_ready_i_reg,
    dina,
    out,
    \aresetn_d_reg[1]_0 ,
    f_si_wrap_word_return,
    \m_payload_i_reg[61] ,
    \aresetn_d_reg[1]_1 ,
    s_axi_wvalid,
    s_axi_wlast,
    m_axi_wready,
    \FSM_sequential_si_state_reg[0]_0 ,
    \si_be_reg[0]_0 ,
    \si_be_reg[1]_0 ,
    \si_be_reg[2]_0 ,
    \si_be_reg[3]_0 ,
    \si_be_reg[4]_0 ,
    \si_be_reg[5]_0 ,
    \si_be_reg[6]_0 ,
    \si_be_reg[7]_0 ,
    \si_be_reg[8]_0 ,
    \si_be_reg[9]_0 ,
    \si_be_reg[10]_0 ,
    \si_be_reg[11]_0 ,
    \si_be_reg[12]_0 ,
    \si_be_reg[13]_0 ,
    \si_be_reg[14]_0 ,
    \si_be_reg[15]_0 ,
    \si_be_reg[15]_1 ,
    \si_ptr_reg[1]_0 ,
    \si_ptr_reg[2]_0 ,
    \si_wrap_cnt_reg[0]_1 ,
    \si_wrap_cnt_reg[1]_0 ,
    \si_wrap_cnt_reg[2]_0 ,
    \si_wrap_cnt_reg[3]_0 ,
    m_axi_awready,
    s_axi_awready,
    m_valid_i_reg_inv,
    s_axi_awvalid,
    \m_payload_i_reg[66] ,
    \m_payload_i_reg[35] ,
    \si_wrap_be_next_reg[14]_0 ,
    \si_ptr_reg[0]_0 );
  output [255:0]m_axi_wdata;
  output [0:0]Q;
  output [31:0]m_axi_awaddr;
  output [7:0]D;
  output [2:0]\goreg_dm.dout_i_reg[25] ;
  output [1:0]\goreg_dm.dout_i_reg[22] ;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output \USE_WRITE.wr_cmd_ready ;
  output s_axi_aresetn;
  output \aresetn_d_reg[1] ;
  output M_AXI_WVALID_i_reg_0;
  output M_AXI_WLAST_i_reg_0;
  output m_axi_awvalid;
  output S_AXI_WREADY_i_reg_0;
  output \FSM_sequential_si_state_reg[1]_0 ;
  output [0:0]\si_wrap_cnt_reg[0]_0 ;
  output cmd_push_block0;
  output \USE_WRITE.m_axi_awready_i ;
  output [31:0]m_axi_wstrb;
  output s_ready_i_reg;
  input [143:0]dina;
  input out;
  input \aresetn_d_reg[1]_0 ;
  input f_si_wrap_word_return;
  input [46:0]\m_payload_i_reg[61] ;
  input \aresetn_d_reg[1]_1 ;
  input s_axi_wvalid;
  input s_axi_wlast;
  input m_axi_wready;
  input \FSM_sequential_si_state_reg[0]_0 ;
  input \si_be_reg[0]_0 ;
  input \si_be_reg[1]_0 ;
  input \si_be_reg[2]_0 ;
  input \si_be_reg[3]_0 ;
  input \si_be_reg[4]_0 ;
  input \si_be_reg[5]_0 ;
  input \si_be_reg[6]_0 ;
  input \si_be_reg[7]_0 ;
  input \si_be_reg[8]_0 ;
  input \si_be_reg[9]_0 ;
  input \si_be_reg[10]_0 ;
  input \si_be_reg[11]_0 ;
  input \si_be_reg[12]_0 ;
  input \si_be_reg[13]_0 ;
  input \si_be_reg[14]_0 ;
  input \si_be_reg[15]_0 ;
  input \si_be_reg[15]_1 ;
  input \si_ptr_reg[1]_0 ;
  input \si_ptr_reg[2]_0 ;
  input [0:0]\si_wrap_cnt_reg[0]_1 ;
  input \si_wrap_cnt_reg[1]_0 ;
  input \si_wrap_cnt_reg[2]_0 ;
  input \si_wrap_cnt_reg[3]_0 ;
  input m_axi_awready;
  input s_axi_awready;
  input m_valid_i_reg_inv;
  input s_axi_awvalid;
  input [23:0]\m_payload_i_reg[66] ;
  input \m_payload_i_reg[35] ;
  input [14:0]\si_wrap_be_next_reg[14]_0 ;
  input [0:0]\si_ptr_reg[0]_0 ;

  wire [7:0]D;
  wire \FSM_sequential_mi_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mi_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mi_state[2]_i_1_n_0 ;
  wire \FSM_sequential_mi_state[2]_i_3_n_0 ;
  wire \FSM_sequential_mi_state[2]_i_4_n_0 ;
  wire \FSM_sequential_mi_state[2]_i_5_n_0 ;
  wire \FSM_sequential_si_state_reg[0]_0 ;
  wire \FSM_sequential_si_state_reg[1]_0 ;
  wire M_AXI_AWVALID_i_i_1_n_0;
  wire M_AXI_WLAST_i_i_1_n_0;
  wire M_AXI_WLAST_i_i_2_n_0;
  wire M_AXI_WLAST_i_reg_0;
  wire M_AXI_WVALID_i_i_1_n_0;
  wire M_AXI_WVALID_i_reg_0;
  wire [0:0]Q;
  wire S_AXI_WREADY_i_reg_0;
  wire \USE_WRITE.m_axi_awready_i ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire [4:0]addr;
  wire \aresetn_d_reg[1] ;
  wire \aresetn_d_reg[1]_0 ;
  wire \aresetn_d_reg[1]_1 ;
  wire aw_pop;
  wire aw_ready;
  wire [31:31]be;
  wire [30:0]be__0;
  wire [1:0]buf_cnt;
  wire cmd_push_block0;
  wire [3:3]data5;
  wire [143:0]dina;
  wire dw_fifogen_aw_i_4_n_0;
  wire [31:0]f_si_we_return;
  wire f_si_wrap_word_return;
  wire first_load_mi_d1;
  wire first_load_mi_d1_i_1_n_0;
  wire [1:0]\goreg_dm.dout_i_reg[22] ;
  wire [2:0]\goreg_dm.dout_i_reg[25] ;
  wire [4:0]index;
  wire load_mi_d1;
  wire load_mi_d2;
  wire load_mi_next;
  wire load_mi_ptr;
  wire load_si_ptr;
  wire [31:0]m_axi_awaddr;
  wire [3:0]m_axi_awcache;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire m_axi_awvalid;
  wire [255:0]m_axi_wdata;
  wire m_axi_wready;
  wire [31:0]m_axi_wstrb;
  wire \m_payload_i_reg[35] ;
  wire [46:0]\m_payload_i_reg[61] ;
  wire [23:0]\m_payload_i_reg[66] ;
  wire m_valid_i_reg_inv;
  wire \mi_addr[0]_i_1_n_0 ;
  wire \mi_addr[1]_i_1_n_0 ;
  wire \mi_addr[2]_i_1_n_0 ;
  wire \mi_addr[3]_i_1_n_0 ;
  wire \mi_addr[4]_i_2_n_0 ;
  wire \mi_addr_d1[4]_i_1_n_0 ;
  wire \mi_addr_reg_n_0_[0] ;
  wire \mi_addr_reg_n_0_[1] ;
  wire \mi_addr_reg_n_0_[2] ;
  wire \mi_addr_reg_n_0_[3] ;
  wire \mi_addr_reg_n_0_[4] ;
  wire mi_awvalid;
  wire \mi_be[0]_i_1_n_0 ;
  wire \mi_be[0]_i_2_n_0 ;
  wire \mi_be[0]_i_4_n_0 ;
  wire \mi_be[0]_i_5_n_0 ;
  wire \mi_be[0]_i_6_n_0 ;
  wire \mi_be[10]_i_1_n_0 ;
  wire \mi_be[10]_i_2_n_0 ;
  wire \mi_be[10]_i_4_n_0 ;
  wire \mi_be[10]_i_5_n_0 ;
  wire \mi_be[10]_i_6_n_0 ;
  wire \mi_be[11]_i_1_n_0 ;
  wire \mi_be[11]_i_2_n_0 ;
  wire \mi_be[11]_i_4_n_0 ;
  wire \mi_be[11]_i_5_n_0 ;
  wire \mi_be[11]_i_6_n_0 ;
  wire \mi_be[11]_i_7_n_0 ;
  wire \mi_be[12]_i_1_n_0 ;
  wire \mi_be[12]_i_3_n_0 ;
  wire \mi_be[12]_i_4_n_0 ;
  wire \mi_be[12]_i_5_n_0 ;
  wire \mi_be[12]_i_6_n_0 ;
  wire \mi_be[13]_i_1_n_0 ;
  wire \mi_be[13]_i_2_n_0 ;
  wire \mi_be[13]_i_3_n_0 ;
  wire \mi_be[13]_i_4_n_0 ;
  wire \mi_be[13]_i_6_n_0 ;
  wire \mi_be[13]_i_7_n_0 ;
  wire \mi_be[13]_i_8_n_0 ;
  wire \mi_be[13]_i_9_n_0 ;
  wire \mi_be[14]_i_1_n_0 ;
  wire \mi_be[14]_i_3_n_0 ;
  wire \mi_be[14]_i_4_n_0 ;
  wire \mi_be[14]_i_5_n_0 ;
  wire \mi_be[14]_i_6_n_0 ;
  wire \mi_be[15]_i_10_n_0 ;
  wire \mi_be[15]_i_1_n_0 ;
  wire \mi_be[15]_i_2_n_0 ;
  wire \mi_be[15]_i_3_n_0 ;
  wire \mi_be[15]_i_4_n_0 ;
  wire \mi_be[15]_i_6_n_0 ;
  wire \mi_be[15]_i_7_n_0 ;
  wire \mi_be[15]_i_8_n_0 ;
  wire \mi_be[15]_i_9_n_0 ;
  wire \mi_be[16]_i_1_n_0 ;
  wire \mi_be[16]_i_2_n_0 ;
  wire \mi_be[16]_i_3_n_0 ;
  wire \mi_be[16]_i_5_n_0 ;
  wire \mi_be[16]_i_6_n_0 ;
  wire \mi_be[16]_i_7_n_0 ;
  wire \mi_be[16]_i_8_n_0 ;
  wire \mi_be[16]_i_9_n_0 ;
  wire \mi_be[17]_i_10_n_0 ;
  wire \mi_be[17]_i_11_n_0 ;
  wire \mi_be[17]_i_12_n_0 ;
  wire \mi_be[17]_i_13_n_0 ;
  wire \mi_be[17]_i_14_n_0 ;
  wire \mi_be[17]_i_1_n_0 ;
  wire \mi_be[17]_i_2_n_0 ;
  wire \mi_be[17]_i_3_n_0 ;
  wire \mi_be[17]_i_4_n_0 ;
  wire \mi_be[17]_i_5_n_0 ;
  wire \mi_be[17]_i_6_n_0 ;
  wire \mi_be[17]_i_7_n_0 ;
  wire \mi_be[17]_i_8_n_0 ;
  wire \mi_be[17]_i_9_n_0 ;
  wire \mi_be[18]_i_1_n_0 ;
  wire \mi_be[18]_i_2_n_0 ;
  wire \mi_be[18]_i_4_n_0 ;
  wire \mi_be[18]_i_5_n_0 ;
  wire \mi_be[18]_i_6_n_0 ;
  wire \mi_be[19]_i_1_n_0 ;
  wire \mi_be[19]_i_2_n_0 ;
  wire \mi_be[19]_i_4_n_0 ;
  wire \mi_be[19]_i_5_n_0 ;
  wire \mi_be[19]_i_6_n_0 ;
  wire \mi_be[1]_i_1_n_0 ;
  wire \mi_be[1]_i_2_n_0 ;
  wire \mi_be[1]_i_3_n_0 ;
  wire \mi_be[1]_i_4_n_0 ;
  wire \mi_be[1]_i_6_n_0 ;
  wire \mi_be[1]_i_7_n_0 ;
  wire \mi_be[1]_i_8_n_0 ;
  wire \mi_be[20]_i_1_n_0 ;
  wire \mi_be[20]_i_2_n_0 ;
  wire \mi_be[20]_i_4_n_0 ;
  wire \mi_be[20]_i_5_n_0 ;
  wire \mi_be[20]_i_6_n_0 ;
  wire \mi_be[21]_i_1_n_0 ;
  wire \mi_be[21]_i_2_n_0 ;
  wire \mi_be[21]_i_3_n_0 ;
  wire \mi_be[21]_i_5_n_0 ;
  wire \mi_be[21]_i_6_n_0 ;
  wire \mi_be[21]_i_7_n_0 ;
  wire \mi_be[21]_i_8_n_0 ;
  wire \mi_be[22]_i_10_n_0 ;
  wire \mi_be[22]_i_1_n_0 ;
  wire \mi_be[22]_i_2_n_0 ;
  wire \mi_be[22]_i_3_n_0 ;
  wire \mi_be[22]_i_4_n_0 ;
  wire \mi_be[22]_i_5_n_0 ;
  wire \mi_be[22]_i_6_n_0 ;
  wire \mi_be[22]_i_7_n_0 ;
  wire \mi_be[22]_i_8_n_0 ;
  wire \mi_be[22]_i_9_n_0 ;
  wire \mi_be[23]_i_1_n_0 ;
  wire \mi_be[23]_i_2_n_0 ;
  wire \mi_be[23]_i_4_n_0 ;
  wire \mi_be[23]_i_5_n_0 ;
  wire \mi_be[23]_i_6_n_0 ;
  wire \mi_be[23]_i_7_n_0 ;
  wire \mi_be[23]_i_8_n_0 ;
  wire \mi_be[24]_i_1_n_0 ;
  wire \mi_be[24]_i_2_n_0 ;
  wire \mi_be[24]_i_4_n_0 ;
  wire \mi_be[24]_i_5_n_0 ;
  wire \mi_be[24]_i_6_n_0 ;
  wire \mi_be[25]_i_1_n_0 ;
  wire \mi_be[25]_i_2_n_0 ;
  wire \mi_be[25]_i_4_n_0 ;
  wire \mi_be[25]_i_5_n_0 ;
  wire \mi_be[25]_i_6_n_0 ;
  wire \mi_be[25]_i_7_n_0 ;
  wire \mi_be[26]_i_1_n_0 ;
  wire \mi_be[26]_i_2_n_0 ;
  wire \mi_be[26]_i_4_n_0 ;
  wire \mi_be[26]_i_5_n_0 ;
  wire \mi_be[26]_i_6_n_0 ;
  wire \mi_be[27]_i_1_n_0 ;
  wire \mi_be[27]_i_2_n_0 ;
  wire \mi_be[27]_i_4_n_0 ;
  wire \mi_be[27]_i_5_n_0 ;
  wire \mi_be[27]_i_6_n_0 ;
  wire \mi_be[27]_i_7_n_0 ;
  wire \mi_be[27]_i_8_n_0 ;
  wire \mi_be[28]_i_1_n_0 ;
  wire \mi_be[28]_i_2_n_0 ;
  wire \mi_be[28]_i_4_n_0 ;
  wire \mi_be[28]_i_5_n_0 ;
  wire \mi_be[28]_i_6_n_0 ;
  wire \mi_be[29]_i_1_n_0 ;
  wire \mi_be[29]_i_2_n_0 ;
  wire \mi_be[29]_i_3_n_0 ;
  wire \mi_be[29]_i_5_n_0 ;
  wire \mi_be[29]_i_6_n_0 ;
  wire \mi_be[29]_i_7_n_0 ;
  wire \mi_be[29]_i_8_n_0 ;
  wire \mi_be[2]_i_1_n_0 ;
  wire \mi_be[2]_i_2_n_0 ;
  wire \mi_be[2]_i_4_n_0 ;
  wire \mi_be[2]_i_5_n_0 ;
  wire \mi_be[2]_i_6_n_0 ;
  wire \mi_be[30]_i_1_n_0 ;
  wire \mi_be[30]_i_2_n_0 ;
  wire \mi_be[30]_i_4_n_0 ;
  wire \mi_be[30]_i_5_n_0 ;
  wire \mi_be[30]_i_6_n_0 ;
  wire \mi_be[30]_i_7_n_0 ;
  wire \mi_be[30]_i_8_n_0 ;
  wire \mi_be[31]_i_10_n_0 ;
  wire \mi_be[31]_i_11_n_0 ;
  wire \mi_be[31]_i_12_n_0 ;
  wire \mi_be[31]_i_13_n_0 ;
  wire \mi_be[31]_i_1_n_0 ;
  wire \mi_be[31]_i_2_n_0 ;
  wire \mi_be[31]_i_3_n_0 ;
  wire \mi_be[31]_i_4_n_0 ;
  wire \mi_be[31]_i_5_n_0 ;
  wire \mi_be[31]_i_6_n_0 ;
  wire \mi_be[31]_i_8_n_0 ;
  wire \mi_be[31]_i_9_n_0 ;
  wire \mi_be[3]_i_1_n_0 ;
  wire \mi_be[3]_i_2_n_0 ;
  wire \mi_be[3]_i_4_n_0 ;
  wire \mi_be[3]_i_5_n_0 ;
  wire \mi_be[3]_i_6_n_0 ;
  wire \mi_be[3]_i_7_n_0 ;
  wire \mi_be[4]_i_1_n_0 ;
  wire \mi_be[4]_i_2_n_0 ;
  wire \mi_be[4]_i_4_n_0 ;
  wire \mi_be[4]_i_5_n_0 ;
  wire \mi_be[4]_i_6_n_0 ;
  wire \mi_be[5]_i_1_n_0 ;
  wire \mi_be[5]_i_2_n_0 ;
  wire \mi_be[5]_i_4_n_0 ;
  wire \mi_be[5]_i_5_n_0 ;
  wire \mi_be[5]_i_6_n_0 ;
  wire \mi_be[5]_i_7_n_0 ;
  wire \mi_be[5]_i_8_n_0 ;
  wire \mi_be[6]_i_1_n_0 ;
  wire \mi_be[6]_i_2_n_0 ;
  wire \mi_be[6]_i_3_n_0 ;
  wire \mi_be[6]_i_4_n_0 ;
  wire \mi_be[6]_i_5_n_0 ;
  wire \mi_be[6]_i_6_n_0 ;
  wire \mi_be[6]_i_7_n_0 ;
  wire \mi_be[6]_i_8_n_0 ;
  wire \mi_be[6]_i_9_n_0 ;
  wire \mi_be[7]_i_1_n_0 ;
  wire \mi_be[7]_i_2_n_0 ;
  wire \mi_be[7]_i_4_n_0 ;
  wire \mi_be[7]_i_5_n_0 ;
  wire \mi_be[7]_i_6_n_0 ;
  wire \mi_be[8]_i_10_n_0 ;
  wire \mi_be[8]_i_11_n_0 ;
  wire \mi_be[8]_i_1_n_0 ;
  wire \mi_be[8]_i_2_n_0 ;
  wire \mi_be[8]_i_3_n_0 ;
  wire \mi_be[8]_i_4_n_0 ;
  wire \mi_be[8]_i_5_n_0 ;
  wire \mi_be[8]_i_6_n_0 ;
  wire \mi_be[8]_i_7_n_0 ;
  wire \mi_be[8]_i_8_n_0 ;
  wire \mi_be[8]_i_9_n_0 ;
  wire \mi_be[9]_i_1_n_0 ;
  wire \mi_be[9]_i_2_n_0 ;
  wire \mi_be[9]_i_4_n_0 ;
  wire \mi_be[9]_i_5_n_0 ;
  wire \mi_be[9]_i_6_n_0 ;
  wire \mi_be_d1_reg_n_0_[0] ;
  wire \mi_be_d1_reg_n_0_[10] ;
  wire \mi_be_d1_reg_n_0_[11] ;
  wire \mi_be_d1_reg_n_0_[12] ;
  wire \mi_be_d1_reg_n_0_[13] ;
  wire \mi_be_d1_reg_n_0_[14] ;
  wire \mi_be_d1_reg_n_0_[15] ;
  wire \mi_be_d1_reg_n_0_[16] ;
  wire \mi_be_d1_reg_n_0_[17] ;
  wire \mi_be_d1_reg_n_0_[18] ;
  wire \mi_be_d1_reg_n_0_[19] ;
  wire \mi_be_d1_reg_n_0_[1] ;
  wire \mi_be_d1_reg_n_0_[20] ;
  wire \mi_be_d1_reg_n_0_[21] ;
  wire \mi_be_d1_reg_n_0_[22] ;
  wire \mi_be_d1_reg_n_0_[23] ;
  wire \mi_be_d1_reg_n_0_[24] ;
  wire \mi_be_d1_reg_n_0_[25] ;
  wire \mi_be_d1_reg_n_0_[26] ;
  wire \mi_be_d1_reg_n_0_[27] ;
  wire \mi_be_d1_reg_n_0_[28] ;
  wire \mi_be_d1_reg_n_0_[29] ;
  wire \mi_be_d1_reg_n_0_[2] ;
  wire \mi_be_d1_reg_n_0_[30] ;
  wire \mi_be_d1_reg_n_0_[31] ;
  wire \mi_be_d1_reg_n_0_[3] ;
  wire \mi_be_d1_reg_n_0_[4] ;
  wire \mi_be_d1_reg_n_0_[5] ;
  wire \mi_be_d1_reg_n_0_[6] ;
  wire \mi_be_d1_reg_n_0_[7] ;
  wire \mi_be_d1_reg_n_0_[8] ;
  wire \mi_be_d1_reg_n_0_[9] ;
  wire \mi_be_reg[0]_i_3_n_0 ;
  wire \mi_be_reg[10]_i_3_n_0 ;
  wire \mi_be_reg[11]_i_3_n_0 ;
  wire \mi_be_reg[12]_i_2_n_0 ;
  wire \mi_be_reg[13]_i_5_n_0 ;
  wire \mi_be_reg[14]_i_2_n_0 ;
  wire \mi_be_reg[15]_i_5_n_0 ;
  wire \mi_be_reg[16]_i_4_n_0 ;
  wire \mi_be_reg[18]_i_3_n_0 ;
  wire \mi_be_reg[19]_i_3_n_0 ;
  wire \mi_be_reg[1]_i_5_n_0 ;
  wire \mi_be_reg[20]_i_3_n_0 ;
  wire \mi_be_reg[21]_i_4_n_0 ;
  wire \mi_be_reg[23]_i_3_n_0 ;
  wire \mi_be_reg[24]_i_3_n_0 ;
  wire \mi_be_reg[25]_i_3_n_0 ;
  wire \mi_be_reg[26]_i_3_n_0 ;
  wire \mi_be_reg[27]_i_3_n_0 ;
  wire \mi_be_reg[28]_i_3_n_0 ;
  wire \mi_be_reg[29]_i_4_n_0 ;
  wire \mi_be_reg[2]_i_3_n_0 ;
  wire \mi_be_reg[30]_i_3_n_0 ;
  wire \mi_be_reg[31]_i_7_n_0 ;
  wire \mi_be_reg[3]_i_3_n_0 ;
  wire \mi_be_reg[4]_i_3_n_0 ;
  wire \mi_be_reg[5]_i_3_n_0 ;
  wire \mi_be_reg[7]_i_3_n_0 ;
  wire \mi_be_reg[9]_i_3_n_0 ;
  wire mi_buf0;
  wire \mi_buf[0]_i_1_n_0 ;
  wire \mi_buf[1]_i_2_n_0 ;
  wire [8:0]mi_buf_addr;
  wire mi_buf_en;
  wire \mi_burst[0]_i_1_n_0 ;
  wire \mi_burst[1]_i_2_n_0 ;
  wire \mi_burst_reg_n_0_[0] ;
  wire \mi_burst_reg_n_0_[1] ;
  wire mi_first;
  wire mi_first_d1;
  wire mi_first_i_1_n_0;
  wire mi_last;
  wire mi_last_d1_i_1_n_0;
  wire mi_last_d1_reg_n_0;
  wire mi_last_i_1_n_0;
  wire mi_last_i_2_n_0;
  wire mi_last_i_3_n_0;
  wire mi_last_i_4_n_0;
  wire mi_last_i_5_n_0;
  wire mi_last_i_6_n_0;
  wire mi_last_i_7_n_0;
  wire [4:0]mi_last_index_reg;
  wire mi_last_index_reg_d0;
  wire \mi_last_index_reg_d0[0]_i_1_n_0 ;
  wire \mi_last_index_reg_d0[1]_i_1_n_0 ;
  wire \mi_last_index_reg_d0[2]_i_1_n_0 ;
  wire \mi_last_index_reg_d0[3]_i_1_n_0 ;
  wire \mi_last_index_reg_d0[4]_i_1_n_0 ;
  wire \mi_last_index_reg_d0_reg_n_0_[0] ;
  wire \mi_last_index_reg_d0_reg_n_0_[1] ;
  wire \mi_last_index_reg_d0_reg_n_0_[2] ;
  wire \mi_last_index_reg_d0_reg_n_0_[3] ;
  wire \mi_last_index_reg_d0_reg_n_0_[4] ;
  wire \mi_ptr[0]_i_1_n_0 ;
  wire \mi_ptr[0]_i_2_n_0 ;
  wire \mi_ptr[0]_i_3_n_0 ;
  wire \mi_ptr[0]_i_4_n_0 ;
  wire \mi_ptr[1]_i_1_n_0 ;
  wire \mi_ptr[1]_i_2_n_0 ;
  wire \mi_ptr[1]_i_3_n_0 ;
  wire \mi_ptr[1]_i_4_n_0 ;
  wire \mi_ptr[2]_i_2_n_0 ;
  wire \mi_ptr[2]_i_3_n_0 ;
  wire \mi_ptr[2]_i_4_n_0 ;
  wire \mi_ptr[3]_i_1_n_0 ;
  wire \mi_ptr[4]_i_1_n_0 ;
  wire \mi_ptr[4]_i_2_n_0 ;
  wire \mi_ptr[5]_i_1_n_0 ;
  wire \mi_ptr[6]_i_1_n_0 ;
  wire \mi_ptr[6]_i_2_n_0 ;
  wire \mi_ptr[6]_i_3_n_0 ;
  wire \mi_ptr[6]_i_4_n_0 ;
  wire \mi_ptr[6]_i_5_n_0 ;
  wire \mi_ptr_reg[2]_i_1_n_0 ;
  wire \mi_size[0]_i_1_n_0 ;
  wire \mi_size[1]_i_1_n_0 ;
  wire \mi_size[2]_i_1_n_0 ;
  wire [2:0]mi_state;
  wire [2:0]mi_state_ns__0;
  wire \mi_wcnt[0]_i_1_n_0 ;
  wire \mi_wcnt[1]_i_1_n_0 ;
  wire \mi_wcnt[2]_i_1_n_0 ;
  wire \mi_wcnt[2]_i_2_n_0 ;
  wire \mi_wcnt[3]_i_1_n_0 ;
  wire \mi_wcnt[3]_i_2_n_0 ;
  wire \mi_wcnt[4]_i_1_n_0 ;
  wire \mi_wcnt[4]_i_2_n_0 ;
  wire \mi_wcnt[5]_i_1_n_0 ;
  wire \mi_wcnt[5]_i_2_n_0 ;
  wire \mi_wcnt[6]_i_1_n_0 ;
  wire \mi_wcnt[6]_i_2_n_0 ;
  wire \mi_wcnt[7]_i_1_n_0 ;
  wire \mi_wcnt[7]_i_2_n_0 ;
  wire \mi_wcnt[7]_i_3_n_0 ;
  wire [7:0]mi_wcnt__0;
  wire [287:8]mi_wpayload;
  wire mi_wrap_be_next;
  wire \mi_wrap_be_next[0]_i_1_n_0 ;
  wire \mi_wrap_be_next[0]_i_2_n_0 ;
  wire \mi_wrap_be_next[0]_i_3_n_0 ;
  wire \mi_wrap_be_next[0]_i_4_n_0 ;
  wire \mi_wrap_be_next[0]_i_5_n_0 ;
  wire \mi_wrap_be_next[10]_i_1_n_0 ;
  wire \mi_wrap_be_next[10]_i_2_n_0 ;
  wire \mi_wrap_be_next[10]_i_3_n_0 ;
  wire \mi_wrap_be_next[10]_i_4_n_0 ;
  wire \mi_wrap_be_next[10]_i_5_n_0 ;
  wire \mi_wrap_be_next[11]_i_1_n_0 ;
  wire \mi_wrap_be_next[11]_i_2_n_0 ;
  wire \mi_wrap_be_next[11]_i_3_n_0 ;
  wire \mi_wrap_be_next[12]_i_1_n_0 ;
  wire \mi_wrap_be_next[12]_i_2_n_0 ;
  wire \mi_wrap_be_next[12]_i_3_n_0 ;
  wire \mi_wrap_be_next[12]_i_4_n_0 ;
  wire \mi_wrap_be_next[13]_i_1_n_0 ;
  wire \mi_wrap_be_next[13]_i_2_n_0 ;
  wire \mi_wrap_be_next[13]_i_3_n_0 ;
  wire \mi_wrap_be_next[13]_i_4_n_0 ;
  wire \mi_wrap_be_next[13]_i_5_n_0 ;
  wire \mi_wrap_be_next[14]_i_1_n_0 ;
  wire \mi_wrap_be_next[14]_i_2_n_0 ;
  wire \mi_wrap_be_next[14]_i_3_n_0 ;
  wire \mi_wrap_be_next[14]_i_4_n_0 ;
  wire \mi_wrap_be_next[16]_i_1_n_0 ;
  wire \mi_wrap_be_next[16]_i_2_n_0 ;
  wire \mi_wrap_be_next[16]_i_3_n_0 ;
  wire \mi_wrap_be_next[16]_i_4_n_0 ;
  wire \mi_wrap_be_next[16]_i_5_n_0 ;
  wire \mi_wrap_be_next[17]_i_1_n_0 ;
  wire \mi_wrap_be_next[17]_i_2_n_0 ;
  wire \mi_wrap_be_next[17]_i_3_n_0 ;
  wire \mi_wrap_be_next[17]_i_4_n_0 ;
  wire \mi_wrap_be_next[17]_i_5_n_0 ;
  wire \mi_wrap_be_next[17]_i_6_n_0 ;
  wire \mi_wrap_be_next[18]_i_1_n_0 ;
  wire \mi_wrap_be_next[18]_i_2_n_0 ;
  wire \mi_wrap_be_next[18]_i_3_n_0 ;
  wire \mi_wrap_be_next[18]_i_4_n_0 ;
  wire \mi_wrap_be_next[18]_i_5_n_0 ;
  wire \mi_wrap_be_next[18]_i_6_n_0 ;
  wire \mi_wrap_be_next[18]_i_7_n_0 ;
  wire \mi_wrap_be_next[19]_i_1_n_0 ;
  wire \mi_wrap_be_next[19]_i_2_n_0 ;
  wire \mi_wrap_be_next[19]_i_3_n_0 ;
  wire \mi_wrap_be_next[1]_i_1_n_0 ;
  wire \mi_wrap_be_next[1]_i_2_n_0 ;
  wire \mi_wrap_be_next[1]_i_3_n_0 ;
  wire \mi_wrap_be_next[20]_i_1_n_0 ;
  wire \mi_wrap_be_next[20]_i_2_n_0 ;
  wire \mi_wrap_be_next[20]_i_3_n_0 ;
  wire \mi_wrap_be_next[20]_i_4_n_0 ;
  wire \mi_wrap_be_next[20]_i_5_n_0 ;
  wire \mi_wrap_be_next[20]_i_6_n_0 ;
  wire \mi_wrap_be_next[20]_i_7_n_0 ;
  wire \mi_wrap_be_next[21]_i_1_n_0 ;
  wire \mi_wrap_be_next[21]_i_2_n_0 ;
  wire \mi_wrap_be_next[21]_i_3_n_0 ;
  wire \mi_wrap_be_next[22]_i_1_n_0 ;
  wire \mi_wrap_be_next[22]_i_2_n_0 ;
  wire \mi_wrap_be_next[22]_i_3_n_0 ;
  wire \mi_wrap_be_next[22]_i_4_n_0 ;
  wire \mi_wrap_be_next[22]_i_5_n_0 ;
  wire \mi_wrap_be_next[23]_i_1_n_0 ;
  wire \mi_wrap_be_next[23]_i_2_n_0 ;
  wire \mi_wrap_be_next[24]_i_2_n_0 ;
  wire \mi_wrap_be_next[24]_i_3_n_0 ;
  wire \mi_wrap_be_next[24]_i_4_n_0 ;
  wire \mi_wrap_be_next[25]_i_1_n_0 ;
  wire \mi_wrap_be_next[25]_i_2_n_0 ;
  wire \mi_wrap_be_next[25]_i_3_n_0 ;
  wire \mi_wrap_be_next[25]_i_4_n_0 ;
  wire \mi_wrap_be_next[26]_i_1_n_0 ;
  wire \mi_wrap_be_next[26]_i_2_n_0 ;
  wire \mi_wrap_be_next[26]_i_3_n_0 ;
  wire \mi_wrap_be_next[26]_i_4_n_0 ;
  wire \mi_wrap_be_next[26]_i_5_n_0 ;
  wire \mi_wrap_be_next[26]_i_6_n_0 ;
  wire \mi_wrap_be_next[27]_i_1_n_0 ;
  wire \mi_wrap_be_next[27]_i_2_n_0 ;
  wire \mi_wrap_be_next[27]_i_3_n_0 ;
  wire \mi_wrap_be_next[28]_i_2_n_0 ;
  wire \mi_wrap_be_next[28]_i_3_n_0 ;
  wire \mi_wrap_be_next[28]_i_4_n_0 ;
  wire \mi_wrap_be_next[28]_i_5_n_0 ;
  wire \mi_wrap_be_next[29]_i_1_n_0 ;
  wire \mi_wrap_be_next[29]_i_2_n_0 ;
  wire \mi_wrap_be_next[29]_i_3_n_0 ;
  wire \mi_wrap_be_next[29]_i_4_n_0 ;
  wire \mi_wrap_be_next[29]_i_5_n_0 ;
  wire \mi_wrap_be_next[2]_i_1_n_0 ;
  wire \mi_wrap_be_next[2]_i_2_n_0 ;
  wire \mi_wrap_be_next[2]_i_3_n_0 ;
  wire \mi_wrap_be_next[30]_i_1_n_0 ;
  wire \mi_wrap_be_next[30]_i_2_n_0 ;
  wire \mi_wrap_be_next[30]_i_3_n_0 ;
  wire \mi_wrap_be_next[30]_i_4_n_0 ;
  wire \mi_wrap_be_next[30]_i_5_n_0 ;
  wire \mi_wrap_be_next[30]_i_6_n_0 ;
  wire \mi_wrap_be_next[30]_i_7_n_0 ;
  wire \mi_wrap_be_next[30]_i_8_n_0 ;
  wire \mi_wrap_be_next[31]_i_1_n_0 ;
  wire \mi_wrap_be_next[31]_i_2_n_0 ;
  wire \mi_wrap_be_next[3]_i_1_n_0 ;
  wire \mi_wrap_be_next[3]_i_2_n_0 ;
  wire \mi_wrap_be_next[3]_i_3_n_0 ;
  wire \mi_wrap_be_next[3]_i_4_n_0 ;
  wire \mi_wrap_be_next[3]_i_5_n_0 ;
  wire \mi_wrap_be_next[4]_i_1_n_0 ;
  wire \mi_wrap_be_next[4]_i_2_n_0 ;
  wire \mi_wrap_be_next[4]_i_3_n_0 ;
  wire \mi_wrap_be_next[5]_i_2_n_0 ;
  wire \mi_wrap_be_next[5]_i_3_n_0 ;
  wire \mi_wrap_be_next[5]_i_4_n_0 ;
  wire \mi_wrap_be_next[5]_i_5_n_0 ;
  wire \mi_wrap_be_next[6]_i_1_n_0 ;
  wire \mi_wrap_be_next[6]_i_2_n_0 ;
  wire \mi_wrap_be_next[6]_i_3_n_0 ;
  wire \mi_wrap_be_next[7]_i_1_n_0 ;
  wire \mi_wrap_be_next[7]_i_2_n_0 ;
  wire \mi_wrap_be_next[7]_i_3_n_0 ;
  wire \mi_wrap_be_next[8]_i_1_n_0 ;
  wire \mi_wrap_be_next[8]_i_2_n_0 ;
  wire \mi_wrap_be_next[8]_i_3_n_0 ;
  wire \mi_wrap_be_next[9]_i_1_n_0 ;
  wire \mi_wrap_be_next[9]_i_2_n_0 ;
  wire \mi_wrap_be_next[9]_i_3_n_0 ;
  wire \mi_wrap_be_next[9]_i_4_n_0 ;
  wire \mi_wrap_be_next[9]_i_5_n_0 ;
  wire \mi_wrap_be_next_reg[24]_i_1_n_0 ;
  wire \mi_wrap_be_next_reg[28]_i_1_n_0 ;
  wire \mi_wrap_be_next_reg[5]_i_1_n_0 ;
  wire \mi_wrap_be_next_reg_n_0_[0] ;
  wire \mi_wrap_be_next_reg_n_0_[10] ;
  wire \mi_wrap_be_next_reg_n_0_[11] ;
  wire \mi_wrap_be_next_reg_n_0_[12] ;
  wire \mi_wrap_be_next_reg_n_0_[13] ;
  wire \mi_wrap_be_next_reg_n_0_[14] ;
  wire \mi_wrap_be_next_reg_n_0_[16] ;
  wire \mi_wrap_be_next_reg_n_0_[17] ;
  wire \mi_wrap_be_next_reg_n_0_[18] ;
  wire \mi_wrap_be_next_reg_n_0_[19] ;
  wire \mi_wrap_be_next_reg_n_0_[1] ;
  wire \mi_wrap_be_next_reg_n_0_[20] ;
  wire \mi_wrap_be_next_reg_n_0_[21] ;
  wire \mi_wrap_be_next_reg_n_0_[22] ;
  wire \mi_wrap_be_next_reg_n_0_[23] ;
  wire \mi_wrap_be_next_reg_n_0_[24] ;
  wire \mi_wrap_be_next_reg_n_0_[25] ;
  wire \mi_wrap_be_next_reg_n_0_[26] ;
  wire \mi_wrap_be_next_reg_n_0_[27] ;
  wire \mi_wrap_be_next_reg_n_0_[28] ;
  wire \mi_wrap_be_next_reg_n_0_[29] ;
  wire \mi_wrap_be_next_reg_n_0_[2] ;
  wire \mi_wrap_be_next_reg_n_0_[30] ;
  wire \mi_wrap_be_next_reg_n_0_[31] ;
  wire \mi_wrap_be_next_reg_n_0_[3] ;
  wire \mi_wrap_be_next_reg_n_0_[4] ;
  wire \mi_wrap_be_next_reg_n_0_[5] ;
  wire \mi_wrap_be_next_reg_n_0_[6] ;
  wire \mi_wrap_be_next_reg_n_0_[7] ;
  wire \mi_wrap_be_next_reg_n_0_[8] ;
  wire \mi_wrap_be_next_reg_n_0_[9] ;
  wire [3:0]mi_wrap_cnt;
  wire \mi_wrap_cnt[0]_i_1_n_0 ;
  wire \mi_wrap_cnt[0]_i_2_n_0 ;
  wire \mi_wrap_cnt[0]_i_3_n_0 ;
  wire \mi_wrap_cnt[0]_i_4_n_0 ;
  wire \mi_wrap_cnt[0]_i_5_n_0 ;
  wire \mi_wrap_cnt[0]_i_6_n_0 ;
  wire \mi_wrap_cnt[0]_i_7_n_0 ;
  wire \mi_wrap_cnt[0]_i_8_n_0 ;
  wire \mi_wrap_cnt[1]_i_1_n_0 ;
  wire \mi_wrap_cnt[1]_i_2_n_0 ;
  wire \mi_wrap_cnt[1]_i_3_n_0 ;
  wire \mi_wrap_cnt[1]_i_4_n_0 ;
  wire \mi_wrap_cnt[1]_i_5_n_0 ;
  wire \mi_wrap_cnt[1]_i_6_n_0 ;
  wire \mi_wrap_cnt[2]_i_2_n_0 ;
  wire \mi_wrap_cnt[2]_i_3_n_0 ;
  wire \mi_wrap_cnt[2]_i_4_n_0 ;
  wire \mi_wrap_cnt[2]_i_5_n_0 ;
  wire \mi_wrap_cnt[2]_i_6_n_0 ;
  wire \mi_wrap_cnt[2]_i_7_n_0 ;
  wire \mi_wrap_cnt[3]_i_1_n_0 ;
  wire \mi_wrap_cnt[3]_i_3_n_0 ;
  wire \mi_wrap_cnt[3]_i_4_n_0 ;
  wire \mi_wrap_cnt[3]_i_5_n_0 ;
  wire \mi_wrap_cnt[3]_i_6_n_0 ;
  wire \mi_wrap_cnt[3]_i_7_n_0 ;
  wire \mi_wrap_cnt[3]_i_8_n_0 ;
  wire \mi_wrap_cnt[3]_i_9_n_0 ;
  wire \mi_wrap_cnt_reg[2]_i_1_n_0 ;
  wire \mi_wrap_cnt_reg[3]_i_2_n_0 ;
  wire mi_wstrb_mask_d2;
  wire [31:0]mi_wstrb_mask_d20;
  wire \mi_wstrb_mask_d2[10]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[11]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[13]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[13]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[14]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[14]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[15]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[18]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[19]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[1]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[1]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[20]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[21]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[21]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[22]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[23]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[23]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[25]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[25]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[26]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[26]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[26]_i_4_n_0 ;
  wire \mi_wstrb_mask_d2[27]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[28]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[28]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[29]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[29]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[29]_i_4_n_0 ;
  wire \mi_wstrb_mask_d2[2]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[30]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[30]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[31]_i_3_n_0 ;
  wire \mi_wstrb_mask_d2[3]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[7]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[8]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2[9]_i_2_n_0 ;
  wire \mi_wstrb_mask_d2_reg_n_0_[0] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[10] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[11] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[12] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[13] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[14] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[15] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[16] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[17] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[18] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[19] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[1] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[20] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[21] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[22] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[23] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[24] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[25] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[26] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[27] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[28] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[29] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[2] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[30] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[31] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[3] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[4] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[5] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[6] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[7] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[8] ;
  wire \mi_wstrb_mask_d2_reg_n_0_[9] ;
  wire \next_mi_addr_reg_n_0_[0] ;
  wire \next_mi_addr_reg_n_0_[1] ;
  wire \next_mi_addr_reg_n_0_[2] ;
  wire \next_mi_addr_reg_n_0_[3] ;
  wire \next_mi_addr_reg_n_0_[4] ;
  wire \next_mi_addr_reg_n_0_[5] ;
  wire \next_mi_addr_reg_n_0_[6] ;
  wire \next_mi_addr_reg_n_0_[7] ;
  wire [1:0]next_mi_burst;
  wire [4:0]next_mi_last_index_reg;
  wire \next_mi_len[7]_i_2_n_0 ;
  wire \next_mi_len_reg_n_0_[0] ;
  wire \next_mi_len_reg_n_0_[4] ;
  wire \next_mi_len_reg_n_0_[5] ;
  wire \next_mi_len_reg_n_0_[6] ;
  wire \next_mi_len_reg_n_0_[7] ;
  wire \next_mi_size_reg_n_0_[0] ;
  wire \next_mi_size_reg_n_0_[1] ;
  wire \next_mi_size_reg_n_0_[2] ;
  wire next_valid;
  wire next_valid_i_1_n_0;
  wire out;
  wire [3:1]p_0_in;
  wire [2:0]p_0_in_0;
  wire p_176_in;
  wire p_1_in;
  wire s_aw_reg_n_10;
  wire s_aw_reg_n_11;
  wire s_aw_reg_n_12;
  wire s_aw_reg_n_13;
  wire s_aw_reg_n_14;
  wire s_aw_reg_n_15;
  wire s_aw_reg_n_16;
  wire s_aw_reg_n_17;
  wire s_aw_reg_n_18;
  wire s_aw_reg_n_19;
  wire s_aw_reg_n_2;
  wire s_aw_reg_n_20;
  wire s_aw_reg_n_21;
  wire s_aw_reg_n_22;
  wire s_aw_reg_n_23;
  wire s_aw_reg_n_24;
  wire s_aw_reg_n_25;
  wire s_aw_reg_n_26;
  wire s_aw_reg_n_30;
  wire s_aw_reg_n_31;
  wire s_aw_reg_n_33;
  wire s_aw_reg_n_36;
  wire s_aw_reg_n_37;
  wire s_aw_reg_n_39;
  wire s_aw_reg_n_4;
  wire s_aw_reg_n_40;
  wire s_aw_reg_n_41;
  wire s_aw_reg_n_42;
  wire s_aw_reg_n_5;
  wire s_aw_reg_n_6;
  wire s_aw_reg_n_7;
  wire s_aw_reg_n_8;
  wire s_aw_reg_n_9;
  wire [31:0]s_awaddr_reg;
  wire [1:0]s_awburst_reg;
  wire [3:0]s_awcache_reg;
  wire [7:0]s_awlen_reg;
  wire s_awlock_reg;
  wire [2:0]s_awprot_reg;
  wire [3:0]s_awqos_reg;
  wire [3:0]s_awregion_reg;
  wire [2:0]s_awsize_reg;
  wire s_axi_aresetn;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire s_ready_i_reg;
  wire \si_be[0]_i_3_n_0 ;
  wire \si_be[0]_i_4_n_0 ;
  wire \si_be[10]_i_3_n_0 ;
  wire \si_be[10]_i_4_n_0 ;
  wire \si_be[10]_i_5_n_0 ;
  wire \si_be[11]_i_3_n_0 ;
  wire \si_be[11]_i_5_n_0 ;
  wire \si_be[12]_i_3_n_0 ;
  wire \si_be[12]_i_4_n_0 ;
  wire \si_be[12]_i_5_n_0 ;
  wire \si_be[13]_i_3_n_0 ;
  wire \si_be[13]_i_5_n_0 ;
  wire \si_be[13]_i_6_n_0 ;
  wire \si_be[14]_i_3_n_0 ;
  wire \si_be[14]_i_4_n_0 ;
  wire \si_be[14]_i_5_n_0 ;
  wire \si_be[15]_i_3_n_0 ;
  wire \si_be[15]_i_4_n_0 ;
  wire \si_be[1]_i_3_n_0 ;
  wire \si_be[1]_i_5_n_0 ;
  wire \si_be[2]_i_3_n_0 ;
  wire \si_be[2]_i_4_n_0 ;
  wire \si_be[3]_i_3_n_0 ;
  wire \si_be[3]_i_5_n_0 ;
  wire \si_be[4]_i_3_n_0 ;
  wire \si_be[4]_i_4_n_0 ;
  wire \si_be[5]_i_3_n_0 ;
  wire \si_be[5]_i_5_n_0 ;
  wire \si_be[6]_i_3_n_0 ;
  wire \si_be[6]_i_4_n_0 ;
  wire \si_be[7]_i_3_n_0 ;
  wire \si_be[7]_i_5_n_0 ;
  wire \si_be[8]_i_3_n_0 ;
  wire \si_be[8]_i_4_n_0 ;
  wire \si_be[9]_i_3_n_0 ;
  wire \si_be[9]_i_5_n_0 ;
  wire \si_be_reg[0]_0 ;
  wire \si_be_reg[10]_0 ;
  wire \si_be_reg[11]_0 ;
  wire \si_be_reg[12]_0 ;
  wire \si_be_reg[13]_0 ;
  wire \si_be_reg[14]_0 ;
  wire \si_be_reg[15]_0 ;
  wire \si_be_reg[15]_1 ;
  wire \si_be_reg[1]_0 ;
  wire \si_be_reg[2]_0 ;
  wire \si_be_reg[3]_0 ;
  wire \si_be_reg[4]_0 ;
  wire \si_be_reg[5]_0 ;
  wire \si_be_reg[6]_0 ;
  wire \si_be_reg[7]_0 ;
  wire \si_be_reg[8]_0 ;
  wire \si_be_reg[9]_0 ;
  wire \si_be_reg_n_0_[0] ;
  wire \si_be_reg_n_0_[10] ;
  wire \si_be_reg_n_0_[11] ;
  wire \si_be_reg_n_0_[12] ;
  wire \si_be_reg_n_0_[13] ;
  wire \si_be_reg_n_0_[14] ;
  wire \si_be_reg_n_0_[1] ;
  wire \si_be_reg_n_0_[2] ;
  wire \si_be_reg_n_0_[3] ;
  wire \si_be_reg_n_0_[4] ;
  wire \si_be_reg_n_0_[5] ;
  wire \si_be_reg_n_0_[6] ;
  wire \si_be_reg_n_0_[7] ;
  wire \si_be_reg_n_0_[8] ;
  wire \si_be_reg_n_0_[9] ;
  wire \si_buf[0]_i_1_n_0 ;
  wire \si_buf[1]_i_1_n_0 ;
  wire [8:1]si_buf_addr;
  wire [1:0]si_burst;
  wire [4:0]si_last_index_reg;
  wire \si_ptr[6]_i_4_n_0 ;
  wire [0:0]\si_ptr_reg[0]_0 ;
  wire \si_ptr_reg[1]_0 ;
  wire \si_ptr_reg[2]_0 ;
  wire \si_size_reg_n_0_[0] ;
  wire \si_size_reg_n_0_[1] ;
  wire \si_size_reg_n_0_[2] ;
  wire [1:0]si_state;
  wire [14:0]si_wrap_be_next;
  wire [14:0]\si_wrap_be_next_reg[14]_0 ;
  wire [3:1]si_wrap_cnt_reg;
  wire [0:0]\si_wrap_cnt_reg[0]_0 ;
  wire [0:0]\si_wrap_cnt_reg[0]_1 ;
  wire \si_wrap_cnt_reg[1]_0 ;
  wire \si_wrap_cnt_reg[2]_0 ;
  wire \si_wrap_cnt_reg[3]_0 ;
  wire si_wrap_word_next;
  wire [2:0]size;
  wire word;
  wire NLW_dw_fifogen_aw_almost_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_almost_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_ar_overflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_ar_prog_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_ar_underflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_aw_overflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_aw_prog_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_aw_underflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_b_dbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_b_overflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_b_prog_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_b_prog_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_b_sbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_b_underflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_r_dbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_r_overflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_r_prog_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_r_prog_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_r_sbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_r_underflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_w_dbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_w_overflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_w_prog_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_w_prog_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_w_sbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axi_w_underflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axis_dbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axis_overflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axis_prog_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axis_prog_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axis_sbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_axis_underflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_dbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_m_axi_arvalid_UNCONNECTED;
  wire NLW_dw_fifogen_aw_m_axi_bready_UNCONNECTED;
  wire NLW_dw_fifogen_aw_m_axi_rready_UNCONNECTED;
  wire NLW_dw_fifogen_aw_m_axi_wlast_UNCONNECTED;
  wire NLW_dw_fifogen_aw_m_axi_wvalid_UNCONNECTED;
  wire NLW_dw_fifogen_aw_m_axis_tlast_UNCONNECTED;
  wire NLW_dw_fifogen_aw_m_axis_tvalid_UNCONNECTED;
  wire NLW_dw_fifogen_aw_overflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_prog_empty_UNCONNECTED;
  wire NLW_dw_fifogen_aw_prog_full_UNCONNECTED;
  wire NLW_dw_fifogen_aw_rd_rst_busy_UNCONNECTED;
  wire NLW_dw_fifogen_aw_s_axi_arready_UNCONNECTED;
  wire NLW_dw_fifogen_aw_s_axi_bvalid_UNCONNECTED;
  wire NLW_dw_fifogen_aw_s_axi_rlast_UNCONNECTED;
  wire NLW_dw_fifogen_aw_s_axi_rvalid_UNCONNECTED;
  wire NLW_dw_fifogen_aw_s_axi_wready_UNCONNECTED;
  wire NLW_dw_fifogen_aw_s_axis_tready_UNCONNECTED;
  wire NLW_dw_fifogen_aw_sbiterr_UNCONNECTED;
  wire NLW_dw_fifogen_aw_underflow_UNCONNECTED;
  wire NLW_dw_fifogen_aw_valid_UNCONNECTED;
  wire NLW_dw_fifogen_aw_wr_ack_UNCONNECTED;
  wire NLW_dw_fifogen_aw_wr_rst_busy_UNCONNECTED;
  wire [5:0]NLW_dw_fifogen_aw_axi_ar_data_count_UNCONNECTED;
  wire [5:0]NLW_dw_fifogen_aw_axi_ar_rd_data_count_UNCONNECTED;
  wire [5:0]NLW_dw_fifogen_aw_axi_ar_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_dw_fifogen_aw_axi_aw_data_count_UNCONNECTED;
  wire [5:0]NLW_dw_fifogen_aw_axi_aw_rd_data_count_UNCONNECTED;
  wire [5:0]NLW_dw_fifogen_aw_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_dw_fifogen_aw_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_dw_fifogen_aw_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_dw_fifogen_aw_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_dw_fifogen_aw_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_dw_fifogen_aw_data_count_UNCONNECTED;
  wire [17:0]NLW_dw_fifogen_aw_dout_UNCONNECTED;
  wire [31:0]NLW_dw_fifogen_aw_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_dw_fifogen_aw_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_dw_fifogen_aw_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_dw_fifogen_aw_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_dw_fifogen_aw_m_axi_arsize_UNCONNECTED;
  wire [4:0]NLW_dw_fifogen_aw_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_m_axi_awid_UNCONNECTED;
  wire [31:0]NLW_dw_fifogen_aw_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_m_axi_wid_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_dw_fifogen_aw_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_dw_fifogen_aw_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_dw_fifogen_aw_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_dw_fifogen_aw_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_dw_fifogen_aw_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_s_axi_buser_UNCONNECTED;
  wire [31:0]NLW_dw_fifogen_aw_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_dw_fifogen_aw_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_dw_fifogen_aw_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_dw_fifogen_aw_wr_data_count_UNCONNECTED;
  wire NLW_w_buffer_dbiterr_UNCONNECTED;
  wire NLW_w_buffer_rsta_busy_UNCONNECTED;
  wire NLW_w_buffer_rstb_busy_UNCONNECTED;
  wire NLW_w_buffer_s_axi_arready_UNCONNECTED;
  wire NLW_w_buffer_s_axi_awready_UNCONNECTED;
  wire NLW_w_buffer_s_axi_bvalid_UNCONNECTED;
  wire NLW_w_buffer_s_axi_dbiterr_UNCONNECTED;
  wire NLW_w_buffer_s_axi_rlast_UNCONNECTED;
  wire NLW_w_buffer_s_axi_rvalid_UNCONNECTED;
  wire NLW_w_buffer_s_axi_sbiterr_UNCONNECTED;
  wire NLW_w_buffer_s_axi_wready_UNCONNECTED;
  wire NLW_w_buffer_sbiterr_UNCONNECTED;
  wire [287:0]NLW_w_buffer_douta_UNCONNECTED;
  wire [8:0]NLW_w_buffer_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_w_buffer_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_w_buffer_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_w_buffer_s_axi_rdaddrecc_UNCONNECTED;
  wire [287:0]NLW_w_buffer_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_w_buffer_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_w_buffer_s_axi_rresp_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_mi_state[0]_i_1 
       (.I0(mi_state_ns__0[0]),
        .I1(\FSM_sequential_mi_state[2]_i_3_n_0 ),
        .I2(mi_state[0]),
        .O(\FSM_sequential_mi_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3080DFFF0080DFFF)) 
    \FSM_sequential_mi_state[0]_i_2 
       (.I0(m_axi_awready),
        .I1(mi_state[2]),
        .I2(dw_fifogen_aw_i_4_n_0),
        .I3(mi_state[1]),
        .I4(mi_state[0]),
        .I5(mi_awvalid),
        .O(mi_state_ns__0[0]));
  LUT6 #(
    .INIT(64'h00BFFFFFFF000000)) 
    \FSM_sequential_mi_state[1]_i_1 
       (.I0(mi_state[2]),
        .I1(m_axi_awready),
        .I2(dw_fifogen_aw_i_4_n_0),
        .I3(mi_state[0]),
        .I4(\FSM_sequential_mi_state[2]_i_3_n_0 ),
        .I5(mi_state[1]),
        .O(\FSM_sequential_mi_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_mi_state[2]_i_1 
       (.I0(mi_state_ns__0[2]),
        .I1(\FSM_sequential_mi_state[2]_i_3_n_0 ),
        .I2(mi_state[2]),
        .O(\FSM_sequential_mi_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABAAAAEEABAE)) 
    \FSM_sequential_mi_state[2]_i_2 
       (.I0(load_mi_next),
        .I1(mi_state[2]),
        .I2(mi_state[0]),
        .I3(mi_state[1]),
        .I4(m_axi_awready),
        .I5(dw_fifogen_aw_i_4_n_0),
        .O(mi_state_ns__0[2]));
  LUT6 #(
    .INIT(64'hFFEFAAAABFABAAAA)) 
    \FSM_sequential_mi_state[2]_i_3 
       (.I0(\FSM_sequential_mi_state[2]_i_4_n_0 ),
        .I1(mi_state[0]),
        .I2(mi_state[1]),
        .I3(dw_fifogen_aw_i_4_n_0),
        .I4(mi_state[2]),
        .I5(m_axi_awready),
        .O(\FSM_sequential_mi_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEEEE0)) 
    \FSM_sequential_mi_state[2]_i_4 
       (.I0(\FSM_sequential_mi_state[2]_i_5_n_0 ),
        .I1(\next_mi_len[7]_i_2_n_0 ),
        .I2(mi_state[0]),
        .I3(mi_state[1]),
        .I4(mi_awvalid),
        .I5(mi_state[2]),
        .O(\FSM_sequential_mi_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80FF80FFFFFF80FF)) 
    \FSM_sequential_mi_state[2]_i_5 
       (.I0(M_AXI_WVALID_i_reg_0),
        .I1(m_axi_wready),
        .I2(M_AXI_WLAST_i_reg_0),
        .I3(mi_state[1]),
        .I4(m_axi_awready),
        .I5(mi_state[0]),
        .O(\FSM_sequential_mi_state[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "M_AW_STALL:111,M_IDLE:000,M_ISSUE2:100,M_WRITING2:101,M_ISSUE1:001,M_WRITING1:010,M_AW_DONE2:110,M_AW_DONE1:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_mi_state_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\FSM_sequential_mi_state[0]_i_1_n_0 ),
        .Q(mi_state[0]),
        .R(s_axi_aresetn));
  (* FSM_ENCODED_STATES = "M_AW_STALL:111,M_IDLE:000,M_ISSUE2:100,M_WRITING2:101,M_ISSUE1:001,M_WRITING1:010,M_AW_DONE2:110,M_AW_DONE1:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_mi_state_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\FSM_sequential_mi_state[1]_i_1_n_0 ),
        .Q(mi_state[1]),
        .R(s_axi_aresetn));
  (* FSM_ENCODED_STATES = "M_AW_STALL:111,M_IDLE:000,M_ISSUE2:100,M_WRITING2:101,M_ISSUE1:001,M_WRITING1:010,M_AW_DONE2:110,M_AW_DONE1:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_mi_state_reg[2] 
       (.C(out),
        .CE(1'b1),
        .D(\FSM_sequential_mi_state[2]_i_1_n_0 ),
        .Q(mi_state[2]),
        .R(s_axi_aresetn));
  (* FSM_ENCODED_STATES = "S_AWFULL:10,S_IDLE:00,S_WRITING:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_si_state_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(s_aw_reg_n_39),
        .Q(si_state[0]),
        .R(s_axi_aresetn));
  (* FSM_ENCODED_STATES = "S_AWFULL:10,S_IDLE:00,S_WRITING:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_si_state_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(s_aw_reg_n_40),
        .Q(si_state[1]),
        .R(s_axi_aresetn));
  LUT5 #(
    .INIT(32'h7D7C003C)) 
    M_AXI_AWVALID_i_i_1
       (.I0(m_axi_awready),
        .I1(mi_state[0]),
        .I2(mi_state[2]),
        .I3(mi_state[1]),
        .I4(m_axi_awvalid),
        .O(M_AXI_AWVALID_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    M_AXI_AWVALID_i_reg
       (.C(out),
        .CE(1'b1),
        .D(M_AXI_AWVALID_i_i_1_n_0),
        .Q(m_axi_awvalid),
        .R(s_axi_aresetn));
  LUT5 #(
    .INIT(32'h0000B800)) 
    M_AXI_WLAST_i_i_1
       (.I0(M_AXI_WLAST_i_reg_0),
        .I1(M_AXI_WLAST_i_i_2_n_0),
        .I2(mi_last_d1_reg_n_0),
        .I3(\aresetn_d_reg[1]_0 ),
        .I4(load_mi_ptr),
        .O(M_AXI_WLAST_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0007)) 
    M_AXI_WLAST_i_i_2
       (.I0(m_axi_wready),
        .I1(M_AXI_WVALID_i_reg_0),
        .I2(load_mi_d1),
        .I3(load_mi_d2),
        .O(M_AXI_WLAST_i_i_2_n_0));
  FDRE M_AXI_WLAST_i_reg
       (.C(out),
        .CE(1'b1),
        .D(M_AXI_WLAST_i_i_1_n_0),
        .Q(M_AXI_WLAST_i_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCAFEFEFE10101010)) 
    M_AXI_WVALID_i_i_1
       (.I0(mi_state[0]),
        .I1(mi_state[2]),
        .I2(mi_state[1]),
        .I3(M_AXI_WLAST_i_reg_0),
        .I4(m_axi_wready),
        .I5(M_AXI_WVALID_i_reg_0),
        .O(M_AXI_WVALID_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    M_AXI_WVALID_i_reg
       (.C(out),
        .CE(1'b1),
        .D(M_AXI_WVALID_i_i_1_n_0),
        .Q(M_AXI_WVALID_i_reg_0),
        .R(s_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_WREADY_i_reg
       (.C(out),
        .CE(1'b1),
        .D(s_aw_reg_n_36),
        .Q(S_AXI_WREADY_i_reg_0),
        .R(s_axi_aresetn));
  FDRE \buf_cnt_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(s_aw_reg_n_42),
        .Q(buf_cnt[0]),
        .R(s_axi_aresetn));
  FDRE \buf_cnt_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(s_aw_reg_n_41),
        .Q(buf_cnt[1]),
        .R(s_axi_aresetn));
  FDRE cmd_ready_i_reg
       (.C(out),
        .CE(1'b1),
        .D(aw_pop),
        .Q(\USE_WRITE.wr_cmd_ready ),
        .R(s_axi_aresetn));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "2" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "5" *) 
  (* C_AXI_AWUSER_WIDTH = "5" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
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
  (* C_DIN_WIDTH_RACH = "66" *) 
  (* C_DIN_WIDTH_RDCH = "35" *) 
  (* C_DIN_WIDTH_WACH = "66" *) 
  (* C_DIN_WIDTH_WDCH = "37" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
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
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
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
  (* C_PRIM_FIFO_TYPE = "4kx4" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "30" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
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
  (* C_WDCH_TYPE = "2" *) 
  (* C_WRCH_TYPE = "2" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "32" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "32" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "5" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "5" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_auto_us_df_1_fifo_generator_v13_2_5 dw_fifogen_aw
       (.almost_empty(NLW_dw_fifogen_aw_almost_empty_UNCONNECTED),
        .almost_full(NLW_dw_fifogen_aw_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_dw_fifogen_aw_axi_ar_data_count_UNCONNECTED[5:0]),
        .axi_ar_dbiterr(NLW_dw_fifogen_aw_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_dw_fifogen_aw_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_dw_fifogen_aw_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_dw_fifogen_aw_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_dw_fifogen_aw_axi_ar_rd_data_count_UNCONNECTED[5:0]),
        .axi_ar_sbiterr(NLW_dw_fifogen_aw_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_dw_fifogen_aw_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_dw_fifogen_aw_axi_ar_wr_data_count_UNCONNECTED[5:0]),
        .axi_aw_data_count(NLW_dw_fifogen_aw_axi_aw_data_count_UNCONNECTED[5:0]),
        .axi_aw_dbiterr(NLW_dw_fifogen_aw_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_dw_fifogen_aw_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_dw_fifogen_aw_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_dw_fifogen_aw_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_dw_fifogen_aw_axi_aw_rd_data_count_UNCONNECTED[5:0]),
        .axi_aw_sbiterr(NLW_dw_fifogen_aw_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_dw_fifogen_aw_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_dw_fifogen_aw_axi_aw_wr_data_count_UNCONNECTED[5:0]),
        .axi_b_data_count(NLW_dw_fifogen_aw_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_dw_fifogen_aw_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_dw_fifogen_aw_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_dw_fifogen_aw_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_dw_fifogen_aw_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_dw_fifogen_aw_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_dw_fifogen_aw_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_dw_fifogen_aw_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_dw_fifogen_aw_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_dw_fifogen_aw_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_dw_fifogen_aw_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_dw_fifogen_aw_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_dw_fifogen_aw_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_dw_fifogen_aw_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_dw_fifogen_aw_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_dw_fifogen_aw_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_dw_fifogen_aw_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_dw_fifogen_aw_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_dw_fifogen_aw_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_dw_fifogen_aw_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_dw_fifogen_aw_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_dw_fifogen_aw_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_dw_fifogen_aw_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_dw_fifogen_aw_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_dw_fifogen_aw_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_dw_fifogen_aw_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_dw_fifogen_aw_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_dw_fifogen_aw_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_dw_fifogen_aw_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_dw_fifogen_aw_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_dw_fifogen_aw_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_dw_fifogen_aw_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_dw_fifogen_aw_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_dw_fifogen_aw_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_dw_fifogen_aw_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_dw_fifogen_aw_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_dw_fifogen_aw_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_dw_fifogen_aw_dbiterr_UNCONNECTED),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(NLW_dw_fifogen_aw_dout_UNCONNECTED[17:0]),
        .empty(NLW_dw_fifogen_aw_empty_UNCONNECTED),
        .full(NLW_dw_fifogen_aw_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_dw_fifogen_aw_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_dw_fifogen_aw_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_dw_fifogen_aw_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_dw_fifogen_aw_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_dw_fifogen_aw_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_dw_fifogen_aw_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_dw_fifogen_aw_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_dw_fifogen_aw_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_dw_fifogen_aw_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_dw_fifogen_aw_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_dw_fifogen_aw_m_axi_aruser_UNCONNECTED[4:0]),
        .m_axi_arvalid(NLW_dw_fifogen_aw_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(\goreg_dm.dout_i_reg[22] ),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_dw_fifogen_aw_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(D),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(aw_pop),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(\goreg_dm.dout_i_reg[25] ),
        .m_axi_awuser(mi_last_index_reg),
        .m_axi_awvalid(mi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_dw_fifogen_aw_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_dw_fifogen_aw_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_dw_fifogen_aw_m_axi_wdata_UNCONNECTED[31:0]),
        .m_axi_wid(NLW_dw_fifogen_aw_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_dw_fifogen_aw_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_dw_fifogen_aw_m_axi_wstrb_UNCONNECTED[3:0]),
        .m_axi_wuser(NLW_dw_fifogen_aw_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_dw_fifogen_aw_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_dw_fifogen_aw_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_dw_fifogen_aw_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_dw_fifogen_aw_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_dw_fifogen_aw_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_dw_fifogen_aw_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_dw_fifogen_aw_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_dw_fifogen_aw_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_dw_fifogen_aw_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_dw_fifogen_aw_overflow_UNCONNECTED),
        .prog_empty(NLW_dw_fifogen_aw_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_dw_fifogen_aw_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_dw_fifogen_aw_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(1'b0),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_dw_fifogen_aw_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(out),
        .s_aclk_en(1'b0),
        .s_aresetn(\aresetn_d_reg[1]_0 ),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_dw_fifogen_aw_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr(s_awaddr_reg),
        .s_axi_awburst(s_awburst_reg),
        .s_axi_awcache(s_awcache_reg),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_awlen_reg),
        .s_axi_awlock(s_awlock_reg),
        .s_axi_awprot(s_awprot_reg),
        .s_axi_awqos(s_awqos_reg),
        .s_axi_awready(aw_ready),
        .s_axi_awregion(s_awregion_reg),
        .s_axi_awsize(s_awsize_reg),
        .s_axi_awuser(si_last_index_reg),
        .s_axi_awvalid(s_aw_reg_n_2),
        .s_axi_bid(NLW_dw_fifogen_aw_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_dw_fifogen_aw_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_dw_fifogen_aw_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_dw_fifogen_aw_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_dw_fifogen_aw_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_dw_fifogen_aw_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_dw_fifogen_aw_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_dw_fifogen_aw_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_dw_fifogen_aw_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_dw_fifogen_aw_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_dw_fifogen_aw_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_dw_fifogen_aw_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_dw_fifogen_aw_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_dw_fifogen_aw_underflow_UNCONNECTED),
        .valid(NLW_dw_fifogen_aw_valid_UNCONNECTED),
        .wr_ack(NLW_dw_fifogen_aw_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_dw_fifogen_aw_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(1'b0),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_dw_fifogen_aw_wr_rst_busy_UNCONNECTED));
  LUT5 #(
    .INIT(32'h8E808200)) 
    dw_fifogen_aw_i_2
       (.I0(m_axi_awready),
        .I1(mi_state[2]),
        .I2(mi_state[0]),
        .I3(mi_state[1]),
        .I4(dw_fifogen_aw_i_4_n_0),
        .O(aw_pop));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h80)) 
    dw_fifogen_aw_i_4
       (.I0(M_AXI_WLAST_i_reg_0),
        .I1(m_axi_wready),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(dw_fifogen_aw_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    first_load_mi_d1_i_1
       (.I0(load_mi_d1),
        .I1(first_load_mi_d1),
        .O(first_load_mi_d1_i_1_n_0));
  FDRE first_load_mi_d1_reg
       (.C(out),
        .CE(1'b1),
        .D(first_load_mi_d1_i_1_n_0),
        .Q(first_load_mi_d1),
        .R(s_axi_aresetn));
  LUT5 #(
    .INIT(32'h10911000)) 
    load_mi_d1_i_1
       (.I0(mi_state[1]),
        .I1(mi_state[0]),
        .I2(dw_fifogen_aw_i_4_n_0),
        .I3(mi_state[2]),
        .I4(mi_awvalid),
        .O(load_mi_ptr));
  FDRE load_mi_d1_reg
       (.C(out),
        .CE(1'b1),
        .D(load_mi_ptr),
        .Q(load_mi_d1),
        .R(1'b0));
  FDRE load_mi_d2_reg
       (.C(out),
        .CE(1'b1),
        .D(load_mi_d1),
        .Q(load_mi_d2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[0]_INST_0 
       (.I0(mi_wpayload[8]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[0] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[10]_INST_0 
       (.I0(mi_wpayload[98]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[10] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[10]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[11]_INST_0 
       (.I0(mi_wpayload[107]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[11] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[11]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[12]_INST_0 
       (.I0(mi_wpayload[116]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[12] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[12]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[13]_INST_0 
       (.I0(mi_wpayload[125]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[13] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[13]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[14]_INST_0 
       (.I0(mi_wpayload[134]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[14] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[14]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[15]_INST_0 
       (.I0(mi_wpayload[143]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[15] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[15]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[16]_INST_0 
       (.I0(mi_wpayload[152]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[16] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[16]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[17]_INST_0 
       (.I0(mi_wpayload[161]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[17] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[17]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[18]_INST_0 
       (.I0(mi_wpayload[170]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[18] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[18]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[19]_INST_0 
       (.I0(mi_wpayload[179]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[19] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[19]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[1]_INST_0 
       (.I0(mi_wpayload[17]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[1] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[20]_INST_0 
       (.I0(mi_wpayload[188]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[20] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[20]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[21]_INST_0 
       (.I0(mi_wpayload[197]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[21] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[21]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[22]_INST_0 
       (.I0(mi_wpayload[206]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[22] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[22]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[23]_INST_0 
       (.I0(mi_wpayload[215]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[23] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[23]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[24]_INST_0 
       (.I0(mi_wpayload[224]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[24] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[24]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[25]_INST_0 
       (.I0(mi_wpayload[233]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[25] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[25]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[26]_INST_0 
       (.I0(mi_wpayload[242]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[26] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[26]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[27]_INST_0 
       (.I0(mi_wpayload[251]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[27] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[27]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[28]_INST_0 
       (.I0(mi_wpayload[260]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[28] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[28]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[29]_INST_0 
       (.I0(mi_wpayload[269]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[29] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[29]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[2]_INST_0 
       (.I0(mi_wpayload[26]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[2] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[2]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[30]_INST_0 
       (.I0(mi_wpayload[278]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[30] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[30]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[31]_INST_0 
       (.I0(mi_wpayload[287]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[31] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[31]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[3]_INST_0 
       (.I0(mi_wpayload[35]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[3] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[3]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[4]_INST_0 
       (.I0(mi_wpayload[44]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[4] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[4]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[5]_INST_0 
       (.I0(mi_wpayload[53]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[5] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[5]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[6]_INST_0 
       (.I0(mi_wpayload[62]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[6] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[6]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[7]_INST_0 
       (.I0(mi_wpayload[71]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[7] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[7]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[8]_INST_0 
       (.I0(mi_wpayload[80]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[8] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[8]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_wstrb[9]_INST_0 
       (.I0(mi_wpayload[89]),
        .I1(\mi_wstrb_mask_d2_reg_n_0_[9] ),
        .I2(M_AXI_WVALID_i_reg_0),
        .O(m_axi_wstrb[9]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_addr[0]_i_1 
       (.I0(m_axi_awaddr[0]),
        .I1(load_mi_ptr),
        .I2(\next_mi_addr_reg_n_0_[0] ),
        .O(\mi_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_addr[1]_i_1 
       (.I0(m_axi_awaddr[1]),
        .I1(load_mi_ptr),
        .I2(\next_mi_addr_reg_n_0_[1] ),
        .O(\mi_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_addr[2]_i_1 
       (.I0(m_axi_awaddr[2]),
        .I1(load_mi_ptr),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .O(\mi_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_addr[3]_i_1 
       (.I0(m_axi_awaddr[3]),
        .I1(load_mi_ptr),
        .I2(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_addr[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \mi_addr[4]_i_1 
       (.I0(load_mi_ptr),
        .I1(next_valid),
        .I2(mi_wrap_be_next),
        .O(mi_last_index_reg_d0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_addr[4]_i_2 
       (.I0(m_axi_awaddr[4]),
        .I1(load_mi_ptr),
        .I2(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_addr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000FEEE)) 
    \mi_addr_d1[4]_i_1 
       (.I0(load_mi_d2),
        .I1(load_mi_d1),
        .I2(M_AXI_WVALID_i_reg_0),
        .I3(m_axi_wready),
        .I4(load_mi_ptr),
        .O(\mi_addr_d1[4]_i_1_n_0 ));
  FDRE \mi_addr_d1_reg[0] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(\mi_addr_reg_n_0_[0] ),
        .Q(addr[0]),
        .R(1'b0));
  FDRE \mi_addr_d1_reg[1] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(\mi_addr_reg_n_0_[1] ),
        .Q(addr[1]),
        .R(1'b0));
  FDRE \mi_addr_d1_reg[2] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(\mi_addr_reg_n_0_[2] ),
        .Q(addr[2]),
        .R(1'b0));
  FDRE \mi_addr_d1_reg[3] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(\mi_addr_reg_n_0_[3] ),
        .Q(addr[3]),
        .R(1'b0));
  FDRE \mi_addr_d1_reg[4] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(\mi_addr_reg_n_0_[4] ),
        .Q(addr[4]),
        .R(1'b0));
  FDRE \mi_addr_reg[0] 
       (.C(out),
        .CE(mi_last_index_reg_d0),
        .D(\mi_addr[0]_i_1_n_0 ),
        .Q(\mi_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mi_addr_reg[1] 
       (.C(out),
        .CE(mi_last_index_reg_d0),
        .D(\mi_addr[1]_i_1_n_0 ),
        .Q(\mi_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mi_addr_reg[2] 
       (.C(out),
        .CE(mi_last_index_reg_d0),
        .D(\mi_addr[2]_i_1_n_0 ),
        .Q(\mi_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mi_addr_reg[3] 
       (.C(out),
        .CE(mi_last_index_reg_d0),
        .D(\mi_addr[3]_i_1_n_0 ),
        .Q(\mi_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mi_addr_reg[4] 
       (.C(out),
        .CE(mi_last_index_reg_d0),
        .D(\mi_addr[4]_i_2_n_0 ),
        .Q(\mi_addr_reg_n_0_[4] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFB0FFFFBFB00000)) 
    \mi_be[0]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[0]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[0]_i_3_n_0 ),
        .O(\mi_be[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAE)) 
    \mi_be[0]_i_2 
       (.I0(\mi_be[1]_i_3_n_0 ),
        .I1(\mi_be[12]_i_3_n_0 ),
        .I2(m_axi_awaddr[1]),
        .I3(m_axi_awaddr[2]),
        .I4(m_axi_awaddr[3]),
        .I5(m_axi_awaddr[4]),
        .O(\mi_be[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[0]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[0] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[16]),
        .I4(\mi_be[0]_i_6_n_0 ),
        .I5(size[2]),
        .O(\mi_be[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8FCFCB8B8FCFF)) 
    \mi_be[0]_i_5 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[3]_i_7_n_0 ),
        .I3(\mi_be[16]_i_9_n_0 ),
        .I4(\next_mi_addr_reg_n_0_[4] ),
        .I5(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_be[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[0]_i_6 
       (.I0(be__0[24]),
        .I1(be__0[28]),
        .I2(size[1]),
        .I3(be__0[30]),
        .I4(size[0]),
        .I5(be),
        .O(\mi_be[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFFBFB00000)) 
    \mi_be[10]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[10]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[10]_i_3_n_0 ),
        .O(\mi_be[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \mi_be[10]_i_2 
       (.I0(\mi_be[11]_i_4_n_0 ),
        .I1(\mi_be[12]_i_3_n_0 ),
        .I2(m_axi_awaddr[4]),
        .I3(m_axi_awaddr[3]),
        .I4(m_axi_awaddr[1]),
        .I5(m_axi_awaddr[2]),
        .O(\mi_be[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[10]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[10] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[26]),
        .I4(\mi_be[10]_i_6_n_0 ),
        .I5(size[2]),
        .O(\mi_be[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFB0BFB0BFB0)) 
    \mi_be[10]_i_5 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .I2(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I3(\mi_be[8]_i_6_n_0 ),
        .I4(\mi_be[8]_i_8_n_0 ),
        .I5(\mi_wrap_be_next[10]_i_3_n_0 ),
        .O(\mi_be[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[10]_i_6 
       (.I0(be__0[2]),
        .I1(be__0[6]),
        .I2(size[1]),
        .I3(be__0[8]),
        .I4(size[0]),
        .I5(be__0[9]),
        .O(\mi_be[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFFBFB00000)) 
    \mi_be[11]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[11]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[11]_i_3_n_0 ),
        .O(\mi_be[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
    \mi_be[11]_i_2 
       (.I0(m_axi_awaddr[4]),
        .I1(m_axi_awaddr[3]),
        .I2(m_axi_awaddr[1]),
        .I3(m_axi_awaddr[2]),
        .I4(\mi_be[13]_i_3_n_0 ),
        .I5(\mi_be[11]_i_4_n_0 ),
        .O(\mi_be[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8C888C88AAAAAEAA)) 
    \mi_be[11]_i_4 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .I2(m_axi_awaddr[4]),
        .I3(m_axi_awaddr[3]),
        .I4(m_axi_awaddr[2]),
        .I5(\goreg_dm.dout_i_reg[25] [0]),
        .O(\mi_be[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[11]_i_5 
       (.I0(\mi_wrap_be_next_reg_n_0_[11] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[27]),
        .I4(\mi_be[11]_i_7_n_0 ),
        .I5(size[2]),
        .O(\mi_be[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFB0BFB0BFB0)) 
    \mi_be[11]_i_6 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .I2(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I3(\mi_be[8]_i_6_n_0 ),
        .I4(\mi_be[31]_i_13_n_0 ),
        .I5(\mi_wrap_be_next[10]_i_3_n_0 ),
        .O(\mi_be[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[11]_i_7 
       (.I0(be__0[3]),
        .I1(be__0[7]),
        .I2(size[1]),
        .I3(be__0[9]),
        .I4(size[0]),
        .I5(be__0[10]),
        .O(\mi_be[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF4F444444444)) 
    \mi_be[12]_i_1 
       (.I0(load_mi_ptr),
        .I1(\mi_be_reg[12]_i_2_n_0 ),
        .I2(\mi_be[15]_i_3_n_0 ),
        .I3(\mi_be[13]_i_2_n_0 ),
        .I4(\mi_be[12]_i_3_n_0 ),
        .I5(\mi_be[13]_i_4_n_0 ),
        .O(\mi_be[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \mi_be[12]_i_3 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[0]),
        .I2(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_be[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[12]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[12] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[28]),
        .I4(\mi_be[12]_i_6_n_0 ),
        .I5(size[2]),
        .O(\mi_be[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B8B8)) 
    \mi_be[12]_i_5 
       (.I0(\mi_be[15]_i_9_n_0 ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[15]_i_10_n_0 ),
        .I3(\next_mi_addr_reg_n_0_[1] ),
        .I4(\mi_be[13]_i_9_n_0 ),
        .I5(\mi_be[8]_i_8_n_0 ),
        .O(\mi_be[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[12]_i_6 
       (.I0(be__0[4]),
        .I1(be__0[8]),
        .I2(size[1]),
        .I3(be__0[10]),
        .I4(size[0]),
        .I5(be__0[11]),
        .O(\mi_be[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBA00FFFFBA00BA00)) 
    \mi_be[13]_i_1 
       (.I0(\mi_be[15]_i_3_n_0 ),
        .I1(\mi_be[13]_i_2_n_0 ),
        .I2(\mi_be[13]_i_3_n_0 ),
        .I3(\mi_be[13]_i_4_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[13]_i_5_n_0 ),
        .O(\mi_be[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \mi_be[13]_i_2 
       (.I0(m_axi_awaddr[2]),
        .I1(m_axi_awaddr[1]),
        .I2(m_axi_awaddr[4]),
        .I3(m_axi_awaddr[3]),
        .O(\mi_be[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \mi_be[13]_i_3 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .I2(m_axi_awaddr[0]),
        .O(\mi_be[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAAAAA2AA)) 
    \mi_be[13]_i_4 
       (.I0(load_mi_ptr),
        .I1(m_axi_awaddr[4]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(\goreg_dm.dout_i_reg[25] [2]),
        .I4(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_be[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[13]_i_6 
       (.I0(\mi_wrap_be_next_reg_n_0_[13] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[29]),
        .I4(\mi_be[13]_i_8_n_0 ),
        .I5(size[2]),
        .O(\mi_be[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B8B8)) 
    \mi_be[13]_i_7 
       (.I0(\mi_be[15]_i_9_n_0 ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[15]_i_10_n_0 ),
        .I3(\next_mi_addr_reg_n_0_[1] ),
        .I4(\mi_be[13]_i_9_n_0 ),
        .I5(\mi_be[31]_i_13_n_0 ),
        .O(\mi_be[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[13]_i_8 
       (.I0(be__0[5]),
        .I1(be__0[9]),
        .I2(size[1]),
        .I3(be__0[11]),
        .I4(size[0]),
        .I5(be__0[12]),
        .O(\mi_be[13]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \mi_be[13]_i_9 
       (.I0(\next_mi_addr_reg_n_0_[3] ),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .O(\mi_be[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCACA0ACACACACACA)) 
    \mi_be[14]_i_1 
       (.I0(\mi_be_reg[14]_i_2_n_0 ),
        .I1(\mi_be[14]_i_3_n_0 ),
        .I2(load_mi_ptr),
        .I3(m_axi_awaddr[4]),
        .I4(\goreg_dm.dout_i_reg[25] [0]),
        .I5(\mi_be[31]_i_4_n_0 ),
        .O(\mi_be[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAAAAAAA)) 
    \mi_be[14]_i_3 
       (.I0(\mi_be[15]_i_3_n_0 ),
        .I1(m_axi_awaddr[1]),
        .I2(m_axi_awaddr[2]),
        .I3(m_axi_awaddr[4]),
        .I4(m_axi_awaddr[3]),
        .I5(\mi_be[12]_i_3_n_0 ),
        .O(\mi_be[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[14]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[14] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[30]),
        .I4(\mi_be[14]_i_6_n_0 ),
        .I5(size[2]),
        .O(\mi_be[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B8B8)) 
    \mi_be[14]_i_5 
       (.I0(\mi_be[15]_i_9_n_0 ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[15]_i_10_n_0 ),
        .I3(\mi_wrap_be_next[30]_i_8_n_0 ),
        .I4(\mi_wrap_be_next[9]_i_5_n_0 ),
        .I5(\mi_be[8]_i_8_n_0 ),
        .O(\mi_be[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[14]_i_6 
       (.I0(be__0[6]),
        .I1(be__0[10]),
        .I2(size[1]),
        .I3(be__0[12]),
        .I4(size[0]),
        .I5(be__0[13]),
        .O(\mi_be[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F2FFFF00F20000)) 
    \mi_be[15]_i_1 
       (.I0(\mi_wrap_be_next[13]_i_2_n_0 ),
        .I1(\mi_be[15]_i_2_n_0 ),
        .I2(\mi_be[15]_i_3_n_0 ),
        .I3(\mi_be[15]_i_4_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[15]_i_5_n_0 ),
        .O(\mi_be[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAE00AEAAAE00AAAA)) 
    \mi_be[15]_i_10 
       (.I0(\next_mi_size_reg_n_0_[2] ),
        .I1(\next_mi_addr_reg_n_0_[3] ),
        .I2(\next_mi_addr_reg_n_0_[4] ),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .I5(\next_mi_addr_reg_n_0_[2] ),
        .O(\mi_be[15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFF57FF)) 
    \mi_be[15]_i_2 
       (.I0(m_axi_awaddr[1]),
        .I1(m_axi_awaddr[0]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(m_axi_awaddr[2]),
        .I4(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_be[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAEAAAEAAAAAA)) 
    \mi_be[15]_i_3 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .I2(m_axi_awaddr[4]),
        .I3(m_axi_awaddr[3]),
        .I4(\goreg_dm.dout_i_reg[25] [0]),
        .I5(m_axi_awaddr[2]),
        .O(\mi_be[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \mi_be[15]_i_4 
       (.I0(\goreg_dm.dout_i_reg[25] [1]),
        .I1(\goreg_dm.dout_i_reg[25] [2]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(m_axi_awaddr[4]),
        .O(\mi_be[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1111FFFC1111)) 
    \mi_be[15]_i_6 
       (.I0(\mi_be[15]_i_8_n_0 ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(be),
        .I3(size[0]),
        .I4(size[2]),
        .I5(size[1]),
        .O(\mi_be[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB888B8888)) 
    \mi_be[15]_i_7 
       (.I0(\mi_be[15]_i_9_n_0 ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_wrap_be_next[30]_i_8_n_0 ),
        .I3(\mi_wrap_be_next[9]_i_5_n_0 ),
        .I4(\mi_be[31]_i_13_n_0 ),
        .I5(\mi_be[15]_i_10_n_0 ),
        .O(\mi_be[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \mi_be[15]_i_8 
       (.I0(be__0[7]),
        .I1(be__0[11]),
        .I2(size[1]),
        .I3(be__0[13]),
        .I4(size[0]),
        .I5(be__0[14]),
        .O(\mi_be[15]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mi_be[15]_i_9 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_be[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    \mi_be[16]_i_1 
       (.I0(\mi_be[31]_i_3_n_0 ),
        .I1(\mi_be[31]_i_4_n_0 ),
        .I2(\mi_be[16]_i_2_n_0 ),
        .I3(\mi_be[16]_i_3_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[16]_i_4_n_0 ),
        .O(\mi_be[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA22AA22EF22AA22)) 
    \mi_be[16]_i_2 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .I2(m_axi_awaddr[2]),
        .I3(\goreg_dm.dout_i_reg[25] [1]),
        .I4(m_axi_awaddr[4]),
        .I5(m_axi_awaddr[3]),
        .O(\mi_be[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAEA)) 
    \mi_be[16]_i_3 
       (.I0(\mi_be[16]_i_5_n_0 ),
        .I1(\mi_wrap_be_next[0]_i_4_n_0 ),
        .I2(\mi_wrap_be_next[20]_i_6_n_0 ),
        .I3(m_axi_awaddr[2]),
        .I4(m_axi_awaddr[0]),
        .I5(m_axi_awaddr[1]),
        .O(\mi_be[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \mi_be[16]_i_5 
       (.I0(m_axi_awaddr[3]),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .I2(m_axi_awaddr[4]),
        .I3(\goreg_dm.dout_i_reg[25] [1]),
        .I4(m_axi_awaddr[2]),
        .I5(m_axi_awaddr[1]),
        .O(\mi_be[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[16]_i_6 
       (.I0(\mi_wrap_be_next_reg_n_0_[16] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[0]),
        .I4(\mi_be[16]_i_8_n_0 ),
        .I5(size[2]),
        .O(\mi_be[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCB8B8FCFFB8B8)) 
    \mi_be[16]_i_7 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[17]_i_9_n_0 ),
        .I3(\mi_be[16]_i_9_n_0 ),
        .I4(\next_mi_addr_reg_n_0_[4] ),
        .I5(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_be[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[16]_i_8 
       (.I0(be__0[8]),
        .I1(be__0[12]),
        .I2(size[1]),
        .I3(be__0[14]),
        .I4(size[0]),
        .I5(be__0[15]),
        .O(\mi_be[16]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFEEFE)) 
    \mi_be[16]_i_9 
       (.I0(\next_mi_addr_reg_n_0_[1] ),
        .I1(\next_mi_addr_reg_n_0_[2] ),
        .I2(\next_mi_addr_reg_n_0_[0] ),
        .I3(\next_mi_size_reg_n_0_[0] ),
        .I4(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_be[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F8F0FFF0F8)) 
    \mi_be[17]_i_1 
       (.I0(\mi_be[22]_i_4_n_0 ),
        .I1(\mi_wrap_be_next_reg_n_0_[17] ),
        .I2(\mi_be[17]_i_2_n_0 ),
        .I3(load_mi_ptr),
        .I4(mi_last),
        .I5(\mi_be[17]_i_3_n_0 ),
        .O(\mi_be[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFEEEF)) 
    \mi_be[17]_i_10 
       (.I0(\next_mi_addr_reg_n_0_[1] ),
        .I1(\next_mi_addr_reg_n_0_[2] ),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .I3(\next_mi_addr_reg_n_0_[0] ),
        .I4(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_be[17]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h40400040)) 
    \mi_be[17]_i_11 
       (.I0(m_axi_awaddr[3]),
        .I1(m_axi_awaddr[4]),
        .I2(\goreg_dm.dout_i_reg[25] [1]),
        .I3(m_axi_awaddr[2]),
        .I4(\goreg_dm.dout_i_reg[25] [0]),
        .O(\mi_be[17]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \mi_be[17]_i_12 
       (.I0(m_axi_awaddr[3]),
        .I1(m_axi_awaddr[4]),
        .I2(m_axi_awaddr[0]),
        .I3(m_axi_awaddr[1]),
        .O(\mi_be[17]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_be[17]_i_13 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[2]),
        .O(\mi_be[17]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \mi_be[17]_i_14 
       (.I0(size[2]),
        .I1(size[1]),
        .I2(be__0[9]),
        .I3(size[0]),
        .I4(be__0[13]),
        .O(\mi_be[17]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4444FFF444444444)) 
    \mi_be[17]_i_2 
       (.I0(\mi_be[17]_i_4_n_0 ),
        .I1(\mi_be[17]_i_5_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[1]),
        .I4(\mi_be[17]_i_7_n_0 ),
        .I5(\mi_be[17]_i_8_n_0 ),
        .O(\mi_be[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0303474703004747)) 
    \mi_be[17]_i_3 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[17]_i_9_n_0 ),
        .I3(\mi_be[17]_i_10_n_0 ),
        .I4(\next_mi_addr_reg_n_0_[4] ),
        .I5(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_be[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011110111)) 
    \mi_be[17]_i_4 
       (.I0(\mi_be[17]_i_11_n_0 ),
        .I1(\goreg_dm.dout_i_reg[25] [2]),
        .I2(\mi_be[17]_i_12_n_0 ),
        .I3(\mi_be[17]_i_13_n_0 ),
        .I4(\goreg_dm.dout_i_reg[25] [1]),
        .I5(\mi_be[16]_i_5_n_0 ),
        .O(\mi_be[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \mi_be[17]_i_5 
       (.I0(load_mi_ptr),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .I2(m_axi_awaddr[4]),
        .I3(\goreg_dm.dout_i_reg[25] [2]),
        .I4(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_be[17]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \mi_be[17]_i_6 
       (.I0(size[1]),
        .I1(size[2]),
        .I2(size[0]),
        .O(\mi_be[17]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF47)) 
    \mi_be[17]_i_7 
       (.I0(be__0[15]),
        .I1(size[0]),
        .I2(be__0[16]),
        .I3(size[1]),
        .I4(\mi_be[17]_i_14_n_0 ),
        .O(\mi_be[17]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \mi_be[17]_i_8 
       (.I0(\mi_be[22]_i_4_n_0 ),
        .I1(mi_last),
        .I2(load_mi_ptr),
        .O(\mi_be[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAA22AA22EF22AA22)) 
    \mi_be[17]_i_9 
       (.I0(\next_mi_size_reg_n_0_[2] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_addr_reg_n_0_[4] ),
        .I5(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_be[17]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \mi_be[18]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[18]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[18]_i_3_n_0 ),
        .O(\mi_be[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \mi_be[18]_i_2 
       (.I0(\mi_be[16]_i_2_n_0 ),
        .I1(\mi_be[12]_i_3_n_0 ),
        .I2(m_axi_awaddr[3]),
        .I3(m_axi_awaddr[4]),
        .I4(m_axi_awaddr[1]),
        .I5(m_axi_awaddr[2]),
        .O(\mi_be[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[18]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[18] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[2]),
        .I4(\mi_be[18]_i_6_n_0 ),
        .I5(size[2]),
        .O(\mi_be[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFE0EFE0EFE0)) 
    \mi_be[18]_i_5 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I3(\mi_be[17]_i_9_n_0 ),
        .I4(\mi_be[8]_i_8_n_0 ),
        .I5(\mi_wrap_be_next[18]_i_7_n_0 ),
        .O(\mi_be[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[18]_i_6 
       (.I0(be__0[10]),
        .I1(be__0[14]),
        .I2(size[1]),
        .I3(be__0[16]),
        .I4(size[0]),
        .I5(be__0[17]),
        .O(\mi_be[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \mi_be[19]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[19]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[19]_i_3_n_0 ),
        .O(\mi_be[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
    \mi_be[19]_i_2 
       (.I0(m_axi_awaddr[3]),
        .I1(m_axi_awaddr[4]),
        .I2(m_axi_awaddr[1]),
        .I3(m_axi_awaddr[2]),
        .I4(\mi_be[13]_i_3_n_0 ),
        .I5(\mi_be[16]_i_2_n_0 ),
        .O(\mi_be[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[19]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[19] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[3]),
        .I4(\mi_be[19]_i_6_n_0 ),
        .I5(size[2]),
        .O(\mi_be[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFE0EFE0EFE0)) 
    \mi_be[19]_i_5 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I3(\mi_be[17]_i_9_n_0 ),
        .I4(\mi_be[31]_i_13_n_0 ),
        .I5(\mi_wrap_be_next[18]_i_7_n_0 ),
        .O(\mi_be[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[19]_i_6 
       (.I0(be__0[11]),
        .I1(be__0[15]),
        .I2(size[1]),
        .I3(be__0[17]),
        .I4(size[0]),
        .I5(be__0[18]),
        .O(\mi_be[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    \mi_be[1]_i_1 
       (.I0(\mi_be[1]_i_2_n_0 ),
        .I1(\mi_be[31]_i_4_n_0 ),
        .I2(\mi_be[1]_i_3_n_0 ),
        .I3(\mi_be[1]_i_4_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[1]_i_5_n_0 ),
        .O(\mi_be[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mi_be[1]_i_2 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .O(\mi_be[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA22AA22AA22EF22)) 
    \mi_be[1]_i_3 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .I2(m_axi_awaddr[2]),
        .I3(\goreg_dm.dout_i_reg[25] [1]),
        .I4(m_axi_awaddr[4]),
        .I5(m_axi_awaddr[3]),
        .O(\mi_be[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011100000)) 
    \mi_be[1]_i_4 
       (.I0(m_axi_awaddr[1]),
        .I1(m_axi_awaddr[2]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(m_axi_awaddr[0]),
        .I4(\mi_wrap_be_next[4]_i_2_n_0 ),
        .I5(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_be[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[1]_i_6 
       (.I0(\mi_wrap_be_next_reg_n_0_[1] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[17]),
        .I4(\mi_be[1]_i_8_n_0 ),
        .I5(size[2]),
        .O(\mi_be[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8FCFCB8B8FCFF)) 
    \mi_be[1]_i_7 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[3]_i_7_n_0 ),
        .I3(\mi_be[17]_i_10_n_0 ),
        .I4(\next_mi_addr_reg_n_0_[4] ),
        .I5(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_be[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[1]_i_8 
       (.I0(be__0[25]),
        .I1(be__0[29]),
        .I2(size[1]),
        .I3(be),
        .I4(size[0]),
        .I5(be__0[0]),
        .O(\mi_be[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \mi_be[20]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[20]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[20]_i_3_n_0 ),
        .O(\mi_be[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h555555D555555555)) 
    \mi_be[20]_i_2 
       (.I0(\mi_be[21]_i_2_n_0 ),
        .I1(\mi_be[12]_i_3_n_0 ),
        .I2(m_axi_awaddr[2]),
        .I3(m_axi_awaddr[1]),
        .I4(m_axi_awaddr[3]),
        .I5(m_axi_awaddr[4]),
        .O(\mi_be[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[20]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[20] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[4]),
        .I4(\mi_be[20]_i_6_n_0 ),
        .I5(size[2]),
        .O(\mi_be[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFCF888BFFFFBBBB)) 
    \mi_be[20]_i_5 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[21]_i_8_n_0 ),
        .I3(\next_mi_addr_reg_n_0_[0] ),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .I5(\mi_be[23]_i_8_n_0 ),
        .O(\mi_be[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[20]_i_6 
       (.I0(be__0[12]),
        .I1(be__0[16]),
        .I2(size[1]),
        .I3(be__0[18]),
        .I4(size[0]),
        .I5(be__0[19]),
        .O(\mi_be[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8BBBFFFF8BBB0000)) 
    \mi_be[21]_i_1 
       (.I0(\mi_be[31]_i_3_n_0 ),
        .I1(\mi_be[31]_i_4_n_0 ),
        .I2(\mi_be[21]_i_2_n_0 ),
        .I3(\mi_be[21]_i_3_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[21]_i_4_n_0 ),
        .O(\mi_be[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55F555F501F555F5)) 
    \mi_be[21]_i_2 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(m_axi_awaddr[2]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(\goreg_dm.dout_i_reg[25] [1]),
        .I4(m_axi_awaddr[4]),
        .I5(m_axi_awaddr[3]),
        .O(\mi_be[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF5F7FFFF)) 
    \mi_be[21]_i_3 
       (.I0(\mi_wrap_be_next[20]_i_6_n_0 ),
        .I1(m_axi_awaddr[0]),
        .I2(m_axi_awaddr[1]),
        .I3(\goreg_dm.dout_i_reg[25] [0]),
        .I4(m_axi_awaddr[2]),
        .I5(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_be[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[21]_i_5 
       (.I0(\mi_wrap_be_next_reg_n_0_[21] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[5]),
        .I4(\mi_be[21]_i_7_n_0 ),
        .I5(size[2]),
        .O(\mi_be[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCFFF8BBBCFFF8B8B)) 
    \mi_be[21]_i_6 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[23]_i_8_n_0 ),
        .I3(\mi_be[21]_i_8_n_0 ),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .I5(\next_mi_addr_reg_n_0_[0] ),
        .O(\mi_be[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[21]_i_7 
       (.I0(be__0[13]),
        .I1(be__0[17]),
        .I2(size[1]),
        .I3(be__0[19]),
        .I4(size[0]),
        .I5(be__0[20]),
        .O(\mi_be[21]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \mi_be[21]_i_8 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_addr_reg_n_0_[3] ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .I3(\next_mi_addr_reg_n_0_[1] ),
        .I4(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_be[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCDDDDFCCC)) 
    \mi_be[22]_i_1 
       (.I0(\mi_be[22]_i_2_n_0 ),
        .I1(\mi_be[22]_i_3_n_0 ),
        .I2(\mi_wrap_be_next_reg_n_0_[22] ),
        .I3(\mi_be[22]_i_4_n_0 ),
        .I4(mi_last),
        .I5(load_mi_ptr),
        .O(\mi_be[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \mi_be[22]_i_10 
       (.I0(size[2]),
        .I1(size[1]),
        .I2(be__0[20]),
        .I3(size[0]),
        .I4(be__0[21]),
        .O(\mi_be[22]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h000F110F)) 
    \mi_be[22]_i_2 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .I2(\mi_be[22]_i_5_n_0 ),
        .I3(\next_mi_size_reg_n_0_[2] ),
        .I4(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_be[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0E0E040)) 
    \mi_be[22]_i_3 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(\mi_be[22]_i_6_n_0 ),
        .I2(load_mi_ptr),
        .I3(\mi_be[31]_i_3_n_0 ),
        .I4(\goreg_dm.dout_i_reg[25] [1]),
        .I5(\mi_be[22]_i_7_n_0 ),
        .O(\mi_be[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \mi_be[22]_i_4 
       (.I0(mi_wrap_cnt[3]),
        .I1(mi_wrap_cnt[0]),
        .I2(mi_wrap_cnt[1]),
        .I3(mi_wrap_cnt[2]),
        .I4(\mi_burst_reg_n_0_[1] ),
        .I5(\mi_burst_reg_n_0_[0] ),
        .O(\mi_be[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEF00AA0088008800)) 
    \mi_be[22]_i_5 
       (.I0(\next_mi_size_reg_n_0_[1] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\next_mi_addr_reg_n_0_[0] ),
        .I3(\mi_be[22]_i_8_n_0 ),
        .I4(\next_mi_addr_reg_n_0_[1] ),
        .I5(\next_mi_addr_reg_n_0_[2] ),
        .O(\mi_be[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFBF0A0A000000000)) 
    \mi_be[22]_i_6 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[0]),
        .I2(\goreg_dm.dout_i_reg[25] [1]),
        .I3(m_axi_awaddr[1]),
        .I4(m_axi_awaddr[2]),
        .I5(\mi_wrap_be_next[20]_i_6_n_0 ),
        .O(\mi_be[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    \mi_be[22]_i_7 
       (.I0(load_mi_ptr),
        .I1(mi_last),
        .I2(\mi_be[22]_i_4_n_0 ),
        .I3(\mi_be[22]_i_9_n_0 ),
        .I4(be__0[6]),
        .I5(\mi_be[17]_i_6_n_0 ),
        .O(\mi_be[22]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mi_be[22]_i_8 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_be[22]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000047FF)) 
    \mi_be[22]_i_9 
       (.I0(be__0[14]),
        .I1(size[0]),
        .I2(be__0[18]),
        .I3(size[1]),
        .I4(\mi_be[22]_i_10_n_0 ),
        .O(\mi_be[22]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \mi_be[23]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[23]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[23]_i_3_n_0 ),
        .O(\mi_be[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBA8BB00FFFFBB00)) 
    \mi_be[23]_i_2 
       (.I0(\goreg_dm.dout_i_reg[25] [1]),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .I2(m_axi_awaddr[2]),
        .I3(\goreg_dm.dout_i_reg[25] [2]),
        .I4(\mi_wrap_be_next[20]_i_6_n_0 ),
        .I5(\mi_be[15]_i_2_n_0 ),
        .O(\mi_be[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAF3AAF3AAF3AA00)) 
    \mi_be[23]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[23] ),
        .I1(\mi_be[23]_i_6_n_0 ),
        .I2(\mi_be[23]_i_7_n_0 ),
        .I3(\mi_be[22]_i_4_n_0 ),
        .I4(\mi_be[17]_i_6_n_0 ),
        .I5(be__0[7]),
        .O(\mi_be[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0E0E0EFEFEFEF)) 
    \mi_be[23]_i_5 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I3(\mi_be[31]_i_13_n_0 ),
        .I4(\mi_wrap_be_next[22]_i_2_n_0 ),
        .I5(\mi_be[23]_i_8_n_0 ),
        .O(\mi_be[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \mi_be[23]_i_6 
       (.I0(size[1]),
        .I1(be__0[22]),
        .I2(size[0]),
        .I3(be__0[21]),
        .O(\mi_be[23]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \mi_be[23]_i_7 
       (.I0(size[2]),
        .I1(size[1]),
        .I2(be__0[15]),
        .I3(size[0]),
        .I4(be__0[19]),
        .O(\mi_be[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h55F555F501F555F5)) 
    \mi_be[23]_i_8 
       (.I0(\next_mi_size_reg_n_0_[2] ),
        .I1(\next_mi_addr_reg_n_0_[2] ),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_addr_reg_n_0_[4] ),
        .I5(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_be[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \mi_be[24]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[24]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[24]_i_3_n_0 ),
        .O(\mi_be[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00080000FFFFFFFF)) 
    \mi_be[24]_i_2 
       (.I0(m_axi_awaddr[3]),
        .I1(m_axi_awaddr[4]),
        .I2(m_axi_awaddr[1]),
        .I3(m_axi_awaddr[2]),
        .I4(\mi_be[12]_i_3_n_0 ),
        .I5(\mi_be[27]_i_4_n_0 ),
        .O(\mi_be[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[24]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[24] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[8]),
        .I4(\mi_be[24]_i_6_n_0 ),
        .I5(size[2]),
        .O(\mi_be[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8B8B8B8B8B8)) 
    \mi_be[24]_i_5 
       (.I0(\mi_be[31]_i_11_n_0 ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[27]_i_8_n_0 ),
        .I3(\mi_be[25]_i_7_n_0 ),
        .I4(\mi_wrap_be_next[29]_i_5_n_0 ),
        .I5(\mi_be[8]_i_8_n_0 ),
        .O(\mi_be[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[24]_i_6 
       (.I0(be__0[16]),
        .I1(be__0[20]),
        .I2(size[1]),
        .I3(be__0[22]),
        .I4(size[0]),
        .I5(be__0[23]),
        .O(\mi_be[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \mi_be[25]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[25]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[25]_i_3_n_0 ),
        .O(\mi_be[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00080000FFFFFFFF)) 
    \mi_be[25]_i_2 
       (.I0(m_axi_awaddr[3]),
        .I1(m_axi_awaddr[4]),
        .I2(m_axi_awaddr[1]),
        .I3(m_axi_awaddr[2]),
        .I4(\mi_be[13]_i_3_n_0 ),
        .I5(\mi_be[27]_i_4_n_0 ),
        .O(\mi_be[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[25]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[25] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[9]),
        .I4(\mi_be[25]_i_6_n_0 ),
        .I5(size[2]),
        .O(\mi_be[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8B8B8B8B8B8)) 
    \mi_be[25]_i_5 
       (.I0(\mi_be[31]_i_11_n_0 ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[27]_i_8_n_0 ),
        .I3(\mi_be[25]_i_7_n_0 ),
        .I4(\mi_wrap_be_next[29]_i_5_n_0 ),
        .I5(\mi_be[31]_i_13_n_0 ),
        .O(\mi_be[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[25]_i_6 
       (.I0(be__0[17]),
        .I1(be__0[21]),
        .I2(size[1]),
        .I3(be__0[23]),
        .I4(size[0]),
        .I5(be__0[24]),
        .O(\mi_be[25]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mi_be[25]_i_7 
       (.I0(\next_mi_addr_reg_n_0_[2] ),
        .I1(\next_mi_addr_reg_n_0_[1] ),
        .O(\mi_be[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \mi_be[26]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[26]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[26]_i_3_n_0 ),
        .O(\mi_be[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555555D5555555)) 
    \mi_be[26]_i_2 
       (.I0(\mi_be[27]_i_4_n_0 ),
        .I1(\mi_be[12]_i_3_n_0 ),
        .I2(m_axi_awaddr[3]),
        .I3(m_axi_awaddr[4]),
        .I4(m_axi_awaddr[1]),
        .I5(m_axi_awaddr[2]),
        .O(\mi_be[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[26]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[26] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[10]),
        .I4(\mi_be[26]_i_6_n_0 ),
        .I5(size[2]),
        .O(\mi_be[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFE0EFE0EFE0)) 
    \mi_be[26]_i_5 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I3(\mi_be[27]_i_8_n_0 ),
        .I4(\mi_be[8]_i_8_n_0 ),
        .I5(\mi_wrap_be_next[26]_i_3_n_0 ),
        .O(\mi_be[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[26]_i_6 
       (.I0(be__0[18]),
        .I1(be__0[22]),
        .I2(size[1]),
        .I3(be__0[24]),
        .I4(size[0]),
        .I5(be__0[25]),
        .O(\mi_be[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \mi_be[27]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[27]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[27]_i_3_n_0 ),
        .O(\mi_be[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00800000FFFFFFFF)) 
    \mi_be[27]_i_2 
       (.I0(m_axi_awaddr[3]),
        .I1(m_axi_awaddr[4]),
        .I2(m_axi_awaddr[1]),
        .I3(m_axi_awaddr[2]),
        .I4(\mi_be[13]_i_3_n_0 ),
        .I5(\mi_be[27]_i_4_n_0 ),
        .O(\mi_be[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10DD55DD55DD55DD)) 
    \mi_be[27]_i_4 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .I2(m_axi_awaddr[2]),
        .I3(\goreg_dm.dout_i_reg[25] [1]),
        .I4(m_axi_awaddr[4]),
        .I5(m_axi_awaddr[3]),
        .O(\mi_be[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[27]_i_5 
       (.I0(\mi_wrap_be_next_reg_n_0_[27] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[11]),
        .I4(\mi_be[27]_i_7_n_0 ),
        .I5(size[2]),
        .O(\mi_be[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFE0EFE0EFE0)) 
    \mi_be[27]_i_6 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I3(\mi_be[27]_i_8_n_0 ),
        .I4(\mi_be[31]_i_13_n_0 ),
        .I5(\mi_wrap_be_next[26]_i_3_n_0 ),
        .O(\mi_be[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFA0A0CFC0CFC0)) 
    \mi_be[27]_i_7 
       (.I0(be__0[19]),
        .I1(be__0[23]),
        .I2(size[1]),
        .I3(be__0[26]),
        .I4(be__0[25]),
        .I5(size[0]),
        .O(\mi_be[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEF22AA22AA22AA22)) 
    \mi_be[27]_i_8 
       (.I0(\next_mi_size_reg_n_0_[2] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_addr_reg_n_0_[4] ),
        .I5(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_be[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \mi_be[28]_i_1 
       (.I0(\mi_be[31]_i_3_n_0 ),
        .I1(\mi_be[31]_i_4_n_0 ),
        .I2(\mi_be[28]_i_2_n_0 ),
        .I3(\mi_be[29]_i_3_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[28]_i_3_n_0 ),
        .O(\mi_be[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000005000)) 
    \mi_be[28]_i_2 
       (.I0(\goreg_dm.dout_i_reg[25] [1]),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .I2(\mi_wrap_be_next[30]_i_5_n_0 ),
        .I3(m_axi_awaddr[2]),
        .I4(m_axi_awaddr[1]),
        .I5(m_axi_awaddr[0]),
        .O(\mi_be[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[28]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[28] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[28]_i_6_n_0 ),
        .I3(size[2]),
        .I4(\mi_be[17]_i_6_n_0 ),
        .I5(be__0[12]),
        .O(\mi_be[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFCFFB8B8B8BB)) 
    \mi_be[28]_i_5 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[31]_i_12_n_0 ),
        .I3(\mi_be[29]_i_8_n_0 ),
        .I4(\next_mi_addr_reg_n_0_[0] ),
        .I5(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_be[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[28]_i_6 
       (.I0(be__0[20]),
        .I1(be__0[24]),
        .I2(size[1]),
        .I3(be__0[26]),
        .I4(size[0]),
        .I5(be__0[27]),
        .O(\mi_be[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFFFFB8BB0000)) 
    \mi_be[29]_i_1 
       (.I0(\mi_be[31]_i_3_n_0 ),
        .I1(\mi_be[31]_i_4_n_0 ),
        .I2(\mi_be[29]_i_2_n_0 ),
        .I3(\mi_be[29]_i_3_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[29]_i_4_n_0 ),
        .O(\mi_be[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000500000004000)) 
    \mi_be[29]_i_2 
       (.I0(\goreg_dm.dout_i_reg[25] [1]),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .I2(\mi_wrap_be_next[30]_i_5_n_0 ),
        .I3(m_axi_awaddr[2]),
        .I4(m_axi_awaddr[1]),
        .I5(m_axi_awaddr[0]),
        .O(\mi_be[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h01F555F555F555F5)) 
    \mi_be[29]_i_3 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(m_axi_awaddr[2]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(\goreg_dm.dout_i_reg[25] [1]),
        .I4(m_axi_awaddr[4]),
        .I5(m_axi_awaddr[3]),
        .O(\mi_be[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[29]_i_5 
       (.I0(\mi_wrap_be_next_reg_n_0_[29] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[13]),
        .I4(\mi_be[29]_i_7_n_0 ),
        .I5(size[2]),
        .O(\mi_be[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFB8BBFCFFB8B8)) 
    \mi_be[29]_i_6 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[31]_i_12_n_0 ),
        .I3(\mi_be[29]_i_8_n_0 ),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .I5(\next_mi_addr_reg_n_0_[0] ),
        .O(\mi_be[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[29]_i_7 
       (.I0(be__0[21]),
        .I1(be__0[25]),
        .I2(size[1]),
        .I3(be__0[27]),
        .I4(size[0]),
        .I5(be__0[28]),
        .O(\mi_be[29]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \mi_be[29]_i_8 
       (.I0(\next_mi_addr_reg_n_0_[1] ),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .I3(\next_mi_addr_reg_n_0_[4] ),
        .I4(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_be[29]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFFBFB00000)) 
    \mi_be[2]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[2]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[2]_i_3_n_0 ),
        .O(\mi_be[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    \mi_be[2]_i_2 
       (.I0(\mi_be[1]_i_3_n_0 ),
        .I1(\mi_be[12]_i_3_n_0 ),
        .I2(m_axi_awaddr[3]),
        .I3(m_axi_awaddr[4]),
        .I4(m_axi_awaddr[1]),
        .I5(m_axi_awaddr[2]),
        .O(\mi_be[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[2]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[2] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[18]),
        .I4(\mi_be[2]_i_6_n_0 ),
        .I5(size[2]),
        .O(\mi_be[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFB0BFB0BFB0)) 
    \mi_be[2]_i_5 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .I2(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I3(\mi_be[3]_i_7_n_0 ),
        .I4(\mi_be[8]_i_8_n_0 ),
        .I5(\mi_wrap_be_next[2]_i_3_n_0 ),
        .O(\mi_be[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[2]_i_6 
       (.I0(be__0[26]),
        .I1(be__0[30]),
        .I2(size[1]),
        .I3(be__0[0]),
        .I4(size[0]),
        .I5(be__0[1]),
        .O(\mi_be[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    \mi_be[30]_i_1 
       (.I0(\mi_be[31]_i_3_n_0 ),
        .I1(\mi_be[31]_i_4_n_0 ),
        .I2(\mi_be[31]_i_5_n_0 ),
        .I3(\mi_be[30]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[30]_i_3_n_0 ),
        .O(\mi_be[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \mi_be[30]_i_2 
       (.I0(m_axi_awaddr[3]),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .I2(m_axi_awaddr[0]),
        .I3(\mi_be[30]_i_4_n_0 ),
        .I4(m_axi_awaddr[4]),
        .I5(\goreg_dm.dout_i_reg[25] [0]),
        .O(\mi_be[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mi_be[30]_i_4 
       (.I0(m_axi_awaddr[2]),
        .I1(m_axi_awaddr[1]),
        .O(\mi_be[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[30]_i_5 
       (.I0(\mi_wrap_be_next_reg_n_0_[30] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[14]),
        .I4(\mi_be[30]_i_7_n_0 ),
        .I5(size[2]),
        .O(\mi_be[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFEFFFEF00E0)) 
    \mi_be[30]_i_6 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\next_mi_size_reg_n_0_[2] ),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\mi_be[31]_i_12_n_0 ),
        .I5(\mi_be[30]_i_8_n_0 ),
        .O(\mi_be[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \mi_be[30]_i_7 
       (.I0(be__0[26]),
        .I1(be__0[22]),
        .I2(size[1]),
        .I3(be__0[28]),
        .I4(size[0]),
        .I5(be__0[29]),
        .O(\mi_be[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00A2000000000000)) 
    \mi_be[30]_i_8 
       (.I0(\mi_wrap_be_next[29]_i_5_n_0 ),
        .I1(\next_mi_addr_reg_n_0_[0] ),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_addr_reg_n_0_[1] ),
        .I5(\next_mi_addr_reg_n_0_[2] ),
        .O(\mi_be[30]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF5554)) 
    \mi_be[31]_i_1 
       (.I0(M_AXI_WLAST_i_i_2_n_0),
        .I1(\mi_burst_reg_n_0_[1] ),
        .I2(\mi_burst_reg_n_0_[0] ),
        .I3(mi_last),
        .I4(load_mi_ptr),
        .O(\mi_be[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[31]_i_10 
       (.I0(be__0[23]),
        .I1(be__0[27]),
        .I2(size[1]),
        .I3(be__0[29]),
        .I4(size[0]),
        .I5(be__0[30]),
        .O(\mi_be[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mi_be[31]_i_11 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_be[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFE0AAA0AAA0AAA0A)) 
    \mi_be[31]_i_12 
       (.I0(\next_mi_size_reg_n_0_[2] ),
        .I1(\next_mi_addr_reg_n_0_[2] ),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_addr_reg_n_0_[4] ),
        .I5(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_be[31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \mi_be[31]_i_13 
       (.I0(\next_mi_size_reg_n_0_[1] ),
        .I1(\next_mi_addr_reg_n_0_[0] ),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_be[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    \mi_be[31]_i_2 
       (.I0(\mi_be[31]_i_3_n_0 ),
        .I1(\mi_be[31]_i_4_n_0 ),
        .I2(\mi_be[31]_i_5_n_0 ),
        .I3(\mi_be[31]_i_6_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[31]_i_7_n_0 ),
        .O(\mi_be[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mi_be[31]_i_3 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .O(\mi_be[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mi_be[31]_i_4 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_be[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hECEAE0EAE0AAE0AA)) 
    \mi_be[31]_i_5 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(\mi_wrap_be_next[30]_i_5_n_0 ),
        .I2(\goreg_dm.dout_i_reg[25] [1]),
        .I3(\goreg_dm.dout_i_reg[25] [0]),
        .I4(m_axi_awaddr[1]),
        .I5(m_axi_awaddr[2]),
        .O(\mi_be[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \mi_be[31]_i_6 
       (.I0(m_axi_awaddr[1]),
        .I1(m_axi_awaddr[0]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(m_axi_awaddr[2]),
        .I4(\goreg_dm.dout_i_reg[25] [1]),
        .I5(\mi_wrap_be_next[30]_i_5_n_0 ),
        .O(\mi_be[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[31]_i_8 
       (.I0(\mi_wrap_be_next_reg_n_0_[31] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[15]),
        .I4(\mi_be[31]_i_10_n_0 ),
        .I5(size[2]),
        .O(\mi_be[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8B8B8B8B8B8)) 
    \mi_be[31]_i_9 
       (.I0(\mi_be[31]_i_11_n_0 ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[31]_i_12_n_0 ),
        .I3(\mi_wrap_be_next[30]_i_8_n_0 ),
        .I4(\mi_wrap_be_next[29]_i_5_n_0 ),
        .I5(\mi_be[31]_i_13_n_0 ),
        .O(\mi_be[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFFBFB00000)) 
    \mi_be[3]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[3]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[3]_i_3_n_0 ),
        .O(\mi_be[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \mi_be[3]_i_2 
       (.I0(m_axi_awaddr[3]),
        .I1(m_axi_awaddr[4]),
        .I2(m_axi_awaddr[1]),
        .I3(m_axi_awaddr[2]),
        .I4(\mi_be[13]_i_3_n_0 ),
        .I5(\mi_be[1]_i_3_n_0 ),
        .O(\mi_be[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[3]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[3] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[19]),
        .I4(\mi_be[3]_i_6_n_0 ),
        .I5(size[2]),
        .O(\mi_be[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFB0BFB0BFB0)) 
    \mi_be[3]_i_5 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .I2(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I3(\mi_be[3]_i_7_n_0 ),
        .I4(\mi_be[31]_i_13_n_0 ),
        .I5(\mi_wrap_be_next[2]_i_3_n_0 ),
        .O(\mi_be[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[3]_i_6 
       (.I0(be__0[27]),
        .I1(be),
        .I2(size[1]),
        .I3(be__0[1]),
        .I4(size[0]),
        .I5(be__0[2]),
        .O(\mi_be[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA22AA22AA22EF22)) 
    \mi_be[3]_i_7 
       (.I0(\next_mi_size_reg_n_0_[2] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_addr_reg_n_0_[4] ),
        .I5(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_be[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFFBFB00000)) 
    \mi_be[4]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[4]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[4]_i_3_n_0 ),
        .O(\mi_be[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    \mi_be[4]_i_2 
       (.I0(\mi_be[5]_i_4_n_0 ),
        .I1(m_axi_awaddr[2]),
        .I2(m_axi_awaddr[1]),
        .I3(m_axi_awaddr[3]),
        .I4(m_axi_awaddr[4]),
        .I5(\mi_be[12]_i_3_n_0 ),
        .O(\mi_be[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[4]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[4] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[20]),
        .I4(\mi_be[4]_i_6_n_0 ),
        .I5(size[2]),
        .O(\mi_be[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFCFF74747477)) 
    \mi_be[4]_i_5 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[6]_i_6_n_0 ),
        .I3(\mi_be[5]_i_8_n_0 ),
        .I4(\next_mi_addr_reg_n_0_[0] ),
        .I5(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_be[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[4]_i_6 
       (.I0(be__0[28]),
        .I1(be__0[0]),
        .I2(size[1]),
        .I3(be__0[2]),
        .I4(size[0]),
        .I5(be__0[3]),
        .O(\mi_be[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFFBFB00000)) 
    \mi_be[5]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[5]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[5]_i_3_n_0 ),
        .O(\mi_be[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    \mi_be[5]_i_2 
       (.I0(\mi_be[5]_i_4_n_0 ),
        .I1(m_axi_awaddr[2]),
        .I2(m_axi_awaddr[1]),
        .I3(m_axi_awaddr[3]),
        .I4(m_axi_awaddr[4]),
        .I5(\mi_be[13]_i_3_n_0 ),
        .O(\mi_be[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA0AAA0AAA0AFE0A)) 
    \mi_be[5]_i_4 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(m_axi_awaddr[2]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(\goreg_dm.dout_i_reg[25] [1]),
        .I4(m_axi_awaddr[4]),
        .I5(m_axi_awaddr[3]),
        .O(\mi_be[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[5]_i_5 
       (.I0(\mi_wrap_be_next_reg_n_0_[5] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[21]),
        .I4(\mi_be[5]_i_7_n_0 ),
        .I5(size[2]),
        .O(\mi_be[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF7477FCFF7474)) 
    \mi_be[5]_i_6 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[6]_i_6_n_0 ),
        .I3(\mi_be[5]_i_8_n_0 ),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .I5(\next_mi_addr_reg_n_0_[0] ),
        .O(\mi_be[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[5]_i_7 
       (.I0(be__0[29]),
        .I1(be__0[1]),
        .I2(size[1]),
        .I3(be__0[3]),
        .I4(size[0]),
        .I5(be__0[4]),
        .O(\mi_be[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \mi_be[5]_i_8 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_addr_reg_n_0_[3] ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .I3(\next_mi_addr_reg_n_0_[1] ),
        .I4(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_be[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F8F0FFF0F8)) 
    \mi_be[6]_i_1 
       (.I0(\mi_be[22]_i_4_n_0 ),
        .I1(\mi_wrap_be_next_reg_n_0_[6] ),
        .I2(\mi_be[6]_i_2_n_0 ),
        .I3(load_mi_ptr),
        .I4(mi_last),
        .I5(\mi_be[6]_i_3_n_0 ),
        .O(\mi_be[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444FFF444444444)) 
    \mi_be[6]_i_2 
       (.I0(\mi_be[6]_i_4_n_0 ),
        .I1(\mi_be[13]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[22]),
        .I4(\mi_be[6]_i_5_n_0 ),
        .I5(\mi_be[17]_i_8_n_0 ),
        .O(\mi_be[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2020202F202F202F)) 
    \mi_be[6]_i_3 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I3(\mi_be[6]_i_6_n_0 ),
        .I4(\mi_be[8]_i_8_n_0 ),
        .I5(\mi_be[6]_i_7_n_0 ),
        .O(\mi_be[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0222333322223333)) 
    \mi_be[6]_i_4 
       (.I0(\mi_be[6]_i_8_n_0 ),
        .I1(\goreg_dm.dout_i_reg[25] [2]),
        .I2(m_axi_awaddr[1]),
        .I3(m_axi_awaddr[2]),
        .I4(\mi_wrap_be_next[4]_i_2_n_0 ),
        .I5(\mi_be[12]_i_3_n_0 ),
        .O(\mi_be[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF47)) 
    \mi_be[6]_i_5 
       (.I0(be__0[4]),
        .I1(size[0]),
        .I2(be__0[5]),
        .I3(size[1]),
        .I4(\mi_be[6]_i_9_n_0 ),
        .O(\mi_be[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAA0AAA0AAA0AFE0A)) 
    \mi_be[6]_i_6 
       (.I0(\next_mi_size_reg_n_0_[2] ),
        .I1(\next_mi_addr_reg_n_0_[2] ),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_addr_reg_n_0_[4] ),
        .I5(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_be[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \mi_be[6]_i_7 
       (.I0(\next_mi_addr_reg_n_0_[3] ),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .I2(\next_mi_addr_reg_n_0_[1] ),
        .I3(\next_mi_addr_reg_n_0_[2] ),
        .O(\mi_be[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \mi_be[6]_i_8 
       (.I0(m_axi_awaddr[2]),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .I2(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_be[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \mi_be[6]_i_9 
       (.I0(size[2]),
        .I1(size[1]),
        .I2(be__0[30]),
        .I3(size[0]),
        .I4(be__0[2]),
        .O(\mi_be[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFFBFB00000)) 
    \mi_be[7]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[7]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[7]_i_3_n_0 ),
        .O(\mi_be[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF4FFC4C4C444)) 
    \mi_be[7]_i_2 
       (.I0(\mi_be[15]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[4]_i_2_n_0 ),
        .I2(\goreg_dm.dout_i_reg[25] [1]),
        .I3(\goreg_dm.dout_i_reg[25] [0]),
        .I4(m_axi_awaddr[2]),
        .I5(\goreg_dm.dout_i_reg[25] [2]),
        .O(\mi_be[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[7]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[7] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[23]),
        .I4(\mi_be[7]_i_6_n_0 ),
        .I5(size[2]),
        .O(\mi_be[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFB0BFB0BFB0)) 
    \mi_be[7]_i_5 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .I2(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I3(\mi_be[6]_i_6_n_0 ),
        .I4(\mi_be[31]_i_13_n_0 ),
        .I5(\mi_be[6]_i_7_n_0 ),
        .O(\mi_be[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[7]_i_6 
       (.I0(be),
        .I1(be__0[3]),
        .I2(size[1]),
        .I3(be__0[5]),
        .I4(size[0]),
        .I5(be__0[6]),
        .O(\mi_be[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F8F0FFF0F8)) 
    \mi_be[8]_i_1 
       (.I0(\mi_be[22]_i_4_n_0 ),
        .I1(\mi_wrap_be_next_reg_n_0_[8] ),
        .I2(\mi_be[8]_i_2_n_0 ),
        .I3(load_mi_ptr),
        .I4(mi_last),
        .I5(\mi_be[8]_i_3_n_0 ),
        .O(\mi_be[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_be[8]_i_10 
       (.I0(m_axi_awaddr[2]),
        .I1(m_axi_awaddr[1]),
        .O(\mi_be[8]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \mi_be[8]_i_11 
       (.I0(size[2]),
        .I1(size[1]),
        .I2(be__0[0]),
        .I3(size[0]),
        .I4(be__0[4]),
        .O(\mi_be[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4444FFF444444444)) 
    \mi_be[8]_i_2 
       (.I0(\mi_be[8]_i_4_n_0 ),
        .I1(\mi_be[13]_i_4_n_0 ),
        .I2(\mi_be[17]_i_6_n_0 ),
        .I3(be__0[24]),
        .I4(\mi_be[8]_i_5_n_0 ),
        .I5(\mi_be[17]_i_8_n_0 ),
        .O(\mi_be[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h202F2020202F202F)) 
    \mi_be[8]_i_3 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I3(\mi_be[8]_i_6_n_0 ),
        .I4(\mi_be[8]_i_7_n_0 ),
        .I5(\mi_be[8]_i_8_n_0 ),
        .O(\mi_be[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000B0F0F0B0B0F0F)) 
    \mi_be[8]_i_4 
       (.I0(\mi_be[8]_i_9_n_0 ),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .I2(\goreg_dm.dout_i_reg[25] [2]),
        .I3(\mi_be[8]_i_10_n_0 ),
        .I4(\mi_wrap_be_next[13]_i_2_n_0 ),
        .I5(\mi_be[12]_i_3_n_0 ),
        .O(\mi_be[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF47)) 
    \mi_be[8]_i_5 
       (.I0(be__0[6]),
        .I1(size[0]),
        .I2(be__0[7]),
        .I3(size[1]),
        .I4(\mi_be[8]_i_11_n_0 ),
        .O(\mi_be[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAE00AE00AAAAAEAA)) 
    \mi_be[8]_i_6 
       (.I0(\next_mi_size_reg_n_0_[2] ),
        .I1(\next_mi_addr_reg_n_0_[3] ),
        .I2(\next_mi_addr_reg_n_0_[4] ),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_addr_reg_n_0_[2] ),
        .I5(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_be[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \mi_be[8]_i_7 
       (.I0(\next_mi_addr_reg_n_0_[1] ),
        .I1(\next_mi_addr_reg_n_0_[2] ),
        .I2(\next_mi_addr_reg_n_0_[3] ),
        .I3(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_be[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \mi_be[8]_i_8 
       (.I0(\next_mi_size_reg_n_0_[1] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\next_mi_addr_reg_n_0_[0] ),
        .O(\mi_be[8]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mi_be[8]_i_9 
       (.I0(m_axi_awaddr[2]),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .O(\mi_be[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0FFFFBFB00000)) 
    \mi_be[9]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(\mi_be[31]_i_4_n_0 ),
        .I3(\mi_be[9]_i_2_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_be_reg[9]_i_3_n_0 ),
        .O(\mi_be[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \mi_be[9]_i_2 
       (.I0(\mi_be[11]_i_4_n_0 ),
        .I1(m_axi_awaddr[1]),
        .I2(m_axi_awaddr[2]),
        .I3(m_axi_awaddr[4]),
        .I4(m_axi_awaddr[3]),
        .I5(\mi_be[13]_i_3_n_0 ),
        .O(\mi_be[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBB8BBB88888)) 
    \mi_be[9]_i_4 
       (.I0(\mi_wrap_be_next_reg_n_0_[9] ),
        .I1(\mi_be[22]_i_4_n_0 ),
        .I2(\mi_be[9]_i_6_n_0 ),
        .I3(size[2]),
        .I4(\mi_be[17]_i_6_n_0 ),
        .I5(be__0[25]),
        .O(\mi_be[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B8B8)) 
    \mi_be[9]_i_5 
       (.I0(\mi_be[15]_i_9_n_0 ),
        .I1(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I2(\mi_be[8]_i_6_n_0 ),
        .I3(\mi_be[25]_i_7_n_0 ),
        .I4(\mi_wrap_be_next[9]_i_5_n_0 ),
        .I5(\mi_be[31]_i_13_n_0 ),
        .O(\mi_be[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_be[9]_i_6 
       (.I0(be__0[1]),
        .I1(be__0[5]),
        .I2(size[1]),
        .I3(be__0[7]),
        .I4(size[0]),
        .I5(be__0[8]),
        .O(\mi_be[9]_i_6_n_0 ));
  FDRE \mi_be_d1_reg[0] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[0]),
        .Q(\mi_be_d1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[10] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[10]),
        .Q(\mi_be_d1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[11] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[11]),
        .Q(\mi_be_d1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[12] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[12]),
        .Q(\mi_be_d1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[13] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[13]),
        .Q(\mi_be_d1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[14] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[14]),
        .Q(\mi_be_d1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[15] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[15]),
        .Q(\mi_be_d1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[16] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[16]),
        .Q(\mi_be_d1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[17] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[17]),
        .Q(\mi_be_d1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[18] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[18]),
        .Q(\mi_be_d1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[19] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[19]),
        .Q(\mi_be_d1_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[1] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[1]),
        .Q(\mi_be_d1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[20] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[20]),
        .Q(\mi_be_d1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[21] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[21]),
        .Q(\mi_be_d1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[22] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[22]),
        .Q(\mi_be_d1_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[23] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[23]),
        .Q(\mi_be_d1_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[24] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[24]),
        .Q(\mi_be_d1_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[25] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[25]),
        .Q(\mi_be_d1_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[26] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[26]),
        .Q(\mi_be_d1_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[27] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[27]),
        .Q(\mi_be_d1_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[28] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[28]),
        .Q(\mi_be_d1_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[29] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[29]),
        .Q(\mi_be_d1_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[2] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[2]),
        .Q(\mi_be_d1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[30] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[30]),
        .Q(\mi_be_d1_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[31] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be),
        .Q(\mi_be_d1_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[3] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[3]),
        .Q(\mi_be_d1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[4] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[4]),
        .Q(\mi_be_d1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[5] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[5]),
        .Q(\mi_be_d1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[6] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[6]),
        .Q(\mi_be_d1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[7] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[7]),
        .Q(\mi_be_d1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[8] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[8]),
        .Q(\mi_be_d1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mi_be_d1_reg[9] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(be__0[9]),
        .Q(\mi_be_d1_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \mi_be_reg[0] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[0]_i_1_n_0 ),
        .Q(be__0[0]),
        .R(1'b0));
  MUXF7 \mi_be_reg[0]_i_3 
       (.I0(\mi_be[0]_i_4_n_0 ),
        .I1(\mi_be[0]_i_5_n_0 ),
        .O(\mi_be_reg[0]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[10] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[10]_i_1_n_0 ),
        .Q(be__0[10]),
        .R(1'b0));
  MUXF7 \mi_be_reg[10]_i_3 
       (.I0(\mi_be[10]_i_4_n_0 ),
        .I1(\mi_be[10]_i_5_n_0 ),
        .O(\mi_be_reg[10]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[11] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[11]_i_1_n_0 ),
        .Q(be__0[11]),
        .R(1'b0));
  MUXF7 \mi_be_reg[11]_i_3 
       (.I0(\mi_be[11]_i_5_n_0 ),
        .I1(\mi_be[11]_i_6_n_0 ),
        .O(\mi_be_reg[11]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[12] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[12]_i_1_n_0 ),
        .Q(be__0[12]),
        .R(1'b0));
  MUXF7 \mi_be_reg[12]_i_2 
       (.I0(\mi_be[12]_i_4_n_0 ),
        .I1(\mi_be[12]_i_5_n_0 ),
        .O(\mi_be_reg[12]_i_2_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[13] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[13]_i_1_n_0 ),
        .Q(be__0[13]),
        .R(1'b0));
  MUXF7 \mi_be_reg[13]_i_5 
       (.I0(\mi_be[13]_i_6_n_0 ),
        .I1(\mi_be[13]_i_7_n_0 ),
        .O(\mi_be_reg[13]_i_5_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[14] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[14]_i_1_n_0 ),
        .Q(be__0[14]),
        .R(1'b0));
  MUXF7 \mi_be_reg[14]_i_2 
       (.I0(\mi_be[14]_i_4_n_0 ),
        .I1(\mi_be[14]_i_5_n_0 ),
        .O(\mi_be_reg[14]_i_2_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[15] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[15]_i_1_n_0 ),
        .Q(be__0[15]),
        .R(1'b0));
  MUXF7 \mi_be_reg[15]_i_5 
       (.I0(\mi_be[15]_i_6_n_0 ),
        .I1(\mi_be[15]_i_7_n_0 ),
        .O(\mi_be_reg[15]_i_5_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[16] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[16]_i_1_n_0 ),
        .Q(be__0[16]),
        .R(1'b0));
  MUXF7 \mi_be_reg[16]_i_4 
       (.I0(\mi_be[16]_i_6_n_0 ),
        .I1(\mi_be[16]_i_7_n_0 ),
        .O(\mi_be_reg[16]_i_4_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[17] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[17]_i_1_n_0 ),
        .Q(be__0[17]),
        .R(1'b0));
  FDRE \mi_be_reg[18] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[18]_i_1_n_0 ),
        .Q(be__0[18]),
        .R(1'b0));
  MUXF7 \mi_be_reg[18]_i_3 
       (.I0(\mi_be[18]_i_4_n_0 ),
        .I1(\mi_be[18]_i_5_n_0 ),
        .O(\mi_be_reg[18]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[19] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[19]_i_1_n_0 ),
        .Q(be__0[19]),
        .R(1'b0));
  MUXF7 \mi_be_reg[19]_i_3 
       (.I0(\mi_be[19]_i_4_n_0 ),
        .I1(\mi_be[19]_i_5_n_0 ),
        .O(\mi_be_reg[19]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[1] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[1]_i_1_n_0 ),
        .Q(be__0[1]),
        .R(1'b0));
  MUXF7 \mi_be_reg[1]_i_5 
       (.I0(\mi_be[1]_i_6_n_0 ),
        .I1(\mi_be[1]_i_7_n_0 ),
        .O(\mi_be_reg[1]_i_5_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[20] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[20]_i_1_n_0 ),
        .Q(be__0[20]),
        .R(1'b0));
  MUXF7 \mi_be_reg[20]_i_3 
       (.I0(\mi_be[20]_i_4_n_0 ),
        .I1(\mi_be[20]_i_5_n_0 ),
        .O(\mi_be_reg[20]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[21] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[21]_i_1_n_0 ),
        .Q(be__0[21]),
        .R(1'b0));
  MUXF7 \mi_be_reg[21]_i_4 
       (.I0(\mi_be[21]_i_5_n_0 ),
        .I1(\mi_be[21]_i_6_n_0 ),
        .O(\mi_be_reg[21]_i_4_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[22] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[22]_i_1_n_0 ),
        .Q(be__0[22]),
        .R(1'b0));
  FDRE \mi_be_reg[23] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[23]_i_1_n_0 ),
        .Q(be__0[23]),
        .R(1'b0));
  MUXF7 \mi_be_reg[23]_i_3 
       (.I0(\mi_be[23]_i_4_n_0 ),
        .I1(\mi_be[23]_i_5_n_0 ),
        .O(\mi_be_reg[23]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[24] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[24]_i_1_n_0 ),
        .Q(be__0[24]),
        .R(1'b0));
  MUXF7 \mi_be_reg[24]_i_3 
       (.I0(\mi_be[24]_i_4_n_0 ),
        .I1(\mi_be[24]_i_5_n_0 ),
        .O(\mi_be_reg[24]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[25] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[25]_i_1_n_0 ),
        .Q(be__0[25]),
        .R(1'b0));
  MUXF7 \mi_be_reg[25]_i_3 
       (.I0(\mi_be[25]_i_4_n_0 ),
        .I1(\mi_be[25]_i_5_n_0 ),
        .O(\mi_be_reg[25]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[26] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[26]_i_1_n_0 ),
        .Q(be__0[26]),
        .R(1'b0));
  MUXF7 \mi_be_reg[26]_i_3 
       (.I0(\mi_be[26]_i_4_n_0 ),
        .I1(\mi_be[26]_i_5_n_0 ),
        .O(\mi_be_reg[26]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[27] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[27]_i_1_n_0 ),
        .Q(be__0[27]),
        .R(1'b0));
  MUXF7 \mi_be_reg[27]_i_3 
       (.I0(\mi_be[27]_i_5_n_0 ),
        .I1(\mi_be[27]_i_6_n_0 ),
        .O(\mi_be_reg[27]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[28] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[28]_i_1_n_0 ),
        .Q(be__0[28]),
        .R(1'b0));
  MUXF7 \mi_be_reg[28]_i_3 
       (.I0(\mi_be[28]_i_4_n_0 ),
        .I1(\mi_be[28]_i_5_n_0 ),
        .O(\mi_be_reg[28]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[29] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[29]_i_1_n_0 ),
        .Q(be__0[29]),
        .R(1'b0));
  MUXF7 \mi_be_reg[29]_i_4 
       (.I0(\mi_be[29]_i_5_n_0 ),
        .I1(\mi_be[29]_i_6_n_0 ),
        .O(\mi_be_reg[29]_i_4_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[2] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[2]_i_1_n_0 ),
        .Q(be__0[2]),
        .R(1'b0));
  MUXF7 \mi_be_reg[2]_i_3 
       (.I0(\mi_be[2]_i_4_n_0 ),
        .I1(\mi_be[2]_i_5_n_0 ),
        .O(\mi_be_reg[2]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[30] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[30]_i_1_n_0 ),
        .Q(be__0[30]),
        .R(1'b0));
  MUXF7 \mi_be_reg[30]_i_3 
       (.I0(\mi_be[30]_i_5_n_0 ),
        .I1(\mi_be[30]_i_6_n_0 ),
        .O(\mi_be_reg[30]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[31] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[31]_i_2_n_0 ),
        .Q(be),
        .R(1'b0));
  MUXF7 \mi_be_reg[31]_i_7 
       (.I0(\mi_be[31]_i_8_n_0 ),
        .I1(\mi_be[31]_i_9_n_0 ),
        .O(\mi_be_reg[31]_i_7_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[3] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[3]_i_1_n_0 ),
        .Q(be__0[3]),
        .R(1'b0));
  MUXF7 \mi_be_reg[3]_i_3 
       (.I0(\mi_be[3]_i_4_n_0 ),
        .I1(\mi_be[3]_i_5_n_0 ),
        .O(\mi_be_reg[3]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[4] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[4]_i_1_n_0 ),
        .Q(be__0[4]),
        .R(1'b0));
  MUXF7 \mi_be_reg[4]_i_3 
       (.I0(\mi_be[4]_i_4_n_0 ),
        .I1(\mi_be[4]_i_5_n_0 ),
        .O(\mi_be_reg[4]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[5] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[5]_i_1_n_0 ),
        .Q(be__0[5]),
        .R(1'b0));
  MUXF7 \mi_be_reg[5]_i_3 
       (.I0(\mi_be[5]_i_5_n_0 ),
        .I1(\mi_be[5]_i_6_n_0 ),
        .O(\mi_be_reg[5]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[6] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[6]_i_1_n_0 ),
        .Q(be__0[6]),
        .R(1'b0));
  FDRE \mi_be_reg[7] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[7]_i_1_n_0 ),
        .Q(be__0[7]),
        .R(1'b0));
  MUXF7 \mi_be_reg[7]_i_3 
       (.I0(\mi_be[7]_i_4_n_0 ),
        .I1(\mi_be[7]_i_5_n_0 ),
        .O(\mi_be_reg[7]_i_3_n_0 ),
        .S(mi_last));
  FDRE \mi_be_reg[8] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[8]_i_1_n_0 ),
        .Q(be__0[8]),
        .R(1'b0));
  FDRE \mi_be_reg[9] 
       (.C(out),
        .CE(\mi_be[31]_i_1_n_0 ),
        .D(\mi_be[9]_i_1_n_0 ),
        .Q(be__0[9]),
        .R(1'b0));
  MUXF7 \mi_be_reg[9]_i_3 
       (.I0(\mi_be[9]_i_4_n_0 ),
        .I1(\mi_be[9]_i_5_n_0 ),
        .O(\mi_be_reg[9]_i_3_n_0 ),
        .S(mi_last));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mi_buf[0]_i_1 
       (.I0(mi_buf_addr[7]),
        .O(\mi_buf[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8A8A8)) 
    \mi_buf[1]_i_1 
       (.I0(mi_last),
        .I1(load_mi_d2),
        .I2(load_mi_d1),
        .I3(M_AXI_WVALID_i_reg_0),
        .I4(m_axi_wready),
        .O(mi_buf0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mi_buf[1]_i_2 
       (.I0(mi_buf_addr[7]),
        .I1(mi_buf_addr[8]),
        .O(\mi_buf[1]_i_2_n_0 ));
  FDRE \mi_buf_reg[0] 
       (.C(out),
        .CE(mi_buf0),
        .D(\mi_buf[0]_i_1_n_0 ),
        .Q(mi_buf_addr[7]),
        .R(s_axi_aresetn));
  FDRE \mi_buf_reg[1] 
       (.C(out),
        .CE(mi_buf0),
        .D(\mi_buf[1]_i_2_n_0 ),
        .Q(mi_buf_addr[8]),
        .R(s_axi_aresetn));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_burst[0]_i_1 
       (.I0(\goreg_dm.dout_i_reg[22] [0]),
        .I1(load_mi_ptr),
        .I2(next_mi_burst[0]),
        .O(\mi_burst[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \mi_burst[1]_i_1 
       (.I0(load_mi_ptr),
        .I1(m_axi_wready),
        .I2(M_AXI_WVALID_i_reg_0),
        .I3(load_mi_d1),
        .I4(load_mi_d2),
        .I5(mi_last),
        .O(mi_wrap_be_next));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_burst[1]_i_2 
       (.I0(\goreg_dm.dout_i_reg[22] [1]),
        .I1(load_mi_ptr),
        .I2(next_mi_burst[1]),
        .O(\mi_burst[1]_i_2_n_0 ));
  FDRE \mi_burst_reg[0] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_burst[0]_i_1_n_0 ),
        .Q(\mi_burst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mi_burst_reg[1] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_burst[1]_i_2_n_0 ),
        .Q(\mi_burst_reg_n_0_[1] ),
        .R(1'b0));
  FDRE mi_first_d1_reg
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(mi_first),
        .Q(mi_first_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFFB8)) 
    mi_first_i_1
       (.I0(mi_first),
        .I1(M_AXI_WLAST_i_i_2_n_0),
        .I2(mi_last),
        .I3(load_mi_ptr),
        .O(mi_first_i_1_n_0));
  FDRE mi_first_reg
       (.C(out),
        .CE(1'b1),
        .D(mi_first_i_1_n_0),
        .Q(mi_first),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mi_last_d1_i_1
       (.I0(mi_last),
        .I1(\mi_addr_d1[4]_i_1_n_0 ),
        .I2(mi_last_d1_reg_n_0),
        .O(mi_last_d1_i_1_n_0));
  FDRE mi_last_d1_reg
       (.C(out),
        .CE(1'b1),
        .D(mi_last_d1_i_1_n_0),
        .Q(mi_last_d1_reg_n_0),
        .R(s_axi_aresetn));
  LUT6 #(
    .INIT(64'hAAFFAAFCAA00AAFC)) 
    mi_last_i_1
       (.I0(mi_last_i_2_n_0),
        .I1(mi_last_i_3_n_0),
        .I2(mi_last_i_4_n_0),
        .I3(load_mi_ptr),
        .I4(M_AXI_WLAST_i_i_2_n_0),
        .I5(mi_last),
        .O(mi_last_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    mi_last_i_2
       (.I0(D[1]),
        .I1(D[2]),
        .I2(D[3]),
        .I3(mi_last_i_5_n_0),
        .O(mi_last_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000200)) 
    mi_last_i_3
       (.I0(\mi_wrap_be_next[29]_i_4_n_0 ),
        .I1(mi_last_i_6_n_0),
        .I2(\next_mi_len_reg_n_0_[0] ),
        .I3(next_valid),
        .I4(\next_mi_len_reg_n_0_[6] ),
        .O(mi_last_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    mi_last_i_4
       (.I0(mi_wcnt__0[7]),
        .I1(mi_wcnt__0[5]),
        .I2(mi_wcnt__0[2]),
        .I3(mi_last_i_7_n_0),
        .O(mi_last_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    mi_last_i_5
       (.I0(D[6]),
        .I1(D[7]),
        .I2(D[5]),
        .I3(D[0]),
        .I4(D[4]),
        .O(mi_last_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    mi_last_i_6
       (.I0(mi_last),
        .I1(\next_mi_len_reg_n_0_[4] ),
        .I2(\next_mi_len_reg_n_0_[7] ),
        .I3(\next_mi_len_reg_n_0_[5] ),
        .O(mi_last_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    mi_last_i_7
       (.I0(mi_wcnt__0[4]),
        .I1(mi_wcnt__0[3]),
        .I2(mi_wcnt__0[1]),
        .I3(mi_wcnt__0[6]),
        .I4(mi_last),
        .I5(mi_wcnt__0[0]),
        .O(mi_last_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_last_index_reg_d0[0]_i_1 
       (.I0(mi_last_index_reg[0]),
        .I1(load_mi_ptr),
        .I2(next_mi_last_index_reg[0]),
        .O(\mi_last_index_reg_d0[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_last_index_reg_d0[1]_i_1 
       (.I0(mi_last_index_reg[1]),
        .I1(load_mi_ptr),
        .I2(next_mi_last_index_reg[1]),
        .O(\mi_last_index_reg_d0[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_last_index_reg_d0[2]_i_1 
       (.I0(mi_last_index_reg[2]),
        .I1(load_mi_ptr),
        .I2(next_mi_last_index_reg[2]),
        .O(\mi_last_index_reg_d0[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_last_index_reg_d0[3]_i_1 
       (.I0(mi_last_index_reg[3]),
        .I1(load_mi_ptr),
        .I2(next_mi_last_index_reg[3]),
        .O(\mi_last_index_reg_d0[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_last_index_reg_d0[4]_i_1 
       (.I0(mi_last_index_reg[4]),
        .I1(load_mi_ptr),
        .I2(next_mi_last_index_reg[4]),
        .O(\mi_last_index_reg_d0[4]_i_1_n_0 ));
  FDRE \mi_last_index_reg_d0_reg[0] 
       (.C(out),
        .CE(mi_last_index_reg_d0),
        .D(\mi_last_index_reg_d0[0]_i_1_n_0 ),
        .Q(\mi_last_index_reg_d0_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mi_last_index_reg_d0_reg[1] 
       (.C(out),
        .CE(mi_last_index_reg_d0),
        .D(\mi_last_index_reg_d0[1]_i_1_n_0 ),
        .Q(\mi_last_index_reg_d0_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mi_last_index_reg_d0_reg[2] 
       (.C(out),
        .CE(mi_last_index_reg_d0),
        .D(\mi_last_index_reg_d0[2]_i_1_n_0 ),
        .Q(\mi_last_index_reg_d0_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mi_last_index_reg_d0_reg[3] 
       (.C(out),
        .CE(mi_last_index_reg_d0),
        .D(\mi_last_index_reg_d0[3]_i_1_n_0 ),
        .Q(\mi_last_index_reg_d0_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mi_last_index_reg_d0_reg[4] 
       (.C(out),
        .CE(mi_last_index_reg_d0),
        .D(\mi_last_index_reg_d0[4]_i_1_n_0 ),
        .Q(\mi_last_index_reg_d0_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mi_last_index_reg_d1_reg[0] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(\mi_last_index_reg_d0_reg_n_0_[0] ),
        .Q(index[0]),
        .R(1'b0));
  FDRE \mi_last_index_reg_d1_reg[1] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(\mi_last_index_reg_d0_reg_n_0_[1] ),
        .Q(index[1]),
        .R(1'b0));
  FDRE \mi_last_index_reg_d1_reg[2] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(\mi_last_index_reg_d0_reg_n_0_[2] ),
        .Q(index[2]),
        .R(1'b0));
  FDRE \mi_last_index_reg_d1_reg[3] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(\mi_last_index_reg_d0_reg_n_0_[3] ),
        .Q(index[3]),
        .R(1'b0));
  FDRE \mi_last_index_reg_d1_reg[4] 
       (.C(out),
        .CE(\mi_addr_d1[4]_i_1_n_0 ),
        .D(\mi_last_index_reg_d0_reg_n_0_[4] ),
        .Q(index[4]),
        .R(1'b0));
  FDRE mi_last_reg
       (.C(out),
        .CE(1'b1),
        .D(mi_last_i_1_n_0),
        .Q(mi_last),
        .R(s_axi_aresetn));
  LUT6 #(
    .INIT(64'hB888B8888888BBBB)) 
    \mi_ptr[0]_i_1 
       (.I0(\mi_ptr[0]_i_2_n_0 ),
        .I1(load_mi_ptr),
        .I2(\next_mi_addr_reg_n_0_[5] ),
        .I3(\mi_ptr[0]_i_3_n_0 ),
        .I4(mi_buf_addr[0]),
        .I5(mi_last),
        .O(\mi_ptr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2828280820202000)) 
    \mi_ptr[0]_i_2 
       (.I0(m_axi_awaddr[5]),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .I2(\goreg_dm.dout_i_reg[25] [2]),
        .I3(D[1]),
        .I4(\goreg_dm.dout_i_reg[25] [0]),
        .I5(\mi_ptr[0]_i_4_n_0 ),
        .O(\mi_ptr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3C0C38383C0C0808)) 
    \mi_ptr[0]_i_3 
       (.I0(p_0_in_0[0]),
        .I1(\next_mi_size_reg_n_0_[2] ),
        .I2(\next_mi_size_reg_n_0_[1] ),
        .I3(p_0_in_0[1]),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .I5(p_0_in_0[2]),
        .O(\mi_ptr[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_ptr[0]_i_4 
       (.I0(D[2]),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .I2(D[3]),
        .O(\mi_ptr[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \mi_ptr[1]_i_1 
       (.I0(m_axi_awaddr[6]),
        .I1(\mi_ptr[1]_i_2_n_0 ),
        .I2(load_mi_ptr),
        .I3(\mi_ptr[1]_i_3_n_0 ),
        .O(\mi_ptr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFFFFF3F3F5F5F)) 
    \mi_ptr[1]_i_2 
       (.I0(D[2]),
        .I1(D[1]),
        .I2(\goreg_dm.dout_i_reg[25] [2]),
        .I3(D[3]),
        .I4(\goreg_dm.dout_i_reg[25] [0]),
        .I5(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_ptr[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h808F8F80)) 
    \mi_ptr[1]_i_3 
       (.I0(\next_mi_addr_reg_n_0_[6] ),
        .I1(\mi_ptr[1]_i_4_n_0 ),
        .I2(mi_last),
        .I3(mi_buf_addr[1]),
        .I4(mi_buf_addr[0]),
        .O(\mi_ptr[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F00C0A00000C0A0)) 
    \mi_ptr[1]_i_4 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(\next_mi_size_reg_n_0_[2] ),
        .I3(\next_mi_size_reg_n_0_[0] ),
        .I4(\next_mi_size_reg_n_0_[1] ),
        .I5(p_0_in_0[2]),
        .O(\mi_ptr[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \mi_ptr[2]_i_2 
       (.I0(\mi_ptr[2]_i_4_n_0 ),
        .I1(mi_last),
        .I2(mi_buf_addr[2]),
        .I3(mi_buf_addr[0]),
        .I4(mi_buf_addr[1]),
        .O(\mi_ptr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000E20000000000)) 
    \mi_ptr[2]_i_3 
       (.I0(D[3]),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .I2(D[2]),
        .I3(\goreg_dm.dout_i_reg[25] [2]),
        .I4(\goreg_dm.dout_i_reg[25] [1]),
        .I5(m_axi_awaddr[7]),
        .O(\mi_ptr[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000E20000000000)) 
    \mi_ptr[2]_i_4 
       (.I0(p_0_in_0[2]),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(p_0_in_0[1]),
        .I3(\next_mi_size_reg_n_0_[2] ),
        .I4(\next_mi_size_reg_n_0_[1] ),
        .I5(\next_mi_addr_reg_n_0_[7] ),
        .O(\mi_ptr[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0111111110000000)) 
    \mi_ptr[3]_i_1 
       (.I0(load_mi_ptr),
        .I1(mi_last),
        .I2(mi_buf_addr[2]),
        .I3(mi_buf_addr[0]),
        .I4(mi_buf_addr[1]),
        .I5(mi_buf_addr[3]),
        .O(\mi_ptr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \mi_ptr[4]_i_1 
       (.I0(\mi_ptr[4]_i_2_n_0 ),
        .I1(mi_buf_addr[1]),
        .I2(mi_buf_addr[0]),
        .I3(mi_buf_addr[2]),
        .I4(mi_buf_addr[3]),
        .I5(mi_buf_addr[4]),
        .O(\mi_ptr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_ptr[4]_i_2 
       (.I0(mi_last),
        .I1(load_mi_ptr),
        .O(\mi_ptr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \mi_ptr[5]_i_1 
       (.I0(load_mi_ptr),
        .I1(mi_last),
        .I2(\mi_ptr[6]_i_5_n_0 ),
        .I3(mi_buf_addr[5]),
        .O(\mi_ptr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDDF0)) 
    \mi_ptr[6]_i_1 
       (.I0(\goreg_dm.dout_i_reg[22] [1]),
        .I1(\goreg_dm.dout_i_reg[22] [0]),
        .I2(\mi_ptr[6]_i_4_n_0 ),
        .I3(load_mi_ptr),
        .O(\mi_ptr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554445)) 
    \mi_ptr[6]_i_2 
       (.I0(M_AXI_WLAST_i_i_2_n_0),
        .I1(be),
        .I2(\mi_burst_reg_n_0_[0] ),
        .I3(\mi_burst_reg_n_0_[1] ),
        .I4(mi_last),
        .I5(load_mi_ptr),
        .O(\mi_ptr[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h01111000)) 
    \mi_ptr[6]_i_3 
       (.I0(load_mi_ptr),
        .I1(mi_last),
        .I2(mi_buf_addr[5]),
        .I3(\mi_ptr[6]_i_5_n_0 ),
        .I4(mi_buf_addr[6]),
        .O(\mi_ptr[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0D0D0F00)) 
    \mi_ptr[6]_i_4 
       (.I0(next_mi_burst[1]),
        .I1(next_mi_burst[0]),
        .I2(M_AXI_WLAST_i_i_2_n_0),
        .I3(\mi_be[22]_i_4_n_0 ),
        .I4(mi_last),
        .O(\mi_ptr[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \mi_ptr[6]_i_5 
       (.I0(mi_buf_addr[3]),
        .I1(mi_buf_addr[2]),
        .I2(mi_buf_addr[0]),
        .I3(mi_buf_addr[1]),
        .I4(mi_buf_addr[4]),
        .O(\mi_ptr[6]_i_5_n_0 ));
  FDRE \mi_ptr_reg[0] 
       (.C(out),
        .CE(\mi_ptr[6]_i_2_n_0 ),
        .D(\mi_ptr[0]_i_1_n_0 ),
        .Q(mi_buf_addr[0]),
        .R(\mi_ptr[6]_i_1_n_0 ));
  FDRE \mi_ptr_reg[1] 
       (.C(out),
        .CE(\mi_ptr[6]_i_2_n_0 ),
        .D(\mi_ptr[1]_i_1_n_0 ),
        .Q(mi_buf_addr[1]),
        .R(\mi_ptr[6]_i_1_n_0 ));
  FDRE \mi_ptr_reg[2] 
       (.C(out),
        .CE(\mi_ptr[6]_i_2_n_0 ),
        .D(\mi_ptr_reg[2]_i_1_n_0 ),
        .Q(mi_buf_addr[2]),
        .R(\mi_ptr[6]_i_1_n_0 ));
  MUXF7 \mi_ptr_reg[2]_i_1 
       (.I0(\mi_ptr[2]_i_2_n_0 ),
        .I1(\mi_ptr[2]_i_3_n_0 ),
        .O(\mi_ptr_reg[2]_i_1_n_0 ),
        .S(load_mi_ptr));
  FDRE \mi_ptr_reg[3] 
       (.C(out),
        .CE(\mi_ptr[6]_i_2_n_0 ),
        .D(\mi_ptr[3]_i_1_n_0 ),
        .Q(mi_buf_addr[3]),
        .R(\mi_ptr[6]_i_1_n_0 ));
  FDRE \mi_ptr_reg[4] 
       (.C(out),
        .CE(\mi_ptr[6]_i_2_n_0 ),
        .D(\mi_ptr[4]_i_1_n_0 ),
        .Q(mi_buf_addr[4]),
        .R(\mi_ptr[6]_i_1_n_0 ));
  FDRE \mi_ptr_reg[5] 
       (.C(out),
        .CE(\mi_ptr[6]_i_2_n_0 ),
        .D(\mi_ptr[5]_i_1_n_0 ),
        .Q(mi_buf_addr[5]),
        .R(\mi_ptr[6]_i_1_n_0 ));
  FDRE \mi_ptr_reg[6] 
       (.C(out),
        .CE(\mi_ptr[6]_i_2_n_0 ),
        .D(\mi_ptr[6]_i_3_n_0 ),
        .Q(mi_buf_addr[6]),
        .R(\mi_ptr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_size[0]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(load_mi_ptr),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_size[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \mi_size[1]_i_1 
       (.I0(\next_mi_size_reg_n_0_[1] ),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .I2(load_mi_ptr),
        .O(\mi_size[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \mi_size[2]_i_1 
       (.I0(\next_mi_size_reg_n_0_[2] ),
        .I1(\goreg_dm.dout_i_reg[25] [2]),
        .I2(load_mi_ptr),
        .O(\mi_size[2]_i_1_n_0 ));
  FDRE \mi_size_reg[0] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_size[0]_i_1_n_0 ),
        .Q(size[0]),
        .R(1'b0));
  FDRE \mi_size_reg[1] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_size[1]_i_1_n_0 ),
        .Q(size[1]),
        .R(1'b0));
  FDRE \mi_size_reg[2] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_size[2]_i_1_n_0 ),
        .Q(size[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB888B8BB)) 
    \mi_wcnt[0]_i_1 
       (.I0(D[0]),
        .I1(load_mi_ptr),
        .I2(\next_mi_len_reg_n_0_[0] ),
        .I3(mi_last),
        .I4(mi_wcnt__0[0]),
        .O(\mi_wcnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B8BB)) 
    \mi_wcnt[1]_i_1 
       (.I0(D[1]),
        .I1(load_mi_ptr),
        .I2(p_0_in_0[0]),
        .I3(mi_last),
        .I4(mi_wcnt__0[1]),
        .I5(mi_wcnt__0[0]),
        .O(\mi_wcnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \mi_wcnt[2]_i_1 
       (.I0(D[2]),
        .I1(load_mi_ptr),
        .I2(p_0_in_0[1]),
        .I3(mi_last),
        .I4(mi_wcnt__0[2]),
        .I5(\mi_wcnt[2]_i_2_n_0 ),
        .O(\mi_wcnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wcnt[2]_i_2 
       (.I0(mi_wcnt__0[1]),
        .I1(mi_wcnt__0[0]),
        .O(\mi_wcnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \mi_wcnt[3]_i_1 
       (.I0(D[3]),
        .I1(load_mi_ptr),
        .I2(p_0_in_0[2]),
        .I3(mi_last),
        .I4(mi_wcnt__0[3]),
        .I5(\mi_wcnt[3]_i_2_n_0 ),
        .O(\mi_wcnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \mi_wcnt[3]_i_2 
       (.I0(mi_wcnt__0[0]),
        .I1(mi_wcnt__0[1]),
        .I2(mi_wcnt__0[2]),
        .O(\mi_wcnt[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mi_wcnt[4]_i_1 
       (.I0(D[4]),
        .I1(load_mi_ptr),
        .I2(\next_mi_len_reg_n_0_[4] ),
        .I3(mi_last),
        .I4(\mi_wcnt[4]_i_2_n_0 ),
        .O(\mi_wcnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \mi_wcnt[4]_i_2 
       (.I0(mi_wcnt__0[4]),
        .I1(mi_wcnt__0[3]),
        .I2(mi_wcnt__0[0]),
        .I3(mi_wcnt__0[1]),
        .I4(mi_wcnt__0[2]),
        .O(\mi_wcnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B8BB)) 
    \mi_wcnt[5]_i_1 
       (.I0(D[5]),
        .I1(load_mi_ptr),
        .I2(\next_mi_len_reg_n_0_[5] ),
        .I3(mi_last),
        .I4(mi_wcnt__0[5]),
        .I5(\mi_wcnt[5]_i_2_n_0 ),
        .O(\mi_wcnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \mi_wcnt[5]_i_2 
       (.I0(mi_wcnt__0[4]),
        .I1(mi_wcnt__0[3]),
        .I2(mi_wcnt__0[2]),
        .I3(mi_wcnt__0[1]),
        .I4(mi_wcnt__0[0]),
        .O(\mi_wcnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \mi_wcnt[6]_i_1 
       (.I0(D[6]),
        .I1(load_mi_ptr),
        .I2(\next_mi_len_reg_n_0_[6] ),
        .I3(mi_last),
        .I4(mi_wcnt__0[6]),
        .I5(\mi_wcnt[6]_i_2_n_0 ),
        .O(\mi_wcnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \mi_wcnt[6]_i_2 
       (.I0(mi_wcnt__0[5]),
        .I1(mi_wcnt__0[0]),
        .I2(mi_wcnt__0[1]),
        .I3(mi_wcnt__0[2]),
        .I4(mi_wcnt__0[3]),
        .I5(mi_wcnt__0[4]),
        .O(\mi_wcnt[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF4F5)) 
    \mi_wcnt[7]_i_1 
       (.I0(M_AXI_WLAST_i_i_2_n_0),
        .I1(next_valid),
        .I2(load_mi_ptr),
        .I3(mi_last),
        .O(\mi_wcnt[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mi_wcnt[7]_i_2 
       (.I0(D[7]),
        .I1(load_mi_ptr),
        .I2(\next_mi_len_reg_n_0_[7] ),
        .I3(mi_last),
        .I4(\mi_wcnt[7]_i_3_n_0 ),
        .O(\mi_wcnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA9AA)) 
    \mi_wcnt[7]_i_3 
       (.I0(mi_wcnt__0[7]),
        .I1(mi_wcnt__0[6]),
        .I2(mi_wcnt__0[5]),
        .I3(\mi_wcnt[3]_i_2_n_0 ),
        .I4(mi_wcnt__0[3]),
        .I5(mi_wcnt__0[4]),
        .O(\mi_wcnt[7]_i_3_n_0 ));
  FDRE \mi_wcnt_reg[0] 
       (.C(out),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[0]_i_1_n_0 ),
        .Q(mi_wcnt__0[0]),
        .R(1'b0));
  FDRE \mi_wcnt_reg[1] 
       (.C(out),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[1]_i_1_n_0 ),
        .Q(mi_wcnt__0[1]),
        .R(1'b0));
  FDRE \mi_wcnt_reg[2] 
       (.C(out),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[2]_i_1_n_0 ),
        .Q(mi_wcnt__0[2]),
        .R(1'b0));
  FDRE \mi_wcnt_reg[3] 
       (.C(out),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[3]_i_1_n_0 ),
        .Q(mi_wcnt__0[3]),
        .R(1'b0));
  FDRE \mi_wcnt_reg[4] 
       (.C(out),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[4]_i_1_n_0 ),
        .Q(mi_wcnt__0[4]),
        .R(1'b0));
  FDRE \mi_wcnt_reg[5] 
       (.C(out),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[5]_i_1_n_0 ),
        .Q(mi_wcnt__0[5]),
        .R(1'b0));
  FDRE \mi_wcnt_reg[6] 
       (.C(out),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[6]_i_1_n_0 ),
        .Q(mi_wcnt__0[6]),
        .R(1'b0));
  FDRE \mi_wcnt_reg[7] 
       (.C(out),
        .CE(\mi_wcnt[7]_i_1_n_0 ),
        .D(\mi_wcnt[7]_i_2_n_0 ),
        .Q(mi_wcnt__0[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000E000EEEEEEEE)) 
    \mi_wrap_be_next[0]_i_1 
       (.I0(\mi_wrap_be_next[0]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[1]_i_2_n_0 ),
        .I2(\mi_wrap_be_next[0]_i_3_n_0 ),
        .I3(\mi_wrap_be_next[0]_i_4_n_0 ),
        .I4(\mi_wrap_be_next[0]_i_5_n_0 ),
        .I5(\mi_wrap_be_next[1]_i_3_n_0 ),
        .O(\mi_wrap_be_next[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000F0001)) 
    \mi_wrap_be_next[0]_i_2 
       (.I0(\next_mi_addr_reg_n_0_[3] ),
        .I1(\mi_wrap_be_next[16]_i_5_n_0 ),
        .I2(\next_mi_size_reg_n_0_[1] ),
        .I3(\next_mi_size_reg_n_0_[0] ),
        .I4(p_0_in_0[2]),
        .I5(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_wrap_be_next[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC0E0C0F0)) 
    \mi_wrap_be_next[0]_i_3 
       (.I0(D[1]),
        .I1(D[2]),
        .I2(\mi_wrap_be_next[4]_i_2_n_0 ),
        .I3(m_axi_awaddr[2]),
        .I4(m_axi_awaddr[1]),
        .I5(D[3]),
        .O(\mi_wrap_be_next[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wrap_be_next[0]_i_4 
       (.I0(\goreg_dm.dout_i_reg[25] [1]),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .O(\mi_wrap_be_next[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mi_wrap_be_next[0]_i_5 
       (.I0(D[3]),
        .I1(m_axi_awaddr[4]),
        .O(\mi_wrap_be_next[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8F0000008F8F8F8F)) 
    \mi_wrap_be_next[10]_i_1 
       (.I0(\mi_wrap_be_next[10]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[10]_i_3_n_0 ),
        .I2(\mi_wrap_be_next[11]_i_3_n_0 ),
        .I3(\mi_wrap_be_next[10]_i_4_n_0 ),
        .I4(\mi_wrap_be_next[10]_i_5_n_0 ),
        .I5(\mi_wrap_be_next[11]_i_2_n_0 ),
        .O(\mi_wrap_be_next[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \mi_wrap_be_next[10]_i_2 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(\next_mi_size_reg_n_0_[0] ),
        .I4(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_wrap_be_next[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \mi_wrap_be_next[10]_i_3 
       (.I0(\next_mi_addr_reg_n_0_[2] ),
        .I1(\next_mi_addr_reg_n_0_[1] ),
        .I2(\next_mi_addr_reg_n_0_[3] ),
        .I3(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_wrap_be_next[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \mi_wrap_be_next[10]_i_4 
       (.I0(D[1]),
        .I1(D[2]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(D[3]),
        .I4(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_wrap_be_next[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \mi_wrap_be_next[10]_i_5 
       (.I0(m_axi_awaddr[4]),
        .I1(m_axi_awaddr[3]),
        .I2(m_axi_awaddr[1]),
        .I3(m_axi_awaddr[2]),
        .O(\mi_wrap_be_next[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wrap_be_next[11]_i_1 
       (.I0(\mi_wrap_be_next[11]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[11]_i_3_n_0 ),
        .O(\mi_wrap_be_next[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444404444444)) 
    \mi_wrap_be_next[11]_i_2 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(load_mi_ptr),
        .I2(\mi_wrap_be_next[30]_i_4_n_0 ),
        .I3(\mi_wrap_be_next[13]_i_2_n_0 ),
        .I4(\goreg_dm.dout_i_reg[25] [1]),
        .I5(\goreg_dm.dout_i_reg[25] [0]),
        .O(\mi_wrap_be_next[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h11111011)) 
    \mi_wrap_be_next[11]_i_3 
       (.I0(load_mi_ptr),
        .I1(\next_mi_size_reg_n_0_[2] ),
        .I2(\mi_wrap_be_next[14]_i_4_n_0 ),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_wrap_be_next[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888A88)) 
    \mi_wrap_be_next[12]_i_1 
       (.I0(\mi_wrap_be_next[12]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[12]_i_3_n_0 ),
        .I2(\mi_wrap_be_next[12]_i_4_n_0 ),
        .I3(m_axi_awaddr[3]),
        .I4(m_axi_awaddr[4]),
        .I5(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_wrap_be_next[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555755555)) 
    \mi_wrap_be_next[12]_i_2 
       (.I0(\mi_wrap_be_next[13]_i_5_n_0 ),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .I3(\next_mi_addr_reg_n_0_[4] ),
        .I4(\next_mi_addr_reg_n_0_[3] ),
        .I5(\mi_wrap_be_next[28]_i_4_n_0 ),
        .O(\mi_wrap_be_next[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBFBBBBBBBBBBBBB)) 
    \mi_wrap_be_next[12]_i_3 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(load_mi_ptr),
        .I2(\mi_wrap_be_next[13]_i_4_n_0 ),
        .I3(\goreg_dm.dout_i_reg[25] [1]),
        .I4(\goreg_dm.dout_i_reg[25] [0]),
        .I5(\mi_wrap_be_next[13]_i_2_n_0 ),
        .O(\mi_wrap_be_next[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF4FFFFFFFF)) 
    \mi_wrap_be_next[12]_i_4 
       (.I0(D[1]),
        .I1(m_axi_awaddr[1]),
        .I2(D[2]),
        .I3(D[3]),
        .I4(\goreg_dm.dout_i_reg[25] [0]),
        .I5(m_axi_awaddr[2]),
        .O(\mi_wrap_be_next[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF80FF)) 
    \mi_wrap_be_next[13]_i_1 
       (.I0(\mi_wrap_be_next[13]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[13]_i_3_n_0 ),
        .I2(\mi_wrap_be_next[13]_i_4_n_0 ),
        .I3(load_mi_ptr),
        .I4(\goreg_dm.dout_i_reg[25] [2]),
        .I5(\mi_wrap_be_next[13]_i_5_n_0 ),
        .O(\mi_wrap_be_next[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mi_wrap_be_next[13]_i_2 
       (.I0(m_axi_awaddr[3]),
        .I1(m_axi_awaddr[4]),
        .O(\mi_wrap_be_next[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mi_wrap_be_next[13]_i_3 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_wrap_be_next[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \mi_wrap_be_next[13]_i_4 
       (.I0(D[3]),
        .I1(D[2]),
        .I2(D[1]),
        .I3(m_axi_awaddr[2]),
        .O(\mi_wrap_be_next[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1101111111111111)) 
    \mi_wrap_be_next[13]_i_5 
       (.I0(load_mi_ptr),
        .I1(\next_mi_size_reg_n_0_[2] ),
        .I2(\next_mi_addr_reg_n_0_[3] ),
        .I3(\next_mi_addr_reg_n_0_[4] ),
        .I4(\next_mi_addr_reg_n_0_[2] ),
        .I5(\mi_wrap_be_next[21]_i_2_n_0 ),
        .O(\mi_wrap_be_next[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4FFFFFF00)) 
    \mi_wrap_be_next[14]_i_1 
       (.I0(\mi_wrap_be_next[14]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[30]_i_3_n_0 ),
        .I2(\goreg_dm.dout_i_reg[25] [2]),
        .I3(\mi_wrap_be_next[14]_i_3_n_0 ),
        .I4(\next_mi_size_reg_n_0_[2] ),
        .I5(load_mi_ptr),
        .O(\mi_wrap_be_next[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \mi_wrap_be_next[14]_i_2 
       (.I0(D[1]),
        .I1(D[2]),
        .I2(m_axi_awaddr[4]),
        .I3(m_axi_awaddr[3]),
        .O(\mi_wrap_be_next[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \mi_wrap_be_next[14]_i_3 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .I2(p_0_in_0[2]),
        .I3(\next_mi_addr_reg_n_0_[1] ),
        .I4(\next_mi_addr_reg_n_0_[2] ),
        .I5(\mi_wrap_be_next[14]_i_4_n_0 ),
        .O(\mi_wrap_be_next[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \mi_wrap_be_next[14]_i_4 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_addr_reg_n_0_[3] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(\mi_wrap_be_next[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1010101F)) 
    \mi_wrap_be_next[16]_i_1 
       (.I0(\mi_wrap_be_next[16]_i_2_n_0 ),
        .I1(\goreg_dm.dout_i_reg[25] [2]),
        .I2(load_mi_ptr),
        .I3(\next_mi_size_reg_n_0_[2] ),
        .I4(\mi_wrap_be_next[16]_i_3_n_0 ),
        .I5(\mi_wrap_be_next[31]_i_1_n_0 ),
        .O(\mi_wrap_be_next[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000051FF)) 
    \mi_wrap_be_next[16]_i_2 
       (.I0(\mi_wrap_be_next[0]_i_5_n_0 ),
        .I1(\mi_wrap_be_next[20]_i_6_n_0 ),
        .I2(\mi_wrap_be_next[16]_i_4_n_0 ),
        .I3(\mi_wrap_be_next[0]_i_4_n_0 ),
        .I4(\mi_wrap_be_next[17]_i_3_n_0 ),
        .I5(\mi_wrap_be_next[19]_i_3_n_0 ),
        .O(\mi_wrap_be_next[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22AA20AAAAAAAAAA)) 
    \mi_wrap_be_next[16]_i_3 
       (.I0(\mi_wrap_be_next[17]_i_2_n_0 ),
        .I1(p_0_in_0[2]),
        .I2(\mi_wrap_be_next[16]_i_5_n_0 ),
        .I3(\next_mi_addr_reg_n_0_[4] ),
        .I4(\next_mi_addr_reg_n_0_[3] ),
        .I5(\mi_wrap_be_next[31]_i_2_n_0 ),
        .O(\mi_wrap_be_next[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h3302)) 
    \mi_wrap_be_next[16]_i_4 
       (.I0(m_axi_awaddr[1]),
        .I1(D[2]),
        .I2(D[1]),
        .I3(m_axi_awaddr[2]),
        .O(\mi_wrap_be_next[16]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h5504)) 
    \mi_wrap_be_next[16]_i_5 
       (.I0(p_0_in_0[1]),
        .I1(\next_mi_addr_reg_n_0_[1] ),
        .I2(p_0_in_0[0]),
        .I3(\next_mi_addr_reg_n_0_[2] ),
        .O(\mi_wrap_be_next[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD0DDD0DDD0DD)) 
    \mi_wrap_be_next[17]_i_1 
       (.I0(\mi_wrap_be_next[17]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[26]_i_4_n_0 ),
        .I2(\mi_wrap_be_next[17]_i_3_n_0 ),
        .I3(\mi_wrap_be_next[22]_i_5_n_0 ),
        .I4(\mi_wrap_be_next[17]_i_4_n_0 ),
        .I5(load_mi_ptr),
        .O(\mi_wrap_be_next[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555554555)) 
    \mi_wrap_be_next[17]_i_2 
       (.I0(\mi_wrap_be_next[19]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[17]_i_5_n_0 ),
        .I2(\next_mi_addr_reg_n_0_[4] ),
        .I3(\next_mi_size_reg_n_0_[0] ),
        .I4(p_0_in_0[2]),
        .I5(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_wrap_be_next[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \mi_wrap_be_next[17]_i_3 
       (.I0(\goreg_dm.dout_i_reg[25] [1]),
        .I1(D[3]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(m_axi_awaddr[4]),
        .I4(\mi_wrap_be_next[17]_i_6_n_0 ),
        .O(\mi_wrap_be_next[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040440000)) 
    \mi_wrap_be_next[17]_i_4 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .I2(D[1]),
        .I3(m_axi_awaddr[3]),
        .I4(m_axi_awaddr[4]),
        .I5(D[2]),
        .O(\mi_wrap_be_next[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h5504)) 
    \mi_wrap_be_next[17]_i_5 
       (.I0(p_0_in_0[1]),
        .I1(\next_mi_addr_reg_n_0_[2] ),
        .I2(p_0_in_0[0]),
        .I3(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_wrap_be_next[17]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h5504)) 
    \mi_wrap_be_next[17]_i_6 
       (.I0(D[2]),
        .I1(m_axi_awaddr[2]),
        .I2(D[1]),
        .I3(m_axi_awaddr[3]),
        .O(\mi_wrap_be_next[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF575757)) 
    \mi_wrap_be_next[18]_i_1 
       (.I0(\mi_wrap_be_next[22]_i_5_n_0 ),
        .I1(\mi_wrap_be_next[18]_i_2_n_0 ),
        .I2(\mi_wrap_be_next[18]_i_3_n_0 ),
        .I3(\mi_wrap_be_next[18]_i_4_n_0 ),
        .I4(\mi_wrap_be_next[22]_i_3_n_0 ),
        .I5(\mi_wrap_be_next[18]_i_5_n_0 ),
        .O(\mi_wrap_be_next[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    \mi_wrap_be_next[18]_i_2 
       (.I0(D[2]),
        .I1(m_axi_awaddr[4]),
        .I2(m_axi_awaddr[3]),
        .I3(D[1]),
        .O(\mi_wrap_be_next[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \mi_wrap_be_next[18]_i_3 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(\goreg_dm.dout_i_reg[25] [2]),
        .I2(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_wrap_be_next[18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \mi_wrap_be_next[18]_i_4 
       (.I0(m_axi_awaddr[3]),
        .I1(m_axi_awaddr[4]),
        .I2(m_axi_awaddr[1]),
        .I3(m_axi_awaddr[2]),
        .O(\mi_wrap_be_next[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA8AAA8AAA8)) 
    \mi_wrap_be_next[18]_i_5 
       (.I0(\mi_wrap_be_next[23]_i_2_n_0 ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\next_mi_size_reg_n_0_[2] ),
        .I3(\mi_wrap_be_next[18]_i_6_n_0 ),
        .I4(\mi_wrap_be_next[26]_i_2_n_0 ),
        .I5(\mi_wrap_be_next[18]_i_7_n_0 ),
        .O(\mi_wrap_be_next[18]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hBBFBFFFF)) 
    \mi_wrap_be_next[18]_i_6 
       (.I0(p_0_in_0[1]),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .I2(\next_mi_addr_reg_n_0_[3] ),
        .I3(p_0_in_0[0]),
        .I4(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_wrap_be_next[18]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \mi_wrap_be_next[18]_i_7 
       (.I0(\next_mi_addr_reg_n_0_[2] ),
        .I1(\next_mi_addr_reg_n_0_[1] ),
        .I2(\next_mi_addr_reg_n_0_[3] ),
        .I3(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_wrap_be_next[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEFEE0000EFEEEFEE)) 
    \mi_wrap_be_next[19]_i_1 
       (.I0(\mi_wrap_be_next[19]_i_2_n_0 ),
        .I1(load_mi_ptr),
        .I2(\mi_wrap_be_next[31]_i_2_n_0 ),
        .I3(\next_mi_size_reg_n_0_[2] ),
        .I4(\mi_wrap_be_next[19]_i_3_n_0 ),
        .I5(\mi_wrap_be_next[30]_i_2_n_0 ),
        .O(\mi_wrap_be_next[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00CC000044040000)) 
    \mi_wrap_be_next[19]_i_2 
       (.I0(p_0_in_0[1]),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .I2(\next_mi_addr_reg_n_0_[3] ),
        .I3(p_0_in_0[0]),
        .I4(\next_mi_size_reg_n_0_[1] ),
        .I5(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_wrap_be_next[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00CC000044040000)) 
    \mi_wrap_be_next[19]_i_3 
       (.I0(D[2]),
        .I1(m_axi_awaddr[4]),
        .I2(m_axi_awaddr[3]),
        .I3(D[1]),
        .I4(\goreg_dm.dout_i_reg[25] [1]),
        .I5(\goreg_dm.dout_i_reg[25] [0]),
        .O(\mi_wrap_be_next[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mi_wrap_be_next[1]_i_1 
       (.I0(\mi_wrap_be_next[1]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[1]_i_3_n_0 ),
        .O(\mi_wrap_be_next[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5D555D555D555D5D)) 
    \mi_wrap_be_next[1]_i_2 
       (.I0(\mi_wrap_be_next[3]_i_2_n_0 ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\next_mi_size_reg_n_0_[1] ),
        .I3(p_0_in_0[2]),
        .I4(\mi_wrap_be_next[17]_i_5_n_0 ),
        .I5(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_wrap_be_next[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00A8AAAA)) 
    \mi_wrap_be_next[1]_i_3 
       (.I0(\mi_wrap_be_next[3]_i_3_n_0 ),
        .I1(\mi_wrap_be_next[17]_i_6_n_0 ),
        .I2(m_axi_awaddr[4]),
        .I3(D[3]),
        .I4(\goreg_dm.dout_i_reg[25] [0]),
        .I5(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_wrap_be_next[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF2000000F2F2F2F2)) 
    \mi_wrap_be_next[20]_i_1 
       (.I0(\mi_wrap_be_next[20]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[20]_i_3_n_0 ),
        .I2(\mi_wrap_be_next[20]_i_4_n_0 ),
        .I3(\mi_wrap_be_next[20]_i_5_n_0 ),
        .I4(\mi_wrap_be_next[20]_i_6_n_0 ),
        .I5(\mi_wrap_be_next[21]_i_3_n_0 ),
        .O(\mi_wrap_be_next[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000202)) 
    \mi_wrap_be_next[20]_i_2 
       (.I0(\mi_wrap_be_next[20]_i_7_n_0 ),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(\next_mi_addr_reg_n_0_[1] ),
        .I5(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_wrap_be_next[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \mi_wrap_be_next[20]_i_3 
       (.I0(\next_mi_addr_reg_n_0_[2] ),
        .I1(\next_mi_addr_reg_n_0_[3] ),
        .I2(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_wrap_be_next[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h55D55555)) 
    \mi_wrap_be_next[20]_i_4 
       (.I0(\mi_wrap_be_next[23]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[21]_i_2_n_0 ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .I3(\next_mi_addr_reg_n_0_[3] ),
        .I4(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_wrap_be_next[20]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \mi_wrap_be_next[20]_i_5 
       (.I0(\goreg_dm.dout_i_reg[25] [1]),
        .I1(\goreg_dm.dout_i_reg[25] [2]),
        .I2(\mi_wrap_be_next[12]_i_4_n_0 ),
        .O(\mi_wrap_be_next[20]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mi_wrap_be_next[20]_i_6 
       (.I0(m_axi_awaddr[4]),
        .I1(m_axi_awaddr[3]),
        .O(\mi_wrap_be_next[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wrap_be_next[20]_i_7 
       (.I0(\next_mi_size_reg_n_0_[2] ),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_wrap_be_next[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000002000FFFF)) 
    \mi_wrap_be_next[21]_i_1 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_addr_reg_n_0_[3] ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .I3(\mi_wrap_be_next[21]_i_2_n_0 ),
        .I4(\mi_wrap_be_next[23]_i_2_n_0 ),
        .I5(\mi_wrap_be_next[21]_i_3_n_0 ),
        .O(\mi_wrap_be_next[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \mi_wrap_be_next[21]_i_2 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(\next_mi_size_reg_n_0_[1] ),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_wrap_be_next[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAAAAAAAAAAAA)) 
    \mi_wrap_be_next[21]_i_3 
       (.I0(\mi_wrap_be_next[22]_i_5_n_0 ),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(m_axi_awaddr[3]),
        .I4(m_axi_awaddr[4]),
        .I5(\mi_wrap_be_next[13]_i_4_n_0 ),
        .O(\mi_wrap_be_next[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F0000008F8F8F8F)) 
    \mi_wrap_be_next[22]_i_1 
       (.I0(\mi_wrap_be_next[26]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[22]_i_2_n_0 ),
        .I2(\mi_wrap_be_next[23]_i_2_n_0 ),
        .I3(\mi_wrap_be_next[22]_i_3_n_0 ),
        .I4(\mi_wrap_be_next[22]_i_4_n_0 ),
        .I5(\mi_wrap_be_next[22]_i_5_n_0 ),
        .O(\mi_wrap_be_next[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \mi_wrap_be_next[22]_i_2 
       (.I0(\next_mi_addr_reg_n_0_[3] ),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .I2(\next_mi_addr_reg_n_0_[1] ),
        .I3(\next_mi_addr_reg_n_0_[2] ),
        .O(\mi_wrap_be_next[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \mi_wrap_be_next[22]_i_3 
       (.I0(\goreg_dm.dout_i_reg[25] [1]),
        .I1(D[3]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(D[2]),
        .I4(D[1]),
        .I5(\goreg_dm.dout_i_reg[25] [2]),
        .O(\mi_wrap_be_next[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mi_wrap_be_next[22]_i_4 
       (.I0(m_axi_awaddr[1]),
        .I1(m_axi_awaddr[2]),
        .I2(m_axi_awaddr[3]),
        .I3(m_axi_awaddr[4]),
        .O(\mi_wrap_be_next[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h444C444C044C444C)) 
    \mi_wrap_be_next[22]_i_5 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(load_mi_ptr),
        .I2(\goreg_dm.dout_i_reg[25] [1]),
        .I3(\goreg_dm.dout_i_reg[25] [0]),
        .I4(m_axi_awaddr[4]),
        .I5(D[1]),
        .O(\mi_wrap_be_next[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1000000055555555)) 
    \mi_wrap_be_next[23]_i_1 
       (.I0(\mi_wrap_be_next[23]_i_2_n_0 ),
        .I1(D[1]),
        .I2(m_axi_awaddr[4]),
        .I3(\goreg_dm.dout_i_reg[25] [0]),
        .I4(\goreg_dm.dout_i_reg[25] [1]),
        .I5(\mi_wrap_be_next[30]_i_2_n_0 ),
        .O(\mi_wrap_be_next[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0101010155551555)) 
    \mi_wrap_be_next[23]_i_2 
       (.I0(load_mi_ptr),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\next_mi_size_reg_n_0_[1] ),
        .I3(\next_mi_addr_reg_n_0_[4] ),
        .I4(p_0_in_0[0]),
        .I5(\next_mi_size_reg_n_0_[2] ),
        .O(\mi_wrap_be_next[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAEA)) 
    \mi_wrap_be_next[24]_i_2 
       (.I0(\mi_wrap_be_next[25]_i_3_n_0 ),
        .I1(\next_mi_addr_reg_n_0_[3] ),
        .I2(\next_mi_addr_reg_n_0_[4] ),
        .I3(\next_mi_size_reg_n_0_[0] ),
        .I4(\next_mi_size_reg_n_0_[2] ),
        .I5(\mi_wrap_be_next[8]_i_3_n_0 ),
        .O(\mi_wrap_be_next[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBFBBB)) 
    \mi_wrap_be_next[24]_i_3 
       (.I0(\mi_wrap_be_next[25]_i_4_n_0 ),
        .I1(\mi_wrap_be_next[24]_i_4_n_0 ),
        .I2(\mi_wrap_be_next[25]_i_2_n_0 ),
        .I3(\goreg_dm.dout_i_reg[25] [1]),
        .I4(\goreg_dm.dout_i_reg[25] [2]),
        .I5(\goreg_dm.dout_i_reg[25] [0]),
        .O(\mi_wrap_be_next[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \mi_wrap_be_next[24]_i_4 
       (.I0(\mi_wrap_be_next[16]_i_4_n_0 ),
        .I1(D[3]),
        .I2(\goreg_dm.dout_i_reg[25] [1]),
        .I3(\mi_wrap_be_next[30]_i_5_n_0 ),
        .I4(\goreg_dm.dout_i_reg[25] [2]),
        .I5(\goreg_dm.dout_i_reg[25] [0]),
        .O(\mi_wrap_be_next[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF000808FF00)) 
    \mi_wrap_be_next[25]_i_1 
       (.I0(\goreg_dm.dout_i_reg[25] [1]),
        .I1(\mi_wrap_be_next[25]_i_2_n_0 ),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(\mi_wrap_be_next[25]_i_3_n_0 ),
        .I4(load_mi_ptr),
        .I5(\mi_wrap_be_next[25]_i_4_n_0 ),
        .O(\mi_wrap_be_next[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \mi_wrap_be_next[25]_i_2 
       (.I0(D[1]),
        .I1(D[2]),
        .I2(m_axi_awaddr[3]),
        .I3(m_axi_awaddr[4]),
        .O(\mi_wrap_be_next[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEAEAEAE)) 
    \mi_wrap_be_next[25]_i_3 
       (.I0(\mi_wrap_be_next[27]_i_3_n_0 ),
        .I1(\next_mi_size_reg_n_0_[2] ),
        .I2(\mi_wrap_be_next[31]_i_2_n_0 ),
        .I3(\mi_wrap_be_next[9]_i_4_n_0 ),
        .I4(\next_mi_addr_reg_n_0_[4] ),
        .I5(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_wrap_be_next[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8A8A8A8A8A8A8A8)) 
    \mi_wrap_be_next[25]_i_4 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(m_axi_awaddr[4]),
        .I4(m_axi_awaddr[3]),
        .I5(\mi_wrap_be_next[9]_i_2_n_0 ),
        .O(\mi_wrap_be_next[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFF444)) 
    \mi_wrap_be_next[26]_i_1 
       (.I0(\next_mi_size_reg_n_0_[2] ),
        .I1(\mi_wrap_be_next[27]_i_3_n_0 ),
        .I2(\mi_wrap_be_next[26]_i_2_n_0 ),
        .I3(\mi_wrap_be_next[26]_i_3_n_0 ),
        .I4(\mi_wrap_be_next[26]_i_4_n_0 ),
        .I5(\mi_wrap_be_next[26]_i_5_n_0 ),
        .O(\mi_wrap_be_next[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \mi_wrap_be_next[26]_i_2 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_size_reg_n_0_[2] ),
        .I2(\next_mi_size_reg_n_0_[1] ),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(\mi_wrap_be_next[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mi_wrap_be_next[26]_i_3 
       (.I0(\next_mi_addr_reg_n_0_[3] ),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .I3(\next_mi_addr_reg_n_0_[1] ),
        .O(\mi_wrap_be_next[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEAA)) 
    \mi_wrap_be_next[26]_i_4 
       (.I0(load_mi_ptr),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .I3(\next_mi_size_reg_n_0_[2] ),
        .O(\mi_wrap_be_next[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A2AAAAAA)) 
    \mi_wrap_be_next[26]_i_5 
       (.I0(\mi_wrap_be_next[30]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[22]_i_3_n_0 ),
        .I2(m_axi_awaddr[2]),
        .I3(m_axi_awaddr[1]),
        .I4(\mi_wrap_be_next[30]_i_5_n_0 ),
        .I5(\mi_wrap_be_next[26]_i_6_n_0 ),
        .O(\mi_wrap_be_next[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \mi_wrap_be_next[26]_i_6 
       (.I0(\mi_wrap_be_next[30]_i_5_n_0 ),
        .I1(D[2]),
        .I2(D[1]),
        .I3(\goreg_dm.dout_i_reg[25] [1]),
        .I4(\goreg_dm.dout_i_reg[25] [2]),
        .I5(\goreg_dm.dout_i_reg[25] [0]),
        .O(\mi_wrap_be_next[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAFAEAEAFAE)) 
    \mi_wrap_be_next[27]_i_1 
       (.I0(\mi_wrap_be_next[27]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[27]_i_3_n_0 ),
        .I2(\mi_wrap_be_next[30]_i_2_n_0 ),
        .I3(\next_mi_size_reg_n_0_[2] ),
        .I4(\mi_wrap_be_next[31]_i_2_n_0 ),
        .I5(load_mi_ptr),
        .O(\mi_wrap_be_next[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \mi_wrap_be_next[27]_i_2 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(load_mi_ptr),
        .I2(D[1]),
        .I3(D[2]),
        .I4(\mi_wrap_be_next[30]_i_5_n_0 ),
        .I5(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_wrap_be_next[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \mi_wrap_be_next[27]_i_3 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(p_0_in_0[1]),
        .I2(\next_mi_addr_reg_n_0_[3] ),
        .I3(p_0_in_0[0]),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .I5(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_wrap_be_next[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFA08FA0FFA00FA00)) 
    \mi_wrap_be_next[28]_i_2 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\mi_wrap_be_next[29]_i_4_n_0 ),
        .I2(\next_mi_size_reg_n_0_[1] ),
        .I3(\next_mi_size_reg_n_0_[2] ),
        .I4(\mi_wrap_be_next[28]_i_4_n_0 ),
        .I5(\mi_wrap_be_next[28]_i_5_n_0 ),
        .O(\mi_wrap_be_next[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFCC0080FFCC00F0)) 
    \mi_wrap_be_next[28]_i_3 
       (.I0(\mi_wrap_be_next[13]_i_4_n_0 ),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .I2(\mi_wrap_be_next[30]_i_5_n_0 ),
        .I3(\goreg_dm.dout_i_reg[25] [1]),
        .I4(\goreg_dm.dout_i_reg[25] [2]),
        .I5(\mi_wrap_be_next[12]_i_4_n_0 ),
        .O(\mi_wrap_be_next[28]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFFFFFAE)) 
    \mi_wrap_be_next[28]_i_4 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_addr_reg_n_0_[1] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .O(\mi_wrap_be_next[28]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mi_wrap_be_next[28]_i_5 
       (.I0(\next_mi_addr_reg_n_0_[3] ),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .O(\mi_wrap_be_next[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_wrap_be_next[29]_i_1 
       (.I0(\mi_wrap_be_next[29]_i_2_n_0 ),
        .I1(load_mi_ptr),
        .I2(\mi_wrap_be_next[29]_i_3_n_0 ),
        .O(\mi_wrap_be_next[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000AAAA8000)) 
    \mi_wrap_be_next[29]_i_2 
       (.I0(\goreg_dm.dout_i_reg[25] [0]),
        .I1(m_axi_awaddr[4]),
        .I2(m_axi_awaddr[3]),
        .I3(\mi_wrap_be_next[13]_i_4_n_0 ),
        .I4(\goreg_dm.dout_i_reg[25] [2]),
        .I5(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_wrap_be_next[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF2F0F0F0C0C0C0C0)) 
    \mi_wrap_be_next[29]_i_3 
       (.I0(\mi_wrap_be_next[29]_i_4_n_0 ),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .I2(\next_mi_size_reg_n_0_[2] ),
        .I3(\next_mi_addr_reg_n_0_[2] ),
        .I4(\mi_wrap_be_next[29]_i_5_n_0 ),
        .I5(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_wrap_be_next[29]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \mi_wrap_be_next[29]_i_4 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .O(\mi_wrap_be_next[29]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mi_wrap_be_next[29]_i_5 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_wrap_be_next[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8F0000008F8F8F8F)) 
    \mi_wrap_be_next[2]_i_1 
       (.I0(\mi_wrap_be_next[10]_i_4_n_0 ),
        .I1(\mi_wrap_be_next[2]_i_2_n_0 ),
        .I2(\mi_wrap_be_next[3]_i_3_n_0 ),
        .I3(\mi_wrap_be_next[10]_i_2_n_0 ),
        .I4(\mi_wrap_be_next[2]_i_3_n_0 ),
        .I5(\mi_wrap_be_next[3]_i_2_n_0 ),
        .O(\mi_wrap_be_next[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \mi_wrap_be_next[2]_i_2 
       (.I0(m_axi_awaddr[3]),
        .I1(m_axi_awaddr[4]),
        .I2(m_axi_awaddr[1]),
        .I3(m_axi_awaddr[2]),
        .O(\mi_wrap_be_next[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \mi_wrap_be_next[2]_i_3 
       (.I0(\next_mi_addr_reg_n_0_[2] ),
        .I1(\next_mi_addr_reg_n_0_[1] ),
        .I2(\next_mi_addr_reg_n_0_[3] ),
        .I3(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_wrap_be_next[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555D555)) 
    \mi_wrap_be_next[30]_i_1 
       (.I0(\mi_wrap_be_next[30]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[30]_i_3_n_0 ),
        .I2(\mi_wrap_be_next[30]_i_4_n_0 ),
        .I3(\mi_wrap_be_next[30]_i_5_n_0 ),
        .I4(\goreg_dm.dout_i_reg[25] [2]),
        .I5(\mi_wrap_be_next[30]_i_6_n_0 ),
        .O(\mi_wrap_be_next[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h02AA)) 
    \mi_wrap_be_next[30]_i_2 
       (.I0(load_mi_ptr),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(\goreg_dm.dout_i_reg[25] [2]),
        .O(\mi_wrap_be_next[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \mi_wrap_be_next[30]_i_3 
       (.I0(m_axi_awaddr[1]),
        .I1(m_axi_awaddr[2]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(D[3]),
        .I4(\goreg_dm.dout_i_reg[25] [1]),
        .O(\mi_wrap_be_next[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wrap_be_next[30]_i_4 
       (.I0(D[2]),
        .I1(D[1]),
        .O(\mi_wrap_be_next[30]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mi_wrap_be_next[30]_i_5 
       (.I0(m_axi_awaddr[4]),
        .I1(m_axi_awaddr[3]),
        .O(\mi_wrap_be_next[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFD00FF)) 
    \mi_wrap_be_next[30]_i_6 
       (.I0(\mi_wrap_be_next[30]_i_7_n_0 ),
        .I1(p_0_in_0[2]),
        .I2(\mi_wrap_be_next[30]_i_8_n_0 ),
        .I3(\next_mi_size_reg_n_0_[2] ),
        .I4(\mi_wrap_be_next[31]_i_2_n_0 ),
        .I5(load_mi_ptr),
        .O(\mi_wrap_be_next[30]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \mi_wrap_be_next[30]_i_7 
       (.I0(p_0_in_0[0]),
        .I1(\next_mi_addr_reg_n_0_[3] ),
        .I2(p_0_in_0[1]),
        .I3(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_wrap_be_next[30]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \mi_wrap_be_next[30]_i_8 
       (.I0(\next_mi_addr_reg_n_0_[2] ),
        .I1(\next_mi_addr_reg_n_0_[1] ),
        .O(\mi_wrap_be_next[30]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F00022222222)) 
    \mi_wrap_be_next[31]_i_1 
       (.I0(\next_mi_size_reg_n_0_[2] ),
        .I1(\mi_wrap_be_next[31]_i_2_n_0 ),
        .I2(\goreg_dm.dout_i_reg[25] [2]),
        .I3(\goreg_dm.dout_i_reg[25] [0]),
        .I4(\goreg_dm.dout_i_reg[25] [1]),
        .I5(load_mi_ptr),
        .O(\mi_wrap_be_next[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wrap_be_next[31]_i_2 
       (.I0(\next_mi_size_reg_n_0_[1] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_wrap_be_next[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wrap_be_next[3]_i_1 
       (.I0(\mi_wrap_be_next[3]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[3]_i_3_n_0 ),
        .O(\mi_wrap_be_next[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1055115510551055)) 
    \mi_wrap_be_next[3]_i_2 
       (.I0(\mi_wrap_be_next[7]_i_2_n_0 ),
        .I1(p_0_in_0[1]),
        .I2(\next_mi_addr_reg_n_0_[4] ),
        .I3(\mi_wrap_be_next[3]_i_4_n_0 ),
        .I4(p_0_in_0[0]),
        .I5(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_wrap_be_next[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h20AA20AA22AA20AA)) 
    \mi_wrap_be_next[3]_i_3 
       (.I0(\mi_wrap_be_next[7]_i_3_n_0 ),
        .I1(D[2]),
        .I2(m_axi_awaddr[4]),
        .I3(\mi_wrap_be_next[3]_i_5_n_0 ),
        .I4(m_axi_awaddr[3]),
        .I5(D[1]),
        .O(\mi_wrap_be_next[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mi_wrap_be_next[3]_i_4 
       (.I0(\next_mi_size_reg_n_0_[1] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_wrap_be_next[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mi_wrap_be_next[3]_i_5 
       (.I0(\goreg_dm.dout_i_reg[25] [1]),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .O(\mi_wrap_be_next[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAABAAA)) 
    \mi_wrap_be_next[4]_i_1 
       (.I0(\mi_wrap_be_next_reg[5]_i_1_n_0 ),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .I2(load_mi_ptr),
        .I3(\mi_wrap_be_next[4]_i_2_n_0 ),
        .I4(\mi_wrap_be_next[12]_i_4_n_0 ),
        .I5(\mi_wrap_be_next[4]_i_3_n_0 ),
        .O(\mi_wrap_be_next[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wrap_be_next[4]_i_2 
       (.I0(m_axi_awaddr[4]),
        .I1(m_axi_awaddr[3]),
        .O(\mi_wrap_be_next[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \mi_wrap_be_next[4]_i_3 
       (.I0(load_mi_ptr),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .I3(\next_mi_addr_reg_n_0_[3] ),
        .I4(\next_mi_addr_reg_n_0_[4] ),
        .I5(\mi_wrap_be_next[28]_i_4_n_0 ),
        .O(\mi_wrap_be_next[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAAA)) 
    \mi_wrap_be_next[5]_i_2 
       (.I0(\mi_wrap_be_next[5]_i_4_n_0 ),
        .I1(\next_mi_addr_reg_n_0_[2] ),
        .I2(\next_mi_addr_reg_n_0_[3] ),
        .I3(\next_mi_addr_reg_n_0_[4] ),
        .I4(\mi_wrap_be_next[21]_i_2_n_0 ),
        .O(\mi_wrap_be_next[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFECCCECCFECCFECC)) 
    \mi_wrap_be_next[5]_i_3 
       (.I0(\mi_wrap_be_next[5]_i_5_n_0 ),
        .I1(\goreg_dm.dout_i_reg[25] [2]),
        .I2(\goreg_dm.dout_i_reg[25] [1]),
        .I3(\goreg_dm.dout_i_reg[25] [0]),
        .I4(D[1]),
        .I5(m_axi_awaddr[4]),
        .O(\mi_wrap_be_next[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFF8088)) 
    \mi_wrap_be_next[5]_i_4 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .I2(p_0_in_0[0]),
        .I3(\next_mi_addr_reg_n_0_[4] ),
        .I4(\next_mi_size_reg_n_0_[2] ),
        .O(\mi_wrap_be_next[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \mi_wrap_be_next[5]_i_5 
       (.I0(m_axi_awaddr[2]),
        .I1(D[1]),
        .I2(D[2]),
        .I3(D[3]),
        .I4(m_axi_awaddr[3]),
        .I5(m_axi_awaddr[4]),
        .O(\mi_wrap_be_next[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF8000)) 
    \mi_wrap_be_next[6]_i_1 
       (.I0(\mi_wrap_be_next[10]_i_2_n_0 ),
        .I1(\next_mi_addr_reg_n_0_[2] ),
        .I2(\next_mi_addr_reg_n_0_[1] ),
        .I3(\mi_wrap_be_next[6]_i_2_n_0 ),
        .I4(\mi_wrap_be_next[7]_i_2_n_0 ),
        .I5(\mi_wrap_be_next[6]_i_3_n_0 ),
        .O(\mi_wrap_be_next[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wrap_be_next[6]_i_2 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_wrap_be_next[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA2AAAAAAAAAAAA)) 
    \mi_wrap_be_next[6]_i_3 
       (.I0(\mi_wrap_be_next[7]_i_3_n_0 ),
        .I1(m_axi_awaddr[1]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(\goreg_dm.dout_i_reg[25] [1]),
        .I4(\mi_wrap_be_next[13]_i_4_n_0 ),
        .I5(\mi_wrap_be_next[4]_i_2_n_0 ),
        .O(\mi_wrap_be_next[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mi_wrap_be_next[7]_i_1 
       (.I0(\mi_wrap_be_next[7]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[7]_i_3_n_0 ),
        .O(\mi_wrap_be_next[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFEEEEEEEEEEEE)) 
    \mi_wrap_be_next[7]_i_2 
       (.I0(load_mi_ptr),
        .I1(\next_mi_size_reg_n_0_[2] ),
        .I2(\next_mi_addr_reg_n_0_[4] ),
        .I3(p_0_in_0[0]),
        .I4(\next_mi_size_reg_n_0_[1] ),
        .I5(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_wrap_be_next[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000002A2AAA2A)) 
    \mi_wrap_be_next[7]_i_3 
       (.I0(load_mi_ptr),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(m_axi_awaddr[4]),
        .I4(D[1]),
        .I5(\goreg_dm.dout_i_reg[25] [2]),
        .O(\mi_wrap_be_next[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEAEAEAEBF)) 
    \mi_wrap_be_next[8]_i_1 
       (.I0(\mi_wrap_be_next[9]_i_1_n_0 ),
        .I1(load_mi_ptr),
        .I2(\mi_wrap_be_next[8]_i_2_n_0 ),
        .I3(\next_mi_size_reg_n_0_[0] ),
        .I4(\mi_wrap_be_next[9]_i_5_n_0 ),
        .I5(\mi_wrap_be_next[8]_i_3_n_0 ),
        .O(\mi_wrap_be_next[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \mi_wrap_be_next[8]_i_2 
       (.I0(\mi_wrap_be_next[16]_i_4_n_0 ),
        .I1(m_axi_awaddr[3]),
        .I2(m_axi_awaddr[4]),
        .I3(\goreg_dm.dout_i_reg[25] [1]),
        .I4(D[3]),
        .I5(\goreg_dm.dout_i_reg[25] [0]),
        .O(\mi_wrap_be_next[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEFFFEFE)) 
    \mi_wrap_be_next[8]_i_3 
       (.I0(p_0_in_0[2]),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .I3(p_0_in_0[0]),
        .I4(\next_mi_addr_reg_n_0_[1] ),
        .I5(p_0_in_0[1]),
        .O(\mi_wrap_be_next[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00005D005D5D5D5D)) 
    \mi_wrap_be_next[9]_i_1 
       (.I0(\mi_wrap_be_next[11]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[9]_i_2_n_0 ),
        .I2(\mi_wrap_be_next[9]_i_3_n_0 ),
        .I3(\mi_wrap_be_next[9]_i_4_n_0 ),
        .I4(\mi_wrap_be_next[9]_i_5_n_0 ),
        .I5(\mi_wrap_be_next[11]_i_3_n_0 ),
        .O(\mi_wrap_be_next[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    \mi_wrap_be_next[9]_i_2 
       (.I0(D[3]),
        .I1(D[2]),
        .I2(D[1]),
        .I3(m_axi_awaddr[2]),
        .O(\mi_wrap_be_next[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \mi_wrap_be_next[9]_i_3 
       (.I0(\goreg_dm.dout_i_reg[25] [1]),
        .I1(\goreg_dm.dout_i_reg[25] [0]),
        .I2(m_axi_awaddr[4]),
        .I3(m_axi_awaddr[3]),
        .O(\mi_wrap_be_next[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004404)) 
    \mi_wrap_be_next[9]_i_4 
       (.I0(\next_mi_size_reg_n_0_[1] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[2]),
        .O(\mi_wrap_be_next[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mi_wrap_be_next[9]_i_5 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_wrap_be_next[9]_i_5_n_0 ));
  FDRE \mi_wrap_be_next_reg[0] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[0]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[10] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[10]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[11] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[11]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[12] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[12]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[13] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[13]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[14] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[14]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[16] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[16]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[17] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[17]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[18] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[18]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[19] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[19]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[1] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[1]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[20] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[20]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[21] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[21]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[22] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[22]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[23] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[23]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[24] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next_reg[24]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[24] ),
        .R(1'b0));
  MUXF7 \mi_wrap_be_next_reg[24]_i_1 
       (.I0(\mi_wrap_be_next[24]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[24]_i_3_n_0 ),
        .O(\mi_wrap_be_next_reg[24]_i_1_n_0 ),
        .S(load_mi_ptr));
  FDRE \mi_wrap_be_next_reg[25] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[25]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[26] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[26]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[27] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[27]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[28] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next_reg[28]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[28] ),
        .R(1'b0));
  MUXF7 \mi_wrap_be_next_reg[28]_i_1 
       (.I0(\mi_wrap_be_next[28]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[28]_i_3_n_0 ),
        .O(\mi_wrap_be_next_reg[28]_i_1_n_0 ),
        .S(load_mi_ptr));
  FDRE \mi_wrap_be_next_reg[29] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[29]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[2] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[2]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[30] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[30]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[31] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[31]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[3] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[3]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[4] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[4]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[5] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next_reg[5]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[5] ),
        .R(1'b0));
  MUXF7 \mi_wrap_be_next_reg[5]_i_1 
       (.I0(\mi_wrap_be_next[5]_i_2_n_0 ),
        .I1(\mi_wrap_be_next[5]_i_3_n_0 ),
        .O(\mi_wrap_be_next_reg[5]_i_1_n_0 ),
        .S(load_mi_ptr));
  FDRE \mi_wrap_be_next_reg[6] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[6]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[7] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[7]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[8] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[8]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mi_wrap_be_next_reg[9] 
       (.C(out),
        .CE(mi_wrap_be_next),
        .D(\mi_wrap_be_next[9]_i_1_n_0 ),
        .Q(\mi_wrap_be_next_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8B8B8BB)) 
    \mi_wrap_cnt[0]_i_1 
       (.I0(\mi_wrap_cnt[0]_i_2_n_0 ),
        .I1(load_mi_ptr),
        .I2(\mi_wrap_cnt[0]_i_3_n_0 ),
        .I3(mi_wrap_cnt[0]),
        .I4(mi_last),
        .O(\mi_wrap_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33305555333F5555)) 
    \mi_wrap_cnt[0]_i_2 
       (.I0(\mi_wrap_cnt[0]_i_4_n_0 ),
        .I1(m_axi_awaddr[5]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .I3(\goreg_dm.dout_i_reg[25] [1]),
        .I4(\goreg_dm.dout_i_reg[25] [2]),
        .I5(m_axi_awaddr[4]),
        .O(\mi_wrap_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC000C044C0CCCC44)) 
    \mi_wrap_cnt[0]_i_3 
       (.I0(\mi_wrap_cnt[0]_i_5_n_0 ),
        .I1(mi_last),
        .I2(\mi_wrap_cnt[0]_i_6_n_0 ),
        .I3(\mi_wrap_cnt[0]_i_7_n_0 ),
        .I4(\mi_wrap_cnt[0]_i_8_n_0 ),
        .I5(\next_mi_addr_reg_n_0_[5] ),
        .O(\mi_wrap_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \mi_wrap_cnt[0]_i_4 
       (.I0(m_axi_awaddr[2]),
        .I1(m_axi_awaddr[3]),
        .I2(\goreg_dm.dout_i_reg[25] [1]),
        .I3(m_axi_awaddr[1]),
        .I4(\goreg_dm.dout_i_reg[25] [0]),
        .I5(m_axi_awaddr[0]),
        .O(\mi_wrap_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_wrap_cnt[0]_i_5 
       (.I0(\next_mi_addr_reg_n_0_[3] ),
        .I1(\next_mi_addr_reg_n_0_[2] ),
        .I2(\next_mi_size_reg_n_0_[1] ),
        .I3(\next_mi_addr_reg_n_0_[1] ),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .I5(\next_mi_addr_reg_n_0_[0] ),
        .O(\mi_wrap_cnt[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wrap_cnt[0]_i_6 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_wrap_cnt[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mi_wrap_cnt[0]_i_7 
       (.I0(\next_mi_size_reg_n_0_[2] ),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_wrap_cnt[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \mi_wrap_cnt[0]_i_8 
       (.I0(\next_mi_size_reg_n_0_[2] ),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .O(\mi_wrap_cnt[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \mi_wrap_cnt[1]_i_1 
       (.I0(\mi_wrap_cnt[1]_i_2_n_0 ),
        .I1(p_0_in_0[0]),
        .I2(mi_last),
        .I3(load_mi_ptr),
        .I4(\mi_wrap_cnt[1]_i_3_n_0 ),
        .O(\mi_wrap_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \mi_wrap_cnt[1]_i_2 
       (.I0(\next_mi_addr_reg_n_0_[5] ),
        .I1(\next_mi_size_reg_n_0_[2] ),
        .I2(\next_mi_size_reg_n_0_[1] ),
        .I3(\next_mi_addr_reg_n_0_[6] ),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .I5(\mi_wrap_cnt[1]_i_4_n_0 ),
        .O(\mi_wrap_cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444444440000F00F)) 
    \mi_wrap_cnt[1]_i_3 
       (.I0(\mi_wrap_cnt[1]_i_5_n_0 ),
        .I1(D[1]),
        .I2(mi_wrap_cnt[1]),
        .I3(mi_wrap_cnt[0]),
        .I4(mi_last),
        .I5(load_mi_ptr),
        .O(\mi_wrap_cnt[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_wrap_cnt[1]_i_4 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_addr_reg_n_0_[3] ),
        .I2(\next_mi_size_reg_n_0_[1] ),
        .I3(\next_mi_addr_reg_n_0_[2] ),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .I5(\next_mi_addr_reg_n_0_[1] ),
        .O(\mi_wrap_cnt[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \mi_wrap_cnt[1]_i_5 
       (.I0(m_axi_awaddr[5]),
        .I1(\goreg_dm.dout_i_reg[25] [2]),
        .I2(\goreg_dm.dout_i_reg[25] [1]),
        .I3(m_axi_awaddr[6]),
        .I4(\goreg_dm.dout_i_reg[25] [0]),
        .I5(\mi_wrap_cnt[1]_i_6_n_0 ),
        .O(\mi_wrap_cnt[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_wrap_cnt[1]_i_6 
       (.I0(m_axi_awaddr[4]),
        .I1(m_axi_awaddr[3]),
        .I2(\goreg_dm.dout_i_reg[25] [1]),
        .I3(m_axi_awaddr[2]),
        .I4(\goreg_dm.dout_i_reg[25] [0]),
        .I5(m_axi_awaddr[1]),
        .O(\mi_wrap_cnt[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F202F20202F)) 
    \mi_wrap_cnt[2]_i_2 
       (.I0(p_0_in_0[1]),
        .I1(\mi_wrap_cnt[2]_i_4_n_0 ),
        .I2(mi_last),
        .I3(mi_wrap_cnt[2]),
        .I4(mi_wrap_cnt[0]),
        .I5(mi_wrap_cnt[1]),
        .O(\mi_wrap_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000A02A2A0AA02A2)) 
    \mi_wrap_cnt[2]_i_3 
       (.I0(D[2]),
        .I1(\mi_wrap_cnt[2]_i_5_n_0 ),
        .I2(\mi_wrap_cnt[3]_i_7_n_0 ),
        .I3(m_axi_awaddr[7]),
        .I4(\mi_be[31]_i_4_n_0 ),
        .I5(m_axi_awaddr[6]),
        .O(\mi_wrap_cnt[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE000200)) 
    \mi_wrap_cnt[2]_i_4 
       (.I0(\next_mi_addr_reg_n_0_[6] ),
        .I1(\next_mi_size_reg_n_0_[1] ),
        .I2(\next_mi_size_reg_n_0_[0] ),
        .I3(\next_mi_size_reg_n_0_[2] ),
        .I4(\next_mi_addr_reg_n_0_[7] ),
        .I5(\mi_wrap_cnt[2]_i_6_n_0 ),
        .O(\mi_wrap_cnt[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFA0A0CFC0CFC0)) 
    \mi_wrap_cnt[2]_i_5 
       (.I0(m_axi_awaddr[5]),
        .I1(m_axi_awaddr[4]),
        .I2(\goreg_dm.dout_i_reg[25] [1]),
        .I3(m_axi_awaddr[2]),
        .I4(m_axi_awaddr[3]),
        .I5(\goreg_dm.dout_i_reg[25] [0]),
        .O(\mi_wrap_cnt[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3202323232020202)) 
    \mi_wrap_cnt[2]_i_6 
       (.I0(\mi_wrap_cnt[2]_i_7_n_0 ),
        .I1(\next_mi_size_reg_n_0_[2] ),
        .I2(\next_mi_size_reg_n_0_[1] ),
        .I3(\next_mi_addr_reg_n_0_[5] ),
        .I4(\next_mi_size_reg_n_0_[0] ),
        .I5(\next_mi_addr_reg_n_0_[4] ),
        .O(\mi_wrap_cnt[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_wrap_cnt[2]_i_7 
       (.I0(\next_mi_addr_reg_n_0_[3] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\next_mi_addr_reg_n_0_[2] ),
        .O(\mi_wrap_cnt[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \mi_wrap_cnt[3]_i_1 
       (.I0(load_mi_ptr),
        .I1(m_axi_wready),
        .I2(M_AXI_WVALID_i_reg_0),
        .I3(load_mi_d1),
        .I4(load_mi_d2),
        .O(\mi_wrap_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \mi_wrap_cnt[3]_i_3 
       (.I0(\mi_wrap_cnt[3]_i_5_n_0 ),
        .I1(mi_last),
        .I2(mi_wrap_cnt[3]),
        .I3(mi_wrap_cnt[2]),
        .I4(mi_wrap_cnt[1]),
        .I5(mi_wrap_cnt[0]),
        .O(\mi_wrap_cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000A02A2A0AA02A2)) 
    \mi_wrap_cnt[3]_i_4 
       (.I0(D[3]),
        .I1(\mi_wrap_cnt[3]_i_6_n_0 ),
        .I2(\mi_wrap_cnt[3]_i_7_n_0 ),
        .I3(m_axi_awaddr[8]),
        .I4(\mi_be[31]_i_4_n_0 ),
        .I5(m_axi_awaddr[7]),
        .O(\mi_wrap_cnt[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8888AA888A888A88)) 
    \mi_wrap_cnt[3]_i_5 
       (.I0(p_0_in_0[2]),
        .I1(\mi_wrap_cnt[3]_i_8_n_0 ),
        .I2(data5),
        .I3(\next_mi_size_reg_n_0_[2] ),
        .I4(\next_mi_addr_reg_n_0_[7] ),
        .I5(\mi_wrap_be_next[31]_i_2_n_0 ),
        .O(\mi_wrap_cnt[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mi_wrap_cnt[3]_i_6 
       (.I0(m_axi_awaddr[6]),
        .I1(m_axi_awaddr[5]),
        .I2(\goreg_dm.dout_i_reg[25] [1]),
        .I3(m_axi_awaddr[4]),
        .I4(\goreg_dm.dout_i_reg[25] [0]),
        .I5(m_axi_awaddr[3]),
        .O(\mi_wrap_cnt[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \mi_wrap_cnt[3]_i_7 
       (.I0(\goreg_dm.dout_i_reg[25] [2]),
        .I1(\goreg_dm.dout_i_reg[25] [1]),
        .I2(\goreg_dm.dout_i_reg[25] [0]),
        .O(\mi_wrap_cnt[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00001B1B000000FF)) 
    \mi_wrap_cnt[3]_i_8 
       (.I0(\next_mi_size_reg_n_0_[0] ),
        .I1(\next_mi_addr_reg_n_0_[5] ),
        .I2(\next_mi_addr_reg_n_0_[6] ),
        .I3(\mi_wrap_cnt[3]_i_9_n_0 ),
        .I4(\next_mi_size_reg_n_0_[2] ),
        .I5(\next_mi_size_reg_n_0_[1] ),
        .O(\mi_wrap_cnt[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mi_wrap_cnt[3]_i_9 
       (.I0(\next_mi_addr_reg_n_0_[4] ),
        .I1(\next_mi_size_reg_n_0_[0] ),
        .I2(\next_mi_addr_reg_n_0_[3] ),
        .O(\mi_wrap_cnt[3]_i_9_n_0 ));
  FDRE \mi_wrap_cnt_reg[0] 
       (.C(out),
        .CE(\mi_wrap_cnt[3]_i_1_n_0 ),
        .D(\mi_wrap_cnt[0]_i_1_n_0 ),
        .Q(mi_wrap_cnt[0]),
        .R(1'b0));
  FDRE \mi_wrap_cnt_reg[1] 
       (.C(out),
        .CE(\mi_wrap_cnt[3]_i_1_n_0 ),
        .D(\mi_wrap_cnt[1]_i_1_n_0 ),
        .Q(mi_wrap_cnt[1]),
        .R(1'b0));
  FDRE \mi_wrap_cnt_reg[2] 
       (.C(out),
        .CE(\mi_wrap_cnt[3]_i_1_n_0 ),
        .D(\mi_wrap_cnt_reg[2]_i_1_n_0 ),
        .Q(mi_wrap_cnt[2]),
        .R(1'b0));
  MUXF7 \mi_wrap_cnt_reg[2]_i_1 
       (.I0(\mi_wrap_cnt[2]_i_2_n_0 ),
        .I1(\mi_wrap_cnt[2]_i_3_n_0 ),
        .O(\mi_wrap_cnt_reg[2]_i_1_n_0 ),
        .S(load_mi_ptr));
  FDRE \mi_wrap_cnt_reg[3] 
       (.C(out),
        .CE(\mi_wrap_cnt[3]_i_1_n_0 ),
        .D(\mi_wrap_cnt_reg[3]_i_2_n_0 ),
        .Q(mi_wrap_cnt[3]),
        .R(1'b0));
  MUXF7 \mi_wrap_cnt_reg[3]_i_2 
       (.I0(\mi_wrap_cnt[3]_i_3_n_0 ),
        .I1(\mi_wrap_cnt[3]_i_4_n_0 ),
        .O(\mi_wrap_cnt_reg[3]_i_2_n_0 ),
        .S(load_mi_ptr));
  LUT6 #(
    .INIT(64'h00000040CCCCCCCC)) 
    \mi_wstrb_mask_d2[0]_i_1 
       (.I0(addr[0]),
        .I1(\mi_be_d1_reg_n_0_[0] ),
        .I2(\mi_wstrb_mask_d2[25]_i_3_n_0 ),
        .I3(addr[3]),
        .I4(addr[4]),
        .I5(mi_first_d1),
        .O(mi_wstrb_mask_d20[0]));
  LUT6 #(
    .INIT(64'h0000002000200020)) 
    \mi_wstrb_mask_d2[10]_i_1 
       (.I0(\mi_wstrb_mask_d2[26]_i_2_n_0 ),
        .I1(\mi_wstrb_mask_d2[10]_i_2_n_0 ),
        .I2(\mi_be_d1_reg_n_0_[10] ),
        .I3(\mi_wstrb_mask_d2[28]_i_3_n_0 ),
        .I4(\mi_wstrb_mask_d2[14]_i_2_n_0 ),
        .I5(\mi_wstrb_mask_d2[26]_i_3_n_0 ),
        .O(mi_wstrb_mask_d20[10]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \mi_wstrb_mask_d2[10]_i_2 
       (.I0(index[3]),
        .I1(mi_last_d1_reg_n_0),
        .I2(index[4]),
        .O(\mi_wstrb_mask_d2[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A002A002A002A00)) 
    \mi_wstrb_mask_d2[11]_i_1 
       (.I0(\mi_wstrb_mask_d2[11]_i_2_n_0 ),
        .I1(addr[4]),
        .I2(mi_first_d1),
        .I3(\mi_be_d1_reg_n_0_[11] ),
        .I4(addr[3]),
        .I5(addr[2]),
        .O(mi_wstrb_mask_d20[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF800FFFF)) 
    \mi_wstrb_mask_d2[11]_i_2 
       (.I0(index[1]),
        .I1(index[0]),
        .I2(index[2]),
        .I3(index[3]),
        .I4(mi_last_d1_reg_n_0),
        .I5(index[4]),
        .O(\mi_wstrb_mask_d2[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAA00000000)) 
    \mi_wstrb_mask_d2[12]_i_1 
       (.I0(\mi_wstrb_mask_d2[15]_i_2_n_0 ),
        .I1(\mi_wstrb_mask_d2[28]_i_2_n_0 ),
        .I2(mi_first_d1),
        .I3(addr[2]),
        .I4(addr[3]),
        .I5(\mi_be_d1_reg_n_0_[12] ),
        .O(mi_wstrb_mask_d20[12]));
  LUT6 #(
    .INIT(64'h7F00000000000000)) 
    \mi_wstrb_mask_d2[13]_i_1 
       (.I0(addr[3]),
        .I1(\mi_wstrb_mask_d2[13]_i_2_n_0 ),
        .I2(addr[1]),
        .I3(\mi_be_d1_reg_n_0_[13] ),
        .I4(\mi_wstrb_mask_d2[13]_i_3_n_0 ),
        .I5(\mi_wstrb_mask_d2[15]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[13]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mi_wstrb_mask_d2[13]_i_2 
       (.I0(mi_first_d1),
        .I1(addr[2]),
        .O(\mi_wstrb_mask_d2[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \mi_wstrb_mask_d2[13]_i_3 
       (.I0(index[4]),
        .I1(mi_last_d1_reg_n_0),
        .I2(index[0]),
        .I3(index[1]),
        .O(\mi_wstrb_mask_d2[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0700070000000700)) 
    \mi_wstrb_mask_d2[14]_i_1 
       (.I0(\mi_wstrb_mask_d2[30]_i_2_n_0 ),
        .I1(addr[3]),
        .I2(\mi_wstrb_mask_d2[28]_i_3_n_0 ),
        .I3(\mi_be_d1_reg_n_0_[14] ),
        .I4(\mi_wstrb_mask_d2[14]_i_2_n_0 ),
        .I5(\mi_wstrb_mask_d2[14]_i_3_n_0 ),
        .O(mi_wstrb_mask_d20[14]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mi_wstrb_mask_d2[14]_i_2 
       (.I0(mi_last_d1_reg_n_0),
        .I1(index[4]),
        .O(\mi_wstrb_mask_d2[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mi_wstrb_mask_d2[14]_i_3 
       (.I0(index[3]),
        .I1(index[2]),
        .I2(index[1]),
        .O(\mi_wstrb_mask_d2[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888808880888088)) 
    \mi_wstrb_mask_d2[15]_i_1 
       (.I0(\mi_wstrb_mask_d2[15]_i_2_n_0 ),
        .I1(\mi_be_d1_reg_n_0_[15] ),
        .I2(index[4]),
        .I3(mi_last_d1_reg_n_0),
        .I4(index[0]),
        .I5(index[1]),
        .O(mi_wstrb_mask_d20[15]));
  LUT6 #(
    .INIT(64'h7777777770007777)) 
    \mi_wstrb_mask_d2[15]_i_2 
       (.I0(addr[4]),
        .I1(mi_first_d1),
        .I2(index[2]),
        .I3(index[3]),
        .I4(mi_last_d1_reg_n_0),
        .I5(index[4]),
        .O(\mi_wstrb_mask_d2[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00C000C000C040C0)) 
    \mi_wstrb_mask_d2[16]_i_1 
       (.I0(addr[2]),
        .I1(\mi_wstrb_mask_d2[23]_i_3_n_0 ),
        .I2(\mi_be_d1_reg_n_0_[16] ),
        .I3(\mi_wstrb_mask_d2[28]_i_3_n_0 ),
        .I4(addr[0]),
        .I5(addr[1]),
        .O(mi_wstrb_mask_d20[16]));
  LUT6 #(
    .INIT(64'hE0E000E000000000)) 
    \mi_wstrb_mask_d2[17]_i_1 
       (.I0(\mi_wstrb_mask_d2[25]_i_2_n_0 ),
        .I1(index[3]),
        .I2(\mi_be_d1_reg_n_0_[17] ),
        .I3(\mi_wstrb_mask_d2[28]_i_3_n_0 ),
        .I4(\mi_wstrb_mask_d2[25]_i_3_n_0 ),
        .I5(\mi_wstrb_mask_d2[23]_i_3_n_0 ),
        .O(mi_wstrb_mask_d20[17]));
  LUT6 #(
    .INIT(64'h0000088808880888)) 
    \mi_wstrb_mask_d2[18]_i_1 
       (.I0(\mi_wstrb_mask_d2[19]_i_2_n_0 ),
        .I1(\mi_be_d1_reg_n_0_[18] ),
        .I2(\mi_wstrb_mask_d2[28]_i_3_n_0 ),
        .I3(\mi_wstrb_mask_d2[18]_i_2_n_0 ),
        .I4(\mi_wstrb_mask_d2[26]_i_3_n_0 ),
        .I5(\mi_wstrb_mask_d2[23]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[18]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mi_wstrb_mask_d2[18]_i_2 
       (.I0(addr[1]),
        .I1(addr[0]),
        .O(\mi_wstrb_mask_d2[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888808880888088)) 
    \mi_wstrb_mask_d2[19]_i_1 
       (.I0(\mi_wstrb_mask_d2[19]_i_2_n_0 ),
        .I1(\mi_be_d1_reg_n_0_[19] ),
        .I2(index[2]),
        .I3(\mi_wstrb_mask_d2[23]_i_2_n_0 ),
        .I4(index[0]),
        .I5(index[1]),
        .O(mi_wstrb_mask_d20[19]));
  LUT6 #(
    .INIT(64'h00F3F3F351F3F3F3)) 
    \mi_wstrb_mask_d2[19]_i_2 
       (.I0(addr[3]),
        .I1(mi_last_d1_reg_n_0),
        .I2(index[4]),
        .I3(mi_first_d1),
        .I4(addr[4]),
        .I5(addr[2]),
        .O(\mi_wstrb_mask_d2[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFD0000)) 
    \mi_wstrb_mask_d2[1]_i_1 
       (.I0(\mi_wstrb_mask_d2[14]_i_2_n_0 ),
        .I1(index[0]),
        .I2(index[1]),
        .I3(\mi_wstrb_mask_d2[1]_i_2_n_0 ),
        .I4(\mi_be_d1_reg_n_0_[1] ),
        .I5(\mi_wstrb_mask_d2[1]_i_3_n_0 ),
        .O(mi_wstrb_mask_d20[1]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mi_wstrb_mask_d2[1]_i_2 
       (.I0(index[2]),
        .I1(index[3]),
        .O(\mi_wstrb_mask_d2[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \mi_wstrb_mask_d2[1]_i_3 
       (.I0(mi_first_d1),
        .I1(addr[4]),
        .I2(addr[3]),
        .I3(addr[2]),
        .I4(addr[1]),
        .O(\mi_wstrb_mask_d2[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00008A008A008A00)) 
    \mi_wstrb_mask_d2[20]_i_1 
       (.I0(\mi_wstrb_mask_d2[23]_i_3_n_0 ),
        .I1(index[2]),
        .I2(\mi_wstrb_mask_d2[23]_i_2_n_0 ),
        .I3(\mi_be_d1_reg_n_0_[20] ),
        .I4(\mi_wstrb_mask_d2[20]_i_2_n_0 ),
        .I5(addr[4]),
        .O(mi_wstrb_mask_d20[20]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \mi_wstrb_mask_d2[20]_i_2 
       (.I0(addr[2]),
        .I1(mi_first_d1),
        .I2(addr[0]),
        .I3(addr[1]),
        .O(\mi_wstrb_mask_d2[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000D000D000D000)) 
    \mi_wstrb_mask_d2[21]_i_1 
       (.I0(\mi_wstrb_mask_d2[23]_i_2_n_0 ),
        .I1(\mi_wstrb_mask_d2[21]_i_2_n_0 ),
        .I2(\mi_be_d1_reg_n_0_[21] ),
        .I3(\mi_wstrb_mask_d2[23]_i_3_n_0 ),
        .I4(\mi_wstrb_mask_d2[21]_i_3_n_0 ),
        .I5(addr[4]),
        .O(mi_wstrb_mask_d20[21]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \mi_wstrb_mask_d2[21]_i_2 
       (.I0(index[2]),
        .I1(index[0]),
        .I2(index[1]),
        .O(\mi_wstrb_mask_d2[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mi_wstrb_mask_d2[21]_i_3 
       (.I0(addr[1]),
        .I1(addr[2]),
        .I2(mi_first_d1),
        .O(\mi_wstrb_mask_d2[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00080808)) 
    \mi_wstrb_mask_d2[22]_i_1 
       (.I0(\mi_wstrb_mask_d2[23]_i_3_n_0 ),
        .I1(\mi_be_d1_reg_n_0_[22] ),
        .I2(\mi_wstrb_mask_d2[22]_i_2_n_0 ),
        .I3(\mi_wstrb_mask_d2[30]_i_2_n_0 ),
        .I4(addr[4]),
        .O(mi_wstrb_mask_d20[22]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    \mi_wstrb_mask_d2[22]_i_2 
       (.I0(index[3]),
        .I1(mi_last_d1_reg_n_0),
        .I2(index[1]),
        .I3(index[2]),
        .O(\mi_wstrb_mask_d2[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD555000000000000)) 
    \mi_wstrb_mask_d2[23]_i_1 
       (.I0(\mi_wstrb_mask_d2[23]_i_2_n_0 ),
        .I1(index[2]),
        .I2(index[0]),
        .I3(index[1]),
        .I4(\mi_wstrb_mask_d2[23]_i_3_n_0 ),
        .I5(\mi_be_d1_reg_n_0_[23] ),
        .O(mi_wstrb_mask_d20[23]));
  LUT2 #(
    .INIT(4'h2)) 
    \mi_wstrb_mask_d2[23]_i_2 
       (.I0(mi_last_d1_reg_n_0),
        .I1(index[3]),
        .O(\mi_wstrb_mask_d2[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h0BBBBBBB)) 
    \mi_wstrb_mask_d2[23]_i_3 
       (.I0(index[4]),
        .I1(mi_last_d1_reg_n_0),
        .I2(mi_first_d1),
        .I3(addr[4]),
        .I4(addr[3]),
        .O(\mi_wstrb_mask_d2[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040444444444444)) 
    \mi_wstrb_mask_d2[24]_i_1 
       (.I0(\mi_wstrb_mask_d2[26]_i_4_n_0 ),
        .I1(\mi_be_d1_reg_n_0_[24] ),
        .I2(\mi_wstrb_mask_d2[25]_i_3_n_0 ),
        .I3(addr[0]),
        .I4(addr[3]),
        .I5(\mi_wstrb_mask_d2[28]_i_3_n_0 ),
        .O(mi_wstrb_mask_d20[24]));
  LUT6 #(
    .INIT(64'h0000AA2A00000000)) 
    \mi_wstrb_mask_d2[25]_i_1 
       (.I0(\mi_wstrb_mask_d2[25]_i_2_n_0 ),
        .I1(\mi_wstrb_mask_d2[28]_i_3_n_0 ),
        .I2(addr[3]),
        .I3(\mi_wstrb_mask_d2[25]_i_3_n_0 ),
        .I4(\mi_wstrb_mask_d2[26]_i_4_n_0 ),
        .I5(\mi_be_d1_reg_n_0_[25] ),
        .O(mi_wstrb_mask_d20[25]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \mi_wstrb_mask_d2[25]_i_2 
       (.I0(index[0]),
        .I1(mi_last_d1_reg_n_0),
        .I2(index[1]),
        .I3(index[2]),
        .O(\mi_wstrb_mask_d2[25]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wstrb_mask_d2[25]_i_3 
       (.I0(addr[2]),
        .I1(addr[1]),
        .O(\mi_wstrb_mask_d2[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000D0D0D0)) 
    \mi_wstrb_mask_d2[26]_i_1 
       (.I0(addr[4]),
        .I1(\mi_wstrb_mask_d2[26]_i_2_n_0 ),
        .I2(\mi_be_d1_reg_n_0_[26] ),
        .I3(\mi_wstrb_mask_d2[26]_i_3_n_0 ),
        .I4(mi_last_d1_reg_n_0),
        .I5(\mi_wstrb_mask_d2[26]_i_4_n_0 ),
        .O(mi_wstrb_mask_d20[26]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h5777FFFF)) 
    \mi_wstrb_mask_d2[26]_i_2 
       (.I0(mi_first_d1),
        .I1(addr[2]),
        .I2(addr[0]),
        .I3(addr[1]),
        .I4(addr[3]),
        .O(\mi_wstrb_mask_d2[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wstrb_mask_d2[26]_i_3 
       (.I0(index[2]),
        .I1(index[1]),
        .O(\mi_wstrb_mask_d2[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \mi_wstrb_mask_d2[26]_i_4 
       (.I0(index[4]),
        .I1(index[3]),
        .I2(mi_last_d1_reg_n_0),
        .O(\mi_wstrb_mask_d2[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDD5D5D5)) 
    \mi_wstrb_mask_d2[27]_i_1 
       (.I0(mi_last_d1_reg_n_0),
        .I1(index[3]),
        .I2(index[2]),
        .I3(index[0]),
        .I4(index[1]),
        .I5(\mi_wstrb_mask_d2[27]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFF8000FFFF)) 
    \mi_wstrb_mask_d2[27]_i_2 
       (.I0(mi_first_d1),
        .I1(addr[4]),
        .I2(addr[2]),
        .I3(addr[3]),
        .I4(\mi_be_d1_reg_n_0_[27] ),
        .I5(\mi_wstrb_mask_d2[14]_i_2_n_0 ),
        .O(\mi_wstrb_mask_d2[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAA00000000)) 
    \mi_wstrb_mask_d2[28]_i_1 
       (.I0(\mi_wstrb_mask_d2[29]_i_4_n_0 ),
        .I1(\mi_wstrb_mask_d2[28]_i_2_n_0 ),
        .I2(\mi_wstrb_mask_d2[28]_i_3_n_0 ),
        .I3(addr[2]),
        .I4(addr[3]),
        .I5(\mi_be_d1_reg_n_0_[28] ),
        .O(mi_wstrb_mask_d20[28]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wstrb_mask_d2[28]_i_2 
       (.I0(addr[1]),
        .I1(addr[0]),
        .O(\mi_wstrb_mask_d2[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mi_wstrb_mask_d2[28]_i_3 
       (.I0(mi_first_d1),
        .I1(addr[4]),
        .O(\mi_wstrb_mask_d2[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7070007000000000)) 
    \mi_wstrb_mask_d2[29]_i_1 
       (.I0(\mi_wstrb_mask_d2[29]_i_2_n_0 ),
        .I1(addr[3]),
        .I2(\mi_be_d1_reg_n_0_[29] ),
        .I3(\mi_wstrb_mask_d2[29]_i_3_n_0 ),
        .I4(index[1]),
        .I5(\mi_wstrb_mask_d2[29]_i_4_n_0 ),
        .O(mi_wstrb_mask_d20[29]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mi_wstrb_mask_d2[29]_i_2 
       (.I0(mi_first_d1),
        .I1(addr[2]),
        .I2(addr[1]),
        .I3(addr[4]),
        .O(\mi_wstrb_mask_d2[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mi_wstrb_mask_d2[29]_i_3 
       (.I0(mi_last_d1_reg_n_0),
        .I1(index[0]),
        .O(\mi_wstrb_mask_d2[29]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \mi_wstrb_mask_d2[29]_i_4 
       (.I0(index[4]),
        .I1(index[2]),
        .I2(index[3]),
        .I3(mi_last_d1_reg_n_0),
        .O(\mi_wstrb_mask_d2[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2020200020202020)) 
    \mi_wstrb_mask_d2[2]_i_1 
       (.I0(\mi_wstrb_mask_d2[2]_i_2_n_0 ),
        .I1(\mi_wstrb_mask_d2[7]_i_2_n_0 ),
        .I2(\mi_be_d1_reg_n_0_[2] ),
        .I3(index[1]),
        .I4(index[2]),
        .I5(\mi_wstrb_mask_d2[10]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h07FF)) 
    \mi_wstrb_mask_d2[2]_i_2 
       (.I0(addr[1]),
        .I1(addr[0]),
        .I2(addr[2]),
        .I3(mi_first_d1),
        .O(\mi_wstrb_mask_d2[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7F000000)) 
    \mi_wstrb_mask_d2[30]_i_1 
       (.I0(addr[4]),
        .I1(addr[3]),
        .I2(\mi_wstrb_mask_d2[30]_i_2_n_0 ),
        .I3(\mi_wstrb_mask_d2[30]_i_3_n_0 ),
        .I4(\mi_be_d1_reg_n_0_[30] ),
        .O(mi_wstrb_mask_d20[30]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mi_wstrb_mask_d2[30]_i_2 
       (.I0(addr[2]),
        .I1(mi_first_d1),
        .I2(addr[0]),
        .I3(addr[1]),
        .O(\mi_wstrb_mask_d2[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \mi_wstrb_mask_d2[30]_i_3 
       (.I0(index[4]),
        .I1(index[3]),
        .I2(index[2]),
        .I3(index[1]),
        .I4(mi_last_d1_reg_n_0),
        .O(\mi_wstrb_mask_d2[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2222222222222000)) 
    \mi_wstrb_mask_d2[31]_i_1 
       (.I0(first_load_mi_d1),
        .I1(load_mi_ptr),
        .I2(m_axi_wready),
        .I3(M_AXI_WVALID_i_reg_0),
        .I4(load_mi_d1),
        .I5(load_mi_d2),
        .O(mi_wstrb_mask_d2));
  LUT6 #(
    .INIT(64'h8000FF000000FF00)) 
    \mi_wstrb_mask_d2[31]_i_2 
       (.I0(index[1]),
        .I1(\mi_wstrb_mask_d2[31]_i_3_n_0 ),
        .I2(index[4]),
        .I3(\mi_be_d1_reg_n_0_[31] ),
        .I4(mi_last_d1_reg_n_0),
        .I5(index[0]),
        .O(mi_wstrb_mask_d20[31]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mi_wstrb_mask_d2[31]_i_3 
       (.I0(index[2]),
        .I1(index[3]),
        .O(\mi_wstrb_mask_d2[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FD0000)) 
    \mi_wstrb_mask_d2[3]_i_1 
       (.I0(\mi_wstrb_mask_d2[3]_i_2_n_0 ),
        .I1(index[2]),
        .I2(index[3]),
        .I3(\mi_wstrb_mask_d2[13]_i_2_n_0 ),
        .I4(\mi_be_d1_reg_n_0_[3] ),
        .I5(\mi_wstrb_mask_d2[7]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    \mi_wstrb_mask_d2[3]_i_2 
       (.I0(index[4]),
        .I1(mi_last_d1_reg_n_0),
        .I2(index[0]),
        .I3(index[1]),
        .O(\mi_wstrb_mask_d2[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FD00)) 
    \mi_wstrb_mask_d2[4]_i_1 
       (.I0(\mi_wstrb_mask_d2[14]_i_2_n_0 ),
        .I1(index[3]),
        .I2(index[2]),
        .I3(\mi_be_d1_reg_n_0_[4] ),
        .I4(\mi_wstrb_mask_d2[7]_i_2_n_0 ),
        .I5(\mi_wstrb_mask_d2[20]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[4]));
  LUT6 #(
    .INIT(64'h00000D000D000D00)) 
    \mi_wstrb_mask_d2[5]_i_1 
       (.I0(\mi_wstrb_mask_d2[10]_i_2_n_0 ),
        .I1(\mi_wstrb_mask_d2[21]_i_2_n_0 ),
        .I2(\mi_wstrb_mask_d2[7]_i_2_n_0 ),
        .I3(\mi_be_d1_reg_n_0_[5] ),
        .I4(addr[1]),
        .I5(\mi_wstrb_mask_d2[13]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[5]));
  LUT5 #(
    .INIT(32'h00000D00)) 
    \mi_wstrb_mask_d2[6]_i_1 
       (.I0(\mi_wstrb_mask_d2[22]_i_2_n_0 ),
        .I1(index[4]),
        .I2(\mi_wstrb_mask_d2[7]_i_2_n_0 ),
        .I3(\mi_be_d1_reg_n_0_[6] ),
        .I4(\mi_wstrb_mask_d2[30]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[6]));
  LUT6 #(
    .INIT(64'h00000000D5550000)) 
    \mi_wstrb_mask_d2[7]_i_1 
       (.I0(\mi_wstrb_mask_d2[10]_i_2_n_0 ),
        .I1(index[2]),
        .I2(index[0]),
        .I3(index[1]),
        .I4(\mi_be_d1_reg_n_0_[7] ),
        .I5(\mi_wstrb_mask_d2[7]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[7]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \mi_wstrb_mask_d2[7]_i_2 
       (.I0(mi_first_d1),
        .I1(addr[3]),
        .I2(addr[4]),
        .O(\mi_wstrb_mask_d2[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AA2A)) 
    \mi_wstrb_mask_d2[8]_i_1 
       (.I0(\mi_be_d1_reg_n_0_[8] ),
        .I1(mi_first_d1),
        .I2(addr[0]),
        .I3(\mi_wstrb_mask_d2[8]_i_2_n_0 ),
        .I4(\mi_wstrb_mask_d2[10]_i_2_n_0 ),
        .I5(\mi_wstrb_mask_d2[9]_i_2_n_0 ),
        .O(mi_wstrb_mask_d20[8]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mi_wstrb_mask_d2[8]_i_2 
       (.I0(addr[4]),
        .I1(addr[3]),
        .O(\mi_wstrb_mask_d2[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3232303200000000)) 
    \mi_wstrb_mask_d2[9]_i_1 
       (.I0(\mi_wstrb_mask_d2[25]_i_2_n_0 ),
        .I1(\mi_wstrb_mask_d2[9]_i_2_n_0 ),
        .I2(index[4]),
        .I3(mi_last_d1_reg_n_0),
        .I4(index[3]),
        .I5(\mi_be_d1_reg_n_0_[9] ),
        .O(mi_wstrb_mask_d20[9]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hC8C8C8C0)) 
    \mi_wstrb_mask_d2[9]_i_2 
       (.I0(addr[3]),
        .I1(mi_first_d1),
        .I2(addr[4]),
        .I3(addr[2]),
        .I4(addr[1]),
        .O(\mi_wstrb_mask_d2[9]_i_2_n_0 ));
  FDSE \mi_wstrb_mask_d2_reg[0] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[0]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[0] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[10] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[10]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[10] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[11] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[11]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[11] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[12] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[12]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[12] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[13] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[13]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[13] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[14] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[14]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[14] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[15] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[15]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[15] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[16] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[16]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[16] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[17] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[17]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[17] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[18] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[18]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[18] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[19] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[19]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[19] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[1] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[1]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[1] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[20] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[20]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[20] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[21] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[21]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[21] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[22] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[22]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[22] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[23] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[23]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[23] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[24] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[24]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[24] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[25] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[25]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[25] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[26] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[26]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[26] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[27] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[27]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[27] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[28] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[28]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[28] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[29] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[29]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[29] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[2] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[2]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[2] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[30] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[30]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[30] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[31] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[31]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[31] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[3] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[3]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[3] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[4] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[4]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[4] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[5] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[5]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[5] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[6] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[6]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[6] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[7] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[7]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[7] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[8] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[8]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[8] ),
        .S(s_axi_aresetn));
  FDSE \mi_wstrb_mask_d2_reg[9] 
       (.C(out),
        .CE(mi_wstrb_mask_d2),
        .D(mi_wstrb_mask_d20[9]),
        .Q(\mi_wstrb_mask_d2_reg_n_0_[9] ),
        .S(s_axi_aresetn));
  FDRE \next_mi_addr_reg[0] 
       (.C(out),
        .CE(load_mi_next),
        .D(m_axi_awaddr[0]),
        .Q(\next_mi_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \next_mi_addr_reg[1] 
       (.C(out),
        .CE(load_mi_next),
        .D(m_axi_awaddr[1]),
        .Q(\next_mi_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \next_mi_addr_reg[2] 
       (.C(out),
        .CE(load_mi_next),
        .D(m_axi_awaddr[2]),
        .Q(\next_mi_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \next_mi_addr_reg[3] 
       (.C(out),
        .CE(load_mi_next),
        .D(m_axi_awaddr[3]),
        .Q(\next_mi_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \next_mi_addr_reg[4] 
       (.C(out),
        .CE(load_mi_next),
        .D(m_axi_awaddr[4]),
        .Q(\next_mi_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \next_mi_addr_reg[5] 
       (.C(out),
        .CE(load_mi_next),
        .D(m_axi_awaddr[5]),
        .Q(\next_mi_addr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \next_mi_addr_reg[6] 
       (.C(out),
        .CE(load_mi_next),
        .D(m_axi_awaddr[6]),
        .Q(\next_mi_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \next_mi_addr_reg[7] 
       (.C(out),
        .CE(load_mi_next),
        .D(m_axi_awaddr[7]),
        .Q(\next_mi_addr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \next_mi_addr_reg[8] 
       (.C(out),
        .CE(load_mi_next),
        .D(m_axi_awaddr[8]),
        .Q(data5),
        .R(1'b0));
  FDRE \next_mi_burst_reg[0] 
       (.C(out),
        .CE(load_mi_next),
        .D(\goreg_dm.dout_i_reg[22] [0]),
        .Q(next_mi_burst[0]),
        .R(1'b0));
  FDRE \next_mi_burst_reg[1] 
       (.C(out),
        .CE(load_mi_next),
        .D(\goreg_dm.dout_i_reg[22] [1]),
        .Q(next_mi_burst[1]),
        .R(1'b0));
  FDRE \next_mi_last_index_reg_reg[0] 
       (.C(out),
        .CE(load_mi_next),
        .D(mi_last_index_reg[0]),
        .Q(next_mi_last_index_reg[0]),
        .R(1'b0));
  FDRE \next_mi_last_index_reg_reg[1] 
       (.C(out),
        .CE(load_mi_next),
        .D(mi_last_index_reg[1]),
        .Q(next_mi_last_index_reg[1]),
        .R(1'b0));
  FDRE \next_mi_last_index_reg_reg[2] 
       (.C(out),
        .CE(load_mi_next),
        .D(mi_last_index_reg[2]),
        .Q(next_mi_last_index_reg[2]),
        .R(1'b0));
  FDRE \next_mi_last_index_reg_reg[3] 
       (.C(out),
        .CE(load_mi_next),
        .D(mi_last_index_reg[3]),
        .Q(next_mi_last_index_reg[3]),
        .R(1'b0));
  FDRE \next_mi_last_index_reg_reg[4] 
       (.C(out),
        .CE(load_mi_next),
        .D(mi_last_index_reg[4]),
        .Q(next_mi_last_index_reg[4]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \next_mi_len[7]_i_1 
       (.I0(mi_state[2]),
        .I1(mi_state[1]),
        .I2(\next_mi_len[7]_i_2_n_0 ),
        .O(load_mi_next));
  LUT5 #(
    .INIT(32'h00000008)) 
    \next_mi_len[7]_i_2 
       (.I0(mi_awvalid),
        .I1(mi_state[0]),
        .I2(M_AXI_WLAST_i_reg_0),
        .I3(mi_last),
        .I4(mi_last_d1_reg_n_0),
        .O(\next_mi_len[7]_i_2_n_0 ));
  FDRE \next_mi_len_reg[0] 
       (.C(out),
        .CE(load_mi_next),
        .D(D[0]),
        .Q(\next_mi_len_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \next_mi_len_reg[1] 
       (.C(out),
        .CE(load_mi_next),
        .D(D[1]),
        .Q(p_0_in_0[0]),
        .R(1'b0));
  FDRE \next_mi_len_reg[2] 
       (.C(out),
        .CE(load_mi_next),
        .D(D[2]),
        .Q(p_0_in_0[1]),
        .R(1'b0));
  FDRE \next_mi_len_reg[3] 
       (.C(out),
        .CE(load_mi_next),
        .D(D[3]),
        .Q(p_0_in_0[2]),
        .R(1'b0));
  FDRE \next_mi_len_reg[4] 
       (.C(out),
        .CE(load_mi_next),
        .D(D[4]),
        .Q(\next_mi_len_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \next_mi_len_reg[5] 
       (.C(out),
        .CE(load_mi_next),
        .D(D[5]),
        .Q(\next_mi_len_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \next_mi_len_reg[6] 
       (.C(out),
        .CE(load_mi_next),
        .D(D[6]),
        .Q(\next_mi_len_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \next_mi_len_reg[7] 
       (.C(out),
        .CE(load_mi_next),
        .D(D[7]),
        .Q(\next_mi_len_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \next_mi_size_reg[0] 
       (.C(out),
        .CE(load_mi_next),
        .D(\goreg_dm.dout_i_reg[25] [0]),
        .Q(\next_mi_size_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \next_mi_size_reg[1] 
       (.C(out),
        .CE(load_mi_next),
        .D(\goreg_dm.dout_i_reg[25] [1]),
        .Q(\next_mi_size_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \next_mi_size_reg[2] 
       (.C(out),
        .CE(load_mi_next),
        .D(\goreg_dm.dout_i_reg[25] [2]),
        .Q(\next_mi_size_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hE000E0E0)) 
    next_valid_i_1
       (.I0(load_mi_next),
        .I1(next_valid),
        .I2(\aresetn_d_reg[1]_0 ),
        .I3(M_AXI_WLAST_i_i_2_n_0),
        .I4(mi_last),
        .O(next_valid_i_1_n_0));
  FDRE next_valid_reg
       (.C(out),
        .CE(1'b1),
        .D(next_valid_i_1_n_0),
        .Q(next_valid),
        .R(1'b0));
  design_1_auto_us_df_1_axi_register_slice_v2_1_21_axi_register_slice s_aw_reg
       (.D({s_aw_reg_n_4,s_aw_reg_n_5,s_aw_reg_n_6,s_aw_reg_n_7,s_aw_reg_n_8,s_aw_reg_n_9,s_aw_reg_n_10,s_aw_reg_n_11,s_aw_reg_n_12,s_aw_reg_n_13,s_aw_reg_n_14,s_aw_reg_n_15,s_aw_reg_n_16,s_aw_reg_n_17,s_aw_reg_n_18,s_aw_reg_n_19}),
        .E(s_aw_reg_n_30),
        .\FSM_sequential_si_state_reg[0] (s_aw_reg_n_36),
        .\FSM_sequential_si_state_reg[0]_0 (\FSM_sequential_si_state_reg[0]_0 ),
        .\FSM_sequential_si_state_reg[1] (\FSM_sequential_si_state_reg[1]_0 ),
        .\FSM_sequential_si_state_reg[1]_0 (load_si_ptr),
        .Q({si_buf_addr[6:1],Q}),
        .SR(s_axi_aresetn),
        .S_AXI_WREADY_i_reg(s_aw_reg_n_2),
        .S_AXI_WREADY_i_reg_0(s_aw_reg_n_26),
        .S_AXI_WREADY_i_reg_1(s_aw_reg_n_33),
        .\aresetn_d_reg[1] (\aresetn_d_reg[1] ),
        .\aresetn_d_reg[1]_0 (\aresetn_d_reg[1]_1 ),
        .\aresetn_d_reg[1]_1 (\aresetn_d_reg[1]_0 ),
        .aw_pop(aw_pop),
        .buf_cnt(buf_cnt),
        .\buf_cnt_reg[1] (s_aw_reg_n_41),
        .\buf_cnt_reg[1]_0 (s_aw_reg_n_42),
        .cmd_push_block0(cmd_push_block0),
        .\m_payload_i_reg[35] (\m_payload_i_reg[35] ),
        .\m_payload_i_reg[61] ({\m_payload_i_reg[61] [46:31],\m_payload_i_reg[61] [29:0]}),
        .\m_payload_i_reg[66] ({si_last_index_reg,s_awregion_reg,s_awqos_reg,s_awlock_reg,s_awlen_reg,s_awcache_reg,s_awburst_reg,s_awsize_reg[1],s_awprot_reg,s_awaddr_reg}),
        .\m_payload_i_reg[66]_0 (\m_payload_i_reg[66] ),
        .m_valid_i_reg_inv(s_axi_awready),
        .m_valid_i_reg_inv_0(m_valid_i_reg_inv),
        .out(out),
        .p_176_in(p_176_in),
        .s_axi_awready(aw_ready),
        .s_axi_awsize({s_awsize_reg[2],s_awsize_reg[0]}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wlast_0(s_aw_reg_n_39),
        .s_axi_wlast_1(s_aw_reg_n_40),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wvalid_0(s_aw_reg_n_31),
        .s_ready_i_reg(\USE_WRITE.m_axi_awready_i ),
        .s_ready_i_reg_0(s_ready_i_reg),
        .\si_be_reg[0] (\si_be_reg[0]_0 ),
        .\si_be_reg[0]_0 (\si_be[0]_i_3_n_0 ),
        .\si_be_reg[0]_1 (si_burst),
        .\si_be_reg[10] (\si_be_reg[10]_0 ),
        .\si_be_reg[10]_0 (\si_be[10]_i_3_n_0 ),
        .\si_be_reg[11] (\si_be_reg[11]_0 ),
        .\si_be_reg[11]_0 (\si_be[11]_i_3_n_0 ),
        .\si_be_reg[12] (\si_be_reg[12]_0 ),
        .\si_be_reg[12]_0 (\si_be[12]_i_3_n_0 ),
        .\si_be_reg[13] (\si_be_reg[13]_0 ),
        .\si_be_reg[13]_0 (\si_be[13]_i_3_n_0 ),
        .\si_be_reg[14] (\si_be_reg[14]_0 ),
        .\si_be_reg[14]_0 (\si_be[14]_i_3_n_0 ),
        .\si_be_reg[15] (s_aw_reg_n_37),
        .\si_be_reg[15]_0 (\si_size_reg_n_0_[2] ),
        .\si_be_reg[15]_1 (\si_be[15]_i_4_n_0 ),
        .\si_be_reg[15]_2 (\si_be_reg[15]_0 ),
        .\si_be_reg[15]_3 (\si_be_reg[15]_1 ),
        .\si_be_reg[1] (\si_be_reg[1]_0 ),
        .\si_be_reg[1]_0 (\si_be[1]_i_3_n_0 ),
        .\si_be_reg[2] (\si_be_reg[2]_0 ),
        .\si_be_reg[2]_0 (\si_be[2]_i_3_n_0 ),
        .\si_be_reg[3] (\si_be_reg[3]_0 ),
        .\si_be_reg[3]_0 (\si_be[3]_i_3_n_0 ),
        .\si_be_reg[4] (\si_be_reg[4]_0 ),
        .\si_be_reg[4]_0 (\si_be[4]_i_3_n_0 ),
        .\si_be_reg[5] (\si_be_reg[5]_0 ),
        .\si_be_reg[5]_0 (\si_be[5]_i_3_n_0 ),
        .\si_be_reg[6] (\si_be_reg[6]_0 ),
        .\si_be_reg[6]_0 (\si_be[6]_i_3_n_0 ),
        .\si_be_reg[7] (\si_be_reg[7]_0 ),
        .\si_be_reg[7]_0 (\si_be[7]_i_3_n_0 ),
        .\si_be_reg[8] (\si_be_reg[8]_0 ),
        .\si_be_reg[8]_0 (\si_be[8]_i_3_n_0 ),
        .\si_be_reg[9] (\si_be_reg[9]_0 ),
        .\si_be_reg[9]_0 (\si_be[9]_i_3_n_0 ),
        .\si_buf_reg[1] (S_AXI_WREADY_i_reg_0),
        .\si_ptr_reg[0] (\si_be[15]_i_3_n_0 ),
        .\si_ptr_reg[0]_0 (p_1_in),
        .\si_ptr_reg[1] (\si_ptr_reg[1]_0 ),
        .\si_ptr_reg[2] (\si_ptr_reg[2]_0 ),
        .\si_ptr_reg[5] ({s_aw_reg_n_20,s_aw_reg_n_21,s_aw_reg_n_22,s_aw_reg_n_23,s_aw_reg_n_24,s_aw_reg_n_25}),
        .\si_ptr_reg[6] (\si_ptr[6]_i_4_n_0 ),
        .si_state(si_state),
        .\si_wrap_cnt_reg[1] (\si_wrap_cnt_reg[1]_0 ),
        .\si_wrap_cnt_reg[2] (\si_wrap_cnt_reg[2]_0 ),
        .\si_wrap_cnt_reg[3] (p_0_in),
        .\si_wrap_cnt_reg[3]_0 ({si_wrap_cnt_reg,\si_wrap_cnt_reg[0]_0 }),
        .\si_wrap_cnt_reg[3]_1 (\si_wrap_cnt_reg[3]_0 ),
        .si_wrap_word_next(si_wrap_word_next),
        .word(word));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \si_be[0]_i_3 
       (.I0(si_wrap_be_next[0]),
        .I1(\si_be[15]_i_3_n_0 ),
        .I2(\si_be_reg_n_0_[8] ),
        .I3(\si_be[14]_i_4_n_0 ),
        .I4(\si_size_reg_n_0_[2] ),
        .I5(\si_be[0]_i_4_n_0 ),
        .O(\si_be[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0ACF0AC0)) 
    \si_be[0]_i_4 
       (.I0(\si_be_reg_n_0_[14] ),
        .I1(\si_be_reg_n_0_[12] ),
        .I2(\si_size_reg_n_0_[1] ),
        .I3(\si_size_reg_n_0_[0] ),
        .I4(p_1_in),
        .O(\si_be[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \si_be[10]_i_3 
       (.I0(si_wrap_be_next[10]),
        .I1(\si_be[15]_i_3_n_0 ),
        .I2(\si_be_reg_n_0_[6] ),
        .I3(\si_be[10]_i_4_n_0 ),
        .I4(\si_size_reg_n_0_[2] ),
        .I5(\si_be[10]_i_5_n_0 ),
        .O(\si_be[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \si_be[10]_i_4 
       (.I0(\si_size_reg_n_0_[0] ),
        .I1(\si_size_reg_n_0_[1] ),
        .O(\si_be[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFA0C0A0C)) 
    \si_be[10]_i_5 
       (.I0(\si_be_reg_n_0_[8] ),
        .I1(\si_be_reg_n_0_[9] ),
        .I2(\si_size_reg_n_0_[1] ),
        .I3(\si_size_reg_n_0_[0] ),
        .I4(\si_be_reg_n_0_[2] ),
        .O(\si_be[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \si_be[11]_i_3 
       (.I0(si_wrap_be_next[11]),
        .I1(\si_be[15]_i_3_n_0 ),
        .I2(\si_be_reg_n_0_[3] ),
        .I3(\si_be[14]_i_4_n_0 ),
        .I4(\si_size_reg_n_0_[2] ),
        .I5(\si_be[11]_i_5_n_0 ),
        .O(\si_be[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \si_be[11]_i_5 
       (.I0(\si_be_reg_n_0_[10] ),
        .I1(\si_be_reg_n_0_[9] ),
        .I2(\si_size_reg_n_0_[0] ),
        .I3(\si_size_reg_n_0_[1] ),
        .I4(\si_be_reg_n_0_[7] ),
        .O(\si_be[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \si_be[12]_i_3 
       (.I0(si_wrap_be_next[12]),
        .I1(\si_be[15]_i_3_n_0 ),
        .I2(\si_be_reg_n_0_[11] ),
        .I3(\si_be[12]_i_4_n_0 ),
        .I4(\si_size_reg_n_0_[2] ),
        .I5(\si_be[12]_i_5_n_0 ),
        .O(\si_be[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \si_be[12]_i_4 
       (.I0(\si_size_reg_n_0_[0] ),
        .I1(\si_size_reg_n_0_[1] ),
        .O(\si_be[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFAC00AC0)) 
    \si_be[12]_i_5 
       (.I0(\si_be_reg_n_0_[8] ),
        .I1(\si_be_reg_n_0_[10] ),
        .I2(\si_size_reg_n_0_[0] ),
        .I3(\si_size_reg_n_0_[1] ),
        .I4(\si_be_reg_n_0_[4] ),
        .O(\si_be[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \si_be[13]_i_3 
       (.I0(si_wrap_be_next[13]),
        .I1(\si_be[15]_i_3_n_0 ),
        .I2(\si_be_reg_n_0_[11] ),
        .I3(\si_be[13]_i_5_n_0 ),
        .I4(\si_size_reg_n_0_[2] ),
        .I5(\si_be[13]_i_6_n_0 ),
        .O(\si_be[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \si_be[13]_i_5 
       (.I0(\si_size_reg_n_0_[1] ),
        .I1(\si_size_reg_n_0_[0] ),
        .O(\si_be[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \si_be[13]_i_6 
       (.I0(\si_be_reg_n_0_[5] ),
        .I1(\si_be_reg_n_0_[9] ),
        .I2(\si_size_reg_n_0_[1] ),
        .I3(\si_size_reg_n_0_[0] ),
        .I4(\si_be_reg_n_0_[12] ),
        .O(\si_be[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \si_be[14]_i_3 
       (.I0(si_wrap_be_next[14]),
        .I1(\si_be[15]_i_3_n_0 ),
        .I2(\si_be_reg_n_0_[6] ),
        .I3(\si_be[14]_i_4_n_0 ),
        .I4(\si_size_reg_n_0_[2] ),
        .I5(\si_be[14]_i_5_n_0 ),
        .O(\si_be[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \si_be[14]_i_4 
       (.I0(\si_size_reg_n_0_[0] ),
        .I1(\si_size_reg_n_0_[1] ),
        .O(\si_be[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \si_be[14]_i_5 
       (.I0(\si_be_reg_n_0_[12] ),
        .I1(\si_be_reg_n_0_[13] ),
        .I2(\si_size_reg_n_0_[0] ),
        .I3(\si_size_reg_n_0_[1] ),
        .I4(\si_be_reg_n_0_[10] ),
        .O(\si_be[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \si_be[15]_i_3 
       (.I0(si_wrap_cnt_reg[3]),
        .I1(\si_wrap_cnt_reg[0]_0 ),
        .I2(si_wrap_cnt_reg[1]),
        .I3(si_wrap_cnt_reg[2]),
        .I4(si_burst[1]),
        .I5(si_burst[0]),
        .O(\si_be[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \si_be[15]_i_4 
       (.I0(\si_be_reg_n_0_[11] ),
        .I1(\si_be_reg_n_0_[14] ),
        .I2(\si_be_reg_n_0_[7] ),
        .I3(\si_size_reg_n_0_[1] ),
        .I4(\si_size_reg_n_0_[0] ),
        .I5(\si_be_reg_n_0_[13] ),
        .O(\si_be[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \si_be[1]_i_3 
       (.I0(si_wrap_be_next[1]),
        .I1(\si_be[15]_i_3_n_0 ),
        .I2(\si_be_reg_n_0_[9] ),
        .I3(\si_be[14]_i_4_n_0 ),
        .I4(\si_size_reg_n_0_[2] ),
        .I5(\si_be[1]_i_5_n_0 ),
        .O(\si_be[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \si_be[1]_i_5 
       (.I0(\si_be_reg_n_0_[13] ),
        .I1(\si_be_reg_n_0_[0] ),
        .I2(\si_size_reg_n_0_[1] ),
        .I3(\si_size_reg_n_0_[0] ),
        .I4(p_1_in),
        .O(\si_be[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \si_be[2]_i_3 
       (.I0(si_wrap_be_next[2]),
        .I1(\si_be[15]_i_3_n_0 ),
        .I2(\si_be_reg_n_0_[14] ),
        .I3(\si_be[10]_i_4_n_0 ),
        .I4(\si_size_reg_n_0_[2] ),
        .I5(\si_be[2]_i_4_n_0 ),
        .O(\si_be[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \si_be[2]_i_4 
       (.I0(\si_be_reg_n_0_[10] ),
        .I1(\si_be_reg_n_0_[0] ),
        .I2(\si_size_reg_n_0_[0] ),
        .I3(\si_size_reg_n_0_[1] ),
        .I4(\si_be_reg_n_0_[1] ),
        .O(\si_be[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \si_be[3]_i_3 
       (.I0(si_wrap_be_next[3]),
        .I1(\si_be[15]_i_3_n_0 ),
        .I2(\si_be_reg_n_0_[1] ),
        .I3(\si_be[13]_i_5_n_0 ),
        .I4(\si_size_reg_n_0_[2] ),
        .I5(\si_be[3]_i_5_n_0 ),
        .O(\si_be[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hA0FCA00C)) 
    \si_be[3]_i_5 
       (.I0(\si_be_reg_n_0_[11] ),
        .I1(\si_be_reg_n_0_[2] ),
        .I2(\si_size_reg_n_0_[1] ),
        .I3(\si_size_reg_n_0_[0] ),
        .I4(p_1_in),
        .O(\si_be[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \si_be[4]_i_3 
       (.I0(si_wrap_be_next[4]),
        .I1(\si_be[15]_i_3_n_0 ),
        .I2(\si_be_reg_n_0_[0] ),
        .I3(\si_be[10]_i_4_n_0 ),
        .I4(\si_size_reg_n_0_[2] ),
        .I5(\si_be[4]_i_4_n_0 ),
        .O(\si_be[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \si_be[4]_i_4 
       (.I0(\si_be_reg_n_0_[12] ),
        .I1(\si_be_reg_n_0_[2] ),
        .I2(\si_size_reg_n_0_[0] ),
        .I3(\si_size_reg_n_0_[1] ),
        .I4(\si_be_reg_n_0_[3] ),
        .O(\si_be[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \si_be[5]_i_3 
       (.I0(si_wrap_be_next[5]),
        .I1(\si_be[15]_i_3_n_0 ),
        .I2(\si_be_reg_n_0_[3] ),
        .I3(\si_be[13]_i_5_n_0 ),
        .I4(\si_size_reg_n_0_[2] ),
        .I5(\si_be[5]_i_5_n_0 ),
        .O(\si_be[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hC0FAC00A)) 
    \si_be[5]_i_5 
       (.I0(\si_be_reg_n_0_[4] ),
        .I1(\si_be_reg_n_0_[13] ),
        .I2(\si_size_reg_n_0_[1] ),
        .I3(\si_size_reg_n_0_[0] ),
        .I4(\si_be_reg_n_0_[1] ),
        .O(\si_be[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \si_be[6]_i_3 
       (.I0(si_wrap_be_next[6]),
        .I1(\si_be[15]_i_3_n_0 ),
        .I2(\si_be_reg_n_0_[14] ),
        .I3(\si_be[14]_i_4_n_0 ),
        .I4(\si_size_reg_n_0_[2] ),
        .I5(\si_be[6]_i_4_n_0 ),
        .O(\si_be[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0ACF0AC0)) 
    \si_be[6]_i_4 
       (.I0(\si_be_reg_n_0_[2] ),
        .I1(\si_be_reg_n_0_[4] ),
        .I2(\si_size_reg_n_0_[0] ),
        .I3(\si_size_reg_n_0_[1] ),
        .I4(\si_be_reg_n_0_[5] ),
        .O(\si_be[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \si_be[7]_i_3 
       (.I0(si_wrap_be_next[7]),
        .I1(\si_be[15]_i_3_n_0 ),
        .I2(\si_be_reg_n_0_[5] ),
        .I3(\si_be[13]_i_5_n_0 ),
        .I4(\si_size_reg_n_0_[2] ),
        .I5(\si_be[7]_i_5_n_0 ),
        .O(\si_be[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \si_be[7]_i_5 
       (.I0(\si_be_reg_n_0_[3] ),
        .I1(\si_be_reg_n_0_[6] ),
        .I2(\si_size_reg_n_0_[1] ),
        .I3(\si_size_reg_n_0_[0] ),
        .I4(p_1_in),
        .O(\si_be[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \si_be[8]_i_3 
       (.I0(si_wrap_be_next[8]),
        .I1(\si_be[15]_i_3_n_0 ),
        .I2(\si_be_reg_n_0_[0] ),
        .I3(\si_be[14]_i_4_n_0 ),
        .I4(\si_size_reg_n_0_[2] ),
        .I5(\si_be[8]_i_4_n_0 ),
        .O(\si_be[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \si_be[8]_i_4 
       (.I0(\si_be_reg_n_0_[4] ),
        .I1(\si_be_reg_n_0_[7] ),
        .I2(\si_size_reg_n_0_[1] ),
        .I3(\si_size_reg_n_0_[0] ),
        .I4(\si_be_reg_n_0_[6] ),
        .O(\si_be[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \si_be[9]_i_3 
       (.I0(si_wrap_be_next[9]),
        .I1(\si_be[15]_i_3_n_0 ),
        .I2(\si_be_reg_n_0_[5] ),
        .I3(\si_be[10]_i_4_n_0 ),
        .I4(\si_size_reg_n_0_[2] ),
        .I5(\si_be[9]_i_5_n_0 ),
        .O(\si_be[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0CFA0C0)) 
    \si_be[9]_i_5 
       (.I0(\si_be_reg_n_0_[1] ),
        .I1(\si_be_reg_n_0_[7] ),
        .I2(\si_size_reg_n_0_[0] ),
        .I3(\si_size_reg_n_0_[1] ),
        .I4(\si_be_reg_n_0_[8] ),
        .O(\si_be[9]_i_5_n_0 ));
  FDRE \si_be_reg[0] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_19),
        .Q(\si_be_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \si_be_reg[10] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_9),
        .Q(\si_be_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \si_be_reg[11] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_8),
        .Q(\si_be_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \si_be_reg[12] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_7),
        .Q(\si_be_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \si_be_reg[13] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_6),
        .Q(\si_be_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \si_be_reg[14] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_5),
        .Q(\si_be_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \si_be_reg[15] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_4),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \si_be_reg[1] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_18),
        .Q(\si_be_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \si_be_reg[2] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_17),
        .Q(\si_be_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \si_be_reg[3] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_16),
        .Q(\si_be_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \si_be_reg[4] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_15),
        .Q(\si_be_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \si_be_reg[5] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_14),
        .Q(\si_be_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \si_be_reg[6] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_13),
        .Q(\si_be_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \si_be_reg[7] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_12),
        .Q(\si_be_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \si_be_reg[8] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_11),
        .Q(\si_be_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \si_be_reg[9] 
       (.C(out),
        .CE(s_aw_reg_n_31),
        .D(s_aw_reg_n_10),
        .Q(\si_be_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \si_buf[0]_i_1 
       (.I0(si_buf_addr[7]),
        .O(\si_buf[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \si_buf[1]_i_1 
       (.I0(si_buf_addr[7]),
        .I1(si_buf_addr[8]),
        .O(\si_buf[1]_i_1_n_0 ));
  FDRE \si_buf_reg[0] 
       (.C(out),
        .CE(s_aw_reg_n_2),
        .D(\si_buf[0]_i_1_n_0 ),
        .Q(si_buf_addr[7]),
        .R(s_axi_aresetn));
  FDRE \si_buf_reg[1] 
       (.C(out),
        .CE(s_aw_reg_n_2),
        .D(\si_buf[1]_i_1_n_0 ),
        .Q(si_buf_addr[8]),
        .R(s_axi_aresetn));
  FDRE \si_burst_reg[0] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\m_payload_i_reg[61] [32]),
        .Q(si_burst[0]),
        .R(1'b0));
  FDRE \si_burst_reg[1] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\m_payload_i_reg[61] [33]),
        .Q(si_burst[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \si_ptr[6]_i_4 
       (.I0(si_buf_addr[3]),
        .I1(si_buf_addr[2]),
        .I2(Q),
        .I3(si_buf_addr[1]),
        .I4(si_buf_addr[4]),
        .O(\si_ptr[6]_i_4_n_0 ));
  FDRE \si_ptr_reg[0] 
       (.C(out),
        .CE(s_aw_reg_n_30),
        .D(\si_ptr_reg[0]_0 ),
        .Q(Q),
        .R(s_aw_reg_n_26));
  FDRE \si_ptr_reg[1] 
       (.C(out),
        .CE(s_aw_reg_n_30),
        .D(s_aw_reg_n_25),
        .Q(si_buf_addr[1]),
        .R(s_aw_reg_n_26));
  FDRE \si_ptr_reg[2] 
       (.C(out),
        .CE(s_aw_reg_n_30),
        .D(s_aw_reg_n_24),
        .Q(si_buf_addr[2]),
        .R(s_aw_reg_n_26));
  FDRE \si_ptr_reg[3] 
       (.C(out),
        .CE(s_aw_reg_n_30),
        .D(s_aw_reg_n_23),
        .Q(si_buf_addr[3]),
        .R(s_aw_reg_n_26));
  FDRE \si_ptr_reg[4] 
       (.C(out),
        .CE(s_aw_reg_n_30),
        .D(s_aw_reg_n_22),
        .Q(si_buf_addr[4]),
        .R(s_aw_reg_n_26));
  FDRE \si_ptr_reg[5] 
       (.C(out),
        .CE(s_aw_reg_n_30),
        .D(s_aw_reg_n_21),
        .Q(si_buf_addr[5]),
        .R(s_aw_reg_n_26));
  FDRE \si_ptr_reg[6] 
       (.C(out),
        .CE(s_aw_reg_n_30),
        .D(s_aw_reg_n_20),
        .Q(si_buf_addr[6]),
        .R(s_aw_reg_n_26));
  FDRE \si_size_reg[0] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\m_payload_i_reg[61] [29]),
        .Q(\si_size_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \si_size_reg[1] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\m_payload_i_reg[61] [30]),
        .Q(\si_size_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \si_size_reg[2] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\m_payload_i_reg[61] [31]),
        .Q(\si_size_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \si_word_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(s_aw_reg_n_37),
        .Q(word),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[0] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\si_wrap_be_next_reg[14]_0 [0]),
        .Q(si_wrap_be_next[0]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[10] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\si_wrap_be_next_reg[14]_0 [10]),
        .Q(si_wrap_be_next[10]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[11] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\si_wrap_be_next_reg[14]_0 [11]),
        .Q(si_wrap_be_next[11]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[12] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\si_wrap_be_next_reg[14]_0 [12]),
        .Q(si_wrap_be_next[12]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[13] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\si_wrap_be_next_reg[14]_0 [13]),
        .Q(si_wrap_be_next[13]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[14] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\si_wrap_be_next_reg[14]_0 [14]),
        .Q(si_wrap_be_next[14]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[1] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\si_wrap_be_next_reg[14]_0 [1]),
        .Q(si_wrap_be_next[1]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[2] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\si_wrap_be_next_reg[14]_0 [2]),
        .Q(si_wrap_be_next[2]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[3] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\si_wrap_be_next_reg[14]_0 [3]),
        .Q(si_wrap_be_next[3]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[4] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\si_wrap_be_next_reg[14]_0 [4]),
        .Q(si_wrap_be_next[4]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[5] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\si_wrap_be_next_reg[14]_0 [5]),
        .Q(si_wrap_be_next[5]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[6] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\si_wrap_be_next_reg[14]_0 [6]),
        .Q(si_wrap_be_next[6]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[7] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\si_wrap_be_next_reg[14]_0 [7]),
        .Q(si_wrap_be_next[7]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[8] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\si_wrap_be_next_reg[14]_0 [8]),
        .Q(si_wrap_be_next[8]),
        .R(1'b0));
  FDRE \si_wrap_be_next_reg[9] 
       (.C(out),
        .CE(load_si_ptr),
        .D(\si_wrap_be_next_reg[14]_0 [9]),
        .Q(si_wrap_be_next[9]),
        .R(1'b0));
  FDRE \si_wrap_cnt_reg[0] 
       (.C(out),
        .CE(s_aw_reg_n_33),
        .D(\si_wrap_cnt_reg[0]_1 ),
        .Q(\si_wrap_cnt_reg[0]_0 ),
        .R(1'b0));
  FDRE \si_wrap_cnt_reg[1] 
       (.C(out),
        .CE(s_aw_reg_n_33),
        .D(p_0_in[1]),
        .Q(si_wrap_cnt_reg[1]),
        .R(1'b0));
  FDRE \si_wrap_cnt_reg[2] 
       (.C(out),
        .CE(s_aw_reg_n_33),
        .D(p_0_in[2]),
        .Q(si_wrap_cnt_reg[2]),
        .R(1'b0));
  FDRE \si_wrap_cnt_reg[3] 
       (.C(out),
        .CE(s_aw_reg_n_33),
        .D(p_0_in[3]),
        .Q(si_wrap_cnt_reg[3]),
        .R(1'b0));
  FDRE \si_wrap_word_next_reg[0] 
       (.C(out),
        .CE(load_si_ptr),
        .D(f_si_wrap_word_return),
        .Q(si_wrap_word_next),
        .R(1'b0));
  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "" *) 
  (* C_COUNT_36K_BRAM = "" *) 
  (* C_CTRL_ECC_ALGO = "ECCHSIAO32-7" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "1" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "BlankString" *) 
  (* C_INIT_FILE_NAME = "BlankString" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "288" *) 
  (* C_READ_WIDTH_B = "288" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "GENERATE_X_ONLY" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "32" *) 
  (* C_WEB_WIDTH = "32" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "288" *) 
  (* C_WRITE_WIDTH_B = "288" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_auto_us_df_1_blk_mem_gen_v8_4_4 w_buffer
       (.addra({si_buf_addr,Q}),
        .addrb(mi_buf_addr),
        .clka(1'b0),
        .clkb(out),
        .dbiterr(NLW_w_buffer_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({dina,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_w_buffer_douta_UNCONNECTED[287:0]),
        .doutb({mi_wpayload[287],m_axi_wdata[255:248],mi_wpayload[278],m_axi_wdata[247:240],mi_wpayload[269],m_axi_wdata[239:232],mi_wpayload[260],m_axi_wdata[231:224],mi_wpayload[251],m_axi_wdata[223:216],mi_wpayload[242],m_axi_wdata[215:208],mi_wpayload[233],m_axi_wdata[207:200],mi_wpayload[224],m_axi_wdata[199:192],mi_wpayload[215],m_axi_wdata[191:184],mi_wpayload[206],m_axi_wdata[183:176],mi_wpayload[197],m_axi_wdata[175:168],mi_wpayload[188],m_axi_wdata[167:160],mi_wpayload[179],m_axi_wdata[159:152],mi_wpayload[170],m_axi_wdata[151:144],mi_wpayload[161],m_axi_wdata[143:136],mi_wpayload[152],m_axi_wdata[135:128],mi_wpayload[143],m_axi_wdata[127:120],mi_wpayload[134],m_axi_wdata[119:112],mi_wpayload[125],m_axi_wdata[111:104],mi_wpayload[116],m_axi_wdata[103:96],mi_wpayload[107],m_axi_wdata[95:88],mi_wpayload[98],m_axi_wdata[87:80],mi_wpayload[89],m_axi_wdata[79:72],mi_wpayload[80],m_axi_wdata[71:64],mi_wpayload[71],m_axi_wdata[63:56],mi_wpayload[62],m_axi_wdata[55:48],mi_wpayload[53],m_axi_wdata[47:40],mi_wpayload[44],m_axi_wdata[39:32],mi_wpayload[35],m_axi_wdata[31:24],mi_wpayload[26],m_axi_wdata[23:16],mi_wpayload[17],m_axi_wdata[15:8],mi_wpayload[8],m_axi_wdata[7:0]}),
        .eccpipece(1'b0),
        .ena(p_176_in),
        .enb(mi_buf_en),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_w_buffer_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_w_buffer_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_w_buffer_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_w_buffer_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_w_buffer_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_w_buffer_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_w_buffer_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_w_buffer_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_w_buffer_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_w_buffer_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_w_buffer_s_axi_rdata_UNCONNECTED[287:0]),
        .s_axi_rid(NLW_w_buffer_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_w_buffer_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_w_buffer_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_w_buffer_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_w_buffer_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_w_buffer_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_w_buffer_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(f_si_we_return),
        .web({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_1
       (.I0(s_axi_wvalid),
        .I1(S_AXI_WREADY_i_reg_0),
        .O(p_176_in));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_10
       (.I0(word),
        .I1(\si_be_reg_n_0_[7] ),
        .O(f_si_we_return[23]));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_11
       (.I0(word),
        .I1(\si_be_reg_n_0_[6] ),
        .O(f_si_we_return[22]));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_12
       (.I0(word),
        .I1(\si_be_reg_n_0_[5] ),
        .O(f_si_we_return[21]));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_13
       (.I0(word),
        .I1(\si_be_reg_n_0_[4] ),
        .O(f_si_we_return[20]));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_14
       (.I0(word),
        .I1(\si_be_reg_n_0_[3] ),
        .O(f_si_we_return[19]));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_15
       (.I0(word),
        .I1(\si_be_reg_n_0_[2] ),
        .O(f_si_we_return[18]));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_16
       (.I0(word),
        .I1(\si_be_reg_n_0_[1] ),
        .O(f_si_we_return[17]));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_17
       (.I0(word),
        .I1(\si_be_reg_n_0_[0] ),
        .O(f_si_we_return[16]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_18
       (.I0(p_1_in),
        .I1(word),
        .O(f_si_we_return[15]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_19
       (.I0(\si_be_reg_n_0_[14] ),
        .I1(word),
        .O(f_si_we_return[14]));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_2
       (.I0(p_1_in),
        .I1(word),
        .O(f_si_we_return[31]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_20
       (.I0(\si_be_reg_n_0_[13] ),
        .I1(word),
        .O(f_si_we_return[13]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_21
       (.I0(\si_be_reg_n_0_[12] ),
        .I1(word),
        .O(f_si_we_return[12]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_22
       (.I0(\si_be_reg_n_0_[11] ),
        .I1(word),
        .O(f_si_we_return[11]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_23
       (.I0(\si_be_reg_n_0_[10] ),
        .I1(word),
        .O(f_si_we_return[10]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_24
       (.I0(\si_be_reg_n_0_[9] ),
        .I1(word),
        .O(f_si_we_return[9]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_25
       (.I0(\si_be_reg_n_0_[8] ),
        .I1(word),
        .O(f_si_we_return[8]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_26
       (.I0(\si_be_reg_n_0_[7] ),
        .I1(word),
        .O(f_si_we_return[7]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_27
       (.I0(\si_be_reg_n_0_[6] ),
        .I1(word),
        .O(f_si_we_return[6]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_28
       (.I0(\si_be_reg_n_0_[5] ),
        .I1(word),
        .O(f_si_we_return[5]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_29
       (.I0(\si_be_reg_n_0_[4] ),
        .I1(word),
        .O(f_si_we_return[4]));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_3
       (.I0(word),
        .I1(\si_be_reg_n_0_[14] ),
        .O(f_si_we_return[30]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_30
       (.I0(\si_be_reg_n_0_[3] ),
        .I1(word),
        .O(f_si_we_return[3]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_31
       (.I0(\si_be_reg_n_0_[2] ),
        .I1(word),
        .O(f_si_we_return[2]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_32
       (.I0(\si_be_reg_n_0_[1] ),
        .I1(word),
        .O(f_si_we_return[1]));
  LUT2 #(
    .INIT(4'h2)) 
    w_buffer_i_33
       (.I0(\si_be_reg_n_0_[0] ),
        .I1(word),
        .O(f_si_we_return[0]));
  LUT4 #(
    .INIT(16'hFEEE)) 
    w_buffer_i_34
       (.I0(load_mi_d2),
        .I1(load_mi_d1),
        .I2(M_AXI_WVALID_i_reg_0),
        .I3(m_axi_wready),
        .O(mi_buf_en));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_4
       (.I0(word),
        .I1(\si_be_reg_n_0_[13] ),
        .O(f_si_we_return[29]));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_5
       (.I0(word),
        .I1(\si_be_reg_n_0_[12] ),
        .O(f_si_we_return[28]));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_6
       (.I0(word),
        .I1(\si_be_reg_n_0_[11] ),
        .O(f_si_we_return[27]));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_7
       (.I0(word),
        .I1(\si_be_reg_n_0_[10] ),
        .O(f_si_we_return[26]));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_8
       (.I0(word),
        .I1(\si_be_reg_n_0_[9] ),
        .O(f_si_we_return[25]));
  LUT2 #(
    .INIT(4'h8)) 
    w_buffer_i_9
       (.I0(word),
        .I1(\si_be_reg_n_0_[8] ),
        .O(f_si_we_return[24]));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_axi_register_slice" *) 
module design_1_auto_us_df_1_axi_register_slice_v2_1_21_axi_register_slice
   (\aresetn_d_reg[1] ,
    SR,
    S_AXI_WREADY_i_reg,
    \FSM_sequential_si_state_reg[1] ,
    D,
    \si_ptr_reg[5] ,
    S_AXI_WREADY_i_reg_0,
    \si_wrap_cnt_reg[3] ,
    E,
    s_axi_wvalid_0,
    \FSM_sequential_si_state_reg[1]_0 ,
    S_AXI_WREADY_i_reg_1,
    cmd_push_block0,
    s_ready_i_reg,
    \FSM_sequential_si_state_reg[0] ,
    \si_be_reg[15] ,
    s_ready_i_reg_0,
    s_axi_wlast_0,
    s_axi_wlast_1,
    \buf_cnt_reg[1] ,
    \buf_cnt_reg[1]_0 ,
    \m_payload_i_reg[66] ,
    s_axi_awsize,
    \aresetn_d_reg[1]_0 ,
    out,
    \si_buf_reg[1] ,
    s_axi_wvalid,
    s_axi_wlast,
    si_state,
    p_176_in,
    \FSM_sequential_si_state_reg[0]_0 ,
    si_wrap_word_next,
    \si_ptr_reg[0] ,
    word,
    \m_payload_i_reg[61] ,
    \si_be_reg[0] ,
    \si_be_reg[0]_0 ,
    \si_be_reg[1] ,
    \si_be_reg[1]_0 ,
    \si_be_reg[2] ,
    \si_be_reg[2]_0 ,
    \si_be_reg[3] ,
    \si_be_reg[3]_0 ,
    \si_be_reg[4] ,
    \si_be_reg[4]_0 ,
    \si_be_reg[5] ,
    \si_be_reg[5]_0 ,
    \si_be_reg[6] ,
    \si_be_reg[6]_0 ,
    \si_be_reg[7] ,
    \si_be_reg[7]_0 ,
    \si_be_reg[8] ,
    \si_be_reg[8]_0 ,
    \si_be_reg[9] ,
    \si_be_reg[9]_0 ,
    \si_be_reg[10] ,
    \si_be_reg[10]_0 ,
    \si_be_reg[11] ,
    \si_be_reg[11]_0 ,
    \si_be_reg[12] ,
    \si_be_reg[12]_0 ,
    \si_be_reg[13] ,
    \si_be_reg[13]_0 ,
    \si_be_reg[14] ,
    \si_be_reg[14]_0 ,
    \si_be_reg[15]_0 ,
    \si_be_reg[15]_1 ,
    \si_be_reg[15]_2 ,
    \si_be_reg[15]_3 ,
    Q,
    \si_ptr_reg[1] ,
    \si_ptr_reg[2] ,
    \si_ptr_reg[6] ,
    \si_wrap_cnt_reg[3]_0 ,
    \si_wrap_cnt_reg[1] ,
    \si_wrap_cnt_reg[2] ,
    \si_wrap_cnt_reg[3]_1 ,
    \si_be_reg[0]_1 ,
    \si_ptr_reg[0]_0 ,
    buf_cnt,
    s_axi_awready,
    \aresetn_d_reg[1]_1 ,
    m_valid_i_reg_inv,
    m_valid_i_reg_inv_0,
    s_axi_awvalid,
    aw_pop,
    \m_payload_i_reg[66]_0 ,
    \m_payload_i_reg[35] );
  output \aresetn_d_reg[1] ;
  output [0:0]SR;
  output S_AXI_WREADY_i_reg;
  output \FSM_sequential_si_state_reg[1] ;
  output [15:0]D;
  output [5:0]\si_ptr_reg[5] ;
  output [0:0]S_AXI_WREADY_i_reg_0;
  output [2:0]\si_wrap_cnt_reg[3] ;
  output [0:0]E;
  output [0:0]s_axi_wvalid_0;
  output [0:0]\FSM_sequential_si_state_reg[1]_0 ;
  output [0:0]S_AXI_WREADY_i_reg_1;
  output cmd_push_block0;
  output s_ready_i_reg;
  output \FSM_sequential_si_state_reg[0] ;
  output \si_be_reg[15] ;
  output s_ready_i_reg_0;
  output s_axi_wlast_0;
  output s_axi_wlast_1;
  output \buf_cnt_reg[1] ;
  output \buf_cnt_reg[1]_0 ;
  output [63:0]\m_payload_i_reg[66] ;
  output [1:0]s_axi_awsize;
  input \aresetn_d_reg[1]_0 ;
  input out;
  input \si_buf_reg[1] ;
  input s_axi_wvalid;
  input s_axi_wlast;
  input [1:0]si_state;
  input p_176_in;
  input \FSM_sequential_si_state_reg[0]_0 ;
  input si_wrap_word_next;
  input \si_ptr_reg[0] ;
  input word;
  input [45:0]\m_payload_i_reg[61] ;
  input \si_be_reg[0] ;
  input \si_be_reg[0]_0 ;
  input \si_be_reg[1] ;
  input \si_be_reg[1]_0 ;
  input \si_be_reg[2] ;
  input \si_be_reg[2]_0 ;
  input \si_be_reg[3] ;
  input \si_be_reg[3]_0 ;
  input \si_be_reg[4] ;
  input \si_be_reg[4]_0 ;
  input \si_be_reg[5] ;
  input \si_be_reg[5]_0 ;
  input \si_be_reg[6] ;
  input \si_be_reg[6]_0 ;
  input \si_be_reg[7] ;
  input \si_be_reg[7]_0 ;
  input \si_be_reg[8] ;
  input \si_be_reg[8]_0 ;
  input \si_be_reg[9] ;
  input \si_be_reg[9]_0 ;
  input \si_be_reg[10] ;
  input \si_be_reg[10]_0 ;
  input \si_be_reg[11] ;
  input \si_be_reg[11]_0 ;
  input \si_be_reg[12] ;
  input \si_be_reg[12]_0 ;
  input \si_be_reg[13] ;
  input \si_be_reg[13]_0 ;
  input \si_be_reg[14] ;
  input \si_be_reg[14]_0 ;
  input \si_be_reg[15]_0 ;
  input \si_be_reg[15]_1 ;
  input \si_be_reg[15]_2 ;
  input \si_be_reg[15]_3 ;
  input [6:0]Q;
  input \si_ptr_reg[1] ;
  input \si_ptr_reg[2] ;
  input \si_ptr_reg[6] ;
  input [3:0]\si_wrap_cnt_reg[3]_0 ;
  input \si_wrap_cnt_reg[1] ;
  input \si_wrap_cnt_reg[2] ;
  input \si_wrap_cnt_reg[3]_1 ;
  input [1:0]\si_be_reg[0]_1 ;
  input [0:0]\si_ptr_reg[0]_0 ;
  input [1:0]buf_cnt;
  input s_axi_awready;
  input \aresetn_d_reg[1]_1 ;
  input m_valid_i_reg_inv;
  input m_valid_i_reg_inv_0;
  input s_axi_awvalid;
  input aw_pop;
  input [23:0]\m_payload_i_reg[66]_0 ;
  input \m_payload_i_reg[35] ;

  wire [15:0]D;
  wire [0:0]E;
  wire \FSM_sequential_si_state_reg[0] ;
  wire \FSM_sequential_si_state_reg[0]_0 ;
  wire \FSM_sequential_si_state_reg[1] ;
  wire [0:0]\FSM_sequential_si_state_reg[1]_0 ;
  wire [6:0]Q;
  wire [0:0]SR;
  wire S_AXI_WREADY_i_reg;
  wire [0:0]S_AXI_WREADY_i_reg_0;
  wire [0:0]S_AXI_WREADY_i_reg_1;
  wire \aresetn_d_reg[1] ;
  wire \aresetn_d_reg[1]_0 ;
  wire \aresetn_d_reg[1]_1 ;
  wire aw_pop;
  wire [1:0]buf_cnt;
  wire \buf_cnt_reg[1] ;
  wire \buf_cnt_reg[1]_0 ;
  wire cmd_push_block0;
  wire \m_payload_i_reg[35] ;
  wire [45:0]\m_payload_i_reg[61] ;
  wire [63:0]\m_payload_i_reg[66] ;
  wire [23:0]\m_payload_i_reg[66]_0 ;
  wire m_valid_i_reg_inv;
  wire m_valid_i_reg_inv_0;
  wire out;
  wire p_176_in;
  wire s_axi_awready;
  wire [1:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wlast;
  wire s_axi_wlast_0;
  wire s_axi_wlast_1;
  wire s_axi_wvalid;
  wire [0:0]s_axi_wvalid_0;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire \si_be_reg[0] ;
  wire \si_be_reg[0]_0 ;
  wire [1:0]\si_be_reg[0]_1 ;
  wire \si_be_reg[10] ;
  wire \si_be_reg[10]_0 ;
  wire \si_be_reg[11] ;
  wire \si_be_reg[11]_0 ;
  wire \si_be_reg[12] ;
  wire \si_be_reg[12]_0 ;
  wire \si_be_reg[13] ;
  wire \si_be_reg[13]_0 ;
  wire \si_be_reg[14] ;
  wire \si_be_reg[14]_0 ;
  wire \si_be_reg[15] ;
  wire \si_be_reg[15]_0 ;
  wire \si_be_reg[15]_1 ;
  wire \si_be_reg[15]_2 ;
  wire \si_be_reg[15]_3 ;
  wire \si_be_reg[1] ;
  wire \si_be_reg[1]_0 ;
  wire \si_be_reg[2] ;
  wire \si_be_reg[2]_0 ;
  wire \si_be_reg[3] ;
  wire \si_be_reg[3]_0 ;
  wire \si_be_reg[4] ;
  wire \si_be_reg[4]_0 ;
  wire \si_be_reg[5] ;
  wire \si_be_reg[5]_0 ;
  wire \si_be_reg[6] ;
  wire \si_be_reg[6]_0 ;
  wire \si_be_reg[7] ;
  wire \si_be_reg[7]_0 ;
  wire \si_be_reg[8] ;
  wire \si_be_reg[8]_0 ;
  wire \si_be_reg[9] ;
  wire \si_be_reg[9]_0 ;
  wire \si_buf_reg[1] ;
  wire \si_ptr_reg[0] ;
  wire [0:0]\si_ptr_reg[0]_0 ;
  wire \si_ptr_reg[1] ;
  wire \si_ptr_reg[2] ;
  wire [5:0]\si_ptr_reg[5] ;
  wire \si_ptr_reg[6] ;
  wire [1:0]si_state;
  wire \si_wrap_cnt_reg[1] ;
  wire \si_wrap_cnt_reg[2] ;
  wire [2:0]\si_wrap_cnt_reg[3] ;
  wire [3:0]\si_wrap_cnt_reg[3]_0 ;
  wire \si_wrap_cnt_reg[3]_1 ;
  wire si_wrap_word_next;
  wire word;

  design_1_auto_us_df_1_axi_register_slice_v2_1_21_axic_register_slice \aw.aw_pipe 
       (.D(D),
        .E(E),
        .\FSM_sequential_si_state_reg[0] (\FSM_sequential_si_state_reg[0] ),
        .\FSM_sequential_si_state_reg[0]_0 (\FSM_sequential_si_state_reg[0]_0 ),
        .\FSM_sequential_si_state_reg[1] (\FSM_sequential_si_state_reg[1] ),
        .\FSM_sequential_si_state_reg[1]_0 (\FSM_sequential_si_state_reg[1]_0 ),
        .Q(Q),
        .SR(SR),
        .S_AXI_WREADY_i_reg(S_AXI_WREADY_i_reg),
        .S_AXI_WREADY_i_reg_0(S_AXI_WREADY_i_reg_0),
        .S_AXI_WREADY_i_reg_1(S_AXI_WREADY_i_reg_1),
        .\aresetn_d_reg[1]_0 (\aresetn_d_reg[1] ),
        .\aresetn_d_reg[1]_1 (\aresetn_d_reg[1]_0 ),
        .\aresetn_d_reg[1]_2 (\aresetn_d_reg[1]_1 ),
        .aw_pop(aw_pop),
        .buf_cnt(buf_cnt),
        .\buf_cnt_reg[1] (\buf_cnt_reg[1] ),
        .\buf_cnt_reg[1]_0 (\buf_cnt_reg[1]_0 ),
        .cmd_push_block0(cmd_push_block0),
        .\m_payload_i_reg[35]_0 (\m_payload_i_reg[35] ),
        .\m_payload_i_reg[61]_0 (\m_payload_i_reg[61] ),
        .\m_payload_i_reg[66]_0 (\m_payload_i_reg[66] ),
        .\m_payload_i_reg[66]_1 (\m_payload_i_reg[66]_0 ),
        .m_valid_i_reg_inv_0(m_valid_i_reg_inv),
        .m_valid_i_reg_inv_1(m_valid_i_reg_inv_0),
        .out(out),
        .p_176_in(p_176_in),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wlast_0(s_axi_wlast_0),
        .s_axi_wlast_1(s_axi_wlast_1),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wvalid_0(s_axi_wvalid_0),
        .s_ready_i_reg_0(s_ready_i_reg),
        .s_ready_i_reg_1(s_ready_i_reg_0),
        .\si_be_reg[0] (\si_be_reg[0] ),
        .\si_be_reg[0]_0 (\si_be_reg[0]_0 ),
        .\si_be_reg[0]_1 (\si_be_reg[0]_1 ),
        .\si_be_reg[10] (\si_be_reg[10] ),
        .\si_be_reg[10]_0 (\si_be_reg[10]_0 ),
        .\si_be_reg[11] (\si_be_reg[11] ),
        .\si_be_reg[11]_0 (\si_be_reg[11]_0 ),
        .\si_be_reg[12] (\si_be_reg[12] ),
        .\si_be_reg[12]_0 (\si_be_reg[12]_0 ),
        .\si_be_reg[13] (\si_be_reg[13] ),
        .\si_be_reg[13]_0 (\si_be_reg[13]_0 ),
        .\si_be_reg[14] (\si_be_reg[14] ),
        .\si_be_reg[14]_0 (\si_be_reg[14]_0 ),
        .\si_be_reg[15] (\si_be_reg[15] ),
        .\si_be_reg[15]_0 (\si_be_reg[15]_0 ),
        .\si_be_reg[15]_1 (\si_be_reg[15]_1 ),
        .\si_be_reg[15]_2 (\si_be_reg[15]_2 ),
        .\si_be_reg[15]_3 (\si_be_reg[15]_3 ),
        .\si_be_reg[1] (\si_be_reg[1] ),
        .\si_be_reg[1]_0 (\si_be_reg[1]_0 ),
        .\si_be_reg[2] (\si_be_reg[2] ),
        .\si_be_reg[2]_0 (\si_be_reg[2]_0 ),
        .\si_be_reg[3] (\si_be_reg[3] ),
        .\si_be_reg[3]_0 (\si_be_reg[3]_0 ),
        .\si_be_reg[4] (\si_be_reg[4] ),
        .\si_be_reg[4]_0 (\si_be_reg[4]_0 ),
        .\si_be_reg[5] (\si_be_reg[5] ),
        .\si_be_reg[5]_0 (\si_be_reg[5]_0 ),
        .\si_be_reg[6] (\si_be_reg[6] ),
        .\si_be_reg[6]_0 (\si_be_reg[6]_0 ),
        .\si_be_reg[7] (\si_be_reg[7] ),
        .\si_be_reg[7]_0 (\si_be_reg[7]_0 ),
        .\si_be_reg[8] (\si_be_reg[8] ),
        .\si_be_reg[8]_0 (\si_be_reg[8]_0 ),
        .\si_be_reg[9] (\si_be_reg[9] ),
        .\si_be_reg[9]_0 (\si_be_reg[9]_0 ),
        .\si_buf_reg[1] (\si_buf_reg[1] ),
        .\si_ptr_reg[0] (\si_ptr_reg[0] ),
        .\si_ptr_reg[0]_0 (\si_ptr_reg[0]_0 ),
        .\si_ptr_reg[1] (\si_ptr_reg[1] ),
        .\si_ptr_reg[2] (\si_ptr_reg[2] ),
        .\si_ptr_reg[5] (\si_ptr_reg[5] ),
        .\si_ptr_reg[6] (\si_ptr_reg[6] ),
        .si_state(si_state),
        .\si_wrap_cnt_reg[1] (\si_wrap_cnt_reg[1] ),
        .\si_wrap_cnt_reg[2] (\si_wrap_cnt_reg[2] ),
        .\si_wrap_cnt_reg[3] (\si_wrap_cnt_reg[3] ),
        .\si_wrap_cnt_reg[3]_0 (\si_wrap_cnt_reg[3]_0 ),
        .\si_wrap_cnt_reg[3]_1 (\si_wrap_cnt_reg[3]_1 ),
        .si_wrap_word_next(si_wrap_word_next),
        .word(word));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_axi_register_slice" *) 
module design_1_auto_us_df_1_axi_register_slice_v2_1_21_axi_register_slice__parameterized0
   (\aresetn_d_reg[0] ,
    E,
    \m_payload_i_reg[39] ,
    Q,
    S,
    \m_payload_i_reg[41] ,
    \m_payload_i_reg[5] ,
    \si_wrap_cnt_reg[0] ,
    \m_payload_i_reg[6] ,
    DI,
    \m_payload_i_reg[3] ,
    \m_payload_i_reg[3]_0 ,
    \m_payload_i_reg[2] ,
    \m_payload_i_reg[2]_0 ,
    \m_payload_i_reg[2]_1 ,
    \m_payload_i_reg[0] ,
    \m_payload_i_reg[0]_0 ,
    \m_payload_i_reg[0]_1 ,
    \m_payload_i_reg[0]_2 ,
    \m_payload_i_reg[0]_3 ,
    \m_payload_i_reg[0]_4 ,
    \m_payload_i_reg[37] ,
    \m_payload_i_reg[35] ,
    \m_payload_i_reg[37]_0 ,
    \m_payload_i_reg[1] ,
    \m_payload_i_reg[1]_0 ,
    \m_payload_i_reg[3]_1 ,
    \m_payload_i_reg[2]_2 ,
    \m_payload_i_reg[36] ,
    \m_payload_i_reg[45] ,
    \m_payload_i_reg[46] ,
    \m_payload_i_reg[7] ,
    f_si_wrap_word_return,
    s_axi_awready,
    \aresetn_d_reg[0]_0 ,
    out,
    m_valid_i_reg_inv,
    CO,
    \si_ptr_reg[0] ,
    \si_wrap_cnt_reg[0]_0 ,
    \si_wrap_cnt_reg[0]_1 ,
    D,
    s_ready_i_reg,
    s_ready_i_reg_0,
    s_axi_awvalid);
  output \aresetn_d_reg[0] ;
  output [0:0]E;
  output [23:0]\m_payload_i_reg[39] ;
  output [50:0]Q;
  output [3:0]S;
  output \m_payload_i_reg[41] ;
  output [0:0]\m_payload_i_reg[5] ;
  output [0:0]\si_wrap_cnt_reg[0] ;
  output \m_payload_i_reg[6] ;
  output [3:0]DI;
  output \m_payload_i_reg[3] ;
  output \m_payload_i_reg[3]_0 ;
  output \m_payload_i_reg[2] ;
  output \m_payload_i_reg[2]_0 ;
  output \m_payload_i_reg[2]_1 ;
  output \m_payload_i_reg[0] ;
  output \m_payload_i_reg[0]_0 ;
  output \m_payload_i_reg[0]_1 ;
  output \m_payload_i_reg[0]_2 ;
  output \m_payload_i_reg[0]_3 ;
  output \m_payload_i_reg[0]_4 ;
  output \m_payload_i_reg[37] ;
  output \m_payload_i_reg[35] ;
  output [14:0]\m_payload_i_reg[37]_0 ;
  output \m_payload_i_reg[1] ;
  output \m_payload_i_reg[1]_0 ;
  output \m_payload_i_reg[3]_1 ;
  output \m_payload_i_reg[2]_2 ;
  output \m_payload_i_reg[36] ;
  output \m_payload_i_reg[45] ;
  output \m_payload_i_reg[46] ;
  output \m_payload_i_reg[7] ;
  output f_si_wrap_word_return;
  output s_axi_awready;
  input \aresetn_d_reg[0]_0 ;
  input out;
  input m_valid_i_reg_inv;
  input [0:0]CO;
  input [0:0]\si_ptr_reg[0] ;
  input \si_wrap_cnt_reg[0]_0 ;
  input [0:0]\si_wrap_cnt_reg[0]_1 ;
  input [64:0]D;
  input s_ready_i_reg;
  input s_ready_i_reg_0;
  input s_axi_awvalid;

  wire [0:0]CO;
  wire [64:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [50:0]Q;
  wire [3:0]S;
  wire \aresetn_d_reg[0] ;
  wire \aresetn_d_reg[0]_0 ;
  wire f_si_wrap_word_return;
  wire \m_payload_i_reg[0] ;
  wire \m_payload_i_reg[0]_0 ;
  wire \m_payload_i_reg[0]_1 ;
  wire \m_payload_i_reg[0]_2 ;
  wire \m_payload_i_reg[0]_3 ;
  wire \m_payload_i_reg[0]_4 ;
  wire \m_payload_i_reg[1] ;
  wire \m_payload_i_reg[1]_0 ;
  wire \m_payload_i_reg[2] ;
  wire \m_payload_i_reg[2]_0 ;
  wire \m_payload_i_reg[2]_1 ;
  wire \m_payload_i_reg[2]_2 ;
  wire \m_payload_i_reg[35] ;
  wire \m_payload_i_reg[36] ;
  wire \m_payload_i_reg[37] ;
  wire [14:0]\m_payload_i_reg[37]_0 ;
  wire [23:0]\m_payload_i_reg[39] ;
  wire \m_payload_i_reg[3] ;
  wire \m_payload_i_reg[3]_0 ;
  wire \m_payload_i_reg[3]_1 ;
  wire \m_payload_i_reg[41] ;
  wire \m_payload_i_reg[45] ;
  wire \m_payload_i_reg[46] ;
  wire [0:0]\m_payload_i_reg[5] ;
  wire \m_payload_i_reg[6] ;
  wire \m_payload_i_reg[7] ;
  wire m_valid_i_reg_inv;
  wire out;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire [0:0]\si_ptr_reg[0] ;
  wire [0:0]\si_wrap_cnt_reg[0] ;
  wire \si_wrap_cnt_reg[0]_0 ;
  wire [0:0]\si_wrap_cnt_reg[0]_1 ;

  design_1_auto_us_df_1_axi_register_slice_v2_1_21_axic_register_slice__parameterized4 \aw.aw_pipe 
       (.CO(CO),
        .D(D),
        .DI(DI),
        .E(E),
        .Q(Q),
        .S(S),
        .\aresetn_d_reg[0]_0 (\aresetn_d_reg[0] ),
        .\aresetn_d_reg[0]_1 (\aresetn_d_reg[0]_0 ),
        .f_si_wrap_word_return(f_si_wrap_word_return),
        .\m_payload_i_reg[0]_0 (\m_payload_i_reg[0] ),
        .\m_payload_i_reg[0]_1 (\m_payload_i_reg[0]_0 ),
        .\m_payload_i_reg[0]_2 (\m_payload_i_reg[0]_1 ),
        .\m_payload_i_reg[0]_3 (\m_payload_i_reg[0]_2 ),
        .\m_payload_i_reg[0]_4 (\m_payload_i_reg[0]_3 ),
        .\m_payload_i_reg[0]_5 (\m_payload_i_reg[0]_4 ),
        .\m_payload_i_reg[1]_0 (\m_payload_i_reg[1] ),
        .\m_payload_i_reg[1]_1 (\m_payload_i_reg[1]_0 ),
        .\m_payload_i_reg[2]_0 (\m_payload_i_reg[2] ),
        .\m_payload_i_reg[2]_1 (\m_payload_i_reg[2]_0 ),
        .\m_payload_i_reg[2]_2 (\m_payload_i_reg[2]_1 ),
        .\m_payload_i_reg[2]_3 (\m_payload_i_reg[2]_2 ),
        .\m_payload_i_reg[35]_0 (\m_payload_i_reg[35] ),
        .\m_payload_i_reg[36]_0 (\m_payload_i_reg[36] ),
        .\m_payload_i_reg[37]_0 (\m_payload_i_reg[37] ),
        .\m_payload_i_reg[37]_1 (\m_payload_i_reg[37]_0 ),
        .\m_payload_i_reg[39]_0 (\m_payload_i_reg[39] ),
        .\m_payload_i_reg[3]_0 (\m_payload_i_reg[3] ),
        .\m_payload_i_reg[3]_1 (\m_payload_i_reg[3]_0 ),
        .\m_payload_i_reg[3]_2 (\m_payload_i_reg[3]_1 ),
        .\m_payload_i_reg[41]_0 (\m_payload_i_reg[41] ),
        .\m_payload_i_reg[45]_0 (\m_payload_i_reg[45] ),
        .\m_payload_i_reg[46]_0 (\m_payload_i_reg[46] ),
        .\m_payload_i_reg[5]_0 (\m_payload_i_reg[5] ),
        .\m_payload_i_reg[6]_0 (\m_payload_i_reg[6] ),
        .\m_payload_i_reg[7]_0 (\m_payload_i_reg[7] ),
        .m_valid_i_reg_inv_0(m_valid_i_reg_inv),
        .out(out),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_ready_i_reg_0(s_ready_i_reg),
        .s_ready_i_reg_1(s_ready_i_reg_0),
        .\si_ptr_reg[0] (\si_ptr_reg[0] ),
        .\si_wrap_cnt_reg[0] (\si_wrap_cnt_reg[0] ),
        .\si_wrap_cnt_reg[0]_0 (\si_wrap_cnt_reg[0]_0 ),
        .\si_wrap_cnt_reg[0]_1 (\si_wrap_cnt_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_axic_register_slice" *) 
module design_1_auto_us_df_1_axi_register_slice_v2_1_21_axic_register_slice
   (\aresetn_d_reg[1]_0 ,
    SR,
    S_AXI_WREADY_i_reg,
    \FSM_sequential_si_state_reg[1] ,
    D,
    \si_ptr_reg[5] ,
    S_AXI_WREADY_i_reg_0,
    \si_wrap_cnt_reg[3] ,
    E,
    s_axi_wvalid_0,
    \FSM_sequential_si_state_reg[1]_0 ,
    S_AXI_WREADY_i_reg_1,
    cmd_push_block0,
    s_ready_i_reg_0,
    \FSM_sequential_si_state_reg[0] ,
    \si_be_reg[15] ,
    s_ready_i_reg_1,
    s_axi_wlast_0,
    s_axi_wlast_1,
    \buf_cnt_reg[1] ,
    \buf_cnt_reg[1]_0 ,
    \m_payload_i_reg[66]_0 ,
    s_axi_awsize,
    \aresetn_d_reg[1]_1 ,
    out,
    \si_buf_reg[1] ,
    s_axi_wvalid,
    s_axi_wlast,
    si_state,
    p_176_in,
    \FSM_sequential_si_state_reg[0]_0 ,
    si_wrap_word_next,
    \si_ptr_reg[0] ,
    word,
    \m_payload_i_reg[61]_0 ,
    \si_be_reg[0] ,
    \si_be_reg[0]_0 ,
    \si_be_reg[1] ,
    \si_be_reg[1]_0 ,
    \si_be_reg[2] ,
    \si_be_reg[2]_0 ,
    \si_be_reg[3] ,
    \si_be_reg[3]_0 ,
    \si_be_reg[4] ,
    \si_be_reg[4]_0 ,
    \si_be_reg[5] ,
    \si_be_reg[5]_0 ,
    \si_be_reg[6] ,
    \si_be_reg[6]_0 ,
    \si_be_reg[7] ,
    \si_be_reg[7]_0 ,
    \si_be_reg[8] ,
    \si_be_reg[8]_0 ,
    \si_be_reg[9] ,
    \si_be_reg[9]_0 ,
    \si_be_reg[10] ,
    \si_be_reg[10]_0 ,
    \si_be_reg[11] ,
    \si_be_reg[11]_0 ,
    \si_be_reg[12] ,
    \si_be_reg[12]_0 ,
    \si_be_reg[13] ,
    \si_be_reg[13]_0 ,
    \si_be_reg[14] ,
    \si_be_reg[14]_0 ,
    \si_be_reg[15]_0 ,
    \si_be_reg[15]_1 ,
    \si_be_reg[15]_2 ,
    \si_be_reg[15]_3 ,
    Q,
    \si_ptr_reg[1] ,
    \si_ptr_reg[2] ,
    \si_ptr_reg[6] ,
    \si_wrap_cnt_reg[3]_0 ,
    \si_wrap_cnt_reg[1] ,
    \si_wrap_cnt_reg[2] ,
    \si_wrap_cnt_reg[3]_1 ,
    \si_be_reg[0]_1 ,
    \si_ptr_reg[0]_0 ,
    buf_cnt,
    s_axi_awready,
    \aresetn_d_reg[1]_2 ,
    m_valid_i_reg_inv_0,
    m_valid_i_reg_inv_1,
    s_axi_awvalid,
    aw_pop,
    \m_payload_i_reg[66]_1 ,
    \m_payload_i_reg[35]_0 );
  output \aresetn_d_reg[1]_0 ;
  output [0:0]SR;
  output S_AXI_WREADY_i_reg;
  output \FSM_sequential_si_state_reg[1] ;
  output [15:0]D;
  output [5:0]\si_ptr_reg[5] ;
  output [0:0]S_AXI_WREADY_i_reg_0;
  output [2:0]\si_wrap_cnt_reg[3] ;
  output [0:0]E;
  output [0:0]s_axi_wvalid_0;
  output [0:0]\FSM_sequential_si_state_reg[1]_0 ;
  output [0:0]S_AXI_WREADY_i_reg_1;
  output cmd_push_block0;
  output s_ready_i_reg_0;
  output \FSM_sequential_si_state_reg[0] ;
  output \si_be_reg[15] ;
  output s_ready_i_reg_1;
  output s_axi_wlast_0;
  output s_axi_wlast_1;
  output \buf_cnt_reg[1] ;
  output \buf_cnt_reg[1]_0 ;
  output [63:0]\m_payload_i_reg[66]_0 ;
  output [1:0]s_axi_awsize;
  input \aresetn_d_reg[1]_1 ;
  input out;
  input \si_buf_reg[1] ;
  input s_axi_wvalid;
  input s_axi_wlast;
  input [1:0]si_state;
  input p_176_in;
  input \FSM_sequential_si_state_reg[0]_0 ;
  input si_wrap_word_next;
  input \si_ptr_reg[0] ;
  input word;
  input [45:0]\m_payload_i_reg[61]_0 ;
  input \si_be_reg[0] ;
  input \si_be_reg[0]_0 ;
  input \si_be_reg[1] ;
  input \si_be_reg[1]_0 ;
  input \si_be_reg[2] ;
  input \si_be_reg[2]_0 ;
  input \si_be_reg[3] ;
  input \si_be_reg[3]_0 ;
  input \si_be_reg[4] ;
  input \si_be_reg[4]_0 ;
  input \si_be_reg[5] ;
  input \si_be_reg[5]_0 ;
  input \si_be_reg[6] ;
  input \si_be_reg[6]_0 ;
  input \si_be_reg[7] ;
  input \si_be_reg[7]_0 ;
  input \si_be_reg[8] ;
  input \si_be_reg[8]_0 ;
  input \si_be_reg[9] ;
  input \si_be_reg[9]_0 ;
  input \si_be_reg[10] ;
  input \si_be_reg[10]_0 ;
  input \si_be_reg[11] ;
  input \si_be_reg[11]_0 ;
  input \si_be_reg[12] ;
  input \si_be_reg[12]_0 ;
  input \si_be_reg[13] ;
  input \si_be_reg[13]_0 ;
  input \si_be_reg[14] ;
  input \si_be_reg[14]_0 ;
  input \si_be_reg[15]_0 ;
  input \si_be_reg[15]_1 ;
  input \si_be_reg[15]_2 ;
  input \si_be_reg[15]_3 ;
  input [6:0]Q;
  input \si_ptr_reg[1] ;
  input \si_ptr_reg[2] ;
  input \si_ptr_reg[6] ;
  input [3:0]\si_wrap_cnt_reg[3]_0 ;
  input \si_wrap_cnt_reg[1] ;
  input \si_wrap_cnt_reg[2] ;
  input \si_wrap_cnt_reg[3]_1 ;
  input [1:0]\si_be_reg[0]_1 ;
  input [0:0]\si_ptr_reg[0]_0 ;
  input [1:0]buf_cnt;
  input s_axi_awready;
  input \aresetn_d_reg[1]_2 ;
  input m_valid_i_reg_inv_0;
  input m_valid_i_reg_inv_1;
  input s_axi_awvalid;
  input aw_pop;
  input [23:0]\m_payload_i_reg[66]_1 ;
  input \m_payload_i_reg[35]_0 ;

  wire [15:0]D;
  wire [0:0]E;
  wire \FSM_sequential_si_state_reg[0] ;
  wire \FSM_sequential_si_state_reg[0]_0 ;
  wire \FSM_sequential_si_state_reg[1] ;
  wire [0:0]\FSM_sequential_si_state_reg[1]_0 ;
  wire [6:0]Q;
  wire [0:0]SR;
  wire S_AXI_WREADY_i_reg;
  wire [0:0]S_AXI_WREADY_i_reg_0;
  wire [0:0]S_AXI_WREADY_i_reg_1;
  wire S_AXI_WREADY_ns;
  wire \aresetn_d_reg[1]_0 ;
  wire \aresetn_d_reg[1]_1 ;
  wire \aresetn_d_reg[1]_2 ;
  wire aw_pop;
  wire [1:0]buf_cnt;
  wire \buf_cnt_reg[1] ;
  wire \buf_cnt_reg[1]_0 ;
  wire cmd_push_block0;
  wire dw_fifogen_aw_i_3_n_0;
  wire \m_payload_i[35]_i_1_n_0 ;
  wire \m_payload_i[37]_i_1_n_0 ;
  wire \m_payload_i_reg[35]_0 ;
  wire [45:0]\m_payload_i_reg[61]_0 ;
  wire [63:0]\m_payload_i_reg[66]_0 ;
  wire [23:0]\m_payload_i_reg[66]_1 ;
  wire m_valid_i_inv_i_1__0_n_0;
  wire m_valid_i_reg_inv_0;
  wire m_valid_i_reg_inv_1;
  wire out;
  wire p_176_in;
  wire s_awvalid_reg;
  wire s_axi_awready;
  wire [1:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wlast;
  wire s_axi_wlast_0;
  wire s_axi_wlast_1;
  wire s_axi_wvalid;
  wire [0:0]s_axi_wvalid_0;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire \si_be_reg[0] ;
  wire \si_be_reg[0]_0 ;
  wire [1:0]\si_be_reg[0]_1 ;
  wire \si_be_reg[10] ;
  wire \si_be_reg[10]_0 ;
  wire \si_be_reg[11] ;
  wire \si_be_reg[11]_0 ;
  wire \si_be_reg[12] ;
  wire \si_be_reg[12]_0 ;
  wire \si_be_reg[13] ;
  wire \si_be_reg[13]_0 ;
  wire \si_be_reg[14] ;
  wire \si_be_reg[14]_0 ;
  wire \si_be_reg[15] ;
  wire \si_be_reg[15]_0 ;
  wire \si_be_reg[15]_1 ;
  wire \si_be_reg[15]_2 ;
  wire \si_be_reg[15]_3 ;
  wire \si_be_reg[1] ;
  wire \si_be_reg[1]_0 ;
  wire \si_be_reg[2] ;
  wire \si_be_reg[2]_0 ;
  wire \si_be_reg[3] ;
  wire \si_be_reg[3]_0 ;
  wire \si_be_reg[4] ;
  wire \si_be_reg[4]_0 ;
  wire \si_be_reg[5] ;
  wire \si_be_reg[5]_0 ;
  wire \si_be_reg[6] ;
  wire \si_be_reg[6]_0 ;
  wire \si_be_reg[7] ;
  wire \si_be_reg[7]_0 ;
  wire \si_be_reg[8] ;
  wire \si_be_reg[8]_0 ;
  wire \si_be_reg[9] ;
  wire \si_be_reg[9]_0 ;
  wire \si_buf_reg[1] ;
  wire \si_ptr_reg[0] ;
  wire [0:0]\si_ptr_reg[0]_0 ;
  wire \si_ptr_reg[1] ;
  wire \si_ptr_reg[2] ;
  wire [5:0]\si_ptr_reg[5] ;
  wire \si_ptr_reg[6] ;
  wire [1:0]si_state;
  wire \si_word[0]_i_2_n_0 ;
  wire \si_wrap_cnt_reg[1] ;
  wire \si_wrap_cnt_reg[2] ;
  wire [2:0]\si_wrap_cnt_reg[3] ;
  wire [3:0]\si_wrap_cnt_reg[3]_0 ;
  wire \si_wrap_cnt_reg[3]_1 ;
  wire si_wrap_word_next;
  wire word;

  LUT6 #(
    .INIT(64'hF070FFFFF070F07F)) 
    \FSM_sequential_si_state[0]_i_1 
       (.I0(p_176_in),
        .I1(s_axi_wlast),
        .I2(si_state[0]),
        .I3(si_state[1]),
        .I4(\FSM_sequential_si_state_reg[0]_0 ),
        .I5(dw_fifogen_aw_i_3_n_0),
        .O(s_axi_wlast_0));
  LUT5 #(
    .INIT(32'hF000FF80)) 
    \FSM_sequential_si_state[1]_i_1 
       (.I0(p_176_in),
        .I1(s_axi_wlast),
        .I2(si_state[0]),
        .I3(si_state[1]),
        .I4(dw_fifogen_aw_i_3_n_0),
        .O(s_axi_wlast_1));
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_WREADY_i_i_1
       (.I0(\aresetn_d_reg[1]_2 ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1F10)) 
    S_AXI_WREADY_i_i_2
       (.I0(si_state[0]),
        .I1(\FSM_sequential_si_state_reg[0]_0 ),
        .I2(S_AXI_WREADY_ns),
        .I3(\si_buf_reg[1] ),
        .O(\FSM_sequential_si_state_reg[0] ));
  LUT6 #(
    .INIT(64'h0F800F0F0080008F)) 
    S_AXI_WREADY_i_i_4
       (.I0(p_176_in),
        .I1(s_axi_wlast),
        .I2(si_state[0]),
        .I3(si_state[1]),
        .I4(\FSM_sequential_si_state_reg[0]_0 ),
        .I5(dw_fifogen_aw_i_3_n_0),
        .O(S_AXI_WREADY_ns));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\aresetn_d_reg[1]_1 ),
        .Q(\aresetn_d_reg[1]_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h9962)) 
    \buf_cnt[0]_i_1 
       (.I0(S_AXI_WREADY_i_reg),
        .I1(aw_pop),
        .I2(buf_cnt[1]),
        .I3(buf_cnt[0]),
        .O(\buf_cnt_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA68A)) 
    \buf_cnt[1]_i_1 
       (.I0(buf_cnt[1]),
        .I1(buf_cnt[0]),
        .I2(aw_pop),
        .I3(S_AXI_WREADY_i_reg),
        .O(\buf_cnt_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    cmd_push_block_i_1
       (.I0(s_ready_i_reg_0),
        .I1(\FSM_sequential_si_state_reg[0]_0 ),
        .O(cmd_push_block0));
  LUT6 #(
    .INIT(64'h00008000AAAA0000)) 
    dw_fifogen_aw_i_1
       (.I0(dw_fifogen_aw_i_3_n_0),
        .I1(\si_buf_reg[1] ),
        .I2(s_axi_wvalid),
        .I3(s_axi_wlast),
        .I4(si_state[1]),
        .I5(si_state[0]),
        .O(S_AXI_WREADY_i_reg));
  LUT4 #(
    .INIT(16'h0B00)) 
    dw_fifogen_aw_i_3
       (.I0(buf_cnt[0]),
        .I1(buf_cnt[1]),
        .I2(s_awvalid_reg),
        .I3(s_axi_awready),
        .O(dw_fifogen_aw_i_3_n_0));
  LUT4 #(
    .INIT(16'hFA3A)) 
    \m_payload_i[35]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(\m_payload_i_reg[35]_0 ),
        .I2(s_awvalid_reg),
        .I3(\m_payload_i_reg[61]_0 [29]),
        .O(\m_payload_i[35]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCAFA)) 
    \m_payload_i[37]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(\m_payload_i_reg[61]_0 [30]),
        .I2(s_awvalid_reg),
        .I3(\m_payload_i_reg[35]_0 ),
        .O(\m_payload_i[37]_i_1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [0]),
        .Q(\m_payload_i_reg[66]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [4]),
        .Q(\m_payload_i_reg[66]_0 [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [5]),
        .Q(\m_payload_i_reg[66]_0 [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [6]),
        .Q(\m_payload_i_reg[66]_0 [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [7]),
        .Q(\m_payload_i_reg[66]_0 [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [8]),
        .Q(\m_payload_i_reg[66]_0 [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [9]),
        .Q(\m_payload_i_reg[66]_0 [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [10]),
        .Q(\m_payload_i_reg[66]_0 [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [11]),
        .Q(\m_payload_i_reg[66]_0 [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [12]),
        .Q(\m_payload_i_reg[66]_0 [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [13]),
        .Q(\m_payload_i_reg[66]_0 [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [1]),
        .Q(\m_payload_i_reg[66]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [14]),
        .Q(\m_payload_i_reg[66]_0 [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [15]),
        .Q(\m_payload_i_reg[66]_0 [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [16]),
        .Q(\m_payload_i_reg[66]_0 [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [17]),
        .Q(\m_payload_i_reg[66]_0 [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [18]),
        .Q(\m_payload_i_reg[66]_0 [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [19]),
        .Q(\m_payload_i_reg[66]_0 [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [20]),
        .Q(\m_payload_i_reg[66]_0 [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [21]),
        .Q(\m_payload_i_reg[66]_0 [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [22]),
        .Q(\m_payload_i_reg[66]_0 [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [23]),
        .Q(\m_payload_i_reg[66]_0 [29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [2]),
        .Q(\m_payload_i_reg[66]_0 [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [24]),
        .Q(\m_payload_i_reg[66]_0 [30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [25]),
        .Q(\m_payload_i_reg[66]_0 [31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [26]),
        .Q(\m_payload_i_reg[66]_0 [32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [27]),
        .Q(\m_payload_i_reg[66]_0 [33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [28]),
        .Q(\m_payload_i_reg[66]_0 [34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(out),
        .CE(1'b1),
        .D(\m_payload_i[35]_i_1_n_0 ),
        .Q(s_axi_awsize[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [8]),
        .Q(\m_payload_i_reg[66]_0 [35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(out),
        .CE(1'b1),
        .D(\m_payload_i[37]_i_1_n_0 ),
        .Q(s_axi_awsize[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [9]),
        .Q(\m_payload_i_reg[66]_0 [36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [10]),
        .Q(\m_payload_i_reg[66]_0 [37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [3]),
        .Q(\m_payload_i_reg[66]_0 [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [33]),
        .Q(\m_payload_i_reg[66]_0 [38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [34]),
        .Q(\m_payload_i_reg[66]_0 [39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [35]),
        .Q(\m_payload_i_reg[66]_0 [40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [36]),
        .Q(\m_payload_i_reg[66]_0 [41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [11]),
        .Q(\m_payload_i_reg[66]_0 [42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [12]),
        .Q(\m_payload_i_reg[66]_0 [43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [13]),
        .Q(\m_payload_i_reg[66]_0 [44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [14]),
        .Q(\m_payload_i_reg[66]_0 [45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [15]),
        .Q(\m_payload_i_reg[66]_0 [46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [16]),
        .Q(\m_payload_i_reg[66]_0 [47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [4]),
        .Q(\m_payload_i_reg[66]_0 [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [17]),
        .Q(\m_payload_i_reg[66]_0 [48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [18]),
        .Q(\m_payload_i_reg[66]_0 [49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [37]),
        .Q(\m_payload_i_reg[66]_0 [50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [38]),
        .Q(\m_payload_i_reg[66]_0 [51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [39]),
        .Q(\m_payload_i_reg[66]_0 [52]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [40]),
        .Q(\m_payload_i_reg[66]_0 [53]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [41]),
        .Q(\m_payload_i_reg[66]_0 [54]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [42]),
        .Q(\m_payload_i_reg[66]_0 [55]),
        .R(1'b0));
  FDRE \m_payload_i_reg[59] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [43]),
        .Q(\m_payload_i_reg[66]_0 [56]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [5]),
        .Q(\m_payload_i_reg[66]_0 [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[60] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [44]),
        .Q(\m_payload_i_reg[66]_0 [57]),
        .R(1'b0));
  FDRE \m_payload_i_reg[61] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [45]),
        .Q(\m_payload_i_reg[66]_0 [58]),
        .R(1'b0));
  FDRE \m_payload_i_reg[62] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [19]),
        .Q(\m_payload_i_reg[66]_0 [59]),
        .R(1'b0));
  FDRE \m_payload_i_reg[63] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [20]),
        .Q(\m_payload_i_reg[66]_0 [60]),
        .R(1'b0));
  FDRE \m_payload_i_reg[64] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [21]),
        .Q(\m_payload_i_reg[66]_0 [61]),
        .R(1'b0));
  FDRE \m_payload_i_reg[65] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [22]),
        .Q(\m_payload_i_reg[66]_0 [62]),
        .R(1'b0));
  FDRE \m_payload_i_reg[66] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [23]),
        .Q(\m_payload_i_reg[66]_0 [63]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [6]),
        .Q(\m_payload_i_reg[66]_0 [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[66]_1 [7]),
        .Q(\m_payload_i_reg[66]_0 [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [2]),
        .Q(\m_payload_i_reg[66]_0 [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(out),
        .CE(s_awvalid_reg),
        .D(\m_payload_i_reg[61]_0 [3]),
        .Q(\m_payload_i_reg[66]_0 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0040AAEAFFFFFFFF)) 
    m_valid_i_inv_i_1
       (.I0(m_valid_i_reg_inv_0),
        .I1(s_ready_i_reg_0),
        .I2(\aresetn_d_reg[1]_2 ),
        .I3(m_valid_i_reg_inv_1),
        .I4(s_axi_awvalid),
        .I5(\aresetn_d_reg[1]_0 ),
        .O(s_ready_i_reg_1));
  LUT4 #(
    .INIT(16'hE4FF)) 
    m_valid_i_inv_i_1__0
       (.I0(s_ready_i_reg_0),
        .I1(S_AXI_WREADY_i_reg),
        .I2(\FSM_sequential_si_state_reg[0]_0 ),
        .I3(\aresetn_d_reg[1]_0 ),
        .O(m_valid_i_inv_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    m_valid_i_reg_inv
       (.C(out),
        .CE(1'b1),
        .D(m_valid_i_inv_i_1__0_n_0),
        .Q(s_awvalid_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFD50000)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg[1]_0 ),
        .I1(s_awvalid_reg),
        .I2(\FSM_sequential_si_state_reg[0]_0 ),
        .I3(S_AXI_WREADY_i_reg),
        .I4(\aresetn_d_reg[1]_1 ),
        .O(s_ready_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(out),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(s_ready_i_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hD5D5D555)) 
    \si_be[15]_i_1 
       (.I0(\FSM_sequential_si_state_reg[1] ),
        .I1(s_axi_wvalid),
        .I2(\si_buf_reg[1] ),
        .I3(\si_be_reg[0]_1 [0]),
        .I4(\si_be_reg[0]_1 [1]),
        .O(s_axi_wvalid_0));
  LUT6 #(
    .INIT(64'hBAFFBAFFBAFFBA00)) 
    \si_be[15]_i_2 
       (.I0(\si_be_reg[15]_0 ),
        .I1(\si_ptr_reg[0] ),
        .I2(\si_be_reg[15]_1 ),
        .I3(\FSM_sequential_si_state_reg[1] ),
        .I4(\si_be_reg[15]_2 ),
        .I5(\si_be_reg[15]_3 ),
        .O(D[15]));
  MUXF7 \si_be_reg[0]_i_1 
       (.I0(\si_be_reg[0] ),
        .I1(\si_be_reg[0]_0 ),
        .O(D[0]),
        .S(\FSM_sequential_si_state_reg[1] ));
  MUXF7 \si_be_reg[10]_i_1 
       (.I0(\si_be_reg[10] ),
        .I1(\si_be_reg[10]_0 ),
        .O(D[10]),
        .S(\FSM_sequential_si_state_reg[1] ));
  MUXF7 \si_be_reg[11]_i_1 
       (.I0(\si_be_reg[11] ),
        .I1(\si_be_reg[11]_0 ),
        .O(D[11]),
        .S(\FSM_sequential_si_state_reg[1] ));
  MUXF7 \si_be_reg[12]_i_1 
       (.I0(\si_be_reg[12] ),
        .I1(\si_be_reg[12]_0 ),
        .O(D[12]),
        .S(\FSM_sequential_si_state_reg[1] ));
  MUXF7 \si_be_reg[13]_i_1 
       (.I0(\si_be_reg[13] ),
        .I1(\si_be_reg[13]_0 ),
        .O(D[13]),
        .S(\FSM_sequential_si_state_reg[1] ));
  MUXF7 \si_be_reg[14]_i_1 
       (.I0(\si_be_reg[14] ),
        .I1(\si_be_reg[14]_0 ),
        .O(D[14]),
        .S(\FSM_sequential_si_state_reg[1] ));
  MUXF7 \si_be_reg[1]_i_1 
       (.I0(\si_be_reg[1] ),
        .I1(\si_be_reg[1]_0 ),
        .O(D[1]),
        .S(\FSM_sequential_si_state_reg[1] ));
  MUXF7 \si_be_reg[2]_i_1 
       (.I0(\si_be_reg[2] ),
        .I1(\si_be_reg[2]_0 ),
        .O(D[2]),
        .S(\FSM_sequential_si_state_reg[1] ));
  MUXF7 \si_be_reg[3]_i_1 
       (.I0(\si_be_reg[3] ),
        .I1(\si_be_reg[3]_0 ),
        .O(D[3]),
        .S(\FSM_sequential_si_state_reg[1] ));
  MUXF7 \si_be_reg[4]_i_1 
       (.I0(\si_be_reg[4] ),
        .I1(\si_be_reg[4]_0 ),
        .O(D[4]),
        .S(\FSM_sequential_si_state_reg[1] ));
  MUXF7 \si_be_reg[5]_i_1 
       (.I0(\si_be_reg[5] ),
        .I1(\si_be_reg[5]_0 ),
        .O(D[5]),
        .S(\FSM_sequential_si_state_reg[1] ));
  MUXF7 \si_be_reg[6]_i_1 
       (.I0(\si_be_reg[6] ),
        .I1(\si_be_reg[6]_0 ),
        .O(D[6]),
        .S(\FSM_sequential_si_state_reg[1] ));
  MUXF7 \si_be_reg[7]_i_1 
       (.I0(\si_be_reg[7] ),
        .I1(\si_be_reg[7]_0 ),
        .O(D[7]),
        .S(\FSM_sequential_si_state_reg[1] ));
  MUXF7 \si_be_reg[8]_i_1 
       (.I0(\si_be_reg[8] ),
        .I1(\si_be_reg[8]_0 ),
        .O(D[8]),
        .S(\FSM_sequential_si_state_reg[1] ));
  MUXF7 \si_be_reg[9]_i_1 
       (.I0(\si_be_reg[9] ),
        .I1(\si_be_reg[9]_0 ),
        .O(D[9]),
        .S(\FSM_sequential_si_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \si_burst[1]_i_1 
       (.I0(\FSM_sequential_si_state_reg[1] ),
        .O(\FSM_sequential_si_state_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hAAFE)) 
    \si_burst[1]_i_2 
       (.I0(\FSM_sequential_si_state_reg[0]_0 ),
        .I1(si_state[1]),
        .I2(si_state[0]),
        .I3(S_AXI_WREADY_i_reg),
        .O(\FSM_sequential_si_state_reg[1] ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \si_ptr[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\FSM_sequential_si_state_reg[1] ),
        .I3(\si_ptr_reg[1] ),
        .O(\si_ptr_reg[5] [0]));
  LUT6 #(
    .INIT(64'h6AFF6A006A006A00)) 
    \si_ptr[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\FSM_sequential_si_state_reg[1] ),
        .I4(\si_ptr_reg[2] ),
        .I5(\m_payload_i_reg[61]_0 [1]),
        .O(\si_ptr_reg[5] [1]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \si_ptr[3]_i_1 
       (.I0(\FSM_sequential_si_state_reg[1] ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\si_ptr_reg[5] [2]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \si_ptr[4]_i_1 
       (.I0(\FSM_sequential_si_state_reg[1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\si_ptr_reg[5] [3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \si_ptr[5]_i_1 
       (.I0(\FSM_sequential_si_state_reg[1] ),
        .I1(\si_ptr_reg[6] ),
        .I2(Q[5]),
        .O(\si_ptr_reg[5] [4]));
  LUT6 #(
    .INIT(64'h80FF800080FF80FF)) 
    \si_ptr[6]_i_1 
       (.I0(\si_buf_reg[1] ),
        .I1(s_axi_wvalid),
        .I2(\si_ptr_reg[0] ),
        .I3(\FSM_sequential_si_state_reg[1] ),
        .I4(\m_payload_i_reg[61]_0 [31]),
        .I5(\m_payload_i_reg[61]_0 [32]),
        .O(S_AXI_WREADY_i_reg_0));
  LUT6 #(
    .INIT(64'hDDDD555D555D555D)) 
    \si_ptr[6]_i_2 
       (.I0(\FSM_sequential_si_state_reg[1] ),
        .I1(p_176_in),
        .I2(\si_be_reg[0]_1 [1]),
        .I3(\si_be_reg[0]_1 [0]),
        .I4(word),
        .I5(\si_ptr_reg[0]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \si_ptr[6]_i_3 
       (.I0(\FSM_sequential_si_state_reg[1] ),
        .I1(Q[5]),
        .I2(\si_ptr_reg[6] ),
        .I3(Q[6]),
        .O(\si_ptr_reg[5] [5]));
  LUT6 #(
    .INIT(64'hBBBFBBBB88808888)) 
    \si_word[0]_i_1 
       (.I0(\si_word[0]_i_2_n_0 ),
        .I1(s_axi_wvalid_0),
        .I2(\si_ptr_reg[0]_0 ),
        .I3(\si_ptr_reg[0] ),
        .I4(\FSM_sequential_si_state_reg[1] ),
        .I5(word),
        .O(\si_be_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h8BFF8B00)) 
    \si_word[0]_i_2 
       (.I0(si_wrap_word_next),
        .I1(\si_ptr_reg[0] ),
        .I2(word),
        .I3(\FSM_sequential_si_state_reg[1] ),
        .I4(\m_payload_i_reg[61]_0 [0]),
        .O(\si_word[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9F90)) 
    \si_wrap_cnt[1]_i_1 
       (.I0(\si_wrap_cnt_reg[3]_0 [1]),
        .I1(\si_wrap_cnt_reg[3]_0 [0]),
        .I2(\FSM_sequential_si_state_reg[1] ),
        .I3(\si_wrap_cnt_reg[1] ),
        .O(\si_wrap_cnt_reg[3] [0]));
  LUT5 #(
    .INIT(32'hA9FFA900)) 
    \si_wrap_cnt[2]_i_1 
       (.I0(\si_wrap_cnt_reg[3]_0 [2]),
        .I1(\si_wrap_cnt_reg[3]_0 [0]),
        .I2(\si_wrap_cnt_reg[3]_0 [1]),
        .I3(\FSM_sequential_si_state_reg[1] ),
        .I4(\si_wrap_cnt_reg[2] ),
        .O(\si_wrap_cnt_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \si_wrap_cnt[3]_i_1 
       (.I0(\si_buf_reg[1] ),
        .I1(s_axi_wvalid),
        .I2(\FSM_sequential_si_state_reg[1] ),
        .O(S_AXI_WREADY_i_reg_1));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \si_wrap_cnt[3]_i_2 
       (.I0(\si_wrap_cnt_reg[3]_0 [3]),
        .I1(\si_wrap_cnt_reg[3]_0 [2]),
        .I2(\si_wrap_cnt_reg[3]_0 [1]),
        .I3(\si_wrap_cnt_reg[3]_0 [0]),
        .I4(\FSM_sequential_si_state_reg[1] ),
        .I5(\si_wrap_cnt_reg[3]_1 ),
        .O(\si_wrap_cnt_reg[3] [2]));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_21_axic_register_slice" *) 
module design_1_auto_us_df_1_axi_register_slice_v2_1_21_axic_register_slice__parameterized4
   (\aresetn_d_reg[0]_0 ,
    E,
    \m_payload_i_reg[39]_0 ,
    Q,
    S,
    \m_payload_i_reg[41]_0 ,
    \m_payload_i_reg[5]_0 ,
    \si_wrap_cnt_reg[0] ,
    \m_payload_i_reg[6]_0 ,
    DI,
    \m_payload_i_reg[3]_0 ,
    \m_payload_i_reg[3]_1 ,
    \m_payload_i_reg[2]_0 ,
    \m_payload_i_reg[2]_1 ,
    \m_payload_i_reg[2]_2 ,
    \m_payload_i_reg[0]_0 ,
    \m_payload_i_reg[0]_1 ,
    \m_payload_i_reg[0]_2 ,
    \m_payload_i_reg[0]_3 ,
    \m_payload_i_reg[0]_4 ,
    \m_payload_i_reg[0]_5 ,
    \m_payload_i_reg[37]_0 ,
    \m_payload_i_reg[35]_0 ,
    \m_payload_i_reg[37]_1 ,
    \m_payload_i_reg[1]_0 ,
    \m_payload_i_reg[1]_1 ,
    \m_payload_i_reg[3]_2 ,
    \m_payload_i_reg[2]_3 ,
    \m_payload_i_reg[36]_0 ,
    \m_payload_i_reg[45]_0 ,
    \m_payload_i_reg[46]_0 ,
    \m_payload_i_reg[7]_0 ,
    f_si_wrap_word_return,
    s_axi_awready,
    \aresetn_d_reg[0]_1 ,
    out,
    m_valid_i_reg_inv_0,
    CO,
    \si_ptr_reg[0] ,
    \si_wrap_cnt_reg[0]_0 ,
    \si_wrap_cnt_reg[0]_1 ,
    D,
    s_ready_i_reg_0,
    s_ready_i_reg_1,
    s_axi_awvalid);
  output \aresetn_d_reg[0]_0 ;
  output [0:0]E;
  output [23:0]\m_payload_i_reg[39]_0 ;
  output [50:0]Q;
  output [3:0]S;
  output \m_payload_i_reg[41]_0 ;
  output [0:0]\m_payload_i_reg[5]_0 ;
  output [0:0]\si_wrap_cnt_reg[0] ;
  output \m_payload_i_reg[6]_0 ;
  output [3:0]DI;
  output \m_payload_i_reg[3]_0 ;
  output \m_payload_i_reg[3]_1 ;
  output \m_payload_i_reg[2]_0 ;
  output \m_payload_i_reg[2]_1 ;
  output \m_payload_i_reg[2]_2 ;
  output \m_payload_i_reg[0]_0 ;
  output \m_payload_i_reg[0]_1 ;
  output \m_payload_i_reg[0]_2 ;
  output \m_payload_i_reg[0]_3 ;
  output \m_payload_i_reg[0]_4 ;
  output \m_payload_i_reg[0]_5 ;
  output \m_payload_i_reg[37]_0 ;
  output \m_payload_i_reg[35]_0 ;
  output [14:0]\m_payload_i_reg[37]_1 ;
  output \m_payload_i_reg[1]_0 ;
  output \m_payload_i_reg[1]_1 ;
  output \m_payload_i_reg[3]_2 ;
  output \m_payload_i_reg[2]_3 ;
  output \m_payload_i_reg[36]_0 ;
  output \m_payload_i_reg[45]_0 ;
  output \m_payload_i_reg[46]_0 ;
  output \m_payload_i_reg[7]_0 ;
  output f_si_wrap_word_return;
  output s_axi_awready;
  input \aresetn_d_reg[0]_1 ;
  input out;
  input m_valid_i_reg_inv_0;
  input [0:0]CO;
  input [0:0]\si_ptr_reg[0] ;
  input \si_wrap_cnt_reg[0]_0 ;
  input [0:0]\si_wrap_cnt_reg[0]_1 ;
  input [64:0]D;
  input s_ready_i_reg_0;
  input s_ready_i_reg_1;
  input s_axi_awvalid;

  wire [0:0]CO;
  wire [64:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [50:0]Q;
  wire [3:0]S;
  wire \aresetn_d_reg[0]_0 ;
  wire \aresetn_d_reg[0]_1 ;
  wire f_si_wrap_word_return;
  wire \m_payload_i[0]_i_2_n_0 ;
  wire \m_payload_i[44]_i_2_n_0 ;
  wire \m_payload_i[44]_i_3_n_0 ;
  wire \m_payload_i[44]_i_4_n_0 ;
  wire \m_payload_i[44]_i_5_n_0 ;
  wire \m_payload_i[44]_i_6_n_0 ;
  wire \m_payload_i[44]_i_7_n_0 ;
  wire \m_payload_i[48]_i_10_n_0 ;
  wire \m_payload_i[48]_i_11_n_0 ;
  wire \m_payload_i[48]_i_12_n_0 ;
  wire \m_payload_i[48]_i_13_n_0 ;
  wire \m_payload_i[48]_i_14_n_0 ;
  wire \m_payload_i[48]_i_15_n_0 ;
  wire \m_payload_i[48]_i_2_n_0 ;
  wire \m_payload_i[48]_i_3_n_0 ;
  wire \m_payload_i[48]_i_4_n_0 ;
  wire \m_payload_i[48]_i_5_n_0 ;
  wire \m_payload_i[48]_i_6_n_0 ;
  wire \m_payload_i[48]_i_7_n_0 ;
  wire \m_payload_i[48]_i_8_n_0 ;
  wire \m_payload_i[48]_i_9_n_0 ;
  wire \m_payload_i[4]_i_2_n_0 ;
  wire \m_payload_i[51]_i_2_n_0 ;
  wire \m_payload_i[51]_i_3_n_0 ;
  wire \m_payload_i[51]_i_5_n_0 ;
  wire \m_payload_i[51]_i_6_n_0 ;
  wire \m_payload_i[51]_i_7_n_0 ;
  wire \m_payload_i[51]_i_8_n_0 ;
  wire \m_payload_i[5]_i_2_n_0 ;
  wire \m_payload_i[5]_i_3_n_0 ;
  wire \m_payload_i[5]_i_4_n_0 ;
  wire \m_payload_i[62]_i_2_n_0 ;
  wire \m_payload_i[63]_i_2_n_0 ;
  wire \m_payload_i[63]_i_3_n_0 ;
  wire \m_payload_i[63]_i_4_n_0 ;
  wire \m_payload_i[64]_i_2_n_0 ;
  wire \m_payload_i[64]_i_3_n_0 ;
  wire \m_payload_i[64]_i_4_n_0 ;
  wire \m_payload_i[65]_i_2_n_0 ;
  wire \m_payload_i[65]_i_3_n_0 ;
  wire \m_payload_i[65]_i_4_n_0 ;
  wire \m_payload_i[66]_i_2_n_0 ;
  wire \m_payload_i[66]_i_3_n_0 ;
  wire \m_payload_i[66]_i_4_n_0 ;
  wire \m_payload_i[66]_i_5_n_0 ;
  wire \m_payload_i[6]_i_2_n_0 ;
  wire \m_payload_i[6]_i_3_n_0 ;
  wire \m_payload_i[6]_i_4_n_0 ;
  wire \m_payload_i[6]_i_5_n_0 ;
  wire \m_payload_i[6]_i_6_n_0 ;
  wire \m_payload_i[6]_i_7_n_0 ;
  wire \m_payload_i[6]_i_8_n_0 ;
  wire \m_payload_i[7]_i_2_n_0 ;
  wire \m_payload_i[7]_i_3_n_0 ;
  wire \m_payload_i[7]_i_4_n_0 ;
  wire \m_payload_i_reg[0]_0 ;
  wire \m_payload_i_reg[0]_1 ;
  wire \m_payload_i_reg[0]_2 ;
  wire \m_payload_i_reg[0]_3 ;
  wire \m_payload_i_reg[0]_4 ;
  wire \m_payload_i_reg[0]_5 ;
  wire \m_payload_i_reg[1]_0 ;
  wire \m_payload_i_reg[1]_1 ;
  wire \m_payload_i_reg[2]_0 ;
  wire \m_payload_i_reg[2]_1 ;
  wire \m_payload_i_reg[2]_2 ;
  wire \m_payload_i_reg[2]_3 ;
  wire \m_payload_i_reg[35]_0 ;
  wire \m_payload_i_reg[36]_0 ;
  wire \m_payload_i_reg[37]_0 ;
  wire [14:0]\m_payload_i_reg[37]_1 ;
  wire [23:0]\m_payload_i_reg[39]_0 ;
  wire \m_payload_i_reg[3]_0 ;
  wire \m_payload_i_reg[3]_1 ;
  wire \m_payload_i_reg[3]_2 ;
  wire \m_payload_i_reg[41]_0 ;
  wire \m_payload_i_reg[45]_0 ;
  wire \m_payload_i_reg[46]_0 ;
  wire [0:0]\m_payload_i_reg[5]_0 ;
  wire \m_payload_i_reg[6]_0 ;
  wire \m_payload_i_reg[7]_0 ;
  wire m_valid_i_reg_inv_0;
  wire out;
  wire [7:0]s_axi_awlen_ii;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire \si_be[11]_i_4_n_0 ;
  wire \si_be[13]_i_4_n_0 ;
  wire \si_be[1]_i_4_n_0 ;
  wire \si_be[3]_i_4_n_0 ;
  wire \si_be[5]_i_4_n_0 ;
  wire \si_be[7]_i_4_n_0 ;
  wire \si_be[9]_i_4_n_0 ;
  wire \si_ptr[0]_i_2_n_0 ;
  wire [0:0]\si_ptr_reg[0] ;
  wire \si_wrap_be_next[12]_i_2_n_0 ;
  wire \si_wrap_be_next[13]_i_2_n_0 ;
  wire \si_wrap_be_next[14]_i_2_n_0 ;
  wire \si_wrap_be_next[1]_i_2_n_0 ;
  wire \si_wrap_be_next[4]_i_2_n_0 ;
  wire \si_wrap_be_next[6]_i_2_n_0 ;
  wire \si_wrap_be_next[8]_i_2_n_0 ;
  wire \si_wrap_cnt[0]_i_2_n_0 ;
  wire \si_wrap_cnt[1]_i_3_n_0 ;
  wire \si_wrap_cnt[2]_i_3_n_0 ;
  wire \si_wrap_cnt[3]_i_4_n_0 ;
  wire [0:0]\si_wrap_cnt_reg[0] ;
  wire \si_wrap_cnt_reg[0]_0 ;
  wire [0:0]\si_wrap_cnt_reg[0]_1 ;
  wire \si_wrap_word_next[0]_i_2_n_0 ;
  wire [6:0]sr_awaddr;

  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(1'b1),
        .Q(\aresetn_d_reg[0]_0 ),
        .R(\aresetn_d_reg[0]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    cmd_packed_wrap_i1_carry_i_1
       (.I0(s_axi_awlen_ii[7]),
        .I1(s_axi_awlen_ii[6]),
        .O(DI[3]));
  LUT5 #(
    .INIT(32'hEEEEEEEA)) 
    cmd_packed_wrap_i1_carry_i_2
       (.I0(s_axi_awlen_ii[5]),
        .I1(s_axi_awlen_ii[4]),
        .I2(Q[31]),
        .I3(Q[29]),
        .I4(Q[30]),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'hFCFCF800)) 
    cmd_packed_wrap_i1_carry_i_3
       (.I0(Q[29]),
        .I1(s_axi_awlen_ii[2]),
        .I2(s_axi_awlen_ii[3]),
        .I3(Q[30]),
        .I4(Q[31]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'hEEEA0000)) 
    cmd_packed_wrap_i1_carry_i_4
       (.I0(s_axi_awlen_ii[1]),
        .I1(s_axi_awlen_ii[0]),
        .I2(Q[29]),
        .I3(Q[30]),
        .I4(Q[31]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h1)) 
    cmd_packed_wrap_i1_carry_i_5
       (.I0(s_axi_awlen_ii[6]),
        .I1(s_axi_awlen_ii[7]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h00015554)) 
    cmd_packed_wrap_i1_carry_i_6
       (.I0(s_axi_awlen_ii[5]),
        .I1(Q[31]),
        .I2(Q[29]),
        .I3(Q[30]),
        .I4(s_axi_awlen_ii[4]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h000C3360)) 
    cmd_packed_wrap_i1_carry_i_7
       (.I0(Q[29]),
        .I1(s_axi_awlen_ii[2]),
        .I2(Q[30]),
        .I3(Q[31]),
        .I4(s_axi_awlen_ii[3]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h001EF000)) 
    cmd_packed_wrap_i1_carry_i_8
       (.I0(Q[29]),
        .I1(Q[30]),
        .I2(s_axi_awlen_ii[0]),
        .I3(s_axi_awlen_ii[1]),
        .I4(Q[31]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hAAAAAA8A88888888)) 
    \m_payload_i[0]_i_1 
       (.I0(sr_awaddr[0]),
        .I1(\m_payload_i[4]_i_2_n_0 ),
        .I2(s_axi_awlen_ii[0]),
        .I3(Q[31]),
        .I4(\m_payload_i[62]_i_2_n_0 ),
        .I5(\m_payload_i[0]_i_2_n_0 ),
        .O(\m_payload_i_reg[39]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \m_payload_i[0]_i_2 
       (.I0(CO),
        .I1(Q[33]),
        .I2(Q[32]),
        .O(\m_payload_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888A88)) 
    \m_payload_i[1]_i_1 
       (.I0(sr_awaddr[1]),
        .I1(\m_payload_i[4]_i_2_n_0 ),
        .I2(Q[32]),
        .I3(Q[33]),
        .I4(CO),
        .I5(\m_payload_i[63]_i_4_n_0 ),
        .O(\m_payload_i_reg[39]_0 [1]));
  LUT6 #(
    .INIT(64'h8888888888A88888)) 
    \m_payload_i[2]_i_1 
       (.I0(sr_awaddr[2]),
        .I1(\m_payload_i[4]_i_2_n_0 ),
        .I2(\m_payload_i[64]_i_2_n_0 ),
        .I3(Q[32]),
        .I4(Q[33]),
        .I5(CO),
        .O(\m_payload_i_reg[39]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_payload_i[36]_i_1 
       (.I0(\m_payload_i_reg[41]_0 ),
        .I1(Q[30]),
        .O(\m_payload_i_reg[39]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hFF10)) 
    \m_payload_i[38]_i_1 
       (.I0(\m_payload_i_reg[41]_0 ),
        .I1(CO),
        .I2(Q[33]),
        .I3(Q[32]),
        .O(\m_payload_i_reg[39]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \m_payload_i[39]_i_1 
       (.I0(\m_payload_i_reg[41]_0 ),
        .I1(CO),
        .I2(Q[33]),
        .I3(Q[32]),
        .O(\m_payload_i_reg[39]_0 [10]));
  LUT6 #(
    .INIT(64'h8888888888A88888)) 
    \m_payload_i[3]_i_1 
       (.I0(sr_awaddr[3]),
        .I1(\m_payload_i[4]_i_2_n_0 ),
        .I2(\m_payload_i[65]_i_3_n_0 ),
        .I3(Q[32]),
        .I4(Q[33]),
        .I5(CO),
        .O(\m_payload_i_reg[39]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    \m_payload_i[44]_i_1 
       (.I0(\m_payload_i[44]_i_2_n_0 ),
        .I1(\m_payload_i[44]_i_3_n_0 ),
        .O(\m_payload_i_reg[39]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h4474)) 
    \m_payload_i[44]_i_2 
       (.I0(s_axi_awlen_ii[0]),
        .I1(\m_payload_i_reg[41]_0 ),
        .I2(\m_payload_i[44]_i_4_n_0 ),
        .I3(\si_ptr[0]_i_2_n_0 ),
        .O(\m_payload_i[44]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00AE00AE0000)) 
    \m_payload_i[44]_i_3 
       (.I0(\m_payload_i[44]_i_5_n_0 ),
        .I1(\m_payload_i[48]_i_10_n_0 ),
        .I2(\m_payload_i[44]_i_6_n_0 ),
        .I3(\m_payload_i[44]_i_7_n_0 ),
        .I4(Q[0]),
        .I5(\m_payload_i[66]_i_2_n_0 ),
        .O(\m_payload_i[44]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'hEEEFFFEF)) 
    \m_payload_i[44]_i_4 
       (.I0(Q[31]),
        .I1(Q[30]),
        .I2(s_axi_awlen_ii[5]),
        .I3(Q[29]),
        .I4(s_axi_awlen_ii[4]),
        .O(\m_payload_i[44]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \m_payload_i[44]_i_5 
       (.I0(\m_payload_i[7]_i_2_n_0 ),
        .I1(Q[31]),
        .I2(sr_awaddr[3]),
        .O(\m_payload_i[44]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBBF0000)) 
    \m_payload_i[44]_i_6 
       (.I0(Q[31]),
        .I1(sr_awaddr[3]),
        .I2(\m_payload_i[6]_i_6_n_0 ),
        .I3(CO),
        .I4(\m_payload_i[65]_i_3_n_0 ),
        .I5(\m_payload_i[48]_i_9_n_0 ),
        .O(\m_payload_i[44]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_payload_i[44]_i_7 
       (.I0(Q[33]),
        .I1(\m_payload_i_reg[41]_0 ),
        .O(\m_payload_i[44]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \m_payload_i[45]_i_1 
       (.I0(\m_payload_i[48]_i_4_n_0 ),
        .I1(\m_payload_i[48]_i_3_n_0 ),
        .O(\m_payload_i_reg[39]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h2D)) 
    \m_payload_i[46]_i_1 
       (.I0(\m_payload_i[48]_i_4_n_0 ),
        .I1(\m_payload_i[48]_i_3_n_0 ),
        .I2(\m_payload_i[48]_i_2_n_0 ),
        .O(\m_payload_i_reg[39]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \m_payload_i[47]_i_1 
       (.I0(\m_payload_i[48]_i_2_n_0 ),
        .I1(\m_payload_i[48]_i_3_n_0 ),
        .I2(\m_payload_i[48]_i_4_n_0 ),
        .I3(\m_payload_i[48]_i_6_n_0 ),
        .O(\m_payload_i_reg[39]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h00FF10EF)) 
    \m_payload_i[48]_i_1 
       (.I0(\m_payload_i[48]_i_2_n_0 ),
        .I1(\m_payload_i[48]_i_3_n_0 ),
        .I2(\m_payload_i[48]_i_4_n_0 ),
        .I3(\m_payload_i[48]_i_5_n_0 ),
        .I4(\m_payload_i[48]_i_6_n_0 ),
        .O(\m_payload_i_reg[39]_0 [15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF545500)) 
    \m_payload_i[48]_i_10 
       (.I0(\m_payload_i[48]_i_14_n_0 ),
        .I1(CO),
        .I2(\m_payload_i[6]_i_6_n_0 ),
        .I3(\m_payload_i[63]_i_4_n_0 ),
        .I4(\m_payload_i[63]_i_2_n_0 ),
        .I5(\m_payload_i[48]_i_15_n_0 ),
        .O(\m_payload_i[48]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h88F88888)) 
    \m_payload_i[48]_i_11 
       (.I0(Q[0]),
        .I1(\m_payload_i[66]_i_2_n_0 ),
        .I2(sr_awaddr[3]),
        .I3(Q[31]),
        .I4(\m_payload_i[7]_i_2_n_0 ),
        .O(\m_payload_i[48]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[48]_i_12 
       (.I0(s_axi_awlen_ii[6]),
        .I1(Q[29]),
        .I2(s_axi_awlen_ii[7]),
        .O(\m_payload_i[48]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF5F0F53FF5FFF53F)) 
    \m_payload_i[48]_i_13 
       (.I0(\m_payload_i[6]_i_5_n_0 ),
        .I1(s_axi_awlen_ii[4]),
        .I2(Q[31]),
        .I3(Q[30]),
        .I4(Q[29]),
        .I5(s_axi_awlen_ii[7]),
        .O(\m_payload_i[48]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \m_payload_i[48]_i_14 
       (.I0(Q[31]),
        .I1(Q[30]),
        .I2(sr_awaddr[1]),
        .O(\m_payload_i[48]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h02220000)) 
    \m_payload_i[48]_i_15 
       (.I0(\m_payload_i[6]_i_3_n_0 ),
        .I1(Q[31]),
        .I2(Q[29]),
        .I3(Q[30]),
        .I4(sr_awaddr[2]),
        .O(\m_payload_i[48]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h7474747444747474)) 
    \m_payload_i[48]_i_2 
       (.I0(s_axi_awlen_ii[2]),
        .I1(\m_payload_i_reg[41]_0 ),
        .I2(\m_payload_i[7]_i_3_n_0 ),
        .I3(Q[31]),
        .I4(s_axi_awlen_ii[3]),
        .I5(\m_payload_i[62]_i_2_n_0 ),
        .O(\m_payload_i[48]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444477477777)) 
    \m_payload_i[48]_i_3 
       (.I0(s_axi_awlen_ii[1]),
        .I1(\m_payload_i_reg[41]_0 ),
        .I2(s_axi_awlen_ii[2]),
        .I3(\m_payload_i[62]_i_2_n_0 ),
        .I4(Q[31]),
        .I5(\m_payload_i[6]_i_2_n_0 ),
        .O(\m_payload_i[48]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055550100)) 
    \m_payload_i[48]_i_4 
       (.I0(\m_payload_i[48]_i_7_n_0 ),
        .I1(\m_payload_i[48]_i_8_n_0 ),
        .I2(\m_payload_i[48]_i_9_n_0 ),
        .I3(\m_payload_i[48]_i_10_n_0 ),
        .I4(\m_payload_i[48]_i_11_n_0 ),
        .I5(\m_payload_i[44]_i_2_n_0 ),
        .O(\m_payload_i[48]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7477444474777477)) 
    \m_payload_i[48]_i_5 
       (.I0(s_axi_awlen_ii[4]),
        .I1(\m_payload_i_reg[41]_0 ),
        .I2(\m_payload_i[51]_i_6_n_0 ),
        .I3(\m_payload_i[48]_i_12_n_0 ),
        .I4(\m_payload_i[65]_i_2_n_0 ),
        .I5(s_axi_awlen_ii[5]),
        .O(\m_payload_i[48]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \m_payload_i[48]_i_6 
       (.I0(s_axi_awlen_ii[3]),
        .I1(\m_payload_i_reg[41]_0 ),
        .I2(\m_payload_i[48]_i_13_n_0 ),
        .O(\m_payload_i[48]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'hFFF1)) 
    \m_payload_i[48]_i_7 
       (.I0(\m_payload_i[66]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\m_payload_i_reg[41]_0 ),
        .I3(Q[33]),
        .O(\m_payload_i[48]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0020AAAA)) 
    \m_payload_i[48]_i_8 
       (.I0(\m_payload_i[65]_i_3_n_0 ),
        .I1(CO),
        .I2(Q[33]),
        .I3(Q[32]),
        .I4(sr_awaddr[3]),
        .I5(Q[31]),
        .O(\m_payload_i[48]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'hA888AAAA)) 
    \m_payload_i[48]_i_9 
       (.I0(\m_payload_i[64]_i_2_n_0 ),
        .I1(Q[31]),
        .I2(Q[29]),
        .I3(Q[30]),
        .I4(sr_awaddr[2]),
        .O(\m_payload_i[48]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \m_payload_i[49]_i_1 
       (.I0(\m_payload_i[51]_i_3_n_0 ),
        .I1(\m_payload_i[51]_i_2_n_0 ),
        .O(\m_payload_i_reg[39]_0 [16]));
  LUT6 #(
    .INIT(64'h88888888888A8888)) 
    \m_payload_i[4]_i_1 
       (.I0(Q[0]),
        .I1(\m_payload_i[4]_i_2_n_0 ),
        .I2(\m_payload_i[66]_i_2_n_0 ),
        .I3(Q[32]),
        .I4(Q[33]),
        .I5(CO),
        .O(\m_payload_i_reg[39]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h0000FFEF)) 
    \m_payload_i[4]_i_2 
       (.I0(\m_payload_i_reg[41]_0 ),
        .I1(CO),
        .I2(Q[33]),
        .I3(Q[32]),
        .I4(\m_payload_i[6]_i_4_n_0 ),
        .O(\m_payload_i[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD2D2DDD222222D22)) 
    \m_payload_i[50]_i_1 
       (.I0(\m_payload_i[51]_i_3_n_0 ),
        .I1(\m_payload_i[51]_i_2_n_0 ),
        .I2(\m_payload_i_reg[41]_0 ),
        .I3(s_axi_awlen_ii[7]),
        .I4(\m_payload_i[65]_i_2_n_0 ),
        .I5(s_axi_awlen_ii[6]),
        .O(\m_payload_i_reg[39]_0 [17]));
  LUT6 #(
    .INIT(64'hFFFF0A0003000000)) 
    \m_payload_i[51]_i_1 
       (.I0(s_axi_awlen_ii[6]),
        .I1(\m_payload_i[65]_i_2_n_0 ),
        .I2(\m_payload_i[51]_i_2_n_0 ),
        .I3(\m_payload_i[51]_i_3_n_0 ),
        .I4(s_axi_awlen_ii[7]),
        .I5(\m_payload_i_reg[41]_0 ),
        .O(\m_payload_i_reg[39]_0 [18]));
  LUT6 #(
    .INIT(64'h7774444477747774)) 
    \m_payload_i[51]_i_2 
       (.I0(s_axi_awlen_ii[5]),
        .I1(\m_payload_i_reg[41]_0 ),
        .I2(\m_payload_i[51]_i_5_n_0 ),
        .I3(\m_payload_i[51]_i_6_n_0 ),
        .I4(\m_payload_i[65]_i_2_n_0 ),
        .I5(s_axi_awlen_ii[6]),
        .O(\m_payload_i[51]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \m_payload_i[51]_i_3 
       (.I0(\m_payload_i[48]_i_6_n_0 ),
        .I1(\m_payload_i[48]_i_2_n_0 ),
        .I2(\m_payload_i[48]_i_3_n_0 ),
        .I3(\m_payload_i[48]_i_4_n_0 ),
        .I4(\m_payload_i[48]_i_5_n_0 ),
        .O(\m_payload_i[51]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h4F4F4FFF)) 
    \m_payload_i[51]_i_4 
       (.I0(\m_payload_i[51]_i_7_n_0 ),
        .I1(\m_payload_i[51]_i_8_n_0 ),
        .I2(Q[35]),
        .I3(Q[32]),
        .I4(Q[33]),
        .O(\m_payload_i_reg[41]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \m_payload_i[51]_i_5 
       (.I0(Q[29]),
        .I1(s_axi_awlen_ii[7]),
        .O(\m_payload_i[51]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[51]_i_6 
       (.I0(Q[31]),
        .I1(Q[30]),
        .O(\m_payload_i[51]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[51]_i_7 
       (.I0(s_axi_awlen_ii[6]),
        .I1(s_axi_awlen_ii[7]),
        .I2(s_axi_awlen_ii[1]),
        .I3(s_axi_awlen_ii[2]),
        .O(\m_payload_i[51]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \m_payload_i[51]_i_8 
       (.I0(s_axi_awlen_ii[5]),
        .I1(s_axi_awlen_ii[4]),
        .I2(s_axi_awlen_ii[0]),
        .I3(s_axi_awlen_ii[3]),
        .O(\m_payload_i[51]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h95999999AAAAAAAA)) 
    \m_payload_i[5]_i_1 
       (.I0(sr_awaddr[5]),
        .I1(\m_payload_i[5]_i_2_n_0 ),
        .I2(Q[30]),
        .I3(Q[31]),
        .I4(\m_payload_i[5]_i_3_n_0 ),
        .I5(\m_payload_i[6]_i_4_n_0 ),
        .O(\m_payload_i_reg[39]_0 [5]));
  LUT6 #(
    .INIT(64'h00000000FFFFFF47)) 
    \m_payload_i[5]_i_2 
       (.I0(s_axi_awlen_ii[4]),
        .I1(Q[29]),
        .I2(s_axi_awlen_ii[5]),
        .I3(Q[30]),
        .I4(Q[31]),
        .I5(\m_payload_i[5]_i_4_n_0 ),
        .O(\m_payload_i[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[5]_i_3 
       (.I0(s_axi_awlen_ii[0]),
        .I1(Q[29]),
        .I2(s_axi_awlen_ii[1]),
        .O(\m_payload_i[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'h0000E200)) 
    \m_payload_i[5]_i_4 
       (.I0(s_axi_awlen_ii[3]),
        .I1(Q[29]),
        .I2(s_axi_awlen_ii[2]),
        .I3(Q[30]),
        .I4(Q[31]),
        .O(\m_payload_i[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0F3FFFFFFFF7A7B)) 
    \m_payload_i[62]_i_1 
       (.I0(s_axi_awlen_ii[0]),
        .I1(Q[32]),
        .I2(sr_awaddr[0]),
        .I3(Q[33]),
        .I4(Q[31]),
        .I5(\m_payload_i[62]_i_2_n_0 ),
        .O(\m_payload_i_reg[39]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_payload_i[62]_i_2 
       (.I0(Q[30]),
        .I1(Q[29]),
        .O(\m_payload_i[62]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDF7F7F7F7F0FD)) 
    \m_payload_i[63]_i_1 
       (.I0(Q[32]),
        .I1(\m_payload_i[63]_i_2_n_0 ),
        .I2(\m_payload_i[63]_i_3_n_0 ),
        .I3(Q[33]),
        .I4(sr_awaddr[1]),
        .I5(\m_payload_i[63]_i_4_n_0 ),
        .O(\m_payload_i_reg[39]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \m_payload_i[63]_i_2 
       (.I0(sr_awaddr[0]),
        .I1(s_axi_awlen_ii[0]),
        .I2(Q[31]),
        .I3(Q[29]),
        .I4(Q[30]),
        .O(\m_payload_i[63]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h46)) 
    \m_payload_i[63]_i_3 
       (.I0(Q[31]),
        .I1(Q[30]),
        .I2(Q[29]),
        .O(\m_payload_i[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \m_payload_i[63]_i_4 
       (.I0(s_axi_awlen_ii[1]),
        .I1(Q[29]),
        .I2(s_axi_awlen_ii[0]),
        .I3(Q[31]),
        .I4(Q[30]),
        .O(\m_payload_i[63]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4DC77DD7)) 
    \m_payload_i[64]_i_1 
       (.I0(Q[32]),
        .I1(sr_awaddr[2]),
        .I2(\m_payload_i[64]_i_2_n_0 ),
        .I3(\m_payload_i[64]_i_3_n_0 ),
        .I4(Q[33]),
        .I5(\m_payload_i[64]_i_4_n_0 ),
        .O(\m_payload_i_reg[39]_0 [21]));
  LUT6 #(
    .INIT(64'hEEEEAEBFFFFFAEBF)) 
    \m_payload_i[64]_i_2 
       (.I0(Q[31]),
        .I1(Q[29]),
        .I2(s_axi_awlen_ii[1]),
        .I3(s_axi_awlen_ii[2]),
        .I4(Q[30]),
        .I5(s_axi_awlen_ii[0]),
        .O(\m_payload_i[64]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888E888888888888)) 
    \m_payload_i[64]_i_3 
       (.I0(sr_awaddr[1]),
        .I1(\m_payload_i[63]_i_4_n_0 ),
        .I2(\m_payload_i[62]_i_2_n_0 ),
        .I3(Q[31]),
        .I4(s_axi_awlen_ii[0]),
        .I5(sr_awaddr[0]),
        .O(\m_payload_i[64]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h42)) 
    \m_payload_i[64]_i_4 
       (.I0(Q[31]),
        .I1(Q[30]),
        .I2(Q[29]),
        .O(\m_payload_i[64]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h757DF7FFD7D7F7FF)) 
    \m_payload_i[65]_i_1 
       (.I0(\m_payload_i[65]_i_2_n_0 ),
        .I1(\m_payload_i[65]_i_3_n_0 ),
        .I2(sr_awaddr[3]),
        .I3(Q[33]),
        .I4(Q[32]),
        .I5(\m_payload_i[65]_i_4_n_0 ),
        .O(\m_payload_i_reg[39]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \m_payload_i[65]_i_2 
       (.I0(Q[29]),
        .I1(Q[30]),
        .I2(Q[31]),
        .O(\m_payload_i[65]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[65]_i_3 
       (.I0(Q[31]),
        .I1(\m_payload_i[7]_i_2_n_0 ),
        .O(\m_payload_i[65]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAEAE08080808)) 
    \m_payload_i[65]_i_4 
       (.I0(\m_payload_i[64]_i_3_n_0 ),
        .I1(\m_payload_i[6]_i_3_n_0 ),
        .I2(Q[31]),
        .I3(Q[29]),
        .I4(Q[30]),
        .I5(sr_awaddr[2]),
        .O(\m_payload_i[65]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hC13CFDFD)) 
    \m_payload_i[66]_i_1 
       (.I0(Q[33]),
        .I1(\m_payload_i[66]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(\m_payload_i[66]_i_3_n_0 ),
        .I4(Q[32]),
        .O(\m_payload_i_reg[39]_0 [23]));
  LUT6 #(
    .INIT(64'hFFFFFFFF000044F0)) 
    \m_payload_i[66]_i_2 
       (.I0(Q[29]),
        .I1(s_axi_awlen_ii[0]),
        .I2(\m_payload_i[66]_i_4_n_0 ),
        .I3(Q[31]),
        .I4(Q[30]),
        .I5(\m_payload_i[66]_i_5_n_0 ),
        .O(\m_payload_i[66]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hAE08)) 
    \m_payload_i[66]_i_3 
       (.I0(\m_payload_i[65]_i_4_n_0 ),
        .I1(\m_payload_i[7]_i_2_n_0 ),
        .I2(Q[31]),
        .I3(sr_awaddr[3]),
        .O(\m_payload_i[66]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[66]_i_4 
       (.I0(s_axi_awlen_ii[3]),
        .I1(Q[29]),
        .I2(s_axi_awlen_ii[4]),
        .O(\m_payload_i[66]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h0000D800)) 
    \m_payload_i[66]_i_5 
       (.I0(Q[29]),
        .I1(s_axi_awlen_ii[1]),
        .I2(s_axi_awlen_ii[2]),
        .I3(Q[30]),
        .I4(Q[31]),
        .O(\m_payload_i[66]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5666AAAAAAAAAAAA)) 
    \m_payload_i[6]_i_1 
       (.I0(sr_awaddr[6]),
        .I1(\m_payload_i[6]_i_2_n_0 ),
        .I2(Q[31]),
        .I3(\m_payload_i[6]_i_3_n_0 ),
        .I4(\m_payload_i[6]_i_4_n_0 ),
        .I5(sr_awaddr[5]),
        .O(\m_payload_i_reg[39]_0 [6]));
  LUT6 #(
    .INIT(64'h0000B8FF0000B800)) 
    \m_payload_i[6]_i_2 
       (.I0(s_axi_awlen_ii[3]),
        .I1(Q[29]),
        .I2(s_axi_awlen_ii[4]),
        .I3(Q[30]),
        .I4(Q[31]),
        .I5(\m_payload_i[6]_i_5_n_0 ),
        .O(\m_payload_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h3300B8B8)) 
    \m_payload_i[6]_i_3 
       (.I0(s_axi_awlen_ii[0]),
        .I1(Q[30]),
        .I2(s_axi_awlen_ii[2]),
        .I3(s_axi_awlen_ii[1]),
        .I4(Q[29]),
        .O(\m_payload_i[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1010101010001010)) 
    \m_payload_i[6]_i_4 
       (.I0(\m_payload_i_reg[41]_0 ),
        .I1(\m_payload_i[6]_i_6_n_0 ),
        .I2(CO),
        .I3(Q[0]),
        .I4(\m_payload_i[6]_i_7_n_0 ),
        .I5(\m_payload_i[6]_i_8_n_0 ),
        .O(\m_payload_i[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[6]_i_5 
       (.I0(s_axi_awlen_ii[5]),
        .I1(Q[29]),
        .I2(s_axi_awlen_ii[6]),
        .O(\m_payload_i[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[6]_i_6 
       (.I0(Q[32]),
        .I1(Q[33]),
        .O(\m_payload_i[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_payload_i[6]_i_7 
       (.I0(sr_awaddr[1]),
        .I1(sr_awaddr[0]),
        .O(\m_payload_i[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_payload_i[6]_i_8 
       (.I0(sr_awaddr[3]),
        .I1(sr_awaddr[2]),
        .O(\m_payload_i[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6A55AAAAAAAAAAAA)) 
    \m_payload_i[7]_i_1 
       (.I0(Q[1]),
        .I1(\m_payload_i[7]_i_2_n_0 ),
        .I2(Q[31]),
        .I3(\m_payload_i[7]_i_3_n_0 ),
        .I4(sr_awaddr[6]),
        .I5(\m_payload_i[7]_i_4_n_0 ),
        .O(\m_payload_i_reg[39]_0 [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_payload_i[7]_i_2 
       (.I0(s_axi_awlen_ii[0]),
        .I1(s_axi_awlen_ii[1]),
        .I2(Q[30]),
        .I3(s_axi_awlen_ii[2]),
        .I4(Q[29]),
        .I5(s_axi_awlen_ii[3]),
        .O(\m_payload_i[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4700FFFF47FF)) 
    \m_payload_i[7]_i_3 
       (.I0(s_axi_awlen_ii[4]),
        .I1(Q[29]),
        .I2(s_axi_awlen_ii[5]),
        .I3(Q[30]),
        .I4(Q[31]),
        .I5(\m_payload_i[48]_i_12_n_0 ),
        .O(\m_payload_i[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_payload_i[7]_i_4 
       (.I0(\m_payload_i[6]_i_4_n_0 ),
        .I1(sr_awaddr[5]),
        .O(\m_payload_i[7]_i_4_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(out),
        .CE(E),
        .D(D[0]),
        .Q(sr_awaddr[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(out),
        .CE(E),
        .D(D[10]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(out),
        .CE(E),
        .D(D[11]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(out),
        .CE(E),
        .D(D[12]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(out),
        .CE(E),
        .D(D[13]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(out),
        .CE(E),
        .D(D[14]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(out),
        .CE(E),
        .D(D[15]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(out),
        .CE(E),
        .D(D[16]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(out),
        .CE(E),
        .D(D[17]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(out),
        .CE(E),
        .D(D[18]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(out),
        .CE(E),
        .D(D[19]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(out),
        .CE(E),
        .D(D[1]),
        .Q(sr_awaddr[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(out),
        .CE(E),
        .D(D[20]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(out),
        .CE(E),
        .D(D[21]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(out),
        .CE(E),
        .D(D[22]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(out),
        .CE(E),
        .D(D[23]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(out),
        .CE(E),
        .D(D[24]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(out),
        .CE(E),
        .D(D[25]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(out),
        .CE(E),
        .D(D[26]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(out),
        .CE(E),
        .D(D[27]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(out),
        .CE(E),
        .D(D[28]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(out),
        .CE(E),
        .D(D[29]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(out),
        .CE(E),
        .D(D[2]),
        .Q(sr_awaddr[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(out),
        .CE(E),
        .D(D[30]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(out),
        .CE(E),
        .D(D[31]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(out),
        .CE(E),
        .D(D[32]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(out),
        .CE(E),
        .D(D[33]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(out),
        .CE(E),
        .D(D[34]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(out),
        .CE(E),
        .D(D[35]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(out),
        .CE(E),
        .D(D[36]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(out),
        .CE(E),
        .D(D[37]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(out),
        .CE(E),
        .D(D[38]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(out),
        .CE(E),
        .D(D[39]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(out),
        .CE(E),
        .D(D[3]),
        .Q(sr_awaddr[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(out),
        .CE(E),
        .D(D[40]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(out),
        .CE(E),
        .D(D[41]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(out),
        .CE(E),
        .D(D[42]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(out),
        .CE(E),
        .D(D[43]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(out),
        .CE(E),
        .D(D[44]),
        .Q(s_axi_awlen_ii[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(out),
        .CE(E),
        .D(D[45]),
        .Q(s_axi_awlen_ii[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(out),
        .CE(E),
        .D(D[46]),
        .Q(s_axi_awlen_ii[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(out),
        .CE(E),
        .D(D[47]),
        .Q(s_axi_awlen_ii[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(out),
        .CE(E),
        .D(D[48]),
        .Q(s_axi_awlen_ii[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(out),
        .CE(E),
        .D(D[49]),
        .Q(s_axi_awlen_ii[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(out),
        .CE(E),
        .D(D[4]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(out),
        .CE(E),
        .D(D[50]),
        .Q(s_axi_awlen_ii[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(out),
        .CE(E),
        .D(D[51]),
        .Q(s_axi_awlen_ii[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(out),
        .CE(E),
        .D(D[52]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(out),
        .CE(E),
        .D(D[53]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(out),
        .CE(E),
        .D(D[54]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(out),
        .CE(E),
        .D(D[55]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(out),
        .CE(E),
        .D(D[56]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(out),
        .CE(E),
        .D(D[57]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(out),
        .CE(E),
        .D(D[58]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[59] 
       (.C(out),
        .CE(E),
        .D(D[59]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(out),
        .CE(E),
        .D(D[5]),
        .Q(sr_awaddr[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[60] 
       (.C(out),
        .CE(E),
        .D(D[60]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[61] 
       (.C(out),
        .CE(E),
        .D(D[61]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[62] 
       (.C(out),
        .CE(E),
        .D(D[62]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[63] 
       (.C(out),
        .CE(E),
        .D(D[63]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[64] 
       (.C(out),
        .CE(E),
        .D(D[64]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(out),
        .CE(E),
        .D(D[6]),
        .Q(sr_awaddr[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(out),
        .CE(E),
        .D(D[7]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(out),
        .CE(E),
        .D(D[8]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(out),
        .CE(E),
        .D(D[9]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    m_valid_i_reg_inv
       (.C(out),
        .CE(1'b1),
        .D(m_valid_i_reg_inv_0),
        .Q(E),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h5FDD0000)) 
    s_ready_i_i_1
       (.I0(s_ready_i_reg_0),
        .I1(s_ready_i_reg_1),
        .I2(s_axi_awvalid),
        .I3(E),
        .I4(\aresetn_d_reg[0]_0 ),
        .O(s_ready_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(out),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(s_axi_awready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \si_be[0]_i_2 
       (.I0(\si_be[1]_i_4_n_0 ),
        .I1(sr_awaddr[0]),
        .I2(\m_payload_i[62]_i_2_n_0 ),
        .I3(sr_awaddr[1]),
        .I4(sr_awaddr[2]),
        .I5(sr_awaddr[3]),
        .O(\m_payload_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \si_be[10]_i_2 
       (.I0(\si_be[11]_i_4_n_0 ),
        .I1(sr_awaddr[0]),
        .I2(\m_payload_i[62]_i_2_n_0 ),
        .I3(sr_awaddr[2]),
        .I4(sr_awaddr[3]),
        .I5(sr_awaddr[1]),
        .O(\m_payload_i_reg[0]_4 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABAAAAAAA)) 
    \si_be[11]_i_2 
       (.I0(\si_be[11]_i_4_n_0 ),
        .I1(sr_awaddr[2]),
        .I2(sr_awaddr[3]),
        .I3(sr_awaddr[1]),
        .I4(sr_awaddr[0]),
        .I5(\m_payload_i[62]_i_2_n_0 ),
        .O(\m_payload_i_reg[2]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC0F80000)) 
    \si_be[11]_i_4 
       (.I0(sr_awaddr[1]),
        .I1(Q[29]),
        .I2(Q[30]),
        .I3(sr_awaddr[2]),
        .I4(sr_awaddr[3]),
        .I5(Q[31]),
        .O(\si_be[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAEA)) 
    \si_be[12]_i_2 
       (.I0(\si_be[13]_i_4_n_0 ),
        .I1(sr_awaddr[2]),
        .I2(sr_awaddr[3]),
        .I3(\m_payload_i[62]_i_2_n_0 ),
        .I4(sr_awaddr[1]),
        .I5(sr_awaddr[0]),
        .O(\m_payload_i_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \si_be[13]_i_2 
       (.I0(\si_be[13]_i_4_n_0 ),
        .I1(sr_awaddr[0]),
        .I2(sr_awaddr[1]),
        .I3(sr_awaddr[2]),
        .I4(sr_awaddr[3]),
        .I5(\m_payload_i[62]_i_2_n_0 ),
        .O(\m_payload_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFBFAAAAAFAAAAAAA)) 
    \si_be[13]_i_4 
       (.I0(Q[31]),
        .I1(sr_awaddr[1]),
        .I2(Q[30]),
        .I3(Q[29]),
        .I4(sr_awaddr[3]),
        .I5(sr_awaddr[2]),
        .O(\si_be[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAAAAAAAAAAA)) 
    \si_be[14]_i_2 
       (.I0(\m_payload_i_reg[37]_0 ),
        .I1(sr_awaddr[0]),
        .I2(\m_payload_i[62]_i_2_n_0 ),
        .I3(sr_awaddr[2]),
        .I4(sr_awaddr[3]),
        .I5(sr_awaddr[1]),
        .O(\m_payload_i_reg[0]_5 ));
  LUT6 #(
    .INIT(64'hEEEAEAAAEEAAEAAA)) 
    \si_be[15]_i_5 
       (.I0(Q[31]),
        .I1(sr_awaddr[3]),
        .I2(sr_awaddr[2]),
        .I3(Q[30]),
        .I4(Q[29]),
        .I5(sr_awaddr[1]),
        .O(\m_payload_i_reg[37]_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \si_be[15]_i_6 
       (.I0(Q[30]),
        .I1(Q[29]),
        .I2(sr_awaddr[0]),
        .I3(sr_awaddr[1]),
        .I4(sr_awaddr[3]),
        .I5(sr_awaddr[2]),
        .O(\m_payload_i_reg[36]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \si_be[1]_i_2 
       (.I0(\si_be[1]_i_4_n_0 ),
        .I1(sr_awaddr[1]),
        .I2(sr_awaddr[2]),
        .I3(sr_awaddr[3]),
        .I4(sr_awaddr[0]),
        .I5(\m_payload_i[62]_i_2_n_0 ),
        .O(\m_payload_i_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAFAAABAAAA)) 
    \si_be[1]_i_4 
       (.I0(Q[31]),
        .I1(sr_awaddr[1]),
        .I2(sr_awaddr[2]),
        .I3(sr_awaddr[3]),
        .I4(Q[29]),
        .I5(Q[30]),
        .O(\si_be[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \si_be[2]_i_2 
       (.I0(\si_be[3]_i_4_n_0 ),
        .I1(sr_awaddr[0]),
        .I2(\m_payload_i[62]_i_2_n_0 ),
        .I3(sr_awaddr[1]),
        .I4(sr_awaddr[2]),
        .I5(sr_awaddr[3]),
        .O(\m_payload_i_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    \si_be[3]_i_2 
       (.I0(\si_be[3]_i_4_n_0 ),
        .I1(sr_awaddr[1]),
        .I2(sr_awaddr[2]),
        .I3(sr_awaddr[3]),
        .I4(sr_awaddr[0]),
        .I5(\m_payload_i[62]_i_2_n_0 ),
        .O(\m_payload_i_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hCFCFCCCECCCFCCCC)) 
    \si_be[3]_i_4 
       (.I0(sr_awaddr[1]),
        .I1(Q[31]),
        .I2(sr_awaddr[3]),
        .I3(sr_awaddr[2]),
        .I4(Q[30]),
        .I5(Q[29]),
        .O(\si_be[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \si_be[4]_i_2 
       (.I0(\si_be[5]_i_4_n_0 ),
        .I1(\m_payload_i[62]_i_2_n_0 ),
        .I2(sr_awaddr[3]),
        .I3(sr_awaddr[2]),
        .I4(sr_awaddr[1]),
        .I5(sr_awaddr[0]),
        .O(\m_payload_i_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAABAAAAAA)) 
    \si_be[5]_i_2 
       (.I0(\si_be[5]_i_4_n_0 ),
        .I1(\m_payload_i[62]_i_2_n_0 ),
        .I2(sr_awaddr[3]),
        .I3(sr_awaddr[2]),
        .I4(sr_awaddr[0]),
        .I5(sr_awaddr[1]),
        .O(\m_payload_i_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFBFAFAAA)) 
    \si_be[5]_i_4 
       (.I0(Q[31]),
        .I1(sr_awaddr[1]),
        .I2(Q[30]),
        .I3(Q[29]),
        .I4(sr_awaddr[2]),
        .I5(sr_awaddr[3]),
        .O(\si_be[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \si_be[6]_i_2 
       (.I0(\si_be[7]_i_4_n_0 ),
        .I1(sr_awaddr[0]),
        .I2(\m_payload_i[62]_i_2_n_0 ),
        .I3(sr_awaddr[3]),
        .I4(sr_awaddr[2]),
        .I5(sr_awaddr[1]),
        .O(\m_payload_i_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABAAAAAAA)) 
    \si_be[7]_i_2 
       (.I0(\si_be[7]_i_4_n_0 ),
        .I1(sr_awaddr[3]),
        .I2(sr_awaddr[2]),
        .I3(sr_awaddr[1]),
        .I4(sr_awaddr[0]),
        .I5(\m_payload_i[62]_i_2_n_0 ),
        .O(\m_payload_i_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hCCFFCCECCCFCCCCC)) 
    \si_be[7]_i_4 
       (.I0(sr_awaddr[1]),
        .I1(Q[31]),
        .I2(sr_awaddr[2]),
        .I3(sr_awaddr[3]),
        .I4(Q[30]),
        .I5(Q[29]),
        .O(\si_be[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \si_be[8]_i_2 
       (.I0(\si_be[9]_i_4_n_0 ),
        .I1(\m_payload_i[62]_i_2_n_0 ),
        .I2(sr_awaddr[2]),
        .I3(sr_awaddr[3]),
        .I4(sr_awaddr[1]),
        .I5(sr_awaddr[0]),
        .O(\m_payload_i_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAABAAAAAA)) 
    \si_be[9]_i_2 
       (.I0(\si_be[9]_i_4_n_0 ),
        .I1(\m_payload_i[62]_i_2_n_0 ),
        .I2(sr_awaddr[2]),
        .I3(sr_awaddr[3]),
        .I4(sr_awaddr[0]),
        .I5(sr_awaddr[1]),
        .O(\m_payload_i_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hFAAAAAAAFBFAAAAA)) 
    \si_be[9]_i_4 
       (.I0(Q[31]),
        .I1(sr_awaddr[1]),
        .I2(Q[30]),
        .I3(Q[29]),
        .I4(sr_awaddr[3]),
        .I5(sr_awaddr[2]),
        .O(\si_be[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h0F88)) 
    \si_ptr[0]_i_1 
       (.I0(\si_ptr[0]_i_2_n_0 ),
        .I1(sr_awaddr[5]),
        .I2(\si_ptr_reg[0] ),
        .I3(\si_wrap_cnt_reg[0]_0 ),
        .O(\m_payload_i_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h3000383830000808)) 
    \si_ptr[0]_i_2 
       (.I0(s_axi_awlen_ii[1]),
        .I1(Q[31]),
        .I2(Q[30]),
        .I3(s_axi_awlen_ii[2]),
        .I4(Q[29]),
        .I5(s_axi_awlen_ii[3]),
        .O(\si_ptr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000008820000000)) 
    \si_ptr[1]_i_2 
       (.I0(sr_awaddr[6]),
        .I1(Q[31]),
        .I2(s_axi_awlen_ii[3]),
        .I3(Q[29]),
        .I4(Q[30]),
        .I5(s_axi_awlen_ii[2]),
        .O(\m_payload_i_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \si_ptr[2]_i_2 
       (.I0(Q[29]),
        .I1(Q[30]),
        .I2(s_axi_awlen_ii[3]),
        .I3(Q[31]),
        .O(\m_payload_i_reg[35]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEEEF)) 
    \si_wrap_be_next[0]_i_1 
       (.I0(\m_payload_i_reg[37]_1 [1]),
        .I1(s_axi_awlen_ii[3]),
        .I2(\si_wrap_be_next[8]_i_2_n_0 ),
        .I3(sr_awaddr[3]),
        .I4(Q[30]),
        .I5(Q[29]),
        .O(\m_payload_i_reg[37]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    \si_wrap_be_next[10]_i_1 
       (.I0(\m_payload_i_reg[37]_1 [11]),
        .I1(sr_awaddr[2]),
        .I2(sr_awaddr[3]),
        .I3(sr_awaddr[1]),
        .I4(\si_wrap_be_next[14]_i_2_n_0 ),
        .O(\m_payload_i_reg[37]_1 [10]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'hAAAABAAA)) 
    \si_wrap_be_next[11]_i_1 
       (.I0(Q[31]),
        .I1(s_axi_awlen_ii[1]),
        .I2(sr_awaddr[3]),
        .I3(Q[30]),
        .I4(Q[29]),
        .O(\m_payload_i_reg[37]_1 [11]));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \si_wrap_be_next[12]_i_1 
       (.I0(\m_payload_i_reg[37]_1 [13]),
        .I1(sr_awaddr[3]),
        .I2(sr_awaddr[2]),
        .I3(\si_wrap_be_next[12]_i_2_n_0 ),
        .O(\m_payload_i_reg[37]_1 [12]));
  LUT6 #(
    .INIT(64'h0001000000010001)) 
    \si_wrap_be_next[12]_i_2 
       (.I0(Q[29]),
        .I1(s_axi_awlen_ii[3]),
        .I2(Q[30]),
        .I3(s_axi_awlen_ii[2]),
        .I4(s_axi_awlen_ii[1]),
        .I5(sr_awaddr[1]),
        .O(\si_wrap_be_next[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \si_wrap_be_next[13]_i_1 
       (.I0(Q[31]),
        .I1(s_axi_awlen_ii[2]),
        .I2(sr_awaddr[3]),
        .I3(s_axi_awlen_ii[1]),
        .I4(\si_wrap_be_next[13]_i_2_n_0 ),
        .I5(sr_awaddr[2]),
        .O(\m_payload_i_reg[37]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \si_wrap_be_next[13]_i_2 
       (.I0(Q[29]),
        .I1(Q[30]),
        .O(\si_wrap_be_next[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \si_wrap_be_next[14]_i_1 
       (.I0(Q[31]),
        .I1(sr_awaddr[2]),
        .I2(sr_awaddr[3]),
        .I3(sr_awaddr[1]),
        .I4(\si_wrap_be_next[14]_i_2_n_0 ),
        .O(\m_payload_i_reg[37]_1 [14]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \si_wrap_be_next[14]_i_2 
       (.I0(s_axi_awlen_ii[1]),
        .I1(Q[29]),
        .I2(s_axi_awlen_ii[3]),
        .I3(Q[30]),
        .I4(s_axi_awlen_ii[2]),
        .O(\si_wrap_be_next[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBAA)) 
    \si_wrap_be_next[1]_i_1 
       (.I0(Q[31]),
        .I1(sr_awaddr[3]),
        .I2(s_axi_awlen_ii[1]),
        .I3(Q[30]),
        .I4(\si_wrap_be_next[1]_i_2_n_0 ),
        .O(\m_payload_i_reg[37]_1 [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA2022)) 
    \si_wrap_be_next[1]_i_2 
       (.I0(Q[29]),
        .I1(sr_awaddr[3]),
        .I2(s_axi_awlen_ii[1]),
        .I3(sr_awaddr[2]),
        .I4(Q[30]),
        .I5(s_axi_awlen_ii[2]),
        .O(\si_wrap_be_next[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'hAAAEAAAA)) 
    \si_wrap_be_next[2]_i_1 
       (.I0(\m_payload_i_reg[37]_1 [3]),
        .I1(sr_awaddr[1]),
        .I2(sr_awaddr[2]),
        .I3(sr_awaddr[3]),
        .I4(\si_wrap_be_next[14]_i_2_n_0 ),
        .O(\m_payload_i_reg[37]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'hFFEFCCCC)) 
    \si_wrap_be_next[3]_i_1 
       (.I0(Q[29]),
        .I1(Q[31]),
        .I2(sr_awaddr[3]),
        .I3(s_axi_awlen_ii[1]),
        .I4(Q[30]),
        .O(\m_payload_i_reg[37]_1 [3]));
  LUT6 #(
    .INIT(64'hFFFFFF00FF04FF00)) 
    \si_wrap_be_next[4]_i_1 
       (.I0(s_axi_awlen_ii[1]),
        .I1(Q[29]),
        .I2(s_axi_awlen_ii[2]),
        .I3(\m_payload_i_reg[37]_1 [7]),
        .I4(\si_wrap_be_next[4]_i_2_n_0 ),
        .I5(\si_wrap_be_next[12]_i_2_n_0 ),
        .O(\m_payload_i_reg[37]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \si_wrap_be_next[4]_i_2 
       (.I0(sr_awaddr[2]),
        .I1(sr_awaddr[3]),
        .O(\si_wrap_be_next[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAABAAAAAA)) 
    \si_wrap_be_next[5]_i_1 
       (.I0(\m_payload_i_reg[37]_1 [7]),
        .I1(s_axi_awlen_ii[2]),
        .I2(sr_awaddr[3]),
        .I3(sr_awaddr[2]),
        .I4(Q[29]),
        .I5(s_axi_awlen_ii[1]),
        .O(\m_payload_i_reg[37]_1 [5]));
  LUT6 #(
    .INIT(64'hEFEEEEEEEEEEEEEE)) 
    \si_wrap_be_next[6]_i_1 
       (.I0(\si_wrap_be_next[6]_i_2_n_0 ),
        .I1(Q[31]),
        .I2(sr_awaddr[3]),
        .I3(sr_awaddr[2]),
        .I4(sr_awaddr[1]),
        .I5(\si_wrap_be_next[14]_i_2_n_0 ),
        .O(\m_payload_i_reg[37]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \si_wrap_be_next[6]_i_2 
       (.I0(Q[30]),
        .I1(Q[29]),
        .O(\si_wrap_be_next[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \si_wrap_be_next[7]_i_1 
       (.I0(Q[31]),
        .I1(Q[29]),
        .I2(Q[30]),
        .O(\m_payload_i_reg[37]_1 [7]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \si_wrap_be_next[8]_i_1 
       (.I0(\m_payload_i_reg[37]_1 [9]),
        .I1(\si_wrap_be_next[8]_i_2_n_0 ),
        .I2(Q[30]),
        .I3(Q[29]),
        .I4(sr_awaddr[3]),
        .I5(s_axi_awlen_ii[3]),
        .O(\m_payload_i_reg[37]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h5504)) 
    \si_wrap_be_next[8]_i_2 
       (.I0(s_axi_awlen_ii[2]),
        .I1(sr_awaddr[1]),
        .I2(s_axi_awlen_ii[1]),
        .I3(sr_awaddr[2]),
        .O(\si_wrap_be_next[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABBAAAAAAAAAAAA)) 
    \si_wrap_be_next[9]_i_1 
       (.I0(\m_payload_i_reg[37]_1 [11]),
        .I1(s_axi_awlen_ii[2]),
        .I2(s_axi_awlen_ii[1]),
        .I3(sr_awaddr[2]),
        .I4(\si_wrap_be_next[13]_i_2_n_0 ),
        .I5(sr_awaddr[3]),
        .O(\m_payload_i_reg[37]_1 [9]));
  LUT5 #(
    .INIT(32'h47774744)) 
    \si_wrap_cnt[0]_i_1 
       (.I0(\si_wrap_cnt_reg[0]_1 ),
        .I1(\si_wrap_cnt_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[31]),
        .I4(\si_wrap_cnt[0]_i_2_n_0 ),
        .O(\si_wrap_cnt_reg[0] ));
  LUT6 #(
    .INIT(64'h30503F50305F3F5F)) 
    \si_wrap_cnt[0]_i_2 
       (.I0(sr_awaddr[2]),
        .I1(sr_awaddr[3]),
        .I2(Q[30]),
        .I3(Q[29]),
        .I4(sr_awaddr[1]),
        .I5(sr_awaddr[0]),
        .O(\si_wrap_cnt[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \si_wrap_cnt[1]_i_2 
       (.I0(s_axi_awlen_ii[1]),
        .I1(\si_wrap_cnt[1]_i_3_n_0 ),
        .I2(Q[31]),
        .I3(sr_awaddr[5]),
        .O(\m_payload_i_reg[45]_0 ));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \si_wrap_cnt[1]_i_3 
       (.I0(Q[0]),
        .I1(sr_awaddr[3]),
        .I2(sr_awaddr[1]),
        .I3(Q[29]),
        .I4(Q[30]),
        .I5(sr_awaddr[2]),
        .O(\si_wrap_cnt[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h08C8)) 
    \si_wrap_cnt[2]_i_2 
       (.I0(\si_wrap_cnt[2]_i_3_n_0 ),
        .I1(s_axi_awlen_ii[2]),
        .I2(Q[31]),
        .I3(sr_awaddr[6]),
        .O(\m_payload_i_reg[46]_0 ));
  LUT6 #(
    .INIT(64'h0305F30503F5F3F5)) 
    \si_wrap_cnt[2]_i_3 
       (.I0(sr_awaddr[2]),
        .I1(Q[0]),
        .I2(Q[29]),
        .I3(Q[30]),
        .I4(sr_awaddr[5]),
        .I5(sr_awaddr[3]),
        .O(\si_wrap_cnt[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5000530053005300)) 
    \si_wrap_cnt[3]_i_3 
       (.I0(Q[1]),
        .I1(\si_wrap_cnt[3]_i_4_n_0 ),
        .I2(Q[31]),
        .I3(s_axi_awlen_ii[3]),
        .I4(sr_awaddr[6]),
        .I5(\si_wrap_be_next[6]_i_2_n_0 ),
        .O(\m_payload_i_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h3B0B3808)) 
    \si_wrap_cnt[3]_i_4 
       (.I0(Q[0]),
        .I1(Q[29]),
        .I2(Q[30]),
        .I3(sr_awaddr[5]),
        .I4(sr_awaddr[3]),
        .O(\si_wrap_cnt[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000EFFF)) 
    \si_wrap_word_next[0]_i_1 
       (.I0(Q[31]),
        .I1(Q[30]),
        .I2(Q[29]),
        .I3(s_axi_awlen_ii[3]),
        .I4(\si_wrap_word_next[0]_i_2_n_0 ),
        .O(f_si_wrap_word_return));
  LUT6 #(
    .INIT(64'h000FCA00FFFFFFFF)) 
    \si_wrap_word_next[0]_i_2 
       (.I0(s_axi_awlen_ii[2]),
        .I1(s_axi_awlen_ii[1]),
        .I2(Q[29]),
        .I3(Q[30]),
        .I4(Q[31]),
        .I5(Q[0]),
        .O(\si_wrap_word_next[0]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "generic_baseblocks_v2_1_0_command_fifo" *) 
module design_1_auto_us_df_1_generic_baseblocks_v2_1_0_command_fifo
   (m_valid_i_reg_inv,
    cmd_push_block_reg,
    D,
    cmd_ready_i_reg,
    s_axi_aresetn,
    s_axi_bid,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ,
    out,
    m_axi_bvalid,
    s_axi_bready,
    cmd_push_block,
    E,
    m_valid_i_reg_inv_0,
    Q,
    \USE_WRITE.wr_cmd_ready ,
    \NO_CMD_QUEUE.cmd_cnt_reg[4] ,
    s_ready_i_reg,
    \USE_WRITE.m_axi_awready_i ,
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]_0 );
  output m_valid_i_reg_inv;
  output cmd_push_block_reg;
  output [3:0]D;
  output [0:0]cmd_ready_i_reg;
  output s_axi_aresetn;
  output [3:0]s_axi_bid;
  input \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ;
  input out;
  input m_axi_bvalid;
  input s_axi_bready;
  input cmd_push_block;
  input [0:0]E;
  input m_valid_i_reg_inv_0;
  input [4:0]Q;
  input \USE_WRITE.wr_cmd_ready ;
  input \NO_CMD_QUEUE.cmd_cnt_reg[4] ;
  input s_ready_i_reg;
  input \USE_WRITE.m_axi_awready_i ;
  input [3:0]\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]_0 ;

  wire [3:0]D;
  wire [0:0]E;
  wire M_READY_I;
  wire \NO_CMD_QUEUE.cmd_cnt[4]_i_4_n_0 ;
  wire \NO_CMD_QUEUE.cmd_cnt_reg[4] ;
  wire [4:0]Q;
  wire [3:0]\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]_0 ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ;
  wire \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0 ;
  wire \USE_RTL_ADDR.addr_q ;
  wire \USE_RTL_ADDR.addr_q[0]_i_1_n_0 ;
  wire \USE_RTL_ADDR.addr_q[1]_i_1_n_0 ;
  wire \USE_RTL_ADDR.addr_q[2]_i_1_n_0 ;
  wire \USE_RTL_ADDR.addr_q[3]_i_1_n_0 ;
  wire \USE_RTL_ADDR.addr_q[3]_i_2_n_0 ;
  wire \USE_RTL_ADDR.addr_q[4]_i_2_n_0 ;
  wire \USE_RTL_ADDR.addr_q[4]_i_3_n_0 ;
  wire [4:0]\USE_RTL_ADDR.addr_q_reg ;
  wire \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0 ;
  wire \USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0 ;
  wire \USE_RTL_VALID_WRITE.buffer_Full_q ;
  wire \USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0 ;
  wire \USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0 ;
  wire \USE_WRITE.m_axi_awready_i ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire cmd_push_block;
  wire cmd_push_block_reg;
  wire [0:0]cmd_ready_i_reg;
  wire data_Exists_I;
  wire data_Exists_I_i_2_n_0;
  wire m_axi_bvalid;
  wire m_valid_i_reg_inv;
  wire m_valid_i_reg_inv_0;
  wire next_Data_Exists;
  wire out;
  wire s_axi_aresetn;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire s_ready_i_reg;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][2]_srl32_Q31_UNCONNECTED ;
  wire \NLW_USE_RTL_FIFO.data_srl_reg[31][3]_srl32_Q31_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'hA659)) 
    \NO_CMD_QUEUE.cmd_cnt[1]_i_1 
       (.I0(Q[0]),
        .I1(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .I2(\USE_WRITE.wr_cmd_ready ),
        .I3(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'hBFF4400B)) 
    \NO_CMD_QUEUE.cmd_cnt[2]_i_1 
       (.I0(\USE_WRITE.wr_cmd_ready ),
        .I1(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hDFFFFFBA20000045)) 
    \NO_CMD_QUEUE.cmd_cnt[3]_i_1 
       (.I0(Q[1]),
        .I1(\USE_WRITE.wr_cmd_ready ),
        .I2(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h6666666266666666)) 
    \NO_CMD_QUEUE.cmd_cnt[4]_i_1 
       (.I0(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .I1(\USE_WRITE.wr_cmd_ready ),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\NO_CMD_QUEUE.cmd_cnt_reg[4] ),
        .O(cmd_ready_i_reg));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \NO_CMD_QUEUE.cmd_cnt[4]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(\NO_CMD_QUEUE.cmd_cnt[4]_i_4_n_0 ),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \NO_CMD_QUEUE.cmd_cnt[4]_i_4 
       (.I0(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .I1(\USE_WRITE.wr_cmd_ready ),
        .O(\NO_CMD_QUEUE.cmd_cnt[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'hE)) 
    S_AXI_WREADY_i_i_3
       (.I0(cmd_push_block_reg),
        .I1(E),
        .O(m_valid_i_reg_inv));
  LUT3 #(
    .INIT(8'h8F)) 
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[3]_i_1 
       (.I0(m_axi_bvalid),
        .I1(s_axi_bready),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0 ),
        .O(M_READY_I));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[0] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0 ),
        .Q(s_axi_bid[0]),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0 ),
        .Q(s_axi_bid[1]),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[2] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0 ),
        .Q(s_axi_bid[2]),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ));
  FDRE \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3] 
       (.C(out),
        .CE(M_READY_I),
        .D(\USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0 ),
        .Q(s_axi_bid[3]),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg 
       (.C(out),
        .CE(M_READY_I),
        .D(data_Exists_I),
        .Q(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0 ),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \USE_RTL_ADDR.addr_q[0]_i_1 
       (.I0(\USE_RTL_ADDR.addr_q_reg [0]),
        .O(\USE_RTL_ADDR.addr_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA666AAAA59995555)) 
    \USE_RTL_ADDR.addr_q[1]_i_1 
       (.I0(\USE_RTL_ADDR.addr_q_reg [0]),
        .I1(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .I2(m_axi_bvalid),
        .I3(s_axi_bready),
        .I4(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0 ),
        .I5(\USE_RTL_ADDR.addr_q_reg [1]),
        .O(\USE_RTL_ADDR.addr_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h7FF88007)) 
    \USE_RTL_ADDR.addr_q[2]_i_1 
       (.I0(\USE_RTL_ADDR.addr_q[3]_i_2_n_0 ),
        .I1(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .I2(\USE_RTL_ADDR.addr_q_reg [0]),
        .I3(\USE_RTL_ADDR.addr_q_reg [1]),
        .I4(\USE_RTL_ADDR.addr_q_reg [2]),
        .O(\USE_RTL_ADDR.addr_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFEEE80000111)) 
    \USE_RTL_ADDR.addr_q[3]_i_1 
       (.I0(\USE_RTL_ADDR.addr_q_reg [0]),
        .I1(\USE_RTL_ADDR.addr_q_reg [1]),
        .I2(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .I3(\USE_RTL_ADDR.addr_q[3]_i_2_n_0 ),
        .I4(\USE_RTL_ADDR.addr_q_reg [2]),
        .I5(\USE_RTL_ADDR.addr_q_reg [3]),
        .O(\USE_RTL_ADDR.addr_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \USE_RTL_ADDR.addr_q[3]_i_2 
       (.I0(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0 ),
        .I1(s_axi_bready),
        .I2(m_axi_bvalid),
        .O(\USE_RTL_ADDR.addr_q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00C0C0C088080808)) 
    \USE_RTL_ADDR.addr_q[4]_i_1 
       (.I0(data_Exists_I_i_2_n_0),
        .I1(data_Exists_I),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0 ),
        .I3(s_axi_bready),
        .I4(m_axi_bvalid),
        .I5(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .O(\USE_RTL_ADDR.addr_q ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \USE_RTL_ADDR.addr_q[4]_i_2 
       (.I0(\USE_RTL_ADDR.addr_q_reg [4]),
        .I1(\USE_RTL_ADDR.addr_q_reg [3]),
        .I2(\USE_RTL_ADDR.addr_q_reg [0]),
        .I3(\USE_RTL_ADDR.addr_q_reg [1]),
        .I4(\USE_RTL_ADDR.addr_q[4]_i_3_n_0 ),
        .I5(\USE_RTL_ADDR.addr_q_reg [2]),
        .O(\USE_RTL_ADDR.addr_q[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \USE_RTL_ADDR.addr_q[4]_i_3 
       (.I0(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .I1(m_axi_bvalid),
        .I2(s_axi_bready),
        .I3(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0 ),
        .O(\USE_RTL_ADDR.addr_q[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_ADDR.addr_q_reg[0] 
       (.C(out),
        .CE(\USE_RTL_ADDR.addr_q ),
        .D(\USE_RTL_ADDR.addr_q[0]_i_1_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg [0]),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_ADDR.addr_q_reg[1] 
       (.C(out),
        .CE(\USE_RTL_ADDR.addr_q ),
        .D(\USE_RTL_ADDR.addr_q[1]_i_1_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg [1]),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_ADDR.addr_q_reg[2] 
       (.C(out),
        .CE(\USE_RTL_ADDR.addr_q ),
        .D(\USE_RTL_ADDR.addr_q[2]_i_1_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg [2]),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_ADDR.addr_q_reg[3] 
       (.C(out),
        .CE(\USE_RTL_ADDR.addr_q ),
        .D(\USE_RTL_ADDR.addr_q[3]_i_1_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg [3]),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_ADDR.addr_q_reg[4] 
       (.C(out),
        .CE(\USE_RTL_ADDR.addr_q ),
        .D(\USE_RTL_ADDR.addr_q[4]_i_2_n_0 ),
        .Q(\USE_RTL_ADDR.addr_q_reg [4]),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][0]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .CLK(out),
        .D(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]_0 [0]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][0]_srl32_Q31_UNCONNECTED ));
  LUT2 #(
    .INIT(4'h1)) 
    \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1 
       (.I0(cmd_push_block),
        .I1(m_valid_i_reg_inv),
        .O(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][1]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .CLK(out),
        .D(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]_0 [1]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][2]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .CLK(out),
        .D(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]_0 [2]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][2]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31] " *) 
  (* srl_name = "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31][3]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \USE_RTL_FIFO.data_srl_reg[31][3]_srl32 
       (.A(\USE_RTL_ADDR.addr_q_reg ),
        .CE(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .CLK(out),
        .D(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]_0 [3]),
        .Q(\USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0 ),
        .Q31(\NLW_USE_RTL_FIFO.data_srl_reg[31][3]_srl32_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h7070FFFF70000000)) 
    \USE_RTL_VALID_WRITE.buffer_Full_q_i_1 
       (.I0(m_axi_bvalid),
        .I1(s_axi_bready),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0 ),
        .I3(\USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0 ),
        .I4(data_Exists_I),
        .I5(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .O(\USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \USE_RTL_VALID_WRITE.buffer_Full_q_i_2 
       (.I0(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .I1(\USE_RTL_ADDR.addr_q_reg [0]),
        .I2(\USE_RTL_ADDR.addr_q_reg [1]),
        .I3(\USE_RTL_ADDR.addr_q_reg [4]),
        .I4(\USE_RTL_ADDR.addr_q_reg [3]),
        .I5(\USE_RTL_ADDR.addr_q_reg [2]),
        .O(\USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_RTL_VALID_WRITE.buffer_Full_q_reg 
       (.C(out),
        .CE(1'b1),
        .D(\USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0 ),
        .Q(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFFFF007000)) 
    data_Exists_I_i_1
       (.I0(m_axi_bvalid),
        .I1(s_axi_bready),
        .I2(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0 ),
        .I3(data_Exists_I),
        .I4(data_Exists_I_i_2_n_0),
        .I5(\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0 ),
        .O(next_Data_Exists));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    data_Exists_I_i_2
       (.I0(\USE_RTL_ADDR.addr_q_reg [2]),
        .I1(\USE_RTL_ADDR.addr_q_reg [3]),
        .I2(\USE_RTL_ADDR.addr_q_reg [0]),
        .I3(\USE_RTL_ADDR.addr_q_reg [4]),
        .I4(\USE_RTL_ADDR.addr_q_reg [1]),
        .O(data_Exists_I_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_Exists_I_reg
       (.C(out),
        .CE(1'b1),
        .D(next_Data_Exists),
        .Q(data_Exists_I),
        .R(\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0 ));
  LUT6 #(
    .INIT(64'h5555555540000000)) 
    m_valid_i_inv_i_2
       (.I0(cmd_push_block),
        .I1(m_valid_i_reg_inv_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(\USE_RTL_VALID_WRITE.buffer_Full_q ),
        .O(cmd_push_block_reg));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_ready_i_i_2
       (.I0(cmd_push_block_reg),
        .I1(s_ready_i_reg),
        .I2(\USE_WRITE.m_axi_awready_i ),
        .O(s_axi_aresetn));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_us_df_1_xpm_cdc_async_rst
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

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module design_1_auto_us_df_1_blk_mem_gen_generic_cstr
   (doutb,
    clkb,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [287:0]doutb;
  input clkb;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [143:0]dina;
  input [31:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clkb;
  wire [143:0]dina;
  wire [287:0]doutb;
  wire ena;
  wire enb;
  wire [31:0]wea;

  design_1_auto_us_df_1_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clkb(clkb),
        .dina(dina[71:0]),
        .doutb(doutb[71:0]),
        .ena(ena),
        .enb(enb),
        .wea(wea[7:0]));
  design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clkb(clkb),
        .dina(dina[143:72]),
        .doutb(doutb[143:72]),
        .ena(ena),
        .enb(enb),
        .wea(wea[15:8]));
  design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clkb(clkb),
        .dina(dina[71:0]),
        .doutb(doutb[215:144]),
        .ena(ena),
        .enb(enb),
        .wea(wea[23:16]));
  design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clkb(clkb),
        .dina(dina[143:72]),
        .doutb(doutb[287:216]),
        .ena(ena),
        .enb(enb),
        .wea(wea[31:24]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_auto_us_df_1_blk_mem_gen_prim_width
   (doutb,
    clkb,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [71:0]doutb;
  input clkb;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [71:0]dina;
  input [7:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clkb;
  wire [71:0]dina;
  wire [71:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]wea;

  design_1_auto_us_df_1_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized0
   (doutb,
    clkb,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [71:0]doutb;
  input clkb;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [71:0]dina;
  input [7:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clkb;
  wire [71:0]dina;
  wire [71:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]wea;

  design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized0 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized1
   (doutb,
    clkb,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [71:0]doutb;
  input clkb;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [71:0]dina;
  input [7:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clkb;
  wire [71:0]dina;
  wire [71:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]wea;

  design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized1 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized2
   (doutb,
    clkb,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [71:0]doutb;
  input clkb;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [71:0]dina;
  input [7:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clkb;
  wire [71:0]dina;
  wire [71:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]wea;

  design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized2 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_auto_us_df_1_blk_mem_gen_prim_wrapper
   (doutb,
    clkb,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [71:0]doutb;
  input clkb;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [71:0]dina;
  input [7:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clkb;
  wire [71:0]dina;
  wire [71:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .SIM_COLLISION_CHECK("GENERATE_X_ONLY"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clkb),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIBDI({dina[70:63],dina[61:54],dina[52:45],dina[43:36]}),
        .DIPADIP({dina[35],dina[26],dina[17],dina[8]}),
        .DIPBDIP({dina[71],dina[62],dina[53],dina[44]}),
        .DOADO({doutb[34:27],doutb[25:18],doutb[16:9],doutb[7:0]}),
        .DOBDO({doutb[70:63],doutb[61:54],doutb[52:45],doutb[43:36]}),
        .DOPADOP({doutb[35],doutb[26],doutb[17],doutb[8]}),
        .DOPBDOP({doutb[71],doutb[62],doutb[53],doutb[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(enb),
        .ENBWREN(ena),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized0
   (doutb,
    clkb,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [71:0]doutb;
  input clkb;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [71:0]dina;
  input [7:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clkb;
  wire [71:0]dina;
  wire [71:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .SIM_COLLISION_CHECK("GENERATE_X_ONLY"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clkb),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIBDI({dina[70:63],dina[61:54],dina[52:45],dina[43:36]}),
        .DIPADIP({dina[35],dina[26],dina[17],dina[8]}),
        .DIPBDIP({dina[71],dina[62],dina[53],dina[44]}),
        .DOADO({doutb[34:27],doutb[25:18],doutb[16:9],doutb[7:0]}),
        .DOBDO({doutb[70:63],doutb[61:54],doutb[52:45],doutb[43:36]}),
        .DOPADOP({doutb[35],doutb[26],doutb[17],doutb[8]}),
        .DOPBDOP({doutb[71],doutb[62],doutb[53],doutb[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(enb),
        .ENBWREN(ena),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized1
   (doutb,
    clkb,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [71:0]doutb;
  input clkb;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [71:0]dina;
  input [7:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clkb;
  wire [71:0]dina;
  wire [71:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .SIM_COLLISION_CHECK("GENERATE_X_ONLY"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clkb),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIBDI({dina[70:63],dina[61:54],dina[52:45],dina[43:36]}),
        .DIPADIP({dina[35],dina[26],dina[17],dina[8]}),
        .DIPBDIP({dina[71],dina[62],dina[53],dina[44]}),
        .DOADO({doutb[34:27],doutb[25:18],doutb[16:9],doutb[7:0]}),
        .DOBDO({doutb[70:63],doutb[61:54],doutb[52:45],doutb[43:36]}),
        .DOPADOP({doutb[35],doutb[26],doutb[17],doutb[8]}),
        .DOPBDOP({doutb[71],doutb[62],doutb[53],doutb[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(enb),
        .ENBWREN(ena),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized2
   (doutb,
    clkb,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [71:0]doutb;
  input clkb;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [71:0]dina;
  input [7:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clkb;
  wire [71:0]dina;
  wire [71:0]doutb;
  wire ena;
  wire enb;
  wire [7:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .SIM_COLLISION_CHECK("GENERATE_X_ONLY"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clkb),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({dina[34:27],dina[25:18],dina[16:9],dina[7:0]}),
        .DIBDI({dina[70:63],dina[61:54],dina[52:45],dina[43:36]}),
        .DIPADIP({dina[35],dina[26],dina[17],dina[8]}),
        .DIPBDIP({dina[71],dina[62],dina[53],dina[44]}),
        .DOADO({doutb[34:27],doutb[25:18],doutb[16:9],doutb[7:0]}),
        .DOBDO({doutb[70:63],doutb[61:54],doutb[52:45],doutb[43:36]}),
        .DOPADOP({doutb[35],doutb[26],doutb[17],doutb[8]}),
        .DOPBDOP({doutb[71],doutb[62],doutb[53],doutb[44]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(enb),
        .ENBWREN(ena),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module design_1_auto_us_df_1_blk_mem_gen_top
   (doutb,
    clkb,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [287:0]doutb;
  input clkb;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [143:0]dina;
  input [31:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clkb;
  wire [143:0]dina;
  wire [287:0]doutb;
  wire ena;
  wire enb;
  wire [31:0]wea;

  design_1_auto_us_df_1_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "9" *) (* C_ADDRB_WIDTH = "9" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "" *) 
(* C_COUNT_36K_BRAM = "" *) (* C_CTRL_ECC_ALGO = "ECCHSIAO32-7" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "1" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "1" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "1" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "BlankString" *) 
(* C_INIT_FILE_NAME = "BlankString" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "0" *) 
(* C_MEM_TYPE = "1" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "512" *) (* C_READ_DEPTH_B = "512" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "288" *) (* C_READ_WIDTH_B = "288" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "GENERATE_X_ONLY" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "1" *) (* C_USE_BYTE_WEB = "1" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "32" *) (* C_WEB_WIDTH = "32" *) (* C_WRITE_DEPTH_A = "512" *) 
(* C_WRITE_DEPTH_B = "512" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "288" *) (* C_WRITE_WIDTH_B = "288" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_4" *) 
module design_1_auto_us_df_1_blk_mem_gen_v8_4_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
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
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [31:0]wea;
  input [8:0]addra;
  input [287:0]dina;
  output [287:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [31:0]web;
  input [8:0]addrb;
  input [287:0]dinb;
  output [287:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [8:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [287:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [287:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [8:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [8:0]addra;
  wire [8:0]addrb;
  wire clkb;
  wire [287:0]dina;
  wire [287:0]doutb;
  wire ena;
  wire enb;
  wire [31:0]wea;

  assign dbiterr = \<const0> ;
  assign douta[287] = \<const0> ;
  assign douta[286] = \<const0> ;
  assign douta[285] = \<const0> ;
  assign douta[284] = \<const0> ;
  assign douta[283] = \<const0> ;
  assign douta[282] = \<const0> ;
  assign douta[281] = \<const0> ;
  assign douta[280] = \<const0> ;
  assign douta[279] = \<const0> ;
  assign douta[278] = \<const0> ;
  assign douta[277] = \<const0> ;
  assign douta[276] = \<const0> ;
  assign douta[275] = \<const0> ;
  assign douta[274] = \<const0> ;
  assign douta[273] = \<const0> ;
  assign douta[272] = \<const0> ;
  assign douta[271] = \<const0> ;
  assign douta[270] = \<const0> ;
  assign douta[269] = \<const0> ;
  assign douta[268] = \<const0> ;
  assign douta[267] = \<const0> ;
  assign douta[266] = \<const0> ;
  assign douta[265] = \<const0> ;
  assign douta[264] = \<const0> ;
  assign douta[263] = \<const0> ;
  assign douta[262] = \<const0> ;
  assign douta[261] = \<const0> ;
  assign douta[260] = \<const0> ;
  assign douta[259] = \<const0> ;
  assign douta[258] = \<const0> ;
  assign douta[257] = \<const0> ;
  assign douta[256] = \<const0> ;
  assign douta[255] = \<const0> ;
  assign douta[254] = \<const0> ;
  assign douta[253] = \<const0> ;
  assign douta[252] = \<const0> ;
  assign douta[251] = \<const0> ;
  assign douta[250] = \<const0> ;
  assign douta[249] = \<const0> ;
  assign douta[248] = \<const0> ;
  assign douta[247] = \<const0> ;
  assign douta[246] = \<const0> ;
  assign douta[245] = \<const0> ;
  assign douta[244] = \<const0> ;
  assign douta[243] = \<const0> ;
  assign douta[242] = \<const0> ;
  assign douta[241] = \<const0> ;
  assign douta[240] = \<const0> ;
  assign douta[239] = \<const0> ;
  assign douta[238] = \<const0> ;
  assign douta[237] = \<const0> ;
  assign douta[236] = \<const0> ;
  assign douta[235] = \<const0> ;
  assign douta[234] = \<const0> ;
  assign douta[233] = \<const0> ;
  assign douta[232] = \<const0> ;
  assign douta[231] = \<const0> ;
  assign douta[230] = \<const0> ;
  assign douta[229] = \<const0> ;
  assign douta[228] = \<const0> ;
  assign douta[227] = \<const0> ;
  assign douta[226] = \<const0> ;
  assign douta[225] = \<const0> ;
  assign douta[224] = \<const0> ;
  assign douta[223] = \<const0> ;
  assign douta[222] = \<const0> ;
  assign douta[221] = \<const0> ;
  assign douta[220] = \<const0> ;
  assign douta[219] = \<const0> ;
  assign douta[218] = \<const0> ;
  assign douta[217] = \<const0> ;
  assign douta[216] = \<const0> ;
  assign douta[215] = \<const0> ;
  assign douta[214] = \<const0> ;
  assign douta[213] = \<const0> ;
  assign douta[212] = \<const0> ;
  assign douta[211] = \<const0> ;
  assign douta[210] = \<const0> ;
  assign douta[209] = \<const0> ;
  assign douta[208] = \<const0> ;
  assign douta[207] = \<const0> ;
  assign douta[206] = \<const0> ;
  assign douta[205] = \<const0> ;
  assign douta[204] = \<const0> ;
  assign douta[203] = \<const0> ;
  assign douta[202] = \<const0> ;
  assign douta[201] = \<const0> ;
  assign douta[200] = \<const0> ;
  assign douta[199] = \<const0> ;
  assign douta[198] = \<const0> ;
  assign douta[197] = \<const0> ;
  assign douta[196] = \<const0> ;
  assign douta[195] = \<const0> ;
  assign douta[194] = \<const0> ;
  assign douta[193] = \<const0> ;
  assign douta[192] = \<const0> ;
  assign douta[191] = \<const0> ;
  assign douta[190] = \<const0> ;
  assign douta[189] = \<const0> ;
  assign douta[188] = \<const0> ;
  assign douta[187] = \<const0> ;
  assign douta[186] = \<const0> ;
  assign douta[185] = \<const0> ;
  assign douta[184] = \<const0> ;
  assign douta[183] = \<const0> ;
  assign douta[182] = \<const0> ;
  assign douta[181] = \<const0> ;
  assign douta[180] = \<const0> ;
  assign douta[179] = \<const0> ;
  assign douta[178] = \<const0> ;
  assign douta[177] = \<const0> ;
  assign douta[176] = \<const0> ;
  assign douta[175] = \<const0> ;
  assign douta[174] = \<const0> ;
  assign douta[173] = \<const0> ;
  assign douta[172] = \<const0> ;
  assign douta[171] = \<const0> ;
  assign douta[170] = \<const0> ;
  assign douta[169] = \<const0> ;
  assign douta[168] = \<const0> ;
  assign douta[167] = \<const0> ;
  assign douta[166] = \<const0> ;
  assign douta[165] = \<const0> ;
  assign douta[164] = \<const0> ;
  assign douta[163] = \<const0> ;
  assign douta[162] = \<const0> ;
  assign douta[161] = \<const0> ;
  assign douta[160] = \<const0> ;
  assign douta[159] = \<const0> ;
  assign douta[158] = \<const0> ;
  assign douta[157] = \<const0> ;
  assign douta[156] = \<const0> ;
  assign douta[155] = \<const0> ;
  assign douta[154] = \<const0> ;
  assign douta[153] = \<const0> ;
  assign douta[152] = \<const0> ;
  assign douta[151] = \<const0> ;
  assign douta[150] = \<const0> ;
  assign douta[149] = \<const0> ;
  assign douta[148] = \<const0> ;
  assign douta[147] = \<const0> ;
  assign douta[146] = \<const0> ;
  assign douta[145] = \<const0> ;
  assign douta[144] = \<const0> ;
  assign douta[143] = \<const0> ;
  assign douta[142] = \<const0> ;
  assign douta[141] = \<const0> ;
  assign douta[140] = \<const0> ;
  assign douta[139] = \<const0> ;
  assign douta[138] = \<const0> ;
  assign douta[137] = \<const0> ;
  assign douta[136] = \<const0> ;
  assign douta[135] = \<const0> ;
  assign douta[134] = \<const0> ;
  assign douta[133] = \<const0> ;
  assign douta[132] = \<const0> ;
  assign douta[131] = \<const0> ;
  assign douta[130] = \<const0> ;
  assign douta[129] = \<const0> ;
  assign douta[128] = \<const0> ;
  assign douta[127] = \<const0> ;
  assign douta[126] = \<const0> ;
  assign douta[125] = \<const0> ;
  assign douta[124] = \<const0> ;
  assign douta[123] = \<const0> ;
  assign douta[122] = \<const0> ;
  assign douta[121] = \<const0> ;
  assign douta[120] = \<const0> ;
  assign douta[119] = \<const0> ;
  assign douta[118] = \<const0> ;
  assign douta[117] = \<const0> ;
  assign douta[116] = \<const0> ;
  assign douta[115] = \<const0> ;
  assign douta[114] = \<const0> ;
  assign douta[113] = \<const0> ;
  assign douta[112] = \<const0> ;
  assign douta[111] = \<const0> ;
  assign douta[110] = \<const0> ;
  assign douta[109] = \<const0> ;
  assign douta[108] = \<const0> ;
  assign douta[107] = \<const0> ;
  assign douta[106] = \<const0> ;
  assign douta[105] = \<const0> ;
  assign douta[104] = \<const0> ;
  assign douta[103] = \<const0> ;
  assign douta[102] = \<const0> ;
  assign douta[101] = \<const0> ;
  assign douta[100] = \<const0> ;
  assign douta[99] = \<const0> ;
  assign douta[98] = \<const0> ;
  assign douta[97] = \<const0> ;
  assign douta[96] = \<const0> ;
  assign douta[95] = \<const0> ;
  assign douta[94] = \<const0> ;
  assign douta[93] = \<const0> ;
  assign douta[92] = \<const0> ;
  assign douta[91] = \<const0> ;
  assign douta[90] = \<const0> ;
  assign douta[89] = \<const0> ;
  assign douta[88] = \<const0> ;
  assign douta[87] = \<const0> ;
  assign douta[86] = \<const0> ;
  assign douta[85] = \<const0> ;
  assign douta[84] = \<const0> ;
  assign douta[83] = \<const0> ;
  assign douta[82] = \<const0> ;
  assign douta[81] = \<const0> ;
  assign douta[80] = \<const0> ;
  assign douta[79] = \<const0> ;
  assign douta[78] = \<const0> ;
  assign douta[77] = \<const0> ;
  assign douta[76] = \<const0> ;
  assign douta[75] = \<const0> ;
  assign douta[74] = \<const0> ;
  assign douta[73] = \<const0> ;
  assign douta[72] = \<const0> ;
  assign douta[71] = \<const0> ;
  assign douta[70] = \<const0> ;
  assign douta[69] = \<const0> ;
  assign douta[68] = \<const0> ;
  assign douta[67] = \<const0> ;
  assign douta[66] = \<const0> ;
  assign douta[65] = \<const0> ;
  assign douta[64] = \<const0> ;
  assign douta[63] = \<const0> ;
  assign douta[62] = \<const0> ;
  assign douta[61] = \<const0> ;
  assign douta[60] = \<const0> ;
  assign douta[59] = \<const0> ;
  assign douta[58] = \<const0> ;
  assign douta[57] = \<const0> ;
  assign douta[56] = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[287] = \<const0> ;
  assign s_axi_rdata[286] = \<const0> ;
  assign s_axi_rdata[285] = \<const0> ;
  assign s_axi_rdata[284] = \<const0> ;
  assign s_axi_rdata[283] = \<const0> ;
  assign s_axi_rdata[282] = \<const0> ;
  assign s_axi_rdata[281] = \<const0> ;
  assign s_axi_rdata[280] = \<const0> ;
  assign s_axi_rdata[279] = \<const0> ;
  assign s_axi_rdata[278] = \<const0> ;
  assign s_axi_rdata[277] = \<const0> ;
  assign s_axi_rdata[276] = \<const0> ;
  assign s_axi_rdata[275] = \<const0> ;
  assign s_axi_rdata[274] = \<const0> ;
  assign s_axi_rdata[273] = \<const0> ;
  assign s_axi_rdata[272] = \<const0> ;
  assign s_axi_rdata[271] = \<const0> ;
  assign s_axi_rdata[270] = \<const0> ;
  assign s_axi_rdata[269] = \<const0> ;
  assign s_axi_rdata[268] = \<const0> ;
  assign s_axi_rdata[267] = \<const0> ;
  assign s_axi_rdata[266] = \<const0> ;
  assign s_axi_rdata[265] = \<const0> ;
  assign s_axi_rdata[264] = \<const0> ;
  assign s_axi_rdata[263] = \<const0> ;
  assign s_axi_rdata[262] = \<const0> ;
  assign s_axi_rdata[261] = \<const0> ;
  assign s_axi_rdata[260] = \<const0> ;
  assign s_axi_rdata[259] = \<const0> ;
  assign s_axi_rdata[258] = \<const0> ;
  assign s_axi_rdata[257] = \<const0> ;
  assign s_axi_rdata[256] = \<const0> ;
  assign s_axi_rdata[255] = \<const0> ;
  assign s_axi_rdata[254] = \<const0> ;
  assign s_axi_rdata[253] = \<const0> ;
  assign s_axi_rdata[252] = \<const0> ;
  assign s_axi_rdata[251] = \<const0> ;
  assign s_axi_rdata[250] = \<const0> ;
  assign s_axi_rdata[249] = \<const0> ;
  assign s_axi_rdata[248] = \<const0> ;
  assign s_axi_rdata[247] = \<const0> ;
  assign s_axi_rdata[246] = \<const0> ;
  assign s_axi_rdata[245] = \<const0> ;
  assign s_axi_rdata[244] = \<const0> ;
  assign s_axi_rdata[243] = \<const0> ;
  assign s_axi_rdata[242] = \<const0> ;
  assign s_axi_rdata[241] = \<const0> ;
  assign s_axi_rdata[240] = \<const0> ;
  assign s_axi_rdata[239] = \<const0> ;
  assign s_axi_rdata[238] = \<const0> ;
  assign s_axi_rdata[237] = \<const0> ;
  assign s_axi_rdata[236] = \<const0> ;
  assign s_axi_rdata[235] = \<const0> ;
  assign s_axi_rdata[234] = \<const0> ;
  assign s_axi_rdata[233] = \<const0> ;
  assign s_axi_rdata[232] = \<const0> ;
  assign s_axi_rdata[231] = \<const0> ;
  assign s_axi_rdata[230] = \<const0> ;
  assign s_axi_rdata[229] = \<const0> ;
  assign s_axi_rdata[228] = \<const0> ;
  assign s_axi_rdata[227] = \<const0> ;
  assign s_axi_rdata[226] = \<const0> ;
  assign s_axi_rdata[225] = \<const0> ;
  assign s_axi_rdata[224] = \<const0> ;
  assign s_axi_rdata[223] = \<const0> ;
  assign s_axi_rdata[222] = \<const0> ;
  assign s_axi_rdata[221] = \<const0> ;
  assign s_axi_rdata[220] = \<const0> ;
  assign s_axi_rdata[219] = \<const0> ;
  assign s_axi_rdata[218] = \<const0> ;
  assign s_axi_rdata[217] = \<const0> ;
  assign s_axi_rdata[216] = \<const0> ;
  assign s_axi_rdata[215] = \<const0> ;
  assign s_axi_rdata[214] = \<const0> ;
  assign s_axi_rdata[213] = \<const0> ;
  assign s_axi_rdata[212] = \<const0> ;
  assign s_axi_rdata[211] = \<const0> ;
  assign s_axi_rdata[210] = \<const0> ;
  assign s_axi_rdata[209] = \<const0> ;
  assign s_axi_rdata[208] = \<const0> ;
  assign s_axi_rdata[207] = \<const0> ;
  assign s_axi_rdata[206] = \<const0> ;
  assign s_axi_rdata[205] = \<const0> ;
  assign s_axi_rdata[204] = \<const0> ;
  assign s_axi_rdata[203] = \<const0> ;
  assign s_axi_rdata[202] = \<const0> ;
  assign s_axi_rdata[201] = \<const0> ;
  assign s_axi_rdata[200] = \<const0> ;
  assign s_axi_rdata[199] = \<const0> ;
  assign s_axi_rdata[198] = \<const0> ;
  assign s_axi_rdata[197] = \<const0> ;
  assign s_axi_rdata[196] = \<const0> ;
  assign s_axi_rdata[195] = \<const0> ;
  assign s_axi_rdata[194] = \<const0> ;
  assign s_axi_rdata[193] = \<const0> ;
  assign s_axi_rdata[192] = \<const0> ;
  assign s_axi_rdata[191] = \<const0> ;
  assign s_axi_rdata[190] = \<const0> ;
  assign s_axi_rdata[189] = \<const0> ;
  assign s_axi_rdata[188] = \<const0> ;
  assign s_axi_rdata[187] = \<const0> ;
  assign s_axi_rdata[186] = \<const0> ;
  assign s_axi_rdata[185] = \<const0> ;
  assign s_axi_rdata[184] = \<const0> ;
  assign s_axi_rdata[183] = \<const0> ;
  assign s_axi_rdata[182] = \<const0> ;
  assign s_axi_rdata[181] = \<const0> ;
  assign s_axi_rdata[180] = \<const0> ;
  assign s_axi_rdata[179] = \<const0> ;
  assign s_axi_rdata[178] = \<const0> ;
  assign s_axi_rdata[177] = \<const0> ;
  assign s_axi_rdata[176] = \<const0> ;
  assign s_axi_rdata[175] = \<const0> ;
  assign s_axi_rdata[174] = \<const0> ;
  assign s_axi_rdata[173] = \<const0> ;
  assign s_axi_rdata[172] = \<const0> ;
  assign s_axi_rdata[171] = \<const0> ;
  assign s_axi_rdata[170] = \<const0> ;
  assign s_axi_rdata[169] = \<const0> ;
  assign s_axi_rdata[168] = \<const0> ;
  assign s_axi_rdata[167] = \<const0> ;
  assign s_axi_rdata[166] = \<const0> ;
  assign s_axi_rdata[165] = \<const0> ;
  assign s_axi_rdata[164] = \<const0> ;
  assign s_axi_rdata[163] = \<const0> ;
  assign s_axi_rdata[162] = \<const0> ;
  assign s_axi_rdata[161] = \<const0> ;
  assign s_axi_rdata[160] = \<const0> ;
  assign s_axi_rdata[159] = \<const0> ;
  assign s_axi_rdata[158] = \<const0> ;
  assign s_axi_rdata[157] = \<const0> ;
  assign s_axi_rdata[156] = \<const0> ;
  assign s_axi_rdata[155] = \<const0> ;
  assign s_axi_rdata[154] = \<const0> ;
  assign s_axi_rdata[153] = \<const0> ;
  assign s_axi_rdata[152] = \<const0> ;
  assign s_axi_rdata[151] = \<const0> ;
  assign s_axi_rdata[150] = \<const0> ;
  assign s_axi_rdata[149] = \<const0> ;
  assign s_axi_rdata[148] = \<const0> ;
  assign s_axi_rdata[147] = \<const0> ;
  assign s_axi_rdata[146] = \<const0> ;
  assign s_axi_rdata[145] = \<const0> ;
  assign s_axi_rdata[144] = \<const0> ;
  assign s_axi_rdata[143] = \<const0> ;
  assign s_axi_rdata[142] = \<const0> ;
  assign s_axi_rdata[141] = \<const0> ;
  assign s_axi_rdata[140] = \<const0> ;
  assign s_axi_rdata[139] = \<const0> ;
  assign s_axi_rdata[138] = \<const0> ;
  assign s_axi_rdata[137] = \<const0> ;
  assign s_axi_rdata[136] = \<const0> ;
  assign s_axi_rdata[135] = \<const0> ;
  assign s_axi_rdata[134] = \<const0> ;
  assign s_axi_rdata[133] = \<const0> ;
  assign s_axi_rdata[132] = \<const0> ;
  assign s_axi_rdata[131] = \<const0> ;
  assign s_axi_rdata[130] = \<const0> ;
  assign s_axi_rdata[129] = \<const0> ;
  assign s_axi_rdata[128] = \<const0> ;
  assign s_axi_rdata[127] = \<const0> ;
  assign s_axi_rdata[126] = \<const0> ;
  assign s_axi_rdata[125] = \<const0> ;
  assign s_axi_rdata[124] = \<const0> ;
  assign s_axi_rdata[123] = \<const0> ;
  assign s_axi_rdata[122] = \<const0> ;
  assign s_axi_rdata[121] = \<const0> ;
  assign s_axi_rdata[120] = \<const0> ;
  assign s_axi_rdata[119] = \<const0> ;
  assign s_axi_rdata[118] = \<const0> ;
  assign s_axi_rdata[117] = \<const0> ;
  assign s_axi_rdata[116] = \<const0> ;
  assign s_axi_rdata[115] = \<const0> ;
  assign s_axi_rdata[114] = \<const0> ;
  assign s_axi_rdata[113] = \<const0> ;
  assign s_axi_rdata[112] = \<const0> ;
  assign s_axi_rdata[111] = \<const0> ;
  assign s_axi_rdata[110] = \<const0> ;
  assign s_axi_rdata[109] = \<const0> ;
  assign s_axi_rdata[108] = \<const0> ;
  assign s_axi_rdata[107] = \<const0> ;
  assign s_axi_rdata[106] = \<const0> ;
  assign s_axi_rdata[105] = \<const0> ;
  assign s_axi_rdata[104] = \<const0> ;
  assign s_axi_rdata[103] = \<const0> ;
  assign s_axi_rdata[102] = \<const0> ;
  assign s_axi_rdata[101] = \<const0> ;
  assign s_axi_rdata[100] = \<const0> ;
  assign s_axi_rdata[99] = \<const0> ;
  assign s_axi_rdata[98] = \<const0> ;
  assign s_axi_rdata[97] = \<const0> ;
  assign s_axi_rdata[96] = \<const0> ;
  assign s_axi_rdata[95] = \<const0> ;
  assign s_axi_rdata[94] = \<const0> ;
  assign s_axi_rdata[93] = \<const0> ;
  assign s_axi_rdata[92] = \<const0> ;
  assign s_axi_rdata[91] = \<const0> ;
  assign s_axi_rdata[90] = \<const0> ;
  assign s_axi_rdata[89] = \<const0> ;
  assign s_axi_rdata[88] = \<const0> ;
  assign s_axi_rdata[87] = \<const0> ;
  assign s_axi_rdata[86] = \<const0> ;
  assign s_axi_rdata[85] = \<const0> ;
  assign s_axi_rdata[84] = \<const0> ;
  assign s_axi_rdata[83] = \<const0> ;
  assign s_axi_rdata[82] = \<const0> ;
  assign s_axi_rdata[81] = \<const0> ;
  assign s_axi_rdata[80] = \<const0> ;
  assign s_axi_rdata[79] = \<const0> ;
  assign s_axi_rdata[78] = \<const0> ;
  assign s_axi_rdata[77] = \<const0> ;
  assign s_axi_rdata[76] = \<const0> ;
  assign s_axi_rdata[75] = \<const0> ;
  assign s_axi_rdata[74] = \<const0> ;
  assign s_axi_rdata[73] = \<const0> ;
  assign s_axi_rdata[72] = \<const0> ;
  assign s_axi_rdata[71] = \<const0> ;
  assign s_axi_rdata[70] = \<const0> ;
  assign s_axi_rdata[69] = \<const0> ;
  assign s_axi_rdata[68] = \<const0> ;
  assign s_axi_rdata[67] = \<const0> ;
  assign s_axi_rdata[66] = \<const0> ;
  assign s_axi_rdata[65] = \<const0> ;
  assign s_axi_rdata[64] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_us_df_1_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clkb(clkb),
        .dina(dina[287:144]),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4_synth" *) 
module design_1_auto_us_df_1_blk_mem_gen_v8_4_4_synth
   (doutb,
    clkb,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [287:0]doutb;
  input clkb;
  input enb;
  input ena;
  input [8:0]addrb;
  input [8:0]addra;
  input [143:0]dina;
  input [31:0]wea;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clkb;
  wire [143:0]dina;
  wire [287:0]doutb;
  wire ena;
  wire enb;
  wire [31:0]wea;

  design_1_auto_us_df_1_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module design_1_auto_us_df_1_dmem
   (dout_i,
    s_aclk,
    \goreg_dm.dout_i_reg[1] ,
    DI,
    \goreg_dm.dout_i_reg[1]_0 ,
    Q);
  output [65:0]dout_i;
  input s_aclk;
  input [0:0]\goreg_dm.dout_i_reg[1] ;
  input [65:0]DI;
  input [4:0]\goreg_dm.dout_i_reg[1]_0 ;
  input [4:0]Q;

  wire [65:0]DI;
  wire [4:0]Q;
  wire [65:0]dout_i;
  wire [0:0]\goreg_dm.dout_i_reg[1] ;
  wire [4:0]\goreg_dm.dout_i_reg[1]_0 ;
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
  wire [1:0]NLW_RAM_reg_0_31_60_65_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2112" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M RAM_reg_0_31_0_5
       (.ADDRA(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRB(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRC(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRD(Q),
        .DIA(DI[1:0]),
        .DIB(DI[3:2]),
        .DIC(DI[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i[1:0]),
        .DOB(dout_i[3:2]),
        .DOC(dout_i[5:4]),
        .DOD(NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\goreg_dm.dout_i_reg[1] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2112" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M RAM_reg_0_31_12_17
       (.ADDRA(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRB(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRC(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRD(Q),
        .DIA(DI[13:12]),
        .DIB(DI[15:14]),
        .DIC(DI[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i[13:12]),
        .DOB(dout_i[15:14]),
        .DOC(dout_i[17:16]),
        .DOD(NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\goreg_dm.dout_i_reg[1] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2112" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M RAM_reg_0_31_18_23
       (.ADDRA(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRB(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRC(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRD(Q),
        .DIA(DI[19:18]),
        .DIB(DI[21:20]),
        .DIC(DI[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i[19:18]),
        .DOB(dout_i[21:20]),
        .DOC(dout_i[23:22]),
        .DOD(NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\goreg_dm.dout_i_reg[1] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2112" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M RAM_reg_0_31_24_29
       (.ADDRA(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRB(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRC(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRD(Q),
        .DIA(DI[25:24]),
        .DIB(DI[27:26]),
        .DIC(DI[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i[25:24]),
        .DOB(dout_i[27:26]),
        .DOC(dout_i[29:28]),
        .DOD(NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\goreg_dm.dout_i_reg[1] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2112" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "35" *) 
  RAM32M RAM_reg_0_31_30_35
       (.ADDRA(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRB(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRC(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRD(Q),
        .DIA(DI[31:30]),
        .DIB(DI[33:32]),
        .DIC(DI[35:34]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i[31:30]),
        .DOB(dout_i[33:32]),
        .DOC(dout_i[35:34]),
        .DOD(NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\goreg_dm.dout_i_reg[1] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2112" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "41" *) 
  RAM32M RAM_reg_0_31_36_41
       (.ADDRA(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRB(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRC(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRD(Q),
        .DIA(DI[37:36]),
        .DIB(DI[39:38]),
        .DIC(DI[41:40]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i[37:36]),
        .DOB(dout_i[39:38]),
        .DOC(dout_i[41:40]),
        .DOD(NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\goreg_dm.dout_i_reg[1] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2112" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "47" *) 
  RAM32M RAM_reg_0_31_42_47
       (.ADDRA(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRB(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRC(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRD(Q),
        .DIA(DI[43:42]),
        .DIB(DI[45:44]),
        .DIC(DI[47:46]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i[43:42]),
        .DOB(dout_i[45:44]),
        .DOC(dout_i[47:46]),
        .DOD(NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\goreg_dm.dout_i_reg[1] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2112" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "53" *) 
  RAM32M RAM_reg_0_31_48_53
       (.ADDRA(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRB(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRC(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRD(Q),
        .DIA(DI[49:48]),
        .DIB(DI[51:50]),
        .DIC(DI[53:52]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i[49:48]),
        .DOB(dout_i[51:50]),
        .DOC(dout_i[53:52]),
        .DOD(NLW_RAM_reg_0_31_48_53_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\goreg_dm.dout_i_reg[1] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2112" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "59" *) 
  RAM32M RAM_reg_0_31_54_59
       (.ADDRA(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRB(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRC(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRD(Q),
        .DIA(DI[55:54]),
        .DIB(DI[57:56]),
        .DIC(DI[59:58]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i[55:54]),
        .DOB(dout_i[57:56]),
        .DOC(dout_i[59:58]),
        .DOD(NLW_RAM_reg_0_31_54_59_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\goreg_dm.dout_i_reg[1] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2112" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "65" *) 
  RAM32M RAM_reg_0_31_60_65
       (.ADDRA(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRB(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRC(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRD(Q),
        .DIA(DI[61:60]),
        .DIB(DI[63:62]),
        .DIC(DI[65:64]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i[61:60]),
        .DOB(dout_i[63:62]),
        .DOC(dout_i[65:64]),
        .DOD(NLW_RAM_reg_0_31_60_65_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\goreg_dm.dout_i_reg[1] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2112" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M RAM_reg_0_31_6_11
       (.ADDRA(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRB(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRC(\goreg_dm.dout_i_reg[1]_0 ),
        .ADDRD(Q),
        .DIA(DI[7:6]),
        .DIB(DI[9:8]),
        .DIC(DI[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(dout_i[7:6]),
        .DOB(dout_i[9:8]),
        .DOC(dout_i[11:10]),
        .DOD(NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(\goreg_dm.dout_i_reg[1] ));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_auto_us_df_1_fifo_generator_ramfifo
   (s_axi_awready,
    m_axi_awvalid,
    dout_i0_out,
    src_arst,
    s_aclk,
    m_axi_awready,
    DI,
    s_axi_awvalid);
  output s_axi_awready;
  output m_axi_awvalid;
  output [65:0]dout_i0_out;
  input src_arst;
  input s_aclk;
  input m_axi_awready;
  input [65:0]DI;
  input s_axi_awvalid;

  wire [65:0]DI;
  wire dout_i0;
  wire [65:0]dout_i0_out;
  wire empty_fb_i;
  wire \gntv_or_sync_fifo.gl0.rd_n_1 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_1 ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire ram_wr_en;
  wire [4:0]rd_pntr;
  wire [4:0]rd_pntr_plus1;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_2;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire src_arst;
  wire [4:0]wr_pntr;

  design_1_auto_us_df_1_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.E(\gntv_or_sync_fifo.gl0.rd_n_1 ),
        .Q(rd_pntr_plus1),
        .\gc0.count_d1_reg[4] (rd_pntr),
        .\gc0.count_d1_reg[4]_0 (rstblk_n_2),
        .\gpregsm2.curr_fwft_state_reg[0] (dout_i0),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .out(empty_fb_i),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .s_aclk(s_aclk));
  design_1_auto_us_df_1_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AR(rstblk_n_2),
        .E(\gntv_or_sync_fifo.gl0.rd_n_1 ),
        .Q(wr_pntr),
        .out(rst_full_ff_i),
        .ram_empty_fb_i_i_2(rd_pntr_plus1),
        .ram_empty_fb_i_i_3(rd_pntr),
        .ram_empty_i_reg(empty_fb_i),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .ram_full_fb_i_reg_0(ram_wr_en),
        .ram_full_fb_i_reg_1(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
  design_1_auto_us_df_1_memory \gntv_or_sync_fifo.mem 
       (.DI(DI),
        .E(dout_i0),
        .Q(wr_pntr),
        .dout_i0_out(dout_i0_out),
        .\goreg_dm.dout_i_reg[1]_0 (ram_wr_en),
        .\goreg_dm.dout_i_reg[1]_1 (rd_pntr),
        .s_aclk(s_aclk));
  design_1_auto_us_df_1_reset_blk_ramfifo rstblk
       (.AR(rstblk_n_2),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rst_full_gen_i),
        .out(rst_full_ff_i),
        .s_aclk(s_aclk),
        .src_arst(src_arst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_auto_us_df_1_fifo_generator_top
   (s_axi_awready,
    m_axi_awvalid,
    dout_i0_out,
    src_arst,
    s_aclk,
    m_axi_awready,
    DI,
    s_axi_awvalid);
  output s_axi_awready;
  output m_axi_awvalid;
  output [65:0]dout_i0_out;
  input src_arst;
  input s_aclk;
  input m_axi_awready;
  input [65:0]DI;
  input s_axi_awvalid;

  wire [65:0]DI;
  wire [65:0]dout_i0_out;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire src_arst;

  design_1_auto_us_df_1_fifo_generator_ramfifo \grf.rf 
       (.DI(DI),
        .dout_i0_out(dout_i0_out),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .src_arst(src_arst));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "2" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TDEST_WIDTH = "4" *) 
(* C_AXIS_TID_WIDTH = "8" *) (* C_AXIS_TKEEP_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "4" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "5" *) (* C_AXI_AWUSER_WIDTH = "5" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "18" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "66" *) (* C_DIN_WIDTH_RDCH = "35" *) 
(* C_DIN_WIDTH_WACH = "66" *) (* C_DIN_WIDTH_WDCH = "37" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "18" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "0" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "0" *) 
(* C_HAS_AXI_ARUSER = "1" *) (* C_HAS_AXI_AWUSER = "1" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
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
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "4kx4" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "30" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "31" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
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
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "2" *) 
(* C_WRCH_TYPE = "2" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "32" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "32" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "5" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "5" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_5" *) 
module design_1_auto_us_df_1_fifo_generator_v13_2_5
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
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [4:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
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
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [4:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
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
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [4:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [4:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
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
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
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
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
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
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire [4:0]m_axi_awuser;
  wire m_axi_awvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [4:0]s_axi_awuser;
  wire s_axi_awvalid;

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
  assign axi_r_data_count[10] = \<const0> ;
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
  assign axi_r_rd_data_count[10] = \<const0> ;
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
  assign axi_r_wr_data_count[10] = \<const0> ;
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
  assign axi_w_data_count[10] = \<const0> ;
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
  assign axi_w_rd_data_count[10] = \<const0> ;
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
  assign axi_w_wr_data_count[10] = \<const0> ;
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
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[4] = \<const0> ;
  assign m_axi_aruser[3] = \<const0> ;
  assign m_axi_aruser[2] = \<const0> ;
  assign m_axi_aruser[1] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
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
  assign s_axi_arready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
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
  design_1_auto_us_df_1_fifo_generator_v13_2_5_synth inst_fifo_gen
       (.DI({s_axi_awaddr,s_axi_awlen,s_axi_awsize,s_axi_awburst,s_axi_awlock,s_axi_awcache,s_axi_awprot,s_axi_awqos,s_axi_awregion,s_axi_awuser}),
        .dout_i0_out({m_axi_awaddr,m_axi_awlen,m_axi_awsize,m_axi_awburst,m_axi_awlock,m_axi_awcache,m_axi_awprot,m_axi_awqos,m_axi_awregion,m_axi_awuser}),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_5_synth" *) 
module design_1_auto_us_df_1_fifo_generator_v13_2_5_synth
   (dout_i0_out,
    s_axi_awready,
    m_axi_awvalid,
    m_axi_awready,
    s_aclk,
    s_aresetn,
    DI,
    s_axi_awvalid);
  output [65:0]dout_i0_out;
  output s_axi_awready;
  output m_axi_awvalid;
  input m_axi_awready;
  input s_aclk;
  input s_aresetn;
  input [65:0]DI;
  input s_axi_awvalid;

  wire [65:0]DI;
  wire [65:0]dout_i0_out;
  wire inverted_reset__0;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire s_aclk;
  wire s_aresetn;
  wire s_axi_awready;
  wire s_axi_awvalid;

  design_1_auto_us_df_1_fifo_generator_top \gaxi_full_lite.gwrite_ch.gwach2.axi_wach 
       (.DI(DI),
        .dout_i0_out(dout_i0_out),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .src_arst(inverted_reset__0));
  LUT1 #(
    .INIT(2'h1)) 
    inverted_reset
       (.I0(s_aresetn),
        .O(inverted_reset__0));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_auto_us_df_1_memory
   (dout_i0_out,
    s_aclk,
    \goreg_dm.dout_i_reg[1]_0 ,
    DI,
    \goreg_dm.dout_i_reg[1]_1 ,
    Q,
    E);
  output [65:0]dout_i0_out;
  input s_aclk;
  input [0:0]\goreg_dm.dout_i_reg[1]_0 ;
  input [65:0]DI;
  input [4:0]\goreg_dm.dout_i_reg[1]_1 ;
  input [4:0]Q;
  input [0:0]E;

  wire [65:0]DI;
  wire [0:0]E;
  wire [4:0]Q;
  wire [65:0]dout_i0_out;
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
  wire \gdm.dm_gen.dm_n_7 ;
  wire \gdm.dm_gen.dm_n_8 ;
  wire \gdm.dm_gen.dm_n_9 ;
  wire [0:0]\goreg_dm.dout_i_reg[1]_0 ;
  wire [4:0]\goreg_dm.dout_i_reg[1]_1 ;
  wire s_aclk;

  design_1_auto_us_df_1_dmem \gdm.dm_gen.dm 
       (.DI(DI),
        .Q(Q),
        .dout_i({\gdm.dm_gen.dm_n_0 ,\gdm.dm_gen.dm_n_1 ,\gdm.dm_gen.dm_n_2 ,\gdm.dm_gen.dm_n_3 ,\gdm.dm_gen.dm_n_4 ,\gdm.dm_gen.dm_n_5 ,\gdm.dm_gen.dm_n_6 ,\gdm.dm_gen.dm_n_7 ,\gdm.dm_gen.dm_n_8 ,\gdm.dm_gen.dm_n_9 ,\gdm.dm_gen.dm_n_10 ,\gdm.dm_gen.dm_n_11 ,\gdm.dm_gen.dm_n_12 ,\gdm.dm_gen.dm_n_13 ,\gdm.dm_gen.dm_n_14 ,\gdm.dm_gen.dm_n_15 ,\gdm.dm_gen.dm_n_16 ,\gdm.dm_gen.dm_n_17 ,\gdm.dm_gen.dm_n_18 ,\gdm.dm_gen.dm_n_19 ,\gdm.dm_gen.dm_n_20 ,\gdm.dm_gen.dm_n_21 ,\gdm.dm_gen.dm_n_22 ,\gdm.dm_gen.dm_n_23 ,\gdm.dm_gen.dm_n_24 ,\gdm.dm_gen.dm_n_25 ,\gdm.dm_gen.dm_n_26 ,\gdm.dm_gen.dm_n_27 ,\gdm.dm_gen.dm_n_28 ,\gdm.dm_gen.dm_n_29 ,\gdm.dm_gen.dm_n_30 ,\gdm.dm_gen.dm_n_31 ,\gdm.dm_gen.dm_n_32 ,\gdm.dm_gen.dm_n_33 ,\gdm.dm_gen.dm_n_34 ,\gdm.dm_gen.dm_n_35 ,\gdm.dm_gen.dm_n_36 ,\gdm.dm_gen.dm_n_37 ,\gdm.dm_gen.dm_n_38 ,\gdm.dm_gen.dm_n_39 ,\gdm.dm_gen.dm_n_40 ,\gdm.dm_gen.dm_n_41 ,\gdm.dm_gen.dm_n_42 ,\gdm.dm_gen.dm_n_43 ,\gdm.dm_gen.dm_n_44 ,\gdm.dm_gen.dm_n_45 ,\gdm.dm_gen.dm_n_46 ,\gdm.dm_gen.dm_n_47 ,\gdm.dm_gen.dm_n_48 ,\gdm.dm_gen.dm_n_49 ,\gdm.dm_gen.dm_n_50 ,\gdm.dm_gen.dm_n_51 ,\gdm.dm_gen.dm_n_52 ,\gdm.dm_gen.dm_n_53 ,\gdm.dm_gen.dm_n_54 ,\gdm.dm_gen.dm_n_55 ,\gdm.dm_gen.dm_n_56 ,\gdm.dm_gen.dm_n_57 ,\gdm.dm_gen.dm_n_58 ,\gdm.dm_gen.dm_n_59 ,\gdm.dm_gen.dm_n_60 ,\gdm.dm_gen.dm_n_61 ,\gdm.dm_gen.dm_n_62 ,\gdm.dm_gen.dm_n_63 ,\gdm.dm_gen.dm_n_64 ,\gdm.dm_gen.dm_n_65 }),
        .\goreg_dm.dout_i_reg[1] (\goreg_dm.dout_i_reg[1]_0 ),
        .\goreg_dm.dout_i_reg[1]_0 (\goreg_dm.dout_i_reg[1]_1 ),
        .s_aclk(s_aclk));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_65 ),
        .Q(dout_i0_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_55 ),
        .Q(dout_i0_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_54 ),
        .Q(dout_i0_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_53 ),
        .Q(dout_i0_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_52 ),
        .Q(dout_i0_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_51 ),
        .Q(dout_i0_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_50 ),
        .Q(dout_i0_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_49 ),
        .Q(dout_i0_out[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_48 ),
        .Q(dout_i0_out[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_47 ),
        .Q(dout_i0_out[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_46 ),
        .Q(dout_i0_out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_64 ),
        .Q(dout_i0_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_45 ),
        .Q(dout_i0_out[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_44 ),
        .Q(dout_i0_out[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_43 ),
        .Q(dout_i0_out[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_42 ),
        .Q(dout_i0_out[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_41 ),
        .Q(dout_i0_out[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_40 ),
        .Q(dout_i0_out[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_39 ),
        .Q(dout_i0_out[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_38 ),
        .Q(dout_i0_out[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_37 ),
        .Q(dout_i0_out[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_36 ),
        .Q(dout_i0_out[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_63 ),
        .Q(dout_i0_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_35 ),
        .Q(dout_i0_out[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_34 ),
        .Q(dout_i0_out[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_33 ),
        .Q(dout_i0_out[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_32 ),
        .Q(dout_i0_out[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_31 ),
        .Q(dout_i0_out[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_30 ),
        .Q(dout_i0_out[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_29 ),
        .Q(dout_i0_out[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_28 ),
        .Q(dout_i0_out[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_27 ),
        .Q(dout_i0_out[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_26 ),
        .Q(dout_i0_out[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_62 ),
        .Q(dout_i0_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_25 ),
        .Q(dout_i0_out[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[41] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_24 ),
        .Q(dout_i0_out[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[42] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_23 ),
        .Q(dout_i0_out[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[43] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_22 ),
        .Q(dout_i0_out[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[44] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_21 ),
        .Q(dout_i0_out[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[45] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_20 ),
        .Q(dout_i0_out[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[46] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_19 ),
        .Q(dout_i0_out[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[47] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_18 ),
        .Q(dout_i0_out[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[48] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_17 ),
        .Q(dout_i0_out[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[49] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_16 ),
        .Q(dout_i0_out[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_61 ),
        .Q(dout_i0_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[50] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_15 ),
        .Q(dout_i0_out[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[51] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_14 ),
        .Q(dout_i0_out[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[52] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_13 ),
        .Q(dout_i0_out[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[53] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_12 ),
        .Q(dout_i0_out[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[54] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_11 ),
        .Q(dout_i0_out[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[55] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_10 ),
        .Q(dout_i0_out[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[56] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_9 ),
        .Q(dout_i0_out[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[57] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_8 ),
        .Q(dout_i0_out[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[58] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_7 ),
        .Q(dout_i0_out[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[59] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_6 ),
        .Q(dout_i0_out[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_60 ),
        .Q(dout_i0_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[60] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_5 ),
        .Q(dout_i0_out[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[61] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_4 ),
        .Q(dout_i0_out[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[62] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_3 ),
        .Q(dout_i0_out[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[63] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_2 ),
        .Q(dout_i0_out[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[64] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_1 ),
        .Q(dout_i0_out[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[65] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_0 ),
        .Q(dout_i0_out[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_59 ),
        .Q(dout_i0_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_58 ),
        .Q(dout_i0_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_57 ),
        .Q(dout_i0_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(E),
        .D(\gdm.dm_gen.dm_n_56 ),
        .Q(dout_i0_out[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_auto_us_df_1_rd_bin_cntr
   (Q,
    \gc0.count_d1_reg[4]_0 ,
    E,
    s_aclk,
    \gc0.count_d1_reg[4]_1 );
  output [4:0]Q;
  output [4:0]\gc0.count_d1_reg[4]_0 ;
  input [0:0]E;
  input s_aclk;
  input \gc0.count_d1_reg[4]_1 ;

  wire [0:0]E;
  wire [4:0]Q;
  wire [4:0]\gc0.count_d1_reg[4]_0 ;
  wire \gc0.count_d1_reg[4]_1 ;
  wire [4:0]plusOp;
  wire s_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[4]_1 ),
        .D(Q[0]),
        .Q(\gc0.count_d1_reg[4]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[4]_1 ),
        .D(Q[1]),
        .Q(\gc0.count_d1_reg[4]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[4]_1 ),
        .D(Q[2]),
        .Q(\gc0.count_d1_reg[4]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[4]_1 ),
        .D(Q[3]),
        .Q(\gc0.count_d1_reg[4]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[4]_1 ),
        .D(Q[4]),
        .Q(\gc0.count_d1_reg[4]_0 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(\gc0.count_d1_reg[4]_1 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[4]_1 ),
        .D(plusOp[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[4]_1 ),
        .D(plusOp[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[4]_1 ),
        .D(plusOp[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(\gc0.count_d1_reg[4]_1 ),
        .D(plusOp[4]),
        .Q(Q[4]));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_auto_us_df_1_rd_fwft
   (E,
    m_axi_awvalid,
    \gpregsm2.curr_fwft_state_reg[0]_0 ,
    s_aclk,
    \gpregsm2.user_valid_reg_0 ,
    out,
    m_axi_awready);
  output [0:0]E;
  output m_axi_awvalid;
  output [0:0]\gpregsm2.curr_fwft_state_reg[0]_0 ;
  input s_aclk;
  input \gpregsm2.user_valid_reg_0 ;
  input out;
  input m_axi_awready;

  wire [0:0]E;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  wire empty_d1;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0;
  wire [0:0]\gpregsm2.curr_fwft_state_reg[0]_0 ;
  wire \gpregsm2.user_valid_reg_0 ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [1:1]next_fwft_state;
  wire out;
  wire s_aclk;
  (* DONT_TOUCH *) wire user_valid;

  LUT5 #(
    .INIT(32'hFFCB1000)) 
    aempty_fwft_fb_i_i_1
       (.I0(m_axi_awready),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(out),
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
        .PRE(\gpregsm2.user_valid_reg_0 ),
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
        .PRE(\gpregsm2.user_valid_reg_0 ),
        .Q(aempty_fwft_i));
  LUT6 #(
    .INIT(64'hEECCFFCF22000000)) 
    empty_fwft_fb_i_i_1
       (.I0(m_axi_awready),
        .I1(curr_fwft_state[0]),
        .I2(empty_d1),
        .I3(out),
        .I4(curr_fwft_state[1]),
        .I5(empty_fwft_fb_i),
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
        .PRE(\gpregsm2.user_valid_reg_0 ),
        .Q(empty_fwft_fb_i));
  LUT6 #(
    .INIT(64'hEECCFFCF22000000)) 
    empty_fwft_fb_o_i_i_1
       (.I0(m_axi_awready),
        .I1(curr_fwft_state[0]),
        .I2(empty_d1),
        .I3(out),
        .I4(curr_fwft_state[1]),
        .I5(empty_fwft_fb_o_i),
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
        .PRE(\gpregsm2.user_valid_reg_0 ),
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
        .PRE(\gpregsm2.user_valid_reg_0 ),
        .Q(empty_fwft_i));
  LUT4 #(
    .INIT(16'h0051)) 
    \gc0.count_d1[4]_i_1 
       (.I0(out),
        .I1(curr_fwft_state[1]),
        .I2(m_axi_awready),
        .I3(curr_fwft_state[0]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000004540)) 
    \goreg_dm.dout_i[65]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(m_axi_awready),
        .I2(curr_fwft_state[1]),
        .I3(empty_d1),
        .I4(out),
        .I5(\gpregsm2.user_valid_reg_0 ),
        .O(\gpregsm2.curr_fwft_state_reg[0]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \gprege2.empty_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(out),
        .PRE(\gpregsm2.user_valid_reg_0 ),
        .Q(empty_d1));
  LUT4 #(
    .INIT(16'h1151)) 
    \gpregsm2.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(out),
        .I2(curr_fwft_state[1]),
        .I3(m_axi_awready),
        .O(next_fwft_state));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm2.curr_fwft_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(\gpregsm2.user_valid_reg_0 ),
        .D(1'b0),
        .Q(curr_fwft_state[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm2.curr_fwft_state_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(\gpregsm2.user_valid_reg_0 ),
        .D(next_fwft_state),
        .Q(curr_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm2.user_valid_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(\gpregsm2.user_valid_reg_0 ),
        .D(next_fwft_state),
        .Q(user_valid));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_awvalid_INST_0
       (.I0(empty_fwft_i),
        .O(m_axi_awvalid));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_auto_us_df_1_rd_logic
   (out,
    E,
    m_axi_awvalid,
    \gpregsm2.curr_fwft_state_reg[0] ,
    Q,
    \gc0.count_d1_reg[4] ,
    ram_empty_i_reg,
    s_aclk,
    \gc0.count_d1_reg[4]_0 ,
    m_axi_awready);
  output out;
  output [0:0]E;
  output m_axi_awvalid;
  output [0:0]\gpregsm2.curr_fwft_state_reg[0] ;
  output [4:0]Q;
  output [4:0]\gc0.count_d1_reg[4] ;
  input ram_empty_i_reg;
  input s_aclk;
  input \gc0.count_d1_reg[4]_0 ;
  input m_axi_awready;

  wire [0:0]E;
  wire [4:0]Q;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire \gc0.count_d1_reg[4]_0 ;
  wire [0:0]\gpregsm2.curr_fwft_state_reg[0] ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire out;
  wire ram_empty_i_reg;
  wire s_aclk;

  design_1_auto_us_df_1_rd_fwft \gr1.gr1_int.rfwft 
       (.E(E),
        .\gpregsm2.curr_fwft_state_reg[0]_0 (\gpregsm2.curr_fwft_state_reg[0] ),
        .\gpregsm2.user_valid_reg_0 (\gc0.count_d1_reg[4]_0 ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .out(out),
        .s_aclk(s_aclk));
  design_1_auto_us_df_1_rd_status_flags_ss \grss.rsts 
       (.out(out),
        .ram_empty_i_reg_0(ram_empty_i_reg),
        .ram_empty_i_reg_1(\gc0.count_d1_reg[4]_0 ),
        .s_aclk(s_aclk));
  design_1_auto_us_df_1_rd_bin_cntr rpntr
       (.E(E),
        .Q(Q),
        .\gc0.count_d1_reg[4]_0 (\gc0.count_d1_reg[4] ),
        .\gc0.count_d1_reg[4]_1 (\gc0.count_d1_reg[4]_0 ),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module design_1_auto_us_df_1_rd_status_flags_ss
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

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_auto_us_df_1_reset_blk_ramfifo
   (out,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    AR,
    src_arst,
    s_aclk);
  output out;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  output [0:0]AR;
  input src_arst;
  input s_aclk;

  wire [0:0]AR;
  wire \grstd1.grst_full.grst_f.rst_d1_i_1_n_0 ;
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
  wire [3:0]sckt_wr_rst_cc;
  wire src_arst;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;

  assign \grstd1.grst_full.grst_f.rst_d3_reg_0  = rst_d3;
  assign out = rst_d2;
  LUT3 #(
    .INIT(8'hFE)) 
    \gc0.count_d1[4]_i_2 
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
  design_1_auto_us_df_1_xpm_cdc_async_rst \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(s_aclk),
        .src_arst(src_arst));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_auto_us_df_1_wr_bin_cntr
   (ram_full_comb,
    ram_full_fb_i_reg,
    Q,
    s_axi_awvalid,
    E,
    ram_full_fb_i_reg_0,
    out,
    ram_empty_i_reg,
    ram_empty_fb_i_i_3_0,
    ram_empty_fb_i_i_2_0,
    \gcc0.gc0.count_reg[4]_0 ,
    s_aclk,
    AR);
  output ram_full_comb;
  output ram_full_fb_i_reg;
  output [4:0]Q;
  input s_axi_awvalid;
  input [0:0]E;
  input ram_full_fb_i_reg_0;
  input out;
  input ram_empty_i_reg;
  input [4:0]ram_empty_fb_i_i_3_0;
  input [4:0]ram_empty_fb_i_i_2_0;
  input [0:0]\gcc0.gc0.count_reg[4]_0 ;
  input s_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]\gcc0.gc0.count_reg[4]_0 ;
  wire \gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1 ;
  wire \gwss.wsts/comp0 ;
  wire \gwss.wsts/comp1 ;
  wire out;
  wire [4:0]plusOp__0;
  wire [4:0]ram_empty_fb_i_i_2_0;
  wire [4:0]ram_empty_fb_i_i_3_0;
  wire ram_empty_fb_i_i_4_n_0;
  wire ram_empty_fb_i_i_5_n_0;
  wire ram_empty_i_reg;
  wire ram_full_comb;
  wire ram_full_fb_i_i_3_n_0;
  wire ram_full_fb_i_reg;
  wire ram_full_fb_i_reg_0;
  wire s_aclk;
  wire s_axi_awvalid;
  wire [4:0]wr_pntr_plus1;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(wr_pntr_plus1[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(wr_pntr_plus1[1]),
        .I1(wr_pntr_plus1[0]),
        .I2(wr_pntr_plus1[2]),
        .I3(wr_pntr_plus1[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
        .CE(\gcc0.gc0.count_reg[4]_0 ),
        .CLR(AR),
        .D(wr_pntr_plus1[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(\gcc0.gc0.count_reg[4]_0 ),
        .CLR(AR),
        .D(wr_pntr_plus1[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(\gcc0.gc0.count_reg[4]_0 ),
        .CLR(AR),
        .D(wr_pntr_plus1[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(\gcc0.gc0.count_reg[4]_0 ),
        .CLR(AR),
        .D(wr_pntr_plus1[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(\gcc0.gc0.count_reg[4]_0 ),
        .CLR(AR),
        .D(wr_pntr_plus1[4]),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(\gcc0.gc0.count_reg[4]_0 ),
        .D(plusOp__0[0]),
        .PRE(AR),
        .Q(wr_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(\gcc0.gc0.count_reg[4]_0 ),
        .CLR(AR),
        .D(plusOp__0[1]),
        .Q(wr_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(\gcc0.gc0.count_reg[4]_0 ),
        .CLR(AR),
        .D(plusOp__0[2]),
        .Q(wr_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(\gcc0.gc0.count_reg[4]_0 ),
        .CLR(AR),
        .D(plusOp__0[3]),
        .Q(wr_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(\gcc0.gc0.count_reg[4]_0 ),
        .CLR(AR),
        .D(plusOp__0[4]),
        .Q(wr_pntr_plus1[4]));
  LUT6 #(
    .INIT(64'hFF0FFFFF88008888)) 
    ram_empty_fb_i_i_1
       (.I0(E),
        .I1(\gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1 ),
        .I2(\gwss.wsts/comp0 ),
        .I3(out),
        .I4(s_axi_awvalid),
        .I5(ram_empty_i_reg),
        .O(ram_full_fb_i_reg));
  LUT5 #(
    .INIT(32'h90090000)) 
    ram_empty_fb_i_i_2
       (.I0(Q[1]),
        .I1(ram_empty_fb_i_i_2_0[1]),
        .I2(Q[0]),
        .I3(ram_empty_fb_i_i_2_0[0]),
        .I4(ram_empty_fb_i_i_4_n_0),
        .O(\gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1 ));
  LUT5 #(
    .INIT(32'h90090000)) 
    ram_empty_fb_i_i_3
       (.I0(Q[1]),
        .I1(ram_empty_fb_i_i_3_0[1]),
        .I2(Q[0]),
        .I3(ram_empty_fb_i_i_3_0[0]),
        .I4(ram_empty_fb_i_i_5_n_0),
        .O(\gwss.wsts/comp0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_fb_i_i_4
       (.I0(Q[3]),
        .I1(ram_empty_fb_i_i_2_0[3]),
        .I2(Q[2]),
        .I3(ram_empty_fb_i_i_2_0[2]),
        .I4(ram_empty_fb_i_i_2_0[4]),
        .I5(Q[4]),
        .O(ram_empty_fb_i_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_fb_i_i_5
       (.I0(Q[3]),
        .I1(ram_empty_fb_i_i_3_0[3]),
        .I2(Q[2]),
        .I3(ram_empty_fb_i_i_3_0[2]),
        .I4(ram_empty_fb_i_i_3_0[4]),
        .I5(Q[4]),
        .O(ram_empty_fb_i_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000FFF08080808)) 
    ram_full_fb_i_i_1
       (.I0(s_axi_awvalid),
        .I1(\gwss.wsts/comp1 ),
        .I2(E),
        .I3(\gwss.wsts/comp0 ),
        .I4(ram_full_fb_i_reg_0),
        .I5(out),
        .O(ram_full_comb));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h90090000)) 
    ram_full_fb_i_i_2
       (.I0(wr_pntr_plus1[1]),
        .I1(ram_empty_fb_i_i_3_0[1]),
        .I2(wr_pntr_plus1[0]),
        .I3(ram_empty_fb_i_i_3_0[0]),
        .I4(ram_full_fb_i_i_3_n_0),
        .O(\gwss.wsts/comp1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_fb_i_i_3
       (.I0(wr_pntr_plus1[3]),
        .I1(ram_empty_fb_i_i_3_0[3]),
        .I2(wr_pntr_plus1[2]),
        .I3(ram_empty_fb_i_i_3_0[2]),
        .I4(ram_empty_fb_i_i_3_0[4]),
        .I5(wr_pntr_plus1[4]),
        .O(ram_full_fb_i_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_auto_us_df_1_wr_logic
   (s_axi_awready,
    ram_full_fb_i_reg,
    ram_full_fb_i_reg_0,
    Q,
    s_aclk,
    out,
    s_axi_awvalid,
    E,
    ram_full_fb_i_reg_1,
    ram_empty_i_reg,
    ram_empty_fb_i_i_3,
    ram_empty_fb_i_i_2,
    AR);
  output s_axi_awready;
  output ram_full_fb_i_reg;
  output [0:0]ram_full_fb_i_reg_0;
  output [4:0]Q;
  input s_aclk;
  input out;
  input s_axi_awvalid;
  input [0:0]E;
  input ram_full_fb_i_reg_1;
  input ram_empty_i_reg;
  input [4:0]ram_empty_fb_i_i_3;
  input [4:0]ram_empty_fb_i_i_2;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [4:0]Q;
  wire \gwss.wsts_n_0 ;
  wire out;
  wire [4:0]ram_empty_fb_i_i_2;
  wire [4:0]ram_empty_fb_i_i_3;
  wire ram_empty_i_reg;
  wire ram_full_comb;
  wire ram_full_fb_i_reg;
  wire [0:0]ram_full_fb_i_reg_0;
  wire ram_full_fb_i_reg_1;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;

  design_1_auto_us_df_1_wr_status_flags_ss \gwss.wsts 
       (.E(ram_full_fb_i_reg_0),
        .out(\gwss.wsts_n_0 ),
        .ram_full_comb(ram_full_comb),
        .ram_full_i_reg_0(out),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
  design_1_auto_us_df_1_wr_bin_cntr wpntr
       (.AR(AR),
        .E(E),
        .Q(Q),
        .\gcc0.gc0.count_reg[4]_0 (ram_full_fb_i_reg_0),
        .out(\gwss.wsts_n_0 ),
        .ram_empty_fb_i_i_2_0(ram_empty_fb_i_i_2),
        .ram_empty_fb_i_i_3_0(ram_empty_fb_i_i_3),
        .ram_empty_i_reg(ram_empty_i_reg),
        .ram_full_comb(ram_full_comb),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .ram_full_fb_i_reg_0(ram_full_fb_i_reg_1),
        .s_aclk(s_aclk),
        .s_axi_awvalid(s_axi_awvalid));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module design_1_auto_us_df_1_wr_status_flags_ss
   (out,
    s_axi_awready,
    E,
    ram_full_comb,
    s_aclk,
    ram_full_i_reg_0,
    s_axi_awvalid);
  output out;
  output s_axi_awready;
  output [0:0]E;
  input ram_full_comb;
  input s_aclk;
  input ram_full_i_reg_0;
  input s_axi_awvalid;

  wire [0:0]E;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  wire ram_full_comb;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire ram_full_i_reg_0;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;

  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \gcc0.gc0.count_d1[4]_i_1 
       (.I0(s_axi_awvalid),
        .I1(ram_full_fb_i),
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
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_comb),
        .PRE(ram_full_i_reg_0),
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
        .PRE(ram_full_i_reg_0),
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
