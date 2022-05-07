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
// File       : design_1_xdma_0_0_pcie2_ip_gt_rx_valid_filter_7x.v
// Version    : 3.3
//-- Description: GTX module for 7-series Integrated PCIe Block
//--
//--
//--
//--------------------------------------------------------------------------------

`timescale 1ns / 1ns

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_gt_rx_valid_filter_7x #(

  parameter           CLK_COR_MIN_LAT    = 28,
  parameter           TCQ                = 1

)
(
  output  [1:0]       USER_RXCHARISK,
  output  [15:0]      USER_RXDATA,
  output              USER_RXVALID,
  output              USER_RXELECIDLE,
  output  [ 2:0]      USER_RX_STATUS,
  output              USER_RX_PHY_STATUS,
  input  [1:0]        GT_RXCHARISK,
  input  [15:0]       GT_RXDATA,
  input               GT_RXVALID,
  input               GT_RXELECIDLE,
  input  [ 2:0]       GT_RX_STATUS,
  input               GT_RX_PHY_STATUS,

  input               PLM_IN_L0,
  input               PLM_IN_RS,

  input               USER_CLK,
  input               RESET

);



  localparam EIOS_DET_IDL      = 5'b00001;
  localparam EIOS_DET_NO_STR0  = 5'b00010;
  localparam EIOS_DET_STR0     = 5'b00100;
  localparam EIOS_DET_STR1     = 5'b01000;
  localparam EIOS_DET_DONE     = 5'b10000;

  localparam EIOS_COM          = 8'hBC;
  localparam EIOS_IDL          = 8'h7C;
  localparam FTSOS_COM         = 8'hBC;
  localparam FTSOS_FTS         = 8'h3C;

  reg    [4:0]        reg_state_eios_det;
  wire   [4:0]        state_eios_det;

  reg                 reg_eios_detected;
  wire                eios_detected;

  reg                 reg_symbol_after_eios;
  wire                symbol_after_eios;

  localparam USER_RXVLD_IDL     = 4'b0001;
  localparam USER_RXVLD_EI      = 4'b0010;
  localparam USER_RXVLD_EI_DB0  = 4'b0100;
  localparam USER_RXVLD_EI_DB1  = 4'b1000;


  reg    [1:0]        gt_rxcharisk_q;
  reg    [15:0]       gt_rxdata_q;
  reg                 gt_rxvalid_q;
  reg                 gt_rxelecidle_q;

  reg    [ 2:0]       gt_rx_status_q;
  reg                 gt_rx_phy_status_q;
  reg                 gt_rx_is_skp0_q;
  reg                 gt_rx_is_skp1_q;

  // EIOS detector

  always @(posedge USER_CLK) begin

    if (RESET) begin

      reg_eios_detected <= #TCQ 1'b0;
      reg_state_eios_det <= #TCQ EIOS_DET_IDL;
      reg_symbol_after_eios <= #TCQ 1'b0;
      gt_rxcharisk_q <= #TCQ 2'b00;
      gt_rxdata_q <= #TCQ 16'h0;
      gt_rxvalid_q <= #TCQ 1'b0;
      gt_rxelecidle_q <= #TCQ 1'b0;
      gt_rx_status_q <= #TCQ 3'b000;
      gt_rx_phy_status_q <= #TCQ 1'b0;
      gt_rx_is_skp0_q <= #TCQ 1'b0;
      gt_rx_is_skp1_q <= #TCQ 1'b0;

    end else begin
      reg_eios_detected <= #TCQ 1'b0;
      reg_symbol_after_eios <= #TCQ 1'b0;
        gt_rxcharisk_q <= #TCQ GT_RXCHARISK;
        gt_rxelecidle_q <= #TCQ GT_RXELECIDLE;
      gt_rxdata_q <= #TCQ GT_RXDATA;
      gt_rx_phy_status_q <= #TCQ GT_RX_PHY_STATUS;
      
     //De-assert rx_valid signal when EIOS is detected on RXDATA
      if(((reg_state_eios_det == 5'b10000)) && (PLM_IN_L0)
       ) begin
       
        gt_rxvalid_q <= #TCQ 1'b0; 
      end
      else if (GT_RXELECIDLE && !gt_rxvalid_q) begin
         gt_rxvalid_q <= #TCQ 1'b0; 
      end   
      else begin
       gt_rxvalid_q <= GT_RXVALID;
     end  

     if (gt_rxvalid_q) begin
      gt_rx_status_q <= #TCQ GT_RX_STATUS;
       
     end
     else if (!gt_rxvalid_q && PLM_IN_L0) begin
      gt_rx_status_q <= #TCQ 3'b0;
     end
     else begin
      gt_rx_status_q <= #TCQ GT_RX_STATUS;
     end  

      
      
      if (GT_RXCHARISK[0] && GT_RXDATA[7:0] == FTSOS_FTS)
        gt_rx_is_skp0_q <= #TCQ 1'b1;
      else
        gt_rx_is_skp0_q <= #TCQ 1'b0;

      if (GT_RXCHARISK[1] && GT_RXDATA[15:8] == FTSOS_FTS)
        gt_rx_is_skp1_q <= #TCQ 1'b1;
      else
        gt_rx_is_skp1_q <= #TCQ 1'b0;

      case ( state_eios_det )

        EIOS_DET_IDL : begin

          if ((gt_rxcharisk_q[0]) && (gt_rxdata_q[7:0] == EIOS_COM) &&
              (gt_rxcharisk_q[1]) && (gt_rxdata_q[15:8] == EIOS_IDL)) begin

            reg_state_eios_det <= #TCQ EIOS_DET_NO_STR0;
            reg_eios_detected <= #TCQ 1'b1;
          //  gt_rxvalid_q <= #TCQ 1'b0;

          end else if ((gt_rxcharisk_q[1]) && (gt_rxdata_q[15:8] == EIOS_COM))
            reg_state_eios_det <= #TCQ EIOS_DET_STR0;
          else
            reg_state_eios_det <= #TCQ EIOS_DET_IDL;

        end

        EIOS_DET_NO_STR0 : begin

          if ((gt_rxcharisk_q[0] && (gt_rxdata_q[7:0] == EIOS_IDL)) &&
              (gt_rxcharisk_q[1] && (gt_rxdata_q[15:8] == EIOS_IDL)))
              begin
            reg_state_eios_det <= #TCQ EIOS_DET_DONE;
            gt_rxvalid_q <= #TCQ 1'b0;
            end
         else if (gt_rxcharisk_q[0] && (gt_rxdata_q[7:0] == EIOS_IDL)) begin
            
            reg_state_eios_det <= #TCQ EIOS_DET_DONE;
            gt_rxvalid_q <= #TCQ 1'b0;
            end
          else
            reg_state_eios_det <= #TCQ EIOS_DET_IDL;

        end

        EIOS_DET_STR0 : begin

          if ((gt_rxcharisk_q[0] && (gt_rxdata_q[7:0] == EIOS_IDL)) &&
              (gt_rxcharisk_q[1] && (gt_rxdata_q[15:8] == EIOS_IDL))) begin

            reg_state_eios_det <= #TCQ EIOS_DET_STR1;
            reg_eios_detected <= #TCQ 1'b1;
            gt_rxvalid_q <= #TCQ 1'b0;
            reg_symbol_after_eios <= #TCQ 1'b1;

          end else
            reg_state_eios_det <= #TCQ EIOS_DET_IDL;

        end

        EIOS_DET_STR1 : begin

          if ((gt_rxcharisk_q[0]) && (gt_rxdata_q[7:0] == EIOS_IDL))
          begin
            reg_state_eios_det <= #TCQ EIOS_DET_DONE;
            gt_rxvalid_q <= #TCQ 1'b0;
          end  
          else
            reg_state_eios_det <= #TCQ EIOS_DET_IDL;

        end

        EIOS_DET_DONE : begin

          reg_state_eios_det <= #TCQ EIOS_DET_IDL;

        end

      endcase

    end

  end
  assign state_eios_det = reg_state_eios_det;
  assign eios_detected = reg_eios_detected;
  assign symbol_after_eios = reg_symbol_after_eios;
  /*SRL16E #(.INIT(0)) rx_elec_idle_delay (.Q(USER_RXELECIDLE),
                                         .D(gt_rxelecidle_q),
                                         .CLK(USER_CLK),
                                         .CE(1'b1), .A3(1'b1),.A2(1'b1),.A1(1'b1),.A0(1'b1));
*/
wire    rst_l = ~RESET;


assign USER_RXVALID = gt_rxvalid_q;
assign USER_RXCHARISK[0] = gt_rxvalid_q ? gt_rxcharisk_q[0] : 1'b0;
assign USER_RXCHARISK[1] = (gt_rxvalid_q && !symbol_after_eios) ? gt_rxcharisk_q[1] : 1'b0;
assign USER_RXDATA[7:0] = gt_rxdata_q[7:0];
assign USER_RXDATA[15:8] = gt_rxdata_q[15:8];
assign USER_RX_STATUS = gt_rx_status_q;
assign USER_RX_PHY_STATUS = gt_rx_phy_status_q;
assign USER_RXELECIDLE = gt_rxelecidle_q;


endmodule
