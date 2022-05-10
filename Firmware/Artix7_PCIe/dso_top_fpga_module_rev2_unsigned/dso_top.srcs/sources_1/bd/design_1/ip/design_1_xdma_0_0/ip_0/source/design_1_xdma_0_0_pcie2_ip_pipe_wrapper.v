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
// File       : design_1_xdma_0_0_pcie2_ip_pipe_wrapper.v
// Version    : 3.3
//------------------------------------------------------------------------------
//  Filename     :  pipe_wrapper.v
//  Description  :  PIPE Wrapper for 7 Series Transceiver
//  Version      :  20.2
//------------------------------------------------------------------------------

//---------- PIPE Wrapper Hierarchy --------------------------------------------
//  pipe_wrapper.v 
//      pipe_clock.v
//      pipe_reset.v or gtp_pipe_reset.v
//      qpll_reset.v
//          * Generate GTXE2_CHANNEL for every lane.
//              pipe_user.v
//              pipe_rate.v or gtp_pipe_rate.v
//              pipe_sync.v 
//              pipe_drp.v or gtp_pipe_drp.v
//              pipe_eq.v
//                  rxeq_scan.v
//              gt_wrapper.v
//                  GTXE2_CHANNEL or GTHE2_CHANNEL or GTPE2_CHANNEL
//                  GTXE2_COMMON  or GTHE2_COMMON or GTPE2_CHANNEL
//          * Generate GTXE2_COMMON for every quad.
//              qpll_drp.v
//              qpll_wrapper.v
//------------------------------------------------------------------------------

//---------- PIPE Wrapper Parameter Encoding -----------------------------------
//  PCIE_SIM_MODE                 : "FALSE" = Normal mode (default)
//                                : "TRUE"  = Simulation only
//  PCIE_SIM_TX_EIDLE_DRIVE_LEVEL : "0", "1" (default), "X" simulation TX electrical idle drive level 
//  PCIE_GT_DEVICE                : "GTX" (default)
//                                : "GTH"
//                                : "GTP"
//  PCIE_USE_MODE                 : "1.0" = GTX IES 325T or GTP IES/GES use mode.
//                                : "1.1" = GTX IES 485T use mode.
//                                : "2.0" = GTH IES 690T use mode for 1.0 silicon.
//                                : "2.1" = GTH GES 690T use mode for 1.2 and 2.0 silicon.  SW model use "2.0"
//                                : "3.0" = GTX GES 325T or 485T use mode (default).
//  PCIE_PLL_SEL                  : "CPLL" (default)
//                                : "QPLL"
//  PCIE_AUX_CDR_GEN3_EN          : "FALSE" Use Primary CDR for Gen3 only (GTH 2.0) 
//                                : "TRUE"  Use AUX CDR for Gen3 only (default) (GTH 2.0)
//  PCIE_LPM_DFE                  : "DFE" for Gen1/Gen2 only (GTX, GTH)
//                                : "LPM" for Gen1/Gen2 only (default) (GTX, GTH)
//  PCIE_LPM_DFE_GEN3             : "DFE" for Gen3 only (GTX, GTH)
//                                : "LPM" for Gen3 only (default) (GTX, GTH)
//  PCIE_EXT_CLK                  : "FALSE" = Use internal clock module(default)
//                                : "TRUE"  = Use external clock module
//  PCIE_POWER_SAVING             : "FALSE" = Disable PLL power saving
//                                : "TRUE"  = Enable PLL power saving (default)
//  PCIE_ASYNC_EN                 : "FALSE" = Synchronous  mode (default)
//                                : "TRUE"  = Asynchronous mode.
//  PCIE_TXBUF_EN                 : "FALSE" = TX buffer bypass for Gen1/Gen2 only (default)
//                                : "TRUE"  = TX buffer use    for Gen1/Gen2 only (for debug only)
//  PCIE_RXBUF_EN                 : "FALSE" = RX buffer bypass for Gen3      only (not supported)
//                                : "TRUE"  = RX buffer use    for Gen3      only (default)
//  PCIE_TXSYNC_MODE              : 0 = Manual TX sync (default) (GTX, GTH)
//                                : 1 = Auto TX sync (GTH)
//  PCIE_RXSYNC_MODE              : 0 = Manual RX sync (default) (GTX, GTH)
//                                : 1 = Auto RX sync (GTH)
//  PCIE_CHAN_BOND                : 0 = One-Hop (default)
//                                : 1 = Daisy-Chain
//                                : 2 = Binary-Tree
//  PCIE_CHAN_BOND_EN             : "FALSE" = Channel bonding disable for Gen1/Gen2 only
//                                : "TRUE"  = Channel bonding enable  for Gen1/Gen2 only
//  PCIE_LANE                     : 1 (default), 2, 4, or 8
//  PCIE_LINK_SPEED               : 1 = PCIe Gen1           Mode
//                                : 2 = PCIe Gen1/Gen2      Mode (default)
//                                : 3 = PCIe Gen1/Gen2/Gen3 Mode
//  PCIE_REFCLK_FREQ              : 0 = 100 MHz (default)
//                                : 1 = 125 MHz
//                                : 2 = 250 MHz
//  PCIE_USERCLK[1/2]_FREQ        : 0 = Disable user clock
//                                : 1 =  31.25 MHz
//                                : 2 =  62.50 MHz (default)
//                                : 3 = 125.00 MHz
//                                : 4 = 250.00 MHz
//                                : 5 = 500.00 MHz
//  PCIE_TX_EIDLE_ASSERT_DELAY    : 3'd0 to 3'd7 (default = 3'd4)
//  PCIE_RXEQ_MODE_GEN3           : 0 = Return same TX coefficients 
//                                : 1 = Return TX preset #5
//  PCIE_OOBCLK_MODE              : 0 = Reference clock
//                                : 1 =  62.50 MHz (default)
//                                : 2 =  50.00 MHz (requires 1 BUFG)
//  PCIE_JTAG_MODE                : 0 = Normal operation (default)
//                                : 1 = JTAG mode (for debug only)
//  PCIE_DEBUG_MODE               : 0 = Normal operation (default)
//                                : 1 = Debug mode (for debug only)
//------------------------------------------------------------------------------

//---------- Notes -------------------------------------------------------------
//  Notes within the PIPE Wrapper RTL files are for internal use only.
//  Data Width : This PIPE Wrapper supports a 32-bit [TX/RX]DATA interface.  
//               In Gen1/Gen2 modes, only 16-bits [15:0] are used.
//               In Gen3 mode, all 32-bits are used.
//------------------------------------------------------------------------------


