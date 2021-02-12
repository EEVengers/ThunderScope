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
// File       : design_1_xdma_0_0_tx_mux.sv
// Version    : 4.1
//-----------------------------------------------------------------------------

//----------------------------------------------------------------------------//
//  File   : <ComponentName>_tx_mux.v                                         //
//  Date   : 10/29/15                                                         //
//  Author : Chris Karman                                                     //
//                                                                            //
//  Description:                                                              //
//  Multiplexing the outgoing AXI packet to the PCIe Hard Block               //
//  from the AXI - REQ, and AXI - TGT interfaces                              //
//                                                                            //
//  Notes:                                                                    //
//  Only 64-bit is supported                                                  //
//                                                                            //
//  Hierarchical:                                                             //
//    pcie2_to_pcie3_wrapper                                                  //
//      axi_stream_intf                                                       //
//        tx_mux                                                              //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

module design_1_xdma_0_0_tx_mux #(
  parameter C_AXI_DATA_WIDTH = 64,                     // RX/TX interface data width
  parameter C_KEEP_WIDTH     = C_AXI_DATA_WIDTH/8,     // TKEEP width
  parameter C_ADDR_ALGN      = 1,                      // specifies alignment mode; 1 = Address Aligned; 0 = Dword Aligned
  parameter TCQ              = 1                       // Clock to Q time

  ) (

  input                         user_clk,
  input                         user_reset,

  //-------------------------------------------------
  // AXI-S TX Interface to PCIe Hard Block
  //-------------------------------------------------
  output reg [C_AXI_DATA_WIDTH-1:0] s_axis_tx_tdata,   // TX data
  output reg                        s_axis_tx_tvalid,  // TX data is valid
  input                             s_axis_tx_tready,  // TX ready for data
  output reg    [C_KEEP_WIDTH-1:0]  s_axis_tx_tkeep,   // TX strobe byte enables
  output reg                        s_axis_tx_tlast,   // TX data is last
  output reg                 [3:0]  s_axis_tx_tuser,   // TX user signals

  //-------------------------------------------------
  // AXI-S TX Interface from DMA REQ
  //-------------------------------------------------
  input  [C_AXI_DATA_WIDTH-1:0] s_axis_tx_req_tdata,   // TX data
  input                         s_axis_tx_req_tvalid,  // TX data is valid
  output wire                   s_axis_tx_req_tready,  // TX ready for data
  input      [C_KEEP_WIDTH-1:0] s_axis_tx_req_tkeep,   // TX strobe byte enables
  input                         s_axis_tx_req_tlast,   // TX data is last
  input                   [3:0] s_axis_tx_req_tuser,   // TX user signals

  //-------------------------------------------------
  // AXI-S TX Interface from Target Bridge
  //-------------------------------------------------
  input  [C_AXI_DATA_WIDTH-1:0] s_axis_tx_tgt_tdata,   // TX data
  input                         s_axis_tx_tgt_tvalid,  // TX data is valid
  output wire                   s_axis_tx_tgt_tready,  // TX ready for data
  input      [C_KEEP_WIDTH-1:0] s_axis_tx_tgt_tkeep,   // TX strobe byte enables
  input                         s_axis_tx_tgt_tlast,   // TX data is last
  input                   [3:0] s_axis_tx_tgt_tuser,   // TX user signals

  //-------------------------------------------------
  // AXI-S TX Interface from CFG Sideband            
  //-------------------------------------------------
  input  [C_AXI_DATA_WIDTH-1:0] s_axis_tx_msix_tdata,  // TX data
  input                         s_axis_tx_msix_tvalid, // TX data is valid
  output wire                   s_axis_tx_msix_tready, // TX ready for data
  input  [C_KEEP_WIDTH-1:0]     s_axis_tx_msix_tkeep,  // TX strobe byte enables
  input                         s_axis_tx_msix_tlast,  // TX data is last
  input  [3:0]                  s_axis_tx_msix_tuser   // TX user signals

);

// Local parameters
localparam        SM_IDLE = 2'b00;
localparam        SM_REQ  = 2'b01;
localparam        SM_TGT  = 2'b10;
localparam        SM_MSIX = 2'b11;

// Wire and Register Declarations
wire              pkt_relax_set;  // Indicates the current packet has Relaxed Ordering bit set.  -- need to decode bits
reg [1:0]         transfer_SM;    // Transfer State Machine


assign  pkt_relax_set = s_axis_tx_tgt_tdata[13];

