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
// File       : design_1_xdma_0_0_pcie2_ip_pcie_pipe_pipeline.v
// Version    : 3.3
//
// Description: PIPE module for Virtex7 PCIe Block
//
//
//
//--------------------------------------------------------------------------------

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_pcie_pipe_pipeline #
(
  parameter        LINK_CAP_MAX_LINK_WIDTH = 8,
  parameter        PIPE_PIPELINE_STAGES = 0    // 0 - 0 stages, 1 - 1 stage, 2 - 2 stages
)
(
  // Pipe Per-Link Signals
  input   wire        pipe_tx_rcvr_det_i       ,
  input   wire        pipe_tx_reset_i          ,
  input   wire        pipe_tx_rate_i           ,
  input   wire        pipe_tx_deemph_i         ,
  input   wire [2:0]  pipe_tx_margin_i         ,
  input   wire        pipe_tx_swing_i          ,

  output  wire        pipe_tx_rcvr_det_o       ,
  output  wire        pipe_tx_reset_o          ,
  output  wire        pipe_tx_rate_o           ,
  output  wire        pipe_tx_deemph_o         ,
  output  wire [2:0]  pipe_tx_margin_o         ,
  output  wire        pipe_tx_swing_o          ,

  // Pipe Per-Lane Signals - Lane 0
  output  wire [ 1:0] pipe_rx0_char_is_k_o     ,
  output  wire [15:0] pipe_rx0_data_o          ,
  output  wire        pipe_rx0_valid_o         ,
  output  wire        pipe_rx0_chanisaligned_o ,
  output  wire [ 2:0] pipe_rx0_status_o        ,
  output  wire        pipe_rx0_phy_status_o    ,
  output  wire        pipe_rx0_elec_idle_o     ,
  input   wire        pipe_rx0_polarity_i      ,
  input   wire        pipe_tx0_compliance_i    ,
  input   wire [ 1:0] pipe_tx0_char_is_k_i     ,
  input   wire [15:0] pipe_tx0_data_i          ,
  input   wire        pipe_tx0_elec_idle_i     ,
  input   wire [ 1:0] pipe_tx0_powerdown_i     ,

  input  wire [ 1:0]  pipe_rx0_char_is_k_i     ,
  input  wire [15:0]  pipe_rx0_data_i         ,
  input  wire         pipe_rx0_valid_i         ,
  input  wire         pipe_rx0_chanisaligned_i ,
  input  wire [ 2:0]  pipe_rx0_status_i        ,
  input  wire         pipe_rx0_phy_status_i    ,
  input  wire         pipe_rx0_elec_idle_i     ,
  output wire         pipe_rx0_polarity_o      ,
  output wire         pipe_tx0_compliance_o    ,
  output wire [ 1:0]  pipe_tx0_char_is_k_o     ,
  output wire [15:0]  pipe_tx0_data_o          ,
  output wire         pipe_tx0_elec_idle_o     ,
  output wire [ 1:0]  pipe_tx0_powerdown_o     ,

  // Pipe Per-Lane Signals - Lane 1
  output  wire [ 1:0] pipe_rx1_char_is_k_o     ,
  output  wire [15:0] pipe_rx1_data_o         ,
  output  wire        pipe_rx1_valid_o         ,
  output  wire        pipe_rx1_chanisaligned_o ,
  output  wire [ 2:0] pipe_rx1_status_o        ,
  output  wire        pipe_rx1_phy_status_o    ,
  output  wire        pipe_rx1_elec_idle_o     ,
  input   wire        pipe_rx1_polarity_i      ,
  input   wire        pipe_tx1_compliance_i    ,
  input   wire [ 1:0] pipe_tx1_char_is_k_i     ,
  input   wire [15:0] pipe_tx1_data_i          ,
  input   wire        pipe_tx1_elec_idle_i     ,
  input   wire [ 1:0] pipe_tx1_powerdown_i     ,

  input  wire [ 1:0]  pipe_rx1_char_is_k_i     ,
  input  wire [15:0]  pipe_rx1_data_i         ,
  input  wire         pipe_rx1_valid_i         ,
  input  wire         pipe_rx1_chanisaligned_i ,
  input  wire [ 2:0]  pipe_rx1_status_i        ,
  input  wire         pipe_rx1_phy_status_i    ,
  input  wire         pipe_rx1_elec_idle_i     ,
  output wire         pipe_rx1_polarity_o      ,
  output wire         pipe_tx1_compliance_o    ,
  output wire [ 1:0]  pipe_tx1_char_is_k_o     ,
  output wire [15:0]  pipe_tx1_data_o          ,
  output wire         pipe_tx1_elec_idle_o     ,
  output wire [ 1:0]  pipe_tx1_powerdown_o     ,

  // Pipe Per-Lane Signals - Lane 2
  output  wire [ 1:0] pipe_rx2_char_is_k_o     ,
  output  wire [15:0] pipe_rx2_data_o         ,
  output  wire        pipe_rx2_valid_o         ,
  output  wire        pipe_rx2_chanisaligned_o ,
  output  wire [ 2:0] pipe_rx2_status_o        ,
  output  wire        pipe_rx2_phy_status_o    ,
  output  wire        pipe_rx2_elec_idle_o     ,
  input   wire        pipe_rx2_polarity_i      ,
  input   wire        pipe_tx2_compliance_i    ,
  input   wire [ 1:0] pipe_tx2_char_is_k_i     ,
  input   wire [15:0] pipe_tx2_data_i          ,
  input   wire        pipe_tx2_elec_idle_i     ,
  input   wire [ 1:0] pipe_tx2_powerdown_i     ,

  input  wire [ 1:0]  pipe_rx2_char_is_k_i     ,
  input  wire [15:0]  pipe_rx2_data_i         ,
  input  wire         pipe_rx2_valid_i         ,
  input  wire         pipe_rx2_chanisaligned_i ,
  input  wire [ 2:0]  pipe_rx2_status_i        ,
  input  wire         pipe_rx2_phy_status_i    ,
  input  wire         pipe_rx2_elec_idle_i     ,
  output wire         pipe_rx2_polarity_o      ,
  output wire         pipe_tx2_compliance_o    ,
  output wire [ 1:0]  pipe_tx2_char_is_k_o     ,
  output wire [15:0]  pipe_tx2_data_o          ,
  output wire         pipe_tx2_elec_idle_o     ,
  output wire [ 1:0]  pipe_tx2_powerdown_o     ,

  // Pipe Per-Lane Signals - Lane 3
  output  wire [ 1:0] pipe_rx3_char_is_k_o     ,
  output  wire [15:0] pipe_rx3_data_o         ,
  output  wire        pipe_rx3_valid_o         ,
  output  wire        pipe_rx3_chanisaligned_o ,
  output  wire [ 2:0] pipe_rx3_status_o        ,
  output  wire        pipe_rx3_phy_status_o    ,
  output  wire        pipe_rx3_elec_idle_o     ,
  input   wire        pipe_rx3_polarity_i      ,
  input   wire        pipe_tx3_compliance_i    ,
  input   wire [ 1:0] pipe_tx3_char_is_k_i     ,
  input   wire [15:0] pipe_tx3_data_i          ,
  input   wire        pipe_tx3_elec_idle_i     ,
  input   wire [ 1:0] pipe_tx3_powerdown_i     ,

  input  wire [ 1:0]  pipe_rx3_char_is_k_i     ,
  input  wire [15:0]  pipe_rx3_data_i         ,
  input  wire         pipe_rx3_valid_i         ,
  input  wire         pipe_rx3_chanisaligned_i ,
  input  wire [ 2:0]  pipe_rx3_status_i        ,
  input  wire         pipe_rx3_phy_status_i    ,
  input  wire         pipe_rx3_elec_idle_i     ,
  output wire         pipe_rx3_polarity_o      ,
  output wire         pipe_tx3_compliance_o    ,
  output wire [ 1:0]  pipe_tx3_char_is_k_o     ,
  output wire [15:0]  pipe_tx3_data_o          ,
  output wire         pipe_tx3_elec_idle_o     ,
  output wire [ 1:0]  pipe_tx3_powerdown_o     ,

  // Pipe Per-Lane Signals - Lane 4
  output  wire [ 1:0] pipe_rx4_char_is_k_o     ,
  output  wire [15:0] pipe_rx4_data_o         ,
  output  wire        pipe_rx4_valid_o         ,
  output  wire        pipe_rx4_chanisaligned_o ,
  output  wire [ 2:0] pipe_rx4_status_o        ,
  output  wire        pipe_rx4_phy_status_o    ,
  output  wire        pipe_rx4_elec_idle_o     ,
  input   wire        pipe_rx4_polarity_i      ,
  input   wire        pipe_tx4_compliance_i    ,
  input   wire [ 1:0] pipe_tx4_char_is_k_i     ,
  input   wire [15:0] pipe_tx4_data_i          ,
  input   wire        pipe_tx4_elec_idle_i     ,
  input   wire [ 1:0] pipe_tx4_powerdown_i     ,

  input  wire [ 1:0]  pipe_rx4_char_is_k_i     ,
  input  wire [15:0]  pipe_rx4_data_i         ,
  input  wire         pipe_rx4_valid_i         ,
  input  wire         pipe_rx4_chanisaligned_i ,
  input  wire [ 2:0]  pipe_rx4_status_i        ,
  input  wire         pipe_rx4_phy_status_i    ,
  input  wire         pipe_rx4_elec_idle_i     ,
  output wire         pipe_rx4_polarity_o      ,
  output wire         pipe_tx4_compliance_o    ,
  output wire [ 1:0]  pipe_tx4_char_is_k_o     ,
  output wire [15:0]  pipe_tx4_data_o          ,
  output wire         pipe_tx4_elec_idle_o     ,
  output wire [ 1:0]  pipe_tx4_powerdown_o     ,

  // Pipe Per-Lane Signals - Lane 5
  output  wire [ 1:0] pipe_rx5_char_is_k_o     ,
  output  wire [15:0] pipe_rx5_data_o         ,
  output  wire        pipe_rx5_valid_o         ,
  output  wire        pipe_rx5_chanisaligned_o ,
  output  wire [ 2:0] pipe_rx5_status_o        ,
  output  wire        pipe_rx5_phy_status_o    ,
  output  wire        pipe_rx5_elec_idle_o     ,
  input   wire        pipe_rx5_polarity_i      ,
  input   wire        pipe_tx5_compliance_i    ,
  input   wire [ 1:0] pipe_tx5_char_is_k_i     ,
  input   wire [15:0] pipe_tx5_data_i          ,
  input   wire        pipe_tx5_elec_idle_i     ,
  input   wire [ 1:0] pipe_tx5_powerdown_i     ,

  input  wire [ 1:0]  pipe_rx5_char_is_k_i     ,
  input  wire [15:0]  pipe_rx5_data_i         ,
  input  wire         pipe_rx5_valid_i         ,
  input  wire         pipe_rx5_chanisaligned_i ,
  input  wire [ 2:0]  pipe_rx5_status_i        ,
  input  wire         pipe_rx5_phy_status_i    ,
  input  wire         pipe_rx5_elec_idle_i     ,
  output wire         pipe_rx5_polarity_o      ,
  output wire         pipe_tx5_compliance_o    ,
  output wire [ 1:0]  pipe_tx5_char_is_k_o     ,
  output wire [15:0]  pipe_tx5_data_o          ,
  output wire         pipe_tx5_elec_idle_o     ,
  output wire [ 1:0]  pipe_tx5_powerdown_o     ,

  // Pipe Per-Lane Signals - Lane 6
  output  wire [ 1:0] pipe_rx6_char_is_k_o     ,
  output  wire [15:0] pipe_rx6_data_o         ,
  output  wire        pipe_rx6_valid_o         ,
  output  wire        pipe_rx6_chanisaligned_o ,
  output  wire [ 2:0] pipe_rx6_status_o        ,
  output  wire        pipe_rx6_phy_status_o    ,
  output  wire        pipe_rx6_elec_idle_o     ,
  input   wire        pipe_rx6_polarity_i      ,
  input   wire        pipe_tx6_compliance_i    ,
  input   wire [ 1:0] pipe_tx6_char_is_k_i     ,
  input   wire [15:0] pipe_tx6_data_i          ,
  input   wire        pipe_tx6_elec_idle_i     ,
  input   wire [ 1:0] pipe_tx6_powerdown_i     ,

  input  wire [ 1:0]  pipe_rx6_char_is_k_i     ,
  input  wire [15:0]  pipe_rx6_data_i         ,
  input  wire         pipe_rx6_valid_i         ,
  input  wire         pipe_rx6_chanisaligned_i ,
  input  wire [ 2:0]  pipe_rx6_status_i        ,
  input  wire         pipe_rx6_phy_status_i    ,
  input  wire         pipe_rx6_elec_idle_i     ,
  output wire         pipe_rx6_polarity_o      ,
  output wire         pipe_tx6_compliance_o    ,
  output wire [ 1:0]  pipe_tx6_char_is_k_o     ,
  output wire [15:0]  pipe_tx6_data_o          ,
  output wire         pipe_tx6_elec_idle_o     ,
  output wire [ 1:0]  pipe_tx6_powerdown_o     ,

  // Pipe Per-Lane Signals - Lane 7
  output  wire [ 1:0] pipe_rx7_char_is_k_o     ,
  output  wire [15:0] pipe_rx7_data_o         ,
  output  wire        pipe_rx7_valid_o         ,
  output  wire        pipe_rx7_chanisaligned_o ,
  output  wire [ 2:0] pipe_rx7_status_o        ,
  output  wire        pipe_rx7_phy_status_o    ,
  output  wire        pipe_rx7_elec_idle_o     ,
  input   wire        pipe_rx7_polarity_i      ,
  input   wire        pipe_tx7_compliance_i    ,
  input   wire [ 1:0] pipe_tx7_char_is_k_i     ,
  input   wire [15:0] pipe_tx7_data_i          ,
  input   wire        pipe_tx7_elec_idle_i     ,
  input   wire [ 1:0] pipe_tx7_powerdown_i     ,

  input  wire [ 1:0]  pipe_rx7_char_is_k_i     ,
  input  wire [15:0]  pipe_rx7_data_i         ,
  input  wire         pipe_rx7_valid_i         ,
  input  wire         pipe_rx7_chanisaligned_i ,
  input  wire [ 2:0]  pipe_rx7_status_i        ,
  input  wire         pipe_rx7_phy_status_i    ,
  input  wire         pipe_rx7_elec_idle_i     ,
  output wire         pipe_rx7_polarity_o      ,
  output wire         pipe_tx7_compliance_o    ,
  output wire [ 1:0]  pipe_tx7_char_is_k_o     ,
  output wire [15:0]  pipe_tx7_data_o          ,
  output wire         pipe_tx7_elec_idle_o     ,
  output wire [ 1:0]  pipe_tx7_powerdown_o     ,

  // Non PIPE signals
  input   wire        pipe_clk               ,
  input   wire        rst_n
);

  //******************************************************************//
  // Reality check.                                                   //
  //******************************************************************//
  
  //synthesis translate_off
  //   initial begin
  //      $display("[%t] %m LINK_CAP_MAX_LINK_WIDTH %0d  PIPE_PIPELINE_STAGES %0d", 
  //                 $time, LINK_CAP_MAX_LINK_WIDTH, PIPE_PIPELINE_STAGES);
  //   end
  //synthesis translate_on

  generate

