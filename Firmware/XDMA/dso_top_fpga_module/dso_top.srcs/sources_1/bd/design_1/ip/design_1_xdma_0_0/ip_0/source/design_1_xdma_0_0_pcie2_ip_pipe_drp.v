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
// File       : design_1_xdma_0_0_pcie2_ip_pipe_drp.v
// Version    : 3.3
//------------------------------------------------------------------------------
//  Filename     :  pipe_drp.v
//  Description  :  PIPE DRP Module for 7 Series Transceiver
//  Version      :  20.0
//------------------------------------------------------------------------------



`timescale 1ns / 1ps



//---------- PIPE DRP Module ---------------------------------------------------
module design_1_xdma_0_0_pcie2_ip_pipe_drp #
(

    parameter PCIE_GT_DEVICE       = "GTX",                                     // PCIe GT device
    parameter PCIE_USE_MODE        = "3.0",                                     // PCIe use mode
    parameter PCIE_ASYNC_EN        = "FALSE",                                   // PCIe async mode
    parameter PCIE_PLL_SEL         = "CPLL",                                    // PCIe PLL select for Gen1/Gen2 only
    parameter PCIE_AUX_CDR_GEN3_EN = "TRUE",                                    // PCIe AUX CDR Gen3 enable
    parameter PCIE_TXBUF_EN        = "FALSE",                                   // PCIe TX buffer enable for Gen1/Gen2 only
    parameter PCIE_RXBUF_EN        = "TRUE",                                    // PCIe RX buffer enable for Gen3      only
    parameter PCIE_TXSYNC_MODE     = 0,                                         // PCIe TX sync mode
    parameter PCIE_RXSYNC_MODE     = 0,                                         // PCIe RX sync mode
    parameter LOAD_CNT_MAX         = 2'd1,                                      // Load max count
    parameter INDEX_MAX            = 5'd21                                      // Index max count
    
)

(
    
    //---------- Input -------------------------------------
    input               DRP_CLK,
    input               DRP_RST_N,
    input               DRP_GTXRESET,
    input       [ 1:0]  DRP_RATE,
    input               DRP_X16X20_MODE,
    input               DRP_X16,
    input               DRP_START,
    input       [15:0]  DRP_DO,
    input               DRP_RDY,
    
    //---------- Output ------------------------------------
    output      [ 8:0]  DRP_ADDR,
    output              DRP_EN,  
    output      [15:0]  DRP_DI,   
    output              DRP_WE,
    output              DRP_DONE,
    output      [ 2:0]  DRP_FSM
    
);

    //---------- Input Registers ---------------------------
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 gtxreset_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [ 1:0]  rate_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 x16x20_mode_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 x16_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 start_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [15:0]  do_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rdy_reg1;
    
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 gtxreset_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [ 1:0]  rate_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 x16x20_mode_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 x16_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 start_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [15:0]  do_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rdy_reg2;
    
    //---------- Internal Signals --------------------------
    reg         [ 1:0]  load_cnt =  2'd0;
    reg         [ 4:0]  index    =  5'd0;
    reg                 mode     =  1'd0;
    reg         [ 8:0]  addr_reg =  9'd0;
    reg         [15:0]  di_reg   = 16'd0;
    
    //---------- Output Registers --------------------------
    reg                 done     =  1'd0;
    reg         [ 2:0]  fsm      =  0;      
                        
    //---------- DRP Address -------------------------------
    //  DRP access for *RXCDR_EIDLE includes 
    //    - [11] RXCDR_HOLD_DURING_EIDLE
    //    - [12] RXCDR_FR_RESET_ON_EIDLE
    //    - [13] RXCDR_PH_RESET_ON_EIDLE
    //------------------------------------------------------
    localparam          ADDR_PCS_RSVD_ATTR        = 9'h06F;
    localparam          ADDR_TXOUT_DIV            = 9'h088;
    localparam          ADDR_RXOUT_DIV            = 9'h088;
    localparam          ADDR_TX_DATA_WIDTH        = 9'h06B;            
    localparam          ADDR_TX_INT_DATAWIDTH     = 9'h06B;         
    localparam          ADDR_RX_DATA_WIDTH        = 9'h011;            
    localparam          ADDR_RX_INT_DATAWIDTH     = 9'h011;              
    localparam          ADDR_TXBUF_EN             = 9'h01C;           
    localparam          ADDR_RXBUF_EN             = 9'h09D;
    localparam          ADDR_TX_XCLK_SEL          = 9'h059;
    localparam          ADDR_RX_XCLK_SEL          = 9'h059;                 
    localparam          ADDR_CLK_CORRECT_USE      = 9'h044; 
    localparam          ADDR_TX_DRIVE_MODE        = 9'h019;
    localparam          ADDR_RXCDR_EIDLE          = 9'h0A7;  
    localparam          ADDR_RX_DFE_LPM_EIDLE     = 9'h01E;
    localparam          ADDR_PMA_RSV_A            = 9'h099;
    localparam          ADDR_PMA_RSV_B            = 9'h09A;
    localparam          ADDR_RXCDR_CFG_A          = 9'h0A8;
    localparam          ADDR_RXCDR_CFG_B          = 9'h0A9;
    localparam          ADDR_RXCDR_CFG_C          = 9'h0AA;
    localparam          ADDR_RXCDR_CFG_D          = 9'h0AB;
    localparam          ADDR_RXCDR_CFG_E          = 9'h0AC;
    localparam          ADDR_RXCDR_CFG_F          = 9'h0AD;  // GTH only
    
    //---------- DRP Mask ----------------------------------
    localparam          MASK_PCS_RSVD_ATTR        = 16'b1111111111111001;  // Unmask bit [ 2: 1]
    localparam          MASK_TXOUT_DIV            = 16'b1111111110001111;  // Unmask bit [ 6: 4]
    localparam          MASK_RXOUT_DIV            = 16'b1111111111111000;  // Unmask bit [ 2: 0]
    localparam          MASK_TX_DATA_WIDTH        = 16'b1111111111111000;  // Unmask bit [ 2: 0]   
    localparam          MASK_TX_INT_DATAWIDTH     = 16'b1111111111101111;  // Unmask bit [    4]
    localparam          MASK_RX_DATA_WIDTH        = 16'b1100011111111111;  // Unmask bit [13:11]  
    localparam          MASK_X16X20_RX_DATA_WIDTH = 16'b1111011111111111;  // Unmask bit [   11] // for x16 or x20 mode only 
    localparam          MASK_RX_INT_DATAWIDTH     = 16'b1011111111111111;  // Unmask bit [   14]  
    localparam          MASK_TXBUF_EN             = 16'b1011111111111111;  // Unmask bit [   14]  
    localparam          MASK_RXBUF_EN             = 16'b1111111111111101;  // Unmask bit [    1] 
    localparam          MASK_TX_XCLK_SEL          = 16'b1111111101111111;  // Unmask bit [    7]    
    localparam          MASK_RX_XCLK_SEL          = 16'b1111111110111111;  // Unmask bit [    6]       
    localparam          MASK_CLK_CORRECT_USE      = 16'b1011111111111111;  // Unmask bit [   14]
    localparam          MASK_TX_DRIVE_MODE        = 16'b1111111111100000;  // Unmask bit [  4:0]      
    localparam          MASK_RXCDR_EIDLE          = 16'b1111011111111111;  // Unmask bit [   11]  
    localparam          MASK_RX_DFE_LPM_EIDLE     = 16'b1011111111111111;  // Unmask bit [   14] 
    localparam          MASK_PMA_RSV_A            = 16'b0000000000000000;  // Unmask bit [15: 0]
    localparam          MASK_PMA_RSV_B            = 16'b0000000000000000;  // Unmask bit [15: 0]
    localparam          MASK_RXCDR_CFG_A          = 16'b0000000000000000;  // Unmask bit [15: 0]
    localparam          MASK_RXCDR_CFG_B          = 16'b0000000000000000;  // Unmask bit [15: 0]
    localparam          MASK_RXCDR_CFG_C          = 16'b0000000000000000;  // Unmask bit [15: 0]    
    localparam          MASK_RXCDR_CFG_D          = 16'b0000000000000000;  // Unmask bit [15: 0]  
    localparam          MASK_RXCDR_CFG_E_GTX      = 16'b1111111100000000;  // Unmask bit [ 7: 0]   
    localparam          MASK_RXCDR_CFG_E_GTH      = 16'b0000000000000000;  // Unmask bit [15: 0] 
    localparam          MASK_RXCDR_CFG_F_GTX      = 16'b1111111111111111;  // Unmask bit [     ] 
    localparam          MASK_RXCDR_CFG_F_GTH      = 16'b1111111111111000;  // Unmask bit [ 2: 0]
         
    //---------- DRP Data for PCIe Gen1 and Gen2 -----------
    localparam          GEN12_TXOUT_DIV           = (PCIE_PLL_SEL == "QPLL") ? 16'b0000000000100000 : 16'b0000000000010000;  // Divide by 4 or 2
    localparam          GEN12_RXOUT_DIV           = (PCIE_PLL_SEL == "QPLL") ? 16'b0000000000000010 : 16'b0000000000000001;  // Divide by 4 or 2
    localparam          GEN12_TX_DATA_WIDTH       = 16'b0000000000000011;  // 2-byte (16-bit) external data width   
    localparam          GEN12_TX_INT_DATAWIDTH    = 16'b0000000000000000;  // 2-byte (20-bit) internal data width
    localparam          GEN12_RX_DATA_WIDTH       = 16'b0001100000000000;  // 2-byte (16-bit) external data width
    localparam          GEN12_RX_INT_DATAWIDTH    = 16'b0000000000000000;  // 2-byte (20-bit) internal data width
    localparam          GEN12_TXBUF_EN            = 16'b0100000000000000;  // Use TX buffer if PCIE_TXBUF_EN == "TRUE"
    localparam          GEN12_RXBUF_EN            = 16'b0000000000000010;  // Use RX buffer 
    localparam          GEN12_TX_XCLK_SEL         = 16'b0000000000000000;  // Use TXOUT if PCIE_TXBUF_EN == "TRUE"
    localparam          GEN12_RX_XCLK_SEL         = 16'b0000000000000000;  // Use RXREC  
    localparam          GEN12_CLK_CORRECT_USE     = 16'b0100000000000000;  // Use clock correction
    localparam          GEN12_TX_DRIVE_MODE       = 16'b0000000000000001;  // Use PIPE   Gen1 and Gen2 mode    
    localparam          GEN12_RXCDR_EIDLE         = 16'b0000100000000000;  // Hold RXCDR during electrical idle 
    localparam          GEN12_RX_DFE_LPM_EIDLE    = 16'b0100000000000000;  // Hold RX DFE or LPM during electrical idle
    localparam          GEN12_PMA_RSV_A_GTX       = 16'b1000010010000000;  // 16'h8480
    localparam          GEN12_PMA_RSV_B_GTX       = 16'b0000000000000001;  // 16'h0001
    localparam          GEN12_PMA_RSV_A_GTH       = 16'b0000000000001000;  // 16'h0008
    localparam          GEN12_PMA_RSV_B_GTH       = 16'b0000000000000000;  // 16'h0000
    //----------
    localparam          GEN12_RXCDR_CFG_A_GTX     = 16'h0020;              // 16'h0020
    localparam          GEN12_RXCDR_CFG_B_GTX     = 16'h1020;              // 16'h1020
    localparam          GEN12_RXCDR_CFG_C_GTX     = 16'h23FF;              // 16'h23FF
    localparam          GEN12_RXCDR_CFG_D_GTX_S   = 16'h0000;              // 16'h0000 Sync
    localparam          GEN12_RXCDR_CFG_D_GTX_A   = 16'h8000;              // 16'h8000 Async    
    localparam          GEN12_RXCDR_CFG_E_GTX     = 16'h0003;              // 16'h0003
    localparam          GEN12_RXCDR_CFG_F_GTX     = 16'h0000;              // 16'h0000
    //----------
    localparam          GEN12_RXCDR_CFG_A_GTH_S   = 16'h0018;              // 16'h0018 Sync
    localparam          GEN12_RXCDR_CFG_A_GTH_A   = 16'h8018;              // 16'h8018 Async
    localparam          GEN12_RXCDR_CFG_B_GTH     = 16'hC208;              // 16'hC208
    localparam          GEN12_RXCDR_CFG_C_GTH     = 16'h2000;              // 16'h2000
    localparam          GEN12_RXCDR_CFG_D_GTH     = 16'h07FE;              // 16'h07FE
    localparam          GEN12_RXCDR_CFG_E_GTH     = 16'h0020;              // 16'h0020
    localparam          GEN12_RXCDR_CFG_F_GTH     = 16'h0000;              // 16'h0000  
    
    //---------- DRP Data for PCIe Gen3 --------------------                 
    localparam          GEN3_TXOUT_DIV            = 16'b0000000000000000;  // Divide by 1
    localparam          GEN3_RXOUT_DIV            = 16'b0000000000000000;  // Divide by 1
    localparam          GEN3_TX_DATA_WIDTH        = 16'b0000000000000100;  // 4-byte (32-bit) external data width                     
    localparam          GEN3_TX_INT_DATAWIDTH     = 16'b0000000000010000;  // 4-byte (32-bit) internal data width               
    localparam          GEN3_RX_DATA_WIDTH        = 16'b0010000000000000;  // 4-byte (32-bit) external data width                  
    localparam          GEN3_RX_INT_DATAWIDTH     = 16'b0100000000000000;  // 4-byte (32-bit) internal data width               
    localparam          GEN3_TXBUF_EN             = 16'b0000000000000000;  // Bypass TX buffer 
    localparam          GEN3_RXBUF_EN             = 16'b0000000000000000;  // Bypass RX buffer  
    localparam          GEN3_TX_XCLK_SEL          = 16'b0000000010000000;  // Use TXUSR  
    localparam          GEN3_RX_XCLK_SEL          = 16'b0000000001000000;  // Use RXUSR                         
    localparam          GEN3_CLK_CORRECT_USE      = 16'b0000000000000000;  // Bypass clock correction  
    localparam          GEN3_TX_DRIVE_MODE        = 16'b0000000000000010;  // Use PIPE Gen3 mode   
    localparam          GEN3_RXCDR_EIDLE          = 16'b0000000000000000;  // Disable Hold RXCDR during electrical idle 
    localparam          GEN3_RX_DFE_LPM_EIDLE     = 16'b0000000000000000;  // Disable RX DFE or LPM during electrical idle   
    localparam          GEN3_PMA_RSV_A_GTX        = 16'b0111000010000000;  // 16'h7080
    localparam          GEN3_PMA_RSV_B_GTX        = 16'b0000000000011110;  // 16'h001E
    localparam          GEN3_PMA_RSV_A_GTH        = 16'b0000000000001000;  // 16'h0008
    localparam          GEN3_PMA_RSV_B_GTH        = 16'b0000000000000000;  // 16'h0000   
    //---------- 
    localparam          GEN3_RXCDR_CFG_A_GTX      = 16'h0080;              // 16'h0080
    localparam          GEN3_RXCDR_CFG_B_GTX      = 16'h1010;              // 16'h1010
    localparam          GEN3_RXCDR_CFG_C_GTX      = 16'h0BFF;              // 16'h0BFF
    localparam          GEN3_RXCDR_CFG_D_GTX_S    = 16'h0000;              // 16'h0000 Sync
    localparam          GEN3_RXCDR_CFG_D_GTX_A    = 16'h8000;              // 16'h8000 Async    
    localparam          GEN3_RXCDR_CFG_E_GTX      = 16'h000B;              // 16'h000B
    localparam          GEN3_RXCDR_CFG_F_GTX      = 16'h0000;              // 16'h0000
    //----------                                 
  //localparam          GEN3_RXCDR_CFG_A_GTH_S    = 16'h0018;              // 16'h0018 Sync
  //localparam          GEN3_RXCDR_CFG_A_GTH_A    = 16'h8018;              // 16'h8018 Async
  //localparam          GEN3_RXCDR_CFG_B_GTH      = 16'hC208;              // 16'hC848
  //localparam          GEN3_RXCDR_CFG_C_GTH      = 16'h2000;              // 16'h1000
  //localparam          GEN3_RXCDR_CFG_D_GTH      = 16'h07FE;              // 16'h07FE v1.0 silicon
  //localparam          GEN3_RXCDR_CFG_D_GTH_AUX  = 16'h0FFE;              // 16'h07FE v2.0 silicon, [62:59] AUX CDR configuration
  //localparam          GEN3_RXCDR_CFG_E_GTH      = 16'h0020;              // 16'h0010
  //localparam          GEN3_RXCDR_CFG_F_GTH      = 16'h0000;              // 16'h0000 v1.0 silicon
  //localparam          GEN3_RXCDR_CFG_F_GTH_AUX  = 16'h0002;              // 16'h0000 v2.0 silicon, [81] AUX CDR enable
    //----------                                 
    localparam          GEN3_RXCDR_CFG_A_GTH_S    = 16'h0018;              // 16'h0018 Sync
    localparam          GEN3_RXCDR_CFG_A_GTH_A    = 16'h8018;              // 16'h8018 Async
    localparam          GEN3_RXCDR_CFG_B_GTH      = 16'hC848;              // 16'hC848
    localparam          GEN3_RXCDR_CFG_C_GTH      = 16'h1000;              // 16'h1000
    localparam          GEN3_RXCDR_CFG_D_GTH      = 16'h07FE;              // 16'h07FE v1.0 silicon
    localparam          GEN3_RXCDR_CFG_D_GTH_AUX  = 16'h0FFE;              // 16'h07FE v2.0 silicon, [62:59] AUX CDR configuration
    localparam          GEN3_RXCDR_CFG_E_GTH      = 16'h0010;              // 16'h0010
    localparam          GEN3_RXCDR_CFG_F_GTH      = 16'h0000;              // 16'h0000 v1.0 silicon
    localparam          GEN3_RXCDR_CFG_F_GTH_AUX  = 16'h0002;              // 16'h0000 v2.0 silicon, [81] AUX CDR enable
      
    //---------- DRP Data for PCIe Gen1, Gen2 and Gen3 -----    
    localparam          GEN123_PCS_RSVD_ATTR_A    = 16'b0000000000000000;  // Auto TX and RX sync mode
    localparam          GEN123_PCS_RSVD_ATTR_M_TX = 16'b0000000000000010;  // Manual TX sync mode
    localparam          GEN123_PCS_RSVD_ATTR_M_RX = 16'b0000000000000100;  // Manual RX sync mode
      
    //---------- DRP Data for x16 --------------------------
    localparam          X16_RX_DATAWIDTH   = 16'b0000000000000000;  // 2-byte (16-bit) internal data width
    
    //---------- DRP Data for x20 --------------------------                                  
    localparam          X20_RX_DATAWIDTH   = 16'b0000100000000000;  // 2-byte (20-bit) internal data width       
      
    //---------- DRP Data ----------------------------------     
    wire        [15:0]  data_txout_div;
    wire        [15:0]  data_rxout_div;
    wire        [15:0]  data_tx_data_width;               
    wire        [15:0]  data_tx_int_datawidth;            
    wire        [15:0]  data_rx_data_width;               
    wire        [15:0]  data_rx_int_datawidth;                
    wire        [15:0]  data_txbuf_en;        
    wire        [15:0]  data_rxbuf_en;        
    wire        [15:0]  data_tx_xclk_sel;
    wire        [15:0]  data_rx_xclk_sel;            
    wire        [15:0]  data_clk_correction_use; 
    wire        [15:0]  data_tx_drive_mode;
    wire        [15:0]  data_rxcdr_eidle;
    wire        [15:0]  data_rx_dfe_lpm_eidle;
    wire        [15:0]  data_pma_rsv_a;
    wire        [15:0]  data_pma_rsv_b;
    
    wire        [15:0]  data_rxcdr_cfg_a;
    wire        [15:0]  data_rxcdr_cfg_b; 
    wire        [15:0]  data_rxcdr_cfg_c;
    wire        [15:0]  data_rxcdr_cfg_d; 
    wire        [15:0]  data_rxcdr_cfg_e;
    wire        [15:0]  data_rxcdr_cfg_f;
        
    wire        [15:0]  data_pcs_rsvd_attr_a;  
    wire        [15:0]  data_pcs_rsvd_attr_m_tx; 
    wire        [15:0]  data_pcs_rsvd_attr_m_rx; 
    wire        [15:0]  data_pcs_rsvd_attr_m;   
                
    wire        [15:0]  data_x16x20_rx_datawidth;    
           
    //---------- FSM ---------------------------------------  
    localparam          FSM_IDLE  = 0;  
    localparam          FSM_LOAD  = 1;                           
    localparam          FSM_READ  = 2;
    localparam          FSM_RRDY  = 3;
    localparam          FSM_WRITE = 4;
    localparam          FSM_WRDY  = 5;    
    localparam          FSM_DONE  = 6;   

    
    
//---------- Input FF ----------------------------------------------------------
always @ (posedge DRP_CLK)
begin

    if (!DRP_RST_N)
        begin
        //---------- 1st Stage FF --------------------------
        gtxreset_reg1    <=  1'd0;
        rate_reg1        <=  2'd0;
        x16x20_mode_reg1 <=  1'd0;
        x16_reg1         <=  1'd0;
        do_reg1          <= 16'd0;
        rdy_reg1         <=  1'd0;
        start_reg1       <=  1'd0;
        //---------- 2nd Stage FF --------------------------
        gtxreset_reg2    <=  1'd0;
        rate_reg2        <=  2'd0;
        x16x20_mode_reg2 <=  1'd0;
        x16_reg2         <=  1'd0;
        do_reg2          <= 16'd0;
        rdy_reg2         <=  1'd0;
        start_reg2       <=  1'd0;
        end
        
    else
        begin
        //---------- 1st Stage FF --------------------------
        gtxreset_reg1    <= DRP_GTXRESET;
        rate_reg1        <= DRP_RATE;
        x16x20_mode_reg1 <= DRP_X16X20_MODE;
        x16_reg1         <= DRP_X16;
        do_reg1          <= DRP_DO;
        rdy_reg1         <= DRP_RDY;
        start_reg1       <= DRP_START;
        //---------- 2nd Stage FF --------------------------
        gtxreset_reg2    <= gtxreset_reg1;
        rate_reg2        <= rate_reg1;
        x16x20_mode_reg2 <= x16x20_mode_reg1;
        x16_reg2         <= x16_reg1;
        do_reg2          <= do_reg1;
        rdy_reg2         <= rdy_reg1;
        start_reg2       <= start_reg1;
        end
    
end  



//---------- Select DRP Data ---------------------------------------------------
assign data_txout_div          =  (rate_reg2 == 2'd2)                                ? GEN3_TXOUT_DIV        : GEN12_TXOUT_DIV;
assign data_rxout_div          =  (rate_reg2 == 2'd2)                                ? GEN3_RXOUT_DIV        : GEN12_RXOUT_DIV;
assign data_tx_data_width      =  (rate_reg2 == 2'd2)                                ? GEN3_TX_DATA_WIDTH    : GEN12_TX_DATA_WIDTH;
assign data_tx_int_datawidth   =  (rate_reg2 == 2'd2)                                ? GEN3_TX_INT_DATAWIDTH : GEN12_TX_INT_DATAWIDTH;
assign data_rx_data_width      =  (rate_reg2 == 2'd2)                                ? GEN3_RX_DATA_WIDTH    : GEN12_RX_DATA_WIDTH;

assign data_rx_int_datawidth   =  (rate_reg2 == 2'd2)                                ? GEN3_RX_INT_DATAWIDTH : GEN12_RX_INT_DATAWIDTH;

assign data_txbuf_en           = ((rate_reg2 == 2'd2) || (PCIE_TXBUF_EN == "FALSE")) ? GEN3_TXBUF_EN         : GEN12_TXBUF_EN;
assign data_rxbuf_en           = ((rate_reg2 == 2'd2) && (PCIE_RXBUF_EN == "FALSE")) ? GEN3_RXBUF_EN         : GEN12_RXBUF_EN;
assign data_tx_xclk_sel        = ((rate_reg2 == 2'd2) || (PCIE_TXBUF_EN == "FALSE")) ? GEN3_TX_XCLK_SEL      : GEN12_TX_XCLK_SEL;
assign data_rx_xclk_sel        = ((rate_reg2 == 2'd2) && (PCIE_RXBUF_EN == "FALSE")) ? GEN3_RX_XCLK_SEL      : GEN12_RX_XCLK_SEL;
assign data_clk_correction_use =  (rate_reg2 == 2'd2)                                ? GEN3_CLK_CORRECT_USE  : GEN12_CLK_CORRECT_USE;
assign data_tx_drive_mode      =  (rate_reg2 == 2'd2)                                ? GEN3_TX_DRIVE_MODE    : GEN12_TX_DRIVE_MODE;   
assign data_rxcdr_eidle        =  (rate_reg2 == 2'd2)                                ? GEN3_RXCDR_EIDLE      : GEN12_RXCDR_EIDLE;
assign data_rx_dfe_lpm_eidle   =  (rate_reg2 == 2'd2)                                ? GEN3_RX_DFE_LPM_EIDLE : GEN12_RX_DFE_LPM_EIDLE;
assign data_pma_rsv_a          =  (rate_reg2 == 2'd2)                                ? ((PCIE_GT_DEVICE == "GTH") ? GEN3_PMA_RSV_A_GTH  : GEN3_PMA_RSV_A_GTX) :
                                                                                       ((PCIE_GT_DEVICE == "GTH") ? GEN12_PMA_RSV_A_GTH : GEN12_PMA_RSV_A_GTX);
assign data_pma_rsv_b          =  (rate_reg2 == 2'd2)                                ? ((PCIE_GT_DEVICE == "GTH") ? GEN3_PMA_RSV_B_GTH  : GEN3_PMA_RSV_B_GTX) :
                                                                                       ((PCIE_GT_DEVICE == "GTH") ? GEN12_PMA_RSV_B_GTH : GEN12_PMA_RSV_B_GTX);

assign data_rxcdr_cfg_a = (rate_reg2 == 2'd2) ? ((PCIE_GT_DEVICE == "GTH") ? ((PCIE_ASYNC_EN == "TRUE") ? GEN3_RXCDR_CFG_A_GTH_A  : GEN3_RXCDR_CFG_A_GTH_S)  : GEN3_RXCDR_CFG_A_GTX) :
                                                ((PCIE_GT_DEVICE == "GTH") ? ((PCIE_ASYNC_EN == "TRUE") ? GEN12_RXCDR_CFG_A_GTH_A : GEN12_RXCDR_CFG_A_GTH_S) : GEN12_RXCDR_CFG_A_GTX);

assign data_rxcdr_cfg_b = (rate_reg2 == 2'd2) ? ((PCIE_GT_DEVICE == "GTH") ?  GEN3_RXCDR_CFG_B_GTH  : GEN3_RXCDR_CFG_B_GTX) :
                                                ((PCIE_GT_DEVICE == "GTH") ?  GEN12_RXCDR_CFG_B_GTH : GEN12_RXCDR_CFG_B_GTX);

assign data_rxcdr_cfg_c = (rate_reg2 == 2'd2) ? ((PCIE_GT_DEVICE == "GTH") ?  GEN3_RXCDR_CFG_C_GTH  : GEN3_RXCDR_CFG_C_GTX) :
                                                ((PCIE_GT_DEVICE == "GTH") ?  GEN12_RXCDR_CFG_C_GTH : GEN12_RXCDR_CFG_C_GTX);
                                                
assign data_rxcdr_cfg_d = (rate_reg2 == 2'd2) ? ((PCIE_GT_DEVICE == "GTH") ?  ((PCIE_AUX_CDR_GEN3_EN == "TRUE") ? GEN3_RXCDR_CFG_D_GTH_AUX : GEN3_RXCDR_CFG_D_GTH) : ((PCIE_ASYNC_EN == "TRUE") ? GEN3_RXCDR_CFG_D_GTX_A : GEN3_RXCDR_CFG_D_GTX_S)) :
                                                ((PCIE_GT_DEVICE == "GTH") ?  GEN12_RXCDR_CFG_D_GTH : ((PCIE_ASYNC_EN == "TRUE") ? GEN3_RXCDR_CFG_D_GTX_A : GEN3_RXCDR_CFG_D_GTX_S));

assign data_rxcdr_cfg_e = (rate_reg2 == 2'd2) ? ((PCIE_GT_DEVICE == "GTH") ?  GEN3_RXCDR_CFG_E_GTH  : GEN3_RXCDR_CFG_E_GTX) :
                                                ((PCIE_GT_DEVICE == "GTH") ?  GEN12_RXCDR_CFG_E_GTH : GEN12_RXCDR_CFG_E_GTX);
                                                
assign data_rxcdr_cfg_f = (rate_reg2 == 2'd2) ? ((PCIE_GT_DEVICE == "GTH") ?  ((PCIE_AUX_CDR_GEN3_EN == "TRUE") ? GEN3_RXCDR_CFG_F_GTH_AUX : GEN3_RXCDR_CFG_F_GTH) : GEN3_RXCDR_CFG_F_GTX) :
                                                ((PCIE_GT_DEVICE == "GTH") ?  GEN12_RXCDR_CFG_F_GTH : GEN12_RXCDR_CFG_F_GTX);

assign data_pcs_rsvd_attr_a    = GEN123_PCS_RSVD_ATTR_A;
assign data_pcs_rsvd_attr_m_tx = PCIE_TXSYNC_MODE ? GEN123_PCS_RSVD_ATTR_A : GEN123_PCS_RSVD_ATTR_M_TX;
assign data_pcs_rsvd_attr_m_rx = PCIE_RXSYNC_MODE ? GEN123_PCS_RSVD_ATTR_A : GEN123_PCS_RSVD_ATTR_M_RX;
assign data_pcs_rsvd_attr_m    = data_pcs_rsvd_attr_m_tx | data_pcs_rsvd_attr_m_rx;

assign data_x16x20_rx_datawidth = x16_reg2 ? X16_RX_DATAWIDTH : X20_RX_DATAWIDTH;


//---------- Load Counter ------------------------------------------------------
always @ (posedge DRP_CLK)
begin

    if (!DRP_RST_N)
        load_cnt <= 2'd0;
    else
    
        //---------- Increment Load Counter ----------------
        if ((fsm == FSM_LOAD) && (load_cnt < LOAD_CNT_MAX))
            load_cnt <= load_cnt + 2'd1;
            
        //---------- Hold Load Counter ---------------------
        else if ((fsm == FSM_LOAD) && (load_cnt == LOAD_CNT_MAX))
            load_cnt <= load_cnt;
            
        //---------- Reset Load Counter --------------------
        else
            load_cnt <= 2'd0;
        
end 



//---------- Update DRP Address and Data ---------------------------------------
always @ (posedge DRP_CLK)
begin

    if (!DRP_RST_N)
        begin
        addr_reg <=  9'd0;
        di_reg   <= 16'd0;
        end
    else
        begin
        
        case (index)
        
        //--------------------------------------------------      
        5'd0:     
            begin
            addr_reg <= mode             ? ADDR_PCS_RSVD_ATTR : 
                        x16x20_mode_reg2 ? ADDR_RX_DATA_WIDTH : ADDR_TXOUT_DIV; 
            di_reg   <= mode             ? ((do_reg2 & MASK_PCS_RSVD_ATTR)        | data_pcs_rsvd_attr_a) : 
                        x16x20_mode_reg2 ? ((do_reg2 & MASK_X16X20_RX_DATA_WIDTH) | data_x16x20_rx_datawidth) : 
                                           ((do_reg2 & MASK_TXOUT_DIV)            | data_txout_div);
            end 
            
        //--------------------------------------------------      
        5'd1:    
            begin
            addr_reg <= mode ? ADDR_PCS_RSVD_ATTR : ADDR_RXOUT_DIV;
            di_reg   <= mode ? ((do_reg2 & MASK_PCS_RSVD_ATTR)  | data_pcs_rsvd_attr_m) : 
                               ((do_reg2 & MASK_RXOUT_DIV)      | data_rxout_div);
            end 
            
        //--------------------------------------------------
        5'd2 :
            begin        
            addr_reg <= ADDR_TX_DATA_WIDTH;
            di_reg   <= (do_reg2 & MASK_TX_DATA_WIDTH) | data_tx_data_width;
            end
           
        //--------------------------------------------------    
        5'd3 :
            begin        
            addr_reg <= ADDR_TX_INT_DATAWIDTH;
            di_reg   <= (do_reg2 & MASK_TX_INT_DATAWIDTH) | data_tx_int_datawidth;
            end    
        
        //--------------------------------------------------     
        5'd4 :
            begin
            addr_reg <= ADDR_RX_DATA_WIDTH;
            di_reg   <= (do_reg2 & MASK_RX_DATA_WIDTH) | data_rx_data_width;
            end   
        
        //--------------------------------------------------     
        5'd5 :
            begin        
            addr_reg <= ADDR_RX_INT_DATAWIDTH;
            di_reg   <= (do_reg2 & MASK_RX_INT_DATAWIDTH) | data_rx_int_datawidth;
            end  
  
        //--------------------------------------------------         
        5'd6 :
            begin        
            addr_reg <= ADDR_TXBUF_EN;
            di_reg   <= (do_reg2 & MASK_TXBUF_EN) | data_txbuf_en;
            end   
        
        //--------------------------------------------------         
        5'd7 :
            begin        
            addr_reg <= ADDR_RXBUF_EN;
            di_reg   <= (do_reg2 & MASK_RXBUF_EN) | data_rxbuf_en;
            end   
        
        //--------------------------------------------------         
        5'd8 :
            begin        
            addr_reg <= ADDR_TX_XCLK_SEL;
            di_reg   <= (do_reg2 & MASK_TX_XCLK_SEL) | data_tx_xclk_sel;
            end   
        
        //--------------------------------------------------         
        5'd9 :
            begin        
            addr_reg <= ADDR_RX_XCLK_SEL;
            di_reg   <= (do_reg2 & MASK_RX_XCLK_SEL) | data_rx_xclk_sel;
            end   
        
        //--------------------------------------------------      
        5'd10 :
            begin
            addr_reg <= ADDR_CLK_CORRECT_USE;
            di_reg   <= (do_reg2 & MASK_CLK_CORRECT_USE) | data_clk_correction_use;
            end 

        //--------------------------------------------------      
        5'd11 :
            begin
            addr_reg <= ADDR_TX_DRIVE_MODE;
            di_reg   <= (do_reg2 & MASK_TX_DRIVE_MODE) | data_tx_drive_mode;
            end 
            
        //--------------------------------------------------      
        5'd12 :
            begin
            addr_reg <= ADDR_RXCDR_EIDLE;
            di_reg   <= (do_reg2 & MASK_RXCDR_EIDLE) | data_rxcdr_eidle;
            end 
            
        //--------------------------------------------------      
        5'd13 :
            begin
            addr_reg <= ADDR_RX_DFE_LPM_EIDLE;
            di_reg   <= (do_reg2 & MASK_RX_DFE_LPM_EIDLE) | data_rx_dfe_lpm_eidle;
            end     
            
        //--------------------------------------------------      
        5'd14 :
            begin
            addr_reg <= ADDR_PMA_RSV_A;
            di_reg   <= (do_reg2 & MASK_PMA_RSV_A) | data_pma_rsv_a;
            end  
            
        //--------------------------------------------------      
        5'd15 :
            begin
            addr_reg <= ADDR_PMA_RSV_B;
            di_reg   <= (do_reg2 & MASK_PMA_RSV_B) | data_pma_rsv_b;
            end 

        //--------------------------------------------------      
        5'd16 :
            begin
            addr_reg <= ADDR_RXCDR_CFG_A;
            di_reg   <= (do_reg2 & MASK_RXCDR_CFG_A) | data_rxcdr_cfg_a;
            end 
            
        //--------------------------------------------------      
        5'd17 :
            begin
            addr_reg <= ADDR_RXCDR_CFG_B;
            di_reg   <= (do_reg2 & MASK_RXCDR_CFG_B) | data_rxcdr_cfg_b;
            end 
            
        //--------------------------------------------------      
        5'd18 :
            begin
            addr_reg <= ADDR_RXCDR_CFG_C;
            di_reg   <= (do_reg2 & MASK_RXCDR_CFG_C) | data_rxcdr_cfg_c;
            end                         

        //--------------------------------------------------      
        5'd19 :
            begin
            addr_reg <= ADDR_RXCDR_CFG_D;
            di_reg   <= (do_reg2 & MASK_RXCDR_CFG_D) | data_rxcdr_cfg_d;
            end    
            
        //--------------------------------------------------      
        5'd20 :
            begin
            addr_reg <= ADDR_RXCDR_CFG_E;
            di_reg   <= (do_reg2 & ((PCIE_GT_DEVICE == "GTH") ? MASK_RXCDR_CFG_E_GTH : MASK_RXCDR_CFG_E_GTX)) | data_rxcdr_cfg_e;
            end             
            
        //--------------------------------------------------      
        5'd21 :
            begin
            addr_reg <= ADDR_RXCDR_CFG_F;
            di_reg   <= (do_reg2 & ((PCIE_GT_DEVICE == "GTH") ? MASK_RXCDR_CFG_F_GTH : MASK_RXCDR_CFG_F_GTX)) | data_rxcdr_cfg_f;
            end             
            
        //--------------------------------------------------
        default : 
            begin
            addr_reg <=  9'd0;
            di_reg   <= 16'd0;
            end
            
        endcase
        
        end
        
end  



//---------- PIPE DRP FSM ------------------------------------------------------
always @ (posedge DRP_CLK)
begin

    if (!DRP_RST_N)
        begin
        fsm   <= FSM_IDLE;
        index <= 5'd0;
        mode  <= 1'd0;
        done  <= 1'd0;
        end
    else
        begin
        
        case (fsm)

        //---------- Idle State ----------------------------
        FSM_IDLE :  
          
            begin
            //---------- Reset or Rate Change --------------
            if (start_reg2)
                begin
                fsm   <= FSM_LOAD;
                index <= 5'd0;
                mode  <= 1'd0;
                done  <= 1'd0; 
                end
            //---------- GTXRESET --------------------------    
            else if ((gtxreset_reg2 && !gtxreset_reg1) && ((PCIE_TXSYNC_MODE == 0) || (PCIE_RXSYNC_MODE == 0)) && (PCIE_USE_MODE == "1.0"))
                begin
                fsm   <= FSM_LOAD;
                index <= 5'd0;
                mode  <= 1'd1;
                done  <= 1'd0;
                end
            //---------- Idle ------------------------------
            else       
                begin
                fsm   <= FSM_IDLE;
                index <= 5'd0;
                mode  <= 1'd0;
                done  <= 1'd1;
                end 
            end    
            
        //---------- Load DRP Address  ---------------------
        FSM_LOAD :
        
            begin
            fsm   <= (load_cnt == LOAD_CNT_MAX) ? FSM_READ : FSM_LOAD;
            index <= index;
            mode  <= mode;
            done  <= 1'd0;
            end  
            
        //---------- Read DRP ------------------------------
        FSM_READ :
        
            begin
            fsm   <= FSM_RRDY;
            index <= index;
            mode  <= mode;
            done  <= 1'd0;
            end
            
        //---------- Read DRP Ready ------------------------
        FSM_RRDY :    
        
            begin
            fsm   <= rdy_reg2 ? FSM_WRITE : FSM_RRDY;
            index <= index;
            mode  <= mode;
            done  <= 1'd0;
            end
  
            
        //---------- Write DRP -----------------------------
        FSM_WRITE :    
        
            begin
            fsm   <= FSM_WRDY;
            index <= index;
            mode  <= mode;
            done  <= 1'd0;
            end       
            
        //---------- Write DRP Ready -----------------------
        FSM_WRDY :    
        
            begin
            fsm   <= rdy_reg2 ? FSM_DONE : FSM_WRDY;
            index <= index;
            mode  <= mode;
            done  <= 1'd0;
            end        
             
        //---------- DRP Done ------------------------------
        FSM_DONE :
        
            begin
            if ((index == INDEX_MAX) || (mode && (index == 5'd1)) || (x16x20_mode_reg2 && (index == 5'd0)))
                begin
                fsm   <= FSM_IDLE;
                index <= 5'd0;
                mode  <= 1'd0;
                done  <= 1'd0;
                end
            else       
                begin
                fsm   <= FSM_LOAD;
                index <= index + 5'd1;
                mode  <= mode;
                done  <= 1'd0;
                end
            end     
              
        //---------- Default State -------------------------
        default :
        
            begin      
            fsm   <= FSM_IDLE;
            index <= 5'd0;
            mode  <= 1'd0;
            done  <= 1'd0;
            end
            
        endcase
        
        end
        
end 



//---------- PIPE DRP Output ---------------------------------------------------
assign DRP_ADDR = addr_reg;
assign DRP_EN   = (fsm == FSM_READ) || (fsm == FSM_WRITE);
assign DRP_DI   = di_reg;
assign DRP_WE   = (fsm == FSM_WRITE);
assign DRP_DONE = done;
assign DRP_FSM  = fsm;



endmodule
