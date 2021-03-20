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
// File       : design_1_xdma_0_0_pcie2_ip_gtp_pipe_reset.v
// Version    : 3.3
//------------------------------------------------------------------------------
//  Filename     :  gtp_pipe_reset.v
//  Description  :  GTP PIPE Reset Module for 7 Series Transceiver
//  Version      :  19.0
//------------------------------------------------------------------------------



`timescale 1ns / 1ps



//---------- PIPE Reset Module -------------------------------------------------
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_gtp_pipe_reset #
(

    //---------- Global ------------------------------------
    parameter PCIE_SIM_SPEEDUP = "FALSE",                   // PCIe sim speedup 
    parameter PCIE_LANE        = 1,                         // PCIe number of lanes
    //---------- Local -------------------------------------
    parameter CFG_WAIT_MAX     = 6'd63,                     // Configuration wait max
    parameter BYPASS_RXCDRLOCK = 1                          // Bypass RXCDRLOCK

)

(

    //---------- Input -------------------------------------
    input                           RST_CLK,
    input                           RST_RXUSRCLK,
    input                           RST_DCLK,
    input                           RST_RST_N,
    input       [PCIE_LANE-1:0]     RST_DRP_DONE,
    input       [PCIE_LANE-1:0]     RST_RXPMARESETDONE,
    input                           RST_PLLLOCK,
    input       [PCIE_LANE-1:0]     RST_RATE_IDLE,
    input       [PCIE_LANE-1:0]     RST_RXCDRLOCK,
    input                           RST_MMCM_LOCK,
    input       [PCIE_LANE-1:0]     RST_RESETDONE,
    input       [PCIE_LANE-1:0]     RST_PHYSTATUS,
    input       [PCIE_LANE-1:0]     RST_TXSYNC_DONE,
    
    //---------- Output ------------------------------------
    output                          RST_CPLLRESET,
    output                          RST_CPLLPD,
    output reg                      RST_DRP_START,
    output reg                      RST_DRP_X16,
    output                          RST_RXUSRCLK_RESET,
    output                          RST_DCLK_RESET,
    output                          RST_GTRESET,
    output                          RST_USERRDY,
    output                          RST_TXSYNC_START,
    output                          RST_IDLE,
    output      [ 4:0]              RST_FSM

);

    //---------- Input Register ----------------------------
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     drp_done_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     rxpmaresetdone_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                             plllock_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     rate_idle_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     rxcdrlock_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                             mmcm_lock_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     resetdone_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     phystatus_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     txsync_done_reg1;  
    
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     drp_done_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     rxpmaresetdone_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                             plllock_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     rate_idle_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     rxcdrlock_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                             mmcm_lock_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     resetdone_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     phystatus_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     txsync_done_reg2;
    
    //---------- Internal Signal ---------------------------
    reg         [ 5:0]              cfg_wait_cnt      =  6'd0;
    
    //---------- Output Register ---------------------------
    reg                             pllreset          =  1'd0;
    reg                             pllpd             =  1'd0;
    reg                             rxusrclk_rst_reg1 =  1'd0;
    reg                             rxusrclk_rst_reg2 =  1'd0;
    reg                             dclk_rst_reg1     =  1'd0;
    reg                             dclk_rst_reg2     =  1'd0;
    reg                             gtreset           =  1'd0;
    reg                             userrdy           =  1'd0;
    reg         [ 4:0]              fsm               =  5'h1;                 
   
    //---------- FSM ---------------------------------------                                         
    localparam                      FSM_IDLE             = 5'h0; 
    localparam                      FSM_CFG_WAIT         = 5'h1;
    localparam                      FSM_PLLRESET         = 5'h2; 
    localparam                      FSM_DRP_X16_START    = 5'h3;
    localparam                      FSM_DRP_X16_DONE     = 5'h4;   
    localparam                      FSM_PLLLOCK          = 5'h5;
    localparam                      FSM_GTRESET          = 5'h6;
    localparam                      FSM_RXPMARESETDONE_1 = 5'h7; 
    localparam                      FSM_RXPMARESETDONE_2 = 5'h8; 
    localparam                      FSM_DRP_X20_START    = 5'h9;
    localparam                      FSM_DRP_X20_DONE     = 5'hA;                    
    localparam                      FSM_MMCM_LOCK        = 5'hB;  
    localparam                      FSM_RESETDONE        = 5'hC;  
    localparam                      FSM_TXSYNC_START     = 5'hD;
    localparam                      FSM_TXSYNC_DONE      = 5'hE;                                 

    

//---------- Input FF ----------------------------------------------------------
always @ (posedge RST_CLK)
begin

    if (!RST_RST_N)
        begin    
        //---------- 1st Stage FF --------------------------  
        drp_done_reg1       <= {PCIE_LANE{1'd0}};   
        rxpmaresetdone_reg1 <= {PCIE_LANE{1'd0}}; 
        plllock_reg1        <= 1'd0; 
        rate_idle_reg1      <= {PCIE_LANE{1'd0}}; 
        rxcdrlock_reg1      <= {PCIE_LANE{1'd0}}; 
        mmcm_lock_reg1      <= 1'd0; 
        resetdone_reg1      <= {PCIE_LANE{1'd0}}; 
        phystatus_reg1      <= {PCIE_LANE{1'd0}}; 
        txsync_done_reg1    <= {PCIE_LANE{1'd0}}; 
        //---------- 2nd Stage FF --------------------------
        drp_done_reg2       <= {PCIE_LANE{1'd0}};
        rxpmaresetdone_reg2 <= {PCIE_LANE{1'd0}}; 
        plllock_reg2        <= 1'd0; 
        rate_idle_reg2      <= {PCIE_LANE{1'd0}}; 
        rxcdrlock_reg2      <= {PCIE_LANE{1'd0}}; 
        mmcm_lock_reg2      <= 1'd0;
        resetdone_reg2      <= {PCIE_LANE{1'd0}}; 
        phystatus_reg2      <= {PCIE_LANE{1'd0}}; 
        txsync_done_reg2    <= {PCIE_LANE{1'd0}}; 
        end
    else
        begin  
        //---------- 1st Stage FF --------------------------   
        drp_done_reg1       <= RST_DRP_DONE; 
        rxpmaresetdone_reg1 <= RST_RXPMARESETDONE; 
        plllock_reg1        <= RST_PLLLOCK;
        rate_idle_reg1      <= RST_RATE_IDLE;
        rxcdrlock_reg1      <= RST_RXCDRLOCK;
        mmcm_lock_reg1      <= RST_MMCM_LOCK;
        resetdone_reg1      <= RST_RESETDONE;
        phystatus_reg1      <= RST_PHYSTATUS;
        txsync_done_reg1    <= RST_TXSYNC_DONE;
        //---------- 2nd Stage FF --------------------------
        drp_done_reg2       <= drp_done_reg1;
        rxpmaresetdone_reg2 <= rxpmaresetdone_reg1;
        plllock_reg2        <= plllock_reg1;
        rate_idle_reg2      <= rate_idle_reg1;
        rxcdrlock_reg2      <= rxcdrlock_reg1;
        mmcm_lock_reg2      <= mmcm_lock_reg1;
        resetdone_reg2      <= resetdone_reg1;
        phystatus_reg2      <= phystatus_reg1;
        txsync_done_reg2    <= txsync_done_reg1;   
        end
        
end    



//---------- Configuration Reset Wait Counter ----------------------------------
always @ (posedge RST_CLK)
begin

    if (!RST_RST_N)
        cfg_wait_cnt <= 6'd0;
    else
    
        //---------- Increment Configuration Reset Wait Counter
        if ((fsm == FSM_CFG_WAIT) && (cfg_wait_cnt < CFG_WAIT_MAX))
            cfg_wait_cnt <= cfg_wait_cnt + 6'd1;
            
        //---------- Hold Configuration Reset Wait Counter -
        else if ((fsm == FSM_CFG_WAIT) && (cfg_wait_cnt == CFG_WAIT_MAX))
            cfg_wait_cnt <= cfg_wait_cnt;
            
        //---------- Reset Configuration Reset Wait Counter 
        else
            cfg_wait_cnt <= 6'd0;
        
end 



//---------- PIPE Reset FSM ----------------------------------------------------
always @ (posedge RST_CLK)
begin

    if (!RST_RST_N)
        begin
        fsm      <= FSM_CFG_WAIT;
        pllreset <= 1'd0;
        pllpd    <= 1'd0;
        gtreset  <= 1'd0;
        userrdy  <= 1'd0;
        end
    else
        begin
        
        case (fsm)
            
        //---------- Idle State ----------------------------
        FSM_IDLE :
        
            begin
            if (!RST_RST_N)
                begin
                fsm      <= FSM_CFG_WAIT;
                pllreset <= 1'd0;
                pllpd    <= 1'd0;
                gtreset  <= 1'd0;
                userrdy  <= 1'd0;
                end
            else
                begin
                fsm      <= FSM_IDLE;
                pllreset <= pllreset;
                pllpd    <= pllpd;
                gtreset  <= gtreset;
                userrdy  <= userrdy;
                end
            end  
            
        //----------  Wait for Configuration Reset Delay ---
        FSM_CFG_WAIT :
          
            begin
            fsm       <= ((cfg_wait_cnt == CFG_WAIT_MAX) ? FSM_PLLRESET : FSM_CFG_WAIT);
            pllreset  <= pllreset;
            pllpd     <= pllpd;
            gtreset   <= gtreset;
            userrdy   <= userrdy;
            end 
            
        //---------- Hold PLL and GTP Channel in Reset ----
        FSM_PLLRESET :
        
            begin
            fsm       <= (((~plllock_reg2) && (&(~resetdone_reg2))) ? FSM_DRP_X16_START : FSM_PLLRESET);
            pllreset  <= 1'd1;
            pllpd     <= pllpd;
            gtreset   <= 1'd1;
            userrdy   <= userrdy;
            end  

        //---------- Start DRP x16 -------------------------
        FSM_DRP_X16_START :
            
            begin
            fsm       <= &(~drp_done_reg2) ? FSM_DRP_X16_DONE : FSM_DRP_X16_START;
            pllreset  <= pllreset;
            pllpd     <= pllpd;
            gtreset   <= gtreset;
            userrdy   <= userrdy;
            end
            
        //---------- Wait for DRP x16 Done -----------------    
        FSM_DRP_X16_DONE :
        
            begin  
            fsm       <= (&drp_done_reg2) ? FSM_PLLLOCK : FSM_DRP_X16_DONE;
            pllreset  <= pllreset;
            pllpd     <= pllpd;
            gtreset   <= gtreset;
            userrdy   <= userrdy;
            end  

        //---------- Wait for PLL Lock --------------------
        FSM_PLLLOCK :
        
            begin
            fsm       <= (plllock_reg2 ? FSM_GTRESET : FSM_PLLLOCK);
            pllreset  <= 1'd0;
            pllpd     <= pllpd;
            gtreset   <= gtreset;
            userrdy   <= userrdy;
            end

        //---------- Release GTRESET -----------------------
        FSM_GTRESET :
        
            begin
            fsm       <= FSM_RXPMARESETDONE_1;
            pllreset  <= pllreset;
            pllpd     <= pllpd;
            gtreset   <= 1'b0;
            userrdy   <= userrdy;
            end
            
        //---------- Wait for RXPMARESETDONE Assertion -----  
        FSM_RXPMARESETDONE_1 :
        
            begin
            fsm       <= (&rxpmaresetdone_reg2 || (PCIE_SIM_SPEEDUP == "TRUE")) ? FSM_RXPMARESETDONE_2 : FSM_RXPMARESETDONE_1;
            pllreset  <= pllreset;
            pllpd     <= pllpd;
            gtreset   <= gtreset;
            userrdy   <= userrdy;
            end  

        //---------- Wait for RXPMARESETDONE De-assertion --
        FSM_RXPMARESETDONE_2 :
        
            begin
            fsm       <= (&(~rxpmaresetdone_reg2) || (PCIE_SIM_SPEEDUP == "TRUE")) ? FSM_DRP_X20_START : FSM_RXPMARESETDONE_2;
            pllreset  <= pllreset;
            pllpd     <= pllpd;
            gtreset   <= gtreset;
            userrdy   <= userrdy;
            end  
            
        //---------- Start DRP x20 -------------------------
        FSM_DRP_X20_START :
            
            begin
            fsm       <= &(~drp_done_reg2) ? FSM_DRP_X20_DONE : FSM_DRP_X20_START;
            pllreset  <= pllreset;
            pllpd     <= pllpd;
            gtreset   <= gtreset;
            userrdy   <= userrdy;
            end
            
        //---------- Wait for DRP x20 Done -----------------    
        FSM_DRP_X20_DONE :
        
            begin  
            fsm       <= (&drp_done_reg2) ? FSM_MMCM_LOCK : FSM_DRP_X20_DONE;
            pllreset  <= pllreset;
            pllpd     <= pllpd;
            gtreset   <= gtreset;
            userrdy   <= userrdy;
            end      

        //---------- Wait for MMCM and RX CDR Lock ---------
        FSM_MMCM_LOCK :
        
            begin  
            if (mmcm_lock_reg2 && (&rxcdrlock_reg2 || (BYPASS_RXCDRLOCK == 1)))
                begin
                fsm       <= FSM_RESETDONE;
                pllreset  <= pllreset;
                pllpd     <= pllpd;
                gtreset   <= gtreset;
                userrdy   <= 1'd1;
                end
            else
                begin
                fsm       <= FSM_MMCM_LOCK;
                pllreset  <= pllreset;
                pllpd     <= pllpd;
                gtreset   <= gtreset;
                userrdy   <= 1'd0;
                end
            end

        //---------- Wait for [TX/RX]RESETDONE and PHYSTATUS 
        FSM_RESETDONE :
        
            begin
            fsm       <= (&resetdone_reg2 && (&(~phystatus_reg2)) ? FSM_TXSYNC_START : FSM_RESETDONE);  
            pllreset  <= pllreset;
            pllpd     <= pllpd;
            gtreset   <= gtreset;
            userrdy   <= userrdy;
            end
            
        //---------- Start TX Sync -------------------------
        FSM_TXSYNC_START :
        
            begin
            fsm       <= (&(~txsync_done_reg2) ? FSM_TXSYNC_DONE : FSM_TXSYNC_START);
            pllreset  <= pllreset;
            pllpd     <= pllpd;
            gtreset   <= gtreset;
            userrdy   <= userrdy;
            end
            
        //---------- Wait for TX Sync Done -----------------
        FSM_TXSYNC_DONE :
        
            begin
            fsm       <= (&txsync_done_reg2 ? FSM_IDLE : FSM_TXSYNC_DONE);
            pllreset  <= pllreset;
            pllpd     <= pllpd;
            gtreset   <= gtreset;
            userrdy   <= userrdy;
            end     
            
        //---------- Default State -------------------------
        default :
        
            begin
            fsm       <= FSM_CFG_WAIT;
            pllreset  <= 1'd0;
            pllpd     <= 1'd0;
            gtreset   <= 1'd0;
            userrdy   <= 1'd0;
            end

        endcase
        
        end
        
end



//---------- RXUSRCLK Reset Synchronizer ---------------------------------------
always @ (posedge RST_RXUSRCLK)
begin

    if (pllreset) 
        begin
        rxusrclk_rst_reg1 <= 1'd1;
        rxusrclk_rst_reg2 <= 1'd1;
        end
    else
        begin
        rxusrclk_rst_reg1 <= 1'd0;
        rxusrclk_rst_reg2 <= rxusrclk_rst_reg1;
        end   
          
end  

//---------- DCLK Reset Synchronizer -------------------------------------------
always @ (posedge RST_DCLK)
begin

    if (fsm == FSM_CFG_WAIT)
        begin
        dclk_rst_reg1 <= 1'd1;
        dclk_rst_reg2 <= dclk_rst_reg1;
        end
    else
        begin
        dclk_rst_reg1 <= 1'd0;
        dclk_rst_reg2 <= dclk_rst_reg1;
        end   
          
end  



//---------- PIPE Reset Output -------------------------------------------------
assign RST_CPLLRESET      = pllreset;
assign RST_CPLLPD         = pllpd;
assign RST_RXUSRCLK_RESET = rxusrclk_rst_reg2;
assign RST_DCLK_RESET     = dclk_rst_reg2;
assign RST_GTRESET        = gtreset;  
assign RST_USERRDY        = userrdy;
assign RST_TXSYNC_START   = (fsm == FSM_TXSYNC_START);
assign RST_IDLE           = (fsm == FSM_IDLE);
assign RST_FSM            = fsm;                   



//--------------------------------------------------------------------------------------------------
//  Register Output
//--------------------------------------------------------------------------------------------------
always @ (posedge RST_CLK)
begin

    if (!RST_RST_N) 
        begin
        RST_DRP_START <= 1'd0;
        RST_DRP_X16   <= 1'd0;
        end
    else
        begin
        RST_DRP_START <= (fsm == FSM_DRP_X16_START) || (fsm == FSM_DRP_X20_START); 
        RST_DRP_X16   <= (fsm == FSM_DRP_X16_START) || (fsm == FSM_DRP_X16_DONE);
        end
        
end  



endmodule
