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
// File       : design_1_xdma_0_0_tgt_cpl.sv
// Version    : 4.1
//-----------------------------------------------------------------------------

//----------------------------------------------------------------------------//
//  File   : <ComponentName>_tgt_cpl.v                                        //
//  Date   : 12/04/15                                                         //
//  Author : Vidya Gopalakrishnan                                             //
//                                                                            //
//  Description:                                                              //
//  Generates Gen2 PCIe tx packets                                            //  
//                                                                            //
//  Notes:                                                                    //
//  64-bit and 128-bit are supported. Module can handle only 1DW completion   //
//  for 128-bit interface                                                     //
//                                                                            //
//  Hierarchical:                                                             //
//    pcie2_to_pcie3_wrapper                                                  //
//      axi_stream_intf                                                       //
//        tgt_cpl                                                             //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

module design_1_xdma_0_0_tgt_cpl # (

  parameter C_AXI_DATA_WIDTH       = 64,
  parameter C_KEEP_WIDTH           = C_AXI_DATA_WIDTH/8,
  parameter C_CC_KEEP_WIDTH        = C_AXI_DATA_WIDTH/32,
  parameter C_S_AXIS_CC_USER_WIDTH = 33,
  parameter TCQ                    = 1
  
) (  
  input                                clk,
  input                                user_reset,

  input         [C_AXI_DATA_WIDTH-1:0] m_axis_cc_tdata,   
  input                                m_axis_cc_tvalid,  
  output reg                     [3:0] m_axis_cc_tready,  
  input          [C_CC_KEEP_WIDTH-1:0] m_axis_cc_tkeep,   
  input                                m_axis_cc_tlast,   
  input   [C_S_AXIS_CC_USER_WIDTH-1:0] m_axis_cc_tuser,  

  output reg    [C_AXI_DATA_WIDTH-1:0] s_axis_tx_tdata,
  output reg        [C_KEEP_WIDTH-1:0] s_axis_tx_tkeep,
  output reg                           s_axis_tx_tlast,
  output reg                           s_axis_tx_tvalid,
  input                                s_axis_tx_tready,
  output reg                     [3:0] s_axis_tx_tuser,

  //-------------------------------------------------
  // Completer ID
  //-------------------------------------------------
  input                          [7:0] cfg_bus_number,
  input                          [4:0] cfg_device_number,
  input                          [2:0] cfg_function_number


);

  localparam TX_IDLE       = 3'b0;
  localparam TX_DW0_DW1    = 3'd1;
  localparam TX_DW2        = 3'd2;
  localparam TX_WAIT       = 3'd3;

  reg            compl_signal;
  reg   [9:0]    compl_len;
  reg   [6:0]    compl_addr;
  reg   [1:0]    compl_at;
  reg  [15:0]    compl_rid;
  reg  [15:0]    compl_cid;
  reg   [7:0]    compl_tag;
  reg  [C_AXI_DATA_WIDTH-1:0]    compl_data;
  reg  [11:0]    compl_byte;
  reg   [2:0]    compl_status;
  reg            compl_lck;
  reg            compl_ep;
  reg   [2:0]    compl_tc;
  reg   [2:0]    compl_attr;
  reg            compl_ecrc;
  reg   [2:0]    state;  
  wire           sop;                   // Start of Packet
  reg            in_packet_q;

 // Generate a signal that indicates if we are currently receiving a packet.
 // This value is one clock cycle delayed from what is actually on the AXIS
 // data bus.
  always @(posedge clk)
  begin
    if(user_reset)
      in_packet_q <= #   TCQ 1'b0;
    else if (m_axis_cc_tvalid && s_axis_tx_tready && m_axis_cc_tlast)
      in_packet_q <= #   TCQ 1'b0;
    else if (sop && s_axis_tx_tready)
      in_packet_q <= #   TCQ 1'b1;
  end

  assign sop = !in_packet_q && m_axis_cc_tvalid;

