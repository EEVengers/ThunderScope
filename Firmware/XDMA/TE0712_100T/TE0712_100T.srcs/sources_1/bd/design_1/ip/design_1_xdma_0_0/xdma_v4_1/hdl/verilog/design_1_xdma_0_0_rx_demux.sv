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
// File       : design_1_xdma_0_0_rx_demux.sv
// Version    : 4.1
//-----------------------------------------------------------------------------

//----------------------------------------------------------------------------//
//  File   : <ComponentName>_rx_demux.v                                       //
//  Date   : 10/29/15                                                         //
//  Author : Chris Karman                                                     //
//                                                                            //
//  Description:                                                              //
//  Demultiplexing the received AXI packet from the PCIe Hard Block           //
//  onto the AXI - CPL, and AXI - TGT interfaces                              //
//                                                                            //
//  Notes:                                                                    //
//  RX De-straddler module is required for 128-bit operation                  //
//  Using rx_tkeep/rx_tlast combo provided by de-straddler module             //
//                                                                            //
//  Hierarchical:                                                             //
//    pcie2_to_pcie3_wrapper                                                  //
//      axi_stream_intf                                                       //
//        rx_demux                                                            //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

module design_1_xdma_0_0_rx_demux #(
  parameter C_AXI_DATA_WIDTH = 64,                     // RX/TX interface data width
  parameter C_KEEP_WIDTH     = C_AXI_DATA_WIDTH/8,     // TKEEP width
  parameter C_ADDR_ALGN      = 1,                      // specifies alignment mode; 1 = Address Aligned; 0 = Dword Aligned
  parameter TCQ              = 1                       // Clock to Q time

  ) (

  input                         user_clk,
  input                         user_reset,

  //-------------------------------------------------
  // AXI-S RX Interface from PCIe Hard Block
  //-------------------------------------------------
  input  [C_AXI_DATA_WIDTH-1:0] m_axis_rx_tdata,       // RX data
  input                         m_axis_rx_tvalid,      // RX data is valid
  output                        m_axis_rx_tready,      // RX ready for data
  input      [C_KEEP_WIDTH-1:0] m_axis_rx_tkeep,       // RX strobe byte enables
  input                         m_axis_rx_tlast,       // RX data is last
  input                  [21:0] m_axis_rx_tuser,       // RX user signals

  output                        rx_np_ok,              // RX OK to receive Non-Posted packet

  //-------------------------------------------------
  // AXI-S RX Interface to DMA CPL
  //-------------------------------------------------
  output [C_AXI_DATA_WIDTH-1:0] m_axis_rx_cpl_tdata,   // RX data
  output                        m_axis_rx_cpl_tvalid,  // RX data is valid
  input                         m_axis_rx_cpl_tready,  // RX ready for data
  output     [C_KEEP_WIDTH-1:0] m_axis_rx_cpl_tkeep,   // RX strobe byte enables
  output                        m_axis_rx_cpl_tlast,   // RX data is last
  output                 [21:0] m_axis_rx_cpl_tuser,   // RX user signals

  //-------------------------------------------------
  // AXI-S RX Interface to Target Bridge
  //-------------------------------------------------
  output [C_AXI_DATA_WIDTH-1:0] m_axis_rx_tgt_tdata,   // RX data
  output                        m_axis_rx_tgt_tvalid,  // RX data is valid
  input                         m_axis_rx_tgt_tready,  // RX ready for data
  output     [C_KEEP_WIDTH-1:0] m_axis_rx_tgt_tkeep,   // RX strobe byte enables
  output                        m_axis_rx_tgt_tlast,   // RX data is last
  output                 [21:0] m_axis_rx_tgt_tuser    // RX user signals


);

// Local parameters
localparam FIFO_SAFE_FREE_SPACE_LIMIT = 3; // This parameter is set in the FIFO  


