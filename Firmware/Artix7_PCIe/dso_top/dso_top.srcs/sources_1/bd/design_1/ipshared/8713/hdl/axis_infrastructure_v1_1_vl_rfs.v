//  (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
////////////////////////////////////////////////////////////
//-----------------------------------------------------------------------------
//
// Description: 
//  Optimized Mux using MUXF7/8.
//  Any mux ratio.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   mux_enc
//
//--------------------------------------------------------------------------
`ifndef AXIS_INFRASTRUCTURE_V1_0_MUX_ENC_V
`define AXIS_INFRASTRUCTURE_V1_0_MUX_ENC_V
`timescale 1ps/1ps


(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_infrastructure_v1_1_0_mux_enc #
  (
   parameter         C_FAMILY                       = "rtl",
                       // FPGA Family. Current version: virtex6 or spartan6.
   parameter integer C_RATIO                        = 4,
                       // Mux select ratio. Can be any binary value (>= 1)
   parameter integer C_SEL_WIDTH                    = 2,
                       // Log2-ceiling of C_RATIO (>= 1)
   parameter integer C_DATA_WIDTH                   = 1
                       // Data width for comparator (>= 1)
   )
  (
   input  wire [C_SEL_WIDTH-1:0]                    S,
   input  wire [C_RATIO*C_DATA_WIDTH-1:0]           A,
   output wire [C_DATA_WIDTH-1:0]                   O,
   input  wire                                      OE
   );
  
  wire [C_DATA_WIDTH-1:0] o_i;
  genvar bit_cnt;
  
  function [C_DATA_WIDTH-1:0] f_mux
    (
     input [C_SEL_WIDTH-1:0] s,
     input [C_RATIO*C_DATA_WIDTH-1:0] a
     );
    integer i;
    reg [C_RATIO*C_DATA_WIDTH-1:0] carry;
    begin
      carry[C_DATA_WIDTH-1:0] = {C_DATA_WIDTH{(s==0)?1'b1:1'b0}} & a[C_DATA_WIDTH-1:0];
      for (i=1;i<C_RATIO;i=i+1) begin : gen_carrychain_enc
        carry[i*C_DATA_WIDTH +: C_DATA_WIDTH] = 
          carry[(i-1)*C_DATA_WIDTH +: C_DATA_WIDTH] |
          ({C_DATA_WIDTH{(s==i)?1'b1:1'b0}} & a[i*C_DATA_WIDTH +: C_DATA_WIDTH]);
      end
      f_mux = carry[C_DATA_WIDTH*C_RATIO-1:C_DATA_WIDTH*(C_RATIO-1)];
    end
  endfunction
  
  function [C_DATA_WIDTH-1:0] f_mux4
    (
     input [1:0] s,
     input [4*C_DATA_WIDTH-1:0] a
     );
    integer i;
    reg [4*C_DATA_WIDTH-1:0] carry;
    begin
      carry[C_DATA_WIDTH-1:0] = {C_DATA_WIDTH{(s==0)?1'b1:1'b0}} & a[C_DATA_WIDTH-1:0];
      for (i=1;i<4;i=i+1) begin : gen_carrychain_enc
        carry[i*C_DATA_WIDTH +: C_DATA_WIDTH] = 
          carry[(i-1)*C_DATA_WIDTH +: C_DATA_WIDTH] |
          ({C_DATA_WIDTH{(s==i)?1'b1:1'b0}} & a[i*C_DATA_WIDTH +: C_DATA_WIDTH]);
      end
      f_mux4 = carry[C_DATA_WIDTH*4-1:C_DATA_WIDTH*3];
    end
  endfunction
  
  assign O = o_i & {C_DATA_WIDTH{OE}};  // OE is gated AFTER any MUXF7/8 (can only optimize forward into downstream logic)
  
  generate
    if ( C_RATIO < 2 ) begin : gen_bypass
      assign o_i = A;
    end else if ( C_FAMILY == "rtl" || C_RATIO < 5 ) begin : gen_rtl
      assign o_i = f_mux(S, A);
      
    end else begin : gen_fpga
      wire [C_DATA_WIDTH-1:0] l;
      wire [C_DATA_WIDTH-1:0] h;
      wire [C_DATA_WIDTH-1:0] ll;
      wire [C_DATA_WIDTH-1:0] lh;
      wire [C_DATA_WIDTH-1:0] hl;
      wire [C_DATA_WIDTH-1:0] hh;
      
      case (C_RATIO)
        1, 5, 9, 13: 
          assign hh = A[(C_RATIO-1)*C_DATA_WIDTH +: C_DATA_WIDTH];
        2, 6, 10, 14:
          assign hh = S[0] ? 
            A[(C_RATIO-1)*C_DATA_WIDTH +: C_DATA_WIDTH] :
            A[(C_RATIO-2)*C_DATA_WIDTH +: C_DATA_WIDTH] ;
        3, 7, 11, 15:
          assign hh = S[1] ? 
            A[(C_RATIO-1)*C_DATA_WIDTH +: C_DATA_WIDTH] :
            (S[0] ? 
              A[(C_RATIO-2)*C_DATA_WIDTH +: C_DATA_WIDTH] :
              A[(C_RATIO-3)*C_DATA_WIDTH +: C_DATA_WIDTH] );
        4, 8, 12, 16:
          assign hh = S[1] ? 
            (S[0] ? 
              A[(C_RATIO-1)*C_DATA_WIDTH +: C_DATA_WIDTH] :
              A[(C_RATIO-2)*C_DATA_WIDTH +: C_DATA_WIDTH] ) :
            (S[0] ? 
              A[(C_RATIO-3)*C_DATA_WIDTH +: C_DATA_WIDTH] :
              A[(C_RATIO-4)*C_DATA_WIDTH +: C_DATA_WIDTH] );
        17:
          assign hh = S[1] ? 
            (S[0] ? 
              A[15*C_DATA_WIDTH +: C_DATA_WIDTH] :
              A[14*C_DATA_WIDTH +: C_DATA_WIDTH] ) :
            (S[0] ? 
              A[13*C_DATA_WIDTH +: C_DATA_WIDTH] :
              A[12*C_DATA_WIDTH +: C_DATA_WIDTH] );
        default:
          assign hh = 0; 
      endcase

      case (C_RATIO)
        5, 6, 7, 8: begin
          assign l = f_mux4(S[1:0], A[0 +: 4*C_DATA_WIDTH]);
          for (bit_cnt = 0; bit_cnt < C_DATA_WIDTH ; bit_cnt = bit_cnt + 1) begin : gen_mux_5_8
            MUXF7 mux_s2_inst 
            (
             .I0  (l[bit_cnt]),
             .I1  (hh[bit_cnt]),
             .S   (S[2]),
             .O   (o_i[bit_cnt])
            ); 
          end
        end
          
        9, 10, 11, 12: begin
          assign ll = f_mux4(S[1:0], A[0 +: 4*C_DATA_WIDTH]);
          assign lh = f_mux4(S[1:0], A[4*C_DATA_WIDTH +: 4*C_DATA_WIDTH]);
          for (bit_cnt = 0; bit_cnt < C_DATA_WIDTH ; bit_cnt = bit_cnt + 1) begin : gen_mux_9_12
            MUXF7 muxf_s2_low_inst 
            (
             .I0  (ll[bit_cnt]),
             .I1  (lh[bit_cnt]),
             .S   (S[2]),
             .O   (l[bit_cnt])
            ); 
            MUXF8 muxf_s3_inst 
            (
             .I0  (l[bit_cnt]),
             .I1  (hh[bit_cnt]),
             .S   (S[3]),
             .O   (o_i[bit_cnt])
            ); 
          end
        end
          
        13,14,15,16: begin
          assign ll = f_mux4(S[1:0], A[0 +: 4*C_DATA_WIDTH]);
          assign lh = f_mux4(S[1:0], A[4*C_DATA_WIDTH +: 4*C_DATA_WIDTH]);
          assign hl = f_mux4(S[1:0], A[8*C_DATA_WIDTH +: 4*C_DATA_WIDTH]);
          for (bit_cnt = 0; bit_cnt < C_DATA_WIDTH ; bit_cnt = bit_cnt + 1) begin : gen_mux_13_16
            MUXF7 muxf_s2_low_inst 
            (
             .I0  (ll[bit_cnt]),
             .I1  (lh[bit_cnt]),
             .S   (S[2]),
             .O   (l[bit_cnt])
            ); 
            MUXF7 muxf_s2_hi_inst 
            (
             .I0  (hl[bit_cnt]),
             .I1  (hh[bit_cnt]),
             .S   (S[2]),
             .O   (h[bit_cnt])
            );
          
            MUXF8 muxf_s3_inst 
            (
             .I0  (l[bit_cnt]),
             .I1  (h[bit_cnt]),
             .S   (S[3]),
             .O   (o_i[bit_cnt])
            ); 
          end
        end
          
        17: begin
          assign ll = S[4] ? A[16*C_DATA_WIDTH +: C_DATA_WIDTH] : f_mux4(S[1:0], A[0 +: 4*C_DATA_WIDTH]);  // 5-input mux
          assign lh = f_mux4(S[1:0], A[4*C_DATA_WIDTH +: 4*C_DATA_WIDTH]);
          assign hl = f_mux4(S[1:0], A[8*C_DATA_WIDTH +: 4*C_DATA_WIDTH]);
          for (bit_cnt = 0; bit_cnt < C_DATA_WIDTH ; bit_cnt = bit_cnt + 1) begin : gen_mux_17
            MUXF7 muxf_s2_low_inst 
            (
             .I0  (ll[bit_cnt]),
             .I1  (lh[bit_cnt]),
             .S   (S[2]),
             .O   (l[bit_cnt])
            ); 
            MUXF7 muxf_s2_hi_inst 
            (
             .I0  (hl[bit_cnt]),
             .I1  (hh[bit_cnt]),
             .S   (S[2]),
             .O   (h[bit_cnt])
            ); 
            MUXF8 muxf_s3_inst 
            (
             .I0  (l[bit_cnt]),
             .I1  (h[bit_cnt]),
             .S   (S[3]),
             .O   (o_i[bit_cnt])
            ); 
          end
        end
          
        default:  // If RATIO > 17, use RTL
          assign o_i = f_mux(S, A);
      endcase
    end  // gen_fpga
  endgenerate
endmodule

`endif


