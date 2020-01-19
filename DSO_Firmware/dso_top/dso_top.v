`timescale 1ns / 1ps

module dso_top(
    input clk,
	 input ft2_rxf_n,
	 input ft2_txe_n,
	 input ft6_clk,
	 input ft6_txe_n,
	 input adc_lclk_p,
	 input adc_lclk_n,
	 input adc_fclk_p,
	 input adc_fclk_n,
	 input[7:0] adc_data_p,
	 input[7:0] adc_data_n,
	 inout[7:0] ft2_data,
	 output ft2_rd_n,
	 output ft2_wr_n,
	 output fe_sda,					//I2C Data
	 output fe_scl,					//I2C Clock
	 output fe_sdo,					//FE SPI Data
	 output fe_sclk,					//FE SPI Clock
	 output[3:0] fe_cs,
	 output adc_pll_sdo,
	 output adc_pll_sclk,
	 output[1:0] adc_pll_cs,
	 output adc_rst_n,
	 output adc_pd,
	 output[31:0] ft6_data,
	 output [3:0] ft6_be,
	 output ft6_wr_n,
	 output[3:0] led
   );
	
	wire clk0;
	wire ser_stb;
	wire divclk;
	wire[7:0] fclk_deser;
	wire[63:0] data_deser;	
	
	reg state;
	reg bitslip;
	reg[3:0] count;
	
	always @(posedge divclk) begin
		if (state == 0) begin
   		if (fclk_deser != 8'h0f) begin
     	   	bitslip <= 1'b1 ;					// bitslip needed
     	   	state <= 1 ;
     	   	count <= 4'b0000 ;
     	 	end
		end
   	else if (state == 1) begin
     	   bitslip <= 1'b0 ;						// bitslip low
     	   count <= count + 4'b0001 ;
   		if (count == 4'b1111) begin
     	   		state <= 0;
     	   end
     	end
	end 
	
	assign led = {4{data_deser == 64'hf0f0f0f0f0f0f0f0}};
	
	serdes_clocking serdes_clocking (
	.adc_lclk_p		(adc_lclk_p),
	.adc_lclk_n		(adc_lclk_n),
	.clk0				(clk0),
	.ser_stb			(ser_stb),
	.divclk			(divclk)
	);
	
	fclk_serdes fclk_serdes (
	.adc_fclk_p		(adc_fclk_p),
	.adc_fclk_n		(adc_fclk_n),
	.clk0				(clk0),
	.divclk			(divclk),
	.ser_stb			(ser_stb),
	.bitslip			(bitslip),
	.fclk_deser		(fclk_deser) 
	);
	
	data_serdes data_serdes (
	.adc_data_p		(adc_data_p),
	.adc_data_n		(adc_data_n),
	.clk0				(clk0),
	.divclk			(divclk),
	.ser_stb			(ser_stb),
	.bitslip			(bitslip),
	.data_deser		(data_deser)
	);
	
	FT6_Write	FT6_Write (
	.ft6_clk		(ft6_clk),
	.ft6_txe_n	(ft6_txe_n),
	.ft6_be		(ft6_be),
	.ft6_data	(ft6_data),
	.ft6_wr_n	(ft6_wr_n)
	);
	
	Serial_Controller Serial_Controller (
	.clk				(clk),
	.ft2_rxf_n		(ft2_rxf_n),
	.ft2_txe_n		(ft2_txe_n),
	.ft2_data		(ft2_data),
	.ft2_rd_n		(ft2_rd_n),
	.ft2_wr_n		(ft2_wr_n),
	.fe_sda			(fe_sda),					
	.fe_scl			(fe_scl),					
	.fe_sdo			(fe_sdo),				
	.fe_sclk			(fe_sclk),				
	.fe_cs			(fe_cs),
	.adc_pll_sdo	(adc_pll_sdo),
	.adc_pll_sclk	(adc_pll_sclk),
	.adc_pll_cs		(adc_pll_cs),
	.adc_rst_n		(adc_rst_n),
	.adc_pd			(adc_pd)
	);

endmodule