design_1_xdma_0_0_pcie2_ip_pcie_pipe_misc # (

      .PIPE_PIPELINE_STAGES(PIPE_PIPELINE_STAGES)

    )
    pipe_misc_i (

      .pipe_tx_rcvr_det_i(pipe_tx_rcvr_det_i),
      .pipe_tx_reset_i(pipe_tx_reset_i),
      .pipe_tx_rate_i(pipe_tx_rate_i),
      .pipe_tx_deemph_i(pipe_tx_deemph_i),
      .pipe_tx_margin_i(pipe_tx_margin_i),
      .pipe_tx_swing_i(pipe_tx_swing_i),

      .pipe_tx_rcvr_det_o(pipe_tx_rcvr_det_o),
      .pipe_tx_reset_o(pipe_tx_reset_o),
      .pipe_tx_rate_o(pipe_tx_rate_o),
      .pipe_tx_deemph_o(pipe_tx_deemph_o),
      .pipe_tx_margin_o(pipe_tx_margin_o),
      .pipe_tx_swing_o(pipe_tx_swing_o)          ,

      .pipe_clk(pipe_clk),
      .rst_n(rst_n)
  );


design_1_xdma_0_0_pcie2_ip_pcie_pipe_lane # (

      .PIPE_PIPELINE_STAGES(PIPE_PIPELINE_STAGES)

    )
    pipe_lane_0_i (

      .pipe_rx_char_is_k_o(pipe_rx0_char_is_k_o),
      .pipe_rx_data_o(pipe_rx0_data_o),
      .pipe_rx_valid_o(pipe_rx0_valid_o),
      .pipe_rx_chanisaligned_o(pipe_rx0_chanisaligned_o),
      .pipe_rx_status_o(pipe_rx0_status_o),
      .pipe_rx_phy_status_o(pipe_rx0_phy_status_o),
      .pipe_rx_elec_idle_o(pipe_rx0_elec_idle_o),
      .pipe_rx_polarity_i(pipe_rx0_polarity_i),
      .pipe_tx_compliance_i(pipe_tx0_compliance_i),
      .pipe_tx_char_is_k_i(pipe_tx0_char_is_k_i),
      .pipe_tx_data_i(pipe_tx0_data_i),
      .pipe_tx_elec_idle_i(pipe_tx0_elec_idle_i),
      .pipe_tx_powerdown_i(pipe_tx0_powerdown_i),

      .pipe_rx_char_is_k_i(pipe_rx0_char_is_k_i),
      .pipe_rx_data_i(pipe_rx0_data_i),
      .pipe_rx_valid_i(pipe_rx0_valid_i),
      .pipe_rx_chanisaligned_i(pipe_rx0_chanisaligned_i),
      .pipe_rx_status_i(pipe_rx0_status_i),
      .pipe_rx_phy_status_i(pipe_rx0_phy_status_i),
      .pipe_rx_elec_idle_i(pipe_rx0_elec_idle_i),
      .pipe_rx_polarity_o(pipe_rx0_polarity_o),
      .pipe_tx_compliance_o(pipe_tx0_compliance_o),
      .pipe_tx_char_is_k_o(pipe_tx0_char_is_k_o),
      .pipe_tx_data_o(pipe_tx0_data_o),
      .pipe_tx_elec_idle_o(pipe_tx0_elec_idle_o),
      .pipe_tx_powerdown_o(pipe_tx0_powerdown_o),

      .pipe_clk(pipe_clk),
      .rst_n(rst_n)

    );

    if (LINK_CAP_MAX_LINK_WIDTH >= 2) begin : pipe_2_lane

