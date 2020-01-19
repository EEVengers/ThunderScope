`timescale 1ns / 1ps

module fclk_serdes(
	input adc_fclk_p,
	input adc_fclk_n,
	input clk0,
	input divclk,
	input ser_stb,
	input bitslip,
	output[7:0] fclk_deser
   );

	wire adc_fclk;
	wire fclk_cascade;
	
	IBUFGDS adc_fclk_ibuf (
    .O(adc_fclk),
    .I(adc_fclk_p),
    .IB(adc_fclk_n)
	);
	
	ISERDES2 #(
	.DATA_WIDTH     	(8), 			
	.DATA_RATE      	("SDR"), 		
	.BITSLIP_ENABLE 	("TRUE"), 		
	.SERDES_MODE    	("MASTER"), 		
	.INTERFACE_TYPE 	("RETIMED")
	) 		
	iserdes_m (
	.D       		(adc_fclk),
	.CE0     		(1'b1),
	.CLK0    		(clk0),
	.CLK1    		(),
	.IOCE    		(ser_stb),
	.RST     		(1'b0),
	.CLKDIV  		(divclk),
	.SHIFTIN 		(),
	.BITSLIP 		(bitslip),
	.FABRICOUT 		(),
	.Q4  				(fclk_deser[7]),
	.Q3  				(fclk_deser[6]),
	.Q2  				(fclk_deser[5]),
	.Q1  				(fclk_deser[4]),
	.DFB  			(),
	.CFB0 			(),
	.CFB1 			(),
	.VALID    		(),
	.INCDEC   		(),
	.SHIFTOUT 		(fclk_cascade)
	);

	ISERDES2 #(
	.DATA_WIDTH     	(8), 			
	.DATA_RATE      	("SDR"), 		
	.BITSLIP_ENABLE 	("TRUE"), 		
	.SERDES_MODE    	("SLAVE"), 		
	.INTERFACE_TYPE 	("RETIMED")
	) 		
	iserdes_s (
	.D       		(),
	.CE0     		(1'b1),
	.CLK0    		(clk0),
	.CLK1    		(),
	.IOCE    		(ser_stb),
	.RST     		(1'b0),
	.CLKDIV  		(divclk),
	.SHIFTIN 		(fclk_cascade),
	.BITSLIP 		(bitslip),
	.FABRICOUT 		(),
	.Q4  				(fclk_deser[3]),
	.Q3  				(fclk_deser[2]),
	.Q2  				(fclk_deser[1]),
	.Q1  				(fclk_deser[0]),
	.DFB  			(),
	.CFB0 			(),
	.CFB1 			(),
	.VALID 			(),
	.INCDEC 			(),
	.SHIFTOUT 		()
	);
	
endmodule
