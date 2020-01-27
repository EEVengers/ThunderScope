`timescale 1ns / 1ps

//UG382 page 33

module serdes_clocking(
		input adc_lclk_p,
		input adc_lclk_n,
		output clk0,
		output ser_stb,
		output divclk
    );

	wire adc_lclk;
	wire pll_lclk_in;
	wire pll_lclk_x2_out;
	wire pll_divclk;
	wire pll_locked;
	wire pll_fb;

	IBUFGDS adc_lclk_ibuf (
    .O(adc_lclk),
    .I(adc_lclk_p),
    .IB(adc_lclk_n)
	);
	
	BUFIO2 #(
      .DIVIDE				(1),               	
      .DIVIDE_BYPASS		("TRUE")
	)    		
	P_clk_bufio2_inst (
      .I						(adc_lclk),       
      .IOCLK				(),        			
      .DIVCLK				(pll_lclk_in),
      .SERDESSTROBE		()						
	) ;           		
	
	PLL_BASE #(
      .BANDWIDTH				("OPTIMIZED"),  			// "high", "low" or "optimized"
		.COMPENSATION			("SYSTEM_SYNCHRONOUS"),	// "SYSTEM_SYNCHRONOUS attempts to compensate all clock delay for 0 hold time"
      .CLKFBOUT_MULT			(2),      					// multiplication factor for all output clocks, 2 for DDR
      .CLKFBOUT_PHASE		(0.0),     					// phase shift (degrees) of all output clocks
		.DIVCLK_DIVIDE			(1),        				// division factor for all clocks (1 to 52)
      .CLKIN_PERIOD			(5.263),  					// clock period (ns) of input clock on clkin1
      .CLKOUT0_DIVIDE		(2),      					// division factor for clkout0 (1 to 128)
      .CLKOUT0_DUTY_CYCLE	(0.5), 						// duty cycle for clkout0 (0.01 to 0.99)
      .CLKOUT0_PHASE			(0.0), 						// phase shift (degrees) for clkout0 (0.0 to 360.0)
      .CLKOUT1_DIVIDE		(16),   						// division factor for clkout1 (1 to 128)
      .CLKOUT1_DUTY_CYCLE	(0.5), 						// duty cycle for clkout1 (0.01 to 0.99)
      .CLKOUT1_PHASE			(0.0), 						// phase shift (degrees) for clkout1 (0.0 to 360.0)
      .CLK_FEEDBACK			("CLKOUT0"),       		// clock source that drives the feedback path
      .REF_JITTER				(0.100)						// input reference jitter (0.000 to 0.999 ui%)
	)        		
	rx_pll_inst (
      .CLKIN			(pll_lclk_in),     	// primary clock input
		.CLKFBIN			(pll_fb),				// clock feedback input
      .CLKOUT0			(pll_lclk_x2_out),   // x2 clock for receiver
      .CLKOUT1			(pll_divclk),      	// x1 clock for BUFG
      .CLKOUT2			(), 						 
      .CLKOUT3			(),              		
      .CLKOUT4			(),              		
      .CLKOUT5			(),              		
		.CLKFBOUT		(),              		
      .LOCKED			(pll_locked),       // active high pll lock signal
      .RST				(1'b0)
	);    			
	
	BUFG	bufg_pll_x1 (
		.I(pll_divclk), 
		.O(divclk) 
	) ;

	BUFPLL #(
      .DIVIDE			(8)
	)
	rx_bufpll_inst (
      .PLLIN			(pll_lclk_x2_out),   // PLL Clock input
      .GCLK				(divclk), 				// Global Clock input
      .LOCKED			(pll_locked),       	// Clock0 locked input
      .IOCLK			(clk0), 					// Output PLL Clock
      .LOCK				(),     					// BUFPLL Clock and strobe locked
      .SERDESSTROBE	(ser_stb) 				// Output SERDES strobe
	);
		
	BUFIO2FB #(
      .DIVIDE_BYPASS		("TRUE")				// Same as the BUFIO2
	)
	P_clk_bufio2fb_inst (
      .I			(clk0),             	// PLL generated Clock to be fed back from IOI
      .O			(pll_fb)					// PLL Output Feedback Clock
	);   		

endmodule
