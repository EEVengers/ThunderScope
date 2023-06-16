//-----------------------------------------------------------------------------
//
// (c) Copyright 2012-2012 Xilinx, Inc. All rights reserved.
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
//
// Project    : The Xilinx PCI Express DMA 
// File       : design_1_xdma_0_0_dma_req.sv
// Version    : 4.1
//-----------------------------------------------------------------------------

//----------------------------------------------------------------------------//
//  File   : <ComponentName>_dma_req.v                                        //
//  Date   : 11/09/15                                                         //
//  Author : Vidya Gopalakrishnan                                             //
//                                                                            //
//  Description:                                                              //
//  Generates Gen2 PCIe TX packets and sends it to the TX MUX                 //  
//                                                                            //
//  Notes:                                                                    //
//  Both 64-bit/128-bit are supported                                         //
//                                                                            //
//  Hierarchical:                                                             //
//    pcie2_to_pcie3_wrapper                                                  //
//      axi_stream_intf                                                       //
//        dma_req                                                             //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

module design_1_xdma_0_0_dma_req # (
  parameter C_AXI_DATA_WIDTH = 32,                     // RX/TX interface data width
  parameter C_KEEP_WIDTH     = C_AXI_DATA_WIDTH/8,     // TKEEP width for TX
  parameter C_RQ_KEEP_WIDTH  = C_AXI_DATA_WIDTH/32,    // TKEEP width for RQ
  parameter C_ADDR_ALGN      = 1,                      // specifies alignment mode; 1 = Address Aligned; 0 = Dword Aligned
  parameter TCQ              = 1                       // Clock to Q time

  ) (
  
  input                                    clk,
  input                                    user_reset,

  //-------------------------------------------------
  // AXI-S RX Interface from DMA
  //-------------------------------------------------
  input      [C_AXI_DATA_WIDTH-1:0] m_axis_rq_tdata,   // RQ data
  input                             m_axis_rq_tvalid,  // RQ data is valid
  input       [C_RQ_KEEP_WIDTH-1:0] m_axis_rq_tkeep,   // RQ strobe byte enables
  input                             m_axis_rq_tlast,   // RQ data is last
  input                      [59:0] m_axis_rq_tuser,   // RQ user signals
  output reg                  [3:0] m_axis_rq_tready,  // RQ ready for data

  //-------------------------------------------------
  // AXI-S RQ to tx conversion
  //-------------------------------------------------
  output reg [C_AXI_DATA_WIDTH-1:0] s_axis_tx_tdata,   // TX data
  output reg                        s_axis_tx_tvalid,  // TX data is valid
  input                             s_axis_tx_tready,  // TX ready for data
  output reg     [C_KEEP_WIDTH-1:0] s_axis_tx_tkeep,   // TX strobe byte enables
  output reg                        s_axis_tx_tlast,   // TX data is last
  output reg                  [3:0] s_axis_tx_tuser,
  //-------------------------------------------------
  // Seq num and seq_num_vld 
  //-------------------------------------------------
  output                            pcie_rq_seq_num_vld,
  output                      [3:0] pcie_rq_seq_num,

  //-------------------------------------------------
  // Requester ID
  //-------------------------------------------------
  input                       [7:0] cfg_bus_number,
  input                       [4:0] cfg_device_number,
  input                       [2:0] cfg_function_number

);

  localparam TX_IDLE      = 3'd0;
  localparam TX_DW0_DW1   = 3'd1;
  localparam TX_DATA      = 3'd2;
  localparam TX_DATA_N    = 3'd3;
  localparam TX_WAIT      = 3'd4;
  localparam TX_NEW       = 3'd5;
  localparam TX_PENDING   = 3'd6;

  reg   [1:0]   req_at;
  reg  [63:0]   req_addr;
  reg           reg_4dw;
  reg   [9:0]   req_len;
  reg   [2:0]   req_type;
  reg           req_id;
  reg           req_ep;
  reg  [15:0]   req_rid;
  reg   [7:0]   req_tag;
  reg  [15:0]   req_cid;
  reg   [2:0]   req_tc;
  reg   [1:0]   req_attr;
  reg   [3:0]   req_fbe;
  reg   [3:0]   req_lbe;
  reg   [3:0]   seq_num;
  reg   [9:0]   pending_dw;
  reg  [10:0]   dw_count;
  reg [C_AXI_DATA_WIDTH-1:0]   wr_data;

  wire          sop;                   // Start of Packet
  reg           in_packet_q;

  reg           req_4dw;
       
  reg [2:0] fmt_rd;
  reg [2:0] fmt_wr;
  reg [2:0] state;

  reg [C_AXI_DATA_WIDTH-1:0] wreq_data_le;
  reg [C_AXI_DATA_WIDTH-1:0] rq_tdata_le;
  reg [10:0] current_dw_count;

 // Generate a signal that indicates if we are currently receiving a packet.
 // This value is one clock cycle delayed from what is actually on the AXIS
 // data bus.
  always @(posedge clk)
  begin
    if(user_reset)
      in_packet_q <= #   TCQ 1'b0;
    else if (m_axis_rq_tvalid && s_axis_tx_tready && m_axis_rq_tlast)
      in_packet_q <= #   TCQ 1'b0;
    else if (sop && s_axis_tx_tready)
      in_packet_q <= #   TCQ 1'b1;
  end

  assign sop = !in_packet_q && m_axis_rq_tvalid;


 generate
 if (C_AXI_DATA_WIDTH == 64) begin : tx_64  
 // ================== Byte reversed data for PCIe Gen2 core ===========================//
  assign  wreq_data_le = {wr_data[39:32], wr_data[47:40], wr_data[55:48], wr_data[63:56], wr_data[7:0], wr_data[15:8], wr_data[23:16], wr_data[31:24]};

  assign  rq_tdata_le  = {m_axis_rq_tdata[39:32], m_axis_rq_tdata[47:40], m_axis_rq_tdata[55:48], m_axis_rq_tdata[63:56], m_axis_rq_tdata[7:0], m_axis_rq_tdata[15:8],m_axis_rq_tdata[23:16], m_axis_rq_tdata[31:24]};

 //======================================================================================//

 assign fmt_rd              = {(2'b00), (req_4dw ? 1'b1 : 1'b0 ) };
 assign fmt_wr              = {(2'b01), (req_4dw ? 1'b1 : 1'b0 ) };

 assign pcie_rq_seq_num     = (s_axis_tx_tvalid && s_axis_tx_tready && s_axis_tx_tlast) ? seq_num : 4'b0;
 assign pcie_rq_seq_num_vld = (s_axis_tx_tvalid && s_axis_tx_tready && s_axis_tx_tlast) ? 1'b1 : 1'b0;
 
   always @ ( posedge clk ) 
   begin
     if (user_reset)
     begin
       req_at             <= #TCQ 2'b0;    
       req_addr           <= #TCQ 64'b0;
       req_4dw            <= #TCQ 1'b0;
       req_len            <= #TCQ 10'b0;
       req_ep             <= #TCQ 1'b0;
       req_rid            <= #TCQ 16'b0;
       req_tag            <= #TCQ 8'b0;
       req_cid            <= #TCQ 16'b0;
       req_tc             <= #TCQ 3'b0;
       req_attr           <= #TCQ 3'b0;
       dw_count           <= #TCQ 11'b0;
       req_lbe            <= #TCQ 4'b0;
       req_fbe            <= #TCQ 4'b0;
       seq_num            <= #TCQ 4'b0;
       wr_data            <= #TCQ 64'b0;
       state              <= #TCQ TX_IDLE;
     end else begin
    
       case (state)
          
         TX_IDLE: begin
           req_len            <= #TCQ 10'b0;
           req_ep             <= #TCQ req_ep;
           req_rid            <= #TCQ req_rid;
           req_tag            <= #TCQ req_tag;
           req_cid            <= #TCQ req_cid;
           req_tc             <= #TCQ req_tc;
           req_attr           <= #TCQ req_attr;
           dw_count           <= #TCQ 11'b0;
           wr_data            <= #TCQ wr_data;
           current_dw_count   <= #TCQ 11'b0;
           if (sop) begin
             req_at             <= #TCQ m_axis_rq_tdata[1:0];
             req_addr           <= #TCQ {m_axis_rq_tdata[63:2], 2'b00}; 
             req_4dw            <= #TCQ (| (m_axis_rq_tdata[63:32]) );
             req_fbe            <= #TCQ m_axis_rq_tuser[3:0];
             req_lbe            <= #TCQ m_axis_rq_tuser[7:4];
             seq_num            <= #TCQ m_axis_rq_tuser[27:24];
             state              <= #TCQ TX_DW0_DW1;          
           end else begin 
            req_at             <= #TCQ req_at;
            req_addr           <= #TCQ req_addr;
            req_4dw            <= #TCQ req_4dw;
            req_fbe            <= #TCQ req_fbe;
            req_lbe            <= #TCQ req_lbe;
            seq_num            <= #TCQ seq_num;
            state              <= #TCQ TX_IDLE;     
           end     
         end           

         TX_DW0_DW1: begin
           req_at             <= #TCQ req_at;
           req_addr           <= #TCQ req_addr;
           req_len            <= #TCQ m_axis_rq_tdata[9:0];
           req_ep             <= #TCQ m_axis_rq_tdata[15];
           req_rid            <= #TCQ m_axis_rq_tdata[31:16];
           req_tag            <= #TCQ m_axis_rq_tdata[39:32];
           req_cid            <= #TCQ m_axis_rq_tdata[55:40];
           req_tc             <= #TCQ m_axis_rq_tdata[59:57];
           req_attr           <= #TCQ m_axis_rq_tdata[61:60];
           current_dw_count   <= #TCQ 11'b0;
           wr_data            <= #TCQ wr_data;
           state              <= #TCQ (s_axis_tx_tready) ? ( (m_axis_rq_tdata[14:11] == 4'b1) ? TX_DATA : TX_WAIT) : TX_DW0_DW1;
          end

         TX_DATA: begin
           req_at             <= #TCQ req_at;
           req_addr           <= #TCQ req_addr;
           req_len            <= #TCQ req_len;
           req_rid            <= #TCQ req_rid;
           req_tag            <= #TCQ req_tag;
           req_cid            <= #TCQ req_cid;
           req_tc             <= #TCQ req_tc;
           req_attr           <= #TCQ req_attr;
           if (s_axis_tx_tready) begin
             current_dw_count   <= #TCQ (req_4dw) ? 11'b0 : (current_dw_count + 10'h1); 
             dw_count           <= #TCQ dw_count + 11'h2;
             wr_data            <= #TCQ m_axis_rq_tdata;
             state              <= #TCQ (req_len > 11'h2) ? TX_DATA_N :((req_len == 11'h2) ? TX_NEW : TX_IDLE) ; 
           end else begin
             current_dw_count   <= #TCQ current_dw_count;
             dw_count           <= #TCQ dw_count;
             wr_data            <= #TCQ wr_data;
             state              <= #TCQ TX_DATA; 
           end
         end

         TX_DATA_N: begin
           req_at             <= #TCQ req_at;
           req_addr           <= #TCQ req_addr;
           req_len            <= #TCQ req_len;
           req_rid            <= #TCQ req_rid;
           req_tag            <= #TCQ req_tag;
           req_cid            <= #TCQ req_cid;
           req_tc             <= #TCQ req_tc;
           req_attr           <= #TCQ req_attr;
           if (s_axis_tx_tready) begin
             current_dw_count   <= #TCQ (current_dw_count + 2'h2); 
             dw_count           <= #TCQ dw_count + 11'h2;
             wr_data            <= #TCQ m_axis_rq_tdata;
             if (!req_4dw) begin
                 state            <= #TCQ   ( ( (dw_count + 10'h2 ) > req_len ) ) ? TX_IDLE :       ( (req_len - (dw_count +10'h2)) == 11'h0 ) ? TX_NEW : TX_DATA_N;
             end else begin
               state              <= #TCQ  ( (req_len - (current_dw_count+10'h2) ) <= 11'h2)  ? TX_NEW: TX_DATA_N ;
             end
           end else begin
             current_dw_count   <= #TCQ current_dw_count; 
             dw_count           <= #TCQ dw_count;
             wr_data            <= #TCQ wr_data;
             state              <= #TCQ TX_DATA_N; 
           end
         end

         TX_WAIT: begin
           req_at             <= #TCQ req_at;
           req_addr           <= #TCQ req_addr;
           req_len            <= #TCQ 10'b0;
           req_rid            <= #TCQ req_rid;
           req_tag            <= #TCQ req_tag;
           req_cid            <= #TCQ req_cid;
           req_tc             <= #TCQ req_tc;
           req_attr           <= #TCQ req_attr;
           dw_count           <= #TCQ 11'b0;
           current_dw_count   <= #TCQ 11'b0; 
           req_fbe            <= #TCQ req_fbe;
           req_lbe            <= #TCQ req_lbe;
           if (s_axis_tx_tready) begin
             if (sop) begin
               req_at           <= #TCQ m_axis_rq_tdata[1:0];
               req_addr         <= #TCQ {m_axis_rq_tdata[63:2], 2'b00}; 
               req_4dw          <= #TCQ (| (m_axis_rq_tdata[63:32]) );
               state            <= #TCQ TX_DW0_DW1;    
               req_fbe          <= #TCQ m_axis_rq_tuser[3:0];
               req_lbe          <= #TCQ m_axis_rq_tuser[7:4];
               seq_num          <= #TCQ m_axis_rq_tuser[27:24];      
             end else begin 
              state             <= #TCQ TX_IDLE;
             end   
           end else begin
             state              <= #TCQ TX_WAIT; 
           end
         end

         TX_NEW : begin
           req_len            <= #TCQ req_len;
           req_ep             <= #TCQ req_ep;
           req_rid            <= #TCQ req_rid;
           req_tag            <= #TCQ req_tag;
           req_cid            <= #TCQ req_cid;
           req_tc             <= #TCQ req_tc;
           req_attr           <= #TCQ req_attr;
           dw_count           <= #TCQ 11'b0;
           wr_data            <= #TCQ wr_data;
           req_fbe            <= #TCQ req_fbe;
           req_lbe            <= #TCQ req_lbe;
  
           if (s_axis_tx_tready) begin
             current_dw_count   <= #TCQ  11'b0; 
             if (sop) begin
               req_at           <= #TCQ m_axis_rq_tdata[1:0];
               req_addr         <= #TCQ {m_axis_rq_tdata[63:2], 2'b00}; 
               req_4dw          <= #TCQ (| (m_axis_rq_tdata[63:32]) );
               state            <= #TCQ TX_DW0_DW1;    
               req_lbe          <= #TCQ m_axis_rq_tuser[7:4];
               req_fbe          <= #TCQ m_axis_rq_tuser[3:0];
               seq_num          <= #TCQ m_axis_rq_tuser[27:24];      
             end else begin 
              req_at            <= #TCQ req_at;
              req_addr          <= #TCQ req_addr;
              req_4dw           <= #TCQ req_4dw;
              state             <= #TCQ TX_IDLE;    
              seq_num           <= #TCQ seq_num; 
             end
           end

         end           
       endcase

     end
   end

         
   always @ (*) 
   begin        
     if (user_reset) begin
       s_axis_tx_tdata  = 64'b0;             
       s_axis_tx_tvalid = 1'b0;
       s_axis_tx_tkeep  = 8'h0;
       s_axis_tx_tlast  = 2'b0;
       s_axis_tx_tuser  = 4'h0; 
       m_axis_rq_tready = 4'hF;       
     end else begin
        
       case (state)

         TX_DW0_DW1 : begin
           s_axis_tx_tdata  = {
                                {m_axis_rq_tdata[56] ? m_axis_rq_tdata[31:16] : 
                                                      {cfg_bus_number, cfg_device_number, cfg_function_number}}, //Requester ID
                                m_axis_rq_tdata[39:32],                    //Tag
                                req_lbe,                                   //LBE
                                req_fbe,                                   //FBE                    
                                {(m_axis_rq_tdata[14:11] == 4'b1) ?
                                  fmt_wr : fmt_rd},                        //Req fmt
                                5'h0,                                      //Req type
                                1'b0,
                                m_axis_rq_tdata[59:57],                    //TC
                                1'b0,                                      //Reserved
                                m_axis_rq_tdata[62] ,                      //ID Based Ordering
                                1'b0,                                      //Reserved
                                1'b0,                                      //TPH
                                1'b0,                                      //TD
                                m_axis_rq_tdata[15],
                                m_axis_rq_tdata[61:60],                    //req_attr
                                req_at, 
                                m_axis_rq_tdata[9:0]                       //req_len
                              }; 
           m_axis_rq_tready = {4{s_axis_tx_tready}};
           s_axis_tx_tvalid = 1'b1;
           s_axis_tx_tkeep  = 8'hFF;
           s_axis_tx_tlast  = 2'b0;
           s_axis_tx_tuser  = 4'h0; 
         end
         
         TX_DATA : begin
           s_axis_tx_tdata  = (req_4dw) ? {req_addr[31:0], req_addr[63:32]} : {rq_tdata_le[31:0] , req_addr[31:0]};
           m_axis_rq_tready = {4{s_axis_tx_tready}};
           s_axis_tx_tvalid = 1'b1;
           s_axis_tx_tkeep  = 8'hFF;
           s_axis_tx_tlast  = (req_len == 1) ? 1'b1 : 1'b0;
           s_axis_tx_tuser  = 4'h0; 
         end

         TX_DATA_N : begin
           s_axis_tx_tdata  = (req_4dw) ? wreq_data_le : {rq_tdata_le[31:0], wreq_data_le[63:32]};
           m_axis_rq_tready = {4{s_axis_tx_tready}};
           s_axis_tx_tvalid = 1'b1;
           s_axis_tx_tkeep  = ((req_len - (current_dw_count)) == 2'h1)  ? 8'hF : 8'hFF ;
           s_axis_tx_tlast  = (req_len == (current_dw_count+ 2'h2)) ? 1'b1 : 1'b0;
           s_axis_tx_tuser  = 4'h0; 
         end

         TX_NEW : begin
           s_axis_tx_tdata  = (req_4dw) ? wreq_data_le : {rq_tdata_le[31:0], wreq_data_le[63:32]};
           m_axis_rq_tready = {4{s_axis_tx_tready}};
           s_axis_tx_tvalid = 1'b1;
           s_axis_tx_tkeep  = ((current_dw_count+ 2'h2) - req_len == 1'b1)  ? 8'hF : 8'hFF ;
           s_axis_tx_tlast  = 1'b1;
           s_axis_tx_tuser  = 4'h0; 
         end

         TX_WAIT : begin
           s_axis_tx_tdata  = (req_4dw) ? {req_addr[31:0], req_addr[63:32]} : {32'h0000_0000, req_addr[31:0]};
           m_axis_rq_tready = {4{s_axis_tx_tready}};
           s_axis_tx_tvalid = 1'b1;
           s_axis_tx_tkeep  = (req_4dw ) ? 8'hFF : 8'hF ;
           s_axis_tx_tlast  = 1'b1;
           s_axis_tx_tuser  = 4'h0; 
         end

         default: begin
           s_axis_tx_tdata  = 64'b0;
           m_axis_rq_tready = 4'hF;
           s_axis_tx_tvalid = 1'b0;
           s_axis_tx_tkeep  = 8'h0 ;
           s_axis_tx_tlast  = 1'b0;
           s_axis_tx_tuser  = 4'h0; 
         end
       endcase
     end
   end
   
   end 
 endgenerate
 generate 
  if (C_AXI_DATA_WIDTH == 128) begin : tx_128

 // ================== Byte reversed data for PCIe Gen2 core ===========================//
  assign  wreq_data_le = {wr_data[103:96], wr_data[111:104], wr_data[119:112], wr_data[127:120], wr_data[71:64], wr_data[79:72], wr_data[87:80], wr_data[95:88], wr_data[39:32], wr_data[47:40], wr_data[55:48], wr_data[63:56], wr_data[7:0], wr_data[15:8], wr_data[23:16], wr_data[31:24]};

  assign  rq_tdata_le  = {m_axis_rq_tdata[103:96], m_axis_rq_tdata[111:104], m_axis_rq_tdata[119:112], m_axis_rq_tdata[127:120], m_axis_rq_tdata[71:64], m_axis_rq_tdata[79:72], m_axis_rq_tdata[87:80], m_axis_rq_tdata[95:88], m_axis_rq_tdata[39:32], m_axis_rq_tdata[47:40], m_axis_rq_tdata[55:48], m_axis_rq_tdata[63:56], m_axis_rq_tdata[7:0], m_axis_rq_tdata[15:8],m_axis_rq_tdata[23:16], m_axis_rq_tdata[31:24]};

 //======================================================================================//

  assign fmt_rd              = {(2'b00), ((| (m_axis_rq_tdata[63:32]) ) ? 1'b1 : 1'b0 ) };
  assign fmt_wr              = {(2'b01), ((| (m_axis_rq_tdata[63:32]) ) ? 1'b1 : 1'b0 ) };

  assign pcie_rq_seq_num     = (s_axis_tx_tvalid && s_axis_tx_tready && s_axis_tx_tlast) ? seq_num : 4'b0;
  assign pcie_rq_seq_num_vld = (s_axis_tx_tvalid && s_axis_tx_tready && s_axis_tx_tlast) ? 1'b1 : 1'b0;

  assign pending_dw = req_len - current_dw_count;

   always @ ( posedge clk ) 
   begin
     if (user_reset)
     begin
       req_at             <= #TCQ 2'b0;    
       req_addr           <= #TCQ 64'b0;
       req_4dw            <= #TCQ 1'b0;
       req_len            <= #TCQ 10'b0;
       req_ep             <= #TCQ 1'b0;
       req_rid            <= #TCQ 16'b0;
       req_tag            <= #TCQ 8'b0;
       req_cid            <= #TCQ 16'b0;
       req_tc             <= #TCQ 3'b0;
       req_attr           <= #TCQ 3'b0;
       req_id             <= #TCQ 1'b0;
       req_lbe            <= #TCQ 4'b0;
       req_type           <= #TCQ 3'b0;
       req_fbe            <= #TCQ 4'b0;
       seq_num            <= #TCQ 4'b0;
       dw_count           <= #TCQ 11'b0;
       wr_data            <= #TCQ 128'b0;
       state              <= #TCQ TX_IDLE;
     end else begin
    
       case (state)
          
         TX_IDLE: begin
           dw_count           <= #TCQ 10'b0;
           wr_data            <= #TCQ 128'b0;
           current_dw_count   <= #TCQ 11'b0;
           if (sop) begin
             req_at             <= #TCQ m_axis_rq_tdata[1:0];
             req_addr           <= #TCQ {m_axis_rq_tdata[63:2], 2'b00}; 
             req_4dw            <= #TCQ (| (m_axis_rq_tdata[63:32]) );
             req_len            <= #TCQ m_axis_rq_tdata[73:64];
             req_type           <= #TCQ (m_axis_rq_tdata[78:75] == 4'b1) ?  fmt_wr : fmt_rd;
             req_ep             <= #TCQ m_axis_rq_tdata[79];
             req_rid            <= #TCQ m_axis_rq_tdata[120] ? m_axis_rq_tdata[95:80] : {cfg_bus_number, cfg_device_number, cfg_function_number};
             req_tag            <= #TCQ m_axis_rq_tdata[103:96];
             req_cid            <= #TCQ m_axis_rq_tdata[119:104];
             req_tc             <= #TCQ m_axis_rq_tdata[123:121];
             req_attr           <= #TCQ m_axis_rq_tdata[125:124];
             req_id             <= #TCQ m_axis_rq_tdata[126];
             req_fbe            <= #TCQ m_axis_rq_tuser[3:0];
             req_lbe            <= #TCQ m_axis_rq_tuser[7:4];
             seq_num            <= #TCQ m_axis_rq_tuser[27:24];
             state              <= #TCQ (m_axis_rq_tdata[78:75] == 4'b1) ? TX_DATA : TX_WAIT;
           end else begin 
            req_at             <= #TCQ req_at;
            req_addr           <= #TCQ req_addr;
            req_4dw            <= #TCQ req_4dw;
            state              <= #TCQ TX_IDLE;
            req_ep             <= #TCQ req_ep;   
            req_len            <= #TCQ req_len;
            req_rid            <= #TCQ req_rid;
            req_tag            <= #TCQ req_tag;
            req_cid            <= #TCQ req_cid;
            req_tc             <= #TCQ req_tc;
            req_attr           <= #TCQ req_attr; 
            req_id             <= #TCQ req_id;
            req_lbe            <= #TCQ req_lbe;
            req_type           <= #TCQ req_type;
            req_fbe            <= #TCQ req_fbe; 
            seq_num            <= #TCQ seq_num;
           end     
         end        


        TX_WAIT: begin
           req_at             <= #TCQ req_at;
           req_addr           <= #TCQ req_addr;
           req_len            <= #TCQ req_len;
           req_rid            <= #TCQ req_rid;
           req_tag            <= #TCQ req_tag;
           req_cid            <= #TCQ req_cid;
           req_tc             <= #TCQ req_tc;
           req_attr           <= #TCQ req_attr;
           req_id             <= #TCQ req_id;
           req_lbe            <= #TCQ req_lbe;
           req_type           <= #TCQ req_type;
           req_fbe            <= #TCQ req_fbe;
           dw_count           <= #TCQ dw_count;
           current_dw_count   <= #TCQ current_dw_count; 
           if (s_axis_tx_tready) begin
             state              <= #TCQ TX_IDLE; 
           end else begin
             state              <= #TCQ TX_WAIT; 
           end
         end

         TX_DATA: begin
           req_at             <= #TCQ req_at;
           req_addr           <= #TCQ req_addr;
           req_len            <= #TCQ req_len;
           req_rid            <= #TCQ req_rid;
           req_tag            <= #TCQ req_tag;
           req_cid            <= #TCQ req_cid;
           req_tc             <= #TCQ req_tc;
           req_attr           <= #TCQ req_attr;
           req_id             <= #TCQ req_id;
           req_lbe            <= #TCQ req_lbe;
           req_type           <= #TCQ req_type;
           req_fbe            <= #TCQ req_fbe;
           if (s_axis_tx_tready) begin
             current_dw_count   <= #TCQ (req_4dw) ? 11'b0 : 11'b1; 
             dw_count           <= #TCQ 11'h4;
             wr_data            <= #TCQ m_axis_rq_tdata;
             state              <= #TCQ ((!req_4dw) && (req_len == 10'h1)) ? TX_IDLE : 
                                                                             ((req_len > 10'h4) ? TX_DATA_N : TX_NEW) ; 
           end else begin
             dw_count           <= #TCQ dw_count;
             wr_data            <= #TCQ wr_data;
             state              <= #TCQ TX_DATA; 
           end
         end   

         TX_DATA_N: begin
           req_at             <= #TCQ req_at;
           req_addr           <= #TCQ req_addr;
           req_len            <= #TCQ req_len;
           req_rid            <= #TCQ req_rid;
           req_tag            <= #TCQ req_tag;
           req_cid            <= #TCQ req_cid;
           req_tc             <= #TCQ req_tc;
           req_id             <= #TCQ req_id;
           req_lbe            <= #TCQ req_lbe;
           req_type           <= #TCQ req_type;
           req_fbe            <= #TCQ req_fbe;
           req_attr           <= #TCQ req_attr;
           if (s_axis_tx_tready) begin
             current_dw_count   <= #TCQ (current_dw_count + 11'h4); 
             dw_count           <= #TCQ dw_count + 11'h4;
             wr_data            <= #TCQ m_axis_rq_tdata;
             if (!req_4dw && ((req_len - dw_count) == 1)) 
		  state          <= #TCQ TX_IDLE;
             else if ((req_len - dw_count) > 3'h4)
                  state          <= #TCQ TX_DATA_N;
	     else
                  state          <= #TCQ TX_NEW;
//             state              <= #TCQ ((req_len - dw_count ) > 3'h4) ? TX_DATA_N : TX_NEW; 
           end else begin
             dw_count           <= #TCQ dw_count;
             state              <= #TCQ TX_DATA_N; 
           end
         end

         TX_NEW : begin

           if (s_axis_tx_tready) begin
             if (sop) begin
               dw_count           <= #TCQ 10'b0;
               wr_data            <= #TCQ 128'b0;
               current_dw_count   <= #TCQ 11'b0;
               req_at             <= #TCQ m_axis_rq_tdata[1:0];
               req_addr           <= #TCQ {m_axis_rq_tdata[63:2], 2'b00}; 
               req_4dw            <= #TCQ (| (m_axis_rq_tdata[63:32]) );
               req_len            <= #TCQ m_axis_rq_tdata[73:64];
               req_type           <= #TCQ (m_axis_rq_tdata[78:75] == 4'b1) ?  fmt_wr : fmt_rd;
               req_ep             <= #TCQ m_axis_rq_tdata[79];
               req_rid            <= #TCQ m_axis_rq_tdata[120] ? m_axis_rq_tdata[95:80] : {cfg_bus_number, cfg_device_number, cfg_function_number};
               req_tag            <= #TCQ m_axis_rq_tdata[103:96];
               req_cid            <= #TCQ m_axis_rq_tdata[119:104];
               req_tc             <= #TCQ m_axis_rq_tdata[123:121];
               req_attr           <= #TCQ m_axis_rq_tdata[125:124];
               req_id             <= #TCQ m_axis_rq_tdata[126];
               req_fbe            <= #TCQ m_axis_rq_tuser[3:0];
               req_lbe            <= #TCQ m_axis_rq_tuser[7:4];
               seq_num            <= #TCQ m_axis_rq_tuser[27:24];
               state              <= #TCQ (m_axis_rq_tdata[78:75] == 4'b1) ? TX_DATA : TX_WAIT;
             end else begin
               wr_data            <= #TCQ wr_data;
               current_dw_count   <= #TCQ current_dw_count;
               dw_count           <= #TCQ dw_count;
               req_at             <= #TCQ req_at;
               req_addr           <= #TCQ req_addr;
               req_4dw            <= #TCQ req_4dw;
               state              <= #TCQ TX_IDLE;
               req_ep             <= #TCQ req_ep;   
               req_len            <= #TCQ req_len;
               req_rid            <= #TCQ req_rid;
               req_tag            <= #TCQ req_tag;
               req_cid            <= #TCQ req_cid;
               req_tc             <= #TCQ req_tc;
               req_id             <= #TCQ req_id;
               req_lbe            <= #TCQ req_lbe;
               req_type           <= #TCQ req_type;
               req_fbe            <= #TCQ req_fbe;
               req_attr           <= #TCQ req_attr;  
               seq_num            <= #TCQ seq_num;
               state              <= #TCQ TX_IDLE;
             end
           end // tx_tready
         end        
       endcase

     end
   end
 

   always @ (*) 
   begin        
     if (user_reset) begin
       s_axis_tx_tdata  = 64'b0;             
       s_axis_tx_tvalid = 1'b0;
       s_axis_tx_tkeep  = 8'h0;
       s_axis_tx_tlast  = 2'b0;
       s_axis_tx_tuser  = 4'h0; 
       m_axis_rq_tready = 4'hF;       
     end else begin
        
       case (state)

         TX_IDLE: begin
           if ( sop && (m_axis_rq_tdata[78:75] == 4'b1) ) begin  // Write
             s_axis_tx_tdata  = 128'b0;
             m_axis_rq_tready = 4'hF;
             s_axis_tx_tvalid = 1'b0;
             s_axis_tx_tkeep  = 16'h0;
             s_axis_tx_tlast  = 1'b0;
             s_axis_tx_tuser  = 4'h0;
           end else begin  // Read or no activity
             s_axis_tx_tdata  = 128'b0;
             m_axis_rq_tready = 4'h0;
             s_axis_tx_tvalid = 1'b0;
             s_axis_tx_tkeep  = 16'h0;
             s_axis_tx_tlast  = 1'b0;
             s_axis_tx_tuser  = 4'h0;
           end
         end

         TX_DATA, TX_WAIT : begin
           s_axis_tx_tdata  = {
                               { (!req_4dw) ? {rq_tdata_le[31:0], req_addr[31:0]} : {req_addr[31:0], req_addr[63:32]} } ,
                                req_rid,                                   //Requester ID
                                req_tag,                                   //Tag
                                req_lbe,                                   //LBE
                                req_fbe,                                   //FBE                    
                                req_type,                                  //Req fmt
                                5'h0,                                      //Req type
                                1'b0,
                                req_tc,                                    //TC
                                1'b0,                                      //Reserved
                                req_id,                                    //ID Based Ordering
                                1'b0,                                      //Reserved
                                1'b0,                                      //TPH
                                1'b0,                                      //TD
                                req_ep,
                                req_attr,                                  //req_attr
                                req_at, 
                                req_len                                    //req_len
                              };

           m_axis_rq_tready = {4{s_axis_tx_tready}};
           s_axis_tx_tvalid = 1'b1;

           if ( (req_type == 3'b000) ) begin // Read w/ 3DW header
             s_axis_tx_tkeep  = 16'h0FFF;
           end else begin
             s_axis_tx_tkeep  = 16'hFFFF;
           end

           if (req_type[2:1] == 2'b00) begin // Read
             s_axis_tx_tlast  = 1'b1; 
           end else begin  // Write
             s_axis_tx_tlast  =  (!req_4dw && (req_len == 10'b1) )  ? 1'b1 : 1'b0;  
           end

           s_axis_tx_tuser  = 4'h0;

         end
         
         TX_DATA_N : begin
           s_axis_tx_tdata  = (req_4dw) ? wreq_data_le : {rq_tdata_le[31:0], wreq_data_le[127:32]};
           m_axis_rq_tready = {4{s_axis_tx_tready}};
           s_axis_tx_tvalid = 1'b1;          
           if (!req_4dw && ((req_len - dw_count) == 1)) 
              s_axis_tx_tlast  = 1'b1;
	   else
              s_axis_tx_tlast  = 1'b0;
           s_axis_tx_tuser  = 4'h0; 
           s_axis_tx_tkeep  = 16'hFFFF;  

         end

         TX_NEW : begin
           s_axis_tx_tdata  = (req_4dw) ? wreq_data_le : {rq_tdata_le[31:0], wreq_data_le[127:32]};
           s_axis_tx_tvalid = 1'b1;          
           s_axis_tx_tlast  = 1'b1;
           s_axis_tx_tuser  = 4'h0; 
           s_axis_tx_tkeep  = tx_tkeep(pending_dw);

           if ( sop && (m_axis_rq_tdata[78:75] == 4'b1) ) begin  // Write
             m_axis_rq_tready = {4{s_axis_tx_tready}};
           end else begin  // Read or no activity
             m_axis_rq_tready = 4'h0;
           end

         end

         default: begin
           s_axis_tx_tdata  = 128'b0;
           m_axis_rq_tready = 4'hF;
           s_axis_tx_tvalid = 1'b0;
           s_axis_tx_tkeep  = 16'h0;
           s_axis_tx_tlast  = 1'b0;
           s_axis_tx_tuser  = 4'h0;
         end
       endcase
     end
   end


     //Function to calculate tkeep
       function [15:0] tx_tkeep;
       input [9:0] pending_dw;
       begin
         case (pending_dw)
           8'd1 :
             tx_tkeep = 16'hF;
           8'd2 :
             tx_tkeep = 16'hFF;
           8'd3 :
             tx_tkeep = 16'hFFF;
           default : 
             tx_tkeep = 16'hFFFF;
         endcase  
       end
       endfunction
 end
 endgenerate

endmodule

