//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2012 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:                Xilinx
// \   \   \/    Version:               1.0
//  \   \        Filename:              delay_controller_wrap.v
//  /   /        Date Last Modified:    Mar 30, 2016
// /___/   /\    Date Created:          Jan 8, 2013
// \   \  /  \
//  \___\/\___\
// 
//Device: 	7 Series
//Purpose:  	Controls delays on a per-bit basis
//		Number of bits from each serdes set via an attribute
//
//Reference:	XAPP585.pdf
//    
//Revision History:
//    Rev 1.0 - First created (nicks)
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

module delay_controller_wrap (m_datain, s_datain, enable_phase_detector, enable_monitor, reset, clk, c_delay_in, m_delay_out, s_delay_out, data_out, bt_val, results, m_delay_1hot, del_mech) ;

parameter integer 	S = 4 ;   			// Set the number of bits

input		[S-1:0]	m_datain ;			// Inputs from master serdes
input		[S-1:0]	s_datain ;			// Inputs from slave serdes
input			enable_phase_detector ;		// Enables the phase detector logic when high
input			enable_monitor ;		// Enables the eye monitoring logic when high
input			reset ;				// Reset line synchronous to clk 
input			clk ;				// Global/Regional clock 
input		[4:0]	c_delay_in ;			// delay value found on clock line
output		[4:0]	m_delay_out ;			// Master delay control value
output		[4:0]	s_delay_out ;			// Master delay control value
output	reg	[S-1:0]	data_out ;			// Output data
input		[4:0]	bt_val ;			// Calculated bit time value for slave devices
output	reg	[31:0]	results ;			// eye monitor result data	
output	reg	[31:0]	m_delay_1hot ;			// Master delay control value as a one-hot vector	
input			del_mech ;			// changes delay mechanism slightly at higher bit rates

reg	[S-1:0]		mdataouta ;		
reg			mdataoutb ;		
reg	[S-1:0]		mdataoutc ;		
reg	[S-1:0]		sdataouta ;		
reg			sdataoutb ;		
reg	[S-1:0]		sdataoutc ;		
reg			s_ovflw ; 		
reg	[1:0]		m_delay_mux ;				
reg	[1:0]		s_delay_mux ;				
reg			data_mux ;		
reg			dec_run ;			
reg			inc_run ;			
reg			eye_run ;			
reg	[4:0]		s_state ;					
reg	[5:0]		pdcount ;					
reg	[4:0]		m_delay_val_int ;	
reg	[4:0]		s_delay_val_int ;	
reg	[4:0]		s_delay_val_eye ;	
reg			meq_max	;		
reg			meq_min	;		
reg			pd_max	;		
reg			pd_min	;		
reg			delay_change ;		
wire	[S-1:0]		all_high ;		
wire	[S-1:0]		all_low	;		
wire	[7:0]		msxoria	;		
wire	[7:0]		msxorda	;		
reg	[1:0]		action	;		
reg	[1:0]		msxor_cti ;
reg	[1:0]		msxor_ctd ;
reg	[1:0]		msxor_ctix ;
reg	[1:0]		msxor_ctdx ;
wire	[2:0]		msxor_ctiy ;
wire	[2:0]		msxor_ctdy ;
reg	[7:0]		match ;	
reg	[31:0]		shifter ;	
reg	[7:0]		pd_hold ;	
	
assign m_delay_out = m_delay_val_int ;
assign s_delay_out = s_delay_val_int ;
genvar i ;

generate

for (i = 0 ; i <= S-2 ; i = i+1) begin : loop0

assign msxoria[i+1] = ((~s_ovflw & ((mdataouta[i] & ~mdataouta[i+1] & ~sdataouta[i])   | (~mdataouta[i] & mdataouta[i+1] &  sdataouta[i]))) | 
	               ( s_ovflw & ((mdataouta[i] & ~mdataouta[i+1] & ~sdataouta[i+1]) | (~mdataouta[i] & mdataouta[i+1] &  sdataouta[i+1])))) ; // early bits                   
