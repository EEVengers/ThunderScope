////////////////////////////////////////////////////////////////////////////////
//
// Filename:	afifo.v
// {{{
// Project:	WB2AXIPSP: bus bridges and other odds and ends
//
// Purpose:	A basic asynchronous FIFO.
//
// Creator:	Dan Gisselquist, Ph.D.
//		Gisselquist Technology, LLC
//
////////////////////////////////////////////////////////////////////////////////
// }}}
// Copyright (C) 2019-2021, Gisselquist Technology, LLC
// {{{
// This file is part of the WB2AXIP project.
//
// The WB2AXIP project contains free software and gateware, licensed under the
// Apache License, Version 2.0 (the "License").  You may not use this project,
// or this file, except in compliance with the License.  You may obtain a copy
// of the License at
//
//	http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
// License for the specific language governing permissions and limitations
// under the License.
//
////////////////////////////////////////////////////////////////////////////////
//
//
// }}}
module afifo #(
		// {{{
		// LGFIFO is the log based-two of the number of entries
		//	in the FIFO, log_2(fifo size)
		parameter	LGFIFO = 3,
		//
		// WIDTH is the number of data bits in each entry
		parameter	WIDTH  = 16,
		//
		// NFF is the number of flip flops used to cross clock domains.
		// 2 is a minimum.  Some applications appreciate the better
		parameter	NFF    = 2,
		//
		// This core can either write on the positive edge of the clock
		// or the negative edge.  Set WRITE_ON_POSEDGE (the default)
		// to write on the positive edge of the clock.
		parameter [0:0]	WRITE_ON_POSEDGE = 1'b1,
		//
		// Many  logic elements can read from memory asynchronously.
		// This burdens any following logic.  By setting
		// OPT_REGISTER_READS, we force all reads to be synchronous and
		// not burdened by any logic.  You can spare a clock of latency
		// by clearing this register.
		parameter [0:0]	OPT_REGISTER_READS = 1'b1