`timescale 1ns / 1ps


//---------- PIPE Wrapper ------------------------------------------------------
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_pipe_wrapper #
(

    parameter PCIE_SIM_MODE                 = "FALSE",      // PCIe sim mode 
    parameter PCIE_SIM_SPEEDUP              = "FALSE",      // PCIe sim speedup
    parameter PCIE_SIM_TX_EIDLE_DRIVE_LEVEL = "1",          // PCIe sim TX electrical idle drive level 
    parameter PCIE_GT_DEVICE                = "GTP",        // PCIe GT device
    parameter PCIE_USE_MODE                 = "1.0",        // PCIe use mode
    parameter PCIE_PLL_SEL                  = "CPLL",       // PCIe PLL select for Gen1/Gen2 (GTX/GTH) only
    parameter PCIE_AUX_CDR_GEN3_EN          = "TRUE",       // PCIe AUX CDR for Gen3 (GTH 2.0) only
    parameter PCIE_LPM_DFE                  = "LPM",        // PCIe LPM or DFE mode for Gen1/Gen2 only
    parameter PCIE_LPM_DFE_GEN3             = "DFE",        // PCIe LPM or DFE mode for Gen3      only
    parameter PCIE_EXT_CLK                  = "FALSE",      // PCIe external clock
    parameter PCIE_EXT_GT_COMMON            = "FALSE",      // PCIe external GT COMMON
    parameter EXT_CH_GT_DRP                 = "FALSE",      // PCIe external CH DRP

    parameter TX_MARGIN_FULL_0              = 7'b1001111,                          // 1000 mV
    parameter TX_MARGIN_FULL_1              = 7'b1001110,                          // 950 mV
    parameter TX_MARGIN_FULL_2              = 7'b1001101,                          // 900 mV
    parameter TX_MARGIN_FULL_3              = 7'b1001100,                          // 850 mV
    parameter TX_MARGIN_FULL_4              = 7'b1000011,                          // 400 mV
    parameter TX_MARGIN_LOW_0               = 7'b1000101,                          // 500 mV
    parameter TX_MARGIN_LOW_1               = 7'b1000110 ,                          // 450 mV
    parameter TX_MARGIN_LOW_2               = 7'b1000011,                          // 400 mV
    parameter TX_MARGIN_LOW_3               = 7'b1000010 ,                          // 350 mV
    parameter TX_MARGIN_LOW_4               = 7'b1000000 ,

    parameter PCIE_POWER_SAVING             = "TRUE",       // PCIe power saving
    parameter PCIE_ASYNC_EN                 = "FALSE",      // PCIe async enable
    parameter PCIE_TXBUF_EN                 = "FALSE",      // PCIe TX buffer enable for Gen1/Gen2 only
    parameter PCIE_RXBUF_EN                 = "TRUE",       // PCIe RX buffer enable for Gen3      only
    parameter PCIE_TXSYNC_MODE              = 0,            // PCIe TX sync mode
    parameter PCIE_RXSYNC_MODE              = 0,            // PCIe RX sync mode
    parameter PCIE_CHAN_BOND                = 1,            // PCIe channel bonding mode
    parameter PCIE_CHAN_BOND_EN             = "TRUE",       // PCIe channel bonding enable for Gen1/Gen2 only
    parameter PCIE_LANE                     = 4,            // PCIe number of lanes
    parameter PCIE_LINK_SPEED               = 2,            // PCIe link speed 
    parameter PCIE_REFCLK_FREQ              = 0,            // PCIe reference clock frequency
    parameter PCIE_USERCLK1_FREQ            = 4,            // PCIe user clock 1 frequency
    parameter PCIE_USERCLK2_FREQ            = 3,            // PCIe user clock 2 frequency
    parameter PCIE_TX_EIDLE_ASSERT_DELAY    = 3'd2,         // PCIe TX electrical idle assert delay
    parameter PCIE_RXEQ_MODE_GEN3           = 1,            // PCIe RX equalization mode
    parameter PCIE_OOBCLK_MODE              = 1,            // PCIe OOB clock mode
    parameter PCIE_JTAG_MODE                = 0,            // PCIe JTAG mode
    parameter PCIE_DEBUG_MODE               = 0             // PCIe debug mode 
    
)                                                     
                                                            //--------------------------------------
(                                                           // Gen1/Gen2  | Gen3 
                                                            //--------------------------------------
    //---------- PIPE Clock & Reset Ports ------------------
    input                           PIPE_CLK,               // Reference clock that drives MMCM
    input                           PIPE_RESET_N,           // PCLK       | PCLK
   
    output                          PIPE_PCLK,              // Drives [TX/RX]USRCLK in Gen1/Gen2
                                                            // Drives TXUSRCLK in Gen3
                                                            // Drives RXUSRCLK in Gen3 async mode only
    //---------- PIPE TX Data Ports ------------------------
    input       [(PCIE_LANE*32)-1:0]PIPE_TXDATA,            // PCLK       | PCLK
    input       [(PCIE_LANE*4)-1:0] PIPE_TXDATAK,           // PCLK       | PCLK
    
    output      [PCIE_LANE-1:0]     PIPE_TXP,               // Serial data
    output      [PCIE_LANE-1:0]     PIPE_TXN,               // Serial data

    //---------- PIPE RX Data Ports ------------------------
    input       [PCIE_LANE-1:0]     PIPE_RXP,               // Serial data
    input       [PCIE_LANE-1:0]     PIPE_RXN,               // Serial data
    
    output      [(PCIE_LANE*32)-1:0]PIPE_RXDATA,            // PCLK       | RXUSRCLK
    output      [(PCIE_LANE*4)-1:0] PIPE_RXDATAK,           // PCLK       | RXUSRCLK
    
    //---------- PIPE Command Ports ------------------------
    input                           PIPE_TXDETECTRX,        // PCLK       | PCLK
    input       [PCIE_LANE-1:0]     PIPE_TXELECIDLE,        // PCLK       | PCLK
    input       [PCIE_LANE-1:0]     PIPE_TXCOMPLIANCE,      // PCLK       | PCLK   
    input       [PCIE_LANE-1:0]     PIPE_RXPOLARITY,        // PCLK       | RXUSRCLK
    input       [(PCIE_LANE*2)-1:0] PIPE_POWERDOWN,         // PCLK       | PCLK
    input       [ 1:0]              PIPE_RATE,              // PCLK       | PCLK
    
    //---------- PIPE Electrical Command Ports -------------   
    input       [ 2:0]              PIPE_TXMARGIN,          // Async      | Async 
    input                           PIPE_TXSWING,           // Async      | Async 
    input       [PCIE_LANE-1:0]     PIPE_TXDEEMPH,          // Async/PCLK | Async/PCLK  
    input       [(PCIE_LANE*2)-1:0] PIPE_TXEQ_CONTROL,      // PCLK       | PCLK  
    input       [(PCIE_LANE*4)-1:0] PIPE_TXEQ_PRESET,       // PCLK       | PCLK  
    input       [(PCIE_LANE*4)-1:0] PIPE_TXEQ_PRESET_DEFAULT,// PCLK      | PCLK 
    input       [(PCIE_LANE*6)-1:0] PIPE_TXEQ_DEEMPH,       // PCLK       | PCLK  
                                                                            
    input       [(PCIE_LANE*2)-1:0] PIPE_RXEQ_CONTROL,      // PCLK       | PCLK  
    input       [(PCIE_LANE*3)-1:0] PIPE_RXEQ_PRESET,       // PCLK       | PCLK  
    input       [(PCIE_LANE*6)-1:0] PIPE_RXEQ_LFFS,         // PCLK       | PCLK  
    input       [(PCIE_LANE*4)-1:0] PIPE_RXEQ_TXPRESET,     // PCLK       | PCLK  
    input       [PCIE_LANE-1:0]     PIPE_RXEQ_USER_EN,      // PCLK       | PCLK      
    input       [(PCIE_LANE*18)-1:0]PIPE_RXEQ_USER_TXCOEFF, // PCLK       | PCLK
    input       [PCIE_LANE-1:0]     PIPE_RXEQ_USER_MODE,    // PCLK       | PCLK
                                                                           
    output      [ 5:0]              PIPE_TXEQ_FS,           // Async      | Async  
    output      [ 5:0]              PIPE_TXEQ_LF,           // Async      | Async 
    output      [(PCIE_LANE*18)-1:0]PIPE_TXEQ_COEFF,        // PCLK       | PCLK  
    output      [PCIE_LANE-1:0]     PIPE_TXEQ_DONE,         // PCLK       | PCLK  
                                                                           
    output      [(PCIE_LANE*18)-1:0]PIPE_RXEQ_NEW_TXCOEFF,  // PCLK       | PCLK  
    output      [PCIE_LANE-1:0]     PIPE_RXEQ_LFFS_SEL,     // PCLK       | PCLK  
    output      [PCIE_LANE-1:0]     PIPE_RXEQ_ADAPT_DONE,   // PCLK       | PCLK  
    output      [PCIE_LANE-1:0]     PIPE_RXEQ_DONE,         // PCLK       | PCLK  
    
    //---------- PIPE Status Ports -------------------------
    output      [PCIE_LANE-1:0]     PIPE_RXVALID,           // PCLK       | RXUSRCLK
    output      [PCIE_LANE-1:0]     PIPE_PHYSTATUS,         // PCLK       | RXUSRCLK
    output      [PCIE_LANE-1:0]     PIPE_PHYSTATUS_RST,     // PCLK       | RXUSRCLK
    output      [PCIE_LANE-1:0]     PIPE_RXELECIDLE,        // Async      | Async
    output      [PCIE_LANE-1:0]     PIPE_EYESCANDATAERROR,  // Async      | Async
    output      [(PCIE_LANE*3)-1:0] PIPE_RXSTATUS,          // PCLK       | RXUSRCLK
    output      [PCIE_LANE-1:0]     PIPE_RXPMARESETDONE,    // Async      | Async
    output      [(PCIE_LANE*3)-1:0] PIPE_RXBUFSTATUS,       // PCLK       | RXUSRCLK
    output      [PCIE_LANE-1:0]     PIPE_TXPHALIGNDONE,     // Async      | Async
    output      [PCIE_LANE-1:0]     PIPE_TXPHINITDONE,      // Async      | Async
    output      [PCIE_LANE-1:0]     PIPE_TXDLYSRESETDONE,   // Async      | Async
    output      [PCIE_LANE-1:0]     PIPE_RXPHALIGNDONE,     // Async      | Async
    output      [PCIE_LANE-1:0]     PIPE_RXDLYSRESETDONE,   // Async      | Async
    output      [PCIE_LANE-1:0]     PIPE_RXSYNCDONE,        // PCLK       | RXUSRCLK
    output      [(PCIE_LANE*8)-1:0] PIPE_RXDISPERR,         // PCLK       | RXUSRCLK
    output      [(PCIE_LANE*8)-1:0] PIPE_RXNOTINTABLE,      // PCLK       | RXUSRCLK
    output      [PCIE_LANE-1:0]     PIPE_RXCOMMADET,        // PCLK       | RXUSRCLK
    
    //---------- PIPE User Ports ---------------------------
    input                           PIPE_MMCM_RST_N,        // Async      | Async
    input       [PCIE_LANE-1:0]     PIPE_RXSLIDE,           // PCLK       | RXUSRCLK
    
    output      [PCIE_LANE-1:0]     PIPE_CPLL_LOCK,         // Async      | Async
    output      [(PCIE_LANE-1)>>2:0]PIPE_QPLL_LOCK,         // Async      | Async
    output                          PIPE_PCLK_LOCK,         // Async      | Async
    output      [PCIE_LANE-1:0]     PIPE_RXCDRLOCK,         // Async      | Async
    output                          PIPE_USERCLK1,          // Optional user clock
    output                          PIPE_USERCLK2,          // Optional user clock
    output                          PIPE_RXUSRCLK,          // RXUSRCLK 
                                                            // Equivalent to PCLK in Gen1/Gen2
                                                            // Equivalent to RXOUTCLK[0] in Gen3
    output      [PCIE_LANE-1:0]     PIPE_RXOUTCLK,          // RX recovered clock (for debug only)
    output      [PCIE_LANE-1:0]     PIPE_TXSYNC_DONE,       // PCLK       | PCLK
    output      [PCIE_LANE-1:0]     PIPE_RXSYNC_DONE,       // PCLK       | PCLK
    output      [PCIE_LANE-1:0]     PIPE_GEN3_RDY,          // PCLK       | RXUSRCLK
    output      [PCIE_LANE-1:0]     PIPE_RXCHANISALIGNED,
    output      [PCIE_LANE-1:0]     PIPE_ACTIVE_LANE,

// Shared Logic Internal
    output                          INT_PCLK_OUT_SLAVE,     // PCLK       | PCLK
    output                          INT_RXUSRCLK_OUT,       // RXUSERCLK
    output  [PCIE_LANE-1:0  ]       INT_RXOUTCLK_OUT,       // RX recovered clock
    output                          INT_DCLK_OUT,           // DCLK       | DCLK
    output                          INT_USERCLK1_OUT,       // Optional user clock
    output                          INT_USERCLK2_OUT,       // Optional user clock
    output                          INT_OOBCLK_OUT,         // OOB        | OOB
    output                          INT_MMCM_LOCK_OUT,      // Async      | Async
    output  [1:0]                   INT_QPLLLOCK_OUT,
    output  [1:0]                   INT_QPLLOUTCLK_OUT,
    output  [1:0]                   INT_QPLLOUTREFCLK_OUT,
    input   [PCIE_LANE-1:0]         INT_PCLK_SEL_SLAVE,

 
  // Shared Logic External
    
    //---------- External Clock Ports ----------------------
    input                           PIPE_PCLK_IN,           // PCLK       | PCLK
    input                           PIPE_RXUSRCLK_IN,       // RXUSERCLK
                                                            // Equivalent to PCLK in Gen1/Gen2
                                                            // Equivalent to RXOUTCLK[0] in Gen3
    input       [PCIE_LANE-1:0]     PIPE_RXOUTCLK_IN,       // RX recovered clock
    input                           PIPE_DCLK_IN,           // DCLK       | DCLK
    input                           PIPE_USERCLK1_IN,       // Optional user clock
    input                           PIPE_USERCLK2_IN,       // Optional user clock
    input                           PIPE_OOBCLK_IN,         // OOB        | OOB
    input                           PIPE_MMCM_LOCK_IN,      // Async      | Async
    
    output                          PIPE_TXOUTCLK_OUT,      // PCLK       | PCLK
    output      [PCIE_LANE-1:0]     PIPE_RXOUTCLK_OUT,      // RX recovered clock (for debug only)
    output      [PCIE_LANE-1:0]     PIPE_PCLK_SEL_OUT,      // PCLK       | PCLK
    output                          PIPE_GEN3_OUT,          // PCLK       | PCLK
    //---------- External GT COMMON Ports ----------------------
    input       [11:0]              QPLL_DRP_CRSCODE,
    input       [17:0]              QPLL_DRP_FSM,
    input       [1:0]               QPLL_DRP_DONE,
    input       [1:0]               QPLL_DRP_RESET,
    input       [1:0]               QPLL_QPLLLOCK,
    input       [1:0]               QPLL_QPLLOUTCLK,
    input       [1:0]               QPLL_QPLLOUTREFCLK,
    output              	          QPLL_QPLLPD,
    output      [1:0]               QPLL_QPLLRESET,
    output              	          QPLL_DRP_CLK,
    output              	          QPLL_DRP_RST_N,
    output              	          QPLL_DRP_OVRD,
    output              	          QPLL_DRP_GEN3,
    output              	          QPLL_DRP_START,

    //---------- TRANSCEIVER DEBUG -----------------------
    input       [ 2:0]              PIPE_TXPRBSSEL,         // PCLK       | PCLK
    input       [ 2:0]              PIPE_RXPRBSSEL,         // PCLK       | PCLK
    input                           PIPE_TXPRBSFORCEERR,    // PCLK       | PCLK
    input                           PIPE_RXPRBSCNTRESET,    // PCLK       | PCLK
    input       [ 2:0]              PIPE_LOOPBACK,          // PCLK       | PCLK
    
    output      [PCIE_LANE-1:0]     PIPE_RXPRBSERR,         // PCLK       | PCLK
    input       [PCIE_LANE-1:0]     PIPE_TXINHIBIT,         // PCLK       | PCLK
    
    //---------- FSM Ports ---------------------------------
    output      [4:0]               PIPE_RST_FSM,           // PCLK       | PCLK
    output      [11:0]              PIPE_QRST_FSM,          // PCLK       | PCLK
    output      [(PCIE_LANE*5)-1:0] PIPE_RATE_FSM,          // PCLK       | PCLK
    output      [(PCIE_LANE*6)-1:0] PIPE_SYNC_FSM_TX,       // PCLK       | PCLK
    output      [(PCIE_LANE*7)-1:0] PIPE_SYNC_FSM_RX,       // PCLK       | PCLK
    output      [(PCIE_LANE*7)-1:0] PIPE_DRP_FSM,           // DCLK       | DCLK
    output      [(PCIE_LANE*6)-1:0] PIPE_TXEQ_FSM,          // PCLK       | PCLK
    output      [(PCIE_LANE*6)-1:0] PIPE_RXEQ_FSM,          // PCLK       | PCLK
    output      [((((PCIE_LANE-1)>>2)+1)*9)-1:0]PIPE_QDRP_FSM, // DCLK    | DCLK  
        
    output                          PIPE_RST_IDLE,          // PCLK       | PCLK 
    output                          PIPE_QRST_IDLE,         // PCLK       | PCLK 
    output                          PIPE_RATE_IDLE,         // PCLK       | PCLK 
    
    //----------- Channel DRP----------------------------
    output                            EXT_CH_GT_DRPCLK,
    input        [(PCIE_LANE*9)-1:0] EXT_CH_GT_DRPADDR,
    input        [PCIE_LANE-1:0]     EXT_CH_GT_DRPEN,
    input        [(PCIE_LANE*16)-1:0]EXT_CH_GT_DRPDI,
    input        [PCIE_LANE-1:0]     EXT_CH_GT_DRPWE,

    output       [(PCIE_LANE*16)-1:0]EXT_CH_GT_DRPDO,
    output       [PCIE_LANE-1:0]     EXT_CH_GT_DRPRDY,

    //---------- JTAG Ports --------------------------------
    input                           PIPE_JTAG_EN,           // DCLK       | DCLK
    output      [PCIE_LANE-1:0]     PIPE_JTAG_RDY,          // DCLK       | DCLK
    
    //---------- Debug Ports -------------------------------
    output      [PCIE_LANE-1:0]     PIPE_DEBUG_0,           // Async      | Async 
    output      [PCIE_LANE-1:0]     PIPE_DEBUG_1,           // Async      | Async 
    output      [PCIE_LANE-1:0]     PIPE_DEBUG_2,           // Async      | Async 
    output      [PCIE_LANE-1:0]     PIPE_DEBUG_3,           // Async      | Async 
    output      [PCIE_LANE-1:0]     PIPE_DEBUG_4,           // Async      | Async 
    output      [PCIE_LANE-1:0]     PIPE_DEBUG_5,           // Async      | Async   
    output      [PCIE_LANE-1:0]     PIPE_DEBUG_6,           // Async      | Async   
    output      [PCIE_LANE-1:0]     PIPE_DEBUG_7,           // Async      | Async   
    output      [PCIE_LANE-1:0]     PIPE_DEBUG_8,           // Async      | Async   
    output      [PCIE_LANE-1:0]     PIPE_DEBUG_9,           // Async      | Async   
    output      [31:0]              PIPE_DEBUG,             // Async      | Async 
    
    output      [(PCIE_LANE*15)-1:0] PIPE_DMONITOROUT       // DMONITORCLK
    
);

    //---------- Input Registers ---------------------------
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                             reset_n_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                             reset_n_reg2;

    //---------- PIPE Clock Module Output ------------------ 
    wire                            clk_pclk;  
    wire                            clk_rxusrclk;
    wire        [PCIE_LANE-1:0]     clk_rxoutclk;
    wire                            clk_dclk;
    wire                            clk_oobclk;
    wire                            clk_mmcm_lock;
    
    //---------- PIPE Reset Module Output ------------------
    wire                            rst_cpllreset;
    wire                            rst_cpllpd;
    wire                            rst_rxusrclk_reset;
    wire                            rst_dclk_reset;   
    wire rst_gtreset;
    wire                            rst_drp_start;
    wire                            rst_drp_x16x20_mode;
    wire                            rst_drp_x16;
    wire rst_userrdy;
    wire                            rst_txsync_start;
    wire                            rst_idle;
    wire        [4:0]               rst_fsm;
    
    //------------------------------------------------------
    wire                            gtp_rst_qpllreset;      // GTP
    wire                            gtp_rst_qpllpd;         // GTP
    
    //------------------------------------------------------
    wire        [(PCIE_LANE-1)>>2:0]qpllreset;          
    wire                            qpllpd;
    
    //---------- QPLL Reset Module Output ------------------
    wire                            qrst_ovrd;
    wire                            qrst_drp_start;
    wire                            qrst_qpllreset;
    wire                            qrst_qpllpd;
    wire                            qrst_idle;
    wire        [3:0]               qrst_fsm;
    
    //---------- PIPE_JTAG Master Module Output ------------
    wire        [(PCIE_LANE*37)-1:0] jtag_sl_iport;
    wire        [(PCIE_LANE*17)-1:0] jtag_sl_oport;
    
    //---------- PIPE User Module Output -------------------
    wire [PCIE_LANE-1:0] gt_txpmareset_i;                 
    wire [PCIE_LANE-1:0] gt_rxpmareset_i;                 

    wire        [PCIE_LANE-1:0]     user_oobclk;
    wire        [PCIE_LANE-1:0]     user_resetovrd;
    wire        [PCIE_LANE-1:0]     user_txpmareset;                 
    wire        [PCIE_LANE-1:0]     user_rxpmareset;                
    wire        [PCIE_LANE-1:0]     user_rxcdrreset;
    wire        [PCIE_LANE-1:0]     user_rxcdrfreqreset;
    wire [PCIE_LANE-1:0] user_rxdfelpmreset;
    wire [PCIE_LANE-1:0] user_eyescanreset;
    wire [PCIE_LANE-1:0] user_txpcsreset;                   
    wire [PCIE_LANE-1:0] user_rxpcsreset;                 
    wire [PCIE_LANE-1:0] user_rxbufreset;
    wire        [PCIE_LANE-1:0]     user_resetovrd_done;
    wire        [PCIE_LANE-1:0]     user_active_lane;
    wire        [PCIE_LANE-1:0]     user_resetdone /* synthesis syn_keep=1 */;
    wire        [PCIE_LANE-1:0]     user_rxcdrlock;
    wire        [PCIE_LANE-1:0]     user_rx_converge; 
    wire        [PCIE_LANE-1:0]     PIPE_RXEQ_CONVERGE; 
    
    //---------- PIPE Rate Module Output -------------------
    wire        [PCIE_LANE-1:0]     rate_cpllpd;
    wire        [PCIE_LANE-1:0]     rate_qpllpd;
    wire        [PCIE_LANE-1:0]     rate_cpllreset;
    wire        [PCIE_LANE-1:0]     rate_qpllreset;
    wire        [PCIE_LANE-1:0]     rate_txpmareset;
    wire        [PCIE_LANE-1:0]     rate_rxpmareset;
    wire        [(PCIE_LANE*2)-1:0] rate_sysclksel;
    wire        [PCIE_LANE-1:0]     rate_pclk_sel;
    wire        [PCIE_LANE-1:0]     rate_drp_start;
    wire        [PCIE_LANE-1:0]     rate_drp_x16x20_mode;
    wire        [PCIE_LANE-1:0]     rate_drp_x16;
    wire        [PCIE_LANE-1:0]     rate_gen3;
    wire        [(PCIE_LANE*3)-1:0] rate_rate;
    wire        [PCIE_LANE-1:0]     rate_resetovrd_start;
    wire        [PCIE_LANE-1:0]     rate_txsync_start;
    wire        [PCIE_LANE-1:0]     rate_done;
    wire        [PCIE_LANE-1:0]     rate_rxsync_start;
    wire        [PCIE_LANE-1:0]     rate_rxsync;
    wire        [PCIE_LANE-1:0]     rate_idle;
    wire        [(PCIE_LANE*5)-1:0] rate_fsm;

    //---------- PIPE Sync Module Output -------------------
    wire        [PCIE_LANE-1:0]     sync_txphdlyreset;
    wire        [PCIE_LANE-1:0]     sync_txphalign;    
    wire        [PCIE_LANE-1:0]     sync_txphalignen; 
    wire        [PCIE_LANE-1:0]     sync_txphinit;   
    wire        [PCIE_LANE-1:0]     sync_txdlybypass; 
    wire        [PCIE_LANE-1:0]     sync_txdlysreset;   
    wire        [PCIE_LANE-1:0]     sync_txdlyen;      
    wire        [PCIE_LANE-1:0]     sync_txsync_done;
    wire        [(PCIE_LANE*6)-1:0] sync_fsm_tx;
    
    wire        [PCIE_LANE-1:0]     sync_rxphalign;
    wire        [PCIE_LANE-1:0]     sync_rxphalignen;
    wire        [PCIE_LANE-1:0]     sync_rxdlybypass;
    wire        [PCIE_LANE-1:0]     sync_rxdlysreset;
    wire        [PCIE_LANE-1:0]     sync_rxdlyen;
    wire        [PCIE_LANE-1:0]     sync_rxddien;
    wire        [PCIE_LANE-1:0]     sync_rxsync_done; 
    wire        [PCIE_LANE-1:0]     sync_rxsync_donem;      
    wire        [(PCIE_LANE*7)-1:0] sync_fsm_rx;
 
    wire        [PCIE_LANE-1:0]     txdlysresetdone;
    wire        [PCIE_LANE-1:0]     txphaligndone;
    wire        [PCIE_LANE-1:0]     rxdlysresetdone;
    wire        [PCIE_LANE-1:0]     rxphaligndone_s;    
    
    wire                            txsyncallin;            // GTH     
    wire                            rxsyncallin;            // GTH
    
    //---------- PIPE DRP Module Output --------------------
    wire        [(PCIE_LANE*9)-1:0] drp_addr;
    wire        [PCIE_LANE-1:0]     drp_en;
    wire        [(PCIE_LANE*16)-1:0]drp_di;   
    wire        [PCIE_LANE-1:0]     drp_we;
    wire        [PCIE_LANE-1:0]     drp_done;
    wire        [(PCIE_LANE*3)-1:0] drp_fsm;

    //---------- PIPE JTAG Slave Module Output--------------
    wire	      [(PCIE_LANE*17)-1:0]jtag_sl_addr;
    wire        [PCIE_LANE-1:0]     jtag_sl_den;
    wire        [PCIE_LANE-1:0]     jtag_sl_en;
    wire        [(PCIE_LANE*16)-1:0]jtag_sl_di;
    wire        [PCIE_LANE-1:0]     jtag_sl_we;
    
    //---------- PIPE DRP MUX Output -----------------------
    wire	      [(PCIE_LANE*9)-1:0] drp_mux_addr;
    wire        [PCIE_LANE-1:0]     drp_mux_en;
    wire        [(PCIE_LANE*16)-1:0]drp_mux_di;
    wire        [PCIE_LANE-1:0]     drp_mux_we;

    //---------- PIPE EQ Module Output ---------------------
    wire        [PCIE_LANE-1:0]     eq_txeq_deemph;
    wire [(PCIE_LANE*5)-1:0] eq_txeq_precursor;
    wire        [(PCIE_LANE*7)-1:0] eq_txeq_maincursor;
    wire [(PCIE_LANE*5)-1:0] eq_txeq_postcursor;
    
    wire        [PCIE_LANE-1:0]     eq_rxeq_adapt_done;
    
    //---------- PIPE DRP Module Output --------------------
    wire        [((((PCIE_LANE-1)>>2)+1)*8)-1:0]  qdrp_addr;
    wire        [(PCIE_LANE-1)>>2:0]              qdrp_en;
    wire        [((((PCIE_LANE-1)>>2)+1)*16)-1:0] qdrp_di;   
    wire        [(PCIE_LANE-1)>>2:0]              qdrp_we;
    wire        [(PCIE_LANE-1)>>2:0]              qdrp_done;
    wire        [(PCIE_LANE-1)>>2:0]              qdrp_qpllreset;
    wire        [((((PCIE_LANE-1)>>2)+1)*6)-1:0]  qdrp_crscode;
    wire        [((((PCIE_LANE-1)>>2)+1)*9)-1:0]  qdrp_fsm;

    //---------- QPLL Wrapper Output -----------------------
    wire        [(PCIE_LANE-1)>>2:0]              qpll_qplloutclk;
    wire        [(PCIE_LANE-1)>>2:0]              qpll_qplloutrefclk;
    wire        [(PCIE_LANE-1)>>2:0]              qpll_qplllock;
    wire        [((((PCIE_LANE-1)>>2)+1)*16)-1:0] qpll_do;
    wire        [(PCIE_LANE-1)>>2:0]              qpll_rdy;

    //---------- GTX Wrapper Output ------------------------
    wire        [PCIE_LANE-1:0]     gt_txoutclk;
    wire        [PCIE_LANE-1:0]     gt_rxoutclk;
    wire        [PCIE_LANE-1:0] gt_cplllock;
    wire        [PCIE_LANE-1:0]     gt_rxcdrlock;
    wire        [PCIE_LANE-1:0]     gt_txresetdone;
    wire        [PCIE_LANE-1:0]     gt_rxresetdone;
    wire        [PCIE_LANE-1:0]     gt_eyescandataerror;
    wire        [PCIE_LANE-1:0] gt_rxpmaresetdone;
    wire        [(PCIE_LANE*8)-1:0]     gt_rxdisperr;
    wire        [(PCIE_LANE*8)-1:0]     gt_rxnotintable;
    wire        [PCIE_LANE-1:0]     gt_rxvalid;
    wire        [PCIE_LANE-1:0]     gt_phystatus;
    wire        [(PCIE_LANE*3)-1:0] gt_rxstatus;
    wire        [(PCIE_LANE*3)-1:0] gt_rxbufstatus;
    wire        [PCIE_LANE-1:0]     gt_rxelecidle;
    wire        [PCIE_LANE-1:0]     gt_txratedone;
    wire        [PCIE_LANE-1:0]     gt_rxratedone;
    wire        [(PCIE_LANE*16)-1:0]gt_do;
    wire        [PCIE_LANE-1:0]     gt_rdy;
    wire        [PCIE_LANE-1:0] gt_txphinitdone;  
    wire        [PCIE_LANE-1:0] gt_txdlysresetdone;
    wire        [PCIE_LANE-1:0] gt_txphaligndone;
    wire        [PCIE_LANE-1:0] gt_rxdlysresetdone;
    wire        [PCIE_LANE:0] gt_rxphaligndone;       // Custom width for calculation        
    wire        [PCIE_LANE-1:0]     gt_txsyncout;           // GTH  
    wire        [PCIE_LANE-1:0]     gt_txsyncdone;          // GTH                                                           
    wire        [PCIE_LANE-1:0]     gt_rxsyncout;           // GTH     
    wire        [PCIE_LANE-1:0] gt_rxsyncdone;          // GTH     
    wire        [PCIE_LANE-1:0] gt_rxcommadet;                        
    wire        [(PCIE_LANE*4)-1:0] gt_rxchariscomma;                      
    wire        [PCIE_LANE-1:0]     gt_rxbyteisaligned;                   
    wire        [PCIE_LANE-1:0]     gt_rxbyterealign; 
    wire        [ 4:0]              gt_rxchbondi [PCIE_LANE:0]; 
    wire        [(PCIE_LANE*3)-1:0] gt_rxchbondlevel;
    wire        [ 4:0]              gt_rxchbondo [PCIE_LANE:0];  
   
    wire        [PCIE_LANE-1:0]     rxchbonden;
    wire        [PCIE_LANE-1:0]     rxchbondmaster;
    wire        [PCIE_LANE-1:0]     rxchbondslave;    
    wire        [PCIE_LANE-1:0]     oobclk; 

    //---------- TX EQ -------------------------------------                                      
    localparam                      TXEQ_FS = 6'd40;        // TX equalization full swing 
    localparam                      TXEQ_LF = 6'd15;        // TX equalization low frequency

    //---------- Select JTAG Slave Type ----------------------------------------
    localparam GC_XSDB_SLAVE_TYPE = (PCIE_GT_DEVICE == "GTP") ? 16'h0400 : (PCIE_GT_DEVICE == "GTH") ? 16'h004A : 16'h0046; 

    //---------- Generate Per-Lane Signals -----------------
    genvar                          i;                      // Index for per-lane signals
    
    
    
//---------- Assignments -------------------------------------------------------
assign gt_rxchbondo[0]             = 5'd0;                  // Initialize rxchbond for lane 0 
assign gt_rxphaligndone[PCIE_LANE] = 1'd1;                  // Mot used
assign txsyncallin                 = &(gt_txphaligndone | (~user_active_lane));     
assign rxsyncallin                 = &(gt_rxphaligndone | (~user_active_lane));  

//---------- Reset Synchronizer ------------------------------------------------
always @ (posedge clk_pclk or negedge PIPE_RESET_N)
begin

    if (!PIPE_RESET_N) 
        begin
        reset_n_reg1 <= 1'd0;
        reset_n_reg2 <= 1'd0;
        end
    else
        begin
        reset_n_reg1 <= 1'd1;
        reset_n_reg2 <= reset_n_reg1;
        end   
end  


//---------- PIPE Clock Module -------------------------------------------------
generate

        begin : pipe_clock_int
design_1_xdma_0_0_pcie2_ip_pipe_clock #
        (
        
            .PCIE_ASYNC_EN                  (PCIE_ASYNC_EN),        // PCIe async enable
            .PCIE_TXBUF_EN                  (PCIE_TXBUF_EN),        // PCIe TX buffer enable for Gen1/Gen2 only
            .PCIE_LANE                      (PCIE_LANE),            // PCIe number of lanes
            .PCIE_LINK_SPEED                (PCIE_LINK_SPEED),      // PCIe link speed 
            .PCIE_REFCLK_FREQ               (PCIE_REFCLK_FREQ),     // PCIe reference clock frequency
            .PCIE_USERCLK1_FREQ             (PCIE_USERCLK1_FREQ),   // PCIe user clock 1 frequency
            .PCIE_USERCLK2_FREQ             (PCIE_USERCLK2_FREQ),   // PCIe user clock 2 frequency
            .PCIE_OOBCLK_MODE               (PCIE_OOBCLK_MODE),     // PCIe OOB clock mode
            .PCIE_DEBUG_MODE                (PCIE_DEBUG_MODE)       // PCIe debug mode
                
        )
        pipe_clock_i
        (
        
            //---------- Input -------------------------------------
            .CLK_CLK                        (PIPE_CLK),
            .CLK_TXOUTCLK                   (gt_txoutclk[0]),       // Reference clock from lane 0
            .CLK_RXOUTCLK_IN                (gt_rxoutclk),         
          //.CLK_RST_N                      (1'b1),                 
            .CLK_RST_N                      (PIPE_MMCM_RST_N),      // Allow system reset for error recovery             
            .CLK_PCLK_SEL                   (rate_pclk_sel),    
            .CLK_PCLK_SEL_SLAVE             (INT_PCLK_SEL_SLAVE ), 
            .CLK_GEN3                       (rate_gen3[0]),          
            
            //---------- Output ------------------------------------
            .CLK_PCLK                       (clk_pclk),
            .CLK_PCLK_SLAVE                 (INT_PCLK_OUT_SLAVE),
            .CLK_RXUSRCLK                   (clk_rxusrclk),  
            .CLK_RXOUTCLK_OUT               (clk_rxoutclk),
            .CLK_DCLK                       (clk_dclk),
            .CLK_USERCLK1                   (PIPE_USERCLK1),
            .CLK_USERCLK2                   (PIPE_USERCLK2),
            .CLK_OOBCLK                     (clk_oobclk),
            .CLK_MMCM_LOCK                  (clk_mmcm_lock)
            
        );

        assign INT_RXUSRCLK_OUT  = clk_rxusrclk;
        assign INT_RXOUTCLK_OUT  = clk_rxoutclk;
        assign INT_DCLK_OUT      = clk_dclk;
        assign INT_USERCLK1_OUT  = PIPE_USERCLK1;
        assign INT_USERCLK2_OUT  = PIPE_USERCLK2;
        assign INT_OOBCLK_OUT    = clk_oobclk;
        assign INT_MMCM_LOCK_OUT = clk_mmcm_lock;
        end 
endgenerate
   



//---------- PIPE Reset Module -------------------------------------------------
generate 

    if (PCIE_GT_DEVICE == "GTP")
        
        begin : gtp_pipe_reset

        //---------- GTP PIPE Reset Module -------------------------------------
design_1_xdma_0_0_pcie2_ip_gtp_pipe_reset #
        (
        
            .PCIE_SIM_SPEEDUP               (PCIE_SIM_SPEEDUP),                 // PCIe sim mode
          //.PCIE_PLL_SEL                   (PCIE_PLL_SEL),                     // removed for GTP               
          //.PCIE_POWER_SAVING              (PCIE_POWER_SAVING),                // removed for GTP                                
          //.PCIE_TXBUF_EN                  (PCIE_TXBUF_EN),                    // PCIe TX buffer enable for Gen1/Gen2 only
            .PCIE_LANE                      (PCIE_LANE)                         // PCIe number of lanes
        
        )
        gtp_pipe_reset_i
        (
        
            //---------- Input -----------------------------
            .RST_CLK                        (clk_pclk),                 
            .RST_RXUSRCLK                   (clk_rxusrclk),
            .RST_DCLK                       (clk_dclk),
            .RST_RST_N                      (reset_n_reg2),
            .RST_DRP_DONE                   (drp_done),
            .RST_RXPMARESETDONE             (gt_rxpmaresetdone),
            .RST_PLLLOCK                    (&qpll_qplllock), 
          //.RST_QPLL_IDLE                  (qrst_idle),                        // removed for GTP  
            .RST_RATE_IDLE                  (rate_idle),
            .RST_RXCDRLOCK                  (user_rxcdrlock),
            .RST_MMCM_LOCK                  (clk_mmcm_lock),
            .RST_RESETDONE                  (user_resetdone),
            .RST_PHYSTATUS                  (gt_phystatus),
            .RST_TXSYNC_DONE                (sync_txsync_done),
            
            //---------- Output ----------------------------
            .RST_CPLLRESET                  (rst_cpllreset),                   
            .RST_CPLLPD                     (rst_cpllpd),                      
            .RST_RXUSRCLK_RESET             (rst_rxusrclk_reset),
            .RST_DCLK_RESET                 (rst_dclk_reset),
            .RST_GTRESET                    (rst_gtreset),
            .RST_DRP_START                  (rst_drp_start),
            .RST_DRP_X16                    (rst_drp_x16),
            .RST_USERRDY                    (rst_userrdy),
            .RST_TXSYNC_START               (rst_txsync_start),
            .RST_IDLE                       (rst_idle),
            .RST_FSM                        (rst_fsm)
        
        );
        
        //---------- Default ---------------------------------------------------
        assign gtp_rst_qpllreset   = rst_cpllreset;
        assign gtp_rst_qpllpd      = rst_cpllpd;
        
        end

    else 

        begin : pipe_reset

        //---------- PIPE Reset Module -----------------------------------------
design_1_xdma_0_0_pcie2_ip_pipe_reset #
        (
        
            .PCIE_SIM_SPEEDUP               (PCIE_SIM_SPEEDUP),                 // PCIe sim mode
            .PCIE_GT_DEVICE                 (PCIE_GT_DEVICE),                   // PCIe GT Device
            .PCIE_PLL_SEL                   (PCIE_PLL_SEL),                     // PCIe PLL select for Gen1/Gen2 only
            .PCIE_POWER_SAVING              (PCIE_POWER_SAVING),                // PCIe power saving
            .PCIE_TXBUF_EN                  (PCIE_TXBUF_EN),                    // PCIe TX buffer enable for Gen1/Gen2 only
            .PCIE_LANE                      (PCIE_LANE)                         // PCIe number of lanes
        
        )
        pipe_reset_i
        (
        
            //---------- Input -----------------------------                    
            .RST_CLK                        (clk_pclk),                         
            .RST_RXUSRCLK                   (clk_rxusrclk),                     
            .RST_DCLK                       (clk_dclk),                         
            .RST_RST_N                      (reset_n_reg2),   
            .RST_DRP_DONE                   (drp_done),
            .RST_RXPMARESETDONE             (gt_rxpmaresetdone),                  
            .RST_CPLLLOCK                   (gt_cplllock),                      
            .RST_QPLL_IDLE                  (qrst_idle),                        
            .RST_RATE_IDLE                  (rate_idle),                        
            .RST_RXCDRLOCK                  (user_rxcdrlock),                   
            .RST_MMCM_LOCK                  (clk_mmcm_lock),                    
            .RST_RESETDONE                  (user_resetdone),                   
            .RST_PHYSTATUS                  (gt_phystatus),                     
            .RST_TXSYNC_DONE                (sync_txsync_done),                 
                                                                                
            //---------- Output ----------------------------                    
            .RST_CPLLRESET                  (rst_cpllreset),                    
            .RST_CPLLPD                     (rst_cpllpd),                       
            .RST_RXUSRCLK_RESET             (rst_rxusrclk_reset),               
            .RST_DCLK_RESET                 (rst_dclk_reset),                   
            .RST_GTRESET                    (rst_gtreset), 
            .RST_DRP_START                  (rst_drp_start),
            .RST_DRP_X16X20_MODE            (rst_drp_x16x20_mode),
            .RST_DRP_X16                    (rst_drp_x16),                     
            .RST_USERRDY                    (rst_userrdy),                      
            .RST_TXSYNC_START               (rst_txsync_start),                 
            .RST_IDLE                       (rst_idle),                         
            .RST_FSM                        (rst_fsm[4:0])                           
                                                                                
        );
       
        //---------- Default ---------------------------------------------------
        assign gtp_rst_qpllreset = 1'd0;
        assign gtp_rst_qpllpd    = 1'd0; 
       
        end
    
endgenerate



//---------- QPLL Reset Module -------------------------------------------------
generate 

    if ((PCIE_LINK_SPEED == 3) || (PCIE_PLL_SEL == "QPLL"))

        begin : qpll_reset

design_1_xdma_0_0_pcie2_ip_qpll_reset #
        (
        
            .PCIE_PLL_SEL                   (PCIE_PLL_SEL),     // PCIe PLL select for Gen1/Gen2 only
            .PCIE_POWER_SAVING              (PCIE_POWER_SAVING),// PCIe power saving
            .PCIE_LANE                      (PCIE_LANE)         // PCIe number of lanes
            
        )
        qpll_reset_i
        (
        
            //---------- Input ---------------------------------
            .QRST_CLK                       (clk_pclk),                 
            .QRST_RST_N                     (reset_n_reg2),
            .QRST_MMCM_LOCK                 (clk_mmcm_lock),
            .QRST_CPLLLOCK                  (gt_cplllock),
            .QRST_DRP_DONE                  (qdrp_done),
            .QRST_QPLLLOCK                  (qpll_qplllock),
            .QRST_RATE                      (PIPE_RATE),
            .QRST_QPLLRESET_IN              (rate_qpllreset),
            .QRST_QPLLPD_IN                 (rate_qpllpd),
            
            //---------- Output --------------------------------
            .QRST_OVRD                      (qrst_ovrd),
            .QRST_DRP_START                 (qrst_drp_start),
            .QRST_QPLLRESET_OUT             (qrst_qpllreset),
            .QRST_QPLLPD_OUT                (qrst_qpllpd),
            .QRST_IDLE                      (qrst_idle),
            .QRST_FSM                       (qrst_fsm)
        
        );

        end 
    
    else
     
        //---------- QPLL Reset Defaults ---------------------------------------
        begin : qpll_reset_disable
        assign qrst_ovrd      =  1'd0;
        assign qrst_drp_start =  1'd0;
        assign qrst_qpllreset =  1'd0;
        assign qrst_qpllpd    =  1'd0;
        assign qrst_idle      =  1'd0;
        assign qrst_fsm       =  1;
        end
     
endgenerate
        
assign jtag_sl_iport = {PCIE_LANE{37'd0}};

//Reference Clock for CPLLPD Fix

wire gt_cpllpdrefclk;

BUFG cpllpd_refclk_inst (.I (PIPE_CLK), .O (gt_cpllpdrefclk));

//---------- Generate PIPE Lane ------------------------------------------------
generate for (i=0; i<PCIE_LANE; i=i+1) 

    begin : pipe_lane

    //---------- PIPE User Module ----------------------------------------------
design_1_xdma_0_0_pcie2_ip_pipe_user #
    (
    
        .PCIE_USE_MODE                  (PCIE_USE_MODE),
        .PCIE_OOBCLK_MODE               (PCIE_OOBCLK_MODE)
    
    )
    pipe_user_i
    (
    
        //---------- Input ---------------------------------
        .USER_TXUSRCLK                  (clk_pclk),
        .USER_RXUSRCLK                  (clk_rxusrclk),
        .USER_OOBCLK_IN                 (clk_oobclk),
        .USER_RST_N                     (!rst_cpllreset),
        .USER_RXUSRCLK_RST_N            (!rst_rxusrclk_reset),
        .USER_PCLK_SEL                  (rate_pclk_sel[i]),
        .USER_RESETOVRD_START           (rate_resetovrd_start[i]),
        .USER_TXRESETDONE               (gt_txresetdone[i]),
        .USER_RXRESETDONE               (gt_rxresetdone[i]),
        .USER_TXELECIDLE                (PIPE_TXELECIDLE[i]),
        .USER_TXCOMPLIANCE              (PIPE_TXCOMPLIANCE[i]),
        .USER_RXCDRLOCK_IN              (gt_rxcdrlock[i]),
        .USER_RXVALID_IN                (gt_rxvalid[i]),
        .USER_RXSTATUS_IN               (gt_rxstatus[(3*i)+2]),
        .USER_PHYSTATUS_IN              (gt_phystatus[i]),
        .USER_RATE_DONE                 (rate_done[i]),
        .USER_RST_IDLE                  (rst_idle),
        .USER_RATE_RXSYNC               (rate_rxsync[i]),
        .USER_RATE_IDLE                 (rate_idle[i]),
        .USER_RATE_GEN3                 (rate_gen3[i]),
        .USER_RXEQ_ADAPT_DONE           (eq_rxeq_adapt_done[i]),
        
        //---------- Output --------------------------------
        .USER_OOBCLK                    (user_oobclk[i]),
        .USER_RESETOVRD                 (user_resetovrd[i]),
        .USER_TXPMARESET                (user_txpmareset[i]),                 
        .USER_RXPMARESET                (user_rxpmareset[i]),                
        .USER_RXCDRRESET                (user_rxcdrreset[i]),
        .USER_RXCDRFREQRESET            (user_rxcdrfreqreset[i]),
        .USER_RXDFELPMRESET             (user_rxdfelpmreset[i]),
        .USER_EYESCANRESET              (user_eyescanreset[i]),
        .USER_TXPCSRESET                (user_txpcsreset[i]),                   
        .USER_RXPCSRESET                (user_rxpcsreset[i]),                 
        .USER_RXBUFRESET                (user_rxbufreset[i]),
        .USER_RESETOVRD_DONE            (user_resetovrd_done[i]),
        .USER_RESETDONE                 (user_resetdone[i]),
        .USER_ACTIVE_LANE               (user_active_lane[i]),
        .USER_RXCDRLOCK_OUT             (user_rxcdrlock[i]),
        .USER_RXVALID_OUT               (PIPE_RXVALID[i]),
        .USER_PHYSTATUS_OUT             (PIPE_PHYSTATUS[i]),
        .USER_PHYSTATUS_RST             (PIPE_PHYSTATUS_RST[i]),
        .USER_GEN3_RDY                  (PIPE_GEN3_RDY[i]),
        .USER_RX_CONVERGE               (user_rx_converge[i])
    
    );
    
    
    
    //---------- GTP PIPE Rate Module ------------------------------------------
    if (PCIE_GT_DEVICE == "GTP")
    
        begin : gtp_pipe_rate
        
design_1_xdma_0_0_pcie2_ip_gtp_pipe_rate #
       (                                                                                                           
                       
            .PCIE_SIM_SPEEDUP               (PCIE_SIM_SPEEDUP)                  // PCIe sim speedup                                                                                                        
          //.PCIE_USE_MODE                  (PCIE_USE_MODE),                    // removed for GTP                                    
          //.PCIE_PLL_SEL                   (PCIE_PLL_SEL),                     // removed for GTP               
          //.PCIE_POWER_SAVING              (PCIE_POWER_SAVING),                // removed for GTP                                
          //.PCIE_ASYNC_EN                  (PCIE_ASYNC_EN),                    // removed for GTP                               
          //.PCIE_TXBUF_EN                  (PCIE_TXBUF_EN),                    // removed for GTP          
          //.PCIE_RXBUF_EN                  (PCIE_RXBUF_EN)                     // removed for GTP          
                                                                                                                            
        )                                                                                                           
        gtp_pipe_rate_i
        (
    
            //---------- Input -----------------------------
            .RATE_CLK                       (clk_pclk),
            .RATE_RST_N                     (!rst_cpllreset),
          //.RATE_RST_IDLE                  (rst_idle),                         // removed for GTP
          //.RATE_ACTIVE_LANE               (user_active_lane[i]),              // removed for GTP 
            .RATE_RATE_IN                   (PIPE_RATE),   
          //.RATE_CPLLLOCK                  (gt_cplllock[i]),                   // removed for GTP
          //.RATE_QPLLLOCK                  (qpll_qplllock[i>>2])               // removed for GTP
          //.RATE_MMCM_LOCK                 (clk_mmcm_lock),                    // removed for GTP
            .RATE_DRP_DONE                  (drp_done[i]),                       
            .RATE_RXPMARESETDONE            (gt_rxpmaresetdone[i]),         
          //.RATE_TXRESETDONE               (gt_txresetdone[i]),                // removed for GTP
          //.RATE_RXRESETDONE               (gt_rxresetdone[i]),                // removed for GTP
            .RATE_TXRATEDONE                (gt_txratedone[i]),
            .RATE_RXRATEDONE                (gt_rxratedone[i]),
            .RATE_PHYSTATUS                 (gt_phystatus[i]),   
          //.RATE_RESETOVRD_DONE            (user_resetovrd_done[i]),           // removed for GTP
            .RATE_TXSYNC_DONE               (sync_txsync_done[i]),    
          //.RATE_RXSYNC_DONE               (sync_rxsync_done[i]),              // removed for GTP
                  
            //---------- Output ----------------------------
          //.RATE_CPLLPD                    (rate_cpllpd[i]),                   // removed for GTP 
          //.RATE_QPLLPD                    (rate_qpllpd[i]),                   // removed for GTP
          //.RATE_CPLLRESET                 (rate_cpllreset[i]),                // removed for GTP
          //.RATE_QPLLRESET                 (rate_qpllreset[i]),                // removed for GTP
          //.RATE_TXPMARESET                (rate_txpmareset[i]),               // removed for GTP 
          //.RATE_RXPMARESET                (rate_rxpmareset[i]),               // removed for GTP
          //.RATE_SYSCLKSEL                 (rate_sysclksel[(2*i)+1:(2*i)]),    // removed for GTP
            .RATE_DRP_START                 (rate_drp_start[i]),                
            .RATE_DRP_X16                   (rate_drp_x16[i]),
            .RATE_PCLK_SEL                  (rate_pclk_sel[i]),       
          //.RATE_GEN3                      (rate_gen3[i]),                     // removed for GTP
            .RATE_RATE_OUT                  (rate_rate[(3*i)+2:(3*i)]),      
          //.RATE_RESETOVRD_START           (rate_resetovrd_start[i]),          // removed for GTP
            .RATE_TXSYNC_START              (rate_txsync_start[i]),            
            .RATE_DONE                      (rate_done[i]),       
          //.RATE_RXSYNC_START              (rate_rxsync_start[i]),             // removed for GTP
          //.RATE_RXSYNC                    (rate_rxsync[i]),                   // removed for GTP
            .RATE_IDLE                      (rate_idle[i]),                     
            .RATE_FSM                       (rate_fsm[(5*i)+4:(5*i)])       
        );
    
        //---------- Default for GTP -----------------------
        assign rate_cpllpd[i]                = 1'd0;
        assign rate_qpllpd[i]                = 1'd0;
        assign rate_cpllreset[i]             = 1'd0;
        assign rate_qpllreset[i]             = 1'd0;
        assign rate_txpmareset[i]            = 1'd0;
        assign rate_rxpmareset[i]            = 1'd0;
        assign rate_sysclksel[(2*i)+1:(2*i)] = 2'b0;
        assign rate_gen3[i]                  = 1'd0;
        assign rate_resetovrd_start[i]       = 1'd0;
        assign rate_rxsync_start[i]          = 1'd0;
        assign rate_rxsync[i]                = 1'd0; 
        
        end 
    
    else
    
        begin : pipe_rate
    
        //---------- PIPE Rate Module ----------------------------------------------                                     
design_1_xdma_0_0_pcie2_ip_pipe_rate #
        (
        
            .PCIE_SIM_SPEEDUP               (PCIE_SIM_SPEEDUP), // PCIe sim speedup 
            .PCIE_GT_DEVICE                 (PCIE_GT_DEVICE),   // PCIe GT device
            .PCIE_USE_MODE                  (PCIE_USE_MODE),    // PCIe use mode
            .PCIE_PLL_SEL                   (PCIE_PLL_SEL),     // PCIe PLL select for Gen1/Gen2 only
            .PCIE_POWER_SAVING              (PCIE_POWER_SAVING),// PCIe power saving
            .PCIE_ASYNC_EN                  (PCIE_ASYNC_EN),    // PCIe async enable
            .PCIE_TXBUF_EN                  (PCIE_TXBUF_EN),    // PCIe TX buffer enable for Gen1/Gen2 only
            .PCIE_RXBUF_EN                  (PCIE_RXBUF_EN)     // PCIe RX buffer enable for Gen3      only
            
        )
        pipe_rate_i
        (
        
            //---------- Input ---------------------------------                                
            .RATE_CLK                       (clk_pclk),                                         
            .RATE_RST_N                     (!rst_cpllreset),                                   
            .RATE_RST_IDLE                  (rst_idle),                                         
            .RATE_ACTIVE_LANE               (user_active_lane[i]),                              
            .RATE_RATE_IN                   (PIPE_RATE),                                        
            .RATE_CPLLLOCK                  (gt_cplllock[i]),                                   
            .RATE_QPLLLOCK                  (qpll_qplllock[i>>2]),                              
            .RATE_MMCM_LOCK                 (clk_mmcm_lock),                                    
            .RATE_DRP_DONE                  (drp_done[i]),      
            .RATE_RXPMARESETDONE            (gt_rxpmaresetdone[i]),                                
            .RATE_TXRESETDONE               (gt_txresetdone[i]),                                
            .RATE_RXRESETDONE               (gt_rxresetdone[i]),                                
            .RATE_TXRATEDONE                (gt_txratedone[i]),                                 
            .RATE_RXRATEDONE                (gt_rxratedone[i]),                                 
            .RATE_PHYSTATUS                 (gt_phystatus[i]),                                  
            .RATE_RESETOVRD_DONE            (user_resetovrd_done[i]),                           
            .RATE_TXSYNC_DONE               (sync_txsync_done[i]),        		                  
            .RATE_RXSYNC_DONE               (sync_rxsync_done[i]),	                            
                                                                                                
            //---------- Output --------------------------------                                
            .RATE_CPLLPD                    (rate_cpllpd[i]),                                   
            .RATE_QPLLPD                    (rate_qpllpd[i]),                                   
            .RATE_CPLLRESET                 (rate_cpllreset[i]),                                
            .RATE_QPLLRESET                 (rate_qpllreset[i]),                                
            .RATE_TXPMARESET                (rate_txpmareset[i]),                               
            .RATE_RXPMARESET                (rate_rxpmareset[i]),                               
            .RATE_SYSCLKSEL                 (rate_sysclksel[(2*i)+1:(2*i)]),                    
            .RATE_DRP_START                 (rate_drp_start[i]),  
            .RATE_DRP_X16X20_MODE           (rate_drp_x16x20_mode[i]),      
            .RATE_DRP_X16                   (rate_drp_x16[i]),                        
            .RATE_PCLK_SEL                  (rate_pclk_sel[i]),                                 
            .RATE_GEN3                      (rate_gen3[i]),                                     
            .RATE_RATE_OUT                  (rate_rate[(3*i)+2:(3*i)]),                         
            .RATE_RESETOVRD_START           (rate_resetovrd_start[i]),
            .RATE_TXSYNC_START              (rate_txsync_start[i]),
            .RATE_DONE                      (rate_done[i]),
            .RATE_RXSYNC_START              (rate_rxsync_start[i]),
            .RATE_RXSYNC                    (rate_rxsync[i]),
            .RATE_IDLE                      (rate_idle[i]),
            .RATE_FSM                       (rate_fsm[(5*i)+4:(5*i)])
            
        );    
        
        end
    
    
    
    //---------- PIPE Sync Module ----------------------------------------------
design_1_xdma_0_0_pcie2_ip_pipe_sync #
    (
    
        .PCIE_GT_DEVICE                 (PCIE_GT_DEVICE),   // PCIe GT Device
        .PCIE_TXBUF_EN                  (PCIE_TXBUF_EN),    // PCIe TX buffer enable for Gen1/Gen2 only
        .PCIE_RXBUF_EN                  (PCIE_RXBUF_EN),    // PCIe RX buffer enable for Gen3      only
        .PCIE_TXSYNC_MODE               (PCIE_TXSYNC_MODE), // PCIe TX sync mode
        .PCIE_RXSYNC_MODE               (PCIE_RXSYNC_MODE), // PCIe RX sync mode
        .PCIE_LANE                      (PCIE_LANE),        // PCIe lane
        .PCIE_LINK_SPEED                (PCIE_LINK_SPEED)   // PCIe link speed
    
    )
    pipe_sync_i 
    (
    
        //---------- Input ---------------------------------
        .SYNC_CLK                       (clk_pclk),
        .SYNC_RST_N                     (!rst_cpllreset),
        .SYNC_SLAVE                     (i > 0),
        .SYNC_GEN3                      (rate_gen3[i]),
        .SYNC_RATE_IDLE                 (rate_idle[i]),
        .SYNC_MMCM_LOCK                 (clk_mmcm_lock),
        .SYNC_RXELECIDLE                (gt_rxelecidle[i]),
        .SYNC_RXCDRLOCK                 (user_rxcdrlock[i]),
        .SYNC_ACTIVE_LANE               (user_active_lane[i]),
        
        .SYNC_TXSYNC_START              (rate_txsync_start[i] || rst_txsync_start),
        .SYNC_TXPHINITDONE              (&(gt_txphinitdone | (~user_active_lane))),     
        .SYNC_TXDLYSRESETDONE           (txdlysresetdone[i]),                 
        .SYNC_TXPHALIGNDONE             (txphaligndone[i]),  
        .SYNC_TXSYNCDONE                (gt_txsyncdone[i]), // GTH
        
        .SYNC_RXSYNC_START              (rate_rxsync_start[i]),
        .SYNC_RXDLYSRESETDONE           (rxdlysresetdone[i]),
        .SYNC_RXPHALIGNDONE_M           (gt_rxphaligndone[0]),
        .SYNC_RXPHALIGNDONE_S           (rxphaligndone_s[i]),
        .SYNC_RXSYNC_DONEM_IN           (sync_rxsync_donem[0]),   
        .SYNC_RXSYNCDONE                (gt_rxsyncdone[i]), // GTH
    
        //---------- Output --------------------------------
        .SYNC_TXPHDLYRESET              (sync_txphdlyreset[i]),
        .SYNC_TXPHALIGN                 (sync_txphalign[i]),           
        .SYNC_TXPHALIGNEN               (sync_txphalignen[i]),        
        .SYNC_TXPHINIT                  (sync_txphinit[i]),    
        .SYNC_TXDLYBYPASS               (sync_txdlybypass[i]),                   
        .SYNC_TXDLYSRESET               (sync_txdlysreset[i]),
        .SYNC_TXDLYEN                   (sync_txdlyen[i]), 
        .SYNC_TXSYNC_DONE               (sync_txsync_done[i]),
        .SYNC_FSM_TX                    (sync_fsm_tx[(6*i)+5:(6*i)]),
        
        .SYNC_RXPHALIGN                 (sync_rxphalign[i]),
        .SYNC_RXPHALIGNEN               (sync_rxphalignen[i]),
        .SYNC_RXDLYBYPASS               (sync_rxdlybypass[i]),          
        .SYNC_RXDLYSRESET               (sync_rxdlysreset[i]),
        .SYNC_RXDLYEN                   (sync_rxdlyen[i]),
        .SYNC_RXDDIEN                   (sync_rxddien[i]),
        .SYNC_RXSYNC_DONEM_OUT          (sync_rxsync_donem[i]),
        .SYNC_RXSYNC_DONE               (sync_rxsync_done[i]),
        .SYNC_FSM_RX                    (sync_fsm_rx[(7*i)+6:(7*i)])
        
    );
    
    //---------- PIPE Sync Assignments -----------------------------------------
    assign txdlysresetdone[i] = (PCIE_TXSYNC_MODE == 1) ? gt_txdlysresetdone[i] : &gt_txdlysresetdone;
    assign txphaligndone[i]   = (PCIE_TXSYNC_MODE == 1) ? gt_txphaligndone[i]   : &(gt_txphaligndone | (~user_active_lane));
    assign rxdlysresetdone[i] = (PCIE_RXSYNC_MODE == 1) ? gt_rxdlysresetdone[i] : &gt_rxdlysresetdone;
    assign rxphaligndone_s[i] = (PCIE_LANE == 1)        ? 1'd0                  : &gt_rxphaligndone[PCIE_LANE:1];
    
    
    //---------- GTP PIPE DRP Module -------------------------------------------
    if (PCIE_GT_DEVICE == "GTP")
    
        begin : gtp_pipe_drp
       
        //---------- GTP PIPE DRP Module ---------------------------------------
design_1_xdma_0_0_pcie2_ip_gtp_pipe_drp 
        gtp_pipe_drp_i
        (
            
            //---------- Input ---------------------------------
            .DRP_CLK                        (clk_dclk),
            .DRP_RST_N                      (!rst_dclk_reset),
            .DRP_X16                        (rst_drp_x16 || rate_drp_x16[i]),
            .DRP_START                      (rst_drp_start || rate_drp_start[i]),                      
            .DRP_DO                         (gt_do[(16*i)+15:(16*i)]),
            .DRP_RDY                        (gt_rdy[i]),
            
            //---------- Output --------------------------------
            .DRP_ADDR                       (drp_addr[(9*i)+8:(9*i)]),
            .DRP_EN                         (drp_en[i]),  
            .DRP_DI                         (drp_di[(16*i)+15:(16*i)]),   
            .DRP_WE                         (drp_we[i]),
            .DRP_DONE                       (drp_done[i]),
            .DRP_FSM                        (drp_fsm[(3*i)+2:(3*i)])
            
        );
        
        end
       
    else
    
        begin : pipe_drp 
        
        //---------- PIPE DRP Module -------------------------------------------
design_1_xdma_0_0_pcie2_ip_pipe_drp #
        (
        
            .PCIE_GT_DEVICE                 (PCIE_GT_DEVICE),                   // PCIe GT device
            .PCIE_USE_MODE                  (PCIE_USE_MODE),                    // PCIe use mode
            .PCIE_PLL_SEL                   (PCIE_PLL_SEL),                     // PCIe PLL select for Gen1/Gen2 only
            .PCIE_AUX_CDR_GEN3_EN           (PCIE_AUX_CDR_GEN3_EN),             // PCIe AUX CDR Gen3 enable
            .PCIE_ASYNC_EN                  (PCIE_ASYNC_EN),                    // PCIe async enable
            .PCIE_TXBUF_EN                  (PCIE_TXBUF_EN),                    // PCIe TX buffer enable for Gen1/Gen2 only
            .PCIE_RXBUF_EN                  (PCIE_RXBUF_EN),                    // PCIe RX buffer enable for Gen3      only
            .PCIE_TXSYNC_MODE               (PCIE_TXSYNC_MODE),                 // PCIe TX sync mode
            .PCIE_RXSYNC_MODE               (PCIE_RXSYNC_MODE)                  // PCIe RX sync mode
        
        )
        pipe_drp_i
        (
            
            //---------- Input ---------------------------------
            .DRP_CLK                        (clk_dclk),
            .DRP_RST_N                      (!rst_dclk_reset),
            .DRP_GTXRESET                   (rst_gtreset),
            .DRP_RATE                       (PIPE_RATE),
            .DRP_X16X20_MODE                (rst_drp_x16x20_mode || rate_drp_x16x20_mode[i]),
            .DRP_X16                        (rst_drp_x16         || rate_drp_x16[i]),
            .DRP_START                      (rst_drp_start || rate_drp_start[i]),                      
            .DRP_DO                         (gt_do[(16*i)+15:(16*i)]),
            .DRP_RDY                        (gt_rdy[i]),
            
            //---------- Output --------------------------------
            .DRP_ADDR                       (drp_addr[(9*i)+8:(9*i)]),
            .DRP_EN                         (drp_en[i]),  
            .DRP_DI                         (drp_di[(16*i)+15:(16*i)]),   
            .DRP_WE                         (drp_we[i]),
            .DRP_DONE                       (drp_done[i]),
            .DRP_FSM                        (drp_fsm[(3*i)+2:(3*i)])
            
        );
        
        end

    
         assign jtag_sl_oport[((i+1)*17)-1 : (i*17)] = 17'd0;
         assign jtag_sl_addr[(17*i)+16:(17*i)]       = 17'd0;   
         assign jtag_sl_den[i]                       =  1'd0;
         assign jtag_sl_di[(16*i)+15:(16*i)]         = 16'd0;
         assign jtag_sl_we[i]                        =  1'd0;

    //---------- Generate DRP MUX ----------------------------------------------
    assign PIPE_JTAG_RDY[i] = (drp_fsm[(3*i)+2:(3*i)] == 3'b000);
    assign jtag_sl_en[i]	  = (jtag_sl_addr[(17*i)+16:(17*i)+9] == 8'd0) ? jtag_sl_den[i] : 1'd0;

    // Channel DRP
    assign drp_mux_en[i]                = (PIPE_JTAG_RDY[i] && EXT_CH_GT_DRP) ? EXT_CH_GT_DRPEN[i] : drp_en[i];
    assign drp_mux_di[(16*i)+15:(16*i)] = (PIPE_JTAG_RDY[i] && EXT_CH_GT_DRP) ? EXT_CH_GT_DRPDI[(16*i)+15:(16*i)] : drp_di[(16*i)+15:(16*i)];
    assign drp_mux_addr[(9*i)+8:(9*i)]  = (PIPE_JTAG_RDY[i] && EXT_CH_GT_DRP) ? EXT_CH_GT_DRPADDR[(9*i)+8:(9*i)] : drp_addr[(9*i)+8:(9*i)];
    assign drp_mux_we[i]                = (PIPE_JTAG_RDY[i] && EXT_CH_GT_DRP) ? EXT_CH_GT_DRPWE[i]  : drp_we[i];

    //---------- Generate PIPE EQ ----------------------------------------------
    if (PCIE_LINK_SPEED == 3) 
    
        begin : pipe_eq
    
        //---------- PIPE EQ Module --------------------------------------------
design_1_xdma_0_0_pcie2_ip_pipe_eq #
        (
            .PCIE_SIM_MODE                  (PCIE_SIM_MODE),                    // PCIe sim mode
            .PCIE_GT_DEVICE                 (PCIE_GT_DEVICE),
            .PCIE_RXEQ_MODE_GEN3            (PCIE_RXEQ_MODE_GEN3)               // PCIe RX equalization mode
        )
        pipe_eq_i
        (
        
            //---------- Input -----------------------------
            .EQ_CLK                         (clk_pclk),
            .EQ_RST_N                       (!rst_cpllreset),
            .EQ_GEN3                        (rate_gen3[i]),
            
            .EQ_TXEQ_CONTROL                (PIPE_TXEQ_CONTROL[(2*i)+1:(2*i)]),    
            .EQ_TXEQ_PRESET                 (PIPE_TXEQ_PRESET[(4*i)+3:(4*i)]),
            .EQ_TXEQ_PRESET_DEFAULT         (PIPE_TXEQ_PRESET_DEFAULT[(4*i)+3:(4*i)]),
            .EQ_TXEQ_DEEMPH_IN              (PIPE_TXEQ_DEEMPH[(6*i)+5:(6*i)]),  // renamed
                                           
            .EQ_RXEQ_CONTROL                (PIPE_RXEQ_CONTROL[(2*i)+1:(2*i)]),  
            .EQ_RXEQ_PRESET                 (PIPE_RXEQ_PRESET[(3*i)+2:(3*i)]),
            .EQ_RXEQ_LFFS                   (PIPE_RXEQ_LFFS[(6*i)+5:(6*i)]),  
            .EQ_RXEQ_TXPRESET               (PIPE_RXEQ_TXPRESET[(4*i)+3:(4*i)]),
            .EQ_RXEQ_USER_EN                (PIPE_RXEQ_USER_EN[i]),          
            .EQ_RXEQ_USER_TXCOEFF           (PIPE_RXEQ_USER_TXCOEFF[(18*i)+17:(18*i)]),     
            .EQ_RXEQ_USER_MODE              (PIPE_RXEQ_USER_MODE[i]),        
            
            //---------- Output ----------------------------
            .EQ_TXEQ_DEEMPH                 (eq_txeq_deemph[i]),
            .EQ_TXEQ_PRECURSOR              (eq_txeq_precursor[(5*i)+4:(5*i)]),
            .EQ_TXEQ_MAINCURSOR             (eq_txeq_maincursor[(7*i)+6:(7*i)]),
            .EQ_TXEQ_POSTCURSOR             (eq_txeq_postcursor[(5*i)+4:(5*i)]),
            .EQ_TXEQ_DEEMPH_OUT             (PIPE_TXEQ_COEFF[(18*i)+17:(18*i)]),// renamed
            .EQ_TXEQ_DONE                   (PIPE_TXEQ_DONE[i]),
            .EQ_TXEQ_FSM                    (PIPE_TXEQ_FSM[(6*i)+5:(6*i)]),
            
            .EQ_RXEQ_NEW_TXCOEFF            (PIPE_RXEQ_NEW_TXCOEFF[(18*i)+17:(18*i)]), 
            .EQ_RXEQ_LFFS_SEL               (PIPE_RXEQ_LFFS_SEL[i]),
            .EQ_RXEQ_ADAPT_DONE             (eq_rxeq_adapt_done[i]),
            .EQ_RXEQ_DONE                   (PIPE_RXEQ_DONE[i]),
            .EQ_RXEQ_FSM                    (PIPE_RXEQ_FSM[(6*i)+5:(6*i)])
        
        );
    
        end 
        
    else
    
        //---------- PIPE EQ Defaults ------------------------------------------
        begin : pipe_eq_disable                      
        assign eq_txeq_deemph[i]                       =  1'd0;
        assign eq_txeq_precursor[(5*i)+4:(5*i)]        =  5'h00;
        assign eq_txeq_maincursor[(7*i)+6:(7*i)]       =  7'h00;
        assign eq_txeq_postcursor[(5*i)+4:(5*i)]       =  5'h00;
        assign eq_rxeq_adapt_done[i]                   =  1'd0;
        assign PIPE_TXEQ_COEFF[(18*i)+17:(18*i)]       = 18'd0;
        assign PIPE_TXEQ_DONE[i]                       =  1'd0;
        assign PIPE_TXEQ_FSM[(6*i)+5:(6*i)]            =  6'd0;
        
        assign PIPE_RXEQ_NEW_TXCOEFF[(18*i)+17:(18*i)] = 18'd0;
        assign PIPE_RXEQ_LFFS_SEL[i]                   =  1'd0;
        assign PIPE_RXEQ_ADAPT_DONE[i]                 =  1'd0;   
        assign PIPE_RXEQ_DONE[i]                       =  1'd0;                                     
        assign PIPE_RXEQ_FSM[(6*i)+5:(6*i)]            =  6'd0;   
        end

    //---------- Generate PIPE Common Per Quad for Gen3 ------------------------
    if ((i%4)==0)

        begin : pipe_quad

        //---------- Generate QPLL Powerdown and Reset -------------------------
        assign qpllpd          = (PCIE_GT_DEVICE == "GTP") ? gtp_rst_qpllpd    : qrst_qpllpd;
        assign qpllreset[i>>2] = (PCIE_GT_DEVICE == "GTP") ? gtp_rst_qpllreset : (qrst_qpllreset || qdrp_qpllreset[i>>2]);

        if ((PCIE_LINK_SPEED == 3) || (PCIE_PLL_SEL == "QPLL") || (PCIE_GT_DEVICE == "GTP"))

           begin : gt_common_enabled

           if (PCIE_EXT_GT_COMMON == "FALSE")

           begin : gt_common_int

    //---------- GT COMMON INTERNAL Module ---------------------------------------
design_1_xdma_0_0_pcie2_ip_gt_common #
            (

                .PCIE_SIM_MODE                  (PCIE_SIM_MODE),                // PCIe sim mode
                .PCIE_GT_DEVICE                 (PCIE_GT_DEVICE),               // PCIe GT device
                .PCIE_USE_MODE                  (PCIE_USE_MODE),                // PCIe use mode
                .PCIE_PLL_SEL                   (PCIE_PLL_SEL),                 // PCIe PLL select for Gen1/Gen2 only
                .PCIE_REFCLK_FREQ               (PCIE_REFCLK_FREQ)              // PCIe reference clock frequency

            )
            gt_common_i
            (

                //---------- Input -------------------------
                .CPLLPDREFCLK                        (gt_cpllpdrefclk),
                .PIPE_CLK                            (PIPE_CLK),
                .QPLL_QPLLPD                         (qpllpd),
                .QPLL_QPLLRESET                      (qpllreset[i>>2]),
                .QPLL_DRP_CLK                        (clk_dclk),
                .QPLL_DRP_RST_N                      (rst_dclk_reset),
                .QPLL_DRP_OVRD                       (qrst_ovrd),
                .QPLL_DRP_GEN3                       (&rate_gen3),
                .QPLL_DRP_START                      (qrst_drp_start),

                .QPLL_DRP_CRSCODE                    (qdrp_crscode[(6*(i>>2))+5:(6*(i>>2))]),
                .QPLL_DRP_FSM                        (qdrp_fsm[(9*(i>>2))+8:(9*(i>>2))]),
                .QPLL_DRP_DONE                       (qdrp_done[i>>2]),
                .QPLL_DRP_RESET                      (qdrp_qpllreset[i>>2]),
                .QPLL_QPLLOUTCLK                     (qpll_qplloutclk[i>>2]),
                .QPLL_QPLLOUTREFCLK                  (qpll_qplloutrefclk[i>>2]),
                .QPLL_QPLLLOCK                       (qpll_qplllock[i>>2])
            );
              assign QPLL_QPLLPD                           =  1'b0;
              assign QPLL_QPLLRESET[i>>2]                  =  1'b0;              
              assign QPLL_DRP_CLK                          =  1'b0;
              assign QPLL_DRP_RST_N                        =  1'b0;
              assign QPLL_DRP_OVRD                         =  1'b0;
              assign QPLL_DRP_GEN3                         =  1'b0;
              assign QPLL_DRP_START                        =  1'b0;
              assign INT_QPLLLOCK_OUT[i>>2]                =  qpll_qplllock[i>>2] ;
              assign INT_QPLLOUTREFCLK_OUT[i>>2]           =  qpll_qplloutrefclk[i>>2];
              assign INT_QPLLOUTCLK_OUT[i>>2]              =  qpll_qplloutclk[i>>2];
            end
         else
            begin   : gt_common_ext
              assign qdrp_done[i>>2]                       =  QPLL_DRP_DONE[i>>2];
              assign qdrp_qpllreset[i>>2]                  =  QPLL_DRP_RESET[i>>2];
              assign qdrp_crscode[(6*(i>>2))+5:(6*(i>>2))] =  QPLL_DRP_CRSCODE[(6*(i>>2))+5:(6*(i>>2))];
              assign qdrp_fsm[(9*(i>>2))+8:(9*(i>>2))]     =  QPLL_DRP_FSM[(9*(i>>2))+8:(9*(i>>2))];
              assign qpll_qplloutclk[i>>2]                 =  QPLL_QPLLOUTCLK[i>>2];
              assign qpll_qplloutrefclk[i>>2]              =  QPLL_QPLLOUTREFCLK[i>>2];
              assign qpll_qplllock[i>>2]                   =  QPLL_QPLLLOCK[i>>2];
              assign QPLL_QPLLPD                           =  qpllpd;
              assign QPLL_QPLLRESET[i>>2]                  =  qpllreset[i>>2];              
              assign QPLL_DRP_CLK                          =  clk_dclk;
              assign QPLL_DRP_RST_N                        =  rst_dclk_reset;
              assign QPLL_DRP_OVRD                         =  qrst_ovrd;
              assign QPLL_DRP_GEN3                         =  &rate_gen3;
              assign QPLL_DRP_START                        =  qrst_drp_start;
              assign INT_QPLLLOCK_OUT[i>>2]                =  1'b0;
              assign INT_QPLLOUTCLK_OUT[i>>2]              =  1'b0;
              assign INT_QPLLOUTREFCLK_OUT[i>>2]           =  1'b0;
            end
         end
       else

            //---------- PIPE Common Defaults ----------------------------------
            begin : gt_common_disabled
            assign qdrp_done[i>>2]                       =  1'd0;
            assign qdrp_crscode[(6*(i>>2))+5:(6*(i>>2))] =  6'd0;
            assign qdrp_fsm[(9*(i>>2))+8:(9*(i>>2))]     =  9'd0;
            assign qpll_qplloutclk[i>>2]                 =  1'd0;
            assign qpll_qplloutrefclk[i>>2]              =  1'd0;
            assign qpll_qplllock[i>>2]                   =  1'd0;
            assign QPLL_QPLLPD                           =  1'b0;
            assign QPLL_QPLLRESET[i>>2]                  =  1'b0;              
            assign QPLL_DRP_CLK                          =  1'b0;
            assign QPLL_DRP_RST_N                        =  1'b0;
            assign QPLL_DRP_OVRD                         =  1'b0;
            assign QPLL_DRP_GEN3                         =  1'b0;
            assign QPLL_DRP_START                        =  1'b0;
            assign INT_QPLLLOCK_OUT[i>>2]                =  1'b0;
            assign INT_QPLLOUTCLK_OUT[i>>2]              =  1'b0;
            assign INT_QPLLOUTREFCLK_OUT[i>>2]           =  1'b0;
            end
     end

    //---------- GT Wrapper ----------------------------------------------------
    assign gt_txpmareset_i[i] = (user_txpmareset[i] || rate_txpmareset[i]);
    assign gt_rxpmareset_i[i] = (user_rxpmareset[i] || rate_rxpmareset[i]);

design_1_xdma_0_0_pcie2_ip_gt_wrapper #
    (
    
        .PCIE_SIM_MODE                  (PCIE_SIM_MODE),                        // PCIe sim mode
        .PCIE_SIM_SPEEDUP               (PCIE_SIM_SPEEDUP),                     // PCIe sim speedup
        .PCIE_SIM_TX_EIDLE_DRIVE_LEVEL  (PCIE_SIM_TX_EIDLE_DRIVE_LEVEL),        // PCIe sim TX electrical idle drive level 
        .PCIE_GT_DEVICE                 (PCIE_GT_DEVICE),                       // PCIe GT device
        .PCIE_USE_MODE                  (PCIE_USE_MODE),                        // PCIe use mode
        .PCIE_PLL_SEL                   (PCIE_PLL_SEL),                         // PCIe PLL select for Gen1/Gen2 only
        .PCIE_LPM_DFE                   (PCIE_LPM_DFE),                         // PCIe LPM or DFE mode for Gen1/Gen2 only
        .PCIE_LPM_DFE_GEN3              (PCIE_LPM_DFE_GEN3),                    // PCIe LPM or DFE mode for Gen3      only
        .PCIE_ASYNC_EN                  (PCIE_ASYNC_EN),                        // PCIe async enable
        .PCIE_TXBUF_EN                  (PCIE_TXBUF_EN),                        // PCIe TX buffer enable for Gen1/Gen2 only
        .PCIE_TXSYNC_MODE               (PCIE_TXSYNC_MODE),                     // PCIe TX sync mode
        .PCIE_RXSYNC_MODE               (PCIE_RXSYNC_MODE),                     // PCIe RX sync mode
        .PCIE_CHAN_BOND                 (PCIE_CHAN_BOND),                       // PCIe Channel bonding mode
        .PCIE_CHAN_BOND_EN              (PCIE_CHAN_BOND_EN),                    // PCIe Channel bonding enable for Gen1/Gen2 only
        .PCIE_LANE                      (PCIE_LANE),                            // PCIe number of lane
        .PCIE_REFCLK_FREQ               (PCIE_REFCLK_FREQ),                     // PCIe reference clock frequency
        .PCIE_TX_EIDLE_ASSERT_DELAY     (PCIE_TX_EIDLE_ASSERT_DELAY),           // PCIe TX electrical idle assert delay
        .PCIE_OOBCLK_MODE               (PCIE_OOBCLK_MODE),                     // PCIe OOB clock mode
        .TX_MARGIN_FULL_0               (TX_MARGIN_FULL_0),                      
        .TX_MARGIN_FULL_1               (TX_MARGIN_FULL_1),   
        .TX_MARGIN_FULL_2               (TX_MARGIN_FULL_2),
        .TX_MARGIN_FULL_3               (TX_MARGIN_FULL_3),
        .TX_MARGIN_FULL_4               (TX_MARGIN_FULL_4),
        .TX_MARGIN_LOW_0                (TX_MARGIN_LOW_0), 
        .TX_MARGIN_LOW_1                (TX_MARGIN_LOW_1), 
        .TX_MARGIN_LOW_2                (TX_MARGIN_LOW_2),
        .TX_MARGIN_LOW_3                (TX_MARGIN_LOW_3),
        .TX_MARGIN_LOW_4                (TX_MARGIN_LOW_4),

        .PCIE_DEBUG_MODE                (PCIE_DEBUG_MODE)                       // PCIe debug mode
    )
    gt_wrapper_i
    (
    
        //---------- GT User Ports -------------------------
        .GT_MASTER                      (i == 0),
        .GT_GEN3                        (rate_gen3[i]),   
        .GT_RX_CONVERGE                 (&user_rx_converge),     
    
        //---------- GT Clock Ports ------------------------
        .GT_GTREFCLK0                   (PIPE_CLK),
        .GT_QPLLCLK                     (qpll_qplloutclk[i>>2]),
        .GT_QPLLREFCLK                  (qpll_qplloutrefclk[i>>2]),
        .GT_TXUSRCLK                    (clk_pclk),
        .GT_RXUSRCLK                    (clk_rxusrclk), 
        .GT_TXUSRCLK2                   (clk_pclk),
        .GT_RXUSRCLK2                   (clk_rxusrclk), 
        .GT_OOBCLK                      (oobclk[i]),
        .GT_TXSYSCLKSEL                 (rate_sysclksel[(2*i)+1:(2*i)]),
        .GT_RXSYSCLKSEL                 (rate_sysclksel[(2*i)+1:(2*i)]),
        .GT_CPLLPDREFCLK                (gt_cpllpdrefclk),
                                
        .GT_TXOUTCLK                    (gt_txoutclk[i]),
        .GT_RXOUTCLK                    (gt_rxoutclk[i]),
        .GT_CPLLLOCK                    (gt_cplllock[i]),  
        .GT_RXCDRLOCK                   (gt_rxcdrlock[i]),
        
        //---------- GT Reset Ports ------------------------
        .GT_CPLLPD                      (rst_cpllpd    || rate_cpllpd[i]),
        .GT_CPLLRESET                   (rst_cpllreset || rate_cpllreset[i]),
        .GT_TXUSERRDY                   (rst_userrdy),
        .GT_RXUSERRDY                   (rst_userrdy),
        .GT_RESETOVRD                   (user_resetovrd[i]),
        .GT_GTTXRESET                   (rst_gtreset),
        .GT_GTRXRESET                   (rst_gtreset),
        .GT_TXPMARESET                  (gt_txpmareset_i[i]), // (user_txpmareset[i] || rate_txpmareset[i]),                 
        .GT_RXPMARESET                  (gt_rxpmareset_i[i]), // (user_rxpmareset[i] || rate_rxpmareset[i]),                
        .GT_RXCDRRESET                  (user_rxcdrreset[i]),
        .GT_RXCDRFREQRESET              (user_rxcdrfreqreset[i]),
        .GT_RXDFELPMRESET               (user_rxdfelpmreset[i]),
        .GT_EYESCANRESET                (user_eyescanreset[i]),
        .GT_TXPCSRESET                  (user_txpcsreset[i]),                   
        .GT_RXPCSRESET                  (user_rxpcsreset[i]),                 
        .GT_RXBUFRESET                  (user_rxbufreset[i]),
                                    
        .GT_EYESCANDATAERROR            (gt_eyescandataerror[i]),
        .GT_TXRESETDONE                 (gt_txresetdone[i]),
        .GT_RXRESETDONE                 (gt_rxresetdone[i]),
        .GT_RXPMARESETDONE              (gt_rxpmaresetdone[i]),
        
        //---------- GT TX Data Ports ----------------------
        .GT_TXDATA                      (PIPE_TXDATA[(32*i)+31:(32*i)]),
        .GT_TXDATAK                     (PIPE_TXDATAK[(4*i)+3:(4*i)]),
        
        .GT_TXP                         (PIPE_TXP[i]),
        .GT_TXN                         (PIPE_TXN[i]),
        
        //---------- GT RX Data Ports ----------------------
        .GT_RXP                         (PIPE_RXP[i]),
        .GT_RXN                         (PIPE_RXN[i]),
        
        .GT_RXDATA                      (PIPE_RXDATA[(32*i)+31:(32*i)]),
        .GT_RXDATAK                     (PIPE_RXDATAK[(4*i)+3:(4*i)]),
        
        //---------- GT Command Ports ----------------------
        .GT_TXDETECTRX                  (PIPE_TXDETECTRX),
        .GT_TXELECIDLE                  (PIPE_TXELECIDLE[i]), 
        .GT_TXCOMPLIANCE                (PIPE_TXCOMPLIANCE[i]),
        .GT_RXPOLARITY                  (PIPE_RXPOLARITY[i]),
        .GT_TXPOWERDOWN                 (PIPE_POWERDOWN[(2*i)+1:(2*i)]),
        .GT_RXPOWERDOWN                 (PIPE_POWERDOWN[(2*i)+1:(2*i)]),
        .GT_TXRATE                      (rate_rate[(3*i)+2:(3*i)]),
        .GT_RXRATE                      (rate_rate[(3*i)+2:(3*i)]),        
            
        //---------- GT Electrical Command Ports -----------
        .GT_TXMARGIN                    (PIPE_TXMARGIN),
        .GT_TXSWING                     (PIPE_TXSWING),
        .GT_TXDEEMPH                    (PIPE_TXDEEMPH[i]),  
        .GT_TXINHIBIT                   (PIPE_TXINHIBIT[i]),
        .GT_TXPRECURSOR                 (eq_txeq_precursor[(5*i)+4:(5*i)]),
        .GT_TXMAINCURSOR                (eq_txeq_maincursor[(7*i)+6:(7*i)]),
        .GT_TXPOSTCURSOR                (eq_txeq_postcursor[(5*i)+4:(5*i)]),
    
        //---------- GT Status Ports -----------------------
        .GT_RXVALID                     (gt_rxvalid[i]),
        .GT_PHYSTATUS                   (gt_phystatus[i]),
        .GT_RXELECIDLE                  (gt_rxelecidle[i]),
        .GT_RXSTATUS                    (gt_rxstatus[(3*i)+2:(3*i)]),
        .GT_RXBUFSTATUS                 (gt_rxbufstatus[(3*i)+2:(3*i)]),
        .GT_TXRATEDONE                  (gt_txratedone[i]),
        .GT_RXRATEDONE                  (gt_rxratedone[i]),
        .GT_RXDISPERR                   (gt_rxdisperr[(8*i)+7:(8*i)]),  
        .GT_RXNOTINTABLE                (gt_rxnotintable[(8*i)+7:(8*i)]),
    
        //---------- GT DRP Ports --------------------------
        .GT_DRPCLK                      (clk_dclk),
        .GT_DRPADDR                     (drp_mux_addr[(9*i)+8:(9*i)]),
        .GT_DRPEN                       (drp_mux_en[i]),
        .GT_DRPDI                       (drp_mux_di[(16*i)+15:(16*i)]),
        .GT_DRPWE                       (drp_mux_we[i]),
                                     
        .GT_DRPDO                       (gt_do[(16*i)+15:(16*i)]),
        .GT_DRPRDY                      (gt_rdy[i]),
        
        //---------- GT TX Sync Ports ----------------------
        .GT_TXPHALIGN                   (sync_txphalign[i]),    
        .GT_TXPHALIGNEN                 (sync_txphalignen[i]), 
        .GT_TXPHINIT                    (sync_txphinit[i]),   
        .GT_TXDLYBYPASS                 (sync_txdlybypass[i]),  
        .GT_TXDLYSRESET                 (sync_txdlysreset[i]),
        .GT_TXDLYEN                     (sync_txdlyen[i]),      
                                     
        .GT_TXDLYSRESETDONE             (gt_txdlysresetdone[i]),
        .GT_TXPHINITDONE                (gt_txphinitdone[i]),  
        .GT_TXPHALIGNDONE               (gt_txphaligndone[i]), 
        
        .GT_TXPHDLYRESET                (sync_txphdlyreset[i]),
        .GT_TXSYNCMODE                  (i == 0),           // GTH, GTP
        .GT_TXSYNCIN                    (gt_txsyncout[0]),  // GTH, GTP
        .GT_TXSYNCALLIN                 (txsyncallin),      // GTH, GTP
        
        .GT_TXSYNCOUT                   (gt_txsyncout[i]),  // GTH, GTP
        .GT_TXSYNCDONE                  (gt_txsyncdone[i]), // GTH, GTP
        
        //---------- GT RX Sync Ports ----------------------
        .GT_RXPHALIGN                   (sync_rxphalign[i]),
        .GT_RXPHALIGNEN                 (sync_rxphalignen[i]),  
        .GT_RXDLYBYPASS                 (sync_rxdlybypass[i]),         
        .GT_RXDLYSRESET                 (sync_rxdlysreset[i]),
        .GT_RXDLYEN                     (sync_rxdlyen[i]),
        .GT_RXDDIEN                     (sync_rxddien[i]),
                                     
        .GT_RXDLYSRESETDONE             (gt_rxdlysresetdone[i]),
        .GT_RXPHALIGNDONE               (gt_rxphaligndone[i]),
                                                                   
        .GT_RXSYNCMODE                  (i == 0),           // GTH                                                                      
        .GT_RXSYNCIN                    (gt_rxsyncout[0]),  // GTH                                                                      
        .GT_RXSYNCALLIN                 (rxsyncallin),      // GTH     
                    
        .GT_RXSYNCOUT                   (gt_rxsyncout[i]),  // GTH  
        .GT_RXSYNCDONE                  (gt_rxsyncdone[i]), // GTH      
                                                                         
        //---------- GT Comma Alignment Ports --------------
        .GT_RXSLIDE                     (PIPE_RXSLIDE[i]),
    
        .GT_RXCOMMADET                  (gt_rxcommadet[i]),                        
        .GT_RXCHARISCOMMA               (gt_rxchariscomma[(4*i)+3:(4*i)]),                      
        .GT_RXBYTEISALIGNED             (gt_rxbyteisaligned[i]),                   
        .GT_RXBYTEREALIGN               (gt_rxbyterealign[i]),
    
        //---------- GT Channel Bonding Ports --------------
        .GT_RXCHANISALIGNED             (PIPE_RXCHANISALIGNED[i]),
        .GT_RXCHBONDEN                  (rxchbonden[i]),
        .GT_RXCHBONDI                   (gt_rxchbondi[i]),
        .GT_RXCHBONDLEVEL               (gt_rxchbondlevel[(3*i)+2:(3*i)]),
        .GT_RXCHBONDMASTER              (rxchbondmaster[i]),
        .GT_RXCHBONDSLAVE               (rxchbondslave[i]),
        .GT_RXCHBONDO                   (gt_rxchbondo[i+1]),
        
        //---------- GT PRBS/Loopback Ports ----------------
        .GT_TXPRBSSEL                   (PIPE_TXPRBSSEL),
        .GT_RXPRBSSEL                   (PIPE_RXPRBSSEL),
        .GT_TXPRBSFORCEERR              (PIPE_TXPRBSFORCEERR),
        .GT_RXPRBSCNTRESET              (PIPE_RXPRBSCNTRESET),
        .GT_LOOPBACK                    (PIPE_LOOPBACK),    
        
        .GT_RXPRBSERR                   (PIPE_RXPRBSERR[i]),
        
        //---------- GT Debug Port -------------------------
        .GT_DMONITOROUT                 (PIPE_DMONITOROUT[(15*i)+14:(15*i)])
    );
    

    
    //---------- GT Wrapper Assignments ----------------------------------------     
    assign oobclk[i]         = (PCIE_OOBCLK_MODE == 1) ? user_oobclk[i] : clk_oobclk;
    
    //---------- Channel Bonding Master Slave Enable ---------------------------
    if (PCIE_CHAN_BOND_EN == "FALSE") 
        begin : channel_bonding_ms_disable
        assign rxchbonden[i]     = 1'd0; 
        assign rxchbondmaster[i] = 1'd0;
        assign rxchbondslave[i]  = 1'd0;
        end 
    else 
        begin : channel_bonding_ms_enable
        assign rxchbonden[i]     = (PCIE_LANE > 1) && (PCIE_CHAN_BOND_EN == "TRUE") ? !rate_gen3[i] : 1'd0; 
        assign rxchbondmaster[i] =  rate_gen3[i] ? 1'd0 : (i == 0);
        assign rxchbondslave[i]  =  rate_gen3[i] ? 1'd0 : (i  > 0);
        end
    
    //---------- Channel Bonding Input Connection ------------------------------
    if (PCIE_CHAN_BOND_EN == "FALSE") 
        begin : channel_bonding_in_disable
        assign gt_rxchbondi[i]                 = 5'd0; 
        assign gt_rxchbondlevel[(3*i)+2:(3*i)] = 3'd0;
        end
    else
        begin : channel_bonding_in_enable
        
        //---------- Channel Bonding (2: Binary-Tree) --------------------------
        if (PCIE_CHAN_BOND == 2) 
        
            begin : channel_bonding_a
            
            case (i)
            
            //---------- Lane 0 --------------------------------
            0 : 
                begin
                assign gt_rxchbondi[0]         = gt_rxchbondo[0];
                assign gt_rxchbondlevel[2:0]   = (PCIE_LANE == 4'd8) ? 3'd4 : 
                                                 (PCIE_LANE >  4'd5) ? 3'd3 : 
                                                 (PCIE_LANE >  4'd3) ? 3'd2 : 
                                                 (PCIE_LANE >  4'd1) ? 3'd1 : 3'd0; 
                end
            //---------- Lane 1 --------------------------------    
            1 : 
                begin
                assign gt_rxchbondi[1]         = gt_rxchbondo[1];
                assign gt_rxchbondlevel[5:3]   = (PCIE_LANE == 4'd8) ? 3'd3 : 
                                                 (PCIE_LANE >  4'd5) ? 3'd2 : 
                                                 (PCIE_LANE >  4'd3) ? 3'd1 : 3'd0; 
                end
            //---------- Lane 2 --------------------------------
            2 : 
                begin
                assign gt_rxchbondi[2]         = gt_rxchbondo[1];
                assign gt_rxchbondlevel[8:6]   = (PCIE_LANE == 4'd8) ? 3'd3 : 
                                                 (PCIE_LANE >  4'd5) ? 3'd2 : 
                                                 (PCIE_LANE >  4'd3) ? 3'd1 : 3'd0; 
                end
            //---------- Lane 3 --------------------------------
            3 : 
                begin
                assign gt_rxchbondi[3]         = gt_rxchbondo[3];
                assign gt_rxchbondlevel[11:9]  = (PCIE_LANE == 4'd8) ? 3'd2 : 
                                                 (PCIE_LANE >  4'd5) ? 3'd1 : 3'd0;
                end
            //---------- Lane 4 --------------------------------
            4 : 
                begin
                assign gt_rxchbondi[4]         = gt_rxchbondo[3];
                assign gt_rxchbondlevel[14:12] = (PCIE_LANE == 4'd8) ? 3'd2 : 
                                                 (PCIE_LANE >  4'd5) ? 3'd1 : 3'd0;
                end
            //---------- Lane 5 --------------------------------
            5 : 
                begin
                assign gt_rxchbondi[5]         = gt_rxchbondo[5];
                assign gt_rxchbondlevel[17:15] = (PCIE_LANE == 4'd8) ? 3'd1 : 3'd0;
                end
            //---------- Lane 6 --------------------------------
            6 : 
                begin
                assign gt_rxchbondi[6]         = gt_rxchbondo[5];
                assign gt_rxchbondlevel[20:18] = (PCIE_LANE == 4'd8) ? 3'd1 : 3'd0;
                end
            //---------- Lane 7 --------------------------------
            7 : 
                begin
                assign gt_rxchbondi[7]         = gt_rxchbondo[7]; 
                assign gt_rxchbondlevel[23:21] = 3'd0;
                end     
            //---------- Default -------------------------------
            default :
                begin
                assign gt_rxchbondi[i]                 = gt_rxchbondo[7]; 
                assign gt_rxchbondlevel[(3*i)+2:(3*i)] = 3'd0;
                end
                
            endcase    
                
            end
            
        //---------- Channel Bonding (0: One-Hop, 1: Daisy Chain) --------------    
        else 
        
            begin : channel_bonding_b
            assign gt_rxchbondi[i]                 = (PCIE_CHAN_BOND == 1) ? gt_rxchbondo[i] : ((i == 0) ? gt_rxchbondo[0] : gt_rxchbondo[1]);
            assign gt_rxchbondlevel[(3*i)+2:(3*i)] = (PCIE_CHAN_BOND == 1) ? (PCIE_LANE-1)-i  : ((PCIE_LANE > 1) && (i == 0));       
            end
        
        end 
        
        end

endgenerate 



//---------- PIPE Wrapper Output -----------------------------------------------
assign PIPE_TXEQ_FS      = 0;//TXEQ_FS;
assign PIPE_TXEQ_LF      = 0;//TXEQ_LF;
assign PIPE_RXELECIDLE   = gt_rxelecidle;
assign PIPE_RXSTATUS     = gt_rxstatus;

assign PIPE_RXDISPERR       = gt_rxdisperr;  
assign PIPE_RXNOTINTABLE    = gt_rxnotintable;
assign PIPE_RXPMARESETDONE  = gt_rxpmaresetdone;
assign PIPE_RXBUFSTATUS     = gt_rxbufstatus;
assign PIPE_TXPHALIGNDONE   = gt_txphaligndone;
assign PIPE_TXPHINITDONE    = gt_txphinitdone;
assign PIPE_TXDLYSRESETDONE = gt_txdlysresetdone;
assign PIPE_RXPHALIGNDONE   = gt_rxphaligndone;
assign PIPE_RXDLYSRESETDONE = gt_rxdlysresetdone;
assign PIPE_RXSYNCDONE      = gt_rxsyncdone;
assign PIPE_RXCOMMADET      = gt_rxcommadet;
assign PIPE_QPLL_LOCK       = qpll_qplllock;
assign PIPE_CPLL_LOCK       = gt_cplllock;   

assign PIPE_PCLK         = clk_pclk;
assign PIPE_PCLK_LOCK    = clk_mmcm_lock; 
assign PIPE_RXCDRLOCK    = 0;//user_rxcdrlock;
assign PIPE_RXUSRCLK     = 0;//clk_rxusrclk; 
assign PIPE_RXOUTCLK     = 0;//clk_rxoutclk;
assign PIPE_TXSYNC_DONE  = 0;//sync_txsync_done;
assign PIPE_RXSYNC_DONE  = 0;//sync_rxsync_done;
assign PIPE_ACTIVE_LANE  = 0;//user_active_lane;
             
assign PIPE_TXOUTCLK_OUT = gt_txoutclk[0];
assign PIPE_RXOUTCLK_OUT = gt_rxoutclk;
assign PIPE_PCLK_SEL_OUT = rate_pclk_sel;
assign PIPE_GEN3_OUT     = rate_gen3[0];

assign PIPE_RXEQ_CONVERGE   = user_rx_converge;
assign PIPE_RXEQ_ADAPT_DONE = (PCIE_GT_DEVICE == "GTP") ? {PCIE_LANE{1'd0}} : eq_rxeq_adapt_done;

assign PIPE_EYESCANDATAERROR = gt_eyescandataerror;
assign PIPE_RST_FSM      = rst_fsm;
assign PIPE_QRST_FSM     = qrst_fsm;
assign PIPE_RATE_FSM     = rate_fsm;
assign PIPE_SYNC_FSM_TX  = sync_fsm_tx;
assign PIPE_SYNC_FSM_RX  = sync_fsm_rx;
assign PIPE_DRP_FSM      = drp_fsm;   
assign PIPE_QDRP_FSM     = 0;//qdrp_fsm;
                        
assign PIPE_RST_IDLE     = &rst_idle;
assign PIPE_QRST_IDLE    = &qrst_idle;
assign PIPE_RATE_IDLE    = &rate_idle;

assign EXT_CH_GT_DRPDO   =  gt_do[(PCIE_LANE*16)-1:0];
assign EXT_CH_GT_DRPRDY  =  gt_rdy[(PCIE_LANE-1):0];
assign EXT_CH_GT_DRPCLK  =  clk_dclk;

assign PIPE_DEBUG_0      = (PCIE_DEBUG_MODE == 1) ? gt_txresetdone                  : {PCIE_LANE{1'b0}};
assign PIPE_DEBUG_1      = (PCIE_DEBUG_MODE == 1) ? gt_rxresetdone                  : {PCIE_LANE{1'b0}};
assign PIPE_DEBUG_2      = (PCIE_DEBUG_MODE == 1) ? gt_phystatus                    : {PCIE_LANE{1'b0}};
assign PIPE_DEBUG_3      = (PCIE_DEBUG_MODE == 1) ? gt_rxvalid                      : {PCIE_LANE{1'b0}};
assign PIPE_DEBUG_4      = (PCIE_DEBUG_MODE == 1) ? clk_dclk                        : {PCIE_LANE{1'b0}};
assign PIPE_DEBUG_5      = (PCIE_DEBUG_MODE == 1) ? drp_mux_en                      : {PCIE_LANE{1'b0}};
assign PIPE_DEBUG_6      = (PCIE_DEBUG_MODE == 1) ? drp_mux_we                      : {PCIE_LANE{1'b0}};
assign PIPE_DEBUG_7      = (PCIE_DEBUG_MODE == 1) ? gt_rdy                          : {PCIE_LANE{1'b0}};
assign PIPE_DEBUG_8      = (PCIE_DEBUG_MODE == 1) ? user_rx_converge                : {PCIE_LANE{1'b0}};
assign PIPE_DEBUG_9      = (PCIE_DEBUG_MODE == 1) ? PIPE_TXELECIDLE                 : {PCIE_LANE{1'b0}};

assign PIPE_DEBUG[ 1:0]  = (PCIE_DEBUG_MODE == 1) ? PIPE_TXEQ_CONTROL[1:0] : 2'd0;
assign PIPE_DEBUG[ 5:2]  = (PCIE_DEBUG_MODE == 1) ? PIPE_TXEQ_PRESET[3:0]  : 4'd0;
assign PIPE_DEBUG[31:6]  = 26'd0;



endmodule
