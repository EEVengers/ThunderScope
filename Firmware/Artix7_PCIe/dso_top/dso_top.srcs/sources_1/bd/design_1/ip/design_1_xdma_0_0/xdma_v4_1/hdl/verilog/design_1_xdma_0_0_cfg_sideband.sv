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
// File       : design_1_xdma_0_0_cfg_sideband.sv
// Version    : 4.1
//-----------------------------------------------------------------------------

`timescale 1ps/1ps

module design_1_xdma_0_0_cfg_sideband #(

  parameter  C_AXI_DATA_WIDTH           =  64,                  // TX interface data width
  parameter  C_KEEP_WIDTH               =  C_AXI_DATA_WIDTH/8,  // TKEEP width for TX
  parameter  PL_LINK_CAP_MAX_LINK_WIDTH =  1,
  parameter  C_LEGACY_INT_EN            =  "TRUE",
  parameter  C_MSI_EN                   =  "TRUE",
  parameter  C_MSIX_EN                  =  "TRUE",
  parameter  TCQ                        =  1

) (

//--------------------------------------------------------------------------------//
// ---------- 7-series Gen2 PCIe Integrated Block Ports ------------------------- //
//--------------------------------------------------------------------------------//
  //--------------------------------------------------------------------------------------//
  // AXI-S Interface                                                                      //
  //--------------------------------------------------------------------------------------//
  // Common
  input  wire         g2ip_user_lnk_up,
  input  wire         g2ip_user_app_rdy,              // Unused

  // TX
  output reg [C_AXI_DATA_WIDTH-1:0] s_axis_tx_tdata,  // TX data
  output reg                        s_axis_tx_tvalid, // TX data is valid
  input                             s_axis_tx_tready, // TX ready for data
  output reg     [C_KEEP_WIDTH-1:0] s_axis_tx_tkeep,  // TX strobe byte enables
  output reg                        s_axis_tx_tlast,  // TX data is last
  output reg                  [3:0] s_axis_tx_tuser,  // TX user signals

  //--------------------------------------------------------------------------------------//
  // Flow Control Interface                                                               //
  //--------------------------------------------------------------------------------------//
  input  wire [11:0]  g2ip_fc_cpld,
  input  wire [7:0]   g2ip_fc_cplh,
  input  wire [11:0]  g2ip_fc_npd,
  input  wire [7:0]   g2ip_fc_nph,
  input  wire [11:0]  g2ip_fc_pd,
  input  wire [7:0]   g2ip_fc_ph,
  output wire [2:0]   g2ip_fc_sel,

  //--------------------------------------------------------------------------------------//
  // Configuration (CFG) Interface                                                        //
  //--------------------------------------------------------------------------------------//
  input  wire [4:0]   g2ip_cfg_device_number,
  input  wire [15:0]  g2ip_cfg_dcommand2,
  input  wire         g2ip_cfg_pmcsr_pme_status,      // Unused
  input  wire [15:0]  g2ip_cfg_status,                // Unused
  input  wire         g2ip_cfg_to_turnoff,            // Unused
  input  wire         g2ip_cfg_received_func_lvl_rst, // Unused
  input  wire [15:0]  g2ip_cfg_dcommand,
  input  wire [7:0]   g2ip_cfg_bus_number,
  input  wire [2:0]   g2ip_cfg_function_number,
  input  wire [15:0]  g2ip_cfg_command,
  input  wire [15:0]  g2ip_cfg_dstatus,
  input  wire [15:0]  g2ip_cfg_lstatus,               // Unused
  input  wire [2:0]   g2ip_cfg_pcie_link_state,       // Unused
  input  wire [15:0]  g2ip_cfg_lcommand,
  input  wire         g2ip_cfg_pmcsr_pme_en,          // Unused
  input  wire [1:0]   g2ip_cfg_pmcsr_powerstate,      // Unused
  output wire         g2ip_cfg_trn_pending,
  output wire         g2ip_cfg_pm_halt_aspm_l0s,
  output wire         g2ip_cfg_pm_halt_aspm_l1,
  output wire         g2ip_cfg_pm_force_state_en,
  output wire [1:0]   g2ip_cfg_pm_force_state,
  output wire [63:0]  g2ip_cfg_dsn,
  output wire         g2ip_cfg_turnoff_ok,
  output wire         g2ip_cfg_pm_wake,
  output wire         g2ip_cfg_pm_send_pme_to,
  output wire [7:0]   g2ip_cfg_ds_bus_number,
  output wire [4:0]   g2ip_cfg_ds_device_number,
  output wire [2:0]   g2ip_cfg_ds_function_number,
  input  wire [5:0]   g2ip_tx_buf_av,                 // Unused
  input  wire         g2ip_tx_err_drop,               // Unused
  input  wire         g2ip_tx_cfg_req,                // Unused
  output wire         g2ip_tx_cfg_gnt,
  //------------------------------------------------//
  // RP Only                                        //
  //------------------------------------------------//
  input  wire         g2ip_cfg_bridge_serr_en,                         // Unused
  input  wire         g2ip_cfg_slot_control_electromech_il_ctl_pulse,  // Unused
  input  wire         g2ip_cfg_root_control_syserr_corr_err_en,        // Unused
  input  wire         g2ip_cfg_root_control_syserr_non_fatal_err_en,   // Unused
  input  wire         g2ip_cfg_root_control_syserr_fatal_err_en,       // Unused
  input  wire         g2ip_cfg_root_control_pme_int_en,                // Unused
  input  wire         g2ip_cfg_aer_rooterr_corr_err_reporting_en,      // Unused
  input  wire         g2ip_cfg_aer_rooterr_non_fatal_err_reporting_en, // Unused
  input  wire         g2ip_cfg_aer_rooterr_fatal_err_reporting_en,     // Unused
  input  wire         g2ip_cfg_aer_rooterr_corr_err_received,          // Unused
  input  wire         g2ip_cfg_aer_rooterr_non_fatal_err_received,     // Unused
  input  wire         g2ip_cfg_aer_rooterr_fatal_err_received,         // Unused

  //--------------------------------------------------------------------------------------//
  // VC interface                                                                         //
  //--------------------------------------------------------------------------------------//
  input  wire [6:0]   g2ip_cfg_vc_tcvc_map,           // Unused


  // Error Reporting Interface
  output wire         g2ip_cfg_err_ecrc,
  output wire         g2ip_cfg_err_ur,
  output wire         g2ip_cfg_err_cpl_timeout,
  output wire         g2ip_cfg_err_cpl_unexpect,
  output wire         g2ip_cfg_err_cpl_abort,
  output wire         g2ip_cfg_err_posted,
  output wire         g2ip_cfg_err_cor,
  output wire         g2ip_cfg_err_atomic_egress_blocked,
  output wire         g2ip_cfg_err_internal_cor,
  output wire         g2ip_cfg_err_malformed,
  output wire         g2ip_cfg_err_mc_blocked,
  output wire         g2ip_cfg_err_poisoned,
  output wire         g2ip_cfg_err_norecovery,
  output wire [47:0]  g2ip_cfg_err_tlp_cpl_header,
  input  wire         g2ip_cfg_err_cpl_rdy,           // Unused
  output wire         g2ip_cfg_err_locked,
  output wire         g2ip_cfg_err_acs,
  output wire         g2ip_cfg_err_internal_uncor,
  //--------------------------------------------------------------------------------------//
  // AER Interface                                                                        //
  //--------------------------------------------------------------------------------------//
  output wire [127:0] g2ip_cfg_err_aer_headerlog,
  output wire [4:0]   g2ip_cfg_aer_interrupt_msgnum,
  input  wire         g2ip_cfg_err_aer_headerlog_set, // Unused
  input  wire         g2ip_cfg_aer_ecrc_check_en,     // Unused
  input  wire         g2ip_cfg_aer_ecrc_gen_en,       // Unused

  //------------------------------------------------//
  // EP Only                                        //
  //------------------------------------------------//
  // Interrupt Interface Signals
  output reg          g2ip_cfg_interrupt,
  input  wire         g2ip_cfg_interrupt_rdy,
  output reg          g2ip_cfg_interrupt_assert,
  output reg  [7:0]   g2ip_cfg_interrupt_di,
  input  wire [7:0]   g2ip_cfg_interrupt_do,          // Unused
  input  wire [2:0]   g2ip_cfg_interrupt_mmenable,
  input  wire         g2ip_cfg_interrupt_msienable,
  input  wire         g2ip_cfg_interrupt_msixenable,  // Unused
  input  wire         g2ip_cfg_interrupt_msixfm,      // Unused
  output wire         g2ip_cfg_interrupt_stat,
  output wire [4:0]   g2ip_cfg_pciecap_interrupt_msgnum,
// Unused Gen2 Ports
  input  wire         g2ip_cfg_msg_received_err_cor,
  input  wire         g2ip_cfg_msg_received_err_non_fatal,
  input  wire         g2ip_cfg_msg_received_err_fatal,
  input  wire         g2ip_cfg_msg_received_pm_as_nak,
  input  wire         g2ip_cfg_msg_received_pme_to_ack,
  input  wire         g2ip_cfg_msg_received_assert_int_a,
  input  wire         g2ip_cfg_msg_received_assert_int_b,
  input  wire         g2ip_cfg_msg_received_assert_int_c,
  input  wire         g2ip_cfg_msg_received_assert_int_d,
  input  wire         g2ip_cfg_msg_received_deassert_int_a,
  input  wire         g2ip_cfg_msg_received_deassert_int_b,
  input  wire         g2ip_cfg_msg_received_deassert_int_c,
  input  wire         g2ip_cfg_msg_received_deassert_int_d,

  input  wire         g2ip_cfg_msg_received_pm_pme,
  input  wire         g2ip_cfg_msg_received_setslotpowerlimit,
  input  wire         g2ip_cfg_msg_received,
  input  wire [15:0]  g2ip_cfg_msg_data,

  //--------------------------------------------------------------------------------------//
  // Physical Layer Control and Status (PL) Interface                                     //
  //--------------------------------------------------------------------------------------//
  output wire [1:0]   g2ip_pl_directed_link_change,
  output wire [1:0]   g2ip_pl_directed_link_width,
  output wire         g2ip_pl_directed_link_speed,
  output wire         g2ip_pl_directed_link_auton,
  output wire         g2ip_pl_upstream_prefer_deemph,

  input  wire         g2ip_pl_sel_lnk_rate,
  input  wire [1:0]   g2ip_pl_sel_lnk_width,
  input  wire [5:0]   g2ip_pl_ltssm_state,
  input  wire [1:0]   g2ip_pl_lane_reversal_mode,

  input  wire         g2ip_pl_phy_lnk_up,
  input  wire [2:0]   g2ip_pl_tx_pm_state,
  input  wire [1:0]   g2ip_pl_rx_pm_state,

  input  wire         g2ip_pl_link_upcfg_cap,
  input  wire         g2ip_pl_link_gen2_cap,
  input  wire         g2ip_pl_link_partner_gen2_supported,
  input  wire [2:0]   g2ip_pl_initial_link_width,

  input  wire         g2ip_pl_directed_change_done,   // Unused

  //------------------------------------------------//
  // EP Only                                        //
  //------------------------------------------------//
  input  wire         g2ip_pl_received_hot_rst,

  //------------------------------------------------//
  // RP Only                                        //
  //------------------------------------------------//
  output wire         g2ip_pl_transmit_hot_rst,
  output wire         g2ip_pl_downstream_deemph_source,




//--------------------------------------------------------------------------------//
// ---------- Virtex-7 Gen3 PCIe Integrated Block Ports ------------------------- //
//--------------------------------------------------------------------------------//
  output wire         user_lnk_up,

  output wire [1:0]   pcie_tfc_nph_av,
  output wire [1:0]   pcie_tfc_npd_av,

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
  //  EP Only                                                                      //
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
  // ---------- System (SYS) Interface -------------------------------------------------- //
  //--------------------------------------------------------------------------------------//
  input  wire         user_clk,
  input  wire         user_reset
  
);

//--------------------------------------------------------------------------------//
// ---------- Local Parameters -------------------------------------------------- //
//--------------------------------------------------------------------------------//

/* // Only enabled if MSI-X is selected
//if (C_MSIX_EN == "TRUE") begin  // MSI-X Interrupt

  localparam        MSIX_STATE_FIRST  = 2'b00;
  localparam        MSIX_STATE_SECOND = 2'b01;
  localparam        MSIX_STATE_LAST   = 2'b10;
  localparam        MSIX_STATE_STATUS = 2'b11;

  // MSI-X TLP Packet Header
  localparam [2:0]  msix_fmt  = 3'b010;    // Memory Write Format
  localparam [4:0]  msix_type = 5'b0_0000; // Memory Write Type
  localparam [2:0]  msix_tc   = 3'b000;    // Traffic Class Default
  localparam [2:0]  msix_attr = 3'b000;    // No ID Based Ordering, No Relaxed Ordering, No Snoop
  localparam        msix_tph  = 1'b0;      // TLP Processing Hints
  localparam        msix_td   = 1'b0;      // TLP Digest
  localparam        msix_ep   = 1'b0;      // Poisoned Bit
  localparam [1:0]  msix_at   = 2'b00;     // Address Translation Default
  localparam [9:0]  msix_len  = 10'h1;     // Length
  localparam [7:0]  msix_tag  = 8'h0;      // Tag
  localparam [3:0]  msix_lbe  = 4'h0;      // Last Byte Enable
  localparam [3:0]  msix_fbe  = 4'hF;      // First Byte Enable

  wire       [63:0] msix_header;
  assign            msix_header = {
                                   g2ip_cfg_bus_number,
                                   g2ip_cfg_device_number,
                                   g2ip_cfg_function_number,
                                   msix_tag,
                                   msix_lbe,
                                   msix_fbe,
                                   msix_fmt,
                                   msix_type,
                                   1'b0,         // Reserved
                                   msix_tc,
                                   1'b0,         // Reserved
                                   msix_attr[2],
                                   1'b0,         // Reserved
                                   msix_tph,
                                   msix_td,
                                   msix_ep,
                                   msix_attr[1:0],
                                   msix_at,
                                   msix_len
                                  };

//end
*/

//--------------------------------------------------------------------------------//
// ---------- Wire and Register Declaration ------------------------------------- //
//--------------------------------------------------------------------------------//
  reg         interrupt_req_fail;
  reg         interrupt_req_sent;
  reg         cfg_interrupt_reg;

/* // Only enabled if MSI-X is selected
//if (C_MSIX_EN == "TRUE") begin  // MSI-X Interrupt
  reg [63:0]  msix_addr;
  reg [31:0]  msix_data;
  reg [1:0]   msix_state;
//end
*/

//--------------------------------------------------------------------------------//
// ----- Sidebands Signals conversion V7 Gen3 HB <-> 7-series Gen2 HB ----------- //
//--------------------------------------------------------------------------------//

  assign user_lnk_up          = g2ip_user_lnk_up;

  //--------------------------------------------------------------------------------------//
  // Flow Control Interface                                                               //
  //--------------------------------------------------------------------------------------//
  assign cfg_fc_cpld          = g2ip_fc_cpld;
  assign cfg_fc_cplh          = g2ip_fc_cplh;
  assign cfg_fc_npd           = g2ip_fc_npd;
  assign cfg_fc_nph           = g2ip_fc_nph;
  assign cfg_fc_pd            = g2ip_fc_pd;
  assign cfg_fc_ph            = g2ip_fc_ph;
  assign g2ip_fc_sel          = cfg_fc_sel;

  assign pcie_tfc_nph_av      = (|g2ip_fc_nph[7:2])  ? 2'b11 : g2ip_fc_nph[1:0];
  assign pcie_tfc_npd_av      = (|g2ip_fc_npd[11:2]) ? 2'b11 : g2ip_fc_npd[1:0];

  //--------------------------------------------------------------------------------------//
  // Configuration (CFG) Interface                                                        //
  //--------------------------------------------------------------------------------------//
  assign cfg_max_payload      = g2ip_cfg_dcommand[7:5];
  assign cfg_max_read_req     = g2ip_cfg_dcommand[14:12];
  assign cfg_function_status  = {{12{1'b0}}, g2ip_cfg_command[10], g2ip_cfg_command[2:0]}; // Only Fn #0 is available in Gen2 HB
  assign cfg_err_cor_out      = g2ip_cfg_dstatus[0];
  assign cfg_err_nonfatal_out = g2ip_cfg_dstatus[1];
  assign cfg_err_fatal_out    = g2ip_cfg_dstatus[2];
  assign cfg_ltr_enable       = g2ip_cfg_dcommand2[10];
  assign cfg_rcb_status       = {{3{1'b0}}, g2ip_cfg_lcommand[3]};                         // Only Fn #0 is available in Gen2 HB

  assign g2ip_cfg_trn_pending        = 1'b0;
  assign g2ip_cfg_pm_halt_aspm_l0s   = 1'b0;
  assign g2ip_cfg_pm_halt_aspm_l1    = 1'b0;
  assign g2ip_cfg_pm_force_state_en  = 1'b0;
  assign g2ip_cfg_pm_force_state     = 2'b00;
  assign g2ip_cfg_dsn                = cfg_dsn;
  assign g2ip_cfg_turnoff_ok         = cfg_req_pm_transition_l23_ready;
  assign g2ip_cfg_pm_wake            = 1'b0;
  assign g2ip_cfg_pm_send_pme_to     = 1'b0;
  assign g2ip_cfg_ds_bus_number      = 8'b0000_0000;
  assign g2ip_cfg_ds_device_number   = 5'b0_0000;
  assign g2ip_cfg_ds_function_number = 3'b000;
  assign g2ip_tx_cfg_gnt             = 1'b1;


  // Error Reporting Interface
  assign g2ip_cfg_err_ecrc                  = 1'b0;
  assign g2ip_cfg_err_ur                    = 1'b0;
  assign g2ip_cfg_err_cpl_timeout           = 1'b0;
  assign g2ip_cfg_err_cpl_unexpect          = 1'b0;
  assign g2ip_cfg_err_cpl_abort             = 1'b0;
  assign g2ip_cfg_err_posted                = 1'b0;
  assign g2ip_cfg_err_cor                   = 1'b0;
  assign g2ip_cfg_err_atomic_egress_blocked = 1'b0;
  assign g2ip_cfg_err_internal_cor          = 1'b0;
  assign g2ip_cfg_err_malformed             = 1'b0;
  assign g2ip_cfg_err_mc_blocked            = 1'b0;
  assign g2ip_cfg_err_poisoned              = 1'b0;
  assign g2ip_cfg_err_norecovery            = 1'b0;
  assign g2ip_cfg_err_tlp_cpl_header        = 48'h0000_0000_0000;
  assign g2ip_cfg_err_locked                = 1'b0;
  assign g2ip_cfg_err_acs                   = 1'b0;
  assign g2ip_cfg_err_internal_uncor        = 1'b0;
  //--------------------------------------------------------------------------------------//
  // AER Interface                                                                        //
  //--------------------------------------------------------------------------------------//
  assign g2ip_cfg_err_aer_headerlog         = 128'h0000_0000_0000_0000_0000_0000_0000_0000;
  assign g2ip_cfg_aer_interrupt_msgnum      = 5'b0_0000;

  //--------------------------------------------------------------------------------------//
  // Interrupt Interface Signals                                                          //
  //--------------------------------------------------------------------------------------//
  assign cfg_interrupt_msi_mmenable        = {{9{1'b0}}, g2ip_cfg_interrupt_mmenable};                                     // Only Fn #0 is available in Gen2 HB
  assign cfg_interrupt_msi_enable          = {1'b0, g2ip_cfg_interrupt_msienable};                                         // Only Fn #0 is available in Gen2 HB
  assign cfg_interrupt_msi_mmenable        = {3'b0, g2ip_cfg_interrupt_mmenable};                                          // Only Fn #0 is available in Gen2 HB
  assign cfg_interrupt_msi_sent            = g2ip_cfg_interrupt_msienable ? interrupt_req_sent : 1'b0;
  assign cfg_interrupt_msi_fail            = g2ip_cfg_interrupt_msienable ? interrupt_req_fail : (|cfg_interrupt_msi_int); // Assert fail bit if MSI is requested but not enabled

  assign g2ip_cfg_interrupt_stat           = 1'b0;                                                                         // Unused
  assign g2ip_cfg_pciecap_interrupt_msgnum = 5'b0_0000;                                                                    // Unused
  assign cfg_interrupt_sent                = ~g2ip_cfg_interrupt_msienable ? interrupt_req_sent : 1'b0;

generate // MSI && Legacy Interrupt logic are in parallel of MSI-X logic. Requirement is that Root will never enable more than 1 interrupt type at the same time

if (C_MSIX_EN == "TRUE") begin : MSI_X_Interrupt  // MSI-X Interrupt

/* // Only enabled if MSI-X is selected
  always @(posedge user_clk) begin
    if (user_reset) begin

      s_axis_tx_tvalid      <= #TCQ 1'b0;
      msix_state            <= #TCQ MSIX_STATE_FIRST;

    end else begin

      g2ip_cfg_interrupt    <= #TCQ 1'b0; // MSI-X does not use CFG sideband signal

      case (msix_state)

        MSIX_STATE_FIRST : begin

          if (C_AXI_DATA_WIDTH == 64) begin
            s_axis_tx_tdata    <= #TCQ 64'h0;
            s_axis_tx_tvalid   <= #TCQ 1'b0;
            s_axis_tx_tkeep    <= #TCQ 8'h00;
            s_axis_tx_tlast    <= #TCQ 1'b0;
            s_axis_tx_tuser    <= #TCQ 4'h0;
          end else begin  // 128-bit
            s_axis_tx_tdata    <= #TCQ 128'h0;
            s_axis_tx_tvalid   <= #TCQ 1'b0;
            s_axis_tx_tkeep    <= #TCQ 16'h0000;
            s_axis_tx_tlast    <= #TCQ 1'b0;
            s_axis_tx_tuser    <= #TCQ 4'h0;
          end

          msix_addr            <= #TCQ cfg_interrupt_msix_address;
          msix_data            <= #TCQ cfg_interrupt_msix_data;

          if (g2ip_cfg_interrupt_msixenable && g2ip_cfg_command[2] && cfg_interrupt_msix_int) begin // MSI-X Enabled && Bus Master Enable bit set && User requested MSI-X

            if (C_AXI_DATA_WIDTH == 64) begin

              s_axis_tx_tdata    <= #TCQ {
                                          msix_header
                                         };
              s_axis_tx_tvalid   <= #TCQ 1'b1;
              s_axis_tx_tkeep    <= #TCQ 8'hFF;
              s_axis_tx_tlast    <= #TCQ 1'b0;
              s_axis_tx_tuser    <= #TCQ 4'h4;      // Set transmit streaming bit

              msix_state              <= #TCQ MSIX_STATE_SECOND;

            end else begin // 128-bit
              s_axis_tx_tdata    <= #TCQ {
                                          (|cfg_interrupt_msix_address[63:32]) ? {cfg_interrupt_msix_address[31:2], 2'b00, cfg_interrupt_msix_address[63:32]} :
                                                                                 {cfg_interrupt_msix_data, cfg_interrupt_msix_address[31:0]},
                                          msix_header
                                         };
              s_axis_tx_tvalid   <= #TCQ 1'b1;
              s_axis_tx_tkeep    <= #TCQ 16'hFFFF;
              s_axis_tx_tlast    <= #TCQ (|cfg_interrupt_msix_address[63:32]) ? 1'b0 : 1'b1;
              s_axis_tx_tuser    <= #TCQ 4'h4;      // Set transmit streaming bit

              msix_state         <= #TCQ (|cfg_interrupt_msix_address[63:32]) ? MSIX_STATE_SECOND : MSIX_STATE_STATUS;

            end // C_AXI_DATA_WIDTH
          end // if msix_int...

        end // MSIX_STATE_FIRST

        MSIX_STATE_SECOND : begin

          if (s_axis_tx_tready) begin
            if (C_AXI_DATA_WIDTH == 64) begin

              if (|msix_addr[63:32]) begin // 64-bit addressing

                s_axis_tx_tdata    <= #TCQ {
                                            msix_addr[31:2], 2'b00,
                                            msix_addr[63:32]
                                           };
                s_axis_tx_tvalid   <= #TCQ 1'b1;
                s_axis_tx_tkeep    <= #TCQ 8'hFF;
                s_axis_tx_tlast    <= #TCQ 1'b0;
                s_axis_tx_tuser    <= #TCQ 4'h4;      // Set transmit streaming bit

                msix_state              <= #TCQ MSIX_STATE_LAST;

              end else begin

                s_axis_tx_tdata    <= #TCQ {
                                            {msix_data[7:0],msix_data[15:8],msix_data[23:16],msix_data[31:24]},
                                            msix_addr[31:2], 2'b00
                                           };
                s_axis_tx_tvalid   <= #TCQ 1'b1;
                s_axis_tx_tkeep    <= #TCQ 8'hFF;
                s_axis_tx_tlast    <= #TCQ 1'b1;
                s_axis_tx_tuser    <= #TCQ 4'h4;      // Set transmit streaming bit

                msix_state         <= #TCQ MSIX_STATE_STATUS;

              end

            end else begin // 128-bit

              // Only here if it was 64-bit addressing
              s_axis_tx_tdata    <= #TCQ {
                                          96'h0,
                                          msix_data
                                         };
              s_axis_tx_tvalid   <= #TCQ 1'b1;
              s_axis_tx_tkeep    <= #TCQ 16'h000F;
              s_axis_tx_tlast    <= #TCQ 1'b1;
              s_axis_tx_tuser    <= #TCQ 4'h4;      // Set transmit streaming bit

              msix_state         <= #TCQ MSIX_STATE_STATUS;

            end // C_AXI_DATA_WIDTH
          end // s_axis_tx_tready

        end // MSIX_STATE_SECOND

        MSIX_STATE_LAST : begin

          if (s_axis_tx_tready) begin
            // Only here if it was 64-bit AXI and 64-bit Addressing
            s_axis_tx_tdata    <= #TCQ {
                                        32'h0,
                                        msix_data
                                       };
            s_axis_tx_tvalid   <= #TCQ 1'b1;
            s_axis_tx_tkeep    <= #TCQ 8'h0F;
            s_axis_tx_tlast    <= #TCQ 1'b1;
            s_axis_tx_tuser    <= #TCQ 4'h4;      // Set transmit streaming bit

            msix_state         <= #TCQ MSIX_STATE_STATUS;
          end // s_axis_tx_tready

        end // MSIX_STATE_LAST

        MSIX_STATE_STATUS : begin

          if (s_axis_tx_tready) begin
            if (C_AXI_DATA_WIDTH == 64) begin
              s_axis_tx_tdata    <= #TCQ 64'h0;
              s_axis_tx_tvalid   <= #TCQ 1'b0;
              s_axis_tx_tkeep    <= #TCQ 8'h00;
              s_axis_tx_tlast    <= #TCQ 1'b0;
              s_axis_tx_tuser    <= #TCQ 4'h0;
            end else begin  // 128-bit
              s_axis_tx_tdata    <= #TCQ 128'h0;
              s_axis_tx_tvalid   <= #TCQ 1'b0;
              s_axis_tx_tkeep    <= #TCQ 16'h0000;
              s_axis_tx_tlast    <= #TCQ 1'b0;
              s_axis_tx_tuser    <= #TCQ 4'h0;
            end

            msix_state         <= #TCQ MSIX_STATE_FIRST;
          end // s_axis_tx_tready

        end // MSIX_STATE_STATUS

        default : begin

          if (C_AXI_DATA_WIDTH == 64) begin
            s_axis_tx_tdata    <= #TCQ 64'h0;
            s_axis_tx_tvalid   <= #TCQ 1'b0;
            s_axis_tx_tkeep    <= #TCQ 8'h00;
            s_axis_tx_tlast    <= #TCQ 1'b0;
            s_axis_tx_tuser    <= #TCQ 4'h0;
          end else begin  // 128-bit
            s_axis_tx_tdata    <= #TCQ 128'h0;
            s_axis_tx_tvalid   <= #TCQ 1'b0;
            s_axis_tx_tkeep    <= #TCQ 16'h0000;
            s_axis_tx_tlast    <= #TCQ 1'b0;
            s_axis_tx_tuser    <= #TCQ 4'h0;
          end

          msix_state           <= #TCQ MSIX_STATE_FIRST;

        end // default

      endcase
    end // if
  end // always

  assign cfg_interrupt_msix_mask           = {1'b0, g2ip_cfg_interrupt_msixfm};            // Only Fn #0 is available in Gen2 HB
  assign cfg_interrupt_msix_enable         = {1'b0, g2ip_cfg_interrupt_msixenable};        // Only Fn #0 is available in Gen2 HB
  assign cfg_interrupt_msix_vf_enable      = 6'b00_0000;                                   // No VF Support
  assign cfg_interrupt_msix_vf_mask        = 6'b00_0000;                                   // No VF Support

  // MSI-X TLP has been sent to PCIe IP
  assign cfg_interrupt_msix_sent           = ( (msix_state == MSIX_STATE_STATUS) && s_axis_tx_tready ) ? 1'b1 : 1'b0;

  // User requested MSI-X && (MSI-X not enabled || Bus Master Enable bit not set)
  assign cfg_interrupt_msix_fail           = cfg_interrupt_msix_int && ( (!g2ip_cfg_interrupt_msixenable) || (!g2ip_cfg_command[2]) );

*/
end // C_MSIX_EN
else begin // no MSI-X

  always @(posedge user_clk) begin
    if (C_AXI_DATA_WIDTH == 64) begin
      s_axis_tx_tdata    <= #TCQ 64'h0;
      s_axis_tx_tvalid   <= #TCQ 1'b0;
      s_axis_tx_tkeep    <= #TCQ 8'h00;
      s_axis_tx_tlast    <= #TCQ 1'b0;
      s_axis_tx_tuser    <= #TCQ 4'h0;
    end else begin  // 128-bit
      s_axis_tx_tdata    <= #TCQ 128'h0;
      s_axis_tx_tvalid   <= #TCQ 1'b0;
      s_axis_tx_tkeep    <= #TCQ 16'h0000;
      s_axis_tx_tlast    <= #TCQ 1'b0;
      s_axis_tx_tuser    <= #TCQ 4'h0;
    end // C_AXI_DATA_WIDTH
  end // always

//  assign cfg_interrupt_msix_mask           = 2'b00;
//  assign cfg_interrupt_msix_enable         = 2'b00;
//  assign cfg_interrupt_msix_vf_enable      = 6'b00_0000;
//  assign cfg_interrupt_msix_vf_mask        = 6'b00_0000;
//  assign cfg_interrupt_msix_sent           = 1'b0;
//  assign cfg_interrupt_msix_fail           = cfg_interrupt_msix_int; // Assert fail bit each time MSI-X is requested

end // no MSI-X

if ( ((C_LEGACY_INT_EN == "TRUE") || (C_MSI_EN == "TRUE")) && (C_MSIX_EN == "FALSE") ) begin : Legacy_MSI_Interrupt

  always @(posedge user_clk) begin
    if (user_reset) begin

      g2ip_cfg_interrupt         <= #TCQ 1'b0;
      g2ip_cfg_interrupt_assert  <= #TCQ 1'b0;
      interrupt_req_sent         <= #TCQ 1'b0;
      interrupt_req_fail         <= #TCQ 1'b0;
      cfg_interrupt_reg          <= #TCQ 1'b0;

    end else begin

      if (g2ip_cfg_interrupt_msienable) begin  // MSI Interrupt Enabled by Host

        casex(cfg_interrupt_msi_int)
          32'bxxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xx1x : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd1};
          32'bxxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_x1xx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd2};
          32'bxxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_1xxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd3};
          32'bxxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxx1_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd4};
          32'bxxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xx1x_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd5};
          32'bxxxx_xxxx_xxxx_xxxx_xxxx_xxxx_x1xx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd6};
          32'bxxxx_xxxx_xxxx_xxxx_xxxx_xxxx_1xxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd7};
          32'bxxxx_xxxx_xxxx_xxxx_xxxx_xxx1_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd8};
          32'bxxxx_xxxx_xxxx_xxxx_xxxx_xx1x_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd9};
          32'bxxxx_xxxx_xxxx_xxxx_xxxx_x1xx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd10};
          32'bxxxx_xxxx_xxxx_xxxx_xxxx_1xxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd11};
          32'bxxxx_xxxx_xxxx_xxxx_xxx1_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd12};
          32'bxxxx_xxxx_xxxx_xxxx_xx1x_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd13};
          32'bxxxx_xxxx_xxxx_xxxx_x1xx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd14};
          32'bxxxx_xxxx_xxxx_xxxx_1xxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd15};
          32'bxxxx_xxxx_xxxx_xxx1_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd16};
          32'bxxxx_xxxx_xxxx_xx1x_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd17};
          32'bxxxx_xxxx_xxxx_x1xx_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd18};
          32'bxxxx_xxxx_xxxx_1xxx_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd19};
          32'bxxxx_xxxx_xxx1_xxxx_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd20};
          32'bxxxx_xxxx_xx1x_xxxx_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd21};
          32'bxxxx_xxxx_x1xx_xxxx_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd22};
          32'bxxxx_xxxx_1xxx_xxxx_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd23};
          32'bxxxx_xxx1_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd24};
          32'bxxxx_xx1x_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd25};
          32'bxxxx_x1xx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd26};
          32'bxxxx_1xxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd27};
          32'bxxx1_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd28};
          32'bxx1x_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd29};
          32'bx1xx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd30};
          32'b1xxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx : g2ip_cfg_interrupt_di <= #TCQ {2'b0, 5'd31};
          default                                     : g2ip_cfg_interrupt_di <= #TCQ 7'b0;
        endcase

        if ( ((|cfg_interrupt_msi_int) == 1'b1) && (!cfg_interrupt_reg) && (!g2ip_cfg_command[2]) ) begin // 0-1 Transition User requested MSI && Bus Master Enable bit is NOT set
          interrupt_req_sent        <= #TCQ 1'b0;
          interrupt_req_fail        <= #TCQ 1'b1;
        end else if (g2ip_cfg_interrupt_rdy) begin
          if ( g2ip_cfg_interrupt_di < (2**g2ip_cfg_interrupt_mmenable) ) begin
            interrupt_req_sent      <= #TCQ 1'b1;
          end else begin
            interrupt_req_fail      <= #TCQ 1'b1;
          end
        end else begin
          interrupt_req_sent        <= #TCQ 1'b0;
          interrupt_req_fail        <= #TCQ 1'b0;
        end

        if ( (|cfg_interrupt_msi_int) == 1'b1 && (!cfg_interrupt_reg) && g2ip_cfg_command[2] ) begin // 0-1 Transition User requested MSI && Bus Master Enable bit is set
          g2ip_cfg_interrupt        <= #TCQ 1'b1;
        end else begin
          if (g2ip_cfg_interrupt_rdy) begin
            g2ip_cfg_interrupt      <= #TCQ 1'b0;
          end
        end

        cfg_interrupt_reg     <= #TCQ g2ip_cfg_interrupt;


      end else begin
        // Legacy Interrupt Enabled

        g2ip_cfg_interrupt_di     <= #TCQ 8'h0; // Only INTA is supported in 7-series

        if (cfg_interrupt_int[0] != cfg_interrupt_reg) begin
          g2ip_cfg_interrupt_assert <= #TCQ cfg_interrupt_int[0];
          g2ip_cfg_interrupt        <= #TCQ 1'b1;
          cfg_interrupt_reg         <= #TCQ cfg_interrupt_int[0];
        end else begin
          if (g2ip_cfg_interrupt_rdy) begin
            g2ip_cfg_interrupt      <= #TCQ 1'b0;
            interrupt_req_sent      <= #TCQ 1'b1;
          end
        end

        if (interrupt_req_sent) begin
          interrupt_req_sent        <= #TCQ 1'b0;
        end

      end // if MSI or legacy interrupt

    end // if !reset
  end // always

end // Legacy or MSI Interrupt
else begin // No Legacy or MSI Interrupt

  always @(*) begin
    g2ip_cfg_interrupt         <= #TCQ 1'b0;
    g2ip_cfg_interrupt_assert  <= #TCQ 1'b0;
    g2ip_cfg_interrupt_di      <= #TCQ 8'h0;
    interrupt_req_sent         <= #TCQ 1'b0;
    interrupt_req_fail         <= #TCQ 1'b0;
  end

end
endgenerate

  //--------------------------------------------------------------------------------------//
  // Physical Layer Control and Status (PL) Interface                                     //
  //--------------------------------------------------------------------------------------//
  assign g2ip_pl_directed_link_change   = 2'b00;
  assign g2ip_pl_directed_link_width    = 2'b00;
  assign g2ip_pl_directed_link_speed    = 1'b0;
  assign g2ip_pl_directed_link_auton    = 1'b0;
  assign g2ip_pl_upstream_prefer_deemph = 1'b0;

  assign cfg_current_speed              = g2ip_pl_sel_lnk_rate ? 3'b010 : 3'b001;
  assign cfg_negotiated_width           =  (g2ip_pl_sel_lnk_width == 2'b00) ? 4'b0001 :
                                          ((g2ip_pl_sel_lnk_width == 2'b01) ? 4'b0010 :
                                          ((g2ip_pl_sel_lnk_width == 2'b10) ? 4'b0100 :
                                                                              4'b1000 ));

  assign cfg_phy_link_down              = ~g2ip_pl_phy_lnk_up;
  assign cfg_phy_link_status            = {2{g2ip_pl_phy_lnk_up}};



endmodule
