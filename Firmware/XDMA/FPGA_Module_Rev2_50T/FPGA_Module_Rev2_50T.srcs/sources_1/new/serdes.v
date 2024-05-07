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
	output ready
   );
	
	wire delay_ready;
	wire rx_lckd;
	wire clk0;
	wire[7:0] fclk_deser;
	reg bitslip_ready;
	reg state = 1'b0;
	reg bitslip;
	reg[3:0] count;
	
	assign ready = bitslip_ready && delay_ready && rx_lckd;
	
	always @(posedge divclk) begin
	    if (rst) begin
	       state <= 0;
	       bitslip <= 0;
	       count <= 0;
	       bitslip_ready <= 0;
	    end
	    else begin
            if (state == 0) begin
                if (fclk_deser != 8'h0f) begin
                    bitslip <= 1'b1;					// bitslip needed
                    state <= 1;
                    count <= 4'b0000;
                    bitslip_ready <= 0;
                end
                else
                    bitslip_ready <= 1;
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
	.clk_in1 (axi_aclk),
	.clk_out1 (ref_clock)
	); 
    
    IDELAYCTRL icontrol (              				// Instantiate input delay control block
	.REFCLK			(ref_clock),
	.RST			(rst),
	.RDY			(delay_ready));
    
    serdes_1_to_468_idelay_ddr #(
	.S						(8),				// Set the serdes factor (4, 6 or 8)
 	.HIGH_PERFORMANCE_MODE 	("TRUE"),
    .D						(9),				// Number of data lines
    .REF_FREQ				(300.0),			// Set idelay control reference frequency, 300 MHz shown
    .CLKIN_PERIOD			(2),				// Set input clock period, 500MHz
	.DATA_FORMAT 			("PER_CHANL"))  	// PER_CLOCK or PER_CHANL data formatting
    rx0 (                      
	.clkin_p   				(adc_lclk_p),
	.clkin_n   				(adc_lclk_n),
	.datain_p     			({adc_fclk_p,adc_data_p}),
	.datain_n     			({adc_fclk_n,adc_data_n}),
	.enable_phase_detector	(1'b1),				// enable phase detector (active alignment) operation
	.enable_monitor			(1'b0),				// enables data eye monitoring
	.dcd_correct			(1'b0),				// enables clock duty cycle correction
	.rxclk    				(),
	.idelay_rdy				(delay_ready),
	.system_clk				(divclk),
	.reset     				(rst),
	.rx_lckd				(rx_lckd),
	.bitslip  				(bitslip),
	.rx_data				({fclk_deser,data_deser}),
	.bit_rate_value			(16'h1000),			// required bit rate value in BCD (1000 Mbps)
	.bit_time_value			(),					// bit time value
	.eye_info				(),					// data eye monitor per line
	.m_delay_1hot			(),					// sample point monitor per line
	.debug					()) ;				// debug bus

endmodule