// Wire and Register Declarations
wire              sop;            // Indicates Start of Packet
wire [1 : 0]      pkt_fmt;        // Packet Format
wire [4 : 0]      pkt_type;       // Packet Type
wire [63: 0]      pkt_addr;       // Packet Address
reg               active_intfc;   // Indicates the current active interface -- 0 = Target Bridge; 1 = DMA CPL
reg               in_pkt;         // Indicates in the middle of a packet transfer (SOF but no EOF)

// DMA_CPL FIFO
reg                           cplfifo_s_axis_tvalid;
wire                          cplfifo_s_axis_tready;
reg [C_AXI_DATA_WIDTH-1:0]    cplfifo_s_axis_tdata;
reg     [C_KEEP_WIDTH-1:0]    cplfifo_s_axis_tkeep;
reg                           cplfifo_s_axis_tlast;
reg                 [21:0]    cplfifo_s_axis_tuser;
wire                          cplfifo_almost_full;

// Target Bridge FIFO
reg                           tgtfifo_s_axis_tvalid;
wire                          tgtfifo_s_axis_tready;
reg [C_AXI_DATA_WIDTH-1:0]    tgtfifo_s_axis_tdata;
reg     [C_KEEP_WIDTH-1:0]    tgtfifo_s_axis_tkeep;
reg                           tgtfifo_s_axis_tlast;
reg                 [21:0]    tgtfifo_s_axis_tuser;
wire                          tgtfifo_almost_full;

// De-straddler
wire [C_AXI_DATA_WIDTH-1:0]   m_axis_rx_tdata_int;
wire                          m_axis_rx_tvalid_int;
wire                          m_axis_rx_tready_int;
wire     [C_KEEP_WIDTH-1:0]   m_axis_rx_tkeep_int;
wire                          m_axis_rx_tlast_int;
wire                 [21:0]   m_axis_rx_tuser_int;


// Ordering Rules RX Demux will adopt (simplified from the PCIe Specification)
// Further detailed packet ordering will be done at the respective target modules
// |----------------------------------------------------------------------------------------------|
// |  Row Pass Column                  | Target Bridge (Posted/Non-Posted) | DMA CPL (Completion) |
// |----------------------------------------------------------------------------------------------|
// | Target Bridge (Posted/Non-Posted) | NO  (will preserve ordering)      |          YES         |
// | DMA CPL       (Completion)        | YES (If Relaxed Ordering bit set) |          NO          |
// |----------------------------------------------------------------------------------------------|

// FMT[1:0]
// 00 3DW header, no data
// 01 4DW header, no data
// 10 3DW header, with data
// 11 4DW header, with data

// TYPE[4:0]
// 0_0000 Memory Read Request (MRd)
// 0_0001 Memory Read Lock Request (MRdLk)
// 0_0000 Memory Write Request (MWr)
// 0_0010 IO Read Request (IORd)
// 0_0010 IO Write Request (IOWr)
// 0_0100 Config Type 0 Read Request (CfgRd0)
// 0_0100 Config Type 0 Write Request (CfgWr0)
// 0_0101 Config Type 1 Read Request (CfgRd1)
// 0_0101 Config Type 1 Write Request (CfgWr1)
// 1_0rrr Message Request (Msg)
// 1_0rrr Message Request W/Data (MsgD)
// 0_1010 Completion (Cpl)
// 0_1010 Completion W/Data (CplD)
// 0_1011 Completion-Locked (CplLk)
// 0_1011 Completion-Locked W/Data (CplDLk)




