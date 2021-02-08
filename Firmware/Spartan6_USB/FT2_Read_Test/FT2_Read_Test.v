module FT2_Read_Test(
    input clk,
	 input rxf_n_in,
	 input[7:0] d_in,
	 output rxf_n_out,
	 output rd_n_out,
	 output wr_n_out,
	 output rd_n_buf,
	 output reg[7:0] d_out,
	 output[3:0] led
    );

//Pull write line high since we are reading
assign wr_n_out = 1'b1;
//Data passthrough for logic analyzer
assign rxf_n_out = rxf_n_in; 
assign rd_n_buf = rd_n_out; 
assign led[3:0] = d_out[3:0];

reg[2:0] data_delay;
assign read_data = data_delay[2];
assign rd_n_out = rxf_n_in | read_data;

//Flops for data sync and delay to meet timing
always @(posedge clk) 
begin
 data_delay <= {data_delay[1:0],~rd_n_out};
end 

//Data latched on read
always @(posedge read_data) 
begin
d_out[7:0] <= d_in[7:0];
end

endmodule