assign msxorda[i+1] = ((~s_ovflw & ((mdataouta[i] & ~mdataouta[i+1] &  sdataouta[i])   | (~mdataouta[i] & mdataouta[i+1] & ~sdataouta[i])))) | 
	               ( s_ovflw & ((mdataouta[i] & ~mdataouta[i+1] &  sdataouta[i+1]) | (~mdataouta[i] & mdataouta[i+1] & ~sdataouta[i+1]))) ;	// late bits
end 
endgenerate

assign msxoria[0] = ((~s_ovflw & ((mdataoutb & ~mdataouta[0] & ~sdataoutb)    | (~mdataoutb & mdataouta[0] &  sdataoutb))) | 			// first early bit
	             ( s_ovflw & ((mdataoutb & ~mdataouta[0] & ~sdataouta[0]) | (~mdataoutb & mdataouta[0] &  sdataouta[0])))) ;
assign msxorda[0] = ((~s_ovflw & ((mdataoutb & ~mdataouta[0] &  sdataoutb)    | (~mdataoutb & mdataouta[0] & ~sdataoutb)))) | 			// first late bit
	             ( s_ovflw & ((mdataoutb & ~mdataouta[0] &  sdataouta[0]) | (~mdataoutb & mdataouta[0] & ~sdataouta[0]))) ;

always @ (posedge clk) begin				// generate number of incs or decs for low 4 bits
	case (msxoria[3:0])
		4'h0    : msxor_cti <= 2'h0 ;
		4'h1    : msxor_cti <= 2'h1 ;
		4'h2    : msxor_cti <= 2'h1 ;
		4'h3    : msxor_cti <= 2'h2 ;
		4'h4    : msxor_cti <= 2'h1 ;
		4'h5    : msxor_cti <= 2'h2 ;
		4'h6    : msxor_cti <= 2'h2 ;
		4'h8    : msxor_cti <= 2'h1 ;
		4'h9    : msxor_cti <= 2'h2 ;
		4'hA    : msxor_cti <= 2'h2 ;
		4'hC    : msxor_cti <= 2'h2 ;
		default : msxor_cti <= 2'h3 ;
	endcase
	case (msxorda[3:0])
		4'h0    : msxor_ctd <= 2'h0 ;
		4'h1    : msxor_ctd <= 2'h1 ;
		4'h2    : msxor_ctd <= 2'h1 ;
		4'h3    : msxor_ctd <= 2'h2 ;
		4'h4    : msxor_ctd <= 2'h1 ;
		4'h5    : msxor_ctd <= 2'h2 ;
		4'h6    : msxor_ctd <= 2'h2 ;
		4'h8    : msxor_ctd <= 2'h1 ;
		4'h9    : msxor_ctd <= 2'h2 ;
		4'hA    : msxor_ctd <= 2'h2 ;
		4'hC    : msxor_ctd <= 2'h2 ;
		default : msxor_ctd <= 2'h3 ;
	endcase
	case (msxoria[7:4])				// generate number of incs or decs for high n bits, max 4
		4'h0    : msxor_ctix <= 2'h0 ;
		4'h1    : msxor_ctix <= 2'h1 ;
		4'h2    : msxor_ctix <= 2'h1 ;
		4'h3    : msxor_ctix <= 2'h2 ;
		4'h4    : msxor_ctix <= 2'h1 ;
		4'h5    : msxor_ctix <= 2'h2 ;
		4'h6    : msxor_ctix <= 2'h2 ;
		4'h8    : msxor_ctix <= 2'h1 ;
		4'h9    : msxor_ctix <= 2'h2 ;
		4'hA    : msxor_ctix <= 2'h2 ;
		4'hC    : msxor_ctix <= 2'h2 ;
		default : msxor_ctix <= 2'h3 ;
	endcase
	case (msxorda[7:4])
		4'h0    : msxor_ctdx <= 2'h0 ;
		4'h1    : msxor_ctdx <= 2'h1 ;
		4'h2    : msxor_ctdx <= 2'h1 ;
		4'h3    : msxor_ctdx <= 2'h2 ;
		4'h4    : msxor_ctdx <= 2'h1 ;
		4'h5    : msxor_ctdx <= 2'h2 ;
		4'h6    : msxor_ctdx <= 2'h2 ;
		4'h8    : msxor_ctdx <= 2'h1 ;
		4'h9    : msxor_ctdx <= 2'h2 ;
		4'hA    : msxor_ctdx <= 2'h2 ;
		4'hC    : msxor_ctdx <= 2'h2 ;
		default : msxor_ctdx <= 2'h3 ;
	endcase
