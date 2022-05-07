//------------------------------------------------------------------------
//--
//--  Filename      : xlconstant.v
//--
//--  Date          : 06/05/12
//--
//--  Description   : VERILOG description of a constant block.  This
//--                  block does not use a core.
//--
//------------------------------------------------------------------------


//------------------------------------------------------------------------
//--
//--  Module        : xlconstant
//--
//--  Architecture  : behavior
//--
//--  Description   : Top level VERILOG description of constant block
//--
//------------------------------------------------------------------------
`timescale 1ps/1ps
module xlconstant_v1_1_7_xlconstant (dout);
	parameter CONST_VAL = 1;
	parameter CONST_WIDTH = 1;
	output [CONST_WIDTH-1:0] dout;

	assign dout = CONST_VAL;
endmodule


