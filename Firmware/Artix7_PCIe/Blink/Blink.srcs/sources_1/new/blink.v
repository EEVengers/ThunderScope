`timescale 1ns / 1ps

module blink(
    input clk_50_p,
    input clk_50_n,
    input adc_pg,
    input fe_pg,
    output acq_en,
    output fe_en,
    output[3:0] led
    );

wire clk_50;

IBUFDS # (
    .DIFF_TERM("FALSE"),
    .IBUF_LOW_PWR("TRUE"),
    .IOSTANDARD("DEFAULT")
) IBUFDS_clk_50 (
    .O(clk_50),
    .I(clk_50_p),
    .IB(clk_50_n)
);
    
reg	[30:0]	counter;
always @(posedge clk_50)
  counter <= counter + 1'b1;
assign led = ~counter[30:27];
    
endmodule
