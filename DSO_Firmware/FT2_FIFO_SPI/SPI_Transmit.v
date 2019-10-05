`timescale 1ns / 1ps

module SPI_Transmit(
    input clk,
	 input [7:0] data,
	 input data_ready,
	 input en,
	 output reg sdo,
	 output reg sclk,
	 output reg cs,
	 output reg done
    );
	 
parameter 			IDLE = 2'b00,
						WAIT = 2'b01,
						SEND = 2'b10;

reg state;
reg[7:0] piso;
reg[3:0] bit_counter;
reg[1:0] clk_counter;

always @ (posedge clk)
begin
	sclk <= 1'b1;
	cs <= 1'b1;
	done <= 1'b0;
	case (state)
		IDLE:
			if (data_ready & en) begin
				state <= SEND;
				piso <= data;
				bit_counter <= 4'h0;
				clk_counter <= 2'b00;
			end
			else
				state <= IDLE;
		WAIT:
			if (data_ready) begin
				state <= SEND;
				piso <= data;
				bit_counter <= 4'h0;
				clk_counter <= 2'b00;
				cs <= 1'b0;
			end
			else
				state <= IDLE;
		SEND: 
			if (bit_counter[3] & clk_counter==2'b00) begin
				state <= IDLE;
				sdo <= 1'b0;
				done <= 1'b1;
			end 
			else begin
				state <= SEND;
				clk_counter <= clk_counter + 1'b1;				
				sclk <= clk_counter[1];
				cs <= 1'b0;
				
				if (clk_counter==2'b00) begin
					piso <= {piso[6:0],1'b0}; 
					sdo <= piso[7];	
				end
				
				if (clk_counter==2'b10)
					bit_counter <= bit_counter + 1'b1;
			end				
	endcase
end

endmodule