`timescale 1ns / 1ps

module FT2_Read_Write(
	input clk,
	input ft2_txe_n,
	input ft2_rxf_n,
	input rd_en,
	input wr_en,
	input[7:0] write_data,
	inout[7:0] ft2_data,
	output reg ft2_rd_n,
	output reg ft2_wr_n,
	output reg[7:0] read_data, 
	output reg data_ready,
	output reg data_sent 
	);
	
	parameter[1:0]	IDLE 			= 2'b00,
						TXE_WAIT		= 2'b01,
						RD_ACTIVE 	= 2'b10,
						RXF_WAIT 	= 2'b11;
							
	reg [1:0] state = IDLE;
	reg [1:0] txe_sync;
	reg [1:0] rxf_sync;
	reg [7:0] write_data_reg;
	reg tristate_mux;
	
	assign ft2_data = (tristate_mux) ? (write_data_reg) : (8'bzzzzzzzz);

	always @(posedge clk) begin
		txe_sync <= {txe_sync[0],~ft2_txe_n};
		rxf_sync <= {rxf_sync[0],~ft2_rxf_n};
	end

	always @(posedge clk) begin
		ft2_wr_n <= 1'b1;
		ft2_rd_n <= 1'b1;
		data_ready <= 1'b0;
		tristate_mux <= 1'b0;
		data_sent <= 1'b0;
		case(state)
			IDLE:
				if (wr_en & txe_sync[1]) begin
					state <= TXE_WAIT;
					write_data_reg <= write_data;
					tristate_mux <= 1'b1;
					data_sent <= 1'b1;
				end
				else if (rd_en & rxf_sync[1]) begin
					state <= RD_ACTIVE;
					ft2_rd_n <= 1'b0;
				end
				else
					state <= IDLE;
			TXE_WAIT:
				if (~txe_sync[1])
					state <= IDLE;
				else begin
					state <= TXE_WAIT;
					ft2_wr_n <= 1'b0;
					tristate_mux <= 1'b1;
				end
			RD_ACTIVE:
				begin
					state <= RXF_WAIT; 
					read_data <= ft2_data;
				end
			RXF_WAIT:
				if (~rxf_sync[1]) begin
					state <= IDLE;
					data_ready <= 1'b1;
				end
				else 
					state <= RXF_WAIT;
		endcase
	end
endmodule