//  (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
////////////////////////////////////////////////////////////
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axis_infrastructure_v1_1_0_util_aclken_converter
//
//--------------------------------------------------------------------------
`ifndef AXIS_INFRASTRUCTURE_V1_0_UTIL_ACLKEN_CONVERTER_V
`define AXIS_INFRASTRUCTURE_V1_0_UTIL_ACLKEN_CONVERTER_V

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_infrastructure_v1_1_0_util_aclken_converter # (
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter integer C_PAYLOAD_WIDTH       = 32,
  parameter integer C_S_ACLKEN_CAN_TOGGLE = 1,
  parameter integer C_M_ACLKEN_CAN_TOGGLE = 1
  )
 (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
  // Slave side
  input  wire                        ACLK,
  input  wire                        ARESETN,

  input  wire                        S_ACLKEN,
  input  wire [C_PAYLOAD_WIDTH-1:0]  S_PAYLOAD,
  input  wire                        S_VALID,
  output wire                        S_READY,

  // Master side
  input  wire                        M_ACLKEN,
  output wire [C_PAYLOAD_WIDTH-1:0]  M_PAYLOAD,
  output wire                        M_VALID,
  input  wire                        M_READY
);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////

// State machine states
localparam SM_NOT_READY    = 3'b000;
localparam SM_EMPTY        = 3'b001;
localparam SM_R0_NOT_READY = 3'b010;
localparam SM_R0           = 3'b011;
localparam SM_R1           = 3'b100;
localparam SM_FULL         = 3'b110;

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
wire s_aclken_i;
wire m_aclken_i;
reg  areset;

