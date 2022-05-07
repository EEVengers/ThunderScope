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
// File       : design_1_xdma_0_0_pcie2_ip_axi_basic_tx_thrtl_ctl.v
// Version    : 3.3
//                                                                            //
//  Description:                                                              //
//  TX throttle controller. Anticipates back-pressure from PCIe block and     //
//  preemptively back-pressures user design (packet boundary throttling).     //
//                                                                            //
//  Notes:                                                                    //
//  Optional notes section.                                                   //
//                                                                            //
//  Hierarchical:                                                             //
//    axi_basic_top                                                           //
//      axi_basic_tx                                                          //
//        axi_basic_tx_thrtl_ctl                                              //
//                                                                            //
//----------------------------------------------------------------------------//

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_axi_basic_tx_thrtl_ctl #(
  parameter C_DATA_WIDTH = 128,           // RX/TX interface data width
  parameter C_FAMILY     = "X7",          // Targeted FPGA family
  parameter C_ROOT_PORT  = "FALSE",       // PCIe block is in root port mode
  parameter TCQ = 1                       // Clock to Q time
  ) (

  // AXI TX
  //-----------
  input  [C_DATA_WIDTH-1:0] s_axis_tx_tdata,         // TX data from user
  input                     s_axis_tx_tvalid,        // TX data is valid
  input               [3:0] s_axis_tx_tuser,         // TX user signals
  input                     s_axis_tx_tlast,         // TX data is last

  // User Misc.
  //-----------
  input                     user_turnoff_ok,         // Turnoff OK from user
  input                     user_tcfg_gnt,           // Send cfg OK from user

  // TRN TX
  //-----------
  input               [5:0] trn_tbuf_av,             // TX buffers available
  input                     trn_tdst_rdy,            // TX destination ready

  // TRN Misc.
  //-----------
  input                     trn_tcfg_req,            // TX config request
  output                    trn_tcfg_gnt,            // TX config grant
  input                     trn_lnk_up,              // PCIe link up

  // 7 Series/Virtex6 PM
  //-----------
  input               [2:0] cfg_pcie_link_state,     // Encoded PCIe link state

  // Virtex6 PM
  //-----------
  input                     cfg_pm_send_pme_to,      // PM send PME turnoff msg
  input               [1:0] cfg_pmcsr_powerstate,    // PMCSR power state
  input              [31:0] trn_rdllp_data,          // RX DLLP data
  input                     trn_rdllp_src_rdy,       // RX DLLP source ready

  // Virtex6/Spartan6 PM
  //-----------
  input                     cfg_to_turnoff,          // Turnoff request
  output reg                cfg_turnoff_ok,          // Turnoff grant

  // System
  //-----------
  output reg                tready_thrtl,            // TREADY to pipeline
  input                     user_clk,                // user clock from block
  input                     user_rst                 // user reset from block
);

// Thrtl user when TBUF hits this val
localparam TBUF_AV_MIN = (C_DATA_WIDTH == 128) ? 5 :
                                                   (C_DATA_WIDTH == 64) ? 1 : 0;

// Pause user when TBUF hits this val
localparam TBUF_AV_GAP = TBUF_AV_MIN + 1;

// GAP pause time - the latency from the time a packet is accepted on the TRN
// interface to the time trn_tbuf_av from the Block will decrement.
localparam TBUF_GAP_TIME = (C_DATA_WIDTH == 128) ? 4 : 1;

// Latency time from when tcfg_gnt is asserted to when PCIe block will throttle
localparam TCFG_LATENCY_TIME = 2'd2;

// Number of pipeline stages to delay trn_tcfg_gnt. For V6 128-bit only
localparam TCFG_GNT_PIPE_STAGES = 3;

// Throttle condition registers and constants
reg        lnk_up_thrtl;
wire       lnk_up_trig;
wire       lnk_up_exit;

reg        tbuf_av_min_thrtl;
wire       tbuf_av_min_trig;

reg        tbuf_av_gap_thrtl;
reg  [2:0] tbuf_gap_cnt;
wire       tbuf_av_gap_trig;
wire       tbuf_av_gap_exit;
wire       gap_trig_tlast;
wire       gap_trig_decr;
wire       gap_trig_tcfg;
reg  [5:0] tbuf_av_d;

