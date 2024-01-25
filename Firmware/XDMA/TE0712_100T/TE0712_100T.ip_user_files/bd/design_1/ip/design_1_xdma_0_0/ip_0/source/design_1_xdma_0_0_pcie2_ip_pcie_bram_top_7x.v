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
// File       : design_1_xdma_0_0_pcie2_ip_pcie_bram_top_7x.v
// Version    : 3.3
//  Description : bram wrapper for Tx and Rx
//                given the pcie block attributes calculate the number of brams
//                and pipeline stages and instantiate the brams
//
//  Hierarchy:
//            pcie_bram_top    top level
//              pcie_brams     pcie_bram instantiations,
//                             pipeline stages (if any),
//                             address decode logic (if any),
//                             datapath muxing (if any)
//                pcie_bram    bram library cell wrapper
//                             the pcie_bram module can have a paramter that
//                             specifies the family (V6, V5, V4)
//
//-----------------------------------------------------------------------------

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_pcie_bram_top_7x
#(
  parameter IMPL_TARGET               = "HARD",        // the implementation target : HARD, SOFT
  parameter DEV_CAP_MAX_PAYLOAD_SUPPORTED = 0,         // MPS Supported : 0 - 128 B, 1 - 256 B, 2 - 512 B, 3 - 1024 B
  parameter [3:0]  LINK_CAP_MAX_LINK_SPEED = 4'h1,     // PCIe Link Speed : 1 - 2.5 GT/s; 2 - 5.0 GT/s
  parameter [5:0]  LINK_CAP_MAX_LINK_WIDTH = 6'h08,    // PCIe Link Width : 1 / 2 / 4 / 8

  parameter VC0_TX_LASTPACKET         = 31,            // Number of Packets in Transmit
  parameter TLM_TX_OVERHEAD           = 24,            // Overhead Bytes for Packets (Transmit)
  parameter TL_TX_RAM_RADDR_LATENCY   = 1,             // BRAM Read Address Latency (Transmit)
  parameter TL_TX_RAM_RDATA_LATENCY   = 2,             // BRAM Read Data Latency (Transmit)
  parameter TL_TX_RAM_WRITE_LATENCY   = 1,             // BRAM Write Latency (Transmit)

  parameter VC0_RX_RAM_LIMIT          = 'h1FFF,        // RAM Size (Receive)
  parameter TL_RX_RAM_RADDR_LATENCY   = 1,             // BRAM Read Address Latency (Receive)
  parameter TL_RX_RAM_RDATA_LATENCY   = 2,             // BRAM Read Data Latency (Receive)
  parameter TL_RX_RAM_WRITE_LATENCY   = 1              // BRAM Write Latency (Receive)
)
(
  input          user_clk_i,                  // Clock input
  input          reset_i,                     // Reset input

  input          mim_tx_wen,                  // Write Enable for Transmit path BRAM
  input  [12:0]  mim_tx_waddr,                // Write Address for Transmit path BRAM
  input  [71:0]  mim_tx_wdata,                // Write Data for Transmit path BRAM
  input          mim_tx_ren,                  // Read Enable for Transmit path BRAM
  input          mim_tx_rce,                  // Read Output Register Clock Enable for Transmit path BRAM
  input  [12:0]  mim_tx_raddr,                // Read Address for Transmit path BRAM
  output [71:0]  mim_tx_rdata,                // Read Data for Transmit path BRAM

  input          mim_rx_wen,                  // Write Enable for Receive path BRAM
  input  [12:0]  mim_rx_waddr,                // Write Enable for Receive path BRAM
  input  [71:0]  mim_rx_wdata,                // Write Enable for Receive path BRAM
  input          mim_rx_ren,                  // Read Enable for Receive path BRAM
  input          mim_rx_rce,                  // Read Output Register Clock Enable for Receive path BRAM
  input  [12:0]  mim_rx_raddr,                // Read Address for Receive path BRAM
  output [71:0]  mim_rx_rdata                 // Read Data for Receive path BRAM
);

  // TX calculations
  localparam MPS_BYTES = ((DEV_CAP_MAX_PAYLOAD_SUPPORTED == 0) ? 128 :
                          (DEV_CAP_MAX_PAYLOAD_SUPPORTED == 1) ? 256 :
                          (DEV_CAP_MAX_PAYLOAD_SUPPORTED == 2) ? 512 :
                                                                1024 );

  localparam BYTES_TX = (VC0_TX_LASTPACKET + 1) * (MPS_BYTES + TLM_TX_OVERHEAD);

  localparam ROWS_TX = 1;
  localparam COLS_TX = ((BYTES_TX <= 4096) ?  1 :
                        (BYTES_TX <= 8192) ?  2 :
                        (BYTES_TX <= 16384) ? 4 :
                        (BYTES_TX <= 32768) ? 8 :
                                             18
                       );

  // RX calculations
  localparam ROWS_RX = 1;

  localparam COLS_RX = ((VC0_RX_RAM_LIMIT < 'h0200) ? 1 :
                        (VC0_RX_RAM_LIMIT < 'h0400) ? 2 :
                        (VC0_RX_RAM_LIMIT < 'h0800) ? 4 :
                        (VC0_RX_RAM_LIMIT < 'h1000) ? 8 :
                                                 18
                       );

  initial begin
     $display("[%t] %m ROWS_TX %0d COLS_TX %0d", $time, ROWS_TX, COLS_TX);
     $display("[%t] %m ROWS_RX %0d COLS_RX %0d", $time, ROWS_RX, COLS_RX);
  end

design_1_xdma_0_0_pcie2_ip_pcie_brams_7x #(
    .LINK_CAP_MAX_LINK_WIDTH ( LINK_CAP_MAX_LINK_WIDTH ),
    .LINK_CAP_MAX_LINK_SPEED ( LINK_CAP_MAX_LINK_SPEED ),
    .IMPL_TARGET             ( IMPL_TARGET ),
    .NUM_BRAMS               ( COLS_TX ),
    .RAM_RADDR_LATENCY       ( TL_TX_RAM_RADDR_LATENCY ),
    .RAM_RDATA_LATENCY       ( TL_TX_RAM_RDATA_LATENCY ),
    .RAM_WRITE_LATENCY       ( TL_TX_RAM_WRITE_LATENCY )
  ) 
  pcie_brams_tx (
    .user_clk_i ( user_clk_i ),
    .reset_i    ( reset_i ),
    .waddr      ( mim_tx_waddr ),
    .wen        ( mim_tx_wen ),
    .ren        ( mim_tx_ren ),
    .rce        ( mim_tx_rce ),
    .wdata      ( mim_tx_wdata ),
    .raddr      ( mim_tx_raddr ),
    .rdata      ( mim_tx_rdata )
  );

design_1_xdma_0_0_pcie2_ip_pcie_brams_7x #(
    .LINK_CAP_MAX_LINK_WIDTH ( LINK_CAP_MAX_LINK_WIDTH ),
    .LINK_CAP_MAX_LINK_SPEED ( LINK_CAP_MAX_LINK_SPEED ),
    .IMPL_TARGET             ( IMPL_TARGET ),
    .NUM_BRAMS               ( COLS_RX ),
    .RAM_RADDR_LATENCY       ( TL_RX_RAM_RADDR_LATENCY ),
    .RAM_RDATA_LATENCY       ( TL_RX_RAM_RDATA_LATENCY ),
    .RAM_WRITE_LATENCY       ( TL_RX_RAM_WRITE_LATENCY )
  ) pcie_brams_rx (
    .user_clk_i ( user_clk_i ),
    .reset_i    ( reset_i ),
    .waddr      ( mim_rx_waddr ),
    .wen        ( mim_rx_wen ),
    .ren        ( mim_rx_ren ),
    .rce        ( mim_rx_rce ),
    .wdata      ( mim_rx_wdata ),
    .raddr      ( mim_rx_raddr ),
    .rdata      ( mim_rx_rdata )
   );

endmodule // pcie_bram_top