design_1_xdma_0_0_pcie2_ip_pcie_pipe_lane # (

        .PIPE_PIPELINE_STAGES(PIPE_PIPELINE_STAGES)

      )
      pipe_lane_1_i (

        .pipe_rx_char_is_k_o(pipe_rx1_char_is_k_o),
        .pipe_rx_data_o(pipe_rx1_data_o),
        .pipe_rx_valid_o(pipe_rx1_valid_o),
        .pipe_rx_chanisaligned_o(pipe_rx1_chanisaligned_o),
        .pipe_rx_status_o(pipe_rx1_status_o),
        .pipe_rx_phy_status_o(pipe_rx1_phy_status_o),
        .pipe_rx_elec_idle_o(pipe_rx1_elec_idle_o),
        .pipe_rx_polarity_i(pipe_rx1_polarity_i),
        .pipe_tx_compliance_i(pipe_tx1_compliance_i),
        .pipe_tx_char_is_k_i(pipe_tx1_char_is_k_i),
        .pipe_tx_data_i(pipe_tx1_data_i),
        .pipe_tx_elec_idle_i(pipe_tx1_elec_idle_i),
        .pipe_tx_powerdown_i(pipe_tx1_powerdown_i),

        .pipe_rx_char_is_k_i(pipe_rx1_char_is_k_i),
        .pipe_rx_data_i(pipe_rx1_data_i),
        .pipe_rx_valid_i(pipe_rx1_valid_i),
        .pipe_rx_chanisaligned_i(pipe_rx1_chanisaligned_i),
        .pipe_rx_status_i(pipe_rx1_status_i),
        .pipe_rx_phy_status_i(pipe_rx1_phy_status_i),
        .pipe_rx_elec_idle_i(pipe_rx1_elec_idle_i),
        .pipe_rx_polarity_o(pipe_rx1_polarity_o),
        .pipe_tx_compliance_o(pipe_tx1_compliance_o),
        .pipe_tx_char_is_k_o(pipe_tx1_char_is_k_o),
        .pipe_tx_data_o(pipe_tx1_data_o),
        .pipe_tx_elec_idle_o(pipe_tx1_elec_idle_o),
        .pipe_tx_powerdown_o(pipe_tx1_powerdown_o),

        .pipe_clk(pipe_clk),
        .rst_n(rst_n)

      );

    end // if (LINK_CAP_MAX_LINK_WIDTH >= 2)
    else
    begin
      assign pipe_rx1_char_is_k_o = 2'b00;
      assign pipe_rx1_data_o = 16'h0000;
      assign pipe_rx1_valid_o = 1'b0;
      assign pipe_rx1_chanisaligned_o = 1'b0;
      assign pipe_rx1_status_o = 3'b000;
      assign pipe_rx1_phy_status_o = 1'b0;
      assign pipe_rx1_elec_idle_o = 1'b1;
      assign pipe_rx1_polarity_o = 1'b0;
      assign pipe_tx1_compliance_o = 1'b0;
      assign pipe_tx1_char_is_k_o = 2'b00;
      assign pipe_tx1_data_o = 16'h0000;
      assign pipe_tx1_elec_idle_o = 1'b1;
      assign pipe_tx1_powerdown_o = 2'b00;
    end // if !(LINK_CAP_MAX_LINK_WIDTH >= 2)

    if (LINK_CAP_MAX_LINK_WIDTH >= 4) begin : pipe_4_lane