reg        tcfg_req_thrtl;
reg  [1:0] tcfg_req_cnt;
reg        trn_tdst_rdy_d;
wire       tcfg_req_trig;
wire       tcfg_req_exit;
reg        tcfg_gnt_log;

wire       pre_throttle;
wire       reg_throttle;
wire       exit_crit;
reg        reg_tcfg_gnt;
reg        trn_tcfg_req_d;
reg        tcfg_gnt_pending;
wire       wire_to_turnoff;
reg        reg_turnoff_ok;

reg        tready_thrtl_mux;

localparam LINKSTATE_L0             = 3'b000;
localparam LINKSTATE_PPM_L1         = 3'b001;
localparam LINKSTATE_PPM_L1_TRANS   = 3'b101;
localparam LINKSTATE_PPM_L23R_TRANS = 3'b110;
localparam PM_ENTER_L1              = 8'h20;
localparam POWERSTATE_D0            = 2'b00;

reg        ppm_L1_thrtl;
wire       ppm_L1_trig;
wire       ppm_L1_exit;
reg  [2:0] cfg_pcie_link_state_d;
reg        trn_rdllp_src_rdy_d;

reg        ppm_L23_thrtl;
wire       ppm_L23_trig;
reg        cfg_turnoff_ok_pending;

reg        reg_tlast;

// Throttle control state machine states and registers
localparam IDLE       = 0;
localparam THROTTLE   = 1;
reg        cur_state;
reg        next_state;

reg        reg_axi_in_pkt;
wire       axi_in_pkt;
wire       axi_pkt_ending;
wire       axi_throttled;
wire       axi_thrtl_ok;
wire       tx_ecrc_pause;

//----------------------------------------------------------------------------//
// THROTTLE REASON: PCIe link is down                                         //
//   - When to throttle: trn_lnk_up deasserted                                //
//   - When to stop: trn_tdst_rdy assesrted                                   //
//----------------------------------------------------------------------------//
assign lnk_up_trig = !trn_lnk_up;
assign lnk_up_exit = trn_tdst_rdy;

always @(posedge user_clk) begin
  if(user_rst) begin
    lnk_up_thrtl <= #TCQ 1'b1;
  end
  else begin
    if(lnk_up_trig) begin
      lnk_up_thrtl <= #TCQ 1'b1;
    end
    else if(lnk_up_exit) begin
      lnk_up_thrtl <= #TCQ 1'b0;
    end
  end
end


//----------------------------------------------------------------------------//
// THROTTLE REASON: Transmit buffers depleted                                 //
//   - When to throttle: trn_tbuf_av falls to 0                               //
//   - When to stop: trn_tbuf_av rises above 0 again                          //
//----------------------------------------------------------------------------//
assign tbuf_av_min_trig = (trn_tbuf_av <= TBUF_AV_MIN);

always @(posedge user_clk) begin
  if(user_rst) begin
    tbuf_av_min_thrtl <= #TCQ 1'b0;
  end
  else begin
    if(tbuf_av_min_trig) begin
      tbuf_av_min_thrtl <= #TCQ 1'b1;
    end

    // The exit condition for tbuf_av_min_thrtl is !tbuf_av_min_trig
    else begin
      tbuf_av_min_thrtl <= #TCQ 1'b0;
    end
  end
end


//----------------------------------------------------------------------------//
// THROTTLE REASON: Transmit buffers getting low                              //
//   - When to throttle: trn_tbuf_av falls below "gap" threshold TBUF_AV_GAP  //
//   - When to stop: after TBUF_GAP_TIME cycles elapse                        //
//                                                                            //
// If we're about to run out of transmit buffers, throttle the user for a     //
// few clock cycles to give the PCIe block time to catch up. This is          //
// needed to compensate for latency in decrementing trn_tbuf_av in the PCIe   //
// Block transmit path.                                                       //
//----------------------------------------------------------------------------//

// Detect two different scenarios for buffers getting low:
// 1) If we see a TLAST. a new packet has been inserted into the buffer, and
//    we need to pause and let that packet "soak in"
assign gap_trig_tlast = (trn_tbuf_av <= TBUF_AV_GAP) &&
                            s_axis_tx_tvalid && tready_thrtl && s_axis_tx_tlast;

