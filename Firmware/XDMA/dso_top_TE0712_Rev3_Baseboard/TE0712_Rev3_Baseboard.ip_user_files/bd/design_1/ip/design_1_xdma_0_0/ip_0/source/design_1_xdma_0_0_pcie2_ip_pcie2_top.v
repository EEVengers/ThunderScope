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
// File       : design_1_xdma_0_0_pcie2_ip_pcie2_top.v
// Version    : 3.3

//--------------------------------------------------------------------------------


`timescale 1ns/1ps
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_pcie2_top # (
parameter     c_component_name ="pcie_7x_v3_3_12",
parameter     dev_port_type ="0000",
parameter     c_dev_port_type ="0",
parameter     c_header_type ="00",
parameter     c_upstream_facing ="TRUE",
parameter     max_lnk_wdt = "000100",
parameter     max_lnk_spd = "1",
parameter     c_gen1 = 1'b0,
parameter     c_int_width = 64,
parameter     pci_exp_int_freq = 2,
parameter     c_pcie_fast_config = 0,
parameter     bar_0 = "FFFFFF80",
parameter     bar_1 = "00000000",
parameter     bar_2 = "00000000",
parameter     bar_3 = "00000000",
parameter     bar_4 = "00000000",
parameter     bar_5 = "00000000",
parameter     xrom_bar = "00000000",
parameter     cost_table = 1,
parameter     ven_id = "10EE",
parameter     dev_id = "7028",
parameter     rev_id = "00",
parameter     subsys_ven_id = "10EE",
parameter     subsys_id = "0007",
parameter     class_code = "058000",
parameter     cardbus_cis_ptr = "00000000",
parameter     cap_ver = "2",
parameter     c_pcie_cap_slot_implemented = "FALSE",
parameter     mps = "010",
parameter     cmps = "2",
parameter     ext_tag_fld_sup = "FALSE",
parameter     c_dev_control_ext_tag_default = "FALSE",
parameter     phantm_func_sup = "00",
parameter     c_phantom_functions = "0",
parameter     ep_l0s_accpt_lat = "000",
parameter     c_ep_l0s_accpt_lat = "0",
parameter     ep_l1_accpt_lat = "111",
parameter     c_ep_l1_accpt_lat = "7",
parameter     c_cpl_timeout_disable_sup = "FALSE",
parameter     c_cpl_timeout_range = "0010",
parameter     c_cpl_timeout_ranges_sup = "2",
parameter     c_buf_opt_bma = "TRUE",
parameter     c_perf_level_high = "TRUE",
parameter     c_tx_last_tlp = "29",
parameter     c_rx_ram_limit = "7FF",
parameter     c_fc_ph = "32",
parameter     c_fc_pd = "437",
parameter     c_fc_nph = "12",
parameter     c_fc_npd = "24",
parameter     c_fc_cplh = "36",
parameter     c_fc_cpld = "461",
parameter     c_cpl_inf = "TRUE",
parameter     c_cpl_infinite = "TRUE",
parameter     c_surprise_dn_err_cap = "FALSE",
parameter     c_dll_lnk_actv_cap = "FALSE",
parameter     c_lnk_bndwdt_notif = "FALSE",
parameter     c_external_clocking = "TRUE",
parameter     c_trgt_lnk_spd = "0",
parameter     c_hw_auton_spd_disable = "FALSE",
parameter     c_de_emph = "FALSE",
parameter     slot_clk = "TRUE",
parameter     c_rcb = "0",
parameter     c_root_cap_crs = "FALSE",
parameter     c_slot_cap_attn_butn = "FALSE",
parameter     c_slot_cap_attn_ind = "FALSE",
parameter     c_slot_cap_pwr_ctrl = "FALSE",
parameter     c_slot_cap_pwr_ind = "FALSE",
parameter     c_slot_cap_hotplug_surprise = "FALSE",
parameter     c_slot_cap_hotplug_cap = "FALSE",
parameter     c_slot_cap_mrl = "FALSE",
parameter     c_slot_cap_elec_interlock = "FALSE",
parameter     c_slot_cap_no_cmd_comp_sup = "FALSE",
parameter     c_slot_cap_pwr_limit_value = "0",
parameter     c_slot_cap_pwr_limit_scale = "0",
parameter     c_slot_cap_physical_slot_num = "0",
parameter     intx = "TRUE",
parameter     int_pin = "1",
parameter     c_msi_cap_on = "TRUE",
parameter     c_pm_cap_next_ptr = "48",
parameter     c_msi_64b_addr = "TRUE",
parameter     c_msi = "0",
parameter     c_msi_mult_msg_extn = "0",
parameter     c_msi_per_vctr_mask_cap = "FALSE",
parameter     c_msix_cap_on = "FALSE",
parameter     c_msix_next_ptr = "00",
parameter     c_pcie_cap_next_ptr = "00",
parameter     c_msix_table_size = "000",
parameter     c_msix_table_offset = "0",
parameter     c_msix_table_bir = "0",
parameter     c_msix_pba_offset = "0",
parameter     c_msix_pba_bir = "0",
parameter     dsi = "0",
parameter     c_dsi_bool = "FALSE",
parameter     d1_sup = "0",
parameter     c_d1_support = "FALSE",
parameter     d2_sup = "0",
parameter     c_d2_support = "FALSE",
parameter     pme_sup = "0F",
parameter     c_pme_support = "0F",
parameter     no_soft_rst = "TRUE",
parameter     pwr_con_d0_state = "00",
parameter     con_scl_fctr_d0_state = "0",
parameter     pwr_con_d1_state = "00",
parameter     con_scl_fctr_d1_state = "0",
parameter     pwr_con_d2_state = "00",
parameter     con_scl_fctr_d2_state = "0",
parameter     pwr_con_d3_state = "00",
parameter     con_scl_fctr_d3_state = "0",
parameter     pwr_dis_d0_state = "00",
parameter     dis_scl_fctr_d0_state = "0",
parameter     pwr_dis_d1_state = "00",
parameter     dis_scl_fctr_d1_state = "0",
parameter     pwr_dis_d2_state = "00",
parameter     dis_scl_fctr_d2_state = "0",
parameter     pwr_dis_d3_state = "00",
parameter     dis_scl_fctr_d3_state = "0",
parameter     c_dsn_cap_enabled = "TRUE",
parameter     c_dsn_base_ptr = "100",
parameter     c_vc_cap_enabled = "FALSE",
parameter     c_vc_base_ptr = "000",
parameter     c_vc_cap_reject_snoop = "FALSE",
parameter     c_vsec_cap_enabled = "FALSE",
parameter     c_vsec_base_ptr = "000",
parameter     c_vsec_next_ptr = "000",
parameter     c_dsn_next_ptr = "000",
parameter     c_vc_next_ptr = "000",
parameter     c_pci_cfg_space_addr = "3F",
parameter     c_ext_pci_cfg_space_addr = "3FF",
parameter     c_last_cfg_dw = "10C",
parameter     c_enable_msg_route = "00000000000",
parameter     bram_lat = "0",
parameter     c_rx_raddr_lat = "0",
parameter     c_rx_rdata_lat = "2",
parameter     c_rx_write_lat = "0",
parameter     c_tx_raddr_lat = "0",
parameter     c_tx_rdata_lat = "2",
parameter     c_tx_write_lat = "0",
parameter     c_ll_ack_timeout_enable = "FALSE",
parameter     c_ll_ack_timeout_function = "0",
parameter     c_ll_ack_timeout = "0000",
parameter     c_ll_replay_timeout_enable = "FALSE",
parameter     c_ll_replay_timeout_func = "1",
parameter     c_ll_replay_timeout = "0000",
parameter     c_dis_lane_reverse = "TRUE",
parameter     c_upconfig_capable = "TRUE",
parameter     c_disable_scrambling = "FALSE",
parameter     c_disable_tx_aspm_l0s = "0",
parameter     c_rev_gt_order = "FALSE",
parameter     c_pcie_dbg_ports = "FALSE",
parameter     pci_exp_ref_freq = "0",
parameter     c_xlnx_ref_board = "NONE",
parameter     c_pcie_blk_locn = "0",
parameter     c_ur_atomic = "FALSE",
parameter     c_dev_cap2_atomicop32_completer_supported = "FALSE",
parameter     c_dev_cap2_atomicop64_completer_supported = "FALSE",
parameter     c_dev_cap2_cas128_completer_supported = "FALSE",
parameter     c_dev_cap2_tph_completer_supported = "00",
parameter     c_dev_cap2_ari_forwarding_supported = "FALSE",
parameter     c_dev_cap2_atomicop_routing_supported = "FALSE",
parameter     c_link_cap_aspm_optionality = "FALSE",
parameter     c_aer_cap_on = "FALSE",
parameter     c_aer_base_ptr = "000",
parameter     c_aer_cap_nextptr = "000",
parameter     c_aer_cap_ecrc_check_capable = "FALSE",
parameter     c_aer_cap_multiheader = "FALSE",
parameter     c_aer_cap_permit_rooterr_update = "FALSE",
parameter     c_rbar_cap_on = "FALSE",
parameter     c_rbar_base_ptr = "000",
parameter     c_rbar_cap_nextptr = "000",
parameter     c_rbar_num = "0",
parameter     c_rbar_cap_sup0 = "00001",
parameter     c_rbar_cap_index0 = "0",
parameter     c_rbar_cap_control_encodedbar0 = "00",
parameter     c_rbar_cap_sup1 = "00001",
parameter     c_rbar_cap_index1 = "0",
parameter     c_rbar_cap_control_encodedbar1 = "00",
parameter     c_rbar_cap_sup2 = "00001",
parameter     c_rbar_cap_index2 = "0",
parameter     c_rbar_cap_control_encodedbar2 = "00",
parameter     c_rbar_cap_sup3 = "00001",
parameter     c_rbar_cap_index3 = "0",
parameter     c_rbar_cap_control_encodedbar3 = "00",
parameter     c_rbar_cap_sup4 = "00001",
parameter     c_rbar_cap_index4 = "0",
parameter     c_rbar_cap_control_encodedbar4 = "00",
parameter     c_rbar_cap_sup5 = "00001",
parameter     c_rbar_cap_index5 = "0",
parameter     c_rbar_cap_control_encodedbar5 = "00",
parameter     c_recrc_check = "0",
parameter     c_recrc_check_trim = "FALSE",
parameter     c_disable_rx_poisoned_resp = "FALSE",
parameter     c_trn_np_fc = "TRUE",
parameter     c_ur_inv_req = "TRUE",
parameter     c_ur_prs_response = "TRUE",
parameter     c_silicon_rev = "1",
parameter     c_aer_cap_optional_err_support = "000000",
parameter     PIPE_SIM = "FALSE",
parameter     PCIE_EXT_CLK = "TRUE",
parameter     PCIE_EXT_GT_COMMON = "FALSE",
parameter     EXT_CH_GT_DRP = "TRUE",
parameter     TRANSCEIVER_CTRL_STATUS_PORTS = "FALSE",
parameter     SHARED_LOGIC_IN_CORE = "FALSE",
parameter     PL_INTERFACE = "TRUE",
parameter     CFG_MGMT_IF = "TRUE",
parameter     CFG_CTL_IF = "TRUE",
parameter     CFG_STATUS_IF = "TRUE",
parameter     RCV_MSG_IF = "TRUE",
parameter     CFG_FC_IF = "TRUE" ,
parameter     ERR_REPORTING_IF = "TRUE",
parameter     c_aer_cap_ecrc_gen_capable = "FALSE",
parameter     EXT_PIPE_INTERFACE = "FALSE",
parameter     EXT_STARTUP_PRIMITIVE = "FALSE",
parameter  integer   LINK_CAP_MAX_LINK_WIDTH = 6'h8,
parameter  integer   C_DATA_WIDTH = 64, 
parameter  integer   KEEP_WIDTH = C_DATA_WIDTH / 8,
parameter  PCIE_ASYNC_EN = "FALSE",
parameter  ENABLE_JTAG_DBG = "FALSE"
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
  output                                     user_reset_out,
  output                                     user_lnk_up,
  output                                     user_app_rdy,

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
  output   [31:0]  cfg_mgmt_do,
  output           cfg_mgmt_rd_wr_done,

  output   [15:0]  cfg_status,
  output   [15:0]  cfg_command,
  output   [15:0]  cfg_dstatus,
  output   [15:0]  cfg_dcommand,
  output   [15:0]  cfg_lstatus,
  output   [15:0]  cfg_lcommand,
  output   [15:0]  cfg_dcommand2,
  output   [2:0]   cfg_pcie_link_state,

  output           cfg_pmcsr_pme_en,
  output   [1:0]   cfg_pmcsr_powerstate,
  output           cfg_pmcsr_pme_status,
  output           cfg_received_func_lvl_rst,

  // Management Interface
  input    [31:0]  cfg_mgmt_di,
  input    [3:0]   cfg_mgmt_byte_en,
  input    [9:0]   cfg_mgmt_dwaddr,
  input            cfg_mgmt_wr_en,
  input            cfg_mgmt_rd_en,
  input            cfg_mgmt_wr_readonly,

  // Error Reporting Interface
  input            cfg_err_ecrc,
  input            cfg_err_ur,
  input            cfg_err_cpl_timeout,
  input            cfg_err_cpl_unexpect,
  input            cfg_err_cpl_abort,
  input            cfg_err_posted,
  input            cfg_err_cor,
  input            cfg_err_atomic_egress_blocked,
  input            cfg_err_internal_cor,
  input            cfg_err_malformed,
  input            cfg_err_mc_blocked,
  input            cfg_err_poisoned,
  input            cfg_err_norecovery,
  input   [47:0]   cfg_err_tlp_cpl_header,
  output           cfg_err_cpl_rdy,
  input            cfg_err_locked,
  input            cfg_err_acs,
  input            cfg_err_internal_uncor,

  input                cfg_trn_pending,
  input                cfg_pm_halt_aspm_l0s,
  input                cfg_pm_halt_aspm_l1,
  input                cfg_pm_force_state_en,
  input        [1:0]   cfg_pm_force_state,

  input       [63:0]   cfg_dsn,
  output               cfg_msg_received,
  output      [15:0]   cfg_msg_data,

  //------------------------------------------------//
  // EP Only                                        //
  //------------------------------------------------//

  // Interrupt Interface Signals
  input                cfg_interrupt,
  output               cfg_interrupt_rdy,
  input                cfg_interrupt_assert,
  input        [7:0]   cfg_interrupt_di,
  output       [7:0]   cfg_interrupt_do,
  output       [2:0]   cfg_interrupt_mmenable,
  output               cfg_interrupt_msienable,
  output               cfg_interrupt_msixenable,
  output               cfg_interrupt_msixfm,
  input                cfg_interrupt_stat,
  input        [4:0]   cfg_pciecap_interrupt_msgnum,


  output               cfg_to_turnoff,
  input                cfg_turnoff_ok,
  output       [7:0]   cfg_bus_number,
  output       [4:0]   cfg_device_number,
  output       [2:0]   cfg_function_number,
  input                cfg_pm_wake,

  output               cfg_msg_received_pm_as_nak,
  output               cfg_msg_received_setslotpowerlimit,

  //------------------------------------------------//
  // RP Only                                        //
  //------------------------------------------------//
  input                cfg_pm_send_pme_to,
  input        [7:0]   cfg_ds_bus_number,
  input        [4:0]   cfg_ds_device_number,
  input        [2:0]   cfg_ds_function_number,

  input                cfg_mgmt_wr_rw1c_as_rw,

  output               cfg_bridge_serr_en,
  output               cfg_slot_control_electromech_il_ctl_pulse,
  output               cfg_root_control_syserr_corr_err_en,
  output               cfg_root_control_syserr_non_fatal_err_en,
  output               cfg_root_control_syserr_fatal_err_en,
  output               cfg_root_control_pme_int_en,
  output               cfg_aer_rooterr_corr_err_reporting_en,
  output               cfg_aer_rooterr_non_fatal_err_reporting_en,
  output               cfg_aer_rooterr_fatal_err_reporting_en,
  output               cfg_aer_rooterr_corr_err_received,
  output               cfg_aer_rooterr_non_fatal_err_received,
  output               cfg_aer_rooterr_fatal_err_received,

  output               cfg_msg_received_err_cor,
  output               cfg_msg_received_err_non_fatal,
  output               cfg_msg_received_err_fatal,
  output               cfg_msg_received_pm_pme,
  output               cfg_msg_received_pme_to_ack,
  output               cfg_msg_received_assert_int_a,
  output               cfg_msg_received_assert_int_b,
  output               cfg_msg_received_assert_int_c,
  output               cfg_msg_received_assert_int_d,
  output               cfg_msg_received_deassert_int_a,
  output               cfg_msg_received_deassert_int_b,
  output               cfg_msg_received_deassert_int_c,
  output               cfg_msg_received_deassert_int_d,

  //----------------------------------------------------------------------------------------------------------------//
  // 5. Physical Layer Control and Status (PL) Interface                                                            //
  //----------------------------------------------------------------------------------------------------------------//

  //------------------------------------------------//
  // EP and RP                                      //
  //------------------------------------------------//
  input        [1:0]   pl_directed_link_change,
  input        [1:0]   pl_directed_link_width,
  input                pl_directed_link_speed,
  input                pl_directed_link_auton,
  input                pl_upstream_prefer_deemph,

  output               pl_sel_lnk_rate,
  output       [1:0]   pl_sel_lnk_width,
  output       [5:0]   pl_ltssm_state,
  output       [1:0]   pl_lane_reversal_mode,

  output               pl_phy_lnk_up,
  output       [2:0]   pl_tx_pm_state,
  output       [1:0]   pl_rx_pm_state,

  output               pl_link_upcfg_cap,
  output               pl_link_gen2_cap,
  output               pl_link_partner_gen2_supported,
  output       [2:0]   pl_initial_link_width,

  output               pl_directed_change_done,

  //------------------------------------------------//
  // EP Only                                        //
  //------------------------------------------------//
  output               pl_received_hot_rst,

  //------------------------------------------------//
  // RP Only                                        //
  //------------------------------------------------//
  input                pl_transmit_hot_rst,
  input                pl_downstream_deemph_source,

  //----------------------------------------------------------------------------------------------------------------//
  // 6. AER interface                                                                                               //
  //----------------------------------------------------------------------------------------------------------------//

  input      [127:0]   cfg_err_aer_headerlog,
  input        [4:0]   cfg_aer_interrupt_msgnum,
  output               cfg_err_aer_headerlog_set,
  output               cfg_aer_ecrc_check_en,
  output               cfg_aer_ecrc_gen_en,

  //----------------------------------------------------------------------------------------------------------------//
  // 7. VC interface                                                                                                //
  //----------------------------------------------------------------------------------------------------------------//

  output      [6:0]    cfg_vc_tcvc_map,

  //----------------------------------------------------------------------------------------------------------------//
  // 8. PCIe DRP (PCIe DRP) Interface                                                                               //
  //----------------------------------------------------------------------------------------------------------------//

  input            pcie_drp_clk,
  input            pcie_drp_en,
  input            pcie_drp_we,
  input     [8:0]  pcie_drp_addr,
  input    [15:0]  pcie_drp_di,
  output           pcie_drp_rdy,
  output   [15:0]  pcie_drp_do,

  //----------------------------------------------------------------------------------------------------------------//
  // PCIe Fast Config: STARTUP primitive Interface - only used in Tandem configurations                             //
  //----------------------------------------------------------------------------------------------------------------//
  // This input should be used when the startup block is generated exteranl to the PCI Express Core
  input            startup_eos_in,     // 1-bit input: This signal should be driven by the EOS output of the STARTUP primitive.
  // These inputs and outputs may be use when the startup block is generated internal to the PCI Express Core.
  output wire      startup_cfgclk,     // 1-bit output: Configuration main clock output
  output wire      startup_cfgmclk,    // 1-bit output: Configuration internal oscillator clock output
  output wire      startup_eos,        // 1-bit output: Active high output signal indicating the End Of Startup
  output wire      startup_preq,       // 1-bit output: PROGRAM request to fabric output
  input  wire      startup_clk,        // 1-bit input: User start-up clock input
  input  wire      startup_gsr,        // 1-bit input: Global Set/Reset input (GSR cannot be used for the port name)
  input  wire      startup_gts,        // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
  input  wire      startup_keyclearb,  // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
  input  wire      startup_pack,       // 1-bit input: PROGRAM acknowledge input
  input  wire      startup_usrcclko,   // 1-bit input: User CCLK input
  input  wire      startup_usrcclkts,  // 1-bit input: User CCLK 3-state enable input
  input  wire      startup_usrdoneo,   // 1-bit input: User DONE pin output control
  input  wire      startup_usrdonets,  // 1-bit input: User DONE 3-state enable output

  //----------------------------------------------------------------------------------------------------------------//
  // PCIe Fast Config: ICAP primitive Interface - only used in Tandem PCIe configuration                            //
  //----------------------------------------------------------------------------------------------------------------//
  input wire           icap_clk,
  input wire           icap_csib,
  input wire           icap_rdwrb,
  input wire  [31:0]   icap_i,
  output wire [31:0]   icap_o,


  input       [ 2:0]   pipe_txprbssel,
  input       [ 2:0]   pipe_rxprbssel,
  input                pipe_txprbsforceerr,
  input                pipe_rxprbscntreset,
  input       [ 2:0]   pipe_loopback,

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
  output                                           ext_ch_gt_drpclk,
  input        [(LINK_CAP_MAX_LINK_WIDTH*9)-1:0]  ext_ch_gt_drpaddr,
  input        [LINK_CAP_MAX_LINK_WIDTH-1:0]      ext_ch_gt_drpen,
  input        [(LINK_CAP_MAX_LINK_WIDTH*16)-1:0] ext_ch_gt_drpdi,
  input        [LINK_CAP_MAX_LINK_WIDTH-1:0]      ext_ch_gt_drpwe,

  output       [(LINK_CAP_MAX_LINK_WIDTH*16)-1:0] ext_ch_gt_drpdo,
  output       [LINK_CAP_MAX_LINK_WIDTH-1:0]      ext_ch_gt_drprdy,

  //----------------------------------------------------------------------------------------------------------------//
  // PIPE PORTS to TOP Level For PIPE SIMULATION with 3rd Party IP/BFM/Xilinx BFM
  //----------------------------------------------------------------------------------------------------------------//
  input  wire   [11:0]  common_commands_in,
  input  wire   [24:0]  pipe_rx_0_sigs,
  input  wire   [24:0]  pipe_rx_1_sigs,
  input  wire   [24:0]  pipe_rx_2_sigs,
  input  wire   [24:0]  pipe_rx_3_sigs,
  input  wire   [24:0]  pipe_rx_4_sigs,
  input  wire   [24:0]  pipe_rx_5_sigs,
  input  wire   [24:0]  pipe_rx_6_sigs,
  input  wire   [24:0]  pipe_rx_7_sigs,

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
  input wire           pipe_mmcm_rst_n,        // Async      | Async
  input wire           sys_clk,
  input wire           sys_rst_n

);

design_1_xdma_0_0_pcie2_ip_core_top  # (
    .LINK_CAP_MAX_LINK_WIDTH (LINK_CAP_MAX_LINK_WIDTH),
    .C_DATA_WIDTH (C_DATA_WIDTH),
    .KEEP_WIDTH (KEEP_WIDTH)
    ) inst
    (
    .pci_exp_txn(pci_exp_txn),
    .pci_exp_txp(pci_exp_txp),
    .pci_exp_rxn(pci_exp_rxn),
    .pci_exp_rxp(pci_exp_rxp),
    .int_pclk_out_slave(int_pclk_out_slave),
    .int_pipe_rxusrclk_out(int_pipe_rxusrclk_out),
    .int_rxoutclk_out(int_rxoutclk_out),
    .int_dclk_out(int_dclk_out),
    .int_userclk1_out(int_userclk1_out),
    .int_mmcm_lock_out(int_mmcm_lock_out),
    .int_userclk2_out(int_userclk2_out),
    .int_oobclk_out(int_oobclk_out),
    .int_qplllock_out(int_qplllock_out),
    .int_qplloutclk_out(int_qplloutclk_out),
    .int_qplloutrefclk_out(int_qplloutrefclk_out),
    .int_pclk_sel_slave(int_pclk_sel_slave),
    .pipe_pclk_in(pipe_pclk_in),
    .pipe_rxusrclk_in(pipe_rxusrclk_in),
    .pipe_rxoutclk_in(pipe_rxoutclk_in),
    .pipe_dclk_in(pipe_dclk_in),
    .pipe_userclk1_in(pipe_userclk1_in),
    .pipe_userclk2_in(pipe_userclk2_in),
    .pipe_oobclk_in(pipe_oobclk_in),
    .pipe_mmcm_lock_in(pipe_mmcm_lock_in),
    .pipe_txoutclk_out(pipe_txoutclk_out),
    .pipe_rxoutclk_out(pipe_rxoutclk_out),
    .pipe_pclk_sel_out(pipe_pclk_sel_out),
    .pipe_gen3_out(pipe_gen3_out),
    .user_clk_out(user_clk_out),
    .user_reset_out(user_reset_out),
    .user_lnk_up(user_lnk_up),
    .user_app_rdy(user_app_rdy),
    .tx_buf_av(tx_buf_av),
    .tx_err_drop(tx_err_drop),
    .tx_cfg_req(tx_cfg_req),
    .s_axis_tx_tready(s_axis_tx_tready),
    .s_axis_tx_tdata(s_axis_tx_tdata),
    .s_axis_tx_tkeep(s_axis_tx_tkeep),
    .s_axis_tx_tuser(s_axis_tx_tuser),
    .s_axis_tx_tlast(s_axis_tx_tlast),
    .s_axis_tx_tvalid(s_axis_tx_tvalid),
    .tx_cfg_gnt(tx_cfg_gnt),
    .m_axis_rx_tdata(m_axis_rx_tdata),
    .m_axis_rx_tkeep(m_axis_rx_tkeep),
    .m_axis_rx_tlast(m_axis_rx_tlast),
    .m_axis_rx_tvalid(m_axis_rx_tvalid),
    .m_axis_rx_tready(m_axis_rx_tready),
    .m_axis_rx_tuser(m_axis_rx_tuser),
    .rx_np_ok(rx_np_ok),
    .rx_np_req(rx_np_req),
    .fc_cpld(fc_cpld),
    .fc_cplh(fc_cplh),
    .fc_npd(fc_npd),
    .fc_nph(fc_nph),
    .fc_pd(fc_pd),
    .fc_ph(fc_ph),
    .fc_sel(fc_sel),
    .cfg_status(cfg_status),
    .cfg_command(cfg_command),
    .cfg_dstatus(cfg_dstatus),
    .cfg_dcommand(cfg_dcommand),
    .cfg_lstatus(cfg_lstatus),
    .cfg_lcommand(cfg_lcommand),
    .cfg_dcommand2(cfg_dcommand2),
    .cfg_pcie_link_state(cfg_pcie_link_state),
    .cfg_pmcsr_pme_en(cfg_pmcsr_pme_en),
    .cfg_pmcsr_powerstate(cfg_pmcsr_powerstate),
    .cfg_pmcsr_pme_status(cfg_pmcsr_pme_status),
    .cfg_received_func_lvl_rst(cfg_received_func_lvl_rst),
    .cfg_mgmt_do(cfg_mgmt_do),
    .cfg_mgmt_rd_wr_done(cfg_mgmt_rd_wr_done),
    .cfg_mgmt_di(cfg_mgmt_di),
    .cfg_mgmt_byte_en(cfg_mgmt_byte_en),
    .cfg_mgmt_dwaddr(cfg_mgmt_dwaddr),
    .cfg_mgmt_wr_en(cfg_mgmt_wr_en),
    .cfg_mgmt_rd_en(cfg_mgmt_rd_en),
    .cfg_mgmt_wr_readonly(cfg_mgmt_wr_readonly),
    .cfg_err_ecrc(cfg_err_ecrc),
    .cfg_err_ur(cfg_err_ur),
    .cfg_err_cpl_timeout(cfg_err_cpl_timeout),
    .cfg_err_cpl_unexpect(cfg_err_cpl_unexpect),
    .cfg_err_cpl_abort(cfg_err_cpl_abort),
    .cfg_err_posted(cfg_err_posted),
    .cfg_err_cor(cfg_err_cor),
    .cfg_err_atomic_egress_blocked(cfg_err_atomic_egress_blocked),
    .cfg_err_internal_cor(cfg_err_internal_cor),
    .cfg_err_malformed(cfg_err_malformed),
    .cfg_err_mc_blocked(cfg_err_mc_blocked),
    .cfg_err_poisoned(cfg_err_poisoned),
    .cfg_err_norecovery(cfg_err_norecovery),
    .cfg_err_tlp_cpl_header(cfg_err_tlp_cpl_header),
    .cfg_err_cpl_rdy(cfg_err_cpl_rdy),
    .cfg_err_locked(cfg_err_locked),
    .cfg_err_acs(cfg_err_acs),
    .cfg_err_internal_uncor(cfg_err_internal_uncor),
    .cfg_trn_pending(cfg_trn_pending),
    .cfg_pm_halt_aspm_l0s(cfg_pm_halt_aspm_l0s),
    .cfg_pm_halt_aspm_l1(cfg_pm_halt_aspm_l1),
    .cfg_pm_force_state_en(cfg_pm_force_state_en),
    .cfg_pm_force_state(cfg_pm_force_state),
    .cfg_dsn(cfg_dsn),
    .cfg_msg_received(cfg_msg_received),
    .cfg_msg_data(cfg_msg_data),
    .cfg_interrupt(cfg_interrupt),
    .cfg_interrupt_rdy(cfg_interrupt_rdy),
    .cfg_interrupt_assert(cfg_interrupt_assert),
    .cfg_interrupt_di(cfg_interrupt_di),
    .cfg_interrupt_do(cfg_interrupt_do),
    .cfg_interrupt_mmenable(cfg_interrupt_mmenable),
    .cfg_interrupt_msienable(cfg_interrupt_msienable),
    .cfg_interrupt_msixenable(cfg_interrupt_msixenable),
    .cfg_interrupt_msixfm(cfg_interrupt_msixfm),
    .cfg_interrupt_stat(cfg_interrupt_stat),
    .cfg_pciecap_interrupt_msgnum(cfg_pciecap_interrupt_msgnum),
    .cfg_to_turnoff(cfg_to_turnoff),
    .cfg_turnoff_ok(cfg_turnoff_ok),
    .cfg_bus_number(cfg_bus_number),
    .cfg_device_number(cfg_device_number),
    .cfg_function_number(cfg_function_number),
    .cfg_pm_wake(cfg_pm_wake),
    .cfg_msg_received_setslotpowerlimit(cfg_msg_received_setslotpowerlimit),
    .cfg_pm_send_pme_to(cfg_pm_send_pme_to),
    .cfg_ds_bus_number(cfg_ds_bus_number),
    .cfg_ds_device_number(cfg_ds_device_number),
    .cfg_ds_function_number(cfg_ds_function_number),
    .cfg_mgmt_wr_rw1c_as_rw(cfg_mgmt_wr_rw1c_as_rw),
    .cfg_bridge_serr_en(cfg_bridge_serr_en),
    .cfg_slot_control_electromech_il_ctl_pulse(cfg_slot_control_electromech_il_ctl_pulse),
    .cfg_root_control_syserr_corr_err_en(cfg_root_control_syserr_corr_err_en),
    .cfg_root_control_syserr_non_fatal_err_en(cfg_root_control_syserr_non_fatal_err_en),
    .cfg_root_control_syserr_fatal_err_en(cfg_root_control_syserr_fatal_err_en),
    .cfg_root_control_pme_int_en(cfg_root_control_pme_int_en),
    .cfg_aer_rooterr_corr_err_reporting_en(cfg_aer_rooterr_corr_err_reporting_en),
    .cfg_aer_rooterr_non_fatal_err_reporting_en(cfg_aer_rooterr_non_fatal_err_reporting_en),
    .cfg_aer_rooterr_fatal_err_reporting_en(cfg_aer_rooterr_fatal_err_reporting_en),
    .cfg_aer_rooterr_corr_err_received(cfg_aer_rooterr_corr_err_received),
    .cfg_aer_rooterr_non_fatal_err_received(cfg_aer_rooterr_non_fatal_err_received),
    .cfg_aer_rooterr_fatal_err_received(cfg_aer_rooterr_fatal_err_received),
    .cfg_msg_received_err_cor(cfg_msg_received_err_cor),
    .cfg_msg_received_err_non_fatal(cfg_msg_received_err_non_fatal),
    .cfg_msg_received_err_fatal(cfg_msg_received_err_fatal),
    .cfg_msg_received_pm_as_nak(cfg_msg_received_pm_as_nak),
    .cfg_msg_received_pm_pme(cfg_msg_received_pm_pme),
    .cfg_msg_received_pme_to_ack(cfg_msg_received_pme_to_ack),
    .cfg_msg_received_assert_int_a(cfg_msg_received_assert_int_a),
    .cfg_msg_received_assert_int_b(cfg_msg_received_assert_int_b),
    .cfg_msg_received_assert_int_c(cfg_msg_received_assert_int_c),
    .cfg_msg_received_assert_int_d(cfg_msg_received_assert_int_d),
    .cfg_msg_received_deassert_int_a(cfg_msg_received_deassert_int_a),
    .cfg_msg_received_deassert_int_b(cfg_msg_received_deassert_int_b),
    .cfg_msg_received_deassert_int_c(cfg_msg_received_deassert_int_c),
    .cfg_msg_received_deassert_int_d(cfg_msg_received_deassert_int_d),
    .pl_directed_link_change(pl_directed_link_change),
    .pl_directed_link_width(pl_directed_link_width),
    .pl_directed_link_speed(pl_directed_link_speed),
    .pl_directed_link_auton(pl_directed_link_auton),
    .pl_upstream_prefer_deemph(pl_upstream_prefer_deemph),
    .pl_sel_lnk_rate(pl_sel_lnk_rate),
    .pl_sel_lnk_width(pl_sel_lnk_width),
    .pl_ltssm_state(pl_ltssm_state),
    .pl_lane_reversal_mode(pl_lane_reversal_mode),
    .pl_phy_lnk_up(pl_phy_lnk_up),
    .pl_tx_pm_state(pl_tx_pm_state),
    .pl_rx_pm_state(pl_rx_pm_state),
    .pl_link_upcfg_cap(pl_link_upcfg_cap),
    .pl_link_gen2_cap(pl_link_gen2_cap),
    .pl_link_partner_gen2_supported(pl_link_partner_gen2_supported),
    .pl_initial_link_width(pl_initial_link_width),
    .pl_directed_change_done(pl_directed_change_done),
    .pl_received_hot_rst(pl_received_hot_rst),
    .pl_transmit_hot_rst(pl_transmit_hot_rst),
    .pl_downstream_deemph_source(pl_downstream_deemph_source),
    .cfg_err_aer_headerlog(cfg_err_aer_headerlog),
    .cfg_aer_interrupt_msgnum(cfg_aer_interrupt_msgnum),
    .cfg_err_aer_headerlog_set(cfg_err_aer_headerlog_set),
    .cfg_aer_ecrc_check_en(cfg_aer_ecrc_check_en),
    .cfg_aer_ecrc_gen_en(cfg_aer_ecrc_gen_en),
    .cfg_vc_tcvc_map(cfg_vc_tcvc_map),
    .pcie_drp_clk(pcie_drp_clk),
    .pcie_drp_en(pcie_drp_en),
    .pcie_drp_we(pcie_drp_we),
    .pcie_drp_addr(pcie_drp_addr),
    .pcie_drp_di(pcie_drp_di),
    .pcie_drp_rdy(pcie_drp_rdy),
    .pcie_drp_do(pcie_drp_do),

    // STARTUP primitive interface - Can only be used with Tandem Configurations
    // This input should be used when the startup block is generated exteranl to the PCI Express Core
    .startup_eos_in(startup_eos_in),         // 1-bit input: This signal should be driven by the EOS output of the STARTUP primitive.
    // These inputs and outputs may be use when the startup block is generated internal to the PCI Express Core.
    .startup_cfgclk(startup_cfgclk),         // 1-bit output: Configuration main clock output
    .startup_cfgmclk(startup_cfgmclk),       // 1-bit output: Configuration internal oscillator clock output
    .startup_eos(startup_eos),               // 1-bit output: Active high output signal indicating the End Of Startup.
    .startup_preq(startup_preq),             // 1-bit output: PROGRAM request to fabric output
    .startup_clk(startup_clk),               // 1-bit input: User start-up clock input
    .startup_gsr(startup_gsr),               // 1-bit input: Global Set/Reset input (GSR cannot be used for the port name)
    .startup_gts(startup_gts),               // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
    .startup_keyclearb(startup_keyclearb),   // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
    .startup_pack(startup_pack),             // 1-bit input: PROGRAM acknowledge input
    .startup_usrcclko(startup_usrcclko),     // 1-bit input: User CCLK input
    .startup_usrcclkts(startup_usrcclkts),   // 1-bit input: User CCLK 3-state enable input
    .startup_usrdoneo(startup_usrdoneo),     // 1-bit input: User DONE pin output control
    .startup_usrdonets(startup_usrdonets),   // 1-bit input: User DONE 3-state enable output

    // ICAP primitive interface  - Can only be used with Tandem PCIe Configuration
    .icap_clk(icap_clk),
    .icap_csib(icap_csib),
    .icap_rdwrb(icap_rdwrb),
    .icap_i(icap_i),
    .icap_o(icap_o),

    //External GT COMMON Ports

    .qpll_drp_crscode                           ( qpll_drp_crscode ),
    .qpll_drp_fsm                               ( qpll_drp_fsm ),
    .qpll_drp_done                              ( qpll_drp_done ),
    .qpll_drp_reset                             ( qpll_drp_reset ),
    .qpll_qplllock                              ( qpll_qplllock ),
    .qpll_qplloutclk                            ( qpll_qplloutclk ),
    .qpll_qplloutrefclk                         ( qpll_qplloutrefclk ),
    .qpll_qplld                                 ( qpll_qplld ),
    .qpll_qpllreset                             ( qpll_qpllreset ),
    .qpll_drp_clk                               ( qpll_drp_clk ),
    .qpll_drp_rst_n                             ( qpll_drp_rst_n ),
    .qpll_drp_ovrd                              ( qpll_drp_ovrd ),
    .qpll_drp_gen3                              ( qpll_drp_gen3),
    .qpll_drp_start                             ( qpll_drp_start ),

   //------------TRANSCEIVER DEBUG-----------------------------------
   //Drive these inputs to 0s
    .ext_ch_gt_drpclk                           (ext_ch_gt_drpclk),
    .ext_ch_gt_drpaddr                          (ext_ch_gt_drpaddr),
    .ext_ch_gt_drpen                            (ext_ch_gt_drpen),
    .ext_ch_gt_drpdi                            (ext_ch_gt_drpdi),
    .ext_ch_gt_drpwe                            (ext_ch_gt_drpwe),
    .ext_ch_gt_drpdo                            (ext_ch_gt_drpdo),
    .ext_ch_gt_drprdy                           (ext_ch_gt_drprdy ),
  
    .pipe_txprbssel                             (pipe_txprbssel),
    .pipe_rxprbssel                             (pipe_rxprbssel),
    .pipe_txprbsforceerr                        (pipe_txprbsforceerr),
    .pipe_rxprbscntreset                        (pipe_rxprbscntreset),
    .pipe_loopback                              (pipe_loopback ),
    .pipe_rxprbserr                             (pipe_rxprbserr),
    .pipe_txinhibit                             (pipe_txinhibit),
    .pipe_rst_fsm                               (pipe_rst_fsm),
    .pipe_qrst_fsm                              (pipe_qrst_fsm),
    .pipe_rate_fsm                              (pipe_rate_fsm),
    .pipe_sync_fsm_tx                           (pipe_sync_fsm_tx),
    .pipe_sync_fsm_rx                           (pipe_sync_fsm_rx),
    .pipe_drp_fsm                               (pipe_drp_fsm),
    .pipe_rst_idle                              (pipe_rst_idle),
    .pipe_qrst_idle                             (pipe_qrst_idle),
    .pipe_rate_idle                             (pipe_rate_idle),
    .pipe_eyescandataerror                      (pipe_eyescandataerror),
    .pipe_rxstatus                              (pipe_rxstatus),
    .pipe_dmonitorout                           (pipe_dmonitorout),
    .pipe_cpll_lock                             ( pipe_cpll_lock ),
    .pipe_qpll_lock                             ( pipe_qpll_lock ),
    .pipe_rxpmaresetdone                        ( pipe_rxpmaresetdone ),       
    .pipe_rxbufstatus                           ( pipe_rxbufstatus ),         
    .pipe_txphaligndone                         ( pipe_txphaligndone ),       
    .pipe_txphinitdone                          ( pipe_txphinitdone ),        
    .pipe_txdlysresetdone                       ( pipe_txdlysresetdone ),    
    .pipe_rxphaligndone                         ( pipe_rxphaligndone ),      
    .pipe_rxdlysresetdone                       ( pipe_rxdlysresetdone ),     
    .pipe_rxsyncdone                            ( pipe_rxsyncdone ),       
    .pipe_rxdisperr                             ( pipe_rxdisperr ),       
    .pipe_rxnotintable                          ( pipe_rxnotintable ),      
    .pipe_rxcommadet                            ( pipe_rxcommadet ),        

   //---------- CHANNEL DRP  --------------------------------
    .gt_ch_drp_rdy                              (gt_ch_drp_rdy),
    .pipe_debug_0                               (pipe_debug_0),
    .pipe_debug_1                               (pipe_debug_1),
    .pipe_debug_2                               (pipe_debug_2),
    .pipe_debug_3                               (pipe_debug_3),
    .pipe_debug_4                               (pipe_debug_4),
    .pipe_debug_5                               (pipe_debug_5),
    .pipe_debug_6                               (pipe_debug_6),
    .pipe_debug_7                               (pipe_debug_7),
    .pipe_debug_8                               (pipe_debug_8),
    .pipe_debug_9                               (pipe_debug_9),
    .pipe_debug                                 (pipe_debug),

    .common_commands_in                         ( common_commands_in  ), 
    .pipe_rx_0_sigs                             ( pipe_rx_0_sigs      ), 
    .pipe_rx_1_sigs                             ( pipe_rx_1_sigs      ), 
    .pipe_rx_2_sigs                             ( pipe_rx_2_sigs      ), 
    .pipe_rx_3_sigs                             ( pipe_rx_3_sigs      ), 
    .pipe_rx_4_sigs                             ( pipe_rx_4_sigs      ), 
    .pipe_rx_5_sigs                             ( pipe_rx_5_sigs      ), 
    .pipe_rx_6_sigs                             ( pipe_rx_6_sigs      ), 
    .pipe_rx_7_sigs                             ( pipe_rx_7_sigs      ), 
                                                                     
    .common_commands_out                        ( common_commands_out ), 
    .pipe_tx_0_sigs                             ( pipe_tx_0_sigs      ), 
    .pipe_tx_1_sigs                             ( pipe_tx_1_sigs      ), 
    .pipe_tx_2_sigs                             ( pipe_tx_2_sigs      ), 
    .pipe_tx_3_sigs                             ( pipe_tx_3_sigs      ), 
    .pipe_tx_4_sigs                             ( pipe_tx_4_sigs      ), 
    .pipe_tx_5_sigs                             ( pipe_tx_5_sigs      ), 
    .pipe_tx_6_sigs                             ( pipe_tx_6_sigs      ), 
    .pipe_tx_7_sigs                             ( pipe_tx_7_sigs      ), 

    .pipe_mmcm_rst_n                            (pipe_mmcm_rst_n),        // Async      | Async
    .sys_clk                                    (sys_clk),
    .sys_rst_n                                  (sys_rst_n)
  );

endmodule



