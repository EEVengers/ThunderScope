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
// File       : design_1_xdma_0_0_tgt_req.sv
// Version    : 4.1
//-----------------------------------------------------------------------------

//----------------------------------------------------------------------------//
//  File   : <ComponentName>_tgt_req.v                                        //
//  Date   : 12/04/15                                                         //
//  Author : Vidya Gopalakrishnan                                             //
//                                                                            //
//  Description:                                                              //
//  Generates Gen3 PCIe CQ packets                                            //  
//                                                                            //
//  Notes:                                                                    //
//  64-bit and 128-bit are supported                                          //
//                                                                            //
//  Hierarchical:                                                             //
//    pcie2_to_pcie3_wrapper                                                  //
//      axi_stream_intf                                                       //
//        tgt_req                                                             //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

module design_1_xdma_0_0_tgt_req # (

  parameter C_AXI_DATA_WIDTH       = 64,
  parameter C_KEEP_WIDTH           = C_AXI_DATA_WIDTH/8,
  parameter C_CQ_KEEP_WIDTH        = C_AXI_DATA_WIDTH/32,
  parameter C_S_AXIS_CQ_USER_WIDTH = 85,
  parameter TCQ                    = 1
  
) (  
  input                                       clk,
  input                                       user_reset,

  input           [C_AXI_DATA_WIDTH-1:0]      m_axis_rx_tdata,   // RX data
  input                                       m_axis_rx_tvalid,  // RX data is valid
  output   reg                                m_axis_rx_tready,  // RX ready for data
  input               [C_KEEP_WIDTH-1:0]      m_axis_rx_tkeep,   // RX strobe byte enables
  input                                       m_axis_rx_tlast,   // RX data is last
  input                 [21:0]                m_axis_rx_tuser,   // RX user signals

  input                                       s_axis_cq_tready,
  output   reg    [C_AXI_DATA_WIDTH-1:0]      s_axis_cq_tdata,
  output   reg     [C_CQ_KEEP_WIDTH-1:0]      s_axis_cq_tkeep,
  output   reg                                s_axis_cq_tlast,
  output   reg                                s_axis_cq_tvalid,
  output   reg  [C_S_AXIS_CQ_USER_WIDTH -1:0] s_axis_cq_tuser

 
  );

  localparam RX_IDLE       = 3'd0;
  localparam RX_DW0_DW1    = 3'd1;
  localparam RX_DW2        = 3'd2;
  localparam RX_WAIT       = 3'd3;


  //PCIe TLP Completion fields

  wire               sop;                   // Start of packet
  reg                in_packet_q;

  // PCIe Write request signals
  reg                rd_req_signal;
  reg                wr_req_signal;
  reg        [63:0]  req_addr;
  reg        [31:0]  req_data;
  reg        [10:0]  req_len;     // Only 1-256DW supported; No need to check special 1024DW condition
  reg        [15:0]  req_rid;
  reg         [7:0]  req_tag;
  reg         [2:0]  req_attr;
  reg         [4:0]  req_type;
  reg         [1:0]  req_fmt;
  reg                req_mesg;
  reg         [7:0]  req_msg_code;
  reg                req_VDM;
  reg                req_ATS;
  reg                req_OBFF;
  reg                req_LTR;
  reg                req_id_en;
  reg                req_ep;
  reg                req_wr;
  reg         [2:0]  req_tc;
  reg                req_rro;
  reg         [3:0]  req_fbe;
  reg         [3:0]  req_lbe;
  reg                req_4dw;
  reg         [2:0]  req_bar_id;
  reg         [1:0]  req_at;


  reg         [2:0]  state;
  reg                done;

 // Generate a signal that indicates if we are currently receiving a packet.
 // This value is one clock cycle delayed from what is actually on the AXIS
 // data bus.
  always @(posedge clk)
  begin
    if(user_reset)
      in_packet_q <= #   TCQ 1'b0;
    else if (m_axis_rx_tvalid && m_axis_rx_tready && m_axis_rx_tlast)
      in_packet_q <= #   TCQ 1'b0;
    else if (sop && m_axis_rx_tready)
      in_packet_q <= #   TCQ 1'b1;
  end

  assign sop = !in_packet_q && m_axis_rx_tvalid;

