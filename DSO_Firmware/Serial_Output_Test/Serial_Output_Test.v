module Serial_Output_Test(
    input clk_32,
	 input ft2_rxf_n_in,
	 input[7:0] ft2_d_in,
	 output ft2_rd_n_out,
	 output ft2_wr_n_out,
	 output reg ser_out,
	 output reg ser_clk,
	 output reg cs_n
	 );


parameter 			IDLE = 1'b0,
						SEND = 1'b1;

reg state;
reg[31:0] piso;
reg[5:0] bit_counter;
reg[1:0] clk_counter; 

wire[31:0] d_out;
wire d_ready;

always @ (posedge clk_32)
begin
	case (state)
		IDLE:
			if (d_ready) begin
				state <= SEND;
				piso <= d_out;
				bit_counter <= 6'b000000;
				clk_counter <= 2'b00;
			end
			else begin
				state <= IDLE;
				ser_clk <= 1'b1;
				cs_n <= 1'b1;
			end
		SEND: 
			if (bit_counter[5] & clk_counter==2'b00) begin
				state <= IDLE;
				ser_out <= 1'b0;
				cs_n <= 1'b1;
			end 
			
			else begin
				state <= SEND;
				clk_counter <= clk_counter + 1'b1;				
				ser_clk <= clk_counter[1];
				cs_n <= 1'b0;
				
				if (clk_counter==2'b00) begin
					piso <= {piso[30:0],1'b0}; 
					ser_out <= piso[31];	
				end
				
				if (clk_counter==2'b10)
					bit_counter <= bit_counter + 1'b1;
			end				
	endcase
end


//Call FT2_Read as a submodule
FT2_Read R1 (
.clk				(clk_32),			//	input
.rxf_n_in		(ft2_rxf_n_in),	//	input
.d_in				(ft2_d_in),			//	input [7:0]
.rd_n_out		(ft2_rd_n_out),	//	output
.wr_n_out		(ft2_wr_n_out),	// output
.d_out			(d_out),				// output [31:0]
.d_ready			(d_ready)			// output
);

endmodule
