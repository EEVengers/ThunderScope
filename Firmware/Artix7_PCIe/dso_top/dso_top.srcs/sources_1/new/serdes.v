`timescale 1ns / 1ps

module serdes(
	input adc_lclk_p,
	input adc_lclk_n,
	input adc_fclk_p,
	input adc_fclk_n,
	input[7:0] adc_data_p,
	input[7:0] adc_data_n,
	output divclk,
	output[63:0] data_deser
   );
	
	wire clk0;
	wire clk180;
	wire ser_stb;
	wire[7:0] fclk_deser;
	
	reg state = 1'b0;
	reg bitslip;
	reg[3:0] count;
	
	always @(posedge divclk) begin
		if (state == 0) begin
   		if (fclk_deser != 8'h0f) begin
     	   	bitslip <= 1'b1;					// bitslip needed
     	   	state <= 1;
     	   	count <= 4'b0000;
     	 	end
		end
   	else if (state == 1) begin
     	   bitslip <= 1'b0 ;					// bitslip low
     	   count <= count + 4'b0001;
   		if (count == 4'b1111)
     	   	state <= 0;
     	end
	end 
	
	clk_wiz_0 serdes_clocking(
	.clk_in1_p (adc_lclk_p),
	.clk_in1_n (adc_lclk_n),
	.clk_out1 (clk0),
	.clk_out2 (clk180),
	.clk_out3 (divclk)
	);
	
	fclk_serdes fclk_serdes (
	.adc_fclk_p		(adc_fclk_p),
	.adc_fclk_n		(adc_fclk_n),
	.clk0			(clk0),
	.clk180         (clk180),
	.divclk			(divclk),
	.ser_stb		(ser_stb),
	.bitslip		(bitslip),
	.fclk_deser		(fclk_deser) 
	);
	
	data_serdes data_serdes (
	.adc_data_p		(adc_data_p),
	.adc_data_n		(adc_data_n),
	.clk0			(clk0),
	.clk180         (clk180),
	.divclk			(divclk),
	.ser_stb		(ser_stb),
	.bitslip		(bitslip),
	.data_deser		(data_deser)
	);

endmodule

