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
// File       : design_1_xdma_0_0_axi_stream_intf.sv
// Version    : 4.1
//-----------------------------------------------------------------------------

`timescale 1ps/1ps

module design_1_xdma_0_0_axi_stream_intf #(

  parameter  C_M_AXIS_RQ_USER_WIDTH  =  60,
  parameter  C_M_AXIS_RC_USER_WIDTH  =  75,
  parameter  C_S_AXIS_CQ_USER_WIDTH  =  85,
  parameter  C_S_AXIS_CC_USER_WIDTH  =  33,
  parameter  C_M_AXIS_DATA_WIDTH     =  128,
  parameter  C_S_AXIS_DATA_WIDTH     =  128,
  parameter  C_S_KEEP_WIDTH          =  C_S_AXIS_DATA_WIDTH / 32,
  parameter  C_M_KEEP_WIDTH          =  C_M_AXIS_DATA_WIDTH / 32,
  parameter  C_AXI_DATA_WIDTH        =  64,
  parameter  C_KEEP_WIDTH            =  C_AXI_DATA_WIDTH/8,
  parameter  C_ADDR_ALGN             =  1,
  parameter  TCQ                     =  1

) (

//--------------------------------------------------------------------------------//
// ---------- MSI-X Interfaces from CFG Sideband Module ------------------------- //
//--------------------------------------------------------------------------------//

  output wire                        s_axis_tx_msix_tready,
  input  wire [C_AXI_DATA_WIDTH-1:0] s_axis_tx_msix_tdata,
  input  wire [C_KEEP_WIDTH-1:0]     s_axis_tx_msix_tkeep,
  input  wire                        s_axis_tx_msix_tlast,
  input  wire                        s_axis_tx_msix_tvalid,
  input  wire [3:0]                  s_axis_tx_msix_tuser,

//--------------------------------------------------------------------------------//
// ---------- 7-series Gen2 PCIe Integrated Block Ports ------------------------- //
//--------------------------------------------------------------------------------//

  input  wire                        s_axis_tx_tready,
  output wire [C_AXI_DATA_WIDTH-1:0] s_axis_tx_tdata,
  output wire [C_KEEP_WIDTH-1:0]     s_axis_tx_tkeep,
  output wire                        s_axis_tx_tlast,
  output wire                        s_axis_tx_tvalid,
  output wire [3:0]                  s_axis_tx_tuser,

  input  wire [C_AXI_DATA_WIDTH-1:0] m_axis_rx_tdata,
  input  wire [C_KEEP_WIDTH-1:0]     m_axis_rx_tkeep,
  input  wire                        m_axis_rx_tlast,
  input  wire                        m_axis_rx_tvalid,
  output wire                        m_axis_rx_tready,
  input  wire [21:0]                 m_axis_rx_tuser,

  output wire                        rx_np_ok,
  output wire                        rx_np_req,

  input  wire [7:0]                  cfg_bus_number,
  input  wire [4:0]                  cfg_device_number,
  input  wire [2:0]                  cfg_function_number,
  
//--------------------------------------------------------------------------------//
// ---------- Virtex-7 Gen3 PCIe Integrated Block Ports ------------------------- //
//--------------------------------------------------------------------------------//
  input  wire [C_M_AXIS_DATA_WIDTH-1:0]    s_axis_rq_tdata,
  input  wire [C_M_AXIS_RQ_USER_WIDTH-1:0] s_axis_rq_tuser,
  input  wire [C_M_AXIS_DATA_WIDTH/32-1:0] s_axis_rq_tkeep,
  input  wire                              s_axis_rq_tlast,
  input  wire                              s_axis_rq_tvalid,
  output wire [3:0]                        s_axis_rq_tready,

  output wire [C_M_AXIS_DATA_WIDTH-1:0]    m_axis_rc_tdata,
  output wire [C_M_AXIS_RC_USER_WIDTH-1:0] m_axis_rc_tuser,
  output wire [C_M_AXIS_DATA_WIDTH/32-1:0] m_axis_rc_tkeep,
  output wire                              m_axis_rc_tlast,
  output wire                              m_axis_rc_tvalid,
  input  wire                              m_axis_rc_tready,

  output wire [C_S_AXIS_DATA_WIDTH-1:0]    m_axis_cq_tdata,
  output wire [C_S_AXIS_CQ_USER_WIDTH-1:0] m_axis_cq_tuser,
  output wire [C_S_AXIS_DATA_WIDTH/32-1:0] m_axis_cq_tkeep,
  output wire                              m_axis_cq_tlast,
  output wire                              m_axis_cq_tvalid,
  input  wire                              m_axis_cq_tready,

  input  wire [C_S_AXIS_DATA_WIDTH-1:0]    s_axis_cc_tdata,
  input  wire [C_S_AXIS_CC_USER_WIDTH-1:0] s_axis_cc_tuser,
  input  wire [C_S_AXIS_DATA_WIDTH/32-1:0] s_axis_cc_tkeep,
  input  wire                              s_axis_cc_tlast,
  input  wire                              s_axis_cc_tvalid,
  output wire [3:0]                        s_axis_cc_tready,

  output wire [3:0]   pcie_rq_seq_num,
  output wire         pcie_rq_seq_num_vld,

  output wire [5:0]   pcie_rq_tag,
  output wire         pcie_rq_tag_vld,

  input  wire         pcie_cq_np_req,
  output wire [5:0]   pcie_cq_np_req_count,

  //--------------------------------------------------------------------------------------//
  // ---------- System (SYS) Interface -------------------------------------------------- //
  //--------------------------------------------------------------------------------------//
  input  wire         user_clk,
  input  wire         user_reset

);

//--------------------------------------------------------------------------------//
// ---------- Wire Declaration -------------------------------------------------- //
//--------------------------------------------------------------------------------//

  // AXI-S RX Interface DMA CPL <-> RX Demux
  wire     [C_AXI_DATA_WIDTH-1:0] m_axis_rx_cpl_tdata;     // RX data
  wire                            m_axis_rx_cpl_tvalid;    // RX data is valid
  wire                            m_axis_rx_cpl_tready;    // RX ready for data
  wire         [C_KEEP_WIDTH-1:0] m_axis_rx_cpl_tkeep;     // RX strobe byte enables
  wire                            m_axis_rx_cpl_tlast;     // RX data is last
  wire                     [21:0] m_axis_rx_cpl_tuser;     // RX user signals

  // AXI-S RX Interface Target Bridge <-> RX Demux
  wire     [C_AXI_DATA_WIDTH-1:0] m_axis_rx_tgt_tdata;     // RX data
  wire                            m_axis_rx_tgt_tvalid;    // RX data is valid
  wire                            m_axis_rx_tgt_tready;    // RX ready for data
  wire         [C_KEEP_WIDTH-1:0] m_axis_rx_tgt_tkeep;     // RX strobe byte enables
  wire                            m_axis_rx_tgt_tlast;     // RX data is last
  wire                     [21:0] m_axis_rx_tgt_tuser;     // RX user signals

  // AXI-S TX Interface DMA REQ <-> TX Mux
  wire     [C_AXI_DATA_WIDTH-1:0] s_axis_tx_req_tdata;     // TX data
  wire                            s_axis_tx_req_tvalid;    // TX data is valid
  wire                            s_axis_tx_req_tready;    // TX ready for data
  wire         [C_KEEP_WIDTH-1:0] s_axis_tx_req_tkeep;     // TX strobe byte enables
  wire                            s_axis_tx_req_tlast;     // TX data is last
  wire                      [3:0] s_axis_tx_req_tuser;     // TX user signals

  // AXI-S TX Interface Target Bridge <-> TX Mux
  wire     [C_AXI_DATA_WIDTH-1:0] s_axis_tx_tgt_tdata;     // TX data
  wire                            s_axis_tx_tgt_tvalid;    // TX data is valid
  wire                            s_axis_tx_tgt_tready;    // TX ready for data
  wire         [C_KEEP_WIDTH-1:0] s_axis_tx_tgt_tkeep;     // TX strobe byte enables
  wire                            s_axis_tx_tgt_tlast;     // TX data is last
  wire                      [3:0] s_axis_tx_tgt_tuser;     // TX user signals


assign rx_np_req = pcie_cq_np_req;
assign pcie_cq_np_req_count = 'd0;  //FIXME

//--------------------------------------------------------------------------------//
// ---------- AXI-S RX Demux ---------------------------------------------------- //
//--------------------------------------------------------------------------------//
  design_1_xdma_0_0_rx_demux #(

   .C_AXI_DATA_WIDTH      ( C_AXI_DATA_WIDTH ),
   .C_KEEP_WIDTH          ( C_KEEP_WIDTH     ),
   .C_ADDR_ALGN           ( C_ADDR_ALGN      ),
   .TCQ                   ( TCQ              )

  ) design_1_xdma_0_0_rx_demux_i (

   .user_clk              ( user_clk         ),
   .user_reset            ( user_reset       ),

   //------------------------------------------------//
   // From PCIe Hard Block                           //
   //------------------------------------------------//
   .m_axis_rx_tdata       ( m_axis_rx_tdata  ),
   .m_axis_rx_tvalid      ( m_axis_rx_tvalid ),
   .m_axis_rx_tready      ( m_axis_rx_tready ),
   .m_axis_rx_tkeep       ( m_axis_rx_tkeep  ),
   .m_axis_rx_tlast       ( m_axis_rx_tlast  ),
   .m_axis_rx_tuser       ( m_axis_rx_tuser  ),

   .rx_np_ok              ( rx_np_ok         ),

   //------------------------------------------------//
   // To DMA CPL                                     //
   //------------------------------------------------//
   .m_axis_rx_cpl_tdata   ( m_axis_rx_cpl_tdata  ),
   .m_axis_rx_cpl_tvalid  ( m_axis_rx_cpl_tvalid ),
   .m_axis_rx_cpl_tready  ( m_axis_rx_cpl_tready ),
   .m_axis_rx_cpl_tkeep   ( m_axis_rx_cpl_tkeep  ),
   .m_axis_rx_cpl_tlast   ( m_axis_rx_cpl_tlast  ),
   .m_axis_rx_cpl_tuser   ( m_axis_rx_cpl_tuser  ),

   //------------------------------------------------//
   // To Target Bridge                               //
   //------------------------------------------------//
   .m_axis_rx_tgt_tdata   ( m_axis_rx_tgt_tdata  ),
   .m_axis_rx_tgt_tvalid  ( m_axis_rx_tgt_tvalid ),
   .m_axis_rx_tgt_tready  ( m_axis_rx_tgt_tready ),
   .m_axis_rx_tgt_tkeep   ( m_axis_rx_tgt_tkeep  ),
   .m_axis_rx_tgt_tlast   ( m_axis_rx_tgt_tlast  ),
   .m_axis_rx_tgt_tuser   ( m_axis_rx_tgt_tuser  )

  );

//--------------------------------------------------------------------------------//
// ---------- AXI-S TX Mux ------------------------------------------------------ //
//--------------------------------------------------------------------------------//
  design_1_xdma_0_0_tx_mux #(

   .C_AXI_DATA_WIDTH      ( C_AXI_DATA_WIDTH ),
   .C_KEEP_WIDTH          ( C_KEEP_WIDTH     ),
   .C_ADDR_ALGN           ( C_ADDR_ALGN      ),
   .TCQ                   ( TCQ              )

  ) design_1_xdma_0_0_tx_mux_i (

   .user_clk              ( user_clk         ),
   .user_reset            ( user_reset       ),

   //-------------------------------------------------//
   // AXI-S TX Interface to PCIe Hard Block           //
   //-------------------------------------------------//
   .s_axis_tx_tdata       ( s_axis_tx_tdata  ),
   .s_axis_tx_tvalid      ( s_axis_tx_tvalid ),
   .s_axis_tx_tready      ( s_axis_tx_tready ),
   .s_axis_tx_tkeep       ( s_axis_tx_tkeep  ),
   .s_axis_tx_tlast       ( s_axis_tx_tlast  ),
   .s_axis_tx_tuser       ( s_axis_tx_tuser  ),

   //-------------------------------------------------//
   // AXI-S TX Interface from DMA REQ                 //
   //-------------------------------------------------//
   .s_axis_tx_req_tdata   ( s_axis_tx_req_tdata  ),
   .s_axis_tx_req_tvalid  ( s_axis_tx_req_tvalid ),
   .s_axis_tx_req_tready  ( s_axis_tx_req_tready ),
   .s_axis_tx_req_tkeep   ( s_axis_tx_req_tkeep  ),
   .s_axis_tx_req_tlast   ( s_axis_tx_req_tlast  ),
   .s_axis_tx_req_tuser   ( s_axis_tx_req_tuser  ),

   //-------------------------------------------------//
   // AXI-S TX Interface from Target Bridge           //
   //-------------------------------------------------//
   .s_axis_tx_tgt_tdata   ( s_axis_tx_tgt_tdata  ),
   .s_axis_tx_tgt_tvalid  ( s_axis_tx_tgt_tvalid ),
   .s_axis_tx_tgt_tready  ( s_axis_tx_tgt_tready ),
   .s_axis_tx_tgt_tkeep   ( s_axis_tx_tgt_tkeep  ),
   .s_axis_tx_tgt_tlast   ( s_axis_tx_tgt_tlast  ),
   .s_axis_tx_tgt_tuser   ( s_axis_tx_tgt_tuser  ),

   //-------------------------------------------------//
   // AXI-S TX Interface from CFG Sideband            //
   //-------------------------------------------------//
   .s_axis_tx_msix_tdata  ( s_axis_tx_msix_tdata  ),
   .s_axis_tx_msix_tvalid ( s_axis_tx_msix_tvalid ),
   .s_axis_tx_msix_tready ( s_axis_tx_msix_tready ),
   .s_axis_tx_msix_tkeep  ( s_axis_tx_msix_tkeep  ),
   .s_axis_tx_msix_tlast  ( s_axis_tx_msix_tlast  ),
   .s_axis_tx_msix_tuser  ( s_axis_tx_msix_tuser  )

);

//--------------------------------------------------------------------------------//
// ---------- AXI-S DMA Request ------------------------------------------------- //
//--------------------------------------------------------------------------------//
  design_1_xdma_0_0_dma_req # (

   .C_AXI_DATA_WIDTH    ( C_AXI_DATA_WIDTH ),
   .C_KEEP_WIDTH        ( C_KEEP_WIDTH     ),
   .C_RQ_KEEP_WIDTH     ( C_S_KEEP_WIDTH   ),
   .C_ADDR_ALGN         ( C_ADDR_ALGN      ),
   .TCQ                 ( TCQ              )

  ) design_1_xdma_0_0_dma_req_i (

   .clk                 ( user_clk         ),
   .user_reset          ( user_reset       ),

  //-------------------------------------------------//
  // AXI-S RX Interface from DMA                     //
  //-------------------------------------------------//
   .m_axis_rq_tdata     ( s_axis_rq_tdata  ),
   .m_axis_rq_tvalid    ( s_axis_rq_tvalid ),
   .m_axis_rq_tkeep     ( s_axis_rq_tkeep  ),
   .m_axis_rq_tlast     ( s_axis_rq_tlast  ),
   .m_axis_rq_tuser     ( s_axis_rq_tuser  ),
   .m_axis_rq_tready    ( s_axis_rq_tready ),

  //-------------------------------------------------//
  // AXI-S RQ to tx conversion                       //
  //-------------------------------------------------//
   .s_axis_tx_tdata     ( s_axis_tx_req_tdata  ),
   .s_axis_tx_tvalid    ( s_axis_tx_req_tvalid ),
   .s_axis_tx_tready    ( s_axis_tx_req_tready ),
   .s_axis_tx_tkeep     ( s_axis_tx_req_tkeep  ),
   .s_axis_tx_tlast     ( s_axis_tx_req_tlast  ),
   .s_axis_tx_tuser     ( s_axis_tx_req_tuser  ),

  //-------------------------------------------------//
  // PCIe Request Sequence Number                    //
  //-------------------------------------------------//
   .pcie_rq_seq_num_vld ( pcie_rq_seq_num_vld ),
   .pcie_rq_seq_num     ( pcie_rq_seq_num     ),

  //-------------------------------------------------//
  // Requester ID                                    //
  //-------------------------------------------------//
   .cfg_bus_number      ( cfg_bus_number      ),
   .cfg_device_number   ( cfg_device_number   ),
   .cfg_function_number ( cfg_function_number )

  );

//--------------------------------------------------------------------------------//
// ---------- AXI-S DMA Completion ---------------------------------------------- //
//--------------------------------------------------------------------------------//
  design_1_xdma_0_0_dma_cpl #(

   .C_AXI_DATA_WIDTH      ( C_AXI_DATA_WIDTH ),
   .C_KEEP_WIDTH          ( C_KEEP_WIDTH     ),
   .C_RC_KEEP_WIDTH       ( C_M_KEEP_WIDTH   ),
   .C_ADDR_ALGN           ( C_ADDR_ALGN      ),
   .TCQ                   ( TCQ              )

  ) design_1_xdma_0_0_dma_cpl_i (

   .clk                   ( user_clk         ),
   .user_reset            ( user_reset       ),
   
  //-------------------------------------------------//
  // AXI-S RX Interface from RX Demux                //
  //-------------------------------------------------//
   .m_axis_rx_tdata       ( m_axis_rx_cpl_tdata  ),
   .m_axis_rx_tvalid      ( m_axis_rx_cpl_tvalid ),
   .m_axis_rx_tkeep       ( m_axis_rx_cpl_tkeep  ),
   .m_axis_rx_tready      ( m_axis_rx_cpl_tready ),
   .m_axis_rx_tlast       ( m_axis_rx_cpl_tlast  ),
   .m_axis_rx_tuser       ( m_axis_rx_cpl_tuser  ),

  //-------------------------------------------------//
  // AXI-S RC Interface to DMA                       //
  //-------------------------------------------------//
   .s_axis_rc_tvalid      ( m_axis_rc_tvalid     ),
   .s_axis_rc_tdata       ( m_axis_rc_tdata      ),
   .s_axis_rc_tkeep       ( m_axis_rc_tkeep      ),
   .s_axis_rc_tlast       ( m_axis_rc_tlast      ),
   .s_axis_rc_tready      ( m_axis_rc_tready     ), 
   .s_axis_rc_tuser       ( m_axis_rc_tuser      ) 

  );

//--------------------------------------------------------------------------------//
// ---------- AXI-S DMA Target Request ------------------------------------------ //
//--------------------------------------------------------------------------------//
  design_1_xdma_0_0_tgt_req #(

   .C_AXI_DATA_WIDTH       ( C_AXI_DATA_WIDTH       ),
   .C_KEEP_WIDTH           ( C_KEEP_WIDTH           ),
   .C_CQ_KEEP_WIDTH        ( C_M_KEEP_WIDTH         ),
   .C_S_AXIS_CQ_USER_WIDTH ( C_S_AXIS_CQ_USER_WIDTH ),
   .TCQ                    ( TCQ                    )

  ) design_1_xdma_0_0_tgt_req_i (

   .clk                    ( user_clk               ),
   .user_reset             ( user_reset             ),

   //------------------------------------------------//
   // From RX Demux to Target Bridge                 //
   //------------------------------------------------//
   .m_axis_rx_tdata        ( m_axis_rx_tgt_tdata  ),
   .m_axis_rx_tvalid       ( m_axis_rx_tgt_tvalid ),
   .m_axis_rx_tready       ( m_axis_rx_tgt_tready ),
   .m_axis_rx_tkeep        ( m_axis_rx_tgt_tkeep  ),
   .m_axis_rx_tlast        ( m_axis_rx_tgt_tlast  ),
   .m_axis_rx_tuser        ( m_axis_rx_tgt_tuser  ),

   //------------------------------------------------//
   // From Target Bridge to PCIe                     //
   //------------------------------------------------//
   .s_axis_cq_tdata        ( m_axis_cq_tdata      ),
   .s_axis_cq_tkeep        ( m_axis_cq_tkeep      ),
   .s_axis_cq_tvalid       ( m_axis_cq_tvalid     ),
   .s_axis_cq_tready       ( m_axis_cq_tready     ),
   .s_axis_cq_tlast        ( m_axis_cq_tlast      ),
   .s_axis_cq_tuser        ( m_axis_cq_tuser      )
  
  );

//--------------------------------------------------------------------------------//
// ---------- AXI-S DMA Target Completion --------------------------------------- //
//--------------------------------------------------------------------------------//
  design_1_xdma_0_0_tgt_cpl #(

   .C_AXI_DATA_WIDTH       ( C_AXI_DATA_WIDTH       ),
   .C_KEEP_WIDTH           ( C_KEEP_WIDTH           ),
   .C_CC_KEEP_WIDTH        ( C_S_KEEP_WIDTH         ),
   .C_S_AXIS_CC_USER_WIDTH ( C_S_AXIS_CC_USER_WIDTH ),
   .TCQ                    ( TCQ                    )

  ) design_1_xdma_0_0_tgt_cpl_i (

   .clk                   ( user_clk             ),
   .user_reset            ( user_reset           ),

   //------------------------------------------------//
   // AXI4-CC interface to target_cc_completer       //
   //------------------------------------------------//
   .m_axis_cc_tdata       ( s_axis_cc_tdata      ),
   .m_axis_cc_tkeep       ( s_axis_cc_tkeep      ),
   .m_axis_cc_tvalid      ( s_axis_cc_tvalid     ),
   .m_axis_cc_tlast       ( s_axis_cc_tlast      ),
   .m_axis_cc_tready      ( s_axis_cc_tready     ),
   .m_axis_cc_tuser       ( s_axis_cc_tuser      ),

   //------------------------------------------------//
   // TX Signal going to TX MUX                      //
   //------------------------------------------------//
   .s_axis_tx_tdata       ( s_axis_tx_tgt_tdata  ),
   .s_axis_tx_tkeep       ( s_axis_tx_tgt_tkeep  ),
   .s_axis_tx_tvalid      ( s_axis_tx_tgt_tvalid ),
   .s_axis_tx_tready      ( s_axis_tx_tgt_tready ),
   .s_axis_tx_tlast       ( s_axis_tx_tgt_tlast  ),
   .s_axis_tx_tuser       ( s_axis_tx_tgt_tuser  ),

  //-------------------------------------------------//
  // Completer ID                                    //
  //-------------------------------------------------//
   .cfg_bus_number        ( cfg_bus_number       ),
   .cfg_device_number     ( cfg_device_number    ),
   .cfg_function_number   ( cfg_function_number  )

  );

endmodule
