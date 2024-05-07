`timescale 1ns / 1ps

module SPI_Transmit(
    input clk,
	 input [7:0] data,
	 input data_ready,
	 input en,
	 output reg data_req,
	 output reg sdo,
	 output reg sclk,
	 output reg cs,
	 output reg done
    );
	 
	parameter[1:0]		IDLE = 2'b00,
						READ = 2'b01,
						SEND = 2'b10;

	reg[1:0] state = IDLE;
	reg[7:0] piso;
	reg[5:0] clk_counter; //clk_counter[5:2] is number of bits sent, since 4 clks/bit
	reg[3:0] div_counter; 
	reg clk_stb;
	
	initial cs = 1'b1;
	initial sclk = 1'b1;
		
	always @ (posedge clk) begin
		clk_stb <= 1'b0;
		
		if (div_counter==4'hF) begin
			div_counter <= 4'h0;
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
					state <= READ;
					data_req <= 1'b1;
				end
				else
					state <= IDLE;
			READ:
				if (data_req) begin
					piso <= data;
					data_req <= 1'b0;
				end
				else if (clk_stb) begin
					state <= SEND;
					clk_counter <= 6'h00;
				end
			SEND: 
				if (clk_stb) begin
                    if (clk_counter[5]) begin //if clk_counter ticks over to 100000 and data wasn't ready at 011110
                        state <= IDLE;
                        sdo <= 1'b0;
                        done <= 1'b1;
                        cs <= 1'b1;
                        sclk <= 1'b1;
                    end
                    else if (clk_counter[4:0]==5'b11110 & data_ready & en) begin
                        state <= READ;
                        data_req <= 1'b1;
                        cs <= 1'b0;
                        sclk <= 1'b1;
                    end
                    else begin
                        state <= SEND;
                        clk_counter <= clk_counter + 1'b1;				
                        sclk <= clk_counter[1];
                        cs <= 1'b0;
                        
                        if (clk_counter[1:0]==2'b00) begin
                            piso <= {piso[6:0],1'b0}; 
                            sdo <= piso[7];	
                        end
                    end	
				end			
		endcase
	end
endmodule