design_1_xdma_0_0_pcie2_ip_pcie_pipe_lane # (

        .PIPE_PIPELINE_STAGES(PIPE_PIPELINE_STAGES)
      )
      pipe_lane_2_i (

        .pipe_rx_char_is_k_o(pipe_rx2_char_is_k_o),
        .pipe_rx_data_o(pipe_rx2_data_o),
        .pipe_rx_valid_o(pipe_rx2_valid_o),
        .pipe_rx_chanisaligned_o(pipe_rx2_chanisaligned_o),
        .pipe_rx_status_o(pipe_rx2_status_o),
        .pipe_rx_phy_status_o(pipe_rx2_phy_status_o),
        .pipe_rx_elec_idle_o(pipe_rx2_elec_idle_o),
        .pipe_rx_polarity_i(pipe_rx2_polarity_i),
        .pipe_tx_compliance_i(pipe_tx2_compliance_i),
        .pipe_tx_char_is_k_i(pipe_tx2_char_is_k_i),
        .pipe_tx_data_i(pipe_tx2_data_i),
        .pipe_tx_elec_idle_i(pipe_tx2_elec_idle_i),
        .pipe_tx_powerdown_i(pipe_tx2_powerdown_i),

        .pipe_rx_char_is_k_i(pipe_rx2_char_is_k_i),
        .pipe_rx_data_i(pipe_rx2_data_i),
        .pipe_rx_valid_i(pipe_rx2_valid_i),
        .pipe_rx_chanisaligned_i(pipe_rx2_chanisaligned_i),
        .pipe_rx_status_i(pipe_rx2_status_i),
        .pipe_rx_phy_status_i(pipe_rx2_phy_status_i),
        .pipe_rx_elec_idle_i(pipe_rx2_elec_idle_i),
        .pipe_rx_polarity_o(pipe_rx2_polarity_o),
        .pipe_tx_compliance_o(pipe_tx2_compliance_o),
        .pipe_tx_char_is_k_o(pipe_tx2_char_is_k_o),
        .pipe_tx_data_o(pipe_tx2_data_o),
        .pipe_tx_elec_idle_o(pipe_tx2_elec_idle_o),
        .pipe_tx_powerdown_o(pipe_tx2_powerdown_o),

        .pipe_clk(pipe_clk),
        .rst_n(rst_n)

      );

