`timescale 1ns / 1ps

module FT2_Loopback(
	input clk,
	input txe_n_in,
	input rxf_n_in,
	output reg rd_n_out,
	output reg wr_n_out,
	inout[7:0] ft2_data
	);
	
	parameter[1:0]	IDLE 			= 2'b00,
						TXE_WAIT		= 2'b01,
						RD_ACTIVE 	= 2'b10,
						RXF_WAIT 	= 2'b11;
							
	reg [1:0] state;
	reg [1:0] txe_sync;
	reg [1:0] rxf_sync;
	reg [7:0] read_data;
	reg [7:0] write_data;
	reg data_ready;
	reg tristate_mux;
	
	wire wr_en;
	assign wr_en = data_ready;
	assign ft2_data = (tristate_mux) ? (write_data) : (8'bzzzzzzzz);

	always @(posedge clk) begin
		txe_sync <= {txe_sync[0],~txe_n_in};
		rxf_sync <= {rxf_sync[0],~rxf_n_in};
	end

	always @(posedge clk) begin
		wr_n_out <= 1'b1;
		rd_n_out <= 1'b1;
		data_ready <= 1'b0;
		tristate_mux <= 1'b0;
		case(state)
			IDLE:
				if (wr_en & txe_sync[1]) begin
					state <= TXE_WAIT;
					write_data <= read_data;
					tristate_mux <= 1'b1;
				end
				else if (rxf_sync[1]) begin
					state <= RD_ACTIVE;
					rd_n_out <= 1'b0;
				end
				else
					state <= IDLE;
			TXE_WAIT:
				if (~txe_sync[1])
					state <= IDLE;
				else begin
					state <= TXE_WAIT;
					wr_n_out <= 1'b0;
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