assign sop            = m_axis_rx_tuser_int[14];    // Only used in 128 bit mode
assign pkt_fmt        = m_axis_rx_tdata_int[30:29]; // get the packet format of a new packet
assign pkt_type       = m_axis_rx_tdata_int[28:24]; // get the packet type of a new packet
assign pkt_addr       = (C_AXI_DATA_WIDTH == 128) ? ((m_axis_rx_tdata_int[29]) ? {m_axis_rx_tdata_int[95:64], m_axis_rx_tdata_int[127:96]} : {32'b0, m_axis_rx_tdata_int[95:64]})
                        : 64'h0; // Only used in 128 bit mode

// Only accept new packet if both FIFOs are ready because it doesn't know what's coming
assign m_axis_rx_tready_int = (!in_pkt) ? ( cplfifo_s_axis_tready && tgtfifo_s_axis_tready ) :
                                          ( (active_intfc == 1'b1) ? cplfifo_s_axis_tready :
                                                                     tgtfifo_s_axis_tready ) ;

always @(posedge user_clk) begin

  if (user_reset) begin
    active_intfc          <= #TCQ 1'b0;
    in_pkt                <= #TCQ 1'b0;
    cplfifo_s_axis_tvalid <= #TCQ 1'b0;
    tgtfifo_s_axis_tvalid <= #TCQ 1'b0;
  end else begin

    if (cplfifo_s_axis_tready) begin
      cplfifo_s_axis_tvalid <= #TCQ 1'b0;

      // Pass on other signals
      cplfifo_s_axis_tdata  <= #TCQ m_axis_rx_tdata_int;
      cplfifo_s_axis_tkeep  <= #TCQ m_axis_rx_tkeep_int;
      cplfifo_s_axis_tlast  <= #TCQ m_axis_rx_tlast_int;
      cplfifo_s_axis_tuser  <= #TCQ m_axis_rx_tuser_int;

    end
    if (tgtfifo_s_axis_tready) begin
      tgtfifo_s_axis_tvalid <= #TCQ 1'b0;

      // Pass on other signals
      tgtfifo_s_axis_tdata  <= #TCQ m_axis_rx_tdata_int;
      tgtfifo_s_axis_tkeep  <= #TCQ m_axis_rx_tkeep_int;
      tgtfifo_s_axis_tlast  <= #TCQ m_axis_rx_tlast_int;
      tgtfifo_s_axis_tuser  <= #TCQ m_axis_rx_tuser_int;
    end

    if (m_axis_rx_tvalid_int && m_axis_rx_tready_int) begin

      if (!in_pkt) begin // Start of Packet

        if((pkt_type[4:2] == 3'b010)) begin // Completion packet
          cplfifo_s_axis_tvalid <= #TCQ 1'b1;
          tgtfifo_s_axis_tvalid <= #TCQ 1'b0;
          active_intfc          <= #TCQ 1'b1;
        end else begin // Non-Completion packet
          cplfifo_s_axis_tvalid <= #TCQ 1'b0;
          tgtfifo_s_axis_tvalid <= #TCQ 1'b1;
          active_intfc          <= #TCQ 1'b0;
        end // Pkt type

        if (m_axis_rx_tlast_int == 1'b1) // Only needed for 128-bit
          in_pkt                <= #TCQ 1'b0;
        else
          in_pkt                <= #TCQ 1'b1;

      end else begin

        if (active_intfc == 1'b1) begin
          cplfifo_s_axis_tvalid <= #TCQ 1'b1;
          tgtfifo_s_axis_tvalid <= #TCQ 1'b0;
        end else begin
          cplfifo_s_axis_tvalid <= #TCQ 1'b0;
          tgtfifo_s_axis_tvalid <= #TCQ 1'b1;
        end

        if (m_axis_rx_tlast_int == 1'b1)
          in_pkt                <= #TCQ 1'b0;

      end // in_pkt

    end // valid & ready

  end // reset

end // always

// Throttle Non-Posted packet when target fifo is full
//assign rx_np_ok = ~tgtfifo_almost_full;

assign rx_np_ok = 0;


// FIFO Instantiation
// DMA_CPL FIFO (64x128bits -- 8 CPLDs @ 512B MRRS 64B RCB / 2x 36K BRAMs)
pcie2_fifo_generator_dma_cpl dma_cpl_fifo_inst(
  // Global
  .s_aclk          ( user_clk              ),
  .s_aresetn       ( ~user_reset           ),

  // Input Interface
  .s_axis_tvalid   ( cplfifo_s_axis_tvalid ),
  .s_axis_tready   ( cplfifo_s_axis_tready ),
  .s_axis_tdata    ( cplfifo_s_axis_tdata  ),
  .s_axis_tkeep    ( cplfifo_s_axis_tkeep  ),
  .s_axis_tlast    ( cplfifo_s_axis_tlast  ),
  .s_axis_tuser    ( cplfifo_s_axis_tuser  ),

  // Output Interface
  .m_axis_tvalid   ( m_axis_rx_cpl_tvalid  ),
  .m_axis_tready   ( m_axis_rx_cpl_tready  ),
  .m_axis_tdata    ( m_axis_rx_cpl_tdata   ),
  .m_axis_tkeep    ( m_axis_rx_cpl_tkeep   ),
  .m_axis_tlast    ( m_axis_rx_cpl_tlast   ),
  .m_axis_tuser    ( m_axis_rx_cpl_tuser   ),

  .axis_prog_full  ( cplfifo_almost_full   )
);

// Target Bridge FIFO (16x128bits -- DRAMs)
pcie2_fifo_generator_tgt_brdg tgt_brdg_fifo_inst(
  // Global
  .s_aclk          ( user_clk              ),
  .s_aresetn       ( ~user_reset           ),

  // Input Interface
  .s_axis_tvalid   ( tgtfifo_s_axis_tvalid ),
  .s_axis_tready   ( tgtfifo_s_axis_tready ),
  .s_axis_tdata    ( tgtfifo_s_axis_tdata  ),
  .s_axis_tkeep    ( tgtfifo_s_axis_tkeep  ),
  .s_axis_tlast    ( tgtfifo_s_axis_tlast  ),
  .s_axis_tuser    ( tgtfifo_s_axis_tuser  ),

  // Output Interface
  .m_axis_tvalid   ( m_axis_rx_tgt_tvalid  ),
  .m_axis_tready   ( m_axis_rx_tgt_tready  ),
  .m_axis_tdata    ( m_axis_rx_tgt_tdata   ),
  .m_axis_tkeep    ( m_axis_rx_tgt_tkeep   ),
  .m_axis_tlast    ( m_axis_rx_tgt_tlast   ),
  .m_axis_tuser    ( m_axis_rx_tgt_tuser   ),

  .axis_prog_full  ( tgtfifo_almost_full   )
);

// AXI-S 128-bit De-Straddler Module Instantiation
design_1_xdma_0_0_rx_destraddler #(

  .C_AXI_DATA_WIDTH ( C_AXI_DATA_WIDTH ),
  .C_KEEP_WIDTH     ( C_KEEP_WIDTH     ),
  .TCQ              ( TCQ              )

) design_1_xdma_0_0_rx_destraddler_inst (

  .user_clk         ( user_clk         ),
  .user_reset       ( user_reset       ),

  //-------------------------------------------------
  // AXI-S RX Interface from PCIe Hard Block
  //-------------------------------------------------
  .s_axis_rx_tdata  ( m_axis_rx_tdata  ),
  .s_axis_rx_tvalid ( m_axis_rx_tvalid ),
  .s_axis_rx_tready ( m_axis_rx_tready ),
  .s_axis_rx_tkeep  ( m_axis_rx_tkeep  ),
  .s_axis_rx_tlast  ( m_axis_rx_tlast  ),
  .s_axis_rx_tuser  ( m_axis_rx_tuser  ),

  //-------------------------------------------------
  // AXI-S RX Interface to RX Demux
  //-------------------------------------------------
  .m_axis_rx_tdata  ( m_axis_rx_tdata_int  ),
  .m_axis_rx_tvalid ( m_axis_rx_tvalid_int ),
  .m_axis_rx_tready ( m_axis_rx_tready_int ),
  .m_axis_rx_tkeep  ( m_axis_rx_tkeep_int  ),
  .m_axis_rx_tlast  ( m_axis_rx_tlast_int  ),
  .m_axis_rx_tuser  ( m_axis_rx_tuser_int  )

);

endmodule
