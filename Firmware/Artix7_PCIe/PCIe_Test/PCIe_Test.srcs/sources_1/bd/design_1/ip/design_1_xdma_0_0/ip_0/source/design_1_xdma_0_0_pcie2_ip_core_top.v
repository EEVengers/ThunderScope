//-----------------------------------------------------------------------------
//
// (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//-----------------------------------------------------------------------------
// Project    : Series-7 Integrated Block for PCI Express
// File       : design_1_xdma_0_0_pcie2_ip_core_top.v
// Version    : 3.3
//
// Description: 7-series solution wrapper : Endpoint for PCI Express
//
//
//
//--------------------------------------------------------------------------------

`timescale 1ps/1ps

(* CORE_GENERATION_INFO = "design_1_xdma_0_0_pcie2_ip,pcie_7x_v3_3_12,{LINK_CAP_MAX_LINK_SPEED=2,LINK_CAP_MAX_LINK_WIDTH=4,PCIE_CAP_DEVICE_PORT_TYPE=0000,DEV_CAP_MAX_PAYLOAD_SUPPORTED=2,USER_CLK_FREQ=3,REF_CLK_FREQ=0,MSI_CAP_ON=TRUE,MSI_CAP_MULTIMSGCAP=0,MSI_CAP_MULTIMSG_EXTENSION=0,MSIX_CAP_ON=FALSE,TL_TX_RAM_RADDR_LATENCY=0,TL_TX_RAM_RDATA_LATENCY=2,TL_RX_RAM_RADDR_LATENCY=0,TL_RX_RAM_RDATA_LATENCY=2,TL_RX_RAM_WRITE_LATENCY=0,\
VC0_TX_LASTPACKET=29,VC0_RX_RAM_LIMIT=7FF,VC0_TOTAL_CREDITS_PH=32,VC0_TOTAL_CREDITS_PD=437,VC0_TOTAL_CREDITS_NPH=12,VC0_TOTAL_CREDITS_NPD=24,VC0_TOTAL_CREDITS_CH=36,VC0_TOTAL_CREDITS_CD=461,VC0_CPL_INFINITE=TRUE,DEV_CAP_PHANTOM_FUNCTIONS_SUPPORT=0,DEV_CAP_EXT_TAG_SUPPORTED=TRUE,LINK_STATUS_SLOT_CLOCK_CONFIG=TRUE,DISABLE_LANE_REVERSAL=TRUE,DISABLE_SCRAMBLING=FALSE,DSN_CAP_ON=TRUE,REVISION_ID=00,VC_CAP_ON=FALSE}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_core_top # (
  parameter         CFG_VEND_ID        = 16'h10EE,
  parameter         CFG_DEV_ID         = 16'h7024,
  parameter         CFG_REV_ID         =  8'h00,
  parameter         CFG_SUBSYS_VEND_ID = 16'h10EE,
  parameter         CFG_SUBSYS_ID      = 16'h0007,

  parameter         EXT_PIPE_SIM = "FALSE",

  parameter         ALLOW_X8_GEN2 = "FALSE",
  parameter         PIPE_PIPELINE_STAGES = 1,
  parameter [11:0]  AER_BASE_PTR = 12'h000,
  parameter         AER_CAP_ECRC_CHECK_CAPABLE = "FALSE",
  parameter         AER_CAP_ECRC_GEN_CAPABLE = "FALSE",
  parameter         AER_CAP_MULTIHEADER = "FALSE",
  parameter [11:0]  AER_CAP_NEXTPTR = 12'h000,
  parameter [23:0]  AER_CAP_OPTIONAL_ERR_SUPPORT = 24'h000000,
  parameter         AER_CAP_ON = "FALSE",
  parameter         AER_CAP_PERMIT_ROOTERR_UPDATE = "FALSE",

  parameter [31:0]  BAR0 = 32'hFFFF000C,
  parameter [31:0]  BAR1 = 32'hFFFFFFFF,
  parameter [31:0]  BAR2 = 32'h00000000,
  parameter [31:0]  BAR3 = 32'h00000000,
  parameter [31:0]  BAR4 = 32'h00000000,
  parameter [31:0]  BAR5 = 32'h00000000,

  parameter         C_DATA_WIDTH = 128,
  parameter [31:0]  CARDBUS_CIS_POINTER = 32'h00000000,
  parameter [23:0]  CLASS_CODE = 24'h070001,
  parameter         CMD_INTX_IMPLEMENTED = "TRUE",
  parameter         CPL_TIMEOUT_DISABLE_SUPPORTED = "FALSE",
  parameter [3:0]   CPL_TIMEOUT_RANGES_SUPPORTED = 4'h2,

  parameter integer DEV_CAP_ENDPOINT_L0S_LATENCY = 0,
  parameter integer DEV_CAP_ENDPOINT_L1_LATENCY = 7,
  parameter         DEV_CAP_EXT_TAG_SUPPORTED = "TRUE",
  parameter integer DEV_CAP_MAX_PAYLOAD_SUPPORTED = 2,
  parameter integer DEV_CAP_PHANTOM_FUNCTIONS_SUPPORT = 0,

  parameter         DEV_CAP2_ARI_FORWARDING_SUPPORTED = "FALSE",
  parameter         DEV_CAP2_ATOMICOP32_COMPLETER_SUPPORTED = "FALSE",
  parameter         DEV_CAP2_ATOMICOP64_COMPLETER_SUPPORTED = "FALSE",
  parameter         DEV_CAP2_ATOMICOP_ROUTING_SUPPORTED = "FALSE",
  parameter         DEV_CAP2_CAS128_COMPLETER_SUPPORTED = "FALSE",
  parameter [1:0]   DEV_CAP2_TPH_COMPLETER_SUPPORTED = 2'b00,
  parameter         DEV_CONTROL_EXT_TAG_DEFAULT = "FALSE",

  parameter         DISABLE_LANE_REVERSAL = "TRUE",
  parameter         DISABLE_RX_POISONED_RESP = "FALSE",
  parameter         DISABLE_SCRAMBLING = "FALSE",
  parameter [11:0]  DSN_BASE_PTR = 12'h100,
  parameter [11:0]  DSN_CAP_NEXTPTR = 12'h000,
  parameter         DSN_CAP_ON = "TRUE",

  parameter [10:0]  ENABLE_MSG_ROUTE = 11'b00000000000,
  parameter         ENABLE_RX_TD_ECRC_TRIM = "FALSE",
  parameter [31:0]  EXPANSION_ROM = 32'h00000000,
  parameter [5:0]   EXT_CFG_CAP_PTR = 6'h3F,
  parameter [9:0]   EXT_CFG_XP_CAP_PTR = 10'h3FF,
  parameter [7:0]   HEADER_TYPE = 8'h00,
  parameter [7:0]   INTERRUPT_PIN = 8'h1,

  parameter [9:0]   LAST_CONFIG_DWORD = 10'h3FF,
  parameter         LINK_CAP_ASPM_OPTIONALITY = "FALSE",
  parameter         LINK_CAP_DLL_LINK_ACTIVE_REPORTING_CAP = "FALSE",
  parameter         LINK_CAP_LINK_BANDWIDTH_NOTIFICATION_CAP = "FALSE",
  parameter [3:0]   LINK_CAP_MAX_LINK_SPEED = 4'h2,
  parameter [5:0]   LINK_CAP_MAX_LINK_WIDTH = 6'h4,

  parameter         LINK_CTRL2_DEEMPHASIS = "FALSE",
  parameter         LINK_CTRL2_HW_AUTONOMOUS_SPEED_DISABLE = "FALSE",
  parameter [3:0]   LINK_CTRL2_TARGET_LINK_SPEED = 4'h2,
  parameter         LINK_STATUS_SLOT_CLOCK_CONFIG = "TRUE",

  parameter [14:0]  LL_ACK_TIMEOUT = 15'h0000,
  parameter         LL_ACK_TIMEOUT_EN = "FALSE",
  parameter integer LL_ACK_TIMEOUT_FUNC = 0,
  parameter [14:0]  LL_REPLAY_TIMEOUT = 15'h0000,
  parameter         LL_REPLAY_TIMEOUT_EN = "FALSE",
  parameter integer LL_REPLAY_TIMEOUT_FUNC = 1,

  parameter [5:0]   LTSSM_MAX_LINK_WIDTH = 6'h4,
  parameter         MSI_CAP_MULTIMSGCAP = 0,
  parameter         MSI_CAP_MULTIMSG_EXTENSION = 0,
  parameter         MSI_CAP_ON = "TRUE",
  parameter         MSI_CAP_PER_VECTOR_MASKING_CAPABLE = "FALSE",
  parameter         MSI_CAP_64_BIT_ADDR_CAPABLE = "TRUE",

  parameter         MSIX_CAP_ON = "FALSE",
  parameter         MSIX_CAP_PBA_BIR = 0,
  parameter [28:0]  MSIX_CAP_PBA_OFFSET = 29'h0,
  parameter         MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0]  MSIX_CAP_TABLE_OFFSET = 29'h0,
  parameter [10:0]  MSIX_CAP_TABLE_SIZE = 11'h000,

  parameter [3:0]   PCIE_CAP_DEVICE_PORT_TYPE = 4'h0,
  parameter [7:0]   PCIE_CAP_NEXTPTR = 8'h00,

  parameter         PM_CAP_DSI = "FALSE",
  parameter         PM_CAP_D1SUPPORT = "FALSE",
  parameter         PM_CAP_D2SUPPORT = "FALSE",
  parameter [7:0]   PM_CAP_NEXTPTR = 8'h48,
  parameter [4:0]   PM_CAP_PMESUPPORT = 5'h0F,
  parameter         PM_CSR_NOSOFTRST = "TRUE",

  parameter [1:0]   PM_DATA_SCALE0 = 2'h0,
  parameter [1:0]   PM_DATA_SCALE1 = 2'h0,
  parameter [1:0]   PM_DATA_SCALE2 = 2'h0,
  parameter [1:0]   PM_DATA_SCALE3 = 2'h0,
  parameter [1:0]   PM_DATA_SCALE4 = 2'h0,
  parameter [1:0]   PM_DATA_SCALE5 = 2'h0,
  parameter [1:0]   PM_DATA_SCALE6 = 2'h0,
  parameter [1:0]   PM_DATA_SCALE7 = 2'h0,

  parameter [7:0]   PM_DATA0 = 8'h00,
  parameter [7:0]   PM_DATA1 = 8'h00,
  parameter [7:0]   PM_DATA2 = 8'h00,
  parameter [7:0]   PM_DATA3 = 8'h00,
  parameter [7:0]   PM_DATA4 = 8'h00,
  parameter [7:0]   PM_DATA5 = 8'h00,
  parameter [7:0]   PM_DATA6 = 8'h00,
  parameter [7:0]   PM_DATA7 = 8'h00,

  parameter [11:0]  RBAR_BASE_PTR = 12'h000,
  parameter [4:0]   RBAR_CAP_CONTROL_ENCODEDBAR0 = 5'h00,
  parameter [4:0]   RBAR_CAP_CONTROL_ENCODEDBAR1 = 5'h00,
  parameter [4:0]   RBAR_CAP_CONTROL_ENCODEDBAR2 = 5'h00,
  parameter [4:0]   RBAR_CAP_CONTROL_ENCODEDBAR3 = 5'h00,
  parameter [4:0]   RBAR_CAP_CONTROL_ENCODEDBAR4 = 5'h00,
  parameter [4:0]   RBAR_CAP_CONTROL_ENCODEDBAR5 = 5'h00,
  parameter [2:0]   RBAR_CAP_INDEX0 = 3'h0,
  parameter [2:0]   RBAR_CAP_INDEX1 = 3'h0,
  parameter [2:0]   RBAR_CAP_INDEX2 = 3'h0,
  parameter [2:0]   RBAR_CAP_INDEX3 = 3'h0,
  parameter [2:0]   RBAR_CAP_INDEX4 = 3'h0,
  parameter [2:0]   RBAR_CAP_INDEX5 = 3'h0,
  parameter         RBAR_CAP_ON = "FALSE",
  parameter [31:0]  RBAR_CAP_SUP0 = 32'h00001,
  parameter [31:0]  RBAR_CAP_SUP1 = 32'h00001,
  parameter [31:0]  RBAR_CAP_SUP2 = 32'h00001,
  parameter [31:0]  RBAR_CAP_SUP3 = 32'h00001,
  parameter [31:0]  RBAR_CAP_SUP4 = 32'h00001,
  parameter [31:0]  RBAR_CAP_SUP5 = 32'h00001,
  parameter [2:0]   RBAR_NUM = 3'h0,

  parameter         RECRC_CHK = 0,
  parameter         RECRC_CHK_TRIM = "FALSE",
  parameter         REF_CLK_FREQ = 0,     // 0 - 100 MHz, 1 - 125 MHz, 2 - 250 MHz
  parameter         REM_WIDTH  = (C_DATA_WIDTH == 128) ? 2 : 1,
  parameter         KEEP_WIDTH = C_DATA_WIDTH / 8,

  parameter         TL_RX_RAM_RADDR_LATENCY = 0,
  parameter         TL_RX_RAM_WRITE_LATENCY = 0,
  parameter         TL_TX_RAM_RADDR_LATENCY = 0,
  parameter         TL_TX_RAM_WRITE_LATENCY = 0,
  parameter         TL_RX_RAM_RDATA_LATENCY = 2,
  parameter         TL_TX_RAM_RDATA_LATENCY = 2,
  parameter         TRN_NP_FC = "TRUE",
  parameter         TRN_DW = "TRUE",

  parameter         UPCONFIG_CAPABLE = "TRUE",
  parameter         UPSTREAM_FACING = "TRUE",
  parameter         UR_ATOMIC = "FALSE",
  parameter         UR_INV_REQ = "TRUE",
  parameter         UR_PRS_RESPONSE = "TRUE",
  parameter         USER_CLK_FREQ = 3,
  parameter         USER_CLK2_DIV2 = "TRUE",

  parameter [11:0]  VC_BASE_PTR = 12'h000,
  parameter [11:0]  VC_CAP_NEXTPTR = 12'h000,
  parameter         VC_CAP_ON = "FALSE",
  parameter         VC_CAP_REJECT_SNOOP_TRANSACTIONS = "FALSE",

  parameter         VC0_CPL_INFINITE = "TRUE",
  parameter [12:0]  VC0_RX_RAM_LIMIT = 13'h7FF,
  parameter         VC0_TOTAL_CREDITS_CD = 461,
  parameter         VC0_TOTAL_CREDITS_CH = 36,
  parameter         VC0_TOTAL_CREDITS_NPH = 12,
  parameter         VC0_TOTAL_CREDITS_NPD = 24,
  parameter         VC0_TOTAL_CREDITS_PD = 437,
  parameter         VC0_TOTAL_CREDITS_PH = 32,
  parameter         VC0_TX_LASTPACKET = 29,

  parameter [11:0]  VSEC_BASE_PTR = 12'h000,
  parameter [11:0]  VSEC_CAP_NEXTPTR = 12'h000,
  parameter         VSEC_CAP_ON = "FALSE",

  parameter         DISABLE_ASPM_L1_TIMER = "FALSE",
  parameter         DISABLE_BAR_FILTERING = "FALSE",
  parameter         DISABLE_ID_CHECK = "FALSE",
  parameter         DISABLE_RX_TC_FILTER = "FALSE",
  parameter [7:0]   DNSTREAM_LINK_NUM = 8'h00,

  parameter [15:0]  DSN_CAP_ID = 16'h0003,
  parameter [3:0]   DSN_CAP_VERSION = 4'h1,
  parameter         ENTER_RVRY_EI_L0 = "TRUE",
  parameter [4:0]   INFER_EI = 5'h00,
  parameter         IS_SWITCH = "FALSE",

  parameter         LINK_CAP_ASPM_SUPPORT = 1,
  parameter         LINK_CAP_CLOCK_POWER_MANAGEMENT = "FALSE",
  parameter         LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN1 = 7,
  parameter         LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN2 = 7,
  parameter         LINK_CAP_L0S_EXIT_LATENCY_GEN1 = 7,
  parameter         LINK_CAP_L0S_EXIT_LATENCY_GEN2 = 7,
  parameter         LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN1 = 7,
  parameter         LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN2 = 7,
  parameter         LINK_CAP_L1_EXIT_LATENCY_GEN1 = 7,
  parameter         LINK_CAP_L1_EXIT_LATENCY_GEN2 = 7,
  parameter         LINK_CAP_RSVD_23 = 0,
  parameter         LINK_CONTROL_RCB = 0,

  parameter [7:0]   MSI_BASE_PTR = 8'h48,
  parameter [7:0]   MSI_CAP_ID = 8'h05,
  parameter [7:0]   MSI_CAP_NEXTPTR = 8'h60,
  parameter [7:0]   MSIX_BASE_PTR = 8'h9C,
  parameter [7:0]   MSIX_CAP_ID = 8'h11,
  parameter [7:0]   MSIX_CAP_NEXTPTR =8'h00,

  parameter         N_FTS_COMCLK_GEN1 = 255,
  parameter         N_FTS_COMCLK_GEN2 = 255,
  parameter         N_FTS_GEN1 = 255,
  parameter         N_FTS_GEN2 = 255,

  parameter [7:0]   PCIE_BASE_PTR = 8'h60,
  parameter [7:0]   PCIE_CAP_CAPABILITY_ID = 8'h10,
  parameter [3:0]   PCIE_CAP_CAPABILITY_VERSION = 4'h2,
  parameter         PCIE_CAP_ON = "TRUE",
  parameter         PCIE_CAP_RSVD_15_14 = 0,
  parameter         PCIE_CAP_SLOT_IMPLEMENTED = "FALSE",
  parameter         PCIE_REVISION = 2,

  parameter         PL_AUTO_CONFIG = 0,
  parameter         PL_FAST_TRAIN = "FALSE",
  parameter         PCIE_EXT_CLK = "FALSE",

  parameter         PCIE_EXT_GT_COMMON = "FALSE",
  parameter         EXT_CH_GT_DRP      = "FALSE",
  parameter         TRANSCEIVER_CTRL_STATUS_PORTS = "FALSE", 
  parameter         SHARED_LOGIC_IN_CORE = "FALSE",

  parameter [7:0]   PM_BASE_PTR = 8'h40,
  parameter         PM_CAP_AUXCURRENT = 0,
  parameter [7:0]   PM_CAP_ID = 8'h01,
  parameter         PM_CAP_ON = "TRUE",
  parameter         PM_CAP_PME_CLOCK = "FALSE",
  parameter         PM_CAP_RSVD_04 = 0,
  parameter         PM_CAP_VERSION = 3,
  parameter         PM_CSR_BPCCEN = "FALSE",
  parameter         PM_CSR_B2B3 = "FALSE",

  parameter         ROOT_CAP_CRS_SW_VISIBILITY = "FALSE",
  parameter         SELECT_DLL_IF = "FALSE",
  parameter         SLOT_CAP_ATT_BUTTON_PRESENT = "FALSE",
  parameter         SLOT_CAP_ATT_INDICATOR_PRESENT = "FALSE",
  parameter         SLOT_CAP_ELEC_INTERLOCK_PRESENT = "FALSE",
  parameter         SLOT_CAP_HOTPLUG_CAPABLE = "FALSE",
  parameter         SLOT_CAP_HOTPLUG_SURPRISE = "FALSE",
  parameter         SLOT_CAP_MRL_SENSOR_PRESENT = "FALSE",
  parameter         SLOT_CAP_NO_CMD_COMPLETED_SUPPORT = "FALSE",
  parameter [12:0]  SLOT_CAP_PHYSICAL_SLOT_NUM = 13'h0000,
  parameter         SLOT_CAP_POWER_CONTROLLER_PRESENT = "FALSE",
  parameter         SLOT_CAP_POWER_INDICATOR_PRESENT = "FALSE",
  parameter         SLOT_CAP_SLOT_POWER_LIMIT_SCALE = 0,
  parameter [7:0]   SLOT_CAP_SLOT_POWER_LIMIT_VALUE = 8'h00,

  parameter integer SPARE_BIT0 = 0,

  parameter integer SPARE_BIT1 = 0,
  parameter integer SPARE_BIT2 = 0,
  parameter integer SPARE_BIT3 = 0,
  parameter integer SPARE_BIT4 = 0,
  parameter integer SPARE_BIT5 = 0,
  parameter integer SPARE_BIT6 = 0,
  parameter integer SPARE_BIT7 = 0,
  parameter integer SPARE_BIT8 = 0,
  parameter [7:0]   SPARE_BYTE0 = 8'h00,
  parameter [7:0]   SPARE_BYTE1 = 8'h00,
  parameter [7:0]   SPARE_BYTE2 = 8'h00,
  parameter [7:0]   SPARE_BYTE3 = 8'h00,
  parameter [31:0]  SPARE_WORD0 = 32'h00000000,
  parameter [31:0]  SPARE_WORD1 = 32'h00000000,
  parameter [31:0]  SPARE_WORD2 = 32'h00000000,
  parameter [31:0]  SPARE_WORD3 = 32'h00000000,

  parameter         TL_RBYPASS = "FALSE",
  parameter         TL_TFC_DISABLE = "FALSE",
  parameter         TL_TX_CHECKS_DISABLE = "FALSE",
  parameter         EXIT_LOOPBACK_ON_EI = "TRUE",

  parameter         CFG_ECRC_ERR_CPLSTAT = 0,
  parameter [7:0]   CAPABILITIES_PTR = 8'h40,
  parameter [6:0]   CRM_MODULE_RSTS = 7'h00,
  parameter         DEV_CAP_ENABLE_SLOT_PWR_LIMIT_SCALE = "TRUE",
  parameter         DEV_CAP_ENABLE_SLOT_PWR_LIMIT_VALUE = "TRUE",
  parameter         DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE = "FALSE",
  parameter         DEV_CAP_ROLE_BASED_ERROR = "TRUE",
  parameter         DEV_CAP_RSVD_14_12 = 0,
  parameter         DEV_CAP_RSVD_17_16 = 0,
  parameter         DEV_CAP_RSVD_31_29 = 0,
  parameter         DEV_CONTROL_AUX_POWER_SUPPORTED = "FALSE",

  parameter [15:0]  VC_CAP_ID = 16'h0002,
  parameter [3:0]   VC_CAP_VERSION = 4'h1,
  parameter [15:0]  VSEC_CAP_HDR_ID = 16'h1234,
  parameter [11:0]  VSEC_CAP_HDR_LENGTH = 12'h018,
  parameter [3:0]   VSEC_CAP_HDR_REVISION = 4'h1,
  parameter [15:0]  VSEC_CAP_ID = 16'h000B,
  parameter         VSEC_CAP_IS_LINK_VISIBLE = "TRUE",
  parameter [3:0]   VSEC_CAP_VERSION = 4'h1,

  parameter         DISABLE_ERR_MSG = "FALSE",
  parameter         DISABLE_LOCKED_FILTER = "FALSE",
  parameter         DISABLE_PPM_FILTER = "FALSE",
  parameter         ENDEND_TLP_PREFIX_FORWARDING_SUPPORTED = "FALSE",
  parameter         INTERRUPT_STAT_AUTO = "TRUE",
  parameter         MPS_FORCE = "FALSE",
  parameter [14:0]  PM_ASPML0S_TIMEOUT = 15'h0000,
  parameter         PM_ASPML0S_TIMEOUT_EN = "FALSE",
  parameter         PM_ASPML0S_TIMEOUT_FUNC = 0,
  parameter         PM_ASPM_FASTEXIT = "FALSE",
  parameter         PM_MF = "FALSE",

  parameter [1:0]   RP_AUTO_SPD = 2'h1,
  parameter [4:0]   RP_AUTO_SPD_LOOPCNT = 5'h1f,
  parameter         SIM_VERSION = "1.0",
  parameter         SSL_MESSAGE_AUTO = "FALSE",
  parameter         TECRC_EP_INV = "FALSE",
  parameter         UR_CFG1 = "TRUE",
  parameter         USE_RID_PINS = "FALSE",

// New Parameters
  parameter         DEV_CAP2_ENDEND_TLP_PREFIX_SUPPORTED = "FALSE",
  parameter         DEV_CAP2_EXTENDED_FMT_FIELD_SUPPORTED = "FALSE",
  parameter         DEV_CAP2_LTR_MECHANISM_SUPPORTED = "FALSE",
  parameter [1:0]   DEV_CAP2_MAX_ENDEND_TLP_PREFIXES = 2'h0,
  parameter         DEV_CAP2_NO_RO_ENABLED_PRPR_PASSING = "FALSE",

  parameter         LINK_CAP_SURPRISE_DOWN_ERROR_CAPABLE = "FALSE",

  parameter [15:0]  AER_CAP_ID = 16'h0001,
  parameter [3:0]   AER_CAP_VERSION = 4'h1,

  parameter [15:0]  RBAR_CAP_ID = 16'h0015,
  parameter [11:0]  RBAR_CAP_NEXTPTR = 12'h000,
  parameter [3:0]   RBAR_CAP_VERSION = 4'h1,
  parameter         PCIE_USE_MODE = "1.0",
  parameter         PCIE_GT_DEVICE = "GTP",
  parameter         PCIE_CHAN_BOND = 1,
  parameter         PCIE_PLL_SEL   = "CPLL",
  parameter         PCIE_ASYNC_EN  = "FALSE",
  parameter         PCIE_TXBUF_EN  = "FALSE",
  parameter         PL_INTERFACE = "TRUE",
  parameter         CFG_MGMT_IF = "TRUE",
  parameter         CFG_CTL_IF = "TRUE",
  parameter         CFG_STATUS_IF = "TRUE",
  parameter         RCV_MSG_IF = "TRUE",
  parameter         CFG_FC_IF = "TRUE",
  parameter         EXT_PIPE_INTERFACE = "FALSE",

  parameter         TX_MARGIN_FULL_0  = 7'b1001111,
  parameter         TX_MARGIN_FULL_1  = 7'b1001110,
  parameter         TX_MARGIN_FULL_2  = 7'b1001101,
  parameter         TX_MARGIN_FULL_3  = 7'b1001100,
  parameter         TX_MARGIN_FULL_4  = 7'b1000011,
  parameter         TX_MARGIN_LOW_0   = 7'b1000101,
  parameter         TX_MARGIN_LOW_1   = 7'b1000110,
  parameter         TX_MARGIN_LOW_2   = 7'b1000011,
  parameter         TX_MARGIN_LOW_3   = 7'b1000010,
  parameter         TX_MARGIN_LOW_4   = 7'b1000000,
  parameter         ENABLE_JTAG_DBG = "FALSE"
)
(

  //----------------------------------------------------------------------------------------------------------------//
  // 1. PCI Express (pci_exp) Interface                                                                             //
  //----------------------------------------------------------------------------------------------------------------//

  // Tx
  output [(LINK_CAP_MAX_LINK_WIDTH - 1) : 0] pci_exp_txn,
  output [(LINK_CAP_MAX_LINK_WIDTH - 1) : 0] pci_exp_txp,

  // Rx
  input  [(LINK_CAP_MAX_LINK_WIDTH - 1) : 0] pci_exp_rxn,
  input  [(LINK_CAP_MAX_LINK_WIDTH - 1) : 0] pci_exp_rxp,

  //----------------------------------------------------------------------------------------------------------------//
  // 2. Clock & GT COMMON Sharing Interface                                                                         //
  //----------------------------------------------------------------------------------------------------------------//

  // Shared Logic Internal
  output                                     int_pclk_out_slave,
  output                                     int_pipe_rxusrclk_out,
  output [(LINK_CAP_MAX_LINK_WIDTH-1):0]     int_rxoutclk_out,
  output                                     int_dclk_out,
  output                                     int_userclk1_out,
  output                                     int_userclk2_out,
  output                                     int_oobclk_out,
  output                                     int_mmcm_lock_out,
  output  [1:0]                              int_qplllock_out,
  output  [1:0]                              int_qplloutclk_out,
  output  [1:0]                              int_qplloutrefclk_out,
  input  [(LINK_CAP_MAX_LINK_WIDTH-1):0]     int_pclk_sel_slave,

 // Shared Logic External  - Clocks
  input                                      pipe_pclk_in,
  input                                      pipe_rxusrclk_in,
  input  [(LINK_CAP_MAX_LINK_WIDTH - 1) : 0] pipe_rxoutclk_in,
  input                                      pipe_dclk_in,
  input                                      pipe_userclk1_in,
  input                                      pipe_userclk2_in,
  input                                      pipe_oobclk_in,
  input                                      pipe_mmcm_lock_in,

  output                                     pipe_txoutclk_out,
  output [(LINK_CAP_MAX_LINK_WIDTH - 1) : 0] pipe_rxoutclk_out,
  output [(LINK_CAP_MAX_LINK_WIDTH - 1) : 0] pipe_pclk_sel_out,
  output                                     pipe_gen3_out,

  // Shared Logic External - GT COMMON  

  input  [11:0]                               qpll_drp_crscode,
  input  [17:0]                               qpll_drp_fsm,
  input  [1:0]                                qpll_drp_done,
  input  [1:0]                                qpll_drp_reset,
  input  [1:0]                                qpll_qplllock,
  input  [1:0]                                qpll_qplloutclk,
  input  [1:0]                                qpll_qplloutrefclk,
  output                                      qpll_qplld,
  output [1:0]                                qpll_qpllreset,
  output                                      qpll_drp_clk,
  output                                      qpll_drp_rst_n,
  output                                      qpll_drp_ovrd,
  output                                      qpll_drp_gen3,
  output                                      qpll_drp_start,

  //----------------------------------------------------------------------------------------------------------------//
  // 3. AXI-S Interface                                                                                             //
  //----------------------------------------------------------------------------------------------------------------//

  // Common
  output                                     user_clk_out,
  output reg                                 user_reset_out,
  output                                     user_lnk_up,
  output wire                                user_app_rdy,

  // AXI TX
  //-----------
  output  [5:0]                              tx_buf_av,
  output                                     tx_err_drop,
  output                                     tx_cfg_req,
  input  [C_DATA_WIDTH-1:0]                  s_axis_tx_tdata,
  input                                      s_axis_tx_tvalid,
  output                                     s_axis_tx_tready,
  input    [KEEP_WIDTH-1:0]                  s_axis_tx_tkeep,
  input                                      s_axis_tx_tlast,
  input               [3:0]                  s_axis_tx_tuser,
  input                                      tx_cfg_gnt,

  // AXI RX
  //-----------
  output [C_DATA_WIDTH-1:0]                  m_axis_rx_tdata,
  output                                     m_axis_rx_tvalid,
  input                                      m_axis_rx_tready,
  output   [KEEP_WIDTH-1:0]                  m_axis_rx_tkeep,
  output                                     m_axis_rx_tlast,
  output             [21:0]                  m_axis_rx_tuser,
  input                                      rx_np_ok,
  input                                      rx_np_req,

  // Flow Control
  output  [11:0]                             fc_cpld,
  output  [7:0]                              fc_cplh,
  output  [11:0]                             fc_npd,
  output  [7:0]                              fc_nph,
  output  [11:0]                             fc_pd,
  output  [7:0]                              fc_ph,
  input   [2:0]                              fc_sel,


  //----------------------------------------------------------------------------------------------------------------//
  // 4. Configuration (CFG) Interface                                                                               //
  //----------------------------------------------------------------------------------------------------------------//

  //------------------------------------------------//
  // EP and RP                                      //
  //------------------------------------------------//
  output wire  [31:0]  cfg_mgmt_do,
  output wire          cfg_mgmt_rd_wr_done,

  output wire  [15:0]  cfg_status,
  output wire  [15:0]  cfg_command,
  output wire  [15:0]  cfg_dstatus,
  output wire  [15:0]  cfg_dcommand,
  output wire  [15:0]  cfg_lstatus,
  output wire  [15:0]  cfg_lcommand,
  output wire  [15:0]  cfg_dcommand2,
  output       [2:0]   cfg_pcie_link_state,

  output wire          cfg_pmcsr_pme_en,
  output wire  [1:0]   cfg_pmcsr_powerstate,
  output wire          cfg_pmcsr_pme_status,
  output wire          cfg_received_func_lvl_rst,

  // Management Interface
  input wire   [31:0]  cfg_mgmt_di,
  input wire   [3:0]   cfg_mgmt_byte_en,
  input wire   [9:0]   cfg_mgmt_dwaddr,
  input wire           cfg_mgmt_wr_en,
  input wire           cfg_mgmt_rd_en,
  input wire           cfg_mgmt_wr_readonly,

  // Error Reporting Interface
  input wire           cfg_err_ecrc,
  input wire           cfg_err_ur,
  input wire           cfg_err_cpl_timeout,
  input wire           cfg_err_cpl_unexpect,
  input wire           cfg_err_cpl_abort,
  input wire           cfg_err_posted,
  input wire           cfg_err_cor,
  input wire           cfg_err_atomic_egress_blocked,
  input wire           cfg_err_internal_cor,
  input wire           cfg_err_malformed,
  input wire           cfg_err_mc_blocked,
  input wire           cfg_err_poisoned,
  input wire           cfg_err_norecovery,
  input wire  [47:0]   cfg_err_tlp_cpl_header,
  output wire          cfg_err_cpl_rdy,
  input wire           cfg_err_locked,
  input wire           cfg_err_acs,
  input wire           cfg_err_internal_uncor,

  input wire           cfg_trn_pending,
  input wire           cfg_pm_halt_aspm_l0s,
  input wire           cfg_pm_halt_aspm_l1,
  input wire           cfg_pm_force_state_en,
  input wire   [1:0]   cfg_pm_force_state,

  input wire  [63:0]   cfg_dsn,
  output               cfg_msg_received,
  output      [15:0]   cfg_msg_data,

  //------------------------------------------------//
  // EP Only                                        //
  //------------------------------------------------//

  // Interrupt Interface Signals
  input wire           cfg_interrupt,
  output wire          cfg_interrupt_rdy,
  input wire           cfg_interrupt_assert,
  input wire   [7:0]   cfg_interrupt_di,
  output wire  [7:0]   cfg_interrupt_do,
  output wire  [2:0]   cfg_interrupt_mmenable,
  output wire          cfg_interrupt_msienable,
  output wire          cfg_interrupt_msixenable,
  output wire          cfg_interrupt_msixfm,
  input wire           cfg_interrupt_stat,
  input wire   [4:0]   cfg_pciecap_interrupt_msgnum,


  output               cfg_to_turnoff,
  input wire           cfg_turnoff_ok,
  output wire  [7:0]   cfg_bus_number,
  output wire  [4:0]   cfg_device_number,
  output wire  [2:0]   cfg_function_number,
  input wire           cfg_pm_wake,

  output wire          cfg_msg_received_pm_as_nak,
  output wire          cfg_msg_received_setslotpowerlimit,

  //------------------------------------------------//
  // RP Only                                        //
  //------------------------------------------------//
  input wire           cfg_pm_send_pme_to,
  input  wire  [7:0]   cfg_ds_bus_number,
  input  wire  [4:0]   cfg_ds_device_number,
  input  wire  [2:0]   cfg_ds_function_number,

  input wire           cfg_mgmt_wr_rw1c_as_rw,

  output wire          cfg_bridge_serr_en,
  output wire          cfg_slot_control_electromech_il_ctl_pulse,
  output wire          cfg_root_control_syserr_corr_err_en,
  output wire          cfg_root_control_syserr_non_fatal_err_en,
  output wire          cfg_root_control_syserr_fatal_err_en,
  output wire          cfg_root_control_pme_int_en,
  output wire          cfg_aer_rooterr_corr_err_reporting_en,
  output wire          cfg_aer_rooterr_non_fatal_err_reporting_en,
  output wire          cfg_aer_rooterr_fatal_err_reporting_en,
  output wire          cfg_aer_rooterr_corr_err_received,
  output wire          cfg_aer_rooterr_non_fatal_err_received,
  output wire          cfg_aer_rooterr_fatal_err_received,

  output wire          cfg_msg_received_err_cor,
  output wire          cfg_msg_received_err_non_fatal,
  output wire          cfg_msg_received_err_fatal,
  output wire          cfg_msg_received_pm_pme,
  output wire          cfg_msg_received_pme_to_ack,
  output wire          cfg_msg_received_assert_int_a,
  output wire          cfg_msg_received_assert_int_b,
  output wire          cfg_msg_received_assert_int_c,
  output wire          cfg_msg_received_assert_int_d,
  output wire          cfg_msg_received_deassert_int_a,
  output wire          cfg_msg_received_deassert_int_b,
  output wire          cfg_msg_received_deassert_int_c,
  output wire          cfg_msg_received_deassert_int_d,

  //----------------------------------------------------------------------------------------------------------------//
  // 5. Physical Layer Control and Status (PL) Interface                                                            //
  //----------------------------------------------------------------------------------------------------------------//

  //------------------------------------------------//
  // EP and RP                                      //
  //------------------------------------------------//
  input wire   [1:0]   pl_directed_link_change,
  input wire   [1:0]   pl_directed_link_width,
  input wire           pl_directed_link_speed,
  input wire           pl_directed_link_auton,
  input wire           pl_upstream_prefer_deemph,



  output wire          pl_sel_lnk_rate,
  output wire  [1:0]   pl_sel_lnk_width,
  output wire  [5:0]   pl_ltssm_state,
  output wire  [1:0]   pl_lane_reversal_mode,

  output wire          pl_phy_lnk_up,
  output wire  [2:0]   pl_tx_pm_state,
  output wire  [1:0]   pl_rx_pm_state,

  output wire          pl_link_upcfg_cap,
  output wire          pl_link_gen2_cap,
  output wire          pl_link_partner_gen2_supported,
  output wire  [2:0]   pl_initial_link_width,

  output wire          pl_directed_change_done,

  //------------------------------------------------//
  // EP Only                                        //
  //------------------------------------------------//
  output wire          pl_received_hot_rst,

  //------------------------------------------------//
  // RP Only                                        //
  //------------------------------------------------//
  input wire           pl_transmit_hot_rst,
  input wire           pl_downstream_deemph_source,

  //----------------------------------------------------------------------------------------------------------------//
  // 6. AER interface                                                                                               //
  //----------------------------------------------------------------------------------------------------------------//

  input wire [127:0]   cfg_err_aer_headerlog,
  input wire   [4:0]   cfg_aer_interrupt_msgnum,
  output wire          cfg_err_aer_headerlog_set,
  output wire          cfg_aer_ecrc_check_en,
  output wire          cfg_aer_ecrc_gen_en,

  //----------------------------------------------------------------------------------------------------------------//
  // 7. VC interface                                                                                                //
  //----------------------------------------------------------------------------------------------------------------//

  output wire [6:0]    cfg_vc_tcvc_map,

  //----------------------------------------------------------------------------------------------------------------//
  // PCIe Fast Config: ICAP primitive Interface                                                                     //
  //----------------------------------------------------------------------------------------------------------------//

  input wire                          icap_clk,
  input wire                          icap_csib,
  input wire                          icap_rdwrb,
  input wire  [31:0]                  icap_i,
  output wire [31:0]                  icap_o,



  input       [ 2:0]  pipe_txprbssel,
  input       [ 2:0]  pipe_rxprbssel,
  input               pipe_txprbsforceerr,
  input               pipe_rxprbscntreset,
  input       [ 2:0]  pipe_loopback,

  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_rxprbserr,
  input       [LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_txinhibit,


  output      [4:0]                             pipe_rst_fsm,
  output      [11:0]                            pipe_qrst_fsm,
  output      [(LINK_CAP_MAX_LINK_WIDTH*5)-1:0] pipe_rate_fsm,
  output      [(LINK_CAP_MAX_LINK_WIDTH*6)-1:0] pipe_sync_fsm_tx,
  output      [(LINK_CAP_MAX_LINK_WIDTH*7)-1:0] pipe_sync_fsm_rx,
  output      [(LINK_CAP_MAX_LINK_WIDTH*7)-1:0] pipe_drp_fsm,

  output                                        pipe_rst_idle,
  output                                        pipe_qrst_idle,
  output                                        pipe_rate_idle,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_eyescandataerror,
  output      [(LINK_CAP_MAX_LINK_WIDTH*3)-1:0] pipe_rxstatus,
  output     [(LINK_CAP_MAX_LINK_WIDTH*15)-1:0] pipe_dmonitorout,

  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_cpll_lock,
  output     [(LINK_CAP_MAX_LINK_WIDTH-1)>>2:0] pipe_qpll_lock,
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_rxpmaresetdone,       
  output     [(LINK_CAP_MAX_LINK_WIDTH*3)-1:0]  pipe_rxbufstatus,         
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_txphaligndone,       
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_txphinitdone,        
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_txdlysresetdone,    
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_rxphaligndone,      
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_rxdlysresetdone,     
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_rxsyncdone,       
  output     [(LINK_CAP_MAX_LINK_WIDTH*8)-1:0]  pipe_rxdisperr,       
  output     [(LINK_CAP_MAX_LINK_WIDTH*8)-1:0]  pipe_rxnotintable,      
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_rxcommadet,        

  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     gt_ch_drp_rdy,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_0,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_1,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_2,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_3,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_4,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_5,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_6,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_7,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_8,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_9,
  output      [31:0]                            pipe_debug,

  //--------------Channel DRP---------------------------------
  output                                          ext_ch_gt_drpclk,
  input        [(LINK_CAP_MAX_LINK_WIDTH*9)-1:0]  ext_ch_gt_drpaddr,
  input        [LINK_CAP_MAX_LINK_WIDTH-1:0]      ext_ch_gt_drpen,
  input        [(LINK_CAP_MAX_LINK_WIDTH*16)-1:0] ext_ch_gt_drpdi,
  input        [LINK_CAP_MAX_LINK_WIDTH-1:0]      ext_ch_gt_drpwe,

  output       [(LINK_CAP_MAX_LINK_WIDTH*16)-1:0] ext_ch_gt_drpdo,
  output       [LINK_CAP_MAX_LINK_WIDTH-1:0]      ext_ch_gt_drprdy,


  //----------------------------------------------------------------------------------------------------------------//
  // PCIe Fast Config: STARTUP primitive Interface                                                                  //
  //----------------------------------------------------------------------------------------------------------------//

  // This input should be used when the startup block is generated exteranl to the PCI Express Core
  input            startup_eos_in,     // 1-bit input: This signal should be driven by the EOS output of the STARTUP primitive.
  // These inputs and outputs may be use when the startup block is generated internal to the PCI Express Core.
  output           startup_cfgclk,     // 1-bit output: Configuration main clock output
  output           startup_cfgmclk,    // 1-bit output: Configuration internal oscillator clock output
  output           startup_eos,        // 1-bit output: Active high output signal indicating the End Of Startup
  output           startup_preq,       // 1-bit output: PROGRAM request to fabric output
  input            startup_clk,        // 1-bit input: User start-up clock input
  input            startup_gsr,        // 1-bit input: Global Set/Reset input (GSR cannot be used for the port name)
  input            startup_gts,        // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
  input            startup_keyclearb,  // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
  input            startup_pack,       // 1-bit input: PROGRAM acknowledge input
  input            startup_usrcclko,   // 1-bit input: User CCLK input
  input            startup_usrcclkts,  // 1-bit input: User CCLK 3-state enable input
  input            startup_usrdoneo,   // 1-bit input: User DONE pin output control
  input            startup_usrdonets,  // 1-bit input: User DONE 3-state enable output 

  //----------------------------------------------------------------------------------------------------------------//
  // 8. PCIe DRP (PCIe DRP) Interface                                                                               //
  //----------------------------------------------------------------------------------------------------------------//

  input  wire          pcie_drp_clk,
  input  wire          pcie_drp_en,
  input  wire          pcie_drp_we,
  input  wire   [8:0]  pcie_drp_addr,
  input  wire  [15:0]  pcie_drp_di,
  output wire          pcie_drp_rdy,
  output wire  [15:0]  pcie_drp_do,
  //----------------------------------------------------------------------------------------------------------------//
  // PIPE PORTS to TOP Level For PIPE SIMULATION with 3rd Party IP/BFM/Xilinx BFM
  //----------------------------------------------------------------------------------------------------------------//
  input wire   [11:0]  common_commands_in,
  input wire   [24:0]  pipe_rx_0_sigs,
  input wire   [24:0]  pipe_rx_1_sigs,
  input wire   [24:0]  pipe_rx_2_sigs,
  input wire   [24:0]  pipe_rx_3_sigs,
  input wire   [24:0]  pipe_rx_4_sigs,
  input wire   [24:0]  pipe_rx_5_sigs,
  input wire   [24:0]  pipe_rx_6_sigs,
  input wire   [24:0]  pipe_rx_7_sigs,

  output wire  [11:0]  common_commands_out,
  output wire  [24:0]  pipe_tx_0_sigs,
  output wire  [24:0]  pipe_tx_1_sigs,
  output wire  [24:0]  pipe_tx_2_sigs,
  output wire  [24:0]  pipe_tx_3_sigs,
  output wire  [24:0]  pipe_tx_4_sigs,
  output wire  [24:0]  pipe_tx_5_sigs,
  output wire  [24:0]  pipe_tx_6_sigs,
  output wire  [24:0]  pipe_tx_7_sigs,
  //----------------------------------------------------------------------------------------------------------------//
  // 9. System(SYS) Interface                                                                                       //
  //----------------------------------------------------------------------------------------------------------------//

  input wire           pipe_mmcm_rst_n,        // Async      | Async
  input wire           sys_clk,
  input wire           sys_rst_n
);

  wire                 user_clk;
  wire                 user_clk2;
  wire                 pipe_clk;
  wire [15:0]          cfg_vend_id        = CFG_VEND_ID;
  wire [15:0]          cfg_dev_id         = CFG_DEV_ID;
  wire [7:0]           cfg_rev_id         = CFG_REV_ID;
  wire [15:0]          cfg_subsys_vend_id = CFG_SUBSYS_VEND_ID;
  wire [15:0]          cfg_subsys_id      = CFG_SUBSYS_ID;

  // PIPE Interface Wires
  wire                 phy_rdy_n;
  wire                 pipe_rx0_polarity_gt;
  wire                 pipe_rx1_polarity_gt;
  wire                 pipe_rx2_polarity_gt;
  wire                 pipe_rx3_polarity_gt;
  wire                 pipe_rx4_polarity_gt;
  wire                 pipe_rx5_polarity_gt;
  wire                 pipe_rx6_polarity_gt;
  wire                 pipe_rx7_polarity_gt;
  wire                 pipe_tx_deemph_gt;
  wire [2:0]           pipe_tx_margin_gt;
  wire                 pipe_tx_rate_gt;
  wire                 pipe_tx_rcvr_det_gt;
  wire [1:0]           pipe_tx0_char_is_k_gt;
  wire                 pipe_tx0_compliance_gt;
  wire [15:0]          pipe_tx0_data_gt;
  wire                 pipe_tx0_elec_idle_gt;
  wire [1:0]           pipe_tx0_powerdown_gt;
  wire [1:0]           pipe_tx1_char_is_k_gt;
  wire                 pipe_tx1_compliance_gt;
  wire [15:0]          pipe_tx1_data_gt;
  wire                 pipe_tx1_elec_idle_gt;
  wire [1:0]           pipe_tx1_powerdown_gt;
  wire [1:0]           pipe_tx2_char_is_k_gt;
  wire                 pipe_tx2_compliance_gt;
  wire [15:0]          pipe_tx2_data_gt;
  wire                 pipe_tx2_elec_idle_gt;
  wire [1:0]           pipe_tx2_powerdown_gt;
  wire [1:0]           pipe_tx3_char_is_k_gt;
  wire                 pipe_tx3_compliance_gt;
  wire [15:0]          pipe_tx3_data_gt;
  wire                 pipe_tx3_elec_idle_gt;
  wire [1:0]           pipe_tx3_powerdown_gt;
  wire [1:0]           pipe_tx4_char_is_k_gt;
  wire                 pipe_tx4_compliance_gt;
  wire [15:0]          pipe_tx4_data_gt;
  wire                 pipe_tx4_elec_idle_gt;
  wire [1:0]           pipe_tx4_powerdown_gt;
  wire [1:0]           pipe_tx5_char_is_k_gt;
  wire                 pipe_tx5_compliance_gt;
  wire [15:0]          pipe_tx5_data_gt;
  wire                 pipe_tx5_elec_idle_gt;
  wire [1:0]           pipe_tx5_powerdown_gt;
  wire [1:0]           pipe_tx6_char_is_k_gt;
  wire                 pipe_tx6_compliance_gt;
  wire [15:0]          pipe_tx6_data_gt;
  wire                 pipe_tx6_elec_idle_gt;
  wire [1:0]           pipe_tx6_powerdown_gt;
  wire [1:0]           pipe_tx7_char_is_k_gt;
  wire                 pipe_tx7_compliance_gt;
  wire [15:0]          pipe_tx7_data_gt;
  wire                 pipe_tx7_elec_idle_gt;
  wire [1:0]           pipe_tx7_powerdown_gt;

  wire                 pipe_rx0_chanisaligned_gt;
  wire  [1:0]          pipe_rx0_char_is_k_gt;
  wire  [15:0]         pipe_rx0_data_gt;
  wire                 pipe_rx0_elec_idle_gt;
  wire                 pipe_rx0_phy_status_gt;
  wire  [2:0]          pipe_rx0_status_gt;
  wire                 pipe_rx0_valid_gt;
  wire                 pipe_rx1_chanisaligned_gt;
  wire  [1:0]          pipe_rx1_char_is_k_gt;
  wire  [15:0]         pipe_rx1_data_gt;
  wire                 pipe_rx1_elec_idle_gt;
  wire                 pipe_rx1_phy_status_gt;
  wire  [2:0]          pipe_rx1_status_gt;
  wire                 pipe_rx1_valid_gt;
  wire                 pipe_rx2_chanisaligned_gt;
  wire  [1:0]          pipe_rx2_char_is_k_gt;
  wire  [15:0]         pipe_rx2_data_gt;
  wire                 pipe_rx2_elec_idle_gt;
  wire                 pipe_rx2_phy_status_gt;
  wire  [2:0]          pipe_rx2_status_gt;
  wire                 pipe_rx2_valid_gt;
  wire                 pipe_rx3_chanisaligned_gt;
  wire  [1:0]          pipe_rx3_char_is_k_gt;
  wire  [15:0]         pipe_rx3_data_gt;
  wire                 pipe_rx3_elec_idle_gt;
  wire                 pipe_rx3_phy_status_gt;
  wire  [2:0]          pipe_rx3_status_gt;
  wire                 pipe_rx3_valid_gt;
  wire                 pipe_rx4_chanisaligned_gt;
  wire  [1:0]          pipe_rx4_char_is_k_gt;
  wire  [15:0]         pipe_rx4_data_gt;
  wire                 pipe_rx4_elec_idle_gt;
  wire                 pipe_rx4_phy_status_gt;
  wire  [2:0]          pipe_rx4_status_gt;
  wire                 pipe_rx4_valid_gt;
  wire                 pipe_rx5_chanisaligned_gt;
  wire  [1:0]          pipe_rx5_char_is_k_gt;
  wire  [15:0]         pipe_rx5_data_gt;
  wire                 pipe_rx5_elec_idle_gt;
  wire                 pipe_rx5_phy_status_gt;
  wire  [2:0]          pipe_rx5_status_gt;
  wire                 pipe_rx5_valid_gt;
  wire                 pipe_rx6_chanisaligned_gt;
  wire  [1:0]          pipe_rx6_char_is_k_gt;
  wire  [15:0]         pipe_rx6_data_gt;
  wire                 pipe_rx6_elec_idle_gt;
  wire                 pipe_rx6_phy_status_gt;
  wire  [2:0]          pipe_rx6_status_gt;
  wire                 pipe_rx6_valid_gt;
  wire                 pipe_rx7_chanisaligned_gt;
  wire  [1:0]          pipe_rx7_char_is_k_gt;
  wire  [15:0]         pipe_rx7_data_gt;
  wire                 pipe_rx7_elec_idle_gt;
  wire                 pipe_rx7_phy_status_gt;
  wire  [2:0]          pipe_rx7_status_gt;
  wire                 pipe_rx7_valid_gt;
  wire  [3:0]          cfg_link_status_negotiated_width;
  wire  [1:0]          cfg_link_status_current_speed;


  (* ASYNC_REG = "TRUE" *) reg user_lnk_up_mux;
  (* KEEP = "TRUE", ASYNC_REG = "TRUE" *) reg user_lnk_up_int;
  reg user_reset_int;

  reg                  bridge_reset_int;
  reg                  bridge_reset_d;
  wire                 user_rst_n;
  reg                  pl_received_hot_rst_q;
  wire                 pl_received_hot_rst_wire;
  wire                 pl_received_hot_rst_sync;
  reg                  pl_phy_lnk_up_q;
  wire                 pl_phy_lnk_up_wire;
  wire                 pl_phy_lnk_up_sync;
  wire                 sys_or_hot_rst;
  wire                 trn_lnk_up;

  wire [5:0]           pl_ltssm_state_int;
  wire                 user_app_rdy_req;

  localparam        TCQ = 100;
  localparam        ENABLE_FAST_SIM_TRAINING   = "TRUE";

  assign user_lnk_up = user_lnk_up_int;


  assign user_app_rdy = 1'b1;
  assign pl_ltssm_state = pl_ltssm_state_int;
  assign pl_phy_lnk_up = pl_phy_lnk_up_q;
  assign pl_received_hot_rst = pl_received_hot_rst_q;

  // CDC on PCIe block outputs The source clock of these pins is in
  // the pipe_clk domain.
  xpm_cdc_single #(
    .DEST_SYNC_FF   (2),
    .SRC_INPUT_REG  (0)
  ) phy_lnk_up_cdc (
    .src_clk         (pipe_clk),
    .src_in          (pl_phy_lnk_up_wire),
    .dest_clk        (user_clk_out),
    .dest_out        (pl_phy_lnk_up_sync)
  );
  xpm_cdc_single #(
    .DEST_SYNC_FF   (2),
    .SRC_INPUT_REG  (0)
  ) pl_received_hot_rst_cdc (
    .src_clk         (pipe_clk),
    .src_in          (pl_received_hot_rst_wire),
    .dest_clk        (user_clk_out),
    .dest_out        (pl_received_hot_rst_sync)
  );

  // Register block outputs pl_received_hot_rst and phy_lnk_up to ease timing on block output
  assign sys_or_hot_rst = !sys_rst_n || pl_received_hot_rst_q;
  always @(posedge user_clk_out)
  begin
    if (!sys_rst_n) begin
      pl_received_hot_rst_q <= #TCQ 1'b0;
      pl_phy_lnk_up_q       <= #TCQ 1'b0;
    end else begin
      pl_received_hot_rst_q <= #TCQ pl_received_hot_rst_sync;
      pl_phy_lnk_up_q       <= #TCQ pl_phy_lnk_up_sync;
    end
  end
  // Generate user_lnk_up_mux
  always @(posedge user_clk_out)
  begin
    if (!sys_rst_n) begin
      user_lnk_up_mux <= #TCQ 1'b0;
    end else begin
      user_lnk_up_mux <= #TCQ user_lnk_up_int;
    end
  end

  always @(posedge user_clk_out)
  begin
    if (!sys_rst_n) begin
      user_lnk_up_int <= #TCQ 1'b0;
    end else begin
      user_lnk_up_int <= #TCQ trn_lnk_up;
    end
  end


  // Generate user_reset_out                                                                                          //
  // Once user reset output of PCIE and Phy Layer is active, de-assert reset                                          //
  // Only assert reset if system reset or hot reset is seen.  Keep AXI backend/user application alive otherwise       //
  //------------------------------------------------------------------------------------------------------------------//

 always @(posedge user_clk_out or posedge sys_or_hot_rst)
  begin
    if (sys_or_hot_rst) begin
      user_reset_int <= #TCQ 1'b1;
    end else if (user_rst_n && pl_phy_lnk_up_q) begin
      user_reset_int <= #TCQ 1'b0;
    end
  end

  // Invert active low reset to active high AXI reset
  always @(posedge user_clk_out or posedge sys_or_hot_rst)
  begin
    if (sys_or_hot_rst) begin
      user_reset_out <= #TCQ 1'b1;
    end else begin
      user_reset_out <= #TCQ user_reset_int;
    end
  end
  always @(posedge user_clk_out or posedge sys_or_hot_rst)
  begin
    if (sys_or_hot_rst) begin
      bridge_reset_int <= #TCQ 1'b1;
    end else if (user_rst_n && pl_phy_lnk_up_q) begin
      bridge_reset_int <= #TCQ 1'b0;
    end
  end

  // Invert active low reset to active high AXI reset
  always @(posedge user_clk_out or posedge sys_or_hot_rst)
  begin
    if (sys_or_hot_rst) begin
      bridge_reset_d <= #TCQ 1'b1;
    end else begin
      bridge_reset_d <= #TCQ bridge_reset_int;
    end
  end

  //------------------------------------------------------------------------------------------------------------------//
  // **** PCI Express Core Wrapper ****                                                                               //
  // The PCI Express Core Wrapper includes the following:                                                             //
  //   1) AXI Streaming Bridge                                                                                        //
  //   2) PCIE 2_1 Hard Block                                                                                         //
  //   3) PCIE PIPE Interface Pipeline                                                                                //
  //------------------------------------------------------------------------------------------------------------------//
design_1_xdma_0_0_pcie2_ip_pcie_top # (
    .PIPE_PIPELINE_STAGES                     ( PIPE_PIPELINE_STAGES ),
    .AER_BASE_PTR                             ( AER_BASE_PTR ),
    .AER_CAP_ECRC_CHECK_CAPABLE               ( AER_CAP_ECRC_CHECK_CAPABLE ),
    .AER_CAP_ECRC_GEN_CAPABLE                 ( AER_CAP_ECRC_GEN_CAPABLE ),
    .AER_CAP_ID                               ( AER_CAP_ID ),
    .AER_CAP_MULTIHEADER                      ( AER_CAP_MULTIHEADER ),
    .AER_CAP_NEXTPTR                          ( AER_CAP_NEXTPTR ),
    .AER_CAP_ON                               ( AER_CAP_ON ),
    .AER_CAP_OPTIONAL_ERR_SUPPORT             ( AER_CAP_OPTIONAL_ERR_SUPPORT ),
    .AER_CAP_PERMIT_ROOTERR_UPDATE            ( AER_CAP_PERMIT_ROOTERR_UPDATE ),
    .AER_CAP_VERSION                          ( AER_CAP_VERSION ),
    .ALLOW_X8_GEN2                            ( ALLOW_X8_GEN2 ),
    .BAR0                                     ( BAR0 ),
    .BAR1                                     ( BAR1 ),
    .BAR2                                     ( BAR2 ),
    .BAR3                                     ( BAR3 ),
    .BAR4                                     ( BAR4 ),
    .BAR5                                     ( BAR5 ),
    .C_DATA_WIDTH                             ( C_DATA_WIDTH ),
    .CAPABILITIES_PTR                         ( CAPABILITIES_PTR ),
    .CARDBUS_CIS_POINTER                      ( CARDBUS_CIS_POINTER ),
    .CFG_ECRC_ERR_CPLSTAT                     ( CFG_ECRC_ERR_CPLSTAT ),
    .CLASS_CODE                               ( CLASS_CODE ),
    .CMD_INTX_IMPLEMENTED                     ( CMD_INTX_IMPLEMENTED ),
    .CPL_TIMEOUT_DISABLE_SUPPORTED            ( CPL_TIMEOUT_DISABLE_SUPPORTED ),
    .CPL_TIMEOUT_RANGES_SUPPORTED             ( CPL_TIMEOUT_RANGES_SUPPORTED ),
    .CRM_MODULE_RSTS                          ( CRM_MODULE_RSTS ),
    .DEV_CAP_ENABLE_SLOT_PWR_LIMIT_SCALE      ( DEV_CAP_ENABLE_SLOT_PWR_LIMIT_SCALE ),
    .DEV_CAP_ENABLE_SLOT_PWR_LIMIT_VALUE      ( DEV_CAP_ENABLE_SLOT_PWR_LIMIT_VALUE ),
    .DEV_CAP_ENDPOINT_L0S_LATENCY             ( DEV_CAP_ENDPOINT_L0S_LATENCY ),
    .DEV_CAP_ENDPOINT_L1_LATENCY              ( DEV_CAP_ENDPOINT_L1_LATENCY ),
    .DEV_CAP_EXT_TAG_SUPPORTED                ( DEV_CAP_EXT_TAG_SUPPORTED ),
    .DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE     ( DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE ),
    .DEV_CAP_MAX_PAYLOAD_SUPPORTED            ( DEV_CAP_MAX_PAYLOAD_SUPPORTED ),
    .DEV_CAP_PHANTOM_FUNCTIONS_SUPPORT        ( DEV_CAP_PHANTOM_FUNCTIONS_SUPPORT ),
    .DEV_CAP_ROLE_BASED_ERROR                 ( DEV_CAP_ROLE_BASED_ERROR ),
    .DEV_CAP_RSVD_14_12                       ( DEV_CAP_RSVD_14_12 ),
    .DEV_CAP_RSVD_17_16                       ( DEV_CAP_RSVD_17_16 ),
    .DEV_CAP_RSVD_31_29                       ( DEV_CAP_RSVD_31_29 ),
    .DEV_CONTROL_AUX_POWER_SUPPORTED          ( DEV_CONTROL_AUX_POWER_SUPPORTED ),
    .DEV_CONTROL_EXT_TAG_DEFAULT              ( DEV_CONTROL_EXT_TAG_DEFAULT ),
    .DISABLE_ASPM_L1_TIMER                    ( DISABLE_ASPM_L1_TIMER ),
    .DISABLE_BAR_FILTERING                    ( DISABLE_BAR_FILTERING ),
    .DISABLE_ID_CHECK                         ( DISABLE_ID_CHECK ),
    .DISABLE_LANE_REVERSAL                    ( DISABLE_LANE_REVERSAL ),
    .DISABLE_RX_POISONED_RESP                 ( DISABLE_RX_POISONED_RESP ),
    .DISABLE_RX_TC_FILTER                     ( DISABLE_RX_TC_FILTER ),
    .DISABLE_SCRAMBLING                       ( DISABLE_SCRAMBLING ),
    .DNSTREAM_LINK_NUM                        ( DNSTREAM_LINK_NUM ),
    .DSN_BASE_PTR                             ( DSN_BASE_PTR ),
    .DSN_CAP_ID                               ( DSN_CAP_ID ),
    .DSN_CAP_NEXTPTR                          ( DSN_CAP_NEXTPTR ),
    .DSN_CAP_ON                               ( DSN_CAP_ON ),
    .DSN_CAP_VERSION                          ( DSN_CAP_VERSION ),
    .DEV_CAP2_ARI_FORWARDING_SUPPORTED        ( DEV_CAP2_ARI_FORWARDING_SUPPORTED ),
    .DEV_CAP2_ATOMICOP32_COMPLETER_SUPPORTED  ( DEV_CAP2_ATOMICOP32_COMPLETER_SUPPORTED ),
    .DEV_CAP2_ATOMICOP64_COMPLETER_SUPPORTED  ( DEV_CAP2_ATOMICOP64_COMPLETER_SUPPORTED ),
    .DEV_CAP2_ATOMICOP_ROUTING_SUPPORTED      ( DEV_CAP2_ATOMICOP_ROUTING_SUPPORTED ),
    .DEV_CAP2_CAS128_COMPLETER_SUPPORTED      ( DEV_CAP2_CAS128_COMPLETER_SUPPORTED ),
    .DEV_CAP2_ENDEND_TLP_PREFIX_SUPPORTED     ( DEV_CAP2_ENDEND_TLP_PREFIX_SUPPORTED ),
    .DEV_CAP2_EXTENDED_FMT_FIELD_SUPPORTED    ( DEV_CAP2_EXTENDED_FMT_FIELD_SUPPORTED ),
    .DEV_CAP2_LTR_MECHANISM_SUPPORTED         ( DEV_CAP2_LTR_MECHANISM_SUPPORTED ),
    .DEV_CAP2_MAX_ENDEND_TLP_PREFIXES         ( DEV_CAP2_MAX_ENDEND_TLP_PREFIXES ),
    .DEV_CAP2_NO_RO_ENABLED_PRPR_PASSING      ( DEV_CAP2_NO_RO_ENABLED_PRPR_PASSING ),
    .DEV_CAP2_TPH_COMPLETER_SUPPORTED         ( DEV_CAP2_TPH_COMPLETER_SUPPORTED ),
    .DISABLE_ERR_MSG                          ( DISABLE_ERR_MSG ),
    .DISABLE_LOCKED_FILTER                    ( DISABLE_LOCKED_FILTER ),
    .DISABLE_PPM_FILTER                       ( DISABLE_PPM_FILTER ),
    .ENDEND_TLP_PREFIX_FORWARDING_SUPPORTED   ( ENDEND_TLP_PREFIX_FORWARDING_SUPPORTED ),
    .ENABLE_MSG_ROUTE                         ( ENABLE_MSG_ROUTE ),
    .ENABLE_RX_TD_ECRC_TRIM                   ( ENABLE_RX_TD_ECRC_TRIM ),
    .ENTER_RVRY_EI_L0                         ( ENTER_RVRY_EI_L0 ),
    .EXIT_LOOPBACK_ON_EI                      ( EXIT_LOOPBACK_ON_EI ),
    .EXPANSION_ROM                            ( EXPANSION_ROM ),
    .EXT_CFG_CAP_PTR                          ( EXT_CFG_CAP_PTR ),
    .EXT_CFG_XP_CAP_PTR                       ( EXT_CFG_XP_CAP_PTR ),
    .HEADER_TYPE                              ( HEADER_TYPE ),
    .INFER_EI                                 ( INFER_EI ),
    .INTERRUPT_PIN                            ( INTERRUPT_PIN ),
    .INTERRUPT_STAT_AUTO                      ( INTERRUPT_STAT_AUTO ),
    .IS_SWITCH                                ( IS_SWITCH ),
    .LAST_CONFIG_DWORD                        ( LAST_CONFIG_DWORD ),
    .LINK_CAP_ASPM_OPTIONALITY                ( LINK_CAP_ASPM_OPTIONALITY ),
    .LINK_CAP_ASPM_SUPPORT                    ( LINK_CAP_ASPM_SUPPORT ),
    .LINK_CAP_CLOCK_POWER_MANAGEMENT          ( LINK_CAP_CLOCK_POWER_MANAGEMENT ),
    .LINK_CAP_DLL_LINK_ACTIVE_REPORTING_CAP   ( LINK_CAP_DLL_LINK_ACTIVE_REPORTING_CAP ),
    .LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN1    ( LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN1 ),
    .LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN2    ( LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN2 ),
    .LINK_CAP_L0S_EXIT_LATENCY_GEN1           ( LINK_CAP_L0S_EXIT_LATENCY_GEN1 ),
    .LINK_CAP_L0S_EXIT_LATENCY_GEN2           ( LINK_CAP_L0S_EXIT_LATENCY_GEN2 ),
    .LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN1     ( LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN1 ),
    .LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN2     ( LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN2 ),
    .LINK_CAP_L1_EXIT_LATENCY_GEN1            ( LINK_CAP_L1_EXIT_LATENCY_GEN1 ),
    .LINK_CAP_L1_EXIT_LATENCY_GEN2            ( LINK_CAP_L1_EXIT_LATENCY_GEN2 ),
    .LINK_CAP_LINK_BANDWIDTH_NOTIFICATION_CAP ( LINK_CAP_LINK_BANDWIDTH_NOTIFICATION_CAP ),
    .LINK_CAP_MAX_LINK_SPEED                  ( LINK_CAP_MAX_LINK_SPEED ),
    .LINK_CAP_MAX_LINK_WIDTH                  ( LINK_CAP_MAX_LINK_WIDTH ),
    .LINK_CAP_RSVD_23                         ( LINK_CAP_RSVD_23 ),
    .LINK_CAP_SURPRISE_DOWN_ERROR_CAPABLE     ( LINK_CAP_SURPRISE_DOWN_ERROR_CAPABLE ),
    .LINK_CONTROL_RCB                         ( LINK_CONTROL_RCB ),
    .LINK_CTRL2_DEEMPHASIS                    ( LINK_CTRL2_DEEMPHASIS ),
    .LINK_CTRL2_HW_AUTONOMOUS_SPEED_DISABLE   ( LINK_CTRL2_HW_AUTONOMOUS_SPEED_DISABLE ),
    .LINK_CTRL2_TARGET_LINK_SPEED             ( LINK_CTRL2_TARGET_LINK_SPEED ),
    .LINK_STATUS_SLOT_CLOCK_CONFIG            ( LINK_STATUS_SLOT_CLOCK_CONFIG ),
    .LL_ACK_TIMEOUT                           ( LL_ACK_TIMEOUT ),
    .LL_ACK_TIMEOUT_EN                        ( LL_ACK_TIMEOUT_EN ),
    .LL_ACK_TIMEOUT_FUNC                      ( LL_ACK_TIMEOUT_FUNC ),
    .LL_REPLAY_TIMEOUT                        ( LL_REPLAY_TIMEOUT ),
    .LL_REPLAY_TIMEOUT_EN                     ( LL_REPLAY_TIMEOUT_EN ),
    .LL_REPLAY_TIMEOUT_FUNC                   ( LL_REPLAY_TIMEOUT_FUNC ),
    .LTSSM_MAX_LINK_WIDTH                     ( LTSSM_MAX_LINK_WIDTH ),
    .MPS_FORCE                                ( MPS_FORCE),
    .MSI_BASE_PTR                             ( MSI_BASE_PTR ),
    .MSI_CAP_ID                               ( MSI_CAP_ID ),
    .MSI_CAP_MULTIMSGCAP                      ( MSI_CAP_MULTIMSGCAP ),
    .MSI_CAP_MULTIMSG_EXTENSION               ( MSI_CAP_MULTIMSG_EXTENSION ),
    .MSI_CAP_NEXTPTR                          ( MSI_CAP_NEXTPTR ),
    .MSI_CAP_ON                               ( MSI_CAP_ON ),
    .MSI_CAP_PER_VECTOR_MASKING_CAPABLE       ( MSI_CAP_PER_VECTOR_MASKING_CAPABLE ),
    .MSI_CAP_64_BIT_ADDR_CAPABLE              ( MSI_CAP_64_BIT_ADDR_CAPABLE ),
    .MSIX_BASE_PTR                            ( MSIX_BASE_PTR ),
    .MSIX_CAP_ID                              ( MSIX_CAP_ID ),
    .MSIX_CAP_NEXTPTR                         ( MSIX_CAP_NEXTPTR ),
    .MSIX_CAP_ON                              ( MSIX_CAP_ON ),
    .MSIX_CAP_PBA_BIR                         ( MSIX_CAP_PBA_BIR ),
    .MSIX_CAP_PBA_OFFSET                      ( {3'b000,MSIX_CAP_PBA_OFFSET[28:3]} ),
    .MSIX_CAP_TABLE_BIR                       ( MSIX_CAP_TABLE_BIR ),
    .MSIX_CAP_TABLE_OFFSET                    ( {3'b000,MSIX_CAP_TABLE_OFFSET[28:3]} ),
    .MSIX_CAP_TABLE_SIZE                      ( MSIX_CAP_TABLE_SIZE ),
    .N_FTS_COMCLK_GEN1                        ( N_FTS_COMCLK_GEN1 ),
    .N_FTS_COMCLK_GEN2                        ( N_FTS_COMCLK_GEN2 ),
    .N_FTS_GEN1                               ( N_FTS_GEN1 ),
    .N_FTS_GEN2                               ( N_FTS_GEN2 ),
    .PCIE_BASE_PTR                            ( PCIE_BASE_PTR ),
    .PCIE_CAP_CAPABILITY_ID                   ( PCIE_CAP_CAPABILITY_ID ),
    .PCIE_CAP_CAPABILITY_VERSION              ( PCIE_CAP_CAPABILITY_VERSION ),
    .PCIE_CAP_DEVICE_PORT_TYPE                ( PCIE_CAP_DEVICE_PORT_TYPE ),
    .PCIE_CAP_NEXTPTR                         ( PCIE_CAP_NEXTPTR ),
    .PCIE_CAP_ON                              ( PCIE_CAP_ON ),
    .PCIE_CAP_RSVD_15_14                      ( PCIE_CAP_RSVD_15_14 ),
    .PCIE_CAP_SLOT_IMPLEMENTED                ( PCIE_CAP_SLOT_IMPLEMENTED ),
    .PCIE_REVISION                            ( PCIE_REVISION ),
    .PL_AUTO_CONFIG                           ( PL_AUTO_CONFIG ),

    // synthesis translate_off
    .PL_FAST_TRAIN                            ( ENABLE_FAST_SIM_TRAINING ),
    // synthesis translate_on

    .PM_ASPML0S_TIMEOUT                       ( PM_ASPML0S_TIMEOUT ),
    .PM_ASPML0S_TIMEOUT_EN                    ( PM_ASPML0S_TIMEOUT_EN ),
    .PM_ASPML0S_TIMEOUT_FUNC                  ( PM_ASPML0S_TIMEOUT_FUNC ),
    .PM_ASPM_FASTEXIT                         ( PM_ASPM_FASTEXIT ),
    .PM_BASE_PTR                              ( PM_BASE_PTR ),
    .PM_CAP_AUXCURRENT                        ( PM_CAP_AUXCURRENT ),
    .PM_CAP_D1SUPPORT                         ( PM_CAP_D1SUPPORT ),
    .PM_CAP_D2SUPPORT                         ( PM_CAP_D2SUPPORT ),
    .PM_CAP_DSI                               ( PM_CAP_DSI ),
    .PM_CAP_ID                                ( PM_CAP_ID ),
    .PM_CAP_NEXTPTR                           ( PM_CAP_NEXTPTR ),
    .PM_CAP_ON                                ( PM_CAP_ON ),
    .PM_CAP_PME_CLOCK                         ( PM_CAP_PME_CLOCK ),
    .PM_CAP_PMESUPPORT                        ( PM_CAP_PMESUPPORT ),
    .PM_CAP_RSVD_04                           ( PM_CAP_RSVD_04 ),
    .PM_CAP_VERSION                           ( PM_CAP_VERSION ),
    .PM_CSR_B2B3                              ( PM_CSR_B2B3 ),
    .PM_CSR_BPCCEN                            ( PM_CSR_BPCCEN ),
    .PM_CSR_NOSOFTRST                         ( PM_CSR_NOSOFTRST ),
    .PM_DATA0                                 ( PM_DATA0 ),
    .PM_DATA1                                 ( PM_DATA1 ),
    .PM_DATA2                                 ( PM_DATA2 ),
    .PM_DATA3                                 ( PM_DATA3 ),
    .PM_DATA4                                 ( PM_DATA4 ),
    .PM_DATA5                                 ( PM_DATA5 ),
    .PM_DATA6                                 ( PM_DATA6 ),
    .PM_DATA7                                 ( PM_DATA7 ),
    .PM_DATA_SCALE0                           ( PM_DATA_SCALE0 ),
    .PM_DATA_SCALE1                           ( PM_DATA_SCALE1 ),
    .PM_DATA_SCALE2                           ( PM_DATA_SCALE2 ),
    .PM_DATA_SCALE3                           ( PM_DATA_SCALE3 ),
    .PM_DATA_SCALE4                           ( PM_DATA_SCALE4 ),
    .PM_DATA_SCALE5                           ( PM_DATA_SCALE5 ),
    .PM_DATA_SCALE6                           ( PM_DATA_SCALE6 ),
    .PM_DATA_SCALE7                           ( PM_DATA_SCALE7 ),
    .PM_MF                                    ( PM_MF ),
    .RBAR_BASE_PTR                            ( RBAR_BASE_PTR ),
    .RBAR_CAP_CONTROL_ENCODEDBAR0             ( RBAR_CAP_CONTROL_ENCODEDBAR0 ),
    .RBAR_CAP_CONTROL_ENCODEDBAR1             ( RBAR_CAP_CONTROL_ENCODEDBAR1 ),
    .RBAR_CAP_CONTROL_ENCODEDBAR2             ( RBAR_CAP_CONTROL_ENCODEDBAR2 ),
    .RBAR_CAP_CONTROL_ENCODEDBAR3             ( RBAR_CAP_CONTROL_ENCODEDBAR3 ),
    .RBAR_CAP_CONTROL_ENCODEDBAR4             ( RBAR_CAP_CONTROL_ENCODEDBAR4 ),
    .RBAR_CAP_CONTROL_ENCODEDBAR5             ( RBAR_CAP_CONTROL_ENCODEDBAR5 ),
    .RBAR_CAP_ID                              ( RBAR_CAP_ID),
    .RBAR_CAP_INDEX0                          ( RBAR_CAP_INDEX0 ),
    .RBAR_CAP_INDEX1                          ( RBAR_CAP_INDEX1 ),
    .RBAR_CAP_INDEX2                          ( RBAR_CAP_INDEX2 ),
    .RBAR_CAP_INDEX3                          ( RBAR_CAP_INDEX3 ),
    .RBAR_CAP_INDEX4                          ( RBAR_CAP_INDEX4 ),
    .RBAR_CAP_INDEX5                          ( RBAR_CAP_INDEX5 ),
    .RBAR_CAP_NEXTPTR                         ( RBAR_CAP_NEXTPTR ),
    .RBAR_CAP_ON                              ( RBAR_CAP_ON ),
    .RBAR_CAP_SUP0                            ( RBAR_CAP_SUP0 ),
    .RBAR_CAP_SUP1                            ( RBAR_CAP_SUP1 ),
    .RBAR_CAP_SUP2                            ( RBAR_CAP_SUP2 ),
    .RBAR_CAP_SUP3                            ( RBAR_CAP_SUP3 ),
    .RBAR_CAP_SUP4                            ( RBAR_CAP_SUP4 ),
    .RBAR_CAP_SUP5                            ( RBAR_CAP_SUP5 ),
    .RBAR_CAP_VERSION                         ( RBAR_CAP_VERSION ),
    .RBAR_NUM                                 ( RBAR_NUM ),
    .RECRC_CHK                                ( RECRC_CHK ),
    .RECRC_CHK_TRIM                           ( RECRC_CHK_TRIM ),
    .ROOT_CAP_CRS_SW_VISIBILITY               ( ROOT_CAP_CRS_SW_VISIBILITY ),
    .RP_AUTO_SPD                              ( RP_AUTO_SPD ),
    .RP_AUTO_SPD_LOOPCNT                      ( RP_AUTO_SPD_LOOPCNT ),
    .SELECT_DLL_IF                            ( SELECT_DLL_IF ),
    .SLOT_CAP_ATT_BUTTON_PRESENT              ( SLOT_CAP_ATT_BUTTON_PRESENT ),
    .SLOT_CAP_ATT_INDICATOR_PRESENT           ( SLOT_CAP_ATT_INDICATOR_PRESENT ),
    .SLOT_CAP_ELEC_INTERLOCK_PRESENT          ( SLOT_CAP_ELEC_INTERLOCK_PRESENT ),
    .SLOT_CAP_HOTPLUG_CAPABLE                 ( SLOT_CAP_HOTPLUG_CAPABLE ),
    .SLOT_CAP_HOTPLUG_SURPRISE                ( SLOT_CAP_HOTPLUG_SURPRISE ),
    .SLOT_CAP_MRL_SENSOR_PRESENT              ( SLOT_CAP_MRL_SENSOR_PRESENT ),
    .SLOT_CAP_NO_CMD_COMPLETED_SUPPORT        ( SLOT_CAP_NO_CMD_COMPLETED_SUPPORT ),
    .SLOT_CAP_PHYSICAL_SLOT_NUM               ( SLOT_CAP_PHYSICAL_SLOT_NUM ),
    .SLOT_CAP_POWER_CONTROLLER_PRESENT        ( SLOT_CAP_POWER_CONTROLLER_PRESENT ),
    .SLOT_CAP_POWER_INDICATOR_PRESENT         ( SLOT_CAP_POWER_INDICATOR_PRESENT ),
    .SLOT_CAP_SLOT_POWER_LIMIT_SCALE          ( SLOT_CAP_SLOT_POWER_LIMIT_SCALE ),
    .SLOT_CAP_SLOT_POWER_LIMIT_VALUE          ( SLOT_CAP_SLOT_POWER_LIMIT_VALUE ),
    .SPARE_BIT0                               ( SPARE_BIT0 ),
    .SPARE_BIT1                               ( SPARE_BIT1 ),
    .SPARE_BIT2                               ( SPARE_BIT2 ),
    .SPARE_BIT3                               ( SPARE_BIT3 ),
    .SPARE_BIT4                               ( SPARE_BIT4 ),
    .SPARE_BIT5                               ( SPARE_BIT5 ),
    .SPARE_BIT6                               ( SPARE_BIT6 ),
    .SPARE_BIT7                               ( SPARE_BIT7 ),
    .SPARE_BIT8                               ( SPARE_BIT8 ),
    .SPARE_BYTE0                              ( SPARE_BYTE0 ),
    .SPARE_BYTE1                              ( SPARE_BYTE1 ),
    .SPARE_BYTE2                              ( SPARE_BYTE2 ),
    .SPARE_BYTE3                              ( SPARE_BYTE3 ),
    .SPARE_WORD0                              ( SPARE_WORD0 ),
    .SPARE_WORD1                              ( SPARE_WORD1 ),
    .SPARE_WORD2                              ( SPARE_WORD2 ),
    .SPARE_WORD3                              ( SPARE_WORD3 ),
    .SSL_MESSAGE_AUTO                         ( SSL_MESSAGE_AUTO ),
    .TECRC_EP_INV                             ( TECRC_EP_INV ),
    .TL_RBYPASS                               ( TL_RBYPASS ),
    .TL_RX_RAM_RADDR_LATENCY                  ( TL_RX_RAM_RADDR_LATENCY ),
    .TL_RX_RAM_RDATA_LATENCY                  ( TL_RX_RAM_RDATA_LATENCY ),
    .TL_RX_RAM_WRITE_LATENCY                  ( TL_RX_RAM_WRITE_LATENCY ),
    .TL_TFC_DISABLE                           ( TL_TFC_DISABLE ),
    .TL_TX_CHECKS_DISABLE                     ( TL_TX_CHECKS_DISABLE ),
    .TL_TX_RAM_RADDR_LATENCY                  ( TL_TX_RAM_RADDR_LATENCY ),
    .TL_TX_RAM_RDATA_LATENCY                  ( TL_TX_RAM_RDATA_LATENCY ),
    .TL_TX_RAM_WRITE_LATENCY                  ( TL_TX_RAM_WRITE_LATENCY ),
    .TRN_DW                                   ( TRN_DW ),
    .TRN_NP_FC                                ( TRN_NP_FC ),
    .UPCONFIG_CAPABLE                         ( UPCONFIG_CAPABLE ),
    .UPSTREAM_FACING                          ( UPSTREAM_FACING ),
    .UR_ATOMIC                                ( UR_ATOMIC ),
    .UR_CFG1                                  ( UR_CFG1 ),
    .UR_INV_REQ                               ( UR_INV_REQ ),
    .UR_PRS_RESPONSE                          ( UR_PRS_RESPONSE ),
    .USER_CLK2_DIV2                           ( USER_CLK2_DIV2 ),
    .USER_CLK_FREQ                            ( USER_CLK_FREQ ),
    .USE_RID_PINS                             ( USE_RID_PINS ),
    .VC0_CPL_INFINITE                         ( VC0_CPL_INFINITE ),
    .VC0_RX_RAM_LIMIT                         ( VC0_RX_RAM_LIMIT ),
    .VC0_TOTAL_CREDITS_CD                     ( VC0_TOTAL_CREDITS_CD ),
    .VC0_TOTAL_CREDITS_CH                     ( VC0_TOTAL_CREDITS_CH ),
    .VC0_TOTAL_CREDITS_NPD                    ( VC0_TOTAL_CREDITS_NPD),
    .VC0_TOTAL_CREDITS_NPH                    ( VC0_TOTAL_CREDITS_NPH ),
    .VC0_TOTAL_CREDITS_PD                     ( VC0_TOTAL_CREDITS_PD ),
    .VC0_TOTAL_CREDITS_PH                     ( VC0_TOTAL_CREDITS_PH ),
    .VC0_TX_LASTPACKET                        ( VC0_TX_LASTPACKET ),
    .VC_BASE_PTR                              ( VC_BASE_PTR ),
    .VC_CAP_ID                                ( VC_CAP_ID ),
    .VC_CAP_NEXTPTR                           ( VC_CAP_NEXTPTR ),
    .VC_CAP_ON                                ( VC_CAP_ON ),
    .VC_CAP_REJECT_SNOOP_TRANSACTIONS         ( VC_CAP_REJECT_SNOOP_TRANSACTIONS ),
    .VC_CAP_VERSION                           ( VC_CAP_VERSION ),
    .VSEC_BASE_PTR                            ( VSEC_BASE_PTR ),
    .VSEC_CAP_HDR_ID                          ( VSEC_CAP_HDR_ID ),
    .VSEC_CAP_HDR_LENGTH                      ( VSEC_CAP_HDR_LENGTH ),
    .VSEC_CAP_HDR_REVISION                    ( VSEC_CAP_HDR_REVISION ),
    .VSEC_CAP_ID                              ( VSEC_CAP_ID ),
    .VSEC_CAP_IS_LINK_VISIBLE                 ( VSEC_CAP_IS_LINK_VISIBLE ),
    .VSEC_CAP_NEXTPTR                         ( VSEC_CAP_NEXTPTR ),
    .VSEC_CAP_ON                              ( VSEC_CAP_ON ),
    .VSEC_CAP_VERSION                         ( VSEC_CAP_VERSION )
    // I/O
  ) pcie_top_i (

    // AXI Interface
    .user_clk_out                               ( user_clk_out ),
    .user_reset                                 ( bridge_reset_d ),
    .user_lnk_up                                ( user_lnk_up ),

    .user_rst_n                                 ( user_rst_n ),
    .trn_lnk_up                                 ( trn_lnk_up ),

    .tx_buf_av                                  ( tx_buf_av ),
    .tx_err_drop                                ( tx_err_drop ),
    .tx_cfg_req                                 ( tx_cfg_req ),
    .s_axis_tx_tready                           ( s_axis_tx_tready ),
    .s_axis_tx_tdata                            ( s_axis_tx_tdata ),
    .s_axis_tx_tkeep                            ( s_axis_tx_tkeep  ),
    .s_axis_tx_tuser                            ( s_axis_tx_tuser ),
    .s_axis_tx_tlast                            ( s_axis_tx_tlast ),
    .s_axis_tx_tvalid                           ( s_axis_tx_tvalid ),
    .tx_cfg_gnt                                 ( tx_cfg_gnt ),

    .m_axis_rx_tdata                            ( m_axis_rx_tdata ),
    .m_axis_rx_tkeep                            ( m_axis_rx_tkeep ),
    .m_axis_rx_tlast                            ( m_axis_rx_tlast ),
    .m_axis_rx_tvalid                           ( m_axis_rx_tvalid ),
    .m_axis_rx_tready                           ( m_axis_rx_tready ),
    .m_axis_rx_tuser                            ( m_axis_rx_tuser ),
    .rx_np_ok                                   ( rx_np_ok ),
    .rx_np_req                                  ( rx_np_req ),

    .fc_cpld                                    ( fc_cpld ),
    .fc_cplh                                    ( fc_cplh ),
    .fc_npd                                     ( fc_npd ),
    .fc_nph                                     ( fc_nph ),
    .fc_pd                                      ( fc_pd ),
    .fc_ph                                      ( fc_ph ),
    .fc_sel                                     ( fc_sel ),
    .cfg_turnoff_ok                             ( cfg_turnoff_ok ),
    .cfg_received_func_lvl_rst                  ( cfg_received_func_lvl_rst ),

    .cm_rst_n                                   ( 1'b1 ),
    .func_lvl_rst_n                             ( 1'b1 ),
    .lnk_clk_en                                 ( ),
    .cfg_dev_id                                 ( cfg_dev_id ),
    .cfg_vend_id                                ( cfg_vend_id ),
    .cfg_rev_id                                 ( cfg_rev_id ),
    .cfg_subsys_id                              ( cfg_subsys_id ),
    .cfg_subsys_vend_id                         ( cfg_subsys_vend_id ),
    .cfg_pciecap_interrupt_msgnum               ( cfg_pciecap_interrupt_msgnum ),

    .cfg_bridge_serr_en                         ( cfg_bridge_serr_en ),

    .cfg_command_bus_master_enable              ( ),
    .cfg_command_interrupt_disable              ( ),
    .cfg_command_io_enable                      ( ),
    .cfg_command_mem_enable                     ( ),
    .cfg_command_serr_en                        ( ),
    .cfg_dev_control_aux_power_en               ( ),
    .cfg_dev_control_corr_err_reporting_en      ( ),
    .cfg_dev_control_enable_ro                  ( ),
    .cfg_dev_control_ext_tag_en                 ( ),
    .cfg_dev_control_fatal_err_reporting_en     ( ),
    .cfg_dev_control_max_payload                ( ),
    .cfg_dev_control_max_read_req               ( ),
    .cfg_dev_control_non_fatal_reporting_en     ( ),
    .cfg_dev_control_no_snoop_en                ( ),
    .cfg_dev_control_phantom_en                 ( ),
    .cfg_dev_control_ur_err_reporting_en        ( ),
    .cfg_dev_control2_cpl_timeout_dis           ( ),
    .cfg_dev_control2_cpl_timeout_val           ( ),
    .cfg_dev_control2_ari_forward_en            ( ),
    .cfg_dev_control2_atomic_requester_en       ( ),
    .cfg_dev_control2_atomic_egress_block       ( ),
    .cfg_dev_control2_ido_req_en                ( ),
    .cfg_dev_control2_ido_cpl_en                ( ),
    .cfg_dev_control2_ltr_en                    ( ),
    .cfg_dev_control2_tlp_prefix_block          ( ),
    .cfg_dev_status_corr_err_detected           ( ),
    .cfg_dev_status_fatal_err_detected          ( ),
    .cfg_dev_status_non_fatal_err_detected      ( ),
    .cfg_dev_status_ur_detected                 ( ),

    .cfg_mgmt_do                                ( cfg_mgmt_do ),
    .cfg_err_aer_headerlog_set                  ( cfg_err_aer_headerlog_set ),
    .cfg_err_aer_headerlog                      ( cfg_err_aer_headerlog ),
    .cfg_err_cpl_rdy                            ( cfg_err_cpl_rdy ),
    .cfg_interrupt_do                           ( cfg_interrupt_do ),
    .cfg_interrupt_mmenable                     ( cfg_interrupt_mmenable ),
    .cfg_interrupt_msienable                    ( cfg_interrupt_msienable ),
    .cfg_interrupt_msixenable                   ( cfg_interrupt_msixenable ),
    .cfg_interrupt_msixfm                       ( cfg_interrupt_msixfm ),
    .cfg_interrupt_rdy                          ( cfg_interrupt_rdy ),
    .cfg_link_control_rcb                       ( ),
    .cfg_link_control_aspm_control              ( ),
    .cfg_link_control_auto_bandwidth_int_en     ( ),
    .cfg_link_control_bandwidth_int_en          ( ),
    .cfg_link_control_clock_pm_en               ( ),
    .cfg_link_control_common_clock              ( ),
    .cfg_link_control_extended_sync             ( ),
    .cfg_link_control_hw_auto_width_dis         ( ),
    .cfg_link_control_link_disable              ( ),
    .cfg_link_control_retrain_link              ( ),
    .cfg_link_status_auto_bandwidth_status      ( ),
    .cfg_link_status_bandwidth_status           ( ),
    .cfg_link_status_current_speed              ( cfg_link_status_current_speed  ),
    .cfg_link_status_dll_active                 ( ),
    .cfg_link_status_link_training              ( ),
    .cfg_link_status_negotiated_width           ( cfg_link_status_negotiated_width ),
    .cfg_msg_data                               ( cfg_msg_data ),
    .cfg_msg_received                           ( cfg_msg_received ),
    .cfg_msg_received_assert_int_a              ( cfg_msg_received_assert_int_a ),
    .cfg_msg_received_assert_int_b              ( cfg_msg_received_assert_int_b ),
    .cfg_msg_received_assert_int_c              ( cfg_msg_received_assert_int_c ),
    .cfg_msg_received_assert_int_d              ( cfg_msg_received_assert_int_d ),
    .cfg_msg_received_deassert_int_a            ( cfg_msg_received_deassert_int_a ),
    .cfg_msg_received_deassert_int_b            ( cfg_msg_received_deassert_int_b ),
    .cfg_msg_received_deassert_int_c            ( cfg_msg_received_deassert_int_c ),
    .cfg_msg_received_deassert_int_d            ( cfg_msg_received_deassert_int_d ),
    .cfg_msg_received_err_cor                   ( cfg_msg_received_err_cor ),
    .cfg_msg_received_err_fatal                 ( cfg_msg_received_err_fatal ),
    .cfg_msg_received_err_non_fatal             ( cfg_msg_received_err_non_fatal ),
    .cfg_msg_received_pm_as_nak                 ( cfg_msg_received_pm_as_nak ),
    .cfg_msg_received_pme_to                    ( ),
    .cfg_msg_received_pme_to_ack                ( cfg_msg_received_pme_to_ack ),
    .cfg_msg_received_pm_pme                    ( cfg_msg_received_pm_pme ),
    .cfg_msg_received_setslotpowerlimit         ( cfg_msg_received_setslotpowerlimit ),
    .cfg_msg_received_unlock                    ( ),
    .cfg_to_turnoff                             ( cfg_to_turnoff ),
    .cfg_status                                 ( cfg_status ),
    .cfg_command                                ( cfg_command ),
    .cfg_dstatus                                ( cfg_dstatus ),
    .cfg_dcommand                               ( cfg_dcommand ),
    .cfg_lstatus                                ( cfg_lstatus ),
    .cfg_lcommand                               ( cfg_lcommand ),
    .cfg_dcommand2                              ( cfg_dcommand2 ),
    .cfg_pcie_link_state                        ( cfg_pcie_link_state ),
    .cfg_pmcsr_pme_en                           ( cfg_pmcsr_pme_en ),
    .cfg_pmcsr_powerstate                       ( cfg_pmcsr_powerstate ),
    .cfg_pmcsr_pme_status                       ( cfg_pmcsr_pme_status ),
    .cfg_pm_rcv_as_req_l1_n                     ( ),
    .cfg_pm_rcv_enter_l1_n                      ( ),
    .cfg_pm_rcv_enter_l23_n                     ( ),
    .cfg_pm_rcv_req_ack_n                       ( ),
    .cfg_mgmt_rd_wr_done                        ( cfg_mgmt_rd_wr_done ),
    .cfg_slot_control_electromech_il_ctl_pulse  ( cfg_slot_control_electromech_il_ctl_pulse ),
    .cfg_root_control_syserr_corr_err_en        ( cfg_root_control_syserr_corr_err_en ),
    .cfg_root_control_syserr_non_fatal_err_en   ( cfg_root_control_syserr_non_fatal_err_en ),
    .cfg_root_control_syserr_fatal_err_en       ( cfg_root_control_syserr_fatal_err_en ),
    .cfg_root_control_pme_int_en                ( cfg_root_control_pme_int_en),
    .cfg_aer_ecrc_check_en                      ( cfg_aer_ecrc_check_en ),
    .cfg_aer_ecrc_gen_en                        ( cfg_aer_ecrc_gen_en ),
    .cfg_aer_rooterr_corr_err_reporting_en      ( cfg_aer_rooterr_corr_err_reporting_en ),
    .cfg_aer_rooterr_non_fatal_err_reporting_en ( cfg_aer_rooterr_non_fatal_err_reporting_en ),
    .cfg_aer_rooterr_fatal_err_reporting_en     ( cfg_aer_rooterr_fatal_err_reporting_en ),
    .cfg_aer_rooterr_corr_err_received          ( cfg_aer_rooterr_corr_err_received ),
    .cfg_aer_rooterr_non_fatal_err_received     ( cfg_aer_rooterr_non_fatal_err_received ),
    .cfg_aer_rooterr_fatal_err_received         ( cfg_aer_rooterr_fatal_err_received ),
    .cfg_aer_interrupt_msgnum                   ( cfg_aer_interrupt_msgnum ),
    .cfg_transaction                            ( ),
    .cfg_transaction_addr                       ( ),
    .cfg_transaction_type                       ( ),
    .cfg_vc_tcvc_map                            ( cfg_vc_tcvc_map ),
    .cfg_mgmt_byte_en_n                         ( ~cfg_mgmt_byte_en ),
    .cfg_mgmt_di                                ( cfg_mgmt_di ),
    .cfg_dsn                                    ( cfg_dsn ),
    .cfg_mgmt_dwaddr                            ( cfg_mgmt_dwaddr ),
    .cfg_err_acs_n                              ( 1'b1 ),
    .cfg_err_cor_n                              ( ~cfg_err_cor ),
    .cfg_err_cpl_abort_n                        ( ~cfg_err_cpl_abort ),
    .cfg_err_cpl_timeout_n                      ( ~cfg_err_cpl_timeout ),
    .cfg_err_cpl_unexpect_n                     ( ~cfg_err_cpl_unexpect ),
    .cfg_err_ecrc_n                             ( ~cfg_err_ecrc ),
    .cfg_err_locked_n                           ( ~cfg_err_locked ),
    .cfg_err_posted_n                           ( ~cfg_err_posted ),
    .cfg_err_tlp_cpl_header                     ( cfg_err_tlp_cpl_header ),
    .cfg_err_ur_n                               ( ~cfg_err_ur ),
    .cfg_err_malformed_n                        ( ~cfg_err_malformed ),
    .cfg_err_poisoned_n                         ( ~cfg_err_poisoned ),
    .cfg_err_atomic_egress_blocked_n            ( ~cfg_err_atomic_egress_blocked ),
    .cfg_err_mc_blocked_n                       ( ~cfg_err_mc_blocked ),
    .cfg_err_internal_uncor_n                   ( ~cfg_err_internal_uncor ),
    .cfg_err_internal_cor_n                     ( ~cfg_err_internal_cor ),
    .cfg_err_norecovery_n                       ( ~cfg_err_norecovery ),

    .cfg_interrupt_assert_n                     ( ~cfg_interrupt_assert ),
    .cfg_interrupt_di                           ( cfg_interrupt_di ),
    .cfg_interrupt_n                            ( ~cfg_interrupt ),
    .cfg_interrupt_stat_n                       ( ~cfg_interrupt_stat ),
    .cfg_bus_number                             ( cfg_bus_number ),
    .cfg_device_number                          ( cfg_device_number ),
    .cfg_function_number                        ( cfg_function_number ),
    .cfg_ds_bus_number                          ( cfg_ds_bus_number ),
    .cfg_ds_device_number                       ( cfg_ds_device_number ),
    .cfg_ds_function_number                     ( cfg_ds_function_number ),
    .cfg_pm_send_pme_to_n                       ( 1'b1 ),
    .cfg_pm_wake_n                              ( ~cfg_pm_wake ),
    .cfg_pm_halt_aspm_l0s_n                     ( ~cfg_pm_halt_aspm_l0s ),
    .cfg_pm_halt_aspm_l1_n                      ( ~cfg_pm_halt_aspm_l1  ),
    .cfg_pm_force_state_en_n                    ( ~cfg_pm_force_state_en),
    .cfg_pm_force_state                         ( cfg_pm_force_state ),
    .cfg_force_mps                              ( 3'b0 ),
    .cfg_force_common_clock_off                 ( 1'b0 ),
    .cfg_force_extended_sync_on                 ( 1'b0 ),
    .cfg_port_number                            ( 8'b0 ),
    .cfg_mgmt_rd_en_n                           ( ~cfg_mgmt_rd_en ),
    .cfg_trn_pending                            ( cfg_trn_pending ),
    .cfg_mgmt_wr_en_n                           ( ~cfg_mgmt_wr_en ),
    .cfg_mgmt_wr_readonly_n                     ( ~cfg_mgmt_wr_readonly ),
    .cfg_mgmt_wr_rw1c_as_rw_n                   ( ~cfg_mgmt_wr_rw1c_as_rw ),

    .pl_initial_link_width                      ( pl_initial_link_width ),
    .pl_lane_reversal_mode                      ( pl_lane_reversal_mode ),
    .pl_link_gen2_cap                           ( pl_link_gen2_cap ),
    .pl_link_partner_gen2_supported             ( pl_link_partner_gen2_supported ),
    .pl_link_upcfg_cap                          ( pl_link_upcfg_cap ),
    .pl_ltssm_state                             ( pl_ltssm_state_int ),
    .pl_phy_lnk_up                              ( pl_phy_lnk_up_wire ),
    .pl_received_hot_rst                        ( pl_received_hot_rst_wire ),
    .pl_rx_pm_state                             ( pl_rx_pm_state ),
    .pl_sel_lnk_rate                            ( pl_sel_lnk_rate ),
    .pl_sel_lnk_width                           ( pl_sel_lnk_width ),
    .pl_tx_pm_state                             ( pl_tx_pm_state ),
    .pl_directed_link_auton                     ( pl_directed_link_auton ),
    .pl_directed_link_change                    ( pl_directed_link_change ),
    .pl_directed_link_speed                     ( pl_directed_link_speed ),
    .pl_directed_link_width                     ( pl_directed_link_width ),
    .pl_downstream_deemph_source                ( pl_downstream_deemph_source ),
    .pl_upstream_prefer_deemph                  ( pl_upstream_prefer_deemph ),
    .pl_transmit_hot_rst                        ( pl_transmit_hot_rst ),
    .pl_directed_ltssm_new_vld                  ( 1'b0 ),
    .pl_directed_ltssm_new                      ( 6'b0 ),
    .pl_directed_ltssm_stall                    ( 1'b0 ),
    .pl_directed_change_done                    ( pl_directed_change_done ),

    .phy_rdy_n                                  ( phy_rdy_n ),
    .dbg_sclr_a                                 ( ),
    .dbg_sclr_b                                 ( ),
    .dbg_sclr_c                                 ( ),
    .dbg_sclr_d                                 ( ),
    .dbg_sclr_e                                 ( ),
    .dbg_sclr_f                                 ( ),
    .dbg_sclr_g                                 ( ),
    .dbg_sclr_h                                 ( ),
    .dbg_sclr_i                                 ( ),
    .dbg_sclr_j                                 ( ),
    .dbg_sclr_k                                 ( ),

    .dbg_vec_a                                  ( ),
    .dbg_vec_b                                  ( ),
    .dbg_vec_c                                  ( ),
    .pl_dbg_vec                                 ( ),
    .trn_rdllp_data                             ( ),
    .trn_rdllp_src_rdy                          ( ),
    .dbg_mode                                   ( 2'b0 ),
    .dbg_sub_mode                               ( 1'b0 ),
    .pl_dbg_mode                                ( 3'b0 ),

    .drp_clk                                    ( pcie_drp_clk ),
    .drp_do                                     ( pcie_drp_do ),
    .drp_rdy                                    ( pcie_drp_rdy ),
    .drp_addr                                   ( pcie_drp_addr ),
    .drp_en                                     ( pcie_drp_en ),
    .drp_di                                     ( pcie_drp_di ),
    .drp_we                                     ( pcie_drp_we ),

    // Pipe Interface

    .pipe_clk                                   ( pipe_clk            ),
    .user_clk                                   ( user_clk            ),
    .user_clk2                                  ( user_clk2           ),
    .pipe_rx0_polarity_gt                       ( pipe_rx0_polarity_gt       ),
    .pipe_rx1_polarity_gt                       ( pipe_rx1_polarity_gt       ),
    .pipe_rx2_polarity_gt                       ( pipe_rx2_polarity_gt       ),
    .pipe_rx3_polarity_gt                       ( pipe_rx3_polarity_gt       ),
    .pipe_rx4_polarity_gt                       ( pipe_rx4_polarity_gt       ),
    .pipe_rx5_polarity_gt                       ( pipe_rx5_polarity_gt       ),
    .pipe_rx6_polarity_gt                       ( pipe_rx6_polarity_gt       ),
    .pipe_rx7_polarity_gt                       ( pipe_rx7_polarity_gt       ),
    .pipe_tx_deemph_gt                          ( pipe_tx_deemph_gt          ),
    .pipe_tx_margin_gt                          ( pipe_tx_margin_gt          ),
    .pipe_tx_rate_gt                            ( pipe_tx_rate_gt            ),
    .pipe_tx_rcvr_det_gt                        ( pipe_tx_rcvr_det_gt        ),
    .pipe_tx0_char_is_k_gt                      ( pipe_tx0_char_is_k_gt      ),
    .pipe_tx0_compliance_gt                     ( pipe_tx0_compliance_gt     ),
    .pipe_tx0_data_gt                           ( pipe_tx0_data_gt           ),
    .pipe_tx0_elec_idle_gt                      ( pipe_tx0_elec_idle_gt      ),
    .pipe_tx0_powerdown_gt                      ( pipe_tx0_powerdown_gt      ),
    .pipe_tx1_char_is_k_gt                      ( pipe_tx1_char_is_k_gt      ),
    .pipe_tx1_compliance_gt                     ( pipe_tx1_compliance_gt     ),
    .pipe_tx1_data_gt                           ( pipe_tx1_data_gt           ),
    .pipe_tx1_elec_idle_gt                      ( pipe_tx1_elec_idle_gt      ),
    .pipe_tx1_powerdown_gt                      ( pipe_tx1_powerdown_gt      ),
    .pipe_tx2_char_is_k_gt                      ( pipe_tx2_char_is_k_gt      ),
    .pipe_tx2_compliance_gt                     ( pipe_tx2_compliance_gt     ),
    .pipe_tx2_data_gt                           ( pipe_tx2_data_gt           ),
    .pipe_tx2_elec_idle_gt                      ( pipe_tx2_elec_idle_gt      ),
    .pipe_tx2_powerdown_gt                      ( pipe_tx2_powerdown_gt      ),
    .pipe_tx3_char_is_k_gt                      ( pipe_tx3_char_is_k_gt      ),
    .pipe_tx3_compliance_gt                     ( pipe_tx3_compliance_gt     ),
    .pipe_tx3_data_gt                           ( pipe_tx3_data_gt           ),
    .pipe_tx3_elec_idle_gt                      ( pipe_tx3_elec_idle_gt      ),
    .pipe_tx3_powerdown_gt                      ( pipe_tx3_powerdown_gt      ),
    .pipe_tx4_char_is_k_gt                      ( pipe_tx4_char_is_k_gt      ),
    .pipe_tx4_compliance_gt                     ( pipe_tx4_compliance_gt     ),
    .pipe_tx4_data_gt                           ( pipe_tx4_data_gt           ),
    .pipe_tx4_elec_idle_gt                      ( pipe_tx4_elec_idle_gt      ),
    .pipe_tx4_powerdown_gt                      ( pipe_tx4_powerdown_gt      ),
    .pipe_tx5_char_is_k_gt                      ( pipe_tx5_char_is_k_gt      ),
    .pipe_tx5_compliance_gt                     ( pipe_tx5_compliance_gt     ),
    .pipe_tx5_data_gt                           ( pipe_tx5_data_gt           ),
    .pipe_tx5_elec_idle_gt                      ( pipe_tx5_elec_idle_gt      ),
    .pipe_tx5_powerdown_gt                      ( pipe_tx5_powerdown_gt      ),
    .pipe_tx6_char_is_k_gt                      ( pipe_tx6_char_is_k_gt      ),
    .pipe_tx6_compliance_gt                     ( pipe_tx6_compliance_gt     ),
    .pipe_tx6_data_gt                           ( pipe_tx6_data_gt           ),
    .pipe_tx6_elec_idle_gt                      ( pipe_tx6_elec_idle_gt      ),
    .pipe_tx6_powerdown_gt                      ( pipe_tx6_powerdown_gt      ),
    .pipe_tx7_char_is_k_gt                      ( pipe_tx7_char_is_k_gt      ),
    .pipe_tx7_compliance_gt                     ( pipe_tx7_compliance_gt     ),
    .pipe_tx7_data_gt                           ( pipe_tx7_data_gt           ),
    .pipe_tx7_elec_idle_gt                      ( pipe_tx7_elec_idle_gt      ),
    .pipe_tx7_powerdown_gt                      ( pipe_tx7_powerdown_gt      ),

    .pipe_rx0_chanisaligned_gt                  ( pipe_rx0_chanisaligned_gt  ),
    .pipe_rx0_char_is_k_gt                      ( pipe_rx0_char_is_k_gt      ),
    .pipe_rx0_data_gt                           ( pipe_rx0_data_gt           ),
    .pipe_rx0_elec_idle_gt                      ( pipe_rx0_elec_idle_gt      ),
    .pipe_rx0_phy_status_gt                     ( pipe_rx0_phy_status_gt     ),
    .pipe_rx0_status_gt                         ( pipe_rx0_status_gt         ),
    .pipe_rx0_valid_gt                          ( pipe_rx0_valid_gt          ),
    .pipe_rx1_chanisaligned_gt                  ( pipe_rx1_chanisaligned_gt  ),
    .pipe_rx1_char_is_k_gt                      ( pipe_rx1_char_is_k_gt      ),
    .pipe_rx1_data_gt                           ( pipe_rx1_data_gt           ),
    .pipe_rx1_elec_idle_gt                      ( pipe_rx1_elec_idle_gt      ),
    .pipe_rx1_phy_status_gt                     ( pipe_rx1_phy_status_gt     ),
    .pipe_rx1_status_gt                         ( pipe_rx1_status_gt         ),
    .pipe_rx1_valid_gt                          ( pipe_rx1_valid_gt          ),
    .pipe_rx2_chanisaligned_gt                  ( pipe_rx2_chanisaligned_gt  ),
    .pipe_rx2_char_is_k_gt                      ( pipe_rx2_char_is_k_gt      ),
    .pipe_rx2_data_gt                           ( pipe_rx2_data_gt           ),
    .pipe_rx2_elec_idle_gt                      ( pipe_rx2_elec_idle_gt      ),
    .pipe_rx2_phy_status_gt                     ( pipe_rx2_phy_status_gt     ),
    .pipe_rx2_status_gt                         ( pipe_rx2_status_gt         ),
    .pipe_rx2_valid_gt                          ( pipe_rx2_valid_gt          ),
    .pipe_rx3_chanisaligned_gt                  ( pipe_rx3_chanisaligned_gt  ),
    .pipe_rx3_char_is_k_gt                      ( pipe_rx3_char_is_k_gt      ),
    .pipe_rx3_data_gt                           ( pipe_rx3_data_gt           ),
    .pipe_rx3_elec_idle_gt                      ( pipe_rx3_elec_idle_gt      ),
    .pipe_rx3_phy_status_gt                     ( pipe_rx3_phy_status_gt     ),
    .pipe_rx3_status_gt                         ( pipe_rx3_status_gt         ),
    .pipe_rx3_valid_gt                          ( pipe_rx3_valid_gt          ),
    .pipe_rx4_chanisaligned_gt                  ( pipe_rx4_chanisaligned_gt  ),
    .pipe_rx4_char_is_k_gt                      ( pipe_rx4_char_is_k_gt      ),
    .pipe_rx4_data_gt                           ( pipe_rx4_data_gt           ),
    .pipe_rx4_elec_idle_gt                      ( pipe_rx4_elec_idle_gt      ),
    .pipe_rx4_phy_status_gt                     ( pipe_rx4_phy_status_gt     ),
    .pipe_rx4_status_gt                         ( pipe_rx4_status_gt         ),
    .pipe_rx4_valid_gt                          ( pipe_rx4_valid_gt          ),
    .pipe_rx5_chanisaligned_gt                  ( pipe_rx5_chanisaligned_gt  ),
    .pipe_rx5_char_is_k_gt                      ( pipe_rx5_char_is_k_gt      ),
    .pipe_rx5_data_gt                           ( pipe_rx5_data_gt           ),
    .pipe_rx5_elec_idle_gt                      ( pipe_rx5_elec_idle_gt      ),
    .pipe_rx5_phy_status_gt                     ( pipe_rx5_phy_status_gt     ),
    .pipe_rx5_status_gt                         ( pipe_rx5_status_gt         ),
    .pipe_rx5_valid_gt                          ( pipe_rx5_valid_gt          ),
    .pipe_rx6_chanisaligned_gt                  ( pipe_rx6_chanisaligned_gt  ),
    .pipe_rx6_char_is_k_gt                      ( pipe_rx6_char_is_k_gt      ),
    .pipe_rx6_data_gt                           ( pipe_rx6_data_gt           ),
    .pipe_rx6_elec_idle_gt                      ( pipe_rx6_elec_idle_gt      ),
    .pipe_rx6_phy_status_gt                     ( pipe_rx6_phy_status_gt     ),
    .pipe_rx6_status_gt                         ( pipe_rx6_status_gt         ),
    .pipe_rx6_valid_gt                          ( pipe_rx6_valid_gt          ),
    .pipe_rx7_chanisaligned_gt                  ( pipe_rx7_chanisaligned_gt  ),
    .pipe_rx7_char_is_k_gt                      ( pipe_rx7_char_is_k_gt      ),
    .pipe_rx7_data_gt                           ( pipe_rx7_data_gt           ),
    .pipe_rx7_elec_idle_gt                      ( pipe_rx7_elec_idle_gt      ),
    .pipe_rx7_phy_status_gt                     ( pipe_rx7_phy_status_gt     ),
    .pipe_rx7_status_gt                         ( pipe_rx7_status_gt         ),
    .pipe_rx7_valid_gt                          ( pipe_rx7_valid_gt          )

  );
  assign  common_commands_out = 12'b0;  
  assign  pipe_tx_0_sigs      = 25'b0;   
  assign  pipe_tx_1_sigs      = 25'b0; 
  assign  pipe_tx_2_sigs      = 25'b0; 
  assign  pipe_tx_3_sigs      = 25'b0; 
  assign  pipe_tx_4_sigs      = 25'b0; 
  assign  pipe_tx_5_sigs      = 25'b0; 
  assign  pipe_tx_6_sigs      = 25'b0; 
  assign  pipe_tx_7_sigs      = 25'b0; 


  //------------------------------------------------------------------------------------------------------------------//
  // **** V7/K7/A7 GTX Wrapper ****                                                                                   //
  //   The 7-Series GTX Wrapper includes the following:                                                               //
  //     1) Virtex-7 GTX                                                                                              //
  //     2) Kintex-7 GTX                                                                                              //
  //     3) Artix-7  GTP                                                                                              //
  //------------------------------------------------------------------------------------------------------------------//
design_1_xdma_0_0_pcie2_ip_gt_top #(
    .LINK_CAP_MAX_LINK_WIDTH       ( LINK_CAP_MAX_LINK_WIDTH ),
    .REF_CLK_FREQ                  ( REF_CLK_FREQ ),
    .USER_CLK_FREQ                 ( USER_CLK_FREQ ),
    .USER_CLK2_DIV2                ( USER_CLK2_DIV2 ),

    // synthesis translate_off
    .PL_FAST_TRAIN                 ( ENABLE_FAST_SIM_TRAINING ),
    // synthesis translate_on

    .PCIE_EXT_CLK                  ( PCIE_EXT_CLK ),
    .PCIE_USE_MODE                 ( PCIE_USE_MODE ),
    .PCIE_GT_DEVICE                ( PCIE_GT_DEVICE ),
    .PCIE_PLL_SEL                  ( PCIE_PLL_SEL ),
    .PCIE_ASYNC_EN                 ( PCIE_ASYNC_EN ),
    .PCIE_TXBUF_EN                 ( PCIE_TXBUF_EN ),
    .PCIE_EXT_GT_COMMON            ( PCIE_EXT_GT_COMMON ),
    .EXT_CH_GT_DRP                 ( EXT_CH_GT_DRP ),
    .TX_MARGIN_FULL_0              ( TX_MARGIN_FULL_0 ),
    .TX_MARGIN_FULL_1              ( TX_MARGIN_FULL_1 ),
    .TX_MARGIN_FULL_2              ( TX_MARGIN_FULL_2 ),
    .TX_MARGIN_FULL_3              ( TX_MARGIN_FULL_3 ),
    .TX_MARGIN_FULL_4              ( TX_MARGIN_FULL_4 ),
    .TX_MARGIN_LOW_0               ( TX_MARGIN_LOW_0 ),
    .TX_MARGIN_LOW_1               ( TX_MARGIN_LOW_1 ),
    .TX_MARGIN_LOW_2               ( TX_MARGIN_LOW_2 ),
    .TX_MARGIN_LOW_3               ( TX_MARGIN_LOW_3 ),
    .TX_MARGIN_LOW_4               ( TX_MARGIN_LOW_4 ),
    .PCIE_CHAN_BOND                ( PCIE_CHAN_BOND )

  ) gt_top_i (
    // pl ltssm
    .pl_ltssm_state                ( pl_ltssm_state_int ),

    // Pipe Common Signals
    .pipe_tx_rcvr_det              ( pipe_tx_rcvr_det_gt  ),
    .pipe_tx_reset                 ( 1'b0                 ),
    .pipe_tx_rate                  ( pipe_tx_rate_gt      ),
    .pipe_tx_deemph                ( pipe_tx_deemph_gt    ),
    .pipe_tx_margin                ( pipe_tx_margin_gt    ),
    .pipe_tx_swing                 ( 1'b0                 ),

    // Pipe Per-Lane Signals - Lane 0
    .pipe_rx0_char_is_k            ( pipe_rx0_char_is_k_gt),
    .pipe_rx0_data                 ( pipe_rx0_data_gt     ),
    .pipe_rx0_valid                ( pipe_rx0_valid_gt    ),
    .pipe_rx0_chanisaligned        ( pipe_rx0_chanisaligned_gt   ),
    .pipe_rx0_status               ( pipe_rx0_status_gt      ),
    .pipe_rx0_phy_status           ( pipe_rx0_phy_status_gt  ),
    .pipe_rx0_elec_idle            ( pipe_rx0_elec_idle_gt   ),
    .pipe_rx0_polarity             ( pipe_rx0_polarity_gt    ),
    .pipe_tx0_compliance           ( pipe_tx0_compliance_gt  ),
    .pipe_tx0_char_is_k            ( pipe_tx0_char_is_k_gt   ),
    .pipe_tx0_data                 ( pipe_tx0_data_gt        ),
    .pipe_tx0_elec_idle            ( pipe_tx0_elec_idle_gt   ),
    .pipe_tx0_powerdown            ( pipe_tx0_powerdown_gt   ),

    // Pipe Per-Lane Signals - Lane 1

    .pipe_rx1_char_is_k            ( pipe_rx1_char_is_k_gt),
    .pipe_rx1_data                 ( pipe_rx1_data_gt     ),
    .pipe_rx1_valid                ( pipe_rx1_valid_gt    ),
    .pipe_rx1_chanisaligned        ( pipe_rx1_chanisaligned_gt   ),
    .pipe_rx1_status               ( pipe_rx1_status_gt      ),
    .pipe_rx1_phy_status           ( pipe_rx1_phy_status_gt  ),
    .pipe_rx1_elec_idle            ( pipe_rx1_elec_idle_gt   ),
    .pipe_rx1_polarity             ( pipe_rx1_polarity_gt    ),
    .pipe_tx1_compliance           ( pipe_tx1_compliance_gt  ),
    .pipe_tx1_char_is_k            ( pipe_tx1_char_is_k_gt   ),
    .pipe_tx1_data                 ( pipe_tx1_data_gt        ),
    .pipe_tx1_elec_idle            ( pipe_tx1_elec_idle_gt   ),
    .pipe_tx1_powerdown            ( pipe_tx1_powerdown_gt   ),

    // Pipe Per-Lane Signals - Lane 2

    .pipe_rx2_char_is_k            ( pipe_rx2_char_is_k_gt),
    .pipe_rx2_data                 ( pipe_rx2_data_gt     ),
    .pipe_rx2_valid                ( pipe_rx2_valid_gt    ),
    .pipe_rx2_chanisaligned        ( pipe_rx2_chanisaligned_gt   ),
    .pipe_rx2_status               ( pipe_rx2_status_gt      ),
    .pipe_rx2_phy_status           ( pipe_rx2_phy_status_gt  ),
    .pipe_rx2_elec_idle            ( pipe_rx2_elec_idle_gt   ),
    .pipe_rx2_polarity             ( pipe_rx2_polarity_gt    ),
    .pipe_tx2_compliance           ( pipe_tx2_compliance_gt  ),
    .pipe_tx2_char_is_k            ( pipe_tx2_char_is_k_gt   ),
    .pipe_tx2_data                 ( pipe_tx2_data_gt        ),
    .pipe_tx2_elec_idle            ( pipe_tx2_elec_idle_gt   ),
    .pipe_tx2_powerdown            ( pipe_tx2_powerdown_gt   ),

    // Pipe Per-Lane Signals - Lane 3

    .pipe_rx3_char_is_k            ( pipe_rx3_char_is_k_gt),
    .pipe_rx3_data                 ( pipe_rx3_data_gt     ),
    .pipe_rx3_valid                ( pipe_rx3_valid_gt    ),
    .pipe_rx3_chanisaligned        ( pipe_rx3_chanisaligned_gt   ),
    .pipe_rx3_status               ( pipe_rx3_status_gt      ),
    .pipe_rx3_phy_status           ( pipe_rx3_phy_status_gt  ),
    .pipe_rx3_elec_idle            ( pipe_rx3_elec_idle_gt   ),
    .pipe_rx3_polarity             ( pipe_rx3_polarity_gt    ),
    .pipe_tx3_compliance           ( pipe_tx3_compliance_gt  ),
    .pipe_tx3_char_is_k            ( pipe_tx3_char_is_k_gt   ),
    .pipe_tx3_data                 ( pipe_tx3_data_gt        ),
    .pipe_tx3_elec_idle            ( pipe_tx3_elec_idle_gt   ),
    .pipe_tx3_powerdown            ( pipe_tx3_powerdown_gt   ),

    // Pipe Per-Lane Signals - Lane 4

    .pipe_rx4_char_is_k            ( pipe_rx4_char_is_k_gt),
    .pipe_rx4_data                 ( pipe_rx4_data_gt     ),
    .pipe_rx4_valid                ( pipe_rx4_valid_gt    ),
    .pipe_rx4_chanisaligned        ( pipe_rx4_chanisaligned_gt   ),
    .pipe_rx4_status               ( pipe_rx4_status_gt      ),
    .pipe_rx4_phy_status           ( pipe_rx4_phy_status_gt  ),
    .pipe_rx4_elec_idle            ( pipe_rx4_elec_idle_gt   ),
    .pipe_rx4_polarity             ( pipe_rx4_polarity_gt    ),
    .pipe_tx4_compliance           ( pipe_tx4_compliance_gt  ),
    .pipe_tx4_char_is_k            ( pipe_tx4_char_is_k_gt   ),
    .pipe_tx4_data                 ( pipe_tx4_data_gt        ),
    .pipe_tx4_elec_idle            ( pipe_tx4_elec_idle_gt   ),
    .pipe_tx4_powerdown            ( pipe_tx4_powerdown_gt   ),

    // Pipe Per-Lane Signals - Lane 5

    .pipe_rx5_char_is_k            ( pipe_rx5_char_is_k_gt),
    .pipe_rx5_data                 ( pipe_rx5_data_gt     ),
    .pipe_rx5_valid                ( pipe_rx5_valid_gt    ),
    .pipe_rx5_chanisaligned        ( pipe_rx5_chanisaligned_gt   ),
    .pipe_rx5_status               ( pipe_rx5_status_gt      ),
    .pipe_rx5_phy_status           ( pipe_rx5_phy_status_gt  ),
    .pipe_rx5_elec_idle            ( pipe_rx5_elec_idle_gt   ),
    .pipe_rx5_polarity             ( pipe_rx5_polarity_gt    ),
    .pipe_tx5_compliance           ( pipe_tx5_compliance_gt  ),
    .pipe_tx5_char_is_k            ( pipe_tx5_char_is_k_gt   ),
    .pipe_tx5_data                 ( pipe_tx5_data_gt        ),
    .pipe_tx5_elec_idle            ( pipe_tx5_elec_idle_gt   ),
    .pipe_tx5_powerdown            ( pipe_tx5_powerdown_gt   ),

    // Pipe Per-Lane Signals - Lane 6

    .pipe_rx6_char_is_k            ( pipe_rx6_char_is_k_gt),
    .pipe_rx6_data                 ( pipe_rx6_data_gt     ),
    .pipe_rx6_valid                ( pipe_rx6_valid_gt    ),
    .pipe_rx6_chanisaligned        ( pipe_rx6_chanisaligned_gt   ),
    .pipe_rx6_status               ( pipe_rx6_status_gt      ),
    .pipe_rx6_phy_status           ( pipe_rx6_phy_status_gt  ),
    .pipe_rx6_elec_idle            ( pipe_rx6_elec_idle_gt   ),
    .pipe_rx6_polarity             ( pipe_rx6_polarity_gt    ),
    .pipe_tx6_compliance           ( pipe_tx6_compliance_gt  ),
    .pipe_tx6_char_is_k            ( pipe_tx6_char_is_k_gt   ),
    .pipe_tx6_data                 ( pipe_tx6_data_gt        ),
    .pipe_tx6_elec_idle            ( pipe_tx6_elec_idle_gt   ),
    .pipe_tx6_powerdown            ( pipe_tx6_powerdown_gt   ),

    // Pipe Per-Lane Signals - Lane 7

    .pipe_rx7_char_is_k            ( pipe_rx7_char_is_k_gt),
    .pipe_rx7_data                 ( pipe_rx7_data_gt     ),
    .pipe_rx7_valid                ( pipe_rx7_valid_gt    ),
    .pipe_rx7_chanisaligned        ( pipe_rx7_chanisaligned_gt   ),
    .pipe_rx7_status               ( pipe_rx7_status_gt      ),
    .pipe_rx7_phy_status           ( pipe_rx7_phy_status_gt  ),
    .pipe_rx7_elec_idle            ( pipe_rx7_elec_idle_gt   ),
    .pipe_rx7_polarity             ( pipe_rx7_polarity_gt    ),
    .pipe_tx7_compliance           ( pipe_tx7_compliance_gt  ),
    .pipe_tx7_char_is_k            ( pipe_tx7_char_is_k_gt   ),
    .pipe_tx7_data                 ( pipe_tx7_data_gt        ),
    .pipe_tx7_elec_idle            ( pipe_tx7_elec_idle_gt   ),
    .pipe_tx7_powerdown            ( pipe_tx7_powerdown_gt   ),

    // PCI Express Signals
    .pci_exp_txn                   ( pci_exp_txn          ),
    .pci_exp_txp                   ( pci_exp_txp          ),
    .pci_exp_rxn                   ( pci_exp_rxn          ),
    .pci_exp_rxp                   ( pci_exp_rxp          ),

    // Non PIPE Signals
    .sys_clk                       ( sys_clk             ),
    .sys_rst_n                     ( sys_rst_n           ),
    .PIPE_MMCM_RST_N               ( pipe_mmcm_rst_n     ),        // Async      | Async
    .pipe_clk                      ( pipe_clk            ),

    .user_clk                      ( user_clk            ),
    .user_clk2                     ( user_clk2           ),
    .phy_rdy_n                     ( phy_rdy_n           ),

    // ---------- Shared Logic Internal------------------
    .INT_PCLK_OUT_SLAVE            ( int_pclk_out_slave ),
    .INT_RXUSRCLK_OUT              ( int_pipe_rxusrclk_out ),
    .INT_RXOUTCLK_OUT              ( int_rxoutclk_out ),
    .INT_DCLK_OUT                  ( int_dclk_out ),
    .INT_USERCLK1_OUT              ( int_userclk1_out ),
    .INT_USERCLK2_OUT              ( int_userclk2_out),
    .INT_OOBCLK_OUT                ( int_oobclk_out),
    .INT_MMCM_LOCK_OUT             ( int_mmcm_lock_out ),        
    .INT_QPLLLOCK_OUT              ( int_qplllock_out ),
    .INT_QPLLOUTCLK_OUT            ( int_qplloutclk_out ),
    .INT_QPLLOUTREFCLK_OUT         ( int_qplloutrefclk_out ),
    .INT_PCLK_SEL_SLAVE            ( int_pclk_sel_slave ),

    // ---------- Shared Logic External------------------
    //External Clock Ports 
    .PIPE_PCLK_IN                  ( pipe_pclk_in ),
    .PIPE_RXUSRCLK_IN              ( pipe_rxusrclk_in ),
    .PIPE_RXOUTCLK_IN              ( pipe_rxoutclk_in ),
    .PIPE_DCLK_IN                  ( pipe_dclk_in ),
    .PIPE_USERCLK1_IN              ( pipe_userclk1_in ),
    .PIPE_USERCLK2_IN              ( pipe_userclk2_in ),
    .PIPE_OOBCLK_IN                ( pipe_oobclk_in ),
    .PIPE_MMCM_LOCK_IN             ( pipe_mmcm_lock_in ),

    .PIPE_TXOUTCLK_OUT             ( pipe_txoutclk_out ),
    .PIPE_RXOUTCLK_OUT             ( pipe_rxoutclk_out ),
    .PIPE_PCLK_SEL_OUT             ( pipe_pclk_sel_out ),
    .PIPE_GEN3_OUT                 ( pipe_gen3_out ),

    //External GT COMMON Ports

   .qpll_drp_crscode               ( qpll_drp_crscode ),
   .qpll_drp_fsm                   ( qpll_drp_fsm ),
   .qpll_drp_done                  ( qpll_drp_done ),
   .qpll_drp_reset                 ( qpll_drp_reset ),
   .qpll_qplllock                  ( qpll_qplllock ),
   .qpll_qplloutclk                ( qpll_qplloutclk ),
   .qpll_qplloutrefclk             ( qpll_qplloutrefclk ),
   .qpll_qplld                     ( qpll_qplld ),
   .qpll_qpllreset                 ( qpll_qpllreset ),
   .qpll_drp_clk                   ( qpll_drp_clk ),
   .qpll_drp_rst_n                 ( qpll_drp_rst_n ),
   .qpll_drp_ovrd                  ( qpll_drp_ovrd ),
   .qpll_drp_gen3                  ( qpll_drp_gen3),
   .qpll_drp_start                 ( qpll_drp_start ),

   //TRANSCEIVER DEBUG EOU
   .ext_ch_gt_drpclk               ( ext_ch_gt_drpclk ),
   .ext_ch_gt_drpaddr              ( ext_ch_gt_drpaddr ),
   .ext_ch_gt_drpen                ( ext_ch_gt_drpen ),
   .ext_ch_gt_drpdi                ( ext_ch_gt_drpdi ),
   .ext_ch_gt_drpwe                ( ext_ch_gt_drpwe ),
   .ext_ch_gt_drpdo                ( ext_ch_gt_drpdo ),
   .ext_ch_gt_drprdy               ( ext_ch_gt_drprdy ),

//---------- PRBS/Loopback Ports -----------------------
    .PIPE_TXPRBSSEL                ( pipe_txprbssel ),
    .PIPE_RXPRBSSEL                ( pipe_rxprbssel ),
    .PIPE_TXPRBSFORCEERR           ( pipe_txprbsforceerr ),
    .PIPE_RXPRBSCNTRESET           ( pipe_rxprbscntreset ),
    .PIPE_LOOPBACK                 ( pipe_loopback ),

    .PIPE_RXPRBSERR                ( pipe_rxprbserr ),
    .PIPE_TXINHIBIT                ( pipe_txinhibit ),

//---------- Transceiver Debug FSM Ports ---------------------------------
    .PIPE_RST_FSM                  ( pipe_rst_fsm ),
    .PIPE_QRST_FSM                 ( pipe_qrst_fsm ),
    .PIPE_RATE_FSM                 ( pipe_rate_fsm ),
    .PIPE_SYNC_FSM_TX              ( pipe_sync_fsm_tx ),
    .PIPE_SYNC_FSM_RX              ( pipe_sync_fsm_rx ),
    .PIPE_DRP_FSM                  ( pipe_drp_fsm ),

    .PIPE_RST_IDLE                 ( pipe_rst_idle ),
    .PIPE_QRST_IDLE                ( pipe_qrst_idle ),
    .PIPE_RATE_IDLE                ( pipe_rate_idle ),
    .PIPE_EYESCANDATAERROR         ( pipe_eyescandataerror ),
    .PIPE_RXSTATUS                 ( pipe_rxstatus ),
    .PIPE_DMONITOROUT              ( pipe_dmonitorout ),

    .PIPE_CPLL_LOCK                ( pipe_cpll_lock ),
    .PIPE_QPLL_LOCK                ( pipe_qpll_lock ),
    .PIPE_RXPMARESETDONE           ( pipe_rxpmaresetdone ),       
    .PIPE_RXBUFSTATUS              ( pipe_rxbufstatus ),         
    .PIPE_TXPHALIGNDONE            ( pipe_txphaligndone ),       
    .PIPE_TXPHINITDONE             ( pipe_txphinitdone ),        
    .PIPE_TXDLYSRESETDONE          ( pipe_txdlysresetdone ),    
    .PIPE_RXPHALIGNDONE            ( pipe_rxphaligndone ),      
    .PIPE_RXDLYSRESETDONE          ( pipe_rxdlysresetdone ),     
    .PIPE_RXSYNCDONE               ( pipe_rxsyncdone ),       
    .PIPE_RXDISPERR                ( pipe_rxdisperr ),       
    .PIPE_RXNOTINTABLE             ( pipe_rxnotintable ),      
    .PIPE_RXCOMMADET               ( pipe_rxcommadet ),        
    //---------- JTAG Ports --------------------------------
    .PIPE_JTAG_RDY                 (gt_ch_drp_rdy ),


   //---------- Debug Ports -------------------------------
    .PIPE_DEBUG_0                  ( pipe_debug_0 ),
    .PIPE_DEBUG_1                  ( pipe_debug_1 ),
    .PIPE_DEBUG_2                  ( pipe_debug_2 ),
    .PIPE_DEBUG_3                  ( pipe_debug_3 ),
    .PIPE_DEBUG_4                  ( pipe_debug_4 ),
    .PIPE_DEBUG_5                  ( pipe_debug_5 ),
    .PIPE_DEBUG_6                  ( pipe_debug_6 ),
    .PIPE_DEBUG_7                  ( pipe_debug_7 ),
    .PIPE_DEBUG_8                  ( pipe_debug_8 ),
    .PIPE_DEBUG_9                  ( pipe_debug_9 ),
    .PIPE_DEBUG                    ( pipe_debug )
  );

  assign  common_commands_out = 12'b0;  
  assign  pipe_tx_0_sigs      = 25'b0;   
  assign  pipe_tx_1_sigs      = 25'b0; 
  assign  pipe_tx_2_sigs      = 25'b0; 
  assign  pipe_tx_3_sigs      = 25'b0; 
  assign  pipe_tx_4_sigs      = 25'b0; 
  assign  pipe_tx_5_sigs      = 25'b0; 
  assign  pipe_tx_6_sigs      = 25'b0; 
  assign  pipe_tx_7_sigs      = 25'b0; 
  //------------------------------------------------------------------------------------------------------------------//

  // Tie-Off Unused Tandem Outputs
  assign icap_o = 32'b0;
  assign startup_cfgclk = 1'b0;
  assign startup_cfgmclk = 1'b0;
  assign startup_eos = 1'b0;
  assign startup_preq = 1'b0;

//////////////////////////////////////////////STORE_LTSSM//////////////////////////////////////////////////

  (* dont_touch = "true" *) wire store_ltssm;
  reg   [5:0] ltssm_reg0 = 6'b0;
  reg   [5:0] ltssm_reg1 = 6'b0;
  reg   [5:0] ltssm_reg2 = 6'b0; 

  always@ (posedge pipe_clk)
  begin
    ltssm_reg0          <= pl_ltssm_state;
    ltssm_reg1          <= ltssm_reg0;
    ltssm_reg2          <= ltssm_reg1;
  end

  assign store_ltssm     = (ltssm_reg2 != pl_ltssm_state) ? 1'b1 : 1'b0; 

///////////////////////////////////////////////////////////////////////////////////////////////////////////
//enable_jtag_dbg = FALSE 




endmodule
