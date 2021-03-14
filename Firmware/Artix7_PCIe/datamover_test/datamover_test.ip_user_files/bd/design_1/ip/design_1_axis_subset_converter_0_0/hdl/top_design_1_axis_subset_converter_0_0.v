
// -- (c) Copyright 2012 - 2013 Xilinx, Inc. All rights reserved.
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
//   Remap capability allows subset of TDATA and TUSER signals to be transfered
//   from SI to MI.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

module top_design_1_axis_subset_converter_0_0 #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
parameter         C_FAMILY           = "virtex7",
parameter integer C_S_AXIS_TDATA_WIDTH = 32,
parameter integer C_S_AXIS_TID_WIDTH   = 1,
parameter integer C_S_AXIS_TDEST_WIDTH = 1,
parameter integer C_S_AXIS_TUSER_WIDTH = 1,
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
parameter integer C_M_AXIS_TDATA_WIDTH = 32,
parameter integer C_M_AXIS_TID_WIDTH   = 1,
parameter integer C_M_AXIS_TDEST_WIDTH = 1,
parameter [31:0]  C_M_AXIS_SIGNAL_SET  = 32'hFF,
parameter integer C_M_AXIS_TUSER_WIDTH = 1,
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
input  wire [C_S_AXIS_TDATA_WIDTH-1:0]   s_axis_tdata,
input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] s_axis_tstrb,
input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] s_axis_tkeep,
input  wire                              s_axis_tlast,
input  wire [C_S_AXIS_TID_WIDTH-1:0]     s_axis_tid,
input  wire [C_S_AXIS_TDEST_WIDTH-1:0]   s_axis_tdest,
input  wire [C_S_AXIS_TUSER_WIDTH-1:0]   s_axis_tuser,

// Master side
output wire                              m_axis_tvalid,
input  wire                              m_axis_tready,
output wire [C_M_AXIS_TDATA_WIDTH-1:0]   m_axis_tdata,
output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] m_axis_tstrb,
output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] m_axis_tkeep,
output wire                              m_axis_tlast,
output wire [C_M_AXIS_TID_WIDTH-1:0]     m_axis_tid,
output wire [C_M_AXIS_TDEST_WIDTH-1:0]   m_axis_tdest,
output wire [C_M_AXIS_TUSER_WIDTH-1:0]   m_axis_tuser,

// Status Signals
output wire                              transfer_dropped,
output wire                              sparse_tkeep_removed
// SPARSE_TKEEP_REMOVED outputs a 1 if TKEEP is being removed and
// a conversion process detects a TKEEP that is not all HIGH
);