design_1_xdma_0_0_pcie2_ip_pcie_pipe_lane # (

        .PIPE_PIPELINE_STAGES(PIPE_PIPELINE_STAGES)

      )
      pipe_lane_3_i (

        .pipe_rx_char_is_k_o(pipe_rx3_char_is_k_o),
        .pipe_rx_data_o(pipe_rx3_data_o),
        .pipe_rx_valid_o(pipe_rx3_valid_o),
        .pipe_rx_chanisaligned_o(pipe_rx3_chanisaligned_o),
        .pipe_rx_status_o(pipe_rx3_status_o),
        .pipe_rx_phy_status_o(pipe_rx3_phy_status_o),
        .pipe_rx_elec_idle_o(pipe_rx3_elec_idle_o),
        .pipe_rx_polarity_i(pipe_rx3_polarity_i),
        .pipe_tx_compliance_i(pipe_tx3_compliance_i),
        .pipe_tx_char_is_k_i(pipe_tx3_char_is_k_i),
        .pipe_tx_data_i(pipe_tx3_data_i),
        .pipe_tx_elec_idle_i(pipe_tx3_elec_idle_i),
        .pipe_tx_powerdown_i(pipe_tx3_powerdown_i),

        .pipe_rx_char_is_k_i(pipe_rx3_char_is_k_i),
        .pipe_rx_data_i(pipe_rx3_data_i),
        .pipe_rx_valid_i(pipe_rx3_valid_i),
        .pipe_rx_chanisaligned_i(pipe_rx3_chanisaligned_i),
        .pipe_rx_status_i(pipe_rx3_status_i),
        .pipe_rx_phy_status_i(pipe_rx3_phy_status_i),
        .pipe_rx_elec_idle_i(pipe_rx3_elec_idle_i),
        .pipe_rx_polarity_o(pipe_rx3_polarity_o),
        .pipe_tx_compliance_o(pipe_tx3_compliance_o),
        .pipe_tx_char_is_k_o(pipe_tx3_char_is_k_o),
        .pipe_tx_data_o(pipe_tx3_data_o),
        .pipe_tx_elec_idle_o(pipe_tx3_elec_idle_o),
        .pipe_tx_powerdown_o(pipe_tx3_powerdown_o),

        .pipe_clk(pipe_clk),
        .rst_n(rst_n)

      );

    end // if (LINK_CAP_MAX_LINK_WIDTH >= 4)
    else
    begin
      assign pipe_rx2_char_is_k_o = 2'b00;
      assign pipe_rx2_data_o = 16'h0000;
      assign pipe_rx2_valid_o = 1'b0;
      assign pipe_rx2_chanisaligned_o = 1'b0;
      assign pipe_rx2_status_o = 3'b000;
      assign pipe_rx2_phy_status_o = 1'b0;
      assign pipe_rx2_elec_idle_o = 1'b1;
      assign pipe_rx2_polarity_o = 1'b0;
      assign pipe_tx2_compliance_o = 1'b0;
      assign pipe_tx2_char_is_k_o = 2'b00;
      assign pipe_tx2_data_o = 16'h0000;
      assign pipe_tx2_elec_idle_o = 1'b1;
      assign pipe_tx2_powerdown_o = 2'b00;

      assign pipe_rx3_char_is_k_o = 2'b00;
      assign pipe_rx3_data_o = 16'h0000;
      assign pipe_rx3_valid_o = 1'b0;
      assign pipe_rx3_chanisaligned_o = 1'b0;
      assign pipe_rx3_status_o = 3'b000;
      assign pipe_rx3_phy_status_o = 1'b0;
      assign pipe_rx3_elec_idle_o = 1'b1;
      assign pipe_rx3_polarity_o = 1'b0;
      assign pipe_tx3_compliance_o = 1'b0;
      assign pipe_tx3_char_is_k_o = 2'b00;
      assign pipe_tx3_data_o = 16'h0000;
      assign pipe_tx3_elec_idle_o = 1'b1;
      assign pipe_tx3_powerdown_o = 2'b00;
    end // if !(LINK_CAP_MAX_LINK_WIDTH >= 4)

    if (LINK_CAP_MAX_LINK_WIDTH >= 8) begin : pipe_8_lane

