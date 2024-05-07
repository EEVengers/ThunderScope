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
// File       : design_1_xdma_0_0_dma_cpl.sv
// Version    : 4.1
//-----------------------------------------------------------------------------

//----------------------------------------------------------------------------//
//  File   : <ComponentName>_dma_cpl.v                                        //
//  Date   : 11/17/15                                                         //
//  Author : Vidya Gopalakrishnan                                             //
//                                                                            //
//  Description:                                                              //
//  Converts Gen2 PCIe RX packets to RC and sends it to the DMA               //
//                                                                            //
//  Notes:                                                                    //
//  64-bit &128-bit are supported                                             //
//                                                                            //
//  Hierarchical:                                                             //
//    pcie2_to_pcie3_wrapper                                                  //
//      axi_stream_intf                                                       //
//        dma_cpl                                                             //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

module design_1_xdma_0_0_dma_cpl #(

  parameter C_AXI_DATA_WIDTH = 32,                     // RX/TX interface data width
  parameter C_KEEP_WIDTH     = C_AXI_DATA_WIDTH/8,     // TKEEP width for RX
  parameter C_RC_KEEP_WIDTH  = C_AXI_DATA_WIDTH/32,    // TKEEP width for RC
  parameter C_ADDR_ALGN      = 1,                      // specifies alignment mode; 1 = Address Aligned; 0 = Dword Aligned
  parameter TCQ              = 1                       // Clock to Q time

  ) (
  
  input                                    clk,
  input                                    user_reset,

  //-------------------------------------------------
  // AXI-S RX Interface from RX Demux
  //-------------------------------------------------
  input [C_AXI_DATA_WIDTH-1:0] m_axis_rx_tdata,       // RX data
  input                        m_axis_rx_tvalid,      // RX data is valid
  input [C_KEEP_WIDTH-1:0]     m_axis_rx_tkeep,       // RX strobe byte enables
  input                        m_axis_rx_tlast,       // RX data is last
  input                 [21:0] m_axis_rx_tuser,       // RX user signals
  output  reg                  m_axis_rx_tready,      // RX ready for data

  //-------------------------------------------------
  // AXI-S RX to RC conversion
  //-------------------------------------------------
  output reg[C_AXI_DATA_WIDTH-1:0] s_axis_rc_tdata,   // RX data
  output reg                       s_axis_rc_tvalid,  // RX data is valid
  input                            s_axis_rc_tready,  // RX ready for data
  output reg [C_RC_KEEP_WIDTH-1:0] s_axis_rc_tkeep,   // RX strobe byte enables
  output reg                       s_axis_rc_tlast,   // RX data is last
  output reg                [74:0] s_axis_rc_tuser    // RX user signals

);



  localparam RX_IDLE       = 3'd0;
  localparam RX_DW0_DW1    = 3'd1;
  localparam RX_DATA       = 3'd2;
  localparam RX_DATA_N     = 3'd3;
  localparam RX_NEW        = 3'd4;

  wire               sop;                   // Start of packet
  reg                in_packet_q;
  reg        [2:0]   wr_tc;           
  reg                wr_td;         
  reg                wr_ep;
  reg        [2:0]   wr_attr;
  reg        [9:0]   wr_len;
  reg       [15:0]   wr_rid;
  reg       [15:0]   wr_cid;
  reg        [7:0]   wr_tag;
  reg        [7:0]   wr_be;
  reg        [6:0]   wr_addr;
  reg       [11:0]   wr_byte;      
  reg        [2:0]   wr_compl_status;

  reg        [2:0]   state;
  reg       [C_AXI_DATA_WIDTH-1:0]   wr_data;  
  reg       [C_AXI_DATA_WIDTH-1:0]   wr_data_reg;

  wire      [C_AXI_DATA_WIDTH-1:0]   m_axis_rx_tdata_be;   // Byte Reverse of m_axis_rx_tdata
  wire [11:0] pending_dw_count;
  reg [11:0] current_dw_count;


 // Generate a signal that indicates if we are currently receiving a packet.
 // This value is one clock cycle delayed from what is actually on the AXIS
 // data bus.
  always @(posedge clk)
  begin
    if(user_reset)
      in_packet_q <= #   TCQ 1'b0;
    else if (m_axis_rx_tvalid && s_axis_rc_tready && m_axis_rx_tlast)
      in_packet_q <= #   TCQ 1'b0;
    else if (sop && s_axis_rc_tready)
      in_packet_q <= #   TCQ 1'b1;
  end

  assign sop = !in_packet_q && m_axis_rx_tvalid;

  always @(posedge clk)
  begin 
    if (user_reset)  
      wr_data_reg    <=#TCQ 64'b0;
    else 
      wr_data_reg    <=#TCQ wr_data;
  end
   
  assign pending_dw_count = (wr_len - current_dw_count);

  generate
  if (C_AXI_DATA_WIDTH == 64) begin : rc_64 



    assign m_axis_rx_tdata_be = {m_axis_rx_tdata[39:32], m_axis_rx_tdata[47:40],
                                 m_axis_rx_tdata[55:48], m_axis_rx_tdata[63:56], m_axis_rx_tdata[7:0], 
                                 m_axis_rx_tdata [15:8], m_axis_rx_tdata[23:16], m_axis_rx_tdata[31:24]};

  always @ ( posedge clk ) 
  begin
    if (user_reset)
    begin
   //   m_axis_rx_tready <= #TCQ 1'b0;
      wr_tc            <= #TCQ 3'b0;
      wr_td            <= #TCQ 1'b0;
      wr_ep            <= #TCQ 1'b0;
      wr_attr          <= #TCQ 3'b0;
      wr_len           <= #TCQ 10'b0;
      wr_rid           <= #TCQ 16'b0;
      wr_cid           <= #TCQ 16'b0;
      wr_tag           <= #TCQ 8'b0;
      wr_be            <= #TCQ 8'b0;
      wr_addr          <= #TCQ 7'b0;
      wr_byte          <= #TCQ 12'b0;      
      wr_compl_status  <= #TCQ 3'b0;
      current_dw_count <= #TCQ 12'b0;
      wr_data          <= #TCQ 64'b0;
      state            <= #TCQ RX_IDLE;
    end else begin

      case (state) 
      
        RX_IDLE : begin
          wr_tag           <= #TCQ 8'b0;
          wr_data          <= #TCQ 64'b0;
          current_dw_count <= #TCQ 12'b0;
          if (sop) begin
            wr_len           <= #TCQ m_axis_rx_tdata[9:0];
            wr_attr          <= #TCQ {m_axis_rx_tdata[18], m_axis_rx_tdata[13:12]};
            wr_ep            <= #TCQ m_axis_rx_tdata[14];
            wr_td            <= #TCQ m_axis_rx_tdata[15];
            wr_tc            <= #TCQ m_axis_rx_tdata[22:20];
            wr_byte          <= #TCQ m_axis_rx_tdata[43:32];
            wr_compl_status  <= #TCQ m_axis_rx_tdata[47:45];
            wr_cid           <= #TCQ m_axis_rx_tdata[63:48]; 
            state            <= #TCQ RX_DW0_DW1;
          end else begin
            wr_len           <= #TCQ 10'b0;
            wr_attr          <= #TCQ 3'b0;
            wr_ep            <= #TCQ wr_ep;
            wr_td            <= #TCQ 1'b0;
            wr_tc            <= #TCQ 3'b0;
            wr_byte          <= #TCQ 12'b0;
            wr_compl_status  <= #TCQ 3'b0;
            wr_cid           <= #TCQ 16'b0; 
            state            <= #TCQ RX_IDLE;
          end
        end  

        RX_DW0_DW1 : begin
          wr_addr          <= #TCQ m_axis_rx_tdata [6:0];
          wr_tag           <= #TCQ m_axis_rx_tdata[15:8];
          wr_rid           <= #TCQ m_axis_rx_tdata[31:16];
          wr_data          <= #TCQ {32'b0, m_axis_rx_tdata_be[63:32]};
          wr_len           <= #TCQ wr_len;
          wr_attr          <= #TCQ wr_attr;
          wr_ep            <= #TCQ wr_ep;
          wr_td            <= #TCQ wr_td;
          wr_tc            <= #TCQ wr_tc;
          wr_byte          <= #TCQ wr_byte;
          wr_compl_status  <= #TCQ wr_compl_status;
          wr_cid           <= #TCQ wr_cid; 
          current_dw_count <= #TCQ 11'h0;
          if ( s_axis_rc_tready) begin
            state            <= #TCQ ((wr_len == 10'h1) || (wr_compl_status != 3'b0)) ? RX_NEW : RX_DATA; //In case of UR/CA, look for next packet
          end else begin
            state            <= #TCQ RX_DW0_DW1;
          end
        end
 
        RX_DATA : begin
          wr_addr          <= #TCQ wr_addr;
          wr_len           <= #TCQ wr_len;
          wr_attr          <= #TCQ wr_attr;
          wr_ep            <= #TCQ wr_ep;
          wr_td            <= #TCQ wr_td;
          wr_tc            <= #TCQ wr_tc;
          wr_byte          <= #TCQ wr_byte;
          wr_compl_status  <= #TCQ wr_compl_status;
          wr_cid           <= #TCQ wr_cid;
          wr_tag           <= #TCQ wr_tag;
          current_dw_count <= #TCQ current_dw_count + 11'h1;
          wr_data          <= #TCQ m_axis_rx_tdata_be;
          state            <= #TCQ (s_axis_rc_tready) ? ((wr_len <= 3'h3) ? RX_NEW : RX_DATA_N) : RX_DATA;  
        end
 
        RX_DATA_N : begin
          wr_addr          <= #TCQ wr_addr;
          wr_len           <= #TCQ wr_len;
          wr_attr          <= #TCQ wr_attr;
          wr_ep            <= #TCQ wr_ep;
          wr_td            <= #TCQ wr_td;
          wr_tc            <= #TCQ wr_tc;
          wr_byte          <= #TCQ wr_byte;
          wr_compl_status  <= #TCQ wr_compl_status;
          wr_cid           <= #TCQ wr_cid;
          wr_tag           <= #TCQ wr_tag;
          current_dw_count <= #TCQ current_dw_count + 11'h2;
          wr_data          <= #TCQ m_axis_rx_tdata_be;
          state            <= #TCQ ( s_axis_rc_tready) ?  ((pending_dw_count >= 3'h4) ? RX_DATA_N : RX_NEW) : RX_DATA_N;
        end

        RX_NEW : begin
          wr_tag           <= #TCQ 8'b0;
          wr_data          <= #TCQ 64'b0;
          current_dw_count   <= #TCQ (current_dw_count + 2'h2); 
          if (sop) begin
            wr_len           <= #TCQ m_axis_rx_tdata[9:0];
            wr_attr          <= #TCQ {m_axis_rx_tdata[18], m_axis_rx_tdata[13:12]};
            wr_ep            <= #TCQ m_axis_rx_tdata[14];
            wr_td            <= #TCQ m_axis_rx_tdata[15];
            wr_tc            <= #TCQ m_axis_rx_tdata[22:20];
            wr_byte          <= #TCQ m_axis_rx_tdata[43:32];
            wr_compl_status  <= #TCQ m_axis_rx_tdata[47:45];
            wr_cid           <= #TCQ m_axis_rx_tdata[63:48]; 
            state            <= #TCQ RX_DW0_DW1;
          end else begin
            wr_len           <= #TCQ 10'b0;
            wr_attr          <= #TCQ 3'b0;
            wr_ep            <= #TCQ wr_ep;
            wr_td            <= #TCQ 1'b0;
            wr_tc            <= #TCQ 3'b0;
            wr_byte          <= #TCQ 12'b0;
            wr_compl_status  <= #TCQ 3'b0;
            wr_cid           <= #TCQ 16'b0; 
            state            <= #TCQ RX_IDLE;
          end
        end  
      endcase 
    end
  end
          

   always @ (*) 
   begin        
     if (user_reset) begin
       s_axis_rc_tdata      = 64'b0;             
       s_axis_rc_tvalid     = 1'b0;
       s_axis_rc_tkeep      = 8'h0;
       s_axis_rc_tlast      = 2'b0;
       s_axis_rc_tuser      = 4'h0; 
       m_axis_rx_tready = 1'h1;       
     end else begin
       m_axis_rx_tready = s_axis_rc_tready;
       case (state)
         
         RX_DW0_DW1: begin
           s_axis_rc_tdata  =  {                                  // Bits
                                    m_axis_rx_tdata[31:16],           //16
                                    {1'b0},                           // 1
                                    wr_ep,                            // 1 - Poisoned Packet
                                    wr_compl_status,                  // 3
                                    {1'b0, wr_len},                   // 11
                                    {1'b0},                           // 1
                                    ( (wr_byte[11:2] <= wr_len[9:0]) ?
                                    1'b1 : 1'b0 ),                    // 1 - Request Completed
                                    {1'b0},                           // 1 - Locked Read Completion
                                    {1'b0, wr_byte},                  // 13
                                    (wr_compl_status == 3'b0 ?
                                    4'h0 : 4'h2 )  ,                  // 4
                                    {5'b0, m_axis_rx_tdata[6:0]}      // 12
                                };

           s_axis_rc_tkeep  = 2'h3;
           s_axis_rc_tuser  = {42'b0, 1'b1, 32'b0}; //Setting SOP = 1
           s_axis_rc_tlast  = 1'b0;
           s_axis_rc_tvalid =  1'b1; 
         end

         RX_DATA : begin
           s_axis_rc_tvalid =  1'b1; 
           s_axis_rc_tdata  =  {                                         // Bits
                                    wr_data[31:0],                          // 32
                                    1'b0,                                   // 1
                                    wr_attr,                                // 3
                                    wr_tc,                                  // 3
                                    1'b0,                                   // 1
                                    wr_cid,                                 // 16
                                    wr_tag                                  // 8
                                };
           s_axis_rc_tlast  = ((wr_len == 10'h1) || (wr_compl_status != 3'b0)) ? 1'b1 : 1'b0;
           if (wr_compl_status != 3'b0) begin
             s_axis_rc_tuser  = {40'b0, 1'b1, 2'b0, 32'h0000};  //Sending EOF= 1
             s_axis_rc_tkeep  = 2'h1;
           end else begin
             s_axis_rc_tuser  = (wr_len == 10'b1) ? {40'b0, 1'b1, 2'b0, 32'h00F0} : {43'b0, 32'h00F0};  //Sending byte enable
             s_axis_rc_tkeep  = 2'h3;
           end
         end     

         RX_DATA_N  : begin//, RX_NEW : begin
           s_axis_rc_tvalid =  1'b1; 
           s_axis_rc_tdata  =  wr_data;                               
           s_axis_rc_tlast  = (pending_dw_count <= 10'h2) ? 1'b1 : 1'b0;
           s_axis_rc_tuser  = { 40'b0,
                                {(pending_dw_count > 10'h2) ? 1'b0 : 1'b1},          // EOF
                                2'b0,                                                // SOF
                                {(pending_dw_count > 10'h1) ? 32'h00FF : 32'h000F}   // Byte Enable
                              };
           s_axis_rc_tkeep  = (pending_dw_count == 10'h1) ? 2'h1 : 2'h3;
         end      

         RX_NEW  : begin//, RX_NEW : begin
           s_axis_rc_tvalid =  1'b1; 
           if (wr_len == 10'h1) begin
             s_axis_rc_tdata  =  {                                         // Bits
                                    wr_data[31:0],                          // 32
                                    1'b0,                                   // 1
                                    wr_attr,                                // 3
                                    wr_tc,                                  // 3
                                    1'b0,                                   // 1
                                    wr_cid,                                 // 16
                                    wr_tag                                  // 8
                                };                            
             s_axis_rc_tlast  = 1'b1;
             s_axis_rc_tuser  = {40'b0, 1'b1, 2'b0, 32'h00F0};
             s_axis_rc_tkeep  = 2'h3;
           end else begin
             s_axis_rc_tdata  =  wr_data;                               
             s_axis_rc_tlast  = (pending_dw_count <= 10'h2) ? 1'b1 : 1'b0;
             s_axis_rc_tuser  = { 40'b0,
                                {(pending_dw_count > 10'h2) ? 1'b0 : 1'b1},          // EOF
                                2'b0,                                                // SOF
                                {(pending_dw_count > 10'h1) ? 32'h00FF : 32'h000F}   // Byte Enable
                              };
             s_axis_rc_tkeep  = (pending_dw_count == 10'h1) ? 2'h1 : 2'h3;
           end 
         end 
         

         default: begin
           s_axis_rc_tlast  =  1'b0;
           s_axis_rc_tuser  =  75'h0 ;               //Sending byte enable
           s_axis_rc_tkeep  =  2'h0;
           s_axis_rc_tdata  =  64'b0; 
           s_axis_rc_tvalid =  1'b0; 
         end
       endcase
     end
   end
    
 end 
 endgenerate

 generate 
 if (C_AXI_DATA_WIDTH == 128) begin : rc_128

  assign m_axis_rx_tdata_be = {m_axis_rx_tdata[103:96] , m_axis_rx_tdata[111:104], m_axis_rx_tdata[119:112], 
                               m_axis_rx_tdata[127:120], m_axis_rx_tdata[71:64]  , m_axis_rx_tdata[79:72], 
                               m_axis_rx_tdata[87:80]  , m_axis_rx_tdata[95:88]  , m_axis_rx_tdata[39:32],	
                               m_axis_rx_tdata[47:40]  , m_axis_rx_tdata[55:48]  , m_axis_rx_tdata[63:56],
                               m_axis_rx_tdata[7:0]    , m_axis_rx_tdata [15:8]  , m_axis_rx_tdata[23:16], 
                               m_axis_rx_tdata[31:24]};

  always @ ( posedge clk ) 
  begin
    if (user_reset)
    begin
   //   m_axis_rx_tready <= #TCQ 1'b0;
      wr_tc            <= #TCQ 3'b0;
      wr_td            <= #TCQ 1'b0;
      wr_ep            <= #TCQ 1'b0;
      wr_attr          <= #TCQ 3'b0;
      wr_len           <= #TCQ 10'b0;
      wr_rid           <= #TCQ 16'b0;
      wr_cid           <= #TCQ 16'b0;
      wr_tag           <= #TCQ 8'b0;
      wr_be            <= #TCQ 8'b0;
      wr_addr          <= #TCQ 7'b0;
      wr_byte          <= #TCQ 12'b0;      
      wr_compl_status  <= #TCQ 3'b0;
      current_dw_count <= #TCQ 12'b0;
      wr_data          <= #TCQ 128'b0;
      state            <= #TCQ RX_IDLE;
    end else begin

      case (state) 
      
        RX_IDLE : begin
          if (sop) begin
            wr_len           <= #TCQ m_axis_rx_tdata[9:0];
            wr_attr          <= #TCQ {m_axis_rx_tdata[18], m_axis_rx_tdata[13:12]};
            wr_ep            <= #TCQ m_axis_rx_tdata[14];
            wr_td            <= #TCQ m_axis_rx_tdata[15];
            wr_tc            <= #TCQ m_axis_rx_tdata[22:20];
            wr_byte          <= #TCQ m_axis_rx_tdata[43:32];
            wr_compl_status  <= #TCQ m_axis_rx_tdata[47:45];
            wr_cid           <= #TCQ m_axis_rx_tdata[63:48]; 
            wr_addr          <= #TCQ m_axis_rx_tdata[70:64];
            wr_tag           <= #TCQ m_axis_rx_tdata[79:72];
            wr_rid           <= #TCQ m_axis_rx_tdata[95:80];
            wr_data          <= #TCQ {96'b0, m_axis_rx_tdata_be[127:96]};
            current_dw_count <= #TCQ 11'h1;
            if ( s_axis_rc_tready) begin
              state            <= #TCQ ((m_axis_rx_tdata[9:0] == 10'b1) || (m_axis_rx_tdata[47:45] != 3'b0))  ? RX_IDLE : RX_DATA;
            end else begin
              state            <= #TCQ RX_IDLE;
            end
          end else begin
            wr_len           <= #TCQ 10'b0;
            wr_attr          <= #TCQ 3'b0;
            wr_ep            <= #TCQ wr_ep;
            wr_td            <= #TCQ 1'b0;
            wr_tc            <= #TCQ 3'b0;
            wr_byte          <= #TCQ 12'b0;
            wr_compl_status  <= #TCQ 3'b0;
            wr_cid           <= #TCQ 16'b0; 
            wr_addr          <= #TCQ 7'b0;
            wr_tag           <= #TCQ 8'b0;
            wr_rid           <= #TCQ 16'b0;
            wr_data          <= #TCQ 127'b0;
            current_dw_count <= #TCQ current_dw_count;
            state            <= #TCQ RX_IDLE;
          end
        end  

        RX_DATA : begin
          wr_addr          <= #TCQ wr_addr;
          wr_len           <= #TCQ wr_len;
          wr_attr          <= #TCQ wr_attr;
          wr_ep            <= #TCQ wr_ep;
          wr_td            <= #TCQ wr_td;
          wr_tc            <= #TCQ wr_tc;
          wr_byte          <= #TCQ wr_byte;
          wr_compl_status  <= #TCQ wr_compl_status;
          wr_cid           <= #TCQ wr_cid;
          wr_tag           <= #TCQ wr_tag;
          current_dw_count <= #TCQ current_dw_count + 11'h4;
          wr_data          <= #TCQ m_axis_rx_tdata_be;
          state            <= #TCQ ( s_axis_rc_tready) ?  ( (pending_dw_count <= 3'h4) ? RX_IDLE : RX_DATA) : RX_DATA;
        end
      
      endcase 
    end
  end

   always @ (*) 
   begin        
     if (user_reset) begin
       s_axis_rc_tdata      = 64'b0;             
       s_axis_rc_tvalid     = 1'b0;
       s_axis_rc_tkeep      = 8'h0;
       s_axis_rc_tlast      = 2'b0;
       s_axis_rc_tuser      = 4'h0; 
       m_axis_rx_tready     = 1'h1;       
     end else begin
       m_axis_rx_tready     = s_axis_rc_tready;
       case (state)
         
         RX_IDLE: begin
           s_axis_rc_tdata  =  {                                                      // Bits
                                    m_axis_rx_tdata_be[127:96],                       // 32
                                    1'b0,                                             // 1 - Reserved
                                    {m_axis_rx_tdata[18], 
                                     m_axis_rx_tdata[13:12]},                         // 3
                                    m_axis_rx_tdata[22:20],                           // 3
                                    1'b0,                                             // 1 - Reserved
                                    m_axis_rx_tdata[63:48],                           // 16
                                    m_axis_rx_tdata[79:72],                           // 8
                                    m_axis_rx_tdata[95:80],                           // 16
                                    {1'b0},                                           // 1 - Reserved
                                    m_axis_rx_tdata[14],                              // 1 - Poisoned Packet
                                    m_axis_rx_tdata[47:45],                           // 3
                                    {1'b0, m_axis_rx_tdata[9:0]},                     // 11
                                    {1'b0},                                           // 1 - Reserved
                                    ( (m_axis_rx_tdata[43:34] <= 
                                       m_axis_rx_tdata[9:0]) ?
                                    1'b1 : 1'b0 ),                                    // 1 - Request Completed
                                    {1'b0},                                           // 1 - Locked Read Completion
                                    {1'b0, m_axis_rx_tdata[43:32]},                   // 13
                                    (m_axis_rx_tdata[47:45] == 3'b0 ?
                                    4'h0 : 4'h2 )  ,                                  // 4 - Error code
                                    {5'b0, m_axis_rx_tdata[70:64]}                    // 12
                                };
           if (m_axis_rx_tdata[47:45] != 3'b0) begin // Not a successful completion
             s_axis_rc_tkeep  = 4'h7;
             s_axis_rc_tuser  = {40'b0, 1'b1, 2'b1, 32'h0000}; //Setting SOP = 1, EOP = 1
             s_axis_rc_tlast  = 1'b1 ;
           end else begin
             s_axis_rc_tkeep  = 4'hF;
             s_axis_rc_tuser  = ((m_axis_rx_tdata[9:0] == 10'b1)) ? {40'b0, 1'b1, 2'b1, 32'hF000} : {42'b0, 1'b1, 32'hF000}; //Setting SOP = 1
             s_axis_rc_tlast  = (m_axis_rx_tdata[9:0] == 10'b1) ? 1'b1 : 1'b0;
           end
           s_axis_rc_tvalid =  (sop) ? 1'b1 : 1'b0; 
         end

         RX_DATA : begin
           s_axis_rc_tvalid =  1'b1; 
           s_axis_rc_tdata  =  m_axis_rx_tdata_be;                           
           s_axis_rc_tlast  = (pending_dw_count <= 3'h4) ? 1'b1 : 1'b0;
           case (pending_dw_count)
             8'd1 : begin
               s_axis_rc_tuser  = {40'b0, 1'b1, 2'b0, 32'h000F};  // 42-bits, EOF, SOF[1:0], Byte Enable[31:0]
               s_axis_rc_tkeep  = 4'h1; 
             end            
             8'd2 : begin 
               s_axis_rc_tuser  = {40'b0, 1'b1, 2'b0, 32'h00FF};  // 42-bits, EOF, SOF[1:0], Byte Enable[31:0]
               s_axis_rc_tkeep  = 4'h3; 
             end
             8'd3 : begin
               s_axis_rc_tuser  = {40'b0, 1'b1, 2'b0, 32'h0FFF};  // 42-bits, EOF, SOF[1:0], Byte Enable[31:0]
               s_axis_rc_tkeep  = 4'h7; 
             end
             8'd4 : begin
               s_axis_rc_tuser  = {40'b0, 1'b1, 2'b0, 32'hFFFF};  // 42-bits, EOF, SOF[1:0], Byte Enable[31:0]
               s_axis_rc_tkeep  = 4'hF; 
             end
             default : begin
               s_axis_rc_tuser  = {40'b0, 1'b0, 2'b0, 32'hFFFF};  // 42-bits, EOF, SOF[1:0], Byte Enable[31:0]
               s_axis_rc_tkeep  = 4'hF; 
              end
           endcase  
         end                  

         default: begin
           s_axis_rc_tlast  =  1'b0;
           s_axis_rc_tuser  =  75'h0 ;               
           s_axis_rc_tkeep  =  2'h0;
           s_axis_rc_tdata  =  128'b0; 
           s_axis_rc_tvalid =  1'b0; 
         end
       endcase
     end
   end    
      
 end 
 endgenerate

  
endmodule

