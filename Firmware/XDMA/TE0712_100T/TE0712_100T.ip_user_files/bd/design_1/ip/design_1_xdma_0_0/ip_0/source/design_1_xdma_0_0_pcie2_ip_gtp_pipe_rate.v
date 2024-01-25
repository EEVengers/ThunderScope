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
// File       : design_1_xdma_0_0_pcie2_ip_gtp_pipe_rate.v
// Version    : 3.3
//------------------------------------------------------------------------------
//  Filename     :  gtp_pipe_rate.v
//  Description  :  PIPE Rate Module for 7 Series Transceiver
//  Version      :  19.0
//------------------------------------------------------------------------------



`timescale 1ns / 1ps



//---------- PIPE Rate Module --------------------------------------------------
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_gtp_pipe_rate #
(

    parameter PCIE_SIM_SPEEDUP = "FALSE",                   // PCIe sim mode 
    parameter TXDATA_WAIT_MAX  = 4'd15                      // TXDATA wait max

)

(

    //---------- Input -------------------------------------
    input               RATE_CLK,
    input               RATE_RST_N,
    input       [ 1:0]  RATE_RATE_IN,
    input               RATE_DRP_DONE,
    input               RATE_RXPMARESETDONE,
    input               RATE_TXRATEDONE,
    input               RATE_RXRATEDONE,
    input               RATE_TXSYNC_DONE,
    input               RATE_PHYSTATUS,
    
    //---------- Output ------------------------------------
    output              RATE_PCLK_SEL,
    output              RATE_DRP_START,
    output              RATE_DRP_X16,
    output      [ 2:0]  RATE_RATE_OUT,
    output              RATE_TXSYNC_START,
    output              RATE_DONE,
    output              RATE_IDLE,
    output      [ 4:0]  RATE_FSM

);

    //---------- Input FF or Buffer ------------------------
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [ 1:0]  rate_in_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 drp_done_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxpmaresetdone_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txratedone_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxratedone_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 phystatus_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txsync_done_reg1;
    
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [ 1:0]  rate_in_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 drp_done_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxpmaresetdone_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txratedone_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxratedone_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 phystatus_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txsync_done_reg2;
    
    //---------- Internal Signals --------------------------
    wire        [ 2:0]  rate;
    reg         [ 3:0]  txdata_wait_cnt = 4'd0;
    reg                 txratedone      = 1'd0;
    reg                 rxratedone      = 1'd0;
    reg                 phystatus       = 1'd0;
    reg                 ratedone        = 1'd0;
    
    //---------- Output FF or Buffer -----------------------
    reg                 pclk_sel =  1'd0; 
    reg         [ 2:0]  rate_out =  3'd0; 
    reg         [ 3:0]  fsm      =  0;                 
   
    //---------- FSM ---------------------------------------                                         
    localparam          FSM_IDLE           = 0; 
    localparam          FSM_TXDATA_WAIT    = 1;           
    localparam          FSM_PCLK_SEL       = 2; 
    localparam          FSM_DRP_X16_START  = 3;
    localparam          FSM_DRP_X16_DONE   = 4;   
    localparam          FSM_RATE_SEL       = 5;
    localparam          FSM_RXPMARESETDONE = 6; 
    localparam          FSM_DRP_X20_START  = 7;
    localparam          FSM_DRP_X20_DONE   = 8;   
    localparam          FSM_RATE_DONE      = 9;
    localparam          FSM_TXSYNC_START   = 10;
    localparam          FSM_TXSYNC_DONE    = 11;             
    localparam          FSM_DONE           = 12; // Must sync value to pipe_user.v
    
//---------- Input FF ----------------------------------------------------------
always @ (posedge RATE_CLK)
begin

    if (!RATE_RST_N)
        begin    
        //---------- 1st Stage FF -------------------------- 
        rate_in_reg1        <= 2'd0;
        drp_done_reg1       <= 1'd0;
        rxpmaresetdone_reg1 <= 1'd0;
        txratedone_reg1     <= 1'd0;
        rxratedone_reg1     <= 1'd0;
        phystatus_reg1      <= 1'd0;
        txsync_done_reg1    <= 1'd0;
        //---------- 2nd Stage FF --------------------------
        rate_in_reg2        <= 2'd0;
        drp_done_reg2       <= 1'd0;
        rxpmaresetdone_reg2 <= 1'd0;
        txratedone_reg2     <= 1'd0;
        rxratedone_reg2     <= 1'd0;
        phystatus_reg2      <= 1'd0;
        txsync_done_reg2    <= 1'd0;
        end
    else
        begin  
        //---------- 1st Stage FF --------------------------
        rate_in_reg1        <= RATE_RATE_IN;
        drp_done_reg1       <= RATE_DRP_DONE;
        rxpmaresetdone_reg1 <= RATE_RXPMARESETDONE;
        txratedone_reg1     <= RATE_TXRATEDONE;
        rxratedone_reg1     <= RATE_RXRATEDONE;
        phystatus_reg1      <= RATE_PHYSTATUS;
        txsync_done_reg1    <= RATE_TXSYNC_DONE;
        //---------- 2nd Stage FF --------------------------
        rate_in_reg2        <= rate_in_reg1;
        drp_done_reg2       <= drp_done_reg1;
        rxpmaresetdone_reg2 <= rxpmaresetdone_reg1;
        txratedone_reg2     <= txratedone_reg1;
        rxratedone_reg2     <= rxratedone_reg1;
        phystatus_reg2      <= phystatus_reg1;
        txsync_done_reg2    <= txsync_done_reg1;   
        end
        
end    



//---------- Select Rate -------------------------------------------------------
//  Gen1 :  div 2 using [TX/RX]OUT_DIV = 2
//  Gen2 :  div 1 using [TX/RX]RATE = 3'd1
//------------------------------------------------------------------------------
assign rate = (rate_in_reg2 == 2'd1) ? 3'd1 : 3'd0;



//---------- TXDATA Wait Counter -----------------------------------------------
always @ (posedge RATE_CLK)
begin

    if (!RATE_RST_N)
        txdata_wait_cnt <= 4'd0;
    else
    
        //---------- Increment Wait Counter ----------------
        if ((fsm == FSM_TXDATA_WAIT) && (txdata_wait_cnt < TXDATA_WAIT_MAX))
            txdata_wait_cnt <= txdata_wait_cnt + 4'd1;
            
        //---------- Hold Wait Counter ---------------------
        else if ((fsm == FSM_TXDATA_WAIT) && (txdata_wait_cnt == TXDATA_WAIT_MAX))
            txdata_wait_cnt <= txdata_wait_cnt;
            
        //---------- Reset Wait Counter --------------------
        else
            txdata_wait_cnt <= 4'd0;
        
end 



//---------- Latch TXRATEDONE, RXRATEDONE, and PHYSTATUS -----------------------
always @ (posedge RATE_CLK)
begin

    if (!RATE_RST_N)
        begin   
        txratedone <= 1'd0;
        rxratedone <= 1'd0; 
        phystatus  <= 1'd0;
        ratedone   <= 1'd0;
        end
    else
        begin  

        if ((fsm == FSM_RATE_DONE) || (fsm == FSM_RXPMARESETDONE) || (fsm == FSM_DRP_X20_START) || (fsm == FSM_DRP_X20_DONE))
        
            begin
            
            //---------- Latch TXRATEDONE ------------------
            if (txratedone_reg2)
                txratedone <= 1'd1; 
            else
                txratedone <= txratedone;
 
            //---------- Latch RXRATEDONE ------------------
            if (rxratedone_reg2)
                rxratedone <= 1'd1; 
            else
                rxratedone <= rxratedone;
  
            //---------- Latch PHYSTATUS -------------------
            if (phystatus_reg2)
                phystatus <= 1'd1; 
            else
                phystatus <= phystatus;
  
            //---------- Latch Rate Done -------------------
            if (rxratedone && txratedone && phystatus)
                ratedone <= 1'd1; 
            else
                ratedone <= ratedone;
  
            end
  
        else 
        
            begin
            txratedone <= 1'd0;
            rxratedone <= 1'd0;
            phystatus  <= 1'd0;
            ratedone   <= 1'd0;
            end
        
        end
        
end    



//---------- PIPE Rate FSM -----------------------------------------------------
always @ (posedge RATE_CLK)
begin

    if (!RATE_RST_N)
        begin
        fsm      <= FSM_IDLE;
        pclk_sel <= 1'd0; 
        rate_out <= 3'd0;                              
        end
    else
        begin
        
        case (fsm)
            
        //---------- Idle State ----------------------------
        FSM_IDLE :
        
            begin
            //---------- Detect Rate Change ----------------
            if (rate_in_reg2 != rate_in_reg1)
                begin
                fsm      <= FSM_TXDATA_WAIT;
                pclk_sel <= pclk_sel;
                rate_out <= rate_out;
                end
            else
                begin
                fsm      <= FSM_IDLE;
                pclk_sel <= pclk_sel;
                rate_out <= rate_out;
                end
            end 
            
        //---------- Wait for TXDATA to TX[P/N] Latency ----    
        FSM_TXDATA_WAIT :
        
            begin
            fsm      <= (txdata_wait_cnt == TXDATA_WAIT_MAX) ? FSM_PCLK_SEL : FSM_TXDATA_WAIT;
            pclk_sel <= pclk_sel;
            rate_out <= rate_out;
            end 

        //---------- Select PCLK Frequency -----------------
        //  Gen1 : PCLK = 125 MHz
        //  Gen2 : PCLK = 250 MHz
        //--------------------------------------------------
        FSM_PCLK_SEL :
        
            begin
            fsm      <= (PCIE_SIM_SPEEDUP == "TRUE") ? FSM_RATE_SEL : FSM_DRP_X16_START;    
            pclk_sel <= (rate_in_reg2 == 2'd1);
            rate_out <= rate_out;
            end
            
        //---------- Start DRP x16 -------------------------
        FSM_DRP_X16_START :
            
            begin
            fsm      <= (!drp_done_reg2) ? FSM_DRP_X16_DONE : FSM_DRP_X16_START;
            pclk_sel <= pclk_sel;
            rate_out <= rate_out;
            end
            
        //---------- Wait for DRP x16 Done -----------------    
        FSM_DRP_X16_DONE :
        
            begin  
            fsm      <= drp_done_reg2 ? FSM_RATE_SEL : FSM_DRP_X16_DONE;
            pclk_sel <= pclk_sel;
            rate_out <= rate_out;
            end      

        //---------- Select Rate ---------------------------
        FSM_RATE_SEL :
        
            begin
            fsm      <= (PCIE_SIM_SPEEDUP == "TRUE") ? FSM_RATE_DONE : FSM_RXPMARESETDONE;
            pclk_sel <= pclk_sel;
            rate_out <= rate;                               // Update [TX/RX]RATE
            end    
            
        //---------- Wait for RXPMARESETDONE De-assertion --
        FSM_RXPMARESETDONE :
        
            begin
            fsm      <= (!rxpmaresetdone_reg2) ? FSM_DRP_X20_START : FSM_RXPMARESETDONE;  
            pclk_sel <= pclk_sel;
            rate_out <= rate_out;
            end  
            
        //---------- Start DRP x20 -------------------------
        FSM_DRP_X20_START :
            
            begin
            fsm      <= (!drp_done_reg2) ? FSM_DRP_X20_DONE : FSM_DRP_X20_START;
            pclk_sel <= pclk_sel;
            rate_out <= rate_out;
            end
            
        //---------- Wait for DRP x20 Done -----------------    
        FSM_DRP_X20_DONE :
        
            begin  
            fsm      <= drp_done_reg2 ? FSM_RATE_DONE : FSM_DRP_X20_DONE;
            pclk_sel <= pclk_sel;
            rate_out <= rate_out;
            end      
            
        //---------- Wait for Rate Change Done ------------- 
        FSM_RATE_DONE :
        
            begin
            if (ratedone) 
                fsm <= FSM_TXSYNC_START;
            else      
                fsm <= FSM_RATE_DONE;
            
            pclk_sel <= pclk_sel;
            rate_out <= rate_out;
            end      
            
        //---------- Start TX Sync -------------------------
        FSM_TXSYNC_START:
        
            begin
            fsm      <= (!txsync_done_reg2 ? FSM_TXSYNC_DONE : FSM_TXSYNC_START);
            pclk_sel <= pclk_sel;
            rate_out <= rate_out;
            end
            
        //---------- Wait for TX Sync Done -----------------
        FSM_TXSYNC_DONE:
        
            begin
            fsm      <= (txsync_done_reg2 ? FSM_DONE : FSM_TXSYNC_DONE);
            pclk_sel <= pclk_sel;
            rate_out <= rate_out;
            end        

        //---------- Rate Change Done ----------------------
        FSM_DONE :  
          
            begin  
            fsm      <= FSM_IDLE;
            pclk_sel <= pclk_sel;
            rate_out <= rate_out;
            end
               
        //---------- Default State -------------------------
        default :
        
            begin
            fsm      <= FSM_IDLE;
            pclk_sel <= 1'd0; 
            rate_out <= 3'd0;  
            end

        endcase
        
        end
        
end 



//---------- PIPE Rate Output --------------------------------------------------
assign RATE_PCLK_SEL     = pclk_sel;
assign RATE_DRP_START    = (fsm == FSM_DRP_X16_START) || (fsm == FSM_DRP_X20_START); 
assign RATE_DRP_X16      = (fsm == FSM_DRP_X16_START) || (fsm == FSM_DRP_X16_DONE);
assign RATE_RATE_OUT     = rate_out;
assign RATE_TXSYNC_START = (fsm == FSM_TXSYNC_START);
assign RATE_DONE         = (fsm == FSM_DONE);
assign RATE_IDLE         = (fsm == FSM_IDLE);
assign RATE_FSM          = {1'd0, fsm};   



endmodule
