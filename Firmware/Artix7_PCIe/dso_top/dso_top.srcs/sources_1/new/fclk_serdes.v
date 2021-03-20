`timescale 1ns / 1ps

module fclk_serdes(
	input clk0,
	input rst,
	input divclk,
	input bitslip,
	input adc_fclk_p,
	input adc_fclk_n,
	output[7:0] fclk_deser
   );

	wire adc_fclk;

	IBUFDS 
	#(.DIFF_TERM  ("TRUE"),             // Differential termination
      .IOSTANDARD ("LVDS_25"))
    adc_fclk_ibuf (
    .O(adc_fclk),
    .I(adc_fclk_p),
    .IB(adc_fclk_n)
	);

	// local wire only for use in this generate loop
    wire clk_in_fclk_inv;
    assign clk_in_fclk_inv = ~(clk0);    
    
    // declare the iserdes
    ISERDESE2
    # (
    .DATA_RATE         ("DDR"),
    .DATA_WIDTH        (8),
    .INTERFACE_TYPE    ("NETWORKING"), 
    .DYN_CLKDIV_INV_EN ("FALSE"),
    .DYN_CLK_INV_EN    ("FALSE"),
    .NUM_CE            (2),
    .OFB_USED          ("FALSE"),
    .IOBDELAY          ("NONE"),                               // Use input at D to output the data on Q
    .SERDES_MODE       ("MASTER"))
    iserdese2_master (
    .Q8  			(fclk_deser[0]),
    .Q7  			(fclk_deser[1]),
    .Q6  			(fclk_deser[2]),
    .Q5  			(fclk_deser[3]),
    .Q4  			(fclk_deser[4]),
    .Q3  			(fclk_deser[5]),
    .Q2  			(fclk_deser[6]),
    .Q1  			(fclk_deser[7]),
    .SHIFTOUT1         (),
    .SHIFTOUT2         (),
    .BITSLIP           (bitslip),                             // 1-bit Invoke Bitslip. This can be used with any DATA_WIDTH, cascaded or not.
                                                              // The amount of BITSLIP is fixed by the DATA_WIDTH selection.
    .CE1               (1'b1),                                // 1-bit Clock enable input
    .CE2               (1'b1),                                // 1-bit Clock enable input
    .CLK               (clk0),                                // Fast source synchronous clock driven by BUFIO
    .CLKB              (clk_in_fclk_inv),                     // Locally inverted fast 
    .CLKDIV            (divclk),                              // Slow clock from BUFR.
    .CLKDIVP           (1'b0),
    .D                 (adc_fclk),                            // 1-bit Input signal from IOB 
    .DDLY              (1'b0),                                // 1-bit Input from Input Delay component 
    .RST               (rst),                                // 1-bit Asynchronous reset only.
    .SHIFTIN1          (1'b0),
    .SHIFTIN2          (1'b0),
    // unused connections
    .DYNCLKDIVSEL      (1'b0),
    .DYNCLKSEL         (1'b0),
    .OFB               (1'b0),
    .OCLK              (1'b0),
    .OCLKB             (1'b0),
    .O                 ());                                   // unregistered output of ISERDESE1

endmodule