design_1_xdma_0_0_pcie2_ip_pcie_pipe_lane # (

        .PIPE_PIPELINE_STAGES(PIPE_PIPELINE_STAGES)

      )
      pipe_lane_4_i (

        .pipe_rx_char_is_k_o(pipe_rx4_char_is_k_o),
        .pipe_rx_data_o(pipe_rx4_data_o),
        .pipe_rx_valid_o(pipe_rx4_valid_o),
        .pipe_rx_chanisaligned_o(pipe_rx4_chanisaligned_o),
        .pipe_rx_status_o(pipe_rx4_status_o),
        .pipe_rx_phy_status_o(pipe_rx4_phy_status_o),
        .pipe_rx_elec_idle_o(pipe_rx4_elec_idle_o),
        .pipe_rx_polarity_i(pipe_rx4_polarity_i),
        .pipe_tx_compliance_i(pipe_tx4_compliance_i),
        .pipe_tx_char_is_k_i(pipe_tx4_char_is_k_i),
        .pipe_tx_data_i(pipe_tx4_data_i),
        .pipe_tx_elec_idle_i(pipe_tx4_elec_idle_i),
        .pipe_tx_powerdown_i(pipe_tx4_powerdown_i),

        .pipe_rx_char_is_k_i(pipe_rx4_char_is_k_i),
        .pipe_rx_data_i(pipe_rx4_data_i),
        .pipe_rx_valid_i(pipe_rx4_valid_i),
        .pipe_rx_chanisaligned_i(pipe_rx4_chanisaligned_i),
        .pipe_rx_status_i(pipe_rx4_status_i),
        .pipe_rx_phy_status_i(pipe_rx4_phy_status_i),
        .pipe_rx_elec_idle_i(pipe_rx4_elec_idle_i),
        .pipe_rx_polarity_o(pipe_rx4_polarity_o),
        .pipe_tx_compliance_o(pipe_tx4_compliance_o),
        .pipe_tx_char_is_k_o(pipe_tx4_char_is_k_o),
        .pipe_tx_data_o(pipe_tx4_data_o),
        .pipe_tx_elec_idle_o(pipe_tx4_elec_idle_o),
        .pipe_tx_powerdown_o(pipe_tx4_powerdown_o),

        .pipe_clk(pipe_clk),
        .rst_n(rst_n)

      );