reg [2:0] state = SM_NOT_READY;

// r0 is the output register
reg [C_PAYLOAD_WIDTH-1:0] r0;
wire                      load_r0;
wire                      load_r0_from_r1;

// r1 is the overflow register
reg [C_PAYLOAD_WIDTH-1:0] r1;
wire                      load_r1;
////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

assign s_aclken_i = C_S_ACLKEN_CAN_TOGGLE ? S_ACLKEN : 1'b1;
assign m_aclken_i = C_M_ACLKEN_CAN_TOGGLE ? M_ACLKEN : 1'b1;

always @(posedge ACLK) begin 
  areset <= ~ARESETN;
end

// Valid/Ready outputs encoded into state machine.
assign S_READY = (state == SM_NOT_READY ) ? 1'b0 : state[0] ;
assign M_VALID = (state == SM_NOT_READY ) ? 1'b0 : state[1];

// State machine: Controls outputs and hold register state info
always @(posedge ACLK) begin 
  if (areset) begin
    state <= SM_NOT_READY;
  end
  else begin 
    case (state)
      // De-assert s_ready, de-assert m_valid, R0 unoccupied, R1 unoccupied
      SM_NOT_READY: begin
        if (s_aclken_i) begin
          state <= SM_EMPTY;
        end
        else begin
          state <= state;
        end
      end

      // Assert s_ready, de-assert m_valid, R0 unoccupied, R1 unoccupied
      SM_EMPTY: begin
        if (s_aclken_i & S_VALID & m_aclken_i) begin
          state <= SM_R0;
        end
        else if (s_aclken_i & S_VALID & ~m_aclken_i) begin
          state <= SM_R1;
        end
        else begin 
          state <= state;
        end
      end

      // Assert s_ready, Assert m_valid, R0 occupied, R1 unoccupied
      SM_R0: begin
        if ((m_aclken_i & M_READY) & ~(s_aclken_i & S_VALID)) begin
          state <= SM_EMPTY;
        end
        else if (~(m_aclken_i & M_READY) & (s_aclken_i & S_VALID)) begin
          state <= SM_FULL;
        end
        else begin 
          state <= state;
        end
      end

      // De-assert s_ready, Assert m_valid, R0 occupied, R1 unoccupied
      SM_R0_NOT_READY: begin
        if (s_aclken_i & m_aclken_i & M_READY) begin
          state <= SM_EMPTY;
        end
        else if (~s_aclken_i & m_aclken_i & M_READY) begin
          state <= SM_NOT_READY;
        end
        else if (s_aclken_i) begin
          state <= SM_R0;
        end
        else begin 
          state <= state;
        end
      end

      // De-assert s_ready, De-assert m_valid, R0 unoccupied, R1 occupied
      SM_R1: begin
        if (~s_aclken_i & m_aclken_i) begin
          state <= SM_R0_NOT_READY;
        end
        else if (s_aclken_i & m_aclken_i) begin 
          state <= SM_R0;
        end
        else begin 
          state <= state;
        end
      end

      // De-assert s_ready, De-assert m_valid, R0 occupied, R1 occupied
      SM_FULL: begin
        if (~s_aclken_i & m_aclken_i & M_READY) begin
          state <= SM_R0_NOT_READY;
        end
        else if (s_aclken_i & m_aclken_i & M_READY) begin 
          state <= SM_R0;
        end
        else begin 
          state <= state;
        end
      end

      default: begin
        state <= SM_NOT_READY;
      end
    endcase
  end
