// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Nov 27 13:21:26 2021
// Host        : DESKTOP-J72MK93 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/DDR3_Optimization/dso_top/dso_top.srcs/sources_1/bd/design_1/ip/design_1_axi_crossbar_0_0/design_1_axi_crossbar_0_0_sim_netlist.v
// Design      : design_1_axi_crossbar_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_crossbar_0_0,axi_crossbar_v2_1_22_axi_crossbar,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_crossbar_v2_1_22_axi_crossbar,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_axi_crossbar_0_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:M07_AXI:M08_AXI:M09_AXI:M10_AXI:M11_AXI:M12_AXI:M13_AXI:M14_AXI:M15_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI:S08_AXI:S09_AXI:S10_AXI:S11_AXI:S12_AXI:S13_AXI:S14_AXI:S15_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI AWADDR [31:0] [63:32]" *) output [63:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWPROT [2:0] [5:3]" *) output [5:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWVALID [0:0] [1:1]" *) output [1:0]m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREADY [0:0] [1:1]" *) input [1:0]m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI WDATA [31:0] [63:32]" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI WSTRB [3:0] [7:4]" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WVALID [0:0] [1:1]" *) output [1:0]m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WREADY [0:0] [1:1]" *) input [1:0]m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BRESP [1:0] [3:2]" *) input [3:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BVALID [0:0] [1:1]" *) input [1:0]m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BREADY [0:0] [1:1]" *) output [1:0]m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI ARADDR [31:0] [63:32]" *) output [63:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARPROT [2:0] [5:3]" *) output [5:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARVALID [0:0] [1:1]" *) output [1:0]m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREADY [0:0] [1:1]" *) input [1:0]m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI RDATA [31:0] [63:32]" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RRESP [1:0] [3:2]" *) input [3:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RVALID [0:0] [1:1]" *) input [1:0]m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RREADY [0:0] [1:1]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME M01_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [63:0]m_axi_araddr;
  wire [5:0]m_axi_arprot;
  wire [1:0]m_axi_arready;
  wire [1:0]m_axi_arvalid;
  wire [63:0]m_axi_awaddr;
  wire [5:0]m_axi_awprot;
  wire [1:0]m_axi_awready;
  wire [1:0]m_axi_awvalid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [1:0]m_axi_rready;
  wire [3:0]m_axi_rresp;
  wire [1:0]m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire [1:0]m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire [1:0]m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [0:0]s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire [0:0]s_axi_wvalid;
  wire [3:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [15:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [5:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [15:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [5:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_wlast_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rlast_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_CONNECTIVITY_MODE = "0" *) 
  (* C_DEBUG = "1" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_M_AXI_ADDR_WIDTH = "64'b0000000000000000000000000001000000000000000000000000000000010000" *) 
  (* C_M_AXI_BASE_ADDR = "128'b00000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000001000000000000100000000000000000" *) 
  (* C_M_AXI_READ_CONNECTIVITY = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) 
  (* C_M_AXI_READ_ISSUING = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) 
  (* C_M_AXI_SECURE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_M_AXI_WRITE_CONNECTIVITY = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) 
  (* C_M_AXI_WRITE_ISSUING = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) 
  (* C_NUM_ADDR_RANGES = "1" *) 
  (* C_NUM_MASTER_SLOTS = "2" *) 
  (* C_NUM_SLAVE_SLOTS = "1" *) 
  (* C_R_REGISTER = "0" *) 
  (* C_S_AXI_ARB_PRIORITY = "0" *) 
  (* C_S_AXI_BASE_ID = "0" *) 
  (* C_S_AXI_READ_ACCEPTANCE = "1" *) 
  (* C_S_AXI_SINGLE_THREAD = "1" *) 
  (* C_S_AXI_THREAD_ID_WIDTH = "0" *) 
  (* C_S_AXI_WRITE_ACCEPTANCE = "1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_ADDR_DECODE = "1" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b010" *) 
  (* P_FAMILY = "artix7" *) 
  (* P_INCR = "2'b01" *) 
  (* P_LEN = "8" *) 
  (* P_LOCK = "1" *) 
  (* P_M_AXI_ERR_MODE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_M_AXI_SUPPORTS_READ = "2'b11" *) 
  (* P_M_AXI_SUPPORTS_WRITE = "2'b11" *) 
  (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) 
  (* P_RANGE_CHECK = "1" *) 
  (* P_S_AXI_BASE_ID = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_HIGH_ID = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_SUPPORTS_READ = "1'b1" *) 
  (* P_S_AXI_SUPPORTS_WRITE = "1'b1" *) 
  design_1_axi_crossbar_0_0_axi_crossbar_v2_1_22_axi_crossbar inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[3:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[7:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[1:0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[15:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[7:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[7:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[5:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[1:0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[3:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[7:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[1:0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[15:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[7:0]),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[7:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[5:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[1:0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid({1'b0,1'b0}),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser({1'b0,1'b0}),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid({1'b0,1'b0}),
        .m_axi_rlast({1'b1,1'b1}),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser({1'b0,1'b0}),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[1:0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED[1:0]),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[1:0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED[0]),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b1),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_22_addr_arbiter_sasd" *) 
module design_1_axi_crossbar_0_0_axi_crossbar_v2_1_22_addr_arbiter_sasd
   (SR,
    D,
    any_error,
    Q,
    aresetn_d_reg,
    m_axi_wvalid,
    \gen_no_arbiter.grant_rnw_reg_0 ,
    \gen_no_arbiter.grant_rnw_reg_1 ,
    m_axi_awvalid,
    s_axi_wready,
    \gen_no_arbiter.grant_rnw_reg_2 ,
    s_axi_bvalid,
    \gen_no_arbiter.m_valid_i_reg_0 ,
    m_axi_bready,
    m_axi_arvalid,
    s_axi_rvalid,
    m_axi_rready,
    s_axi_rready_0_sp_1,
    s_axi_awready,
    s_axi_arready,
    \m_atarget_hot_reg[2] ,
    aclk,
    aresetn_d,
    s_axi_wvalid,
    \m_axi_awvalid[1] ,
    \gen_axilite.s_axi_bvalid_i_reg ,
    \m_ready_d_reg[1] ,
    s_axi_bready,
    s_axi_bvalid_0_sp_1,
    \m_ready_d_reg[0] ,
    \m_ready_d_reg[2] ,
    \gen_no_arbiter.m_valid_i_reg_1 ,
    \gen_no_arbiter.m_valid_i_reg_2 ,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_arprot,
    s_axi_awprot,
    s_axi_awvalid,
    \m_axi_arvalid[1] ,
    s_axi_rvalid_0_sp_1,
    s_axi_rready,
    mi_wready,
    mi_bvalid);
  output [0:0]SR;
  output [2:0]D;
  output any_error;
  output [34:0]Q;
  output [0:0]aresetn_d_reg;
  output [1:0]m_axi_wvalid;
  output [1:0]\gen_no_arbiter.grant_rnw_reg_0 ;
  output \gen_no_arbiter.grant_rnw_reg_1 ;
  output [1:0]m_axi_awvalid;
  output [0:0]s_axi_wready;
  output \gen_no_arbiter.grant_rnw_reg_2 ;
  output [0:0]s_axi_bvalid;
  output \gen_no_arbiter.m_valid_i_reg_0 ;
  output [1:0]m_axi_bready;
  output [1:0]m_axi_arvalid;
  output [0:0]s_axi_rvalid;
  output [1:0]m_axi_rready;
  output s_axi_rready_0_sp_1;
  output [0:0]s_axi_awready;
  output [0:0]s_axi_arready;
  output \m_atarget_hot_reg[2] ;
  input aclk;
  input aresetn_d;
  input [0:0]s_axi_wvalid;
  input [2:0]\m_axi_awvalid[1] ;
  input [2:0]\gen_axilite.s_axi_bvalid_i_reg ;
  input \m_ready_d_reg[1] ;
  input [0:0]s_axi_bready;
  input s_axi_bvalid_0_sp_1;
  input \m_ready_d_reg[0] ;
  input \m_ready_d_reg[2] ;
  input [0:0]\gen_no_arbiter.m_valid_i_reg_1 ;
  input \gen_no_arbiter.m_valid_i_reg_2 ;
  input [0:0]s_axi_arvalid;
  input [31:0]s_axi_araddr;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_arprot;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_awvalid;
  input [1:0]\m_axi_arvalid[1] ;
  input s_axi_rvalid_0_sp_1;
  input [0:0]s_axi_rready;
  input [0:0]mi_wready;
  input [0:0]mi_bvalid;

  wire [2:0]D;
  wire [34:0]Q;
  wire [0:0]SR;
  wire aa_grant_rnw;
  wire aclk;
  wire any_error;
  wire aresetn_d;
  wire [0:0]aresetn_d_reg;
  wire [2:0]\gen_axilite.s_axi_bvalid_i_reg ;
  wire \gen_no_arbiter.grant_rnw_i_1_n_0 ;
  wire [1:0]\gen_no_arbiter.grant_rnw_reg_0 ;
  wire \gen_no_arbiter.grant_rnw_reg_1 ;
  wire \gen_no_arbiter.grant_rnw_reg_2 ;
  wire \gen_no_arbiter.m_grant_hot_i[0]_inv_i_1_n_0 ;
  wire \gen_no_arbiter.m_grant_hot_i[0]_inv_i_2_n_0 ;
  wire \gen_no_arbiter.m_valid_i_i_1_n_0 ;
  wire \gen_no_arbiter.m_valid_i_reg_0 ;
  wire [0:0]\gen_no_arbiter.m_valid_i_reg_1 ;
  wire \gen_no_arbiter.m_valid_i_reg_2 ;
  wire \gen_no_arbiter.s_ready_i[0]_i_1_n_0 ;
  wire \m_atarget_enc[1]_i_2_n_0 ;
  wire \m_atarget_enc[1]_i_3_n_0 ;
  wire \m_atarget_enc[1]_i_4_n_0 ;
  wire \m_atarget_hot_reg[2] ;
  wire [1:0]m_axi_arvalid;
  wire [1:0]\m_axi_arvalid[1] ;
  wire [1:0]m_axi_awvalid;
  wire [2:0]\m_axi_awvalid[1] ;
  wire [1:0]m_axi_bready;
  wire [1:0]m_axi_rready;
  wire [1:0]m_axi_wvalid;
  wire \m_ready_d[2]_i_3_n_0 ;
  wire \m_ready_d_reg[0] ;
  wire \m_ready_d_reg[1] ;
  wire \m_ready_d_reg[2] ;
  wire m_valid_i;
  wire [0:0]mi_bvalid;
  wire [0:0]mi_wready;
  wire p_0_in1_in;
  wire p_0_out;
  wire [48:1]s_amesg;
  wire s_arvalid_reg;
  wire \s_arvalid_reg_reg_n_0_[0] ;
  wire s_awvalid_reg;
  wire s_awvalid_reg0;
  wire [31:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [0:0]s_axi_bvalid;
  wire s_axi_bvalid_0_sn_1;
  wire [0:0]s_axi_rready;
  wire s_axi_rready_0_sn_1;
  wire [0:0]s_axi_rvalid;
  wire s_axi_rvalid_0_sn_1;
  wire [0:0]s_axi_wready;
  wire [0:0]s_axi_wvalid;
  wire s_ready_i;

  assign s_axi_bvalid_0_sn_1 = s_axi_bvalid_0_sp_1;
  assign s_axi_rready_0_sp_1 = s_axi_rready_0_sn_1;
  assign s_axi_rvalid_0_sn_1 = s_axi_rvalid_0_sp_1;
  LUT5 #(
    .INIT(32'h77770F00)) 
    \gen_axilite.s_axi_bvalid_i_i_1 
       (.I0(\gen_axilite.s_axi_bvalid_i_reg [2]),
        .I1(\gen_no_arbiter.grant_rnw_reg_2 ),
        .I2(\gen_no_arbiter.grant_rnw_reg_1 ),
        .I3(mi_wready),
        .I4(mi_bvalid),
        .O(\m_atarget_hot_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFBFFFFFFFFF)) 
    \gen_axilite.s_axi_bvalid_i_i_2 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(s_axi_wvalid),
        .I3(\m_axi_awvalid[1] [1]),
        .I4(\m_axi_awvalid[1] [2]),
        .I5(\gen_axilite.s_axi_bvalid_i_reg [2]),
        .O(\gen_no_arbiter.grant_rnw_reg_1 ));
  LUT6 #(
    .INIT(64'hFFFF27FF00002200)) 
    \gen_no_arbiter.grant_rnw_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_awvalid),
        .I3(p_0_in1_in),
        .I4(m_valid_i),
        .I5(aa_grant_rnw),
        .O(\gen_no_arbiter.grant_rnw_i_1_n_0 ));
  FDRE \gen_no_arbiter.grant_rnw_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_no_arbiter.grant_rnw_i_1_n_0 ),
        .Q(aa_grant_rnw),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[10]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[9]),
        .I3(s_axi_awaddr[9]),
        .O(s_amesg[10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[11]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[10]),
        .I3(s_axi_awaddr[10]),
        .O(s_amesg[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[12]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[11]),
        .I3(s_axi_awaddr[11]),
        .O(s_amesg[12]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[13]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[12]),
        .I3(s_axi_awaddr[12]),
        .O(s_amesg[13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[14]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[13]),
        .I3(s_axi_awaddr[13]),
        .O(s_amesg[14]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[15]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[14]),
        .I3(s_axi_awaddr[14]),
        .O(s_amesg[15]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[16]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[15]),
        .I3(s_axi_awaddr[15]),
        .O(s_amesg[16]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[17]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[16]),
        .I3(s_axi_awaddr[16]),
        .O(s_amesg[17]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[18]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[17]),
        .I3(s_axi_awaddr[17]),
        .O(s_amesg[18]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[19]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[18]),
        .I3(s_axi_awaddr[18]),
        .O(s_amesg[19]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_awaddr[0]),
        .O(s_amesg[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[20]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[19]),
        .I3(s_axi_awaddr[19]),
        .O(s_amesg[20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[21]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[20]),
        .I3(s_axi_awaddr[20]),
        .O(s_amesg[21]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[22]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[21]),
        .I3(s_axi_awaddr[21]),
        .O(s_amesg[22]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[23]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[22]),
        .I3(s_axi_awaddr[22]),
        .O(s_amesg[23]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[24]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[23]),
        .I3(s_axi_awaddr[23]),
        .O(s_amesg[24]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[25]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[24]),
        .I3(s_axi_awaddr[24]),
        .O(s_amesg[25]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[26]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[25]),
        .I3(s_axi_awaddr[25]),
        .O(s_amesg[26]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[27]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[26]),
        .I3(s_axi_awaddr[26]),
        .O(s_amesg[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[28]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[27]),
        .I3(s_axi_awaddr[27]),
        .O(s_amesg[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[29]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[28]),
        .I3(s_axi_awaddr[28]),
        .O(s_amesg[29]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[2]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[1]),
        .I3(s_axi_awaddr[1]),
        .O(s_amesg[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[30]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[29]),
        .I3(s_axi_awaddr[29]),
        .O(s_amesg[30]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[31]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[30]),
        .I3(s_axi_awaddr[30]),
        .O(s_amesg[31]));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_no_arbiter.m_amesg_i[32]_i_1 
       (.I0(aresetn_d),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[32]_i_2 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[31]),
        .I3(s_axi_awaddr[31]),
        .O(s_amesg[32]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[3]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_awaddr[2]),
        .O(s_amesg[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[46]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_arprot[0]),
        .I3(s_axi_awprot[0]),
        .O(s_amesg[46]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[47]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_arprot[1]),
        .I3(s_axi_awprot[1]),
        .O(s_amesg[47]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[48]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_arprot[2]),
        .I3(s_axi_awprot[2]),
        .O(s_amesg[48]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[4]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_awaddr[3]),
        .O(s_amesg[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[5]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[4]),
        .I3(s_axi_awaddr[4]),
        .O(s_amesg[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[6]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[5]),
        .I3(s_axi_awaddr[5]),
        .O(s_amesg[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[7]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[6]),
        .I3(s_axi_awaddr[6]),
        .O(s_amesg[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[7]),
        .I3(s_axi_awaddr[7]),
        .O(s_amesg[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \gen_no_arbiter.m_amesg_i[9]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_araddr[8]),
        .I3(s_axi_awaddr[8]),
        .O(s_amesg[9]));
  FDRE \gen_no_arbiter.m_amesg_i_reg[10] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[10]),
        .Q(Q[9]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[11] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[11]),
        .Q(Q[10]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[12] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[12]),
        .Q(Q[11]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[13] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[13]),
        .Q(Q[12]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[14] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[14]),
        .Q(Q[13]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[15] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[15]),
        .Q(Q[14]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[16] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[16]),
        .Q(Q[15]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[17] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[17]),
        .Q(Q[16]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[18] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[18]),
        .Q(Q[17]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[19] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[19]),
        .Q(Q[18]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[1] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[1]),
        .Q(Q[0]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[20] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[20]),
        .Q(Q[19]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[21] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[21]),
        .Q(Q[20]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[22] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[22]),
        .Q(Q[21]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[23] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[23]),
        .Q(Q[22]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[24] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[24]),
        .Q(Q[23]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[25] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[25]),
        .Q(Q[24]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[26] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[26]),
        .Q(Q[25]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[27] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[27]),
        .Q(Q[26]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[28] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[28]),
        .Q(Q[27]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[29] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[29]),
        .Q(Q[28]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[2] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[2]),
        .Q(Q[1]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[30] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[30]),
        .Q(Q[29]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[31] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[31]),
        .Q(Q[30]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[32] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[32]),
        .Q(Q[31]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[3] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[3]),
        .Q(Q[2]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[46] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[46]),
        .Q(Q[32]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[47] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[47]),
        .Q(Q[33]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[48] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[48]),
        .Q(Q[34]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[4] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[4]),
        .Q(Q[3]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[5] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[5]),
        .Q(Q[4]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[6] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[6]),
        .Q(Q[5]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[7] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[7]),
        .Q(Q[6]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[8] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[8]),
        .Q(Q[7]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[9] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[9]),
        .Q(Q[8]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFF888CFFFF)) 
    \gen_no_arbiter.m_grant_hot_i[0]_inv_i_1 
       (.I0(m_valid_i),
        .I1(p_0_in1_in),
        .I2(s_axi_awvalid),
        .I3(s_axi_arvalid),
        .I4(aresetn_d),
        .I5(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_2_n_0 ),
        .O(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F002F2200002222)) 
    \gen_no_arbiter.m_grant_hot_i[0]_inv_i_2 
       (.I0(\gen_no_arbiter.m_valid_i_reg_1 ),
        .I1(\gen_no_arbiter.m_valid_i_reg_2 ),
        .I2(aa_grant_rnw),
        .I3(m_valid_i),
        .I4(\gen_no_arbiter.m_valid_i_reg_0 ),
        .I5(\m_ready_d[2]_i_3_n_0 ),
        .O(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \gen_no_arbiter.m_grant_hot_i_reg[0]_inv 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_1_n_0 ),
        .Q(p_0_in1_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \gen_no_arbiter.m_valid_i_i_1 
       (.I0(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_2_n_0 ),
        .I1(m_valid_i),
        .I2(p_0_in1_in),
        .O(\gen_no_arbiter.m_valid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_no_arbiter.m_valid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_no_arbiter.m_valid_i_i_1_n_0 ),
        .Q(m_valid_i),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_no_arbiter.s_ready_i[0]_i_1 
       (.I0(p_0_in1_in),
        .I1(aresetn_d),
        .I2(m_valid_i),
        .O(\gen_no_arbiter.s_ready_i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_no_arbiter.s_ready_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_no_arbiter.s_ready_i[0]_i_1_n_0 ),
        .Q(s_ready_i),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_atarget_enc[1]_i_1 
       (.I0(\m_atarget_enc[1]_i_2_n_0 ),
        .I1(\m_atarget_enc[1]_i_3_n_0 ),
        .I2(Q[31]),
        .I3(Q[19]),
        .I4(Q[23]),
        .O(any_error));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_atarget_enc[1]_i_2 
       (.I0(Q[28]),
        .I1(Q[21]),
        .I2(Q[24]),
        .I3(Q[16]),
        .I4(\m_atarget_enc[1]_i_4_n_0 ),
        .O(\m_atarget_enc[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_atarget_enc[1]_i_3 
       (.I0(Q[22]),
        .I1(Q[26]),
        .I2(Q[29]),
        .I3(Q[20]),
        .O(\m_atarget_enc[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \m_atarget_enc[1]_i_4 
       (.I0(Q[18]),
        .I1(Q[27]),
        .I2(Q[30]),
        .I3(Q[25]),
        .O(\m_atarget_enc[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \m_atarget_hot[0]_i_1 
       (.I0(any_error),
        .I1(p_0_in1_in),
        .I2(Q[17]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \m_atarget_hot[1]_i_1 
       (.I0(any_error),
        .I1(Q[17]),
        .I2(p_0_in1_in),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \m_atarget_hot[2]_i_1 
       (.I0(any_error),
        .I1(p_0_in1_in),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \m_axi_arvalid[0]_INST_0 
       (.I0(\gen_axilite.s_axi_bvalid_i_reg [0]),
        .I1(\gen_no_arbiter.m_valid_i_reg_0 ),
        .I2(\m_axi_arvalid[1] [1]),
        .O(m_axi_arvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \m_axi_arvalid[1]_INST_0 
       (.I0(\gen_axilite.s_axi_bvalid_i_reg [1]),
        .I1(\gen_no_arbiter.m_valid_i_reg_0 ),
        .I2(\m_axi_arvalid[1] [1]),
        .O(m_axi_arvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \m_axi_awvalid[0]_INST_0 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(\gen_axilite.s_axi_bvalid_i_reg [0]),
        .I3(\m_axi_awvalid[1] [2]),
        .O(m_axi_awvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \m_axi_awvalid[1]_INST_0 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(\gen_axilite.s_axi_bvalid_i_reg [1]),
        .I3(\m_axi_awvalid[1] [2]),
        .O(m_axi_awvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_bready[0]_INST_0 
       (.I0(\gen_axilite.s_axi_bvalid_i_reg [0]),
        .I1(\gen_no_arbiter.grant_rnw_reg_2 ),
        .O(m_axi_bready[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_bready[1]_INST_0 
       (.I0(\gen_axilite.s_axi_bvalid_i_reg [1]),
        .I1(\gen_no_arbiter.grant_rnw_reg_2 ),
        .O(m_axi_bready[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \m_axi_bready[1]_INST_0_i_1 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(s_axi_bready),
        .I3(\m_axi_awvalid[1] [0]),
        .O(\gen_no_arbiter.grant_rnw_reg_2 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_rready[0]_INST_0 
       (.I0(\gen_axilite.s_axi_bvalid_i_reg [0]),
        .I1(s_axi_rready_0_sn_1),
        .O(m_axi_rready[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_rready[1]_INST_0 
       (.I0(\gen_axilite.s_axi_bvalid_i_reg [1]),
        .I1(s_axi_rready_0_sn_1),
        .O(m_axi_rready[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \m_axi_rready[1]_INST_0_i_1 
       (.I0(s_axi_rready),
        .I1(\gen_no_arbiter.m_valid_i_reg_0 ),
        .I2(\m_axi_arvalid[1] [0]),
        .O(s_axi_rready_0_sn_1));
  LUT5 #(
    .INIT(32'h00400000)) 
    \m_axi_wvalid[0]_INST_0 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(s_axi_wvalid),
        .I3(\m_axi_awvalid[1] [1]),
        .I4(\gen_axilite.s_axi_bvalid_i_reg [0]),
        .O(m_axi_wvalid[0]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \m_axi_wvalid[1]_INST_0 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(s_axi_wvalid),
        .I3(\m_axi_awvalid[1] [1]),
        .I4(\gen_axilite.s_axi_bvalid_i_reg [1]),
        .O(m_axi_wvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF00FF40)) 
    \m_ready_d[1]_i_1 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(s_axi_wvalid),
        .I3(\m_axi_awvalid[1] [1]),
        .I4(\m_ready_d_reg[1] ),
        .O(\gen_no_arbiter.grant_rnw_reg_0 [0]));
  LUT2 #(
    .INIT(4'hB)) 
    \m_ready_d[2]_i_1 
       (.I0(\m_ready_d[2]_i_3_n_0 ),
        .I1(aresetn_d),
        .O(aresetn_d_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \m_ready_d[2]_i_2 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(\m_ready_d_reg[2] ),
        .I3(\m_axi_awvalid[1] [2]),
        .O(\gen_no_arbiter.grant_rnw_reg_0 [1]));
  LUT6 #(
    .INIT(64'h00F0004000F00000)) 
    \m_ready_d[2]_i_3 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(\gen_no_arbiter.grant_rnw_reg_0 [0]),
        .I3(\m_ready_d_reg[0] ),
        .I4(\m_axi_awvalid[1] [2]),
        .I5(\m_ready_d_reg[2] ),
        .O(\m_ready_d[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \s_arvalid_reg[0]_i_1 
       (.I0(s_ready_i),
        .I1(aresetn_d),
        .O(s_arvalid_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_arvalid_reg[0]_i_2 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .O(p_0_out));
  FDRE #(
    .INIT(1'b0)) 
    \s_arvalid_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_out),
        .Q(\s_arvalid_reg_reg_n_0_[0] ),
        .R(s_arvalid_reg));
  LUT4 #(
    .INIT(16'h0D00)) 
    \s_awvalid_reg[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(\s_arvalid_reg_reg_n_0_[0] ),
        .I3(s_axi_awvalid),
        .O(s_awvalid_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \s_awvalid_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_awvalid_reg0),
        .Q(s_awvalid_reg),
        .R(s_arvalid_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_arready[0]_INST_0 
       (.I0(aa_grant_rnw),
        .I1(s_ready_i),
        .O(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_awready[0]_INST_0 
       (.I0(s_ready_i),
        .I1(aa_grant_rnw),
        .O(s_axi_awready));
  LUT5 #(
    .INIT(32'h00000004)) 
    \s_axi_bvalid[0]_INST_0 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(\m_axi_awvalid[1] [0]),
        .I3(p_0_in1_in),
        .I4(s_axi_bvalid_0_sn_1),
        .O(s_axi_bvalid));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \s_axi_rvalid[0]_INST_0 
       (.I0(\m_axi_arvalid[1] [0]),
        .I1(\gen_no_arbiter.m_valid_i_reg_0 ),
        .I2(p_0_in1_in),
        .I3(s_axi_rvalid_0_sn_1),
        .O(s_axi_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_axi_rvalid[0]_INST_0_i_1 
       (.I0(m_valid_i),
        .I1(aa_grant_rnw),
        .O(\gen_no_arbiter.m_valid_i_reg_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \s_axi_wready[0]_INST_0 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(\m_axi_awvalid[1] [1]),
        .I3(p_0_in1_in),
        .I4(\m_ready_d_reg[1] ),
        .O(s_axi_wready));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_PROTOCOL = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_CONNECTIVITY_MODE = "0" *) (* C_DEBUG = "1" *) 
(* C_FAMILY = "artix7" *) (* C_M_AXI_ADDR_WIDTH = "64'b0000000000000000000000000001000000000000000000000000000000010000" *) (* C_M_AXI_BASE_ADDR = "128'b00000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000001000000000000100000000000000000" *) 
(* C_M_AXI_READ_CONNECTIVITY = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) (* C_M_AXI_READ_ISSUING = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) (* C_M_AXI_SECURE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_M_AXI_WRITE_CONNECTIVITY = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) (* C_M_AXI_WRITE_ISSUING = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) (* C_NUM_ADDR_RANGES = "1" *) 
(* C_NUM_MASTER_SLOTS = "2" *) (* C_NUM_SLAVE_SLOTS = "1" *) (* C_R_REGISTER = "0" *) 
(* C_S_AXI_ARB_PRIORITY = "0" *) (* C_S_AXI_BASE_ID = "0" *) (* C_S_AXI_READ_ACCEPTANCE = "1" *) 
(* C_S_AXI_SINGLE_THREAD = "1" *) (* C_S_AXI_THREAD_ID_WIDTH = "0" *) (* C_S_AXI_WRITE_ACCEPTANCE = "1" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_crossbar_v2_1_22_axi_crossbar" *) (* P_ADDR_DECODE = "1" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_AXILITE_SIZE = "3'b010" *) (* P_FAMILY = "artix7" *) (* P_INCR = "2'b01" *) 
(* P_LEN = "8" *) (* P_LOCK = "1" *) (* P_M_AXI_ERR_MODE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
(* P_M_AXI_SUPPORTS_READ = "2'b11" *) (* P_M_AXI_SUPPORTS_WRITE = "2'b11" *) (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) 
(* P_RANGE_CHECK = "1" *) (* P_S_AXI_BASE_ID = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* P_S_AXI_HIGH_ID = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
(* P_S_AXI_SUPPORTS_READ = "1'b1" *) (* P_S_AXI_SUPPORTS_WRITE = "1'b1" *) 
module design_1_axi_crossbar_0_0_axi_crossbar_v2_1_22_axi_crossbar
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
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wuser;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rlast;
  output [0:0]s_axi_ruser;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [1:0]m_axi_awid;
  output [63:0]m_axi_awaddr;
  output [15:0]m_axi_awlen;
  output [5:0]m_axi_awsize;
  output [3:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [7:0]m_axi_awcache;
  output [5:0]m_axi_awprot;
  output [7:0]m_axi_awregion;
  output [7:0]m_axi_awqos;
  output [1:0]m_axi_awuser;
  output [1:0]m_axi_awvalid;
  input [1:0]m_axi_awready;
  output [1:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output [1:0]m_axi_wlast;
  output [1:0]m_axi_wuser;
  output [1:0]m_axi_wvalid;
  input [1:0]m_axi_wready;
  input [1:0]m_axi_bid;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_buser;
  input [1:0]m_axi_bvalid;
  output [1:0]m_axi_bready;
  output [1:0]m_axi_arid;
  output [63:0]m_axi_araddr;
  output [15:0]m_axi_arlen;
  output [5:0]m_axi_arsize;
  output [3:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [7:0]m_axi_arcache;
  output [5:0]m_axi_arprot;
  output [7:0]m_axi_arregion;
  output [7:0]m_axi_arqos;
  output [1:0]m_axi_aruser;
  output [1:0]m_axi_arvalid;
  input [1:0]m_axi_arready;
  input [1:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [3:0]m_axi_rresp;
  input [1:0]m_axi_rlast;
  input [1:0]m_axi_ruser;
  input [1:0]m_axi_rvalid;
  output [1:0]m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [15:0]\^m_axi_araddr ;
  wire [2:0]\^m_axi_arprot ;
  wire [1:0]m_axi_arready;
  wire [1:0]m_axi_arvalid;
  wire [63:48]\^m_axi_awaddr ;
  wire [1:0]m_axi_awready;
  wire [1:0]m_axi_awvalid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [1:0]m_axi_rready;
  wire [3:0]m_axi_rresp;
  wire [1:0]m_axi_rvalid;
  wire [1:0]m_axi_wready;
  wire [1:0]m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [0:0]s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire [0:0]s_axi_wvalid;

  assign m_axi_araddr[63:48] = \^m_axi_awaddr [63:48];
  assign m_axi_araddr[47:32] = \^m_axi_araddr [15:0];
  assign m_axi_araddr[31:16] = \^m_axi_awaddr [63:48];
  assign m_axi_araddr[15:0] = \^m_axi_araddr [15:0];
  assign m_axi_arburst[3] = \<const0> ;
  assign m_axi_arburst[2] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[7] = \<const0> ;
  assign m_axi_arcache[6] = \<const0> ;
  assign m_axi_arcache[5] = \<const0> ;
  assign m_axi_arcache[4] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[15] = \<const0> ;
  assign m_axi_arlen[14] = \<const0> ;
  assign m_axi_arlen[13] = \<const0> ;
  assign m_axi_arlen[12] = \<const0> ;
  assign m_axi_arlen[11] = \<const0> ;
  assign m_axi_arlen[10] = \<const0> ;
  assign m_axi_arlen[9] = \<const0> ;
  assign m_axi_arlen[8] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[5:3] = \^m_axi_arprot [2:0];
  assign m_axi_arprot[2:0] = \^m_axi_arprot [2:0];
  assign m_axi_arqos[7] = \<const0> ;
  assign m_axi_arqos[6] = \<const0> ;
  assign m_axi_arqos[5] = \<const0> ;
  assign m_axi_arqos[4] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[7] = \<const0> ;
  assign m_axi_arregion[6] = \<const0> ;
  assign m_axi_arregion[5] = \<const0> ;
  assign m_axi_arregion[4] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[5] = \<const0> ;
  assign m_axi_arsize[4] = \<const0> ;
  assign m_axi_arsize[3] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[1] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awaddr[63:48] = \^m_axi_awaddr [63:48];
  assign m_axi_awaddr[47:32] = \^m_axi_araddr [15:0];
  assign m_axi_awaddr[31:16] = \^m_axi_awaddr [63:48];
  assign m_axi_awaddr[15:0] = \^m_axi_araddr [15:0];
  assign m_axi_awburst[3] = \<const0> ;
  assign m_axi_awburst[2] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[7] = \<const0> ;
  assign m_axi_awcache[6] = \<const0> ;
  assign m_axi_awcache[5] = \<const0> ;
  assign m_axi_awcache[4] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[15] = \<const0> ;
  assign m_axi_awlen[14] = \<const0> ;
  assign m_axi_awlen[13] = \<const0> ;
  assign m_axi_awlen[12] = \<const0> ;
  assign m_axi_awlen[11] = \<const0> ;
  assign m_axi_awlen[10] = \<const0> ;
  assign m_axi_awlen[9] = \<const0> ;
  assign m_axi_awlen[8] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[5:3] = \^m_axi_arprot [2:0];
  assign m_axi_awprot[2:0] = \^m_axi_arprot [2:0];
  assign m_axi_awqos[7] = \<const0> ;
  assign m_axi_awqos[6] = \<const0> ;
  assign m_axi_awqos[5] = \<const0> ;
  assign m_axi_awqos[4] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[7] = \<const0> ;
  assign m_axi_awregion[6] = \<const0> ;
  assign m_axi_awregion[5] = \<const0> ;
  assign m_axi_awregion[4] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[5] = \<const0> ;
  assign m_axi_awsize[4] = \<const0> ;
  assign m_axi_awsize[3] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[1] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_wdata[63:32] = s_axi_wdata;
  assign m_axi_wdata[31:0] = s_axi_wdata;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast[1] = \<const0> ;
  assign m_axi_wlast[0] = \<const0> ;
  assign m_axi_wstrb[7:4] = s_axi_wstrb;
  assign m_axi_wstrb[3:0] = s_axi_wstrb;
  assign m_axi_wuser[1] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axi_crossbar_0_0_axi_crossbar_v2_1_22_crossbar_sasd \gen_sasd.crossbar_sasd_0 
       (.Q({\^m_axi_arprot ,\^m_axi_awaddr ,\^m_axi_araddr }),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_22_crossbar_sasd" *) 
module design_1_axi_crossbar_0_0_axi_crossbar_v2_1_22_crossbar_sasd
   (Q,
    m_axi_wvalid,
    m_axi_awvalid,
    s_axi_wready,
    s_axi_bvalid,
    m_axi_bready,
    m_axi_arvalid,
    s_axi_rvalid,
    m_axi_rready,
    s_axi_rdata,
    s_axi_bresp,
    s_axi_rresp,
    s_axi_awready,
    s_axi_arready,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_arprot,
    s_axi_awprot,
    s_axi_awvalid,
    aresetn,
    aclk,
    s_axi_rready,
    m_axi_arready,
    m_axi_rvalid,
    m_axi_wready,
    m_axi_awready,
    m_axi_bvalid,
    m_axi_rdata,
    m_axi_bresp,
    m_axi_rresp);
  output [34:0]Q;
  output [1:0]m_axi_wvalid;
  output [1:0]m_axi_awvalid;
  output [0:0]s_axi_wready;
  output [0:0]s_axi_bvalid;
  output [1:0]m_axi_bready;
  output [1:0]m_axi_arvalid;
  output [0:0]s_axi_rvalid;
  output [1:0]m_axi_rready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_bresp;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_awready;
  output [0:0]s_axi_arready;
  input [0:0]s_axi_wvalid;
  input [0:0]s_axi_bready;
  input [0:0]s_axi_arvalid;
  input [31:0]s_axi_araddr;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_arprot;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_awvalid;
  input aresetn;
  input aclk;
  input [0:0]s_axi_rready;
  input [1:0]m_axi_arready;
  input [1:0]m_axi_rvalid;
  input [1:0]m_axi_wready;
  input [1:0]m_axi_awready;
  input [1:0]m_axi_bvalid;
  input [63:0]m_axi_rdata;
  input [3:0]m_axi_bresp;
  input [3:0]m_axi_rresp;

  wire [34:0]Q;
  wire aclk;
  wire addr_arbiter_inst_n_1;
  wire addr_arbiter_inst_n_2;
  wire addr_arbiter_inst_n_40;
  wire addr_arbiter_inst_n_45;
  wire addr_arbiter_inst_n_49;
  wire addr_arbiter_inst_n_51;
  wire addr_arbiter_inst_n_59;
  wire addr_arbiter_inst_n_62;
  wire any_error;
  wire aresetn;
  wire aresetn_d;
  wire \gen_decerr.decerr_slave_inst_n_2 ;
  wire \gen_decerr.decerr_slave_inst_n_3 ;
  wire \gen_decerr.decerr_slave_inst_n_4 ;
  wire \gen_decerr.decerr_slave_inst_n_5 ;
  wire \gen_decerr.decerr_slave_inst_n_6 ;
  wire [1:0]m_atarget_enc;
  wire \m_atarget_enc[0]_i_1_n_0 ;
  wire [2:0]m_atarget_hot;
  wire [0:0]m_atarget_hot0;
  wire [1:0]m_axi_arready;
  wire [1:0]m_axi_arvalid;
  wire [1:0]m_axi_awready;
  wire [1:0]m_axi_awvalid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [1:0]m_axi_rready;
  wire [3:0]m_axi_rresp;
  wire [1:0]m_axi_rvalid;
  wire [1:0]m_axi_wready;
  wire [1:0]m_axi_wvalid;
  wire [1:0]m_ready_d;
  wire [2:1]m_ready_d0;
  wire [0:0]m_ready_d0_0;
  wire [2:0]m_ready_d_1;
  wire [2:2]mi_bvalid;
  wire [2:2]mi_wready;
  wire reset;
  wire [31:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [0:0]s_axi_wready;
  wire [0:0]s_axi_wvalid;
  wire splitter_ar_n_0;
  wire splitter_aw_n_0;

  design_1_axi_crossbar_0_0_axi_crossbar_v2_1_22_addr_arbiter_sasd addr_arbiter_inst
       (.D({addr_arbiter_inst_n_1,addr_arbiter_inst_n_2,m_atarget_hot0}),
        .Q(Q),
        .SR(reset),
        .aclk(aclk),
        .any_error(any_error),
        .aresetn_d(aresetn_d),
        .aresetn_d_reg(addr_arbiter_inst_n_40),
        .\gen_axilite.s_axi_bvalid_i_reg (m_atarget_hot),
        .\gen_no_arbiter.grant_rnw_reg_0 (m_ready_d0),
        .\gen_no_arbiter.grant_rnw_reg_1 (addr_arbiter_inst_n_45),
        .\gen_no_arbiter.grant_rnw_reg_2 (addr_arbiter_inst_n_49),
        .\gen_no_arbiter.m_valid_i_reg_0 (addr_arbiter_inst_n_51),
        .\gen_no_arbiter.m_valid_i_reg_1 (m_ready_d0_0),
        .\gen_no_arbiter.m_valid_i_reg_2 (splitter_ar_n_0),
        .\m_atarget_hot_reg[2] (addr_arbiter_inst_n_62),
        .m_axi_arvalid(m_axi_arvalid),
        .\m_axi_arvalid[1] (m_ready_d),
        .m_axi_awvalid(m_axi_awvalid),
        .\m_axi_awvalid[1] (m_ready_d_1),
        .m_axi_bready(m_axi_bready),
        .m_axi_rready(m_axi_rready),
        .m_axi_wvalid(m_axi_wvalid),
        .\m_ready_d_reg[0] (splitter_aw_n_0),
        .\m_ready_d_reg[1] (\gen_decerr.decerr_slave_inst_n_4 ),
        .\m_ready_d_reg[2] (\gen_decerr.decerr_slave_inst_n_5 ),
        .mi_bvalid(mi_bvalid),
        .mi_wready(mi_wready),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_bvalid_0_sp_1(\gen_decerr.decerr_slave_inst_n_6 ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0_sp_1(addr_arbiter_inst_n_59),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_rvalid_0_sp_1(\gen_decerr.decerr_slave_inst_n_3 ),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    aresetn_d_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(aresetn_d),
        .R(1'b0));
  design_1_axi_crossbar_0_0_axi_crossbar_v2_1_22_decerr_slave \gen_decerr.decerr_slave_inst 
       (.Q(m_ready_d[1]),
        .SR(reset),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_axilite.s_axi_awready_i_reg_0 (addr_arbiter_inst_n_45),
        .\gen_axilite.s_axi_bvalid_i_reg_0 (addr_arbiter_inst_n_62),
        .\gen_axilite.s_axi_rvalid_i_reg_0 (addr_arbiter_inst_n_51),
        .\gen_axilite.s_axi_rvalid_i_reg_1 (m_atarget_hot[2]),
        .\gen_axilite.s_axi_rvalid_i_reg_2 (addr_arbiter_inst_n_59),
        .m_atarget_enc(m_atarget_enc),
        .m_axi_arready(m_axi_arready),
        .m_axi_arready_1_sp_1(\gen_decerr.decerr_slave_inst_n_2 ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awready_0_sp_1(\gen_decerr.decerr_slave_inst_n_5 ),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_bvalid_1_sp_1(\gen_decerr.decerr_slave_inst_n_6 ),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_rvalid_1_sp_1(\gen_decerr.decerr_slave_inst_n_3 ),
        .m_axi_wready(m_axi_wready),
        .m_axi_wready_0_sp_1(\gen_decerr.decerr_slave_inst_n_4 ),
        .mi_bvalid(mi_bvalid),
        .mi_wready(mi_wready));
  LUT3 #(
    .INIT(8'h04)) 
    \m_atarget_enc[0]_i_1 
       (.I0(Q[17]),
        .I1(aresetn_d),
        .I2(any_error),
        .O(\m_atarget_enc[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_atarget_enc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_atarget_enc[0]_i_1_n_0 ),
        .Q(m_atarget_enc[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_atarget_enc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(any_error),
        .Q(m_atarget_enc[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \m_atarget_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_atarget_hot0),
        .Q(m_atarget_hot[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \m_atarget_hot_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(addr_arbiter_inst_n_2),
        .Q(m_atarget_hot[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \m_atarget_hot_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(addr_arbiter_inst_n_1),
        .Q(m_atarget_hot[2]),
        .R(reset));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(m_axi_bresp[2]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_bresp[0]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_bresp[0]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(m_axi_bresp[3]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_bresp[1]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_bresp[1]));
  LUT4 #(
    .INIT(16'h3202)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(m_axi_rdata[0]),
        .I1(m_atarget_enc[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_axi_rdata[32]),
        .O(s_axi_rdata[0]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(m_axi_rdata[42]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[10]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[10]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(m_axi_rdata[43]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[11]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[11]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(m_axi_rdata[44]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[12]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[12]));
  LUT4 #(
    .INIT(16'h3202)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(m_axi_rdata[13]),
        .I1(m_atarget_enc[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_axi_rdata[45]),
        .O(s_axi_rdata[13]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(m_axi_rdata[46]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[14]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[14]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(m_axi_rdata[47]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[15]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[15]));
  LUT4 #(
    .INIT(16'h3202)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(m_axi_rdata[16]),
        .I1(m_atarget_enc[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_axi_rdata[48]),
        .O(s_axi_rdata[16]));
  LUT4 #(
    .INIT(16'h3202)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(m_axi_rdata[17]),
        .I1(m_atarget_enc[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_axi_rdata[49]),
        .O(s_axi_rdata[17]));
  LUT4 #(
    .INIT(16'h3202)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(m_axi_rdata[18]),
        .I1(m_atarget_enc[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_axi_rdata[50]),
        .O(s_axi_rdata[18]));
  LUT4 #(
    .INIT(16'h3202)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(m_axi_rdata[19]),
        .I1(m_atarget_enc[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_axi_rdata[51]),
        .O(s_axi_rdata[19]));
  LUT4 #(
    .INIT(16'h3202)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(m_axi_rdata[1]),
        .I1(m_atarget_enc[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_axi_rdata[33]),
        .O(s_axi_rdata[1]));
  LUT4 #(
    .INIT(16'h3202)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(m_axi_rdata[20]),
        .I1(m_atarget_enc[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_axi_rdata[52]),
        .O(s_axi_rdata[20]));
  LUT4 #(
    .INIT(16'h3202)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(m_axi_rdata[21]),
        .I1(m_atarget_enc[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_axi_rdata[53]),
        .O(s_axi_rdata[21]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(m_axi_rdata[54]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[22]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[22]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(m_axi_rdata[55]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[23]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[23]));
  LUT4 #(
    .INIT(16'h3202)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(m_axi_rdata[24]),
        .I1(m_atarget_enc[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_axi_rdata[56]),
        .O(s_axi_rdata[24]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(m_axi_rdata[57]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[25]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[25]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(m_axi_rdata[58]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[26]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[26]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(m_axi_rdata[59]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[27]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[27]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(m_axi_rdata[60]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[28]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[28]));
  LUT4 #(
    .INIT(16'h3202)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(m_axi_rdata[29]),
        .I1(m_atarget_enc[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_axi_rdata[61]),
        .O(s_axi_rdata[29]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(m_axi_rdata[34]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[2]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[2]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(m_axi_rdata[62]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[30]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[30]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(m_axi_rdata[63]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[31]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[31]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(m_axi_rdata[35]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[3]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[3]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(m_axi_rdata[36]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[4]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[4]));
  LUT4 #(
    .INIT(16'h3202)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(m_axi_rdata[5]),
        .I1(m_atarget_enc[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_axi_rdata[37]),
        .O(s_axi_rdata[5]));
  LUT4 #(
    .INIT(16'h3202)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(m_axi_rdata[6]),
        .I1(m_atarget_enc[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_axi_rdata[38]),
        .O(s_axi_rdata[6]));
  LUT4 #(
    .INIT(16'h3202)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(m_axi_rdata[7]),
        .I1(m_atarget_enc[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_axi_rdata[39]),
        .O(s_axi_rdata[7]));
  LUT4 #(
    .INIT(16'h3202)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(m_axi_rdata[8]),
        .I1(m_atarget_enc[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_axi_rdata[40]),
        .O(s_axi_rdata[8]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(m_axi_rdata[41]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rdata[9]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rdata[9]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(m_axi_rresp[2]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rresp[0]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rresp[0]));
  LUT4 #(
    .INIT(16'h22FC)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(m_axi_rresp[3]),
        .I1(m_atarget_enc[1]),
        .I2(m_axi_rresp[1]),
        .I3(m_atarget_enc[0]),
        .O(s_axi_rresp[1]));
  design_1_axi_crossbar_0_0_axi_crossbar_v2_1_22_splitter__parameterized0 splitter_ar
       (.D(m_ready_d0_0),
        .Q(m_ready_d),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\m_ready_d_reg[0]_0 (\gen_decerr.decerr_slave_inst_n_3 ),
        .\m_ready_d_reg[0]_1 (addr_arbiter_inst_n_59),
        .\m_ready_d_reg[1]_0 (splitter_ar_n_0),
        .\m_ready_d_reg[1]_1 (addr_arbiter_inst_n_51),
        .\m_ready_d_reg[1]_2 (\gen_decerr.decerr_slave_inst_n_2 ));
  design_1_axi_crossbar_0_0_axi_crossbar_v2_1_22_splitter splitter_aw
       (.D(m_ready_d0),
        .Q(m_ready_d_1),
        .SR(addr_arbiter_inst_n_40),
        .aclk(aclk),
        .\m_ready_d_reg[0]_0 (splitter_aw_n_0),
        .\m_ready_d_reg[0]_1 (\gen_decerr.decerr_slave_inst_n_6 ),
        .\m_ready_d_reg[0]_2 (addr_arbiter_inst_n_49));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_22_decerr_slave" *) 
module design_1_axi_crossbar_0_0_axi_crossbar_v2_1_22_decerr_slave
   (mi_bvalid,
    mi_wready,
    m_axi_arready_1_sp_1,
    m_axi_rvalid_1_sp_1,
    m_axi_wready_0_sp_1,
    m_axi_awready_0_sp_1,
    m_axi_bvalid_1_sp_1,
    SR,
    \gen_axilite.s_axi_bvalid_i_reg_0 ,
    aclk,
    m_axi_arready,
    m_atarget_enc,
    m_axi_rvalid,
    m_axi_wready,
    m_axi_awready,
    m_axi_bvalid,
    \gen_axilite.s_axi_awready_i_reg_0 ,
    Q,
    \gen_axilite.s_axi_rvalid_i_reg_0 ,
    \gen_axilite.s_axi_rvalid_i_reg_1 ,
    \gen_axilite.s_axi_rvalid_i_reg_2 ,
    aresetn_d);
  output [0:0]mi_bvalid;
  output [0:0]mi_wready;
  output m_axi_arready_1_sp_1;
  output m_axi_rvalid_1_sp_1;
  output m_axi_wready_0_sp_1;
  output m_axi_awready_0_sp_1;
  output m_axi_bvalid_1_sp_1;
  input [0:0]SR;
  input \gen_axilite.s_axi_bvalid_i_reg_0 ;
  input aclk;
  input [1:0]m_axi_arready;
  input [1:0]m_atarget_enc;
  input [1:0]m_axi_rvalid;
  input [1:0]m_axi_wready;
  input [1:0]m_axi_awready;
  input [1:0]m_axi_bvalid;
  input \gen_axilite.s_axi_awready_i_reg_0 ;
  input [0:0]Q;
  input \gen_axilite.s_axi_rvalid_i_reg_0 ;
  input [0:0]\gen_axilite.s_axi_rvalid_i_reg_1 ;
  input \gen_axilite.s_axi_rvalid_i_reg_2 ;
  input aresetn_d;

  wire [0:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn_d;
  wire \gen_axilite.s_axi_arready_i_i_1_n_0 ;
  wire \gen_axilite.s_axi_awready_i_i_1_n_0 ;
  wire \gen_axilite.s_axi_awready_i_reg_0 ;
  wire \gen_axilite.s_axi_bvalid_i_reg_0 ;
  wire \gen_axilite.s_axi_rvalid_i_i_1_n_0 ;
  wire \gen_axilite.s_axi_rvalid_i_reg_0 ;
  wire [0:0]\gen_axilite.s_axi_rvalid_i_reg_1 ;
  wire \gen_axilite.s_axi_rvalid_i_reg_2 ;
  wire [1:0]m_atarget_enc;
  wire [1:0]m_axi_arready;
  wire m_axi_arready_1_sn_1;
  wire [1:0]m_axi_awready;
  wire m_axi_awready_0_sn_1;
  wire [1:0]m_axi_bvalid;
  wire m_axi_bvalid_1_sn_1;
  wire [1:0]m_axi_rvalid;
  wire m_axi_rvalid_1_sn_1;
  wire [1:0]m_axi_wready;
  wire m_axi_wready_0_sn_1;
  wire [2:2]mi_arready;
  wire [0:0]mi_bvalid;
  wire [2:2]mi_rvalid;
  wire [0:0]mi_wready;

  assign m_axi_arready_1_sp_1 = m_axi_arready_1_sn_1;
  assign m_axi_awready_0_sp_1 = m_axi_awready_0_sn_1;
  assign m_axi_bvalid_1_sp_1 = m_axi_bvalid_1_sn_1;
  assign m_axi_rvalid_1_sp_1 = m_axi_rvalid_1_sn_1;
  assign m_axi_wready_0_sp_1 = m_axi_wready_0_sn_1;
  LUT6 #(
    .INIT(64'hAA00A8AAAA00AAAA)) 
    \gen_axilite.s_axi_arready_i_i_1 
       (.I0(aresetn_d),
        .I1(\gen_axilite.s_axi_rvalid_i_reg_0 ),
        .I2(Q),
        .I3(mi_arready),
        .I4(mi_rvalid),
        .I5(\gen_axilite.s_axi_rvalid_i_reg_1 ),
        .O(\gen_axilite.s_axi_arready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.s_axi_arready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.s_axi_arready_i_i_1_n_0 ),
        .Q(mi_arready),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE1)) 
    \gen_axilite.s_axi_awready_i_i_1 
       (.I0(\gen_axilite.s_axi_awready_i_reg_0 ),
        .I1(mi_bvalid),
        .I2(mi_wready),
        .O(\gen_axilite.s_axi_awready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.s_axi_awready_i_i_1_n_0 ),
        .Q(mi_wready),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.s_axi_bvalid_i_reg_0 ),
        .Q(mi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'h00FF0200FFFF0200)) 
    \gen_axilite.s_axi_rvalid_i_i_1 
       (.I0(mi_arready),
        .I1(Q),
        .I2(\gen_axilite.s_axi_rvalid_i_reg_0 ),
        .I3(\gen_axilite.s_axi_rvalid_i_reg_1 ),
        .I4(mi_rvalid),
        .I5(\gen_axilite.s_axi_rvalid_i_reg_2 ),
        .O(\gen_axilite.s_axi_rvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.s_axi_rvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.s_axi_rvalid_i_i_1_n_0 ),
        .Q(mi_rvalid),
        .R(SR));
  LUT5 #(
    .INIT(32'h00F0AACC)) 
    \m_ready_d[1]_i_4 
       (.I0(m_axi_arready[1]),
        .I1(m_axi_arready[0]),
        .I2(mi_arready),
        .I3(m_atarget_enc[0]),
        .I4(m_atarget_enc[1]),
        .O(m_axi_arready_1_sn_1));
  LUT5 #(
    .INIT(32'h00F0CCAA)) 
    \m_ready_d[2]_i_4 
       (.I0(m_axi_awready[0]),
        .I1(mi_wready),
        .I2(m_axi_awready[1]),
        .I3(m_atarget_enc[1]),
        .I4(m_atarget_enc[0]),
        .O(m_axi_awready_0_sn_1));
  LUT5 #(
    .INIT(32'hF530F53F)) 
    \s_axi_bvalid[0]_INST_0_i_1 
       (.I0(m_axi_bvalid[1]),
        .I1(mi_bvalid),
        .I2(m_atarget_enc[1]),
        .I3(m_atarget_enc[0]),
        .I4(m_axi_bvalid[0]),
        .O(m_axi_bvalid_1_sn_1));
  LUT5 #(
    .INIT(32'hF530F53F)) 
    \s_axi_rvalid[0]_INST_0_i_2 
       (.I0(m_axi_rvalid[1]),
        .I1(mi_rvalid),
        .I2(m_atarget_enc[1]),
        .I3(m_atarget_enc[0]),
        .I4(m_axi_rvalid[0]),
        .O(m_axi_rvalid_1_sn_1));
  LUT5 #(
    .INIT(32'hF035FF35)) 
    \s_axi_wready[0]_INST_0_i_1 
       (.I0(m_axi_wready[0]),
        .I1(m_axi_wready[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .I4(mi_wready),
        .O(m_axi_wready_0_sn_1));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_22_splitter" *) 
module design_1_axi_crossbar_0_0_axi_crossbar_v2_1_22_splitter
   (\m_ready_d_reg[0]_0 ,
    Q,
    D,
    \m_ready_d_reg[0]_1 ,
    \m_ready_d_reg[0]_2 ,
    SR,
    aclk);
  output \m_ready_d_reg[0]_0 ;
  output [2:0]Q;
  input [1:0]D;
  input \m_ready_d_reg[0]_1 ;
  input \m_ready_d_reg[0]_2 ;
  input [0:0]SR;
  input aclk;

  wire [1:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire [0:0]m_ready_d0;
  wire \m_ready_d_reg[0]_0 ;
  wire \m_ready_d_reg[0]_1 ;
  wire \m_ready_d_reg[0]_2 ;

  LUT1 #(
    .INIT(2'h1)) 
    \m_ready_d[0]_i_1 
       (.I0(\m_ready_d_reg[0]_0 ),
        .O(m_ready_d0));
  LUT3 #(
    .INIT(8'h45)) 
    \m_ready_d[0]_i_2 
       (.I0(Q[0]),
        .I1(\m_ready_d_reg[0]_1 ),
        .I2(\m_ready_d_reg[0]_2 ),
        .O(\m_ready_d_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_ready_d0),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[2]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_22_splitter" *) 
module design_1_axi_crossbar_0_0_axi_crossbar_v2_1_22_splitter__parameterized0
   (\m_ready_d_reg[1]_0 ,
    Q,
    D,
    \m_ready_d_reg[1]_1 ,
    \m_ready_d_reg[1]_2 ,
    aresetn_d,
    \m_ready_d_reg[0]_0 ,
    \m_ready_d_reg[0]_1 ,
    aclk);
  output \m_ready_d_reg[1]_0 ;
  output [1:0]Q;
  output [0:0]D;
  input \m_ready_d_reg[1]_1 ;
  input \m_ready_d_reg[1]_2 ;
  input aresetn_d;
  input \m_ready_d_reg[0]_0 ;
  input \m_ready_d_reg[0]_1 ;
  input aclk;

  wire [0:0]D;
  wire [1:0]Q;
  wire aclk;
  wire aresetn_d;
  wire [1:1]m_ready_d0;
  wire \m_ready_d[1]_i_1__0_n_0 ;
  wire \m_ready_d_reg[0]_0 ;
  wire \m_ready_d_reg[0]_1 ;
  wire \m_ready_d_reg[1]_0 ;
  wire \m_ready_d_reg[1]_1 ;
  wire \m_ready_d_reg[1]_2 ;

  LUT3 #(
    .INIT(8'hBA)) 
    \m_ready_d[0]_i_1__0 
       (.I0(Q[0]),
        .I1(\m_ready_d_reg[0]_0 ),
        .I2(\m_ready_d_reg[0]_1 ),
        .O(D));
  LUT3 #(
    .INIT(8'h2F)) 
    \m_ready_d[1]_i_1__0 
       (.I0(D),
        .I1(\m_ready_d_reg[1]_0 ),
        .I2(aresetn_d),
        .O(\m_ready_d[1]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_ready_d[1]_i_2 
       (.I0(\m_ready_d_reg[1]_0 ),
        .O(m_ready_d0));
  LUT3 #(
    .INIT(8'h45)) 
    \m_ready_d[1]_i_3 
       (.I0(Q[1]),
        .I1(\m_ready_d_reg[1]_1 ),
        .I2(\m_ready_d_reg[1]_2 ),
        .O(\m_ready_d_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D),
        .Q(Q[0]),
        .R(\m_ready_d[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_ready_d0),
        .Q(Q[1]),
        .R(\m_ready_d[1]_i_1__0_n_0 ));
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