design_1_xdma_0_0_pcie2_ip_pcie_pipe_lane # (

        .PIPE_PIPELINE_STAGES(PIPE_PIPELINE_STAGES)

      )
      pipe_lane_5_i (

        .pipe_rx_char_is_k_o(pipe_rx5_char_is_k_o),
        .pipe_rx_data_o(pipe_rx5_data_o),
        .pipe_rx_valid_o(pipe_rx5_valid_o),
        .pipe_rx_chanisaligned_o(pipe_rx5_chanisaligned_o),
        .pipe_rx_status_o(pipe_rx5_status_o),
        .pipe_rx_phy_status_o(pipe_rx5_phy_status_o),
        .pipe_rx_elec_idle_o(pipe_rx5_elec_idle_o),
        .pipe_rx_polarity_i(pipe_rx5_polarity_i),
        .pipe_tx_compliance_i(pipe_tx5_compliance_i),
        .pipe_tx_char_is_k_i(pipe_tx5_char_is_k_i),
        .pipe_tx_data_i(pipe_tx5_data_i),
        .pipe_tx_elec_idle_i(pipe_tx5_elec_idle_i),
        .pipe_tx_powerdown_i(pipe_tx5_powerdown_i),

        .pipe_rx_char_is_k_i(pipe_rx5_char_is_k_i),
        .pipe_rx_data_i(pipe_rx5_data_i),
        .pipe_rx_valid_i(pipe_rx5_valid_i),
        .pipe_rx_chanisaligned_i(pipe_rx5_chanisaligned_i),
        .pipe_rx_status_i(pipe_rx5_status_i),
        .pipe_rx_phy_status_i(pipe_rx5_phy_status_i),
        .pipe_rx_elec_idle_i(pipe_rx5_elec_idle_i),
        .pipe_rx_polarity_o(pipe_rx5_polarity_o),
        .pipe_tx_compliance_o(pipe_tx5_compliance_o),
        .pipe_tx_char_is_k_o(pipe_tx5_char_is_k_o),
        .pipe_tx_data_o(pipe_tx5_data_o),
        .pipe_tx_elec_idle_o(pipe_tx5_elec_idle_o),
        .pipe_tx_powerdown_o(pipe_tx5_powerdown_o),

        .pipe_clk(pipe_clk),
        .rst_n(rst_n)

      );

design_1_xdma_0_0_pcie2_ip_pcie_pipe_lane # (

        .PIPE_PIPELINE_STAGES(PIPE_PIPELINE_STAGES)

      )
      pipe_lane_6_i (

        .pipe_rx_char_is_k_o(pipe_rx6_char_is_k_o),
        .pipe_rx_data_o(pipe_rx6_data_o),
        .pipe_rx_valid_o(pipe_rx6_valid_o),
        .pipe_rx_chanisaligned_o(pipe_rx6_chanisaligned_o),
        .pipe_rx_status_o(pipe_rx6_status_o),
        .pipe_rx_phy_status_o(pipe_rx6_phy_status_o),
        .pipe_rx_elec_idle_o(pipe_rx6_elec_idle_o),
        .pipe_rx_polarity_i(pipe_rx6_polarity_i),
        .pipe_tx_compliance_i(pipe_tx6_compliance_i),
        .pipe_tx_char_is_k_i(pipe_tx6_char_is_k_i),
        .pipe_tx_data_i(pipe_tx6_data_i),
        .pipe_tx_elec_idle_i(pipe_tx6_elec_idle_i),
        .pipe_tx_powerdown_i(pipe_tx6_powerdown_i),

        .pipe_rx_char_is_k_i(pipe_rx6_char_is_k_i),
        .pipe_rx_data_i(pipe_rx6_data_i),
        .pipe_rx_valid_i(pipe_rx6_valid_i),
        .pipe_rx_chanisaligned_i(pipe_rx6_chanisaligned_i),
        .pipe_rx_status_i(pipe_rx6_status_i),
        .pipe_rx_phy_status_i(pipe_rx6_phy_status_i),
        .pipe_rx_elec_idle_i(pipe_rx6_elec_idle_i),
        .pipe_rx_polarity_o(pipe_rx6_polarity_o),
        .pipe_tx_compliance_o(pipe_tx6_compliance_o),
        .pipe_tx_char_is_k_o(pipe_tx6_char_is_k_o),
        .pipe_tx_data_o(pipe_tx6_data_o),
        .pipe_tx_elec_idle_o(pipe_tx6_elec_idle_o),
        .pipe_tx_powerdown_o(pipe_tx6_powerdown_o),

        .pipe_clk(pipe_clk),
        .rst_n(rst_n)

      );

