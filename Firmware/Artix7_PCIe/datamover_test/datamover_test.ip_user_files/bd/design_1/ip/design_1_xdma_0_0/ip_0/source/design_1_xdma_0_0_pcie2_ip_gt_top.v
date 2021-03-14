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
// File       : design_1_xdma_0_0_pcie2_ip_gt_top.v
// Version    : 3.3
//-- Description: GTX module for 7-series Integrated PCIe Block
//--
//--
//--
//--------------------------------------------------------------------------------

`timescale 1ns/1ns

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_gt_top #
(
   parameter               LINK_CAP_MAX_LINK_WIDTH = 8,          // 1 - x1 , 2 - x2 , 4 - x4 , 8 - x8
   parameter               REF_CLK_FREQ            = 0,          // 0 - 100 MHz , 1 - 125 MHz , 2 - 250 MHz
   parameter               USER_CLK2_DIV2          = "FALSE",    // "FALSE" => user_clk2 = user_clk
                                                                 // "TRUE" => user_clk2 = user_clk/2, where user_clk = 500 or 250 MHz.
   parameter  integer      USER_CLK_FREQ           = 3,          // 0 - 31.25 MHz , 1 - 62.5 MHz , 2 - 125 MHz , 3 - 250 MHz , 4 - 500Mhz
   parameter               PL_FAST_TRAIN           = "FALSE",    // Simulation Speedup
   parameter               PCIE_EXT_CLK            = "FALSE",    // Use External Clocking
   parameter               PCIE_USE_MODE           = "1.0",      // 1.0 = K325T IES, 1.1 = VX485T IES, 3.0 = K325T GES
   parameter               PCIE_GT_DEVICE          = "GTX",      // Select the GT to use (GTP for Artix-7, GTX for K7/V7)
   parameter               PCIE_PLL_SEL            = "CPLL",     // Select the PLL (CPLL or QPLL)
   parameter               PCIE_ASYNC_EN           = "FALSE",    // Asynchronous Clocking Enable
   parameter               PCIE_TXBUF_EN           = "FALSE",    // Use the Tansmit Buffer
   parameter               PCIE_EXT_GT_COMMON      = "FALSE", 
   parameter               EXT_CH_GT_DRP           = "FALSE",  
   parameter               TX_MARGIN_FULL_0        = 7'b1001111, // 1000 mV
   parameter               TX_MARGIN_FULL_1        = 7'b1001110, // 950 mV
   parameter               TX_MARGIN_FULL_2        = 7'b1001101, // 900 mV
   parameter               TX_MARGIN_FULL_3        = 7'b1001100, // 850 mV
   parameter               TX_MARGIN_FULL_4        = 7'b1000011, // 400 mV
   parameter               TX_MARGIN_LOW_0         = 7'b1000101, // 500 mV
   parameter               TX_MARGIN_LOW_1         = 7'b1000110, // 450 mV
   parameter               TX_MARGIN_LOW_2         = 7'b1000011, // 400 mV
   parameter               TX_MARGIN_LOW_3         = 7'b1000010, // 350 mV
   parameter               TX_MARGIN_LOW_4         = 7'b1000000,   

   parameter               PCIE_CHAN_BOND          = 0,
   parameter               TCQ                     = 1           //synthesis warning solved: parameter declaration becomes local
)
(
   //-----------------------------------------------------------------------------------------------------------------//
   // pl ltssm
   input   wire [5:0]                pl_ltssm_state         ,
   // Pipe Per-Link Signals
   input   wire                      pipe_tx_rcvr_det       ,
   input   wire                      pipe_tx_reset          ,
   input   wire                      pipe_tx_rate           ,
   input   wire                      pipe_tx_deemph         ,
   input   wire [2:0]                pipe_tx_margin         ,
   input   wire                      pipe_tx_swing          ,

   //-----------------------------------------------------------------------------------------------------------------//
   // Pipe Per-Lane Signals                                                                                           //
   //-----------------------------------------------------------------------------------------------------------------//


   // Pipe Per-Lane Signals - Lane 0
   output  wire [ 1:0]               pipe_rx0_char_is_k     ,
   output  wire [15:0]               pipe_rx0_data          ,
   output  wire                      pipe_rx0_valid         ,
   output  wire                      pipe_rx0_chanisaligned ,
   output  wire [ 2:0]               pipe_rx0_status        ,
   output  wire                      pipe_rx0_phy_status    ,
   output  wire                      pipe_rx0_elec_idle     ,
   input   wire                      pipe_rx0_polarity      ,
   input   wire                      pipe_tx0_compliance    ,
   input   wire [ 1:0]               pipe_tx0_char_is_k     ,
   input   wire [15:0]               pipe_tx0_data          ,
   input   wire                      pipe_tx0_elec_idle     ,
   input   wire [ 1:0]               pipe_tx0_powerdown     ,

   // Pipe Per-Lane Signals - Lane 1
   output  wire [ 1:0]               pipe_rx1_char_is_k     ,
   output  wire [15:0]               pipe_rx1_data          ,
   output  wire                      pipe_rx1_valid         ,
   output  wire                      pipe_rx1_chanisaligned ,
   output  wire [ 2:0]               pipe_rx1_status        ,
   output  wire                      pipe_rx1_phy_status    ,
   output  wire                      pipe_rx1_elec_idle     ,
   input   wire                      pipe_rx1_polarity      ,
   input   wire                      pipe_tx1_compliance    ,
   input   wire [ 1:0]               pipe_tx1_char_is_k     ,
   input   wire [15:0]               pipe_tx1_data          ,
   input   wire                      pipe_tx1_elec_idle     ,
   input   wire [ 1:0]               pipe_tx1_powerdown     ,

   // Pipe Per-Lane Signals - Lane 2
   output  wire [ 1:0]               pipe_rx2_char_is_k     ,
   output  wire [15:0]               pipe_rx2_data          ,
   output  wire                      pipe_rx2_valid         ,
   output  wire                      pipe_rx2_chanisaligned ,
   output  wire [ 2:0]               pipe_rx2_status        ,
   output  wire                      pipe_rx2_phy_status    ,
   output  wire                      pipe_rx2_elec_idle     ,
   input   wire                      pipe_rx2_polarity      ,
   input   wire                      pipe_tx2_compliance    ,
   input   wire [ 1:0]               pipe_tx2_char_is_k     ,
   input   wire [15:0]               pipe_tx2_data          ,
   input   wire                      pipe_tx2_elec_idle     ,
   input   wire [ 1:0]               pipe_tx2_powerdown     ,

   // Pipe Per-Lane Signals - Lane 3
   output  wire [ 1:0]               pipe_rx3_char_is_k     ,
   output  wire [15:0]               pipe_rx3_data          ,
   output  wire                      pipe_rx3_valid         ,
   output  wire                      pipe_rx3_chanisaligned ,
   output  wire [ 2:0]               pipe_rx3_status        ,
   output  wire                      pipe_rx3_phy_status    ,
   output  wire                      pipe_rx3_elec_idle     ,
   input   wire                      pipe_rx3_polarity      ,
   input   wire                      pipe_tx3_compliance    ,
   input   wire [ 1:0]               pipe_tx3_char_is_k     ,
   input   wire [15:0]               pipe_tx3_data          ,
   input   wire                      pipe_tx3_elec_idle     ,
   input   wire [ 1:0]               pipe_tx3_powerdown     ,

   // Pipe Per-Lane Signals - Lane 4
   output  wire [ 1:0]               pipe_rx4_char_is_k     ,
   output  wire [15:0]               pipe_rx4_data          ,
   output  wire                      pipe_rx4_valid         ,
   output  wire                      pipe_rx4_chanisaligned ,
   output  wire [ 2:0]               pipe_rx4_status        ,
   output  wire                      pipe_rx4_phy_status    ,
   output  wire                      pipe_rx4_elec_idle     ,
   input   wire                      pipe_rx4_polarity      ,
   input   wire                      pipe_tx4_compliance    ,
   input   wire [ 1:0]               pipe_tx4_char_is_k     ,
   input   wire [15:0]               pipe_tx4_data          ,
   input   wire                      pipe_tx4_elec_idle     ,
   input   wire [ 1:0]               pipe_tx4_powerdown     ,

   // Pipe Per-Lane Signals - Lane 5
   output  wire [ 1:0]               pipe_rx5_char_is_k     ,
   output  wire [15:0]               pipe_rx5_data          ,
   output  wire                      pipe_rx5_valid         ,
   output  wire                      pipe_rx5_chanisaligned ,
   output  wire [ 2:0]               pipe_rx5_status        ,
   output  wire                      pipe_rx5_phy_status    ,
   output  wire                      pipe_rx5_elec_idle     ,
   input   wire                      pipe_rx5_polarity      ,
   input   wire                      pipe_tx5_compliance    ,
   input   wire [ 1:0]               pipe_tx5_char_is_k     ,
   input   wire [15:0]               pipe_tx5_data          ,
   input   wire                      pipe_tx5_elec_idle     ,
   input   wire [ 1:0]               pipe_tx5_powerdown     ,

   // Pipe Per-Lane Signals - Lane 6
   output  wire [ 1:0]               pipe_rx6_char_is_k     ,
   output  wire [15:0]               pipe_rx6_data          ,
   output  wire                      pipe_rx6_valid         ,
   output  wire                      pipe_rx6_chanisaligned ,
   output  wire [ 2:0]               pipe_rx6_status        ,
   output  wire                      pipe_rx6_phy_status    ,
   output  wire                      pipe_rx6_elec_idle     ,
   input   wire                      pipe_rx6_polarity      ,
   input   wire                      pipe_tx6_compliance    ,
   input   wire [ 1:0]               pipe_tx6_char_is_k     ,
   input   wire [15:0]               pipe_tx6_data          ,
   input   wire                      pipe_tx6_elec_idle     ,
   input   wire [ 1:0]               pipe_tx6_powerdown     ,

   // Pipe Per-Lane Signals - Lane 7
   output  wire [ 1:0]               pipe_rx7_char_is_k     ,
   output  wire [15:0]               pipe_rx7_data          ,
   output  wire                      pipe_rx7_valid         ,
   output  wire                      pipe_rx7_chanisaligned ,
   output  wire [ 2:0]               pipe_rx7_status        ,
   output  wire                      pipe_rx7_phy_status    ,
   output  wire                      pipe_rx7_elec_idle     ,
   input   wire                      pipe_rx7_polarity      ,
   input   wire                      pipe_tx7_compliance    ,
   input   wire [ 1:0]               pipe_tx7_char_is_k     ,
   input   wire [15:0]               pipe_tx7_data          ,
   input   wire                      pipe_tx7_elec_idle     ,
   input   wire [ 1:0]               pipe_tx7_powerdown     ,

   // PCI Express signals
   output  wire [ (LINK_CAP_MAX_LINK_WIDTH-1):0] pci_exp_txn            ,
   output  wire [ (LINK_CAP_MAX_LINK_WIDTH-1):0] pci_exp_txp            ,
   input   wire [ (LINK_CAP_MAX_LINK_WIDTH-1):0] pci_exp_rxn            ,
   input   wire [ (LINK_CAP_MAX_LINK_WIDTH-1):0] pci_exp_rxp            ,

   // Non PIPE signals
   input   wire                                  sys_clk                ,
   input   wire                                  sys_rst_n              ,
   input   wire                                  PIPE_MMCM_RST_N        ,
   output  wire                                  pipe_clk               ,
   output  wire                                  user_clk               ,
   output  wire                                  user_clk2              ,

//----------- Shared Logic Internal--------------------------------------

  output                                        INT_PCLK_OUT_SLAVE,     // PCLK       | PCLK
  output                                        INT_RXUSRCLK_OUT,       // RXUSERCLK
  output  [(LINK_CAP_MAX_LINK_WIDTH-1):0]       INT_RXOUTCLK_OUT,       // RX recovered clock
  output                                        INT_DCLK_OUT,           // DCLK       | DCLK
  output                                        INT_USERCLK1_OUT,       // Optional user clock
  output                                        INT_USERCLK2_OUT,       // Optional user clock
  output                                        INT_OOBCLK_OUT,         // OOB        | OOB
  output                                        INT_MMCM_LOCK_OUT,      // Async      | Async
  output  [1:0]                                 INT_QPLLLOCK_OUT,
  output  [1:0]                                 INT_QPLLOUTCLK_OUT,
  output  [1:0]                                 INT_QPLLOUTREFCLK_OUT,
  input   [(LINK_CAP_MAX_LINK_WIDTH-1):0]       INT_PCLK_SEL_SLAVE,

  // Shared Logic External

 //---------- External GT COMMON Ports ----------------------
  input   [11:0]                                qpll_drp_crscode,
  input   [17:0]                                qpll_drp_fsm,
  input   [1:0]                                 qpll_drp_done,
  input   [1:0]                                 qpll_drp_reset,
  input   [1:0]                                 qpll_qplllock,
  input   [1:0]                                 qpll_qplloutclk,
  input   [1:0]                                 qpll_qplloutrefclk,
  output                                        qpll_qplld,
  output  [1:0]                                 qpll_qpllreset,
  output                                        qpll_drp_clk,
  output                                        qpll_drp_rst_n,
  output                                        qpll_drp_ovrd,
  output                                        qpll_drp_gen3,
  output                                        qpll_drp_start,

  //---------- External Clock Ports ----------------------
  input                                         PIPE_PCLK_IN,           // PCLK       | PCLK
  input                                         PIPE_RXUSRCLK_IN,       // RXUSERCLK
  input  [LINK_CAP_MAX_LINK_WIDTH-1:0]          PIPE_RXOUTCLK_IN,       // RX recovered clock
  input                                         PIPE_DCLK_IN,           // DCLK       | DCLK
  input                                         PIPE_USERCLK1_IN,       // Optional user clock
  input                                         PIPE_USERCLK2_IN,       // Optional user clock
  input                                         PIPE_OOBCLK_IN,         // OOB        | OOB
  input                                         PIPE_MMCM_LOCK_IN,      // Async      | Async
  output                                        PIPE_TXOUTCLK_OUT,      // PCLK       | PCLK
  output [LINK_CAP_MAX_LINK_WIDTH-1:0]          PIPE_RXOUTCLK_OUT,      // RX recovered clock (for debug only)
  output [LINK_CAP_MAX_LINK_WIDTH-1:0]          PIPE_PCLK_SEL_OUT,      // PCLK       | PCLK
  output                                        PIPE_GEN3_OUT ,          // PCLK       | PCLK

//-----------TRANSCEIVER DEBUG--------------------------------

  output      [4:0]                             PIPE_RST_FSM,
  output      [11:0]                            PIPE_QRST_FSM,
  output      [(LINK_CAP_MAX_LINK_WIDTH*5)-1:0] PIPE_RATE_FSM,
  output      [(LINK_CAP_MAX_LINK_WIDTH*6)-1:0] PIPE_SYNC_FSM_TX,
  output      [(LINK_CAP_MAX_LINK_WIDTH*7)-1:0] PIPE_SYNC_FSM_RX,
  output      [(LINK_CAP_MAX_LINK_WIDTH*7)-1:0] PIPE_DRP_FSM,

  output                                        PIPE_RST_IDLE,
  output                                        PIPE_QRST_IDLE,
  output                                        PIPE_RATE_IDLE,
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    PIPE_EYESCANDATAERROR,
  output     [(LINK_CAP_MAX_LINK_WIDTH*3)-1:0]  PIPE_RXSTATUS,
  output     [(LINK_CAP_MAX_LINK_WIDTH*15)-1:0] PIPE_DMONITOROUT,

  //---------- Debug Ports -------------------------------
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    PIPE_CPLL_LOCK,
  output     [(LINK_CAP_MAX_LINK_WIDTH-1)>>2:0] PIPE_QPLL_LOCK,
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    PIPE_RXPMARESETDONE,       
  output     [(LINK_CAP_MAX_LINK_WIDTH*3)-1:0]  PIPE_RXBUFSTATUS,         
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    PIPE_TXPHALIGNDONE,       
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    PIPE_TXPHINITDONE,        
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    PIPE_TXDLYSRESETDONE,    
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    PIPE_RXPHALIGNDONE,      
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    PIPE_RXDLYSRESETDONE,     
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    PIPE_RXSYNCDONE,       
  output     [(LINK_CAP_MAX_LINK_WIDTH*8)-1:0]  PIPE_RXDISPERR,       
  output     [(LINK_CAP_MAX_LINK_WIDTH*8)-1:0]  PIPE_RXNOTINTABLE,      
  output     [(LINK_CAP_MAX_LINK_WIDTH)-1:0]    PIPE_RXCOMMADET,        

  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     PIPE_DEBUG_0,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     PIPE_DEBUG_1,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     PIPE_DEBUG_2,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     PIPE_DEBUG_3,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     PIPE_DEBUG_4,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     PIPE_DEBUG_5,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     PIPE_DEBUG_6,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     PIPE_DEBUG_7,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     PIPE_DEBUG_8,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     PIPE_DEBUG_9,
  output      [31:0]                            PIPE_DEBUG,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     PIPE_JTAG_RDY,

  input       [ 2:0]                            PIPE_TXPRBSSEL,
  input       [ 2:0]                            PIPE_RXPRBSSEL,
  input                                         PIPE_TXPRBSFORCEERR,
  input                                         PIPE_RXPRBSCNTRESET,
  input       [ 2:0]                            PIPE_LOOPBACK,
  output      [LINK_CAP_MAX_LINK_WIDTH-1:0]     PIPE_RXPRBSERR,
  input       [LINK_CAP_MAX_LINK_WIDTH-1:0]     PIPE_TXINHIBIT,

  //-----------Channel DRP----------------------------------------
  output                                          ext_ch_gt_drpclk,
  input        [(LINK_CAP_MAX_LINK_WIDTH*9)-1:0] ext_ch_gt_drpaddr,
  input        [LINK_CAP_MAX_LINK_WIDTH-1:0]     ext_ch_gt_drpen,
  input        [(LINK_CAP_MAX_LINK_WIDTH*16)-1:0]ext_ch_gt_drpdi,
  input        [LINK_CAP_MAX_LINK_WIDTH-1:0]     ext_ch_gt_drpwe,

  output       [(LINK_CAP_MAX_LINK_WIDTH*16)-1:0]ext_ch_gt_drpdo,
  output       [LINK_CAP_MAX_LINK_WIDTH-1:0]     ext_ch_gt_drprdy,

  output  wire                      phy_rdy_n
);


  localparam                         USERCLK2_FREQ   =  (USER_CLK2_DIV2 == "FALSE") ? USER_CLK_FREQ :
                                                        (USER_CLK_FREQ == 4) ? 3 :
                                                        (USER_CLK_FREQ == 3) ? 2 :
                                                         USER_CLK_FREQ;

  localparam                         PCIE_LPM_DFE    = (PL_FAST_TRAIN == "TRUE") ? "DFE" : "LPM";
  localparam                         PCIE_LINK_SPEED = (PL_FAST_TRAIN == "TRUE") ? 2 : 3;

  // The parameter PCIE_OOBCLK_MODE_ENABLE value should be "0" for simulation and for synthesis it should be 1
  //localparam                         PCIE_OOBCLK_MODE_ENABLE = (PL_FAST_TRAIN == "TRUE") ? 0 : 1;  
  localparam                         PCIE_OOBCLK_MODE_ENABLE = 1;  

  localparam              PCIE_TX_EIDLE_ASSERT_DELAY = (PL_FAST_TRAIN == "TRUE") ? 3'd4 : 3'd2;

  wire [  7:0]                       gt_rx_phy_status_wire        ;
  wire [  7:0]                       gt_rxchanisaligned_wire      ;
  wire [ 31:0]                       gt_rx_data_k_wire            ;
  wire [255:0]                       gt_rx_data_wire              ;
  wire [  7:0]                       gt_rx_elec_idle_wire         ;
  wire [ 23:0]                       gt_rx_status_wire            ;
  wire [  7:0]                       gt_rx_valid_wire             ;
  wire [  7:0]                       gt_rx_polarity               ;
  wire [ 15:0]                       gt_power_down                ;
  wire [  7:0]                       gt_tx_char_disp_mode         ;
  wire [ 31:0]                       gt_tx_data_k                 ;
  wire [255:0]                       gt_tx_data                   ;
  wire                               gt_tx_detect_rx_loopback     ;
  wire [  7:0]                       gt_tx_elec_idle              ;
  wire [  7:0]                       gt_rx_elec_idle_reset        ;
  wire [LINK_CAP_MAX_LINK_WIDTH-1:0] phystatus_rst                ;
  wire                               clock_locked                 ;

  wire [  7:0]                       gt_rx_phy_status_wire_filter ;
  wire [ 31:0]                       gt_rx_data_k_wire_filter     ;
  wire [255:0]                       gt_rx_data_wire_filter       ;
  wire [  7:0]                       gt_rx_elec_idle_wire_filter  ;
  wire [ 23:0]                       gt_rx_status_wire_filter     ;
  wire [  7:0]                       gt_rx_valid_wire_filter      ;

  wire [LINK_CAP_MAX_LINK_WIDTH-1:0] gt_eyescandataerror          ;
  wire                               pipe_clk_int;
  reg                                phy_rdy_n_int;

  reg                                reg_clock_locked;
  wire                               all_phystatus_rst;

reg [5:0] pl_ltssm_state_q;

always @(posedge pipe_clk_int or negedge clock_locked) begin

  if (!clock_locked)
    pl_ltssm_state_q <= #TCQ 6'b0;
  else
    pl_ltssm_state_q <= #TCQ pl_ltssm_state;

end

  assign pipe_clk = pipe_clk_int ;

  wire                               plm_in_l0 = (pl_ltssm_state_q == 6'h16);
  wire                               plm_in_rl = (pl_ltssm_state_q == 6'h1c);
  wire                               plm_in_dt = (pl_ltssm_state_q == 6'h2d);
  wire                               plm_in_rs = (pl_ltssm_state_q == 6'h1f);

//-------------RX FILTER Instantiation----------------------------------------------------------//
genvar i;
generate for (i=0; i<LINK_CAP_MAX_LINK_WIDTH; i=i+1)
 begin : gt_rx_valid_filter

design_1_xdma_0_0_pcie2_ip_gt_rx_valid_filter_7x # (
     .CLK_COR_MIN_LAT(28)
   )
   GT_RX_VALID_FILTER_7x_inst (

     .USER_RXCHARISK   ( gt_rx_data_k_wire [(2*i)+1 + (2*i):(2*i)+ (2*i)] ),           //O
     .USER_RXDATA      ( gt_rx_data_wire [(16*i)+15+(16*i) :(16*i)+0 + (16*i)] ),      //O
     .USER_RXVALID     ( gt_rx_valid_wire [i] ),                                       //O
     .USER_RXELECIDLE  ( gt_rx_elec_idle_wire [i] ),                                   //O
     .USER_RX_STATUS   ( gt_rx_status_wire [(3*i)+2:(3*i)] ),                          //O
     .USER_RX_PHY_STATUS ( gt_rx_phy_status_wire [i] ),                                //O

     .GT_RXCHARISK     ( gt_rx_data_k_wire_filter [(2*i)+1+ (2*i):2*i+ (2*i)] ),       //I
     .GT_RXDATA        ( gt_rx_data_wire_filter [(16*i)+15+(16*i) :(16*i)+0+(16*i)] ), //I
     .GT_RXVALID       ( gt_rx_valid_wire_filter [i] ),                                //I
     .GT_RXELECIDLE    ( gt_rx_elec_idle_wire_filter [i] ),                            //I
     .GT_RX_STATUS     ( gt_rx_status_wire_filter [(3*i)+2:(3*i)] ),                   //I
     .GT_RX_PHY_STATUS ( gt_rx_phy_status_wire_filter [i] ),

     .PLM_IN_L0        ( plm_in_l0 ),                                                  //I
     .PLM_IN_RS        ( plm_in_rs ),                                                  //I
     .USER_CLK         ( pipe_clk_int ),                                               //I
     .RESET            ( phy_rdy_n_int )                                               //I
   );


 end
endgenerate

  //---------- GT Instantiation ---------------------------------------------------------------
design_1_xdma_0_0_pcie2_ip_pipe_wrapper #
  (
    .PCIE_SIM_MODE                  ( PL_FAST_TRAIN ),
 
    // synthesis translate_off
    .PCIE_SIM_SPEEDUP               ( "TRUE" ),
    // synthesis translate_on

    .PCIE_EXT_CLK                   ( PCIE_EXT_CLK ),
    .PCIE_TXBUF_EN                  ( PCIE_TXBUF_EN ),
    .PCIE_EXT_GT_COMMON             ( PCIE_EXT_GT_COMMON ),
    .EXT_CH_GT_DRP                  ( EXT_CH_GT_DRP ),
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
    .PCIE_ASYNC_EN                  ( PCIE_ASYNC_EN ),
    .PCIE_CHAN_BOND                 ( PCIE_CHAN_BOND ),
    .PCIE_PLL_SEL                   ( PCIE_PLL_SEL ),
    .PCIE_GT_DEVICE                 ( PCIE_GT_DEVICE ),
    .PCIE_USE_MODE                  ( PCIE_USE_MODE ),
    .PCIE_LANE                      ( LINK_CAP_MAX_LINK_WIDTH ),
    .PCIE_LPM_DFE                   ( PCIE_LPM_DFE ),
    .PCIE_LINK_SPEED                ( PCIE_LINK_SPEED ),
    .PCIE_TX_EIDLE_ASSERT_DELAY     ( PCIE_TX_EIDLE_ASSERT_DELAY ),
    .PCIE_OOBCLK_MODE               ( PCIE_OOBCLK_MODE_ENABLE ),
    .PCIE_REFCLK_FREQ               ( REF_CLK_FREQ ),
    .PCIE_USERCLK1_FREQ             ( USER_CLK_FREQ +1 ),
    .PCIE_USERCLK2_FREQ             ( USERCLK2_FREQ +1 )

  ) pipe_wrapper_i (

    //---------- PIPE Clock & Reset Ports ------------------
    .PIPE_CLK                        ( sys_clk ),
    .PIPE_RESET_N                    ( sys_rst_n ),
    .PIPE_PCLK                       ( pipe_clk_int ),

    //---------- PIPE TX Data Ports ------------------
    .PIPE_TXDATA                    ( gt_tx_data[((32*LINK_CAP_MAX_LINK_WIDTH)-1):0] ),
    .PIPE_TXDATAK                   ( gt_tx_data_k[((4*LINK_CAP_MAX_LINK_WIDTH)-1):0] ),

    .PIPE_TXP                       ( pci_exp_txp[((LINK_CAP_MAX_LINK_WIDTH)-1):0] ),
    .PIPE_TXN                       ( pci_exp_txn[((LINK_CAP_MAX_LINK_WIDTH)-1):0] ),

    //---------- PIPE RX Data Ports ------------------
    .PIPE_RXP                       ( pci_exp_rxp[((LINK_CAP_MAX_LINK_WIDTH)-1):0] ),
    .PIPE_RXN                       ( pci_exp_rxn[((LINK_CAP_MAX_LINK_WIDTH)-1):0] ),

    .PIPE_RXDATA                    ( gt_rx_data_wire_filter[((32*LINK_CAP_MAX_LINK_WIDTH)-1):0] ),
    .PIPE_RXDATAK                   ( gt_rx_data_k_wire_filter[((4*LINK_CAP_MAX_LINK_WIDTH)-1):0] ),

    //---------- PIPE Command Ports ------------------
    .PIPE_TXDETECTRX                ( gt_tx_detect_rx_loopback ),
    .PIPE_TXELECIDLE                ( gt_tx_elec_idle[((LINK_CAP_MAX_LINK_WIDTH)-1):0] ),
    .PIPE_TXCOMPLIANCE              ( gt_tx_char_disp_mode[((LINK_CAP_MAX_LINK_WIDTH)-1):0] ),
    .PIPE_RXPOLARITY                ( gt_rx_polarity[((LINK_CAP_MAX_LINK_WIDTH)-1):0] ),
    .PIPE_POWERDOWN                 ( gt_power_down[((2*LINK_CAP_MAX_LINK_WIDTH)-1):0] ),
    .PIPE_RATE                      ( {1'b0,pipe_tx_rate} ),

    //---------- PIPE Electrical Command Ports ------------------
    .PIPE_TXMARGIN                  ( pipe_tx_margin[2:0] ),
    .PIPE_TXSWING                   ( pipe_tx_swing ),
    .PIPE_TXDEEMPH                  ( {(LINK_CAP_MAX_LINK_WIDTH){pipe_tx_deemph}}),
    .PIPE_TXEQ_CONTROL              ( {2*LINK_CAP_MAX_LINK_WIDTH{1'b0}} ),
    .PIPE_TXEQ_PRESET               ( {4*LINK_CAP_MAX_LINK_WIDTH{1'b0}} ),
    .PIPE_TXEQ_PRESET_DEFAULT       ( {4*LINK_CAP_MAX_LINK_WIDTH{1'b0}} ),

    .PIPE_RXEQ_CONTROL              ( {2*LINK_CAP_MAX_LINK_WIDTH{1'b0}} ),
    .PIPE_RXEQ_PRESET               ( {3*LINK_CAP_MAX_LINK_WIDTH{1'b0}} ),
    .PIPE_RXEQ_LFFS                 ( {6*LINK_CAP_MAX_LINK_WIDTH{1'b0}} ),
    .PIPE_RXEQ_TXPRESET             ( {4*LINK_CAP_MAX_LINK_WIDTH{1'b0}} ),
    .PIPE_RXEQ_USER_EN              ( {1*LINK_CAP_MAX_LINK_WIDTH{1'b0}} ),
    .PIPE_RXEQ_USER_TXCOEFF         ( {18*LINK_CAP_MAX_LINK_WIDTH{1'b0}} ),
    .PIPE_RXEQ_USER_MODE            ( {1*LINK_CAP_MAX_LINK_WIDTH{1'b0}} ),
    .PIPE_TXEQ_COEFF                ( ),
    .PIPE_TXEQ_DEEMPH               ( {6*LINK_CAP_MAX_LINK_WIDTH{1'b0}} ),
    .PIPE_TXEQ_FS                   ( ),
    .PIPE_TXEQ_LF                   ( ),
    .PIPE_TXEQ_DONE                 ( ),

    .PIPE_RXEQ_NEW_TXCOEFF          ( ),
    .PIPE_RXEQ_LFFS_SEL             ( ),
    .PIPE_RXEQ_ADAPT_DONE           ( ),
    .PIPE_RXEQ_DONE                 ( ),

    //---------- PIPE Status Ports -------------------
    .PIPE_RXVALID                   ( gt_rx_valid_wire_filter[((LINK_CAP_MAX_LINK_WIDTH)-1):0] ),
    .PIPE_PHYSTATUS                 ( gt_rx_phy_status_wire_filter[((LINK_CAP_MAX_LINK_WIDTH)-1):0] ),
    .PIPE_PHYSTATUS_RST             ( phystatus_rst ),
    .PIPE_RXELECIDLE                ( gt_rx_elec_idle_wire_filter[((LINK_CAP_MAX_LINK_WIDTH)-1):0] ),
    .PIPE_EYESCANDATAERROR          ( gt_eyescandataerror[((LINK_CAP_MAX_LINK_WIDTH)-1):0] ),
    .PIPE_RXSTATUS                  ( gt_rx_status_wire_filter[((3*LINK_CAP_MAX_LINK_WIDTH)-1):0] ),

    .INT_PCLK_OUT_SLAVE             (INT_PCLK_OUT_SLAVE   ),           
    .INT_RXUSRCLK_OUT               (INT_RXUSRCLK_OUT     ),    
    .INT_RXOUTCLK_OUT               (INT_RXOUTCLK_OUT     ),         
    .INT_DCLK_OUT                   (INT_DCLK_OUT         ),           
    .INT_USERCLK1_OUT               (INT_USERCLK1_OUT     ),      
    .INT_USERCLK2_OUT               (INT_USERCLK2_OUT     ),       
    .INT_OOBCLK_OUT                 (INT_OOBCLK_OUT       ),     
    .INT_MMCM_LOCK_OUT              (INT_MMCM_LOCK_OUT    ),        
    .INT_QPLLLOCK_OUT               (INT_QPLLLOCK_OUT     ),        
    .INT_QPLLOUTCLK_OUT             (INT_QPLLOUTCLK_OUT   ),        
    .INT_QPLLOUTREFCLK_OUT          (INT_QPLLOUTREFCLK_OUT),         
    .INT_PCLK_SEL_SLAVE             (INT_PCLK_SEL_SLAVE   ),    
    //---------- PIPE User Ports ---------------------------
    .PIPE_MMCM_RST_N                ( PIPE_MMCM_RST_N ),        // Async      | Async

    .PIPE_RXSLIDE                   ( {1*LINK_CAP_MAX_LINK_WIDTH{1'b0}} ),

    .PIPE_PCLK_LOCK                 ( clock_locked ),
    .PIPE_RXCDRLOCK                 ( ),
    .PIPE_USERCLK1                  ( user_clk ),
    .PIPE_USERCLK2                  ( user_clk2 ),
    .PIPE_RXUSRCLK                  ( ),

    .PIPE_RXOUTCLK                  ( ),
    .PIPE_TXSYNC_DONE               ( ),
    .PIPE_RXSYNC_DONE               ( ),
    .PIPE_GEN3_RDY                  ( ),
    .PIPE_RXCHANISALIGNED           ( gt_rxchanisaligned_wire[LINK_CAP_MAX_LINK_WIDTH-1:0] ),
    .PIPE_ACTIVE_LANE               ( ),

    //---------- External Clock Ports ---------------------------
    .PIPE_PCLK_IN                   ( PIPE_PCLK_IN ),
    .PIPE_RXUSRCLK_IN               ( PIPE_RXUSRCLK_IN ),

    .PIPE_RXOUTCLK_IN               ( PIPE_RXOUTCLK_IN ),
    .PIPE_DCLK_IN                   ( PIPE_DCLK_IN ),
    .PIPE_USERCLK1_IN               ( PIPE_USERCLK1_IN ),
    .PIPE_USERCLK2_IN               ( PIPE_USERCLK2_IN ),
    .PIPE_OOBCLK_IN                 ( PIPE_OOBCLK_IN ),
    .PIPE_JTAG_EN                   ( 1'b0 ),
    .PIPE_JTAG_RDY                  ( PIPE_JTAG_RDY ),
    .PIPE_MMCM_LOCK_IN              ( PIPE_MMCM_LOCK_IN ),

    .PIPE_TXOUTCLK_OUT              ( PIPE_TXOUTCLK_OUT ),
    .PIPE_RXOUTCLK_OUT              ( PIPE_RXOUTCLK_OUT ),
    .PIPE_PCLK_SEL_OUT              ( PIPE_PCLK_SEL_OUT ),
    .PIPE_GEN3_OUT                  ( PIPE_GEN3_OUT ),
 //--------TRANSCEIVER DEBUG EOU------------------
   .EXT_CH_GT_DRPCLK          (ext_ch_gt_drpclk),
   .EXT_CH_GT_DRPADDR         (ext_ch_gt_drpaddr),
   .EXT_CH_GT_DRPEN           (ext_ch_gt_drpen),
   .EXT_CH_GT_DRPDI           (ext_ch_gt_drpdi),
   .EXT_CH_GT_DRPWE           (ext_ch_gt_drpwe),
   .EXT_CH_GT_DRPDO           (ext_ch_gt_drpdo),
   .EXT_CH_GT_DRPRDY          (ext_ch_gt_drprdy),

   //---------- External GT COMMON Ports ----------------------
    .QPLL_DRP_CRSCODE         ( qpll_drp_crscode ),
    .QPLL_DRP_FSM             ( qpll_drp_fsm ),
    .QPLL_DRP_DONE            ( qpll_drp_done ),
    .QPLL_DRP_RESET           ( qpll_drp_reset ),
    .QPLL_QPLLLOCK            ( qpll_qplllock ),
    .QPLL_QPLLOUTCLK          ( qpll_qplloutclk ),
    .QPLL_QPLLOUTREFCLK       ( qpll_qplloutrefclk ),
    .QPLL_QPLLPD              ( qpll_qplld ),
    .QPLL_QPLLRESET           ( qpll_qpllreset ),
    .QPLL_DRP_CLK             ( qpll_drp_clk ),
    .QPLL_DRP_RST_N           ( qpll_drp_rst_n ),
    .QPLL_DRP_OVRD            ( qpll_drp_ovrd ),
    .QPLL_DRP_GEN3            ( qpll_drp_gen3 ),
    .QPLL_DRP_START           ( qpll_drp_start ),

  //---------- TRANSCEIVER DEBUG -----------------------
    .PIPE_TXPRBSSEL           ( PIPE_TXPRBSSEL ),
    .PIPE_RXPRBSSEL           ( PIPE_RXPRBSSEL ),
    .PIPE_TXPRBSFORCEERR      ( PIPE_TXPRBSFORCEERR ),
    .PIPE_RXPRBSCNTRESET      ( PIPE_RXPRBSCNTRESET ),
    .PIPE_LOOPBACK            ( PIPE_LOOPBACK ),
    .PIPE_RXPRBSERR           ( PIPE_RXPRBSERR ),
    .PIPE_TXINHIBIT           ( PIPE_TXINHIBIT ),

    .PIPE_RST_FSM             ( PIPE_RST_FSM ),
    .PIPE_QRST_FSM            ( PIPE_QRST_FSM ),
    .PIPE_RATE_FSM            ( PIPE_RATE_FSM ),
    .PIPE_SYNC_FSM_TX         ( PIPE_SYNC_FSM_TX ),
    .PIPE_SYNC_FSM_RX         ( PIPE_SYNC_FSM_RX ),
    .PIPE_QDRP_FSM            ( ),
    .PIPE_RXEQ_FSM            ( ),
    .PIPE_TXEQ_FSM            ( ),
    .PIPE_DRP_FSM             ( PIPE_DRP_FSM ),

    .PIPE_RST_IDLE            ( PIPE_RST_IDLE ),
    .PIPE_QRST_IDLE           ( PIPE_QRST_IDLE ),
    .PIPE_RATE_IDLE           ( PIPE_RATE_IDLE ),

    .PIPE_CPLL_LOCK           ( PIPE_CPLL_LOCK ),
    .PIPE_QPLL_LOCK           ( PIPE_QPLL_LOCK ),
    .PIPE_RXPMARESETDONE      ( PIPE_RXPMARESETDONE ),       
    .PIPE_RXBUFSTATUS         ( PIPE_RXBUFSTATUS    ),         
    .PIPE_TXPHALIGNDONE       ( PIPE_TXPHALIGNDONE  ),       
    .PIPE_TXPHINITDONE        ( PIPE_TXPHINITDONE   ),        
    .PIPE_TXDLYSRESETDONE     ( PIPE_TXDLYSRESETDONE),    
    .PIPE_RXPHALIGNDONE       ( PIPE_RXPHALIGNDONE  ),      
    .PIPE_RXDLYSRESETDONE     ( PIPE_RXDLYSRESETDONE),     
    .PIPE_RXSYNCDONE          ( PIPE_RXSYNCDONE     ),       
    .PIPE_RXDISPERR           ( PIPE_RXDISPERR      ),       
    .PIPE_RXNOTINTABLE        ( PIPE_RXNOTINTABLE   ),      
    .PIPE_RXCOMMADET          ( PIPE_RXCOMMADET     ),        
    //---------- Debug Ports -------------------------------
    .PIPE_DEBUG_0             ( PIPE_DEBUG_0  ),
    .PIPE_DEBUG_1             ( PIPE_DEBUG_1  ),
    .PIPE_DEBUG_2             ( PIPE_DEBUG_2  ),
    .PIPE_DEBUG_3             ( PIPE_DEBUG_3  ),
    .PIPE_DEBUG_4             ( PIPE_DEBUG_4  ),
    .PIPE_DEBUG_5             ( PIPE_DEBUG_5  ),
    .PIPE_DEBUG_6             ( PIPE_DEBUG_6  ),
    .PIPE_DEBUG_7             ( PIPE_DEBUG_7  ),
    .PIPE_DEBUG_8             ( PIPE_DEBUG_8  ),
    .PIPE_DEBUG_9             ( PIPE_DEBUG_9  ),
    .PIPE_DEBUG               ( PIPE_DEBUG    ),
    .PIPE_DMONITOROUT         ( PIPE_DMONITOROUT )
);

assign PIPE_RXSTATUS = gt_rx_status_wire_filter;
assign PIPE_EYESCANDATAERROR = gt_eyescandataerror;

assign pipe_rx0_phy_status = gt_rx_phy_status_wire[0] ;
assign pipe_rx1_phy_status = (LINK_CAP_MAX_LINK_WIDTH >= 2 ) ? gt_rx_phy_status_wire[1] : 1'b0;
assign pipe_rx2_phy_status = (LINK_CAP_MAX_LINK_WIDTH >= 4 ) ? gt_rx_phy_status_wire[2] : 1'b0;
assign pipe_rx3_phy_status = (LINK_CAP_MAX_LINK_WIDTH >= 4 ) ? gt_rx_phy_status_wire[3] : 1'b0;
assign pipe_rx4_phy_status = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_phy_status_wire[4] : 1'b0;
assign pipe_rx5_phy_status = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_phy_status_wire[5] : 1'b0;
assign pipe_rx6_phy_status = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_phy_status_wire[6] : 1'b0;
assign pipe_rx7_phy_status = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_phy_status_wire[7] : 1'b0;

assign pipe_rx0_chanisaligned = gt_rxchanisaligned_wire[0];
assign pipe_rx1_chanisaligned = (LINK_CAP_MAX_LINK_WIDTH >= 2 ) ? gt_rxchanisaligned_wire[1] : 1'b0 ;
assign pipe_rx2_chanisaligned = (LINK_CAP_MAX_LINK_WIDTH >= 4 ) ? gt_rxchanisaligned_wire[2] : 1'b0 ;
assign pipe_rx3_chanisaligned = (LINK_CAP_MAX_LINK_WIDTH >= 4 ) ? gt_rxchanisaligned_wire[3] : 1'b0 ;
assign pipe_rx4_chanisaligned = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rxchanisaligned_wire[4] : 1'b0 ;
assign pipe_rx5_chanisaligned = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rxchanisaligned_wire[5] : 1'b0 ;
assign pipe_rx6_chanisaligned = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rxchanisaligned_wire[6] : 1'b0 ;
assign pipe_rx7_chanisaligned = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rxchanisaligned_wire[7] : 1'b0 ;

//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

generate
  if (LINK_CAP_MAX_LINK_WIDTH == 1)
   begin : rx_link_width_x1

     assign pipe_rx0_char_is_k =  {gt_rx_data_k_wire[1], gt_rx_data_k_wire[0]};
     assign pipe_rx1_char_is_k =  2'b0 ;
     assign pipe_rx2_char_is_k =  2'b0 ;
     assign pipe_rx3_char_is_k =  2'b0 ;
     assign pipe_rx4_char_is_k =  2'b0 ;
     assign pipe_rx5_char_is_k =  2'b0 ;
     assign pipe_rx6_char_is_k =  2'b0 ;
     assign pipe_rx7_char_is_k =  2'b0 ;

     //synthesis warning solved: for nets below does not have driver; --assigned remaining bits of net gt_rx_data_wire to '0'
     assign gt_rx_data_k_wire[3:2]   = 2'b0; 
     assign gt_rx_data_k_wire[5:4]   = 2'b0; 
     assign gt_rx_data_k_wire[7:6]   = 2'b0; 
     assign gt_rx_data_k_wire[9:8]   = 2'b0; 
     assign gt_rx_data_k_wire[11:10] = 2'b0; 
     assign gt_rx_data_k_wire[13:12] = 2'b0; 
     assign gt_rx_data_k_wire[15:14] = 2'b0; 
     assign gt_rx_data_k_wire[17:16] = 2'b0; 
     assign gt_rx_data_k_wire[19:18] = 2'b0; 
     assign gt_rx_data_k_wire[21:20] = 2'b0; 
     assign gt_rx_data_k_wire[23:22] = 2'b0; 
     assign gt_rx_data_k_wire[25:24] = 2'b0; 
     assign gt_rx_data_k_wire[27:26] = 2'b0; 
     assign gt_rx_data_k_wire[29:28] = 2'b0; 
     assign gt_rx_data_k_wire[31:30] = 2'b0; 

     assign pipe_rx0_data = {gt_rx_data_wire[ 15: 8], gt_rx_data_wire[ 7: 0]};
     assign pipe_rx1_data = 16'h0 ;
     assign pipe_rx2_data = 16'h0 ;
     assign pipe_rx3_data = 16'h0 ;
     assign pipe_rx4_data = 16'h0 ;
     assign pipe_rx5_data = 16'h0 ;
     assign pipe_rx6_data = 16'h0 ;
     assign pipe_rx7_data = 16'h0 ;

     //synthesis warning solved: for nets below does not have driver; --assigned remaining bits of net gt_rx_data_wire to '0'
     assign gt_rx_data_wire[31:16]   = 16'b0; 
     assign gt_rx_data_wire[47:32]   = 16'b0; 
     assign gt_rx_data_wire[63:48]   = 16'b0;   
     assign gt_rx_data_wire[79:64]   = 16'b0;   
     assign gt_rx_data_wire[95:80]   = 16'b0;   
     assign gt_rx_data_wire[111:96]  = 16'b0;   
     assign gt_rx_data_wire[127:112] = 16'b0; 
     assign gt_rx_data_wire[143:128] = 16'b0; 
     assign gt_rx_data_wire[159:144] = 16'b0; 
     assign gt_rx_data_wire[175:160] = 16'b0; 
     assign gt_rx_data_wire[191:176] = 16'b0; 
     assign gt_rx_data_wire[207:192] = 16'b0; 
     assign gt_rx_data_wire[223:208] = 16'b0; 
     assign gt_rx_data_wire[239:224] = 16'b0; 
     assign gt_rx_data_wire[255:240] = 16'b0; 

   end // rx_link_width_x1
  else if (LINK_CAP_MAX_LINK_WIDTH == 2)
   begin : rx_link_width_x2

     assign pipe_rx0_char_is_k =  {gt_rx_data_k_wire[1], gt_rx_data_k_wire[0]};
     assign pipe_rx1_char_is_k =  {gt_rx_data_k_wire[5], gt_rx_data_k_wire[4]};
     assign pipe_rx2_char_is_k =  2'b0 ;
     assign pipe_rx3_char_is_k =  2'b0 ;
     assign pipe_rx4_char_is_k =  2'b0 ;
     assign pipe_rx5_char_is_k =  2'b0 ;
     assign pipe_rx6_char_is_k =  2'b0 ;
     assign pipe_rx7_char_is_k =  2'b0 ;

     //synthesis warning solved: for nets below does not have driver; --assigned remaining bits of net gt_rx_data_wire to '0'
     assign gt_rx_data_k_wire[3:2]   = 2'b0; 
     assign gt_rx_data_k_wire[7:6]   = 2'b0; 
     assign gt_rx_data_k_wire[9:8]   = 2'b0; 
     assign gt_rx_data_k_wire[11:10] = 2'b0; 
     assign gt_rx_data_k_wire[13:12] = 2'b0; 
     assign gt_rx_data_k_wire[15:14] = 2'b0; 
     assign gt_rx_data_k_wire[17:16] = 2'b0; 
     assign gt_rx_data_k_wire[19:18] = 2'b0; 
     assign gt_rx_data_k_wire[21:20] = 2'b0; 
     assign gt_rx_data_k_wire[23:22] = 2'b0; 
     assign gt_rx_data_k_wire[25:24] = 2'b0; 
     assign gt_rx_data_k_wire[27:26] = 2'b0; 
     assign gt_rx_data_k_wire[29:28] = 2'b0; 
     assign gt_rx_data_k_wire[31:30] = 2'b0; 

     assign pipe_rx0_data = {gt_rx_data_wire[15: 8], gt_rx_data_wire[ 7: 0]};
     assign pipe_rx1_data = {gt_rx_data_wire[47:40], gt_rx_data_wire[39:32]} ;
     assign pipe_rx2_data = 16'h0 ;
     assign pipe_rx3_data = 16'h0 ;
     assign pipe_rx4_data = 16'h0 ;
     assign pipe_rx5_data = 16'h0 ;
     assign pipe_rx6_data = 16'h0 ;
     assign pipe_rx7_data = 16'h0 ;

     //synthesis warning solved: for nets below does not have driver; --assigned remaining bits of net gt_rx_data_wire to '0'
     assign gt_rx_data_wire[31:16]   = 16'b0; 
     assign gt_rx_data_wire[63:48]   = 16'b0;   
     assign gt_rx_data_wire[79:64]   = 16'b0;   
     assign gt_rx_data_wire[95:80]   = 16'b0;   
     assign gt_rx_data_wire[111:96]  = 16'b0;   
     assign gt_rx_data_wire[127:112] = 16'b0; 
     assign gt_rx_data_wire[143:128] = 16'b0; 
     assign gt_rx_data_wire[159:144] = 16'b0; 
     assign gt_rx_data_wire[175:160] = 16'b0; 
     assign gt_rx_data_wire[191:176] = 16'b0; 
     assign gt_rx_data_wire[207:192] = 16'b0; 
     assign gt_rx_data_wire[223:208] = 16'b0; 
     assign gt_rx_data_wire[239:224] = 16'b0; 
     assign gt_rx_data_wire[255:240] = 16'b0; 

   end // rx_link_width_x2
  else if (LINK_CAP_MAX_LINK_WIDTH == 4)
   begin : rx_link_width_x4

     assign pipe_rx0_char_is_k =  {gt_rx_data_k_wire[1], gt_rx_data_k_wire[0]};
     assign pipe_rx1_char_is_k =  {gt_rx_data_k_wire[5], gt_rx_data_k_wire[4]};
     assign pipe_rx2_char_is_k =  {gt_rx_data_k_wire[9], gt_rx_data_k_wire[8]};
     assign pipe_rx3_char_is_k =  {gt_rx_data_k_wire[13], gt_rx_data_k_wire[12]};
     assign pipe_rx4_char_is_k =  2'b0 ;
     assign pipe_rx5_char_is_k =  2'b0 ;
     assign pipe_rx6_char_is_k =  2'b0 ;
     assign pipe_rx7_char_is_k =  2'b0 ;

     //synthesis warning solved: for nets below does not have driver; --assigned remaining bits of net gt_rx_data_wire to '0'
     assign gt_rx_data_k_wire[3:2]   = 2'b0; 
     assign gt_rx_data_k_wire[7:6]   = 2'b0; 
     assign gt_rx_data_k_wire[11:10] = 2'b0; 
     assign gt_rx_data_k_wire[15:14] = 2'b0; 
     assign gt_rx_data_k_wire[17:16] = 2'b0; 
     assign gt_rx_data_k_wire[19:18] = 2'b0; 
     assign gt_rx_data_k_wire[21:20] = 2'b0; 
     assign gt_rx_data_k_wire[23:22] = 2'b0; 
     assign gt_rx_data_k_wire[25:24] = 2'b0; 
     assign gt_rx_data_k_wire[27:26] = 2'b0; 
     assign gt_rx_data_k_wire[29:28] = 2'b0; 
     assign gt_rx_data_k_wire[31:30] = 2'b0; 

     assign pipe_rx0_data = {gt_rx_data_wire[15: 8], gt_rx_data_wire[ 7: 0]};
     assign pipe_rx1_data = {gt_rx_data_wire[47:40], gt_rx_data_wire[39:32]};
     assign pipe_rx2_data = {gt_rx_data_wire[79:72], gt_rx_data_wire[71:64]};
     assign pipe_rx3_data = {gt_rx_data_wire[111:104], gt_rx_data_wire[103:96]};
     assign pipe_rx4_data = 16'h0 ;
     assign pipe_rx5_data = 16'h0 ;
     assign pipe_rx6_data = 16'h0 ;
     assign pipe_rx7_data = 16'h0 ;

     //synthesis warning solved: for nets below does not have driver; --assigned remaining bits of net gt_rx_data_wire to '0'
     assign gt_rx_data_wire[31:16]   = 16'b0; 
     assign gt_rx_data_wire[63:48]   = 16'b0;   
     assign gt_rx_data_wire[95:80]   = 16'b0;   
     assign gt_rx_data_wire[127:112] = 16'b0; 
     assign gt_rx_data_wire[143:128] = 16'b0; 
     assign gt_rx_data_wire[159:144] = 16'b0; 
     assign gt_rx_data_wire[175:160] = 16'b0; 
     assign gt_rx_data_wire[191:176] = 16'b0; 
     assign gt_rx_data_wire[207:192] = 16'b0; 
     assign gt_rx_data_wire[223:208] = 16'b0; 
     assign gt_rx_data_wire[239:224] = 16'b0; 
     assign gt_rx_data_wire[255:240] = 16'b0; 

  end // rx_link_width_x4
  else 
   begin : rx_link_width_x8

     assign pipe_rx0_char_is_k =  {gt_rx_data_k_wire[1], gt_rx_data_k_wire[0]};
     assign pipe_rx1_char_is_k =  {gt_rx_data_k_wire[5], gt_rx_data_k_wire[4]};
     assign pipe_rx2_char_is_k =  {gt_rx_data_k_wire[9], gt_rx_data_k_wire[8]};
     assign pipe_rx3_char_is_k =  {gt_rx_data_k_wire[13], gt_rx_data_k_wire[12]};
     assign pipe_rx4_char_is_k =  {gt_rx_data_k_wire[17], gt_rx_data_k_wire[16]};
     assign pipe_rx5_char_is_k =  {gt_rx_data_k_wire[21], gt_rx_data_k_wire[20]};
     assign pipe_rx6_char_is_k =  {gt_rx_data_k_wire[25], gt_rx_data_k_wire[24]};
     assign pipe_rx7_char_is_k =  {gt_rx_data_k_wire[29], gt_rx_data_k_wire[28]};

     //synthesis warning solved: for nets below does not have driver; --assigned remaining bits of net gt_rx_data_wire to '0'
     assign gt_rx_data_k_wire[3:2]   = 2'b0; 
     assign gt_rx_data_k_wire[7:6]   = 2'b0; 
     assign gt_rx_data_k_wire[11:10] = 2'b0; 
     assign gt_rx_data_k_wire[15:14] = 2'b0; 
     assign gt_rx_data_k_wire[19:18] = 2'b0; 
     assign gt_rx_data_k_wire[23:22] = 2'b0; 
     assign gt_rx_data_k_wire[27:26] = 2'b0; 
     assign gt_rx_data_k_wire[31:30] = 2'b0; 

     assign pipe_rx0_data = {gt_rx_data_wire[15: 8], gt_rx_data_wire[ 7: 0]};
     assign pipe_rx1_data = {gt_rx_data_wire[47:40], gt_rx_data_wire[39:32]};
     assign pipe_rx2_data = {gt_rx_data_wire[79:72], gt_rx_data_wire[71:64]};
     assign pipe_rx3_data = {gt_rx_data_wire[111:104], gt_rx_data_wire[103:96]};
     assign pipe_rx4_data = {gt_rx_data_wire[143:136], gt_rx_data_wire[135:128]};
     assign pipe_rx5_data = {gt_rx_data_wire[175:168], gt_rx_data_wire[167:160]};
     assign pipe_rx6_data = {gt_rx_data_wire[207:200], gt_rx_data_wire[199:192]};
     assign pipe_rx7_data = {gt_rx_data_wire[239:232], gt_rx_data_wire[231:224]};

     //synthesis warning solved: for nets below does not have driver; --assigned remaining bits of net gt_rx_data_wire to '0'
     assign gt_rx_data_wire[31:16]   = 16'b0; 
     assign gt_rx_data_wire[63:48]   = 16'b0;   
     assign gt_rx_data_wire[95:80]   = 16'b0;   
     assign gt_rx_data_wire[127:112] = 16'b0; 
     assign gt_rx_data_wire[159:144] = 16'b0; 
     assign gt_rx_data_wire[191:176] = 16'b0; 
     assign gt_rx_data_wire[223:208] = 16'b0; 
     assign gt_rx_data_wire[255:240] = 16'b0; 

  end // rx_link_width_x8
endgenerate

assign pipe_rx0_status = gt_rx_status_wire[ 2: 0];
assign pipe_rx1_status = (LINK_CAP_MAX_LINK_WIDTH >= 2 ) ? gt_rx_status_wire[ 5: 3] : 3'b0 ;
assign pipe_rx2_status = (LINK_CAP_MAX_LINK_WIDTH >= 4 ) ? gt_rx_status_wire[ 8: 6] : 3'b0 ;
assign pipe_rx3_status = (LINK_CAP_MAX_LINK_WIDTH >= 4 ) ? gt_rx_status_wire[11: 9] : 3'b0 ;
assign pipe_rx4_status = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_status_wire[14:12] : 3'b0 ;
assign pipe_rx5_status = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_status_wire[17:15] : 3'b0 ;
assign pipe_rx6_status = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_status_wire[20:18] : 3'b0 ;
assign pipe_rx7_status = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_status_wire[23:21] : 3'b0 ;

//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

assign pipe_rx0_elec_idle = gt_rx_elec_idle_wire[0];
assign pipe_rx1_elec_idle = (LINK_CAP_MAX_LINK_WIDTH >= 2 ) ? gt_rx_elec_idle_wire[1] : 1'b1 ;
assign pipe_rx2_elec_idle = (LINK_CAP_MAX_LINK_WIDTH >= 4 ) ? gt_rx_elec_idle_wire[2] : 1'b1 ;
assign pipe_rx3_elec_idle = (LINK_CAP_MAX_LINK_WIDTH >= 4 ) ? gt_rx_elec_idle_wire[3] : 1'b1 ;
assign pipe_rx4_elec_idle = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_elec_idle_wire[4] : 1'b1 ;
assign pipe_rx5_elec_idle = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_elec_idle_wire[5] : 1'b1 ;
assign pipe_rx6_elec_idle = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_elec_idle_wire[6] : 1'b1 ;
assign pipe_rx7_elec_idle = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_elec_idle_wire[7] : 1'b1 ;

assign pipe_rx0_valid = gt_rx_valid_wire[0];
assign pipe_rx1_valid = (LINK_CAP_MAX_LINK_WIDTH >= 2 ) ? gt_rx_valid_wire[1] : 1'b0 ;
assign pipe_rx2_valid = (LINK_CAP_MAX_LINK_WIDTH >= 4 ) ? gt_rx_valid_wire[2] : 1'b0 ;
assign pipe_rx3_valid = (LINK_CAP_MAX_LINK_WIDTH >= 4 ) ? gt_rx_valid_wire[3] : 1'b0 ;
assign pipe_rx4_valid = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_valid_wire[4] : 1'b0 ;
assign pipe_rx5_valid = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_valid_wire[5] : 1'b0 ;
assign pipe_rx6_valid = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_valid_wire[6] : 1'b0 ;
assign pipe_rx7_valid = (LINK_CAP_MAX_LINK_WIDTH >= 8 ) ? gt_rx_valid_wire[7] : 1'b0 ;

assign gt_rx_polarity[0] = pipe_rx0_polarity;
assign gt_rx_polarity[1] = pipe_rx1_polarity;
assign gt_rx_polarity[2] = pipe_rx2_polarity;
assign gt_rx_polarity[3] = pipe_rx3_polarity;
assign gt_rx_polarity[4] = pipe_rx4_polarity;
assign gt_rx_polarity[5] = pipe_rx5_polarity;
assign gt_rx_polarity[6] = pipe_rx6_polarity;
assign gt_rx_polarity[7] = pipe_rx7_polarity;

assign gt_power_down[ 1: 0] = pipe_tx0_powerdown;
assign gt_power_down[ 3: 2] = pipe_tx1_powerdown;
assign gt_power_down[ 5: 4] = pipe_tx2_powerdown;
assign gt_power_down[ 7: 6] = pipe_tx3_powerdown;
assign gt_power_down[ 9: 8] = pipe_tx4_powerdown;
assign gt_power_down[11:10] = pipe_tx5_powerdown;
assign gt_power_down[13:12] = pipe_tx6_powerdown;
assign gt_power_down[15:14] = pipe_tx7_powerdown;

assign gt_tx_char_disp_mode = {pipe_tx7_compliance,
                               pipe_tx6_compliance,
                               pipe_tx5_compliance,
                               pipe_tx4_compliance,
                               pipe_tx3_compliance,
                               pipe_tx2_compliance,
                               pipe_tx1_compliance,
                               pipe_tx0_compliance};


assign gt_tx_data_k = {2'd0,
                       pipe_tx7_char_is_k,
                       2'd0,
                       pipe_tx6_char_is_k,
                       2'd0,
                       pipe_tx5_char_is_k,
                       2'd0,
                       pipe_tx4_char_is_k,
                       2'd0,
                       pipe_tx3_char_is_k,
                       2'd0,
                       pipe_tx2_char_is_k,
                       2'd0,
                       pipe_tx1_char_is_k,
                       2'd0,
                       pipe_tx0_char_is_k};

assign gt_tx_data = {16'd0,
                     pipe_tx7_data,
                     16'd0,
                     pipe_tx6_data,
                     16'd0,
                     pipe_tx5_data,
                     16'd0,
                     pipe_tx4_data,
                     16'd0,
                     pipe_tx3_data,
                     16'd0,
                     pipe_tx2_data,
                     16'd0,
                     pipe_tx1_data,
                     16'd0,
                     pipe_tx0_data};

assign gt_tx_detect_rx_loopback = pipe_tx_rcvr_det;

assign gt_tx_elec_idle = {pipe_tx7_elec_idle,
                          pipe_tx6_elec_idle,
                          pipe_tx5_elec_idle,
                          pipe_tx4_elec_idle,
                          pipe_tx3_elec_idle,
                          pipe_tx2_elec_idle,
                          pipe_tx1_elec_idle,
                          pipe_tx0_elec_idle};

always @(posedge pipe_clk_int or negedge clock_locked) begin
  if (!clock_locked)
    reg_clock_locked <= #TCQ 1'b0;
  else
    reg_clock_locked <= #TCQ 1'b1;
end

always @(posedge pipe_clk_int) begin
  if (!reg_clock_locked)
    phy_rdy_n_int <= #TCQ 1'b0;
  else
    phy_rdy_n_int <= #TCQ all_phystatus_rst;
end

assign all_phystatus_rst = (&phystatus_rst[LINK_CAP_MAX_LINK_WIDTH-1:0]);
assign phy_rdy_n     = phy_rdy_n_int;

endmodule

