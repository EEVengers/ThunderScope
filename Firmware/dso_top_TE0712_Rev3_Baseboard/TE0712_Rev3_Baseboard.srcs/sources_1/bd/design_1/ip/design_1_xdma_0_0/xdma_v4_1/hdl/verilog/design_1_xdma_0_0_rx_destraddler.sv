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
// File       : design_1_xdma_0_0_rx_destraddler.sv
// Version    : 4.1
//-----------------------------------------------------------------------------

//----------------------------------------------------------------------------//
//  File   : <ComponentName>_rx_destraddler.v                                 //
//  Date   : 10/29/15                                                         //
//  Author : Chris Karman                                                     //
//                                                                            //
//  Description:                                                              //
//  Destraddle received AXI packet from the PCIe Hard Block                   //
//                                                                            //
//  Notes:                                                                    //
//  Only active in 128-bit mode                                               //
//  rx_tlast and rx_tkeep are re-enabled in 128-bit even for regular packet   //
//  therefore one can use either rx_tlast/rx_tkeep combo or rx_tuser only     //
//                                                                            //
//  Hierarchical:                                                             //
//    pcie2_to_pcie3_wrapper                                                  //
//      axi_stream_intf                                                       //
//        rx_demux                                                            //
//          rx_destraddler                                                    //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

module design_1_xdma_0_0_rx_destraddler #(
  parameter C_AXI_DATA_WIDTH = 64,                     // RX/TX interface data width
  parameter C_KEEP_WIDTH     = C_AXI_DATA_WIDTH/8,     // TKEEP width
  parameter TCQ              = 1                       // Clock to Q time

  ) (

  input                         user_clk,
  input                         user_reset,

  //-------------------------------------------------
  // AXI-S RX Interface from PCIe Hard Block
  //-------------------------------------------------
  input  [C_AXI_DATA_WIDTH-1:0] s_axis_rx_tdata,       // RX data
  input                         s_axis_rx_tvalid,      // RX data is valid
  output reg                    s_axis_rx_tready,      // RX ready for data
  input      [C_KEEP_WIDTH-1:0] s_axis_rx_tkeep,       // RX strobe byte enables
  input                         s_axis_rx_tlast,       // RX data is last
  input                  [21:0] s_axis_rx_tuser,       // RX user signals

  //-------------------------------------------------
  // AXI-S RX Interface to RX Demux
  //-------------------------------------------------
  output reg [C_AXI_DATA_WIDTH-1:0] m_axis_rx_tdata,       // RX data
  output reg                        m_axis_rx_tvalid,      // RX data is valid
  input                             m_axis_rx_tready,      // RX ready for data
  output reg    [C_KEEP_WIDTH-1:0]  m_axis_rx_tkeep,       // RX strobe byte enables
  output reg                        m_axis_rx_tlast,       // RX data is last
  output reg                [21:0]  m_axis_rx_tuser        // RX user signals

);

