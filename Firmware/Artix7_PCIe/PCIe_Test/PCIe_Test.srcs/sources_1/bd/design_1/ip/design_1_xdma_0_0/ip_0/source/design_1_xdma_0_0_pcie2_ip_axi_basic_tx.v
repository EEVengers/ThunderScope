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
// File       : design_1_xdma_0_0_pcie2_ip_axi_basic_tx.v
// Version    : 3.3
//                                                                            //
//  Description:                                                              //
//  AXI to TRN TX module. Instantiates pipeline and throttle control TX       //
//  submodules.                                                               //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_basic_top                                                           //
//      axi_basic_tx                                                          //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_axi_basic_tx #(
  parameter C_DATA_WIDTH  = 128,          // RX/TX interface data width
  parameter C_FAMILY      = "X7",         // Targeted FPGA family
  parameter C_ROOT_PORT   = "FALSE",      // PCIe block is in root port mode
  parameter C_PM_PRIORITY = "FALSE",      // Disable TX packet boundary thrtl
  parameter TCQ = 1,                      // Clock to Q time

  // Do not override parameters below this line
  parameter REM_WIDTH  = (C_DATA_WIDTH == 128) ? 2 : 1, // trem/rrem width
  parameter KEEP_WIDTH = C_DATA_WIDTH / 8               // KEEP width
  ) (
  //---------------------------------------------//
  // User Design I/O                             //
  //---------------------------------------------//

  // AXI TX
  //-----------
  input   [C_DATA_WIDTH-1:0] s_axis_tx_tdata,        // TX data from user
  input                      s_axis_tx_tvalid,       // TX data is valid
  output                     s_axis_tx_tready,       // TX ready for data
  input     [KEEP_WIDTH-1:0] s_axis_tx_tkeep,        // TX strobe byte enables
  input                      s_axis_tx_tlast,        // TX data is last
  input                [3:0] s_axis_tx_tuser,        // TX user signals

  // User Misc.
  //-----------
  input                      user_turnoff_ok,        // Turnoff OK from user
  input                      user_tcfg_gnt,          // Send cfg OK from user

  //---------------------------------------------//
  // PCIe Block I/O                              //
  //---------------------------------------------//

  // TRN TX
  //-----------
  output [C_DATA_WIDTH-1:0] trn_td,                  // TX data from block
  output                    trn_tsof,                // TX start of packet
  output                    trn_teof,                // TX end of packet
  output                    trn_tsrc_rdy,            // TX source ready
  input                     trn_tdst_rdy,            // TX destination ready
  output                    trn_tsrc_dsc,            // TX source discontinue
  output    [REM_WIDTH-1:0] trn_trem,                // TX remainder
  output                    trn_terrfwd,             // TX error forward
  output                    trn_tstr,                // TX streaming enable
  input               [5:0] trn_tbuf_av,             // TX buffers available
  output                    trn_tecrc_gen,           // TX ECRC generate

  // TRN Misc.
  //-----------
  input                     trn_tcfg_req,            // TX config request
  output                    trn_tcfg_gnt,            // RX config grant
  input                     trn_lnk_up,              // PCIe link up

  // 7 Series/Virtex6 PM
  //-----------
  input               [2:0] cfg_pcie_link_state,     // Encoded PCIe link state

  // Virtex6 PM
  //-----------
  input                     cfg_pm_send_pme_to,      // PM send PME turnoff msg
  input               [1:0] cfg_pmcsr_powerstate,    // PMCSR power state
  input              [31:0] trn_rdllp_data,          // RX DLLP data
  input                     trn_rdllp_src_rdy,       // RX DLLP source ready

  // Virtex6/Spartan6 PM
  //-----------
  input                     cfg_to_turnoff,          // Turnoff request
  output                    cfg_turnoff_ok,          // Turnoff grant

  // System
  //-----------
  input                     user_clk,                // user clock from block
  input                     user_rst                 // user reset from block
);


wire tready_thrtl;

//---------------------------------------------//
// TX Data Pipeline                            //
//---------------------------------------------//

