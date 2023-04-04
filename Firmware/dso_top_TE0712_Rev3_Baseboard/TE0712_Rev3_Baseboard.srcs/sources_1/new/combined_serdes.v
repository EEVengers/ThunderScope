
`timescale 1ps/1ps

module combined_serdes(
  input         io_reset,
  input         clk_in_int_buf,      
  input  [8:0]  data_in_from_pins_p,
  input  [8:0]  data_in_from_pins_n,
  input         ref_clock_bufg,      
  input         bitslip,       
  output        delay_locked,
  output        divclk,
  output [71:0] deser
  );
  
  parameter integer PARAM_ARRAY [8:0] = {7, 7, 8, 7, 7, 7, 7, 7, 7};
  
  wire [8:0] data_in_from_pins_int;
  wire [8:0] data_in_from_pins_delay;

  // We have multiple bits- step over every bit, instantiating the required elements
   genvar i;
   generate
	for (i = 0 ; i < 9 ; i = i+1) begin : loop_br

    IBUFDS
      #(.DIFF_TERM  ("TRUE"),             // Differential termination
        .IOSTANDARD ("LVDS_25"))
     ibufds_inst
       (.I          (data_in_from_pins_p  [i]),
        .IB         (data_in_from_pins_n  [i]),
        .O          (data_in_from_pins_int[i]));

     (* IODELAY_GROUP = "selectio_wiz_0_group" *)
     IDELAYE2
       # (
         .CINVCTRL_SEL           ("FALSE"),                            // TRUE, FALSE
         .DELAY_SRC              ("IDATAIN"),                          // IDATAIN, DATAIN
         .HIGH_PERFORMANCE_MODE  ("TRUE"),                            // TRUE, FALSE
         .IDELAY_TYPE            ("FIXED"),              // FIXED, VARIABLE, or VAR_LOADABLE
         .IDELAY_VALUE           (PARAM_ARRAY[i]),                  // 0 to 31
         .REFCLK_FREQUENCY       (200),
         .PIPE_SEL               ("FALSE"),
         .SIGNAL_PATTERN         ("DATA"))                             // CLOCK, DATA
       idelaye2_bus
           (
         .DATAOUT                (data_in_from_pins_delay[i]),
         .DATAIN                 (1'b0),                               // Data from FPGA logic
         .C                      (divclk),
         .CE                     (1'b0),
         .INC                    (1'b0),
         .IDATAIN                (data_in_from_pins_int  [i]), // Driven by IOB
         .LD                     (1'b0),
         .REGRST                 (io_reset),
         .LDPIPEEN               (1'b0),
         .CNTVALUEIN             (5'b00000),
         .CNTVALUEOUT            (),
         .CINVCTRL               (1'b0)
         );

     wire clk_in_int_inv;
     assign clk_in_int_inv = ~ (clk_in_int_buf);   
      
     ISERDESE2
       # (
         .DATA_RATE         ("DDR"),
         .DATA_WIDTH        (8),
         .INTERFACE_TYPE    ("NETWORKING"), 
         .DYN_CLKDIV_INV_EN ("FALSE"),
         .DYN_CLK_INV_EN    ("FALSE"),
         .NUM_CE            (2),
         .OFB_USED          ("FALSE"),
         .IOBDELAY          ("IFD"),                                // Use input at DDLY to output the data on Q
         .SERDES_MODE       ("MASTER"))
       iserdese2_master (
         .Q1                (deser[(8*i)+7]),
         .Q2                (deser[(8*i)+6]),
         .Q3                (deser[(8*i)+5]),
         .Q4                (deser[(8*i)+4]),
         .Q5                (deser[(8*i)+3]),
         .Q6                (deser[(8*i)+2]),
         .Q7                (deser[(8*i)+1]),
         .Q8                (deser[(8*i)+0]),
         .SHIFTOUT1         (),
         .SHIFTOUT2         (),
         .BITSLIP           (bitslip),                             // 1-bit Invoke Bitslip. This can be used with any DATA_WIDTH, cascaded or not.
         .CE1               (1'b1),                                // 1-bit Clock enable input
         .CE2               (1'b1),                                // 1-bit Clock enable input
         .CLK               (clk_in_int_buf),                      // Fast source synchronous clock driven by BUFIO
         .CLKB              (clk_in_int_inv),                      // Locally inverted fast 
         .CLKDIV            (divclk),                             // Slow clock from BUFR.
         .CLKDIVP           (1'b0),
         .D                 (1'b0),                                // 1-bit Input signal from IOB
         .DDLY              (data_in_from_pins_delay[i]),          // 1-bit Input from Input Delay component 
         .RST               (io_reset),                            // 1-bit Asynchronous reset only.
         .SHIFTIN1          (1'b0),
         .SHIFTIN2          (1'b0),
         .DYNCLKDIVSEL      (1'b0),
         .DYNCLKSEL         (1'b0),
         .OFB               (1'b0),
         .OCLK              (1'b0),
         .OCLKB             (1'b0),
         .O                 ());                                   // unregistered output of ISERDESE1
  end
  endgenerate

// IDELAYCTRL is needed for calibration
(* IODELAY_GROUP = "selectio_wiz_0_group" *)
  IDELAYCTRL
    delayctrl (
     .RDY    (delay_locked),
     .REFCLK (ref_clock_bufg),
     .RST    (io_reset));

endmodule
