//  (c) Copyright 2011-2013 Xilinx, Inc. All rights reserved.
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
//-----------------------------------------------------------------------------
//
// Generic Functions used by AXIS-Interconnect and Infrastrucutre Modules
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
// Global Parameters:
//
// Functions:
//   f_clogb2
//   f_gcd
//   f_lcm
//   f_get_tdata_indx
//   f_get_tstrb_indx
//   f_get_tkeep_indx
//   f_get_tlast_indx
//   f_get_tid_indx
//   f_get_tdest_indx
//   f_get_tuser_indx
//   f_payload_width
// Tasks:
//   t_display_tdata_error
//--------------------------------------------------------------------------
///////////////////////////////////////////////////////////////////////////////
// BEGIN Global Parameters
///////////////////////////////////////////////////////////////////////////////
// Define Signal Set indices
localparam G_INDX_SS_TREADY = 0;
localparam G_INDX_SS_TDATA  = 1;
localparam G_INDX_SS_TSTRB  = 2;
localparam G_INDX_SS_TKEEP  = 3;
localparam G_INDX_SS_TLAST  = 4;
localparam G_INDX_SS_TID    = 5;
localparam G_INDX_SS_TDEST  = 6;
localparam G_INDX_SS_TUSER  = 7;
localparam G_MASK_SS_TREADY = 32'h1 << G_INDX_SS_TREADY;
localparam G_MASK_SS_TDATA  = 32'h1 << G_INDX_SS_TDATA;
localparam G_MASK_SS_TSTRB  = 32'h1 << G_INDX_SS_TSTRB;
localparam G_MASK_SS_TKEEP  = 32'h1 << G_INDX_SS_TKEEP;
localparam G_MASK_SS_TLAST  = 32'h1 << G_INDX_SS_TLAST;
localparam G_MASK_SS_TID    = 32'h1 << G_INDX_SS_TID  ;
localparam G_MASK_SS_TDEST  = 32'h1 << G_INDX_SS_TDEST;
localparam G_MASK_SS_TUSER  = 32'h1 << G_INDX_SS_TUSER;

// Task DRC error levels
localparam G_TASK_SEVERITY_ERR   = 2;
localparam G_TASK_SEVERITY_WARNING = 1;
localparam G_TASK_SEVERITY_INFO    = 0;

