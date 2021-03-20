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
// File       : design_1_xdma_0_0_pcie2_ip_axi_basic_tx_pipeline.v
// Version    : 3.3
//                                                                            //
//  Description:                                                              //
//  AXI to TRN TX pipeline. Converts transmitted data from AXI protocol to    //
//  TRN.                                                                      //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_basic_top                                                           //
//      axi_basic_tx                                                          //
//        axi_basic_tx_pipeline                                               //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_axi_basic_tx_pipeline #(
  parameter C_DATA_WIDTH = 128,           // RX/TX interface data width
  parameter C_PM_PRIORITY = "FALSE",      // Disable TX packet boundary thrtl
  parameter TCQ = 1,                      // Clock to Q time

  // Do not override parameters below this line
  parameter REM_WIDTH  = (C_DATA_WIDTH == 128) ? 2 : 1, // trem/rrem width
  parameter KEEP_WIDTH = C_DATA_WIDTH / 8               // KEEP width
  ) (
  //---------------------------------------------//
  // User Design I/O                             //
  //---------------------------------------------//

  // AXI TX
  //-----------
  input      [C_DATA_WIDTH-1:0] s_axis_tx_tdata,     // TX data from user
  input                         s_axis_tx_tvalid,    // TX data is valid
  output                        s_axis_tx_tready,    // TX ready for data
  input        [KEEP_WIDTH-1:0] s_axis_tx_tkeep,     // TX strobe byte enables
  input                         s_axis_tx_tlast,     // TX data is last
  input                   [3:0] s_axis_tx_tuser,     // TX user signals

  //---------------------------------------------//
  // PCIe Block I/O                              //
  //---------------------------------------------//

  // TRN TX
  //-----------
  output     [C_DATA_WIDTH-1:0] trn_td,              // TX data from block
  output                        trn_tsof,            // TX start of packet
  output                        trn_teof,            // TX end of packet
  output                        trn_tsrc_rdy,        // TX source ready
  input                         trn_tdst_rdy,        // TX destination ready
  output                        trn_tsrc_dsc,        // TX source discontinue
  output        [REM_WIDTH-1:0] trn_trem,            // TX remainder
  output                        trn_terrfwd,         // TX error forward
  output                        trn_tstr,            // TX streaming enable
  output                        trn_tecrc_gen,       // TX ECRC generate
  input                         trn_lnk_up,          // PCIe link up

  // System
  //-----------
  input                         tready_thrtl,        // TREADY from thrtl ctl
  input                         user_clk,            // user clock from block
  input                         user_rst             // user reset from block
);


// Input register stage
reg  [C_DATA_WIDTH-1:0] reg_tdata;
reg                     reg_tvalid;
reg    [KEEP_WIDTH-1:0] reg_tkeep;
reg               [3:0] reg_tuser;
reg                     reg_tlast;
reg                     reg_tready;

// Pipeline utility signals
reg                     trn_in_packet;
reg                     axi_in_packet;
reg                     flush_axi;
wire                    disable_trn;
reg                     reg_disable_trn;

wire                    axi_beat_live  = s_axis_tx_tvalid && s_axis_tx_tready;
wire                    axi_end_packet = axi_beat_live && s_axis_tx_tlast;


//----------------------------------------------------------------------------//
// Convert TRN data format to AXI data format. AXI is DWORD swapped from TRN. //
// 128-bit:                 64-bit:                  32-bit:                  //
// TRN DW0 maps to AXI DW3  TRN DW0 maps to AXI DW1  TNR DW0 maps to AXI DW0  //
// TRN DW1 maps to AXI DW2  TRN DW1 maps to AXI DW0                           //
// TRN DW2 maps to AXI DW1                                                    //
// TRN DW3 maps to AXI DW0                                                    //
//----------------------------------------------------------------------------//
generate
  if(C_DATA_WIDTH == 128) begin : td_DW_swap_128
    assign trn_td = {reg_tdata[31:0],
                     reg_tdata[63:32],
                     reg_tdata[95:64],
                     reg_tdata[127:96]};
  end
  else if(C_DATA_WIDTH == 64) begin : td_DW_swap_64
    assign trn_td = {reg_tdata[31:0], reg_tdata[63:32]};
  end
  else begin : td_DW_swap_32
    assign trn_td = reg_tdata;
  end
endgenerate


//----------------------------------------------------------------------------//
// Create trn_tsof. If we're not currently in a packet and TVALID goes high,  //
// assert TSOF.                                                               //
//----------------------------------------------------------------------------//
assign trn_tsof = reg_tvalid && !trn_in_packet;


