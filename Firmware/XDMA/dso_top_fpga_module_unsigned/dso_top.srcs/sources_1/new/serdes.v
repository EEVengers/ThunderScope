`timescale 1ns / 1ps

module serdes(
    input rst,
	input adc_lclk_p,
	input adc_lclk_n,
	input adc_fclk_p,
	input adc_fclk_n,
	input[7:0] adc_data_p,
	input[7:0] adc_data_n,
	input axi_aclk,
	output divclk,
	output[63:0] data_deser,
	output reg ready
   );
	
	wire clk0;
	wire[7:0] fclk_deser;
	
	reg state = 1'b0;
	reg bitslip;
	reg[3:0] count;
	
	always @(posedge divclk) begin
	    if (rst) begin
	       state <= 0;
	       bitslip <= 0;
	       count <= 0;
	       ready <= 0;
	    end
	    else begin
            if (state == 0) begin
                if (fclk_deser != 8'h0f) begin
                    bitslip <= 1'b1;					// bitslip needed
                    state <= 1;
                    count <= 4'b0000;
                    ready <= 0;
                end
                else
                    ready <= 1;
            end
            else if (state == 1) begin
                bitslip <= 1'b0 ;					// bitslip low
                count <= count + 4'b0001;
                if (count == 4'b1111)
                    state <= 0;
            end
        end
	end 
	
	clk_wiz_0 serdes_clocking(
	.clk_in1_p (adc_lclk_p),
	.clk_in1_n (adc_lclk_n),
	.clk_out1 (clk0),
	.clk_out2 (divclk),
	.clk_out3 (ref_clock)
	);
	
    combined_serdes combined_serdes
    (
    .data_in_from_pins_p({adc_fclk_p,adc_data_p}),
    .data_in_from_pins_n({adc_fclk_n,adc_data_n}),
    .deser({fclk_deser,data_deser}),
    .delay_locked(),                      
    .ref_clock_bufg(ref_clock),                         
    .bitslip(bitslip),                           
    .clk_in_int_buf(clk0),                          
    .divclk(divclk),                       
    .io_reset(rst)
    ); 

endmodule