design_1_xdma_0_0_pcie2_ip_pcie_pipe_lane # (

        .PIPE_PIPELINE_STAGES(PIPE_PIPELINE_STAGES)

      )
      pipe_lane_7_i (

        .pipe_rx_char_is_k_o(pipe_rx7_char_is_k_o),
        .pipe_rx_data_o(pipe_rx7_data_o),
        .pipe_rx_valid_o(pipe_rx7_valid_o),
        .pipe_rx_chanisaligned_o(pipe_rx7_chanisaligned_o),
        .pipe_rx_status_o(pipe_rx7_status_o),
        .pipe_rx_phy_status_o(pipe_rx7_phy_status_o),
        .pipe_rx_elec_idle_o(pipe_rx7_elec_idle_o),
        .pipe_rx_polarity_i(pipe_rx7_polarity_i),
        .pipe_tx_compliance_i(pipe_tx7_compliance_i),
        .pipe_tx_char_is_k_i(pipe_tx7_char_is_k_i),
        .pipe_tx_data_i(pipe_tx7_data_i),
        .pipe_tx_elec_idle_i(pipe_tx7_elec_idle_i),
        .pipe_tx_powerdown_i(pipe_tx7_powerdown_i),

        .pipe_rx_char_is_k_i(pipe_rx7_char_is_k_i),
        .pipe_rx_data_i(pipe_rx7_data_i),
        .pipe_rx_valid_i(pipe_rx7_valid_i),
        .pipe_rx_chanisaligned_i(pipe_rx7_chanisaligned_i),
        .pipe_rx_status_i(pipe_rx7_status_i),
        .pipe_rx_phy_status_i(pipe_rx7_phy_status_i),
        .pipe_rx_elec_idle_i(pipe_rx7_elec_idle_i),
        .pipe_rx_polarity_o(pipe_rx7_polarity_o),
        .pipe_tx_compliance_o(pipe_tx7_compliance_o),
        .pipe_tx_char_is_k_o(pipe_tx7_char_is_k_o),
        .pipe_tx_data_o(pipe_tx7_data_o),
        .pipe_tx_elec_idle_o(pipe_tx7_elec_idle_o),
        .pipe_tx_powerdown_o(pipe_tx7_powerdown_o),

        .pipe_clk(pipe_clk),
        .rst_n(rst_n)

      );

    end // if (LINK_CAP_MAX_LINK_WIDTH >= 8)
    else
    begin
      assign pipe_rx4_char_is_k_o = 2'b00;
      assign pipe_rx4_data_o = 16'h0000;
      assign pipe_rx4_valid_o = 1'b0;
      assign pipe_rx4_chanisaligned_o = 1'b0;
      assign pipe_rx4_status_o = 3'b000;
      assign pipe_rx4_phy_status_o = 1'b0;
      assign pipe_rx4_elec_idle_o = 1'b1;
      assign pipe_rx4_polarity_o = 1'b0;
      assign pipe_tx4_compliance_o = 1'b0;
      assign pipe_tx4_char_is_k_o = 2'b00;
      assign pipe_tx4_data_o = 16'h0000;
      assign pipe_tx4_elec_idle_o = 1'b1;
      assign pipe_tx4_powerdown_o = 2'b00;

      assign pipe_rx5_char_is_k_o = 2'b00;
      assign pipe_rx5_data_o = 16'h0000;
      assign pipe_rx5_valid_o = 1'b0;
      assign pipe_rx5_chanisaligned_o = 1'b0;
      assign pipe_rx5_status_o = 3'b000;
      assign pipe_rx5_phy_status_o = 1'b0;
      assign pipe_rx5_elec_idle_o = 1'b1;
      assign pipe_rx5_polarity_o = 1'b0;
      assign pipe_tx5_compliance_o = 1'b0;
      assign pipe_tx5_char_is_k_o = 2'b00;
      assign pipe_tx5_data_o = 16'h0000;
      assign pipe_tx5_elec_idle_o = 1'b1;
      assign pipe_tx5_powerdown_o = 2'b00;

      assign pipe_rx6_char_is_k_o = 2'b00;
      assign pipe_rx6_data_o = 16'h0000;
      assign pipe_rx6_valid_o = 1'b0;
      assign pipe_rx6_chanisaligned_o = 1'b0;
      assign pipe_rx6_status_o = 3'b000;
      assign pipe_rx6_phy_status_o = 1'b0;
      assign pipe_rx6_elec_idle_o = 1'b1;
      assign pipe_rx6_polarity_o = 1'b0;
      assign pipe_tx6_compliance_o = 1'b0;
      assign pipe_tx6_char_is_k_o = 2'b00;
      assign pipe_tx6_data_o = 16'h0000;
      assign pipe_tx6_elec_idle_o = 1'b1;
      assign pipe_tx6_powerdown_o = 2'b00;

      assign pipe_rx7_char_is_k_o = 2'b00;
      assign pipe_rx7_data_o = 16'h0000;
      assign pipe_rx7_valid_o = 1'b0;
      assign pipe_rx7_chanisaligned_o = 1'b0;
      assign pipe_rx7_status_o = 3'b000;
      assign pipe_rx7_phy_status_o = 1'b0;
      assign pipe_rx7_elec_idle_o = 1'b1;
      assign pipe_rx7_polarity_o = 1'b0;
      assign pipe_tx7_compliance_o = 1'b0;
      assign pipe_tx7_char_is_k_o = 2'b00;
      assign pipe_tx7_data_o = 16'h0000;
      assign pipe_tx7_elec_idle_o = 1'b1;
      assign pipe_tx7_powerdown_o = 2'b00;
    end // if !(LINK_CAP_MAX_LINK_WIDTH >= 8)

  endgenerate

endmodule

