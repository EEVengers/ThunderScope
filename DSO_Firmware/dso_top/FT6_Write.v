`timescale 1ns / 1ps

module FT6_Write (
	 input ft6_clk,
	 input ft6_txe_n,
	 output[3:0] ft6_be,
	 output reg [31:0] ft6_data,
	 output reg ft6_wr_n
    );

reg[7:0] counter;

parameter[1:0]	IDLE 			= 2'b00,
					TXE_WAIT		= 2'b01,
					WR_ACTIVE	= 2'b10,
					WR_DATA	 	= 2'b11;
							
reg [1:0] state = IDLE;

assign ft6_be = 4'b1111;

always @(posedge ft6_clk) begin
	ft6_wr_n <= 1'b1;
	case (state)
		IDLE:
			if (~ft6_txe_n)
				state <= TXE_WAIT;
			else
				state <= IDLE;
		TXE_WAIT:
			begin
				state <= WR_ACTIVE;
			end
		WR_ACTIVE:
			begin
				state <= WR_DATA;
				ft6_wr_n <= 1'b0;
			end
		WR_DATA:
			if (~ft6_txe_n) begin
				counter <= counter + 1'b1;
				ft6_wr_n <= 1'b0;
				ft6_data[31:0] <= {4{counter[7:0]}};
				state <= WR_DATA;
			end
			else
				state <= IDLE;
	endcase
end 
endmodule
