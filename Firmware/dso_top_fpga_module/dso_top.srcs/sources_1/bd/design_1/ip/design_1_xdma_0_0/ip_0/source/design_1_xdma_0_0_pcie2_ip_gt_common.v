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
// File       : design_1_xdma_0_0_pcie2_ip_gt_common.v
// Version    : 3.3
`timescale 1ns / 1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_gt_common #(

parameter PCIE_SIM_MODE    = "FALSE",   // PCIe sim mode
parameter PCIE_GT_DEVICE   = "GTX",     // PCIe GT device
parameter PCIE_USE_MODE    = "2.1",     // PCIe use mode
parameter PCIE_PLL_SEL     = "CPLL",    // PCIe PLL select for Gen1/Gen2 only
parameter PCIE_REFCLK_FREQ = 0          // PCIe reference clock frequency
)

(
input                   CPLLPDREFCLK,
input               	PIPE_CLK,
input               	QPLL_QPLLPD,
input               	QPLL_QPLLRESET,
input               	QPLL_DRP_CLK,
input               	QPLL_DRP_RST_N,
input               	QPLL_DRP_OVRD,
input               	QPLL_DRP_GEN3,
input               	QPLL_DRP_START,
output      [5:0]  	QPLL_DRP_CRSCODE,
output      [8:0]  	QPLL_DRP_FSM,
output                  QPLL_DRP_DONE,
output                  QPLL_DRP_RESET,
output                  QPLL_QPLLLOCK,
output                  QPLL_QPLLOUTCLK,
output                  QPLL_QPLLOUTREFCLK
);

    //---------- QPLL DRP Module Output --------------------

wire        [7:0]  qpll_drp_addr;
wire               qpll_drp_en;
wire        [15:0] qpll_drp_di;
wire               qpll_drp_we;

   //---------- QPLL Wrapper Output -----------------------

wire        [15:0] qpll_drp_do;
wire               qpll_drp_rdy;

   //---------- QPLL Resets -----------------------


        //---------- QPLL DRP Module ---------------------------------------

design_1_xdma_0_0_pcie2_ip_qpll_drp #
        (

	        .PCIE_GT_DEVICE                 (PCIE_GT_DEVICE),               // PCIe GT device
	        .PCIE_USE_MODE                  (PCIE_USE_MODE),                // PCIe use mode
	        .PCIE_PLL_SEL                   (PCIE_PLL_SEL),                 // PCIe PLL select for Gen1/Gen2 only
	        .PCIE_REFCLK_FREQ               (PCIE_REFCLK_FREQ)              // PCIe reference clock frequency

        )
        qpll_drp_i
        (

        //---------- Input -------------------------
	    .DRP_CLK                        (QPLL_DRP_CLK),
            .DRP_RST_N                      (!QPLL_DRP_RST_N),
            .DRP_OVRD                       (QPLL_DRP_OVRD),
            .DRP_GEN3                       (&QPLL_DRP_GEN3),
            .DRP_QPLLLOCK                   (QPLL_QPLLLOCK),
            .DRP_START                      (QPLL_DRP_START),
            .DRP_DO                         (qpll_drp_do),
            .DRP_RDY                        (qpll_drp_rdy),
																													     
        //----------           Output ------------------------
            .DRP_ADDR                       (qpll_drp_addr),
            .DRP_EN                         (qpll_drp_en),
            .DRP_DI                         (qpll_drp_di),
            .DRP_WE                         (qpll_drp_we),
            .DRP_DONE                       (QPLL_DRP_DONE),
            .DRP_QPLLRESET                  (QPLL_DRP_RESET),
            .DRP_CRSCODE                    (QPLL_DRP_CRSCODE),
            .DRP_FSM                        (QPLL_DRP_FSM)
        );


        //---------- QPLL Wrapper ------------------------------------------
design_1_xdma_0_0_pcie2_ip_qpll_wrapper #
        (
	        .PCIE_SIM_MODE                  (PCIE_SIM_MODE),                // PCIe sim mode
	        .PCIE_GT_DEVICE                 (PCIE_GT_DEVICE),               // PCIe GT device
	        .PCIE_USE_MODE                  (PCIE_USE_MODE),                // PCIe use mode
	        .PCIE_PLL_SEL                   (PCIE_PLL_SEL),                 // PCIe PLL select for Gen1/Gen2 only
	        .PCIE_REFCLK_FREQ               (PCIE_REFCLK_FREQ)              // PCIe reference clock frequency
        )
        qpll_wrapper_i
        (
        //---------- QPLL Clock Ports --------------
            .QPLL_CPLLPDREFCLK              (CPLLPDREFCLK),
            .QPLL_GTGREFCLK                 (PIPE_CLK),
            .QPLL_QPLLLOCKDETCLK            (1'd0),
            .QPLL_QPLLOUTCLK                (QPLL_QPLLOUTCLK),
            .QPLL_QPLLOUTREFCLK             (QPLL_QPLLOUTREFCLK),
            .QPLL_QPLLLOCK                  (QPLL_QPLLLOCK),
        //---------- QPLL Reset Ports --------------
            .QPLL_QPLLPD                    (QPLL_QPLLPD),
            .QPLL_QPLLRESET                 (QPLL_QPLLRESET),
        //---------- QPLL DRP Ports ----------------
            .QPLL_DRPCLK                    (QPLL_DRP_CLK),
            .QPLL_DRPADDR                   (qpll_drp_addr),
            .QPLL_DRPEN                     (qpll_drp_en),
            .QPLL_DRPDI                     (qpll_drp_di),
            .QPLL_DRPWE                     (qpll_drp_we),
            .QPLL_DRPDO                     (qpll_drp_do),
            .QPLL_DRPRDY                    (qpll_drp_rdy)			
        );
  
endmodule
