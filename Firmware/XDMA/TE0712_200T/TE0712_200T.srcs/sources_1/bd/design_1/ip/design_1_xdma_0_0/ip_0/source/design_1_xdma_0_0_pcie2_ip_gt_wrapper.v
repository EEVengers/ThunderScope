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
// File       : design_1_xdma_0_0_pcie2_ip_gt_wrapper.v
// Version    : 3.3
//------------------------------------------------------------------------------
//  Filename     :  gt_wrapper.v
//  Description  :  GT Wrapper Module for 7 Series Transceiver
//  Version      :  19.0
//------------------------------------------------------------------------------



`timescale 1ns / 1ps



//---------- GT Wrapper --------------------------------------------------------
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_gt_wrapper #
(
    parameter PCIE_SIM_MODE                 = "FALSE",      // PCIe sim mode
    parameter PCIE_SIM_SPEEDUP              = "FALSE",      // PCIe sim speedup
    parameter PCIE_SIM_TX_EIDLE_DRIVE_LEVEL = "1",          // PCIe sim TX electrical idle drive level
    parameter PCIE_GT_DEVICE                = "GTX",        // PCIe GT device
    parameter PCIE_USE_MODE                 = "3.0",        // PCIe use mode
    parameter PCIE_PLL_SEL                  = "CPLL",       // PCIe PLL select for Gen1/Gen2
    parameter PCIE_LPM_DFE                  = "LPM",        // PCIe LPM or DFE mode for Gen1/Gen2 only
    parameter PCIE_LPM_DFE_GEN3             = "DFE",        // PCIe LPM or DFE mode for Gen3      only
    parameter PCIE_ASYNC_EN                 = "FALSE",      // PCIe async enable
    parameter PCIE_TXBUF_EN                 = "FALSE",      // PCIe TX buffer enable for Gen1/Gen2 only
    parameter PCIE_TXSYNC_MODE              = 0,            // PCIe TX sync mode
    parameter PCIE_RXSYNC_MODE              = 0,            // PCIe RX sync mode
    parameter PCIE_CHAN_BOND                = 0,            // PCIe channel bonding mode
    parameter PCIE_CHAN_BOND_EN             = "TRUE",       // PCIe channel bonding enable for Gen1/Gen2 only
    parameter PCIE_LANE                     = 1,            // PCIe number of lane
    parameter PCIE_REFCLK_FREQ              = 0,            // PCIe reference clock frequency
    parameter PCIE_TX_EIDLE_ASSERT_DELAY    = 3'd4,         // PCIe TX electrical idle assert delay
    parameter PCIE_OOBCLK_MODE              = 1,            // PCIe OOB clock mode
    parameter TX_MARGIN_FULL_0              = 7'b1001111,   // 1000 mV
    parameter TX_MARGIN_FULL_1              = 7'b1001110,   // 950 mV
    parameter TX_MARGIN_FULL_2              = 7'b1001101,   // 900 mV
    parameter TX_MARGIN_FULL_3              = 7'b1001100,   // 850 mV
    parameter TX_MARGIN_FULL_4              = 7'b1000011,   // 400 mV
    parameter TX_MARGIN_LOW_0               = 7'b1000101,   // 500 mV
    parameter TX_MARGIN_LOW_1               = 7'b1000110 ,  // 450 mV
    parameter TX_MARGIN_LOW_2               = 7'b1000011,   // 400 mV
    parameter TX_MARGIN_LOW_3               = 7'b1000010 ,  // 350 mV
    parameter TX_MARGIN_LOW_4               = 7'b1000000 ,
    parameter PCIE_DEBUG_MODE               = 0             // PCIe debug mode
)

(    
    //---------- GT User Ports -----------------------------
    input               GT_MASTER,
    input               GT_GEN3, 
    input               GT_RX_CONVERGE,
    
    //---------- GT Clock Ports ----------------------------
    input               GT_GTREFCLK0,
    input               GT_QPLLCLK,
    input               GT_QPLLREFCLK,
    input               GT_TXUSRCLK,
    input               GT_RXUSRCLK,
    input               GT_TXUSRCLK2,
    input               GT_RXUSRCLK2, 
    input               GT_OOBCLK,
    input       [ 1:0]  GT_TXSYSCLKSEL,
    input       [ 1:0]  GT_RXSYSCLKSEL,                
    input               GT_CPLLPDREFCLK,                   
    output              GT_TXOUTCLK,
    output              GT_RXOUTCLK,
    output              GT_CPLLLOCK,
    output              GT_RXCDRLOCK,
    
    //---------- GT Reset Ports ----------------------------
    input               GT_CPLLPD,
    input               GT_CPLLRESET,
    input               GT_TXUSERRDY,
    input               GT_RXUSERRDY,
    input               GT_RESETOVRD,
    input               GT_GTTXRESET,
    input               GT_GTRXRESET,
    input               GT_TXPMARESET,
    input               GT_RXPMARESET,
    input               GT_RXCDRRESET,
    input               GT_RXCDRFREQRESET,
    input               GT_RXDFELPMRESET,
    input               GT_EYESCANRESET,
    input               GT_TXPCSRESET,
    input               GT_RXPCSRESET,
    input               GT_RXBUFRESET,
    
    output              GT_EYESCANDATAERROR,
    output              GT_TXRESETDONE,
    output              GT_RXRESETDONE,
    output              GT_RXPMARESETDONE,
    
    //---------- GT TX Data Ports --------------------------
    input       [31:0]  GT_TXDATA,
    input       [ 3:0]  GT_TXDATAK,
    
    output              GT_TXP,
    output              GT_TXN,
    
    //---------- GT RX Data Ports --------------------------
    input               GT_RXN,
    input               GT_RXP,
    
    output      [31:0]  GT_RXDATA,
    output      [ 3:0]  GT_RXDATAK,
    
    //---------- GT Command Ports --------------------------
    input               GT_TXDETECTRX,
    input               GT_TXELECIDLE,
    input               GT_TXCOMPLIANCE,
    input               GT_RXPOLARITY,
    input       [ 1:0]  GT_TXPOWERDOWN,
    input       [ 1:0]  GT_RXPOWERDOWN,
    input       [ 2:0]  GT_TXRATE,
    input       [ 2:0]  GT_RXRATE,
      
    //---------- GT Electrical Command Ports ---------------
    input       [ 2:0]  GT_TXMARGIN,
    input               GT_TXSWING,
    input               GT_TXDEEMPH,
    input               GT_TXINHIBIT,
    input       [ 4:0]  GT_TXPRECURSOR,
    input       [ 6:0]  GT_TXMAINCURSOR,
    input       [ 4:0]  GT_TXPOSTCURSOR,
       
    //---------- GT Status Ports ---------------------------
    output              GT_RXVALID,
    output              GT_PHYSTATUS,
    output              GT_RXELECIDLE,
    output      [ 2:0]  GT_RXSTATUS,
    output      [ 2:0]  GT_RXBUFSTATUS,
    output              GT_TXRATEDONE,
    output              GT_RXRATEDONE,

    output      [7:0]   GT_RXDISPERR,  
    output      [7:0]   GT_RXNOTINTABLE,

    //---------- GT DRP Ports ------------------------------
    input               GT_DRPCLK,
    input       [ 8:0]  GT_DRPADDR,
    input               GT_DRPEN,
    input       [15:0]  GT_DRPDI,
    input               GT_DRPWE,
    
    output      [15:0]  GT_DRPDO,
    output              GT_DRPRDY,
    
    //---------- GT TX Sync Ports --------------------------
    input               GT_TXPHALIGN,     
    input               GT_TXPHALIGNEN,  
    input               GT_TXPHINIT, 
    input               GT_TXDLYBYPASS,
    input               GT_TXDLYSRESET,
    input               GT_TXDLYEN,       
    
    output              GT_TXDLYSRESETDONE,
    output              GT_TXPHINITDONE,  
    output              GT_TXPHALIGNDONE,
    
    input               GT_TXPHDLYRESET,
    input               GT_TXSYNCMODE,                      // GTH
    input               GT_TXSYNCIN,                        // GTH
    input               GT_TXSYNCALLIN,                     // GTH
        
    output              GT_TXSYNCOUT,                       // GTH                                                                        
    output              GT_TXSYNCDONE,                      // GTH                                                                        
                                                                            
    //---------- GT RX Sync Ports --------------------------
    input               GT_RXPHALIGN,
    input               GT_RXPHALIGNEN,
    input               GT_RXDLYBYPASS,
    input               GT_RXDLYSRESET,
    input               GT_RXDLYEN,
    input               GT_RXDDIEN,
    
    output              GT_RXDLYSRESETDONE,
    output              GT_RXPHALIGNDONE,    
    
    input               GT_RXSYNCMODE,                      // GTH
    input               GT_RXSYNCIN,                        // GTH
    input               GT_RXSYNCALLIN,                     // GTH
    
    output              GT_RXSYNCOUT,                       // GTH
    output              GT_RXSYNCDONE,                      // GTH
    
    //---------- GT Comma Alignment Ports ------------------
    input               GT_RXSLIDE,
    
    output              GT_RXCOMMADET,                        
    output      [ 3:0]  GT_RXCHARISCOMMA,                      
    output              GT_RXBYTEISALIGNED,                   
    output              GT_RXBYTEREALIGN,                     
    
    //---------- GT Channel Bonding Ports ------------------
    input               GT_RXCHBONDEN,
    input       [ 4:0]  GT_RXCHBONDI,
    input       [ 2:0]  GT_RXCHBONDLEVEL,
    input               GT_RXCHBONDMASTER,
    input               GT_RXCHBONDSLAVE,
    
    output              GT_RXCHANISALIGNED,
    output      [ 4:0]  GT_RXCHBONDO,
    
    //---------- GT PRBS/Loopback Ports --------------------
    input       [ 2:0]  GT_TXPRBSSEL,
    input       [ 2:0]  GT_RXPRBSSEL,
    input               GT_TXPRBSFORCEERR,
    input               GT_RXPRBSCNTRESET,
    input       [ 2:0]  GT_LOOPBACK,
    
    output              GT_RXPRBSERR,
    
    //---------- GT Debug Ports ----------------------------
    output      [14:0]  GT_DMONITOROUT

);

    //---------- Internal Signals --------------------------
    wire        [ 2:0]  txoutclksel;
    wire        [ 2:0]  rxoutclksel;
    wire        [63:0]  rxdata;
    wire        [ 7:0]  rxdatak;
    wire        [ 7:0]  rxchariscomma;
    wire rxlpmen;
    wire        [14:0]  dmonitorout;
    wire                dmonitorclk;

    wire cpllpd;
    wire cpllrst;

    //---------- Select CPLL and Clock Dividers ------------
    localparam          CPLL_REFCLK_DIV = 1;
    localparam          CPLL_FBDIV_45   = 5;
    localparam          CPLL_FBDIV      = (PCIE_REFCLK_FREQ == 2) ?  2 : 
                                          (PCIE_REFCLK_FREQ == 1) ?  4 : 5;
    localparam          OUT_DIV         = (PCIE_PLL_SEL == "QPLL") ? 4 : 2;                                                     
    localparam          CLK25_DIV       = (PCIE_REFCLK_FREQ == 2) ? 10 : 
                                          (PCIE_REFCLK_FREQ == 1) ?  5 : 4;
    
    //---------- Select IES vs. GES ------------------------
    localparam          CLKMUX_PD = ((PCIE_USE_MODE == "1.0") || (PCIE_USE_MODE == "1.1")) ?  1'd0      :  1'd1;
    
    //---------- Select GTP CPLL configuration -------------
    //  PLL0/1_CFG[ 5:2] = CP1 : [    8, 4, 2, 1] units
    //  PLL0/1_CFG[10:6] = CP2 : [16, 8, 4, 2, 1] units
    //  CP2/CP1 = 2 to 3  
    //  (8/4=2)    = 27'h01F0210 = 0000_0001_1111_0000_0010_0001_0000
    //  (9/3=3)    = 27'h01F024C = 0000_0001_1111_0000_0010_0100_1100
    //  (8/3=2.67) = 27'h01F020C = 0000_0001_1111_0000_0010_0000_1100
    //  (7/3=2.33) = 27'h01F01CC = 0000_0001_1111_0000_0001_1100_1100
    //  (6/3=2)    = 27'h01F018C = 0000_0001_1111_0000_0001_1000_1100
    //  (5/3=1.67) = 27'h01F014C = 0000_0001_1111_0000_0001_0100_1100
    //  (6/2=3)    = 27'h01F0188 = 0000_0001_1111_0000_0001_1000_1000
    //---------- Select GTX CPLL configuration -------------
    //  CPLL_CFG[ 5: 2]  = CP1 : [    8, 4, 2, 1] units 
    //  CPLL_CFG[22:18]  = CP2 : [16, 8, 4, 2, 1] units
    //  CP2/CP1 = 2 to 3 
    //  (9/3=3)    = 1010_0100_0000_0111_1100_1100
    //------------------------------------------------------
    localparam          CPLL_CFG  = ((PCIE_USE_MODE == "1.0") || (PCIE_USE_MODE == "1.1")) ? 24'hB407CC : 24'hA407CC;
    
    //---------- Select TX XCLK ----------------------------      
    //  TXOUT for TX Buffer Use     
    //  TXUSR for TX Buffer Bypass  
    //------------------------------------------------------                                            
    localparam          TX_XCLK_SEL = (PCIE_TXBUF_EN == "TRUE") ? "TXOUT" : "TXUSR";
                                                   
    //---------- Select TX Receiver Detection Configuration 
    localparam          TX_RXDETECT_CFG = (PCIE_REFCLK_FREQ == 2) ? 14'd250 : 
                                          (PCIE_REFCLK_FREQ == 1) ? 14'd125 : 14'd100;
    localparam          TX_RXDETECT_REF = (((PCIE_USE_MODE == "1.0") || (PCIE_USE_MODE == "1.1")) && (PCIE_SIM_MODE == "FALSE")) ? 3'b000 : 3'b011;                                                                 
                                                      
    //---------- Select PCS_RSVD_ATTR ----------------------
    //  [0]: 1 = enable latch when bypassing TX buffer, 0 = disable latch when using TX buffer 
    //  [1]: 1 = enable manual TX sync,                 0 = enable auto TX sync
    //  [2]: 1 = enable manual RX sync,                 0 = enable auto RX sync
    //  [3]: 1 = select external clock for OOB          0 = select reference clock for OOB    
    //  [6]: 1 = enable DMON                            0 = disable DMON     
    //  [7]: 1 = filter stale TX[P/N] data when exiting TX electrical idle
    //  [8]: 1 = power up OOB                           0 = power down OOB
    //------------------------------------------------------
    localparam          OOBCLK_SEL    = (PCIE_OOBCLK_MODE == 0) ? 1'd0  : 1'd1;      // GTX
    localparam          RXOOB_CLK_CFG = (PCIE_OOBCLK_MODE == 0) ? "PMA" : "FABRIC";  // GTH/GTP
    
    localparam          PCS_RSVD_ATTR = ((PCIE_USE_MODE == "1.0")                           && (PCIE_TXBUF_EN == "FALSE")) ? {44'h0000000001C, OOBCLK_SEL, 3'd1} :
                                        ((PCIE_USE_MODE == "1.0")                           && (PCIE_TXBUF_EN == "TRUE" )) ? {44'h0000000001C, OOBCLK_SEL, 3'd0} : 
                                        ((PCIE_RXSYNC_MODE == 0) && (PCIE_TXSYNC_MODE == 0) && (PCIE_TXBUF_EN == "FALSE")) ? {44'h0000000001C, OOBCLK_SEL, 3'd7} : 
                                        ((PCIE_RXSYNC_MODE == 0) && (PCIE_TXSYNC_MODE == 0) && (PCIE_TXBUF_EN == "TRUE" )) ? {44'h0000000001C, OOBCLK_SEL, 3'd6} :   
                                        ((PCIE_RXSYNC_MODE == 0) && (PCIE_TXSYNC_MODE == 1) && (PCIE_TXBUF_EN == "FALSE")) ? {44'h0000000001C, OOBCLK_SEL, 3'd5} : 
                                        ((PCIE_RXSYNC_MODE == 0) && (PCIE_TXSYNC_MODE == 1) && (PCIE_TXBUF_EN == "TRUE" )) ? {44'h0000000001C, OOBCLK_SEL, 3'd4} : 
                                        ((PCIE_RXSYNC_MODE == 1) && (PCIE_TXSYNC_MODE == 0) && (PCIE_TXBUF_EN == "FALSE")) ? {44'h0000000001C, OOBCLK_SEL, 3'd3} : 
                                        ((PCIE_RXSYNC_MODE == 1) && (PCIE_TXSYNC_MODE == 0) && (PCIE_TXBUF_EN == "TRUE" )) ? {44'h0000000001C, OOBCLK_SEL, 3'd2} : 
                                        ((PCIE_RXSYNC_MODE == 1) && (PCIE_TXSYNC_MODE == 1) && (PCIE_TXBUF_EN == "FALSE")) ? {44'h0000000001C, OOBCLK_SEL, 3'd1} : 
                                        ((PCIE_RXSYNC_MODE == 1) && (PCIE_TXSYNC_MODE == 1) && (PCIE_TXBUF_EN == "TRUE" )) ? {44'h0000000001C, OOBCLK_SEL, 3'd0} : {44'h0000000001C, OOBCLK_SEL, 3'd7};                                      
                             
    //---------- Select RXCDR_CFG --------------------------
    
    //---------- GTX Note ----------------------------------
    // For GTX PCIe Gen1/Gen2 with 8B/10B, the following CDR setting may provide more margin
    // Async 72'h03_8000_23FF_1040_0020
    // Sync: 72'h03_0000_23FF_1040_0020   
    //------------------------------------------------------      
    
    localparam          RXCDR_CFG_GTX = ((PCIE_USE_MODE == "1.0") || (PCIE_USE_MODE == "1.1")) ? 
                                        ((PCIE_ASYNC_EN == "TRUE") ? 72'b0000_0010_0000_0111_1111_1110_0010_0000_0110_0000_0010_0001_0001_0000_0000000000010000
                                                                   : 72'h11_07FE_4060_0104_0000):   // IES setting
                                        ((PCIE_ASYNC_EN == "TRUE") ? 72'h03_8000_23FF_1020_0020     // 
                                                                   : 72'h03_0000_23FF_1020_0020);   // optimized for GES silicon                                                                                
                            
    localparam          RXCDR_CFG_GTH = (PCIE_USE_MODE == "2.0") ? 
                                        ((PCIE_ASYNC_EN == "TRUE") ? 83'h0_0011_07FE_4060_2104_1010   
                                                                   : 83'h0_0011_07FE_4060_0104_1010):  // Optimized for IES silicon
                                        ((PCIE_ASYNC_EN == "TRUE") ? 83'h0_0020_07FE_2000_C208_8018   
                                                                   : 83'h0_0020_07FE_2000_C208_0018);  // Optimized for 1.2 silicon     
                                                                                 
    localparam          RXCDR_CFG_GTP = ((PCIE_ASYNC_EN == "TRUE") ? 83'h0_0001_07FE_4060_2104_1010
                                                                   : 83'h0_0001_07FE_4060_0104_1010);  // Optimized for IES silicon
                   
                         
                                                                                           
                            
    //---------- Select TX and RX Sync Mode ----------------                                            
    localparam          TXSYNC_OVRD      = (PCIE_TXSYNC_MODE == 1) ? 1'd0 : 1'd1;                             
    localparam          RXSYNC_OVRD      = (PCIE_TXSYNC_MODE == 1) ? 1'd0 : 1'd1;     
                                                                          
    localparam          TXSYNC_MULTILANE = (PCIE_LANE == 1) ? 1'd0 : 1'd1;  
    localparam          RXSYNC_MULTILANE = (PCIE_LANE == 1) ? 1'd0 : 1'd1;                                             
                                       
    //---------- Select Clock Correction Min and Max Latency
    //  CLK_COR_MIN_LAT = Larger of (2 * RXCHBONDLEVEL + 13) or (CHAN_BOND_MAX_SKEW + 11)
    //                  = 13 when PCIE_LANE = 1
    //  CLK_COR_MAX_LAT = CLK_COR_MIN_LAT + CLK_COR_SEQ_LEN + 1
    //                  = CLK_COR_MIN_LAT + 2
    //------------------------------------------------------
   
    //---------- CLK_COR_MIN_LAT Look-up Table -------------
    // Lane | One-Hop  | Daisy-Chain | Binary-Tree
    //------------------------------------------------------
    //    0 |       13 |       13    |       13
    //    1 | 15 to 18 | 15 to 18    | 15 to 18
    //    2 | 15 to 18 | 17 to 18    | 15 to 18
    //    3 | 15 to 18 |       19    | 17 to 18
    //    4 | 15 to 18 |       21    | 17 to 18
    //    5 | 15 to 18 |       23    |       19
    //    6 | 15 to 18 |       25    |       19
    //    7 | 15 to 18 |       27    |       21
    //------------------------------------------------------
    
    localparam          CLK_COR_MIN_LAT = ((PCIE_LANE == 8) && (PCIE_CHAN_BOND != 0) && (PCIE_CHAN_BOND_EN == "TRUE"))  ? ((PCIE_CHAN_BOND == 1) ? 27 : 21) : 
                                          ((PCIE_LANE == 7) && (PCIE_CHAN_BOND != 0) && (PCIE_CHAN_BOND_EN == "TRUE"))  ? ((PCIE_CHAN_BOND == 1) ? 25 : 19) : 
                                          ((PCIE_LANE == 6) && (PCIE_CHAN_BOND != 0) && (PCIE_CHAN_BOND_EN == "TRUE"))  ? ((PCIE_CHAN_BOND == 1) ? 23 : 19) : 
                                          ((PCIE_LANE == 5) && (PCIE_CHAN_BOND != 0) && (PCIE_CHAN_BOND_EN == "TRUE"))  ? ((PCIE_CHAN_BOND == 1) ? 21 : 18) : 
                                          ((PCIE_LANE == 4) && (PCIE_CHAN_BOND != 0) && (PCIE_CHAN_BOND_EN == "TRUE"))  ? ((PCIE_CHAN_BOND == 1) ? 19 : 18) :
                                          ((PCIE_LANE == 3) && (PCIE_CHAN_BOND != 0) && (PCIE_CHAN_BOND_EN == "TRUE"))  ? ((PCIE_CHAN_BOND == 1) ? 18 : 18) :
                                          ((PCIE_LANE == 2) && (PCIE_CHAN_BOND != 0) && (PCIE_CHAN_BOND_EN == "TRUE"))  ? ((PCIE_CHAN_BOND == 1) ? 18 : 18) :
                                          ((PCIE_LANE == 1)                          || (PCIE_CHAN_BOND_EN == "FALSE")) ? 13 : 18; 
                                           
    localparam          CLK_COR_MAX_LAT = CLK_COR_MIN_LAT + 2;                                                     
    
    //---------- Simulation Speedup ------------------------
  //localparam          CFOK_CFG_GTH = (PCIE_SIM_MODE == "TRUE") ? 42'h240_0004_0F80 : 42'h248_0004_0E80;  // [8] : 1 = Skip CFOK
  //localparam          CFOK_CFG_GTP = (PCIE_SIM_MODE == "TRUE") ? 43'h000_0000_0000 : 43'h000_0000_0100;  // [2] : 1 = Skip CFOK

    //---------- Select [TX/RX]OUTCLK ----------------------
    assign txoutclksel = GT_MASTER ? 3'd3 : 3'd0;
    assign rxoutclksel = ((PCIE_DEBUG_MODE == 1) || ((PCIE_ASYNC_EN == "TRUE") && GT_MASTER)) ? 3'd2 : 3'd0;
 
    //---------- Select DFE vs. LPM ------------------------
    //  Gen1/2 = Use LPM by default.  Option to use DFE.
    //  Gen3   = Use DFE by default.  Option to use LPM.
    //------------------------------------------------------
    assign rxlpmen = GT_GEN3 ? ((PCIE_LPM_DFE_GEN3 == "LPM") ? 1'd1 : 1'd0) : ((PCIE_LPM_DFE == "LPM") ? 1'd1 : 1'd0);
    

 
//---------- Generate DMONITOR Clock Buffer for Debug ------  
generate if (PCIE_DEBUG_MODE == 1)
 
    begin : dmonitorclk_i
    //---------- DMONITOR CLK ------------------------------
    BUFG dmonitorclk_i
    (
        //---------- Input ---------------------------------
        .I                              (dmonitorout[7]),   
        //---------- Output --------------------------------
        .O                              (dmonitorclk)
    ); 
    end
    
else

    begin : dmonitorclk_i_disable
    assign dmonitorclk = 1'd0;
    end
    
endgenerate

   
design_1_xdma_0_0_pcie2_ip_gtx_cpllpd_ovrd cpllPDInst (
   .i_ibufds_gte2(GT_CPLLPDREFCLK),
   .o_cpllpd_ovrd(cpllpd),
   .o_cpllreset_ovrd(cpllrst));
 
//---------- Select GTX or GTH or GTP ------------------------------------------
//  Notes  :  Attributes that are commented out always use the GT default settings
//------------------------------------------------------------------------------
generate if (PCIE_GT_DEVICE == "GTP") 

    begin : gtp_channel

    //---------- GTP Channel Module --------------------------------------------
    GTPE2_CHANNEL #
    (
                
        //---------- Simulation Attributes -------------------------------------
        .SIM_RESET_SPEEDUP              (PCIE_SIM_SPEEDUP),                     //
        .SIM_RECEIVER_DETECT_PASS       ("TRUE"),                               //    
        .SIM_TX_EIDLE_DRIVE_LEVEL       (PCIE_SIM_TX_EIDLE_DRIVE_LEVEL),        // 
        .SIM_VERSION                    (PCIE_USE_MODE),                        //
                                                                                 
        //---------- Clock Attributes ------------------------------------------                                      
        .TXOUT_DIV                      (OUT_DIV),                              //
        .RXOUT_DIV                      (OUT_DIV),                              // 
        .TX_CLK25_DIV                   (CLK25_DIV),                            //
        .RX_CLK25_DIV                   (CLK25_DIV),                            //
      //.TX_CLKMUX_EN                   ( 1'b1),                                // GTP rename
      //.RX_CLKMUX_EN                   ( 1'b1),                                // GTP rename
        .TX_XCLK_SEL                    (TX_XCLK_SEL),                          // TXOUT = use TX buffer, TXUSR = bypass TX buffer
        .RX_XCLK_SEL                    ("RXREC"),                              // RXREC = use RX buffer, RXUSR = bypass RX buffer
      //.OUTREFCLK_SEL_INV              ( 2'b11),                               //
                                                                                 
        //---------- Reset Attributes ------------------------------------------                
        .TXPCSRESET_TIME                ( 5'b00001),                            //
        .RXPCSRESET_TIME                ( 5'b00001),                            //
        .TXPMARESET_TIME                ( 5'b00011),                            //
        .RXPMARESET_TIME                ( 5'b00011),                            // Optimized for sim
      //.RXISCANRESET_TIME              ( 5'b00001),                            //
                                                                                 
        //---------- TX Data Attributes ----------------------------------------                
        .TX_DATA_WIDTH                  (20),                                   // 2-byte external datawidth for Gen1/Gen2
        
        //---------- RX Data Attributes ----------------------------------------                
        .RX_DATA_WIDTH                  (20),                                   // 2-byte external datawidth for Gen1/Gen2
        
        //---------- Command Attributes ----------------------------------------                
        .TX_RXDETECT_CFG                (TX_RXDETECT_CFG),                      // 
        .TX_RXDETECT_REF                ( 3'b011),                              // 
        .RX_CM_SEL                      ( 2'd3),                                // 0 = AVTT, 1 = GND, 2 = Float, 3 = Programmable
        .RX_CM_TRIM	                    ( 4'b1010),                             // Select 800mV, Changed from 3 to 4-bits, optimized for IES
        .TX_EIDLE_ASSERT_DELAY          (PCIE_TX_EIDLE_ASSERT_DELAY),           // Optimized for sim
        .TX_EIDLE_DEASSERT_DELAY        ( 3'b010),                              // Optimized for sim
      //.PD_TRANS_TIME_FROM_P2          (12'h03C),                              //
        .PD_TRANS_TIME_NONE_P2          ( 8'h09),                               //
      //.PD_TRANS_TIME_TO_P2            ( 8'h64),                               //
      //.TRANS_TIME_RATE                ( 8'h0E),                               //
                                                                                 
        //---------- Electrical Command Attributes -----------------------------                
        .TX_DRIVE_MODE                  ("PIPE"),                               // Gen1/Gen2 = PIPE, Gen3 = PIPEGEN3
        .TX_DEEMPH0                     ( 5'b10100),                            //  6.0 dB
        .TX_DEEMPH1                     ( 5'b01011),                            //  3.5 dB
        .TX_MARGIN_FULL_0               ( 7'b1001111),                          // 1000 mV
        .TX_MARGIN_FULL_1               ( 7'b1001110),                          //  950 mV
        .TX_MARGIN_FULL_2               ( 7'b1001101),                          //  900 mV
        .TX_MARGIN_FULL_3               ( 7'b1001100),                          //  850 mV
        .TX_MARGIN_FULL_4               ( 7'b1000011),                          //  400 mV
        .TX_MARGIN_LOW_0                ( 7'b1000101),                          //  500 mV
        .TX_MARGIN_LOW_1                ( 7'b1000110),                          //  450 mV
        .TX_MARGIN_LOW_2                ( 7'b1000011),                          //  400 mV
        .TX_MARGIN_LOW_3                ( 7'b1000010),                          //  350 mV
        .TX_MARGIN_LOW_4                ( 7'b1000000),                          //  250 mV
        .TX_MAINCURSOR_SEL              ( 1'b0),                                //
        .TX_PREDRIVER_MODE              ( 1'b0),                                // GTP
                                                                                
        //---------- Status Attributes -----------------------------------------                
      //.RX_SIG_VALID_DLY               ( 4),                                   // CHECK
                                                                                 
        //---------- DRP Attributes --------------------------------------------                
                          
        //---------- PCS Attributes --------------------------------------------                
        .PCS_PCIE_EN                    ("TRUE"),                               // PCIe
        .PCS_RSVD_ATTR                  (48'h0000_0000_0100),                   // [8] : 1 = OOB power-up
                                                                                 
         //---------- PMA Attributes ------------------------------------------- 
      //.CLK_COMMON_SWING               ( 1'b0),                                // GTP new              
      //.PMA_RSV                        (32'd0),                                // 
        .PMA_RSV2                       (32'h00002040),                         // Optimized for GES
      //.PMA_RSV3                       ( 2'd0),                                // 
      //.PMA_RSV4                       ( 4'd0),                                // Changed from 15 to 4-bits
      //.PMA_RSV5                       ( 1'd0),                                // Changed from 4 to 1-bit
      //.PMA_RSV6                       ( 1'd0),                                // GTP new
      //.PMA_RSV7                       ( 1'd0),                                // GTP new
        .RX_BIAS_CFG                    (16'h0F33),                             // Optimized for IES
        .TERM_RCAL_CFG                  (15'b100001000010000),                  // Optimized for IES
        .TERM_RCAL_OVRD                 ( 3'b000),                              // Optimized for IES 
                                             
         //---------- TX PI ----------------------------------------------------                                              
      //.TXPI_CFG0                      ( 2'd0),                                //                                            
      //.TXPI_CFG1                      ( 2'd0),                                //                                            
      //.TXPI_CFG2                      ( 2'd0),                                //                                            
      //.TXPI_CFG3                      ( 1'd0),                                //                                            
      //.TXPI_CFG4                      ( 1'd0),                                //                                            
      //.TXPI_CFG5                      ( 3'd000),                              //                                            
      //.TXPI_GREY_SEL                  ( 1'd0),                                //                                            
      //.TXPI_INVSTROBE_SEL             ( 1'd0),                                //                                            
      //.TXPI_PPMCLK_SEL                ("TXUSRCLK2"),                          //                                            
      //.TXPI_PPM_CFG                   ( 8'd0),                                //                                            
      //.TXPI_SYNFREQ_PPM               ( 3'd0),                                //                                            
                                                                                                                               
        //---------- RX PI -----------------------------------------------------                                              
        .RXPI_CFG0                      ( 3'd0),                                // Changed from 3 to 2-bits, Optimized for IES                                           
        .RXPI_CFG1                      ( 1'd1),                                // Changed from 2 to 1-bits, Optimized for IES                                          
        .RXPI_CFG2                      ( 1'd1),                                // Changed from 2 to 1-bits, Optimized for IES                                                      
                                             
       //---------- CDR Attributes ---------------------------------------------
      //.RXCDR_CFG                      (72'b0000_001000000_11111_11111_001000000_011_0000111_000_001000_010000_100000000000000),  // CHECK  
        .RXCDR_CFG                      (RXCDR_CFG_GTP),       // Optimized for IES                       
        .RXCDR_LOCK_CFG                 ( 6'b010101),                           // [5:3] Window Refresh, [2:1] Window Size, [0] Enable Detection (sensitive lock = 6'b111001)  CHECK
        .RXCDR_HOLD_DURING_EIDLE        ( 1'd1),                                // Hold  RX CDR           on electrical idle for Gen1/Gen2
        .RXCDR_FR_RESET_ON_EIDLE        ( 1'd0),                                // Reset RX CDR frequency on electrical idle for Gen3
        .RXCDR_PH_RESET_ON_EIDLE        ( 1'd0),                                // Reset RX CDR phase     on electrical idle for Gen3
      //.RXCDRFREQRESET_TIME            ( 5'b00001),                            // 
      //.RXCDRPHRESET_TIME              ( 5'b00001),                            // 
                                  
        //---------- LPM Attributes --------------------------------------------               
      //.RXLPMRESET_TIME                ( 7'b0001111),                          // GTP new
      //.RXLPM_BIAS_STARTUP_DISABLE     ( 1'b0),                                // GTP new
        .RXLPM_CFG                      ( 4'b0110),                             // GTP new, optimized for IES
      //.RXLPM_CFG1                     ( 1'b0),                                // GTP new
      //.RXLPM_CM_CFG                   ( 1'b0),                                // GTP new
        .RXLPM_GC_CFG                   ( 9'b111100010),                        // GTP new, optimized for IES
        .RXLPM_GC_CFG2                  ( 3'b001),                              // GTP new, optimized for IES
      //.RXLPM_HF_CFG                   (14'b00001111110000),                   //
        .RXLPM_HF_CFG2                  ( 5'b01010),                            // GTP new
      //.RXLPM_HF_CFG3                  ( 4'b0000),                             // GTP new
        .RXLPM_HOLD_DURING_EIDLE        ( 1'b1),                                // GTP new
        .RXLPM_INCM_CFG                 ( 1'b1),                                // GTP new, optimized for IES
        .RXLPM_IPCM_CFG                 ( 1'b0),                                // GTP new, optimized for IES
      //.RXLPM_LF_CFG                   (18'b000000001111110000),               // 
        .RXLPM_LF_CFG2                  ( 5'b01010),                            // GTP new, optimized for IES
        .RXLPM_OSINT_CFG                ( 3'b100),                              // GTP new, optimized for IES
                                                                           
        //---------- OS Attributes ---------------------------------------------
        .RX_OS_CFG                      (13'h0080),                             // CHECK
        .RXOSCALRESET_TIME              (5'b00011),                             // Optimized for IES
        .RXOSCALRESET_TIMEOUT           (5'b00000),                             // Disable timeout, Optimized for IES     
                                                                                 
        //---------- Eye Scan Attributes --------------------------------------- 
      //.ES_CLK_PHASE_SEL               ( 1'b0),                                //
      //.ES_CONTROL                     ( 6'd0),                                //
      //.ES_ERRDET_EN                   ("FALSE"),                              //
        .ES_EYE_SCAN_EN                 ("FALSE"),                               // 
      //.ES_HORZ_OFFSET                 (12'd0),                                //
      //.ES_PMA_CFG                     (10'd0),                                //
      //.ES_PRESCALE                    ( 5'd0),                                //
      //.ES_QUAL_MASK                   (80'd0),                                //
      //.ES_QUALIFIER                   (80'd0),                                //
      //.ES_SDATA_MASK                  (80'd0),                                //
      //.ES_VERT_OFFSET                 ( 9'd0),                                //
                                                                                 
        //---------- TX Buffer Attributes --------------------------------------               
        .TXBUF_EN                       (PCIE_TXBUF_EN),                        // 
        .TXBUF_RESET_ON_RATE_CHANGE     ("TRUE"),                               //
                                                                                 
        //---------- RX Buffer Attributes --------------------------------------                
        .RXBUF_EN                       ("TRUE"),                               //
      //.RX_BUFFER_CFG                  ( 6'd0),                                //
        .RX_DEFER_RESET_BUF_EN          ("TRUE"),                               // 
        .RXBUF_ADDR_MODE                ("FULL"),                               //
        .RXBUF_EIDLE_HI_CNT	            ( 4'd4),                                // Optimized for sim
        .RXBUF_EIDLE_LO_CNT	            ( 4'd0),                                // Optimized for sim
        .RXBUF_RESET_ON_CB_CHANGE       ("TRUE"),                               //
        .RXBUF_RESET_ON_COMMAALIGN      ("FALSE"),                              //
        .RXBUF_RESET_ON_EIDLE           ("TRUE"),                               // PCIe
        .RXBUF_RESET_ON_RATE_CHANGE     ("TRUE"),                               //
        .RXBUF_THRESH_OVRD              ("FALSE"),                              //
        .RXBUF_THRESH_OVFLW             (61),                                   //
        .RXBUF_THRESH_UNDFLW            ( 4),                                   //
      //.RXBUFRESET_TIME                ( 5'b00001),                            //
                                                                                 
        //---------- TX Sync Attributes ----------------------------------------                
        .TXPH_CFG                       (16'h0780),                             // 
        .TXPH_MONITOR_SEL               ( 5'd0),                                // 
        .TXPHDLY_CFG                    (24'h084020),                           // [19] : 1 = full range, 0 = half range
        .TXDLY_CFG                      (16'h001F),                             // 
        .TXDLY_LCFG	                    ( 9'h030),                              // 
        .TXDLY_TAP_CFG                  (16'd0),                                // 
                 
        .TXSYNC_OVRD                    (TXSYNC_OVRD),                          //
        .TXSYNC_MULTILANE               (TXSYNC_MULTILANE),                     //
        .TXSYNC_SKIP_DA                 (1'b0),                                 //
                                                                                 
        //---------- RX Sync Attributes ----------------------------------------            
        .RXPH_CFG                       (24'd0),                                //
        .RXPH_MONITOR_SEL               ( 5'd0),                                //
        .RXPHDLY_CFG                    (24'h004020),                           // [19] : 1 = full range, 0 = half range
        .RXDLY_CFG                      (16'h001F),                             // 
        .RXDLY_LCFG	                    ( 9'h030),                              //
        .RXDLY_TAP_CFG                  (16'd0),                                //
        .RX_DDI_SEL	                    ( 6'd0),                                //
            
        .RXSYNC_OVRD                    (RXSYNC_OVRD),                          //    
        .RXSYNC_MULTILANE               (RXSYNC_MULTILANE),                     //
        .RXSYNC_SKIP_DA                 (1'b0),                                 //
                                                                                 
        //---------- Comma Alignment Attributes --------------------------------            
        .ALIGN_COMMA_DOUBLE             ("FALSE"),                              //   
        .ALIGN_COMMA_ENABLE             (10'b1111111111),                       // PCIe
        .ALIGN_COMMA_WORD               ( 1),                                   //
        .ALIGN_MCOMMA_DET               ("TRUE"),                               //
        .ALIGN_MCOMMA_VALUE             (10'b1010000011),                       //
        .ALIGN_PCOMMA_DET               ("TRUE"),                               //
        .ALIGN_PCOMMA_VALUE             (10'b0101111100),                       //
        .DEC_MCOMMA_DETECT              ("TRUE"),                               //
        .DEC_PCOMMA_DETECT              ("TRUE"),                               //
        .DEC_VALID_COMMA_ONLY           ("FALSE"),                              // PCIe
        .SHOW_REALIGN_COMMA             ("FALSE"),                              // PCIe
        .RXSLIDE_AUTO_WAIT              ( 7),                                   // 
        .RXSLIDE_MODE                   ("PMA"),                                // PCIe
                                                                                 
        //---------- Channel Bonding Attributes --------------------------------                
        .CHAN_BOND_KEEP_ALIGN           ("TRUE"),                               // PCIe
        .CHAN_BOND_MAX_SKEW             ( 7),                                   // 
        .CHAN_BOND_SEQ_LEN              ( 4),                                   // PCIe
        .CHAN_BOND_SEQ_1_ENABLE         ( 4'b1111),                             //
        .CHAN_BOND_SEQ_1_1              (10'b0001001010),                       // D10.2 (4A) - TS1 
        .CHAN_BOND_SEQ_1_2              (10'b0001001010),                       // D10.2 (4A) - TS1
        .CHAN_BOND_SEQ_1_3              (10'b0001001010),                       // D10.2 (4A) - TS1
        .CHAN_BOND_SEQ_1_4              (10'b0110111100),                       // K28.5 (BC) - COM
        .CHAN_BOND_SEQ_2_USE            ("TRUE"),                               // PCIe
        .CHAN_BOND_SEQ_2_ENABLE         (4'b1111),                              //
        .CHAN_BOND_SEQ_2_1              (10'b0001000101),                       // D5.2  (45) - TS2
        .CHAN_BOND_SEQ_2_2              (10'b0001000101),                       // D5.2  (45) - TS2
        .CHAN_BOND_SEQ_2_3              (10'b0001000101),                       // D5.2  (45) - TS2
        .CHAN_BOND_SEQ_2_4              (10'b0110111100),                       // K28.5 (BC) - COM
        .FTS_DESKEW_SEQ_ENABLE          ( 4'b1111),                             // 
        .FTS_LANE_DESKEW_EN             ("TRUE"),                               // PCIe
        .FTS_LANE_DESKEW_CFG            ( 4'b1111),                             // 
                                                                                 
        //---------- Clock Correction Attributes -------------------------------        
        .CBCC_DATA_SOURCE_SEL           ("DECODED"),                            //
        .CLK_CORRECT_USE                ("TRUE"),                               //
        .CLK_COR_KEEP_IDLE              ("TRUE"),                               // PCIe
        .CLK_COR_MAX_LAT                (CLK_COR_MAX_LAT),                      // 
        .CLK_COR_MIN_LAT                (CLK_COR_MIN_LAT),                      // 
        .CLK_COR_PRECEDENCE             ("TRUE"),                               //
        .CLK_COR_REPEAT_WAIT            ( 0),                                   // 
        .CLK_COR_SEQ_LEN                ( 1),                                   //
        .CLK_COR_SEQ_1_ENABLE           ( 4'b1111),                             //
        .CLK_COR_SEQ_1_1                (10'b0100011100),                       // K28.0 (1C) - SKP
        .CLK_COR_SEQ_1_2                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_1_3                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_1_4                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_2_ENABLE           ( 4'b0000),                             // Disabled
        .CLK_COR_SEQ_2_USE              ("FALSE"),                              //
        .CLK_COR_SEQ_2_1                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_2_2                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_2_3                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_2_4                (10'b0000000000),                       // Disabled
                                                                                 
        //---------- 8b10b Attributes ------------------------------------------                
        .RX_DISPERR_SEQ_MATCH           ("TRUE"),                               //
                                                                                 
        //---------- 64b/66b & 64b/67b Attributes ------------------------------                
        .GEARBOX_MODE                   ( 3'd0),                                //
        .TXGEARBOX_EN                   ("FALSE"),                              //
        .RXGEARBOX_EN                   ("FALSE"),                              //
                                                                                 
       //---------- PRBS & Loopback Attributes ---------------------------------      
        .LOOPBACK_CFG                    ( 1'd0),                               // Enable latch when bypassing TX buffer, equivalent to GTX PCS_RSVD_ATTR[0]      
        .RXPRBS_ERR_LOOPBACK             ( 1'd0),                               //
        .TX_LOOPBACK_DRIVE_HIZ           ("FALSE"),                             //
                                                                                 
       //---------- OOB & SATA Attributes --------------------------------------                
        .TXOOB_CFG                      ( 1'd1),                                // Filter stale TX data when exiting TX electrical idle, equivalent to GTX PCS_RSVD_ATTR[7]
      //.RXOOB_CFG                      ( 7'b0000110),                          //
        .RXOOB_CLK_CFG                  (RXOOB_CLK_CFG),                        // 
      //.SAS_MAX_COM                    (64),                                   //
      //.SAS_MIN_COM                    (36),                                   //
      //.SATA_BURST_SEQ_LEN             ( 4'b1111),                             //
      //.SATA_BURST_VAL                 ( 3'b100),                              //
      //.SATA_PLL_CFG                   ("VCO_3000MHZ"),                        //
      //.SATA_EIDLE_VAL                 ( 3'b100),                              //
      //.SATA_MAX_BURST                 ( 8),                                   //
      //.SATA_MAX_INIT                  (21),                                   //
      //.SATA_MAX_WAKE                  ( 7),                                   //
      //.SATA_MIN_BURST                 ( 4),                                   //
      //.SATA_MIN_INIT                  (12),                                   //
      //.SATA_MIN_WAKE                  ( 4),                                   //  
                                                                                 
        //---------- MISC ------------------------------------------------------               
        .DMONITOR_CFG                   (24'h000B01),                           // 
        .RX_DEBUG_CFG                   (14'h0000),                             // Optimized for IES
      //.TST_RSV                        (32'd0),                                //
      //.UCODEER_CLR                    ( 1'd0)                                 // 
      
        //---------- GTP -------------------------------------------------------
      //.ACJTAG_DEBUG_MODE              (1'd0),                                 //
      //.ACJTAG_MODE                    (1'd0),                                 //
      //.ACJTAG_RESET                   (1'd0),                                 //
      //.ADAPT_CFG0                     (20'd0),                                //
        .CFOK_CFG                       (43'h490_0004_0E80),                    // Changed from 42 to 43-bits, Optimized for IES
        .CFOK_CFG2                      ( 7'b010_0000),                         // Changed from 6 to 7-bits, Optimized for IES
        .CFOK_CFG3                      ( 7'b010_0000),                         // Changed from 6 to 7-bits, Optimized for IES
        .CFOK_CFG4                      ( 1'd0),                                // GTP new, Optimized for IES
        .CFOK_CFG5                      ( 2'd0),                                // GTP new, Optimized for IES
        .CFOK_CFG6                      ( 4'd0)                                 // GTP new, Optimized for IES
      
     )                                                                        
     gtpe2_channel_i                                                                     
     (                                                                           
                                                                                 
        //---------- Clock -----------------------------------------------------                
        .PLL0CLK                        (GT_QPLLCLK),                           //
        .PLL1CLK                        (1'd0),                                 //
        .PLL0REFCLK                     (GT_QPLLREFCLK),                        //
        .PLL1REFCLK                     (1'd0),                                 //
        .TXUSRCLK                       (GT_TXUSRCLK),                          //
        .RXUSRCLK                       (GT_RXUSRCLK),                          //
        .TXUSRCLK2                      (GT_TXUSRCLK2),                         //
        .RXUSRCLK2                      (GT_RXUSRCLK2),                         //
        .TXSYSCLKSEL                    (GT_TXSYSCLKSEL),                       // 
        .RXSYSCLKSEL                    (GT_RXSYSCLKSEL),                       // 
        .TXOUTCLKSEL                    (txoutclksel),                          //
        .RXOUTCLKSEL                    (rxoutclksel),                          //
        .CLKRSVD0                       (1'd0),                                 // 
        .CLKRSVD1                       (1'd0),                                 // 
                                                                                
        .TXOUTCLK                       (GT_TXOUTCLK),                          //
        .RXOUTCLK                       (GT_RXOUTCLK),                          //
        .TXOUTCLKFABRIC                 (),                                     //
        .RXOUTCLKFABRIC                 (),                                     //
        .TXOUTCLKPCS                    (),                                     //
        .RXOUTCLKPCS                    (),                                     //
        .RXCDRLOCK                      (GT_RXCDRLOCK),                         //
                                                                                
        //---------- Reset -----------------------------------------------------                
        .TXUSERRDY                      (GT_TXUSERRDY),                         //
        .RXUSERRDY                      (GT_RXUSERRDY),                         //
        .CFGRESET                       (1'd0),                                 //
        .GTRESETSEL                     (1'd0),                                 //
        .RESETOVRD                      (GT_RESETOVRD),                         //
        .GTTXRESET                      (GT_GTTXRESET),                         //
        .GTRXRESET                      (GT_GTRXRESET),                         //
                                                                               
        .TXRESETDONE                    (GT_TXRESETDONE),                       //
        .RXRESETDONE                    (GT_RXRESETDONE),                       //
                                                                                
        //---------- TX Data ---------------------------------------------------                
        .TXDATA                         (GT_TXDATA),                            //
        .TXCHARISK                      (GT_TXDATAK),                           //
                                                                                
        .GTPTXP                         (GT_TXP),                               // GTP
        .GTPTXN                         (GT_TXN),                               // GTP 
                                                                                
        //---------- RX Data ---------------------------------------------------                
        .GTPRXP                         (GT_RXP),                               // GTP 
        .GTPRXN                         (GT_RXN),                               // GTP
                                                                              
        .RXDATA                         (rxdata[31:0]),                         //
        .RXCHARISK                      (rxdatak[3:0]),                         //
                                                                                
        //---------- Command ---------------------------------------------------                
        .TXDETECTRX                     (GT_TXDETECTRX),                        //
        .TXPDELECIDLEMODE               ( 1'd0),                                //
        .RXELECIDLEMODE                 ( 2'd0),                                //
        .TXELECIDLE                     (GT_TXELECIDLE),                        //
        .TXCHARDISPMODE                 ({3'd0, GT_TXCOMPLIANCE}),              // Changed from 8 to 4-bits
        .TXCHARDISPVAL                  ( 4'd0),                                // Changed from 8 to 4-bits
        .TXPOLARITY                     ( 1'b0),                                // 
        .RXPOLARITY                     (GT_RXPOLARITY),                        //
        .TXPD                           (GT_TXPOWERDOWN),                       //
        .RXPD                           (GT_RXPOWERDOWN),                       //
        .TXRATE                         (GT_TXRATE),                            //
        .RXRATE                         (GT_RXRATE),                            //
        .TXRATEMODE                     (1'b0),                                 //
        .RXRATEMODE                     (1'b0),                                 //
                                                                                
        //---------- Electrical Command ----------------------------------------                
        .TXMARGIN                       (GT_TXMARGIN),                          //
        .TXSWING                        (GT_TXSWING),                           //
        .TXDEEMPH                       (GT_TXDEEMPH),                          //
        .TXINHIBIT                      (GT_TXINHIBIT),                         // 
        .TXBUFDIFFCTRL                  (3'b100),                               // 
        .TXDIFFCTRL                     (4'b1100),                              // Select 850mV 
        .TXPRECURSOR                    (GT_TXPRECURSOR),                       // 
        .TXPRECURSORINV                 (1'd0),                                 // 
        .TXMAINCURSOR                   (GT_TXMAINCURSOR),                      // 
        .TXPOSTCURSOR                   (GT_TXPOSTCURSOR),                      // 
        .TXPOSTCURSORINV                (1'd0),                                 // 
                                                                                
        //---------- Status ----------------------------------------------------                
        .RXVALID                        (GT_RXVALID),                           //
        .PHYSTATUS                      (GT_PHYSTATUS),                         //
        .RXELECIDLE                     (GT_RXELECIDLE),                        // 
        .RXSTATUS                       (GT_RXSTATUS),                          //
        .TXRATEDONE                     (GT_TXRATEDONE),                        //
        .RXRATEDONE                     (GT_RXRATEDONE),                        //
                                                                                
        //---------- DRP -------------------------------------------------------                
        .DRPCLK                         (GT_DRPCLK),                            //
        .DRPADDR                        (GT_DRPADDR),                           //
        .DRPEN                          (GT_DRPEN),                             //
        .DRPDI                          (GT_DRPDI),                             //
        .DRPWE                          (GT_DRPWE),                             //
                                                                                
        .DRPDO                          (GT_DRPDO),                             //
        .DRPRDY                         (GT_DRPRDY),                            //
                                                                                
        //---------- PMA -------------------------------------------------------                
        .TXPMARESET                     (GT_TXPMARESET),                        //
        .RXPMARESET                     (GT_RXPMARESET),                        //
        .RXLPMRESET                     ( 1'd0),		                            // GTP new  
        .RXLPMOSINTNTRLEN               ( 1'd0),                                // GTP new   
        .RXLPMHFHOLD                    ( 1'd0),                                // 
        .RXLPMHFOVRDEN                  ( 1'd0),                                // 
        .RXLPMLFHOLD                    ( 1'd0),                                // 
        .RXLPMLFOVRDEN                  ( 1'd0),                                // 
        .PMARSVDIN0                     ( 1'd0),                                // GTP new 
        .PMARSVDIN1                     ( 1'd0),                                // GTP new 
        .PMARSVDIN2                     ( 1'd0),                                // GTP new  
        .PMARSVDIN3                     ( 1'd0),                                // GTP new 
        .PMARSVDIN4                     ( 1'd0),                                // GTP new 
        .GTRSVD                         (16'd0),                                // 
              
        .PMARSVDOUT0                    (),                                     // GTP new
        .PMARSVDOUT1                    (),                                     // GTP new                                                                       
        .DMONITOROUT                    (dmonitorout),                          // GTP 15-bits 
                                                                              
        //---------- PCS -------------------------------------------------------                
        .TXPCSRESET                     (GT_TXPCSRESET),                        //
        .RXPCSRESET                     (GT_RXPCSRESET),                        //
        .PCSRSVDIN                      (16'd0),                                // [0]: 1 = TXRATE async, [1]: 1 = RXRATE async    
        
        .PCSRSVDOUT                     (),                                     // 
        
        //---------- CDR -------------------------------------------------------                
        .RXCDRRESET                     (GT_RXCDRRESET),                        //
        .RXCDRRESETRSV                  (1'd0),                                 // 
        .RXCDRFREQRESET                 (GT_RXCDRFREQRESET),                    // 
        .RXCDRHOLD                      (1'b0),                                 //
        .RXCDROVRDEN                    (1'd0),                                 // 
         
        //---------- PI --------------------------------------------------------
        .TXPIPPMEN                      (1'd0),                                 //
        .TXPIPPMOVRDEN                  (1'd0),                                 //
        .TXPIPPMPD                      (1'd0),                                 //
        .TXPIPPMSEL                     (1'd0),                                 //
        .TXPIPPMSTEPSIZE                (5'd0),                                 // 
        .TXPISOPD                       (1'd0),                                 // GTP new 
         
        //---------- DFE -------------------------------------------------------                
        .RXDFEXYDEN                     (1'd0),                                 //  
        
        //---------- OS --------------------------------------------------------         
        .RXOSHOLD                       (1'd0),                                 // Optimized for IES
        .RXOSOVRDEN                     (1'd0),                                 // Optimized for IES                          
        .RXOSINTEN                      (1'd1),                                 // Optimized for IES           
        .RXOSINTHOLD                    (1'd0),                                 // Optimized for IES                                                                                                      
        .RXOSINTNTRLEN                  (1'd0),                                 // Optimized for IES           
        .RXOSINTOVRDEN                  (1'd0),                                 // Optimized for IES            
        .RXOSINTPD                      (1'd0),                                 // GTP new, Optimized for IES             
        .RXOSINTSTROBE                  (1'd0),                                 // Optimized for IES           
        .RXOSINTTESTOVRDEN              (1'd0),                                 // Optimized for IES           
        .RXOSINTCFG                     (4'b0010),                              // Optimized for IES                     
        .RXOSINTID0                     (4'd0),                                 // Optimized for IES
                                  
        .RXOSINTDONE                    (),                                     //
        .RXOSINTSTARTED                 (),                                     //
        .RXOSINTSTROBEDONE              (),                                     //
        .RXOSINTSTROBESTARTED           (),                                     //
                                                                                
        //---------- Eye Scan --------------------------------------------------                
        .EYESCANRESET                   (GT_EYESCANRESET),                      // 
        .EYESCANMODE                    (1'd0),                                 // 
        .EYESCANTRIGGER                 (1'b0),                                 // 
                                                                                
        .EYESCANDATAERROR               (GT_EYESCANDATAERROR),                  //
                                                                                
        //---------- TX Buffer -------------------------------------------------                
        .TXBUFSTATUS                    (),                                     //
                                                                                
        //---------- RX Buffer -------------------------------------------------                
        .RXBUFRESET                     (GT_RXBUFRESET),                        // 
        
        .RXBUFSTATUS                    (GT_RXBUFSTATUS),                       //
                                                                                
        //---------- TX Sync ---------------------------------------------------                
        .TXPHDLYRESET                   (GT_TXPHDLYRESET),                      //
        .TXPHDLYTSTCLK                  (1'd0),                                 //
        .TXPHALIGN                      (GT_TXPHALIGN),                         // 
        .TXPHALIGNEN                    (GT_TXPHALIGNEN),                       //  
        .TXPHDLYPD                      (1'd0),                                 // 
        .TXPHINIT                       (GT_TXPHINIT),                          //  
        .TXPHOVRDEN                     (1'd0),                                 //
        .TXDLYBYPASS                    (GT_TXDLYBYPASS),                       //  
        .TXDLYSRESET                    (GT_TXDLYSRESET),                       // 
        .TXDLYEN                        (GT_TXDLYEN),                           //  
        .TXDLYOVRDEN                    (1'd0),                                 //
        .TXDLYHOLD                      (1'd0),                                 // 
        .TXDLYUPDOWN                    (1'd0),                                 //
                                                                                
        .TXPHALIGNDONE                  (GT_TXPHALIGNDONE),                     // 
        .TXPHINITDONE                   (GT_TXPHINITDONE),                      // 
        .TXDLYSRESETDONE                (GT_TXDLYSRESETDONE),                   //
        
        .TXSYNCMODE                     (GT_TXSYNCMODE),                        //
        .TXSYNCIN                       (GT_TXSYNCIN),                          //
        .TXSYNCALLIN                    (GT_TXSYNCALLIN),                       //
        
        .TXSYNCDONE                     (GT_TXSYNCDONE),                        //
        .TXSYNCOUT                      (GT_TXSYNCOUT),                         //
        
        //---------- RX Sync ---------------------------------------------------                  
        .RXPHDLYRESET                   (1'd0),                                 //
        .RXPHALIGN                      (GT_RXPHALIGN),                         //
        .RXPHALIGNEN                    (GT_RXPHALIGNEN),                       //
        .RXPHDLYPD                      (1'd0),                                 // 
        .RXPHOVRDEN                     (1'd0),                                 // 
        .RXDLYBYPASS                    (GT_RXDLYBYPASS),                       //  
        .RXDLYSRESET                    (GT_RXDLYSRESET),                       // 
        .RXDLYEN                        (GT_RXDLYEN),                           // 
        .RXDLYOVRDEN                    (1'd0),                                 //
        .RXDDIEN                        (GT_RXDDIEN),                           //
                                                                                
        .RXPHALIGNDONE                  (GT_RXPHALIGNDONE),                     //  
        .RXPHMONITOR                    (),                                     //
        .RXPHSLIPMONITOR                (),                                     // 
        .RXDLYSRESETDONE                (GT_RXDLYSRESETDONE),                   // 

        .RXSYNCMODE                     (GT_RXSYNCMODE),                        //
        .RXSYNCIN                       (GT_RXSYNCIN),                          //
        .RXSYNCALLIN                    (GT_RXSYNCALLIN),                       //
        
        .RXSYNCDONE                     (GT_RXSYNCDONE),                        //
        .RXSYNCOUT                      (GT_RXSYNCOUT),                         //
                
        //---------- Comma Alignment -------------------------------------------                 
        .RXCOMMADETEN                   (1'd1),                                 //
        .RXMCOMMAALIGNEN                (1'd1),                                 // No Gen3 support in GTP
        .RXPCOMMAALIGNEN                (1'd1),                                 // No Gen3 support in GTP
        .RXSLIDE                        (GT_RXSLIDE),                           //
        .RXCOMMADET                     (GT_RXCOMMADET),                        //
        .RXCHARISCOMMA                  (rxchariscomma[3:0]),                   // 
        .RXBYTEISALIGNED                (GT_RXBYTEISALIGNED),                   //
        .RXBYTEREALIGN                  (GT_RXBYTEREALIGN),                     //
                                                                                
        //---------- Channel Bonding -------------------------------------------                
        .RXCHBONDEN                     (GT_RXCHBONDEN),                        //
        .RXCHBONDI                      (GT_RXCHBONDI[3:0]),                    //
        .RXCHBONDLEVEL                  (GT_RXCHBONDLEVEL),                     //
        .RXCHBONDMASTER                 (GT_RXCHBONDMASTER),                    //
        .RXCHBONDSLAVE                  (GT_RXCHBONDSLAVE),                     //
                                                                                
        .RXCHANBONDSEQ                  (),                                     // 
        .RXCHANISALIGNED                (GT_RXCHANISALIGNED),                   //
        .RXCHANREALIGN                  (),                                     //
        .RXCHBONDO                      (GT_RXCHBONDO[3:0]),                    //
                                                                                
        //---------- Clock Correction  -----------------------------------------                
        .RXCLKCORCNT                    (),                                     //
                                                                                
        //---------- 8b10b -----------------------------------------------------                
        .TX8B10BBYPASS                  (4'd0),                                 //
        .TX8B10BEN                      (1'b1),                                 // No Gen3 support in GTP
        .RX8B10BEN                      (1'b1),                                 // No Gen3 support in GTP
                                                                                
        .RXDISPERR                      (GT_RXDISPERR[3:0]),                         //
        .RXNOTINTABLE                   (GT_RXNOTINTABLE[3:0]),                      //
                                                                                
        //---------- 64b/66b & 64b/67b -----------------------------------------                  
        .TXHEADER                       (3'd0),                                 //
        .TXSEQUENCE                     (7'd0),                                 //
        .TXSTARTSEQ                     (1'd0),                                 //                                                              
        .RXGEARBOXSLIP                  (1'd0),                                 //
                                                                                
        .TXGEARBOXREADY                 (),                                     // 
        .RXDATAVALID                    (),                                     //
        .RXHEADER                       (),                                     //
        .RXHEADERVALID                  (),                                     //
        .RXSTARTOFSEQ                   (),                                     //
                                                                                
        //---------- PRBS/Loopback ---------------------------------------------                
        .TXPRBSSEL                      (GT_TXPRBSSEL),                         //
        .RXPRBSSEL                      (GT_RXPRBSSEL),                         //
        .TXPRBSFORCEERR                 (GT_TXPRBSFORCEERR),                    //
        .RXPRBSCNTRESET                 (GT_RXPRBSCNTRESET),                    // 
        .LOOPBACK                       (GT_LOOPBACK),                          // 
                                                                                
        .RXPRBSERR                      (GT_RXPRBSERR),                         //
                                                                                
        //---------- OOB -------------------------------------------------------      
        .SIGVALIDCLK                    (GT_OOBCLK),                            // Optimized for debug           
        .TXCOMINIT                      (1'd0),                                 //
        .TXCOMSAS                       (1'd0),                                 //
        .TXCOMWAKE                      (1'd0),                                 //
        .RXOOBRESET                     (1'd0),                                 // 
                                                                                
        .TXCOMFINISH                    (),                                     //
        .RXCOMINITDET                   (),                                     //
        .RXCOMSASDET                    (),                                     //
        .RXCOMWAKEDET                   (),                                     //
                                                                                
        //---------- MISC ------------------------------------------------------                
        .SETERRSTATUS                   ( 1'd0),                                // 
        .TXDIFFPD                       ( 1'd0),                                // 
        .TSTIN                          (20'hFFFFF),                            //  
                 
        //---------- GTP -------------------------------------------------------                                                                        
        .RXADAPTSELTEST                 (14'd0),                                //
        .DMONFIFORESET                  ( 1'd0),                                //
        .DMONITORCLK                    (dmonitorclk),                          //  
        .RXOSCALRESET                   ( 1'd0),                                //                     
                             
        .RXPMARESETDONE                 (GT_RXPMARESETDONE),                    // GTP
        .TXPMARESETDONE                 ()                                      //
        
     );         
     
     assign GT_CPLLLOCK = 1'b0;

    end

else if (PCIE_GT_DEVICE == "GTH") 

    begin : gth_channel
    
    //---------- GTH Channel Module --------------------------------------------
    GTHE2_CHANNEL #
    (
               
        //---------- Simulation Attributes -------------------------------------               
        .SIM_CPLLREFCLK_SEL             (3'b001),                               //
        .SIM_RESET_SPEEDUP              (PCIE_SIM_SPEEDUP),                     //
        .SIM_RECEIVER_DETECT_PASS       ("TRUE"),                               //    
        .SIM_TX_EIDLE_DRIVE_LEVEL       (PCIE_SIM_TX_EIDLE_DRIVE_LEVEL),        // 
        .SIM_VERSION                    ("2.0"),                                //
                                                                               
        //---------- Clock Attributes ------------------------------------------                                      
        .CPLL_REFCLK_DIV                (CPLL_REFCLK_DIV),                      //
        .CPLL_FBDIV_45                  (CPLL_FBDIV_45),                        //
        .CPLL_FBDIV                     (CPLL_FBDIV),                           //
        .TXOUT_DIV                      (OUT_DIV),                              //
        .RXOUT_DIV                      (OUT_DIV),                              // 
        .TX_CLK25_DIV                   (CLK25_DIV),                            //
        .RX_CLK25_DIV                   (CLK25_DIV),                            //
        .TX_CLKMUX_PD                   ( 1'b1),                                // GTH
        .RX_CLKMUX_PD                   ( 1'b1),                                // GTH
        .TX_XCLK_SEL                    (TX_XCLK_SEL),                          // TXOUT = use TX buffer, TXUSR = bypass TX buffer
        .RX_XCLK_SEL                    ("RXREC"),                              // RXREC = use RX buffer, RXUSR = bypass RX buffer
        .OUTREFCLK_SEL_INV              ( 2'b11),                               //
        .CPLL_CFG                       (29'h00A407CC),                         // Changed from 24 to 29-bits, Optimized for PCIe PLL BW 
        .CPLL_INIT_CFG                  (24'h00001E),                           // Optimized for IES
        .CPLL_LOCK_CFG                  (16'h01E8),                             // Optimized for IES
      //.USE_PCS_CLK_PHASE_SEL          ( 1'd0)                                 // GTH new
                                                                               
        //---------- Reset Attributes ------------------------------------------                
        .TXPCSRESET_TIME                (5'b00001),                             //
        .RXPCSRESET_TIME                (5'b00001),                             //
        .TXPMARESET_TIME                (5'b00011),                             //
        .RXPMARESET_TIME                (5'b00011),                             // Optimized for sim and for DRP
      //.RXISCANRESET_TIME              (5'b00001),                             //
      //.RESET_POWERSAVE_DISABLE        ( 1'd0),                                // GTH new
                                                                               
        //---------- TX Data Attributes ----------------------------------------                
        .TX_DATA_WIDTH                  (20),                                   // 2-byte external datawidth for Gen1/Gen2
        .TX_INT_DATAWIDTH               ( 0),                                   // 2-byte internal datawidth for Gen1/Gen2
                                                                               
        //---------- RX Data Attributes ----------------------------------------                
        .RX_DATA_WIDTH                  (20),                                   // 2-byte external datawidth for Gen1/Gen2
        .RX_INT_DATAWIDTH               ( 0),                                   // 2-byte internal datawidth for Gen1/Gen2
                                                                               
        //---------- Command Attributes ----------------------------------------                
        .TX_RXDETECT_CFG                (TX_RXDETECT_CFG),                      //
        .TX_RXDETECT_PRECHARGE_TIME     (17'h00001),                            // GTH new, Optimized for sim
        .TX_RXDETECT_REF                ( 3'b011),                              // 
        .RX_CM_SEL                      ( 2'b11),                                // 0 = AVTT, 1 = GND, 2 = Float, 3 = Programmable, optimized for silicon
        .RX_CM_TRIM                     ( 4'b1010),                             // Select 800mV, Changed from 3 to 4-bits, optimized for silicon
        .TX_EIDLE_ASSERT_DELAY          (PCIE_TX_EIDLE_ASSERT_DELAY),           // Optimized for sim (3'd4)
        .TX_EIDLE_DEASSERT_DELAY        ( 3'b100),                              // Optimized for sim
      //.PD_TRANS_TIME_FROM_P2          (12'h03C),                              //
        .PD_TRANS_TIME_NONE_P2          ( 8'h09),                               // Optimized for sim
      //.PD_TRANS_TIME_TO_P2            ( 8'h64),                               //
      //.TRANS_TIME_RATE                ( 8'h0E),                               //
                                                                               
        //---------- Electrical Command Attributes -----------------------------                
        .TX_DRIVE_MODE                  ("PIPE"),                               // Gen1/Gen2 = PIPE, Gen3 = PIPEGEN3
        .TX_DEEMPH0                     ( 6'b010100),                           //  6.0 dB, optimized for compliance, changed from 5 to 6-bits
        .TX_DEEMPH1                     ( 6'b001011),                           //  3.5 dB, optimized for compliance, changed from 5 to 6-bits
        .TX_MARGIN_FULL_0               ( 7'b1001111),                          // 1000 mV
        .TX_MARGIN_FULL_1               ( 7'b1001110),                          //  950 mV
        .TX_MARGIN_FULL_2               ( 7'b1001101),                          //  900 mV
        .TX_MARGIN_FULL_3               ( 7'b1001100),                          //  850 mV
        .TX_MARGIN_FULL_4               ( 7'b1000011),                          //  400 mV
        .TX_MARGIN_LOW_0                ( 7'b1000101),                          //  500 mV
        .TX_MARGIN_LOW_1                ( 7'b1000110),                          //  450 mV
        .TX_MARGIN_LOW_2                ( 7'b1000011),                          //  400 mV
        .TX_MARGIN_LOW_3                ( 7'b1000010),                          //  350 mV
        .TX_MARGIN_LOW_4                ( 7'b1000000),                          //  250 mV
        .TX_MAINCURSOR_SEL              ( 1'b0),                                //
        .TX_QPI_STATUS_EN               ( 1'b0),                                //
                                                                               
        //---------- Status Attributes -----------------------------------------                
        .RX_SIG_VALID_DLY               (4),                                    // Optimized for sim
                                                                               
        //---------- DRP Attributes --------------------------------------------                
                     
        //---------- PCS Attributes --------------------------------------------                
        .PCS_PCIE_EN                    ("TRUE"),                               // PCIe 
        .PCS_RSVD_ATTR                  (48'h0000_0000_0140),                   // [8] : 1 = OOB power-up, [6] : 1 = DMON enable, Optimized for IES       
                                                                               
        //---------- PMA Attributes --------------------------------------------                
        .PMA_RSV                        (32'h00000080),                         // Optimized for IES 
        .PMA_RSV2                       (32'h1C00000A),                         // Changed from 16 to 32-bits, Optimized for IES
      //.PMA_RSV3                       ( 2'h0),                                // 
        .PMA_RSV4                       (15'h0008),                             // GTH new, Optimized for IES
      //.PMA_RSV5                       ( 4'h00),                               // GTH new
        .RX_BIAS_CFG                    (24'h0C0010),                           // Changed from 12 to 24-bits, Optimized for IES
        .TERM_RCAL_CFG                  (15'b100001000010000),                  // Changed from  5 to 15-bits, Optimized for IES
        .TERM_RCAL_OVRD                 ( 3'b000),                              // Changed from  1 to  3-bits, Optimized for IES
                  
        //---------- TX PI -----------------------------------------------------             
      //.TXPI_CFG0                      ( 2'd0),                                // GTH new
      //.TXPI_CFG1                      ( 2'd0),                                // GTH new
      //.TXPI_CFG2                      ( 2'd0),                                // GTH new
      //.TXPI_CFG3                      ( 1'd0),                                // GTH new
      //.TXPI_CFG4                      ( 1'd0),                                // GTH new
      //.TXPI_CFG5                      ( 3'b100),                              // GTH new 
      //.TXPI_GREY_SEL                  ( 1'd0),                                // GTH new
      //.TXPI_INVSTROBE_SEL             ( 1'd0),                                // GTH new
      //.TXPI_PPMCLK_SEL                ("TXUSRCLK2"),                          // GTH new
      //.TXPI_PPM_CFG                   ( 8'd0),                                // GTH new
      //.TXPI_SYNFREQ_PPM               ( 3'd0),                                // GTH new
              
        //---------- RX PI -----------------------------------------------------  
        .RXPI_CFG0                      (2'b00),                                // GTH new
        .RXPI_CFG1                      (2'b11),                                // GTH new
        .RXPI_CFG2                      (2'b11),                                // GTH new
        .RXPI_CFG3                      (2'b11),                                // GTH new
        .RXPI_CFG4                      (1'b0),                                 // GTH new
        .RXPI_CFG5                      (1'b0),                                 // GTH new
        .RXPI_CFG6                      (3'b100),                               // GTH new

        //---------- CDR Attributes --------------------------------------------
        .RXCDR_CFG                      (RXCDR_CFG_GTH),                        //
      //.RXCDR_CFG                      (83'h0_0011_07FE_4060_0104_1010),       // A. Changed from 72 to 83-bits, optimized for IES div1 (Gen2), +/-000ppm, default, converted from GTX GES VnC,(2 Gen1)
      //.RXCDR_CFG                      (83'h0_0011_07FE_4060_2104_1010),       // B. Changed from 72 to 83-bits, optimized for IES div1 (Gen2), +/-300ppm, default, converted from GTX GES VnC,(2 Gen1)
      //.RXCDR_CFG                      (83'h0_0011_07FE_2060_0104_1010),       // C. Changed from 72 to 83-bits, optimized for IES div1 (Gen2), +/-000ppm, converted from GTX GES recommended, (3 Gen1)
      //.RXCDR_CFG                      (83'h0_0011_07FE_2060_2104_1010),       // D. Changed from 72 to 83-bits, optimized for IES div1 (Gen2), +/-300ppm, converted from GTX GES recommended, (3 Gen1)
      //.RXCDR_CFG                      (83'h0_0001_07FE_1060_0110_1010),       // E. Changed from 72 to 83-bits, optimized for IES div2 (Gen1), +/-000ppm, default, (3 Gen2)
      //.RXCDR_CFG                      (83'h0_0001_07FE_1060_2110_1010),       // F. Changed from 72 to 83-bits, optimized for IES div2 (Gen1), +/-300ppm, default, (3 Gen2)
      //.RXCDR_CFG                      (83'h0_0011_07FE_1060_0110_1010),       // G. Changed from 72 to 83-bits, optimized for IES div2 (Gen1), +/-000ppm, converted from GTX GES recommended, (3 Gen2)
      //.RXCDR_CFG                      (83'h0_0011_07FE_1060_2110_1010),       // H. Changed from 72 to 83-bits, optimized for IES div2 (Gen1), +/-300ppm, converted from GTX GES recommended, (2 Gen1)
        .RXCDR_LOCK_CFG                 ( 6'b010101),                           // [5:3] Window Refresh, [2:1] Window Size, [0] Enable Detection (sensitive lock = 6'b111001)
        .RXCDR_HOLD_DURING_EIDLE        ( 1'd1),                                // Hold  RX CDR           on electrical idle for Gen1/Gen2
        .RXCDR_FR_RESET_ON_EIDLE        ( 1'd0),                                // Reset RX CDR frequency on electrical idle for Gen3
        .RXCDR_PH_RESET_ON_EIDLE        ( 1'd0),                                // Reset RX CDR phase     on electrical idle for Gen3
      //.RXCDRFREQRESET_TIME            ( 5'b00001),                            // optimized for IES
      //.RXCDRPHRESET_TIME              ( 5'b00001),                            // optimized for IES
                         
        //---------- LPM Attributes --------------------------------------------               
        .RXLPM_HF_CFG                   (14'h0200),                             // Optimized for IES   
        .RXLPM_LF_CFG                   (18'h09000),                            // Changed from 14 to 18-bits, Optimized for IES       
                                                                                
        //---------- DFE Attributes --------------------------------------------                
        .RXDFELPMRESET_TIME	            ( 7'h0F),                               // Optimized for IES     
        .RX_DFE_AGC_CFG0                ( 2'h0),                                // GTH new, optimized for IES    
        .RX_DFE_AGC_CFG1                ( 3'h4),                                // GTH new, optimized for IES, DFE
        .RX_DFE_AGC_CFG2                ( 4'h0),                                // GTH new, optimized for IES 
        .RX_DFE_AGC_OVRDEN              ( 1'h1),                                // GTH new, optimized for IES
        .RX_DFE_GAIN_CFG                (23'h0020C0),                           // Optimized for IES
        .RX_DFE_H2_CFG                  (12'h000),                              // Optimized for IES 
        .RX_DFE_H3_CFG                  (12'h040),                              // Optimized for IES
        .RX_DFE_H4_CFG                  (11'h0E0),                              // Optimized for IES
        .RX_DFE_H5_CFG                  (11'h0E0),                              // Optimized for IES
        .RX_DFE_H6_CFG                  (11'h020),                              // GTH new, optimized for IES
        .RX_DFE_H7_CFG                  (11'h020),                              // GTH new, optimized for IES
        .RX_DFE_KL_CFG                  (33'h000000310),                        // Changed from 13 to 33-bits, optimized for IES
        .RX_DFE_KL_LPM_KH_CFG0          ( 2'h2),                                // GTH new, optimized for IES, DFE
        .RX_DFE_KL_LPM_KH_CFG1          ( 3'h2),                                // GTH new, optimized for IES
        .RX_DFE_KL_LPM_KH_CFG2          ( 4'h2),                                // GTH new, optimized for IES
        .RX_DFE_KL_LPM_KH_OVRDEN        ( 1'h1),                                // GTH new, optimized for IES
        .RX_DFE_KL_LPM_KL_CFG0          ( 2'h2),                                // GTH new, optimized for IES, DFE
        .RX_DFE_KL_LPM_KL_CFG1          ( 3'h2),                                // GTH new, optimized for IES
        .RX_DFE_KL_LPM_KL_CFG2          ( 4'h2),                                // GTH new, optimized for IES
        .RX_DFE_KL_LPM_KL_OVRDEN        ( 1'b1),                                // GTH new, optimized for IES
        .RX_DFE_LPM_CFG                 (16'h0080),                             // Optimized for IES  
        .RX_DFELPM_CFG0                 ( 4'h6),                                // GTH new, optimized for IES
        .RX_DFELPM_CFG1                 ( 4'h0),                                // GTH new, optimized for IES
        .RX_DFELPM_KLKH_AGC_STUP_EN     ( 1'h1),                                // GTH new, optimized for IES
        .RX_DFE_LPM_HOLD_DURING_EIDLE   ( 1'h1),                                // PCIe use mode 
        .RX_DFE_ST_CFG                  (54'h00_C100_000C_003F),                // GTH new, optimized for IES
        .RX_DFE_UT_CFG                  (17'h03800),                            // Optimized for IES
        .RX_DFE_VP_CFG                  (17'h03AA3),                            // Optimized for IES
     
        //---------- OS Attributes ---------------------------------------------
        .RX_OS_CFG                      (13'h0080),                             // Optimized for IES
        .A_RXOSCALRESET                 ( 1'd0),                                // GTH new, optimized for IES
        .RXOSCALRESET_TIME              ( 5'b00011),                            // GTH new, optimized for IES
        .RXOSCALRESET_TIMEOUT           ( 5'b00000),                            // GTH new, disable timeout, optimized for IES
      
        //---------- Eye Scan Attributes ---------------------------------------
      //.ES_CLK_PHASE_SEL               ( 1'd0),                                // GTH new
      //.ES_CONTROL                     ( 6'd0),                                //
      //.ES_ERRDET_EN                   ("FALSE"),                              //
        .ES_EYE_SCAN_EN                 ("FALSE"),                               // Optimized for IES
        .ES_HORZ_OFFSET                 (12'h000),                              // Optimized for IES
      //.ES_PMA_CFG                     (10'd0),                                //
      //.ES_PRESCALE                    ( 5'd0),                                //
      //.ES_QUAL_MASK                   (80'd0),                                //
      //.ES_QUALIFIER                   (80'd0),                                //
      //.ES_SDATA_MASK                  (80'd0),                                //
      //.ES_VERT_OFFSET                 ( 9'd0),                                //
                                                                              
        //---------- TX Buffer Attributes --------------------------------------
        .TXBUF_EN                       (PCIE_TXBUF_EN),                        // 
        .TXBUF_RESET_ON_RATE_CHANGE	    ("TRUE"),                               //
                                                                              
        //---------- RX Buffer Attributes --------------------------------------
        .RXBUF_EN                       ("TRUE"),                               //
      //.RX_BUFFER_CFG                  ( 6'd0),                                //
        .RX_DEFER_RESET_BUF_EN          ("TRUE"),                               // 
        .RXBUF_ADDR_MODE                ("FULL"),                               //
        .RXBUF_EIDLE_HI_CNT	            ( 4'd4),                                // Optimized for sim
        .RXBUF_EIDLE_LO_CNT	            ( 4'd0),                                // Optimized for sim
        .RXBUF_RESET_ON_CB_CHANGE       ("TRUE"),                               //
        .RXBUF_RESET_ON_COMMAALIGN      ("FALSE"),                              //
        .RXBUF_RESET_ON_EIDLE           ("TRUE"),                               // PCIe
        .RXBUF_RESET_ON_RATE_CHANGE	    ("TRUE"),                               //
        .RXBUF_THRESH_OVRD              ("FALSE"),                              //
        .RXBUF_THRESH_OVFLW	            (61),                                   //
        .RXBUF_THRESH_UNDFLW            ( 4),                                   //
      //.RXBUFRESET_TIME                ( 5'b00001),                            //
                                                                              
        //---------- TX Sync Attributes ----------------------------------------
      //.TXPH_CFG                       (16'h0780),                             // 
        .TXPH_MONITOR_SEL               ( 5'd0),                                // 
      //.TXPHDLY_CFG                    (24'h084020),                           // [19] : 1 = full range, 0 = half range
      //.TXDLY_CFG                      (16'h001F),                             // 
      //.TXDLY_LCFG	                    ( 9'h030),                              // 
      //.TXDLY_TAP_CFG                  (16'd0),                                // 
        
        .TXSYNC_OVRD                    (TXSYNC_OVRD),                          // GTH new
        .TXSYNC_MULTILANE               (TXSYNC_MULTILANE),                     // GTH new     
        .TXSYNC_SKIP_DA                 (1'b0),                                 // GTH new   
                                                                              
        //---------- RX Sync Attributes ----------------------------------------
      //.RXPH_CFG                       (24'd0),                                //
        .RXPH_MONITOR_SEL               ( 5'd0),                                //
        .RXPHDLY_CFG                    (24'h004020),                           // [19] : 1 = full range, 0 = half range
      //.RXDLY_CFG                      (16'h001F),                             // 
      //.RXDLY_LCFG	                    ( 9'h030),                              // 
      //.RXDLY_TAP_CFG                  (16'd0),                                //
        .RX_DDI_SEL	                    ( 6'd0),                                //
                
        .RXSYNC_OVRD                    (RXSYNC_OVRD),                          // GTH new        
        .RXSYNC_MULTILANE               (RXSYNC_MULTILANE),                     // GTH new    
        .RXSYNC_SKIP_DA                 (1'b0),                                 // GTH new      
                                                                              
        //---------- Comma Alignment Attributes --------------------------------
        .ALIGN_COMMA_DOUBLE             ("FALSE"),                              //   
        .ALIGN_COMMA_ENABLE             (10'b1111111111),                       // PCIe
        .ALIGN_COMMA_WORD               ( 1),                                   //
        .ALIGN_MCOMMA_DET               ("TRUE"),                               //
        .ALIGN_MCOMMA_VALUE             (10'b1010000011),                       //
        .ALIGN_PCOMMA_DET               ("TRUE"),                               //
        .ALIGN_PCOMMA_VALUE             (10'b0101111100),                       //
        .DEC_MCOMMA_DETECT              ("TRUE"),                               //
        .DEC_PCOMMA_DETECT              ("TRUE"),                               //
        .DEC_VALID_COMMA_ONLY           ("FALSE"),                              // PCIe
        .SHOW_REALIGN_COMMA             ("FALSE"),                              // PCIe
        .RXSLIDE_AUTO_WAIT              ( 7),                                   // 
        .RXSLIDE_MODE                   ("PMA"),                                // PCIe
                                                                              
        //---------- Channel Bonding Attributes --------------------------------
        .CHAN_BOND_KEEP_ALIGN           ("TRUE"),                               // PCIe
        .CHAN_BOND_MAX_SKEW             ( 7),                                   // 
        .CHAN_BOND_SEQ_LEN              ( 4),                                   // PCIe
        .CHAN_BOND_SEQ_1_ENABLE         ( 4'b1111),                             //
        .CHAN_BOND_SEQ_1_1              (10'b0001001010),                       // D10.2 (4A) - TS1 
        .CHAN_BOND_SEQ_1_2              (10'b0001001010),                       // D10.2 (4A) - TS1
        .CHAN_BOND_SEQ_1_3              (10'b0001001010),                       // D10.2 (4A) - TS1
        .CHAN_BOND_SEQ_1_4              (10'b0110111100),                       // K28.5 (BC) - COM
        .CHAN_BOND_SEQ_2_USE            ("TRUE"),                               // PCIe
        .CHAN_BOND_SEQ_2_ENABLE         ( 4'b1111),                             //
        .CHAN_BOND_SEQ_2_1              (10'b0001000101),                       // D5.2  (45) - TS2
        .CHAN_BOND_SEQ_2_2              (10'b0001000101),                       // D5.2  (45) - TS2
        .CHAN_BOND_SEQ_2_3              (10'b0001000101),                       // D5.2  (45) - TS2
        .CHAN_BOND_SEQ_2_4              (10'b0110111100),                       // K28.5 (BC) - COM
        .FTS_DESKEW_SEQ_ENABLE          ( 4'b1111),                             // 
        .FTS_LANE_DESKEW_EN	            ("TRUE"),                               // PCIe
        .FTS_LANE_DESKEW_CFG            ( 4'b1111),                             // 
                                                                              
        //---------- Clock Correction Attributes -------------------------------
        .CBCC_DATA_SOURCE_SEL           ("DECODED"),                            //
        .CLK_CORRECT_USE                ("TRUE"),                               //
        .CLK_COR_KEEP_IDLE              ("TRUE"),                               // PCIe
        .CLK_COR_MAX_LAT                (CLK_COR_MAX_LAT),                      // 
        .CLK_COR_MIN_LAT                (CLK_COR_MIN_LAT),                      // 
        .CLK_COR_PRECEDENCE             ("TRUE"),                               //
        .CLK_COR_REPEAT_WAIT            ( 0),                                   // 
        .CLK_COR_SEQ_LEN                ( 1),                                   //
        .CLK_COR_SEQ_1_ENABLE           ( 4'b1111),                             //
        .CLK_COR_SEQ_1_1                (10'b0100011100),                       // K28.0 (1C) - SKP
        .CLK_COR_SEQ_1_2                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_1_3                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_1_4                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_2_ENABLE           ( 4'b0000),                             // Disabled
        .CLK_COR_SEQ_2_USE              ("FALSE"),                              //
        .CLK_COR_SEQ_2_1                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_2_2                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_2_3                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_2_4                (10'b0000000000),                       // Disabled
                                                                              
        //---------- 8b10b Attributes ------------------------------------------
        .RX_DISPERR_SEQ_MATCH           ("TRUE"),                               //
                                                                              
        //---------- 64b/66b & 64b/67b Attributes ------------------------------
        .GEARBOX_MODE                   (3'd0),                                 //
        .TXGEARBOX_EN                   ("FALSE"),                              //
        .RXGEARBOX_EN                   ("FALSE"),                              //
                                                                              
        //---------- PRBS & Loopback Attributes --------------------------------
        .LOOPBACK_CFG                   ( 1'd1),                                // GTH new, enable latch when bypassing TX buffer, equivalent to GTX PCS_RSVD_ATTR[0]
        .RXPRBS_ERR_LOOPBACK            ( 1'd0),                                //
        .TX_LOOPBACK_DRIVE_HIZ          ("FALSE"),                              //
                                                                              
        //---------- OOB & SATA Attributes -------------------------------------
        .TXOOB_CFG                      ( 1'd1),                                // GTH new, filter stale TX data when exiting TX electrical idle, equivalent to GTX PCS_RSVD_ATTR[7]
      //.RXOOB_CFG                      ( 7'b0000110),                          //
        .RXOOB_CLK_CFG                  (RXOOB_CLK_CFG),                        // GTH new
      //.SAS_MAX_COM                    (64),                                   //
      //.SAS_MIN_COM                    (36),                                   //
      //.SATA_BURST_SEQ_LEN             ( 4'b1111),                             //
      //.SATA_BURST_VAL                 ( 3'b100),                              //
      //.SATA_CPLL_CFG                  ("VCO_3000MHZ"),                        //
      //.SATA_EIDLE_VAL                 ( 3'b100),                              //
      //.SATA_MAX_BURST                 ( 8),                                   //
      //.SATA_MAX_INIT                  (21),                                   //
      //.SATA_MAX_WAKE                  ( 7),                                   //
      //.SATA_MIN_BURST                 ( 4),                                   //
      //.SATA_MIN_INIT                  (12),                                   //
      //.SATA_MIN_WAKE                  ( 4),                                   //  
                                                                              
        //---------- MISC ------------------------------------------------------
        .DMONITOR_CFG                   (24'h000AB1),                           // Optimized for debug; [7:4] : 1011 = AGC
      //.DMONITOR_CFG                   (24'h000AB1),                           // Optimized for debug; [7:4] : 0000 = CDR FSM
        .RX_DEBUG_CFG                   (14'b00000011000000),                   // Changed from 12 to 14-bits, optimized for IES
      //.TST_RSV                        (32'd0),                                //
      //.UCODEER_CLR                    ( 1'd0),                                //
        
        //---------- GTH -------------------------------------------------------
      //.ACJTAG_DEBUG_MODE              ( 1'd0),                                // GTH new
      //.ACJTAG_MODE                    ( 1'd0),                                // GTH new
      //.ACJTAG_RESET                   ( 1'd0),                                // GTH new
        .ADAPT_CFG0                     (20'h00C10),                            // GTH new, optimized for IES
        .CFOK_CFG                       (42'h248_0004_0E80),                    // GTH new, optimized for IES, [8] : 1 = Skip CFOK
        .CFOK_CFG2                      ( 6'b100000),                           // GTH new, optimized for IES
        .CFOK_CFG3                      ( 6'b100000)                            // GTH new, optimized for IES
            
    ) 
    gthe2_channel_i 
    (
           
        //---------- Clock -----------------------------------------------------
        .GTGREFCLK                      (1'd0),                                 //
        .GTREFCLK0                      (GT_GTREFCLK0),                         //
        .GTREFCLK1                      (1'd0),                                 //
        .GTNORTHREFCLK0                 (1'd0),                                 //
        .GTNORTHREFCLK1                 (1'd0),                                 //
        .GTSOUTHREFCLK0                 (1'd0),                                 //
        .GTSOUTHREFCLK1                 (1'd0),                                 //
        .QPLLCLK                        (GT_QPLLCLK),                           //
        .QPLLREFCLK                     (GT_QPLLREFCLK),                        //
        .TXUSRCLK                       (GT_TXUSRCLK),                          //
        .RXUSRCLK                       (GT_RXUSRCLK),                          //
        .TXUSRCLK2                      (GT_TXUSRCLK2),                         //
        .RXUSRCLK2                      (GT_RXUSRCLK2),                         //
        .TXSYSCLKSEL                    (GT_TXSYSCLKSEL),                       // 
        .RXSYSCLKSEL                    (GT_RXSYSCLKSEL),                       // 
        .TXOUTCLKSEL                    (txoutclksel),                          //
        .RXOUTCLKSEL                    (rxoutclksel),                          //
        .CPLLREFCLKSEL                  (3'd1),                                 //
        .CPLLLOCKDETCLK                 (1'd0),                                 //
        .CPLLLOCKEN                     (1'd1),                                 // 
        .CLKRSVD0                       (1'd0),                                 // GTH
        .CLKRSVD1                       (1'd0),                                 // GTH
        
        .TXOUTCLK                       (GT_TXOUTCLK),                          //
        .RXOUTCLK                       (GT_RXOUTCLK),                          //
        .TXOUTCLKFABRIC                 (),                                     //
        .RXOUTCLKFABRIC                 (),                                     //
        .TXOUTCLKPCS                    (),                                     //
        .RXOUTCLKPCS                    (),                                     //
        .CPLLLOCK                       (GT_CPLLLOCK),                          // 
        .CPLLREFCLKLOST                 (),                                     // 
        .CPLLFBCLKLOST                  (),                                     // 
        .RXCDRLOCK                      (GT_RXCDRLOCK),                         //
        .GTREFCLKMONITOR                (),                                     // 
                                                                                
        //---------- Reset -----------------------------------------------------                 
        .CPLLPD                         (cpllpd | GT_CPLLPD),                   // 
        .CPLLRESET                      (cpllrst | GT_CPLLRESET),               //
        .TXUSERRDY                      (GT_TXUSERRDY),                         //
        .RXUSERRDY                      (GT_RXUSERRDY),                         //
        .CFGRESET                       (1'd0),                                 //
        .GTRESETSEL                     (1'd0),                                 // 
        .RESETOVRD                      (GT_RESETOVRD),                         //
        .GTTXRESET                      (GT_GTTXRESET),                         //
        .GTRXRESET                      (GT_GTRXRESET),                         //
                                                                               
        .TXRESETDONE                    (GT_TXRESETDONE),                       //
        .RXRESETDONE                    (GT_RXRESETDONE),                       //
                                                                                
        //---------- TX Data ---------------------------------------------------                 
        .TXDATA                         ({32'd0, GT_TXDATA}),                   //
        .TXCHARISK                      ({ 4'd0, GT_TXDATAK}),                  //
                                                                                
        .GTHTXP                         (GT_TXP),                               // GTH
        .GTHTXN                         (GT_TXN),                               // GTH
                                                                                
        //---------- RX Data ---------------------------------------------------                 
        .GTHRXP                         (GT_RXP),                               // GTH
        .GTHRXN                         (GT_RXN),                               // GTH
                                                                                
        .RXDATA                         (rxdata),                               //
        .RXCHARISK                      (rxdatak),                              //
        
        //---------- Command ---------------------------------------------------
        .TXDETECTRX                     (GT_TXDETECTRX),                        //
        .TXPDELECIDLEMODE               ( 1'd0),                                //
        .RXELECIDLEMODE                 ( 2'd0),                                //
        .TXELECIDLE                     (GT_TXELECIDLE),                        //
        .TXCHARDISPMODE                 ({7'd0, GT_TXCOMPLIANCE}),              //
        .TXCHARDISPVAL                  ( 8'd0),                                //
        .TXPOLARITY                     ( 1'b0),                                // 
        .RXPOLARITY                     (GT_RXPOLARITY),                        //
        .TXPD                           (GT_TXPOWERDOWN),                       //
        .RXPD                           (GT_RXPOWERDOWN),                       //
        .TXRATE                         (GT_TXRATE),                            //
        .RXRATE                         (GT_RXRATE),                            //
        .TXRATEMODE                     (1'd0),                                 // GTH
        .RXRATEMODE                     (1'd0),                                 // GTH
         
        //---------- Electrical Command ----------------------------------------
        .TXMARGIN                       (GT_TXMARGIN),                          //
        .TXSWING                        (GT_TXSWING),                           //
        .TXDEEMPH                       (GT_TXDEEMPH),                          //
        .TXINHIBIT                      (GT_TXINHIBIT),                         // 
        .TXBUFDIFFCTRL                  (3'b100),                               // 
        .TXDIFFCTRL                     (4'b1111),                              // Select 850mV 
        .TXPRECURSOR                    (GT_TXPRECURSOR),                       // 
        .TXPRECURSORINV                 (1'd0),                                 // 
        .TXMAINCURSOR                   (GT_TXMAINCURSOR),                      // 
        .TXPOSTCURSOR                   (GT_TXPOSTCURSOR),                      // 
        .TXPOSTCURSORINV                (1'd0),                                 // 
                                                                              
        //---------- Status ----------------------------------------------------
        .RXVALID                        (GT_RXVALID),                           //
        .PHYSTATUS                      (GT_PHYSTATUS),                         //
        .RXELECIDLE                     (GT_RXELECIDLE),                        // 
        .RXSTATUS                       (GT_RXSTATUS),                          //
        .TXRATEDONE                     (GT_TXRATEDONE),                        //
        .RXRATEDONE                     (GT_RXRATEDONE),                        //
                                                                              
        //---------- DRP -------------------------------------------------------
        .DRPCLK                         (GT_DRPCLK),                            //
        .DRPADDR                        (GT_DRPADDR),                           //
        .DRPEN                          (GT_DRPEN),                             //
        .DRPDI                          (GT_DRPDI),                             //
        .DRPWE                          (GT_DRPWE),                             //
                                                                             
        .DRPDO                          (GT_DRPDO),                             // 
        .DRPRDY                         (GT_DRPRDY),                            // 
                                                                              
        //---------- PMA -------------------------------------------------------
        .TXPMARESET                     (GT_TXPMARESET),                        //
        .RXPMARESET                     (GT_RXPMARESET),                        //
        .RXLPMEN                        (rxlpmen),                              // ***
        .RXLPMHFHOLD                    (GT_RX_CONVERGE),                       // Set to 1 after convergence
        .RXLPMHFOVRDEN                  ( 1'd0),                                // 
        .RXLPMLFHOLD                    (GT_RX_CONVERGE),                       // Set to 1 after convergence
        .RXLPMLFKLOVRDEN                ( 1'd0),                                // 
        .TXQPIBIASEN                    ( 1'd0),                                // 
        .TXQPISTRONGPDOWN               ( 1'd0),                                // 
        .TXQPIWEAKPUP                   ( 1'd0),                                // 
        .RXQPIEN                        ( 1'd0),                                // Optimized for IES
        .PMARSVDIN                      ( 5'd0),                                // 
        .GTRSVD                         (16'd0),                                // 
                                                                              
        .TXQPISENP                      (),                                     // 
        .TXQPISENN                      (),                                     // 
        .RXQPISENP                      (),                                     // 
        .RXQPISENN                      (),                                     // 
        .DMONITOROUT                    (dmonitorout),                          // GTH 15-bits.
                                                                              
        //---------- PCS -------------------------------------------------------                 
        .TXPCSRESET                     (GT_TXPCSRESET),                        //
        .RXPCSRESET                     (GT_RXPCSRESET),                        //
        .PCSRSVDIN                      (16'd0),                                // [0]: 1 = TXRATE async, [1]: 1 = RXRATE async  
        .PCSRSVDIN2                     ( 5'd0),                                // 
                                                                                
        .PCSRSVDOUT                     (),                                     // 
       
        //---------- CDR -------------------------------------------------------                  
        .RXCDRRESET                     (GT_RXCDRRESET),                        //
        .RXCDRRESETRSV                  (1'd0),                                 // 
        .RXCDRFREQRESET                 (GT_RXCDRFREQRESET),                    // 
        .RXCDRHOLD                      (1'b0),                                 //
        .RXCDROVRDEN                    (1'd0),                                 // 
                      
         //---------- PI --------------------------------------------------------
        .TXPIPPMEN                      (1'd0),                                 // GTH new
        .TXPIPPMOVRDEN                  (1'd0),                                 // GTH new
        .TXPIPPMPD                      (1'd0),                                 // GTH new
        .TXPIPPMSEL                     (1'd0),                                 // GTH new
        .TXPIPPMSTEPSIZE                (5'd0),                                 // GTH new            
                                                                
        //---------- DFE -------------------------------------------------------   
        .RXDFELPMRESET                  (GT_RXDFELPMRESET),                     //  
        .RXDFEAGCTRL                    (5'b10000),                             // GTH new, optimized for IES
        .RXDFECM1EN                     (1'd0),                                 // 
        .RXDFEVSEN                      (1'd0),                                 // 
        .RXDFETAP2HOLD                  (1'd0),                                 // 
        .RXDFETAP2OVRDEN                (1'd0),                                 // 
        .RXDFETAP3HOLD                  (1'd0),                                 // 
        .RXDFETAP3OVRDEN                (1'd0),                                 // 
        .RXDFETAP4HOLD                  (1'd0),                                 // 
        .RXDFETAP4OVRDEN                (1'd0),                                 // 
        .RXDFETAP5HOLD                  (1'd0),                                 // 
        .RXDFETAP5OVRDEN                (1'd0),                                 // 
        .RXDFETAP6HOLD                  (1'd0),                                 // GTH new
        .RXDFETAP6OVRDEN                (1'd0),                                 // GTH new
        .RXDFETAP7HOLD                  (1'd0),                                 // GTH new
        .RXDFETAP7OVRDEN                (1'd0),                                 // GTH new
        .RXDFEAGCHOLD                   (GT_RX_CONVERGE),                       // Set to 1 after convergence
        .RXDFEAGCOVRDEN                 (rxlpmen),                              // 
        .RXDFELFHOLD                    (GT_RX_CONVERGE),                       // Set to 1 after convergence 
        .RXDFELFOVRDEN                  (1'd0),                                 // 
        .RXDFEUTHOLD                    (1'd0),                                 // 
        .RXDFEUTOVRDEN                  (1'd0),                                 // 
        .RXDFEVPHOLD                    (1'd0),                                 // 
        .RXDFEVPOVRDEN                  (1'd0),                                 // 
        .RXDFEXYDEN                     (1'd1),                                 // Optimized for IES 
        .RXMONITORSEL                   (2'd0),                                 //
        .RXDFESLIDETAP                  (5'd0),                                 // GTH new
        .RXDFESLIDETAPID                (6'd0),                                 // GTH new
        .RXDFESLIDETAPHOLD              (1'd0),                                 // GTH new
        .RXDFESLIDETAPOVRDEN            (1'd0),                                 // GTH new
        .RXDFESLIDETAPADAPTEN           (1'd0),                                 // GTH new
        .RXDFESLIDETAPINITOVRDEN        (1'd0),                                 // GTH new
        .RXDFESLIDETAPONLYADAPTEN       (1'd0),                                 // GTH new
        .RXDFESLIDETAPSTROBE            (1'd0),                                 // GTH new
    
        .RXMONITOROUT                   (),                                     // 
        .RXDFESLIDETAPSTARTED           (),                                     // GTH new
        .RXDFESLIDETAPSTROBEDONE        (),                                     // GTH new
        .RXDFESLIDETAPSTROBESTARTED     (),                                     // GTH new
        .RXDFESTADAPTDONE               (),                                     // GTH new
        
        //---------- OS --------------------------------------------------------
        .RXOSHOLD                       (1'd0),                                 // optimized for IES
        .RXOSOVRDEN                     (1'd0),                                 // optimized for IES
        .RXOSINTEN                      (1'd1),                                 // GTH new, optimized for IES
        .RXOSINTHOLD                    (1'd0),                                 // GTH new, optimized for IES
        .RXOSINTNTRLEN                  (1'd0),                                 // GTH new, optimized for IES
        .RXOSINTOVRDEN                  (1'd0),                                 // GTH new, optimized for IES
        .RXOSINTSTROBE                  (1'd0),                                 // GTH new, optimized for IES
        .RXOSINTTESTOVRDEN              (1'd0),                                 // GTH new, optimized for IES
        .RXOSINTCFG                     (4'b0110),                              // GTH new, optimized for IES
        .RXOSINTID0                     (4'b0000),                              // GTH new, optimized for IES
        .RXOSCALRESET                   ( 1'd0),                                // GTH, optimized for IES
        
        .RSOSINTDONE                    (),                                     // GTH new
        .RXOSINTSTARTED                 (),                                     // GTH new
        .RXOSINTSTROBEDONE              (),                                     // GTH new
        .RXOSINTSTROBESTARTED           (),                                     // GTH new
        
        //---------- Eye Scan --------------------------------------------------
        .EYESCANRESET                   (GT_EYESCANRESET),                      // 
        .EYESCANMODE                    (1'd0),                                 // 
        .EYESCANTRIGGER                 (1'b0),                                 // 
        
        .EYESCANDATAERROR               (GT_EYESCANDATAERROR),                  //
     
        //---------- TX Buffer -------------------------------------------------
        .TXBUFSTATUS                    (),                                     //
        
        //---------- RX Buffer -------------------------------------------------
        .RXBUFRESET                     (GT_RXBUFRESET),                        //
        
        .RXBUFSTATUS                    (GT_RXBUFSTATUS),                       //
       
        //---------- TX Sync ---------------------------------------------------
        .TXPHDLYRESET                   (GT_TXPHDLYRESET),                      //
        .TXPHDLYTSTCLK                  (1'd0),                                 //
        .TXPHALIGN                      (GT_TXPHALIGN),                         // 
        .TXPHALIGNEN                    (GT_TXPHALIGNEN),                       //  
        .TXPHDLYPD                      (1'd0),                                 // 
        .TXPHINIT                       (GT_TXPHINIT),                          //  
        .TXPHOVRDEN                     (1'd0),                                 //
        .TXDLYBYPASS                    (GT_TXDLYBYPASS),                       //  
        .TXDLYSRESET                    (GT_TXDLYSRESET),                       // 
        .TXDLYEN                        (GT_TXDLYEN),                           //  
        .TXDLYOVRDEN                    (1'd0),                                 //
        .TXDLYHOLD                      (1'd0),                                 // 
        .TXDLYUPDOWN                    (1'd0),                                 //
        
        .TXPHALIGNDONE                  (GT_TXPHALIGNDONE),                     // 
        .TXPHINITDONE                   (GT_TXPHINITDONE),                      // 
        .TXDLYSRESETDONE                (GT_TXDLYSRESETDONE),                   //

        .TXSYNCMODE                     (GT_TXSYNCMODE),                        // GTH
        .TXSYNCIN                       (GT_TXSYNCIN),                          // GTH
        .TXSYNCALLIN                    (GT_TXSYNCALLIN),                       // GTH
        
        .TXSYNCDONE                     (GT_TXSYNCDONE),                        // GTH
        .TXSYNCOUT                      (GT_TXSYNCOUT),                         // GTH
        
        //---------- RX Sync ---------------------------------------------------  
        .RXPHDLYRESET                   (1'd0),                                 //
        .RXPHALIGN                      (GT_RXPHALIGN),                         //
        .RXPHALIGNEN                    (GT_RXPHALIGNEN),                       //
        .RXPHDLYPD                      (1'd0),                                 // 
        .RXPHOVRDEN                     (1'd0),                                 // 
        .RXDLYBYPASS                    (GT_RXDLYBYPASS),                       //  
        .RXDLYSRESET                    (GT_RXDLYSRESET),                       // 
        .RXDLYEN                        (GT_RXDLYEN),                           // 
        .RXDLYOVRDEN                    (1'd0),                                 //
        .RXDDIEN                        (GT_RXDDIEN),                           //
        
        .RXPHALIGNDONE                  (GT_RXPHALIGNDONE),                     //  
        .RXPHMONITOR                    (),                                     //
        .RXPHSLIPMONITOR                (),                                     // 
        .RXDLYSRESETDONE                (GT_RXDLYSRESETDONE),                   // 
         
        .RXSYNCMODE                     (GT_RXSYNCMODE),                        // GTH
        .RXSYNCIN                       (GT_RXSYNCIN),                          // GTH
        .RXSYNCALLIN                    (GT_RXSYNCALLIN),                       // GTH
        
        .RXSYNCDONE                     (GT_RXSYNCDONE),                        // GTH
        .RXSYNCOUT                      (GT_RXSYNCOUT),                         // GTH
         
        //---------- Comma Alignment ------------------------------------------- 
        .RXCOMMADETEN                   ( 1'd1),                                //
        .RXMCOMMAALIGNEN                (!GT_GEN3),                             // 0 = disable comma alignment in Gen3
        .RXPCOMMAALIGNEN                (!GT_GEN3),                             // 0 = disable comma alignment in Gen3
        .RXSLIDE                        ( GT_RXSLIDE),                          //
         
        .RXCOMMADET                     (GT_RXCOMMADET),                        //
        .RXCHARISCOMMA                  (rxchariscomma),                        // 
        .RXBYTEISALIGNED                (GT_RXBYTEISALIGNED),                   //
        .RXBYTEREALIGN                  (GT_RXBYTEREALIGN),                     //
         
        //---------- Channel Bonding -------------------------------------------
        .RXCHBONDEN                     (GT_RXCHBONDEN),                        //
        .RXCHBONDI                      (GT_RXCHBONDI),                         //
        .RXCHBONDLEVEL                  (GT_RXCHBONDLEVEL),                     //
        .RXCHBONDMASTER                 (GT_RXCHBONDMASTER),                    //
        .RXCHBONDSLAVE                  (GT_RXCHBONDSLAVE),                     //
    
        .RXCHANBONDSEQ                  (),                                     //
        .RXCHANISALIGNED                (GT_RXCHANISALIGNED),                   //
        .RXCHANREALIGN                  (),                                     //
        .RXCHBONDO                      (GT_RXCHBONDO),                         //
         
        //---------- Clock Correction  -----------------------------------------
        .RXCLKCORCNT                    (),                                     //
         
        //---------- 8b10b -----------------------------------------------------
        .TX8B10BBYPASS                  (8'd0),                                 //
        .TX8B10BEN                      (!GT_GEN3),                             // 0 = disable TX 8b10b in Gen3
        .RX8B10BEN                      (!GT_GEN3),                             // 0 = disable RX 8b10b in Gen3
        
        .RXDISPERR                      (GT_RXDISPERR),                         //
        .RXNOTINTABLE                   (GT_RXNOTINTABLE),                      //
    
        //---------- 64b/66b & 64b/67b -----------------------------------------
        .TXHEADER                       (3'd0),                                 //
        .TXSEQUENCE                     (7'd0),                                 //
        .TXSTARTSEQ                     (1'd0),                                 //
        .RXGEARBOXSLIP                  (1'd0),                                 //
        
        .TXGEARBOXREADY                 (),                                     // 
        .RXDATAVALID                    (),                                     //
        .RXHEADER                       (),                                     //
        .RXHEADERVALID                  (),                                     //
        .RXSTARTOFSEQ                   (),                                     //
        
        //---------- PRBS & Loopback -------------------------------------------
        .TXPRBSSEL                      (GT_TXPRBSSEL),                         //
        .RXPRBSSEL                      (GT_RXPRBSSEL),                         //
        .TXPRBSFORCEERR                 (GT_TXPRBSFORCEERR),                    //
        .RXPRBSCNTRESET                 (GT_RXPRBSCNTRESET),                    // 
        .LOOPBACK                       (GT_LOOPBACK),                          // 
                                                                                
        .RXPRBSERR                      (GT_RXPRBSERR),                         //
         
        //---------- OOB -------------------------------------------------------
        .SIGVALIDCLK                    (GT_OOBCLK),                            // GTH, optimized for debug
        .TXCOMINIT                      (1'd0),                                 //
        .TXCOMSAS                       (1'd0),                                 //
        .TXCOMWAKE                      (1'd0),                                 //
        .RXOOBRESET                     (1'd0),                                 // 
    
        .TXCOMFINISH                    (),                                     //
        .RXCOMINITDET                   (),                                     //
        .RXCOMSASDET                    (),                                     //
        .RXCOMWAKEDET                   (),                                     //
    
        //---------- MISC ------------------------------------------------------
        .SETERRSTATUS                   ( 1'd0),                                // 
        .TXDIFFPD                       ( 1'd0),                                // 
        .TXPISOPD                       ( 1'd0),                                // 
        .TSTIN                          (20'hFFFFF),                            //  
        
        //---------- GTH -------------------------------------------------------
        .RXADAPTSELTEST                 (14'd0),                                // GTH new
        .DMONFIFORESET                  ( 1'd0),                                // GTH
        .DMONITORCLK                    (dmonitorclk),                          // GTH, optimized for debug
      //.DMONITORCLK                    (GT_DRPCLK),                            // GTH, optimized for debug
        
        .RXPMARESETDONE                 (GT_RXPMARESETDONE),                    // GTH
        .TXPMARESETDONE                 ()                                      // GTH

    );
    
    end
    
else

    begin : gtx_channel

    //---------- GTX Channel Module --------------------------------------------
    GTXE2_CHANNEL #
    (
               
        //---------- Simulation Attributes -------------------------------------
        .SIM_CPLLREFCLK_SEL             (3'b001),                               //
        .SIM_RESET_SPEEDUP              (PCIE_SIM_SPEEDUP),                     //
        .SIM_RECEIVER_DETECT_PASS       ("TRUE"),                               //    
        .SIM_TX_EIDLE_DRIVE_LEVEL       (PCIE_SIM_TX_EIDLE_DRIVE_LEVEL),        // 
        .SIM_VERSION                    (PCIE_USE_MODE),                        //
                                                                                
        //---------- Clock Attributes ------------------------------------------                                      
        .CPLL_REFCLK_DIV                (CPLL_REFCLK_DIV),                      //
        .CPLL_FBDIV_45                  (CPLL_FBDIV_45),                        //
        .CPLL_FBDIV                     (CPLL_FBDIV),                           //
        .TXOUT_DIV                      (OUT_DIV),                              //
        .RXOUT_DIV                      (OUT_DIV),                              // 
        .TX_CLK25_DIV                   (CLK25_DIV),                            //
        .RX_CLK25_DIV                   (CLK25_DIV),                            //
        .TX_CLKMUX_PD                   (CLKMUX_PD),                            // GTX
        .RX_CLKMUX_PD                   (CLKMUX_PD),                            // GTX
        .TX_XCLK_SEL                    (TX_XCLK_SEL),                          // TXOUT = use TX buffer, TXUSR = bypass TX buffer
        .RX_XCLK_SEL                    ("RXREC"),                              // RXREC = use RX buffer, RXUSR = bypass RX buffer
        .OUTREFCLK_SEL_INV              ( 2'b11),                               //
        .CPLL_CFG                       (CPLL_CFG),                             // Optimized for silicon
      //.CPLL_INIT_CFG                  (24'h00001E),                           // 
      //.CPLL_LOCK_CFG                  (16'h01E8),                             //
                                                                                
        //---------- Reset Attributes ------------------------------------------                
        .TXPCSRESET_TIME                (5'b00001),                             //
        .RXPCSRESET_TIME                (5'b00001),                             //
        .TXPMARESET_TIME                (5'b00011),                             //
        .RXPMARESET_TIME                (5'b00011),                             // Optimized for sim and for DRP
      //.RXISCANRESET_TIME              (5'b00001),                             //
                                                                                
        //---------- TX Data Attributes ----------------------------------------                
        .TX_DATA_WIDTH                  (20),                                   // 2-byte external datawidth for Gen1/Gen2
        .TX_INT_DATAWIDTH               ( 0),                                   // 2-byte internal datawidth for Gen1/Gen2
                                                                                
        //---------- RX Data Attributes ----------------------------------------                
        .RX_DATA_WIDTH                  (20),                                   // 2-byte external datawidth for Gen1/Gen2
        .RX_INT_DATAWIDTH               ( 0),                                   // 2-byte internal datawidth for Gen1/Gen2
                                                                                
        //---------- Command Attributes ----------------------------------------                
        .TX_RXDETECT_CFG                (TX_RXDETECT_CFG),                      //
        .TX_RXDETECT_REF                (TX_RXDETECT_REF),                      // 
        .RX_CM_SEL                      ( 2'd3),                                // 0 = AVTT, 1 = GND, 2 = Float, 3 = Programmable
        .RX_CM_TRIM	                    ( 3'b010),                              // Select 800mV
        .TX_EIDLE_ASSERT_DELAY          (PCIE_TX_EIDLE_ASSERT_DELAY),           // Optimized for sim (3'd4)
        .TX_EIDLE_DEASSERT_DELAY        ( 3'b100),                              // Optimized for sim
      //.PD_TRANS_TIME_FROM_P2          (12'h03C),                              //
        .PD_TRANS_TIME_NONE_P2          ( 8'h09),                               //
      //.PD_TRANS_TIME_TO_P2            ( 8'h64),                               //
      //.TRANS_TIME_RATE                ( 8'h0E),                               //
                                                                                
        //---------- Electrical Command Attributes -----------------------------                
        .TX_DRIVE_MODE                  ("PIPE"),                               // Gen1/Gen2 = PIPE, Gen3 = PIPEGEN3
        .TX_DEEMPH0                     ( 5'b10100),                            //  6.0 dB
        .TX_DEEMPH1                     ( 5'b01011),                            //  3.5 dB
        .TX_MARGIN_FULL_0               ( 7'b1001111),                          // 1000 mV
        .TX_MARGIN_FULL_1               ( 7'b1001110),                          //  950 mV
        .TX_MARGIN_FULL_2               ( 7'b1001101),                          //  900 mV
        .TX_MARGIN_FULL_3               ( 7'b1001100),                          //  850 mV
        .TX_MARGIN_FULL_4               ( 7'b1000011),                          //  400 mV
        .TX_MARGIN_LOW_0                ( 7'b1000101),                          //  500 mV
        .TX_MARGIN_LOW_1                ( 7'b1000110),                          //  450 mV
        .TX_MARGIN_LOW_2                ( 7'b1000011),                          //  400 mV
        .TX_MARGIN_LOW_3                ( 7'b1000010),                          //  350 mV
        .TX_MARGIN_LOW_4                ( 7'b1000000),                          //  250 mV
        .TX_MAINCURSOR_SEL              ( 1'b0),                                //
        .TX_PREDRIVER_MODE              ( 1'b0),                                // GTX
        .TX_QPI_STATUS_EN               ( 1'b0),                                //
                                                                                
        //---------- Status Attributes -----------------------------------------                
        .RX_SIG_VALID_DLY               (4),                                    // Optimized for sim
                                                                                
        //---------- DRP Attributes --------------------------------------------                
                         
        //---------- PCS Attributes --------------------------------------------                
        .PCS_PCIE_EN                    ("TRUE"),                               // PCIe
        .PCS_RSVD_ATTR                  (PCS_RSVD_ATTR),                        //         
                                                                                
        //---------- PMA Attributes --------------------------------------------                
        .PMA_RSV                        (32'h00018480),                         // Optimized for GES Gen1/Gen2
        .PMA_RSV2                       (16'h2050),                             // Optimized for silicon, [4] RX_CM_TRIM[4], [5] = 1 Enable Eye Scan
      //.PMA_RSV3                       ( 2'd0),                                // 
      //.PMA_RSV4                       (32'd0),                                // GTX 3.0 new
        .RX_BIAS_CFG                    (12'b000000000100),                     // Optimized for GES
      //.TERM_RCAL_CFG                  ( 5'b10000),                            // 
      //.TERM_RCAL_OVRD                 ( 1'd0),                                // 
    
        //---------- CDR Attributes --------------------------------------------
        .RXCDR_CFG                      (RXCDR_CFG_GTX),                        // 
        .RXCDR_LOCK_CFG                 ( 6'b010101),                           // [5:3] Window Refresh, [2:1] Window Size, [0] Enable Detection (sensitive lock = 6'b111001)
        .RXCDR_HOLD_DURING_EIDLE        ( 1'd1),                                // Hold  RX CDR           on electrical idle for Gen1/Gen2
        .RXCDR_FR_RESET_ON_EIDLE        ( 1'd0),                                // Reset RX CDR frequency on electrical idle for Gen3
        .RXCDR_PH_RESET_ON_EIDLE        ( 1'd0),                                // Reset RX CDR phase     on electrical idle for Gen3
      //.RXCDRFREQRESET_TIME            ( 5'b00001),                            // 
      //.RXCDRPHRESET_TIME              ( 5'b00001),                            // 
                                 
        //---------- LPM Attributes --------------------------------------------               
        .RXLPM_HF_CFG                   (14'h00F0),                             // Optimized for silicon
        .RXLPM_LF_CFG                   (14'h00F0),                             // Optimized for silicon
                                                                          
        //---------- DFE Attributes --------------------------------------------                
      //.RXDFELPMRESET_TIME	            ( 7'b0001111),                          // 
        .RX_DFE_GAIN_CFG                (23'h020FEA),                           // Optimized for GES, IES = 23'h001F0A 
        .RX_DFE_H2_CFG                  (12'b000000000000),                     // Optimized for GES
        .RX_DFE_H3_CFG                  (12'b000001000000),                     // Optimized for GES
        .RX_DFE_H4_CFG                  (11'b00011110000),                      // Optimized for GES
        .RX_DFE_H5_CFG                  (11'b00011100000),                      // Optimized for GES
        .RX_DFE_KL_CFG                  (13'b0000011111110),                    // Optimized for GES
        .RX_DFE_KL_CFG2                 (32'h3290D86C),                         // Optimized for GES, GTX new, CTLE 3 3 5, default = 32'h3010D90C
        .RX_DFE_LPM_CFG                 (16'h0954),                             // Optimized for GES
        .RX_DFE_LPM_HOLD_DURING_EIDLE   ( 1'd1),                                // Optimized for PCIe
        .RX_DFE_UT_CFG                  (17'b10001111000000000),                // Optimized for GES, IES = 17'h08F00
        .RX_DFE_VP_CFG                  (17'b00011111100000011),                // Optimized for GES
        .RX_DFE_XYD_CFG                 (13'h0000),                             // Optimized for 4.0
      
        //---------- OS Attributes ---------------------------------------------
        .RX_OS_CFG                      (13'b0000010000000),                    // Optimized for GES
                                                                                
        //---------- Eye Scan Attributes ---------------------------------------                
      //.ES_CONTROL                     ( 6'd0),                                //
      //.ES_ERRDET_EN                   ("FALSE"),                              //
        .ES_EYE_SCAN_EN                 ("FALSE"),                               // 
        .ES_HORZ_OFFSET                 (12'd0),                                //
      //.ES_PMA_CFG                     (10'd0),                                //
      //.ES_PRESCALE                    ( 5'd0),                                //
      //.ES_QUAL_MASK                   (80'd0),                                //
      //.ES_QUALIFIER                   (80'd0),                                //
      //.ES_SDATA_MASK                  (80'd0),                                //
      //.ES_VERT_OFFSET                 ( 9'd0),                                //
                                                                                
        //---------- TX Buffer Attributes --------------------------------------               
        .TXBUF_EN                       (PCIE_TXBUF_EN),                        // 
        .TXBUF_RESET_ON_RATE_CHANGE	    ("TRUE"),                               //
                                                                                
        //---------- RX Buffer Attributes --------------------------------------                
        .RXBUF_EN                       ("TRUE"),                               //
      //.RX_BUFFER_CFG                  ( 6'd0),                                //
        .RX_DEFER_RESET_BUF_EN          ("TRUE"),                               // 
        .RXBUF_ADDR_MODE                ("FULL"),                               //
        .RXBUF_EIDLE_HI_CNT	            ( 4'd4),                                // Optimized for sim
        .RXBUF_EIDLE_LO_CNT	            ( 4'd0),                                // Optimized for sim
        .RXBUF_RESET_ON_CB_CHANGE       ("TRUE"),                               //
        .RXBUF_RESET_ON_COMMAALIGN      ("FALSE"),                              //
        .RXBUF_RESET_ON_EIDLE           ("TRUE"),                               // PCIe
        .RXBUF_RESET_ON_RATE_CHANGE	    ("TRUE"),                               //
        .RXBUF_THRESH_OVRD              ("FALSE"),                              //
        .RXBUF_THRESH_OVFLW	            (61),                                   //
        .RXBUF_THRESH_UNDFLW            ( 4),                                   //
      //.RXBUFRESET_TIME                ( 5'b00001),                            //
                                                                                
        //---------- TX Sync Attributes ----------------------------------------                
      //.TXPH_CFG                       (16'h0780),                             // 
        .TXPH_MONITOR_SEL               ( 5'd0),                                // 
      //.TXPHDLY_CFG                    (24'h084020),                           // 
      //.TXDLY_CFG                      (16'h001F),                             // 
      //.TXDLY_LCFG	                    ( 9'h030),                              // 
      //.TXDLY_TAP_CFG                  (16'd0),                                // 
                                                                                
        //---------- RX Sync Attributes ----------------------------------------            
      //.RXPH_CFG                       (24'd0),                                //
        .RXPH_MONITOR_SEL               ( 5'd0),                                //
        .RXPHDLY_CFG                    (24'h004020),                           // Optimized for sim
      //.RXDLY_CFG                      (16'h001F),                             // 
      //.RXDLY_LCFG	                    ( 9'h030),                              //
      //.RXDLY_TAP_CFG                  (16'd0),                                //
        .RX_DDI_SEL	                    ( 6'd0),                                //
                                                                                
        //---------- Comma Alignment Attributes --------------------------------            
        .ALIGN_COMMA_DOUBLE             ("FALSE"),                              //   
        .ALIGN_COMMA_ENABLE             (10'b1111111111),                       // PCIe
        .ALIGN_COMMA_WORD               ( 1),                                   //
        .ALIGN_MCOMMA_DET               ("TRUE"),                               //
        .ALIGN_MCOMMA_VALUE             (10'b1010000011),                       //
        .ALIGN_PCOMMA_DET               ("TRUE"),                               //
        .ALIGN_PCOMMA_VALUE             (10'b0101111100),                       //
        .DEC_MCOMMA_DETECT              ("TRUE"),                               //
        .DEC_PCOMMA_DETECT              ("TRUE"),                               //
        .DEC_VALID_COMMA_ONLY           ("FALSE"),                              // PCIe
        .SHOW_REALIGN_COMMA             ("FALSE"),                              // PCIe
        .RXSLIDE_AUTO_WAIT              ( 7),                                   // 
        .RXSLIDE_MODE                   ("PMA"),                                // PCIe
                                                                                
        //---------- Channel Bonding Attributes --------------------------------                
        .CHAN_BOND_KEEP_ALIGN           ("TRUE"),                               // PCIe
        .CHAN_BOND_MAX_SKEW             ( 7),                                   // 
        .CHAN_BOND_SEQ_LEN              ( 4),                                   // PCIe
        .CHAN_BOND_SEQ_1_ENABLE         ( 4'b1111),                             //
        .CHAN_BOND_SEQ_1_1              (10'b0001001010),                       // D10.2 (4A) - TS1 
        .CHAN_BOND_SEQ_1_2              (10'b0001001010),                       // D10.2 (4A) - TS1
        .CHAN_BOND_SEQ_1_3              (10'b0001001010),                       // D10.2 (4A) - TS1
        .CHAN_BOND_SEQ_1_4              (10'b0110111100),                       // K28.5 (BC) - COM
        .CHAN_BOND_SEQ_2_USE            ("TRUE"),                               // PCIe
        .CHAN_BOND_SEQ_2_ENABLE         ( 4'b1111),                             //
        .CHAN_BOND_SEQ_2_1              (10'b0001000101),                       // D5.2  (45) - TS2
        .CHAN_BOND_SEQ_2_2              (10'b0001000101),                       // D5.2  (45) - TS2
        .CHAN_BOND_SEQ_2_3              (10'b0001000101),                       // D5.2  (45) - TS2
        .CHAN_BOND_SEQ_2_4              (10'b0110111100),                       // K28.5 (BC) - COM
        .FTS_DESKEW_SEQ_ENABLE          ( 4'b1111),                             // 
        .FTS_LANE_DESKEW_EN	            ("TRUE"),                               // PCIe
        .FTS_LANE_DESKEW_CFG            ( 4'b1111),                             // 
                                                                                
        //---------- Clock Correction Attributes -------------------------------            
        .CBCC_DATA_SOURCE_SEL           ("DECODED"),                            //
        .CLK_CORRECT_USE                ("TRUE"),                               //
        .CLK_COR_KEEP_IDLE              ("TRUE"),                               // PCIe
        .CLK_COR_MAX_LAT                (CLK_COR_MAX_LAT),                      // 
        .CLK_COR_MIN_LAT                (CLK_COR_MIN_LAT),                      // 
        .CLK_COR_PRECEDENCE             ("TRUE"),                               //
        .CLK_COR_REPEAT_WAIT            ( 0),                                   // 
        .CLK_COR_SEQ_LEN                ( 1),                                   //
        .CLK_COR_SEQ_1_ENABLE           ( 4'b1111),                             //
        .CLK_COR_SEQ_1_1                (10'b0100011100),                       // K28.0 (1C) - SKP
        .CLK_COR_SEQ_1_2                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_1_3                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_1_4                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_2_ENABLE           ( 4'b0000),                             // Disabled
        .CLK_COR_SEQ_2_USE              ("FALSE"),                              //
        .CLK_COR_SEQ_2_1                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_2_2                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_2_3                (10'b0000000000),                       // Disabled
        .CLK_COR_SEQ_2_4                (10'b0000000000),                       // Disabled
                                                                                
        //---------- 8b10b Attributes ------------------------------------------                
        .RX_DISPERR_SEQ_MATCH           ("TRUE"),                               //
                                                                                
        //---------- 64b/66b & 64b/67b Attributes ------------------------------                
        .GEARBOX_MODE                   (3'd0),                                 //
        .TXGEARBOX_EN                   ("FALSE"),                              //
        .RXGEARBOX_EN                   ("FALSE"),                              //
                                                                                
        //---------- PRBS & Loopback Attributes --------------------------------                
        .RXPRBS_ERR_LOOPBACK            (1'd0),                                 //
        .TX_LOOPBACK_DRIVE_HIZ          ("FALSE"),                              //
                                                                                
        //---------- OOB & SATA Attributes -------------------------------------                
      //.RXOOB_CFG                      ( 7'b0000110),                          //
      //.SAS_MAX_COM                    (64),                                   //
      //.SAS_MIN_COM                    (36),                                   //
      //.SATA_BURST_SEQ_LEN             ( 4'b1111),                             //
      //.SATA_BURST_VAL                 ( 3'b100),                              //
      //.SATA_CPLL_CFG                  ("VCO_3000MHZ"),                        //
      //.SATA_EIDLE_VAL                 ( 3'b100),                              //
      //.SATA_MAX_BURST                 ( 8),                                   //
      //.SATA_MAX_INIT                  (21),                                   //
      //.SATA_MAX_WAKE                  ( 7),                                   //
      //.SATA_MIN_BURST                 ( 4),                                   //
      //.SATA_MIN_INIT                  (12),                                   //
      //.SATA_MIN_WAKE                  ( 4),                                   //  
                                                                                
        //---------- MISC ------------------------------------------------------               
        .DMONITOR_CFG                   (24'h000B01),                           // Optimized for debug
        .RX_DEBUG_CFG                   (12'd0)                                 // Optimized for GES
      //.TST_RSV                        (32'd0),                                //
      //.UCODEER_CLR                    ( 1'd0)                                 //
                                                                                
    )                                                                           
    gtxe2_channel_i                                                                     
    (                                                                           
                                                                                
        //---------- Clock -----------------------------------------------------                
        .GTGREFCLK                      (1'd0),                                 //
        .GTREFCLK0                      (GT_GTREFCLK0),                         //
        .GTREFCLK1                      (1'd0),                                 //
        .GTNORTHREFCLK0                 (1'd0),                                 //
        .GTNORTHREFCLK1                 (1'd0),                                 //
        .GTSOUTHREFCLK0                 (1'd0),                                 //
        .GTSOUTHREFCLK1                 (1'd0),                                 //
        .QPLLCLK                        (GT_QPLLCLK),                           //
        .QPLLREFCLK                     (GT_QPLLREFCLK),                        //
        .TXUSRCLK                       (GT_TXUSRCLK),                          //
        .RXUSRCLK                       (GT_RXUSRCLK),                          //
        .TXUSRCLK2                      (GT_TXUSRCLK2),                         //
        .RXUSRCLK2                      (GT_RXUSRCLK2),                         //
        .TXSYSCLKSEL                    (GT_TXSYSCLKSEL),                       // 
        .RXSYSCLKSEL                    (GT_RXSYSCLKSEL),                       // 
        .TXOUTCLKSEL                    (txoutclksel),                          //
        .RXOUTCLKSEL                    (rxoutclksel),                          //
        .CPLLREFCLKSEL                  (3'd1),                                 //
        .CPLLLOCKDETCLK                 (1'd0),                                 //
        .CPLLLOCKEN                     (1'd1),                                 // 
        .CLKRSVD                        ({2'd0, dmonitorclk, GT_OOBCLK}),       // Optimized for debug
                                                                                
        .TXOUTCLK                       (GT_TXOUTCLK),                          //
        .RXOUTCLK                       (GT_RXOUTCLK),                          //
        .TXOUTCLKFABRIC                 (),                                     //
        .RXOUTCLKFABRIC                 (),                                     //
        .TXOUTCLKPCS                    (),                                     //
        .RXOUTCLKPCS                    (),                                     //
        .CPLLLOCK                       (GT_CPLLLOCK),                          //
        .CPLLREFCLKLOST                 (),                                     //
        .CPLLFBCLKLOST                  (),                                     //
        .RXCDRLOCK                      (GT_RXCDRLOCK),                         //
        .GTREFCLKMONITOR                (),                                     //
                                                                                
        //---------- Reset -----------------------------------------------------                
        .CPLLPD                         (cpllpd | GT_CPLLPD),                   // 
        .CPLLRESET                      (cpllrst | GT_CPLLRESET),               //
        .TXUSERRDY                      (GT_TXUSERRDY),                         //
        .RXUSERRDY                      (GT_RXUSERRDY),                         //
        .CFGRESET                       (1'd0),                                 //
        .GTRESETSEL                     (1'd0),                                 //
        .RESETOVRD                      (GT_RESETOVRD),                         //
        .GTTXRESET                      (GT_GTTXRESET),                         //
        .GTRXRESET                      (GT_GTRXRESET),                         //
                                                                               
        .TXRESETDONE                    (GT_TXRESETDONE),                       //
        .RXRESETDONE                    (GT_RXRESETDONE),                       //
                                                                                
        //---------- TX Data ---------------------------------------------------                
        .TXDATA                         ({32'd0, GT_TXDATA}),                   //
        .TXCHARISK                      ({ 4'd0, GT_TXDATAK}),                  //
                                                                                
        .GTXTXP                         (GT_TXP),                               // GTX
        .GTXTXN                         (GT_TXN),                               // GTX
                                                                                
        //---------- RX Data ---------------------------------------------------                
        .GTXRXP                         (GT_RXP),                               // GTX
        .GTXRXN                         (GT_RXN),                               // GTX
                                                                                
        .RXDATA                         (rxdata),                               //
        .RXCHARISK                      (rxdatak),                              //
                                                                                
        //---------- Command ---------------------------------------------------                
        .TXDETECTRX                     (GT_TXDETECTRX),                        //
        .TXPDELECIDLEMODE               ( 1'd0),                                //
        .RXELECIDLEMODE                 ( 2'd0),                                //
        .TXELECIDLE                     (GT_TXELECIDLE),                        //
        .TXCHARDISPMODE                 ({7'd0, GT_TXCOMPLIANCE}),              //
        .TXCHARDISPVAL                  ( 8'd0),                                //
        .TXPOLARITY                     ( 1'b0),                                //
        .RXPOLARITY                     (GT_RXPOLARITY),                        //
        .TXPD                           (GT_TXPOWERDOWN),                       //
        .RXPD                           (GT_RXPOWERDOWN),                       //
        .TXRATE                         (GT_TXRATE),                            //
        .RXRATE                         (GT_RXRATE),                            //
                                                                                
        //---------- Electrical Command ----------------------------------------                
        .TXMARGIN                       (GT_TXMARGIN),                          //
        .TXSWING                        (GT_TXSWING),                           //
        .TXDEEMPH                       (GT_TXDEEMPH),                          //
        .TXINHIBIT                      (GT_TXINHIBIT),                         // 
        .TXBUFDIFFCTRL                  (3'b100),                               // 
        .TXDIFFCTRL                     (4'b1100),                              //   
        .TXPRECURSOR                    (GT_TXPRECURSOR),                       // 
        .TXPRECURSORINV                 (1'd0),                                 // 
        .TXMAINCURSOR                   (GT_TXMAINCURSOR),                      // 
        .TXPOSTCURSOR                   (GT_TXPOSTCURSOR),                      // 
        .TXPOSTCURSORINV                (1'd0),                                 // 
                                                                                
        //---------- Status ----------------------------------------------------                
        .RXVALID                        (GT_RXVALID),                           //
        .PHYSTATUS                      (GT_PHYSTATUS),                         //
        .RXELECIDLE                     (GT_RXELECIDLE),                        // 
        .RXSTATUS                       (GT_RXSTATUS),                          //
        .TXRATEDONE                     (GT_TXRATEDONE),                        //
        .RXRATEDONE                     (GT_RXRATEDONE),                        //
                                                                                
        //---------- DRP -------------------------------------------------------                
        .DRPCLK                         (GT_DRPCLK),                            //
        .DRPADDR                        (GT_DRPADDR),                           //
        .DRPEN                          (GT_DRPEN),                             //
        .DRPDI                          (GT_DRPDI),                             //
        .DRPWE                          (GT_DRPWE),                             //
                                                                                
        .DRPDO                          (GT_DRPDO),                             //
        .DRPRDY                         (GT_DRPRDY),                            //
                                                                                
        //---------- PMA -------------------------------------------------------                
        .TXPMARESET                     (GT_TXPMARESET),                        //
        .RXPMARESET                     (GT_RXPMARESET),                        //
        .RXLPMEN                        (rxlpmen),                              // 
        .RXLPMHFHOLD                    ( 1'd0),                                // 
        .RXLPMHFOVRDEN                  ( 1'd0),                                // 
        .RXLPMLFHOLD                    ( 1'd0),                                // 
        .RXLPMLFKLOVRDEN                ( 1'd0),                                // 
        .TXQPIBIASEN                    ( 1'd0),                                // 
        .TXQPISTRONGPDOWN               ( 1'd0),                                // 
        .TXQPIWEAKPUP                   ( 1'd0),                                // 
        .RXQPIEN                        ( 1'd0),                                // 
        .PMARSVDIN                      ( 5'd0),                                // 
        .PMARSVDIN2                     ( 5'd0),                                // GTX 
        .GTRSVD                         (16'd0),                                // 
                                                                                
        .TXQPISENP                      (),                                     // 
        .TXQPISENN                      (),                                     // 
        .RXQPISENP                      (),                                     // 
        .RXQPISENN                      (),                                     // 
        .DMONITOROUT                    (dmonitorout[7:0]),                     // GTX 8-bits
                                                                                
        //---------- PCS -------------------------------------------------------                
        .TXPCSRESET                     (GT_TXPCSRESET),                        //
        .RXPCSRESET                     (GT_RXPCSRESET),                        //
        .PCSRSVDIN                      (16'd0),                                // [0]: 1 = TXRATE async, [1]: 1 = RXRATE async  
        .PCSRSVDIN2                     ( 5'd0),                                // 
                                                                                
        .PCSRSVDOUT                     (),                                     // 
        //---------- CDR -------------------------------------------------------                
        .RXCDRRESET                     (GT_RXCDRRESET),                        //
        .RXCDRRESETRSV                  (1'd0),                                 // 
        .RXCDRFREQRESET                 (GT_RXCDRFREQRESET),                    // 
        .RXCDRHOLD                      (1'b0),                                 //
        .RXCDROVRDEN                    (1'd0),                                 // 
                                                                                
        //---------- DFE -------------------------------------------------------                
        .RXDFELPMRESET                  (GT_RXDFELPMRESET),                     //  
        .RXDFECM1EN                     (1'd0),                                 // 
        .RXDFEVSEN                      (1'd0),                                 // 
        .RXDFETAP2HOLD                  (1'd0),                                 // 
        .RXDFETAP2OVRDEN                (1'd0),                                 // 
        .RXDFETAP3HOLD                  (1'd0),                                 // 
        .RXDFETAP3OVRDEN                (1'd0),                                 // 
        .RXDFETAP4HOLD                  (1'd0),                                 // 
        .RXDFETAP4OVRDEN                (1'd0),                                 // 
        .RXDFETAP5HOLD                  (1'd0),                                 // 
        .RXDFETAP5OVRDEN                (1'd0),                                 // 
        .RXDFEAGCHOLD                   (GT_RX_CONVERGE),                       // Optimized for GES, Set to 1 after convergence 
        .RXDFEAGCOVRDEN                 (1'd0),                                 // 
        .RXDFELFHOLD                    (1'd0),                                 // 
        .RXDFELFOVRDEN                  (1'd1),                                 // Optimized for GES
        .RXDFEUTHOLD                    (1'd0),                                 // 
        .RXDFEUTOVRDEN                  (1'd0),                                 // 
        .RXDFEVPHOLD                    (1'd0),                                 // 
        .RXDFEVPOVRDEN                  (1'd0),                                 // 
        .RXDFEXYDEN                     (1'd0),                                 // 
        .RXDFEXYDHOLD                   (1'd0),                                 // GTX 
        .RXDFEXYDOVRDEN                 (1'd0),                                 // GTX
        .RXMONITORSEL                   (2'd0),                                 //
                                                                                
        .RXMONITOROUT                   (),                                     // 
             
        //---------- OS --------------------------------------------------------         
        .RXOSHOLD                       (1'd0),                                 // 
        .RXOSOVRDEN                     (1'd0),                                 //        
                                                                                
        //---------- Eye Scan --------------------------------------------------                
        .EYESCANRESET                   (GT_EYESCANRESET),                      // 
        .EYESCANMODE                    (1'd0),                                 // 
        .EYESCANTRIGGER                 (1'b0),                                 //
                                                                                
        .EYESCANDATAERROR               (GT_EYESCANDATAERROR),                  //
                                                                                
        //---------- TX Buffer -------------------------------------------------                
        .TXBUFSTATUS                    (),                                     //
                                                                                
        //---------- RX Buffer -------------------------------------------------                
        .RXBUFRESET                     (GT_RXBUFRESET),                        //
                                                                                
        .RXBUFSTATUS                    (GT_RXBUFSTATUS),                       //
                                                                                
        //---------- TX Sync ---------------------------------------------------                
        .TXPHDLYRESET                   (1'd0),                                 //
        .TXPHDLYTSTCLK                  (1'd0),                                 //
        .TXPHALIGN                      (GT_TXPHALIGN),                         // 
        .TXPHALIGNEN                    (GT_TXPHALIGNEN),                       //  
        .TXPHDLYPD                      (1'd0),                                 // 
        .TXPHINIT                       (GT_TXPHINIT),                          //  
        .TXPHOVRDEN                     (1'd0),                                 //
        .TXDLYBYPASS                    (GT_TXDLYBYPASS),                       //  
        .TXDLYSRESET                    (GT_TXDLYSRESET),                       // 
        .TXDLYEN                        (GT_TXDLYEN),                           //  
        .TXDLYOVRDEN                    (1'd0),                                 //
        .TXDLYHOLD                      (1'd0),                                 // 
        .TXDLYUPDOWN                    (1'd0),                                 //
                                                                                
        .TXPHALIGNDONE                  (GT_TXPHALIGNDONE),                     // 
        .TXPHINITDONE                   (GT_TXPHINITDONE),                      // 
        .TXDLYSRESETDONE                (GT_TXDLYSRESETDONE),                   //
                                                                                
        //---------- RX Sync ---------------------------------------------------                  
        .RXPHDLYRESET                   (1'd0),                                 //
        .RXPHALIGN                      (GT_RXPHALIGN),                         //
        .RXPHALIGNEN                    (GT_RXPHALIGNEN),                       //
        .RXPHDLYPD                      (1'd0),                                 // 
        .RXPHOVRDEN                     (1'd0),                                 // 
        .RXDLYBYPASS                    (GT_RXDLYBYPASS),                       //  
        .RXDLYSRESET                    (GT_RXDLYSRESET),                       // 
        .RXDLYEN                        (GT_RXDLYEN),                           // 
        .RXDLYOVRDEN                    (1'd0),                                 //
        .RXDDIEN                        (GT_RXDDIEN),                           //
                                                                                
        .RXPHALIGNDONE                  (GT_RXPHALIGNDONE),                     //  
        .RXPHMONITOR                    (),                                     //
        .RXPHSLIPMONITOR                (),                                     // 
        .RXDLYSRESETDONE                (GT_RXDLYSRESETDONE),                   // 
                                                                                
        //---------- Comma Alignment -------------------------------------------                 
        .RXCOMMADETEN                   ( 1'd1),                                //
        .RXMCOMMAALIGNEN                (!GT_GEN3),                             // 0 = disable comma alignment in Gen3
        .RXPCOMMAALIGNEN                (!GT_GEN3),                             // 0 = disable comma alignment in Gen3
        .RXSLIDE                        ( GT_RXSLIDE),                          //
                                                                                
        .RXCOMMADET                     (GT_RXCOMMADET),                        //
        .RXCHARISCOMMA                  (rxchariscomma),                        // 
        .RXBYTEISALIGNED                (GT_RXBYTEISALIGNED),                   //
        .RXBYTEREALIGN                  (GT_RXBYTEREALIGN),                     //
                                                                                
        //---------- Channel Bonding -------------------------------------------                
        .RXCHBONDEN                     (GT_RXCHBONDEN),                        //
        .RXCHBONDI                      (GT_RXCHBONDI),                         //
        .RXCHBONDLEVEL                  (GT_RXCHBONDLEVEL),                     //
        .RXCHBONDMASTER                 (GT_RXCHBONDMASTER),                    //
        .RXCHBONDSLAVE                  (GT_RXCHBONDSLAVE),                     //
                                                                                
        .RXCHANBONDSEQ                  (),                                     //
        .RXCHANISALIGNED                (GT_RXCHANISALIGNED),                   //
        .RXCHANREALIGN                  (),                                     //
        .RXCHBONDO                      (GT_RXCHBONDO),                         //
                                                                                
        //---------- Clock Correction  -----------------------------------------                
        .RXCLKCORCNT                    (),                                     //
                                                                                
        //---------- 8b10b -----------------------------------------------------                
        .TX8B10BBYPASS                  (8'd0),                                 //
        .TX8B10BEN                      (!GT_GEN3),                             // 0 = disable TX 8b10b in Gen3
        .RX8B10BEN                      (!GT_GEN3),                             // 0 = disable RX 8b10b in Gen3
                                                                                
        .RXDISPERR                      (GT_RXDISPERR),                         //
        .RXNOTINTABLE                   (GT_RXNOTINTABLE),                      //
                                                                                
        //---------- 64b/66b & 64b/67b -----------------------------------------                  
        .TXHEADER                       (3'd0),                                 //
        .TXSEQUENCE                     (7'd0),                                 //
        .TXSTARTSEQ                     (1'd0),                                 //                                                              
        .RXGEARBOXSLIP                  (1'd0),                                 //
                                                                                
        .TXGEARBOXREADY                 (),                                     // 
        .RXDATAVALID                    (),                                     //
        .RXHEADER                       (),                                     //
        .RXHEADERVALID                  (),                                     //
        .RXSTARTOFSEQ                   (),                                     //
                                                                                
        //---------- PRBS/Loopback ---------------------------------------------                
        .TXPRBSSEL                      (GT_TXPRBSSEL),                         //
        .RXPRBSSEL                      (GT_RXPRBSSEL),                         //
        .TXPRBSFORCEERR                 (GT_TXPRBSFORCEERR),                    //
        .RXPRBSCNTRESET                 (GT_RXPRBSCNTRESET),                    // 
        .LOOPBACK                       (GT_LOOPBACK),                          // 
                                                                                
        .RXPRBSERR                      (GT_RXPRBSERR),                         //
                                                                                
        //---------- OOB -------------------------------------------------------                
        .TXCOMINIT                      (1'd0),                                 //
        .TXCOMSAS                       (1'd0),                                 //
        .TXCOMWAKE                      (1'd0),                                 //
        .RXOOBRESET                     (1'd0),                                 // 
                                                                                
        .TXCOMFINISH                    (),                                     //
        .RXCOMINITDET                   (),                                     //
        .RXCOMSASDET                    (),                                     //
        .RXCOMWAKEDET                   (),                                     //
                                                                                
        //---------- MISC ------------------------------------------------------                
        .SETERRSTATUS                   ( 1'd0),                                // 
        .TXDIFFPD                       ( 1'd0),                                // 
        .TXPISOPD                       ( 1'd0),                                // 
        .TSTIN                          (20'hFFFFF),                            //  
                                                                                
        .TSTOUT                         ()                                      // GTX
    
    );
    
    //---------- Default -------------------------------------------------------
    assign dmonitorout[14:8] = 7'd0;                                            // GTH GTP
    assign GT_TXSYNCOUT      = 1'd0;                                            // GTH GTP  
    assign GT_TXSYNCDONE     = 1'd0;                                            // GTH GTP 
    assign GT_RXSYNCOUT      = 1'd0;                                            // GTH GTP
    assign GT_RXSYNCDONE     = 1'd0;                                            // GTH GTP
    assign GT_RXPMARESETDONE = 1'd0;                                            // GTH GTP               
            
    end

endgenerate
    
//---------- GT Wrapper Outputs ------------------------------------------------
assign GT_RXDATA        = rxdata [31:0];
assign GT_RXDATAK       = rxdatak[ 3:0];
assign GT_RXCHARISCOMMA = rxchariscomma[ 3:0];
assign GT_DMONITOROUT   = dmonitorout;

endmodule