// 2) Any time tbug_avail decrements to the TBUF_AV_GAP threshold, we need to
//    pause and make sure no other packets are about to soak in and cause the
//    buffer availability to drop further.
assign gap_trig_decr  = (trn_tbuf_av == (TBUF_AV_GAP)) &&
                                                 (tbuf_av_d == (TBUF_AV_GAP+1));

assign gap_trig_tcfg  = (tcfg_req_thrtl && tcfg_req_exit);
assign tbuf_av_gap_trig = gap_trig_tlast || gap_trig_decr || gap_trig_tcfg;
assign tbuf_av_gap_exit = (tbuf_gap_cnt == 0);

always @(posedge user_clk) begin
  if(user_rst) begin
    tbuf_av_gap_thrtl <= #TCQ 1'b0;
    tbuf_gap_cnt      <= #TCQ 3'h0;
    tbuf_av_d         <= #TCQ 6'h00;
  end
  else begin
    if(tbuf_av_gap_trig) begin
      tbuf_av_gap_thrtl <= #TCQ 1'b1;
    end
    else if(tbuf_av_gap_exit) begin
      tbuf_av_gap_thrtl <= #TCQ 1'b0;
    end

    // tbuf gap counter:
    // This logic controls the length of the throttle condition when tbufs are
    // getting low.
    if(tbuf_av_gap_thrtl && (cur_state == THROTTLE)) begin
      if(tbuf_gap_cnt > 0) begin
        tbuf_gap_cnt <= #TCQ tbuf_gap_cnt - 3'd1;
      end
    end
    else begin
      tbuf_gap_cnt <= #TCQ TBUF_GAP_TIME;
    end

    tbuf_av_d <= #TCQ trn_tbuf_av;
  end
end


