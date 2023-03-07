//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2012 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:                Xilinx
// \   \   \/    Version:               1.0
//  \   \        Filename:              serdes_1_to_468_idelay_ddr.v
//  /   /        Date Last Modified:    Mar 30, 2016
// /___/   /\    Date Created:          Mar 5, 2011
// \   \  /  \
//  \___\/\___\
// 
//Device: 	7 Series
//Purpose:  	1 to 4, 6 or 8 DDR data receiver.
//		Data formatting is set by the DATA_FORMAT parameter. Serdes factor by the S parameter
//		PER_CLOCK (default) format receives bits for 0, 1, 2 .. on the same sample edge
//		PER_CHANL format receives bits for 0, 4, 8 ..  (1:4 serdes) on the same sample edge
//
//Reference:	
//    
//Revision History:
//    Rev 1.0 - First created (nicks)
//    Rev 1.1 - CR1107363 (JT)
//
//////////////////////////////////////////////////////////////////////////////
//
//  Disclaimer: 
//
//		This disclaimer is not a license and does not grant any rights to the materials 
//              distributed herewith. Except as otherwise provided in a valid license issued to you 
//              by Xilinx, and to the maximum extent permitted by applicable law: 
//              (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, 
//              AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
//              INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR 
//              FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract 
//              or tort, including negligence, or under any other theory of liability) for any loss or damage 
//              of any kind or nature related to, arising under or in connection with these materials, 
//              including for any direct, or any indirect, special, incidental, or consequential loss 
//              or damage (including loss of data, profits, goodwill, or any type of loss or damage suffered 
//              as a result of any action brought by a third party) even if such damage or loss was 
//              reasonably foreseeable or Xilinx had been advised of the possibility of the same.
//
//  Critical Applications:
//
//		Xilinx products are not designed or intended to be fail-safe, or for use in any application 
//		requiring fail-safe performance, such as life-support or safety devices or systems, 
//		Class III medical devices, nuclear facilities, applications related to the deployment of airbags,
//		or any other applications that could lead to death, personal injury, or severe property or 
//		environmental damage (individually and collectively, "Critical Applications"). Customer assumes 
//		the sole risk and liability of any use of Xilinx products in Critical Applications, subject only 
//		to applicable laws and regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
//
//////////////////////////////////////////////////////////////////////////////