generate
if(C_AXI_DATA_WIDTH == 128) begin : data_width_128

  // Local parameters

  localparam NORMAL_PACKET    = 2'b00;
  localparam STRADDLED_PACKET = 2'b01;
  localparam THROTTLE_TLP     = 2'b10;

  // Wire and Register Declarations

  reg [1:0]  state;
  reg [63:0] prev_data_half;
  reg [7:0]  prev_keep_half;
  reg [21:0] prev_user_half;


  always @(posedge user_clk) begin

    if (user_reset) begin

      state <= #TCQ NORMAL_PACKET;

    end else begin

      if (m_axis_rx_tready) begin

        // Store higher DWs in case it's straddled packet
        prev_data_half <= #TCQ s_axis_rx_tdata[127:64];
        prev_keep_half <= #TCQ s_axis_rx_tkeep[15:8];
        prev_user_half <= #TCQ s_axis_rx_tuser;

        case (state)

        NORMAL_PACKET: begin

          if (s_axis_rx_tuser[14] && s_axis_rx_tuser[13]) begin // SOF && Start @ DW2/3

            state           <= #TCQ STRADDLED_PACKET;

          end

        end // NORMAL_PACKET

        STRADDLED_PACKET: begin

          if (s_axis_rx_tuser[21] && !s_axis_rx_tuser[14]) begin // EOF && !SOF

            if (s_axis_rx_tuser[20]) begin          // EOF @ DW2/3
              state           <= #TCQ THROTTLE_TLP;
            end else begin                          // EOF @ DW0/1
              state           <= #TCQ NORMAL_PACKET;
            end

          end // EOF && !SOF

          // Note for all possible conditions in this state:
          // else if EOF && SOF  : SOF can only start @ DW2/3, so EOF can only be @ DW0/1. Stay in this state
          // else if !EOF && SOF : Will never have SOF only in this state. Stay in this state
          // else if !EOF && !SOF: No change. Stay in this state

        end // STRADDLED_PACKET

        THROTTLE_TLP: begin

          state <= #TCQ NORMAL_PACKET;

        end // THROTTLE_TLP

        default: begin

          state <= #TCQ NORMAL_PACKET;

        end // default

        endcase

      end // s_axis_rx_tready
    end // reset
  end // always

  always @(*) begin

      case (state)

      NORMAL_PACKET: begin

        m_axis_rx_tdata  = s_axis_rx_tdata;
        m_axis_rx_tvalid = s_axis_rx_tvalid;
        s_axis_rx_tready = m_axis_rx_tready;
        m_axis_rx_tkeep  =   (s_axis_rx_tuser[20:19] == 2'b00) ? 16'h000F :
                           ( (s_axis_rx_tuser[20:19] == 2'b01) ? 16'h00FF :
                           ( (s_axis_rx_tuser[20:19] == 2'b10) ? 16'h0FFF :
                                                                 16'hFFFF ));

        m_axis_rx_tlast  = s_axis_rx_tuser[21];

        // If EOF or (EOF and SOF), zero out SOF field. If SOF, the EOF field is already zero in this state
        m_axis_rx_tuser  = s_axis_rx_tuser[21] ? ( {s_axis_rx_tuser[21:15], 5'b0, s_axis_rx_tuser[9:0]} ) :
                                                 ( s_axis_rx_tuser                                      ) ;

      end

      STRADDLED_PACKET: begin

        m_axis_rx_tdata  = {s_axis_rx_tdata[63:0], prev_data_half};
        m_axis_rx_tvalid = s_axis_rx_tvalid;
        s_axis_rx_tready = m_axis_rx_tready;

        m_axis_rx_tkeep  = { ((s_axis_rx_tuser[20:19] == 2'b00) ? 8'h0F : 8'hFF),
                             8'hFF
                           };

      //  m_axis_rx_tlast  = (s_axis_rx_tuser[21] && s_axis_rx_tuser[20]) ? 1'b0 : 1'b1;
         m_axis_rx_tlast  = s_axis_rx_tuser[20] ? 1'b0 : 1'b1;

        // If SOF seen previously, zero out EOF. If EOF or (EOF and SOF) currently, zero out SOF field.
        m_axis_rx_tuser  = prev_user_half[14] ? {5'b0, prev_user_half[16:0]} :
                                                ( s_axis_rx_tuser[21] ? ( {s_axis_rx_tuser[21:15], 5'b0, s_axis_rx_tuser[9:0]} ) :
                                                                        ( s_axis_rx_tuser                                      )
                                                );

      end

      THROTTLE_TLP: begin

        m_axis_rx_tdata  = {64'h0, prev_data_half};
        m_axis_rx_tvalid = 1'b1;
        s_axis_rx_tready = 1'b0;

        m_axis_rx_tkeep  = { 8'h0, 
                             ((prev_user_half[20:19] == 2'b10) ? 8'h0F : 8'hFF)
                           };

        m_axis_rx_tlast  = 1'b1;
        m_axis_rx_tuser  = {prev_user_half[21:15], 5'b0, prev_user_half[9:0]}; // Zero out SOF field

      end

      default: begin

        m_axis_rx_tdata  = s_axis_rx_tdata;
        m_axis_rx_tvalid = s_axis_rx_tvalid;
        s_axis_rx_tready = m_axis_rx_tready;
        m_axis_rx_tkeep  = s_axis_rx_tkeep;
        m_axis_rx_tlast  = s_axis_rx_tuser[21];
        m_axis_rx_tuser  = s_axis_rx_tuser;

      end

      endcase

  end // always

end // data_width_128
else begin: data_width_64

  // No straddling in 64-bit mode. Pass through all signals as is
  always @(*) begin

    m_axis_rx_tdata  = s_axis_rx_tdata;
    m_axis_rx_tvalid = s_axis_rx_tvalid;
    s_axis_rx_tready = m_axis_rx_tready;
    m_axis_rx_tkeep  = s_axis_rx_tkeep;
    m_axis_rx_tlast  = s_axis_rx_tlast;
    m_axis_rx_tuser  = s_axis_rx_tuser;

  end // always

end // data_width_64
endgenerate

endmodule
