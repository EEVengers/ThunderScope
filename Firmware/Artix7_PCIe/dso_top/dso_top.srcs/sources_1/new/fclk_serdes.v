`timescale 1ns / 1ps

module fclk_serdes(
	input adc_fclk_p,
	input adc_fclk_n,
	input clk0,
	input clk180,
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

	ISERDESE2 #(
	.DATA_WIDTH     	(8),
	.DATA_RATE      	("DDR"),
	.SERDES_MODE    	("MASTER"),
	.INTERFACE_TYPE 	("NETWORKING")
	)
	iserdes_m (
	.D       		(adc_fclk),
	.CE1     		(1'b1),
	.CLK    		(clk0),
	.CLKB           (clk180),
	.RST     		(1'b0),
	.CLKDIV  		(divclk),
	.BITSLIP 		(bitslip),
	.Q8  			(fclk_deser[7]),
	.Q7  			(fclk_deser[6]),
	.Q6  			(fclk_deser[5]),
	.Q5  			(fclk_deser[4]),
	.Q4  			(fclk_deser[3]),
	.Q3  			(fclk_deser[2]),
	.Q2  			(fclk_deser[1]),
	.Q1  			(fclk_deser[0])
	);

endmodule
