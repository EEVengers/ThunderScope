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
// File       : design_1_xdma_0_0_pcie2_ip_qpll_wrapper.v
// Version    : 3.3
//------------------------------------------------------------------------------
//  Filename     :  qpll_wrapper.v
//  Description  :  QPLL Wrapper Module for 7 Series Transceiver
//  Version      :  18.1
//------------------------------------------------------------------------------



`timescale 1ns / 1ps



//---------- QPLL Wrapper ----------------------------------------------------
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_qpll_wrapper #
(
    
    parameter PCIE_SIM_MODE    = "FALSE",                   // PCIe sim mode
    parameter PCIE_GT_DEVICE   = "GTX",                     // PCIe GT device
    parameter PCIE_USE_MODE    = "3.0",                     // PCIe use mode
    parameter PCIE_PLL_SEL     = "CPLL",                    // PCIe PLL select for Gen1/Gen2 only
    parameter PCIE_REFCLK_FREQ = 0                          // PCIe reference clock frequency
 
)

(    
    
    //---------- QPLL Clock Ports --------------------------
    input               QPLL_CPLLPDREFCLK,
    input               QPLL_GTGREFCLK,
    input               QPLL_QPLLLOCKDETCLK,
    
    output              QPLL_QPLLOUTCLK,
    output              QPLL_QPLLOUTREFCLK,
    output              QPLL_QPLLLOCK,
    
    //---------- QPLL Reset Ports --------------------------
    input               QPLL_QPLLPD,
    input               QPLL_QPLLRESET,

    //---------- QPLL DRP Ports ----------------------------
    input               QPLL_DRPCLK,
    input       [ 7:0]  QPLL_DRPADDR,
    input               QPLL_DRPEN,
    input       [15:0]  QPLL_DRPDI,
    input               QPLL_DRPWE,
    
    output      [15:0]  QPLL_DRPDO,
    output              QPLL_DRPRDY
    
);



    //---------- Select QPLL Feedback Divider --------------
    //  N = 100 for 100 MHz ref clk and 10Gb/s line rate
    //  N =  80 for 125 MHz ref clk and 10Gb/s line rate
    //  N =  40 for 250 MHz ref clk and 10Gb/s line rate
    //------------------------------------------------------
    //  N =  80 for 100 MHz ref clk and  8Gb/s line rate
    //  N =  64 for 125 MHz ref clk and  8Gb/s line rate
    //  N =  32 for 250 MHz ref clk and  8Gb/s line rate
    //------------------------------------------------------
    localparam QPLL_FBDIV = (PCIE_REFCLK_FREQ == 2) && (PCIE_PLL_SEL == "QPLL") ? 10'b0010000000 : 
                            (PCIE_REFCLK_FREQ == 1) && (PCIE_PLL_SEL == "QPLL") ? 10'b0100100000 : 
                            (PCIE_REFCLK_FREQ == 0) && (PCIE_PLL_SEL == "QPLL") ? 10'b0101110000 : 
                            (PCIE_REFCLK_FREQ == 2) && (PCIE_PLL_SEL == "CPLL") ? 10'b0001100000 : 
                            (PCIE_REFCLK_FREQ == 1) && (PCIE_PLL_SEL == "CPLL") ? 10'b0011100000 : 10'b0100100000;
    
    //---------- Select GTP QPLL Feedback Divider ----------                     
    localparam GTP_QPLL_FBDIV  = (PCIE_REFCLK_FREQ == 2) ? 3'd2 :
                                 (PCIE_REFCLK_FREQ == 1) ? 3'd4 : 3'd5;

    //---------- Select BIAS_CFG ---------------------------
    localparam BIAS_CFG = ((PCIE_USE_MODE == "1.0") && (PCIE_PLL_SEL == "CPLL")) ? 64'h0000042000001000 : 64'h0000040000001000;


    wire cpllpd;        
    wire cpllrst;       

//---------- Select GTX or GTH or GTP ------------------------------------------
//  Notes  :  Attributes that are commented out uses the GT default settings
//------------------------------------------------------------------------------
generate if (PCIE_GT_DEVICE == "GTP") 

    //---------- GTP Common ----------------------------------------------------
    begin : gtp_common

    //---------- GTP Common Module ---------------------------------------------
    GTPE2_COMMON #
    (
       
        //---------- Simulation Attributes -------------------------------------                                                     
        .SIM_PLL0REFCLK_SEL             (3'b001),                               //                                                   
        .SIM_PLL1REFCLK_SEL             (3'b001),                               //                                                   
        .SIM_RESET_SPEEDUP              (PCIE_SIM_MODE),                        //                                                   
        .SIM_VERSION                    (PCIE_USE_MODE),                        //                                                   
                                                                                                                                     
        //---------- Clock Attributes ------------------------------------------                                                     
        .PLL0_CFG                       (27'h01F024C),                          // Optimized for IES                                                  
        .PLL1_CFG                       (27'h01F024C),                          // Optimized for IES                                                  
        .PLL_CLKOUT_CFG                 (8'd0),                                 // Optimized for IES                                                   
        .PLL0_DMON_CFG                  (1'b0),                                 // Optimized for IES                                                  
        .PLL1_DMON_CFG                  (1'b0),                                 // Optimized for IES                                      
        .PLL0_FBDIV                     (GTP_QPLL_FBDIV),                       // Optimized for IES                                                  
        .PLL1_FBDIV                     (GTP_QPLL_FBDIV),                       // Optimized for IES                                                   
        .PLL0_FBDIV_45                  (5),                                    // Optimized for IES                                                  
        .PLL1_FBDIV_45                  (5),                                    // Optimized for IES                                                  
        .PLL0_INIT_CFG                  (24'h00001E),                           // Optimized for IES                                                  
        .PLL1_INIT_CFG                  (24'h00001E),                           // Optimized for IES                                                   
        .PLL0_LOCK_CFG                  ( 9'h1E8),                              // Optimized for IES    
        .PLL1_LOCK_CFG                  ( 9'h1E8),                              // Optimized for IES                                                                                                                   
        .PLL0_REFCLK_DIV                (1),                                    // Optimized for IES                                                  
        .PLL1_REFCLK_DIV                (1),                                    // Optimized for IES                                                  
                                                                                                                                     
        //---------- MISC ------------------------------------------------------                                                     
        .BIAS_CFG                       (64'h0000000000050001),                 // Optimized for GES                                                 
      //.COMMON_CFG                     (32'd0),                                //                                                                                                   
        .RSVD_ATTR0                     (16'd0),                                //                                                   
        .RSVD_ATTR1                     (16'd0)                                 //                                                   
    
    )
    gtpe2_common_i 
    (
           
        //---------- Clock -----------------------------------------------------                         
        .GTGREFCLK0                     ( 1'd0),                                //                       
        .GTGREFCLK1                     ( 1'd0),                                //                       
        .GTREFCLK0                      (QPLL_GTGREFCLK),                       //                       
        .GTREFCLK1                      ( 1'd0),                                //                       
        .GTEASTREFCLK0                  ( 1'd0),                                //                       
        .GTEASTREFCLK1                  ( 1'd0),                                //                       
        .GTWESTREFCLK0                  ( 1'd0),                                //                       
        .GTWESTREFCLK1                  ( 1'd0),                                //                       
        .PLL0LOCKDETCLK                 (QPLL_QPLLLOCKDETCLK),                  //                       
        .PLL1LOCKDETCLK                 (QPLL_QPLLLOCKDETCLK),                  //                       
        .PLL0LOCKEN                     ( 1'd1),                                //                       
        .PLL1LOCKEN                     ( 1'd1),                                //                       
        .PLL0REFCLKSEL                  ( 3'd1),                                // Optimized for IES                      
        .PLL1REFCLKSEL                  ( 3'd1),                                // Optimized for IES                      
        .PLLRSVD1                       (16'd0),                                // Optimized for IES                    
        .PLLRSVD2                       ( 5'd0),                                // Optimized for IES                  
        
        .PLL0OUTCLK                     (QPLL_QPLLOUTCLK),                      //                       
        .PLL1OUTCLK                     (),                                     //                       
        .PLL0OUTREFCLK                  (QPLL_QPLLOUTREFCLK),                   //                       
        .PLL1OUTREFCLK                  (),                                     //                       
        .PLL0LOCK                       (QPLL_QPLLLOCK),                        //                       
        .PLL1LOCK                       (),                                     //                       
        .PLL0FBCLKLOST                  (),                                     //                       
        .PLL1FBCLKLOST                  (),                                     //                       
        .PLL0REFCLKLOST                 (),                                     //                       
        .PLL1REFCLKLOST                 (),                                     //                       
        .DMONITOROUT                    (),                                     // 
                                                                                                         
        //---------- Reset -----------------------------------------------------                         
        .PLL0PD                         (cpllpd | QPLL_QPLLPD),                 //                       
        .PLL1PD                         ( 1'd1),                                //                       
        .PLL0RESET                      (cpllrst | QPLL_QPLLRESET),             //                       
        .PLL1RESET                      ( 1'd1),                                //                       
                                                                                                   
        //---------- DRP -------------------------------------------------------                         
        .DRPCLK                         (QPLL_DRPCLK),                          //                       
        .DRPADDR                        (QPLL_DRPADDR),                         //                       
        .DRPEN                          (QPLL_DRPEN),                           //                       
        .DRPDI                          (QPLL_DRPDI),                           //                       
        .DRPWE                          (QPLL_DRPWE),                           //                       
                                                                                                         
        .DRPDO                          (QPLL_DRPDO),                           //                       
        .DRPRDY                         (QPLL_DRPRDY),                          //                       
                                                                                                         
        //---------- Band Gap --------------------------------------------------                         
        .BGBYPASSB                      ( 1'd1),                                // Optimized for IES                      
        .BGMONITORENB                   ( 1'd1),                                // Optimized for IES                      
        .BGPDB                          ( 1'd1),                                // Optimized for IES
        .BGRCALOVRD                     ( 5'd31),                               // Optimized for IES
        .BGRCALOVRDENB                  ( 1'd1),                                // Optimized for IES
        
        //---------- MISC ------------------------------------------------------
        .PMARSVD                        ( 8'd0),                                //
        .RCALENB                        ( 1'd1),                                // Optimized for IES
                                                                               
        .REFCLKOUTMONITOR0              (),                                     //
        .REFCLKOUTMONITOR1              (),                                     //
        .PMARSVDOUT                     ()                                      //  
    
    );
   
    end

else if (PCIE_GT_DEVICE == "GTH") 
    
    //---------- GTH Common ----------------------------------------------------
    begin : gth_common
    
    //---------- GTX Common Module ---------------------------------------------
    GTHE2_COMMON #
    (
       
        //---------- Simulation Attributes -------------------------------------
        .SIM_QPLLREFCLK_SEL             (3'b001),                               //
        .SIM_RESET_SPEEDUP              (PCIE_SIM_MODE),                        //
        .SIM_VERSION                    ("2.0"),                                // 
        
        //---------- Clock Attributes ------------------------------------------
        .QPLL_CFG                       (27'h04801C7),                          // QPLL for Gen3, optimized for GES
        .QPLL_CLKOUT_CFG                ( 4'b1111),                             // Optimized for GES
        .QPLL_COARSE_FREQ_OVRD          ( 6'b010000),                           // 
        .QPLL_COARSE_FREQ_OVRD_EN       ( 1'd0),                                // 
        .QPLL_CP                        (10'h0FF),                              // * Optimized for IES and PCIe PLL BW 
        .QPLL_CP_MONITOR_EN             ( 1'd0),                                //
        .QPLL_DMONITOR_SEL              ( 1'd0),                                //
        .QPLL_FBDIV                     (QPLL_FBDIV),                           // 
        .QPLL_FBDIV_MONITOR_EN          ( 1'd0),                                //
        .QPLL_FBDIV_RATIO               ( 1'd1),                                // Optimized
        .QPLL_INIT_CFG	                (24'h000006),                           // 
        .QPLL_LOCK_CFG                  (16'h05E8),                             // Optimized for IES
        .QPLL_LPF                       ( 4'hD),                                // Optimized for IES, [1:0] = 2'b00 (13.3 KOhm), [1:0] = 2'b01 (57.0 KOhm)
        .QPLL_REFCLK_DIV	              ( 1),                                   // 
        .QPLL_RP_COMP                   ( 1'd0),                                // GTH new
        .QPLL_VTRL_RESET                ( 2'd0),                                // GTH new
    
        //---------- MISC ------------------------------------------------------
        .BIAS_CFG	                      (64'h0000040000001050),                 // Optimized for GES
        .COMMON_CFG	                    (32'd0),                                // 
        .RCAL_CFG                       ( 2'b00),                               // GTH new
        .RSVD_ATTR0                     (16'd0),                                // GTH
        .RSVD_ATTR1                     (16'd0)                                 // GTH    
    )
    gthe2_common_i 
    (
           
        //---------- Clock -----------------------------------------------------
        .GTGREFCLK                      ( 1'd0),                                //    
        .GTREFCLK0                      (QPLL_GTGREFCLK),                       //
        .GTREFCLK1                      ( 1'd0),                                //
        .GTNORTHREFCLK0                 ( 1'd0),                                //
        .GTNORTHREFCLK1                 ( 1'd0),                                //
        .GTSOUTHREFCLK0                 ( 1'd0),                                //
        .GTSOUTHREFCLK1                 ( 1'd0),                                //
        .QPLLLOCKDETCLK                 (QPLL_QPLLLOCKDETCLK),                  //
        .QPLLLOCKEN                     ( 1'd1),                                //
        .QPLLREFCLKSEL                  ( 3'd1),                                //
        .QPLLRSVD1                      (16'd0),                                //
        .QPLLRSVD2                      ( 5'b11111),                            //
                                                                               
        .QPLLOUTCLK                     (QPLL_QPLLOUTCLK),                      //
        .QPLLOUTREFCLK                  (QPLL_QPLLOUTREFCLK),                   //
        .QPLLLOCK                       (QPLL_QPLLLOCK),                        //
        .QPLLFBCLKLOST                  (),                                     //
        .QPLLREFCLKLOST                 (),                                     //
        .QPLLDMONITOR                   (),                                     //
        
        //---------- Reset -----------------------------------------------------
        .QPLLPD                         (QPLL_QPLLPD),                          // 
        .QPLLRESET                      (QPLL_QPLLRESET),                       //
        .QPLLOUTRESET                   ( 1'd0),                                //
        
        //---------- DRP -------------------------------------------------------
        .DRPCLK                         (QPLL_DRPCLK),                          //
        .DRPADDR                        (QPLL_DRPADDR),                         //
        .DRPEN                          (QPLL_DRPEN),                           //
        .DRPDI                          (QPLL_DRPDI),                           //
        .DRPWE                          (QPLL_DRPWE),                           //
                                                                              
        .DRPDO                          (QPLL_DRPDO),                           //
        .DRPRDY                         (QPLL_DRPRDY),                          //
                
        //---------- Band Gap --------------------------------------------------    
        .BGBYPASSB                      ( 1'd1),                                // Optimized for IES
        .BGMONITORENB                   ( 1'd1),                                // Optimized for IES
        .BGPDB                          ( 1'd1),                                // Optimized for IES
        .BGRCALOVRD                     ( 5'd31),                               // Optimized for IES
        .BGRCALOVRDENB                  ( 1'd1),                                // GTH, Optimized for IES
        
        //---------- MISC ------------------------------------------------------
        .PMARSVD                        ( 8'd0),                                //
        .RCALENB                        ( 1'd1),                                // Optimized for IES
                                                                              
        .REFCLKOUTMONITOR               (),                                     //
        .PMARSVDOUT                     ()                                      // GTH
    
    );

    end    
    
else

    //---------- GTX Common ----------------------------------------------------
    begin : gtx_common

    //---------- GTX Common Module ---------------------------------------------
    GTXE2_COMMON #
    (
       
        //---------- Simulation Attributes ------------------------------------- 
        .SIM_QPLLREFCLK_SEL             ( 3'b001),                              //
        .SIM_RESET_SPEEDUP              (PCIE_SIM_MODE),                        //
        .SIM_VERSION                    (PCIE_USE_MODE),                        // 
        
        //---------- Clock Attributes ------------------------------------------
        .QPLL_CFG                       (27'h06801C1),                          // QPLL for Gen3, Optimized for silicon, 
      //.QPLL_CLKOUT_CFG                ( 4'd0),                                //
        .QPLL_COARSE_FREQ_OVRD          ( 6'b010000),                           // 
        .QPLL_COARSE_FREQ_OVRD_EN       ( 1'd0),                                // 
        .QPLL_CP                        (10'h01F),                              // Optimized for Gen3 compliance (Gen1/Gen2 = 10'h1FF) 
        .QPLL_CP_MONITOR_EN             ( 1'd0),                                //
        .QPLL_DMONITOR_SEL              ( 1'd0),                                //
        .QPLL_FBDIV                     (QPLL_FBDIV),                           // 
        .QPLL_FBDIV_MONITOR_EN          ( 1'd0),                                //
        .QPLL_FBDIV_RATIO               ( 1'd1),                                // Optimized for silicon
      //.QPLL_INIT_CFG	                (24'h000006),                           // 
        .QPLL_LOCK_CFG                  (16'h21E8),                             // Optimized for silicon, IES = 16'h01D0, GES 16'h21D0
        .QPLL_LPF                       ( 4'hD),                                // Optimized for silicon, [1:0] = 2'b00 (13.3 KOhm), [1:0] = 2'b01 (57.0 KOhm)
        .QPLL_REFCLK_DIV	              (1),                                    // 
    
        //---------- MISC ------------------------------------------------------
        .BIAS_CFG                       (BIAS_CFG)                              // Optimized for silicon
      //.COMMON_CFG                     (32'd0)                                 //
    
    )
    gtxe2_common_i 
    (
           
        //---------- Clock -----------------------------------------------------
        .GTGREFCLK                      ( 1'd0),                                //
        .GTREFCLK0                      (QPLL_GTGREFCLK),                       //
        .GTREFCLK1                      ( 1'd0),                                //
        .GTNORTHREFCLK0                 ( 1'd0),                                //
        .GTNORTHREFCLK1                 ( 1'd0),                                //
        .GTSOUTHREFCLK0                 ( 1'd0),                                //
        .GTSOUTHREFCLK1                 ( 1'd0),                                //
        .QPLLLOCKDETCLK                 (QPLL_QPLLLOCKDETCLK),                  //
        .QPLLLOCKEN                     ( 1'd1),                                //
        .QPLLREFCLKSEL                  ( 3'd1),                                //
        .QPLLRSVD1                      (16'd0),                                //
        .QPLLRSVD2                      ( 5'b11111),                            //
                                                                               
        .QPLLOUTCLK                     (QPLL_QPLLOUTCLK),                      //
        .QPLLOUTREFCLK                  (QPLL_QPLLOUTREFCLK),                   //
        .QPLLLOCK                       (QPLL_QPLLLOCK),                        //
        .QPLLFBCLKLOST                  (),                                     //
        .QPLLREFCLKLOST                 (),                                     //
        .QPLLDMONITOR                   (),                                     //
        
        //---------- Reset -----------------------------------------------------
        .QPLLPD                         (QPLL_QPLLPD),                          // 
        .QPLLRESET                      (QPLL_QPLLRESET),                       //
        .QPLLOUTRESET                   ( 1'd0),                                //
        
        //---------- DRP -------------------------------------------------------
        .DRPCLK                         (QPLL_DRPCLK),                          //
        .DRPADDR                        (QPLL_DRPADDR),                         //
        .DRPEN                          (QPLL_DRPEN),                           //
        .DRPDI                          (QPLL_DRPDI),                           //
        .DRPWE                          (QPLL_DRPWE),                           //
                                                                               
        .DRPDO                          (QPLL_DRPDO),                           //
        .DRPRDY                         (QPLL_DRPRDY),                          //
                
        //---------- Band Gap --------------------------------------------------    
        .BGBYPASSB                      ( 1'd1),                                //
        .BGMONITORENB                   ( 1'd1),                                //
        .BGPDB                          ( 1'd1),                                //
        .BGRCALOVRD                     ( 5'd31),                               //
        
        //---------- MISC ------------------------------------------------------
        .PMARSVD                        ( 8'd0),                                //
        .RCALENB                        ( 1'd1),                                // Optimized for GES
                                                                               
        .REFCLKOUTMONITOR               ()                                      //
    
    );
    
    end
            
endgenerate

design_1_xdma_0_0_pcie2_ip_gtp_cpllpd_ovrd cpllPDInst (                                                                                   
        .i_ibufds_gte2(QPLL_CPLLPDREFCLK),                                                                                 
        .o_cpllpd_ovrd(cpllpd),                                                                                       
        .o_cpllreset_ovrd(cpllrst));                       


endmodule

                                              
