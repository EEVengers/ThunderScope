module Serial_Output_Test(
    input clk_32,
	 input ft2_rxf_n_in,
	 input[7:0] ft2_d_in,
	 output ft2_rd_n_out,
	 output ft2_wr_n_out,
	 output ser_out,
	 output ser_clk,
	 output [3:0] led
	 );

wire[31:0] d_out;
wire d_ready;

reg d_ready_q;
reg[31:0] piso;
reg[5:0] bit_counter;
reg[1:0] clk_counter; 
reg clk_stb;

//Serial clock enabled when data begins to transmit 
//Disabled when we transmit the correct number of bits 
assign ser_clk_en = d_ready_q & ~bit_counter[5];

//Mux to turn on or off serial clock based on enable signal
//Serial clock is system clock divided by 4
assign ser_clk = (ser_clk_en) ? (clk_counter[1]) : (1'b0);

//Data is last bit of shift register
assign ser_out = piso[31];

//AND signal with delayed signal for one clock cycle load pulse
assign d_load = d_ready & ~d_ready_q;

//Debug LEDs
assign led = bit_counter[3:0];

always @ (posedge clk_32)
begin
	
	//Increment clk counter
	clk_counter <= clk_counter + 1'b1;
	//Generate clk strobe signal once per counter cycle (/4)
	clk_stb <= (clk_counter==2'b00);
	
	if(clk_stb)
	begin
		//Flop delay for load pulse
		d_ready_q <= d_ready;
		
		//PISO shift register & counter for number of bits sent
		if (d_load)
		begin
			piso <= d_out;
			bit_counter <= 6'b000000;
		end
		else if (ser_clk_en)
		begin
			bit_counter <= bit_counter + 1'b1;
			piso <= {piso[30:0],1'b0}; 
		end
		else
			piso <= 32'h00000000;
	end
	
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
