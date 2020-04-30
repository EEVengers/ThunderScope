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
	
	wire divclk;
	wire[63:0] data_deser;	
	
	wire adc_fifo_full;
	wire adc_fifo_empty;
	wire adc_fifo_rd_en;
	wire[31:0] adc_fifo_data;
	
	wire fe_sda_buf;
	wire fe_scl_buf;
	
	assign fe_sda = (fe_sda_buf) ? (1'bz) : (1'b0);
	assign fe_scl = (fe_scl_buf) ? (1'bz) : (1'b0);
	
	assign led = {adc_fifo_full,1'b0,adc_fifo_empty,1'b0};
	
	serdes serdes (
	.adc_lclk_p		(adc_lclk_p),
	.adc_lclk_n		(adc_lclk_n),
	.adc_fclk_p		(adc_fclk_p),
	.adc_fclk_n		(adc_fclk_n),
	.adc_data_p		(adc_data_p),
	.adc_data_n		(adc_data_n),
	.divclk			(divclk),
	.data_deser		(data_deser)
	);
	
	fifo_generator_v9_3 adc_fifo (
   .rst(1'b0),
   .wr_clk(divclk), 
   .rd_clk(ft6_clk), 
   .din(data_deser), 
   .wr_en(~adc_fifo_full),	//add a state machine to deal with fifo full
   .rd_en(adc_fifo_rd_en), 
   .dout(adc_fifo_data), 
   .full(adc_fifo_full),
   .empty(adc_fifo_empty) 
	);
	
	FT6_Write	FT6_Write (
	.ft6_clk		(ft6_clk),
	.ft6_txe_n	(ft6_txe_n),
	.fifo_empty	(adc_fifo_empty),
	.fifo_data	(adc_fifo_data),
	.ft6_be		(ft6_be),
	.ft6_data	(ft6_data),
	.ft6_wr_n	(ft6_wr_n),
	.fifo_rd_en	(adc_fifo_rd_en)
	);
	
	Serial_Controller Serial_Controller (
	.clk				(clk),
	.ft2_rxf_n		(ft2_rxf_n),
	.ft2_txe_n		(ft2_txe_n),
	.ft2_data		(ft2_data),
	.ft2_rd_n		(ft2_rd_n),
	.ft2_wr_n		(ft2_wr_n),
	.fe_sda			(fe_sda_buf),					
	.fe_scl			(fe_scl_buf),					
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