//----------------------------------------------------------------------------//
// Create trn_in_packet. This signal tracks if the TRN interface is currently //
// in the middle of a packet, which is needed to generate trn_tsof            //
//----------------------------------------------------------------------------//
always @(posedge user_clk) begin
  if(user_rst) begin
    trn_in_packet <= #TCQ 1'b0;
  end
  else begin
    if(trn_tsof && trn_tsrc_rdy && trn_tdst_rdy && !trn_teof) begin
      trn_in_packet <= #TCQ 1'b1;
    end
    else if((trn_in_packet && trn_teof && trn_tsrc_rdy) || !trn_lnk_up) begin
      trn_in_packet <= #TCQ 1'b0;
    end
  end
end


//----------------------------------------------------------------------------//
// Create axi_in_packet. This signal tracks if the AXI interface is currently //
// in the middle of a packet, which is needed in case the link goes down.     //
//----------------------------------------------------------------------------//
always @(posedge user_clk) begin
  if(user_rst) begin
    axi_in_packet <= #TCQ 1'b0;
  end
  else begin
    if(axi_beat_live && !s_axis_tx_tlast) begin
      axi_in_packet <= #TCQ 1'b1;
    end
    else if(axi_beat_live) begin
      axi_in_packet <= #TCQ 1'b0;
    end
  end
end


//----------------------------------------------------------------------------//
// Create disable_trn. This signal asserts when the link goes down and        //
// triggers the deassertiong of trn_tsrc_rdy. The deassertion of disable_trn  //
// depends on C_PM_PRIORITY, as described below.                              //
//----------------------------------------------------------------------------//
generate
  // In the C_PM_PRIORITY pipeline, we disable the TRN interfacefrom the time
  // the link goes down until the the AXI interface is ready to accept packets
  // again (via assertion of TREADY). By waiting for TREADY, we allow the
  // previous value buffer to fill, so we're ready for any throttling by the
  // user or the block.
  if(C_PM_PRIORITY == "TRUE") begin : pm_priority_trn_flush
    always @(posedge user_clk) begin
      if(user_rst) begin
        reg_disable_trn    <= #TCQ 1'b1;
      end
      else begin
        // When the link goes down, disable the TRN interface.
        if(!trn_lnk_up)
        begin
          reg_disable_trn  <= #TCQ 1'b1;
        end

        // When the link comes back up and the AXI interface is ready, we can
        // release the pipeline and return to normal operation.
        else if(!flush_axi && s_axis_tx_tready) begin
          reg_disable_trn <= #TCQ 1'b0;
        end
      end
    end

    assign disable_trn = reg_disable_trn;
  end

  // In the throttle-controlled pipeline, we don't have a previous value buffer.
  // The throttle control mechanism handles TREADY, so all we need to do is
  // detect when the link goes down and disable the TRN interface until the link
  // comes back up and the AXI interface is finished flushing any packets.
  else begin : thrtl_ctl_trn_flush
    always @(posedge user_clk) begin
      if(user_rst) begin
        reg_disable_trn    <= #TCQ 1'b0;
      end
      else begin
        // If the link is down and AXI is in packet, disable TRN and look for
        // the end of the packet
        if(axi_in_packet && !trn_lnk_up && !axi_end_packet)
        begin
          reg_disable_trn  <= #TCQ 1'b1;
        end

        // AXI packet is ending, so we're done flushing
        else if(axi_end_packet) begin
          reg_disable_trn <= #TCQ 1'b0;
        end
      end
    end

    // Disable the TRN interface if link is down or we're still flushing the AXI
    // interface.
    assign disable_trn = reg_disable_trn || !trn_lnk_up;
  end
endgenerate


//----------------------------------------------------------------------------//
// Convert STRB to RREM. Here, we are converting the encoding method for the  //
// location of the EOF from AXI (tkeep) to TRN flavor (rrem).                 //
//----------------------------------------------------------------------------//
generate
  if(C_DATA_WIDTH == 128) begin : tkeep_to_trem_128
    //---------------------------------------//
    // Conversion table:                     //
    // trem    | tkeep                       //
    // [1] [0] | [15:12] [11:8] [7:4] [3:0]  //
    // ------------------------------------- //
    //  1   1  |   D3      D2    D1    D0    //
    //  1   0  |   --      D2    D1    D0    //
    //  0   1  |   --      --    D1    D0    //
    //  0   0  |   --      --    --    D0    //
    //---------------------------------------//

    wire   axi_DW_1    = reg_tkeep[7];
    wire   axi_DW_2    = reg_tkeep[11];
    wire   axi_DW_3    = reg_tkeep[15];
    assign trn_trem[1] = axi_DW_2;
    assign trn_trem[0] = axi_DW_3 || (axi_DW_1 && !axi_DW_2);
  end
  else if(C_DATA_WIDTH == 64) begin : tkeep_to_trem_64
    assign trn_trem    = reg_tkeep[7];
  end
  else begin : tkeep_to_trem_32
    assign trn_trem    = 1'b0;
  end