`ifdef	FORMAL
		// F_OPT_DATA_STB
		// {{{
		// In the formal proof, F_OPT_DATA_STB includes a series of
		// assumptions associated with a data strobe I/O pin--things
		// like a discontinuous clock--just to make sure the core still
		// works in those circumstances
		, parameter [0:0]	F_OPT_DATA_STB = 1'b1
		// }}}
`endif
		// }}}
	) (
		// {{{
		//
		// The (incoming) write data interface
		input	wire			i_wclk, i_wr_reset_n, i_wr,
		input	wire	[WIDTH-1:0]	i_wr_data,
		output	reg			o_wr_full,
		//
		// The (incoming) write data interface
		input	wire			i_rclk, i_rd_reset_n, i_rd,
		output	reg	[WIDTH-1:0]	o_rd_data,
		output	reg			o_rd_empty
`ifdef	FORMAL
		, output reg	[LGFIFO:0]	f_fill
`endif
		// }}}
	);

	// Register/net declarations
	// {{{
	// MSB = most significant bit of the FIFO address vector.  It's
	// just short-hand for LGFIFO, and won't work any other way.
	localparam	MSB = LGFIFO;
	//
	reg	[WIDTH-1:0]		mem	[(1<<LGFIFO)-1:0];
	reg	[LGFIFO:0]		rd_addr, wr_addr,
					rd_wgray, wr_rgray;
	wire	[LGFIFO:0]		next_rd_addr, next_wr_addr;
	reg	[LGFIFO:0]		rgray, wgray;
	(* ASYNC_REG = "TRUE" *) reg	[(LGFIFO+1)*(NFF-1)-1:0]
					rgray_cross, wgray_cross;
	wire				wclk;
	reg	[WIDTH-1:0]		lcl_rd_data;
	reg				lcl_read, lcl_rd_empty;
	// }}}

	// wclk - Write clock generation
	// {{{
	generate if (WRITE_ON_POSEDGE)
	begin

		assign	wclk = i_wclk;

	end else begin

		assign	wclk = !i_wclk;

	end endgenerate
	// }}}

	////////////////////////////////////////////////////////////////////////
	//
	// Write to and read from memory
	// {{{
	////////////////////////////////////////////////////////////////////////
	//
	//

	// wr_addr, wgray
	// {{{
	assign	next_wr_addr = wr_addr + 1;
	always @(posedge wclk or negedge i_wr_reset_n)
	if (!i_wr_reset_n)
	begin
		wr_addr <= 0;
		wgray   <= 0;
	end else if (i_wr && !o_wr_full)
	begin
		wr_addr <= next_wr_addr;
		wgray   <= next_wr_addr ^ (next_wr_addr >> 1);
	end
	// }}}

	// Write to memory
	// {{{
	always @(posedge wclk)
	if (i_wr && !o_wr_full)
		mem[wr_addr[LGFIFO-1:0]] <= i_wr_data;
	// }}}

	// rd_addr, rgray
	// {{{
	assign	next_rd_addr = rd_addr + 1;
	always @(posedge i_rclk or negedge i_rd_reset_n)
	if (!i_rd_reset_n)
	begin
		rd_addr <= 0;
		rgray   <= 0;
	end else if (lcl_read && !lcl_rd_empty)
	begin
		rd_addr <= next_rd_addr;
		rgray   <= next_rd_addr ^ (next_rd_addr >> 1);
	end
	// }}}

	// Read from memory
	// {{{
	always @(*)
		lcl_rd_data = mem[rd_addr[LGFIFO-1:0]];
	// }}}
	// }}}
	////////////////////////////////////////////////////////////////////////
	//
	// Cross clock domains
	// {{{
	////////////////////////////////////////////////////////////////////////
	//
	//

	// read pointer -> wr_rgray
	// {{{
	always @(posedge wclk or negedge i_wr_reset_n)
	if (!i_wr_reset_n)
		{ wr_rgray, rgray_cross } <= 0;
	else
		{ wr_rgray, rgray_cross } <= { rgray_cross, rgray };
	// }}}

	// write pointer -> rd_wgray
	// {{{
	always @(posedge i_rclk or negedge i_rd_reset_n)
	if (!i_rd_reset_n)
		{ rd_wgray, wgray_cross } <= 0;
	else
		{ rd_wgray, wgray_cross } <= { wgray_cross, wgray };
	// }}}

	// }}}
	////////////////////////////////////////////////////////////////////////
	//
	// Flag generation
	// {{{
	////////////////////////////////////////////////////////////////////////
	//
	//

	always @(*)
		o_wr_full = (wr_rgray == { ~wgray[MSB:MSB-1], wgray[MSB-2:0] });

	always @(*)
		lcl_rd_empty = (rd_wgray == rgray);

	// o_rd_empty, o_rd_data
	// {{{
	generate if (OPT_REGISTER_READS)
	begin
		// {{{
		always @(*)
			lcl_read = (o_rd_empty || i_rd);

		always @(posedge i_rclk or negedge i_rd_reset_n)
		if (!i_rd_reset_n)
			o_rd_empty <= 1'b1;
		else if (lcl_read)
			o_rd_empty <= lcl_rd_empty;
			
		always @(posedge i_rclk)
		if (lcl_read)
			o_rd_data <= lcl_rd_data;
		// }}}
	end else begin
		// {{{
		always @(*)
			lcl_read = i_rd;

		always @(*)
			o_rd_empty = lcl_rd_empty;

		always @(*)
			o_rd_data = lcl_rd_data;
		// }}}
	end endgenerate
	// }}}
	// }}}
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
//
// Formal properties
// {{{
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
`ifdef	FORMAL
	// Start out with some register/net/macro declarations, f_past_valid,etc
	// {{{
`ifdef	AFIFO
`define	ASSERT	assert
`define	ASSUME	assume
`else
`define	ASSERT	assert
`define	ASSUME	assert
`endif

	(* gclk *)	reg	gbl_clk;
	reg			f_past_valid_gbl, f_past_valid_rd,
				f_rd_in_reset, f_wr_in_reset;
	reg	[WIDTH-1:0]	past_rd_data, past_wr_data;
	reg			past_wr_reset_n, past_rd_reset_n,
				past_rd_empty, past_wclk, past_rclk, past_rd;
	reg	[(LGFIFO+1)*(NFF-1)-1:0]	f_wcross, f_rcross;
	reg	[LGFIFO:0]	f_rd_waddr, f_wr_raddr;
	reg	[LGFIFO:0]	f_rdcross_fill	[NFF-1:0];
	reg	[LGFIFO:0]	f_wrcross_fill	[NFF-1:0];


	initial	f_past_valid_gbl = 1'b0;
	always @(posedge gbl_clk)
		f_past_valid_gbl <= 1'b1;

	initial	f_past_valid_rd = 1'b0;
	always @(posedge i_rclk)
		f_past_valid_rd <= 1'b1;
	// }}}
	////////////////////////////////////////////////////////////////////////
	//
	// Reset checks
	// {{{
	////////////////////////////////////////////////////////////////////////
	//
	//
	initial	f_wr_in_reset = 1'b1;
	always @(posedge wclk or negedge i_wr_reset_n)
	if (!i_wr_reset_n)
		f_wr_in_reset <= 1'b1;
	else
		f_wr_in_reset <= 1'b0;

	initial	f_rd_in_reset = 1'b1;
	always @(posedge i_rclk or negedge i_rd_reset_n)
	if (!i_rd_reset_n)
		f_rd_in_reset <= 1'b1;
	else
		f_rd_in_reset <= 1'b0;

	//
	// Resets are ...
	//	1. Asserted always initially, and ...
	always @(*)
	if (!f_past_valid_gbl)
	begin
		`ASSUME(!i_wr_reset_n);
		`ASSUME(!i_rd_reset_n);
	end

	//	2. They only ever become active together
	always @(*)
	if (past_wr_reset_n && !i_wr_reset_n)
		`ASSUME(!i_rd_reset_n);

	always @(*)
	if (past_rd_reset_n && !i_rd_reset_n)
		`ASSUME(!i_wr_reset_n);

	// }}}
	////////////////////////////////////////////////////////////////////////
	//
	// Synchronous signal assumptions
	// {{{
	////////////////////////////////////////////////////////////////////////
	//
	//

	always @(posedge gbl_clk)
	begin
		past_wr_reset_n <= i_wr_reset_n;
		past_rd_reset_n <= i_rd_reset_n;

		past_wclk  <= wclk;
		past_rclk  <= i_rclk;

		past_rd      <= i_rd;
		past_rd_data <= lcl_rd_data;
		past_wr_data <= i_wr_data;

		past_rd_empty<= lcl_rd_empty;
	end

	//
	// Read side may be assumed to be synchronous
	always @(*)
	if (f_past_valid_gbl && i_rd_reset_n && (past_rclk || !i_rclk))
		// i.e. if (!$rose(i_rclk))
		`ASSUME(i_rd == past_rd);

	always @(*)
	if (f_past_valid_rd && !f_rd_in_reset && !lcl_rd_empty
		&&(past_rclk || !i_rclk))
	begin
		`ASSERT(lcl_rd_data == past_rd_data);
		`ASSERT(lcl_rd_empty == past_rd_empty);
	end


	generate if (F_OPT_DATA_STB)
	begin

		always @(posedge gbl_clk)
			`ASSUME(!o_wr_full);

		always @(posedge gbl_clk)
		if (!i_wr_reset_n)
			`ASSUME(!i_wclk);

		always @(posedge gbl_clk)
			`ASSUME(i_wr == i_wr_reset_n);

		always @(posedge gbl_clk)
		if ($changed(i_wr_reset_n))
			`ASSUME($stable(wclk));

	end endgenerate
	// }}}
	////////////////////////////////////////////////////////////////////////
	//
	// Fill checks
	// {{{
	////////////////////////////////////////////////////////////////////////
	//
	//
	always @(*)
		f_fill = wr_addr - rd_addr;

	always @(*)
	if (!f_wr_in_reset)
		`ASSERT(f_fill <= { 1'b1, {(MSB){1'b0}} });

	always @(*)
	if (wr_addr == rd_addr)
		`ASSERT(lcl_rd_empty);

	always @(*)
	if ((!f_wr_in_reset && !f_rd_in_reset)
			&& wr_addr == { ~rd_addr[MSB], rd_addr[MSB-1:0] })
		`ASSERT(o_wr_full);

	// }}}
	////////////////////////////////////////////////////////////////////////
	//
	// Induction checks
	// {{{
	////////////////////////////////////////////////////////////////////////
	//
	//

	// f_wr_in_reset -- write logic is in its reset state
	// {{{
	always @(*)
	if (f_wr_in_reset)
	begin
		`ASSERT(wr_addr == 0);
		`ASSERT(wgray_cross == 0);

		`ASSERT(rd_addr == 0);
		`ASSERT(rgray_cross == 0);
		`ASSERT(rd_wgray == 0);

		`ASSERT(lcl_rd_empty);
		`ASSERT(!o_wr_full);
	end
	// }}}

	// f_rd_in_reset -- read logic is in its reset state
	// {{{
	always @(*)
	if (f_rd_in_reset)
	begin
		`ASSERT(rd_addr == 0);
		`ASSERT(rgray_cross == 0);
		`ASSERT(rd_wgray == 0);

		`ASSERT(lcl_rd_empty);
	end
	// }}}

	// f_wr_raddr -- a read address to match the gray values
	// {{{
	always @(posedge wclk or negedge i_wr_reset_n)
	if (!i_wr_reset_n)
		{ f_wr_raddr, f_rcross } <= 0;
	else
		{ f_wr_raddr, f_rcross } <= { f_rcross, rd_addr };
	// }}}

	// f_rd_waddr -- a write address to match the gray values
	// {{{
	always @(posedge i_rclk or negedge i_rd_reset_n)
	if (!i_rd_reset_n)
		{ f_rd_waddr, f_wcross } <= 0;
	else
		{ f_rd_waddr, f_wcross } <= { f_wcross, wr_addr };
	// }}}

	integer	k;

	// wgray check
	// {{{
	always @(*)
		`ASSERT((wr_addr ^ (wr_addr >> 1)) == wgray);
	// }}}

	// wgray_cross check
	// {{{
	always @(*)
	for(k=0; k<NFF-1; k=k+1)
		`ASSERT((f_wcross[k*(LGFIFO+1) +: LGFIFO+1]
			^ (f_wcross[k*(LGFIFO+1)+: LGFIFO+1]>>1))
			== wgray_cross[k*(LGFIFO+1) +: LGFIFO+1]);
	// }}}

	// rgray check
	// {{{
	always @(*)
		`ASSERT((rd_addr ^ (rd_addr >> 1)) == rgray);
	// }}}

	// rgray_cross check
	// {{{
	always @(*)
	for(k=0; k<NFF-1; k=k+1)
		`ASSERT((f_rcross[k*(LGFIFO+1) +: LGFIFO+1]
			^ (f_rcross[k*(LGFIFO+1) +: LGFIFO+1]>>1))
			== rgray_cross[k*(LGFIFO+1) +: LGFIFO+1]);
	// }}}

	// wr_rgray
	// {{{
	always @(*)
		`ASSERT((f_wr_raddr ^ (f_wr_raddr >> 1)) == wr_rgray);
	// }}}

	// rd_wgray
	// {{{
	always @(*)
		`ASSERT((f_rd_waddr ^ (f_rd_waddr >> 1)) == rd_wgray);
	// }}}

	// f_rdcross_fill
	// {{{
	always @(*)
	for(k=0; k<NFF-1; k=k+1)
		f_rdcross_fill[k] = f_wcross[k*(LGFIFO+1) +: LGFIFO+1]
				- rd_addr;

	always @(*)
		f_rdcross_fill[NFF-1] = f_rd_waddr - rd_addr;

	always @(*)
	for(k=0; k<NFF; k=k+1)
		`ASSERT(f_rdcross_fill[k] <= { 1'b1, {(LGFIFO){1'b0}} });

	always @(*)
	for(k=1; k<NFF; k=k+1)
		`ASSERT(f_rdcross_fill[k] <= f_rdcross_fill[k-1]);
	always @(*)
		`ASSERT(f_rdcross_fill[0] <= f_fill);
	// }}}

	// f_wrcross_fill
	// {{{
	always @(*)
	for(k=0; k<NFF-1; k=k+1)
		f_wrcross_fill[k] = wr_addr -
			f_rcross[k*(LGFIFO+1) +: LGFIFO+1];

	always @(*)
		f_wrcross_fill[NFF-1] = wr_addr - f_wr_raddr;

	always @(*)
	for(k=0; k<NFF; k=k+1)
		`ASSERT(f_wrcross_fill[k] <= { 1'b1, {(LGFIFO){1'b0}} });

	always @(*)
	for(k=1; k<NFF; k=k+1)
		`ASSERT(f_wrcross_fill[k] >= f_wrcross_fill[k-1]);
	always @(*)
		`ASSERT(f_wrcross_fill[0] >= f_fill);
	// }}}

	// }}}
	////////////////////////////////////////////////////////////////////////
	//
	// Clock generation
	// {{{
	////////////////////////////////////////////////////////////////////////
	//
	//

	// Here's the challenge: if we use $past with any of our clocks, such
	// as to determine stability or any such, the proof takes forever, and
	// we need to guarantee a minimum number of transitions within the
	// depth of the proof.  If, on the other hand, we build our own $past
	// primitives--we can then finish much faster and be successful on
	// any depth of proof.

	// pre_xclk is what the clock will become on the next global clock edge.
	// By using it here, we can check things @(*) instead of
	// @(posedge gbl_clk).  Further, we can check $rose(pre_xclk) (or $fell)
	// and essentially check things @(*) but while using @(global_clk).
	// In other words, we can transition on @(posedge gbl_clk), but stay
	// in sync with the data--rather than being behind by a clock.
	// now_xclk is what the clock is currently.
	//
	(* anyseq *)	reg	pre_wclk, pre_rclk;
			reg	now_wclk, now_rclk;
	always @(posedge gbl_clk)
	begin
		now_wclk <= pre_wclk;
		now_rclk <= pre_rclk;
	end

	always @(*)
	begin
		assume(i_wclk == now_wclk);
		assume(i_rclk == now_rclk);
	end

	always @(posedge gbl_clk)
		assume(i_rclk == $past(pre_rclk));

	// Assume both clocks start idle
	// {{{
	always @(*)
	if (!f_past_valid_gbl)
	begin
		assume(!pre_wclk && !wclk);
		assume(!pre_rclk && !i_rclk);
	end
	// }}}

	// }}}
	////////////////////////////////////////////////////////////////////////
	//
	// Formal contract check --- the twin write test
	// {{{
	////////////////////////////////////////////////////////////////////////
	//
	//

	// Tracking register declarations
	// {{{
			reg	[WIDTH-1:0]	f_first, f_next;
	(* anyconst *)	reg	[LGFIFO:0]	f_addr;
			reg	[LGFIFO:0]	f_next_addr;
	reg			f_first_in_fifo, f_next_in_fifo;
	reg	[LGFIFO:0]	f_to_first, f_to_next;
	reg	[1:0]	f_state;

	always @(*)
		f_next_addr = f_addr + 1;
	// }}}

	// distance_to*, *_in_fifo
	// {{{
	always @(*)
	begin
		f_to_first = f_addr - rd_addr;

		f_first_in_fifo = 1'b1;
		if ((f_to_first >= f_fill)||(f_fill == 0))
			f_first_in_fifo = 1'b0;

		if (mem[f_addr] != f_first)
			f_first_in_fifo = 1'b0;

		//
		// Check the second item
		//

		f_to_next  = f_next_addr - rd_addr;
		f_next_in_fifo = 1'b1;
		if ((f_to_next >= f_fill)||(f_fill == 0))
			f_next_in_fifo = 1'b0;

		if (mem[f_next_addr] != f_next)
			f_next_in_fifo = 1'b0;
	end
	// }}}

	// f_state -- generate our state variable
	// {{{
	initial	f_state = 0;
	always @(posedge gbl_clk)
	if (!i_wr_reset_n)
		f_state <= 0;
	else case(f_state)
	2'b00: if (($rose(pre_wclk))&& i_wr && !o_wr_full &&(wr_addr == f_addr))
		begin
			f_state <= 2'b01;
			f_first <= i_wr_data;
		end
	2'b01: if ($rose(pre_rclk)&& lcl_read && rd_addr == f_addr)
			f_state <= 2'b00;
		else if ($rose(pre_wclk) && i_wr && !o_wr_full )
		begin
			f_state <= 2'b10;
			f_next  <= i_wr_data;
		end
	2'b10: if ($rose(pre_rclk) && lcl_read && !lcl_rd_empty && rd_addr == f_addr)
		f_state <= 2'b11;
	2'b11: if ($rose(pre_rclk) && lcl_read && !lcl_rd_empty && rd_addr == f_next_addr)
		f_state <= 2'b00;
	endcase
	// }}}
		
	// f_state invariants
	// {{{
	always @(*)
	if (i_wr_reset_n) case(f_state)
	2'b00: begin end
	2'b01: begin
		`ASSERT(f_first_in_fifo);
		`ASSERT(wr_addr == f_next_addr);
		`ASSERT(f_fill >= 1);
		end
	2'b10: begin
		`ASSERT(f_first_in_fifo);
		`ASSERT(f_next_in_fifo);
		if (!lcl_rd_empty && (rd_addr == f_addr))
			`ASSERT(lcl_rd_data == f_first);
		`ASSERT(f_fill >= 2);
		end
	2'b11: begin
		`ASSERT(rd_addr == f_next_addr);
		`ASSERT(f_next_in_fifo);
		`ASSERT(f_fill >= 1);
		if (!lcl_rd_empty)
			`ASSERT(lcl_rd_data == f_next);
		end
	endcase
	// }}}

	generate if (OPT_REGISTER_READS)
	begin
		reg	past_o_rd_empty;

		always @(posedge gbl_clk)
			past_o_rd_empty <= o_rd_empty;

		always @(posedge gbl_clk)
		if (f_past_valid_gbl && i_rd_reset_n)
		begin
			if ($past(!o_rd_empty && !i_rd && i_rd_reset_n))
				`ASSERT($stable(o_rd_data));
		end

		always @(posedge gbl_clk)
		if (!f_rd_in_reset && i_rd_reset_n && i_rclk && !past_rclk)
		begin
			if (past_o_rd_empty)
				`ASSERT(o_rd_data == past_rd_data);
			if (past_rd)
				`ASSERT(o_rd_data == past_rd_data);
		end

	end endgenerate
	// }}}
	////////////////////////////////////////////////////////////////////////
	//
	// Cover checks
	// {{{
	////////////////////////////////////////////////////////////////////////
	//
	//

	// Prove that we can read and write the FIFO
	// {{{
	always @(*)
	if (i_wr_reset_n && i_rd_reset_n)
	begin
		cover(o_rd_empty);
		cover(!o_rd_empty);
		cover(f_state == 2'b01);
		cover(f_state == 2'b10);
		cover(f_state == 2'b11);
		cover(&f_fill[MSB-1:0]);

		cover(i_rd);
		cover(i_rd && !o_rd_empty);
	end
	// }}}

`ifdef	AFIFO
	generate if (!F_OPT_DATA_STB)
	begin : COVER_FULL
		// {{{
		reg	cvr_full;

		initial	cvr_full = 1'b0;
		always @(posedge gbl_clk)
		if (!i_wr_reset_n)
			cvr_full <= 1'b0;
		else if (o_wr_full)
			cvr_full <= 1'b1;


		always @(*)
		if (f_past_valid_gbl && i_wr_reset_n)
		begin
			cover(o_wr_full);
			cover(o_rd_empty && cvr_full);
			cover(o_rd_empty && f_fill == 0 && cvr_full);
		end
		// }}}
	end else begin : COVER_NEARLY_FULL
		// {{{
		reg	cvr_nearly_full;

		initial	cvr_nearly_full = 1'b0;
		always @(posedge gbl_clk)
		if (!i_wr_reset_n)
			cvr_nearly_full <= 1'b0;
		else if (f_fill == { 1'b0, {(LGFIFO){1'b1} }})
			cvr_nearly_full <= 1'b1;


		always @(*)
		if (f_past_valid_gbl && i_wr_reset_n)
		begin
			cover(f_fill == { 1'b0, {(LGFIFO){1'b1} }});
			cover(cvr_nearly_full && i_wr_reset_n);
			cover(o_rd_empty && cvr_nearly_full);
			cover(o_rd_empty && f_fill == 0 && cvr_nearly_full);
		end
		// }}}
	end endgenerate
`endif
	// }}}
`endif
// }}}
endmodule