///////////////////////////////////////////////////////////////////////////////
// BEGIN Functions
///////////////////////////////////////////////////////////////////////////////
// ceiling logb2
  function integer f_clogb2 (input integer size);
    integer s;
    begin
      s = size;
      s = s - 1;
      for (f_clogb2=1; s>1; f_clogb2=f_clogb2+1)
            s = s >> 1;
    end
  endfunction // clogb2

  // Calculates the Greatest Common Divisor between two integers using the
  // euclidean algorithm.
  function automatic integer f_gcd (
    input integer a,
    input integer b
    );
    begin : main
      if (a == 0) begin
        f_gcd = b;
      end else if (b == 0) begin
        f_gcd = a;
      end else if (a > b) begin
        f_gcd = f_gcd(a % b, b);
      end else begin
        f_gcd = f_gcd(a, b % a);
      end
    end
  endfunction

  // Calculates the Lowest Common Denominator between two integers
  function integer f_lcm (
    input integer a,
    input integer b
    );
    begin : main
      f_lcm = ( a / f_gcd(a, b)) * b; 
    end
  endfunction

  // Returns back the index to the TDATA portion of TPAYLOAD, returns 0 if the
  // signal is not enabled.
  function integer f_get_tdata_indx (
    input integer DAW,  // TDATA Width
    input integer IDW,  // TID Width
    input integer DEW,  // TDEST Width
    input integer USW,  // TUSER Width
    input [31:0]  SST   // Signal Set
    );
    begin : main
      f_get_tdata_indx = 0;
    end
  endfunction

  // Returns back the index to the tstrb portion of TPAYLOAD, returns 0 if the
  // signal is not enabled.
  function integer f_get_tstrb_indx (
    input integer DAW,  // TDATA Width
    input integer IDW,  // TID Width
    input integer DEW,  // TDEST Width
    input integer USW,  // TUSER Width
    input [31:0]  SST   // Signal Set
    );
    begin : main
      integer cur_indx;
      cur_indx = f_get_tdata_indx(DAW, IDW, DEW, USW, SST);
      // If TDATA exists, then add its width to its base to get the tstrb index
      f_get_tstrb_indx = SST[G_INDX_SS_TDATA] ? cur_indx + DAW : cur_indx;
    end
  endfunction

  // Returns back the index to the tkeep portion of TPAYLOAD, returns 0 if the
  // signal is not enabled.
  function integer f_get_tkeep_indx (
    input integer DAW,  // TDATA Width
    input integer IDW,  // TID Width
    input integer DEW,  // TDEST Width
    input integer USW,  // TUSER Width
    input [31:0]  SST   // Signal Set
    );
    begin : main
      integer cur_indx;
      cur_indx = f_get_tstrb_indx(DAW, IDW, DEW, USW, SST);
      f_get_tkeep_indx = SST[G_INDX_SS_TSTRB] ? cur_indx + DAW/8 : cur_indx;
    end
  endfunction

  // Returns back the index to the tlast portion of TPAYLOAD, returns 0 if the
  // signal is not enabled.
  function integer f_get_tlast_indx (
    input integer DAW,  // TDATA Width
    input integer IDW,  // TID Width
    input integer DEW,  // TDEST Width
    input integer USW,  // TUSER Width
    input [31:0]  SST   // Signal Set
    );
    begin : main
      integer cur_indx;
      cur_indx = f_get_tkeep_indx(DAW, IDW, DEW, USW, SST);
      f_get_tlast_indx = SST[G_INDX_SS_TKEEP] ? cur_indx + DAW/8 : cur_indx;
    end
  endfunction

  // Returns back the index to the tid portion of TPAYLOAD, returns 0 if the
  // signal is not enabled.
  function integer f_get_tid_indx (
    input integer DAW,  // TDATA Width
    input integer IDW,  // TID Width
    input integer DEW,  // TDEST Width
    input integer USW,  // TUSER Width
    input [31:0]  SST   // Signal Set
    );
    begin : main
      integer cur_indx;
      cur_indx = f_get_tlast_indx(DAW, IDW, DEW, USW, SST);
      f_get_tid_indx = SST[G_INDX_SS_TLAST] ? cur_indx + 1 : cur_indx;
    end
  endfunction

  // Returns back the index to the tdest portion of TPAYLOAD, returns 0 if the
  // signal is not enabled.
  function integer f_get_tdest_indx (
    input integer DAW,  // TDATA Width
    input integer IDW,  // TID Width
    input integer DEW,  // TDEST Width
    input integer USW,  // TUSER Width
    input [31:0]  SST   // Signal Set
    );
    begin : main
      integer cur_indx;
      cur_indx = f_get_tid_indx(DAW, IDW, DEW, USW, SST);
      f_get_tdest_indx = SST[G_INDX_SS_TID] ? cur_indx + IDW : cur_indx;
    end
  endfunction

  // Returns back the index to the tuser portion of TPAYLOAD, returns 0 if the
  // signal is not enabled.
  function integer f_get_tuser_indx (
    input integer DAW,  // TDATA Width
    input integer IDW,  // TID Width
    input integer DEW,  // TDEST Width
    input integer USW,  // TUSER Width
    input [31:0]  SST   // Signal Set
    );
    begin : main
      integer cur_indx;
      cur_indx = f_get_tdest_indx(DAW, IDW, DEW, USW, SST);
      f_get_tuser_indx = SST[G_INDX_SS_TDEST] ? cur_indx + DEW : cur_indx;
    end
  endfunction

  // Payload is the sum of all the AXIS signals present except for
  // TREADY/TVALID
  function integer f_payload_width (
    input integer DAW,  // TDATA Width
    input integer IDW,  // TID Width
    input integer DEW,  // TDEST Width
    input integer USW,  // TUSER Width
    input [31:0]  SST   // Signal Set
    );
    begin : main
      integer cur_indx;
      cur_indx = f_get_tuser_indx(DAW, IDW, DEW, USW, SST);
      f_payload_width = SST[G_INDX_SS_TUSER] ? cur_indx + USW : cur_indx;
      // Ensure that the return value is never less than 1
      f_payload_width = (f_payload_width < 1) ? 1 : f_payload_width;
    end
  endfunction

  task t_check_tdata_width(
    input  integer    data_width,
    input  [8*80-1:0] var_name,
    input  [8*80-1:0] inst_name,
    input  integer    severity_lvl,
    output integer    ret_val
  );
    // Severity levels:
    // 0 = INFO
    // 1 = WARNING
    // 2 = ERROR
    begin : t_check_tdata_width
      if (data_width%8 != 0) begin  
        //       000       1          2         3         4         5         6         7         8
        //       012       0          0         0         0         0         0         0         0
        if (severity_lvl >= 2) begin
        $display("ERROR: %m::%s", inst_name);
        end else if (severity_lvl == 1) begin
        $display("WARNING: %m::%s", inst_name);
        end else begin
        $display("INFO: %m::%s", inst_name);
        end
        $display("       Parameter %s (%2d) must be a multiple of 8.", var_name, data_width);
        $display("       AXI4-Stream data width is only defined for byte multiples. See the ");
        $display("       AMBA4 AXI4-Stream Protocol Specification v1.0 Section 2.1 for more");
        $display("       information.");
        ret_val = 1;
      end else begin
        ret_val = 0;
      end
    end
  endtask

  task t_check_tuser_width(
    input  integer    tuser_width,
    input  [8*80-1:0] tuser_name,
    input  integer    tdata_width,
    input  [8*80-1:0] tdata_name,
    input  [8*80-1:0] inst_name,
    input  integer    severity_lvl,
    output integer    ret_val
  );
    // Severity levels:
    // 0 = INFO
    // 1 = WARNING
    // 2 = ERROR
    begin : t_check_tuser_width
      integer tdata_bytes; 
      tdata_bytes = tdata_width/8;
      if ((tuser_width%tdata_bytes) != 0) begin  
        //       000       1          2         3         4         5         6         7         8
        //       012       0          0         0         0         0         0         0         0
        if (severity_lvl >= 2) begin
        $display("ERROR: %m::%s", inst_name);
        end else if (severity_lvl == 1) begin
        $display("WARNING: %m::%s", inst_name);
        end else begin
        $display("INFO: %m::%s", inst_name);
        end
        $display("       Parameter %s == %2d is not the recommended value of 'an integer ", tuser_name, tuser_width);
        $display("       multiple of the width of the interface (%s == %2d) in bytes.'  AXI4-Stream", tdata_name, tdata_width);
        $display("       TUSER width in this module is only defined when the TUSER is the");
        $display("       recommended value.  See the AMBA4 AXI4-Stream Protocol Specification v1.0");
        $display("       Section 2.1, 2.3.3 and 2.8 for more information.  ");
        ret_val = 1;
      end else begin
        ret_val = 0;
      end
    end
  endtask

