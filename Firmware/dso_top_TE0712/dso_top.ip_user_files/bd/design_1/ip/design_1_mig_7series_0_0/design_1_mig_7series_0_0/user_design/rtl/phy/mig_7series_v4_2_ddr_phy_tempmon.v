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
//  /   /         Filename              : mig_7series_v4_2_ddr_phy_tempmon.v
// /___/   /\     Date Last Modified    : $date$
// \   \  /  \    Date Created          : Dec 20 2013
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

module mig_7series_v4_2_ddr_phy_tempmon #
(
  parameter SKIP_CALIB      = "FALSE",
  parameter TCQ             = 100,      // Register delay (simulation only)
  // Temperature bands must be in order. To disable bands, set to extreme.
  parameter TEMP_INCDEC     = 1465,   // Degrees C * 100 (14.65 * 100) 
  parameter TEMP_HYST       = 1,
  parameter TEMP_MIN_LIMIT  = 12'h8ac,
  parameter TEMP_MAX_LIMIT  = 12'hca4
)
(
  input           clk,                  // Fabric clock
  input           rst,                  // System reset
  input           calib_complete,       // Calibration complete
  input           tempmon_sample_en,    // Signal to enable sampling
  input   [11:0]  device_temp,          // Current device temperature
  input   [11:0]  calib_device_temp,    // Calibration device temperature
  output          tempmon_pi_f_inc,     // Increment PHASER_IN taps
  output          tempmon_pi_f_dec,     // Decrement PHASER_IN taps
  output          tempmon_sel_pi_incdec, // Assume control of PHASER_IN taps
  output          tempmon_done_skip
);

  // translate hysteresis into XADC units
  localparam HYST_OFFSET = (TEMP_HYST * 4096) / 504;

  localparam TEMP_INCDEC_OFFSET = ((TEMP_INCDEC * 4096) / 50400) ;

  // Temperature sampler FSM encoding
  localparam IDLE      = 11'b000_0000_0001;
  localparam INIT      = 11'b000_0000_0010;
  localparam FOUR_INC  = 11'b000_0000_0100;
  localparam THREE_INC = 11'b000_0000_1000;
  localparam TWO_INC   = 11'b000_0001_0000;
  localparam ONE_INC   = 11'b000_0010_0000;
  localparam NEUTRAL   = 11'b000_0100_0000;
  localparam ONE_DEC   = 11'b000_1000_0000;
  localparam TWO_DEC   = 11'b001_0000_0000;
  localparam THREE_DEC = 11'b010_0000_0000;
  localparam FOUR_DEC  = 11'b100_0000_0000;


  //===========================================================================
  // Reg declarations
  //===========================================================================

  // Output port flops.  Inc and dec are mutex.
  reg         pi_f_dec;     // Flop output
  reg         pi_f_inc;     // Flop output
  reg         pi_f_dec_nxt; // FSM output
  reg         pi_f_inc_nxt; // FSM output

  // FSM state
  reg  [10:0] tempmon_state;
  reg  [10:0] tempmon_state_nxt;

  // FSM output used to capture the initial device termperature
  reg         tempmon_state_init;

  // Flag to indicate the initial device temperature is captured and normal operation can begin
  reg         tempmon_init_complete;

  // Temperature band/state boundaries
  reg  [11:0] four_inc_max_limit;
  reg  [11:0] three_inc_max_limit;
  reg  [11:0] two_inc_max_limit;
  reg  [11:0] one_inc_max_limit;
  reg  [11:0] neutral_max_limit;
  reg  [11:0] one_dec_max_limit;
  reg  [11:0] two_dec_max_limit;
  reg  [11:0] three_dec_max_limit;
  reg  [11:0] three_inc_min_limit;
  reg  [11:0] two_inc_min_limit;
  reg  [11:0] one_inc_min_limit;
  reg  [11:0] neutral_min_limit;
  reg  [11:0] one_dec_min_limit;
  reg  [11:0] two_dec_min_limit;
  reg  [11:0] three_dec_min_limit;
  reg  [11:0] four_dec_min_limit;
  reg  [11:0] device_temp_init;

  // Flops for capturing and storing the current device temperature
  reg         tempmon_sample_en_101;
  reg         tempmon_sample_en_102;
  reg  [11:0] device_temp_101;
  reg  [11:0] device_temp_capture_102;
  reg         update_temp_102;

  // Flops for comparing temperature to max limits
  reg         temp_cmp_four_inc_max_102;
  reg         temp_cmp_three_inc_max_102;
  reg         temp_cmp_two_inc_max_102;
  reg         temp_cmp_one_inc_max_102;
  reg         temp_cmp_neutral_max_102;
  reg         temp_cmp_one_dec_max_102;
  reg         temp_cmp_two_dec_max_102;
  reg         temp_cmp_three_dec_max_102;

  // Flops for comparing temperature to min limits
  reg         temp_cmp_three_inc_min_102;
  reg         temp_cmp_two_inc_min_102;
  reg         temp_cmp_one_inc_min_102;
  reg         temp_cmp_neutral_min_102;
  reg         temp_cmp_one_dec_min_102;
  reg         temp_cmp_two_dec_min_102;
  reg         temp_cmp_three_dec_min_102;
  reg         temp_cmp_four_dec_min_102;
  
  reg         calib_complete_r;
  reg         tempmon_done;
  reg [2:0]   sample_en_cnt;
  
  always @ (posedge clk)
    calib_complete_r <= #TCQ calib_complete;
	
   wire [11:0] device_temp_in = ((tempmon_state_init | ~calib_complete_r) & (SKIP_CALIB == "TRUE")) ? calib_device_temp : device_temp;
   
  always @ (posedge clk) begin
    if (rst)
	  sample_en_cnt <= #TCQ 'd0;
	else if ((tempmon_sample_en & ~tempmon_sample_en_101) & ((SKIP_CALIB == "TRUE")) & (sample_en_cnt < 'd5))
	  sample_en_cnt <= #TCQ sample_en_cnt + 1;
  end
  
  always @ (posedge clk) begin
    if (rst)
	  tempmon_done <= #TCQ 1'b0;
	else if ((sample_en_cnt == 'd5) & ((SKIP_CALIB == "TRUE")))
	  tempmon_done <= #TCQ 1'b1;
  end
  
  assign tempmon_done_skip = tempmon_done;
  
  //===========================================================================
  // Overview and temperature band limits
  //===========================================================================

  // The main feature of the tempmon block is an FSM that tracks the temerature provided by the ADC and decides if the phaser needs to be adjusted.  The FSM 
  // has nine temperature bands or states, centered around an initial device temperature.  The name of each state is the net number of phaser increments or
  // decrements that have been issued in getting to the state.  There are two temperature boundaries or limits between adjacent states.  These two boundaries are
  // offset by a small amount to provide hysteresis.  The max limits are the boundaries that are used to determine when to move to the next higher temperature state
  // and decrement the phaser.  The min limits determine when to move to the next lower temperature state and increment the phaser.  The limits are calculated when
  // the initial device temperature is taken, and will always be at fixed offsets from the initial device temperature.  States with limits below 0C or above
  // 125C will never be entered.

  // Temperature  lowest                                                                                                                                     highest
  //              <------------------------------------------------------------------------------------------------------------------------------------------------>
  //
  // Temp          four          three            two               one              neutral            one               two                three            four
  // band/state    inc           inc              inc               inc                                 dec               dec                dec              dec 
  // 
  // Max limits           |<-2*TEMP_INCDEC->|<-2*TEMP_INCDEC->|<-2*TEMP_INCDEC->|<-2*TEMP_INCDEC->|<-2*TEMP_INCDEC->|<-2*TEMP_INCDEC->|<-2*TEMP_INCDEC->|
  // Min limits        |<-2*TEMP_INCDEC->|<-2*TEMP_INCDEC->|<-2*TEMP_INCDEC->|<-2*TEMP_INCDEC->|<-2*TEMP_INCDEC->|<-2*TEMP_INCDEC->|<-2*TEMP_INCDEC->|  |
  //                   |  |                                |  |                        |                                                             |  |
  //                   |  |                                |  |                        |                                                             |  |
  // three_inc_min_limit  |                 HYST_OFFSET--->|  |<--                     |                                            four_dec_min_limit  |
  //                      |                                                     device_temp_init                                                        |
  //     four_inc_max_limit                                                                                                           three_dec_max_limit



  // Boundaries for moving from lower temp bands to higher temp bands.
  // Note that only three_dec_max_limit can roll over, assuming device_temp_init is between 0C and 125C and TEMP_INCDEC_OFFSET is 14.65C,
  // and none of the min or max limits can roll under.  So three_dec_max_limit has a check for being out of the 0x0 to 0xFFF range.
  wire [11:0] four_inc_max_limit_nxt  = device_temp_init - 7*TEMP_INCDEC_OFFSET; // upper boundary of lowest temp band
  wire [11:0] three_inc_max_limit_nxt = device_temp_init - 5*TEMP_INCDEC_OFFSET;
  wire [11:0] two_inc_max_limit_nxt   = device_temp_init - 3*TEMP_INCDEC_OFFSET;
  wire [11:0] one_inc_max_limit_nxt   = device_temp_init -   TEMP_INCDEC_OFFSET; 
  wire [11:0] neutral_max_limit_nxt   = device_temp_init +   TEMP_INCDEC_OFFSET; // upper boundary of init temp band
  wire [11:0] one_dec_max_limit_nxt   = device_temp_init + 3*TEMP_INCDEC_OFFSET;
  wire [11:0] two_dec_max_limit_nxt   = device_temp_init + 5*TEMP_INCDEC_OFFSET;
  wire [12:0] three_dec_max_limit_tmp = device_temp_init + 7*TEMP_INCDEC_OFFSET; // upper boundary of 2nd highest temp band
  wire [11:0] three_dec_max_limit_nxt = three_dec_max_limit_tmp[12] ? 12'hFFF : three_dec_max_limit_tmp[11:0];


  // Boundaries for moving from higher temp bands to lower temp bands
  wire [11:0] three_inc_min_limit_nxt = four_inc_max_limit  - HYST_OFFSET; // lower boundary of 2nd lowest temp band
  wire [11:0] two_inc_min_limit_nxt   = three_inc_max_limit - HYST_OFFSET;
  wire [11:0] one_inc_min_limit_nxt   = two_inc_max_limit   - HYST_OFFSET;
  wire [11:0] neutral_min_limit_nxt   = one_inc_max_limit   - HYST_OFFSET; // lower boundary of init temp band
  wire [11:0] one_dec_min_limit_nxt   = neutral_max_limit   - HYST_OFFSET;
  wire [11:0] two_dec_min_limit_nxt   = one_dec_max_limit   - HYST_OFFSET;
  wire [11:0] three_dec_min_limit_nxt = two_dec_max_limit   - HYST_OFFSET;
  wire [11:0] four_dec_min_limit_nxt  = three_dec_max_limit - HYST_OFFSET; // lower boundary of highest temp band



  //===========================================================================
  // Capture device temperature
  //===========================================================================

  // There is a three stage pipeline used to capture temperature, calculate the next state
  // of the FSM, and update the tempmon outputs.
  //
  // Stage 100  Inputs device_temp and tempmon_sample_en become valid and are flopped.
  //            Input device_temp is compared to ADC codes for 0C and 125C and limited
  //            at the flop input if needed.
  //
  // Stage 101  The flopped version of device_temp is compared to the FSM temperature band boundaries
  //            to determine if a state change is needed.  State changes are only enabled on the
  //            rising edge of the flopped tempmon_sample_en signal.  If there is a state change a phaser
  //            increment or decrement signal is generated and flopped.
  //
  // Stage 102  The flopped versions of the phaser inc/dec signals drive the module outputs.

  // Limit device_temp to 0C to 125C and assign it to flop input device_temp_100
  // temp C = ( ( ADC CODE * 503.975 ) / 4096 ) - 273.15
  wire        device_temp_high = device_temp_in > TEMP_MAX_LIMIT;
  wire        device_temp_low  = device_temp_in < TEMP_MIN_LIMIT;
  wire [11:0] device_temp_100  =     ( { 12 {  device_temp_high                     } } & TEMP_MAX_LIMIT )
                                   | ( { 12 {                      device_temp_low  } } & TEMP_MIN_LIMIT )
                                   | ( { 12 { ~device_temp_high & ~device_temp_low  } } & device_temp_in );

  // Capture/hold the initial temperature used in setting temperature bands and set init complete flag
  // to enable normal sample operation.
  wire [11:0] device_temp_init_nxt      = tempmon_state_init  ? device_temp_101 : device_temp_init;
  wire        tempmon_init_complete_nxt = tempmon_state_init  ? 1'b1            : tempmon_init_complete;

  // Capture/hold the current temperature on the sample enable signal rising edge after init is complete.
  // The captured current temp is not used functionaly.  It is just useful for debug and waveform review.
  wire        update_temp_101           =  tempmon_init_complete & ~tempmon_sample_en_102 & tempmon_sample_en_101;
  wire [11:0] device_temp_capture_101   =  update_temp_101 ? device_temp_101 : device_temp_capture_102;


  //===========================================================================
  // Generate FSM arc signals
  //===========================================================================

  // Temperature comparisons for increasing temperature.
  wire        temp_cmp_four_inc_max_101  = device_temp_101 >= four_inc_max_limit  ;
  wire        temp_cmp_three_inc_max_101 = device_temp_101 >= three_inc_max_limit ;
  wire        temp_cmp_two_inc_max_101   = device_temp_101 >= two_inc_max_limit   ;
  wire        temp_cmp_one_inc_max_101   = device_temp_101 >= one_inc_max_limit   ;
  wire        temp_cmp_neutral_max_101   = device_temp_101 >= neutral_max_limit   ;
  wire        temp_cmp_one_dec_max_101   = device_temp_101 >= one_dec_max_limit   ;
  wire        temp_cmp_two_dec_max_101   = device_temp_101 >= two_dec_max_limit   ;
  wire        temp_cmp_three_dec_max_101 = device_temp_101 >= three_dec_max_limit ;

  // Temperature comparisons for decreasing temperature.
  wire        temp_cmp_three_inc_min_101 = device_temp_101 < three_inc_min_limit ;
  wire        temp_cmp_two_inc_min_101   = device_temp_101 < two_inc_min_limit   ;
  wire        temp_cmp_one_inc_min_101   = device_temp_101 < one_inc_min_limit   ;
  wire        temp_cmp_neutral_min_101   = device_temp_101 < neutral_min_limit   ;
  wire        temp_cmp_one_dec_min_101   = device_temp_101 < one_dec_min_limit   ;
  wire        temp_cmp_two_dec_min_101   = device_temp_101 < two_dec_min_limit   ;
  wire        temp_cmp_three_dec_min_101 = device_temp_101 < three_dec_min_limit ;
  wire        temp_cmp_four_dec_min_101  = device_temp_101 < four_dec_min_limit  ;

  // FSM arcs for increasing temperature.
  wire        temp_gte_four_inc_max  = update_temp_102 & temp_cmp_four_inc_max_102;
  wire        temp_gte_three_inc_max = update_temp_102 & temp_cmp_three_inc_max_102;
  wire        temp_gte_two_inc_max   = update_temp_102 & temp_cmp_two_inc_max_102;
  wire        temp_gte_one_inc_max   = update_temp_102 & temp_cmp_one_inc_max_102;
  wire        temp_gte_neutral_max   = update_temp_102 & temp_cmp_neutral_max_102;
  wire        temp_gte_one_dec_max   = update_temp_102 & temp_cmp_one_dec_max_102;
  wire        temp_gte_two_dec_max   = update_temp_102 & temp_cmp_two_dec_max_102;
  wire        temp_gte_three_dec_max = update_temp_102 & temp_cmp_three_dec_max_102;

  // FSM arcs for decreasing temperature.
  wire        temp_lte_three_inc_min = update_temp_102 & temp_cmp_three_inc_min_102;
  wire        temp_lte_two_inc_min   = update_temp_102 & temp_cmp_two_inc_min_102;
  wire        temp_lte_one_inc_min   = update_temp_102 & temp_cmp_one_inc_min_102;
  wire        temp_lte_neutral_min   = update_temp_102 & temp_cmp_neutral_min_102;
  wire        temp_lte_one_dec_min   = update_temp_102 & temp_cmp_one_dec_min_102;
  wire        temp_lte_two_dec_min   = update_temp_102 & temp_cmp_two_dec_min_102;
  wire        temp_lte_three_dec_min = update_temp_102 & temp_cmp_three_dec_min_102;
  wire        temp_lte_four_dec_min  = update_temp_102 & temp_cmp_four_dec_min_102;


  //===========================================================================
  // Implement FSM
  //===========================================================================

  // In addition to the nine temperature states, there are also IDLE and INIT states.
  // The INIT state triggers the calculation of the temperature boundaries between the
  // other states.  After INIT, the FSM will always go to the NEUTRAL state.  There is
  // no timing restriction required between calib_complete and tempmon_sample_en.

  always @(*) begin

    tempmon_state_nxt = tempmon_state;
    tempmon_state_init = 1'b0;
    pi_f_inc_nxt = 1'b0;
    pi_f_dec_nxt = 1'b0;

    casez (tempmon_state)
      IDLE: begin
        if (calib_complete) tempmon_state_nxt = INIT;
      end
      INIT: begin
        tempmon_state_nxt = NEUTRAL;
        tempmon_state_init = 1'b1;
      end
      FOUR_INC: begin
        if (temp_gte_four_inc_max) begin
	  tempmon_state_nxt = THREE_INC;
          pi_f_dec_nxt = 1'b1;
        end
      end
      THREE_INC: begin
        if (temp_gte_three_inc_max) begin
	  tempmon_state_nxt = TWO_INC;
          pi_f_dec_nxt = 1'b1;
        end
	else if (temp_lte_three_inc_min) begin
	  tempmon_state_nxt = FOUR_INC;
          pi_f_inc_nxt = 1'b1;
        end
      end
      TWO_INC: begin
        if (temp_gte_two_inc_max) begin
	  tempmon_state_nxt = ONE_INC;
          pi_f_dec_nxt = 1'b1;
        end
	else if (temp_lte_two_inc_min) begin
	  tempmon_state_nxt = THREE_INC;
          pi_f_inc_nxt = 1'b1;
        end
      end
      ONE_INC: begin
        if (temp_gte_one_inc_max) begin
	  tempmon_state_nxt = NEUTRAL;
          pi_f_dec_nxt = 1'b1;
        end
	else if (temp_lte_one_inc_min) begin
	  tempmon_state_nxt = TWO_INC;
          pi_f_inc_nxt = 1'b1;
        end
      end
      NEUTRAL: begin
        if (temp_gte_neutral_max) begin
	  tempmon_state_nxt = ONE_DEC;
          pi_f_dec_nxt = 1'b1;
        end
	else if (temp_lte_neutral_min) begin
	  tempmon_state_nxt = ONE_INC;
          pi_f_inc_nxt = 1'b1;
        end
      end
      ONE_DEC: begin
        if (temp_gte_one_dec_max) begin
	  tempmon_state_nxt = TWO_DEC;
          pi_f_dec_nxt = 1'b1;
        end
	else if (temp_lte_one_dec_min) begin
	  tempmon_state_nxt = NEUTRAL;
          pi_f_inc_nxt = 1'b1;
        end
      end
      TWO_DEC: begin
        if (temp_gte_two_dec_max) begin
	  tempmon_state_nxt = THREE_DEC;
          pi_f_dec_nxt = 1'b1;
        end
	else if (temp_lte_two_dec_min) begin
	  tempmon_state_nxt = ONE_DEC;
          pi_f_inc_nxt = 1'b1;
        end
      end
      THREE_DEC: begin
        if (temp_gte_three_dec_max) begin
	  tempmon_state_nxt = FOUR_DEC;
          pi_f_dec_nxt = 1'b1;
        end
	else if (temp_lte_three_dec_min) begin
	  tempmon_state_nxt = TWO_DEC;
          pi_f_inc_nxt = 1'b1;
        end
      end
      FOUR_DEC: begin
	if (temp_lte_four_dec_min) begin
	  tempmon_state_nxt = THREE_DEC;
          pi_f_inc_nxt = 1'b1;
        end
      end
      default: begin
	  tempmon_state_nxt = IDLE;
      end
    endcase

  end //always

//synopsys translate_off
reg [71:0] tempmon_state_name;
always @(*) casez (tempmon_state)
   IDLE      : tempmon_state_name = "IDLE";
   INIT      : tempmon_state_name = "INIT";
   FOUR_INC  : tempmon_state_name = "FOUR_INC";
   THREE_INC : tempmon_state_name = "THREE_INC";
   TWO_INC   : tempmon_state_name = "TWO_INC";
   ONE_INC   : tempmon_state_name = "ONE_INC";
   NEUTRAL   : tempmon_state_name = "NEUTRAL";
   ONE_DEC   : tempmon_state_name = "ONE_DEC";
   TWO_DEC   : tempmon_state_name = "TWO_DEC";
   THREE_DEC : tempmon_state_name = "THREE_DEC";
   FOUR_DEC  : tempmon_state_name = "FOUR_DEC";
   default   : tempmon_state_name = "BAD_STATE";
endcase
//synopsys translate_on

  //===========================================================================
  // Generate final output and implement flops
  //===========================================================================

  // Generate output
  assign tempmon_pi_f_inc = pi_f_inc;
  assign tempmon_pi_f_dec = pi_f_dec;
  assign tempmon_sel_pi_incdec = pi_f_inc | pi_f_dec;


  // Implement reset flops
  always @(posedge clk) begin
    if(rst) begin
      tempmon_state           <= #TCQ 11'b000_0000_0001;
      pi_f_inc                <= #TCQ 1'b0;
      pi_f_dec                <= #TCQ 1'b0;
      four_inc_max_limit      <= #TCQ 12'b0;
      three_inc_max_limit     <= #TCQ 12'b0;
      two_inc_max_limit       <= #TCQ 12'b0;
      one_inc_max_limit       <= #TCQ 12'b0;
      neutral_max_limit       <= #TCQ 12'b0;
      one_dec_max_limit       <= #TCQ 12'b0;
      two_dec_max_limit       <= #TCQ 12'b0;
      three_dec_max_limit     <= #TCQ 12'b0;
      three_inc_min_limit     <= #TCQ 12'b0;
      two_inc_min_limit       <= #TCQ 12'b0;
      one_inc_min_limit       <= #TCQ 12'b0;
      neutral_min_limit       <= #TCQ 12'b0;
      one_dec_min_limit       <= #TCQ 12'b0;
      two_dec_min_limit       <= #TCQ 12'b0;
      three_dec_min_limit     <= #TCQ 12'b0;
      four_dec_min_limit      <= #TCQ 12'b0;
      device_temp_init        <= #TCQ 12'b0;
      tempmon_init_complete   <= #TCQ 1'b0;
      tempmon_sample_en_101   <= #TCQ 1'b0;
      tempmon_sample_en_102   <= #TCQ 1'b0;
      device_temp_101         <= #TCQ 12'b0;
      device_temp_capture_102 <= #TCQ 12'b0;
    end
    else begin
      tempmon_state           <= #TCQ tempmon_state_nxt;
      pi_f_inc                <= #TCQ pi_f_inc_nxt;
      pi_f_dec                <= #TCQ pi_f_dec_nxt;
      four_inc_max_limit      <= #TCQ four_inc_max_limit_nxt;
      three_inc_max_limit     <= #TCQ three_inc_max_limit_nxt;
      two_inc_max_limit       <= #TCQ two_inc_max_limit_nxt;
      one_inc_max_limit       <= #TCQ one_inc_max_limit_nxt;
      neutral_max_limit       <= #TCQ neutral_max_limit_nxt;
      one_dec_max_limit       <= #TCQ one_dec_max_limit_nxt;
      two_dec_max_limit       <= #TCQ two_dec_max_limit_nxt;
      three_dec_max_limit     <= #TCQ three_dec_max_limit_nxt;
      three_inc_min_limit     <= #TCQ three_inc_min_limit_nxt;
      two_inc_min_limit       <= #TCQ two_inc_min_limit_nxt;
      one_inc_min_limit       <= #TCQ one_inc_min_limit_nxt;
      neutral_min_limit       <= #TCQ neutral_min_limit_nxt;
      one_dec_min_limit       <= #TCQ one_dec_min_limit_nxt;
      two_dec_min_limit       <= #TCQ two_dec_min_limit_nxt;
      three_dec_min_limit     <= #TCQ three_dec_min_limit_nxt;
      four_dec_min_limit      <= #TCQ four_dec_min_limit_nxt;
      device_temp_init        <= #TCQ device_temp_init_nxt;
      tempmon_init_complete   <= #TCQ tempmon_init_complete_nxt;
      tempmon_sample_en_101   <= #TCQ tempmon_sample_en;
      tempmon_sample_en_102   <= #TCQ tempmon_sample_en_101;
      device_temp_101         <= #TCQ device_temp_100;
      device_temp_capture_102 <= #TCQ device_temp_capture_101;
    end
  end

  // Implement non-reset flops
  always @(posedge clk) begin
      temp_cmp_four_inc_max_102  <= #TCQ temp_cmp_four_inc_max_101;
      temp_cmp_three_inc_max_102 <= #TCQ temp_cmp_three_inc_max_101;
      temp_cmp_two_inc_max_102   <= #TCQ temp_cmp_two_inc_max_101;
      temp_cmp_one_inc_max_102   <= #TCQ temp_cmp_one_inc_max_101;
      temp_cmp_neutral_max_102   <= #TCQ temp_cmp_neutral_max_101;
      temp_cmp_one_dec_max_102   <= #TCQ temp_cmp_one_dec_max_101;
      temp_cmp_two_dec_max_102   <= #TCQ temp_cmp_two_dec_max_101;
      temp_cmp_three_dec_max_102 <= #TCQ temp_cmp_three_dec_max_101;
      temp_cmp_three_inc_min_102 <= #TCQ temp_cmp_three_inc_min_101;
      temp_cmp_two_inc_min_102   <= #TCQ temp_cmp_two_inc_min_101;
      temp_cmp_one_inc_min_102   <= #TCQ temp_cmp_one_inc_min_101;
      temp_cmp_neutral_min_102   <= #TCQ temp_cmp_neutral_min_101;
      temp_cmp_one_dec_min_102   <= #TCQ temp_cmp_one_dec_min_101;
      temp_cmp_two_dec_min_102   <= #TCQ temp_cmp_two_dec_min_101;
      temp_cmp_three_dec_min_102 <= #TCQ temp_cmp_three_dec_min_101;
      temp_cmp_four_dec_min_102  <= #TCQ temp_cmp_four_dec_min_101;
      update_temp_102            <= #TCQ update_temp_101;
  end


endmodule

