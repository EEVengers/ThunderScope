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
// File       : design_1_xdma_0_0_pcie2_ip_pcie_pipe_misc.v
// Version    : 3.3
//
// Description: Misc PIPE module for 7-Series PCIe Block
//
//
//
//--------------------------------------------------------------------------------

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_pcie_pipe_misc #
(
    parameter        PIPE_PIPELINE_STAGES = 0,    // 0 - 0 stages, 1 - 1 stage, 2 - 2 stages
    parameter TCQ  = 1 // synthesis warning solved: parameter declaration becomes local
)
(

    input   wire        pipe_tx_rcvr_det_i       ,     // PIPE Tx Receiver Detect
    input   wire        pipe_tx_reset_i          ,     // PIPE Tx Reset
    input   wire        pipe_tx_rate_i           ,     // PIPE Tx Rate
    input   wire        pipe_tx_deemph_i         ,     // PIPE Tx Deemphasis
    input   wire [2:0]  pipe_tx_margin_i         ,     // PIPE Tx Margin
    input   wire        pipe_tx_swing_i          ,     // PIPE Tx Swing

    output  wire        pipe_tx_rcvr_det_o       ,     // Pipelined PIPE Tx Receiver Detect
    output  wire        pipe_tx_reset_o          ,     // Pipelined PIPE Tx Reset
    output  wire        pipe_tx_rate_o           ,     // Pipelined PIPE Tx Rate
    output  wire        pipe_tx_deemph_o         ,     // Pipelined PIPE Tx Deemphasis
    output  wire [2:0]  pipe_tx_margin_o         ,     // Pipelined PIPE Tx Margin
    output  wire        pipe_tx_swing_o          ,     // Pipelined PIPE Tx Swing

    input   wire        pipe_clk                ,      // PIPE Clock
    input   wire        rst_n                          // Reset
);

//******************************************************************//
// Reality check.                                                   //
//******************************************************************//

//    parameter TCQ  = 1;      // clock to out delay model

    generate

    if (PIPE_PIPELINE_STAGES == 0) begin : pipe_stages_0

        assign pipe_tx_rcvr_det_o = pipe_tx_rcvr_det_i;
        assign pipe_tx_reset_o  = pipe_tx_reset_i;
        assign pipe_tx_rate_o = pipe_tx_rate_i;
        assign pipe_tx_deemph_o = pipe_tx_deemph_i;
        assign pipe_tx_margin_o = pipe_tx_margin_i;
        assign pipe_tx_swing_o = pipe_tx_swing_i;

    end // if (PIPE_PIPELINE_STAGES == 0)
    else if (PIPE_PIPELINE_STAGES == 1) begin : pipe_stages_1

    reg                pipe_tx_rcvr_det_q       ;
    reg                pipe_tx_reset_q          ;
    reg                pipe_tx_rate_q           ;
    reg                pipe_tx_deemph_q         ;
    reg [2:0]          pipe_tx_margin_q         ;
    reg                pipe_tx_swing_q          ;

        always @(posedge pipe_clk) begin

        if (rst_n)
        begin

            pipe_tx_rcvr_det_q <= #TCQ 0;
            pipe_tx_reset_q  <= #TCQ 1'b1;
            pipe_tx_rate_q <= #TCQ 0;
            pipe_tx_deemph_q <= #TCQ 1'b1;
            pipe_tx_margin_q <= #TCQ 0;
            pipe_tx_swing_q <= #TCQ 0;

        end
        else
        begin

            pipe_tx_rcvr_det_q <= #TCQ pipe_tx_rcvr_det_i;
            pipe_tx_reset_q  <= #TCQ pipe_tx_reset_i;
            pipe_tx_rate_q <= #TCQ pipe_tx_rate_i;
            pipe_tx_deemph_q <= #TCQ pipe_tx_deemph_i;
            pipe_tx_margin_q <= #TCQ pipe_tx_margin_i;
            pipe_tx_swing_q <= #TCQ pipe_tx_swing_i;

          end

        end

        assign pipe_tx_rcvr_det_o = pipe_tx_rcvr_det_q;
        assign pipe_tx_reset_o  = pipe_tx_reset_q;
        assign pipe_tx_rate_o = pipe_tx_rate_q;
        assign pipe_tx_deemph_o = pipe_tx_deemph_q;
        assign pipe_tx_margin_o = pipe_tx_margin_q;
        assign pipe_tx_swing_o = pipe_tx_swing_q;

    end // if (PIPE_PIPELINE_STAGES == 1)
    else if (PIPE_PIPELINE_STAGES == 2) begin : pipe_stages_2

    reg                pipe_tx_rcvr_det_q       ;
    reg                pipe_tx_reset_q          ;
    reg                pipe_tx_rate_q           ;
    reg                pipe_tx_deemph_q         ;
    reg [2:0]          pipe_tx_margin_q         ;
    reg                pipe_tx_swing_q          ;

    reg                pipe_tx_rcvr_det_qq      ;
    reg                pipe_tx_reset_qq         ;
    reg                pipe_tx_rate_qq          ;
    reg                pipe_tx_deemph_qq        ;
    reg [2:0]          pipe_tx_margin_qq        ;
    reg                pipe_tx_swing_qq         ;

        always @(posedge pipe_clk) begin

        if (rst_n)
        begin

            pipe_tx_rcvr_det_q <= #TCQ 0;
            pipe_tx_reset_q  <= #TCQ 1'b1;
            pipe_tx_rate_q <= #TCQ 0;
            pipe_tx_deemph_q <= #TCQ 1'b1;
            pipe_tx_margin_q <= #TCQ 0;
            pipe_tx_swing_q <= #TCQ 0;

            pipe_tx_rcvr_det_qq <= #TCQ 0;
            pipe_tx_reset_qq  <= #TCQ 1'b1;
            pipe_tx_rate_qq <= #TCQ 0;
            pipe_tx_deemph_qq <= #TCQ 1'b1;
            pipe_tx_margin_qq <= #TCQ 0;
            pipe_tx_swing_qq <= #TCQ 0;

        end
        else
        begin

            pipe_tx_rcvr_det_q <= #TCQ pipe_tx_rcvr_det_i;
            pipe_tx_reset_q  <= #TCQ pipe_tx_reset_i;
            pipe_tx_rate_q <= #TCQ pipe_tx_rate_i;
            pipe_tx_deemph_q <= #TCQ pipe_tx_deemph_i;
            pipe_tx_margin_q <= #TCQ pipe_tx_margin_i;
            pipe_tx_swing_q <= #TCQ pipe_tx_swing_i;

            pipe_tx_rcvr_det_qq <= #TCQ pipe_tx_rcvr_det_q;
            pipe_tx_reset_qq  <= #TCQ pipe_tx_reset_q;
            pipe_tx_rate_qq <= #TCQ pipe_tx_rate_q;
            pipe_tx_deemph_qq <= #TCQ pipe_tx_deemph_q;
            pipe_tx_margin_qq <= #TCQ pipe_tx_margin_q;
            pipe_tx_swing_qq <= #TCQ pipe_tx_swing_q;

          end

        end

        assign pipe_tx_rcvr_det_o = pipe_tx_rcvr_det_qq;
        assign pipe_tx_reset_o  = pipe_tx_reset_qq;
        assign pipe_tx_rate_o = pipe_tx_rate_qq;
        assign pipe_tx_deemph_o = pipe_tx_deemph_qq;
        assign pipe_tx_margin_o = pipe_tx_margin_qq;
        assign pipe_tx_swing_o = pipe_tx_swing_qq;

    end // if (PIPE_PIPELINE_STAGES == 2)

    endgenerate

endmodule

