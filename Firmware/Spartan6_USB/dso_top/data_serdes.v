`timescale 1ns / 1ps

module data_serdes(
   input[7:0] adc_data_p,
	input[7:0] adc_data_n,
	input clk0,
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
		for (i = 0 ; i < 4 ; i = i+1) begin : loop_br
		
			ISERDES2 #(
			.DATA_WIDTH     	(8), 			
			.DATA_RATE      	("SDR"), 		
			.BITSLIP_ENABLE 	("TRUE"), 		
			.SERDES_MODE    	("MASTER"), 		
			.INTERFACE_TYPE 	("RETIMED")
			) 		
			iserdes_m_br (
			.D       		(adc_data[i]),
			.CE0     		(1'b1),
			.CLK0    		(clk0),
			.CLK1    		(),
			.IOCE    		(ser_stb),
			.RST     		(1'b0),
			.CLKDIV  		(divclk),
			.SHIFTIN 		(),
			.BITSLIP 		(bitslip),
			.FABRICOUT 		(),
			.Q4  				(data_deser[32+(8*i)+7]),
			.Q3  				(data_deser[32+(8*i)+6]),
			.Q2  				(data_deser[32+(8*i)+5]),
			.Q1  				(data_deser[32+(8*i)+4]),
			.DFB  			(),
			.CFB0 			(),
			.CFB1 			(),
			.VALID    		(),
			.INCDEC   		(),
			.SHIFTOUT 		(data_cascade[i])
			);

			ISERDES2 #(
			.DATA_WIDTH     	(8), 			
			.DATA_RATE      	("SDR"), 		
			.BITSLIP_ENABLE 	("TRUE"), 		
			.SERDES_MODE    	("SLAVE"), 		
			.INTERFACE_TYPE 	("RETIMED")
			) 		
			iserdes_s_br (
			.D       		(),
			.CE0     		(1'b1),
			.CLK0    		(clk0),
			.CLK1    		(),
			.IOCE    		(ser_stb),
			.RST     		(1'b0),
			.CLKDIV  		(divclk),
			.SHIFTIN 		(data_cascade[i]),
			.BITSLIP 		(bitslip),
			.FABRICOUT 		(),
			.Q4  				(data_deser[32+(8*i)+3]),
			.Q3  				(data_deser[32+(8*i)+2]),
			.Q2  				(data_deser[32+(8*i)+1]),
			.Q1  				(data_deser[32+(8*i)+0]),
			.DFB  			(),
			.CFB0 			(),
			.CFB1 			(),
			.VALID 			(),
			.INCDEC 			(),
			.SHIFTOUT 		()
			);
			
			ISERDES2 #(
			.DATA_WIDTH     	(8), 			
			.DATA_RATE      	("SDR"), 		
			.BITSLIP_ENABLE 	("TRUE"), 		
			.SERDES_MODE    	("MASTER"), 		
			.INTERFACE_TYPE 	("RETIMED")
			) 		
			iserdes_m_br1 (
			.D       		(adc_data[i+4]),
			.CE0     		(1'b1),
			.CLK0    		(clk0),
			.CLK1    		(),
			.IOCE    		(ser_stb),
			.RST     		(1'b0),
			.CLKDIV  		(divclk),
			.SHIFTIN 		(),
			.BITSLIP 		(bitslip),
			.FABRICOUT 		(),
			.Q4  				(data_deser[(8*i)+7]),
			.Q3  				(data_deser[(8*i)+6]),
			.Q2  				(data_deser[(8*i)+5]),
			.Q1  				(data_deser[(8*i)+4]),
			.DFB  			(),
			.CFB0 			(),
			.CFB1 			(),
			.VALID    		(),
			.INCDEC   		(),
			.SHIFTOUT 		(data_cascade[i+4])
			);

			ISERDES2 #(
			.DATA_WIDTH     	(8), 			
			.DATA_RATE      	("SDR"), 		
			.BITSLIP_ENABLE 	("TRUE"), 		
			.SERDES_MODE    	("SLAVE"), 		
			.INTERFACE_TYPE 	("RETIMED")
			) 		
			iserdes_s_br1 (
			.D       		(),
			.CE0     		(1'b1),
			.CLK0    		(clk0),
			.CLK1    		(),
			.IOCE    		(ser_stb),
			.RST     		(1'b0),
			.CLKDIV  		(divclk),
			.SHIFTIN 		(data_cascade[i+4]),
			.BITSLIP 		(bitslip),
			.FABRICOUT 		(),
			.Q4  				(data_deser[(8*i)+3]),
			.Q3  				(data_deser[(8*i)+2]),
			.Q2  				(data_deser[(8*i)+1]),
			.Q1  				(data_deser[(8*i)+0]),
			.DFB  			(),
			.CFB0 			(),
			.CFB1 			(),
			.VALID 			(),
			.INCDEC 			(),
			.SHIFTOUT 		()
			);
			
		end
	endgenerate
endmodule