end

assign M_PAYLOAD = r0;

always @(posedge ACLK) begin
  if (m_aclken_i) begin 
    r0 <= ~load_r0 ? r0 :
          load_r0_from_r1 ? r1 :
          S_PAYLOAD ;
  end
end

assign load_r0 = (state == SM_EMPTY) 
                 | (state == SM_R1) 
                 | ((state == SM_R0) & M_READY)
                 | ((state == SM_FULL) & M_READY);

assign load_r0_from_r1 = (state == SM_R1) | (state == SM_FULL);

always @(posedge ACLK) begin
  r1 <= ~load_r1 ? r1 : S_PAYLOAD;
end

assign load_r1 = (state == SM_EMPTY) | (state == SM_R0);


endmodule // axis_infrastructure_v1_1_0_util_aclken_converter

`default_nettype wire
`endif


//  (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
////////////////////////////////////////////////////////////
//
// Verilog-standard:  Verilog 2001
////////////////////////////////////////////////////////////
//
// Structure:
//   axis_infrastructure_v1_1_0_util_aclken_converter_wrapper
//     axis_infrastructure_v1_1_0_util_axis2_vector
//     axis_infrastructure_v1_1_0_util_aclken_converter
//     axis_infrastructure_v1_1_0_util_vector2axis 
//
////////////////////////////////////////////////////////////
`ifndef axis_infrastructure_v1_1_0_UTIL_ACLKEN_CONVERTER_WRAPPER_V
`define axis_infrastructure_v1_1_0_UTIL_ACLKEN_CONVERTER_WRAPPER_V

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_infrastructure_v1_1_0_util_aclken_converter_wrapper # (
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter integer C_TDATA_WIDTH = 32,
  parameter integer C_TID_WIDTH   = 1,
  parameter integer C_TDEST_WIDTH = 1,
  parameter integer C_TUSER_WIDTH = 1,
  parameter [31:0]  C_SIGNAL_SET  = 32'hFF,
  // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
  //   [0] => TREADY present
  //   [1] => TDATA present
  //   [2] => TSTRB present, TDATA must be present
  //   [3] => TKEEP present, TDATA must be present
  //   [4] => TLAST present
  //   [5] => TID present
  //   [6] => TDEST present
  //   [7] => TUSER present
  parameter integer C_S_ACLKEN_CAN_TOGGLE = 1,
  parameter integer C_M_ACLKEN_CAN_TOGGLE = 1
  )
 (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
  // Slave side
  input  wire                       ACLK,
  input  wire                       ARESETN,
  input  wire                       S_ACLKEN,
  input  wire                       S_VALID,
  output wire                       S_READY,
  input  wire [C_TDATA_WIDTH-1:0]   S_TDATA,
  input  wire [C_TDATA_WIDTH/8-1:0] S_TSTRB,
  input  wire [C_TDATA_WIDTH/8-1:0] S_TKEEP,
  input  wire                       S_TLAST,
  input  wire [C_TID_WIDTH-1:0]     S_TID,
  input  wire [C_TDEST_WIDTH-1:0]   S_TDEST,
  input  wire [C_TUSER_WIDTH-1:0]   S_TUSER,
                                    
  input  wire                       M_ACLKEN,
  output wire                       M_VALID,
  input  wire                       M_READY,
  output wire [C_TDATA_WIDTH-1:0]   M_TDATA,
  output wire [C_TDATA_WIDTH/8-1:0] M_TSTRB,
  output wire [C_TDATA_WIDTH/8-1:0] M_TKEEP,
  output wire                       M_TLAST,
  output wire [C_TID_WIDTH-1:0]     M_TID,
  output wire [C_TDEST_WIDTH-1:0]   M_TDEST,
  output wire [C_TUSER_WIDTH-1:0]   M_TUSER
);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
`include "axis_infrastructure_v1_1_0.vh"


////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////

localparam integer P_TPAYLOAD_WIDTH       = f_payload_width(C_TDATA_WIDTH, C_TID_WIDTH, 
                                                 C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                                 C_SIGNAL_SET);
////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
wire [P_TPAYLOAD_WIDTH-1:0] s_tpayload;
wire [P_TPAYLOAD_WIDTH-1:0] m_tpayload;

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

axis_infrastructure_v1_1_0_util_axis2vector #(
  .C_TDATA_WIDTH    ( C_TDATA_WIDTH ) ,
  .C_TID_WIDTH      ( C_TID_WIDTH   ) ,
  .C_TDEST_WIDTH    ( C_TDEST_WIDTH ) ,
  .C_TUSER_WIDTH    ( C_TUSER_WIDTH ) ,
  .C_TPAYLOAD_WIDTH ( P_TPAYLOAD_WIDTH   ) ,
  .C_SIGNAL_SET     ( C_SIGNAL_SET  ) 
)
util_axis2vector_0 (
  .TDATA    ( S_TDATA    ) ,
  .TSTRB    ( S_TSTRB    ) ,
  .TKEEP    ( S_TKEEP    ) ,
  .TLAST    ( S_TLAST    ) ,
  .TID      ( S_TID      ) ,
  .TDEST    ( S_TDEST    ) ,
  .TUSER    ( S_TUSER    ) ,
  .TPAYLOAD ( s_tpayload )
);

generate
if (C_S_ACLKEN_CAN_TOGGLE | C_M_ACLKEN_CAN_TOGGLE) begin : gen_aclken_converter
  axis_infrastructure_v1_1_0_util_aclken_converter #( 
    .C_PAYLOAD_WIDTH       ( P_TPAYLOAD_WIDTH       ) ,
    .C_S_ACLKEN_CAN_TOGGLE ( C_S_ACLKEN_CAN_TOGGLE ) ,
    .C_M_ACLKEN_CAN_TOGGLE ( C_M_ACLKEN_CAN_TOGGLE ) 
  )
  s_util_aclken_converter_0 ( 
    .ACLK      ( ACLK       ) ,
    .ARESETN   ( ARESETN    ) ,
    .S_ACLKEN  ( S_ACLKEN   ) ,
    .S_PAYLOAD ( s_tpayload ) ,
    .S_VALID   ( S_VALID   ) ,
    .S_READY   ( S_READY   ) ,
    .M_ACLKEN  ( M_ACLKEN   ) ,
    .M_PAYLOAD ( m_tpayload ) ,
    .M_VALID   ( M_VALID   ) ,
    .M_READY   ( M_READY   ) 
  );
end
else begin : gen_aclken_passthru
  assign m_tpayload = s_tpayload;
  assign M_VALID   = S_VALID;
  assign S_READY = M_READY;
end
endgenerate

axis_infrastructure_v1_1_0_util_vector2axis #(
  .C_TDATA_WIDTH    ( C_TDATA_WIDTH ) ,
  .C_TID_WIDTH      ( C_TID_WIDTH   ) ,
  .C_TDEST_WIDTH    ( C_TDEST_WIDTH ) ,
  .C_TUSER_WIDTH    ( C_TUSER_WIDTH ) ,
  .C_TPAYLOAD_WIDTH ( P_TPAYLOAD_WIDTH   ) ,
  .C_SIGNAL_SET     ( C_SIGNAL_SET  ) 
)
util_vector2axis_0 (
  .TPAYLOAD ( m_tpayload ) ,
  .TDATA    ( M_TDATA    ) ,
  .TSTRB    ( M_TSTRB    ) ,
  .TKEEP    ( M_TKEEP    ) ,
  .TLAST    ( M_TLAST    ) ,
  .TID      ( M_TID      ) ,
  .TDEST    ( M_TDEST    ) ,
  .TUSER    ( M_TUSER    ) 
);

endmodule // axis_infrastructure_v1_1_0_util_aclken_converter_wrapper

`default_nettype wire
`endif


//  (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
////////////////////////////////////////////////////////////
//
// axis to vector
//   A generic module to merge all axis 'data' signals into one signal called payload.
//   This is strictly wires, so no clk, reset, aclken, valid/ready are required.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axis_infrastructure_v1_1_0_util_axis2vector
//
//--------------------------------------------------------------------------
`ifndef AXIS_INFRASTRUCTURE_V1_0_UTIL_AXIS2VECTOR_V
`define AXIS_INFRASTRUCTURE_V1_0_UTIL_AXIS2VECTOR_V

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_infrastructure_v1_1_0_util_axis2vector #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter integer C_TDATA_WIDTH = 32,
   parameter integer C_TID_WIDTH   = 1,
   parameter integer C_TDEST_WIDTH = 1,
   parameter integer C_TUSER_WIDTH = 1,
   parameter integer C_TPAYLOAD_WIDTH = 44,
   parameter [31:0]  C_SIGNAL_SET  = 32'hFF
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present
   //   [1] => TDATA present
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   )
  (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // inputs
   input  wire [C_TDATA_WIDTH-1:0]   TDATA,
   input  wire [C_TDATA_WIDTH/8-1:0] TSTRB,
   input  wire [C_TDATA_WIDTH/8-1:0] TKEEP,
   input  wire                       TLAST,
   input  wire [C_TID_WIDTH-1:0]     TID,
   input  wire [C_TDEST_WIDTH-1:0]   TDEST,
   input  wire [C_TUSER_WIDTH-1:0]   TUSER,

   // outputs
   output wire [C_TPAYLOAD_WIDTH-1:0] TPAYLOAD
   );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
`include "axis_infrastructure_v1_1_0.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam P_TDATA_INDX = f_get_tdata_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TSTRB_INDX = f_get_tstrb_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TKEEP_INDX = f_get_tkeep_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TLAST_INDX = f_get_tlast_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TID_INDX   = f_get_tid_indx  (C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TDEST_INDX = f_get_tdest_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TUSER_INDX = f_get_tuser_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////
generate
  if (C_SIGNAL_SET[G_INDX_SS_TDATA]) begin : gen_tdata
    assign TPAYLOAD[P_TDATA_INDX+:C_TDATA_WIDTH]   = TDATA;
  end else begin : no_gen_tdata
    // Do nothing
  end
  if (C_SIGNAL_SET[G_INDX_SS_TSTRB]) begin : gen_tstrb
    assign TPAYLOAD[P_TSTRB_INDX+:C_TDATA_WIDTH/8] = TSTRB;
  end else begin : no_gen_tstrb
    // Do nothing
  end
  if (C_SIGNAL_SET[G_INDX_SS_TKEEP]) begin : gen_tkeep
    assign TPAYLOAD[P_TKEEP_INDX+:C_TDATA_WIDTH/8] = TKEEP;
  end else begin : no_gen_tkeep
    // Do nothing
  end
  if (C_SIGNAL_SET[G_INDX_SS_TLAST]) begin : gen_tlast
    assign TPAYLOAD[P_TLAST_INDX+:1]               = TLAST;
  end else begin : no_gen_tlast
    // Do nothing
  end
  if (C_SIGNAL_SET[G_INDX_SS_TID]) begin : gen_tid
    assign TPAYLOAD[P_TID_INDX+:C_TID_WIDTH]       = TID;
  end else begin : no_gen_tid
    // Do nothing
  end
  if (C_SIGNAL_SET[G_INDX_SS_TDEST]) begin : gen_tdest
    assign TPAYLOAD[P_TDEST_INDX+:C_TDEST_WIDTH]   = TDEST;
  end else begin : no_gen_tdest
    // Do nothing
  end
  if (C_SIGNAL_SET[G_INDX_SS_TUSER]) begin : gen_tuser
    assign TPAYLOAD[P_TUSER_INDX+:C_TUSER_WIDTH]   = TUSER;
  end else begin : no_gen_tuser
    // Do nothing
  end
