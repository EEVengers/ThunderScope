`timescale 1ns / 1ps

module FT6_Write_Test(
	 input clk,
	 input txe_n,
	 output[3:0] be,
	 output reg [31:0] d_out,
	 output reg wr_n,
	 output[3:0] led
    );

reg[31:0] counter;
reg[2:0] data_delay;

assign data_en = (txe_n) ? (data_delay[0]) : (data_delay[2]);
assign be = 4'b1111;

assign led[3:0] = counter[31:28];

always @(posedge clk) 
begin
 data_delay <= {data_delay[1:0],~txe_n};
 if (data_en)
	counter = counter + 1'b1;
end 

always @(negedge clk) 
begin
 wr_n <= ~data_en;
 if (data_en)
	d_out[31:0] <= counter[31:0];
end

endmodule
