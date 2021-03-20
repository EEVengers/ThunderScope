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
// File       : design_1_xdma_0_0_pcie2_ip_pcie_top.v
// Version    : 3.3
// Description: Solution wrapper for Virtex7 Hard Block for PCI Express
//
//
//
//--------------------------------------------------------------------------------

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_pcie_top # (
  // PCIE_2_1 params
  parameter        PIPE_PIPELINE_STAGES = 0,                // 0 - 0 stages, 1 - 1 stage, 2 - 2 stages
  parameter [11:0] AER_BASE_PTR = 12'h140,
  parameter        AER_CAP_ECRC_CHECK_CAPABLE = "FALSE",
  parameter        DEV_CAP_ROLE_BASED_ERROR = "TRUE",
  parameter        LINK_CAP_SURPRISE_DOWN_ERROR_CAPABLE = "FALSE",
  parameter        AER_CAP_ECRC_GEN_CAPABLE = "FALSE",
  parameter [15:0] AER_CAP_ID = 16'h0001,
  parameter        AER_CAP_MULTIHEADER = "FALSE",
  parameter [11:0] AER_CAP_NEXTPTR = 12'h178,
  parameter        AER_CAP_ON = "FALSE",
  parameter [23:0] AER_CAP_OPTIONAL_ERR_SUPPORT = 24'h000000,
  parameter        AER_CAP_PERMIT_ROOTERR_UPDATE = "TRUE",
  parameter [3:0]  AER_CAP_VERSION = 4'h1,
  parameter        ALLOW_X8_GEN2 = "FALSE",
  parameter [31:0] BAR0 = 32'hFFFFFF00,
  parameter [31:0] BAR1 = 32'hFFFF0000,
  parameter [31:0] BAR2 = 32'hFFFF000C,
  parameter [31:0] BAR3 = 32'hFFFFFFFF,
  parameter [31:0] BAR4 = 32'h00000000,
  parameter [31:0] BAR5 = 32'h00000000,
  parameter        C_DATA_WIDTH = 64,
  parameter        REM_WIDTH = (C_DATA_WIDTH == 128) ? 2 : 1,
  parameter        KEEP_WIDTH = C_DATA_WIDTH / 8,
  parameter [7:0]  CAPABILITIES_PTR = 8'h40,
  parameter [31:0] CARDBUS_CIS_POINTER = 32'h00000000,
  parameter [23:0] CLASS_CODE = 24'h000000,
  parameter        CFG_ECRC_ERR_CPLSTAT = 0,
  parameter        CMD_INTX_IMPLEMENTED = "TRUE",
  parameter        CPL_TIMEOUT_DISABLE_SUPPORTED = "FALSE",
  parameter [3:0]  CPL_TIMEOUT_RANGES_SUPPORTED = 4'h0,
  parameter [6:0]  CRM_MODULE_RSTS = 7'h00,
  parameter        DEV_CAP2_ARI_FORWARDING_SUPPORTED = "FALSE",
  parameter        DEV_CAP2_ATOMICOP32_COMPLETER_SUPPORTED = "FALSE",
  parameter        DEV_CAP2_ATOMICOP64_COMPLETER_SUPPORTED = "FALSE",
  parameter        DEV_CAP2_ATOMICOP_ROUTING_SUPPORTED = "FALSE",
  parameter        DEV_CAP2_CAS128_COMPLETER_SUPPORTED = "FALSE",
  parameter        DEV_CAP2_ENDEND_TLP_PREFIX_SUPPORTED = "FALSE",
  parameter        DEV_CAP2_EXTENDED_FMT_FIELD_SUPPORTED = "FALSE",
  parameter        DEV_CAP2_LTR_MECHANISM_SUPPORTED = "FALSE",
  parameter [1:0]  DEV_CAP2_MAX_ENDEND_TLP_PREFIXES = 2'h0,
  parameter        DEV_CAP2_NO_RO_ENABLED_PRPR_PASSING = "FALSE",
  parameter [1:0]  DEV_CAP2_TPH_COMPLETER_SUPPORTED = 2'h0,
  parameter        DEV_CAP_ENABLE_SLOT_PWR_LIMIT_SCALE = "TRUE",
  parameter        DEV_CAP_ENABLE_SLOT_PWR_LIMIT_VALUE = "TRUE",
  parameter        integer DEV_CAP_ENDPOINT_L0S_LATENCY = 0,
  parameter        integer DEV_CAP_ENDPOINT_L1_LATENCY = 0,
  parameter        DEV_CAP_EXT_TAG_SUPPORTED = "TRUE",
  parameter        DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE = "FALSE",
  parameter        integer DEV_CAP_MAX_PAYLOAD_SUPPORTED = 2,
  parameter        integer DEV_CAP_PHANTOM_FUNCTIONS_SUPPORT = 0,
  parameter        integer DEV_CAP_RSVD_14_12 = 0,
  parameter        integer DEV_CAP_RSVD_17_16 = 0,
  parameter        integer DEV_CAP_RSVD_31_29 = 0,
  parameter        DEV_CONTROL_AUX_POWER_SUPPORTED = "FALSE",
  parameter        DEV_CONTROL_EXT_TAG_DEFAULT = "FALSE",
  parameter        DISABLE_ASPM_L1_TIMER = "FALSE",
  parameter        DISABLE_BAR_FILTERING = "FALSE",
  parameter        DISABLE_ERR_MSG = "FALSE",
  parameter        DISABLE_ID_CHECK = "FALSE",
  parameter        DISABLE_LANE_REVERSAL = "FALSE",
  parameter        DISABLE_LOCKED_FILTER = "FALSE",
  parameter        DISABLE_PPM_FILTER = "FALSE",
  parameter        DISABLE_RX_POISONED_RESP = "FALSE",
  parameter        DISABLE_RX_TC_FILTER = "FALSE",
  parameter        DISABLE_SCRAMBLING = "FALSE",
  parameter [7:0]  DNSTREAM_LINK_NUM = 8'h00,
  parameter [11:0] DSN_BASE_PTR = 12'h100,
  parameter [15:0] DSN_CAP_ID = 16'h0003,
  parameter [11:0] DSN_CAP_NEXTPTR = 12'h10C,
  parameter        DSN_CAP_ON = "TRUE",
  parameter [3:0]  DSN_CAP_VERSION = 4'h1,
  parameter [10:0] ENABLE_MSG_ROUTE = 11'h000,
  parameter        ENABLE_RX_TD_ECRC_TRIM = "FALSE",
  parameter        ENDEND_TLP_PREFIX_FORWARDING_SUPPORTED = "FALSE",
  parameter        ENTER_RVRY_EI_L0 = "TRUE",
  parameter        EXIT_LOOPBACK_ON_EI = "TRUE",
  parameter [31:0] EXPANSION_ROM = 32'hFFFFF001,
  parameter [5:0]  EXT_CFG_CAP_PTR = 6'h3F,
  parameter [9:0]  EXT_CFG_XP_CAP_PTR = 10'h3FF,
  parameter [7:0]  HEADER_TYPE = 8'h00,
  parameter [4:0]  INFER_EI = 5'h00,
  parameter [7:0]  INTERRUPT_PIN = 8'h01,
  parameter        INTERRUPT_STAT_AUTO = "TRUE",
  parameter        IS_SWITCH = "FALSE",
  parameter [9:0]  LAST_CONFIG_DWORD = 10'h3FF,
  parameter        LINK_CAP_ASPM_OPTIONALITY = "TRUE",
  parameter        integer LINK_CAP_ASPM_SUPPORT = 1,
  parameter        LINK_CAP_CLOCK_POWER_MANAGEMENT = "FALSE",
  parameter        LINK_CAP_DLL_LINK_ACTIVE_REPORTING_CAP = "FALSE",
  parameter        integer LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN1 = 7,
  parameter        integer LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN2 = 7,
  parameter        integer LINK_CAP_L0S_EXIT_LATENCY_GEN1 = 7,
  parameter        integer LINK_CAP_L0S_EXIT_LATENCY_GEN2 = 7,
  parameter        integer LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN1 = 7,
  parameter        integer LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN2 = 7,
  parameter        integer LINK_CAP_L1_EXIT_LATENCY_GEN1 = 7,
  parameter        integer LINK_CAP_L1_EXIT_LATENCY_GEN2 = 7,
  parameter        LINK_CAP_LINK_BANDWIDTH_NOTIFICATION_CAP = "FALSE",
  parameter [3:0]  LINK_CAP_MAX_LINK_SPEED = 4'h1,
  parameter [5:0]  LINK_CAP_MAX_LINK_WIDTH = 6'h08,
  parameter        integer LINK_CAP_RSVD_23 = 0,
  parameter        integer LINK_CONTROL_RCB = 0,
  parameter        LINK_CTRL2_DEEMPHASIS = "FALSE",
  parameter        LINK_CTRL2_HW_AUTONOMOUS_SPEED_DISABLE = "FALSE",
  parameter [3:0]  LINK_CTRL2_TARGET_LINK_SPEED = 4'h2,
  parameter        LINK_STATUS_SLOT_CLOCK_CONFIG = "TRUE",
  parameter [14:0] LL_ACK_TIMEOUT = 15'h0000,
  parameter        LL_ACK_TIMEOUT_EN = "FALSE",
  parameter        integer LL_ACK_TIMEOUT_FUNC = 0,
  parameter [14:0] LL_REPLAY_TIMEOUT = 15'h0000,
  parameter        LL_REPLAY_TIMEOUT_EN = "FALSE",
  parameter        integer LL_REPLAY_TIMEOUT_FUNC = 0,
  parameter [5:0]  LTSSM_MAX_LINK_WIDTH = 6'h01,
  parameter        MPS_FORCE = "FALSE",
  parameter [7:0]  MSIX_BASE_PTR = 8'h9C,
  parameter [7:0]  MSIX_CAP_ID = 8'h11,
  parameter [7:0]  MSIX_CAP_NEXTPTR = 8'h00,
  parameter        MSIX_CAP_ON = "FALSE",
  parameter        integer MSIX_CAP_PBA_BIR = 0,
  parameter [28:0] MSIX_CAP_PBA_OFFSET = 29'h00000050,
  parameter        integer MSIX_CAP_TABLE_BIR = 0,
  parameter [28:0] MSIX_CAP_TABLE_OFFSET = 29'h00000040,
  parameter [10:0] MSIX_CAP_TABLE_SIZE = 11'h000,
  parameter [7:0]  MSI_BASE_PTR = 8'h48,
  parameter        MSI_CAP_64_BIT_ADDR_CAPABLE = "TRUE",
  parameter [7:0]  MSI_CAP_ID = 8'h05,
  parameter        integer MSI_CAP_MULTIMSGCAP = 0,
  parameter        integer MSI_CAP_MULTIMSG_EXTENSION = 0,
  parameter [7:0]  MSI_CAP_NEXTPTR = 8'h60,
  parameter        MSI_CAP_ON = "FALSE",
  parameter        MSI_CAP_PER_VECTOR_MASKING_CAPABLE = "TRUE",
  parameter        integer N_FTS_COMCLK_GEN1 = 255,
  parameter        integer N_FTS_COMCLK_GEN2 = 255,
  parameter        integer N_FTS_GEN1 = 255,
  parameter        integer N_FTS_GEN2 = 255,
  parameter [7:0]  PCIE_BASE_PTR = 8'h60,
  parameter [7:0]  PCIE_CAP_CAPABILITY_ID = 8'h10,
  parameter [3:0]  PCIE_CAP_CAPABILITY_VERSION = 4'h2,
  parameter [3:0]  PCIE_CAP_DEVICE_PORT_TYPE = 4'h0,
  parameter [7:0]  PCIE_CAP_NEXTPTR = 8'h9C,
  parameter        PCIE_CAP_ON = "TRUE",
  parameter        integer PCIE_CAP_RSVD_15_14 = 0,
  parameter        PCIE_CAP_SLOT_IMPLEMENTED = "FALSE",
  parameter        integer PCIE_REVISION = 2,
  parameter        integer PL_AUTO_CONFIG = 0,
  parameter        PL_FAST_TRAIN = "FALSE",
  parameter [14:0] PM_ASPML0S_TIMEOUT = 15'h0000,
  parameter        PM_ASPML0S_TIMEOUT_EN = "FALSE",
  parameter        integer PM_ASPML0S_TIMEOUT_FUNC = 0,
  parameter        PM_ASPM_FASTEXIT = "FALSE",
  parameter [7:0]  PM_BASE_PTR = 8'h40,
  parameter        integer PM_CAP_AUXCURRENT = 0,
  parameter        PM_CAP_D1SUPPORT = "TRUE",
  parameter        PM_CAP_D2SUPPORT = "TRUE",
  parameter        PM_CAP_DSI = "FALSE",
  parameter [7:0]  PM_CAP_ID = 8'h01,
  parameter [7:0]  PM_CAP_NEXTPTR = 8'h48,
  parameter        PM_CAP_ON = "TRUE",
  parameter [4:0]  PM_CAP_PMESUPPORT = 5'h0F,
  parameter        PM_CAP_PME_CLOCK = "FALSE",
  parameter        integer PM_CAP_RSVD_04 = 0,
  parameter        integer PM_CAP_VERSION = 3,
  parameter        PM_CSR_B2B3 = "FALSE",
  parameter        PM_CSR_BPCCEN = "FALSE",
  parameter        PM_CSR_NOSOFTRST = "TRUE",
  parameter [7:0]  PM_DATA0 = 8'h01,
  parameter [7:0]  PM_DATA1 = 8'h01,
  parameter [7:0]  PM_DATA2 = 8'h01,
  parameter [7:0]  PM_DATA3 = 8'h01,
  parameter [7:0]  PM_DATA4 = 8'h01,
  parameter [7:0]  PM_DATA5 = 8'h01,
  parameter [7:0]  PM_DATA6 = 8'h01,
  parameter [7:0]  PM_DATA7 = 8'h01,
  parameter [1:0]  PM_DATA_SCALE0 = 2'h1,
  parameter [1:0]  PM_DATA_SCALE1 = 2'h1,
  parameter [1:0]  PM_DATA_SCALE2 = 2'h1,
  parameter [1:0]  PM_DATA_SCALE3 = 2'h1,
  parameter [1:0]  PM_DATA_SCALE4 = 2'h1,
  parameter [1:0]  PM_DATA_SCALE5 = 2'h1,
  parameter [1:0]  PM_DATA_SCALE6 = 2'h1,
  parameter [1:0]  PM_DATA_SCALE7 = 2'h1,
  parameter        PM_MF = "FALSE",
  parameter [11:0] RBAR_BASE_PTR = 12'h178,
  parameter [4:0]  RBAR_CAP_CONTROL_ENCODEDBAR0 = 5'h00,
  parameter [4:0]  RBAR_CAP_CONTROL_ENCODEDBAR1 = 5'h00,
  parameter [4:0]  RBAR_CAP_CONTROL_ENCODEDBAR2 = 5'h00,
  parameter [4:0]  RBAR_CAP_CONTROL_ENCODEDBAR3 = 5'h00,
  parameter [4:0]  RBAR_CAP_CONTROL_ENCODEDBAR4 = 5'h00,
  parameter [4:0]  RBAR_CAP_CONTROL_ENCODEDBAR5 = 5'h00,
  parameter [15:0] RBAR_CAP_ID = 16'h0015,
  parameter [2:0]  RBAR_CAP_INDEX0 = 3'h0,
  parameter [2:0]  RBAR_CAP_INDEX1 = 3'h0,
  parameter [2:0]  RBAR_CAP_INDEX2 = 3'h0,
  parameter [2:0]  RBAR_CAP_INDEX3 = 3'h0,
  parameter [2:0]  RBAR_CAP_INDEX4 = 3'h0,
  parameter [2:0]  RBAR_CAP_INDEX5 = 3'h0,
  parameter [11:0] RBAR_CAP_NEXTPTR = 12'h000,
  parameter        RBAR_CAP_ON = "FALSE",
  parameter [31:0] RBAR_CAP_SUP0 = 32'h00000000,
  parameter [31:0] RBAR_CAP_SUP1 = 32'h00000000,
  parameter [31:0] RBAR_CAP_SUP2 = 32'h00000000,
  parameter [31:0] RBAR_CAP_SUP3 = 32'h00000000,
  parameter [31:0] RBAR_CAP_SUP4 = 32'h00000000,
  parameter [31:0] RBAR_CAP_SUP5 = 32'h00000000,
  parameter [3:0]  RBAR_CAP_VERSION = 4'h1,
  parameter [2:0]  RBAR_NUM = 3'h1,
  parameter        integer RECRC_CHK = 0,
  parameter        RECRC_CHK_TRIM = "FALSE",
  parameter        ROOT_CAP_CRS_SW_VISIBILITY = "FALSE",
  parameter [1:0]  RP_AUTO_SPD = 2'h1,
  parameter [4:0]  RP_AUTO_SPD_LOOPCNT = 5'h1f,
  parameter        SELECT_DLL_IF = "FALSE",
  parameter        SIM_VERSION = "1.0",
  parameter        SLOT_CAP_ATT_BUTTON_PRESENT = "FALSE",
  parameter        SLOT_CAP_ATT_INDICATOR_PRESENT = "FALSE",
  parameter        SLOT_CAP_ELEC_INTERLOCK_PRESENT = "FALSE",
  parameter        SLOT_CAP_HOTPLUG_CAPABLE = "FALSE",
  parameter        SLOT_CAP_HOTPLUG_SURPRISE = "FALSE",
  parameter        SLOT_CAP_MRL_SENSOR_PRESENT = "FALSE",
  parameter        SLOT_CAP_NO_CMD_COMPLETED_SUPPORT = "FALSE",
  parameter [12:0] SLOT_CAP_PHYSICAL_SLOT_NUM = 13'h0000,
  parameter        SLOT_CAP_POWER_CONTROLLER_PRESENT = "FALSE",
  parameter        SLOT_CAP_POWER_INDICATOR_PRESENT = "FALSE",
  parameter        integer SLOT_CAP_SLOT_POWER_LIMIT_SCALE = 0,
  parameter [7:0]  SLOT_CAP_SLOT_POWER_LIMIT_VALUE = 8'h00,
  parameter        integer SPARE_BIT0 = 0,
  parameter        integer SPARE_BIT1 = 0,
  parameter        integer SPARE_BIT2 = 0,
  parameter        integer SPARE_BIT3 = 0,
  parameter        integer SPARE_BIT4 = 0,
  parameter        integer SPARE_BIT5 = 0,
  parameter        integer SPARE_BIT6 = 0,
  parameter        integer SPARE_BIT7 = 0,
  parameter        integer SPARE_BIT8 = 0,
  parameter [7:0]  SPARE_BYTE0 = 8'h00,
  parameter [7:0]  SPARE_BYTE1 = 8'h00,
  parameter [7:0]  SPARE_BYTE2 = 8'h00,
  parameter [7:0]  SPARE_BYTE3 = 8'h00,
  parameter [31:0] SPARE_WORD0 = 32'h00000000,
  parameter [31:0] SPARE_WORD1 = 32'h00000000,
  parameter [31:0] SPARE_WORD2 = 32'h00000000,
  parameter [31:0] SPARE_WORD3 = 32'h00000000,
  parameter        SSL_MESSAGE_AUTO = "FALSE",
  parameter        TECRC_EP_INV = "FALSE",
  parameter        TL_RBYPASS = "FALSE",
  parameter        integer TL_RX_RAM_RADDR_LATENCY = 0,
  parameter        integer TL_RX_RAM_RDATA_LATENCY = 2,
  parameter        integer TL_RX_RAM_WRITE_LATENCY = 0,
  parameter        TL_TFC_DISABLE = "FALSE",
  parameter        TL_TX_CHECKS_DISABLE = "FALSE",
  parameter        integer TL_TX_RAM_RADDR_LATENCY = 0,
  parameter        integer TL_TX_RAM_RDATA_LATENCY = 2,
  parameter        integer TL_TX_RAM_WRITE_LATENCY = 0,
  parameter        TRN_DW = "FALSE",
  parameter        TRN_NP_FC = "FALSE",
  parameter        UPCONFIG_CAPABLE = "TRUE",
  parameter        UPSTREAM_FACING = "TRUE",
  parameter        UR_ATOMIC = "TRUE",
  parameter        UR_CFG1 = "TRUE",
  parameter        UR_INV_REQ = "TRUE",
  parameter        UR_PRS_RESPONSE = "TRUE",
  parameter        USER_CLK2_DIV2 = "FALSE",
  parameter        integer USER_CLK_FREQ = 3,
  parameter        USE_RID_PINS = "FALSE",
  parameter        VC0_CPL_INFINITE = "TRUE",
  parameter [12:0] VC0_RX_RAM_LIMIT = 13'h03FF,
  parameter        integer VC0_TOTAL_CREDITS_CD = 127,
  parameter        integer VC0_TOTAL_CREDITS_CH = 31,
  parameter        integer VC0_TOTAL_CREDITS_NPD = 24,
  parameter        integer VC0_TOTAL_CREDITS_NPH = 12,
  parameter        integer VC0_TOTAL_CREDITS_PD = 288,
  parameter        integer VC0_TOTAL_CREDITS_PH = 32,
  parameter        integer VC0_TX_LASTPACKET = 31,
  parameter [11:0] VC_BASE_PTR = 12'h10C,
  parameter [15:0] VC_CAP_ID = 16'h0002,
  parameter [11:0] VC_CAP_NEXTPTR = 12'h000,
  parameter        VC_CAP_ON = "FALSE",
  parameter        VC_CAP_REJECT_SNOOP_TRANSACTIONS = "FALSE",
  parameter [3:0]  VC_CAP_VERSION = 4'h1,
  parameter [11:0] VSEC_BASE_PTR = 12'h128,
  parameter [15:0] VSEC_CAP_HDR_ID = 16'h1234,
  parameter [11:0] VSEC_CAP_HDR_LENGTH = 12'h018,
  parameter [3:0]  VSEC_CAP_HDR_REVISION = 4'h1,
  parameter [15:0] VSEC_CAP_ID = 16'h000B,
  parameter        VSEC_CAP_IS_LINK_VISIBLE = "TRUE",
  parameter [11:0] VSEC_CAP_NEXTPTR = 12'h140,
  parameter        VSEC_CAP_ON = "FALSE",
  parameter [3:0]  VSEC_CAP_VERSION = 4'h1,
  parameter        ENABLE_JTAG_DBG = "FALSE"
)
(

  // wrapper input
  // Common
  output                                     user_clk_out,
  input                                      user_reset,
  input                                      user_lnk_up,

  output                                     trn_lnk_up,
  output                                     user_rst_n,

  // Tx
  output  [5:0]                              tx_buf_av,
  output                                     tx_err_drop,
  output                                     tx_cfg_req,
  output                                     s_axis_tx_tready,
  input   [C_DATA_WIDTH-1:0]                 s_axis_tx_tdata,
  input   [KEEP_WIDTH-1:0]                   s_axis_tx_tkeep,
  input   [3:0]                              s_axis_tx_tuser,
  input                                      s_axis_tx_tlast,
  input                                      s_axis_tx_tvalid,
  input                                      tx_cfg_gnt,

  // Rx
  output  [C_DATA_WIDTH-1:0]                 m_axis_rx_tdata,
  output  [KEEP_WIDTH-1:0]                   m_axis_rx_tkeep,
  output                                     m_axis_rx_tlast,
  output                                     m_axis_rx_tvalid,
  input                                      m_axis_rx_tready,
  output  [21:0]                             m_axis_rx_tuser,
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

  input wire   [1:0]   pl_directed_link_change,
  input wire   [1:0]   pl_directed_link_width,
  input wire           pl_directed_link_speed,
  input wire           pl_directed_link_auton,
  input wire           pl_upstream_prefer_deemph,
  input wire           pl_downstream_deemph_source,
  input wire           pl_directed_ltssm_new_vld,
  input wire   [5:0]   pl_directed_ltssm_new,
  input wire           pl_directed_ltssm_stall,

  input wire           cm_rst_n,
  input wire           func_lvl_rst_n,
  input wire           pl_transmit_hot_rst,
  input wire   [31:0]  cfg_mgmt_di,
  input wire   [3:0]   cfg_mgmt_byte_en_n,
  input wire   [9:0]   cfg_mgmt_dwaddr,
  input wire           cfg_mgmt_wr_rw1c_as_rw_n,
  input wire           cfg_mgmt_wr_readonly_n,
  input wire           cfg_mgmt_wr_en_n,
  input wire           cfg_mgmt_rd_en_n,
  input wire           cfg_err_malformed_n,
  input wire           cfg_err_cor_n,
  input wire           cfg_err_ur_n,
  input wire           cfg_err_ecrc_n,
  input wire           cfg_err_cpl_timeout_n,
  input wire           cfg_err_cpl_abort_n,
  input wire           cfg_err_cpl_unexpect_n,
  input wire           cfg_err_poisoned_n,
  input wire           cfg_err_acs_n,
  input wire           cfg_err_atomic_egress_blocked_n,
  input wire           cfg_err_mc_blocked_n,
  input wire           cfg_err_internal_uncor_n,
  input wire           cfg_err_internal_cor_n,
  input wire           cfg_err_posted_n,
  input wire           cfg_err_locked_n,
  input wire           cfg_err_norecovery_n,
  input wire   [127:0] cfg_err_aer_headerlog,
  input wire   [47:0]  cfg_err_tlp_cpl_header,
  input wire           cfg_interrupt_n,
  input wire   [7:0]   cfg_interrupt_di,
  input wire           cfg_interrupt_assert_n,
  input wire           cfg_interrupt_stat_n,
  input wire   [7:0]   cfg_ds_bus_number,
  input wire   [4:0]   cfg_ds_device_number,
  input wire   [2:0]   cfg_ds_function_number,
  input wire   [7:0]   cfg_port_number,
  input wire           cfg_pm_halt_aspm_l0s_n,
  input wire           cfg_pm_halt_aspm_l1_n,
  input wire           cfg_pm_force_state_en_n,
  input wire   [1:0]   cfg_pm_force_state,
  input wire           cfg_pm_wake_n,
  input wire           cfg_turnoff_ok,
  input wire           cfg_pm_send_pme_to_n,
  input wire   [4:0]   cfg_pciecap_interrupt_msgnum,
  input wire           cfg_trn_pending,
  input wire   [2:0]   cfg_force_mps,
  input wire           cfg_force_common_clock_off,
  input wire           cfg_force_extended_sync_on,
  input wire   [63:0]  cfg_dsn,
  input wire   [4:0]   cfg_aer_interrupt_msgnum,
  input wire   [15:0]  cfg_dev_id,
  input wire   [15:0]  cfg_vend_id,
  input wire   [7:0]   cfg_rev_id,
  input wire   [15:0]  cfg_subsys_id,
  input wire   [15:0]  cfg_subsys_vend_id,
  input wire           drp_clk,
  input wire           drp_en,
  input wire           drp_we,
  input wire   [8:0]   drp_addr,
  input wire   [15:0]  drp_di,
  input wire   [1:0]   dbg_mode,
  input wire           dbg_sub_mode,
  input wire   [2:0]   pl_dbg_mode ,

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
  output wire          pl_received_hot_rst,
  output wire          lnk_clk_en,
  output wire  [31:0]  cfg_mgmt_do,
  output wire          cfg_mgmt_rd_wr_done,
  output wire          cfg_err_aer_headerlog_set,
  output wire          cfg_err_cpl_rdy,
  output wire          cfg_interrupt_rdy,
  output wire  [2:0]   cfg_interrupt_mmenable,
  output wire          cfg_interrupt_msienable,
  output wire  [7:0]   cfg_interrupt_do,
  output wire          cfg_interrupt_msixenable,
  output wire          cfg_interrupt_msixfm,
  output wire  [7:0]   cfg_bus_number,
  output wire  [4:0]   cfg_device_number,
  output wire  [2:0]   cfg_function_number,
  output wire  [15:0]  cfg_status,
  output wire  [15:0]  cfg_command,
  output wire  [15:0]  cfg_dstatus,
  output wire  [15:0]  cfg_dcommand,
  output wire  [15:0]  cfg_lstatus,
  output wire  [15:0]  cfg_lcommand,
  output wire  [15:0]  cfg_dcommand2,
  output wire          cfg_received_func_lvl_rst,
  output wire          cfg_msg_received,
  output wire  [15:0]  cfg_msg_data,
  output wire          cfg_msg_received_err_cor,
  output wire          cfg_msg_received_err_non_fatal,
  output wire          cfg_msg_received_err_fatal,
  output wire          cfg_msg_received_assert_int_a,
  output wire          cfg_msg_received_deassert_int_a,
  output wire          cfg_msg_received_assert_int_b,
  output wire          cfg_msg_received_deassert_int_b,
  output wire          cfg_msg_received_assert_int_c,
  output wire          cfg_msg_received_deassert_int_c,
  output wire          cfg_msg_received_assert_int_d,
  output wire          cfg_msg_received_deassert_int_d,
  output wire          cfg_msg_received_pm_pme,
  output wire          cfg_msg_received_pme_to_ack,
  output wire          cfg_msg_received_pme_to,
  output wire          cfg_msg_received_setslotpowerlimit,
  output wire          cfg_msg_received_unlock,
  output wire          cfg_msg_received_pm_as_nak,
  output wire          cfg_to_turnoff,
  output wire  [2:0]   cfg_pcie_link_state,
  output wire          cfg_pm_rcv_as_req_l1_n,
  output wire          cfg_pm_rcv_enter_l1_n,
  output wire          cfg_pm_rcv_enter_l23_n,
  output wire          cfg_pm_rcv_req_ack_n,
  output wire  [1:0]   cfg_pmcsr_powerstate,
  output wire          cfg_pmcsr_pme_en,
  output wire          cfg_pmcsr_pme_status,
  output wire          cfg_transaction,
  output wire          cfg_transaction_type,
  output wire  [6:0]   cfg_transaction_addr,
  output wire          cfg_command_io_enable,
  output wire          cfg_command_mem_enable,
  output wire          cfg_command_bus_master_enable,
  output wire          cfg_command_interrupt_disable,
  output wire          cfg_command_serr_en,
  output wire          cfg_bridge_serr_en,
  output wire          cfg_dev_status_corr_err_detected,
  output wire          cfg_dev_status_non_fatal_err_detected,
  output wire          cfg_dev_status_fatal_err_detected,
  output wire          cfg_dev_status_ur_detected,
  output wire          cfg_dev_control_corr_err_reporting_en,
  output wire          cfg_dev_control_non_fatal_reporting_en,
  output wire          cfg_dev_control_fatal_err_reporting_en,
  output wire          cfg_dev_control_ur_err_reporting_en,
  output wire          cfg_dev_control_enable_ro,
  output wire  [2:0]   cfg_dev_control_max_payload,
  output wire          cfg_dev_control_ext_tag_en,
  output wire          cfg_dev_control_phantom_en,
  output wire          cfg_dev_control_aux_power_en,
  output wire          cfg_dev_control_no_snoop_en,
  output wire  [2:0]   cfg_dev_control_max_read_req,
  output wire  [1:0]   cfg_link_status_current_speed,
  output wire  [3:0]   cfg_link_status_negotiated_width,
  output wire          cfg_link_status_link_training,
  output wire          cfg_link_status_dll_active,
  output wire          cfg_link_status_bandwidth_status,
  output wire          cfg_link_status_auto_bandwidth_status,
  output wire  [1:0]   cfg_link_control_aspm_control,
  output wire          cfg_link_control_rcb,
  output wire          cfg_link_control_link_disable,
  output wire          cfg_link_control_retrain_link,
  output wire          cfg_link_control_common_clock,
  output wire          cfg_link_control_extended_sync,
  output wire          cfg_link_control_clock_pm_en,
  output wire          cfg_link_control_hw_auto_width_dis,
  output wire          cfg_link_control_bandwidth_int_en,
  output wire          cfg_link_control_auto_bandwidth_int_en,
  output wire  [3:0]   cfg_dev_control2_cpl_timeout_val,
  output wire          cfg_dev_control2_cpl_timeout_dis,
  output wire          cfg_dev_control2_ari_forward_en,
  output wire          cfg_dev_control2_atomic_requester_en,
  output wire          cfg_dev_control2_atomic_egress_block,
  output wire          cfg_dev_control2_ido_req_en,
  output wire          cfg_dev_control2_ido_cpl_en,
  output wire          cfg_dev_control2_ltr_en,
  output wire          cfg_dev_control2_tlp_prefix_block,
  output wire          cfg_slot_control_electromech_il_ctl_pulse,
  output wire          cfg_root_control_syserr_corr_err_en,
  output wire          cfg_root_control_syserr_non_fatal_err_en,
  output wire          cfg_root_control_syserr_fatal_err_en,
  output wire          cfg_root_control_pme_int_en,
  output wire          cfg_aer_ecrc_check_en,
  output wire          cfg_aer_ecrc_gen_en,
  output wire          cfg_aer_rooterr_corr_err_reporting_en,
  output wire          cfg_aer_rooterr_non_fatal_err_reporting_en,
  output wire          cfg_aer_rooterr_fatal_err_reporting_en,
  output wire          cfg_aer_rooterr_corr_err_received,
  output wire          cfg_aer_rooterr_non_fatal_err_received,
  output wire          cfg_aer_rooterr_fatal_err_received,
  output wire  [6:0]   cfg_vc_tcvc_map,
  output wire          drp_rdy,
  output wire  [15:0]  drp_do,
  output wire  [63:0]  dbg_vec_a,
  output wire  [63:0]  dbg_vec_b,
  output wire  [11:0]  dbg_vec_c,
  output wire          dbg_sclr_a,
  output wire          dbg_sclr_b,
  output wire          dbg_sclr_c,
  output wire          dbg_sclr_d,
  output wire          dbg_sclr_e,
  output wire          dbg_sclr_f,
  output wire          dbg_sclr_g,
  output wire          dbg_sclr_h,
  output wire          dbg_sclr_i,
  output wire          dbg_sclr_j,
  output wire          dbg_sclr_k,
  output wire  [63:0]  trn_rdllp_data,
  output wire   [1:0]  trn_rdllp_src_rdy,
  output wire  [11:0]  pl_dbg_vec,

  input                       phy_rdy_n,
  input                       pipe_clk,
  input                       user_clk,
  input                       user_clk2,
  output wire                 pipe_rx0_polarity_gt,
  output wire                 pipe_rx1_polarity_gt,
  output wire                 pipe_rx2_polarity_gt,
  output wire                 pipe_rx3_polarity_gt,
  output wire                 pipe_rx4_polarity_gt,
  output wire                 pipe_rx5_polarity_gt,
  output wire                 pipe_rx6_polarity_gt,
  output wire                 pipe_rx7_polarity_gt,
  output wire                 pipe_tx_deemph_gt,
  output wire [2:0]           pipe_tx_margin_gt,
  output wire                 pipe_tx_rate_gt,
  output wire                 pipe_tx_rcvr_det_gt,
  output wire [1:0]           pipe_tx0_char_is_k_gt,
  output wire                 pipe_tx0_compliance_gt,
  output wire [15:0]          pipe_tx0_data_gt,
  output wire                 pipe_tx0_elec_idle_gt,
  output wire [1:0]           pipe_tx0_powerdown_gt,
  output wire [1:0]           pipe_tx1_char_is_k_gt,
  output wire                 pipe_tx1_compliance_gt,
  output wire [15:0]          pipe_tx1_data_gt,
  output wire                 pipe_tx1_elec_idle_gt,
  output wire [1:0]           pipe_tx1_powerdown_gt,
  output wire [1:0]           pipe_tx2_char_is_k_gt,
  output wire                 pipe_tx2_compliance_gt,
  output wire [15:0]          pipe_tx2_data_gt,
  output wire                 pipe_tx2_elec_idle_gt,
  output wire [1:0]           pipe_tx2_powerdown_gt,
  output wire [1:0]           pipe_tx3_char_is_k_gt,
  output wire                 pipe_tx3_compliance_gt,
  output wire [15:0]          pipe_tx3_data_gt,
  output wire                 pipe_tx3_elec_idle_gt,
  output wire [1:0]           pipe_tx3_powerdown_gt,
  output wire [1:0]           pipe_tx4_char_is_k_gt,
  output wire                 pipe_tx4_compliance_gt,
  output wire [15:0]          pipe_tx4_data_gt,
  output wire                 pipe_tx4_elec_idle_gt,
  output wire [1:0]           pipe_tx4_powerdown_gt,
  output wire [1:0]           pipe_tx5_char_is_k_gt,
  output wire                 pipe_tx5_compliance_gt,
  output wire [15:0]          pipe_tx5_data_gt,
  output wire                 pipe_tx5_elec_idle_gt,
  output wire [1:0]           pipe_tx5_powerdown_gt,
  output wire [1:0]           pipe_tx6_char_is_k_gt,
  output wire                 pipe_tx6_compliance_gt,
  output wire [15:0]          pipe_tx6_data_gt,
  output wire                 pipe_tx6_elec_idle_gt,
  output wire [1:0]           pipe_tx6_powerdown_gt,
  output wire [1:0]           pipe_tx7_char_is_k_gt,
  output wire                 pipe_tx7_compliance_gt,
  output wire [15:0]          pipe_tx7_data_gt,
  output wire                 pipe_tx7_elec_idle_gt,
  output wire [1:0]           pipe_tx7_powerdown_gt,

  input wire                 pipe_rx0_chanisaligned_gt,
  input wire  [1:0]          pipe_rx0_char_is_k_gt,
  input wire  [15:0]         pipe_rx0_data_gt,
  input wire                 pipe_rx0_elec_idle_gt,
  input wire                 pipe_rx0_phy_status_gt,
  input wire  [2:0]          pipe_rx0_status_gt,
  input wire                 pipe_rx0_valid_gt,
  input wire                 pipe_rx1_chanisaligned_gt,
  input wire  [1:0]          pipe_rx1_char_is_k_gt,
  input wire  [15:0]         pipe_rx1_data_gt,
  input wire                 pipe_rx1_elec_idle_gt,
  input wire                 pipe_rx1_phy_status_gt,
  input wire  [2:0]          pipe_rx1_status_gt,
  input wire                 pipe_rx1_valid_gt,
  input wire                 pipe_rx2_chanisaligned_gt,
  input wire  [1:0]          pipe_rx2_char_is_k_gt,
  input wire  [15:0]         pipe_rx2_data_gt,
  input wire                 pipe_rx2_elec_idle_gt,
  input wire                 pipe_rx2_phy_status_gt,
  input wire  [2:0]          pipe_rx2_status_gt,
  input wire                 pipe_rx2_valid_gt,
  input wire                 pipe_rx3_chanisaligned_gt,
  input wire  [1:0]          pipe_rx3_char_is_k_gt,
  input wire  [15:0]         pipe_rx3_data_gt,
  input wire                 pipe_rx3_elec_idle_gt,
  input wire                 pipe_rx3_phy_status_gt,
  input wire  [2:0]          pipe_rx3_status_gt,
  input wire                 pipe_rx3_valid_gt,
  input wire                 pipe_rx4_chanisaligned_gt,
  input wire  [1:0]          pipe_rx4_char_is_k_gt,
  input wire  [15:0]         pipe_rx4_data_gt,
  input wire                 pipe_rx4_elec_idle_gt,
  input wire                 pipe_rx4_phy_status_gt,
  input wire  [2:0]          pipe_rx4_status_gt,
  input wire                 pipe_rx4_valid_gt,
  input wire                 pipe_rx5_chanisaligned_gt,
  input wire  [1:0]          pipe_rx5_char_is_k_gt,
  input wire  [15:0]         pipe_rx5_data_gt,
  input wire                 pipe_rx5_elec_idle_gt,
  input wire                 pipe_rx5_phy_status_gt,
  input wire  [2:0]          pipe_rx5_status_gt,
  input wire                 pipe_rx5_valid_gt,
  input wire                 pipe_rx6_chanisaligned_gt,
  input wire  [1:0]          pipe_rx6_char_is_k_gt,
  input wire  [15:0]         pipe_rx6_data_gt,
  input wire                 pipe_rx6_elec_idle_gt,
  input wire                 pipe_rx6_phy_status_gt,
  input wire  [2:0]          pipe_rx6_status_gt,
  input wire                 pipe_rx6_valid_gt,
  input wire                 pipe_rx7_chanisaligned_gt,
  input wire  [1:0]          pipe_rx7_char_is_k_gt,
  input wire  [15:0]         pipe_rx7_data_gt,
  input wire                 pipe_rx7_elec_idle_gt,
  input wire                 pipe_rx7_phy_status_gt,
  input wire  [2:0]          pipe_rx7_status_gt,
  input wire                 pipe_rx7_valid_gt
);

  //wire declaration

  // TRN Interface
  wire [C_DATA_WIDTH-1:0]  trn_td;
  wire [REM_WIDTH-1:0]     trn_trem;
  wire                     trn_tsof;
  wire                     trn_teof;
  wire                     trn_tsrc_rdy;
  wire                     trn_tdst_rdy;
  wire                     trn_tsrc_dsc;
  wire                     trn_terrfwd;
  wire                     trn_tecrc_gen;
  wire                     trn_tstr;
  wire                     trn_tcfg_gnt;


  wire [127:0]  trn_rd;
  wire [1:0]     trn_rrem;
  wire                     trn_rdst_rdy;
  wire                     trn_rsof;
  wire                     trn_reof;
  wire                     trn_rsrc_rdy;
  wire                     trn_rsrc_dsc;
  wire                     trn_rerrfwd;
  wire                     trn_recrc_err;
  wire [7:0]               trn_rbar_hit;

  wire                 sys_reset_n_d;
  wire [1:0]           pipe_rx0_char_is_k;
  wire [1:0]           pipe_rx1_char_is_k;
  wire [1:0]           pipe_rx2_char_is_k;
  wire [1:0]           pipe_rx3_char_is_k;
  wire [1:0]           pipe_rx4_char_is_k;
  wire [1:0]           pipe_rx5_char_is_k;
  wire [1:0]           pipe_rx6_char_is_k;
  wire [1:0]           pipe_rx7_char_is_k;
  wire                 pipe_rx0_valid;
  wire                 pipe_rx1_valid;
  wire                 pipe_rx2_valid;
  wire                 pipe_rx3_valid;
  wire                 pipe_rx4_valid;
  wire                 pipe_rx5_valid;
  wire                 pipe_rx6_valid;
  wire                 pipe_rx7_valid;
  wire [15:0]          pipe_rx0_data;
  wire [15:0]          pipe_rx1_data;
  wire [15:0]          pipe_rx2_data;
  wire [15:0]          pipe_rx3_data;
  wire [15:0]          pipe_rx4_data;
  wire [15:0]          pipe_rx5_data;
  wire [15:0]          pipe_rx6_data;
  wire [15:0]          pipe_rx7_data;
  wire                 pipe_rx0_chanisaligned;
  wire                 pipe_rx1_chanisaligned;
  wire                 pipe_rx2_chanisaligned;
  wire                 pipe_rx3_chanisaligned;
  wire                 pipe_rx4_chanisaligned;
  wire                 pipe_rx5_chanisaligned;
  wire                 pipe_rx6_chanisaligned;
  wire                 pipe_rx7_chanisaligned;
  wire [2:0]           pipe_rx0_status;
  wire [2:0]           pipe_rx1_status;
  wire [2:0]           pipe_rx2_status;
  wire [2:0]           pipe_rx3_status;
  wire [2:0]           pipe_rx4_status;
  wire [2:0]           pipe_rx5_status;
  wire [2:0]           pipe_rx6_status;
  wire [2:0]           pipe_rx7_status;
  wire                 pipe_rx0_phy_status;
  wire                 pipe_rx1_phy_status;
  wire                 pipe_rx2_phy_status;
  wire                 pipe_rx3_phy_status;
  wire                 pipe_rx4_phy_status;
  wire                 pipe_rx5_phy_status;
  wire                 pipe_rx6_phy_status;
  wire                 pipe_rx7_phy_status;

  wire                 pipe_rx0_elec_idle;
  wire                 pipe_rx1_elec_idle;
  wire                 pipe_rx2_elec_idle;
  wire                 pipe_rx3_elec_idle;
  wire                 pipe_rx4_elec_idle;
  wire                 pipe_rx5_elec_idle;
  wire                 pipe_rx6_elec_idle;
  wire                 pipe_rx7_elec_idle;


  wire                 pipe_tx_reset;
  wire                 pipe_tx_rcvr_det;
  wire                 pipe_tx_rate;
  wire                 pipe_tx_deemph;
  wire [2:0]           pipe_tx_margin;
  wire                 pipe_rx0_polarity;
  wire                 pipe_rx1_polarity;
  wire                 pipe_rx2_polarity;
  wire                 pipe_rx3_polarity;
  wire                 pipe_rx4_polarity;
  wire                 pipe_rx5_polarity;
  wire                 pipe_rx6_polarity;
  wire                 pipe_rx7_polarity;
  wire                 pipe_tx0_compliance;
  wire                 pipe_tx1_compliance;
  wire                 pipe_tx2_compliance;
  wire                 pipe_tx3_compliance;
  wire                 pipe_tx4_compliance;
  wire                 pipe_tx5_compliance;
  wire                 pipe_tx6_compliance;
  wire                 pipe_tx7_compliance;
  wire [1:0]           pipe_tx0_char_is_k;
  wire [1:0]           pipe_tx1_char_is_k;
  wire [1:0]           pipe_tx2_char_is_k;
  wire [1:0]           pipe_tx3_char_is_k;
  wire [1:0]           pipe_tx4_char_is_k;
  wire [1:0]           pipe_tx5_char_is_k;
  wire [1:0]           pipe_tx6_char_is_k;
  wire [1:0]           pipe_tx7_char_is_k;
  wire [15:0]          pipe_tx0_data;
  wire [15:0]          pipe_tx1_data;
  wire [15:0]          pipe_tx2_data;
  wire [15:0]          pipe_tx3_data;
  wire [15:0]          pipe_tx4_data;
  wire [15:0]          pipe_tx5_data;
  wire [15:0]          pipe_tx6_data;
  wire [15:0]          pipe_tx7_data;
  wire                 pipe_tx0_elec_idle;
  wire                 pipe_tx1_elec_idle;
  wire                 pipe_tx2_elec_idle;
  wire                 pipe_tx3_elec_idle;
  wire                 pipe_tx4_elec_idle;
  wire                 pipe_tx5_elec_idle;
  wire                 pipe_tx6_elec_idle;
  wire                 pipe_tx7_elec_idle;
  wire [1:0]           pipe_tx0_powerdown;
  wire [1:0]           pipe_tx1_powerdown;
  wire [1:0]           pipe_tx2_powerdown;
  wire [1:0]           pipe_tx3_powerdown;
  wire [1:0]           pipe_tx4_powerdown;
  wire [1:0]           pipe_tx5_powerdown;
  wire [1:0]           pipe_tx6_powerdown;
  wire [1:0]           pipe_tx7_powerdown;

  wire                 cfg_received_func_lvl_rst_n;
  wire                 cfg_err_cpl_rdy_n;
  wire                 cfg_interrupt_rdy_n;
  reg [7:0]            cfg_bus_number_d;
  reg [4:0]            cfg_device_number_d;
  reg [2:0]            cfg_function_number_d;
  wire                 cfg_turnoff_ok_w;

  wire                 cfg_mgmt_rd_wr_done_n;
  wire                 pl_phy_lnk_up_n;
  wire                 cfg_err_aer_headerlog_set_n;

  assign        cfg_received_func_lvl_rst = ~cfg_received_func_lvl_rst_n;

  assign        cfg_err_cpl_rdy = ~cfg_err_cpl_rdy_n;

  assign        cfg_interrupt_rdy = ~cfg_interrupt_rdy_n;

  assign        cfg_mgmt_rd_wr_done = ~cfg_mgmt_rd_wr_done_n;

  assign        pl_phy_lnk_up = ~pl_phy_lnk_up_n;

  assign        cfg_err_aer_headerlog_set = ~cfg_err_aer_headerlog_set_n;

  assign        cfg_to_turnoff = cfg_msg_received_pme_to;

  assign        cfg_status   = {16'b0};

  assign        cfg_command  = {5'b0,
                                cfg_command_interrupt_disable,
                                1'b0,
                                cfg_command_serr_en,
                                5'b0,
                                cfg_command_bus_master_enable,
                                cfg_command_mem_enable,
                                cfg_command_io_enable};

  assign        cfg_dstatus  = {10'h0,
                                cfg_trn_pending,
                                1'b0,
                                cfg_dev_status_ur_detected,
                                cfg_dev_status_fatal_err_detected,
                                cfg_dev_status_non_fatal_err_detected,
                                cfg_dev_status_corr_err_detected};

  assign        cfg_dcommand = {1'b0,
                                cfg_dev_control_max_read_req,
                                cfg_dev_control_no_snoop_en,
                                cfg_dev_control_aux_power_en,
                                cfg_dev_control_phantom_en,
                                cfg_dev_control_ext_tag_en,
                                cfg_dev_control_max_payload,
                                cfg_dev_control_enable_ro,
                                cfg_dev_control_ur_err_reporting_en,
                                cfg_dev_control_fatal_err_reporting_en,
                                cfg_dev_control_non_fatal_reporting_en,
                                cfg_dev_control_corr_err_reporting_en };

  assign        cfg_lstatus  = {cfg_link_status_auto_bandwidth_status,
                                cfg_link_status_bandwidth_status,
                                cfg_link_status_dll_active,
                                (LINK_STATUS_SLOT_CLOCK_CONFIG == "TRUE") ? 1'b1 : 1'b0,
                                cfg_link_status_link_training,
                                1'b0,
                                {2'b00, cfg_link_status_negotiated_width},
                                {2'b00, cfg_link_status_current_speed} };

  assign        cfg_lcommand = {4'b0,
                                cfg_link_control_auto_bandwidth_int_en,
                                cfg_link_control_bandwidth_int_en,
                                cfg_link_control_hw_auto_width_dis,
                                cfg_link_control_clock_pm_en,
                                cfg_link_control_extended_sync,
                                cfg_link_control_common_clock,
                                cfg_link_control_retrain_link,
                                cfg_link_control_link_disable,
                                cfg_link_control_rcb,
                                1'b0,
                                cfg_link_control_aspm_control};

  assign       cfg_bus_number = cfg_bus_number_d;

  assign       cfg_device_number = cfg_device_number_d;

  assign       cfg_function_number =  cfg_function_number_d;

  assign       cfg_dcommand2 = {4'b0,
                                cfg_dev_control2_tlp_prefix_block,
                                cfg_dev_control2_ltr_en,
                                cfg_dev_control2_ido_cpl_en,
                                cfg_dev_control2_ido_req_en,
                                cfg_dev_control2_atomic_egress_block,
                                cfg_dev_control2_atomic_requester_en,
                                cfg_dev_control2_ari_forward_en,
                                cfg_dev_control2_cpl_timeout_dis,
                                cfg_dev_control2_cpl_timeout_val};

  // Capture Bus/Device/Function number

  always @(posedge user_clk_out) begin
    if (~user_lnk_up)
    begin
      cfg_bus_number_d <= 8'b0;
    end // if (~user_lnk_up)
    else if (~cfg_msg_received)
    begin
      cfg_bus_number_d <= cfg_msg_data[15:8];
    end // if (~cfg_msg_received)
  end

  always @(posedge user_clk_out) begin
    if (~user_lnk_up)
    begin
      cfg_device_number_d <= 5'b0;
    end // if (~user_lnk_up)
    else if (~cfg_msg_received)
    begin
      cfg_device_number_d <= cfg_msg_data[7:3];
    end // if (~cfg_msg_received)
  end

  always @(posedge user_clk_out) begin
    if (~user_lnk_up)
    begin
      cfg_function_number_d <= 3'b0;
    end // if (~user_lnk_up)
    else if (~cfg_msg_received)
    begin
      cfg_function_number_d <= cfg_msg_data[2:0];
    end // if (~cfg_msg_received)
  end

design_1_xdma_0_0_pcie2_ip_axi_basic_top #(
  .C_DATA_WIDTH     (C_DATA_WIDTH),       // RX/TX interface data width
  .C_FAMILY         ("X7"),               // Targeted FPGA family
  .C_ROOT_PORT      ("FALSE"),            // PCIe block is in root port mode
  .C_PM_PRIORITY    ("FALSE")             // Disable TX packet boundary thrtl

  ) axi_basic_top (
    //---------------------------------------------//
    // User Design I/O                             //
    //---------------------------------------------//

    // AXI TX
    //-----------
    .s_axis_tx_tdata          (s_axis_tx_tdata),          //  input
    .s_axis_tx_tvalid         (s_axis_tx_tvalid),         //  input
    .s_axis_tx_tready         (s_axis_tx_tready),         //  output
    .s_axis_tx_tkeep          (s_axis_tx_tkeep),          //  input
    .s_axis_tx_tlast          (s_axis_tx_tlast),          //  input
    .s_axis_tx_tuser          (s_axis_tx_tuser),          //  input

    // AXI RX
    //-----------
    .m_axis_rx_tdata          (m_axis_rx_tdata),          //  output
    .m_axis_rx_tvalid         (m_axis_rx_tvalid),         //  output
    .m_axis_rx_tready         (m_axis_rx_tready),         //  input
    .m_axis_rx_tkeep          (m_axis_rx_tkeep),          //  output
    .m_axis_rx_tlast          (m_axis_rx_tlast),          //  output
    .m_axis_rx_tuser          (m_axis_rx_tuser),          //  output

    // User Misc.
    //-----------
    .user_turnoff_ok          (cfg_turnoff_ok),           //  input
    .user_tcfg_gnt            (tx_cfg_gnt),               //  input

    //---------------------------------------------//
    // PCIe Block I/O                              //
    //---------------------------------------------//

    // TRN TX
    //-----------
    .trn_td                   (trn_td),                   //  output
    .trn_tsof                 (trn_tsof),                 //  output
    .trn_teof                 (trn_teof),                 //  output
    .trn_tsrc_rdy             (trn_tsrc_rdy),             //  output
    .trn_tdst_rdy             (trn_tdst_rdy),             //  input
    .trn_tsrc_dsc             (trn_tsrc_dsc),             //  output
    .trn_trem                 (trn_trem),                 //  output
    .trn_terrfwd              (trn_terrfwd),              //  output
    .trn_tstr                 (trn_tstr),                 //  output
    .trn_tbuf_av              (tx_buf_av),                //  input
    .trn_tecrc_gen            (trn_tecrc_gen),            //  output

    // TRN RX
    //-----------
    .trn_rd                   (trn_rd),                   //  input
    .trn_rsof                 (trn_rsof),                 //  input
    .trn_reof                 (trn_reof),                 //  input
    .trn_rsrc_rdy             (trn_rsrc_rdy),             //  input
    .trn_rdst_rdy             (trn_rdst_rdy),             //  output
    .trn_rsrc_dsc             (trn_rsrc_dsc),             //  input
    .trn_rrem                 (trn_rrem),                 //  input
    .trn_rerrfwd              (trn_rerrfwd),              //  input
    .trn_rbar_hit             (trn_rbar_hit[6:0]),             //  input
    .trn_recrc_err            (trn_recrc_err),            //  input

    // TRN Misc.
    //-----------
    .trn_tcfg_req             ( tx_cfg_req ),             //  input
    .trn_tcfg_gnt             ( trn_tcfg_gnt),            //  output
    .trn_lnk_up               ( user_lnk_up),             //  input

    // Fuji3/Virtex6 PM
    //-----------
    .cfg_pcie_link_state      (cfg_pcie_link_state),      //  input

    // Virtex6 PM
    //-----------
    .cfg_pm_send_pme_to       (1'b0),                     //  input  NOT USED FOR EP
    .cfg_pmcsr_powerstate     (cfg_pmcsr_powerstate),     //  input
    .trn_rdllp_data           (32'b0),                    //  input - Not used in 7-series
    .trn_rdllp_src_rdy        (1'b0),                     //  input -- Not used in 7-series

    // Power Mgmt for S6/V6
    //-----------
    .cfg_to_turnoff           (cfg_to_turnoff),           //  input
    .cfg_turnoff_ok           (cfg_turnoff_ok_w),         //  output

    // System
    //-----------
    .user_clk                 (user_clk_out),             //  input
    .user_rst                 (user_reset),               //  input
    .np_counter               ()                          //  output

  );


 //-------------------------------------------------------
 // PCI Express Pipe Wrapper
 //-------------------------------------------------------
design_1_xdma_0_0_pcie2_ip_pcie_7x # (
    .AER_BASE_PTR    ( AER_BASE_PTR ),
    .AER_CAP_ECRC_CHECK_CAPABLE      ( AER_CAP_ECRC_CHECK_CAPABLE ),
    .AER_CAP_ECRC_GEN_CAPABLE( AER_CAP_ECRC_GEN_CAPABLE ),
    .AER_CAP_ID      ( AER_CAP_ID ),
    .AER_CAP_MULTIHEADER ( AER_CAP_MULTIHEADER ),
    .AER_CAP_NEXTPTR ( AER_CAP_NEXTPTR ),
    .AER_CAP_ON      ( AER_CAP_ON ),
    .AER_CAP_OPTIONAL_ERR_SUPPORT    ( AER_CAP_OPTIONAL_ERR_SUPPORT ),
    .AER_CAP_PERMIT_ROOTERR_UPDATE   ( AER_CAP_PERMIT_ROOTERR_UPDATE ),
    .AER_CAP_VERSION ( AER_CAP_VERSION ),
    .ALLOW_X8_GEN2 (ALLOW_X8_GEN2),
    .BAR0    ( BAR0 ),
    .BAR1    ( BAR1 ),
    .BAR2    ( BAR2 ),
    .BAR3    ( BAR3 ),
    .BAR4    ( BAR4 ),
    .BAR5    ( BAR5 ),
    .C_DATA_WIDTH ( C_DATA_WIDTH ),
    .CAPABILITIES_PTR( CAPABILITIES_PTR ),
    .CFG_ECRC_ERR_CPLSTAT    ( CFG_ECRC_ERR_CPLSTAT ),
    .CARDBUS_CIS_POINTER     ( CARDBUS_CIS_POINTER ),
    .CLASS_CODE      ( CLASS_CODE ),
    .CMD_INTX_IMPLEMENTED    ( CMD_INTX_IMPLEMENTED ),
    .CPL_TIMEOUT_DISABLE_SUPPORTED   ( CPL_TIMEOUT_DISABLE_SUPPORTED ),
    .CPL_TIMEOUT_RANGES_SUPPORTED    ( CPL_TIMEOUT_RANGES_SUPPORTED ),
    .CRM_MODULE_RSTS (CRM_MODULE_RSTS),
    .DEV_CAP_ENABLE_SLOT_PWR_LIMIT_SCALE     ( DEV_CAP_ENABLE_SLOT_PWR_LIMIT_SCALE ),
    .DEV_CAP_ENABLE_SLOT_PWR_LIMIT_VALUE     ( DEV_CAP_ENABLE_SLOT_PWR_LIMIT_VALUE ),
    .DEV_CAP_ENDPOINT_L0S_LATENCY    ( DEV_CAP_ENDPOINT_L0S_LATENCY ),
    .DEV_CAP_ENDPOINT_L1_LATENCY     ( DEV_CAP_ENDPOINT_L1_LATENCY ),
    .DEV_CAP_EXT_TAG_SUPPORTED ( DEV_CAP_EXT_TAG_SUPPORTED ),
    .DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE    ( DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE ),
    .DEV_CAP_MAX_PAYLOAD_SUPPORTED   ( DEV_CAP_MAX_PAYLOAD_SUPPORTED ),
    .DEV_CAP_PHANTOM_FUNCTIONS_SUPPORT ( DEV_CAP_PHANTOM_FUNCTIONS_SUPPORT ),
    .DEV_CAP_ROLE_BASED_ERROR( DEV_CAP_ROLE_BASED_ERROR ),
    .DEV_CAP_RSVD_14_12      ( DEV_CAP_RSVD_14_12 ),
    .DEV_CAP_RSVD_17_16      ( DEV_CAP_RSVD_17_16 ),
    .DEV_CAP_RSVD_31_29      ( DEV_CAP_RSVD_31_29 ),
    .DEV_CONTROL_AUX_POWER_SUPPORTED ( DEV_CONTROL_AUX_POWER_SUPPORTED ),
    .DEV_CONTROL_EXT_TAG_DEFAULT ( DEV_CONTROL_EXT_TAG_DEFAULT ),
    .DISABLE_ASPM_L1_TIMER   ( DISABLE_ASPM_L1_TIMER ),
    .DISABLE_BAR_FILTERING   ( DISABLE_BAR_FILTERING ),
    .DISABLE_ID_CHECK( DISABLE_ID_CHECK ),
    .DISABLE_LANE_REVERSAL   ( DISABLE_LANE_REVERSAL ),
    .DISABLE_RX_POISONED_RESP (DISABLE_RX_POISONED_RESP),
    .DISABLE_RX_TC_FILTER    ( DISABLE_RX_TC_FILTER ),
    .DISABLE_SCRAMBLING      ( DISABLE_SCRAMBLING ),
    .DNSTREAM_LINK_NUM ( DNSTREAM_LINK_NUM ),
    .DSN_BASE_PTR    ( DSN_BASE_PTR ),
    .DSN_CAP_ID      ( DSN_CAP_ID ),
    .DSN_CAP_NEXTPTR ( DSN_CAP_NEXTPTR ),
    .DSN_CAP_ON      ( DSN_CAP_ON ),
    .DSN_CAP_VERSION ( DSN_CAP_VERSION ),
    .DEV_CAP2_ARI_FORWARDING_SUPPORTED(DEV_CAP2_ARI_FORWARDING_SUPPORTED),
    .DEV_CAP2_ATOMICOP32_COMPLETER_SUPPORTED (DEV_CAP2_ATOMICOP32_COMPLETER_SUPPORTED),
    .DEV_CAP2_ATOMICOP64_COMPLETER_SUPPORTED (DEV_CAP2_ATOMICOP64_COMPLETER_SUPPORTED),
    .DEV_CAP2_ATOMICOP_ROUTING_SUPPORTED (DEV_CAP2_ATOMICOP_ROUTING_SUPPORTED),
    .DEV_CAP2_CAS128_COMPLETER_SUPPORTED (DEV_CAP2_CAS128_COMPLETER_SUPPORTED),
    .DEV_CAP2_ENDEND_TLP_PREFIX_SUPPORTED (DEV_CAP2_ENDEND_TLP_PREFIX_SUPPORTED),
    .DEV_CAP2_EXTENDED_FMT_FIELD_SUPPORTED (DEV_CAP2_EXTENDED_FMT_FIELD_SUPPORTED),
    .DEV_CAP2_LTR_MECHANISM_SUPPORTED (DEV_CAP2_LTR_MECHANISM_SUPPORTED),
    .DEV_CAP2_MAX_ENDEND_TLP_PREFIXES (DEV_CAP2_MAX_ENDEND_TLP_PREFIXES),
    .DEV_CAP2_NO_RO_ENABLED_PRPR_PASSING (DEV_CAP2_NO_RO_ENABLED_PRPR_PASSING),
    .DEV_CAP2_TPH_COMPLETER_SUPPORTED (DEV_CAP2_TPH_COMPLETER_SUPPORTED),
    .DISABLE_ERR_MSG (DISABLE_ERR_MSG),
    .DISABLE_LOCKED_FILTER (DISABLE_LOCKED_FILTER),
    .DISABLE_PPM_FILTER (DISABLE_PPM_FILTER),
    .ENDEND_TLP_PREFIX_FORWARDING_SUPPORTED (ENDEND_TLP_PREFIX_FORWARDING_SUPPORTED),
    .ENABLE_MSG_ROUTE( ENABLE_MSG_ROUTE ),
    .ENABLE_RX_TD_ECRC_TRIM  ( ENABLE_RX_TD_ECRC_TRIM ),
    .ENTER_RVRY_EI_L0( ENTER_RVRY_EI_L0 ),
    .EXIT_LOOPBACK_ON_EI (EXIT_LOOPBACK_ON_EI),
    .EXPANSION_ROM   ( EXPANSION_ROM ),
    .EXT_CFG_CAP_PTR ( EXT_CFG_CAP_PTR ),
    .EXT_CFG_XP_CAP_PTR      ( EXT_CFG_XP_CAP_PTR ),
    .HEADER_TYPE     ( HEADER_TYPE ),
    .INFER_EI( INFER_EI ),
    .INTERRUPT_PIN   ( INTERRUPT_PIN ),
    .INTERRUPT_STAT_AUTO (INTERRUPT_STAT_AUTO),
    .IS_SWITCH ( IS_SWITCH ),
    .LAST_CONFIG_DWORD ( LAST_CONFIG_DWORD ),
    .LINK_CAP_ASPM_OPTIONALITY ( LINK_CAP_ASPM_OPTIONALITY ),
    .LINK_CAP_ASPM_SUPPORT   ( LINK_CAP_ASPM_SUPPORT ),
    .LINK_CAP_CLOCK_POWER_MANAGEMENT ( LINK_CAP_CLOCK_POWER_MANAGEMENT ),
    .LINK_CAP_DLL_LINK_ACTIVE_REPORTING_CAP  ( LINK_CAP_DLL_LINK_ACTIVE_REPORTING_CAP ),
    .LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN1   ( LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN1 ),
    .LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN2   ( LINK_CAP_L0S_EXIT_LATENCY_COMCLK_GEN2 ),
    .LINK_CAP_L0S_EXIT_LATENCY_GEN1  ( LINK_CAP_L0S_EXIT_LATENCY_GEN1 ),
    .LINK_CAP_L0S_EXIT_LATENCY_GEN2  ( LINK_CAP_L0S_EXIT_LATENCY_GEN2 ),
    .LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN1    ( LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN1 ),
    .LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN2    ( LINK_CAP_L1_EXIT_LATENCY_COMCLK_GEN2 ),
    .LINK_CAP_L1_EXIT_LATENCY_GEN1   ( LINK_CAP_L1_EXIT_LATENCY_GEN1 ),
    .LINK_CAP_L1_EXIT_LATENCY_GEN2   ( LINK_CAP_L1_EXIT_LATENCY_GEN2 ),
    .LINK_CAP_LINK_BANDWIDTH_NOTIFICATION_CAP (LINK_CAP_LINK_BANDWIDTH_NOTIFICATION_CAP),
    .LINK_CAP_MAX_LINK_SPEED ( LINK_CAP_MAX_LINK_SPEED ),
    .LINK_CAP_MAX_LINK_WIDTH ( LINK_CAP_MAX_LINK_WIDTH ),
    .LINK_CAP_RSVD_23( LINK_CAP_RSVD_23 ),
    .LINK_CAP_SURPRISE_DOWN_ERROR_CAPABLE    ( LINK_CAP_SURPRISE_DOWN_ERROR_CAPABLE ),
    .LINK_CONTROL_RCB( LINK_CONTROL_RCB ),
    .LINK_CTRL2_DEEMPHASIS   ( LINK_CTRL2_DEEMPHASIS ),
    .LINK_CTRL2_HW_AUTONOMOUS_SPEED_DISABLE  ( LINK_CTRL2_HW_AUTONOMOUS_SPEED_DISABLE ),
    .LINK_CTRL2_TARGET_LINK_SPEED    ( LINK_CTRL2_TARGET_LINK_SPEED ),
    .LINK_STATUS_SLOT_CLOCK_CONFIG   ( LINK_STATUS_SLOT_CLOCK_CONFIG ),
    .LL_ACK_TIMEOUT  ( LL_ACK_TIMEOUT ),
    .LL_ACK_TIMEOUT_EN ( LL_ACK_TIMEOUT_EN ),
    .LL_ACK_TIMEOUT_FUNC     ( LL_ACK_TIMEOUT_FUNC ),
    .LL_REPLAY_TIMEOUT ( LL_REPLAY_TIMEOUT ),
    .LL_REPLAY_TIMEOUT_EN    ( LL_REPLAY_TIMEOUT_EN ),
    .LL_REPLAY_TIMEOUT_FUNC  ( LL_REPLAY_TIMEOUT_FUNC ),
    .LTSSM_MAX_LINK_WIDTH    ( LTSSM_MAX_LINK_WIDTH ),
    .MPS_FORCE (MPS_FORCE),
    .MSI_BASE_PTR    ( MSI_BASE_PTR ),
    .MSI_CAP_ID      ( MSI_CAP_ID ),
    .MSI_CAP_MULTIMSGCAP     ( MSI_CAP_MULTIMSGCAP ),
    .MSI_CAP_MULTIMSG_EXTENSION      ( MSI_CAP_MULTIMSG_EXTENSION ),
    .MSI_CAP_NEXTPTR ( MSI_CAP_NEXTPTR ),
    .MSI_CAP_ON      ( MSI_CAP_ON ),
    .MSI_CAP_PER_VECTOR_MASKING_CAPABLE      ( MSI_CAP_PER_VECTOR_MASKING_CAPABLE ),
    .MSI_CAP_64_BIT_ADDR_CAPABLE     ( MSI_CAP_64_BIT_ADDR_CAPABLE ),
    .MSIX_BASE_PTR   ( MSIX_BASE_PTR ),
    .MSIX_CAP_ID     ( MSIX_CAP_ID ),
    .MSIX_CAP_NEXTPTR( MSIX_CAP_NEXTPTR ),
    .MSIX_CAP_ON     ( MSIX_CAP_ON ),
    .MSIX_CAP_PBA_BIR( MSIX_CAP_PBA_BIR ),
    .MSIX_CAP_PBA_OFFSET     ( MSIX_CAP_PBA_OFFSET ),
    .MSIX_CAP_TABLE_BIR      ( MSIX_CAP_TABLE_BIR ),
    .MSIX_CAP_TABLE_OFFSET   ( MSIX_CAP_TABLE_OFFSET ),
    .MSIX_CAP_TABLE_SIZE     ( MSIX_CAP_TABLE_SIZE ),
    .N_FTS_COMCLK_GEN1 ( N_FTS_COMCLK_GEN1 ),
    .N_FTS_COMCLK_GEN2 ( N_FTS_COMCLK_GEN2 ),
    .N_FTS_GEN1      ( N_FTS_GEN1 ),
    .N_FTS_GEN2      ( N_FTS_GEN2 ),
    .PCIE_BASE_PTR   ( PCIE_BASE_PTR ),
    .PCIE_CAP_CAPABILITY_ID  ( PCIE_CAP_CAPABILITY_ID ),
    .PCIE_CAP_CAPABILITY_VERSION     ( PCIE_CAP_CAPABILITY_VERSION ),
    .PCIE_CAP_DEVICE_PORT_TYPE ( PCIE_CAP_DEVICE_PORT_TYPE ),
    .PCIE_CAP_NEXTPTR( PCIE_CAP_NEXTPTR ),
    .PCIE_CAP_ON     ( PCIE_CAP_ON ),
    .PCIE_CAP_RSVD_15_14     ( PCIE_CAP_RSVD_15_14 ),
    .PCIE_CAP_SLOT_IMPLEMENTED ( PCIE_CAP_SLOT_IMPLEMENTED ),
    .PCIE_REVISION   ( PCIE_REVISION ),
    .PL_AUTO_CONFIG  ( PL_AUTO_CONFIG ),
    .PL_FAST_TRAIN   ( PL_FAST_TRAIN ),
    .PM_ASPML0S_TIMEOUT ( PM_ASPML0S_TIMEOUT ),
    .PM_ASPML0S_TIMEOUT_EN ( PM_ASPML0S_TIMEOUT_EN ),
    .PM_ASPML0S_TIMEOUT_FUNC ( PM_ASPML0S_TIMEOUT_FUNC ),
    .PM_ASPM_FASTEXIT ( PM_ASPM_FASTEXIT ),
    .PM_BASE_PTR     ( PM_BASE_PTR ),
    .PM_CAP_AUXCURRENT ( PM_CAP_AUXCURRENT ),
    .PM_CAP_D1SUPPORT( PM_CAP_D1SUPPORT ),
    .PM_CAP_D2SUPPORT( PM_CAP_D2SUPPORT ),
    .PM_CAP_DSI      ( PM_CAP_DSI ),
    .PM_CAP_ID ( PM_CAP_ID ),
    .PM_CAP_NEXTPTR  ( PM_CAP_NEXTPTR ),
    .PM_CAP_ON ( PM_CAP_ON ),
    .PM_CAP_PME_CLOCK( PM_CAP_PME_CLOCK ),
    .PM_CAP_PMESUPPORT ( PM_CAP_PMESUPPORT ),
    .PM_CAP_RSVD_04  ( PM_CAP_RSVD_04 ),
    .PM_CAP_VERSION  ( PM_CAP_VERSION ),
    .PM_CSR_B2B3     ( PM_CSR_B2B3 ),
    .PM_CSR_BPCCEN   ( PM_CSR_BPCCEN ),
    .PM_CSR_NOSOFTRST( PM_CSR_NOSOFTRST ),
    .PM_DATA0( PM_DATA0 ),
    .PM_DATA1( PM_DATA1 ),
    .PM_DATA2( PM_DATA2 ),
    .PM_DATA3( PM_DATA3 ),
    .PM_DATA4( PM_DATA4 ),
    .PM_DATA5( PM_DATA5 ),
    .PM_DATA6( PM_DATA6 ),
    .PM_DATA7( PM_DATA7 ),
    .PM_DATA_SCALE0  ( PM_DATA_SCALE0 ),
    .PM_DATA_SCALE1  ( PM_DATA_SCALE1 ),
    .PM_DATA_SCALE2  ( PM_DATA_SCALE2 ),
    .PM_DATA_SCALE3  ( PM_DATA_SCALE3 ),
    .PM_DATA_SCALE4  ( PM_DATA_SCALE4 ),
    .PM_DATA_SCALE5  ( PM_DATA_SCALE5 ),
    .PM_DATA_SCALE6  ( PM_DATA_SCALE6 ),
    .PM_DATA_SCALE7  ( PM_DATA_SCALE7 ),
    .PM_MF (PM_MF),
    .RBAR_BASE_PTR (RBAR_BASE_PTR),
    .RBAR_CAP_CONTROL_ENCODEDBAR0 (RBAR_CAP_CONTROL_ENCODEDBAR0),
    .RBAR_CAP_CONTROL_ENCODEDBAR1 (RBAR_CAP_CONTROL_ENCODEDBAR1),
    .RBAR_CAP_CONTROL_ENCODEDBAR2 (RBAR_CAP_CONTROL_ENCODEDBAR2),
    .RBAR_CAP_CONTROL_ENCODEDBAR3 (RBAR_CAP_CONTROL_ENCODEDBAR3),
    .RBAR_CAP_CONTROL_ENCODEDBAR4 (RBAR_CAP_CONTROL_ENCODEDBAR4),
    .RBAR_CAP_CONTROL_ENCODEDBAR5 (RBAR_CAP_CONTROL_ENCODEDBAR5),
    .RBAR_CAP_ID (RBAR_CAP_ID),
    .RBAR_CAP_INDEX0 (RBAR_CAP_INDEX0),
    .RBAR_CAP_INDEX1 (RBAR_CAP_INDEX1),
    .RBAR_CAP_INDEX2 (RBAR_CAP_INDEX2),
    .RBAR_CAP_INDEX3 (RBAR_CAP_INDEX3),
    .RBAR_CAP_INDEX4 (RBAR_CAP_INDEX4),
    .RBAR_CAP_INDEX5 (RBAR_CAP_INDEX5),
    .RBAR_CAP_NEXTPTR (RBAR_CAP_NEXTPTR),
    .RBAR_CAP_ON (RBAR_CAP_ON),
    .RBAR_CAP_SUP0 (RBAR_CAP_SUP0),
    .RBAR_CAP_SUP1 (RBAR_CAP_SUP1),
    .RBAR_CAP_SUP2 (RBAR_CAP_SUP2),
    .RBAR_CAP_SUP3 (RBAR_CAP_SUP3),
    .RBAR_CAP_SUP4 (RBAR_CAP_SUP4),
    .RBAR_CAP_SUP5 (RBAR_CAP_SUP5),
    .RBAR_CAP_VERSION (RBAR_CAP_VERSION),
    .RBAR_NUM (RBAR_NUM),
    .RECRC_CHK  (RECRC_CHK),
    .RECRC_CHK_TRIM (RECRC_CHK_TRIM),
    .ROOT_CAP_CRS_SW_VISIBILITY      ( ROOT_CAP_CRS_SW_VISIBILITY ),
    .RP_AUTO_SPD       ( RP_AUTO_SPD ),
    .RP_AUTO_SPD_LOOPCNT        ( RP_AUTO_SPD_LOOPCNT ),
    .SELECT_DLL_IF   ( SELECT_DLL_IF ),
    .SLOT_CAP_ATT_BUTTON_PRESENT     ( SLOT_CAP_ATT_BUTTON_PRESENT ),
    .SLOT_CAP_ATT_INDICATOR_PRESENT  ( SLOT_CAP_ATT_INDICATOR_PRESENT ),
    .SLOT_CAP_ELEC_INTERLOCK_PRESENT ( SLOT_CAP_ELEC_INTERLOCK_PRESENT ),
    .SLOT_CAP_HOTPLUG_CAPABLE( SLOT_CAP_HOTPLUG_CAPABLE ),
    .SLOT_CAP_HOTPLUG_SURPRISE ( SLOT_CAP_HOTPLUG_SURPRISE ),
    .SLOT_CAP_MRL_SENSOR_PRESENT     ( SLOT_CAP_MRL_SENSOR_PRESENT ),
    .SLOT_CAP_NO_CMD_COMPLETED_SUPPORT ( SLOT_CAP_NO_CMD_COMPLETED_SUPPORT ),
    .SLOT_CAP_PHYSICAL_SLOT_NUM      ( SLOT_CAP_PHYSICAL_SLOT_NUM ),
    .SLOT_CAP_POWER_CONTROLLER_PRESENT ( SLOT_CAP_POWER_CONTROLLER_PRESENT ),
    .SLOT_CAP_POWER_INDICATOR_PRESENT( SLOT_CAP_POWER_INDICATOR_PRESENT ),
    .SLOT_CAP_SLOT_POWER_LIMIT_SCALE ( SLOT_CAP_SLOT_POWER_LIMIT_SCALE ),
    .SLOT_CAP_SLOT_POWER_LIMIT_VALUE ( SLOT_CAP_SLOT_POWER_LIMIT_VALUE ),
    .SPARE_BIT0      ( SPARE_BIT0 ),
    .SPARE_BIT1      ( SPARE_BIT1 ),
    .SPARE_BIT2      ( SPARE_BIT2 ),
    .SPARE_BIT3      ( SPARE_BIT3 ),
    .SPARE_BIT4      ( SPARE_BIT4 ),
    .SPARE_BIT5      ( SPARE_BIT5 ),
    .SPARE_BIT6      ( SPARE_BIT6 ),
    .SPARE_BIT7      ( SPARE_BIT7 ),
    .SPARE_BIT8      ( SPARE_BIT8 ),
    .SPARE_BYTE0     ( SPARE_BYTE0 ),
    .SPARE_BYTE1     ( SPARE_BYTE1 ),
    .SPARE_BYTE2     ( SPARE_BYTE2 ),
    .SPARE_BYTE3     ( SPARE_BYTE3 ),
    .SPARE_WORD0     ( SPARE_WORD0 ),
    .SPARE_WORD1     ( SPARE_WORD1 ),
    .SPARE_WORD2     ( SPARE_WORD2 ),
    .SPARE_WORD3     ( SPARE_WORD3 ),
    .SSL_MESSAGE_AUTO (SSL_MESSAGE_AUTO),
    .TECRC_EP_INV      ( TECRC_EP_INV ),
    .TL_RBYPASS(TL_RBYPASS),
    .TL_RX_RAM_RADDR_LATENCY ( TL_RX_RAM_RADDR_LATENCY ),
    .TL_RX_RAM_RDATA_LATENCY ( TL_RX_RAM_RDATA_LATENCY ),
    .TL_RX_RAM_WRITE_LATENCY ( TL_RX_RAM_WRITE_LATENCY ),
    .TL_TFC_DISABLE  ( TL_TFC_DISABLE ),
    .TL_TX_CHECKS_DISABLE    ( TL_TX_CHECKS_DISABLE ),
    .TL_TX_RAM_RADDR_LATENCY ( TL_TX_RAM_RADDR_LATENCY ),
    .TL_TX_RAM_RDATA_LATENCY ( TL_TX_RAM_RDATA_LATENCY ),
    .TL_TX_RAM_WRITE_LATENCY ( TL_TX_RAM_WRITE_LATENCY ),
    .TRN_DW (TRN_DW),
    .TRN_NP_FC (TRN_NP_FC),
    .UPCONFIG_CAPABLE( UPCONFIG_CAPABLE ),
    .UPSTREAM_FACING ( UPSTREAM_FACING ),
    .UR_ATOMIC (UR_ATOMIC),
    .UR_CFG1 (UR_CFG1),
    .UR_INV_REQ(UR_INV_REQ),
    .UR_PRS_RESPONSE (UR_PRS_RESPONSE),
    .USER_CLK2_DIV2 (USER_CLK2_DIV2),
    .USER_CLK_FREQ   ( USER_CLK_FREQ ),
    .USE_RID_PINS (USE_RID_PINS),
    .VC0_CPL_INFINITE( VC0_CPL_INFINITE ),
    .VC0_RX_RAM_LIMIT( VC0_RX_RAM_LIMIT ),
    .VC0_TOTAL_CREDITS_CD    ( VC0_TOTAL_CREDITS_CD ),
    .VC0_TOTAL_CREDITS_CH    ( VC0_TOTAL_CREDITS_CH ),
    .VC0_TOTAL_CREDITS_NPD (VC0_TOTAL_CREDITS_NPD),
    .VC0_TOTAL_CREDITS_NPH   ( VC0_TOTAL_CREDITS_NPH ),
    .VC0_TOTAL_CREDITS_PD    ( VC0_TOTAL_CREDITS_PD ),
    .VC0_TOTAL_CREDITS_PH    ( VC0_TOTAL_CREDITS_PH ),
    .VC0_TX_LASTPACKET ( VC0_TX_LASTPACKET ),
    .VC_BASE_PTR     ( VC_BASE_PTR ),
    .VC_CAP_ID ( VC_CAP_ID ),
    .VC_CAP_NEXTPTR  ( VC_CAP_NEXTPTR ),
    .VC_CAP_ON ( VC_CAP_ON ),
    .VC_CAP_REJECT_SNOOP_TRANSACTIONS( VC_CAP_REJECT_SNOOP_TRANSACTIONS ),
    .VC_CAP_VERSION  ( VC_CAP_VERSION ),
    .VSEC_BASE_PTR   ( VSEC_BASE_PTR ),
    .VSEC_CAP_HDR_ID ( VSEC_CAP_HDR_ID ),
    .VSEC_CAP_HDR_LENGTH     ( VSEC_CAP_HDR_LENGTH ),
    .VSEC_CAP_HDR_REVISION   ( VSEC_CAP_HDR_REVISION ),
    .VSEC_CAP_ID     ( VSEC_CAP_ID ),
    .VSEC_CAP_IS_LINK_VISIBLE( VSEC_CAP_IS_LINK_VISIBLE ),
    .VSEC_CAP_NEXTPTR( VSEC_CAP_NEXTPTR ),
    .VSEC_CAP_ON     ( VSEC_CAP_ON ),
    .VSEC_CAP_VERSION( VSEC_CAP_VERSION ),
    .ENABLE_JTAG_DBG ( ENABLE_JTAG_DBG )
  ) pcie_7x_i (
    .trn_lnk_up                                ( trn_lnk_up ),
    .trn_clk                                   ( user_clk_out ),
    .lnk_clk_en                                ( lnk_clk_en),
    .user_rst_n                                ( user_rst_n ),
    .received_func_lvl_rst_n                   ( cfg_received_func_lvl_rst_n ),
    .sys_rst_n                                 (~phy_rdy_n),
    .pl_rst_n                                  ( 1'b1 ),
    .dl_rst_n                                  ( 1'b1 ),
    .tl_rst_n                                  ( 1'b1 ),
    .cm_sticky_rst_n                           ( 1'b1 ),

    .func_lvl_rst_n                            ( func_lvl_rst_n ),
    .cm_rst_n                                  ( cm_rst_n ),
    .trn_rbar_hit                              ( trn_rbar_hit ),
    .trn_rd                                    ( trn_rd ),
    .trn_recrc_err                             ( trn_recrc_err ),
    .trn_reof                                  ( trn_reof ),
    .trn_rerrfwd                               ( trn_rerrfwd ),
    .trn_rrem                                  ( trn_rrem ),
    .trn_rsof                                  ( trn_rsof ),
    .trn_rsrc_dsc                              ( trn_rsrc_dsc ),
    .trn_rsrc_rdy                              ( trn_rsrc_rdy ),
    .trn_rdst_rdy                              ( trn_rdst_rdy ),
    .trn_rnp_ok                                ( rx_np_ok ),
    .trn_rnp_req                               ( rx_np_req ),
    .trn_rfcp_ret                              ( 1'b1 ),
    .trn_tbuf_av                               ( tx_buf_av ),
    .trn_tcfg_req                              ( tx_cfg_req ),
    .trn_tdllp_dst_rdy                         ( ),
    .trn_tdst_rdy                              ( trn_tdst_rdy ),
    .trn_terr_drop                             ( tx_err_drop ),
    .trn_tcfg_gnt                              ( trn_tcfg_gnt ),
    .trn_td                                    ( trn_td ),
    .trn_tdllp_data                            ( 32'b0 ),
    .trn_tdllp_src_rdy                         ( 1'b0 ),
    .trn_tecrc_gen                             ( trn_tecrc_gen ),
    .trn_teof                                  ( trn_teof ),
    .trn_terrfwd                               ( trn_terrfwd ),
    .trn_trem                                  ( trn_trem),
    .trn_tsof                                  ( trn_tsof ),
    .trn_tsrc_dsc                              ( trn_tsrc_dsc ),
    .trn_tsrc_rdy                              ( trn_tsrc_rdy ),
    .trn_tstr                                  ( trn_tstr ),

    .trn_fc_cpld                               ( fc_cpld ),
    .trn_fc_cplh                               ( fc_cplh ),
    .trn_fc_npd                                ( fc_npd ),
    .trn_fc_nph                                ( fc_nph ),
    .trn_fc_pd                                 ( fc_pd ),
    .trn_fc_ph                                 ( fc_ph ),
    .trn_fc_sel                                ( fc_sel ),

    .cfg_dev_id                                (cfg_dev_id),
    .cfg_vend_id                               (cfg_vend_id),
    .cfg_rev_id                                (cfg_rev_id),
    .cfg_subsys_id                             (cfg_subsys_id),
    .cfg_subsys_vend_id                        (cfg_subsys_vend_id),
    .cfg_pciecap_interrupt_msgnum              (cfg_pciecap_interrupt_msgnum),

    .cfg_bridge_serr_en                        (cfg_bridge_serr_en),

    .cfg_command_bus_master_enable             ( cfg_command_bus_master_enable ),
    .cfg_command_interrupt_disable             ( cfg_command_interrupt_disable ),
    .cfg_command_io_enable                     ( cfg_command_io_enable ),
    .cfg_command_mem_enable                    ( cfg_command_mem_enable ),
    .cfg_command_serr_en                       ( cfg_command_serr_en ),
    .cfg_dev_control_aux_power_en              ( cfg_dev_control_aux_power_en ),
    .cfg_dev_control_corr_err_reporting_en     ( cfg_dev_control_corr_err_reporting_en ),
    .cfg_dev_control_enable_ro                 ( cfg_dev_control_enable_ro ),
    .cfg_dev_control_ext_tag_en                ( cfg_dev_control_ext_tag_en ),
    .cfg_dev_control_fatal_err_reporting_en    ( cfg_dev_control_fatal_err_reporting_en ),
    .cfg_dev_control_max_payload               ( cfg_dev_control_max_payload ),
    .cfg_dev_control_max_read_req              ( cfg_dev_control_max_read_req ),
    .cfg_dev_control_non_fatal_reporting_en    ( cfg_dev_control_non_fatal_reporting_en ),
    .cfg_dev_control_no_snoop_en               ( cfg_dev_control_no_snoop_en ),
    .cfg_dev_control_phantom_en                ( cfg_dev_control_phantom_en ),
    .cfg_dev_control_ur_err_reporting_en       ( cfg_dev_control_ur_err_reporting_en ),
    .cfg_dev_control2_cpl_timeout_dis          ( cfg_dev_control2_cpl_timeout_dis ),
    .cfg_dev_control2_cpl_timeout_val          ( cfg_dev_control2_cpl_timeout_val ),
    .cfg_dev_control2_ari_forward_en           ( cfg_dev_control2_ari_forward_en),
    .cfg_dev_control2_atomic_requester_en      ( cfg_dev_control2_atomic_requester_en),
    .cfg_dev_control2_atomic_egress_block      ( cfg_dev_control2_atomic_egress_block),
    .cfg_dev_control2_ido_req_en               ( cfg_dev_control2_ido_req_en),
    .cfg_dev_control2_ido_cpl_en               ( cfg_dev_control2_ido_cpl_en),
    .cfg_dev_control2_ltr_en                   ( cfg_dev_control2_ltr_en),
    .cfg_dev_control2_tlp_prefix_block         ( cfg_dev_control2_tlp_prefix_block),
    .cfg_dev_status_corr_err_detected          ( cfg_dev_status_corr_err_detected ),
    .cfg_dev_status_fatal_err_detected         ( cfg_dev_status_fatal_err_detected ),
    .cfg_dev_status_non_fatal_err_detected     ( cfg_dev_status_non_fatal_err_detected ),
    .cfg_dev_status_ur_detected                ( cfg_dev_status_ur_detected ),

    .cfg_mgmt_do                               ( cfg_mgmt_do ),
    .cfg_err_aer_headerlog_set_n               ( cfg_err_aer_headerlog_set_n),
    .cfg_err_aer_headerlog                     ( cfg_err_aer_headerlog),
    .cfg_err_cpl_rdy_n                         ( cfg_err_cpl_rdy_n ),
    .cfg_interrupt_do                          ( cfg_interrupt_do ),
    .cfg_interrupt_mmenable                    ( cfg_interrupt_mmenable ),
    .cfg_interrupt_msienable                   ( cfg_interrupt_msienable ),
    .cfg_interrupt_msixenable                  ( cfg_interrupt_msixenable ),
    .cfg_interrupt_msixfm                      ( cfg_interrupt_msixfm ),
    .cfg_interrupt_rdy_n                       ( cfg_interrupt_rdy_n ),
    .cfg_link_control_rcb                      ( cfg_link_control_rcb ),
    .cfg_link_control_aspm_control             ( cfg_link_control_aspm_control ),
    .cfg_link_control_auto_bandwidth_int_en    ( cfg_link_control_auto_bandwidth_int_en ),
    .cfg_link_control_bandwidth_int_en         ( cfg_link_control_bandwidth_int_en ),
    .cfg_link_control_clock_pm_en              ( cfg_link_control_clock_pm_en ),
    .cfg_link_control_common_clock             ( cfg_link_control_common_clock ),
    .cfg_link_control_extended_sync            ( cfg_link_control_extended_sync ),
    .cfg_link_control_hw_auto_width_dis        ( cfg_link_control_hw_auto_width_dis ),
    .cfg_link_control_link_disable             ( cfg_link_control_link_disable ),
    .cfg_link_control_retrain_link             ( cfg_link_control_retrain_link ),
    .cfg_link_status_auto_bandwidth_status     ( cfg_link_status_auto_bandwidth_status ),
    .cfg_link_status_bandwidth_status          ( cfg_link_status_bandwidth_status ),
    .cfg_link_status_current_speed             ( cfg_link_status_current_speed ),
    .cfg_link_status_dll_active                ( cfg_link_status_dll_active ),
    .cfg_link_status_link_training             ( cfg_link_status_link_training ),
    .cfg_link_status_negotiated_width          ( cfg_link_status_negotiated_width),
    .cfg_msg_data                              ( cfg_msg_data ),
    .cfg_msg_received                          ( cfg_msg_received ),
    .cfg_msg_received_assert_int_a             ( cfg_msg_received_assert_int_a),
    .cfg_msg_received_assert_int_b             ( cfg_msg_received_assert_int_b),
    .cfg_msg_received_assert_int_c             ( cfg_msg_received_assert_int_c),
    .cfg_msg_received_assert_int_d             ( cfg_msg_received_assert_int_d),
    .cfg_msg_received_deassert_int_a           ( cfg_msg_received_deassert_int_a),
    .cfg_msg_received_deassert_int_b           ( cfg_msg_received_deassert_int_b),
    .cfg_msg_received_deassert_int_c           ( cfg_msg_received_deassert_int_c),
    .cfg_msg_received_deassert_int_d           ( cfg_msg_received_deassert_int_d),
    .cfg_msg_received_err_cor                  ( cfg_msg_received_err_cor),
    .cfg_msg_received_err_fatal                ( cfg_msg_received_err_fatal),
    .cfg_msg_received_err_non_fatal            ( cfg_msg_received_err_non_fatal),
    .cfg_msg_received_pm_as_nak                ( cfg_msg_received_pm_as_nak),
    .cfg_msg_received_pme_to                   ( cfg_msg_received_pme_to ),
    .cfg_msg_received_pme_to_ack               ( cfg_msg_received_pme_to_ack),
    .cfg_msg_received_pm_pme                   ( cfg_msg_received_pm_pme),
    .cfg_msg_received_setslotpowerlimit        ( cfg_msg_received_setslotpowerlimit),
    .cfg_msg_received_unlock                   ( cfg_msg_received_unlock),
    .cfg_pcie_link_state                       ( cfg_pcie_link_state ),
    .cfg_pmcsr_pme_en                          ( cfg_pmcsr_pme_en),
    .cfg_pmcsr_powerstate                      ( cfg_pmcsr_powerstate),
    .cfg_pmcsr_pme_status                      ( cfg_pmcsr_pme_status),
    .cfg_pm_rcv_as_req_l1_n                    ( cfg_pm_rcv_as_req_l1_n),
    .cfg_pm_rcv_enter_l1_n                     ( cfg_pm_rcv_enter_l1_n),
    .cfg_pm_rcv_enter_l23_n                    ( cfg_pm_rcv_enter_l23_n),

    .cfg_pm_rcv_req_ack_n                      ( cfg_pm_rcv_req_ack_n),
    .cfg_mgmt_rd_wr_done_n                     ( cfg_mgmt_rd_wr_done_n ),
    .cfg_slot_control_electromech_il_ctl_pulse (cfg_slot_control_electromech_il_ctl_pulse),
    .cfg_root_control_syserr_corr_err_en       ( cfg_root_control_syserr_corr_err_en),
    .cfg_root_control_syserr_non_fatal_err_en  ( cfg_root_control_syserr_non_fatal_err_en),
    .cfg_root_control_syserr_fatal_err_en      ( cfg_root_control_syserr_fatal_err_en),
    .cfg_root_control_pme_int_en               ( cfg_root_control_pme_int_en   ),
    .cfg_aer_ecrc_check_en                     ( cfg_aer_ecrc_check_en ),
    .cfg_aer_ecrc_gen_en                       ( cfg_aer_ecrc_gen_en ),
    .cfg_aer_rooterr_corr_err_reporting_en     ( cfg_aer_rooterr_corr_err_reporting_en),
    .cfg_aer_rooterr_non_fatal_err_reporting_en( cfg_aer_rooterr_non_fatal_err_reporting_en),
    .cfg_aer_rooterr_fatal_err_reporting_en    ( cfg_aer_rooterr_fatal_err_reporting_en),
    .cfg_aer_rooterr_corr_err_received         ( cfg_aer_rooterr_corr_err_received),
    .cfg_aer_rooterr_non_fatal_err_received    ( cfg_aer_rooterr_non_fatal_err_received),
    .cfg_aer_rooterr_fatal_err_received        ( cfg_aer_rooterr_fatal_err_received),
    .cfg_aer_interrupt_msgnum                  ( cfg_aer_interrupt_msgnum      ),
    .cfg_transaction                           ( cfg_transaction),
    .cfg_transaction_addr                      ( cfg_transaction_addr),
    .cfg_transaction_type                      ( cfg_transaction_type),
    .cfg_vc_tcvc_map                           ( cfg_vc_tcvc_map),
    .cfg_mgmt_byte_en_n                        ( cfg_mgmt_byte_en_n ),
    .cfg_mgmt_di                               ( cfg_mgmt_di ),
    .cfg_ds_bus_number                         ( cfg_ds_bus_number ),
    .cfg_ds_device_number                      ( cfg_ds_device_number ),
    .cfg_ds_function_number                    ( cfg_ds_function_number ),
    .cfg_dsn                                   ( cfg_dsn ),
    .cfg_mgmt_dwaddr                           ( cfg_mgmt_dwaddr ),
    .cfg_err_acs_n                             ( 1'b1 ),
    .cfg_err_cor_n                             ( cfg_err_cor_n ),
    .cfg_err_cpl_abort_n                       ( cfg_err_cpl_abort_n ),
    .cfg_err_cpl_timeout_n                     ( cfg_err_cpl_timeout_n ),
    .cfg_err_cpl_unexpect_n                    ( cfg_err_cpl_unexpect_n ),
    .cfg_err_ecrc_n                            ( cfg_err_ecrc_n ),
    .cfg_err_locked_n                          ( cfg_err_locked_n ),
    .cfg_err_posted_n                          ( cfg_err_posted_n ),
    .cfg_err_tlp_cpl_header                    ( cfg_err_tlp_cpl_header ),
    .cfg_err_ur_n                              ( cfg_err_ur_n ),
    .cfg_err_malformed_n                       ( cfg_err_malformed_n ),
    .cfg_err_poisoned_n                        ( cfg_err_poisoned_n),
    .cfg_err_atomic_egress_blocked_n           ( cfg_err_atomic_egress_blocked_n ),
    .cfg_err_mc_blocked_n                      ( cfg_err_mc_blocked_n  ),
    .cfg_err_internal_uncor_n                  ( cfg_err_internal_uncor_n      ),
    .cfg_err_internal_cor_n                    ( cfg_err_internal_cor_n ),
    .cfg_err_norecovery_n                      ( cfg_err_norecovery_n  ),

    .cfg_interrupt_assert_n                    ( cfg_interrupt_assert_n ),
    .cfg_interrupt_di                          ( cfg_interrupt_di ),
    .cfg_interrupt_n                           ( cfg_interrupt_n ),
    .cfg_interrupt_stat_n                      ( cfg_interrupt_stat_n),
    .cfg_pm_send_pme_to_n                      ( cfg_pm_send_pme_to_n ),
    .cfg_pm_turnoff_ok_n                       ( cfg_turnoff_ok_w ),
    .cfg_pm_wake_n                             ( cfg_pm_wake_n ),
    .cfg_pm_halt_aspm_l0s_n                    ( cfg_pm_halt_aspm_l0s_n ),
    .cfg_pm_halt_aspm_l1_n                     ( cfg_pm_halt_aspm_l1_n ),
    .cfg_pm_force_state_en_n                   ( cfg_pm_force_state_en_n ),
    .cfg_pm_force_state                        ( cfg_pm_force_state ),
    .cfg_force_mps                             ( cfg_force_mps ),
    .cfg_force_common_clock_off                ( cfg_force_common_clock_off ),
    .cfg_force_extended_sync_on                ( cfg_force_extended_sync_on ),
    .cfg_port_number                           ( cfg_port_number ),
    .cfg_mgmt_rd_en_n                          ( cfg_mgmt_rd_en_n ),
    .cfg_trn_pending_n                         ( ~cfg_trn_pending ),
    .cfg_mgmt_wr_en_n                          ( cfg_mgmt_wr_en_n ),
    .cfg_mgmt_wr_readonly_n                    ( cfg_mgmt_wr_readonly_n ),
    .cfg_mgmt_wr_rw1c_as_rw_n                  ( cfg_mgmt_wr_rw1c_as_rw_n ),

    .pl_initial_link_width                     ( pl_initial_link_width ),
    .pl_lane_reversal_mode                     ( pl_lane_reversal_mode ),
    .pl_link_gen2_cap                          ( pl_link_gen2_cap ),
    .pl_link_partner_gen2_supported            ( pl_link_partner_gen2_supported ),
    .pl_link_upcfg_cap                         ( pl_link_upcfg_cap ),
    .pl_ltssm_state                            ( pl_ltssm_state ),
    .pl_phy_lnk_up_n                           ( pl_phy_lnk_up_n ),
    .pl_received_hot_rst                       ( pl_received_hot_rst ),
    .pl_rx_pm_state                            ( pl_rx_pm_state ),
    .pl_sel_lnk_rate                           ( pl_sel_lnk_rate),
    .pl_sel_lnk_width                          ( pl_sel_lnk_width ),
    .pl_tx_pm_state                            ( pl_tx_pm_state ),
    .pl_directed_link_auton                    ( pl_directed_link_auton ),
    .pl_directed_link_change                   ( pl_directed_link_change ),
    .pl_directed_link_speed                    ( pl_directed_link_speed ),
    .pl_directed_link_width                    ( pl_directed_link_width ),
    .pl_downstream_deemph_source               ( pl_downstream_deemph_source ),
    .pl_upstream_prefer_deemph                 ( pl_upstream_prefer_deemph ),
    .pl_transmit_hot_rst                       ( pl_transmit_hot_rst ),
    .pl_directed_ltssm_new_vld                 ( pl_directed_ltssm_new_vld ),
    .pl_directed_ltssm_new                     ( pl_directed_ltssm_new ),
    .pl_directed_ltssm_stall                   ( pl_directed_ltssm_stall ),
    .pl_directed_change_done                   ( pl_directed_change_done ),

    .dbg_sclr_a                                ( dbg_sclr_a ),
    .dbg_sclr_b                                ( dbg_sclr_b ),
    .dbg_sclr_c                                ( dbg_sclr_c ),
    .dbg_sclr_d                                ( dbg_sclr_d ),
    .dbg_sclr_e                                ( dbg_sclr_e ),
    .dbg_sclr_f                                ( dbg_sclr_f ),
    .dbg_sclr_g                                ( dbg_sclr_g ),
    .dbg_sclr_h                                ( dbg_sclr_h ),
    .dbg_sclr_i                                ( dbg_sclr_i ),
    .dbg_sclr_j                                ( dbg_sclr_j ),
    .dbg_sclr_k                                ( dbg_sclr_k ),

    .dbg_vec_a                                 ( dbg_vec_a ),
    .dbg_vec_b                                 ( dbg_vec_b ),
    .dbg_vec_c                                 ( dbg_vec_c ),
    .pl_dbg_vec                                ( pl_dbg_vec ),
    .dbg_mode                                  ( dbg_mode ),
    .dbg_sub_mode                              ( dbg_sub_mode ),
    .pl_dbg_mode                               ( pl_dbg_mode ),

    .drp_do                                    ( drp_do ),
    .drp_rdy                                   ( drp_rdy ),
    .drp_clk                                   ( drp_clk ),
    .drp_addr                                  ( drp_addr ),
    .drp_en                                    ( drp_en ),
    .drp_di                                    ( drp_di ),
    .drp_we                                    ( drp_we ),

    .ll2_tlp_rcv                               ( 1'b0 ),
    .ll2_send_enter_l1                         ( 1'b0 ),
    .ll2_send_enter_l23                        ( 1'b0 ),
    .ll2_send_as_req_l1                        ( 1'b0 ),
    .ll2_send_pm_ack                           ( 1'b0 ),
    .ll2_suspend_now                           ( 1'b0 ),
    .ll2_tfc_init1_seq                         ( ),
    .ll2_tfc_init2_seq                         ( ),
    .ll2_suspend_ok                            ( ),
    .ll2_tx_idle                               ( ),
    .ll2_link_status                           ( ),
    .ll2_receiver_err                          ( ),
    .ll2_protocol_err                          ( ),
    .ll2_bad_tlp_err                           ( ),
    .ll2_bad_dllp_err                          ( ),
    .ll2_replay_ro_err                         ( ),
    .ll2_replay_to_err                         ( ),
    .tl2_ppm_suspend_req                       ( 1'b0 ),
    .tl2_aspm_suspend_credit_check             ( 1'b0 ),
    .tl2_ppm_suspend_ok                        ( ),
    .tl2_aspm_suspend_req                      ( ),
    .tl2_aspm_suspend_credit_check_ok          ( ),
    .tl2_err_hdr                               ( ),
    .tl2_err_malformed                         ( ),
    .tl2_err_rxoverflow                        ( ),
    .tl2_err_fcpe                              ( ),
    .pl2_directed_lstate                       ( 5'b0 ),
    .pl2_suspend_ok                            ( ),
    .pl2_recovery                              ( ),
    .pl2_rx_elec_idle                          ( ),
    .pl2_rx_pm_state                           ( ),
    .pl2_l0_req                                ( ),
    .pl2_link_up                               ( ),
    .pl2_receiver_err                          ( ),

    .trn_rdllp_data                            (trn_rdllp_data ),
    .trn_rdllp_src_rdy                         (trn_rdllp_src_rdy ),

    .pipe_clk                                  ( pipe_clk ),
    .user_clk2                                 ( user_clk2 ),
    .user_clk                                  ( user_clk ),
    .user_clk_prebuf                           ( 1'b0 ),
    .user_clk_prebuf_en                        ( 1'b0 ),

    .pipe_rx0_polarity                         ( pipe_rx0_polarity ),
    .pipe_rx1_polarity                         ( pipe_rx1_polarity ),
    .pipe_rx2_polarity                         ( pipe_rx2_polarity ),
    .pipe_rx3_polarity                         ( pipe_rx3_polarity ),
    .pipe_rx4_polarity                         ( pipe_rx4_polarity ),
    .pipe_rx5_polarity                         ( pipe_rx5_polarity ),
    .pipe_rx6_polarity                         ( pipe_rx6_polarity ),
    .pipe_rx7_polarity                         ( pipe_rx7_polarity ),
    .pipe_tx0_compliance                       ( pipe_tx0_compliance ),
    .pipe_tx1_compliance                       ( pipe_tx1_compliance ),
    .pipe_tx2_compliance                       ( pipe_tx2_compliance ),
    .pipe_tx3_compliance                       ( pipe_tx3_compliance ),
    .pipe_tx4_compliance                       ( pipe_tx4_compliance ),
    .pipe_tx5_compliance                       ( pipe_tx5_compliance ),
    .pipe_tx6_compliance                       ( pipe_tx6_compliance ),
    .pipe_tx7_compliance                       ( pipe_tx7_compliance ),
    .pipe_tx0_char_is_k                        ( pipe_tx0_char_is_k ),
    .pipe_tx1_char_is_k                        ( pipe_tx1_char_is_k ),
    .pipe_tx2_char_is_k                        ( pipe_tx2_char_is_k ),
    .pipe_tx3_char_is_k                        ( pipe_tx3_char_is_k ),
    .pipe_tx4_char_is_k                        ( pipe_tx4_char_is_k ),
    .pipe_tx5_char_is_k                        ( pipe_tx5_char_is_k ),
    .pipe_tx6_char_is_k                        ( pipe_tx6_char_is_k ),
    .pipe_tx7_char_is_k                        ( pipe_tx7_char_is_k ),
    .pipe_tx0_data                             ( pipe_tx0_data ),
    .pipe_tx1_data                             ( pipe_tx1_data ),
    .pipe_tx2_data                             ( pipe_tx2_data ),
    .pipe_tx3_data                             ( pipe_tx3_data ),
    .pipe_tx4_data                             ( pipe_tx4_data ),
    .pipe_tx5_data                             ( pipe_tx5_data ),
    .pipe_tx6_data                             ( pipe_tx6_data ),
    .pipe_tx7_data                             ( pipe_tx7_data ),
    .pipe_tx0_elec_idle                        ( pipe_tx0_elec_idle ),
    .pipe_tx1_elec_idle                        ( pipe_tx1_elec_idle ),
    .pipe_tx2_elec_idle                        ( pipe_tx2_elec_idle ),
    .pipe_tx3_elec_idle                        ( pipe_tx3_elec_idle ),
    .pipe_tx4_elec_idle                        ( pipe_tx4_elec_idle ),
    .pipe_tx5_elec_idle                        ( pipe_tx5_elec_idle ),
    .pipe_tx6_elec_idle                        ( pipe_tx6_elec_idle ),
    .pipe_tx7_elec_idle                        ( pipe_tx7_elec_idle ),
    .pipe_tx0_powerdown                        ( pipe_tx0_powerdown ),
    .pipe_tx1_powerdown                        ( pipe_tx1_powerdown ),
    .pipe_tx2_powerdown                        ( pipe_tx2_powerdown ),
    .pipe_tx3_powerdown                        ( pipe_tx3_powerdown ),
    .pipe_tx4_powerdown                        ( pipe_tx4_powerdown ),
    .pipe_tx5_powerdown                        ( pipe_tx5_powerdown ),
    .pipe_tx6_powerdown                        ( pipe_tx6_powerdown ),
    .pipe_tx7_powerdown                        ( pipe_tx7_powerdown ),

    .pipe_rx0_char_is_k                        ( pipe_rx0_char_is_k ),
    .pipe_rx1_char_is_k                        ( pipe_rx1_char_is_k ),
    .pipe_rx2_char_is_k                        ( pipe_rx2_char_is_k ),
    .pipe_rx3_char_is_k                        ( pipe_rx3_char_is_k ),
    .pipe_rx4_char_is_k                        ( pipe_rx4_char_is_k ),
    .pipe_rx5_char_is_k                        ( pipe_rx5_char_is_k ),
    .pipe_rx6_char_is_k                        ( pipe_rx6_char_is_k ),
    .pipe_rx7_char_is_k                        ( pipe_rx7_char_is_k ),
    .pipe_rx0_valid                            ( pipe_rx0_valid ),
    .pipe_rx1_valid                            ( pipe_rx1_valid ),
    .pipe_rx2_valid                            ( pipe_rx2_valid ),
    .pipe_rx3_valid                            ( pipe_rx3_valid ),
    .pipe_rx4_valid                            ( pipe_rx4_valid ),
    .pipe_rx5_valid                            ( pipe_rx5_valid ),
    .pipe_rx6_valid                            ( pipe_rx6_valid ),
    .pipe_rx7_valid                            ( pipe_rx7_valid ),
    .pipe_rx0_data                             ( pipe_rx0_data ),
    .pipe_rx1_data                             ( pipe_rx1_data ),
    .pipe_rx2_data                             ( pipe_rx2_data ),
    .pipe_rx3_data                             ( pipe_rx3_data ),
    .pipe_rx4_data                             ( pipe_rx4_data ),
    .pipe_rx5_data                             ( pipe_rx5_data ),
    .pipe_rx6_data                             ( pipe_rx6_data ),
    .pipe_rx7_data                             ( pipe_rx7_data ),
    .pipe_rx0_chanisaligned                    ( pipe_rx0_chanisaligned ),
    .pipe_rx1_chanisaligned                    ( pipe_rx1_chanisaligned ),
    .pipe_rx2_chanisaligned                    ( pipe_rx2_chanisaligned ),
    .pipe_rx3_chanisaligned                    ( pipe_rx3_chanisaligned ),
    .pipe_rx4_chanisaligned                    ( pipe_rx4_chanisaligned ),
    .pipe_rx5_chanisaligned                    ( pipe_rx5_chanisaligned ),
    .pipe_rx6_chanisaligned                    ( pipe_rx6_chanisaligned ),
    .pipe_rx7_chanisaligned                    ( pipe_rx7_chanisaligned ),
    .pipe_rx0_status                           ( pipe_rx0_status ),
    .pipe_rx1_status                           ( pipe_rx1_status ),
    .pipe_rx2_status                           ( pipe_rx2_status ),
    .pipe_rx3_status                           ( pipe_rx3_status ),
    .pipe_rx4_status                           ( pipe_rx4_status ),
    .pipe_rx5_status                           ( pipe_rx5_status ),
    .pipe_rx6_status                           ( pipe_rx6_status ),
    .pipe_rx7_status                           ( pipe_rx7_status ),
    .pipe_rx0_phy_status                       ( pipe_rx0_phy_status ),
    .pipe_rx1_phy_status                       ( pipe_rx1_phy_status ),
    .pipe_rx2_phy_status                       ( pipe_rx2_phy_status ),
    .pipe_rx3_phy_status                       ( pipe_rx3_phy_status ),
    .pipe_rx4_phy_status                       ( pipe_rx4_phy_status ),
    .pipe_rx5_phy_status                       ( pipe_rx5_phy_status ),
    .pipe_rx6_phy_status                       ( pipe_rx6_phy_status ),
    .pipe_rx7_phy_status                       ( pipe_rx7_phy_status ),
    .pipe_tx_deemph                            ( pipe_tx_deemph ),
    .pipe_tx_margin                            ( pipe_tx_margin ),
    .pipe_tx_reset                             ( pipe_tx_reset ),
    .pipe_tx_rcvr_det                          ( pipe_tx_rcvr_det ),
    .pipe_tx_rate                              ( pipe_tx_rate ),

    .pipe_rx0_elec_idle                        ( pipe_rx0_elec_idle ),
    .pipe_rx1_elec_idle                        ( pipe_rx1_elec_idle ),
    .pipe_rx2_elec_idle                        ( pipe_rx2_elec_idle ),
    .pipe_rx3_elec_idle                        ( pipe_rx3_elec_idle ),
    .pipe_rx4_elec_idle                        ( pipe_rx4_elec_idle ),
    .pipe_rx5_elec_idle                        ( pipe_rx5_elec_idle ),
    .pipe_rx6_elec_idle                        ( pipe_rx6_elec_idle ),
    .pipe_rx7_elec_idle                        ( pipe_rx7_elec_idle )
  );

  //------------------------------------------------------------------------------------------------------------------//
  // PIPE Interface PIPELINE Module                                                                                   //
  //------------------------------------------------------------------------------------------------------------------//
design_1_xdma_0_0_pcie2_ip_pcie_pipe_pipeline # (

    .LINK_CAP_MAX_LINK_WIDTH ( LINK_CAP_MAX_LINK_WIDTH ),
    .PIPE_PIPELINE_STAGES    ( PIPE_PIPELINE_STAGES )

  )
  pcie_pipe_pipeline_i (

    // Pipe Per-Link Signals
    .pipe_tx_rcvr_det_i       (pipe_tx_rcvr_det),
    .pipe_tx_reset_i          (1'b0), //MV?
    .pipe_tx_rate_i           (pipe_tx_rate),
    .pipe_tx_deemph_i         (pipe_tx_deemph),
    .pipe_tx_margin_i         (pipe_tx_margin),
    .pipe_tx_swing_i          (1'b0),

    .pipe_tx_rcvr_det_o       (pipe_tx_rcvr_det_gt),
    .pipe_tx_reset_o          ( ),
    .pipe_tx_rate_o           (pipe_tx_rate_gt),
    .pipe_tx_deemph_o         (pipe_tx_deemph_gt),
    .pipe_tx_margin_o         (pipe_tx_margin_gt),
    .pipe_tx_swing_o          ( ),

    // Pipe Per-Lane Signals - Lane 0

    .pipe_rx0_char_is_k_o     (pipe_rx0_char_is_k     ),
    .pipe_rx0_data_o          (pipe_rx0_data          ),
    .pipe_rx0_valid_o         (pipe_rx0_valid         ),
    .pipe_rx0_chanisaligned_o (pipe_rx0_chanisaligned ),
    .pipe_rx0_status_o        (pipe_rx0_status        ),
    .pipe_rx0_phy_status_o    (pipe_rx0_phy_status    ),
    .pipe_rx0_elec_idle_i     (pipe_rx0_elec_idle_gt  ),
    .pipe_rx0_polarity_i      (pipe_rx0_polarity      ),
    .pipe_tx0_compliance_i    (pipe_tx0_compliance    ),
    .pipe_tx0_char_is_k_i     (pipe_tx0_char_is_k     ),
    .pipe_tx0_data_i          (pipe_tx0_data          ),
    .pipe_tx0_elec_idle_i     (pipe_tx0_elec_idle     ),
    .pipe_tx0_powerdown_i     (pipe_tx0_powerdown     ),

    .pipe_rx0_char_is_k_i     (pipe_rx0_char_is_k_gt  ),
    .pipe_rx0_data_i          (pipe_rx0_data_gt       ),
    .pipe_rx0_valid_i         (pipe_rx0_valid_gt      ),
    .pipe_rx0_chanisaligned_i (pipe_rx0_chanisaligned_gt),
    .pipe_rx0_status_i        (pipe_rx0_status_gt     ),
    .pipe_rx0_phy_status_i    (pipe_rx0_phy_status_gt ),
    .pipe_rx0_elec_idle_o     (pipe_rx0_elec_idle     ),
    .pipe_rx0_polarity_o      (pipe_rx0_polarity_gt   ),
    .pipe_tx0_compliance_o    (pipe_tx0_compliance_gt ),
    .pipe_tx0_char_is_k_o     (pipe_tx0_char_is_k_gt  ),
    .pipe_tx0_data_o          (pipe_tx0_data_gt       ),
    .pipe_tx0_elec_idle_o     (pipe_tx0_elec_idle_gt  ),
    .pipe_tx0_powerdown_o     (pipe_tx0_powerdown_gt  ),

    // Pipe Per-Lane Signals - Lane 1

    .pipe_rx1_char_is_k_o     (pipe_rx1_char_is_k     ),
    .pipe_rx1_data_o          (pipe_rx1_data          ),
    .pipe_rx1_valid_o         (pipe_rx1_valid         ),
    .pipe_rx1_chanisaligned_o (pipe_rx1_chanisaligned ),
    .pipe_rx1_status_o        (pipe_rx1_status        ),
    .pipe_rx1_phy_status_o    (pipe_rx1_phy_status    ),
    .pipe_rx1_elec_idle_i     (pipe_rx1_elec_idle_gt  ),
    .pipe_rx1_polarity_i      (pipe_rx1_polarity      ),
    .pipe_tx1_compliance_i    (pipe_tx1_compliance    ),
    .pipe_tx1_char_is_k_i     (pipe_tx1_char_is_k     ),
    .pipe_tx1_data_i          (pipe_tx1_data          ),
    .pipe_tx1_elec_idle_i     (pipe_tx1_elec_idle     ),
    .pipe_tx1_powerdown_i     (pipe_tx1_powerdown     ),

    .pipe_rx1_char_is_k_i     (pipe_rx1_char_is_k_gt  ),
    .pipe_rx1_data_i          (pipe_rx1_data_gt       ),
    .pipe_rx1_valid_i         (pipe_rx1_valid_gt      ),
    .pipe_rx1_chanisaligned_i (pipe_rx1_chanisaligned_gt),
    .pipe_rx1_status_i        (pipe_rx1_status_gt     ),
    .pipe_rx1_phy_status_i    (pipe_rx1_phy_status_gt ),
    .pipe_rx1_elec_idle_o     (pipe_rx1_elec_idle     ),
    .pipe_rx1_polarity_o      (pipe_rx1_polarity_gt   ),
    .pipe_tx1_compliance_o    (pipe_tx1_compliance_gt ),
    .pipe_tx1_char_is_k_o     (pipe_tx1_char_is_k_gt  ),
    .pipe_tx1_data_o          (pipe_tx1_data_gt       ),
    .pipe_tx1_elec_idle_o     (pipe_tx1_elec_idle_gt  ),
    .pipe_tx1_powerdown_o     (pipe_tx1_powerdown_gt  ),

    // Pipe Per-Lane Signals - Lane 2

    .pipe_rx2_char_is_k_o     (pipe_rx2_char_is_k     ),
    .pipe_rx2_data_o          (pipe_rx2_data          ),
    .pipe_rx2_valid_o         (pipe_rx2_valid         ),
    .pipe_rx2_chanisaligned_o (pipe_rx2_chanisaligned ),
    .pipe_rx2_status_o        (pipe_rx2_status        ),
    .pipe_rx2_phy_status_o    (pipe_rx2_phy_status    ),
    .pipe_rx2_elec_idle_i     (pipe_rx2_elec_idle_gt  ),
    .pipe_rx2_polarity_i      (pipe_rx2_polarity      ),
    .pipe_tx2_compliance_i    (pipe_tx2_compliance    ),
    .pipe_tx2_char_is_k_i     (pipe_tx2_char_is_k     ),
    .pipe_tx2_data_i          (pipe_tx2_data          ),
    .pipe_tx2_elec_idle_i     (pipe_tx2_elec_idle     ),
    .pipe_tx2_powerdown_i     (pipe_tx2_powerdown     ),

    .pipe_rx2_char_is_k_i     (pipe_rx2_char_is_k_gt  ),
    .pipe_rx2_data_i          (pipe_rx2_data_gt       ),
    .pipe_rx2_valid_i         (pipe_rx2_valid_gt      ),
    .pipe_rx2_chanisaligned_i (pipe_rx2_chanisaligned_gt),
    .pipe_rx2_status_i        (pipe_rx2_status_gt     ),
    .pipe_rx2_phy_status_i    (pipe_rx2_phy_status_gt ),
    .pipe_rx2_elec_idle_o     (pipe_rx2_elec_idle     ),
    .pipe_rx2_polarity_o      (pipe_rx2_polarity_gt   ),
    .pipe_tx2_compliance_o    (pipe_tx2_compliance_gt ),
    .pipe_tx2_char_is_k_o     (pipe_tx2_char_is_k_gt  ),
    .pipe_tx2_data_o          (pipe_tx2_data_gt       ),
    .pipe_tx2_elec_idle_o     (pipe_tx2_elec_idle_gt  ),
    .pipe_tx2_powerdown_o     (pipe_tx2_powerdown_gt  ),

    // Pipe Per-Lane Signals - Lane 3

    .pipe_rx3_char_is_k_o     (pipe_rx3_char_is_k     ),
    .pipe_rx3_data_o          (pipe_rx3_data          ),
    .pipe_rx3_valid_o         (pipe_rx3_valid         ),
    .pipe_rx3_chanisaligned_o (pipe_rx3_chanisaligned ),
    .pipe_rx3_status_o        (pipe_rx3_status        ),
    .pipe_rx3_phy_status_o    (pipe_rx3_phy_status    ),
    .pipe_rx3_elec_idle_i     (pipe_rx3_elec_idle_gt  ),
    .pipe_rx3_polarity_i      (pipe_rx3_polarity      ),
    .pipe_tx3_compliance_i    (pipe_tx3_compliance    ),
    .pipe_tx3_char_is_k_i     (pipe_tx3_char_is_k     ),
    .pipe_tx3_data_i          (pipe_tx3_data          ),
    .pipe_tx3_elec_idle_i     (pipe_tx3_elec_idle     ),
    .pipe_tx3_powerdown_i     (pipe_tx3_powerdown     ),

    .pipe_rx3_char_is_k_i     (pipe_rx3_char_is_k_gt  ),
    .pipe_rx3_data_i          (pipe_rx3_data_gt       ),
    .pipe_rx3_valid_i         (pipe_rx3_valid_gt      ),
    .pipe_rx3_chanisaligned_i (pipe_rx3_chanisaligned_gt),
    .pipe_rx3_status_i        (pipe_rx3_status_gt     ),
    .pipe_rx3_phy_status_i    (pipe_rx3_phy_status_gt ),
    .pipe_rx3_elec_idle_o     (pipe_rx3_elec_idle     ),
    .pipe_rx3_polarity_o      (pipe_rx3_polarity_gt   ),
    .pipe_tx3_compliance_o    (pipe_tx3_compliance_gt ),
    .pipe_tx3_char_is_k_o     (pipe_tx3_char_is_k_gt  ),
    .pipe_tx3_data_o          (pipe_tx3_data_gt       ),
    .pipe_tx3_elec_idle_o     (pipe_tx3_elec_idle_gt  ),
    .pipe_tx3_powerdown_o     (pipe_tx3_powerdown_gt  ),

     // Pipe Per-Lane Signals - Lane 4

    .pipe_rx4_char_is_k_o     (pipe_rx4_char_is_k     ),
    .pipe_rx4_data_o          (pipe_rx4_data          ),
    .pipe_rx4_valid_o         (pipe_rx4_valid         ),
    .pipe_rx4_chanisaligned_o (pipe_rx4_chanisaligned ),
    .pipe_rx4_status_o        (pipe_rx4_status        ),
    .pipe_rx4_phy_status_o    (pipe_rx4_phy_status    ),
    .pipe_rx4_elec_idle_i     (pipe_rx4_elec_idle_gt  ),
    .pipe_rx4_polarity_i      (pipe_rx4_polarity      ),
    .pipe_tx4_compliance_i    (pipe_tx4_compliance    ),
    .pipe_tx4_char_is_k_i     (pipe_tx4_char_is_k     ),
    .pipe_tx4_data_i          (pipe_tx4_data          ),
    .pipe_tx4_elec_idle_i     (pipe_tx4_elec_idle     ),
    .pipe_tx4_powerdown_i     (pipe_tx4_powerdown     ),
    .pipe_rx4_char_is_k_i     (pipe_rx4_char_is_k_gt  ),
    .pipe_rx4_data_i          (pipe_rx4_data_gt       ),
    .pipe_rx4_valid_i         (pipe_rx4_valid_gt      ),
    .pipe_rx4_chanisaligned_i (pipe_rx4_chanisaligned_gt),
    .pipe_rx4_status_i        (pipe_rx4_status_gt     ),
    .pipe_rx4_phy_status_i    (pipe_rx4_phy_status_gt ),
    .pipe_rx4_elec_idle_o     (pipe_rx4_elec_idle     ),
    .pipe_rx4_polarity_o      (pipe_rx4_polarity_gt   ),
    .pipe_tx4_compliance_o    (pipe_tx4_compliance_gt ),
    .pipe_tx4_char_is_k_o     (pipe_tx4_char_is_k_gt  ),
    .pipe_tx4_data_o          (pipe_tx4_data_gt       ),
    .pipe_tx4_elec_idle_o     (pipe_tx4_elec_idle_gt  ),
    .pipe_tx4_powerdown_o     (pipe_tx4_powerdown_gt  ),

    // Pipe Per-Lane Signals - Lane 5

    .pipe_rx5_char_is_k_o     (pipe_rx5_char_is_k     ),
    .pipe_rx5_data_o          (pipe_rx5_data          ),
    .pipe_rx5_valid_o         (pipe_rx5_valid         ),
    .pipe_rx5_chanisaligned_o (pipe_rx5_chanisaligned ),
    .pipe_rx5_status_o        (pipe_rx5_status        ),
    .pipe_rx5_phy_status_o    (pipe_rx5_phy_status    ),
    .pipe_rx5_elec_idle_i     (pipe_rx5_elec_idle_gt  ),
    .pipe_rx5_polarity_i      (pipe_rx5_polarity      ),
    .pipe_tx5_compliance_i    (pipe_tx5_compliance    ),
    .pipe_tx5_char_is_k_i     (pipe_tx5_char_is_k     ),
    .pipe_tx5_data_i          (pipe_tx5_data          ),
    .pipe_tx5_elec_idle_i     (pipe_tx5_elec_idle     ),
    .pipe_tx5_powerdown_i     (pipe_tx5_powerdown     ),
    .pipe_rx5_char_is_k_i     (pipe_rx5_char_is_k_gt  ),
    .pipe_rx5_data_i          (pipe_rx5_data_gt       ),
    .pipe_rx5_valid_i         (pipe_rx5_valid_gt      ),
    .pipe_rx5_chanisaligned_i (pipe_rx5_chanisaligned_gt),
    .pipe_rx5_status_i        (pipe_rx5_status_gt     ),
    .pipe_rx5_phy_status_i    (pipe_rx5_phy_status_gt ),
    .pipe_rx5_elec_idle_o     (pipe_rx5_elec_idle     ),
    .pipe_rx5_polarity_o      (pipe_rx5_polarity_gt   ),
    .pipe_tx5_compliance_o    (pipe_tx5_compliance_gt ),
    .pipe_tx5_char_is_k_o     (pipe_tx5_char_is_k_gt  ),
    .pipe_tx5_data_o          (pipe_tx5_data_gt       ),
    .pipe_tx5_elec_idle_o     (pipe_tx5_elec_idle_gt  ),
    .pipe_tx5_powerdown_o     (pipe_tx5_powerdown_gt  ),

    // Pipe Per-Lane Signals - Lane 6

    .pipe_rx6_char_is_k_o     (pipe_rx6_char_is_k     ),
    .pipe_rx6_data_o          (pipe_rx6_data          ),
    .pipe_rx6_valid_o         (pipe_rx6_valid         ),
    .pipe_rx6_chanisaligned_o (pipe_rx6_chanisaligned ),
    .pipe_rx6_status_o        (pipe_rx6_status        ),
    .pipe_rx6_phy_status_o    (pipe_rx6_phy_status    ),
    .pipe_rx6_elec_idle_i     (pipe_rx6_elec_idle_gt  ),
    .pipe_rx6_polarity_i      (pipe_rx6_polarity      ),
    .pipe_tx6_compliance_i    (pipe_tx6_compliance    ),
    .pipe_tx6_char_is_k_i     (pipe_tx6_char_is_k     ),
    .pipe_tx6_data_i          (pipe_tx6_data          ),
    .pipe_tx6_elec_idle_i     (pipe_tx6_elec_idle     ),
    .pipe_tx6_powerdown_i     (pipe_tx6_powerdown     ),
    .pipe_rx6_char_is_k_i     (pipe_rx6_char_is_k_gt  ),
    .pipe_rx6_data_i          (pipe_rx6_data_gt       ),
    .pipe_rx6_valid_i         (pipe_rx6_valid_gt      ),
    .pipe_rx6_chanisaligned_i (pipe_rx6_chanisaligned_gt),
    .pipe_rx6_status_i        (pipe_rx6_status_gt     ),
    .pipe_rx6_phy_status_i    (pipe_rx6_phy_status_gt ),
    .pipe_rx6_elec_idle_o     (pipe_rx6_elec_idle     ),
    .pipe_rx6_polarity_o      (pipe_rx6_polarity_gt   ),
    .pipe_tx6_compliance_o    (pipe_tx6_compliance_gt ),
    .pipe_tx6_char_is_k_o     (pipe_tx6_char_is_k_gt  ),
    .pipe_tx6_data_o          (pipe_tx6_data_gt       ),
    .pipe_tx6_elec_idle_o     (pipe_tx6_elec_idle_gt  ),
    .pipe_tx6_powerdown_o     (pipe_tx6_powerdown_gt  ),

    // Pipe Per-Lane Signals - Lane 7

    .pipe_rx7_char_is_k_o     (pipe_rx7_char_is_k     ),
    .pipe_rx7_data_o          (pipe_rx7_data          ),
    .pipe_rx7_valid_o         (pipe_rx7_valid         ),
    .pipe_rx7_chanisaligned_o (pipe_rx7_chanisaligned ),
    .pipe_rx7_status_o        (pipe_rx7_status        ),
    .pipe_rx7_phy_status_o    (pipe_rx7_phy_status    ),
    .pipe_rx7_elec_idle_i     (pipe_rx7_elec_idle_gt  ),
    .pipe_rx7_polarity_i      (pipe_rx7_polarity      ),
    .pipe_tx7_compliance_i    (pipe_tx7_compliance    ),
    .pipe_tx7_char_is_k_i     (pipe_tx7_char_is_k     ),
    .pipe_tx7_data_i          (pipe_tx7_data          ),
    .pipe_tx7_elec_idle_i     (pipe_tx7_elec_idle     ),
    .pipe_tx7_powerdown_i     (pipe_tx7_powerdown     ),
    .pipe_rx7_char_is_k_i     (pipe_rx7_char_is_k_gt  ),
    .pipe_rx7_data_i          (pipe_rx7_data_gt       ),
    .pipe_rx7_valid_i         (pipe_rx7_valid_gt      ),
    .pipe_rx7_chanisaligned_i (pipe_rx7_chanisaligned_gt),
    .pipe_rx7_status_i        (pipe_rx7_status_gt     ),
    .pipe_rx7_phy_status_i    (pipe_rx7_phy_status_gt ),
    .pipe_rx7_elec_idle_o     (pipe_rx7_elec_idle     ),
    .pipe_rx7_polarity_o      (pipe_rx7_polarity_gt   ),
    .pipe_tx7_compliance_o    (pipe_tx7_compliance_gt ),
    .pipe_tx7_char_is_k_o     (pipe_tx7_char_is_k_gt  ),
    .pipe_tx7_data_o          (pipe_tx7_data_gt       ),
    .pipe_tx7_elec_idle_o     (pipe_tx7_elec_idle_gt  ),
    .pipe_tx7_powerdown_o     (pipe_tx7_powerdown_gt  ),

    // Non PIPE signals
    .pipe_clk                 (pipe_clk               ),
    .rst_n                    (phy_rdy_n              )
  );



endmodule

