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
// File       : design_1_xdma_0_0_pcie2_ip_pipe_user.v
// Version    : 3.3
//------------------------------------------------------------------------------
//  Filename     :  pipe_user.v
//  Description  :  PIPE User Module for 7 Series Transceiver
//  Version      :  15.3.3
//------------------------------------------------------------------------------



`timescale 1ns / 1ps



//---------- PIPE User Module --------------------------------------------------
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_pipe_user #
(

    parameter PCIE_SIM_MODE    = "FALSE",                   // PCIe sim mode 
    parameter PCIE_USE_MODE    = "3.0",                     // PCIe sim version
    parameter PCIE_OOBCLK_MODE = 1,                         // PCIe OOB clock mode
    parameter RXCDRLOCK_MAX    = 4'd15,                     // RXCDRLOCK max count
    parameter RXVALID_MAX      = 4'd15,                     // RXVALID max count
    parameter CONVERGE_MAX     = 22'd3125000                // Convergence max count
    
)

(

    //---------- Input -------------------------------------
    input               USER_TXUSRCLK,
    input               USER_RXUSRCLK,
    input               USER_OOBCLK_IN,
    input               USER_RST_N,
    input               USER_RXUSRCLK_RST_N,
    input               USER_PCLK_SEL,
    input               USER_RESETOVRD_START,
    input               USER_TXRESETDONE,
    input               USER_RXRESETDONE,
    input               USER_TXELECIDLE,
    input               USER_TXCOMPLIANCE,
    input               USER_RXCDRLOCK_IN,
    input               USER_RXVALID_IN,
    input               USER_RXSTATUS_IN,
    input               USER_PHYSTATUS_IN,
    input               USER_RATE_DONE, 
    input               USER_RST_IDLE,
    input               USER_RATE_RXSYNC,
    input               USER_RATE_IDLE,
    input               USER_RATE_GEN3,
    input               USER_RXEQ_ADAPT_DONE,
    
    //---------- Output ------------------------------------
    output              USER_OOBCLK,
    output              USER_RESETOVRD,
    output              USER_TXPMARESET,                            
    output              USER_RXPMARESET,                           
    output              USER_RXCDRRESET,               
    output              USER_RXCDRFREQRESET,           
    output              USER_RXDFELPMRESET,            
    output              USER_EYESCANRESET,             
    output              USER_TXPCSRESET,                              
    output              USER_RXPCSRESET,                            
    output              USER_RXBUFRESET,   
    output              USER_RESETOVRD_DONE,            
    output              USER_RESETDONE,
    output              USER_ACTIVE_LANE,
    output              USER_RXCDRLOCK_OUT,
    output              USER_RXVALID_OUT,
    output              USER_PHYSTATUS_OUT,
    output              USER_PHYSTATUS_RST,
    output              USER_GEN3_RDY,
    output              USER_RX_CONVERGE 

);
    
    //---------- Input Registers ---------------------------   
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 pclk_sel_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 resetovrd_start_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txresetdone_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxresetdone_reg1; 
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txelecidle_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txcompliance_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxcdrlock_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxvalid_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxstatus_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rate_done_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rst_idle_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rate_rxsync_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rate_idle_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rate_gen3_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxeq_adapt_done_reg1;

(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 pclk_sel_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 resetovrd_start_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txresetdone_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxresetdone_reg2; 
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txelecidle_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 txcompliance_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)	  reg	              rxcdrlock_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxvalid_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxstatus_reg2; 
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rate_done_reg2;   
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rst_idle_reg2; 
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rate_rxsync_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rate_idle_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rate_gen3_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rxeq_adapt_done_reg2;
    
    //---------- Internal Signal ---------------------------
    reg         [ 1:0]  oobclk_cnt    =  2'd0;
    reg         [ 7:0]  reset_cnt     =  8'd127;
    reg         [ 3:0]  rxcdrlock_cnt =  4'd0;
    reg         [ 3:0]  rxvalid_cnt   =  4'd0;
    reg         [21:0]  converge_cnt  = 22'd0;
    reg                 converge_gen3 =  1'd0;
    
    //---------- Output Registers --------------------------
    reg                 oobclk   = 1'd0;
    reg         [ 7:0]  reset    = 8'h00;
    reg                 gen3_rdy = 1'd0;
    reg         [ 1:0]  fsm      = 2'd0;
    
    //---------- FSM ---------------------------------------                                         
    localparam          FSM_IDLE       = 2'd0; 
    localparam          FSM_RESETOVRD  = 2'd1;
    localparam          FSM_RESET_INIT = 2'd2;
    localparam          FSM_RESET      = 2'd3;    
    
    //---------- Simulation Speedup ------------------------
    localparam converge_max_cnt = (PCIE_SIM_MODE == "TRUE") ? 22'd100 : CONVERGE_MAX;                                                              



//---------- Input FF ----------------------------------------------------------
always @ (posedge USER_TXUSRCLK)
begin

    if (!USER_RST_N)
        begin    
        //---------- 1st Stage FF --------------------------  
        pclk_sel_reg1        <= 1'd0; 
        resetovrd_start_reg1 <= 1'd0;
        txresetdone_reg1     <= 1'd0;
        rxresetdone_reg1     <= 1'd0; 
        txelecidle_reg1      <= 1'd0;
        txcompliance_reg1    <= 1'd0;
        rxcdrlock_reg1 	     <= 1'd0;
        rxeq_adapt_done_reg1 <= 1'd0;
        //---------- 2nd Stage FF --------------------------
        pclk_sel_reg2        <= 1'd0;
        resetovrd_start_reg2 <= 1'd0;
        txresetdone_reg2     <= 1'd0;
        rxresetdone_reg2     <= 1'd0; 
        txelecidle_reg2      <= 1'd0;
        txcompliance_reg2    <= 1'd0;
        rxcdrlock_reg2 	     <= 1'd0;
        rxeq_adapt_done_reg2 <= 1'd0;
        end
    else
        begin  
        //---------- 1st Stage FF --------------------------
        pclk_sel_reg1        <= USER_PCLK_SEL;
        resetovrd_start_reg1 <= USER_RESETOVRD_START;
        txresetdone_reg1     <= USER_TXRESETDONE;
        rxresetdone_reg1     <= USER_RXRESETDONE;
        txelecidle_reg1      <= USER_TXELECIDLE;
        txcompliance_reg1    <= USER_TXCOMPLIANCE;
        rxcdrlock_reg1 	     <= USER_RXCDRLOCK_IN;
        rxeq_adapt_done_reg1 <= USER_RXEQ_ADAPT_DONE;
        //---------- 2nd Stage FF --------------------------
        pclk_sel_reg2        <= pclk_sel_reg1;
        resetovrd_start_reg2 <= resetovrd_start_reg1;
        txresetdone_reg2     <= txresetdone_reg1;      
        rxresetdone_reg2     <= rxresetdone_reg1;      
        txelecidle_reg2      <= txelecidle_reg1;       
        txcompliance_reg2    <= txcompliance_reg1;  
        rxcdrlock_reg2 	     <= rxcdrlock_reg1;  
        rxeq_adapt_done_reg2 <= rxeq_adapt_done_reg1;
        end
        
end 



//---------- Input FF ----------------------------------------------------------
always @ (posedge USER_RXUSRCLK)
begin

    if (!USER_RXUSRCLK_RST_N)
        begin    
        //---------- 1st Stage FF --------------------------   
        rxvalid_reg1     <= 1'd0;
        rxstatus_reg1    <= 1'd0;
        rst_idle_reg1    <= 1'd0; 
        rate_done_reg1   <= 1'd0;
        rate_rxsync_reg1 <= 1'd0;
        rate_idle_reg1   <= 1'd0;
        rate_gen3_reg1   <= 1'd0;
        //---------- 2nd Stage FF --------------------------
        rxvalid_reg2     <= 1'd0;
        rxstatus_reg2    <= 1'd0;
        rst_idle_reg2    <= 1'd0; 
        rate_done_reg2   <= 1'd0;
        rate_rxsync_reg2 <= 1'd0;
        rate_idle_reg2   <= 1'd0;
        rate_gen3_reg2   <= 1'd0;
        end
    else
        begin  
        //---------- 1st Stage FF --------------------------
        rxvalid_reg1     <= USER_RXVALID_IN;
        rxstatus_reg1    <= USER_RXSTATUS_IN;
        rst_idle_reg1    <= USER_RST_IDLE; 
        rate_done_reg1   <= USER_RATE_DONE;
        rate_rxsync_reg1 <= USER_RATE_RXSYNC;
        rate_idle_reg1   <= USER_RATE_IDLE;
        rate_gen3_reg1   <= USER_RATE_GEN3;
        //---------- 2nd Stage FF --------------------------  	   
        rxvalid_reg2     <= rxvalid_reg1;            
        rxstatus_reg2    <= rxstatus_reg1; 
        rst_idle_reg2    <= rst_idle_reg1;
        rate_done_reg2   <= rate_done_reg1;  
        rate_rxsync_reg2 <= rate_rxsync_reg1;
        rate_idle_reg2   <= rate_idle_reg1;
        rate_gen3_reg2   <= rate_gen3_reg1;      
        end
        
end 



//---------- Generate Reset Override -------------------------------------------
generate if (PCIE_USE_MODE == "1.0") 

    begin : resetovrd

    //---------- Reset Counter -------------------------------------------------
    always @ (posedge USER_TXUSRCLK)
    begin
    
        if (!USER_RST_N)
            reset_cnt <= 8'd127;
        else
        
            //---------- Decrement Counter ---------------------
            if (((fsm == FSM_RESETOVRD) || (fsm == FSM_RESET)) && (reset_cnt != 8'd0))
                reset_cnt <= reset_cnt - 8'd1;
                
            //---------- Reset Counter -------------------------
            else 
            
                case (reset) 
                8'b00000000 : reset_cnt <= 8'd127;              // Programmable PMARESET       time
                8'b11111111 : reset_cnt <= 8'd127;              // Programmable RXCDRRESET     time
                8'b11111110 : reset_cnt <= 8'd127;              // Programmable RXCDRFREQRESET time
                8'b11111100 : reset_cnt <= 8'd127;              // Programmable RXDFELPMRESET  time
                8'b11111000 : reset_cnt <= 8'd127;              // Programmable EYESCANRESET   time
                8'b11110000 : reset_cnt <= 8'd127;              // Programmable PCSRESET       time
                8'b11100000 : reset_cnt <= 8'd127;              // Programmable RXBUFRESET     time
                8'b11000000 : reset_cnt <= 8'd127;              // Programmable RESETOVRD deassertion time
                8'b10000000 : reset_cnt <= 8'd127;
                default     : reset_cnt <= 8'd127; 
                endcase
                
    end 
    
    
    
    //---------- Reset Shift Register ------------------------------------------
    always @ (posedge USER_TXUSRCLK)
    begin
    
        if (!USER_RST_N)
            reset <= 8'h00;
        else
        
            //---------- Initialize Reset Register ---------
            if (fsm == FSM_RESET_INIT)
                reset <= 8'hFF;   
            //---------- Shift Reset Register --------------
            else if ((fsm == FSM_RESET) && (reset_cnt == 8'd0))
                reset <= {reset[6:0], 1'd0};        
            //---------- Hold Reset Register ---------------
            else
                reset <= reset;
            
    end
         
            
    
    //---------- Reset Override FSM --------------------------------------------
    always @ (posedge USER_TXUSRCLK)
    begin
    
        if (!USER_RST_N)
            fsm <= FSM_IDLE;     
                           
        else
        
            begin
            
            case (fsm)
            //---------- Idle State ------------------------
            FSM_IDLE       : fsm <= resetovrd_start_reg2 ? FSM_RESETOVRD : FSM_IDLE;
            //---------- Assert RESETOVRD ------------------
            FSM_RESETOVRD  : fsm <= (reset_cnt == 8'd0) ? FSM_RESET_INIT : FSM_RESETOVRD;
            //---------- Initialize Reset ------------------
            FSM_RESET_INIT : fsm <= FSM_RESET;
            //---------- Shift Reset -----------------------
            FSM_RESET      : fsm <= ((reset == 8'd0) && rxresetdone_reg2) ? FSM_IDLE : FSM_RESET;  
            //---------- Default State ---------------------
            default        : fsm <= FSM_IDLE;
        	  endcase
            
            end
    
    end
    
    end 

//---------- Disable Reset Override --------------------------------------------
else 

    begin : resetovrd_disble

    //---------- Generate Default Signals --------------------------------------
    always @ (posedge USER_TXUSRCLK)
    begin    
    
       if (!USER_RST_N)
           begin   
           reset_cnt <= 8'hFF;
           reset     <= 8'd0;
           fsm       <= 2'd0; 
           end
       else
           begin   
           reset_cnt <= 8'hFF;
           reset     <= 8'd0;
           fsm       <= 2'd0; 
           end
        
    end

    end

endgenerate



//---------- Generate OOB Clock Divider ------------------------
generate if (PCIE_OOBCLK_MODE == 1) 

    begin : oobclk_div
    
    //---------- OOB Clock Divider -----------------------------
    always @ (posedge USER_OOBCLK_IN)
    begin
    
        if (!USER_RST_N)
            begin
            oobclk_cnt <= 2'd0;
            oobclk     <= 1'd0;
            end
        else
            begin
            oobclk_cnt <= oobclk_cnt + 2'd1;
            oobclk     <= pclk_sel_reg2 ? oobclk_cnt[1] : oobclk_cnt[0];
            end
            
    end 
    
    end
   
else

    begin : oobclk_div_disable
    
    //---------- OOB Clock Default -------------------------
    always @ (posedge USER_OOBCLK_IN)
    begin
    
        if (!USER_RST_N)
            begin
            oobclk_cnt <= 2'd0;
            oobclk     <= 1'd0;
            end
        else
            begin
            oobclk_cnt <= 2'd0;
            oobclk     <= 1'd0;
            end
            
    end 
    
    end   
   
endgenerate

//---------- RXCDRLOCK Filter --------------------------------------------------
always @ (posedge USER_TXUSRCLK)
begin

    if (!USER_RST_N)
        rxcdrlock_cnt <= 4'd0;
    else
    
        //---------- Increment RXCDRLOCK Counter -----------
        if (rxcdrlock_reg2 && (rxcdrlock_cnt != RXCDRLOCK_MAX))
            rxcdrlock_cnt <= rxcdrlock_cnt + 4'd1;
            
        //---------- Hold RXCDRLOCK Counter ----------------
        else if (rxcdrlock_reg2 && (rxcdrlock_cnt == RXCDRLOCK_MAX))
            rxcdrlock_cnt <= rxcdrlock_cnt;
            
        //---------- Reset RXCDRLOCK Counter ---------------
        else
            rxcdrlock_cnt <= 4'd0;
        
end 



//---------- RXVALID Filter ----------------------------------------------------
always @ (posedge USER_RXUSRCLK)
begin

    if (!USER_RXUSRCLK_RST_N)
        rxvalid_cnt <= 4'd0;
    else
    
        //---------- Increment RXVALID Counter -------------
        if (rxvalid_reg2 && (rxvalid_cnt != RXVALID_MAX) && (!rxstatus_reg2))
            rxvalid_cnt <= rxvalid_cnt + 4'd1;
            
        //---------- Hold RXVALID Counter ------------------
        else if (rxvalid_reg2 && (rxvalid_cnt == RXVALID_MAX))
            rxvalid_cnt <= rxvalid_cnt;
            
        //---------- Reset RXVALID Counter -----------------
        else
            rxvalid_cnt <= 4'd0;
        
end 



//---------- Converge Counter --------------------------------------------------
always @ (posedge USER_TXUSRCLK)
begin

    if (!USER_RST_N)
        converge_cnt <= 22'd0;
    else
    
        //---------- Enter Gen1/Gen2 -----------------------
        if (rst_idle_reg2 && rate_idle_reg2 && !rate_gen3_reg2)
            begin
            
            //---------- Increment Converge Counter --------
            if (converge_cnt < converge_max_cnt) 
                converge_cnt <= converge_cnt + 22'd1;
            //---------- Hold Converge Counter -------------
            else 
                converge_cnt <= converge_cnt;
                
            end
            
        //---------- Reset Converge Counter ----------------
        else
            converge_cnt <= 22'd0;
        
end 



//---------- Converge ----------------------------------------------------------
always @ (posedge USER_TXUSRCLK)
begin

    if (!USER_RST_N)
        converge_gen3 <= 1'd0;
    else
    
        //---------- Enter Gen3 ----------------------------
        if (rate_gen3_reg2)
        
            //---------- Wait for RX equalization adapt done 
            if (rxeq_adapt_done_reg2)
                converge_gen3 <= 1'd1;
            else
                converge_gen3 <= converge_gen3;
        
        //-------- Exit Gen3 -------------------------------
        else
        
            converge_gen3 <= 1'd0;
        
        
end 



//---------- GEN3_RDY Generator ------------------------------------------------
always @ (posedge USER_RXUSRCLK)
begin

    if (!USER_RXUSRCLK_RST_N)
        gen3_rdy <= 1'd0;
    else   
        gen3_rdy <= rate_idle_reg2 && rate_gen3_reg2;    
        
end 



//---------- PIPE User Override Reset Output -----------------------------------  
assign USER_RESETOVRD      = (fsm != FSM_IDLE);
assign USER_TXPMARESET     = 1'd0; 
assign USER_RXPMARESET     = reset[0];  
assign USER_RXCDRRESET     = reset[1];
assign USER_RXCDRFREQRESET = reset[2];
assign USER_RXDFELPMRESET  = reset[3];
assign USER_EYESCANRESET   = reset[4];
assign USER_TXPCSRESET     = 1'd0;  
assign USER_RXPCSRESET     = reset[5];  
assign USER_RXBUFRESET     = reset[6];  
assign USER_RESETOVRD_DONE = (fsm == FSM_IDLE);

//---------- PIPE User Output --------------------------------------------------
assign USER_OOBCLK         = oobclk; 
assign USER_RESETDONE      = (txresetdone_reg2 && rxresetdone_reg2);
assign USER_ACTIVE_LANE    = !(txelecidle_reg2 && txcompliance_reg2);
//----------------------------------------------------------
assign USER_RXCDRLOCK_OUT  = (USER_RXCDRLOCK_IN && (rxcdrlock_cnt == RXCDRLOCK_MAX));        // Filtered RXCDRLOCK
//----------------------------------------------------------
assign USER_RXVALID_OUT    = ((USER_RXVALID_IN  && (rxvalid_cnt == RXVALID_MAX)) &&          // Filtered RXVALID
                              rst_idle_reg2                                      &&          // Force RXVALID = 0 during reset
                              rate_idle_reg2);                                               // Force RXVALID = 0 during rate change
//----------------------------------------------------------
assign USER_PHYSTATUS_OUT  = (!rst_idle_reg2                                              || // Force PHYSTATUS = 1 during reset
                              ((rate_idle_reg2 || rate_rxsync_reg2) && USER_PHYSTATUS_IN) || // Raw PHYSTATUS
                              rate_done_reg2);                                               // Gated PHYSTATUS for rate change
//----------------------------------------------------------
assign USER_PHYSTATUS_RST  = !rst_idle_reg2;                                                 // Filtered PHYSTATUS for reset
//----------------------------------------------------------
assign USER_GEN3_RDY       = 0;//gen3_rdy;                                                      
//----------------------------------------------------------
assign USER_RX_CONVERGE    = (converge_cnt == converge_max_cnt) || converge_gen3;   



endmodule
