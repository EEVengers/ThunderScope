//*****************************************************************************
// (c) Copyright 2008 - 2013 Xilinx, Inc. All rights reserved.
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
//*****************************************************************************
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor                : Xilinx
// \   \   \/     Version               : %version
//  \   \         Application           : MIG
//  /   /         Filename              : mig_7series_v4_2_tempmon.v
// /___/   /\     Date Last Modified    : $date$
// \   \  /  \    Date Created          : Jul 25 2012
//  \___\/\___\
//
//Device            : 7 Series
//Design Name       : DDR3 SDRAM
//Purpose           : Monitors chip temperature via the XADC and adjusts the
//                    stage 2 tap values as appropriate.
//Reference         :
//Revision History  :
//*****************************************************************************

`timescale 1 ps / 1 ps

module mig_7series_v4_2_tempmon #
(
  parameter TCQ                 = 100,        // Register delay (sim only)
  parameter TEMP_MON_CONTROL    = "INTERNAL", // XADC or user temperature source
  parameter XADC_CLK_PERIOD     = 5000,       // pS (default to 200 MHz refclk)
  parameter tTEMPSAMPLE         = 10000000    // ps (10 us)
)
(
  input           clk,                      // Fabric clock
  input           xadc_clk,
  input           rst,                      // System reset
  input   [11:0]  device_temp_i,            // User device temperature
  output  [11:0]  device_temp               // Sampled temperature
);

  //***************************************************************************
  // Function cdiv
  //  Description:
  //    This function performs ceiling division (divide and round-up)
  //  Inputs:
  //    num: integer to be divided
  //    div: divisor
  // Outputs:
  //    cdiv: result of ceiling division (num/div, rounded up)
  //***************************************************************************

  function integer cdiv (input integer num, input integer div);
    begin
      // perform division, then add 1 if and only if remainder is non-zero
      cdiv = (num/div) + (((num%div)>0) ? 1 : 0);
    end
  endfunction // cdiv

  //***************************************************************************
  // Function clogb2
  //  Description:
  //    This function performs binary logarithm and rounds up
  //  Inputs:
  //    size: integer to perform binary log upon
  // Outputs:
  //    clogb2: result of binary logarithm, rounded up
  //***************************************************************************

  function integer clogb2 (input integer size);
    begin

      size = size - 1;

      // increment clogb2 from 1 for each bit in size
      for (clogb2 = 1; size > 1; clogb2 = clogb2 + 1)
      size = size >> 1;

    end

  endfunction // clogb2

  // Synchronization registers
  (* ASYNC_REG = "TRUE" *)  reg   [11:0]  device_temp_sync_r1;
  (* ASYNC_REG = "TRUE" *)  reg   [11:0]  device_temp_sync_r2;
  (* ASYNC_REG = "TRUE" *)  reg   [11:0]  device_temp_sync_r3 /* synthesis syn_srlstyle="registers" */;
  (* ASYNC_REG = "TRUE" *)  reg   [11:0]  device_temp_sync_r4;
  (* ASYNC_REG = "TRUE" *)  reg   [11:0]  device_temp_sync_r5;

  // Output register
  (* ASYNC_REG = "TRUE" *)  reg   [11:0]  device_temp_r;

  wire                            [11:0]  device_temp_lcl;
  reg                             [3:0]   sync_cntr = 4'b0000;
  reg                                     device_temp_sync_r4_neq_r3;

 // (* ASYNC_REG = "TRUE" *)  reg rst_r1;
 // (* ASYNC_REG = "TRUE" *)  reg rst_r2;

 // // Synchronization rst to XADC clock domain
 // always @(posedge xadc_clk) begin
 //   rst_r1 <= rst;
 //   rst_r2 <= rst_r1;
 // end

  // Synchronization counter
  always @(posedge clk) begin

    device_temp_sync_r1 <= #TCQ device_temp_lcl;
    device_temp_sync_r2 <= #TCQ device_temp_sync_r1;
    device_temp_sync_r3 <= #TCQ device_temp_sync_r2;
    device_temp_sync_r4 <= #TCQ device_temp_sync_r3;
    device_temp_sync_r5 <= #TCQ device_temp_sync_r4;

    device_temp_sync_r4_neq_r3 <= #TCQ (device_temp_sync_r4 != device_temp_sync_r3) ? 1'b1 : 1'b0;

  end

  always @(posedge clk)
    if(rst || (device_temp_sync_r4_neq_r3))
      sync_cntr <= #TCQ 4'b0000;
    else if(~&sync_cntr)
      sync_cntr <= #TCQ sync_cntr + 4'b0001;

  always @(posedge clk)
    if(&sync_cntr)
      device_temp_r <= #TCQ device_temp_sync_r5;

  assign device_temp = device_temp_r;

  generate

    if(TEMP_MON_CONTROL == "EXTERNAL") begin : user_supplied_temperature

      assign device_temp_lcl = device_temp_i;

    end else begin : xadc_supplied_temperature

      // calculate polling timer width and limit
      localparam nTEMPSAMP = cdiv(tTEMPSAMPLE, XADC_CLK_PERIOD);
      localparam nTEMPSAMP_CLKS = nTEMPSAMP;
      localparam nTEMPSAMP_CLKS_M6 = nTEMPSAMP - 6;
      localparam nTEMPSAMP_CNTR_WIDTH = clogb2(nTEMPSAMP_CLKS);

      // Temperature sampler FSM encoding
      localparam INIT_IDLE                                = 2'b00;
      localparam REQUEST_READ_TEMP                        = 2'b01;
      localparam WAIT_FOR_READ                            = 2'b10;
      localparam READ                                     = 2'b11;

      // polling timer and tick
      reg [nTEMPSAMP_CNTR_WIDTH-1:0]  sample_timer = {nTEMPSAMP_CNTR_WIDTH{1'b0}};
      reg                             sample_timer_en     = 1'b0;
      reg                             sample_timer_clr    = 1'b0;
      reg                             sample_en           = 1'b0;

      // Temperature sampler state
      reg [2:0]                       tempmon_state       = INIT_IDLE;
      reg [2:0]                       tempmon_next_state  = INIT_IDLE;

      // XADC interfacing
      reg                             xadc_den            = 1'b0;
      wire                            xadc_drdy;
      wire  [15:0]                    xadc_do;
      reg                             xadc_drdy_r         = 1'b0;
      reg   [15:0]                    xadc_do_r           = 1'b0;

      // Temperature storage
      reg   [11:0]                    temperature         = 12'b0;

      // Reset sync
      (* ASYNC_REG = "TRUE" *)  reg rst_r1;
      (* ASYNC_REG = "TRUE" *)  reg rst_r2;
                                                  
      // Synchronization rst to XADC clock domain
      always @(posedge xadc_clk) begin
        rst_r1 <= rst;
        rst_r2 <= rst_r1;
      end

      // XADC polling interval timer
      always @ (posedge xadc_clk)
        if(rst_r2 || sample_timer_clr)
          sample_timer <= #TCQ {nTEMPSAMP_CNTR_WIDTH{1'b0}};
        else if(sample_timer_en)
          sample_timer <= #TCQ sample_timer + 1'b1;

      // XADC sampler state transition
      always @(posedge xadc_clk)
        if(rst_r2)
          tempmon_state <= #TCQ INIT_IDLE;
        else
          tempmon_state <= #TCQ tempmon_next_state;

      // Sample enable
      always @(posedge xadc_clk)
        sample_en <= #TCQ (sample_timer == nTEMPSAMP_CLKS_M6) ? 1'b1 : 1'b0;

      // XADC sampler next state transition
      always @(tempmon_state or sample_en or xadc_drdy_r) begin

        tempmon_next_state = tempmon_state;

        case(tempmon_state)

          INIT_IDLE:
            if(sample_en)
              tempmon_next_state = REQUEST_READ_TEMP;

          REQUEST_READ_TEMP:
            tempmon_next_state = WAIT_FOR_READ;

          WAIT_FOR_READ:
            if(xadc_drdy_r)
              tempmon_next_state = READ;

          READ:
            tempmon_next_state = INIT_IDLE;

          default:
            tempmon_next_state = INIT_IDLE;

        endcase

      end

      // Sample timer clear
      always @(posedge xadc_clk)
        if(rst_r2 || (tempmon_state == WAIT_FOR_READ))
          sample_timer_clr <= #TCQ 1'b0;
        else if(tempmon_state == REQUEST_READ_TEMP)
          sample_timer_clr <= #TCQ 1'b1;

      // Sample timer enable
      always @(posedge xadc_clk)
        if(rst_r2 || (tempmon_state == REQUEST_READ_TEMP))
          sample_timer_en <= #TCQ 1'b0;
        else if((tempmon_state == INIT_IDLE) || (tempmon_state == READ))
          sample_timer_en <= #TCQ 1'b1;

      // XADC enable
      always @(posedge xadc_clk)
        if(rst_r2 || (tempmon_state == WAIT_FOR_READ))
          xadc_den <= #TCQ 1'b0;
        else if(tempmon_state == REQUEST_READ_TEMP)
          xadc_den <= #TCQ 1'b1;

      // Register XADC outputs
      always @(posedge xadc_clk)
        if(rst_r2) begin
          xadc_drdy_r <= #TCQ 1'b0;
          xadc_do_r <= #TCQ 16'b0;
        end
        else begin
          xadc_drdy_r <= #TCQ xadc_drdy;
          xadc_do_r <= #TCQ xadc_do;
        end

      // Store current read value
      always @(posedge xadc_clk)
        if(rst_r2)
          temperature <= #TCQ 12'b0;
        else if(tempmon_state == READ)
          temperature <= #TCQ xadc_do_r[15:4];

      assign device_temp_lcl = temperature;

      // XADC: Dual 12-Bit 1MSPS Analog-to-Digital Converter
      // 7 Series
      // Xilinx HDL Libraries Guide, version 14.1
      XADC #(
        // INIT_40 - INIT_42: XADC configuration registers
        .INIT_40(16'h1000), // config reg 0
        .INIT_41(16'h2fff), // config reg 1
        .INIT_42(16'h0800), // config reg 2
        // INIT_48 - INIT_4F: Sequence Registers
        .INIT_48(16'h0101), // Sequencer channel selection
        .INIT_49(16'h0000), // Sequencer channel selection
        .INIT_4A(16'h0100), // Sequencer Average selection
        .INIT_4B(16'h0000), // Sequencer Average selection
        .INIT_4C(16'h0000), // Sequencer Bipolar selection
        .INIT_4D(16'h0000), // Sequencer Bipolar selection
        .INIT_4E(16'h0000), // Sequencer Acq time selection
        .INIT_4F(16'h0000), // Sequencer Acq time selection
        // INIT_50 - INIT_58, INIT5C: Alarm Limit Registers
        .INIT_50(16'hb5ed), // Temp alarm trigger
        .INIT_51(16'h57e4), // Vccint upper alarm limit
        .INIT_52(16'ha147), // Vccaux upper alarm limit
        .INIT_53(16'hca33), // Temp alarm OT upper
        .INIT_54(16'ha93a), // Temp alarm reset
        .INIT_55(16'h52c6), // Vccint lower alarm limit
        .INIT_56(16'h9555), // Vccaux lower alarm limit
        .INIT_57(16'hae4e), // Temp alarm OT reset
        .INIT_58(16'h5999), // VBRAM upper alarm limit
        .INIT_5C(16'h5111), //  VBRAM lower alarm limit
        // Simulation attributes: Set for proepr simulation behavior
        .SIM_DEVICE("7SERIES")  // Select target device (values)
      )
      XADC_inst (
        // ALARMS: 8-bit (each) output: ALM, OT
        .ALM(),                     // 8-bit output: Output alarm for temp, Vccint, Vccaux and Vccbram
        .OT(),                      // 1-bit output: Over-Temperature alarm
        // Dynamic Reconfiguration Port (DRP): 16-bit (each) output: Dynamic Reconfiguration Ports
        .DO(xadc_do),               // 16-bit output: DRP output data bus
        .DRDY(xadc_drdy),           // 1-bit output: DRP data ready
        // STATUS: 1-bit (each) output: XADC status ports
        .BUSY(),                    // 1-bit output: ADC busy output
        .CHANNEL(),                 // 5-bit output: Channel selection outputs
        .EOC(),                     // 1-bit output: End of Conversion
        .EOS(),                     // 1-bit output: End of Sequence
        .JTAGBUSY(),                // 1-bit output: JTAG DRP transaction in progress output
        .JTAGLOCKED(),              // 1-bit output: JTAG requested DRP port lock
        .JTAGMODIFIED(),            // 1-bit output: JTAG Write to the DRP has occurred
        .MUXADDR(),                 // 5-bit output: External MUX channel decode
        // Auxiliary Analog-Input Pairs: 16-bit (each) input: VAUXP[15:0], VAUXN[15:0]
        .VAUXN(16'b0),              // 16-bit input: N-side auxiliary analog input
        .VAUXP(16'b0),              // 16-bit input: P-side auxiliary analog input
        // CONTROL and CLOCK: 1-bit (each) input: Reset, conversion start and clock inputs
        .CONVST(1'b0),              // 1-bit input: Convert start input
        .CONVSTCLK(1'b0),           // 1-bit input: Convert start input
        .RESET(1'b0),               // 1-bit input: Active-high reset
        // Dedicated Analog Input Pair: 1-bit (each) input: VP/VN
        .VN(1'b0),                  // 1-bit input: N-side analog input
        .VP(1'b0),                  // 1-bit input: P-side analog input
        // Dynamic Reconfiguration Port (DRP): 7-bit (each) input: Dynamic Reconfiguration Ports
        .DADDR(7'b0),               // 7-bit input: DRP address bus
        .DCLK(xadc_clk),            // 1-bit input: DRP clock
        .DEN(xadc_den),             // 1-bit input: DRP enable signal
        .DI(16'b0),                 // 16-bit input: DRP input data bus
        .DWE(1'b0)                  // 1-bit input: DRP write enable
      );

      // End of XADC_inst instantiation

    end

  endgenerate

endmodule

