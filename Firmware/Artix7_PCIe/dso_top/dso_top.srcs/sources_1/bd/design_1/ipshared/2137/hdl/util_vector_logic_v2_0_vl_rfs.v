`timescale 1ns / 1ps
/*
-------------------------------------------------------------------------------
-- $Id: util_vector_logic.v 2.0 2017/01/01 
-------------------------------------------------------------------------------
--
--  ***************************************************************************
--  **  Copyright(C) 2017 by Xilinx, Inc. All rights reserved.               **
--  **                                                                       **
--  **  This text contains proprietary, confidential                         **
--  **  information of Xilinx, Inc. , is distributed by                      **
--  **  under license from Xilinx, Inc., and may be used,                    **
--  **  copied and/or disclosed only pursuant to the terms                   **
--  **  of a valid license agreement with Xilinx, Inc.                       **
--  **                                                                       **
--  **  Unmodified source code is guaranteed to place and route,             **
--  **  function and run at speed according to the datasheet                 **
--  **  specification. Source code is provided "as-is", with no              **
--  **  obligation on the part of Xilinx to provide support.                 **
--  **                                                                       **
--  **  Xilinx Hotline support of source code IP shall only include          **
--  **  standard level Xilinx Hotline support, and will only address         **
--  **  issues and questions related to the standard released Netlist        **
--  **  version of the core (and thus indirectly, the original core source). **
--  **                                                                       **
--  **  The Xilinx Support Hotline does not have access to source            **
--  **  code and therefore cannot answer specific questions related          **
--  **  to source HDL. The Xilinx Support Hotline will only be able          **
--  **  to confirm the problem in the Netlist version of the core.           **
--  **                                                                       **
--  **  This copyright and support notice must be retained as part           **
--  **  of this text at all times.                                           **
--  ***************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        util_vector_logic.v
--
-- Description: 
--                  
-- Verilog-Standard:
-------------------------------------------------------------------------------
*/


module util_vector_logic_v2_0_1_util_vector_logic ( Op1, Op2, Res);
 
parameter         C_OPERATION = "and";
parameter integer C_SIZE = 8;

input  [C_SIZE - 1:0] Op1; 
input  [C_SIZE - 1:0] Op2; 
output [C_SIZE - 1:0] Res; 

//wire   [C_SIZE - 1:0] Res; 
//parameter C_Oper = C_OPERATION; 

generate if (C_OPERATION == "and") begin: GEN_AND_OP
    assign Res = Op1 & Op2; 
end
endgenerate

generate if (C_OPERATION == "or")  begin: GEN_OR_OP
   assign Res = Op1 | Op2; 
end
endgenerate

generate if (C_OPERATION == "xor") begin: GEN_XOR_OP
    assign Res = Op1 ^ Op2; 
end
endgenerate

generate if (C_OPERATION == "not") begin: GEN_NOT_OP
    assign Res = ~Op1; 
end
endgenerate

endmodule // module util_vector_logic