endgenerate
endmodule 

`default_nettype wire
`endif


//  (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
////////////////////////////////////////////////////////////
//
// axis to vector
//   A generic module to unmerge all axis 'data' signals from payload.
//   This is strictly wires, so no clk, reset, aclken, valid/ready are required.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axis_infrastructure_v1_1_0_util_vector2axis
//
//--------------------------------------------------------------------------
`ifndef AXIS_INFRASTRUCTURE_V1_0_UTIL_VECTOR2AXIS_V
`define AXIS_INFRASTRUCTURE_V1_0_UTIL_VECTOR2AXIS_V

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_infrastructure_v1_1_0_util_vector2axis #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter integer C_TDATA_WIDTH = 32,
   parameter integer C_TID_WIDTH   = 1,
   parameter integer C_TDEST_WIDTH = 1,
   parameter integer C_TUSER_WIDTH = 1,
   parameter integer C_TPAYLOAD_WIDTH = 44,
   parameter [31:0]  C_SIGNAL_SET  = 32'hFF
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present
   //   [1] => TDATA present
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   )
  (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // outputs
   input  wire [C_TPAYLOAD_WIDTH-1:0] TPAYLOAD,

   // inputs
   output wire [C_TDATA_WIDTH-1:0]   TDATA,
   output wire [C_TDATA_WIDTH/8-1:0] TSTRB,
   output wire [C_TDATA_WIDTH/8-1:0] TKEEP,
   output wire                       TLAST,
   output wire [C_TID_WIDTH-1:0]     TID,
   output wire [C_TDEST_WIDTH-1:0]   TDEST,
   output wire [C_TUSER_WIDTH-1:0]   TUSER
   );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
