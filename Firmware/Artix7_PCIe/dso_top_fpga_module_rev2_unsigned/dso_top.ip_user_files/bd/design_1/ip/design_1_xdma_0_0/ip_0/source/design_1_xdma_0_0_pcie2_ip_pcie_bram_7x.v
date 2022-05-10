//-----------------------------------------------------------------------------
//
// (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//-----------------------------------------------------------------------------
// Project    : Series-7 Integrated Block for PCI Express
// File       : design_1_xdma_0_0_pcie2_ip_pcie_bram_7x.v
// Version    : 3.3
//  Description : single bram wrapper for the mb pcie block
//                The bram A port is the write port
//                the      B port is the read port
//
//
//-----------------------------------------------------------------------------//

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_pcie_bram_7x
  #(
    parameter [3:0]  LINK_CAP_MAX_LINK_SPEED = 4'h1,        // PCIe Link Speed : 1 - 2.5 GT/s; 2 - 5.0 GT/s
    parameter [5:0]  LINK_CAP_MAX_LINK_WIDTH = 6'h08,       // PCIe Link Width : 1 / 2 / 4 / 8
    parameter IMPL_TARGET = "HARD",                         // the implementation target : HARD, SOFT
    parameter DOB_REG = 0,                                  // 1 - use the output register;
                                                            // 0 - don't use the output register
    parameter WIDTH = 0                                     // supported WIDTH's : 4, 9, 18, 36 - uses RAMB36
                                                            //                     72 - uses RAMB36SDP
    )
    (
     input               user_clk_i,// user clock
     input               reset_i,   // bram reset

     input               wen_i,     // write enable
     input [12:0]        waddr_i,   // write address
     input [WIDTH - 1:0] wdata_i,   // write data

     input               ren_i,     // read enable
     input               rce_i,     // output register clock enable
     input [12:0]        raddr_i,   // read address

     output [WIDTH - 1:0] rdata_o   // read data
     );

   // map the address bits
   localparam ADDR_MSB = ((WIDTH == 4)  ? 12 :
                          (WIDTH == 9)  ? 11 :
                          (WIDTH == 18) ? 10 :
                          (WIDTH == 36) ?  9 :
                                           8
                          );

   // set the width of the tied off low address bits
   localparam ADDR_LO_BITS = ((WIDTH == 4)  ? 2 :
                              (WIDTH == 9)  ? 3 :
                              (WIDTH == 18) ? 4 :
                              (WIDTH == 36) ? 5 :
                                              0 // for WIDTH 72 use RAMB36SDP
                              );

   // map the data bits
   localparam D_MSB =  ((WIDTH == 4)  ?  3 :
                        (WIDTH == 9)  ?  7 :
                        (WIDTH == 18) ? 15 :
                        (WIDTH == 36) ? 31 :
                                        63
                        );

   // map the data parity bits
   localparam DP_LSB =  D_MSB + 1;

   localparam DP_MSB =  ((WIDTH == 4)  ? 4 :
                         (WIDTH == 9)  ? 8 :
                         (WIDTH == 18) ? 17 :
                         (WIDTH == 36) ? 35 :
                                         71
                        );

   localparam DPW = DP_MSB - DP_LSB + 1;
   localparam WRITE_MODE = ((WIDTH == 72) && (!((LINK_CAP_MAX_LINK_SPEED == 4'h2) && (LINK_CAP_MAX_LINK_WIDTH == 6'h08)))) ? "WRITE_FIRST" :
                           ((LINK_CAP_MAX_LINK_SPEED == 4'h2) && (LINK_CAP_MAX_LINK_WIDTH == 6'h08)) ? "WRITE_FIRST" : "NO_CHANGE";

   localparam DEVICE = (IMPL_TARGET == "HARD") ? "7SERIES" : "VIRTEX6";
   localparam BRAM_SIZE = "36Kb";

   localparam WE_WIDTH =(DEVICE == "VIRTEX5" || DEVICE == "VIRTEX6" || DEVICE == "7SERIES") ?
                            ((WIDTH <= 9) ? 1 :
                             (WIDTH > 9 && WIDTH <= 18) ? 2 :
                             (WIDTH > 18 && WIDTH <= 36) ? 4 :
                             (WIDTH > 36 && WIDTH <= 72) ? 8 :
                             (BRAM_SIZE == "18Kb") ? 4 : 8 ) : 8;

   //synthesis translate_off
   initial begin
      //$display("[%t] %m DOB_REG %0d WIDTH %0d ADDR_MSB %0d ADDR_LO_BITS %0d DP_MSB %0d DP_LSB %0d D_MSB %0d",
      //          $time, DOB_REG,   WIDTH,    ADDR_MSB,    ADDR_LO_BITS,    DP_MSB,    DP_LSB,    D_MSB);

      case (WIDTH)
        4,9,18,36,72:;
        default:
          begin
             $display("[%t] %m Error WIDTH %0d not supported", $time, WIDTH);
             $finish;
          end
      endcase // case (WIDTH)
   end
   //synthesis translate_on

   generate
   if ((LINK_CAP_MAX_LINK_WIDTH == 6'h08 && LINK_CAP_MAX_LINK_SPEED == 4'h2) || (WIDTH == 72)) begin : use_sdp
        BRAM_SDP_MACRO #(
               .DEVICE        (DEVICE),
               .BRAM_SIZE     (BRAM_SIZE),
               .DO_REG        (DOB_REG),
               .READ_WIDTH    (WIDTH),
               .WRITE_WIDTH   (WIDTH),
               .WRITE_MODE    (WRITE_MODE)
               )
        ramb36sdp(
               .DO             (rdata_o[WIDTH-1:0]),
               .DI             (wdata_i[WIDTH-1:0]),
               .RDADDR         (raddr_i[ADDR_MSB:0]),
               .RDCLK          (user_clk_i),
               .RDEN           (ren_i),
               .REGCE          (rce_i),
               .RST            (reset_i),
               .WE             ({WE_WIDTH{1'b1}}),
               .WRADDR         (waddr_i[ADDR_MSB:0]),
               .WRCLK          (user_clk_i),
               .WREN           (wen_i)
               );

    end  // block: use_sdp
    else if (WIDTH <= 36) begin : use_tdp
    // use RAMB36's if the width is 4, 9, 18, or 36
        BRAM_TDP_MACRO #(
               .DEVICE        (DEVICE),
               .BRAM_SIZE     (BRAM_SIZE),
               .DOA_REG       (0),
               .DOB_REG       (DOB_REG),
               .READ_WIDTH_A  (WIDTH),
               .READ_WIDTH_B  (WIDTH),
               .WRITE_WIDTH_A (WIDTH),
               .WRITE_WIDTH_B (WIDTH),
               .WRITE_MODE_A  (WRITE_MODE)
               )
        ramb36(
               .DOA            (),
               .DOB            (rdata_o[WIDTH-1:0]),
               .ADDRA          (waddr_i[ADDR_MSB:0]),
               .ADDRB          (raddr_i[ADDR_MSB:0]),
               .CLKA           (user_clk_i),
               .CLKB           (user_clk_i),
               .DIA            (wdata_i[WIDTH-1:0]),
               .DIB            ({WIDTH{1'b0}}),
               .ENA            (wen_i),
               .ENB            (ren_i),
               .REGCEA         (1'b0),
               .REGCEB         (rce_i),
               .RSTA           (reset_i),
               .RSTB           (reset_i),
               .WEA            ({WE_WIDTH{1'b1}}),
               .WEB            ({WE_WIDTH{1'b0}})
               );
   end // block: use_tdp
   endgenerate

endmodule // pcie_bram_7x

