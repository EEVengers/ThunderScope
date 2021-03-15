// -- (c) Copyright 2012 Xilinx, Inc. All rights reserved.
// --
// -- This file contains confidential and proprietary information
// -- of Xilinx, Inc. and is protected under U.S. and 
// -- international copyright and other intellectual property
// -- laws.
// --
// -- DISCLAIMER
// -- This disclaimer is not a license and does not grant any
// -- rights to the materials distributed herewith. Except as
// -- otherwise provided in a valid license issued to you by
// -- Xilinx, and to the maximum extent permitted by applicable
// -- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// -- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// -- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// -- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// -- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// -- (2) Xilinx shall not be liable (whether in contract or tort,
// -- including negligence, or under any other theory of
// -- liability) for any loss or damage of any kind or nature
// -- related to, arising under or in connection with these
// -- materials, including for any direct, or any indirect,
// -- special, incidental, or consequential loss or damage
// -- (including loss of data, profits, goodwill, or any type of
// -- loss or damage suffered as a result of any action brought
// -- by a third party) even if such damage or loss was
// -- reasonably foreseeable or Xilinx had been advised of the
// -- possibility of the same.
// --
// -- CRITICAL APPLICATIONS
// -- Xilinx products are not designed or intended to be fail-
// -- safe, or for use in any application requiring fail-safe
// -- performance, such as life-support or safety devices or
// -- systems, Class III medical devices, nuclear facilities,
// -- applications related to the deployment of airbags, or any
// -- other applications that could lead to death, personal
// -- injury, or severe property or environmental damage
// -- (individually and collectively, "Critical
// -- Applications"). Customer assumes the sole risk and
// -- liability of any use of Xilinx products in Critical
// -- Applications, subject only to applicable laws and
// -- regulations governing limitations on product liability.
// --
// -- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// -- PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
//
// axis_subset_converter
//   Converts signal sets and id/dest dwidth based on default tie off rules.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axis_subset_converter
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

module axis_subset_converter_v1_1_21_core #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY           = "virtex7",
   parameter integer C_AXIS_TDATA_WIDTH = 32,
   parameter integer C_S_AXIS_TID_WIDTH   = 1,
   parameter integer C_S_AXIS_TDEST_WIDTH = 1,
   parameter integer C_AXIS_TUSER_WIDTH = 1,
   parameter [31:0]  C_S_AXIS_SIGNAL_SET  = 32'hFF, 
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present (Required)
   //   [1] => TDATA present (Required, used to calculate ratios)
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present (Required if TLAST, TID,
   //            TDEST present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   parameter integer C_M_AXIS_TID_WIDTH   = 1,
   parameter integer C_M_AXIS_TDEST_WIDTH = 1,
   parameter [31:0]  C_M_AXIS_SIGNAL_SET  = 32'hFF,
   parameter integer C_DEFAULT_TLAST = 0
   )
  (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire aclk,
   input wire aresetn,
   input wire aclken,

   // Slave side
   input  wire                              s_axis_tvalid,
   output wire                              s_axis_tready,
   input  wire [C_AXIS_TDATA_WIDTH-1:0]     s_axis_tdata,
   input  wire [C_AXIS_TDATA_WIDTH/8-1:0]   s_axis_tstrb,
   input  wire [C_AXIS_TDATA_WIDTH/8-1:0]   s_axis_tkeep,
   input  wire                              s_axis_tlast,
   input  wire [C_S_AXIS_TID_WIDTH-1:0]     s_axis_tid,
   input  wire [C_S_AXIS_TDEST_WIDTH-1:0]   s_axis_tdest,
   input  wire [C_AXIS_TUSER_WIDTH-1:0]     s_axis_tuser,

   // Master side
   output wire                              m_axis_tvalid,
   input  wire                              m_axis_tready,
   output wire [C_AXIS_TDATA_WIDTH-1:0]     m_axis_tdata,
   output wire [C_AXIS_TDATA_WIDTH/8-1:0]   m_axis_tstrb,
   output wire [C_AXIS_TDATA_WIDTH/8-1:0]   m_axis_tkeep,
   output wire                              m_axis_tlast,
   output wire [C_M_AXIS_TID_WIDTH-1:0]     m_axis_tid,
   output wire [C_M_AXIS_TDEST_WIDTH-1:0]   m_axis_tdest,
   output wire [C_AXIS_TUSER_WIDTH-1:0]     m_axis_tuser,

   // Status Signals
   output wire                              transfer_dropped,
   output wire                              sparse_tkeep_removed
   // SPARSE_TKEEP_REMOVED outputs a 1 if TKEEP is being removed and 
   // a conversion process detects a TKEEP that is not all HIGH
   );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