`include "axis_infrastructure_v1_1_0.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam P_TDATA_INDX = f_get_tdata_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TSTRB_INDX = f_get_tstrb_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TKEEP_INDX = f_get_tkeep_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TLAST_INDX = f_get_tlast_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TID_INDX   = f_get_tid_indx  (C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TDEST_INDX = f_get_tdest_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
localparam P_TUSER_INDX = f_get_tuser_indx(C_TDATA_WIDTH, C_TID_WIDTH,
                                           C_TDEST_WIDTH, C_TUSER_WIDTH, 
                                           C_SIGNAL_SET);
////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////
generate
  if (C_SIGNAL_SET[G_INDX_SS_TDATA]) begin : gen_tdata
    assign TDATA = TPAYLOAD[P_TDATA_INDX+:C_TDATA_WIDTH]  ;
  end
  else begin : no_gen_tdata
    assign TDATA = {C_TDATA_WIDTH{1'b0}};
  end
  if (C_SIGNAL_SET[G_INDX_SS_TSTRB]) begin : gen_tstrb
    assign TSTRB = TPAYLOAD[P_TSTRB_INDX+:C_TDATA_WIDTH/8];
  end 
  else begin : no_gen_tstrb
    assign TSTRB = {(C_TDATA_WIDTH/8){1'b0}};
  end
  if (C_SIGNAL_SET[G_INDX_SS_TKEEP]) begin : gen_tkeep
    assign TKEEP = TPAYLOAD[P_TKEEP_INDX+:C_TDATA_WIDTH/8];
  end 
  else begin : no_gen_tkeep
    assign TKEEP = {(C_TDATA_WIDTH/8){1'b1}};
  end
  if (C_SIGNAL_SET[G_INDX_SS_TLAST]) begin : gen_tlast
    assign TLAST = TPAYLOAD[P_TLAST_INDX+:1]              ;
  end 
  else begin : no_gen_tlast
    assign TLAST = 1'b0;
  end
  if (C_SIGNAL_SET[G_INDX_SS_TID]) begin : gen_tid
    assign TID   = TPAYLOAD[P_TID_INDX+:C_TID_WIDTH]      ;
  end 
  else begin : no_gen_tid
    assign TID   = {C_TID_WIDTH{1'b0}};
  end
  if (C_SIGNAL_SET[G_INDX_SS_TDEST]) begin : gen_tdest
    assign TDEST = TPAYLOAD[P_TDEST_INDX+:C_TDEST_WIDTH]  ;
  end 
  else begin : no_gen_tdest
    assign TDEST   = {C_TDEST_WIDTH{1'b0}};
  end
  if (C_SIGNAL_SET[G_INDX_SS_TUSER]) begin : gen_tuser
    assign TUSER = TPAYLOAD[P_TUSER_INDX+:C_TUSER_WIDTH]  ;
  end 
  else begin : no_gen_tuser
    assign TUSER   = {C_TUSER_WIDTH{1'b0}};
  end
endgenerate
endmodule 

`default_nettype wire
`endif


//*****************************************************************************
//  (c) Copyright 2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//
//*****************************************************************************
// Description
//   This module instantiates the clock synchronization logic.  It passes the 
//   incoming signal through two flops to ensure metastability. 
//              
//*****************************************************************************
`timescale 1ps / 1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_infrastructure_v1_1_0_clock_synchronizer # (
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter integer C_NUM_STAGES              = 4
)     
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations     
///////////////////////////////////////////////////////////////////////////////
  input  wire                               clk,
  input  wire                               synch_in ,
  output wire                               synch_out
);

