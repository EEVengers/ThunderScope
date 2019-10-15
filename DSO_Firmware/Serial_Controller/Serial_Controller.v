`timescale 1ns / 1ps

module Serial_Controller(
    input clk,
	 input ft2_rxf_n,
	 input[7:0] ft2_data,
	 output ft2_rd_n,
	 output ft2_wr_n,
	 output fe_sda,					//I2C Data
	 output fe_scl,					//I2C Clock
	 output reg fe_sdo,				//FE SPI Data
	 output reg fe_sclk,				//FE SPI Clock
	 output reg[3:0] fe_cs,
	 output reg adc_pll_sdo,
	 output reg adc_pll_sclk,
	 output reg[1:0] adc_pll_cs,
	 output reg adc_rst_n,
	 output reg adc_pd
    );


wire data_ready;
wire fifo_full_n;
wire status_wr_en;
wire[7:0] status_data;
wire sdo, sclk, cs;
wire spi_done;
wire i2c_done;
wire fifo_full;
wire data_sent;
wire[7:0] fifo_wr_data;
wire[7:0] fifo_rd_data; 

assign data_ready = ~fifo_empty;
assign fifo_full_n = ~fifo_full;

reg[2:0] mux_control;
reg spi_en, i2c_en;

parameter[2:0] IDLE = 3'b000,
					CONTROL_BYTE = 3'b001,
					TRANSMIT_WAIT = 3'b010,
					TRANSMIT = 3'b011,
					SEND_STATUS = 3'b100;
					
reg[2:0] state;
reg rst;
reg fifo_rd_en;
reg status_wr_en;
reg[7:0] status_byte;
wire data_sent;

always @(posedge clk) begin
	rst <= 1'b0;
	spi_en <= 1'b0;
	
	case (state)
		IDLE: 
			if (~fifo_empty) begin
				state <= CONTROL_BYTE;
				fifo_rd_en <= 1'b1;
			end
			else
				state <= IDLE;
		CONTROL_BYTE:
			if (&fifo_rd_data[7:3]) begin
				state <= TRANSMIT_WAIT;
				fifo_rd_en <= 1'b0;
			end
			else begin
				state <= IDLE;
				fifo_rd_en <= 1'b0;
				rst <= 1'b1;
			end
		TRANSMIT_WAIT:
			if (~fifo_empty) begin
				state <= TRANSMIT;
				spi_en <= 1'b1;
			end
			else
				state <= TRANSMIT_WAIT;
		TRANSMIT:
			if (fifo_full) begin
				state <= SEND_STATUS;
				status_byte <= 8'h66; //asci 'f' ...press f to pay respects to the fifo buffer
				status_wr_en <= 1'b1;
				rst <= 1'b1;
			end
			else if (spi_done) begin
				state <= SEND_STATUS;
				status_byte <= 8'h24; //asci '$' ...it prints money when it works!
				status_wr_en <= 1'b1;
			end
			else
				state <= TRANSMIT;
		SEND_STATUS:
			if (data_sent) begin
				state <= IDLE;
				status_wr_en <= 1'b0;
			end
			else
				state <= SEND_STATUS;
	endcase
end

always @(*)
begin

	adc_rst_n = 1'b1;
	adc_pd = 1'b0;
	
	spi_en = (~&mux_control);
	i2c_en = (&mux_control);
	
	fe_sdo = (mux_control[2]) ? (1'b0) : (sdo);
	fe_sclk = (mux_control[2]) ? (1'b1) : (sclk);
	
	adc_pll_sdo = (mux_control[2]) ? (sdo) : (1'b0);
	adc_pll_sclk = (mux_control[2]) ? (sclk) : (1'b1);
	
	if (~mux_control[2])
		case(mux_control[1:0]) // fe_cs demux
			2'b00: fe_cs = {cs,1'b1,1'b1,1'b1};
			2'b01: fe_cs = {1'b1,cs,1'b1,1'b1};
			2'b10: fe_cs = {1'b1,1'b1,cs,1'b1};		
			2'b11: fe_cs = {1'b1,1'b1,1'b1,cs};
		endcase
	else 
		fe_cs = 4'b1111;
	
	if (mux_control[2:1]==2'b10)
		adc_pll_cs = (mux_control[0]) ? ({{1'b1,cs}}) : ({cs,1'b1});
	else
		adc_pll_cs = 2'b11;
	
end


I2C_Transmit 	I2C_Transmit( 
.clk				(clk),
.data				(fifo_rd_data),
.data_ready		(data_ready),
.en				(i2c_en),
.data_req		(fifo_rd_en),
.sda				(fe_sda),
.scl				(fe_scl),
.done				(i2c_done)
);

SPI_Transmit 	SPI_Transmit(
.clk				(clk),
.data				(fifo_rd_data),
.data_ready		(data_ready),
.en				(spi_en),
.data_req		(fifo_rd_en),
.sdo				(sdo),
.sclk				(sclk),
.cs				(cs),
.done				(spi_done)
);

FT2_FIFO			FT2_FIFO(
.clk				(clk),
.rst				(rst),
.wr_en			(fifo_wr_en),
.rd_en			(fifo_rd_en),
.wr_data			(fifo_wr_data),
.full				(fifo_full),
.empty			(fifo_empty),
.rd_data			(fifo_rd_data)
);

FT2_Read_Write	FT2_Read_Write(
.clk				(clk),
.ft2_txe_n		(ft2_txe_n),
.ft2_rxf_n		(ft2_rxf_n),
.rd_en			(fifo_full_n),
.wr_en			(status_wr_en),
.write_data		(status_data),
.ft2_data		(ft2_data),
.ft2_rd_n		(ft2_rd_n),
.ft2_wr_n		(ft2_wr_n),
.read_data		(fifo_wr_data), 
.data_ready		(fifo_wr_en),
.data_sent		(data_sent) 
);

endmodule