generate
if (C_AXI_DATA_WIDTH == 64) begin : tx_64 
  always @ ( posedge clk ) 
  begin
    if (user_reset)
    begin
      req_addr        <= #TCQ 64'b0;
      req_len         <= #TCQ 11'b0; 
      req_rid         <= #TCQ 16'b0;
      req_tag         <= #TCQ 8'b0;
      req_id_en       <= #TCQ 1'b0;
      req_mesg        <= #TCQ 1'b0;
      req_msg_code    <= #TCQ 8'b0;
      req_VDM         <= #TCQ 1'b0;
      req_ATS         <= #TCQ 1'b0;
      req_OBFF        <= #TCQ 1'b0;
      req_LTR         <= #TCQ 1'b0;
      req_ep          <= #TCQ 1'b0;
      req_wr          <= #TCQ 1'b0;
      req_type        <= #TCQ 5'b0;
      req_fmt         <= #TCQ 2'b0;
      req_fbe         <= #TCQ 4'b0;
      req_rid         <= #TCQ 16'b0;
      req_data        <= #TCQ 32'b0;
      req_lbe         <= #TCQ 4'b0;
      req_tc          <= #TCQ 3'b0;
      req_attr        <= #TCQ 3'b0;
      req_4dw         <= #TCQ 1'b0;
      req_bar_id      <= #TCQ 3'b0;
      req_at          <= #TCQ 2'b0;
      state           <= #TCQ RX_IDLE;
    end else begin

      case (state) 
        
        RX_IDLE : begin
          req_addr             <= #TCQ 64'b0;

          if (sop) begin
            req_len         <= #TCQ {1'b0, m_axis_rx_tdata[9:0]};
            req_at          <= #TCQ m_axis_rx_tdata[11:10];
            req_attr        <= #TCQ {m_axis_rx_tdata[18], m_axis_rx_tdata[13:12]};
            req_ep          <= #TCQ m_axis_rx_tdata[14]; 
            req_tc          <= #TCQ m_axis_rx_tdata[22:20];
            req_type        <= #TCQ m_axis_rx_tdata[28:24];
            req_fmt         <= #TCQ m_axis_rx_tdata[30:29];
            req_4dw         <= #TCQ m_axis_rx_tdata[29];
            req_wr          <= #TCQ m_axis_rx_tdata[30];
            req_fbe         <= #TCQ (m_axis_rx_tdata[28] == 1'b0) ? m_axis_rx_tdata[35:32] : 4'b0;
            req_lbe         <= #TCQ (m_axis_rx_tdata[28] == 1'b0) ? m_axis_rx_tdata[39:36] : 4'b0;
            req_mesg        <= #TCQ (m_axis_rx_tdata[28]) ? 1'b1 : 1'b0;
            req_msg_code    <= #TCQ (m_axis_rx_tdata[28]) ? m_axis_rx_tdata[39:32] : 8'b0;
            req_VDM         <= #TCQ (m_axis_rx_tdata[28] && (m_axis_rx_tdata[39:33] == 7'b0111_111)) ? 1'b1 : 1'b0;
            req_ATS         <= #TCQ (m_axis_rx_tdata[28] && 
                                    (m_axis_rx_tdata[39:32] == 8'b0000_0001 || m_axis_rx_tdata[39:32] == 8'b0000_0010 || m_axis_rx_tdata[39:32] == 8'b0000_0100 || m_axis_rx_tdata[39:32] == 8'b0000_0101))
                                    ? 1'b1 : 1'b0;
            req_OBFF        <= #TCQ (m_axis_rx_tdata[28] && (m_axis_rx_tdata[39:32] == 8'b0001_0010)) ? 1'b1 : 1'b0;
            req_LTR         <= #TCQ (m_axis_rx_tdata[28] && (m_axis_rx_tdata[39:32] == 8'b0001_0000)) ? 1'b1 : 1'b0;
            req_tag         <= #TCQ m_axis_rx_tdata[47:40];
            req_rid         <= #TCQ m_axis_rx_tdata[63:48];
            req_bar_id      <= #TCQ (m_axis_rx_tuser[2]) ? 3'b0 : 
                                    (m_axis_rx_tuser[3]) ? 3'b1 :
                                    (m_axis_rx_tuser[4]) ? 3'h2 :
                                    (m_axis_rx_tuser[5]) ? 3'h3 :
                                    (m_axis_rx_tuser[6]) ? 3'h4 : 3'h5;
            state           <= #TCQ RX_DW0_DW1;
          end else begin
            req_len         <= #TCQ 11'b0;
            req_at          <= #TCQ 2'b0; 
            req_attr        <= #TCQ 3'b0;
            req_ep          <= #TCQ 1'b0; 
            req_tc          <= #TCQ 3'b0;
            req_type        <= #TCQ 5'b0;
            req_fmt         <= #TCQ 2'b0;
            req_fbe         <= #TCQ 4'b0;
            req_lbe         <= #TCQ 4'b0;
            req_mesg        <= #TCQ 1'b0;
            req_msg_code    <= #TCQ 8'b0;
            req_VDM         <= #TCQ 1'b0;
            req_ATS         <= #TCQ 1'b0;
            req_OBFF        <= #TCQ 1'b0;
            req_LTR         <= #TCQ 1'b0;
            req_tag         <= #TCQ 8'b0;
            req_rid         <= #TCQ 16'b0;
            req_bar_id      <= #TCQ 3'b0;
            state           <= #TCQ RX_IDLE;
           end            
         end

        RX_DW0_DW1 : begin
          req_len         <= #TCQ req_len;
          req_at          <= #TCQ req_at;
          req_attr        <= #TCQ req_attr;
          req_ep          <= #TCQ req_ep; 
          req_tc          <= #TCQ req_tc;
          req_type        <= #TCQ req_type;
          req_fmt         <= #TCQ req_fmt;
          req_4dw         <= #TCQ req_4dw;
          req_wr          <= #TCQ req_wr;
          req_fbe         <= #TCQ req_fbe;
          req_lbe         <= #TCQ req_lbe;
          req_mesg        <= #TCQ req_mesg;
          req_msg_code    <= #TCQ req_msg_code;
          req_VDM         <= #TCQ req_VDM;
          req_ATS         <= #TCQ req_ATS;
          req_OBFF        <= #TCQ req_OBFF;
          req_LTR         <= #TCQ req_LTR;
          req_tag         <= #TCQ req_tag;
          req_rid         <= #TCQ req_rid;
          req_bar_id      <= #TCQ req_bar_id;
          if (req_4dw || (req_fmt[1] && req_mesg)) begin
            req_addr        <= #TCQ {m_axis_rx_tdata[31:0], m_axis_rx_tdata[63:32]}; 
            req_data        <= #TCQ 32'b0;
          end else begin
            req_addr        <= #TCQ {32'b0, m_axis_rx_tdata[31:0]}; 
            req_data        <= #TCQ m_axis_rx_tdata[63:32];
          end
          if (s_axis_cq_tready) begin
            state                <= #TCQ RX_DW2;
          end else begin
            state                <= #TCQ RX_DW0_DW1;
          end
        end            

        RX_DW2 : begin
          req_len         <= #TCQ req_len;
          req_at          <= #TCQ req_at; 
          req_attr        <= #TCQ req_attr;
          req_ep          <= #TCQ req_ep; 
          req_tc          <= #TCQ req_tc;
          req_type        <= #TCQ req_type;
          req_fmt         <= #TCQ req_fmt;
          req_4dw         <= #TCQ req_4dw;
          req_wr          <= #TCQ req_wr;
          req_fbe         <= #TCQ req_fbe;
          req_lbe         <= #TCQ req_lbe;
          req_mesg        <= #TCQ req_mesg;
          req_msg_code    <= #TCQ req_msg_code;
          req_VDM         <= #TCQ req_VDM;
          req_ATS         <= #TCQ req_ATS;
          req_OBFF        <= #TCQ req_OBFF;
          req_LTR         <= #TCQ req_LTR;
          req_tag         <= #TCQ req_tag;
          req_rid         <= #TCQ req_rid;
          req_addr        <= #TCQ req_addr;
          req_bar_id      <= #TCQ req_bar_id;
          req_data        <= #TCQ (req_4dw || (req_fmt[1] && req_mesg)) ? m_axis_rx_tdata[31:0] : req_data;
          if (s_axis_cq_tready) begin
            if ( (req_fmt[1] && req_mesg) || (!done) ) 
              state           <= #TCQ RX_WAIT;
            else begin // if (done)
              if (sop) begin
                req_len         <= #TCQ {1'b0, m_axis_rx_tdata[9:0]};
                req_at          <= #TCQ m_axis_rx_tdata[11:10];
                req_attr        <= #TCQ {m_axis_rx_tdata[18], m_axis_rx_tdata[13:12]};
                req_ep          <= #TCQ m_axis_rx_tdata[14]; 
                req_tc          <= #TCQ m_axis_rx_tdata[22:20];
                req_type        <= #TCQ m_axis_rx_tdata[28:24];
                req_fmt         <= #TCQ m_axis_rx_tdata[30:29];
                req_4dw         <= #TCQ m_axis_rx_tdata[29];
                req_wr          <= #TCQ m_axis_rx_tdata[30];
                req_fbe         <= #TCQ (m_axis_rx_tdata[28] == 1'b0) ? m_axis_rx_tdata[35:32] : 4'b0;
                req_lbe         <= #TCQ (m_axis_rx_tdata[28] == 1'b0) ? m_axis_rx_tdata[39:36] : 4'b0;
                req_mesg        <= #TCQ (m_axis_rx_tdata[28]) ? 1'b1 : 1'b0;
                req_msg_code    <= #TCQ (m_axis_rx_tdata[28]) ? m_axis_rx_tdata[39:32] : 8'b0;
                req_VDM         <= #TCQ (m_axis_rx_tdata[28] && (m_axis_rx_tdata[39:33] == 7'b0111_111)) ? 1'b1 : 1'b0;
                req_ATS         <= #TCQ (m_axis_rx_tdata[28] && 
                                        (m_axis_rx_tdata[39:32] == 8'b0000_0001 || m_axis_rx_tdata[39:32] == 8'b0000_0010 || m_axis_rx_tdata[39:32] == 8'b0000_0100 || m_axis_rx_tdata[39:32] == 8'b0000_0101))
                                        ? 1'b1 : 1'b0;
                req_OBFF        <= #TCQ (m_axis_rx_tdata[28] && (m_axis_rx_tdata[39:32] == 8'b0001_0010)) ? 1'b1 : 1'b0;
                req_LTR         <= #TCQ (m_axis_rx_tdata[28] && (m_axis_rx_tdata[39:32] == 8'b0001_0000)) ? 1'b1 : 1'b0;
                req_tag         <= #TCQ m_axis_rx_tdata[47:40];
                req_rid         <= #TCQ m_axis_rx_tdata[63:48];
                req_bar_id      <= #TCQ (m_axis_rx_tuser[2]) ? 3'b0 : 
                                        (m_axis_rx_tuser[3]) ? 3'b1 :
                                        (m_axis_rx_tuser[4]) ? 3'h2 :
                                        (m_axis_rx_tuser[5]) ? 3'h3 :
                                        (m_axis_rx_tuser[6]) ? 3'h4 : 3'h5;
                state           <= #TCQ RX_DW0_DW1;
              end else begin
                state           <= #TCQ RX_IDLE;
              end
            end // if (done)
          end else begin
            state                <= #TCQ RX_DW2;
          end
        end
         
        RX_WAIT : begin
          req_len         <= #TCQ req_len;
          req_at          <= #TCQ req_at;
          req_attr        <= #TCQ req_attr;
          req_ep          <= #TCQ req_ep; 
          req_tc          <= #TCQ req_tc;
          req_type        <= #TCQ req_type;
          req_fmt         <= #TCQ req_fmt;
          req_4dw         <= #TCQ req_4dw;
          req_wr          <= #TCQ req_wr;
          req_fbe         <= #TCQ req_fbe;
          req_lbe         <= #TCQ req_lbe;
          req_mesg        <= #TCQ req_mesg;
          req_msg_code    <= #TCQ req_msg_code;
          req_VDM         <= #TCQ req_VDM;
          req_ATS         <= #TCQ req_ATS;
          req_OBFF        <= #TCQ req_OBFF;
          req_LTR         <= #TCQ req_LTR;
          req_tag         <= #TCQ req_tag;
          req_rid         <= #TCQ req_rid;
          req_addr        <= #TCQ req_addr;
          req_data        <= #TCQ req_data; 
          req_bar_id      <= #TCQ req_bar_id;

          if (s_axis_cq_tready && done) begin
            if (sop) begin
              req_len         <= #TCQ {1'b0, m_axis_rx_tdata[9:0]};
              req_at          <= #TCQ m_axis_rx_tdata[11:10];
              req_attr        <= #TCQ {m_axis_rx_tdata[18], m_axis_rx_tdata[13:12]};
              req_ep          <= #TCQ m_axis_rx_tdata[14]; 
              req_tc          <= #TCQ m_axis_rx_tdata[22:20];
              req_type        <= #TCQ m_axis_rx_tdata[28:24];
              req_fmt         <= #TCQ m_axis_rx_tdata[30:29];
              req_4dw         <= #TCQ m_axis_rx_tdata[29];
              req_wr          <= #TCQ m_axis_rx_tdata[30];
              req_fbe         <= #TCQ (m_axis_rx_tdata[28] == 1'b0) ? m_axis_rx_tdata[35:32] : 4'b0;
              req_lbe         <= #TCQ (m_axis_rx_tdata[28] == 1'b0) ? m_axis_rx_tdata[39:36] : 4'b0;
              req_mesg        <= #TCQ (m_axis_rx_tdata[28]) ? 1'b1 : 1'b0;
              req_msg_code    <= #TCQ (m_axis_rx_tdata[28]) ? m_axis_rx_tdata[39:32] : 8'b0;
              req_VDM         <= #TCQ (m_axis_rx_tdata[28] && (m_axis_rx_tdata[39:33] == 7'b0111_111)) ? 1'b1 : 1'b0;
              req_ATS         <= #TCQ (m_axis_rx_tdata[28] && 
                                      (m_axis_rx_tdata[39:32] == 8'b0000_0001 || m_axis_rx_tdata[39:32] == 8'b0000_0010 || m_axis_rx_tdata[39:32] == 8'b0000_0100 || m_axis_rx_tdata[39:32] == 8'b0000_0101))
                                      ? 1'b1 : 1'b0;
              req_OBFF        <= #TCQ (m_axis_rx_tdata[28] && (m_axis_rx_tdata[39:32] == 8'b0001_0010)) ? 1'b1 : 1'b0;
              req_LTR         <= #TCQ (m_axis_rx_tdata[28] && (m_axis_rx_tdata[39:32] == 8'b0001_0000)) ? 1'b1 : 1'b0;
              req_tag         <= #TCQ m_axis_rx_tdata[47:40];
              req_rid         <= #TCQ m_axis_rx_tdata[63:48];
              req_bar_id      <= #TCQ (m_axis_rx_tuser[2]) ? 3'b0 : 
                                      (m_axis_rx_tuser[3]) ? 3'b1 :
                                      (m_axis_rx_tuser[4]) ? 3'h2 :
                                      (m_axis_rx_tuser[5]) ? 3'h3 :
                                      (m_axis_rx_tuser[6]) ? 3'h4 : 3'h5;
              state           <= #TCQ RX_DW0_DW1;
            end else begin
              state           <= #TCQ RX_IDLE;
            end
          end else begin
            state           <= #TCQ RX_WAIT;
          end
        end
      endcase
    end      
  end 

  always @(*)
  begin
    if (user_reset) begin
      s_axis_cq_tdata  = 64'b0;             
      s_axis_cq_tvalid = 1'b0;
      s_axis_cq_tkeep  = 2'h0;
      s_axis_cq_tlast  = 1'b0;
      s_axis_cq_tuser  = 85'h0; 
      m_axis_rx_tready = 1'b1;
      done             = 1'b0;
    end else begin

      case (state)
      
        RX_DW0_DW1 : begin

          if (req_mesg) begin // Message Type Header

            if (req_VDM) begin             // Vendor Defined Messages Type 0/1
              s_axis_cq_tdata = {m_axis_rx_tdata[63:32], m_axis_rx_tdata[15:0], m_axis_rx_tdata[31:16]};
            end else if (req_ATS) begin    // ATS Messages
              s_axis_cq_tdata = m_axis_rx_tdata[63:0];
            end else if (req_LTR) begin    // LTR Messages
              s_axis_cq_tdata = {m_axis_rx_tdata[31:0], m_axis_rx_tdata[63:32]};
            end else if (req_OBFF) begin   // OBFF Messages
              s_axis_cq_tdata = m_axis_rx_tdata[63:0];
            end else begin                 // Other Messages -- Assign Address [63:0] field but should be treated as reserved by receiver unless Routed by Address
              s_axis_cq_tdata = {m_axis_rx_tdata[31:0], m_axis_rx_tdata[63:32]};
            end

            s_axis_cq_tuser  = {44'b0,
                                1'b1,
                                32'b0,
                                (req_wr) ? {4'b1111, 4'b1111} : {4'b0000, 4'b0000}
                               }; //SOP is set and FBE/LBE is set only if it has payload

          end else begin // Non-Message Type Header

            s_axis_cq_tdata  = (req_4dw) ? {m_axis_rx_tdata[31:0], m_axis_rx_tdata[63:34],  req_at} : {32'b0, m_axis_rx_tdata[31:2], req_at};
            s_axis_cq_tuser  = {44'b0, 1'b1, 36'b0, req_fbe}; //SOP and FBE set

          end

          s_axis_cq_tvalid = (req_mesg) ? 1'b0 : 1'b1; // Filter out all Messages as DMA IP doesn't handle Message TLP
          s_axis_cq_tkeep  = 2'h3;
          s_axis_cq_tlast  = 1'b0;

          m_axis_rx_tready = s_axis_cq_tready;
          done             = 1'b0;

        end

        RX_DW2 : begin
          s_axis_cq_tdata  = {
                               1'b0,
                               req_attr,
                               req_tc,
                               6'b0,
                               (req_mesg ? req_type[2:0] : req_bar_id),                                               
                               (req_mesg ? req_msg_code : 8'b0), 
                               req_tag,
                               req_rid,
                               1'b0,
                               (
                                req_mesg ? (req_VDM ? 4'b1101 :
                                                      (req_ATS ? 4'b1110 : 4'b1100)
                                           ) :
                                           (req_wr ? 4'b1 : 4'b0)
                               ), 
                               req_len
                               };             
          s_axis_cq_tvalid = (req_mesg) ? 1'b0 : 1'b1; // Filter out all Messages as DMA IP doesn't handle Message TLP
          s_axis_cq_tkeep  = 2'h3;
          if (!req_mesg) begin
            s_axis_cq_tlast  = (req_wr) ? 1'b0 : 1'b1; 
            done             = (req_wr) ? 1'b0 : 1'b1; 
            s_axis_cq_tuser  = {81'b0, req_fbe} ; // FBE set
          end else begin
            s_axis_cq_tlast  = (req_fmt[1]) ? 1'b0 : 1'b1; //MsgD or Msg
            done             = (req_fmt[1]) ? 1'b0 : 1'b1;
            s_axis_cq_tuser  = 85'b0 ; // FBE set
          end

          m_axis_rx_tready   = ( (req_fmt[1] && req_mesg) || req_wr ) ? 1'b0 : s_axis_cq_tready;

        end

        RX_WAIT : begin
          if (!req_mesg ) begin
            s_axis_cq_tdata  = req_addr[2] ? {{req_data[7:0], req_data[15:8], req_data[23:16], req_data[31:24]}, 32'b0} : {32'b0, {req_data[7:0], req_data[15:8], req_data[23:16], req_data[31:24]}};
            s_axis_cq_tuser  = {73'b0, (req_addr[2] ? 8'hF0 : 8'h0F), 4'b0, req_fbe} ;
            s_axis_cq_tkeep  = req_addr[2] ? 2'h3 : 2'h1;
          end else begin
            s_axis_cq_tdata  = {32'b0, {req_data[7:0], req_data[15:8], req_data[23:16], req_data[31:24]}};
            s_axis_cq_tuser  = {69'b0, (req_addr[2] ? 8'hF0 : 8'h0F), 4'b0, 4'b0};  //Supplying only byte_en for MsgD
            s_axis_cq_tkeep  = 2'h1;
          end
          s_axis_cq_tvalid   = (req_mesg) ? 1'b0 : 1'b1; // Filter out all Messages as DMA IP doesn't handle Message TLP
          s_axis_cq_tlast    = 1'b1;
          done               = 1'b1;
          m_axis_rx_tready   = s_axis_cq_tready;
        end
  
        default : begin
          s_axis_cq_tdata  = 64'b0;              
          s_axis_cq_tvalid = 1'b0;
          s_axis_cq_tkeep  = 2'h0;
          s_axis_cq_tlast  = 1'b0;
          s_axis_cq_tuser  = 85'b0;

          m_axis_rx_tready = 1'b1;
          done             = 1'b0;
        end 

      endcase
    end 
  end


end 
endgenerate

generate 
if (C_AXI_DATA_WIDTH == 128) begin : tx_128
wire [2:0] req_bar;
  always @ ( posedge clk ) 
  begin
    if (user_reset )
    begin
      req_4dw         <= #TCQ 1'b0;
      req_addr        <= #TCQ 64'b0;
      req_data        <= #TCQ 32'b0;
      state           <= #TCQ RX_IDLE;
    end else begin

      case (state) 
        
        RX_IDLE : begin
          if (sop) begin
            req_4dw         <= #TCQ m_axis_rx_tdata[29];
            req_data        <= #TCQ (m_axis_rx_tdata[29]) ? 32'b0 : 
                                                                {m_axis_rx_tdata[103:96], m_axis_rx_tdata[111:104], m_axis_rx_tdata[119:112], m_axis_rx_tdata[127:120]};//m_axis_rx_tdata[127:96]; 
            req_addr        <= #TCQ (m_axis_rx_tdata[29]) ? {m_axis_rx_tdata[95:64], m_axis_rx_tdata[127:96]} : {32'b0, m_axis_rx_tdata[95:64]};
            req_mesg        <= #TCQ (m_axis_rx_tdata[28]) ? 1'b1 : 1'b0;
            state           <= #TCQ (s_axis_cq_tready) ? 
                                    ( (m_axis_rx_tdata[30]) ? RX_DW2 : RX_IDLE) : RX_IDLE ;   //Mem Rd                     
          end else begin
            req_4dw         <= #TCQ 1'b0;
            req_data        <= #TCQ 32'b0;
            req_addr        <= #TCQ 64'b0; 
            state           <= #TCQ RX_IDLE;
           end            
         end

        RX_DW2 : begin
          req_4dw         <= #TCQ req_4dw;
          req_data        <= #TCQ (req_4dw) ? m_axis_rx_tdata[31:0] : req_data;
          req_addr        <= #TCQ req_addr;
          req_mesg        <= #TCQ req_mesg;
          if (s_axis_cq_tready) begin
            state           <= #TCQ RX_IDLE;
          end else begin
            state           <= #TCQ RX_DW2;
          end
        end

        endcase
    end
  end
  
 assign  req_bar         = (m_axis_rx_tuser[2]) ? 3'b0 : 
                           (m_axis_rx_tuser[3]) ? 3'b1 :
                           (m_axis_rx_tuser[4]) ? 3'h2 :
                           (m_axis_rx_tuser[5]) ? 3'h3 :
                           (m_axis_rx_tuser[6]) ? 3'h4 : 3'h5;

  always @(*)
  begin
    if (user_reset ) begin
      s_axis_cq_tdata  = 128'b0;             
      s_axis_cq_tvalid = 1'b0;
      s_axis_cq_tkeep  = 2'h0;
      s_axis_cq_tlast  = 1'b0;
      s_axis_cq_tuser  = 85'h0; 
      m_axis_rx_tready = 1'b0;
      done             = 1'b0;
    end else begin       

      case (state)
      
        RX_IDLE : begin
          if (sop) begin

            if (m_axis_rx_tdata[28]) begin  // Message TLP
              if (m_axis_rx_tdata[39:33] == 7'b0111_111) begin  // Vendor Defined Message Type 0/1

                s_axis_cq_tdata  = {
                                    1'b0,
                                    req_attr,
                                    req_tc,
                                    6'b0,
                                    m_axis_rx_tdata[26:24],                                               
                                    m_axis_rx_tdata[39:32], 
                                    m_axis_rx_tdata[47:40],
                                    m_axis_rx_tdata[63:48],
                                    1'b0,
                                    4'b1101, 
                                    {1'b0, m_axis_rx_tdata[9:0]},
                                    m_axis_rx_tdata[127:96],
                                    m_axis_rx_tdata[79:64],
                                    m_axis_rx_tdata[95:80]
                                   };

              end else if (m_axis_rx_tdata[39:32] == 8'b0000_0001 || m_axis_rx_tdata[39:32] == 8'b0000_0010 || m_axis_rx_tdata[39:32] == 8'b0000_0100 || m_axis_rx_tdata[39:32] == 8'b0000_0101) begin  // ATS Message

                s_axis_cq_tdata  = {
                                    1'b0,
                                    req_attr,
                                    req_tc,
                                    6'b0,
                                    m_axis_rx_tdata[26:24],                                               
                                    m_axis_rx_tdata[39:32], 
                                    m_axis_rx_tdata[47:40],
                                    m_axis_rx_tdata[63:48],
                                    1'b0,
                                    4'b1110, 
                                    {1'b0, m_axis_rx_tdata[9:0]},
                                    m_axis_rx_tdata[63:0]
                                   };

              end else if (m_axis_rx_tdata[39:32] == 8'b0001_0010) begin  // OBFF Message

                s_axis_cq_tdata  = {
                                    1'b0,
                                    req_attr,
                                    req_tc,
                                    6'b0,
                                    m_axis_rx_tdata[26:24],                                               
                                    m_axis_rx_tdata[39:32], 
                                    m_axis_rx_tdata[47:40],
                                    m_axis_rx_tdata[63:48],
                                    1'b0,
                                    4'b1100, 
                                    {1'b0, m_axis_rx_tdata[9:0]},
                                    m_axis_rx_tdata[63:0]
                                   };

              end else if (m_axis_rx_tdata[39:32] == 8'b0001_0000) begin  // LTR Message

                s_axis_cq_tdata  = {
                                    1'b0,
                                    req_attr,
                                    req_tc,
                                    6'b0,
                                    m_axis_rx_tdata[26:24],                                               
                                    m_axis_rx_tdata[39:32], 
                                    m_axis_rx_tdata[47:40],
                                    m_axis_rx_tdata[63:48],
                                    1'b0,
                                    4'b1100, 
                                    {1'b0, m_axis_rx_tdata[9:0]},
                                    m_axis_rx_tdata[31:0],
                                    m_axis_rx_tdata[63:32]
                                   };

              end else begin  // Other Messages

                s_axis_cq_tdata  = {
                                    1'b0,
                                    req_attr,
                                    req_tc,
                                    6'b0,
                                    m_axis_rx_tdata[26:24],                                               
                                    m_axis_rx_tdata[39:32], 
                                    m_axis_rx_tdata[47:40],
                                    m_axis_rx_tdata[63:48],
                                    1'b0,
                                    4'b1100, 
                                    {1'b0, m_axis_rx_tdata[9:0]},
                                    m_axis_rx_tdata[31:0],
                                    m_axis_rx_tdata[63:32]
                                   };

              end

              s_axis_cq_tuser = {44'b0,
                                 1'b1,
                                 32'b0,
                                 (m_axis_rx_tdata[30]) ? {4'b1111, 4'b1111} : {4'b0000, 4'b0000}
                                }; //SOP is set and FBE/LBE is set only if it has payload

            end else begin  // Non-Message TLP

              s_axis_cq_tdata  = {
                                  1'b0,
                                  {m_axis_rx_tdata[18], m_axis_rx_tdata[13:12]},
                                  m_axis_rx_tdata[22:20],
                                  6'b0,
                                  req_bar,                                               
                                  8'b0, 
                                  m_axis_rx_tdata[47:40],
                                  m_axis_rx_tdata[63:48],
                                  1'b0,
                                  {3'b0, m_axis_rx_tdata[30]}, 
                                  {1'b0, m_axis_rx_tdata[9:0]},
                                  (m_axis_rx_tdata[29] ? {m_axis_rx_tdata[95:64], m_axis_rx_tdata[127:98]} : 
                                                         ({32'b0, m_axis_rx_tdata[95:66]})),
                                  m_axis_rx_tdata[11:10]
                                 };

              s_axis_cq_tuser = {44'b0, 1'b1, 32'b0, m_axis_rx_tdata[39:32]};

            end
                    
            s_axis_cq_tvalid = m_axis_rx_tdata[28] ? 1'b0 : 1'b1; // Filter out all Messages as DMA IP doesn't handle Message TLP
            s_axis_cq_tkeep  = 4'hF;
            s_axis_cq_tlast  = (m_axis_rx_tdata[30]) ? 1'b0 : 1'b1;
//          s_axis_cq_tuser  = {44'b0, 1'b1, 40'b0 }; //: 85'b0; //SOP set
            m_axis_rx_tready =  s_axis_cq_tready;
          end else begin
            s_axis_cq_tdata  = 128'b0;              
            s_axis_cq_tvalid = 1'b0;
            s_axis_cq_tkeep  = 4'h0;
            s_axis_cq_tlast  = 1'b0;
            s_axis_cq_tuser  = 85'b0;

            m_axis_rx_tready = s_axis_cq_tready;
          end
        end

        RX_DW2 : begin
          if (req_4dw) begin
           case (req_addr[3:2])
            2'd0:  begin  
                s_axis_cq_tdata = {96'b0, m_axis_rx_tdata[7:0], m_axis_rx_tdata[15:8], m_axis_rx_tdata[23:16], m_axis_rx_tdata[31:24]};
                s_axis_cq_tuser = {45'b0, 32'h000F, 8'b0};
                s_axis_cq_tkeep  = 4'b0001;
            end
            2'd1: begin
                s_axis_cq_tdata = {64'b0, m_axis_rx_tdata[7:0], m_axis_rx_tdata[15:8], m_axis_rx_tdata[23:16], m_axis_rx_tdata[31:24], 32'b0};
                s_axis_cq_tuser = {45'b0, 32'h00F0, 8'b0};
                s_axis_cq_tkeep  = 4'b0011;
            end
            2'd2: begin
                s_axis_cq_tdata = {32'b0, m_axis_rx_tdata[7:0], m_axis_rx_tdata[15:8], m_axis_rx_tdata[23:16], m_axis_rx_tdata[31:24], 64'b0};
                s_axis_cq_tuser = {45'b0, 32'h0F00, 8'b0};
                s_axis_cq_tkeep  = 4'b0111;
            end          
            2'd3: begin
                s_axis_cq_tdata = {m_axis_rx_tdata[7:0], m_axis_rx_tdata[15:8], m_axis_rx_tdata[23:16], m_axis_rx_tdata[31:24], 96'b0};
                s_axis_cq_tuser = {45'b0, 32'hF000, 8'b0};
                s_axis_cq_tkeep  = 4'b1111;
            end   
           endcase   
          end else begin
           case (req_addr[3:2])
            2'd0:  begin  
                s_axis_cq_tdata = {96'b0, req_data[31:0]};
                s_axis_cq_tuser = {45'b0, 32'h000F, 8'b0};
                s_axis_cq_tkeep  = 4'b0001;
            end
            2'd1: begin
                s_axis_cq_tdata = {64'b0, req_data[31:0], 32'b0};
                s_axis_cq_tuser = {45'b0, 32'h00F0, 8'b0};
                s_axis_cq_tkeep  = 4'b0011;
            end
            2'd2: begin
                s_axis_cq_tdata = {32'b0, req_data[31:0], 64'b0};
                s_axis_cq_tuser = {45'b0, 32'h0F00, 8'b0};
                s_axis_cq_tkeep  = 4'b0111;
            end          
            2'd3: begin
                s_axis_cq_tdata = {req_data[31:0],  96'b0};
                s_axis_cq_tuser = {45'b0, 32'hF000, 8'b0};
                s_axis_cq_tkeep  = 4'b1111;
            end   
           endcase   
          end                                        
          s_axis_cq_tvalid = (req_mesg) ? 1'b0 : 1'b1; // Filter out all Messages as DMA IP doesn't handle Message TLP
          s_axis_cq_tlast  = 1'b1;             
//          s_axis_cq_tuser  = 85'b0 ; // FBE set

          m_axis_rx_tready = (req_4dw) ? s_axis_cq_tready : 1'b0;
        end       


  
        default : begin
          s_axis_cq_tdata  = 128'b0;              
          s_axis_cq_tvalid = 1'b0;
          s_axis_cq_tkeep  = 4'h0;
          s_axis_cq_tlast  = 1'b0;
          s_axis_cq_tuser  = 85'b0;

          m_axis_rx_tready = s_axis_cq_tready;
        end 

      endcase
    end 
  end
end 
endgenerate

endmodule
