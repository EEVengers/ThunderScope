`timescale 1ns / 1ps

module data_serdes(
    input[7:0] adc_data_p,
	input[7:0] adc_data_n,
	input clk0,
	input clk180,
	input divclk,
	input ser_stb,
	input bitslip,
	output[63:0] data_deser 
	);

	wire[7:0] adc_data;
	wire[7:0] data_cascade;
	
	IBUFGDS adc_data_ibuf[7:0] (
    .O(adc_data),
    .I(adc_data_p),
    .IB(adc_data_n)
	);
	
	genvar i;
	generate
		for (i = 0 ; i < 8 ; i = i+1) begin : loop_br
		
            ISERDESE2 #(
            .DATA_WIDTH     	(8),
            .DATA_RATE      	("DDR"),
            .SERDES_MODE    	("MASTER"),
            .INTERFACE_TYPE 	("NETWORKING")
            ) 		
			iserdes_m_br (
			.D       		(adc_data[i]),
			.CE1     		(1'b1),
			.CLK    		(clk0),
			.CLKB           (clk180),
			.RST     		(1'b0),
			.CLKDIV  		(divclk),
			.BITSLIP 		(bitslip),
			.Q8  			(data_deser[(8*i)+7]),
			.Q7  			(data_deser[(8*i)+6]),
			.Q6  			(data_deser[(8*i)+5]),
			.Q5  			(data_deser[(8*i)+4]),
			.Q4  			(data_deser[(8*i)+3]),
			.Q3  			(data_deser[(8*i)+2]),
			.Q2  			(data_deser[(8*i)+1]),
			.Q1  			(data_deser[(8*i)+0])
			);
			
		end
	endgenerate
endmodule

