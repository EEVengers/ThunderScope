//See FT2232H Datasheet page 32 for timing info

module FT2_Read(
	 input clk,
	 input rxf_n_in,
	 input[7:0] d_in,
	 output rd_n_out,
	 output wr_n_out,
	 output reg[31:0] d_out,
	 output reg d_ready
    );

//Pull write line high since we are reading
assign wr_n_out = 1'b1;

//Declare regs
reg[1:0] counter;
reg[3:0] rd_delay;
assign read_data = rd_delay[2];
assign rd_stb = rd_delay[2] & ~rd_delay[3];

//Pull rd_n low when rxf_n goes low (transfer starts)
//Pull rd_n high when data is read (transfer ends)
assign rd_n_out = rxf_n_in | read_data;

always @(posedge clk) 
begin
 
 rd_delay <= {rd_delay[2:0],~rd_n_out}; //read_data is inverted rd_n signal delayed by two cycles
 
 if (rd_stb) begin
	counter <= counter + 1'b1;
	case (counter)
		2'b00 : d_out[31:24] <= d_in[7:0];
		2'b01 : d_out[23:16] <= d_in[7:0];
		2'b10 : d_out[15:8] <= d_in[7:0];
		2'b11 : d_out[7:0] <= d_in[7:0];
	endcase
	d_ready <= &counter; //d_ready asserted for one cycle when counter is about to overflow back to 0
 end
 else
	d_ready <= 1'b0;
	
end 

endmodule
