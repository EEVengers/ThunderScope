`timescale 1ns / 1ps

module FT2_FIFO_SPI(
		input clk,
		input ft2_txe_n,
		input ft2_rxf_n,
		inout[7:0] ft2_data,
		output ft2_rd_n,
		output ft2_wr_n,
		output fe_sdo,				
		output fe_sclk,
		output fe_cs
    );

wire spi_done;
wire fifo_wr_en;
wire fifo_full;
wire fifo_empty;
wire[7:0] fifo_wr_data;
wire[7:0] fifo_rd_data; 

//parameter[2:0] IDLE = 3'b000,
//					CONTROL_BYTE = 3'b001,
//					TRANSMIT_WAIT = 3'b010,
//					TRANSMIT = 3'b011,
//					SEND_STATUS = 3'b100;

//reg[2:0] state;
//reg rst;
//reg fifo_rd_en;
reg spi_en = 1'b1;
//reg status_wr_en;
//reg[7:0] status_byte;
//wire data_sent;
//
//always @(posedge clk) begin
//	rst <= 1'b0;
//	spi_en <= 1'b0;
//	
//	case (state)
//		IDLE: 
//			if (~fifo_empty) begin
//				state <= CONTROL_BYTE;
//				fifo_rd_en <= 1'b1;
//			end
//			else
//				state <= IDLE;
//		CONTROL_BYTE:
//			if (&fifo_rd_data[7:3]) begin
//				state <= TRANSMIT_WAIT;
//				fifo_rd_en <= 1'b0;
//			end
//			else begin
//				state <= IDLE;
//				fifo_rd_en <= 1'b0;
//				rst <= 1'b1;
//			end
//		TRANSMIT_WAIT:
//			if (~fifo_empty) begin
//				state <= TRANSMIT;
//				spi_en <= 1'b1;
//			end
//			else
//				state <= TRANSMIT_WAIT;
//		TRANSMIT:
//			if (fifo_full) begin
//				state <= SEND_STATUS;
//				status_byte <= 8'h66; //asci 'f' ...press f to pay respects to the fifo buffer
//				status_wr_en <= 1'b1;
//				rst <= 1'b1;
//			end
//			else if (spi_done) begin
//				state <= SEND_STATUS;
//				status_byte <= 8'h24; //asci '$' ...it prints money when it works!
//				status_wr_en <= 1'b1;
//			end
//			else
//				state <= TRANSMIT;
//		SEND_STATUS:
//			if (data_sent) begin
//				state <= IDLE;
//				status_wr_en <= 1'b0;
//			end
//			else
//				state <= SEND_STATUS;
//	endcase
//end

SPI_Transmit 	SPI_Transmit( // TODO: change for FIFO operation
.clk				(clk),
.data				(fifo_rd_data),
.data_ready		(~fifo_empty),
.en				(spi_en),
.sdo				(fe_sdo),
.sclk				(fe_sclk),
.cs				(fe_cs),
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
.rd_en			(~fifo_full),
.wr_en			(status_wr_en),
.write_data		(status_byte),
.ft2_data		(ft2_data),
.ft2_rd_n		(ft2_rd_n),
.ft2_wr_n		(ft2_wr_n),
.read_data		(fifo_wr_data), 
.data_ready		(fifo_wr_en),
.data_sent		(data_sent) 
);

endmodule
