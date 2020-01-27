`timescale 1ns / 1ps

module FT2_FIFO(
		input clk,
		input rst,
		input wr_en,
		input rd_en,
		input[7:0] wr_data,
		output reg full,
		output reg empty = 1'b1,
		output reg[7:0] rd_data
    );

reg[7:0] mem[2047:0];
reg[10:0] wr_addr;
reg[10:0] rd_addr;

wire[10:0] dbl_next;
assign dbl_next = wr_addr + 2'b10;

wire[10:0] nxt_read;
assign nxt_read = rd_addr + 1'b1;

always @(posedge clk) begin
		mem[wr_addr] <= wr_data;
		rd_data <= mem[rd_addr];
end

always @(posedge clk) begin
	if (rst)
		wr_addr <= 10'b0;
	else if (wr_en & ~full) begin
		wr_addr <= wr_addr + 1'b1;
	end
end

always @(posedge clk) begin
	if (rst)
		rd_addr <= 10'b0;
	else if (rd_en & ~empty) begin
		rd_addr <= rd_addr + 1'b1;
	end
end

always @(posedge clk)
	if (rst) begin
		full <= 1'b0;
		empty <= 1'b1;
	end 
	else begin
		casez({ wr_en, rd_en, !full, !empty })
			4'b01?1: begin	// A successful read
				full  <= 1'b0;
				empty <= (nxt_read == wr_addr);
			end
			4'b101?: begin	// A successful write
				full <= (dbl_next == rd_addr);
				empty <= 1'b0;
			end
			4'b11?0: begin	// Successful write, failed read
				full  <= 1'b0;
				empty <= 1'b0;
			end
			4'b11?1: begin	// Successful read and write
				full  <= full;
				empty <= 1'b0;
			end
			default: begin end
		endcase
	end
endmodule