// Ordering Rules RX Demux will adopt (simplified from the PCIe Specification)
// Further detailed packet ordering will be done at the respective target modules
// MSI-X will follow DMA REQ rule per the table below however will always be prioritized over DMA REQ
// |----------------------------------------------------------------------------------------------------|
// |  Row Pass Column                  | DMA REQ (Posted/Non-Posted)       | Target Bridge (Completion) |
// |----------------------------------------------------------------------------------------------------|
// | DMA REQ       (Posted/Non-Posted) | NO  (will preserve ordering)      |             YES            |
// | Target Bridge (Completion)        | YES (If Relaxed Ordering bit set) |             NO             |
// |----------------------------------------------------------------------------------------------------|

assign s_axis_tx_msix_tready = (transfer_SM == SM_MSIX) ? s_axis_tx_tready : 1'b0;
assign s_axis_tx_req_tready  = (transfer_SM == SM_REQ)  ? s_axis_tx_tready : 1'b0;
assign s_axis_tx_tgt_tready  = (transfer_SM == SM_TGT)  ? s_axis_tx_tready : 1'b0;

always @(posedge user_clk) begin

  if (user_reset) begin
    s_axis_tx_tvalid      <= #TCQ 1'b0;
    transfer_SM           <= #TCQ SM_IDLE;
  end else begin

    case (transfer_SM)
      SM_IDLE: begin

        if (s_axis_tx_tready) begin
          s_axis_tx_tdata       <= #TCQ 'b0;
          s_axis_tx_tvalid      <= #TCQ 1'b0;
          s_axis_tx_tkeep       <= #TCQ 'b0;
          s_axis_tx_tlast       <= #TCQ 1'b0;
          s_axis_tx_tuser       <= #TCQ 'b0;
        end

        if ( (s_axis_tx_req_tvalid || s_axis_tx_msix_tvalid) && s_axis_tx_tgt_tvalid ) begin
          if (pkt_relax_set)
            transfer_SM           <= #TCQ SM_TGT;
          else
            transfer_SM           <= #TCQ s_axis_tx_msix_tvalid ? SM_MSIX : SM_REQ;
        end
        else if (s_axis_tx_req_tvalid || s_axis_tx_msix_tvalid) begin
            transfer_SM           <= #TCQ s_axis_tx_msix_tvalid ? SM_MSIX : SM_REQ;
        end
        else if (s_axis_tx_tgt_tvalid) begin
            transfer_SM           <= #TCQ SM_TGT;
        end

      end

      SM_MSIX: begin

        if (s_axis_tx_tready) begin
          s_axis_tx_tdata       <= #TCQ s_axis_tx_msix_tdata;
          s_axis_tx_tvalid      <= #TCQ s_axis_tx_msix_tvalid;
          s_axis_tx_tkeep       <= #TCQ s_axis_tx_msix_tkeep;
          s_axis_tx_tlast       <= #TCQ s_axis_tx_msix_tlast;
          s_axis_tx_tuser       <= #TCQ s_axis_tx_msix_tuser;
        end

        if (s_axis_tx_msix_tlast && s_axis_tx_msix_tvalid && s_axis_tx_tready) begin
          transfer_SM           <= #TCQ SM_IDLE;
        end

      end

      SM_REQ: begin

        if (s_axis_tx_tready) begin
          s_axis_tx_tdata       <= #TCQ s_axis_tx_req_tdata;
          s_axis_tx_tvalid      <= #TCQ s_axis_tx_req_tvalid;
          s_axis_tx_tkeep       <= #TCQ s_axis_tx_req_tkeep;
          s_axis_tx_tlast       <= #TCQ s_axis_tx_req_tlast;
          s_axis_tx_tuser       <= #TCQ s_axis_tx_req_tuser;
        end

        if (s_axis_tx_req_tlast && s_axis_tx_req_tvalid && s_axis_tx_tready) begin
          transfer_SM           <= #TCQ SM_IDLE;
        end

      end
        
      SM_TGT: begin

        if (s_axis_tx_tready) begin
          s_axis_tx_tdata       <= #TCQ s_axis_tx_tgt_tdata;
          s_axis_tx_tvalid      <= #TCQ s_axis_tx_tgt_tvalid;
          s_axis_tx_tkeep       <= #TCQ s_axis_tx_tgt_tkeep;
          s_axis_tx_tlast       <= #TCQ s_axis_tx_tgt_tlast;
          s_axis_tx_tuser       <= #TCQ s_axis_tx_tgt_tuser;
        end

        if (s_axis_tx_tgt_tlast && s_axis_tx_tgt_tvalid && s_axis_tx_tready) begin
          transfer_SM           <= #TCQ SM_IDLE;
        end

      end

      default: begin
        transfer_SM           <= #TCQ SM_IDLE;
      end
    endcase

  end // reset

end // always

endmodule