design_1_xdma_0_0_pcie2_ip_axi_basic_tx_pipeline #(
  .C_DATA_WIDTH( C_DATA_WIDTH ),
  .C_PM_PRIORITY( C_PM_PRIORITY ),
  .TCQ( TCQ ),

  .REM_WIDTH( REM_WIDTH ),
  .KEEP_WIDTH( KEEP_WIDTH )
) tx_pipeline_inst (

  // Incoming AXI RX
  //-----------
  .s_axis_tx_tdata( s_axis_tx_tdata ),
  .s_axis_tx_tready( s_axis_tx_tready ),
  .s_axis_tx_tvalid( s_axis_tx_tvalid ),
  .s_axis_tx_tkeep( s_axis_tx_tkeep ),
  .s_axis_tx_tlast( s_axis_tx_tlast ),
  .s_axis_tx_tuser( s_axis_tx_tuser ),

  // Outgoing TRN TX
  //-----------
  .trn_td( trn_td ),
  .trn_tsof( trn_tsof ),
  .trn_teof( trn_teof ),
  .trn_tsrc_rdy( trn_tsrc_rdy ),
  .trn_tdst_rdy( trn_tdst_rdy ),
  .trn_tsrc_dsc( trn_tsrc_dsc ),
  .trn_trem( trn_trem ),
  .trn_terrfwd( trn_terrfwd ),
  .trn_tstr( trn_tstr ),
  .trn_tecrc_gen( trn_tecrc_gen ),
  .trn_lnk_up( trn_lnk_up ),

  // System
  //-----------
  .tready_thrtl( tready_thrtl ),
  .user_clk( user_clk ),
  .user_rst( user_rst )
);


//---------------------------------------------//
// TX Throttle Controller                      //
//---------------------------------------------//

generate
  if(C_PM_PRIORITY == "FALSE") begin : thrtl_ctl_enabled
design_1_xdma_0_0_pcie2_ip_axi_basic_tx_thrtl_ctl #(
      .C_DATA_WIDTH( C_DATA_WIDTH ),
      .C_FAMILY( C_FAMILY ),
      .C_ROOT_PORT( C_ROOT_PORT ),
      .TCQ( TCQ )

    ) tx_thrl_ctl_inst (

      // Outgoing AXI TX
      //-----------
      .s_axis_tx_tdata( s_axis_tx_tdata ),
      .s_axis_tx_tvalid( s_axis_tx_tvalid ),
      .s_axis_tx_tuser( s_axis_tx_tuser ),
      .s_axis_tx_tlast( s_axis_tx_tlast ),

      // User Misc.
      //-----------
      .user_turnoff_ok( user_turnoff_ok ),
      .user_tcfg_gnt( user_tcfg_gnt ),

      // Incoming TRN RX
      //-----------
      .trn_tbuf_av( trn_tbuf_av ),
      .trn_tdst_rdy( trn_tdst_rdy ),

      // TRN Misc.
      //-----------
      .trn_tcfg_req( trn_tcfg_req ),
      .trn_tcfg_gnt( trn_tcfg_gnt ),
      .trn_lnk_up( trn_lnk_up ),

      // 7 Seriesq/Virtex6 PM
      //-----------
      .cfg_pcie_link_state( cfg_pcie_link_state ),

      // Virtex6 PM
      //-----------
      .cfg_pm_send_pme_to( cfg_pm_send_pme_to ),
      .cfg_pmcsr_powerstate( cfg_pmcsr_powerstate ),
      .trn_rdllp_data( trn_rdllp_data ),
      .trn_rdllp_src_rdy( trn_rdllp_src_rdy ),

      // Spartan6 PM
      //-----------
      .cfg_to_turnoff( cfg_to_turnoff ),
      .cfg_turnoff_ok( cfg_turnoff_ok ),

      // System
      //-----------
      .tready_thrtl( tready_thrtl ),
      .user_clk( user_clk ),
      .user_rst( user_rst )
    );
  end
  else begin : thrtl_ctl_disabled
    assign tready_thrtl   = 1'b0;

    assign cfg_turnoff_ok = user_turnoff_ok;
    assign trn_tcfg_gnt   = user_tcfg_gnt;
  end
endgenerate

endmodule
