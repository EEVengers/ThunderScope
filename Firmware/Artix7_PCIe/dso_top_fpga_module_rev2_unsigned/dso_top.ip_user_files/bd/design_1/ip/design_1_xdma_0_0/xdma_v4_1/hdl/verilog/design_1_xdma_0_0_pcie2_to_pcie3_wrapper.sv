//-----------------------------------------------------------------------------
//
// (c) Copyright 2012-2012 Xilinx, Inc. All rights reserved.
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
//
// Project    : The Xilinx PCI Express DMA 
// File       : design_1_xdma_0_0_pcie2_to_pcie3_wrapper.sv
// Version    : 4.1
//-----------------------------------------------------------------------------

`timescale 1ps/1ps

module design_1_xdma_0_0_pcie2_to_pcie3_wrapper #(

  parameter  PL_LINK_CAP_MAX_LINK_WIDTH =  1,
  parameter  C_M_AXIS_RQ_USER_WIDTH     =  60,
  parameter  C_M_AXIS_RC_USER_WIDTH     =  75,
  parameter  C_S_AXIS_CQ_USER_WIDTH     =  85,
  parameter  C_S_AXIS_CC_USER_WIDTH     =  33,
  parameter  C_M_AXIS_DATA_WIDTH        =  128,
  parameter  C_S_AXIS_DATA_WIDTH        =  128,
  parameter  C_S_KEEP_WIDTH             =  C_S_AXIS_DATA_WIDTH / 32,
  parameter  C_M_KEEP_WIDTH             =  C_M_AXIS_DATA_WIDTH / 32,
  parameter  C_AXI_DATA_WIDTH           =  64,
  parameter  C_KEEP_WIDTH               =  C_AXI_DATA_WIDTH/8,
  parameter  C_ADDR_ALGN                =  1,
  parameter  C_LEGACY_INT_EN            =  "TRUE",
  parameter  C_MSI_EN                   =  "TRUE",
  parameter  C_MSIX_EN                  =  "TRUE",
  parameter  TCQ                        =  1

) (

//--------------------------------------------------------------------------------//
// ---------- Virtex-7 Gen3 PCIe Integrated Block Ports ------------------------- //
//--------------------------------------------------------------------------------//

  //---------------------------------------------------------------------------------------//
  //  PCI Express (pci_exp) Interface                                                      //
  //---------------------------------------------------------------------------------------//

  // Tx
  output wire [PL_LINK_CAP_MAX_LINK_WIDTH-1 : 0]    pci_exp_txp,
  output wire [PL_LINK_CAP_MAX_LINK_WIDTH-1 : 0]    pci_exp_txn,

  // Rx
  input  wire [PL_LINK_CAP_MAX_LINK_WIDTH-1 : 0]    pci_exp_rxp,
  input  wire [PL_LINK_CAP_MAX_LINK_WIDTH-1 : 0]    pci_exp_rxn,

  //---------------------------------------------------------------------------------------//
  //  AXI Interface                                                                        //
  //---------------------------------------------------------------------------------------//

  output wire         user_clk,
  output wire         user_reset,
  output wire         user_lnk_up,

  input  wire [C_M_AXIS_DATA_WIDTH-1:0]    s_axis_rq_tdata,
  input  wire [C_M_AXIS_RQ_USER_WIDTH-1:0] s_axis_rq_tuser,
  input  wire [C_M_AXIS_DATA_WIDTH/32-1:0] s_axis_rq_tkeep,
  input  wire                              s_axis_rq_tlast,
  input  wire                              s_axis_rq_tvalid,
  output wire [3:0]                        s_axis_rq_tready,

  output wire [C_M_AXIS_DATA_WIDTH-1:0]    m_axis_rc_tdata,
  output wire [C_M_AXIS_RC_USER_WIDTH-1:0] m_axis_rc_tuser,
  output wire [C_M_AXIS_DATA_WIDTH/32-1:0] m_axis_rc_tkeep,
  output wire                              m_axis_rc_tlast,
  output wire                              m_axis_rc_tvalid,
  input  wire                              m_axis_rc_tready,

  output wire [C_S_AXIS_DATA_WIDTH-1:0]    m_axis_cq_tdata,
  output wire [C_S_AXIS_CQ_USER_WIDTH-1:0] m_axis_cq_tuser,
  output wire [C_S_AXIS_DATA_WIDTH/32-1:0] m_axis_cq_tkeep,
  output wire                              m_axis_cq_tlast,
  output wire                              m_axis_cq_tvalid,
  input  wire                              m_axis_cq_tready,

  input  wire [C_S_AXIS_DATA_WIDTH-1:0]    s_axis_cc_tdata,
  input  wire [C_S_AXIS_CC_USER_WIDTH-1:0] s_axis_cc_tuser,
  input  wire [C_S_AXIS_DATA_WIDTH/32-1:0] s_axis_cc_tkeep,
  input  wire                              s_axis_cc_tlast,
  input  wire                              s_axis_cc_tvalid,
  output wire [3:0]                        s_axis_cc_tready,

  output wire [3:0]   pcie_rq_seq_num,
  output wire         pcie_rq_seq_num_vld,

  output wire [5:0]   pcie_rq_tag,
  output wire         pcie_rq_tag_vld,

  output wire [1:0]   pcie_tfc_nph_av,
  output wire [1:0]   pcie_tfc_npd_av,

  input  wire         pcie_cq_np_req,
  output wire [5:0]   pcie_cq_np_req_count,

  output wire         cfg_phy_link_down,
  output wire [1:0]   cfg_phy_link_status,
  output wire [3:0]   cfg_negotiated_width,
  output wire [2:0]   cfg_current_speed,
  output wire [2:0]   cfg_max_payload,
  output wire [2:0]   cfg_max_read_req,
  output wire [7:0]   cfg_function_status,
  output wire [5:0]   cfg_function_power_state,
  output wire [1:0]   cfg_link_power_state,


  // Error Reporting Interface
  output wire         cfg_err_cor_out,
  output wire         cfg_err_nonfatal_out,
  output wire         cfg_err_fatal_out,

  output wire         cfg_ltr_enable,
  output wire [5:0]   cfg_ltssm_state,
  output wire [1:0]   cfg_rcb_status,
  output wire [1:0]   cfg_dpa_substate_change,
  output wire [1:0]   cfg_obff_enable,
  output wire         cfg_pl_status_change,

  output wire         cfg_msg_received,
  output wire [7:0]   cfg_msg_received_data,
  output wire [4:0]   cfg_msg_received_type,

  input  wire         cfg_msg_transmit,
  input  wire [2:0]   cfg_msg_transmit_type,
  input  wire [31:0]  cfg_msg_transmit_data,
  output wire         cfg_msg_transmit_done,

  output wire [7:0]   cfg_fc_ph,
  output wire [11:0]  cfg_fc_pd,
  output wire [7:0]   cfg_fc_nph,
  output wire [11:0]  cfg_fc_npd,
  output wire [7:0]   cfg_fc_cplh,
  output wire [11:0]  cfg_fc_cpld,
  input  wire [2:0]   cfg_fc_sel,

  input  wire [2:0]   cfg_per_func_status_control,
  output wire [15:0]  cfg_per_func_status_data,
  input  wire [2:0]   cfg_per_function_number,
  input  wire         cfg_per_function_output_request,
  output wire         cfg_per_function_update_done,

  input  wire [15:0]  cfg_subsys_vend_id,

  input  wire [63:0]  cfg_dsn,
  input  wire         cfg_power_state_change_ack,
  output wire         cfg_power_state_change_interrupt,
  input  wire         cfg_err_cor_in,
  input  wire         cfg_err_uncor_in,

  input  wire         cfg_link_training_enable,

  output wire         cfg_ext_read_received,
  output wire         cfg_ext_write_received,
  output wire [9:0]   cfg_ext_register_number,
  output wire [7:0]   cfg_ext_function_number,
  output wire [31:0]  cfg_ext_write_data,
  output wire [3:0]   cfg_ext_write_byte_enable,
  input  wire [31:0]  cfg_ext_read_data,
  input  wire         cfg_ext_read_data_valid,

  //-------------------------------------------------------------------------------//
  // EP Only                                                                       //
  //-------------------------------------------------------------------------------//

  // Interrupt Interface Signals
  input  wire [3:0]   cfg_interrupt_int,
  input  wire [1:0]   cfg_interrupt_pending,
  output wire         cfg_interrupt_sent,

  output wire [1:0]   cfg_interrupt_msi_enable,
  output wire [5:0]   cfg_interrupt_msi_mmenable,
  output wire         cfg_interrupt_msi_mask_update,
  output wire [31:0]  cfg_interrupt_msi_data,
  input  wire [3:0]   cfg_interrupt_msi_select,
  input  wire [31:0]  cfg_interrupt_msi_int,
  input  wire [63:0]  cfg_interrupt_msi_pending_status,
  output wire         cfg_interrupt_msi_sent,
  output wire         cfg_interrupt_msi_fail,

  input  wire [2:0]   cfg_interrupt_msi_attr,
  input  wire         cfg_interrupt_msi_tph_present,
  input  wire [1:0]   cfg_interrupt_msi_tph_type,
  input  wire [8:0]   cfg_interrupt_msi_tph_st_tag,
  input  wire [2:0]   cfg_interrupt_msi_function_number,
  output wire [5:0]   cfg_interrupt_msi_vf_enable,
  output wire [11:0]  cfg_vf_status,
  output wire [17:0]  cfg_vf_power_state,
  output wire [1:0]   cfg_tph_requester_enable,
  output wire [5:0]   cfg_tph_st_mode,
  output wire [5:0]   cfg_vf_tph_requester_enable,
  output wire [17:0]  cfg_vf_tph_st_mode,
  output wire [1:0]   cfg_flr_in_process,
  output wire [5:0]   cfg_vf_flr_in_process,

  // EP only
  input  wire [1:0]   cfg_flr_done,
  input  wire [5:0]   cfg_vf_flr_done,
  output wire         cfg_hot_reset_out,
  input  wire         cfg_config_space_enable,
  input  wire         cfg_req_pm_transition_l23_ready,

  // RP only
  input  wire         cfg_hot_reset_in,

  input  wire [7:0]   cfg_ds_bus_number,
  input  wire [4:0]   cfg_ds_device_number,
  input  wire [2:0]   cfg_ds_function_number,
  input  wire [7:0]   cfg_ds_port_number,





  //--------------------------------------------------------------------------------------//
  //  System(SYS) Interface                                                               //
  //--------------------------------------------------------------------------------------//
  input  wire         sys_clk,
  input  wire         sys_reset
  
);

//--------------------------------------------------------------------------------//
// ---------- Wire and Register Declaration ------------------------------------- //
//--------------------------------------------------------------------------------//
//--------------------------------------------------------------------------------//
// ---------- 7-series Gen2 PCIe Integrated Block Ports ------------------------- //
//--------------------------------------------------------------------------------//
  //--------------------------------------------------------------------------------------//
  // AXI-S Interface                                                                      //
  //--------------------------------------------------------------------------------------//
  // Common
  wire                        g2ip_user_lnk_up;
  wire                        g2ip_user_app_rdy;

  // TX
  wire                        s_axis_tx_tready;
  wire [C_AXI_DATA_WIDTH-1:0] s_axis_tx_tdata;
  wire [C_KEEP_WIDTH-1:0]     s_axis_tx_tkeep;
  wire                        s_axis_tx_tlast;
  wire                        s_axis_tx_tvalid;
  wire [3:0]                  s_axis_tx_tuser;

  // RX
  wire [C_AXI_DATA_WIDTH-1:0] m_axis_rx_tdata;
  wire [C_KEEP_WIDTH-1:0]     m_axis_rx_tkeep;
  wire                        m_axis_rx_tlast;
  wire                        m_axis_rx_tvalid;
  wire                        m_axis_rx_tready;
  wire [21:0]                 m_axis_rx_tuser;

  wire                        rx_np_ok;
  wire                        rx_np_req;

  // MSI-X from cfg_sideband to axi-stream_intf
  wire                        s_axis_tx_msix_tready;
  wire [C_AXI_DATA_WIDTH-1:0] s_axis_tx_msix_tdata;
  wire [C_KEEP_WIDTH-1:0]     s_axis_tx_msix_tkeep;
  wire                        s_axis_tx_msix_tlast;
  wire                        s_axis_tx_msix_tvalid;
  wire [3:0]                  s_axis_tx_msix_tuser;

  //--------------------------------------------------------------------------------------//
  // Flow Control Interface                                                               //
  //--------------------------------------------------------------------------------------//
  wire [11:0]  g2ip_fc_cpld;
  wire [7:0]   g2ip_fc_cplh;
  wire [11:0]  g2ip_fc_npd;
  wire [7:0]   g2ip_fc_nph;
  wire [11:0]  g2ip_fc_pd;
  wire [7:0]   g2ip_fc_ph;
  wire [2:0]   g2ip_fc_sel;

  //--------------------------------------------------------------------------------------//
  // Configuration (CFG) Interface                                                        //
  //--------------------------------------------------------------------------------------//
  wire [4:0]   g2ip_cfg_device_number;
  wire [15:0]  g2ip_cfg_dcommand2;
  wire         g2ip_cfg_pmcsr_pme_status;
  wire [15:0]  g2ip_cfg_status;
  wire         g2ip_cfg_to_turnoff;
  wire         g2ip_cfg_received_func_lvl_rst;
  wire [15:0]  g2ip_cfg_dcommand;
  wire [7:0]   g2ip_cfg_bus_number;
  wire [2:0]   g2ip_cfg_function_number;
  wire [15:0]  g2ip_cfg_command;
  wire [15:0]  g2ip_cfg_dstatus;
  wire [15:0]  g2ip_cfg_lstatus;
  wire [2:0]   g2ip_cfg_pcie_link_state;
  wire [15:0]  g2ip_cfg_lcommand;
  wire         g2ip_cfg_pmcsr_pme_en;
  wire [1:0]   g2ip_cfg_pmcsr_powerstate;
  wire         g2ip_cfg_trn_pending;
  wire         g2ip_cfg_pm_halt_aspm_l0s;
  wire         g2ip_cfg_pm_halt_aspm_l1;
  wire         g2ip_cfg_pm_force_state_en;
  wire [1:0]   g2ip_cfg_pm_force_state;
  wire [63:0]  g2ip_cfg_dsn;
  wire         g2ip_cfg_turnoff_ok;
  wire         g2ip_cfg_pm_wake;
  wire         g2ip_cfg_pm_send_pme_to;
  wire [7:0]   g2ip_cfg_ds_bus_number;
  wire [4:0]   g2ip_cfg_ds_device_number;
  wire [2:0]   g2ip_cfg_ds_function_number;
  wire [5:0]   g2ip_tx_buf_av;
  wire         g2ip_tx_err_drop;
  wire         g2ip_tx_cfg_req;
  wire         g2ip_tx_cfg_gnt;
  //------------------------------------------------//
  // RP Only                                        //
  //------------------------------------------------//
  wire         g2ip_cfg_bridge_serr_en;
  wire         g2ip_cfg_slot_control_electromech_il_ctl_pulse;
  wire         g2ip_cfg_root_control_syserr_corr_err_en;
  wire         g2ip_cfg_root_control_syserr_non_fatal_err_en;
  wire         g2ip_cfg_root_control_syserr_fatal_err_en;
  wire         g2ip_cfg_root_control_pme_int_en;
  wire         g2ip_cfg_aer_rooterr_corr_err_reporting_en;
  wire         g2ip_cfg_aer_rooterr_non_fatal_err_reporting_en;
  wire         g2ip_cfg_aer_rooterr_fatal_err_reporting_en;
  wire         g2ip_cfg_aer_rooterr_corr_err_received;
  wire         g2ip_cfg_aer_rooterr_non_fatal_err_received;
  wire         g2ip_cfg_aer_rooterr_fatal_err_received;

  //--------------------------------------------------------------------------------------//
  // VC interface                                                                         //
  //--------------------------------------------------------------------------------------//
  wire [6:0]   g2ip_cfg_vc_tcvc_map;


  // Error Reporting Interface
  wire         g2ip_cfg_err_ecrc;
  wire         g2ip_cfg_err_ur;
  wire         g2ip_cfg_err_cpl_timeout;
  wire         g2ip_cfg_err_cpl_unexpect;
  wire         g2ip_cfg_err_cpl_abort;
  wire         g2ip_cfg_err_posted;
  wire         g2ip_cfg_err_cor;
  wire         g2ip_cfg_err_atomic_egress_blocked;
  wire         g2ip_cfg_err_internal_cor;
  wire         g2ip_cfg_err_malformed;
  wire         g2ip_cfg_err_mc_blocked;
  wire         g2ip_cfg_err_poisoned;
  wire         g2ip_cfg_err_norecovery;
  wire [47:0]  g2ip_cfg_err_tlp_cpl_header;
  wire         g2ip_cfg_err_cpl_rdy;
  wire         g2ip_cfg_err_locked;
  wire         g2ip_cfg_err_acs;
  wire         g2ip_cfg_err_internal_uncor;
  //--------------------------------------------------------------------------------------//
  // AER Interface                                                                        //
  //--------------------------------------------------------------------------------------//
  wire [127:0] g2ip_cfg_err_aer_headerlog;
  wire [4:0]   g2ip_cfg_aer_interrupt_msgnum;
  wire         g2ip_cfg_err_aer_headerlog_set;
  wire         g2ip_cfg_aer_ecrc_check_en;
  wire         g2ip_cfg_aer_ecrc_gen_en;

  //------------------------------------------------//
  // EP Only                                        //
  //------------------------------------------------//
  wire         g2ip_cfg_interrupt;
  wire         g2ip_cfg_interrupt_rdy;
  wire         g2ip_cfg_interrupt_assert;
  wire [7:0]   g2ip_cfg_interrupt_di;
  wire [7:0]   g2ip_cfg_interrupt_do;
  wire [2:0]   g2ip_cfg_interrupt_mmenable;
  wire         g2ip_cfg_interrupt_msienable;
  wire         g2ip_cfg_interrupt_msixenable;
  wire         g2ip_cfg_interrupt_msixfm;
  wire         g2ip_cfg_interrupt_stat;
  wire [4:0]   g2ip_cfg_pciecap_interrupt_msgnum;

  wire         g2ip_cfg_msg_received_err_cor;
  wire         g2ip_cfg_msg_received_err_non_fatal;
  wire         g2ip_cfg_msg_received_err_fatal;
  wire         g2ip_cfg_msg_received_pm_as_nak;
  wire         g2ip_cfg_msg_received_pme_to_ack;
  wire         g2ip_cfg_msg_received_assert_int_a;
  wire         g2ip_cfg_msg_received_assert_int_b;
  wire         g2ip_cfg_msg_received_assert_int_c;
  wire         g2ip_cfg_msg_received_assert_int_d;
  wire         g2ip_cfg_msg_received_deassert_int_a;
  wire         g2ip_cfg_msg_received_deassert_int_b;
  wire         g2ip_cfg_msg_received_deassert_int_c;
  wire         g2ip_cfg_msg_received_deassert_int_d;

  wire         g2ip_cfg_msg_received_pm_pme;
  wire         g2ip_cfg_msg_received_setslotpowerlimit;
  wire         g2ip_cfg_msg_received;
  wire [15:0]  g2ip_cfg_msg_data;

  //--------------------------------------------------------------------------------------//
  // Physical Layer Control and Status (PL) Interface                                     //
  //--------------------------------------------------------------------------------------//
  wire [1:0]   g2ip_pl_directed_link_change;
  wire [1:0]   g2ip_pl_directed_link_width;
  wire         g2ip_pl_directed_link_speed;
  wire         g2ip_pl_directed_link_auton;
  wire         g2ip_pl_upstream_prefer_deemph;

  wire         g2ip_pl_sel_lnk_rate;
  wire [1:0]   g2ip_pl_sel_lnk_width;
  wire [5:0]   g2ip_pl_ltssm_state;
  wire [1:0]   g2ip_pl_lane_reversal_mode;

  wire         g2ip_pl_phy_lnk_up;
  wire [2:0]   g2ip_pl_tx_pm_state;
  wire [1:0]   g2ip_pl_rx_pm_state;

  wire         g2ip_pl_link_upcfg_cap;
  wire         g2ip_pl_link_gen2_cap;
  wire         g2ip_pl_link_partner_gen2_supported;
  wire [2:0]   g2ip_pl_initial_link_width;

  wire         g2ip_pl_directed_change_done;

  //------------------------------------------------//
  // EP Only                                        //
  //------------------------------------------------//
  wire         g2ip_pl_received_hot_rst;

  //------------------------------------------------//
  // RP Only                                        //
  //------------------------------------------------//
  wire         g2ip_pl_transmit_hot_rst;
  wire         g2ip_pl_downstream_deemph_source;





  // AXI-S RX Interface DMA CPL <-> RX Demux
  wire     [C_AXI_DATA_WIDTH-1:0] m_axis_rx_cpl_tdata;     // RX data
  wire                            m_axis_rx_cpl_tvalid;    // RX data is valid
  wire                            m_axis_rx_cpl_tready;    // RX ready for data
  wire         [C_KEEP_WIDTH-1:0] m_axis_rx_cpl_tkeep;     // RX strobe byte enables
  wire                            m_axis_rx_cpl_tlast;     // RX data is last
  wire                     [21:0] m_axis_rx_cpl_tuser;     // RX user signals

  // AXI-S RX Interface Target Bridge <-> RX Demux
  wire     [C_AXI_DATA_WIDTH-1:0] m_axis_rx_tgt_tdata;     // RX data
  wire                            m_axis_rx_tgt_tvalid;    // RX data is valid
  wire                            m_axis_rx_tgt_tready;    // RX ready for data
  wire         [C_KEEP_WIDTH-1:0] m_axis_rx_tgt_tkeep;     // RX strobe byte enables
  wire                            m_axis_rx_tgt_tlast;     // RX data is last
  wire                     [21:0] m_axis_rx_tgt_tuser;     // RX user signals

  // AXI-S TX Interface DMA REQ <-> TX Mux
  wire     [C_AXI_DATA_WIDTH-1:0] s_axis_tx_req_tdata;     // TX data
  wire                            s_axis_tx_req_tvalid;    // TX data is valid
  wire                            s_axis_tx_req_tready;    // TX ready for data
  wire         [C_KEEP_WIDTH-1:0] s_axis_tx_req_tkeep;     // TX strobe byte enables
  wire                            s_axis_tx_req_tlast;     // TX data is last
  wire                      [3:0] s_axis_tx_req_tuser;     // TX user signals

  // AXI-S TX Interface Target Bridge <-> TX Mux
  wire     [C_AXI_DATA_WIDTH-1:0] s_axis_tx_tgt_tdata;     // TX data
  wire                            s_axis_tx_tgt_tvalid;    // TX data is valid
  wire                            s_axis_tx_tgt_tready;    // TX ready for data
  wire         [C_KEEP_WIDTH-1:0] s_axis_tx_tgt_tkeep;     // TX strobe byte enables
  wire                            s_axis_tx_tgt_tlast;     // TX data is last
  wire                      [3:0] s_axis_tx_tgt_tuser;     // TX user signals

//--------------------------------------------------------------------------------//
// ---------- AXI Stream Signals ------------------------------------------------ //
//--------------------------------------------------------------------------------//
  design_1_xdma_0_0_axi_stream_intf #(

   .C_M_AXIS_RQ_USER_WIDTH  ( C_M_AXIS_RQ_USER_WIDTH ),
   .C_M_AXIS_RC_USER_WIDTH  ( C_M_AXIS_RC_USER_WIDTH ),
   .C_S_AXIS_CQ_USER_WIDTH  ( C_S_AXIS_CQ_USER_WIDTH ),
   .C_S_AXIS_CC_USER_WIDTH  ( C_S_AXIS_CC_USER_WIDTH ),
   .C_M_AXIS_DATA_WIDTH     ( C_M_AXIS_DATA_WIDTH    ),
   .C_S_AXIS_DATA_WIDTH     ( C_S_AXIS_DATA_WIDTH    ),
   .C_S_KEEP_WIDTH          ( C_S_KEEP_WIDTH         ),
   .C_M_KEEP_WIDTH          ( C_M_KEEP_WIDTH         ),
   .C_AXI_DATA_WIDTH        ( C_AXI_DATA_WIDTH       ),
   .C_KEEP_WIDTH            ( C_KEEP_WIDTH           ),
   .C_ADDR_ALGN             ( C_ADDR_ALGN            ),
   .TCQ                     ( TCQ                    )

  ) design_1_xdma_0_0_axi_stream_intf_i (

//--------------------------------------------------------------------------------//
// ---------- 7-series Gen2 PCIe Integrated Block Ports ------------------------- //
//--------------------------------------------------------------------------------//

   .s_axis_tx_msix_tdata               ( s_axis_tx_msix_tdata  ),
   .s_axis_tx_msix_tvalid              ( s_axis_tx_msix_tvalid ),
   .s_axis_tx_msix_tready              ( s_axis_tx_msix_tready ),
   .s_axis_tx_msix_tkeep               ( s_axis_tx_msix_tkeep  ),
   .s_axis_tx_msix_tlast               ( s_axis_tx_msix_tlast  ),
   .s_axis_tx_msix_tuser               ( s_axis_tx_msix_tuser  ),

   .s_axis_tx_tready        ( s_axis_tx_tready       ),
   .s_axis_tx_tdata         ( s_axis_tx_tdata        ),
   .s_axis_tx_tkeep         ( s_axis_tx_tkeep        ),
   .s_axis_tx_tlast         ( s_axis_tx_tlast        ),
   .s_axis_tx_tvalid        ( s_axis_tx_tvalid       ),
   .s_axis_tx_tuser         ( s_axis_tx_tuser        ),

   .m_axis_rx_tdata         ( m_axis_rx_tdata        ),
   .m_axis_rx_tkeep         ( m_axis_rx_tkeep        ),
   .m_axis_rx_tlast         ( m_axis_rx_tlast        ),
   .m_axis_rx_tvalid        ( m_axis_rx_tvalid       ),
   .m_axis_rx_tready        ( m_axis_rx_tready       ),
   .m_axis_rx_tuser         ( m_axis_rx_tuser        ),

   .rx_np_ok                ( rx_np_ok               ),
   .rx_np_req               ( rx_np_req              ),

   .cfg_bus_number          ( g2ip_cfg_bus_number      ),
   .cfg_device_number       ( g2ip_cfg_device_number   ),
   .cfg_function_number     ( g2ip_cfg_function_number ),
  
//--------------------------------------------------------------------------------//
// ---------- Virtex-7 Gen3 PCIe Integrated Block Ports ------------------------- //
//--------------------------------------------------------------------------------//

   .s_axis_rq_tdata         ( s_axis_rq_tdata        ),
   .s_axis_rq_tuser         ( s_axis_rq_tuser        ),
   .s_axis_rq_tkeep         ( s_axis_rq_tkeep        ),
   .s_axis_rq_tlast         ( s_axis_rq_tlast        ),
   .s_axis_rq_tvalid        ( s_axis_rq_tvalid       ),
   .s_axis_rq_tready        ( s_axis_rq_tready       ),

   .m_axis_rc_tdata         ( m_axis_rc_tdata        ),
   .m_axis_rc_tuser         ( m_axis_rc_tuser        ),
   .m_axis_rc_tkeep         ( m_axis_rc_tkeep        ),
   .m_axis_rc_tlast         ( m_axis_rc_tlast        ),
   .m_axis_rc_tvalid        ( m_axis_rc_tvalid       ),
   .m_axis_rc_tready        ( m_axis_rc_tready       ),

   .m_axis_cq_tdata         ( m_axis_cq_tdata        ),
   .m_axis_cq_tuser         ( m_axis_cq_tuser        ),
   .m_axis_cq_tkeep         ( m_axis_cq_tkeep        ),
   .m_axis_cq_tlast         ( m_axis_cq_tlast        ),
   .m_axis_cq_tvalid        ( m_axis_cq_tvalid       ),
   .m_axis_cq_tready        ( m_axis_cq_tready       ),

   .s_axis_cc_tdata         ( s_axis_cc_tdata        ),
   .s_axis_cc_tuser         ( s_axis_cc_tuser        ),
   .s_axis_cc_tkeep         ( s_axis_cc_tkeep        ),
   .s_axis_cc_tlast         ( s_axis_cc_tlast        ),
   .s_axis_cc_tvalid        ( s_axis_cc_tvalid       ),
   .s_axis_cc_tready        ( s_axis_cc_tready       ),

   .pcie_rq_seq_num         ( pcie_rq_seq_num        ),
   .pcie_rq_seq_num_vld     ( pcie_rq_seq_num_vld    ),

   .pcie_rq_tag             ( pcie_rq_tag            ),
   .pcie_rq_tag_vld         ( pcie_rq_tag_vld        ),

   .pcie_cq_np_req          ( pcie_cq_np_req         ),
   .pcie_cq_np_req_count    ( pcie_cq_np_req_count   ),

//--------------------------------------------------------------------------------//
// ---------- System (SYS) Interface -------------------------------------------- //
//--------------------------------------------------------------------------------//
   .user_clk                ( user_clk               ),
   .user_reset              ( user_reset             )

  );

//--------------------------------------------------------------------------------//
// ---------- CFG and Other Sidebands Signals ------------------------------------//
//--------------------------------------------------------------------------------//
  design_1_xdma_0_0_cfg_sideband #(

   .C_AXI_DATA_WIDTH              ( C_AXI_DATA_WIDTH           ),
   .C_KEEP_WIDTH                  ( C_KEEP_WIDTH               ),
   .PL_LINK_CAP_MAX_LINK_WIDTH    ( PL_LINK_CAP_MAX_LINK_WIDTH ),
   .C_LEGACY_INT_EN               ( C_LEGACY_INT_EN            ),
   .C_MSI_EN                      ( C_MSI_EN                   ),
   .C_MSIX_EN                     ( C_MSIX_EN                  ),
   .TCQ                           ( TCQ                        )

  ) design_1_xdma_0_0_cfg_sideband_i (

//--------------------------------------------------------------------------------//
// ---------- 7-series Gen2 PCIe Integrated Block Ports ------------------------- //
//--------------------------------------------------------------------------------//
   //-------------------------------------------------------------------------------------//
   // AXI-S Interface                                                                     //
   //-------------------------------------------------------------------------------------//
   // Common
   .g2ip_user_lnk_up              ( g2ip_user_lnk_up  ),
   .g2ip_user_app_rdy             ( g2ip_user_app_rdy ),

   // TX
   .s_axis_tx_tdata               ( s_axis_tx_msix_tdata  ),
   .s_axis_tx_tvalid              ( s_axis_tx_msix_tvalid ),
   .s_axis_tx_tready              ( s_axis_tx_msix_tready ),
   .s_axis_tx_tkeep               ( s_axis_tx_msix_tkeep  ),
   .s_axis_tx_tlast               ( s_axis_tx_msix_tlast  ),
   .s_axis_tx_tuser               ( s_axis_tx_msix_tuser  ),

   //-------------------------------------------------------------------------------------//
   // Flow Control Interface                                                              //
   //-------------------------------------------------------------------------------------//
   .g2ip_fc_cpld                  ( g2ip_fc_cpld ),
   .g2ip_fc_cplh                  ( g2ip_fc_cplh ),
   .g2ip_fc_npd                   ( g2ip_fc_npd  ),
   .g2ip_fc_nph                   ( g2ip_fc_nph  ),
   .g2ip_fc_pd                    ( g2ip_fc_pd   ),
   .g2ip_fc_ph                    ( g2ip_fc_ph   ),
   .g2ip_fc_sel                   ( g2ip_fc_sel  ),

   //-------------------------------------------------------------------------------------//
   // Configuration (CFG) Interface                                                       //
   //-------------------------------------------------------------------------------------//
   .g2ip_cfg_device_number                  ( g2ip_cfg_device_number         ),
   .g2ip_cfg_dcommand2                      ( g2ip_cfg_dcommand2             ),
   .g2ip_cfg_pmcsr_pme_status               ( g2ip_cfg_pmcsr_pme_status      ),
   .g2ip_cfg_status                         ( g2ip_cfg_status                ),
   .g2ip_cfg_to_turnoff                     ( g2ip_cfg_to_turnoff            ),
   .g2ip_cfg_received_func_lvl_rst          ( g2ip_cfg_received_func_lvl_rst ),
   .g2ip_cfg_dcommand                       ( g2ip_cfg_dcommand              ),
   .g2ip_cfg_bus_number                     ( g2ip_cfg_bus_number            ),
   .g2ip_cfg_function_number                ( g2ip_cfg_function_number       ),
   .g2ip_cfg_command                        ( g2ip_cfg_command               ),
   .g2ip_cfg_dstatus                        ( g2ip_cfg_dstatus               ),
   .g2ip_cfg_lstatus                        ( g2ip_cfg_lstatus               ),
   .g2ip_cfg_pcie_link_state                ( g2ip_cfg_pcie_link_state       ),
   .g2ip_cfg_lcommand                       ( g2ip_cfg_lcommand              ),
   .g2ip_cfg_pmcsr_pme_en                   ( g2ip_cfg_pmcsr_pme_en          ),
   .g2ip_cfg_pmcsr_powerstate               ( g2ip_cfg_pmcsr_powerstate      ),
   .g2ip_cfg_trn_pending                    ( g2ip_cfg_trn_pending           ),
   .g2ip_cfg_pm_halt_aspm_l0s               ( g2ip_cfg_pm_halt_aspm_l0s      ),
   .g2ip_cfg_pm_halt_aspm_l1                ( g2ip_cfg_pm_halt_aspm_l1       ),
   .g2ip_cfg_pm_force_state_en              ( g2ip_cfg_pm_force_state_en     ),
   .g2ip_cfg_pm_force_state                 ( g2ip_cfg_pm_force_state        ),
   .g2ip_cfg_dsn                            ( g2ip_cfg_dsn                   ),
   .g2ip_cfg_turnoff_ok                     ( g2ip_cfg_turnoff_ok            ),
   .g2ip_cfg_pm_wake                        ( g2ip_cfg_pm_wake               ),
   .g2ip_cfg_pm_send_pme_to                 ( g2ip_cfg_pm_send_pme_to        ),
   .g2ip_cfg_ds_bus_number                  ( g2ip_cfg_ds_bus_number         ),
   .g2ip_cfg_ds_device_number               ( g2ip_cfg_ds_device_number      ),
   .g2ip_cfg_ds_function_number             ( g2ip_cfg_ds_function_number    ),
   .g2ip_tx_buf_av                          ( g2ip_tx_buf_av                 ),
   .g2ip_tx_err_drop                        ( g2ip_tx_err_drop               ),
   .g2ip_tx_cfg_req                         ( g2ip_tx_cfg_req                ),
   .g2ip_tx_cfg_gnt                         ( g2ip_tx_cfg_gnt                ),
   //------------------------------------------------//
   // RP Only                                        //
   //------------------------------------------------//
   .g2ip_cfg_bridge_serr_en                         ( g2ip_cfg_bridge_serr_en                         ),
   .g2ip_cfg_slot_control_electromech_il_ctl_pulse  ( g2ip_cfg_slot_control_electromech_il_ctl_pulse  ),
   .g2ip_cfg_root_control_syserr_corr_err_en        ( g2ip_cfg_root_control_syserr_corr_err_en        ),
   .g2ip_cfg_root_control_syserr_non_fatal_err_en   ( g2ip_cfg_root_control_syserr_non_fatal_err_en   ),
   .g2ip_cfg_root_control_syserr_fatal_err_en       ( g2ip_cfg_root_control_syserr_fatal_err_en       ),
   .g2ip_cfg_root_control_pme_int_en                ( g2ip_cfg_root_control_pme_int_en                ),
   .g2ip_cfg_aer_rooterr_corr_err_reporting_en      ( g2ip_cfg_aer_rooterr_corr_err_reporting_en      ),
   .g2ip_cfg_aer_rooterr_non_fatal_err_reporting_en ( g2ip_cfg_aer_rooterr_non_fatal_err_reporting_en ),
   .g2ip_cfg_aer_rooterr_fatal_err_reporting_en     ( g2ip_cfg_aer_rooterr_fatal_err_reporting_en     ),
   .g2ip_cfg_aer_rooterr_corr_err_received          ( g2ip_cfg_aer_rooterr_corr_err_received          ),
   .g2ip_cfg_aer_rooterr_non_fatal_err_received     ( g2ip_cfg_aer_rooterr_non_fatal_err_received     ),
   .g2ip_cfg_aer_rooterr_fatal_err_received         ( g2ip_cfg_aer_rooterr_fatal_err_received         ),

   //-------------------------------------------------------------------------------------//
   // VC interface                                                                        //
   //-------------------------------------------------------------------------------------//
   .g2ip_cfg_vc_tcvc_map                    ( g2ip_cfg_vc_tcvc_map ),


   // Error Reporting Interface
   .g2ip_cfg_err_ecrc                       ( g2ip_cfg_err_ecrc                  ),
   .g2ip_cfg_err_ur                         ( g2ip_cfg_err_ur                    ),
   .g2ip_cfg_err_cpl_timeout                ( g2ip_cfg_err_cpl_timeout           ),
   .g2ip_cfg_err_cpl_unexpect               ( g2ip_cfg_err_cpl_unexpect          ),
   .g2ip_cfg_err_cpl_abort                  ( g2ip_cfg_err_cpl_abort             ),
   .g2ip_cfg_err_posted                     ( g2ip_cfg_err_posted                ),
   .g2ip_cfg_err_cor                        ( g2ip_cfg_err_cor                   ),
   .g2ip_cfg_err_atomic_egress_blocked      ( g2ip_cfg_err_atomic_egress_blocked ),
   .g2ip_cfg_err_internal_cor               ( g2ip_cfg_err_internal_cor          ),
   .g2ip_cfg_err_malformed                  ( g2ip_cfg_err_malformed             ),
   .g2ip_cfg_err_mc_blocked                 ( g2ip_cfg_err_mc_blocked            ),
   .g2ip_cfg_err_poisoned                   ( g2ip_cfg_err_poisoned              ),
   .g2ip_cfg_err_norecovery                 ( g2ip_cfg_err_norecovery            ),
   .g2ip_cfg_err_tlp_cpl_header             ( g2ip_cfg_err_tlp_cpl_header        ),
   .g2ip_cfg_err_cpl_rdy                    ( g2ip_cfg_err_cpl_rdy               ),
   .g2ip_cfg_err_locked                     ( g2ip_cfg_err_locked                ),
   .g2ip_cfg_err_acs                        ( g2ip_cfg_err_acs                   ),
   .g2ip_cfg_err_internal_uncor             ( g2ip_cfg_err_internal_uncor        ),
   //-------------------------------------------------------------------------------------//
   // AER Interface                                                                       //
   //-------------------------------------------------------------------------------------//
   .g2ip_cfg_err_aer_headerlog              ( g2ip_cfg_err_aer_headerlog         ),
   .g2ip_cfg_aer_interrupt_msgnum           ( g2ip_cfg_aer_interrupt_msgnum      ),
   .g2ip_cfg_err_aer_headerlog_set          ( g2ip_cfg_err_aer_headerlog_set     ),
   .g2ip_cfg_aer_ecrc_check_en              ( g2ip_cfg_aer_ecrc_check_en         ),
   .g2ip_cfg_aer_ecrc_gen_en                ( g2ip_cfg_aer_ecrc_gen_en           ),

   //------------------------------------------------//
   // EP Only                                        //
   //------------------------------------------------//
   .g2ip_cfg_interrupt                      ( g2ip_cfg_interrupt                      ),
   .g2ip_cfg_interrupt_rdy                  ( g2ip_cfg_interrupt_rdy                  ),
   .g2ip_cfg_interrupt_assert               ( g2ip_cfg_interrupt_assert               ),
   .g2ip_cfg_interrupt_di                   ( g2ip_cfg_interrupt_di                   ),
   .g2ip_cfg_interrupt_do                   ( g2ip_cfg_interrupt_do                   ),
   .g2ip_cfg_interrupt_mmenable             ( g2ip_cfg_interrupt_mmenable             ),
   .g2ip_cfg_interrupt_msienable            ( g2ip_cfg_interrupt_msienable            ),
   .g2ip_cfg_interrupt_msixenable           ( g2ip_cfg_interrupt_msixenable           ),
   .g2ip_cfg_interrupt_msixfm               ( g2ip_cfg_interrupt_msixfm               ),
   .g2ip_cfg_interrupt_stat                 ( g2ip_cfg_interrupt_stat                 ),
   .g2ip_cfg_pciecap_interrupt_msgnum       ( g2ip_cfg_pciecap_interrupt_msgnum       ),

   .g2ip_cfg_msg_received_err_cor           ( g2ip_cfg_msg_received_err_cor           ),
   .g2ip_cfg_msg_received_err_non_fatal     ( g2ip_cfg_msg_received_err_non_fatal     ),
   .g2ip_cfg_msg_received_err_fatal         ( g2ip_cfg_msg_received_err_fatal         ),
   .g2ip_cfg_msg_received_pm_as_nak         ( g2ip_cfg_msg_received_pm_as_nak         ),
   .g2ip_cfg_msg_received_pme_to_ack        ( g2ip_cfg_msg_received_pme_to_ack        ),
   .g2ip_cfg_msg_received_assert_int_a      ( g2ip_cfg_msg_received_assert_int_a      ),
   .g2ip_cfg_msg_received_assert_int_b      ( g2ip_cfg_msg_received_assert_int_b      ),
   .g2ip_cfg_msg_received_assert_int_c      ( g2ip_cfg_msg_received_assert_int_c      ),
   .g2ip_cfg_msg_received_assert_int_d      ( g2ip_cfg_msg_received_assert_int_d      ),
   .g2ip_cfg_msg_received_deassert_int_a    ( g2ip_cfg_msg_received_deassert_int_a    ),
   .g2ip_cfg_msg_received_deassert_int_b    ( g2ip_cfg_msg_received_deassert_int_b    ),
   .g2ip_cfg_msg_received_deassert_int_c    ( g2ip_cfg_msg_received_deassert_int_c    ),
   .g2ip_cfg_msg_received_deassert_int_d    ( g2ip_cfg_msg_received_deassert_int_d    ),

   .g2ip_cfg_msg_received_pm_pme            ( g2ip_cfg_msg_received_pm_pme            ),
   .g2ip_cfg_msg_received_setslotpowerlimit ( g2ip_cfg_msg_received_setslotpowerlimit ),
   .g2ip_cfg_msg_received                   ( g2ip_cfg_msg_received                   ),
   .g2ip_cfg_msg_data                       ( g2ip_cfg_msg_data                       ),

   //-------------------------------------------------------------------------------------//
   // Physical Layer Control and Status (PL) Interface                                    //
   //-------------------------------------------------------------------------------------//
   .g2ip_pl_directed_link_change           ( g2ip_pl_directed_link_change        ),
   .g2ip_pl_directed_link_width            ( g2ip_pl_directed_link_width         ),
   .g2ip_pl_directed_link_speed            ( g2ip_pl_directed_link_speed         ),
   .g2ip_pl_directed_link_auton            ( g2ip_pl_directed_link_auton         ),
   .g2ip_pl_upstream_prefer_deemph         ( g2ip_pl_upstream_prefer_deemph      ),

   .g2ip_pl_sel_lnk_rate                   ( g2ip_pl_sel_lnk_rate                ),
   .g2ip_pl_sel_lnk_width                  ( g2ip_pl_sel_lnk_width               ),
   .g2ip_pl_ltssm_state                    ( g2ip_pl_ltssm_state                 ),
   .g2ip_pl_lane_reversal_mode             ( g2ip_pl_lane_reversal_mode          ),

   .g2ip_pl_phy_lnk_up                     ( g2ip_pl_phy_lnk_up                  ),
   .g2ip_pl_tx_pm_state                    ( g2ip_pl_tx_pm_state                 ),
   .g2ip_pl_rx_pm_state                    ( g2ip_pl_rx_pm_state                 ),

   .g2ip_pl_link_upcfg_cap                 ( g2ip_pl_link_upcfg_cap              ),
   .g2ip_pl_link_gen2_cap                  ( g2ip_pl_link_gen2_cap               ),
   .g2ip_pl_link_partner_gen2_supported    ( g2ip_pl_link_partner_gen2_supported ),
   .g2ip_pl_initial_link_width             ( g2ip_pl_initial_link_width          ),

   .g2ip_pl_directed_change_done           ( g2ip_pl_directed_change_done        ),

   //------------------------------------------------//
   // EP Only                                        //
   //------------------------------------------------//
   .g2ip_pl_received_hot_rst               ( g2ip_pl_received_hot_rst            ),

   //------------------------------------------------//
   // RP Only                                        //
   //------------------------------------------------//
   .g2ip_pl_transmit_hot_rst               ( g2ip_pl_transmit_hot_rst            ),
   .g2ip_pl_downstream_deemph_source       ( g2ip_pl_downstream_deemph_source    ),





//--------------------------------------------------------------------------------//
// ---------- Virtex-7 Gen3 PCIe Integrated Block Ports ------------------------- //
//--------------------------------------------------------------------------------//

   .user_lnk_up                   ( user_lnk_up                   ),

   .pcie_tfc_nph_av               ( pcie_tfc_nph_av               ),
   .pcie_tfc_npd_av               ( pcie_tfc_npd_av               ),

   .cfg_phy_link_down             ( cfg_phy_link_down             ),
   .cfg_phy_link_status           ( cfg_phy_link_status           ),
   .cfg_negotiated_width          ( cfg_negotiated_width          ),
   .cfg_current_speed             ( cfg_current_speed             ),
   .cfg_max_payload               ( cfg_max_payload               ),
   .cfg_max_read_req              ( cfg_max_read_req              ),
   .cfg_function_status           ( cfg_function_status           ),
   .cfg_function_power_state      ( cfg_function_power_state      ),
   .cfg_link_power_state          ( cfg_link_power_state          ),


   // Error Reporting Interface
   .cfg_err_cor_out               ( cfg_err_cor_out               ),
   .cfg_err_nonfatal_out          ( cfg_err_nonfatal_out          ),
   .cfg_err_fatal_out             ( cfg_err_fatal_out             ),

   .cfg_ltr_enable                ( cfg_ltr_enable                ),
   .cfg_ltssm_state               ( cfg_ltssm_state               ),
   .cfg_rcb_status                ( cfg_rcb_status                ),
   .cfg_dpa_substate_change       ( cfg_dpa_substate_change       ),
   .cfg_obff_enable               ( cfg_obff_enable               ),
   .cfg_pl_status_change          ( cfg_pl_status_change          ),

   .cfg_msg_received              ( cfg_msg_received              ),
   .cfg_msg_received_data         ( cfg_msg_received_data         ),
   .cfg_msg_received_type         ( cfg_msg_received_type         ),

   .cfg_msg_transmit              ( cfg_msg_transmit              ),
   .cfg_msg_transmit_type         ( cfg_msg_transmit_type         ),
   .cfg_msg_transmit_data         ( cfg_msg_transmit_data         ),
   .cfg_msg_transmit_done         ( cfg_msg_transmit_done         ),

   .cfg_fc_ph                     ( cfg_fc_ph                     ),
   .cfg_fc_pd                     ( cfg_fc_pd                     ),
   .cfg_fc_nph                    ( cfg_fc_nph                    ),
   .cfg_fc_npd                    ( cfg_fc_npd                    ),
   .cfg_fc_cplh                   ( cfg_fc_cplh                   ),
   .cfg_fc_cpld                   ( cfg_fc_cpld                   ),
   .cfg_fc_sel                    ( cfg_fc_sel                    ),

   .cfg_per_func_status_control       ( cfg_per_func_status_control       ),
   .cfg_per_func_status_data          ( cfg_per_func_status_data          ),
   .cfg_per_function_number           ( cfg_per_function_number           ),
   .cfg_per_function_output_request   ( cfg_per_function_output_request   ),
   .cfg_per_function_update_done      ( cfg_per_function_update_done      ),

   .cfg_subsys_vend_id                ( cfg_subsys_vend_id                ),

   .cfg_dsn                           ( cfg_dsn                           ),
   .cfg_power_state_change_ack        ( cfg_power_state_change_ack        ),
   .cfg_power_state_change_interrupt  ( cfg_power_state_change_interrupt  ),
   .cfg_err_cor_in                    ( cfg_err_cor_in                    ),
   .cfg_err_uncor_in                  ( cfg_err_uncor_in                  ),

   .cfg_link_training_enable          ( cfg_link_training_enable          ),

   .cfg_ext_read_received             ( cfg_ext_read_received             ),
   .cfg_ext_write_received            ( cfg_ext_write_received            ),
   .cfg_ext_register_number           ( cfg_ext_register_number           ),
   .cfg_ext_function_number           ( cfg_ext_function_number           ),
   .cfg_ext_write_data                ( cfg_ext_write_data                ),
   .cfg_ext_write_byte_enable         ( cfg_ext_write_byte_enable         ),
   .cfg_ext_read_data                 ( cfg_ext_read_data                 ),
   .cfg_ext_read_data_valid           ( cfg_ext_read_data_valid           ),

   //-------------------------------------------------------------------------------//
   //  EP Only                                                                      //
   //-------------------------------------------------------------------------------//

   // Interrupt Interface Signals
   .cfg_interrupt_int                 ( cfg_interrupt_int                 ),
   .cfg_interrupt_pending             ( cfg_interrupt_pending             ),
   .cfg_interrupt_sent                ( cfg_interrupt_sent                ),

   .cfg_interrupt_msi_enable          ( cfg_interrupt_msi_enable          ),
   .cfg_interrupt_msi_mmenable        ( cfg_interrupt_msi_mmenable        ),
   .cfg_interrupt_msi_mask_update     ( cfg_interrupt_msi_mask_update     ),
   .cfg_interrupt_msi_data            ( cfg_interrupt_msi_data            ),
   .cfg_interrupt_msi_select          ( cfg_interrupt_msi_select          ),
   .cfg_interrupt_msi_int             ( cfg_interrupt_msi_int             ),
   .cfg_interrupt_msi_pending_status  ( cfg_interrupt_msi_pending_status  ),
   .cfg_interrupt_msi_sent            ( cfg_interrupt_msi_sent            ),
   .cfg_interrupt_msi_fail            ( cfg_interrupt_msi_fail            ),

   .cfg_interrupt_msi_attr            ( cfg_interrupt_msi_attr            ),
   .cfg_interrupt_msi_tph_present     ( cfg_interrupt_msi_tph_present     ),
   .cfg_interrupt_msi_tph_type        ( cfg_interrupt_msi_tph_type        ),
   .cfg_interrupt_msi_tph_st_tag      ( cfg_interrupt_msi_tph_st_tag      ),
   .cfg_interrupt_msi_function_number ( cfg_interrupt_msi_function_number ),
   .cfg_interrupt_msi_vf_enable       ( cfg_interrupt_msi_vf_enable       ),
   .cfg_vf_status                     ( cfg_vf_status                     ),
   .cfg_vf_power_state                ( cfg_vf_power_state                ),
   .cfg_tph_requester_enable          ( cfg_tph_requester_enable          ),
   .cfg_tph_st_mode                   ( cfg_tph_st_mode                   ),
   .cfg_vf_tph_requester_enable       ( cfg_vf_tph_requester_enable       ),
   .cfg_vf_tph_st_mode                ( cfg_vf_tph_st_mode                ),
   .cfg_flr_in_process                ( cfg_flr_in_process                ),
   .cfg_vf_flr_in_process             ( cfg_vf_flr_in_process             ),

   // EP only
   .cfg_flr_done                      ( cfg_flr_done                      ),
   .cfg_vf_flr_done                   ( cfg_vf_flr_done                   ),
   .cfg_hot_reset_out                 ( cfg_hot_reset_out                 ),
   .cfg_config_space_enable           ( cfg_config_space_enable           ),
   .cfg_req_pm_transition_l23_ready   ( cfg_req_pm_transition_l23_ready   ),

   // RP only
   .cfg_hot_reset_in                  ( cfg_hot_reset_in                  ),

   .cfg_ds_bus_number                 ( cfg_ds_bus_number                 ),
   .cfg_ds_device_number              ( cfg_ds_device_number              ),
   .cfg_ds_function_number            ( cfg_ds_function_number            ),
   .cfg_ds_port_number                ( cfg_ds_port_number                ),





   //-------------------------------------------------------------------------------------//
   // ---------- System (SYS) Interface ------------------------------------------------- //
   //-------------------------------------------------------------------------------------//
   .user_clk                          ( user_clk   ),
   .user_reset                        ( user_reset )

  );

//--------------------------------------------------------------------------------//
// ---------- 7-Series Integrated Block for PCI Express ------------------------- //
//--------------------------------------------------------------------------------//
  design_1_xdma_0_0_pcie2_ip  pcie2_ip_i (

   //-------------------------------------------------------------------------------------//
   // PCI Express (pci_exp) Interface                                                     //
   //-------------------------------------------------------------------------------------//
   // Tx
   .pci_exp_txn                   ( pci_exp_txn ),
   .pci_exp_txp                   ( pci_exp_txp ),

   // Rx
   .pci_exp_rxn                   ( pci_exp_rxn ),
   .pci_exp_rxp                   ( pci_exp_rxp ),

   //-------------------------------------------------------------------------------------//
   // AXI-S Interface                                                                     //
   //-------------------------------------------------------------------------------------//
   // Common
   .user_clk_out                  ( user_clk          ),
   .user_reset_out                ( user_reset        ),
   .user_lnk_up                   ( g2ip_user_lnk_up  ),
   .user_app_rdy                  ( g2ip_user_app_rdy ),

   // TX
   .s_axis_tx_tready              ( s_axis_tx_tready  ),
   .s_axis_tx_tdata               ( s_axis_tx_tdata   ),
   .s_axis_tx_tkeep               ( s_axis_tx_tkeep   ),
   .s_axis_tx_tuser               ( s_axis_tx_tuser   ),
   .s_axis_tx_tlast               ( s_axis_tx_tlast   ),
   .s_axis_tx_tvalid              ( s_axis_tx_tvalid  ),

   // RX
   .m_axis_rx_tdata               ( m_axis_rx_tdata   ),
   .m_axis_rx_tkeep               ( m_axis_rx_tkeep   ),
   .m_axis_rx_tlast               ( m_axis_rx_tlast   ),
   .m_axis_rx_tvalid              ( m_axis_rx_tvalid  ),
   .m_axis_rx_tready              ( m_axis_rx_tready  ),
   .m_axis_rx_tuser               ( m_axis_rx_tuser   ),

   .rx_np_ok                      ( rx_np_ok          ),
   .rx_np_req                     ( rx_np_req         ),

   //-------------------------------------------------------------------------------------//
   // Flow Control Interface                                                              //
   //-------------------------------------------------------------------------------------//
   .fc_cpld                       ( g2ip_fc_cpld ),
   .fc_cplh                       ( g2ip_fc_cplh ),
   .fc_npd                        ( g2ip_fc_npd  ),
   .fc_nph                        ( g2ip_fc_nph  ),
   .fc_pd                         ( g2ip_fc_pd   ),
   .fc_ph                         ( g2ip_fc_ph   ),
   .fc_sel                        ( g2ip_fc_sel  ),

   //-------------------------------------------------------------------------------------//
   // Configuration (CFG) Interface                                                       //
   //-------------------------------------------------------------------------------------//
   .cfg_device_number             ( g2ip_cfg_device_number         ),
   .cfg_dcommand2                 ( g2ip_cfg_dcommand2             ),
   .cfg_pmcsr_pme_status          ( g2ip_cfg_pmcsr_pme_status      ),
   .cfg_status                    ( g2ip_cfg_status                ),
   .cfg_to_turnoff                ( g2ip_cfg_to_turnoff            ),
   .cfg_received_func_lvl_rst     ( g2ip_cfg_received_func_lvl_rst ),
   .cfg_dcommand                  ( g2ip_cfg_dcommand              ),
   .cfg_bus_number                ( g2ip_cfg_bus_number            ),
   .cfg_function_number           ( g2ip_cfg_function_number       ),
   .cfg_command                   ( g2ip_cfg_command               ),
   .cfg_dstatus                   ( g2ip_cfg_dstatus               ),
   .cfg_lstatus                   ( g2ip_cfg_lstatus               ),
   .cfg_pcie_link_state           ( g2ip_cfg_pcie_link_state       ),
   .cfg_lcommand                  ( g2ip_cfg_lcommand              ),
   .cfg_pmcsr_pme_en              ( g2ip_cfg_pmcsr_pme_en          ),
   .cfg_pmcsr_powerstate          ( g2ip_cfg_pmcsr_powerstate      ),
   .cfg_trn_pending               ( g2ip_cfg_trn_pending           ),
   .cfg_pm_halt_aspm_l0s          ( g2ip_cfg_pm_halt_aspm_l0s      ),
   .cfg_pm_halt_aspm_l1           ( g2ip_cfg_pm_halt_aspm_l1       ),
   .cfg_pm_force_state_en         ( g2ip_cfg_pm_force_state_en     ),
   .cfg_pm_force_state            ( g2ip_cfg_pm_force_state        ),
   .cfg_dsn                       ( g2ip_cfg_dsn                   ),
   .cfg_turnoff_ok                ( g2ip_cfg_turnoff_ok            ),
   .cfg_pm_wake                   ( g2ip_cfg_pm_wake               ),
   .cfg_pm_send_pme_to            ( g2ip_cfg_pm_send_pme_to        ),
   .cfg_ds_bus_number             ( g2ip_cfg_ds_bus_number         ),
   .cfg_ds_device_number          ( g2ip_cfg_ds_device_number      ),
   .cfg_ds_function_number        ( g2ip_cfg_ds_function_number    ),
   .tx_buf_av                     ( g2ip_tx_buf_av                 ),
   .tx_err_drop                   ( g2ip_tx_err_drop               ),
   .tx_cfg_req                    ( g2ip_tx_cfg_req                ),
   .tx_cfg_gnt                    ( g2ip_tx_cfg_gnt                ),
   //------------------------------------------------//
   // RP Only                                        //
   //------------------------------------------------//
   .cfg_bridge_serr_en                         ( g2ip_cfg_bridge_serr_en                         ),
   .cfg_slot_control_electromech_il_ctl_pulse  ( g2ip_cfg_slot_control_electromech_il_ctl_pulse  ),
   .cfg_root_control_syserr_corr_err_en        ( g2ip_cfg_root_control_syserr_corr_err_en        ),
   .cfg_root_control_syserr_non_fatal_err_en   ( g2ip_cfg_root_control_syserr_non_fatal_err_en   ),
   .cfg_root_control_syserr_fatal_err_en       ( g2ip_cfg_root_control_syserr_fatal_err_en       ),
   .cfg_root_control_pme_int_en                ( g2ip_cfg_root_control_pme_int_en                ),
   .cfg_aer_rooterr_corr_err_reporting_en      ( g2ip_cfg_aer_rooterr_corr_err_reporting_en      ),
   .cfg_aer_rooterr_non_fatal_err_reporting_en ( g2ip_cfg_aer_rooterr_non_fatal_err_reporting_en ),
   .cfg_aer_rooterr_fatal_err_reporting_en     ( g2ip_cfg_aer_rooterr_fatal_err_reporting_en     ),
   .cfg_aer_rooterr_corr_err_received          ( g2ip_cfg_aer_rooterr_corr_err_received          ),
   .cfg_aer_rooterr_non_fatal_err_received     ( g2ip_cfg_aer_rooterr_non_fatal_err_received     ),
   .cfg_aer_rooterr_fatal_err_received         ( g2ip_cfg_aer_rooterr_fatal_err_received         ),

   //-------------------------------------------------------------------------------------//
   // VC interface                                                                        //
   //-------------------------------------------------------------------------------------//
   .cfg_vc_tcvc_map                    ( g2ip_cfg_vc_tcvc_map ),


   // Error Reporting Interface
   .cfg_err_ecrc                       ( g2ip_cfg_err_ecrc                  ),
   .cfg_err_ur                         ( g2ip_cfg_err_ur                    ),
   .cfg_err_cpl_timeout                ( g2ip_cfg_err_cpl_timeout           ),
   .cfg_err_cpl_unexpect               ( g2ip_cfg_err_cpl_unexpect          ),
   .cfg_err_cpl_abort                  ( g2ip_cfg_err_cpl_abort             ),
   .cfg_err_posted                     ( g2ip_cfg_err_posted                ),
   .cfg_err_cor                        ( g2ip_cfg_err_cor                   ),
   .cfg_err_atomic_egress_blocked      ( g2ip_cfg_err_atomic_egress_blocked ),
   .cfg_err_internal_cor               ( g2ip_cfg_err_internal_cor          ),
   .cfg_err_malformed                  ( g2ip_cfg_err_malformed             ),
   .cfg_err_mc_blocked                 ( g2ip_cfg_err_mc_blocked            ),
   .cfg_err_poisoned                   ( g2ip_cfg_err_poisoned              ),
   .cfg_err_norecovery                 ( g2ip_cfg_err_norecovery            ),
   .cfg_err_tlp_cpl_header             ( g2ip_cfg_err_tlp_cpl_header        ),
   .cfg_err_cpl_rdy                    ( g2ip_cfg_err_cpl_rdy               ),
   .cfg_err_locked                     ( g2ip_cfg_err_locked                ),
   .cfg_err_acs                        ( g2ip_cfg_err_acs                   ),
   .cfg_err_internal_uncor             ( g2ip_cfg_err_internal_uncor        ),
   //-------------------------------------------------------------------------------------//
   // AER Interface                                                                       //
   //-------------------------------------------------------------------------------------//
   .cfg_err_aer_headerlog              ( g2ip_cfg_err_aer_headerlog         ),
   .cfg_aer_interrupt_msgnum           ( g2ip_cfg_aer_interrupt_msgnum      ),
   .cfg_err_aer_headerlog_set          ( g2ip_cfg_err_aer_headerlog_set     ),
   .cfg_aer_ecrc_check_en              ( g2ip_cfg_aer_ecrc_check_en         ),
   .cfg_aer_ecrc_gen_en                ( g2ip_cfg_aer_ecrc_gen_en           ),

   //------------------------------------------------//
   // EP Only                                        //
   //------------------------------------------------//
   .cfg_interrupt                      ( g2ip_cfg_interrupt                      ),
   .cfg_interrupt_rdy                  ( g2ip_cfg_interrupt_rdy                  ),
   .cfg_interrupt_assert               ( g2ip_cfg_interrupt_assert               ),
   .cfg_interrupt_di                   ( g2ip_cfg_interrupt_di                   ),
   .cfg_interrupt_do                   ( g2ip_cfg_interrupt_do                   ),
   .cfg_interrupt_mmenable             ( g2ip_cfg_interrupt_mmenable             ),
   .cfg_interrupt_msienable            ( g2ip_cfg_interrupt_msienable            ),
   .cfg_interrupt_msixenable           ( g2ip_cfg_interrupt_msixenable           ),
   .cfg_interrupt_msixfm               ( g2ip_cfg_interrupt_msixfm               ),
   .cfg_interrupt_stat                 ( g2ip_cfg_interrupt_stat                 ),
   .cfg_pciecap_interrupt_msgnum       ( g2ip_cfg_pciecap_interrupt_msgnum       ),

   .cfg_msg_received_err_cor           ( g2ip_cfg_msg_received_err_cor           ),
   .cfg_msg_received_err_non_fatal     ( g2ip_cfg_msg_received_err_non_fatal     ),
   .cfg_msg_received_err_fatal         ( g2ip_cfg_msg_received_err_fatal         ),
   .cfg_msg_received_pm_as_nak         ( g2ip_cfg_msg_received_pm_as_nak         ),
   .cfg_msg_received_pme_to_ack        ( g2ip_cfg_msg_received_pme_to_ack        ),
   .cfg_msg_received_assert_int_a      ( g2ip_cfg_msg_received_assert_int_a      ),
   .cfg_msg_received_assert_int_b      ( g2ip_cfg_msg_received_assert_int_b      ),
   .cfg_msg_received_assert_int_c      ( g2ip_cfg_msg_received_assert_int_c      ),
   .cfg_msg_received_assert_int_d      ( g2ip_cfg_msg_received_assert_int_d      ),
   .cfg_msg_received_deassert_int_a    ( g2ip_cfg_msg_received_deassert_int_a    ),
   .cfg_msg_received_deassert_int_b    ( g2ip_cfg_msg_received_deassert_int_b    ),
   .cfg_msg_received_deassert_int_c    ( g2ip_cfg_msg_received_deassert_int_c    ),
   .cfg_msg_received_deassert_int_d    ( g2ip_cfg_msg_received_deassert_int_d    ),

   .cfg_msg_received_pm_pme            ( g2ip_cfg_msg_received_pm_pme            ),
   .cfg_msg_received_setslotpowerlimit ( g2ip_cfg_msg_received_setslotpowerlimit ),
   .cfg_msg_received                   ( g2ip_cfg_msg_received                   ),
   .cfg_msg_data                       ( g2ip_cfg_msg_data                       ),

   //-------------------------------------------------------------------------------------//
   // Physical Layer Control and Status (PL) Interface                                    //
   //-------------------------------------------------------------------------------------//
   .pl_directed_link_change            ( g2ip_pl_directed_link_change        ),
   .pl_directed_link_width             ( g2ip_pl_directed_link_width         ),
   .pl_directed_link_speed             ( g2ip_pl_directed_link_speed         ),
   .pl_directed_link_auton             ( g2ip_pl_directed_link_auton         ),
   .pl_upstream_prefer_deemph          ( g2ip_pl_upstream_prefer_deemph      ),

   .pl_sel_lnk_rate                    ( g2ip_pl_sel_lnk_rate                ),
   .pl_sel_lnk_width                   ( g2ip_pl_sel_lnk_width               ),
   .pl_ltssm_state                     ( g2ip_pl_ltssm_state                 ),
   .pl_lane_reversal_mode              ( g2ip_pl_lane_reversal_mode          ),

   .pl_phy_lnk_up                      ( g2ip_pl_phy_lnk_up                  ),
   .pl_tx_pm_state                     ( g2ip_pl_tx_pm_state                 ),
   .pl_rx_pm_state                     ( g2ip_pl_rx_pm_state                 ),

   .pl_link_upcfg_cap                  ( g2ip_pl_link_upcfg_cap              ),
   .pl_link_gen2_cap                   ( g2ip_pl_link_gen2_cap               ),
   .pl_link_partner_gen2_supported     ( g2ip_pl_link_partner_gen2_supported ),
   .pl_initial_link_width              ( g2ip_pl_initial_link_width          ),

   .pl_directed_change_done            ( g2ip_pl_directed_change_done        ),

   //------------------------------------------------//
   // EP Only                                        //
   //------------------------------------------------//
   .pl_received_hot_rst                ( g2ip_pl_received_hot_rst            ),

   //------------------------------------------------//
   // RP Only                                        //
   //------------------------------------------------//
   .pl_transmit_hot_rst                ( g2ip_pl_transmit_hot_rst            ),
   .pl_downstream_deemph_source        ( g2ip_pl_downstream_deemph_source    ),





   //-------------------------------------------------------------------------------------//
   // System  (SYS) Interface                                                             //
   //-------------------------------------------------------------------------------------//
   .sys_clk                             ( sys_clk   ),
   .sys_rst_n                           ( sys_reset )

  );

endmodule