`include "axis_infrastructure_v1_1_0.vh"

wire [C_S_AXIS_TDATA_WIDTH-1:0]    m_axis_tdata_i;
wire [C_S_AXIS_TUSER_WIDTH-1:0]    m_axis_tuser_i;
wire [C_S_AXIS_TID_WIDTH-1:0]      m_axis_tid_i;
wire [C_S_AXIS_TDEST_WIDTH-1:0]    m_axis_tdest_i;
wire [C_S_AXIS_TDATA_WIDTH/8-1:0]  m_axis_tkeep_i;
wire [C_S_AXIS_TDATA_WIDTH/8-1:0]  m_axis_tstrb_i;
wire m_axis_tlast_i;

axis_subset_converter_v1_1_21_core #(
.C_FAMILY             ( C_FAMILY             ),
.C_AXIS_TDATA_WIDTH   ( C_S_AXIS_TDATA_WIDTH ),
.C_S_AXIS_TID_WIDTH   ( C_S_AXIS_TID_WIDTH   ),
.C_M_AXIS_TID_WIDTH   ( C_S_AXIS_TID_WIDTH   ),
.C_S_AXIS_TDEST_WIDTH ( C_S_AXIS_TDEST_WIDTH ),
.C_M_AXIS_TDEST_WIDTH ( C_S_AXIS_TDEST_WIDTH ),
.C_AXIS_TUSER_WIDTH   ( C_S_AXIS_TUSER_WIDTH ),
.C_S_AXIS_SIGNAL_SET  ( C_S_AXIS_SIGNAL_SET  ),
.C_M_AXIS_SIGNAL_SET  ( C_M_AXIS_SIGNAL_SET  ),
.C_DEFAULT_TLAST      ( C_DEFAULT_TLAST      )
)
axis_subset_converter_v1_1_21_core (
.aclk                 (aclk                 ),
.aresetn              (aresetn              ),
.aclken               (aclken               ),
.s_axis_tvalid        (s_axis_tvalid        ),
.s_axis_tready        (s_axis_tready        ),
.s_axis_tdata         (s_axis_tdata         ),
.s_axis_tstrb         (s_axis_tstrb         ),
.s_axis_tkeep         (s_axis_tkeep         ),
.s_axis_tlast         (s_axis_tlast         ),
.s_axis_tid           (s_axis_tid           ),
.s_axis_tdest         (s_axis_tdest         ),
.s_axis_tuser         (s_axis_tuser         ),
.m_axis_tvalid        (m_axis_tvalid        ),
.m_axis_tready        (m_axis_tready        ),
.m_axis_tdata         (m_axis_tdata_i       ),
.m_axis_tstrb         (m_axis_tstrb_i       ),
.m_axis_tkeep         (m_axis_tkeep_i       ),
.m_axis_tlast         (m_axis_tlast_i       ),
.m_axis_tid           (m_axis_tid_i         ),
.m_axis_tdest         (m_axis_tdest_i       ),
.m_axis_tuser         (m_axis_tuser_i       ),
.transfer_dropped     (transfer_dropped     ),
.sparse_tkeep_removed (sparse_tkeep_removed )
);

tdata_design_1_axis_subset_converter_0_0 #(
.C_S_AXIS_TDATA_WIDTH ( C_S_AXIS_TDATA_WIDTH   ) ,
.C_S_AXIS_TUSER_WIDTH ( C_S_AXIS_TUSER_WIDTH   ) ,
.C_S_AXIS_TID_WIDTH   ( C_S_AXIS_TID_WIDTH     ) ,
.C_S_AXIS_TDEST_WIDTH ( C_S_AXIS_TDEST_WIDTH   ) ,
.C_M_AXIS_TDATA_WIDTH ( C_M_AXIS_TDATA_WIDTH   )
)
tdata0 (
.tdata     ( m_axis_tdata_i ),
.tuser     ( m_axis_tuser_i ),
.tid       ( m_axis_tid_i  [C_S_AXIS_TID_WIDTH-1:0     ] ),
.tdest     ( m_axis_tdest_i[C_S_AXIS_TDEST_WIDTH-1:0   ] ),
.tstrb     ( m_axis_tstrb_i ),
.tkeep     ( m_axis_tkeep_i ),
.tlast     ( m_axis_tlast_i ),
.tdata_out ( m_axis_tdata   )
);

tuser_design_1_axis_subset_converter_0_0 #(
.C_S_AXIS_TDATA_WIDTH ( C_S_AXIS_TDATA_WIDTH   ) ,
.C_S_AXIS_TUSER_WIDTH ( C_S_AXIS_TUSER_WIDTH   ) ,
.C_S_AXIS_TID_WIDTH   ( C_S_AXIS_TID_WIDTH     ) ,
.C_S_AXIS_TDEST_WIDTH ( C_S_AXIS_TDEST_WIDTH   ) ,
.C_M_AXIS_TUSER_WIDTH ( C_M_AXIS_TUSER_WIDTH   )
)
tuser0 (
.tdata     ( m_axis_tdata_i ),
.tuser     ( m_axis_tuser_i ),
.tid       ( m_axis_tid_i  [C_S_AXIS_TID_WIDTH-1:0     ] ),
.tdest     ( m_axis_tdest_i[C_S_AXIS_TDEST_WIDTH-1:0   ] ),
.tstrb     ( m_axis_tstrb_i ),
.tkeep     ( m_axis_tkeep_i ),
.tlast     ( m_axis_tlast_i ),
.tuser_out ( m_axis_tuser   )
);

tid_design_1_axis_subset_converter_0_0 #(
.C_S_AXIS_TDATA_WIDTH ( C_S_AXIS_TDATA_WIDTH   ) ,
.C_S_AXIS_TUSER_WIDTH ( C_S_AXIS_TUSER_WIDTH   ) ,
.C_S_AXIS_TID_WIDTH   ( C_S_AXIS_TID_WIDTH     ) ,
.C_S_AXIS_TDEST_WIDTH ( C_S_AXIS_TDEST_WIDTH   ) ,
.C_M_AXIS_TID_WIDTH   ( C_M_AXIS_TID_WIDTH   )
)
tid0 (
.tdata     ( m_axis_tdata_i                              ),
.tuser     ( m_axis_tuser_i                              ),
.tid       ( m_axis_tid_i  [C_S_AXIS_TID_WIDTH-1:0     ] ),
.tdest     ( m_axis_tdest_i[C_S_AXIS_TDEST_WIDTH-1:0   ] ),
.tstrb     ( m_axis_tstrb_i ),
.tkeep     ( m_axis_tkeep_i ),
.tlast     ( m_axis_tlast_i                              ),
.tid_out   ( m_axis_tid                                  )
);

tdest_design_1_axis_subset_converter_0_0 #(
.C_S_AXIS_TDATA_WIDTH ( C_S_AXIS_TDATA_WIDTH   ) ,
.C_S_AXIS_TUSER_WIDTH ( C_S_AXIS_TUSER_WIDTH   ) ,
.C_S_AXIS_TID_WIDTH   ( C_S_AXIS_TID_WIDTH     ) ,
.C_S_AXIS_TDEST_WIDTH ( C_S_AXIS_TDEST_WIDTH   ) ,
.C_M_AXIS_TDEST_WIDTH ( C_M_AXIS_TDEST_WIDTH   )
)
tdest0 (
.tdata     ( m_axis_tdata_i ),
.tuser     ( m_axis_tuser_i ),
.tid       ( m_axis_tid_i  [C_S_AXIS_TID_WIDTH-1:0     ] ),
.tdest     ( m_axis_tdest_i[C_S_AXIS_TDEST_WIDTH-1:0   ] ),
.tstrb     ( m_axis_tstrb_i ),
.tkeep     ( m_axis_tkeep_i ),
.tlast     ( m_axis_tlast_i ),
.tdest_out ( m_axis_tdest   )
);

wire [(C_S_AXIS_TDATA_WIDTH/8)-1:0] m_axis_tkeep_shunt;
assign m_axis_tkeep_shunt = (C_S_AXIS_SIGNAL_SET[G_INDX_SS_TKEEP] && !C_S_AXIS_SIGNAL_SET[G_INDX_SS_TSTRB] && C_M_AXIS_SIGNAL_SET[G_INDX_SS_TSTRB]) ? m_axis_tstrb_i : m_axis_tkeep_i;

tstrb_design_1_axis_subset_converter_0_0 #(
.C_S_AXIS_TDATA_WIDTH ( C_S_AXIS_TDATA_WIDTH   ) ,
.C_S_AXIS_TUSER_WIDTH ( C_S_AXIS_TUSER_WIDTH   ) ,
.C_S_AXIS_TID_WIDTH   ( C_S_AXIS_TID_WIDTH     ) ,
.C_S_AXIS_TDEST_WIDTH ( C_S_AXIS_TDEST_WIDTH   ) ,
.C_M_AXIS_TDATA_WIDTH ( C_M_AXIS_TDATA_WIDTH   )
)
tstrb0 (
.tdata     ( m_axis_tdata_i ),
.tuser     ( m_axis_tuser_i ),
.tid       ( m_axis_tid_i  [C_S_AXIS_TID_WIDTH-1:0     ] ),
.tdest     ( m_axis_tdest_i[C_S_AXIS_TDEST_WIDTH-1:0   ] ),
.tstrb     ( m_axis_tstrb_i ),
.tkeep     ( m_axis_tkeep_shunt ),
.tlast     ( m_axis_tlast_i ),
.tstrb_out ( m_axis_tstrb   )
);


tkeep_design_1_axis_subset_converter_0_0 #(
.C_S_AXIS_TDATA_WIDTH ( C_S_AXIS_TDATA_WIDTH   ) ,
.C_S_AXIS_TUSER_WIDTH ( C_S_AXIS_TUSER_WIDTH   ) ,
.C_S_AXIS_TID_WIDTH   ( C_S_AXIS_TID_WIDTH     ) ,
.C_S_AXIS_TDEST_WIDTH ( C_S_AXIS_TDEST_WIDTH   ) ,
.C_M_AXIS_TDATA_WIDTH ( C_M_AXIS_TDATA_WIDTH   )
)
tkeep0 (
.tdata     ( m_axis_tdata_i ),
.tuser     ( m_axis_tuser_i ),
.tid       ( m_axis_tid_i  [C_S_AXIS_TID_WIDTH-1:0     ] ),
.tdest     ( m_axis_tdest_i[C_S_AXIS_TDEST_WIDTH-1:0   ] ),
.tstrb     ( m_axis_tstrb_i ),
.tkeep     ( m_axis_tkeep_i ),
.tlast     ( m_axis_tlast_i ),
.tkeep_out ( m_axis_tkeep   )
);

tlast_design_1_axis_subset_converter_0_0 #(
.C_S_AXIS_TDATA_WIDTH ( C_S_AXIS_TDATA_WIDTH   ) ,
.C_S_AXIS_TUSER_WIDTH ( C_S_AXIS_TUSER_WIDTH   ) ,
.C_S_AXIS_TID_WIDTH   ( C_S_AXIS_TID_WIDTH     ) ,
.C_S_AXIS_TDEST_WIDTH ( C_S_AXIS_TDEST_WIDTH   )
)
tlast0 (
.tdata     ( m_axis_tdata_i ),
.tuser     ( m_axis_tuser_i ),
.tid       ( m_axis_tid_i  [C_S_AXIS_TID_WIDTH-1:0     ] ),
.tdest     ( m_axis_tdest_i[C_S_AXIS_TDEST_WIDTH-1:0   ] ),
.tstrb     ( m_axis_tstrb_i ),
.tkeep     ( m_axis_tkeep_i ),
.tlast     ( m_axis_tlast_i ),
.tlast_out ( m_axis_tlast   )
);

endmodule // axis_subset_converter

`default_nettype wire

