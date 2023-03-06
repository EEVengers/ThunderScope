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
// File       : design_1_xdma_0_0_pcie2_ip_qpll_reset.v
// Version    : 3.3
//------------------------------------------------------------------------------
//  Filename     :  qpll_reset.v
//  Description  :  QPLL Reset Module for 7 Series Transceiver
//  Version      :  11.4
//------------------------------------------------------------------------------


`timescale 1ns / 1ps



//---------- QPLL Reset Module --------------------------------------------------
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_qpll_reset #
(

    //---------- Global ------------------------------------
    parameter PCIE_PLL_SEL       = "CPLL",                  // PCIe PLL select for Gen1/Gen2 only
    parameter PCIE_POWER_SAVING  = "TRUE",                  // PCIe power saving
    parameter PCIE_LANE          = 1,                       // PCIe number of lanes
    parameter BYPASS_COARSE_OVRD = 1                        // Bypass coarse frequency override

)

(

    //---------- Input -------------------------------------
    input                           QRST_CLK,
    input                           QRST_RST_N,
    input                           QRST_MMCM_LOCK,
    input       [PCIE_LANE-1:0]     QRST_CPLLLOCK,
    input       [(PCIE_LANE-1)>>2:0]QRST_DRP_DONE,
    input       [(PCIE_LANE-1)>>2:0]QRST_QPLLLOCK,
    input       [ 1:0]              QRST_RATE,
    input       [PCIE_LANE-1:0]     QRST_QPLLRESET_IN,
    input       [PCIE_LANE-1:0]     QRST_QPLLPD_IN,
    
    //---------- Output ------------------------------------                     
    output                          QRST_OVRD,
    output                          QRST_DRP_START,
    output                          QRST_QPLLRESET_OUT,
    output                          QRST_QPLLPD_OUT,
    output                          QRST_IDLE,
    output      [3:0]               QRST_FSM

);

    //---------- Input Register ----------------------------
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                             mmcm_lock_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     cplllock_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [(PCIE_LANE-1)>>2:0]drp_done_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [(PCIE_LANE-1)>>2:0]qplllock_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [ 1:0]              rate_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     qpllreset_in_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     qpllpd_in_reg1;

(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                             mmcm_lock_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     cplllock_reg2;  
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [(PCIE_LANE-1)>>2:0]drp_done_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [(PCIE_LANE-1)>>2:0]qplllock_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [ 1:0]              rate_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     qpllreset_in_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0]     qpllpd_in_reg2;
    
    //---------- Output Register  --------------------------
    reg                             ovrd              =  1'd0;
    reg                             qpllreset         =  1'd1;
    reg                             qpllpd            =  1'd0;
    reg         [3:0]               fsm               =  2;                 
   
    //---------- FSM ---------------------------------------                                         
    localparam                      FSM_IDLE          = 1;//12'b000000000001; 
    localparam                      FSM_WAIT_LOCK     = 2;//12'b000000000010;
    localparam                      FSM_MMCM_LOCK     = 3;//12'b000000000100;   
    localparam                      FSM_DRP_START_NOM = 4;//12'b000000001000;
    localparam                      FSM_DRP_DONE_NOM  = 5;//12'b000000010000;
    localparam                      FSM_QPLLLOCK      = 6;//12'b000000100000;
    localparam                      FSM_DRP_START_OPT = 7;//12'b000001000000;                            
    localparam                      FSM_DRP_DONE_OPT  = 8;//12'b000010000000;
    localparam                      FSM_QPLL_RESET    = 9;//12'b000100000000;                                                         
    localparam                      FSM_QPLLLOCK2     = 10;//12'b001000000000;
    localparam                      FSM_QPLL_PDRESET  = 11;//12'b010000000000;
    localparam                      FSM_QPLL_PD       = 12;//12'b100000000000;                                         
 
 
    
//---------- Input FF ----------------------------------------------------------
always @ (posedge QRST_CLK)
begin

    if (!QRST_RST_N)
        begin    
        //---------- 1st Stage FF --------------------------
        mmcm_lock_reg1    <=  1'd0;
        cplllock_reg1     <= {PCIE_LANE{1'd1}}; 
        drp_done_reg1     <= {(((PCIE_LANE-1)>>2)+1){1'd0}};     
        qplllock_reg1     <= {(((PCIE_LANE-1)>>2)+1){1'd0}}; 
        rate_reg1         <=  2'd0; 
        qpllreset_in_reg1 <= {PCIE_LANE{1'd1}}; 
        qpllpd_in_reg1    <= {PCIE_LANE{1'd0}}; 
        //---------- 2nd Stage FF --------------------------
        mmcm_lock_reg2    <=  1'd0;
        cplllock_reg2     <= {PCIE_LANE{1'd1}};
        drp_done_reg2     <= {(((PCIE_LANE-1)>>2)+1){1'd0}}; 
        qplllock_reg2     <= {(((PCIE_LANE-1)>>2)+1){1'd0}}; 
        rate_reg2         <=  2'd0;
        qpllreset_in_reg2 <= {PCIE_LANE{1'd1}}; 
        qpllpd_in_reg2    <= {PCIE_LANE{1'd0}};  
        end
    else
        begin  
        //---------- 1st Stage FF --------------------------
        mmcm_lock_reg1    <= QRST_MMCM_LOCK;   
        cplllock_reg1     <= QRST_CPLLLOCK; 
        drp_done_reg1     <= QRST_DRP_DONE; 
        qplllock_reg1     <= QRST_QPLLLOCK;
        rate_reg1         <= QRST_RATE; 
        qpllreset_in_reg1 <= QRST_QPLLRESET_IN;
        qpllpd_in_reg1    <= QRST_QPLLPD_IN;
        //---------- 2nd Stage FF --------------------------
        mmcm_lock_reg2    <= mmcm_lock_reg1;
        cplllock_reg2     <= cplllock_reg1;
        drp_done_reg2     <= drp_done_reg1; 
        qplllock_reg2     <= qplllock_reg1;
        rate_reg2         <= rate_reg1;
        qpllreset_in_reg2 <= qpllreset_in_reg1;
        qpllpd_in_reg2    <= qpllpd_in_reg1;
        end
        
end    



//---------- QPLL Reset FSM ----------------------------------------------------
always @ (posedge QRST_CLK)
begin

    if (!QRST_RST_N)
        begin
        fsm       <= FSM_WAIT_LOCK;
        ovrd      <= 1'd0;
        qpllreset <= 1'd1;
        qpllpd    <= 1'd0;
        end
    else
        begin
        
        case (fsm)
            
        //---------- Idle State ----------------------------
        FSM_IDLE :
        
            begin
            if (!QRST_RST_N)
                begin
                fsm       <= FSM_WAIT_LOCK;
                ovrd      <= 1'd0;
                qpllreset <= 1'd1;
                qpllpd    <= 1'd0;
                end
            else
                begin
                fsm       <= FSM_IDLE;
                ovrd      <= ovrd;
                qpllreset <= &qpllreset_in_reg2;
                qpllpd    <= &qpllpd_in_reg2;
                end
            end  
            
        //---------- Wait for CPLL and QPLL to Lose Lock ---
        FSM_WAIT_LOCK :
        
            begin
            fsm       <= ((&(~cplllock_reg2)) && (&(~qplllock_reg2)) ? FSM_MMCM_LOCK : FSM_WAIT_LOCK);
            ovrd      <= ovrd;
            qpllreset <= qpllreset;
            qpllpd    <= qpllpd;
            end      
            
        //---------- Wait for MMCM and CPLL Lock -----------
        FSM_MMCM_LOCK :
        
            begin
            fsm       <= ((mmcm_lock_reg2 && (&cplllock_reg2)) ? FSM_DRP_START_NOM : FSM_MMCM_LOCK);
            ovrd      <= ovrd;
            qpllreset <= qpllreset;
            qpllpd    <= qpllpd;
            end      
            
        //---------- Start QPLL DRP for Normal QPLL Lock Mode 
        FSM_DRP_START_NOM:
        
            begin
            fsm       <= (&(~drp_done_reg2) ? FSM_DRP_DONE_NOM : FSM_DRP_START_NOM);
            ovrd      <= ovrd;
            qpllreset <= qpllreset;
            qpllpd    <= qpllpd;
            end

        //---------- Wait for QPLL DRP Done ----------------
        FSM_DRP_DONE_NOM :
        
            begin
            fsm       <= (&drp_done_reg2 ? FSM_QPLLLOCK : FSM_DRP_DONE_NOM);
            ovrd      <= ovrd;
            qpllreset <= qpllreset;
            qpllpd    <= qpllpd;
            end 
            
        //---------- Wait for QPLL Lock --------------------
        FSM_QPLLLOCK :
        
            begin
            fsm       <= (&qplllock_reg2 ? ((BYPASS_COARSE_OVRD == 1) ? FSM_QPLL_PDRESET : FSM_DRP_START_OPT) : FSM_QPLLLOCK);
            ovrd      <= ovrd;
            qpllreset <= 1'd0;
            qpllpd    <= qpllpd;
            end
            
        //---------- Start QPLL DRP for Optimized QPLL Lock Mode 
        FSM_DRP_START_OPT:
        
            begin
            fsm       <= (&(~drp_done_reg2) ? FSM_DRP_DONE_OPT : FSM_DRP_START_OPT);
            ovrd      <= 1'd1;
            qpllreset <= qpllreset;
            qpllpd    <= qpllpd;
            end

        //---------- Wait for QPLL DRP Done ----------------
        FSM_DRP_DONE_OPT :
        
            begin
            if (&drp_done_reg2)
                begin
                fsm       <= ((PCIE_PLL_SEL == "QPLL") ? FSM_QPLL_RESET : FSM_QPLL_PDRESET);
                ovrd      <= ovrd;
                qpllreset <= (PCIE_PLL_SEL == "QPLL");
                qpllpd    <= qpllpd;
                end
            else
                begin
                fsm       <= FSM_DRP_DONE_OPT;
                ovrd      <= ovrd;
                qpllreset <= qpllreset;
                qpllpd    <= qpllpd;
                end
            end 
            
        //---------- Reset QPLL ----------------------------
        FSM_QPLL_RESET :
            
            begin
            fsm       <= (&(~qplllock_reg2) ? FSM_QPLLLOCK2 : FSM_QPLL_RESET);  
            ovrd      <= ovrd;
            qpllreset <= 1'd1;
            qpllpd    <= 1'd0;
            end     
            
        //---------- Wait for QPLL Lock --------------------
        FSM_QPLLLOCK2 :
        
            begin
            fsm       <= (&qplllock_reg2 ? FSM_IDLE : FSM_QPLLLOCK2);
            ovrd      <= ovrd;
            qpllreset <= 1'd0;
            qpllpd    <= 1'd0;
            end
            
        //---------- Hold QPLL in Reset --------------------
        FSM_QPLL_PDRESET :
        
            begin
            fsm       <= FSM_QPLL_PD;
            ovrd      <= ovrd;
            qpllreset <= (PCIE_PLL_SEL == "CPLL") ? (rate_reg2 != 2'd2) : 1'd0; 
            qpllpd    <= qpllpd;
            end
            
        //---------- Power-down QPLL ----------------------- 
        FSM_QPLL_PD :
        
            begin
            fsm       <= FSM_IDLE;
            ovrd      <= ovrd;
            qpllreset <= qpllreset;
            qpllpd    <= (PCIE_PLL_SEL == "CPLL") ? (rate_reg2 != 2'd2) : 1'd0; 
            end 
                
        //---------- Default State -------------------------
        default :
        
            begin
            fsm       <= FSM_WAIT_LOCK;
            ovrd      <= 1'd0;
            qpllreset <= 1'd0;
            qpllpd    <= 1'd0;
            end

        endcase
        
        end
        
end



//---------- QPLL Lock Output --------------------------------------------------
assign QRST_OVRD          = ovrd;
assign QRST_DRP_START     = (fsm == FSM_DRP_START_NOM) || (fsm == FSM_DRP_START_OPT); 
assign QRST_QPLLRESET_OUT = qpllreset;
assign QRST_QPLLPD_OUT    = ((PCIE_POWER_SAVING == "FALSE") ? 1'd0 : qpllpd);  
assign QRST_IDLE          = (fsm == FSM_IDLE);
assign QRST_FSM           = fsm;                   



endmodule