generate
if (C_AXI_DATA_WIDTH == 64) begin : tx_64 
  always @ ( posedge clk ) 
  begin
    if (user_reset)
    begin
      compl_addr         <= #TCQ 7'b0;
      compl_at           <= #TCQ 2'b0;
      compl_byte         <= #TCQ 12'b0;
      compl_len          <= #TCQ 11'b0;
      compl_status       <= #TCQ 3'b0; 
      compl_ep           <= #TCQ 1'b0;
      compl_rid          <= #TCQ 16'b0;
      compl_tag          <= #TCQ 8'b0;
      compl_cid          <= #TCQ 16'b0;
      compl_tc           <= #TCQ 3'b0;
      compl_attr         <= #TCQ 3'b0;
      compl_ecrc         <= #TCQ 1'b0;
      compl_data         <= #TCQ 64'b0;
      state              <= #TCQ TX_IDLE;
    end else begin
      
      case (state) 
 
        TX_IDLE : begin
          compl_tag          <= #TCQ compl_tag;
          compl_cid          <= #TCQ compl_cid;
          compl_data         <= #TCQ compl_data;
          if (sop) begin
            compl_addr         <= #TCQ m_axis_cc_tdata[6:0];
            compl_at           <= #TCQ m_axis_cc_tdata[9:8];   
            compl_byte         <= #TCQ m_axis_cc_tdata[27:16];   
            compl_len          <= #TCQ m_axis_cc_tdata[41:32];
            compl_status       <= #TCQ m_axis_cc_tdata[45:43];   
            compl_ep           <= #TCQ m_axis_cc_tdata[46];   
            compl_rid          <= #TCQ m_axis_cc_tdata[63:48]; 
            state              <= #TCQ TX_DW0_DW1;
          end
        end

        TX_DW0_DW1 : begin
          compl_addr         <= #TCQ compl_addr;
          compl_at           <= #TCQ compl_at;   
          compl_byte         <= #TCQ compl_byte;   
          compl_len          <= #TCQ compl_len;
          compl_status       <= #TCQ compl_status;   
          compl_ep           <= #TCQ compl_ep;   
          compl_rid          <= #TCQ compl_rid; 
          compl_tag          <= #TCQ m_axis_cc_tdata[7:0];
          compl_cid          <= #TCQ m_axis_cc_tdata[23:8]; 
          compl_tc           <= #TCQ m_axis_cc_tdata[27:25]; 
          compl_attr         <= #TCQ m_axis_cc_tdata[30:28]; 
          compl_ecrc         <= #TCQ m_axis_cc_tdata[31]; 
          compl_data         <= #TCQ compl_data;
          state              <= #TCQ (s_axis_tx_tready) ? TX_DW2 : TX_DW0_DW1;
        end
 
        TX_DW2 : begin
          compl_addr         <= #TCQ compl_addr;
          compl_at           <= #TCQ compl_at;   
          compl_byte         <= #TCQ compl_byte;   
          compl_len          <= #TCQ compl_len;
          compl_status       <= #TCQ compl_status;   
          compl_ep           <= #TCQ compl_ep;   
          compl_rid          <= #TCQ compl_rid; 
          compl_tag          <= #TCQ compl_tag;
          compl_cid          <= #TCQ compl_cid; 
          compl_tc           <= #TCQ compl_tc; 
          compl_attr         <= #TCQ compl_attr; 
          compl_ecrc         <= #TCQ compl_ecrc;
          compl_data         <= #TCQ (compl_addr[2]) ?  {32'b0, m_axis_cc_tdata[63:32]} : m_axis_cc_tdata[63:0];
          state              <= #TCQ (s_axis_tx_tready) ? ( (m_axis_cc_tvalid && m_axis_cc_tlast) ? TX_IDLE : TX_WAIT ) :
                                                          TX_DW2;
        end

        TX_WAIT : begin
          compl_addr         <= #TCQ compl_addr;
          compl_at           <= #TCQ compl_at;   
          compl_byte         <= #TCQ compl_byte;   
          compl_len          <= #TCQ compl_len;
          compl_status       <= #TCQ compl_status;   
          compl_ep           <= #TCQ compl_ep;   
          compl_rid          <= #TCQ compl_rid; 
          compl_tag          <= #TCQ compl_tag;
          compl_cid          <= #TCQ compl_cid; 
          compl_tc           <= #TCQ compl_tc; 
          compl_attr         <= #TCQ compl_attr; 
          compl_ecrc         <= #TCQ compl_ecrc;
          compl_data         <= #TCQ  m_axis_cc_tdata[63:0];
          state              <= #TCQ (s_axis_tx_tready && m_axis_cc_tvalid && m_axis_cc_tlast) ? TX_IDLE : TX_WAIT;
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
      m_axis_cc_tready = 4'hF;       
    end else begin
       
      case (state)

        TX_DW0_DW1 : begin
          s_axis_tx_tdata  = {
                               {m_axis_cc_tdata[24] ? m_axis_cc_tdata[23:8] :
                                                     {cfg_bus_number, cfg_device_number, cfg_function_number}}, //Completer ID
                               compl_status,
                               1'b0,                                      //BCM
                               compl_byte,
                               1'b0,                                      //Reserved                    
                               2'h2,                                      //CplD fmt
                               5'hA,                                      //CplD type
                               1'b0,
                               m_axis_cc_tdata[27:25],                    //TC
                               1'b0,                                      //Reserved
                               m_axis_cc_tdata[30] ,                      //ID Based Ordering
                               1'b0,                                      //Reserved
                               1'b0,                                      //TPH
                               1'b0,                                      //TD
                               compl_ep,
                               m_axis_cc_tdata[29:28],                    //compl_attr
                               compl_at, 
                               compl_len
                             }; 
          m_axis_cc_tready = {4{s_axis_tx_tready}};
          s_axis_tx_tvalid = 1'b1;
          s_axis_tx_tkeep  = 8'hFF;
          s_axis_tx_tlast  = 2'b0;
          s_axis_tx_tuser  = 4'h0; 
        end
            
        TX_DW2 : begin
          s_axis_tx_tdata  = {
                               (compl_addr[2]) ? {m_axis_cc_tdata[39:32], m_axis_cc_tdata[47:40], m_axis_cc_tdata[55:48],m_axis_cc_tdata[63:56]} : {m_axis_cc_tdata[7:0],
                                m_axis_cc_tdata[15:8], m_axis_cc_tdata[23:16], m_axis_cc_tdata[31:24] },
                               compl_rid,
                               compl_tag,
                               1'b0,
                               compl_addr
                             };
          m_axis_cc_tready = {4{s_axis_tx_tready}};
          s_axis_tx_tvalid = 1'b1;
          s_axis_tx_tkeep  = (compl_status != 3'b0) ? 8'h3F : 8'hFF;
          s_axis_tx_tlast  = m_axis_cc_tlast;
          s_axis_tx_tuser  = 4'h0;
        end
        
        TX_WAIT : begin
          s_axis_tx_tdata  = {
                               (compl_addr[2]) ? { m_axis_cc_tdata[39:32], m_axis_cc_tdata[47:40], m_axis_cc_tdata[55:48],m_axis_cc_tdata[63:56] , m_axis_cc_tdata[7:0],
                                m_axis_cc_tdata[15:8], m_axis_cc_tdata[23:16], m_axis_cc_tdata[31:24]  } : {m_axis_cc_tdata[7:0], m_axis_cc_tdata[15:8], m_axis_cc_tdata[23:16],
                                m_axis_cc_tdata[31:24] , compl_data[39:32], compl_data[47:40], compl_data[55:48], compl_data[63:56]}
                             };
          m_axis_cc_tready = {4{s_axis_tx_tready}};
          s_axis_tx_tvalid = 1'b1;
          s_axis_tx_tkeep  = 8'hFF;
          s_axis_tx_tlast  = m_axis_cc_tlast;
          s_axis_tx_tuser  = 4'h0;
        end
          
        default: begin
          s_axis_tx_tdata  = 64'b0;                             
          s_axis_tx_tvalid = 1'b0;
          s_axis_tx_tkeep  = 8'h0;
          s_axis_tx_tlast  = 2'b0;
          s_axis_tx_tuser  = 4'h0;
          m_axis_cc_tready = 4'hF;
        end
      endcase 
    end
  end 
end
endgenerate
generate
if (C_AXI_DATA_WIDTH == 128) begin : tx_128 

 always @ ( posedge clk ) 
  begin
    if (user_reset )
    begin
      compl_addr         <= #TCQ 7'b0;
      compl_at           <= #TCQ 2'b0;
      compl_byte         <= #TCQ 12'b0;
      compl_len          <= #TCQ 11'b0;
      compl_status       <= #TCQ 3'b0; 
      compl_ep           <= #TCQ 1'b0;
      compl_rid          <= #TCQ 16'b0;
      compl_tag          <= #TCQ 8'b0;
      compl_cid          <= #TCQ 16'b0;
      compl_tc           <= #TCQ 3'b0;
      compl_attr         <= #TCQ 3'b0;
      compl_ecrc         <= #TCQ 1'b0;
      compl_data         <= #TCQ 128'b0;
      state              <= #TCQ TX_IDLE;
    end else begin
      
      case (state) 
 
        TX_IDLE : begin
          compl_tag          <= #TCQ compl_tag;
          compl_cid          <= #TCQ compl_cid;
          if (sop) begin
            compl_addr         <= #TCQ m_axis_cc_tdata[6:0];
            compl_at           <= #TCQ m_axis_cc_tdata[9:8];   
            compl_byte         <= #TCQ m_axis_cc_tdata[27:16];   
            compl_len          <= #TCQ m_axis_cc_tdata[41:32];
            compl_status       <= #TCQ m_axis_cc_tdata[45:43];   
            compl_ep           <= #TCQ m_axis_cc_tdata[46];   
            compl_rid          <= #TCQ m_axis_cc_tdata[63:48];
            compl_tag          <= #TCQ m_axis_cc_tdata[71:64];
            compl_cid          <= #TCQ m_axis_cc_tdata[87:72]; 
            compl_tc           <= #TCQ m_axis_cc_tdata[91:89]; 
            compl_attr         <= #TCQ m_axis_cc_tdata[94:92]; 
            compl_ecrc         <= #TCQ m_axis_cc_tdata[95]; 
            state              <= #TCQ TX_DW0_DW1;
          end
        end

        TX_DW0_DW1 : begin
          compl_addr         <= #TCQ compl_addr;
          compl_at           <= #TCQ compl_at;   
          compl_byte         <= #TCQ compl_byte;   
          compl_len          <= #TCQ compl_len;
          compl_status       <= #TCQ compl_status;   
          compl_ep           <= #TCQ compl_ep;   
          compl_rid          <= #TCQ compl_rid; 
          compl_tag          <= #TCQ compl_tag;
          compl_cid          <= #TCQ compl_cid; 
          compl_tc           <= #TCQ compl_tc; 
          compl_attr         <= #TCQ compl_attr; 
          compl_ecrc         <= #TCQ compl_ecrc;
          compl_data         <= #TCQ m_axis_cc_tdata;
          state              <= #TCQ (s_axis_tx_tready) ? ( (m_axis_cc_tvalid && m_axis_cc_tlast) ? TX_IDLE : TX_WAIT ) :
                                                          TX_DW0_DW1;
        end

        TX_WAIT : begin
          state              <= #TCQ TX_IDLE;
        end

      endcase
    end
  end 


  always @ (*) 
  begin   

    if (user_reset ) begin
      s_axis_tx_tdata  = 128'b0;             
      s_axis_tx_tvalid = 1'b0;
      s_axis_tx_tkeep  = 16'h0;
      s_axis_tx_tlast  = 1'b0;
      s_axis_tx_tuser  = 4'h0; 
      m_axis_cc_tready = 4'hF;       
    end else begin
       
      case (state)

        TX_DW0_DW1 : begin
          s_axis_tx_tdata  = {
                               compl_data_tx(compl_addr[3:2]),
                               compl_rid,
                               compl_tag,
                               1'b0,
                               compl_addr,           
                               {m_axis_cc_tdata[88] ? compl_cid : 
                                                     {cfg_bus_number, cfg_device_number,  cfg_function_number}},   //Completer ID
                               compl_status,
                               1'b0,                                      //BCM
                               compl_byte,
                               1'b0,                                      //Reserved                    
                               2'h2,                                      //CplD fmt
                               5'hA,                                      //CplD type
                               1'b0,
                               compl_tc,                                  //TC
                               1'b0,                                      //Reserved
                               compl_attr[2] ,                            //ID Based Ordering
                               1'b0,                                      //Reserved
                               1'b0,                                      //TPH
                               1'b0,                                      //TD                               
                               compl_ep,
                               compl_attr[1:0],                           //compl_attr
                               compl_at, 
                               compl_len
                             }; 
          m_axis_cc_tready = {4{s_axis_tx_tready}};
          s_axis_tx_tvalid = 1'b1;
          s_axis_tx_tkeep  = (compl_status != 3'b0) ?  16'h3FFF : 16'hFFFF;
          s_axis_tx_tlast  = m_axis_cc_tlast;
          s_axis_tx_tuser  = 4'h0; 
        end     

        TX_WAIT : begin
          s_axis_tx_tdata  = {compl_data_tx(compl_addr[3:2]), m_axis_cc_tdata[95:0] };                             
          s_axis_tx_tvalid = 1'b1;
          s_axis_tx_tkeep  = { {4{m_axis_cc_tkeep[3]}}, {4{m_axis_cc_tkeep[2]}}, {4{m_axis_cc_tkeep[1]}}, {4{m_axis_cc_tkeep[0]}} };
          s_axis_tx_tlast  = 1'b1;
          s_axis_tx_tuser  = 4'h0;
          m_axis_cc_tready = {4{s_axis_tx_tready}};
        end

        default: begin
          s_axis_tx_tdata  = 128'b0;                             
          s_axis_tx_tvalid = 1'b0;
          s_axis_tx_tkeep  = 16'h0;
          s_axis_tx_tlast  = 1'b0;
          s_axis_tx_tuser  = 4'h0;
          m_axis_cc_tready = 4'hF;
        end

      endcase 
    end
  end 

  //Function to calculate completion data  
  function [31:0] compl_data_tx;
    input [1:0] compl_addr;
  begin
    case (compl_addr)
      2'd0 : 
        compl_data_tx = {m_axis_cc_tdata[7:0], m_axis_cc_tdata[15:8], m_axis_cc_tdata[23:16], m_axis_cc_tdata[31:24]};
      2'd1 :
        compl_data_tx = { m_axis_cc_tdata[39:32], m_axis_cc_tdata[47:40], m_axis_cc_tdata[55:48],m_axis_cc_tdata[63:56]};
      2'd2 :
        compl_data_tx = {m_axis_cc_tdata[71:64], m_axis_cc_tdata[79:72], m_axis_cc_tdata[87:80], m_axis_cc_tdata[95:88]};
      2'd3 : 
        compl_data_tx = {m_axis_cc_tdata[103:96], m_axis_cc_tdata[111:104], m_axis_cc_tdata[119:112], m_axis_cc_tdata[127:120]};
    endcase  
  end
  endfunction

end
endgenerate

endmodule      
       

         


          
       

         