`include "axis_infrastructure_v1_1_0.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////

// Calculate if signal is added or removed. tready is in opposite direction,
// it's meaning is reversed.
localparam [31:0] P_SIGNAL_SET_XOR = C_S_AXIS_SIGNAL_SET ^ C_M_AXIS_SIGNAL_SET;
localparam [31:0] P_SIGNAL_SET_ADD = P_SIGNAL_SET_XOR & {C_M_AXIS_SIGNAL_SET[31:1], C_S_AXIS_SIGNAL_SET[0]};
localparam [31:0] P_SIGNAL_SET_REM = P_SIGNAL_SET_XOR & {C_S_AXIS_SIGNAL_SET[31:1], C_M_AXIS_SIGNAL_SET[0]};
// TODO: possible optimization calculate for C_DEFAULT_TLAST-1
localparam integer P_TLAST_CNTR_WIDTH = (C_DEFAULT_TLAST > 1) ? f_clogb2(C_DEFAULT_TLAST) : 1;
////////////////////////////////////////////////////////////////////////////////
// DRCs
////////////////////////////////////////////////////////////////////////////////
// synthesis translate_off
// synthesis translate_on
////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
wire                              default_tready;
wire [C_AXIS_TDATA_WIDTH-1:0]     default_tdata;
wire [C_AXIS_TDATA_WIDTH/8-1:0]   default_tstrb;
wire [C_AXIS_TDATA_WIDTH/8-1:0]   default_tkeep;
wire                              default_tlast;
wire [C_M_AXIS_TID_WIDTH-1:0]     default_tid;
wire [C_M_AXIS_TDEST_WIDTH-1:0]   default_tdest;
wire [C_AXIS_TUSER_WIDTH-1:0]     default_tuser;

wire                              pulsed_tlast_i;
wire                              sparse_tkeep;

wire                              internal_m_axis_tready;
wire                              internal_m_axis_tvalid;
wire                              internal_s_axis_tready;
wire [C_AXIS_TDATA_WIDTH-1:0]     internal_m_axis_tdata;
wire [C_AXIS_TDATA_WIDTH/8-1:0]   internal_m_axis_tstrb;
wire [C_AXIS_TDATA_WIDTH/8-1:0]   internal_m_axis_tkeep;
wire                              internal_m_axis_tlast;
wire [C_M_AXIS_TID_WIDTH-1:0]     internal_m_axis_tid;
wire [C_M_AXIS_TDEST_WIDTH-1:0]   internal_m_axis_tdest;
wire [C_AXIS_TUSER_WIDTH-1:0]     internal_m_axis_tuser;

assign internal_m_axis_tready = (C_M_AXIS_SIGNAL_SET[0] == 0) ? 1'b1 : m_axis_tready;

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////
// Assign default values based on AMBA 4 AXI4-Stream Protocol Specification v1.0

// 3.1.1 Optional TREADY
assign default_tready = 1'b1;

// 3.1.5 Optional TDATA (No default value specified, assign 0)
assign default_tdata = {C_AXIS_TDATA_WIDTH{1'b0}};

// 3.1.2 Optional TKEEP and TSTRB
// assign TSTRB from M_AXIS_TKEEP if defined, else assign from S_AXIS_TKEEP if
// assigned, else assign all bits HIGH.

assign default_tstrb = C_M_AXIS_SIGNAL_SET[G_INDX_SS_TKEEP] ? internal_m_axis_tkeep :
                       C_S_AXIS_SIGNAL_SET[G_INDX_SS_TKEEP] ? s_axis_tkeep :
                       {C_AXIS_TDATA_WIDTH/8{1'b1}};
// Default value of tkeep is always all bits HIGH.
assign default_tkeep = {C_AXIS_TDATA_WIDTH/8{1'b1}};

// 3.1.3 Optional TLAST 
assign default_tlast = (C_DEFAULT_TLAST == 0) ? 1'b0 : 
                       (C_DEFAULT_TLAST == 1) ? 1'b1 : 
                       pulsed_tlast_i;
generate
if (C_DEFAULT_TLAST > 1) begin : gen_pulsed_tlast_cntr
  wire                            pulsed_tlast_ns;
  reg  [P_TLAST_CNTR_WIDTH-1:0]   pulsed_tlast_cntr= {P_TLAST_CNTR_WIDTH{1'b0}};
  wire [P_TLAST_CNTR_WIDTH-1:0]   pulsed_tlast_cntr_ns;
 
  assign pulsed_tlast_cntr_ns = pulsed_tlast_i ? {P_TLAST_CNTR_WIDTH{1'b0}} : pulsed_tlast_cntr + 1'b1;

  always @(posedge aclk) begin
    if (~aresetn) begin
      pulsed_tlast_cntr <= {P_TLAST_CNTR_WIDTH{1'b0}};
    end
    else if (aclken) begin
      pulsed_tlast_cntr <= s_axis_tvalid & s_axis_tready ? pulsed_tlast_cntr_ns : pulsed_tlast_cntr;
    end
  end

  assign pulsed_tlast_i = (pulsed_tlast_cntr == (C_DEFAULT_TLAST - 1)) ? 1'b1 : 1'b0;

end else begin : gen_no_pulsed_tlast_cntr
  assign pulsed_tlast_i = 1'b0;
end
/////////////////////////////////////////////////////////////////////////////////////////////////
//When the SI does *not* have TREADY and the MI does, beats can be dropped.
// In order not to violate the READY/VALID handshake the register slice is inserted
if (P_SIGNAL_SET_REM[G_INDX_SS_TREADY]) begin : gen_regslice
  axis_register_slice_v1_1_21_axis_register_slice #(
    .C_FAMILY           ( C_FAMILY               ) ,
    .C_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH     ) ,
    .C_AXIS_TID_WIDTH   ( C_M_AXIS_TID_WIDTH     ) ,
    .C_AXIS_TDEST_WIDTH ( C_M_AXIS_TDEST_WIDTH   ) ,
    .C_AXIS_TUSER_WIDTH ( C_AXIS_TUSER_WIDTH     ) ,
    .C_AXIS_SIGNAL_SET  ( C_M_AXIS_SIGNAL_SET    ) ,
    .C_REG_CONFIG       ( 1                      )
  ) REG(
    .aclk          ( aclk          ) ,
    .aclk2x        ( 1'b1          ) ,
    .aclken        ( aclken        ) ,
    .aresetn       ( aresetn       ) ,
    .s_axis_tvalid ( internal_m_axis_tvalid ) ,
    .s_axis_tready ( internal_s_axis_tready ) ,
    .s_axis_tdata  ( internal_m_axis_tdata  ) ,
    .s_axis_tstrb  ( internal_m_axis_tstrb  ) ,
    .s_axis_tkeep  ( internal_m_axis_tkeep  ) ,
    .s_axis_tlast  ( internal_m_axis_tlast  ) ,
    .s_axis_tid    ( internal_m_axis_tid    ) ,
    .s_axis_tdest  ( internal_m_axis_tdest  ) ,
    .s_axis_tuser  ( internal_m_axis_tuser  ) ,
    .m_axis_tvalid ( m_axis_tvalid  ) ,
    .m_axis_tready ( internal_m_axis_tready ) ,
    .m_axis_tdata  ( m_axis_tdata   ) ,
    .m_axis_tstrb  ( m_axis_tstrb   ) ,
    .m_axis_tkeep  ( m_axis_tkeep   ) ,
    .m_axis_tlast  ( m_axis_tlast   ) ,
    .m_axis_tid    ( m_axis_tid     ) ,
    .m_axis_tdest  ( m_axis_tdest   ) ,
    .m_axis_tuser  ( m_axis_tuser   ) 
  );

  assign transfer_dropped = (s_axis_tvalid & !internal_s_axis_tready);
  assign s_axis_tready = internal_s_axis_tready;
end else begin : gen_no_regslice
  assign m_axis_tvalid = internal_m_axis_tvalid;
  assign m_axis_tdata  = internal_m_axis_tdata ;
  assign m_axis_tstrb  = internal_m_axis_tstrb ;
  assign m_axis_tkeep  = internal_m_axis_tkeep ;
  assign m_axis_tlast  = internal_m_axis_tlast ;
  assign m_axis_tid    = internal_m_axis_tid   ;
  assign m_axis_tdest  = internal_m_axis_tdest ;
  assign m_axis_tuser  = internal_m_axis_tuser ;
  assign transfer_dropped = 1'b0;
  assign s_axis_tready = internal_m_axis_tready;
end
endgenerate

// 3.1.4 Optional TID, TDEST, and TUSER
// * A slave with additional TID, TDEST, and TUSER inputs must have all bits
// fixed LOW.
assign default_tid = {C_M_AXIS_TID_WIDTH{1'b0}};
assign default_tdest = {C_M_AXIS_TDEST_WIDTH{1'b0}};
assign default_tuser = {C_AXIS_TUSER_WIDTH{1'b0}};

assign sparse_tkeep = m_axis_tvalid & internal_m_axis_tready ? ~(&internal_m_axis_tkeep) : 1'b0;
// TVALID required and always passed through.
assign internal_m_axis_tvalid = s_axis_tvalid; 
assign internal_m_axis_tdata  = P_SIGNAL_SET_ADD[G_INDX_SS_TDATA] ? default_tdata : s_axis_tdata;
assign internal_m_axis_tstrb  = P_SIGNAL_SET_ADD[G_INDX_SS_TSTRB] ? default_tstrb : s_axis_tstrb;
assign internal_m_axis_tkeep  = P_SIGNAL_SET_ADD[G_INDX_SS_TKEEP] ? default_tkeep : s_axis_tkeep;
assign internal_m_axis_tlast  = P_SIGNAL_SET_ADD[G_INDX_SS_TLAST] ? default_tlast : s_axis_tlast;
assign internal_m_axis_tid    = P_SIGNAL_SET_ADD[G_INDX_SS_TID]   ? default_tid   : s_axis_tid   | default_tid;
assign internal_m_axis_tdest  = P_SIGNAL_SET_ADD[G_INDX_SS_TDEST] ? default_tdest : s_axis_tdest | default_tdest;
assign internal_m_axis_tuser  = P_SIGNAL_SET_ADD[G_INDX_SS_TUSER] ? default_tuser : s_axis_tuser;

assign sparse_tkeep_removed = P_SIGNAL_SET_REM[G_INDX_SS_TKEEP] ? sparse_tkeep : 1'b0;

endmodule // axis_subset_converter

`default_nettype wire