endgenerate


//----------------------------------------------------------------------------//
// Create remaining TRN signals                                               //
//----------------------------------------------------------------------------//
assign trn_teof      = reg_tlast;
assign trn_tecrc_gen = reg_tuser[0];
assign trn_terrfwd   = reg_tuser[1];
assign trn_tstr      = reg_tuser[2];
assign trn_tsrc_dsc  = reg_tuser[3];


//----------------------------------------------------------------------------//
// Pipeline stage                                                             //
//----------------------------------------------------------------------------//
// We need one of two approaches for the pipeline stage depending on the
// C_PM_PRIORITY parameter.
generate
  reg reg_tsrc_rdy;

  // If set to FALSE, that means the user wants to use the TX packet boundary
  // throttling feature. Since all Block throttling will now be predicted, we
  // can use a simple straight-through pipeline.
  if(C_PM_PRIORITY == "FALSE") begin : throttle_ctl_pipeline
    always @(posedge user_clk) begin
      if(user_rst) begin
        reg_tdata        <= #TCQ {C_DATA_WIDTH{1'b0}};
        reg_tvalid       <= #TCQ 1'b0;
        reg_tkeep        <= #TCQ {KEEP_WIDTH{1'b0}};
        reg_tlast        <= #TCQ 1'b0;
        reg_tuser        <= #TCQ 4'h0;
        reg_tsrc_rdy     <= #TCQ 1'b0;
      end
      else begin
        reg_tdata        <= #TCQ s_axis_tx_tdata;
        reg_tvalid       <= #TCQ s_axis_tx_tvalid;
        reg_tkeep        <= #TCQ s_axis_tx_tkeep;
        reg_tlast        <= #TCQ s_axis_tx_tlast;
        reg_tuser        <= #TCQ s_axis_tx_tuser;

        // Hold trn_tsrc_rdy low when flushing a packet.
        reg_tsrc_rdy     <= #TCQ axi_beat_live && !disable_trn;
      end
    end

    assign trn_tsrc_rdy = reg_tsrc_rdy;

    // With TX packet boundary throttling, TREADY is pipelined in
    // axi_basic_tx_thrtl_ctl and wired through here.
    assign s_axis_tx_tready = tready_thrtl;
  end

  //**************************************************************************//

  // If C_PM_PRIORITY is set to TRUE, that means the user prefers to have all PM
  // functionality intact isntead of TX packet boundary throttling. Now the
  // Block could back-pressure at any time, which creates the standard problem
  // of potential data loss due to the handshaking latency. Here we need a
  // previous value buffer, just like the RX data path.
  else begin : pm_prioity_pipeline
    reg  [C_DATA_WIDTH-1:0] tdata_prev;
    reg                     tvalid_prev;
    reg    [KEEP_WIDTH-1:0] tkeep_prev;
    reg                     tlast_prev;
    reg               [3:0] tuser_prev;
    reg                     reg_tdst_rdy;

    wire                    data_hold;
    reg                     data_prev;


    //------------------------------------------------------------------------//
    // Previous value buffer                                                  //
    // ---------------------                                                  //
    // We are inserting a pipeline stage in between AXI and TRN, which causes //
    // some issues with handshaking signals trn_tsrc_rdy/s_axis_tx_tready.    //
    // The added cycle of latency in the path causes the Block to fall behind //
    // the AXI interface whenever it throttles.                               //
    //                                                                        //
    // To avoid loss of data, we must keep the previous value of all          //
    // s_axis_tx_* signals in case the Block throttles.                       //
    //------------------------------------------------------------------------//
    always @(posedge user_clk) begin
      if(user_rst) begin
        tdata_prev   <= #TCQ {C_DATA_WIDTH{1'b0}};
        tvalid_prev  <= #TCQ 1'b0;
        tkeep_prev   <= #TCQ {KEEP_WIDTH{1'b0}};
        tlast_prev   <= #TCQ 1'b0;
        tuser_prev   <= #TCQ 4'h 0;
      end
      else begin
        // prev buffer works by checking s_axis_tx_tready. When
        // s_axis_tx_tready is asserted, a new value is present on the
        // interface.
        if(!s_axis_tx_tready) begin
          tdata_prev   <= #TCQ tdata_prev;
          tvalid_prev  <= #TCQ tvalid_prev;
          tkeep_prev   <= #TCQ tkeep_prev;
          tlast_prev   <= #TCQ tlast_prev;
          tuser_prev   <= #TCQ tuser_prev;
        end
        else begin
          tdata_prev   <= #TCQ s_axis_tx_tdata;
          tvalid_prev  <= #TCQ s_axis_tx_tvalid;
          tkeep_prev   <= #TCQ s_axis_tx_tkeep;
          tlast_prev   <= #TCQ s_axis_tx_tlast;
          tuser_prev   <= #TCQ s_axis_tx_tuser;
        end
      end
    end

    // Create special buffer which locks in the proper value of TDATA depending
    // on whether the user is throttling or not. This buffer has three states:
    //
    //       HOLD state: TDATA maintains its current value
    //                   - the Block has throttled the PCIe block
    //   PREVIOUS state: the buffer provides the previous value on TDATA
    //                   - the Block has finished throttling, and is a little
    //                     behind the user
    //    CURRENT state: the buffer passes the current value on TDATA
    //                   - the Block is caught up and ready to receive the
    //                     latest data from the user
    always @(posedge user_clk) begin
      if(user_rst) begin
        reg_tdata  <= #TCQ {C_DATA_WIDTH{1'b0}};
        reg_tvalid <= #TCQ 1'b0;
        reg_tkeep  <= #TCQ {KEEP_WIDTH{1'b0}};
        reg_tlast  <= #TCQ 1'b0;
        reg_tuser  <= #TCQ 4'h0;

        reg_tdst_rdy <= #TCQ 1'b0;
      end
      else begin
        reg_tdst_rdy <= #TCQ trn_tdst_rdy;

        if(!data_hold) begin
          // PREVIOUS state
          if(data_prev) begin
            reg_tdata  <= #TCQ tdata_prev;
            reg_tvalid <= #TCQ tvalid_prev;
            reg_tkeep  <= #TCQ tkeep_prev;
            reg_tlast  <= #TCQ tlast_prev;
            reg_tuser  <= #TCQ tuser_prev;
          end

          // CURRENT state
          else begin
            reg_tdata  <= #TCQ s_axis_tx_tdata;
            reg_tvalid <= #TCQ s_axis_tx_tvalid;
            reg_tkeep  <= #TCQ s_axis_tx_tkeep;
            reg_tlast  <= #TCQ s_axis_tx_tlast;
            reg_tuser  <= #TCQ s_axis_tx_tuser;
          end
        end
        // else HOLD state
      end
    end


    // Logic to instruct pipeline to hold its value
    assign data_hold = trn_tsrc_rdy && !trn_tdst_rdy;


    // Logic to instruct pipeline to use previous bus values. Always use
    // previous value after holding a value.
    always @(posedge user_clk) begin
      if(user_rst) begin
        data_prev <= #TCQ 1'b0;
      end
      else begin
        data_prev <= #TCQ data_hold;
      end
    end


    //------------------------------------------------------------------------//
    // Create trn_tsrc_rdy. If we're flushing the TRN hold trn_tsrc_rdy low.  //
    //------------------------------------------------------------------------//
    assign trn_tsrc_rdy = reg_tvalid && !disable_trn;


    //------------------------------------------------------------------------//
    // Create TREADY                                                          //
    //------------------------------------------------------------------------//
    always @(posedge user_clk) begin
      if(user_rst) begin
        reg_tready <= #TCQ 1'b0;
      end
      else begin
        // If the link went down and we need to flush a packet in flight, hold
        // TREADY high
        if(flush_axi && !axi_end_packet) begin
          reg_tready <= #TCQ 1'b1;
        end

        // If the link is up, TREADY is as follows:
        //   TREADY = 1 when trn_tsrc_rdy == 0
        //      - While idle, keep the pipeline primed and ready for the next
        //        packet
        //
        //   TREADY = trn_tdst_rdy when trn_tsrc_rdy == 1
        //      - While in packet, throttle pipeline based on state of TRN
        else if(trn_lnk_up) begin
          reg_tready <= #TCQ trn_tdst_rdy || !trn_tsrc_rdy;
        end

        // If the link is down and we're not flushing a packet, hold TREADY low
        // wait for link to come back up
        else begin
          reg_tready <= #TCQ 1'b0;
        end
      end
    end

    assign s_axis_tx_tready = reg_tready;
  end


  //--------------------------------------------------------------------------//
  // Create flush_axi. This signal detects if the link goes down while the    //
  // AXI interface is in packet. In this situation, we need to flush the      //
  // packet through the AXI interface and discard it.                         //
  //--------------------------------------------------------------------------//
  always @(posedge user_clk) begin
    if(user_rst) begin
      flush_axi    <= #TCQ 1'b0;
    end
    else begin
      // If the AXI interface is in packet and the link goes down, purge it.
      if(axi_in_packet && !trn_lnk_up && !axi_end_packet) begin
        flush_axi <= #TCQ 1'b1;
      end

      // The packet is finished, so we're done flushing.
      else if(axi_end_packet) begin
        flush_axi <= #TCQ 1'b0;
      end
    end
  end
endgenerate

endmodule