`timescale 1ps/1ps

module serdes_1_to_468_idelay_ddr (clkin_p, clkin_n, datain_p, datain_n, enable_phase_detector, enable_monitor, rxclk, idelay_rdy, reset, system_clk, bitslip,  
                                   rx_lckd, rx_data, debug, bit_rate_value, bit_time_value, dcd_correct, eye_info, m_delay_1hot, clock_sweep) ;

parameter integer 		S = 8 ;   			// Set the serdes factor to 4, 6 or 8
parameter integer 		D = 8 ;   			// Parameter to set the number of data lines
parameter real      		REF_FREQ = 200 ;   		// Parameter to set reference frequency used by idelay controller
parameter 			HIGH_PERFORMANCE_MODE = "FALSE";// Parameter to set HIGH_PERFORMANCE_MODE of input delays to reduce jitter
parameter real 	  		CLKIN_PERIOD = 6.000 ;		// clock period (ns) of input clock on clkin_p
parameter         		DATA_FORMAT = "PER_CLOCK" ;     // Parameter Used to determine method for mapping input parallel word to output serial words
                                     	
input 				clkin_p ;			// Input from LVDS clock receiver pin
input 				clkin_n ;			// Input from LVDS clock receiver pin
input 		[D-1:0]		datain_p ;			// Input from LVDS clock data pins
input 		[D-1:0]		datain_n ;			// Input from LVDS clock data pins
input 				enable_phase_detector ;		// Enables the phase detector logic when high
input				enable_monitor ;		// Enables the eye monitoring logic when high
input 				reset ;				// Reset line
input 				bitslip ;			// Bitslip line
input				idelay_rdy ;			// input delays are ready
output 				rxclk ;				// Global/BUFIO rx clock network
output 				system_clk ;			// Global/Regional clock output
output 				rx_lckd ; 			// Locked, synchronous to system_clk
output 		[D*S-1:0]	rx_data ;	 		// Received Data
output 		[10*D+18:0]	debug ;	 			// debug info
input 		[15:0]		bit_rate_value ;	 	// Bit rate in Mbps, for example 16'h0585 16'h1050 ..
input				dcd_correct ;			// '0' = square, '1' = assume 10% DCD
output		[4:0]		bit_time_value ;		// Calculated bit time value for slave devices
output 		[D*32-1:0]	eye_info ;	 		// eye info
output		[D*32-1:0]	m_delay_1hot ;			// Master delay control value as a one-hot vector
output 	reg 	[31:0]		clock_sweep ;	 		// clock eye info

reg			rst_iserdes ;	
wire	[D*5-1:0]	m_delay_val_in ;
wire	[D*5-1:0]	m_delay_val_out ;
wire	[D*5-1:0]	s_delay_val_in ;
wire	[D*5-1:0]	s_delay_val_out ;
wire	[3:0]		cdataout ;			
wire			rx_clk_in_p ;			
reg 	[3:0] 		clk_iserdes_data_d ;    	
reg 	[4:0] 		state2_count ;			
reg			rx_lckd_intd4 ;
reg			not_rx_lckd_intd4 ;
wire 	[D-1:0]		rx_data_in_p ;			
wire 	[D-1:0]		rx_data_in_n ;			
wire 	[D-1:0]		rx_data_in_m ;			
wire 	[D-1:0]		rx_data_in_s ;		
wire 	[D-1:0]		rx_data_in_md ;			
wire 	[D-1:0]		rx_data_in_sd ;				
wire	[(S*D)-1:0] 	mdataout ;						
wire	[(S*D)-1:0] 	mdataoutd ;			
wire	[(S*D)-1:0] 	sdataout ;						
wire	[(8*D)-1:0] 	m_serdes ;					
wire	[(8*D)-1:0] 	s_serdes ;					
reg			data_different ;
reg	[4:0]		bt_val ;  
reg			su_locked ;
reg	[5:0]		m_count ;  
reg	[4:0]		c_sweep_delay ;
reg	[31:0]		temp_shift ;
reg			zflag ;
reg			del_mech ;
reg	[4:0]		initial_delay ;

parameter [D-1:0] 	RX_SWAP_MASK = 16'h0000 ;	// pinswap mask for input data bits (0 = no swap (default), 1 = swap). Allows inputs to be connected the wrong way round to ease PCB routing.

assign debug = {c_sweep_delay, 4'h0, cdataout, s_delay_val_out, m_delay_val_out, bitslip, initial_delay} ;
assign rx_lckd = ~not_rx_lckd_intd4 & su_locked ;
assign bit_time_value = bt_val ;

if (REF_FREQ < 210.0) begin
  always @ (bit_rate_value) begin						// Generate tap number to be used for input bit rate (200 MHz ref clock)
  	if      (bit_rate_value > 16'h1984) begin bt_val <= 5'h07 ; end
  	else if (bit_rate_value > 16'h1717) begin bt_val <= 5'h08 ; end
  	else if (bit_rate_value > 16'h1514) begin bt_val <= 5'h09 ; end
  	else if (bit_rate_value > 16'h1353) begin bt_val <= 5'h0A ; end
  	else if (bit_rate_value > 16'h1224) begin bt_val <= 5'h0B ; end
  	else if (bit_rate_value > 16'h1117) begin bt_val <= 5'h0C ; end
  	else if (bit_rate_value > 16'h1027) begin bt_val <= 5'h0D ; end
  	else if (bit_rate_value > 16'h0951) begin bt_val <= 5'h0E ; end
  	else if (bit_rate_value > 16'h0885) begin bt_val <= 5'h0F ; end
  	else if (bit_rate_value > 16'h0828) begin bt_val <= 5'h10 ; end
  	else if (bit_rate_value > 16'h0778) begin bt_val <= 5'h11 ; end
  	else if (bit_rate_value > 16'h0733) begin bt_val <= 5'h12 ; end
  	else if (bit_rate_value > 16'h0694) begin bt_val <= 5'h13 ; end
  	else if (bit_rate_value > 16'h0658) begin bt_val <= 5'h14 ; end
  	else if (bit_rate_value > 16'h0626) begin bt_val <= 5'h15 ; end
  	else if (bit_rate_value > 16'h0597) begin bt_val <= 5'h16 ; end
  	else if (bit_rate_value > 16'h0570) begin bt_val <= 5'h17 ; end
  	else if (bit_rate_value > 16'h0546) begin bt_val <= 5'h18 ; end
  	else if (bit_rate_value > 16'h0524) begin bt_val <= 5'h19 ; end
  	else if (bit_rate_value > 16'h0503) begin bt_val <= 5'h1A ; end
  	else if (bit_rate_value > 16'h0484) begin bt_val <= 5'h1B ; end
  	else if (bit_rate_value > 16'h0466) begin bt_val <= 5'h1C ; end
  	else if (bit_rate_value > 16'h0450) begin bt_val <= 5'h1D ; end
  	else if (bit_rate_value > 16'h0435) begin bt_val <= 5'h1E ; end
  	else                                begin bt_val <= 5'h1F ; end		// min bit rate 420 Mbps
  end	
end 
else begin
  always @ (bit_rate_value or dcd_correct) begin						// Generate tap number to be used for input bit rate (300 MHz ref clock)
  	if      (dcd_correct == 1'b0 && (bit_rate_value > 16'h2030) || dcd_correct == 1'b1 && bit_rate_value > 16'h1845) begin bt_val <= 5'h0A ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h1836) || dcd_correct == 1'b1 && bit_rate_value > 16'h1669) begin bt_val <= 5'h0B ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h1675) || dcd_correct == 1'b1 && bit_rate_value > 16'h1523) begin bt_val <= 5'h0C ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h1541) || dcd_correct == 1'b1 && bit_rate_value > 16'h1401) begin bt_val <= 5'h0D ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h1426) || dcd_correct == 1'b1 && bit_rate_value > 16'h1297) begin bt_val <= 5'h0E ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h1328) || dcd_correct == 1'b1 && bit_rate_value > 16'h1207) begin bt_val <= 5'h0F ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h1242) || dcd_correct == 1'b1 && bit_rate_value > 16'h1129) begin bt_val <= 5'h10 ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h1167) || dcd_correct == 1'b1 && bit_rate_value > 16'h1061) begin bt_val <= 5'h11 ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h1100) || dcd_correct == 1'b1 && bit_rate_value > 16'h0999) begin bt_val <= 5'h12 ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h1040) || dcd_correct == 1'b1 && bit_rate_value > 16'h0946) begin bt_val <= 5'h13 ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h0987) || dcd_correct == 1'b1 && bit_rate_value > 16'h0897) begin bt_val <= 5'h14 ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h0939) || dcd_correct == 1'b1 && bit_rate_value > 16'h0853) begin bt_val <= 5'h15 ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h0895) || dcd_correct == 1'b1 && bit_rate_value > 16'h0814) begin bt_val <= 5'h16 ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h0855) || dcd_correct == 1'b1 && bit_rate_value > 16'h0777) begin bt_val <= 5'h17 ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h0819) || dcd_correct == 1'b1 && bit_rate_value > 16'h0744) begin bt_val <= 5'h18 ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h0785) || dcd_correct == 1'b1 && bit_rate_value > 16'h0714) begin bt_val <= 5'h19 ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h0754) || dcd_correct == 1'b1 && bit_rate_value > 16'h0686) begin bt_val <= 5'h1A ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h0726) || dcd_correct == 1'b1 && bit_rate_value > 16'h0660) begin bt_val <= 5'h1B ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h0700) || dcd_correct == 1'b1 && bit_rate_value > 16'h0636) begin bt_val <= 5'h1C ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h0675) || dcd_correct == 1'b1 && bit_rate_value > 16'h0614) begin bt_val <= 5'h1D ; end
  	else if (dcd_correct == 1'b0 && (bit_rate_value > 16'h0652) || dcd_correct == 1'b1 && bit_rate_value > 16'h0593) begin bt_val <= 5'h1E ; end
  	else begin bt_val <= 5'h1F ; end					// min bit rate 631 Mbps
  end
end

always @ (bt_val) begin
	if (bt_val < 5'b10110) begin						// adjust delay mechanism when tap values are low enough
		del_mech <= 1'b1 ;
	end
	else begin
		del_mech <= 1'b0 ;	
	end 
end
// Clock input 

IBUFGDS #(
	.IBUF_LOW_PWR		("FALSE"))
iob_clk_in (
	.I    			(clkin_p),
	.IB       		(clkin_n),
	.O         		(rx_clk_in_p));

genvar i ;
genvar j ;

IDELAYE2 #(
	.REFCLK_FREQUENCY	(REF_FREQ),
	.HIGH_PERFORMANCE_MODE 	(HIGH_PERFORMANCE_MODE),
      	.IDELAY_VALUE		(1),
      	.DELAY_SRC		("IDATAIN"),
      	.IDELAY_TYPE		("VAR_LOAD"))
idelay_cm(               	
	.DATAOUT		(rx_clk_in_pd),
	.C			(system_clk),
	.CE			(1'b0),
	.INC			(1'b0),
	.DATAIN			(1'b0),
	.IDATAIN		(rx_clk_in_p),
	.LD			(1'b1),
	.LDPIPEEN		(1'b0),
	.REGRST			(1'b0),
	.CINVCTRL		(1'b0),
	.CNTVALUEIN		(c_sweep_delay),
	.CNTVALUEOUT		());

ISERDESE2 #(
	.DATA_WIDTH     	(S), 				
	.DATA_RATE      	("DDR"), 			
	.SERDES_MODE    	("MASTER"), 			
	.IOBDELAY	    	("IFD"), 			
	.INTERFACE_TYPE 	("NETWORKING"),
	.NUM_CE			(1))		
iserdes_cm (
	.D       		(rx_clk_in_p),
	.DDLY     		(rx_clk_in_pd),
	.CE1     		(1'b1),
	.CE2     		(1'b1),
	.CLK    		(rxclk),
	.CLKB    		(~rxclk),
	.RST     		(rst_iserdes),
	.CLKDIV  		(system_clk),
	.CLKDIVP  		(1'b0),
	.OCLK    		(1'b0),
	.OCLKB    		(1'b0),
	.DYNCLKSEL    		(1'b0),
	.DYNCLKDIVSEL  		(1'b0),
	.SHIFTIN1 		(1'b0),
	.SHIFTIN2 		(1'b0),
	.BITSLIP 		(1'b0),
	.O	 		(rx_clk_in_pc),
	.Q8 			(),
	.Q7 			(),
	.Q6 			(),
	.Q5 			(),
	.Q4 			(cdataout[0]),
	.Q3 			(cdataout[1]),
	.Q2 			(cdataout[2]),
	.Q1 			(cdataout[3]),
	.OFB 			(),
	.SHIFTOUT1 		(),
	.SHIFTOUT2 		());  	
      
BUFIO  bufio_mmcm_xn (.I (rx_clk_in_pc), .O(rxclk)) ;

generate 
if (S == 4) begin : loop2a
BUFR #(.BUFR_DIVIDE("2"),.SIM_DEVICE("7SERIES"))bufr_mmcm_x1 (.I(rx_clk_in_pc),.CE(1'b1),.O(system_clk),.CLR(1'b0)) ;
end
if (S == 6) begin : loop2b
BUFR #(.BUFR_DIVIDE("3"),.SIM_DEVICE("7SERIES"))bufr_mmcm_x1 (.I(rx_clk_in_pc),.CE(1'b1),.O(system_clk),.CLR(1'b0)) ;
end
if (S == 8) begin : loop2c
BUFR #(.BUFR_DIVIDE("4"),.SIM_DEVICE("7SERIES"))bufr_mmcm_x1 (.I(rx_clk_in_pc),.CE(1'b1),.O(system_clk),.CLR(1'b0)) ;
end
endgenerate

always @ (posedge system_clk) begin							// sweep data
	if (su_locked == 1'b0) begin
		c_sweep_delay <= 5'b00000 ;
		temp_shift <= 32'h00000001 ;
		clock_sweep <= 32'h00000000 ;
		zflag <= 1'b0 ;
		rx_lckd_intd4 <= 1'b0 ;
		not_rx_lckd_intd4 <= 1'b1 ;
		initial_delay <= 5'h00 ;
	end
	else begin
		not_rx_lckd_intd4 <= ~rx_lckd_intd4 ;
		if (state2_count == 5'h1F) begin
			if (c_sweep_delay != bt_val) begin
		 		if (zflag == 1'b0) begin
		 			c_sweep_delay <= c_sweep_delay + 5'h01 ;
					temp_shift <= {temp_shift[30:0], temp_shift[31]} ;
				end
				else begin
					zflag <= 1'b0 ;
				end
			end
			else begin
			 	c_sweep_delay <= 5'h00 ;
			 	zflag <= 1'b1 ;
				temp_shift <= 32'h00000001 ;
			end
			if (zflag == 1'b0) begin
				if (data_different == 1'b1) begin
					clock_sweep <= clock_sweep & ~temp_shift ;
					if (initial_delay == 5'h00) begin
						rx_lckd_intd4 <= 1'b1 ;
				  		if (c_sweep_delay < {1'b0, bt_val[4:1]}) begin		// choose the lowest delay value to minimise jitter
				  		 	initial_delay <= c_sweep_delay + {1'b0, bt_val[4:1]} ;
				  		end
				  		else begin
				  		 	initial_delay <= c_sweep_delay - {1'b0, bt_val[4:1]} ;
				  		end
					end
				end
				else begin
					clock_sweep <= clock_sweep | temp_shift ;
				end
			end
		end
	end
end

always @ (posedge system_clk or posedge reset or negedge idelay_rdy) begin
if (reset == 1'b1 || idelay_rdy == 1'b0) begin
	su_locked <= 1'b0 ;
	m_count <= 6'h00 ;
	rst_iserdes <= 1'b1 ;
end else begin										// dummy startup delay
	if (m_count == 6'h3C) begin	
		rst_iserdes <= 1'b0 ;
		m_count <= m_count + 6'h01 ;
	end
	else if (m_count == 6'h3F) begin
		su_locked <= 1'b1 ;
	end 
	else begin
		m_count <= m_count + 6'h01 ;
	end
end
end

always @ (posedge system_clk) begin					
	if (su_locked == 1'b0) begin
		state2_count <= 5'h00 ;	
	end
	else begin
		state2_count <= state2_count + 5'h01 ;
		if (state2_count == 5'h00) begin
			clk_iserdes_data_d <= cdataout ;
		end
		else if (state2_count <= 5'h08) begin
			data_different <= 1'b0 ;
		end
		else if (cdataout != clk_iserdes_data_d) begin
			data_different <= 1'b1 ;
		end
	end
end
	
generate
for (i = 0 ; i <= D-1 ; i = i+1)
begin : loop3

delay_controller_wrap # (
	.S 			(S))
dc_inst (                       
	.m_datain		(mdataout[S*i+S-1:S*i]),
	.s_datain		(sdataout[S*i+S-1:S*i]),
	.enable_phase_detector	(enable_phase_detector),
	.enable_monitor		(enable_monitor),
	.reset			(not_rx_lckd_intd4),
	.clk			(system_clk),
	.c_delay_in		(initial_delay),
	.m_delay_out		(m_delay_val_in[5*i+4:5*i]),
	.s_delay_out		(s_delay_val_in[5*i+4:5*i]),
	.data_out		(mdataoutd[S*i+S-1:S*i]),
	.bt_val			(bt_val),
	.del_mech		(del_mech),
	.results		(eye_info[32*i+31:32*i]),
	.m_delay_1hot		(m_delay_1hot[32*i+31:32*i])) ;

end
endgenerate 
	
// Data bit Receivers 

generate
for (i = 0 ; i <= D-1 ; i = i+1) begin : loop0
for (j = 0 ; j <= S-1 ; j = j+1) begin : loop1			// Assign data bits to correct serdes according to required format
	if (DATA_FORMAT == "PER_CLOCK") begin
		assign rx_data[D*j+i] = mdataoutd[S*i+j] ;
	end 
	else begin
		assign rx_data[S*i+j] = mdataoutd[S*i+j] ;
	end
end

IBUFDS_DIFF_OUT #(
	.IBUF_LOW_PWR		("FALSE")) 
data_in (
	.I    			(datain_p[i]),
	.IB       		(datain_n[i]),
	.O         		(rx_data_in_p[i]),
	.OB         		(rx_data_in_n[i]));

assign rx_data_in_m[i] = rx_data_in_p[i] ^ RX_SWAP_MASK[i] ;
assign rx_data_in_s[i] = rx_data_in_n[i] ^ RX_SWAP_MASK[i] ;

IDELAYE2 #(
	.REFCLK_FREQUENCY	(REF_FREQ),
	.HIGH_PERFORMANCE_MODE 	(HIGH_PERFORMANCE_MODE),
      	.IDELAY_VALUE		(0),
      	.DELAY_SRC		("IDATAIN"),
      	.IDELAY_TYPE		("VAR_LOAD"))
idelay_m(               	
	.DATAOUT		(rx_data_in_md[i]),
	.C			(system_clk),
	.CE			(1'b0),
	.INC			(1'b0),
	.DATAIN			(1'b0),
	.IDATAIN		(rx_data_in_m[i]),
	.LD			(1'b1),
	.LDPIPEEN		(1'b0),
	.REGRST			(1'b0),
	.CINVCTRL		(1'b0),
	.CNTVALUEIN		(m_delay_val_in[5*i+4:5*i]),
	.CNTVALUEOUT		(m_delay_val_out[5*i+4:5*i]));
		
ISERDESE2 #(
	.DATA_WIDTH     	(S), 			
	.DATA_RATE      	("DDR"), 		
	.SERDES_MODE    	("MASTER"), 		
	.IOBDELAY	    	("IFD"), 		
	.INTERFACE_TYPE 	("NETWORKING"),
	.NUM_CE			(1)) 	
iserdes_m (
	.D       		(1'b0),
	.DDLY     		(rx_data_in_md[i]),
	.CE1     		(1'b1),
	.CE2     		(1'b1),
	.CLK	   		(rxclk),
	.CLKB    		(~rxclk),
	.RST     		(rst_iserdes),
	.CLKDIV  		(system_clk),
	.CLKDIVP  		(1'b0),
	.OCLK    		(1'b0),
	.OCLKB    		(1'b0),
	.DYNCLKSEL    		(1'b0),
	.DYNCLKDIVSEL  		(1'b0),
	.SHIFTIN1 		(1'b0),
	.SHIFTIN2 		(1'b0),
	.BITSLIP 		(bitslip),
	.O	 		(),
	.Q8  			(m_serdes[8*i+0]),
	.Q7  			(m_serdes[8*i+1]),
	.Q6  			(m_serdes[8*i+2]),
	.Q5  			(m_serdes[8*i+3]),
	.Q4  			(m_serdes[8*i+4]),
	.Q3  			(m_serdes[8*i+5]),
	.Q2  			(m_serdes[8*i+6]),
	.Q1  			(m_serdes[8*i+7]),
	.OFB 			(),
	.SHIFTOUT1		(),
	.SHIFTOUT2 		());

IDELAYE2 #(
	.REFCLK_FREQUENCY	(REF_FREQ),
	.HIGH_PERFORMANCE_MODE 	(HIGH_PERFORMANCE_MODE),
      	.IDELAY_VALUE		(0),
      	.DELAY_SRC		("IDATAIN"),
      	.IDELAY_TYPE		("VAR_LOAD"))
idelay_s(               	
	.DATAOUT		(rx_data_in_sd[i]),
	.C			(system_clk),
	.CE			(1'b0),
	.INC			(1'b0),
	.DATAIN			(1'b0),
	.IDATAIN		(rx_data_in_s[i]),
	.LD			(1'b1),
	.LDPIPEEN		(1'b0),
	.REGRST			(1'b0),
	.CINVCTRL		(1'b0),
	.CNTVALUEIN		(s_delay_val_in[5*i+4:5*i]),
	.CNTVALUEOUT		(s_delay_val_out[5*i+4:5*i]));
	
ISERDESE2 #(
	.DATA_WIDTH     	(S), 			
	.DATA_RATE      	("DDR"), 		
	.SERDES_MODE    	("MASTER"), 		
	.IOBDELAY	    	("IFD"), 		
	.INTERFACE_TYPE 	("NETWORKING"),
	.NUM_CE			(1)) 	
iserdes_s (
	.D       		(1'b0),
	.DDLY     		(rx_data_in_sd[i]),
	.CE1     		(1'b1),
	.CE2     		(1'b1),
	.CLK	   		(rxclk),
	.CLKB    		(~rxclk),
	.RST     		(rst_iserdes),
	.CLKDIV  		(system_clk),
	.CLKDIVP  		(1'b0),
	.OCLK    		(1'b0),
	.OCLKB    		(1'b0),
	.DYNCLKSEL    		(1'b0),
	.DYNCLKDIVSEL  		(1'b0),
	.SHIFTIN1 		(1'b0),
	.SHIFTIN2 		(1'b0),
	.BITSLIP 		(bitslip),
	.O	 		(),
	.Q8  			(s_serdes[8*i+0]),
	.Q7  			(s_serdes[8*i+1]),
	.Q6  			(s_serdes[8*i+2]),
	.Q5  			(s_serdes[8*i+3]),
	.Q4  			(s_serdes[8*i+4]),
	.Q3  			(s_serdes[8*i+5]),
	.Q2  			(s_serdes[8*i+6]),
	.Q1  			(s_serdes[8*i+7]),
	.OFB 			(),
	.SHIFTOUT1		(),
	.SHIFTOUT2 		());
	
// sort out necessary bits from iserdes
	
if (S == 4) begin : loop0a
	assign mdataout[4*i+3:4*i] = m_serdes[8*i+7:8*i+4] ;	
	assign sdataout[4*i+3:4*i] = ~s_serdes[8*i+7:8*i+4] ;
end

if (S == 6) begin : loop0b
	assign mdataout[6*i+5:6*i] = m_serdes[8*i+7:8*i+2] ;	
	assign sdataout[6*i+5:6*i] = ~s_serdes[8*i+7:8*i+2] ;
end

if (S == 8) begin : loop0c
	assign mdataout[8*i+7:8*i] = m_serdes[8*i+7:8*i] ;	
	assign sdataout[8*i+7:8*i] = ~s_serdes[8*i+7:8*i] ;
end 

end
endgenerate

endmodule