end

assign msxor_ctiy = {1'b0, msxor_cti} + {1'b0, msxor_ctix} ;
assign msxor_ctdy = {1'b0, msxor_ctd} + {1'b0, msxor_ctdx} ;

always @ (posedge clk) begin
	if (msxor_ctiy == msxor_ctdy) begin
		action <= 2'h0 ;
	end
	else if (msxor_ctiy > msxor_ctdy) begin
		action <= 2'h1 ;
	end 
	else begin
		action <= 2'h2 ;
	end
end
		       	       
generate
for (i = 0 ; i <= S-1 ; i = i+1) begin : loop1
assign all_high[i] = 1'b1 ;
assign all_low[i] = 1'b0 ;
end 
endgenerate

always @ (posedge clk) begin
	mdataouta <= m_datain ;
	mdataoutb <= mdataouta[S-1] ;
	sdataouta <= s_datain ;
	sdataoutb <= sdataouta[S-1] ;
end
	
always @ (posedge clk) begin
	if (reset == 1'b1) begin
		s_ovflw <= 1'b0 ;
		pdcount <= 6'b100000 ;
		m_delay_val_int <= c_delay_in ; 			// initial master delay
		s_delay_val_int <= c_delay_in ; 			// initial slave delay
		data_mux <= 1'b0 ;
		m_delay_mux <= 2'b01 ;
		s_delay_mux <= 2'b01 ;
		s_state <= 5'b00000 ;
		inc_run <= 1'b0 ;
		dec_run <= 1'b0 ;
		eye_run <= 1'b0 ;
		s_delay_val_eye <= 5'h00 ;
		shifter <= 32'h00000001 ;
		delay_change <= 1'b0 ;
		results <= 32'h00000000 ;
		pd_hold <= 8'h00 ;
	end
	else begin
		case (m_delay_mux)
			2'b00   : mdataoutc <= {mdataouta[S-2:0], mdataoutb} ;
			2'b10   : mdataoutc <= {m_datain[0],      mdataouta[S-1:1]} ;
			default : mdataoutc <= mdataouta ;
		endcase 
		case (s_delay_mux)  
			2'b00   : sdataoutc <= {sdataouta[S-2:0], sdataoutb} ;
			2'b10   : sdataoutc <= {s_datain[0],      sdataouta[S-1:1]} ;
			default : sdataoutc <= sdataouta ;
		endcase
		if (m_delay_val_int == bt_val) begin
			meq_max <= 1'b1 ;
		end else begin 
			meq_max <= 1'b0 ;
		end 
		if (m_delay_val_int == 5'h00) begin
			meq_min <= 1'b1 ;
		end else begin 
			meq_min <= 1'b0 ;
		end 
		if (pdcount == 6'h3F && pd_max == 1'b0 && delay_change == 1'b0) begin
			pd_max <= 1'b1 ;
		end else begin 
			pd_max <= 1'b0 ;
		end 
		if (pdcount == 6'h00 && pd_min == 1'b0 && delay_change == 1'b0) begin
			pd_min <= 1'b1 ;
		end else begin 
			pd_min <= 1'b0 ;
		end
		if (delay_change == 1'b1 || inc_run == 1'b1 || dec_run == 1'b1 || eye_run == 1'b1) begin
			pd_hold <= 8'hFF ;
			pdcount <= 6'b100000 ; 
		end													// increment filter count
		else if (pd_hold[7] == 1'b1) begin
			pdcount <= 6'b100000 ; 
			pd_hold <= {pd_hold[6:0], 1'b0} ;
		end
		else if (action[0] == 1'b1 && pdcount != 6'b111111) begin 
			pdcount <= pdcount + 6'h01 ; 
		end													// decrement filter count
		else if (action[1] == 1'b1 && pdcount != 6'b000000) begin 
			pdcount <= pdcount - 6'h01 ; 
		end
		if ((enable_phase_detector == 1'b1 && pd_max == 1'b1 && delay_change == 1'b0) || inc_run == 1'b1) begin					// increment delays, check for master delay = max
			delay_change <= 1'b1 ;
			if (meq_max == 1'b0 && inc_run == 1'b0) begin
				m_delay_val_int <= m_delay_val_int + 5'h01 ;
			end 
			else begin											// master is max
				s_state[3:0] <= s_state[3:0] + 4'h1 ;
				case (s_state[3:0]) 
				4'b0000 : begin inc_run <= 1'b1 ; s_delay_val_int <= bt_val ; end			// indicate state machine running and set slave delay to bit time 
				4'b0110 : begin data_mux <= 1'b1 ; m_delay_val_int <= 5'b00000 ; end			// change data mux over to forward slave data and set master delay to zero
				4'b1001 : begin m_delay_mux <= m_delay_mux - 2'h1 ; end 				// change delay mux over to forward with a 1-bit less advance
				4'b1110 : begin data_mux <= 1'b0 ; end 							// change data mux over to forward master data
				4'b1111 : begin s_delay_mux <= m_delay_mux ; inc_run <= 1'b0 ; end			// change delay mux over to forward with a 1-bit less advance
				default : begin inc_run <= 1'b1 ; end
				endcase 
			end
		end
		else if ((enable_phase_detector == 1'b1 && pd_min == 1'b1 && delay_change == 1'b0) || dec_run == 1'b1) begin				// decrement delays, check for master delay = 0
			delay_change <= 1'b1 ;
			if (meq_min == 1'b0 && dec_run == 1'b0) begin
				m_delay_val_int <= m_delay_val_int - 5'h01 ;
			end
			else begin 											// master is zero
				s_state[3:0] <= s_state[3:0] + 4'h1 ;
				case (s_state[3:0]) 
				4'b0000 : begin dec_run <= 1'b1 ; s_delay_val_int <= 5'b00000 ; end			// indicate state machine running and set slave delay to zero 
				4'b0110 : begin data_mux <= 1'b1 ;  m_delay_val_int <= bt_val ;	end			// change data mux over to forward slave data and set master delay to bit time 
				4'b1001 : begin m_delay_mux <= m_delay_mux + 2'h1 ; end  				// change delay mux over to forward with a 1-bit more advance
				4'b1110 : begin data_mux <= 1'b0 ; end 							// change data mux over to forward master data
				4'b1111 : begin s_delay_mux <= m_delay_mux ; dec_run <= 1'b0 ; end			// change delay mux over to forward with a 1-bit less advance
				default : begin dec_run <= 1'b1 ; end
				endcase 
			end
		end
		else if (enable_monitor == 1'b1 && (eye_run == 1'b1 || delay_change == 1'b1)) begin
			delay_change <= 1'b0 ;
			s_state <= s_state + 5'h01 ;
			case (s_state) 
				5'b00000 : begin eye_run <= 1'b1 ; s_delay_val_int <= s_delay_val_eye ; end						// indicate state machine running and set slave delay to monitor value 
				5'b10110 : begin 
				           if (match == 8'hFF) begin results <= results | shifter ; end			//. set or clear result bit
				           else begin results <= results & ~shifter ; end 							 
				           if (s_delay_val_eye == bt_val) begin 					// only monitor active taps, ie as far as btval
				          	shifter <= 32'h00000001 ; s_delay_val_eye <= 5'h00 ; end
				           else begin shifter <= {shifter[30:0], shifter[31]} ; 
				          	s_delay_val_eye <= s_delay_val_eye + 5'h01 ; end			// 
				          	eye_run <= 1'b0 ; s_state <= 5'h00 ; end
				default :  begin eye_run <= 1'b1 ; end
			endcase 
		end
		else begin
			delay_change <= 1'b0 ;
			if (m_delay_val_int >= {1'b0, bt_val[4:1]} &&  del_mech == 1'b0) begin 						// set slave delay to 1/2 bit period beyond or behind the master delay
				s_delay_val_int <= m_delay_val_int - {1'b0, bt_val[4:1]} ;
				s_ovflw <= 1'b0 ;
			end
			else begin
				s_delay_val_int <= m_delay_val_int + {1'b0, bt_val[4:1]} ;
				s_ovflw <= 1'b1 ;
			end 
		end 
		if (enable_phase_detector == 1'b0 && delay_change == 1'b0) begin
			delay_change <= 1'b1 ;
		end
	end
	if (enable_phase_detector == 1'b1) begin
		if (data_mux == 1'b0) begin
			data_out <= mdataoutc ;
		end else begin 
			data_out <= sdataoutc ;
		end
	end
	else begin
		data_out <= m_datain ;	
	end
end

always @ (posedge clk) begin
	if ((mdataouta == sdataouta)) begin
		match <= {match[6:0], 1'b1} ;
	end else begin
		match <= {match[6:0], 1'b0} ;
	end
end

always @ (m_delay_val_int) begin
	case (m_delay_val_int)
	    	5'b00000	: m_delay_1hot <= 32'h00000001 ;
	    	5'b00001	: m_delay_1hot <= 32'h00000002 ;
	    	5'b00010	: m_delay_1hot <= 32'h00000004 ;
	    	5'b00011	: m_delay_1hot <= 32'h00000008 ;
	    	5'b00100	: m_delay_1hot <= 32'h00000010 ;
	    	5'b00101	: m_delay_1hot <= 32'h00000020 ;
	    	5'b00110	: m_delay_1hot <= 32'h00000040 ;
	    	5'b00111	: m_delay_1hot <= 32'h00000080 ;
	    	5'b01000	: m_delay_1hot <= 32'h00000100 ;
	    	5'b01001	: m_delay_1hot <= 32'h00000200 ;
	    	5'b01010	: m_delay_1hot <= 32'h00000400 ;
	    	5'b01011	: m_delay_1hot <= 32'h00000800 ;
	    	5'b01100	: m_delay_1hot <= 32'h00001000 ;
	    	5'b01101	: m_delay_1hot <= 32'h00002000 ;
	    	5'b01110	: m_delay_1hot <= 32'h00004000 ;
	    	5'b01111	: m_delay_1hot <= 32'h00008000 ;
            	5'b10000	: m_delay_1hot <= 32'h00010000 ;
            	5'b10001	: m_delay_1hot <= 32'h00020000 ;
            	5'b10010	: m_delay_1hot <= 32'h00040000 ;
            	5'b10011	: m_delay_1hot <= 32'h00080000 ;
            	5'b10100	: m_delay_1hot <= 32'h00100000 ;
            	5'b10101	: m_delay_1hot <= 32'h00200000 ;
            	5'b10110	: m_delay_1hot <= 32'h00400000 ;
            	5'b10111	: m_delay_1hot <= 32'h00800000 ;
            	5'b11000	: m_delay_1hot <= 32'h01000000 ;
            	5'b11001	: m_delay_1hot <= 32'h02000000 ;
            	5'b11010	: m_delay_1hot <= 32'h04000000 ;
            	5'b11011	: m_delay_1hot <= 32'h08000000 ;
            	5'b11100	: m_delay_1hot <= 32'h10000000 ;
            	5'b11101	: m_delay_1hot <= 32'h20000000 ;
            	5'b11110	: m_delay_1hot <= 32'h40000000 ;
            	default		: m_delay_1hot <= 32'h80000000 ; 
         endcase
end
   	
endmodule
