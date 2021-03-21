`timescale 1ns / 1ps

module data_serdes(
    input clk0,
    input rst,
	input divclk,
	input bitslip,
    input[7:0] adc_data_p,
	input[7:0] adc_data_n,
	output[63:0] data_deser 
	);

	wire[7:0] adc_data;
	
	IBUFDS 
	#(.DIFF_TERM  ("TRUE"),             // Differential termination
      .IOSTANDARD ("LVDS_25"))
    adc_data_ibuf[7:0] (
    .O(adc_data),
    .I(adc_data_p),
    .IB(adc_data_n)
	);
	
	genvar i;
	generate
		for (i = 0 ; i < 8 ; i = i+1) begin : loop_br
				
         // local wire only for use in this generate loop
         wire clk_in_int_inv;
         assign clk_in_int_inv = ~(clk0);    
    
         // declare the iserdes
         ISERDESE2
         # (
         .DATA_RATE         ("DDR"),
         .DATA_WIDTH        (8),
         .INTERFACE_TYPE    ("NETWORKING"), 
         .DYN_CLKDIV_INV_EN ("FALSE"),
         .DYN_CLK_INV_EN    ("FALSE"),
         .NUM_CE            (2),
         .OFB_USED          ("FALSE"),
         .IOBDELAY          ("NONE"),                               // Use input at D to output the data on Q
         .SERDES_MODE       ("MASTER"))
         iserdese2_master (
         .Q8  			    (data_deser[(8*i)+0]),
         .Q7  			    (data_deser[(8*i)+1]),
         .Q6  			    (data_deser[(8*i)+2]),
         .Q5  			    (data_deser[(8*i)+3]),
         .Q4  			    (data_deser[(8*i)+4]),
         .Q3  		    	(data_deser[(8*i)+5]),
         .Q2  	 		    (data_deser[(8*i)+6]),
         .Q1      			(data_deser[(8*i)+7]),
         .SHIFTOUT1         (),
         .SHIFTOUT2         (),
         .BITSLIP           (bitslip),                             // 1-bit Invoke Bitslip. This can be used with any DATA_WIDTH, cascaded or not.
         .CE1               (1'b1),                                // 1-bit Clock enable input
         .CE2               (1'b1),                                // 1-bit Clock enable input
         .CLK               (clk0),                                // Fast source synchronous clock driven by BUFIO
         .CLKB              (clk_in_int_inv),                      // Locally inverted fast 
         .CLKDIV            (divclk),                              // Slow clock from BUFR.
         .CLKDIVP           (1'b0),
         .D                 (adc_data[i]),                         // 1-bit Input signal from IOB 
         .DDLY              (1'b0),                                // 1-bit Input from Input Delay component 
         .RST               (rst),                                // 1-bit Asynchronous reset only.
         .SHIFTIN1          (1'b0),
         .SHIFTIN2          (1'b0),
         .DYNCLKDIVSEL      (1'b0),
         .DYNCLKSEL         (1'b0),
         .OFB               (1'b0),
         .OCLK              (1'b0),
         .OCLKB             (1'b0),
         .O                 ());                                   // unregistered output of ISERDESE1
		end
	endgenerate
endmodule