//----------------------------------------------------------------------------//
// THROTTLE REASON: Block needs to send a CFG response                        //
//   - When to throttle: trn_tcfg_req and user_tcfg_gnt asserted              //
//   - When to stop: after trn_tdst_rdy transitions to unasserted             //
//                                                                            //
// If the block needs to send a response to a CFG packet, this will cause     //
// the subsequent deassertion of trn_tdst_rdy. When the user design permits,  //
// grant permission to the block to service request and throttle the user.    //
//----------------------------------------------------------------------------//
assign tcfg_req_trig = trn_tcfg_req && reg_tcfg_gnt;
assign tcfg_req_exit = (tcfg_req_cnt == 2'd0) && !trn_tdst_rdy_d &&
                                                                   trn_tdst_rdy;
always @(posedge user_clk) begin
  if(user_rst) begin
    tcfg_req_thrtl   <= #TCQ 1'b0;
    trn_tcfg_req_d   <= #TCQ 1'b0;
    trn_tdst_rdy_d   <= #TCQ 1'b1;
    reg_tcfg_gnt     <= #TCQ 1'b0;
    tcfg_req_cnt     <= #TCQ 2'd0;
    tcfg_gnt_pending <= #TCQ 1'b0;
  end
  else begin
    if(tcfg_req_trig) begin
      tcfg_req_thrtl <= #TCQ 1'b1;
    end
    else if(tcfg_req_exit) begin
      tcfg_req_thrtl <= #TCQ 1'b0;
    end

    // We need to wait the appropriate amount of time for the tcfg_gnt to
    // "sink in" to the PCIe block. After that, we know that the PCIe block will
    // not reassert trn_tdst_rdy until the CFG request has been serviced. If a
    // new request is being service (tcfg_gnt_log == 1), then reset the timer.
    if((trn_tcfg_req && !trn_tcfg_req_d) || tcfg_gnt_pending) begin
      tcfg_req_cnt <= #TCQ TCFG_LATENCY_TIME;
    end
    else begin
      if(tcfg_req_cnt > 0) begin
        tcfg_req_cnt <= #TCQ tcfg_req_cnt - 2'd1;
      end
    end

    // Make sure tcfg_gnt_log pulses once for one clock cycle for every
    // cfg packet request.
    if(trn_tcfg_req && !trn_tcfg_req_d) begin
      tcfg_gnt_pending <= #TCQ 1'b1;
    end
    else if(tcfg_gnt_log) begin
      tcfg_gnt_pending <= #TCQ 1'b0;
    end

    trn_tcfg_req_d <= #TCQ trn_tcfg_req;
    trn_tdst_rdy_d <= #TCQ trn_tdst_rdy;
    reg_tcfg_gnt   <= #TCQ user_tcfg_gnt;
  end
end


//----------------------------------------------------------------------------//
// THROTTLE REASON: Block needs to transition to low power state PPM L1       //
//   - When to throttle: appropriate low power state signal asserted          //
//     (architecture dependent)                                               //
//   - When to stop: cfg_pcie_link_state goes to proper value (C_ROOT_PORT    //
//     dependent)                                                             //
//                                                                            //
// If the block needs to transition to PM state PPM L1, we need to finish     //
// up what we're doing and throttle immediately.                              //
//----------------------------------------------------------------------------//
generate
  // PPM L1 signals for 7 Series in RC mode
  if((C_FAMILY == "X7") && (C_ROOT_PORT == "TRUE")) begin : x7_L1_thrtl_rp
    assign ppm_L1_trig = (cfg_pcie_link_state_d == LINKSTATE_L0) &&
                           (cfg_pcie_link_state == LINKSTATE_PPM_L1_TRANS);
    assign ppm_L1_exit = cfg_pcie_link_state == LINKSTATE_PPM_L1;
  end

  // PPM L1 signals for 7 Series in EP mode
  else if((C_FAMILY == "X7") && (C_ROOT_PORT == "FALSE")) begin : x7_L1_thrtl_ep
    assign ppm_L1_trig = (cfg_pcie_link_state_d == LINKSTATE_L0) &&
                           (cfg_pcie_link_state == LINKSTATE_PPM_L1_TRANS);
    assign ppm_L1_exit = cfg_pcie_link_state == LINKSTATE_L0;
  end

  // PPM L1 signals for V6 in RC mode
  else if((C_FAMILY == "V6") && (C_ROOT_PORT == "TRUE")) begin : v6_L1_thrtl_rp
    assign ppm_L1_trig = (trn_rdllp_data[31:24] == PM_ENTER_L1) &&
                                      trn_rdllp_src_rdy && !trn_rdllp_src_rdy_d;
    assign ppm_L1_exit = cfg_pcie_link_state == LINKSTATE_PPM_L1;
  end

  // PPM L1 signals for V6 in EP mode
  else if((C_FAMILY == "V6") && (C_ROOT_PORT == "FALSE")) begin : v6_L1_thrtl_ep
    assign ppm_L1_trig = (cfg_pmcsr_powerstate != POWERSTATE_D0);
    assign ppm_L1_exit = cfg_pcie_link_state == LINKSTATE_L0;
  end

  // PPM L1 detection not supported for S6
  else begin : s6_L1_thrtl
    assign ppm_L1_trig = 1'b0;
    assign ppm_L1_exit = 1'b1;
  end
endgenerate

always @(posedge user_clk) begin
  if(user_rst) begin
    ppm_L1_thrtl          <= #TCQ 1'b0;
    cfg_pcie_link_state_d <= #TCQ 3'b0;
    trn_rdllp_src_rdy_d   <= #TCQ 1'b0;
  end
  else begin
    if(ppm_L1_trig) begin
      ppm_L1_thrtl <= #TCQ 1'b1;
    end
    else if(ppm_L1_exit) begin
      ppm_L1_thrtl <= #TCQ 1'b0;
    end
    cfg_pcie_link_state_d <= #TCQ cfg_pcie_link_state;
    trn_rdllp_src_rdy_d   <= #TCQ trn_rdllp_src_rdy;
  end
end


//----------------------------------------------------------------------------//
// THROTTLE REASON: Block needs to transition to low power state PPM L2/3     //
//   - When to throttle: appropriate PM signal indicates a transition to      //
//     L2/3 is pending or in progress (family and role dependent)             //
//   - When to stop: never (the only path out of L2/3 is a full reset)        //
//                                                                            //
// If the block needs to transition to PM state PPM L2/3, we need to finish   //
// up what we're doing and throttle when the user gives permission.           //
//----------------------------------------------------------------------------//
generate
  // PPM L2/3 signals for 7 Series in RC mode
  if((C_FAMILY == "X7") && (C_ROOT_PORT == "TRUE")) begin : x7_L23_thrtl_rp
    assign ppm_L23_trig = (cfg_pcie_link_state_d == LINKSTATE_PPM_L23R_TRANS);
    assign wire_to_turnoff = 1'b0;
  end

  // PPM L2/3 signals for V6 in RC mode
  else if((C_FAMILY == "V6") && (C_ROOT_PORT == "TRUE")) begin : v6_L23_thrtl_rp
    assign ppm_L23_trig = cfg_pm_send_pme_to;
    assign wire_to_turnoff = 1'b0;
  end

  // PPM L2/3 signals in EP mode
  else begin : L23_thrtl_ep
    assign ppm_L23_trig = wire_to_turnoff && reg_turnoff_ok;

    // PPM L2/3 signals for 7 Series in EP mode
    // For 7 Series, cfg_to_turnoff pulses once when a turnoff request is
    // outstanding, so we need a "sticky" register that grabs the request.
    if(C_FAMILY == "X7") begin : x7_L23_thrtl_ep
      reg reg_to_turnoff;

      always @(posedge user_clk) begin
        if(user_rst) begin
          reg_to_turnoff <= #TCQ 1'b0;
        end
        else begin
          if(cfg_to_turnoff) begin
            reg_to_turnoff <= #TCQ 1'b1;
          end
        end
      end

      assign wire_to_turnoff = reg_to_turnoff;
    end

    // PPM L2/3 signals for V6/S6 in EP mode
    // In V6 and S6, the to_turnoff signal asserts and remains asserted until
    // turnoff_ok is asserted, so a sticky reg is not necessary.
    else begin : v6_s6_L23_thrtl_ep
      assign wire_to_turnoff = cfg_to_turnoff;
    end

    always @(posedge user_clk) begin
      if(user_rst) begin
        reg_turnoff_ok <= #TCQ 1'b0;
      end
      else begin
        reg_turnoff_ok <= #TCQ user_turnoff_ok;
      end
    end
  end
endgenerate

always @(posedge user_clk) begin
  if(user_rst) begin
    ppm_L23_thrtl   <= #TCQ 1'b0;
    cfg_turnoff_ok_pending <= #TCQ 1'b0;
  end
  else begin
    if(ppm_L23_trig) begin
      ppm_L23_thrtl <= #TCQ 1'b1;
    end

    // Make sure cfg_turnoff_ok pulses once for one clock cycle for every
    // turnoff request.
    if(ppm_L23_trig && !ppm_L23_thrtl) begin
      cfg_turnoff_ok_pending <= #TCQ 1'b1;
    end
    else if(cfg_turnoff_ok) begin
      cfg_turnoff_ok_pending <= #TCQ 1'b0;
    end
  end
end


//----------------------------------------------------------------------------//
// Create axi_thrtl_ok. This signal determines if it's OK to throttle the     //
// user design on the AXI interface. Since TREADY is registered, this signal  //
// needs to assert on the cycle ~before~ we actually intend to throttle.      //
// The only time it's OK to throttle when TVALID is asserted is on the first  //
// beat of a new packet. Therefore, assert axi_thrtl_ok if one of the         //
// is true:                                                                   //
//    1) The user is not in a packet and is not starting one                  //
//    2) The user is just finishing a packet                                  //
//    3) We're already throttled, so it's OK to continue throttling           //
//----------------------------------------------------------------------------//
always @(posedge user_clk) begin
  if(user_rst) begin
    reg_axi_in_pkt <= #TCQ 1'b0;
  end
  else begin
    if(s_axis_tx_tvalid && s_axis_tx_tlast) begin
      reg_axi_in_pkt <= #TCQ 1'b0;
    end
    else if(tready_thrtl && s_axis_tx_tvalid) begin
      reg_axi_in_pkt <= #TCQ 1'b1;
    end
  end
end

assign axi_in_pkt     = s_axis_tx_tvalid || reg_axi_in_pkt;
assign axi_pkt_ending = s_axis_tx_tvalid && s_axis_tx_tlast;
assign axi_throttled  = !tready_thrtl;
assign axi_thrtl_ok   = !axi_in_pkt || axi_pkt_ending || axi_throttled;


//----------------------------------------------------------------------------//
// Throttle CTL State Machine:                                                //
// Throttle user design when a throttle trigger (or triggers) occur.          //
// Keep user throttled until all exit criteria have been met.                 //
//----------------------------------------------------------------------------//

// Immediate throttle signal. Used to "pounce" on a throttle opportunity when
// we're seeking one
assign pre_throttle = tbuf_av_min_trig || tbuf_av_gap_trig || lnk_up_trig
                                || tcfg_req_trig || ppm_L1_trig || ppm_L23_trig;


// Registered throttle signals. Used to control throttle state machine
assign reg_throttle = tbuf_av_min_thrtl || tbuf_av_gap_thrtl || lnk_up_thrtl
                             || tcfg_req_thrtl || ppm_L1_thrtl || ppm_L23_thrtl;

assign exit_crit = !tbuf_av_min_thrtl && !tbuf_av_gap_thrtl && !lnk_up_thrtl
                          && !tcfg_req_thrtl && !ppm_L1_thrtl && !ppm_L23_thrtl;

always @(*) begin
  case(cur_state)
    // IDLE: in this state we're waiting for a trigger event to occur. As
    // soon as an event occurs and the user isn't transmitting a packet, we
    // throttle the PCIe block and the user and next state is THROTTLE.
    IDLE: begin
      if(reg_throttle && axi_thrtl_ok) begin
        // Throttle user
        tready_thrtl_mux = 1'b0;
        next_state       = THROTTLE;

        // Assert appropriate grant signal depending on the throttle type.
        if(tcfg_req_thrtl) begin
          tcfg_gnt_log   = 1'b1;   // For cfg request, grant the request
          cfg_turnoff_ok = 1'b0;   //
        end
        else if(ppm_L23_thrtl) begin
          tcfg_gnt_log   = 1'b0;   //
          cfg_turnoff_ok = 1'b1;   // For PM request, permit transition
        end
        else begin
          tcfg_gnt_log   = 1'b0;   // Otherwise do nothing
          cfg_turnoff_ok = 1'b0;   //
        end
      end

      // If there's not throttle event, do nothing
      else begin
        // Throttle user as soon as possible
        tready_thrtl_mux = !(axi_thrtl_ok && pre_throttle);
        next_state       = IDLE;

        tcfg_gnt_log     = 1'b0;
        cfg_turnoff_ok   = 1'b0;
      end
    end

    // THROTTLE: in this state the user is throttle and we're waiting for
    // exit criteria, which tells us that the throttle event is over. When
    // the exit criteria is satisfied, de-throttle the user and next state
    // is IDLE.
    THROTTLE: begin
      if(exit_crit) begin
        // Dethrottle user
        tready_thrtl_mux = !pre_throttle;
        next_state       = IDLE;
      end
      else begin
        // Throttle user
        tready_thrtl_mux = 1'b0;
        next_state       = THROTTLE;
      end

      // Assert appropriate grant signal depending on the throttle type.
      if(tcfg_req_thrtl && tcfg_gnt_pending) begin
        tcfg_gnt_log   = 1'b1;   // For cfg request, grant the request
        cfg_turnoff_ok = 1'b0;   //
      end
      else if(cfg_turnoff_ok_pending) begin
        tcfg_gnt_log   = 1'b0;   //
        cfg_turnoff_ok = 1'b1;   // For PM request, permit transition
      end
      else begin
        tcfg_gnt_log   = 1'b0;   // Otherwise do nothing
        cfg_turnoff_ok = 1'b0;   //
      end
    end

    default: begin
      tready_thrtl_mux = 1'b0;
      next_state       = IDLE;
      tcfg_gnt_log     = 1'b0;
      cfg_turnoff_ok   = 1'b0;
    end
  endcase
end

// Synchronous logic
always @(posedge user_clk) begin
  if(user_rst) begin
    // Throttle user by default until link comes up
    cur_state        <= #TCQ THROTTLE;

    reg_tlast        <= #TCQ 1'b0;

    tready_thrtl     <= #TCQ 1'b0;
  end
  else begin
    cur_state        <= #TCQ next_state;

    tready_thrtl     <= #TCQ tready_thrtl_mux && !tx_ecrc_pause;
    reg_tlast        <= #TCQ s_axis_tx_tlast;
  end
end

// For X7, the PCIe block will generate the ECRC for a packet if trn_tecrc_gen
// is asserted at SOF. In this case, the Block needs an extra data beat to
// calculate the ECRC, but only if the following conditions are met:
//  1) there is no empty DWORDS at the end of the packet
//     (i.e. packet length % C_DATA_WIDTH == 0)
//
//  2) There isn't a ECRC in the TLP already, as indicated by the TD bit in the
//     TLP header
//
// If both conditions are met, the Block will stall the TRN interface for one
// data beat after EOF. We need to predict this stall and preemptively stall the
// User for one beat.
generate
  if(C_FAMILY == "X7") begin : ecrc_pause_enabled
    wire        tx_ecrc_pkt;
    reg         reg_tx_ecrc_pkt;

    wire  [1:0] packet_fmt;
    wire        packet_td;
    wire  [2:0] header_len;
    wire  [9:0] payload_len;
    wire [13:0] packet_len;
    wire        pause_needed;

    // Grab necessary packet fields
    assign packet_fmt  = s_axis_tx_tdata[30:29];
    assign packet_td   = s_axis_tx_tdata[15];

    // Calculate total packet length
    assign header_len  = packet_fmt[0] ? 3'd4 : 3'd3;
    assign payload_len = packet_fmt[1] ? s_axis_tx_tdata[9:0] : 10'h0;
    assign packet_len  = {10'h000, header_len} + {4'h0, payload_len};


    // Determine if packet a ECRC pause is needed
    if(C_DATA_WIDTH == 128) begin : packet_len_check_128
      assign pause_needed = (packet_len[1:0] == 2'b00) && !packet_td;
    end
    else begin : packet_len_check_64
      assign pause_needed = (packet_len[0] == 1'b0) && !packet_td;
    end


    // Create flag to alert TX pipeline to insert a stall
    assign tx_ecrc_pkt = s_axis_tx_tuser[0] && pause_needed &&
                            tready_thrtl && s_axis_tx_tvalid && !reg_axi_in_pkt;

    always @(posedge user_clk) begin
      if(user_rst) begin
        reg_tx_ecrc_pkt <= #TCQ 1'b0;
      end
      else begin
        if(tx_ecrc_pkt && !s_axis_tx_tlast) begin
          reg_tx_ecrc_pkt <= #TCQ 1'b1;
        end
        else if(tready_thrtl && s_axis_tx_tvalid && s_axis_tx_tlast) begin
          reg_tx_ecrc_pkt <= #TCQ 1'b0;
        end
      end
    end


    // Insert the stall now
    assign tx_ecrc_pause = ((tx_ecrc_pkt || reg_tx_ecrc_pkt) &&
                           s_axis_tx_tlast && s_axis_tx_tvalid && tready_thrtl);

  end
  else begin : ecrc_pause_disabled
    assign tx_ecrc_pause = 1'b0;
  end
endgenerate


// Logic for 128-bit single cycle bug fix.
// This tcfg_gnt pipeline addresses an issue with 128-bit V6 designs where a
// single cycle packet transmitted simultaneously with an assertion of tcfg_gnt
// from AXI Basic causes the packet to be dropped. The packet drop occurs
// because the 128-bit shim doesn't know about the tcfg_req/gnt, and therefor
// isn't expecting trn_tdst_rdy to go low. Since the 128-bit shim does throttle
// prediction just as we do, it ignores the value of trn_tdst_rdy, and
// ultimately drops the packet when transmitting the packet to the block.
generate
  if(C_DATA_WIDTH == 128 && C_FAMILY == "V6") begin : tcfg_gnt_pipeline
    genvar stage;
    reg tcfg_gnt_pipe [TCFG_GNT_PIPE_STAGES:0];

    // Create a configurable depth FF delay pipeline
    for(stage = 0; stage < TCFG_GNT_PIPE_STAGES; stage = stage + 1)
    begin : tcfg_gnt_pipeline_stage

      always @(posedge user_clk) begin
        if(user_rst) begin
          tcfg_gnt_pipe[stage] <= #TCQ 1'b0;
        end
        else begin
          // For stage 0, insert the actual tcfg_gnt signal from logic
          if(stage == 0) begin
            tcfg_gnt_pipe[stage] <= #TCQ tcfg_gnt_log;
          end

          // For stages 1+, chain together
          else begin
            tcfg_gnt_pipe[stage] <= #TCQ tcfg_gnt_pipe[stage - 1];
          end
        end
      end

      // tcfg_gnt output to block assigned the last pipeline stage
      assign trn_tcfg_gnt = tcfg_gnt_pipe[TCFG_GNT_PIPE_STAGES-1];
    end
  end
  else begin : tcfg_gnt_no_pipeline

    // For all other architectures, no pipeline delay needed for tcfg_gnt
    assign trn_tcfg_gnt = tcfg_gnt_log;
  end
endgenerate

endmodule
