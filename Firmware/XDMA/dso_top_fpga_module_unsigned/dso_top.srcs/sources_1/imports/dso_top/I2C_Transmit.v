`timescale 1ns / 1ps

module I2C_Transmit(
	input clk,
	input [7:0] data,
	input data_ready,
	input en,
	output reg data_req,
	output reg sda,
	output reg scl,
	output reg done
   );
	
	parameter[2:0]		IDLE = 3'b000,
						START = 3'b001,
						SEND = 3'b010,
						ACK_STOP = 3'b011,
						ACK_SEND = 3'b100,
						STOP_LOW = 3'b101,
						STOP_SCL = 3'b110,
						STOP_SDA = 3'b111;
							
	reg[2:0] state = IDLE;
	reg[7:0] piso;
	reg[4:0] clk_counter; //clk_counter[4:1] is number of bits sent, since 2 clk_stb/bit
	reg[7:0] div_counter; 
	reg clk_stb;
	
	always @ (posedge clk) begin
		clk_stb <= 1'b0;
		
		if (div_counter==8'h9B) begin //devide 125MHz clk by 156 to get ~800kHz (801.3kHz) which results in 400kHz I2C
			div_counter <= 8'h00;
			clk_stb <= 1'b1;
		end
		else 
			div_counter <= div_counter + 1'b1;
	end
	
	always @ (posedge clk) begin
		done <= 1'b0;
		case (state)
			IDLE:
				if (data_ready & en) begin
					state <= START;
					data_req <= 1'b1;
				end
				else begin
					state <= IDLE;
					scl <= 1'b1;
					sda <= 1'b1;
				end
			START:
				if (data_req) begin
					piso <= data;
					data_req <= 1'b0;
				end
				else if (clk_stb) begin
					state <= SEND;
					clk_counter <= 5'h00;
					sda <= 1'b0;
				end
			SEND: 
				if (clk_counter[4] & clk_stb & data_ready & en) begin
					state <= ACK_SEND;
					data_req <= 1'b1;
					scl <= 1'b0;
					sda <= 1'b0;
				end
				else if (clk_counter[4] & clk_stb) begin
					state <= ACK_STOP;
					sda <= 1'b0;
					scl <= 1'b0;
				end 
				else if (clk_stb) begin
					state <= SEND;
					clk_counter <= clk_counter + 1'b1;				
					scl <= clk_counter[0];
					
					if (clk_counter[0]==1'b0) begin
						piso <= {piso[6:0],1'b0}; 
						sda <= piso[7];	
					end
				end
			ACK_STOP:
				if (clk_stb) begin
					state <= STOP_LOW;
					scl <= 1'b1;
				end
			ACK_SEND:
				if (data_req) begin
					piso <= data;
					data_req <= 1'b0;
				end
				else if (clk_stb) begin
					state <= SEND;
					clk_counter <= 5'h00;
					scl <= 1'b1;
				end
			STOP_LOW:
				if (clk_stb) begin
					state <= STOP_SCL;
					sda <= 1'b0;
					scl <= 1'b0;
				end
			STOP_SCL:
				if (clk_stb) begin
					state <= STOP_SDA;
					sda <= 1'b0;
					scl <= 1'b1;
				end
			STOP_SDA:
				if (clk_stb) begin
					state <= IDLE;
					sda <= 1'b1;
					scl <= 1'b1;
					done <= 1'b1;
				end
		endcase
	end
endmodule