////////////////////////////////////////////////////////////////////////////////
// Local Parameters           
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
xpm_cdc_single #(
	.DEST_SYNC_FF   ( C_NUM_STAGES ) ,
	.SRC_INPUT_REG  ( 0            ) ,
	.SIM_ASSERT_CHK ( 0            ) 
)
inst_xpm_cdc_single   (
  .src_clk  ( 1'b0      ) ,
  .src_in   ( synch_in  ) ,
  .dest_out ( synch_out ) ,
  .dest_clk ( clk       ) 
);

endmodule

`default_nettype wire


// (c) Copyright 2014 Xilinx, Inc. All rights reserved. 
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
///////////////////////////////////////////////////////////////////////////////
//
// File name: axis_infrastructure_v1_1_0_cdc_handshake
//
///////////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps
`default_nettype none

module axis_infrastructure_v1_1_0_cdc_handshake #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter integer C_WIDTH                   = 32,
  parameter integer C_NUM_SYNCHRONIZER_STAGES = 2
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations     
///////////////////////////////////////////////////////////////////////////////
  input  wire                               from_clk,
  input  wire                               req, 
  output wire                               ack,
  input  wire [C_WIDTH-1:0]                 data_in,

  input  wire                               to_clk,
  output wire                               data_valid,
  output wire [C_WIDTH-1:0]                 data_out
);

/////////////////////////////////////////////////////////////////////////////
// Functions
/////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
///////////////////////////////////////////////////////////////////////////////
xpm_cdc_handshake #(
  .WIDTH          ( C_WIDTH                   ) ,
  .DEST_SYNC_FF   ( C_NUM_SYNCHRONIZER_STAGES ) ,
  .SRC_SYNC_FF    ( C_NUM_SYNCHRONIZER_STAGES ) ,
  .DEST_EXT_HSK   ( 0                         ) ,
  .SIM_ASSERT_CHK ( 0                         ) 
)
inst_xpm_cdc_handshake (
  .src_in   ( data_in    ) ,
  .src_send ( req        ) ,
  .src_rcv  ( ack        ) ,
  .src_clk  ( from_clk ) ,
  .dest_out ( data_out   ) ,
  .dest_req ( data_valid ) ,
  .dest_ack ( 1'b0       ) ,
  .dest_clk ( to_clk     ) 
);

endmodule // axis_infrastructure_v1_1_0_cdc_handshake

`default_nettype wire


