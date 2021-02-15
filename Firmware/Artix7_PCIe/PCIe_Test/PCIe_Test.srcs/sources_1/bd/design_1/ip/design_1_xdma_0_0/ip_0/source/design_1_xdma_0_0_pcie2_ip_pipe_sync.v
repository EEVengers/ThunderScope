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
// File       : design_1_xdma_0_0_pcie2_ip_pipe_sync.v
// Version    : 3.3
//------------------------------------------------------------------------------
//  Filename     :  pipe_sync.v
//  Description  :  PIPE Sync Module for 7 Series Transceiver
//  Version      :  20.1
//------------------------------------------------------------------------------
//  PCIE_TXSYNC_MODE  : 0 = Manual TX sync (default).
//                    : 1 = Auto TX sync.
//  PCIE_RXSYNC_MODE  : 0 = Manual RX sync (default).
//                    : 1 = Auto RX sync.
//------------------------------------------------------------------------------



`timescale 1ns / 1ps



//---------- PIPE Sync Module --------------------------------------------------
module design_1_xdma_0_0_pcie2_ip_pipe_sync #
(

    parameter PCIE_GT_DEVICE       = "GTX",                 // PCIe GT device
    parameter PCIE_TXBUF_EN        = "FALSE",               // PCIe TX buffer enable for Gen1/Gen2 only
    parameter PCIE_RXBUF_EN        = "TRUE",                // PCIe TX buffer enable for Gen3      only
    parameter PCIE_TXSYNC_MODE     = 0,                     // PCIe TX sync mode
    parameter PCIE_RXSYNC_MODE     = 0,                     // PCIe RX sync mode
    parameter PCIE_LANE            = 1,                     // PCIe lane
    parameter PCIE_LINK_SPEED      = 3,                     // PCIe link speed
    parameter BYPASS_TXDELAY_ALIGN = 0,                     // Bypass TX delay align
    parameter BYPASS_RXDELAY_ALIGN = 0                      // Bypass RX delay align

)

(

    //---------- Input -------------------------------------
    input               SYNC_CLK,
    input               SYNC_RST_N,
    input               SYNC_SLAVE,
    input               SYNC_GEN3,
    input               SYNC_RATE_IDLE,
    input               SYNC_MMCM_LOCK,
    input               SYNC_RXELECIDLE,
    input               SYNC_RXCDRLOCK,
    input               SYNC_ACTIVE_LANE,
    
    input               SYNC_TXSYNC_START,
    input               SYNC_TXPHINITDONE,   
    input               SYNC_TXDLYSRESETDONE,
    input               SYNC_TXPHALIGNDONE,
    input               SYNC_TXSYNCDONE,
        
    input               SYNC_RXSYNC_START,
    input               SYNC_RXDLYSRESETDONE,
    input               SYNC_RXPHALIGNDONE_M,
    input               SYNC_RXPHALIGNDONE_S,
    input               SYNC_RXSYNC_DONEM_IN,
    input               SYNC_RXSYNCDONE,
    
    //---------- Output ------------------------------------
    output              SYNC_TXPHDLYRESET,
    output              SYNC_TXPHALIGN,     
    output              SYNC_TXPHALIGNEN,  
    output              SYNC_TXPHINIT,       
    output              SYNC_TXDLYBYPASS,  
    output              SYNC_TXDLYSRESET,
    output              SYNC_TXDLYEN,   
    output              SYNC_TXSYNC_DONE,
    output    [ 5:0]    SYNC_FSM_TX,
    
    output              SYNC_RXPHALIGN,
    output              SYNC_RXPHALIGNEN,
    output              SYNC_RXDLYBYPASS,
    output              SYNC_RXDLYSRESET,
    output              SYNC_RXDLYEN,
    output              SYNC_RXDDIEN,
    output              SYNC_RXSYNC_DONEM_OUT,
    output              SYNC_RXSYNC_DONE,
    output    [ 6:0]    SYNC_FSM_RX

);          

    //---------- Input Register ----------------------------
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 gen3_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rate_idle_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg		      mmcm_lock_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxelecidle_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxcdrlock_reg1;
    
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 gen3_reg2;     
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rate_idle_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg		      mmcm_lock_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxelecidle_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxcdrlock_reg2;
    
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg		      txsync_start_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txphinitdone_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txdlysresetdone_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txphaligndone_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txsyncdone_reg1;
                                                   
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txsync_start_reg2;     
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txphinitdone_reg2;     
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txdlysresetdone_reg2;    
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txphaligndone_reg2;   
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txsyncdone_reg2; 
    
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txsync_start_reg3;     
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txphinitdone_reg3;     
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txdlysresetdone_reg3;    
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txphaligndone_reg3;   
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txsyncdone_reg3;     
    
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg		      rxsync_start_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxdlysresetdone_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxphaligndone_m_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxphaligndone_s_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxsync_donem_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxsyncdone_reg1;

(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg		      rxsync_start_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxdlysresetdone_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxphaligndone_m_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxphaligndone_s_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxsync_donem_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxsyncdone_reg2;
    
    //---------- Output Register ---------------------------          
    reg                 txdlyen     = 1'd0;
    reg                 txsync_done = 1'd0;
    reg         [ 5:0]  fsm_tx      = 6'd0;     
    
    reg                 rxdlyen     = 1'd0;
    reg                 rxsync_done = 1'd0;         
    reg	        [ 6:0]  fsm_rx      = 7'd0;   
   
    //---------- FSM ---------------------------------------                                         
    localparam          FSM_TXSYNC_IDLE  = 6'b000001; 
    localparam          FSM_MMCM_LOCK    = 6'b000010;                                     
    localparam          FSM_TXSYNC_START = 6'b000100;
    localparam          FSM_TXPHINITDONE = 6'b001000;       // Manual TX sync only
    localparam          FSM_TXSYNC_DONE1 = 6'b010000;   
    localparam          FSM_TXSYNC_DONE2 = 6'b100000;             
        
    localparam          FSM_RXSYNC_IDLE  = 7'b0000001; 
    localparam          FSM_RXCDRLOCK    = 7'b0000010;                                     
    localparam          FSM_RXSYNC_START = 7'b0000100;
    localparam          FSM_RXSYNC_DONE1 = 7'b0001000;                                     
    localparam          FSM_RXSYNC_DONE2 = 7'b0010000;
    localparam          FSM_RXSYNC_DONES = 7'b0100000;
    localparam          FSM_RXSYNC_DONEM = 7'b1000000;
        
    
    
//---------- Input FF ----------------------------------------------------------
always @ (posedge SYNC_CLK)
begin

    if (!SYNC_RST_N)
        begin    
        //---------- 1st Stage FF --------------------------  
        gen3_reg1            <= 1'd0;
        rate_idle_reg1       <= 1'd0;
        mmcm_lock_reg1       <= 1'd0;
        rxelecidle_reg1      <= 1'd0;
        rxcdrlock_reg1 	     <= 1'd0;
 
        txsync_start_reg1	   <= 1'd0;
        txphinitdone_reg1    <= 1'd0;
        txdlysresetdone_reg1 <= 1'd0;
        txphaligndone_reg1   <= 1'd0;
        txsyncdone_reg1      <= 1'd0;
        
        rxsync_start_reg1	   <= 1'd0; 
        rxdlysresetdone_reg1 <= 1'd0;
        rxphaligndone_m_reg1 <= 1'd0;
        rxphaligndone_s_reg1 <= 1'd0;
        rxsync_donem_reg1    <= 1'd0;    
        rxsyncdone_reg1      <= 1'd0;
        //---------- 2nd Stage FF --------------------------
        gen3_reg2            <= 1'd0;
        rate_idle_reg2       <= 1'd0;
        mmcm_lock_reg2       <= 1'd0;
        rxelecidle_reg2      <= 1'd0;
        rxcdrlock_reg2 	     <= 1'd0;
        
        txsync_start_reg2	   <= 1'd0;
        txphinitdone_reg2    <= 1'd0;
        txdlysresetdone_reg2 <= 1'd0;
        txphaligndone_reg2   <= 1'd0;
        txsyncdone_reg2      <= 1'd0;
        
        rxsync_start_reg2	   <= 1'd0; 
        rxdlysresetdone_reg2 <= 1'd0;
        rxphaligndone_m_reg2 <= 1'd0;
        rxphaligndone_s_reg2 <= 1'd0;
        rxsync_donem_reg2    <= 1'd0;
        rxsyncdone_reg2      <= 1'd0;
        //---------- 3rd Stage FF --------------------------
        txsync_start_reg3	   <= 1'd0;
        txphinitdone_reg3    <= 1'd0;
        txdlysresetdone_reg3 <= 1'd0;
        txphaligndone_reg3   <= 1'd0;
        txsyncdone_reg3      <= 1'd0;
        
        end
    else
        begin  
        //---------- 1st Stage FF --------------------------
        gen3_reg1            <= SYNC_GEN3;
        rate_idle_reg1       <= SYNC_RATE_IDLE;
        mmcm_lock_reg1       <= SYNC_MMCM_LOCK;
        rxelecidle_reg1      <= SYNC_RXELECIDLE; 
        rxcdrlock_reg1       <= SYNC_RXCDRLOCK;

        txsync_start_reg1    <= SYNC_TXSYNC_START;
        txphinitdone_reg1    <= SYNC_TXPHINITDONE;
        txdlysresetdone_reg1 <= SYNC_TXDLYSRESETDONE;
        txphaligndone_reg1   <= SYNC_TXPHALIGNDONE;
        txsyncdone_reg1      <= SYNC_TXSYNCDONE;
        
        rxsync_start_reg1	   <= SYNC_RXSYNC_START; 
        rxdlysresetdone_reg1 <= SYNC_RXDLYSRESETDONE;
        rxphaligndone_m_reg1 <= SYNC_RXPHALIGNDONE_M;
        rxphaligndone_s_reg1 <= SYNC_RXPHALIGNDONE_S;
        rxsync_donem_reg1    <= SYNC_RXSYNC_DONEM_IN;
        rxsyncdone_reg1      <= SYNC_RXSYNCDONE; 
        //---------- 2nd Stage FF --------------------------
        gen3_reg2            <= gen3_reg1;
        rate_idle_reg2       <= rate_idle_reg1;
        mmcm_lock_reg2       <= mmcm_lock_reg1;
        rxelecidle_reg2      <= rxelecidle_reg1;
        rxcdrlock_reg2       <= rxcdrlock_reg1;
        
        txsync_start_reg2    <= txsync_start_reg1;       
        txphinitdone_reg2    <= txphinitdone_reg1; 
        txdlysresetdone_reg2 <= txdlysresetdone_reg1;   
        txphaligndone_reg2   <= txphaligndone_reg1;
        txsyncdone_reg2      <= txsyncdone_reg1;
        
        rxsync_start_reg2    <= rxsync_start_reg1;
        rxdlysresetdone_reg2 <= rxdlysresetdone_reg1; 
        rxphaligndone_m_reg2 <= rxphaligndone_m_reg1;
        rxphaligndone_s_reg2 <= rxphaligndone_s_reg1;
        rxsync_donem_reg2    <= rxsync_donem_reg1; 
        rxsyncdone_reg2      <= rxsyncdone_reg1;
        //---------- 3rd Stage FF --------------------------
        txsync_start_reg3    <= txsync_start_reg2;	   
        txphinitdone_reg3    <= txphinitdone_reg2;    
        txdlysresetdone_reg3 <= txdlysresetdone_reg2; 
        txphaligndone_reg3   <= txphaligndone_reg2;   
        txsyncdone_reg3      <= txsyncdone_reg2;      
        end
        
end       



//---------- Generate TX Sync FSM ----------------------------------------------
generate if ((PCIE_LINK_SPEED == 3) || (PCIE_TXBUF_EN == "FALSE")) 

    begin : txsync_fsm

    //---------- PIPE TX Sync FSM ----------------------------------------------
    always @ (posedge SYNC_CLK)
    begin
    
        if (!SYNC_RST_N)
            begin
            fsm_tx      <= FSM_TXSYNC_IDLE;   
            txdlyen     <= 1'd0; 
            txsync_done <= 1'd0;
            end                    
        else
            begin
            
            case (fsm_tx)
            
            //---------- Idle State ------------------------
            FSM_TXSYNC_IDLE :
            
                begin     
                //---------- Exiting Reset or Rate Change --
                if (txsync_start_reg2)
                    begin
                    fsm_tx      <= FSM_MMCM_LOCK;
                    txdlyen     <= 1'd0; 
                    txsync_done <= 1'd0;
                    end
                else
                    begin
                    fsm_tx      <= FSM_TXSYNC_IDLE;
                    txdlyen     <= txdlyen; 
                    txsync_done <= txsync_done;
                    end
                end
                
            //---------- Check MMCM Lock -------------------
            FSM_MMCM_LOCK :
            
                begin
                fsm_tx      <= (mmcm_lock_reg2 ? FSM_TXSYNC_START : FSM_MMCM_LOCK);
                txdlyen     <= 1'd0; 
                txsync_done <= 1'd0;  
                end
                
            //---------- TX Delay Soft Reset --------------- 
            FSM_TXSYNC_START :
            
                begin
                fsm_tx      <= (((!txdlysresetdone_reg3 && txdlysresetdone_reg2) || (((PCIE_GT_DEVICE == "GTH") || (PCIE_GT_DEVICE == "GTP")) && (PCIE_TXSYNC_MODE == 1) && SYNC_SLAVE)) ? FSM_TXPHINITDONE : FSM_TXSYNC_START);
                txdlyen     <= 1'd0; 
                txsync_done <= 1'd0;
                end
                
            //---------- Wait for TX Phase Init Done (Manual Mode Only)
            FSM_TXPHINITDONE :
            
                begin
                fsm_tx      <= (((!txphinitdone_reg3 && txphinitdone_reg2) || (PCIE_TXSYNC_MODE == 1) || (!SYNC_ACTIVE_LANE)) ? FSM_TXSYNC_DONE1 : FSM_TXPHINITDONE);
                txdlyen     <= 1'd0; 
                txsync_done <= 1'd0;
                end
                
            //---------- Wait for TX Phase Alignment Done --
            FSM_TXSYNC_DONE1 :
            
                begin
                if (((PCIE_GT_DEVICE == "GTH") || (PCIE_GT_DEVICE == "GTP")) && (PCIE_TXSYNC_MODE == 1) && !SYNC_SLAVE)
                   fsm_tx <= ((!txsyncdone_reg3 && txsyncdone_reg2)       || (!SYNC_ACTIVE_LANE) ? FSM_TXSYNC_DONE2 : FSM_TXSYNC_DONE1); 
                else
                   fsm_tx <= ((!txphaligndone_reg3 && txphaligndone_reg2) || (!SYNC_ACTIVE_LANE) ? FSM_TXSYNC_DONE2 : FSM_TXSYNC_DONE1); 
                
                txdlyen     <= 1'd0; 
                txsync_done <= 1'd0;
                end  
                
            //---------- Wait for Master TX Delay Alignment Done 
            FSM_TXSYNC_DONE2 :
            
                begin
                if ((!txphaligndone_reg3 && txphaligndone_reg2) || (!SYNC_ACTIVE_LANE) || SYNC_SLAVE || (((PCIE_GT_DEVICE == "GTH") || (PCIE_GT_DEVICE == "GTP")) && (PCIE_TXSYNC_MODE == 1)) || (BYPASS_TXDELAY_ALIGN == 1)) 
                    begin
                    fsm_tx      <= FSM_TXSYNC_IDLE;
                    txdlyen     <= !SYNC_SLAVE; 
                    txsync_done <= 1'd1;
                    end
                else
                    begin
                    fsm_tx      <= FSM_TXSYNC_DONE2;
                    txdlyen     <= !SYNC_SLAVE; 
                    txsync_done <= 1'd0;
                    end
                end         
                              
            //---------- Default State ---------------------
            default :
                begin 
                fsm_tx      <= FSM_TXSYNC_IDLE;
                txdlyen     <= 1'd0; 
                txsync_done <= 1'd0;
                end
                
            endcase
            
            end
            
    end     

    end  
          
//---------- TX Sync FSM Default------------------------------------------------
else 

    begin : txsync_fsm_disable
       
    //---------- Default -------------------------------------------------------
    always @ (posedge SYNC_CLK)
    begin    
        fsm_tx      <= FSM_TXSYNC_IDLE;
        txdlyen     <= 1'd0;
        txsync_done <= 1'd0; 
    end

    end 

endgenerate  

          
       
//---------- Generate RX Sync FSM ----------------------------------------------
generate if ((PCIE_LINK_SPEED == 3) && (PCIE_RXBUF_EN == "FALSE")) 

    begin : rxsync_fsm
   
    //---------- PIPE RX Sync FSM ----------------------------------------------
    always @ (posedge SYNC_CLK)
    begin
    
        if (!SYNC_RST_N)
            begin
            fsm_rx      <= FSM_RXSYNC_IDLE; 
            rxdlyen     <= 1'd0;
            rxsync_done <= 1'd0;   
            end                    
        else
            begin
            
            case (fsm_rx)
            
            //---------- Idle State ------------------------
            FSM_RXSYNC_IDLE :
            
                begin
                //---------- Exiting Rate Change -----------
                if (rxsync_start_reg2)
                    begin
                    fsm_rx      <= FSM_RXCDRLOCK;
                    rxdlyen     <= 1'd0;
                    rxsync_done <= 1'd0;
                    end
                //---------- Exiting Electrical Idle without Rate Change 
                else if (gen3_reg2 && rate_idle_reg2 && ((rxelecidle_reg2 == 1'd1) && (rxelecidle_reg1 == 1'd0)))
                    begin
                    fsm_rx      <= FSM_RXCDRLOCK;
                    rxdlyen     <= 1'd0;
                    rxsync_done <= 1'd0;   
                    end 
                //---------- Idle --------------------------
                else                    
                    begin
                    fsm_rx      <= FSM_RXSYNC_IDLE;
                    rxdlyen     <= rxelecidle_reg2 ? 1'd0 : rxdlyen;
                    rxsync_done <= rxelecidle_reg2 ? 1'd0 : rxsync_done;
                    end
                end
                
            //---------- Wait for RX Electrical Idle Exit and RX CDR Lock 
            FSM_RXCDRLOCK :
            
                begin
                fsm_rx      <= ((!rxelecidle_reg2 && rxcdrlock_reg2) ? FSM_RXSYNC_START : FSM_RXCDRLOCK);
                rxdlyen     <= 1'd0;
                rxsync_done <= 1'd0;
                end
                
            //---------- Start RX Sync with RX Delay Soft Reset
            FSM_RXSYNC_START :
            
                begin
                fsm_rx      <= ((!rxdlysresetdone_reg2 && rxdlysresetdone_reg1) ? FSM_RXSYNC_DONE1 : FSM_RXSYNC_START);
                rxdlyen     <= 1'd0;
                rxsync_done <= 1'd0;
                end     
                      
            //---------- Wait for RX Phase Alignment Done --
            FSM_RXSYNC_DONE1 :
            
                begin
                if (SYNC_SLAVE)
                    begin
                    fsm_rx      <= ((!rxphaligndone_s_reg2 && rxphaligndone_s_reg1) ? FSM_RXSYNC_DONE2 : FSM_RXSYNC_DONE1);
                    rxdlyen     <= 1'd0;
                    rxsync_done <= 1'd0;
                    end
                else
                    begin
                    fsm_rx      <= ((!rxphaligndone_m_reg2 && rxphaligndone_m_reg1) ? FSM_RXSYNC_DONE2 : FSM_RXSYNC_DONE1);
                    rxdlyen     <= 1'd0;
                    rxsync_done <= 1'd0;
                    end
                end  
                
            //---------- Wait for Master RX Delay Alignment Done 
            FSM_RXSYNC_DONE2 :
            
                begin   
                if (SYNC_SLAVE)
                    begin
                    fsm_rx      <= FSM_RXSYNC_IDLE;
                    rxdlyen     <= 1'd0;
                    rxsync_done <= 1'd1;
                    end
                else if ((!rxphaligndone_m_reg2 && rxphaligndone_m_reg1) || (BYPASS_RXDELAY_ALIGN == 1)) 
                    begin
                    fsm_rx      <= ((PCIE_LANE == 1) ? FSM_RXSYNC_IDLE : FSM_RXSYNC_DONES);
                    rxdlyen     <=  (PCIE_LANE == 1);
                    rxsync_done <=  (PCIE_LANE == 1);
                    end
                else
                    begin
                    fsm_rx      <= FSM_RXSYNC_DONE2;
                    rxdlyen     <= 1'd1;
                    rxsync_done <= 1'd0;
                    end
                end     
                
            //---------- Wait for Slave RX Phase Alignment Done 
            FSM_RXSYNC_DONES :
            
                begin
                if (!rxphaligndone_s_reg2 && rxphaligndone_s_reg1) 
                    begin
                    fsm_rx      <= FSM_RXSYNC_DONEM;
                    rxdlyen     <= 1'd1;
                    rxsync_done <= 1'd0;
                    end
                else
                    begin
                    fsm_rx      <= FSM_RXSYNC_DONES;
                    rxdlyen     <= 1'd0;
                    rxsync_done <= 1'd0;
                    end
                end           
                   
            //---------- Wait for Master RX Delay Alignment Done 
            FSM_RXSYNC_DONEM :
            
                begin
                if ((!rxphaligndone_m_reg2 && rxphaligndone_m_reg1) || (BYPASS_RXDELAY_ALIGN == 1)) 
                    begin
                    fsm_rx      <= FSM_RXSYNC_IDLE;
                    rxdlyen     <= 1'd1;
                    rxsync_done <= 1'd1;
                    end
                else
                    begin
                    fsm_rx      <= FSM_RXSYNC_DONEM;
                    rxdlyen     <= 1'd1;
                    rxsync_done <= 1'd0;
                    end
                end         
                              
            //---------- Default State ---------------------
            default : 
                begin
                fsm_rx      <= FSM_RXSYNC_IDLE;
                rxdlyen     <= 1'd0;
                rxsync_done <= 1'd0;
                end    
                        
        	   endcase
            
            end
            
    end            
        
    end  
          
//---------- RX Sync FSM Default -----------------------------------------------
else 

    begin : rxsync_fsm_disable
       
    //---------- Default -------------------------------------------------------
    always @ (posedge SYNC_CLK)
    begin    
        fsm_rx      <= FSM_RXSYNC_IDLE;
        rxdlyen     <= 1'd0;
        rxsync_done <= 1'd0; 
    end

    end 

endgenerate      
   


//---------- PIPE Sync Output --------------------------------------------------            
assign SYNC_TXPHALIGNEN      = ((PCIE_TXSYNC_MODE == 1) || (!gen3_reg2 && (PCIE_TXBUF_EN == "TRUE"))) ? 1'd0 : 1'd1;   
assign SYNC_TXDLYBYPASS      = 1'd0;                     
//assign SYNC_TXDLYSRESET    = !(((PCIE_GT_DEVICE == "GTH") || (PCIE_GT_DEVICE == "GTP")) && (PCIE_TXSYNC_MODE == 1) && SYNC_SLAVE) ? (fsm_tx == FSM_TXSYNC_START) : 1'd0; 
assign SYNC_TXDLYSRESET      = (fsm_tx == FSM_TXSYNC_START);
assign SYNC_TXPHDLYRESET     =  (((PCIE_GT_DEVICE == "GTH") || (PCIE_GT_DEVICE == "GTP")) && (PCIE_TXSYNC_MODE == 1) && SYNC_SLAVE) ? (fsm_tx == FSM_TXSYNC_START) : 1'd0;   
assign SYNC_TXPHINIT         = PCIE_TXSYNC_MODE ? 1'd0 : (fsm_tx == FSM_TXPHINITDONE); 
assign SYNC_TXPHALIGN        = PCIE_TXSYNC_MODE ? 1'd0 : (fsm_tx == FSM_TXSYNC_DONE1);
assign SYNC_TXDLYEN          = PCIE_TXSYNC_MODE ? 1'd0 : txdlyen;
assign SYNC_TXSYNC_DONE      = txsync_done;
assign SYNC_FSM_TX           = fsm_tx;

assign SYNC_RXPHALIGNEN      = ((PCIE_RXSYNC_MODE == 1) || (!gen3_reg2) || (PCIE_RXBUF_EN == "TRUE")) ? 1'd0 : 1'd1;  
assign SYNC_RXDLYBYPASS      = !gen3_reg2 || (PCIE_RXBUF_EN == "TRUE");
assign SYNC_RXDLYSRESET      = (fsm_rx == FSM_RXSYNC_START);
assign SYNC_RXPHALIGN        = PCIE_RXSYNC_MODE ? 1'd0 : (!SYNC_SLAVE ? (fsm_rx == FSM_RXSYNC_DONE1) : (rxsync_donem_reg2 && (fsm_rx == FSM_RXSYNC_DONE1)));
assign SYNC_RXDLYEN          = PCIE_RXSYNC_MODE ? 1'd0 : rxdlyen;
assign SYNC_RXDDIEN          = gen3_reg2 && (PCIE_RXBUF_EN == "FALSE"); 
assign SYNC_RXSYNC_DONE      = rxsync_done;
assign SYNC_RXSYNC_DONEM_OUT = (fsm_rx == FSM_RXSYNC_DONES);
assign SYNC_FSM_RX	         = fsm_rx;  



endmodule
