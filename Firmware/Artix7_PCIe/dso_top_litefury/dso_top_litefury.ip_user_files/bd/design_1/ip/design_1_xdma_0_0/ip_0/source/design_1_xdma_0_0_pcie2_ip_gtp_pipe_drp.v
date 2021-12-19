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
// File       : design_1_xdma_0_0_pcie2_ip_gtp_pipe_drp.v
// Version    : 3.3
//------------------------------------------------------------------------------
//  Filename     :  gtp_pipe_drp.v
//  Description  :  GTP PIPE DRP Module for 7 Series Transceiver
//  Version      :  19.0
//------------------------------------------------------------------------------



`timescale 1ns / 1ps



//---------- GTP PIPE DRP Module -----------------------------------------------
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_gtp_pipe_drp #
(

    parameter LOAD_CNT_MAX     = 2'd1,                      // Load max count
    parameter INDEX_MAX        = 1'd0                       // Index max count
    
)

(
    
    //---------- Input -------------------------------------
    input               DRP_CLK,
    input               DRP_RST_N,
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
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 x16_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 start_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [15:0]  do_reg1;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rdy_reg1;
    
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 x16_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 start_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [15:0]  do_reg2;
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                 rdy_reg2;
    
    //---------- Internal Signals --------------------------
    reg         [ 1:0]  load_cnt =  2'd0;
    reg         [ 4:0]  index    =  5'd0;
    reg         [ 8:0]  addr_reg =  9'd0;
    reg         [15:0]  di_reg   = 16'd0;
    
    //---------- Output Registers --------------------------
    reg                 done     =  1'd0;
    reg         [ 2:0]  fsm      =  0;      
                        
    //---------- DRP Address -------------------------------          
    localparam          ADDR_RX_DATAWIDTH  = 9'h011;              
    
    //---------- DRP Mask ----------------------------------
    localparam          MASK_RX_DATAWIDTH  = 16'b1111011111111111;  // Unmask bit [   11]  
         
    //---------- DRP Data for x16 --------------------------
    localparam          X16_RX_DATAWIDTH   = 16'b0000000000000000;  // 2-byte (16-bit) internal data width
    
    //---------- DRP Data for x20 --------------------------                                  
    localparam          X20_RX_DATAWIDTH   = 16'b0000100000000000;  // 2-byte (20-bit) internal data width               
      
    //---------- DRP Data ----------------------------------                  
    wire        [15:0]  data_rx_datawidth;                 
           
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
        x16_reg1   <=  1'd0;
        do_reg1    <= 16'd0;
        rdy_reg1   <=  1'd0;
        start_reg1 <=  1'd0;
        //---------- 2nd Stage FF --------------------------
        x16_reg2   <=  1'd0;
        do_reg2    <= 16'd0;
        rdy_reg2   <=  1'd0;
        start_reg2 <=  1'd0;
        end
        
    else
        begin
        //---------- 1st Stage FF --------------------------
        x16_reg1   <= DRP_X16;
        do_reg1    <= DRP_DO;
        rdy_reg1   <= DRP_RDY;
        start_reg1 <= DRP_START;
        //---------- 2nd Stage FF --------------------------
        x16_reg2   <= x16_reg1;
        do_reg2    <= do_reg1;
        rdy_reg2   <= rdy_reg1;
        start_reg2 <= start_reg1;
        end
    
end  



//---------- Select DRP Data ---------------------------------------------------
assign data_rx_datawidth = x16_reg2 ? X16_RX_DATAWIDTH : X20_RX_DATAWIDTH;



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
        1'd0 :
            begin        
            addr_reg <= ADDR_RX_DATAWIDTH;
            di_reg   <= (do_reg2 & MASK_RX_DATAWIDTH) | data_rx_datawidth;
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
        done  <= 1'd1; //Fix applied for GTP DRP issue
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
                done  <= 1'd0; 
                end
            //---------- Idle ------------------------------
            else       
                begin
                fsm   <= FSM_IDLE;
                index <= 5'd0;
                done  <= 1'd1;
                end 
            end    
            
        //---------- Load DRP Address  ---------------------
        FSM_LOAD :
        
            begin
            fsm   <= (load_cnt == LOAD_CNT_MAX) ? FSM_READ : FSM_LOAD;
            index <= index;

            done  <= 1'd0;
            end  
            
        //---------- Read DRP ------------------------------
        FSM_READ :
        
            begin
            fsm   <= FSM_RRDY;
            index <= index;
            done  <= 1'd0;
            end
            
        //---------- Read DRP Ready ------------------------
        FSM_RRDY :    
        
            begin
            fsm   <= rdy_reg2 ? FSM_WRITE : FSM_RRDY;
            index <= index;
            done  <= 1'd0;
            end
  
            
        //---------- Write DRP -----------------------------
        FSM_WRITE :    
        
            begin
            fsm   <= FSM_WRDY;
            index <= index;
            done  <= 1'd0;
            end       
            
        //---------- Write DRP Ready -----------------------
        FSM_WRDY :    
        
            begin
            fsm   <= rdy_reg2 ? FSM_DONE : FSM_WRDY;
            index <= index;
            done  <= 1'd0;
            end        
             
        //---------- DRP Done ------------------------------
        FSM_DONE :
        
            begin
            if (index == INDEX_MAX)
                begin
                fsm   <= FSM_IDLE;
                index <= 5'd0;
                done  <= 1'd1;	//Fix applied for GTP DRP issue
                end
            else       
                begin
                fsm   <= FSM_LOAD;
                index <= index + 5'd1;
                done  <= 1'd0;
                end
            end     
              
        //---------- Default State -------------------------
        default :
        
            begin      
            fsm   <= FSM_IDLE;
            index <= 5'd0;
            done  <= 1'd1; //Fix applied for GTP DRP issue
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
