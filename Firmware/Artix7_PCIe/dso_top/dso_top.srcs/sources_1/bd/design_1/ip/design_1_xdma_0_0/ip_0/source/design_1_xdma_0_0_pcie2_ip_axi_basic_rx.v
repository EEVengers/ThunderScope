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
// File       : design_1_xdma_0_0_pcie2_ip_axi_basic_rx.v
// Version    : 3.3
//                                                                            //
//  Description:                                                              //
//  TRN to AXI RX module. Instantiates pipeline and null generator RX         //
//  submodules.                                                               //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_basic_top                                                           //
//      axi_basic_rx                                                          //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_axi_basic_rx #(
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

  // AXI RX
  //-----------
  output  [C_DATA_WIDTH-1:0] m_axis_rx_tdata,        // RX data to user
  output                     m_axis_rx_tvalid,       // RX data is valid
  input                      m_axis_rx_tready,       // RX ready for data
  output    [KEEP_WIDTH-1:0] m_axis_rx_tkeep,        // RX strobe byte enables
  output                     m_axis_rx_tlast,        // RX data is last
  output              [21:0] m_axis_rx_tuser,        // RX user signals

  //---------------------------------------------//
  // PCIe Block I/O                              //
  //---------------------------------------------//

  // TRN RX
  //-----------
  input  [C_DATA_WIDTH-1:0] trn_rd,                  // RX data from block
  input                     trn_rsof,                // RX start of packet
  input                     trn_reof,                // RX end of packet
  input                     trn_rsrc_rdy,            // RX source ready
  output                    trn_rdst_rdy,            // RX destination ready
  input                     trn_rsrc_dsc,            // RX source discontinue
  input     [REM_WIDTH-1:0] trn_rrem,                // RX remainder
  input                     trn_rerrfwd,             // RX error forward
  input               [6:0] trn_rbar_hit,            // RX BAR hit
  input                     trn_recrc_err,           // RX ECRC error

  // System
  //-----------
  output              [2:0] np_counter,              // Non-posted counter
  input                     user_clk,                // user clock from block
  input                     user_rst                 // user reset from block
);


// Wires
wire                  null_rx_tvalid;
wire                  null_rx_tlast;
wire [KEEP_WIDTH-1:0] null_rx_tkeep;
wire                  null_rdst_rdy;
wire            [4:0] null_is_eof;

//---------------------------------------------//
// RX Data Pipeline                            //
//---------------------------------------------//

design_1_xdma_0_0_pcie2_ip_axi_basic_rx_pipeline #(
  .C_DATA_WIDTH( C_DATA_WIDTH ),
  .C_FAMILY( C_FAMILY ),
  .TCQ( TCQ ),

  .REM_WIDTH( REM_WIDTH ),
  .KEEP_WIDTH( KEEP_WIDTH )

) rx_pipeline_inst (

  // Outgoing AXI TX
  //-----------
  .m_axis_rx_tdata( m_axis_rx_tdata ),
  .m_axis_rx_tvalid( m_axis_rx_tvalid ),
  .m_axis_rx_tready( m_axis_rx_tready ),
  .m_axis_rx_tkeep( m_axis_rx_tkeep ),
  .m_axis_rx_tlast( m_axis_rx_tlast ),
  .m_axis_rx_tuser( m_axis_rx_tuser ),

  // Incoming TRN RX
  //-----------
  .trn_rd( trn_rd ),
  .trn_rsof( trn_rsof ),
  .trn_reof( trn_reof ),
  .trn_rsrc_rdy( trn_rsrc_rdy ),
  .trn_rdst_rdy( trn_rdst_rdy ),
  .trn_rsrc_dsc( trn_rsrc_dsc ),
  .trn_rrem( trn_rrem ),
  .trn_rerrfwd( trn_rerrfwd ),
  .trn_rbar_hit( trn_rbar_hit ),
  .trn_recrc_err( trn_recrc_err ),

  // Null Inputs
  //-----------
  .null_rx_tvalid( null_rx_tvalid ),
  .null_rx_tlast( null_rx_tlast ),
  .null_rx_tkeep( null_rx_tkeep ),
  .null_rdst_rdy( null_rdst_rdy ),
  .null_is_eof( null_is_eof ),

  // System
  //-----------
  .np_counter( np_counter ),
  .user_clk( user_clk ),
  .user_rst( user_rst )
);


 //---------------------------------------------//
 // RX Null Packet Generator                    //
 //---------------------------------------------//

design_1_xdma_0_0_pcie2_ip_axi_basic_rx_null_gen #(
  .C_DATA_WIDTH( C_DATA_WIDTH ),
  .TCQ( TCQ ),

  .KEEP_WIDTH( KEEP_WIDTH )

 ) rx_null_gen_inst (

  // Inputs
  //-----------
  .m_axis_rx_tdata( m_axis_rx_tdata ),
  .m_axis_rx_tvalid( m_axis_rx_tvalid ),
  .m_axis_rx_tready( m_axis_rx_tready ),
  .m_axis_rx_tlast( m_axis_rx_tlast ),
  .m_axis_rx_tuser( m_axis_rx_tuser ),

  // Null Outputs
  //-----------
  .null_rx_tvalid( null_rx_tvalid ),
  .null_rx_tlast( null_rx_tlast ),
  .null_rx_tkeep( null_rx_tkeep ),
  .null_rdst_rdy( null_rdst_rdy ),
  .null_is_eof( null_is_eof ),

  // System
  //-----------
  .user_clk( user_clk ),
  .user_rst( user_rst )
 );

endmodule
