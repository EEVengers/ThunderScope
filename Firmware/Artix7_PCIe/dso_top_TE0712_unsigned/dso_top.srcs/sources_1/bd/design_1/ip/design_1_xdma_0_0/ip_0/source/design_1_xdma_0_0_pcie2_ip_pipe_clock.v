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
// File       : design_1_xdma_0_0_pcie2_ip_pipe_clock.v
// Version    : 3.3
//------------------------------------------------------------------------------
//  Filename     :  pipe_clock.v
//  Description  :  PIPE Clock Module for 7 Series Transceiver
//  Version      :  15.3
//------------------------------------------------------------------------------



`timescale 1ns / 1ps



//---------- PIPE Clock Module -------------------------------------------------
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie2_ip_pipe_clock #
(

    parameter PCIE_ASYNC_EN      = "FALSE",                 // PCIe async enable
    parameter PCIE_TXBUF_EN      = "FALSE",                 // PCIe TX buffer enable for Gen1/Gen2 only
    parameter PCIE_CLK_SHARING_EN= "FALSE",                 // Enable Clock Sharing
    parameter PCIE_LANE          = 1,                       // PCIe number of lanes
    parameter PCIE_LINK_SPEED    = 3,                       // PCIe link speed 
    parameter PCIE_REFCLK_FREQ   = 0,                       // PCIe reference clock frequency
    parameter PCIE_USERCLK1_FREQ = 2,                       // PCIe user clock 1 frequency
    parameter PCIE_USERCLK2_FREQ = 2,                       // PCIe user clock 2 frequency
    parameter PCIE_OOBCLK_MODE   = 1,                       // PCIe oob clock mode
    parameter PCIE_DEBUG_MODE    = 0                        // PCIe Debug mode
    
)

(

    //---------- Input -------------------------------------
    input                       CLK_CLK,
    input                       CLK_TXOUTCLK,
    input       [PCIE_LANE-1:0] CLK_RXOUTCLK_IN,
    input                       CLK_RST_N,
    input       [PCIE_LANE-1:0] CLK_PCLK_SEL,
    input       [PCIE_LANE-1:0] CLK_PCLK_SEL_SLAVE,
    input                       CLK_GEN3,
    
    //---------- Output ------------------------------------
    output                      CLK_PCLK,
    output                      CLK_PCLK_SLAVE,
    output                      CLK_RXUSRCLK,
    output      [PCIE_LANE-1:0] CLK_RXOUTCLK_OUT,
    output                      CLK_DCLK,
    output                      CLK_OOBCLK,
    output                      CLK_USERCLK1,
    output                      CLK_USERCLK2,
    output                      CLK_MMCM_LOCK
    
);
    
    //---------- Select Clock Divider ----------------------
    localparam          DIVCLK_DIVIDE    = (PCIE_REFCLK_FREQ == 2) ? 1 :
                                           (PCIE_REFCLK_FREQ == 1) ? 1 : 1;
                                               
    localparam          CLKFBOUT_MULT_F  = (PCIE_REFCLK_FREQ == 2) ? 4 :
                                           (PCIE_REFCLK_FREQ == 1) ? 8 : 10;
               
    localparam          CLKIN1_PERIOD    = (PCIE_REFCLK_FREQ == 2) ? 4 :
                                           (PCIE_REFCLK_FREQ == 1) ? 8 : 10;
                                               
    localparam          CLKOUT0_DIVIDE_F = 8;
    
    localparam          CLKOUT1_DIVIDE   = 4;
    
    localparam          CLKOUT2_DIVIDE   = (PCIE_USERCLK1_FREQ == 5) ?  2 : 
                                           (PCIE_USERCLK1_FREQ == 4) ?  4 :
                                           (PCIE_USERCLK1_FREQ == 3) ?  8 :
                                           (PCIE_USERCLK1_FREQ == 1) ? 32 : 16;
                                               
    localparam          CLKOUT3_DIVIDE   = (PCIE_USERCLK2_FREQ == 5) ?  2 : 
                                           (PCIE_USERCLK2_FREQ == 4) ?  4 :
                                           (PCIE_USERCLK2_FREQ == 3) ?  8 :
                                           (PCIE_USERCLK2_FREQ == 1) ? 32 : 16;
                                           
    localparam          CLKOUT4_DIVIDE   = 20;

    localparam          PCIE_GEN1_MODE    = 1'b0;             // PCIe link speed is GEN1 only
                                    
       
    //---------- Input Registers ---------------------------
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0] pclk_sel_reg1 = {PCIE_LANE{1'd0}};
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0] pclk_sel_slave_reg1 = {PCIE_LANE{1'd0}};
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                         gen3_reg1     = 1'd0;
    
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0] pclk_sel_reg2 = {PCIE_LANE{1'd0}};
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg         [PCIE_LANE-1:0] pclk_sel_slave_reg2 = {PCIE_LANE{1'd0}};
(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)    reg                         gen3_reg2     = 1'd0;   
       
    //---------- Internal Signals -------------------------- 
    wire                            refclk;
    wire                            mmcm_fb;
    wire                            clk_125mhz;
    wire                            clk_125mhz_buf;
    wire                            clk_250mhz;
    wire                            userclk1;
    wire                            userclk2;
    wire                            oobclk;
    reg    pclk_sel = 1'd0;
    reg                             pclk_sel_slave = 1'd0;

    //---------- Output Registers --------------------------
    wire                        pclk_1;
    wire                        pclk;
    wire                        userclk1_1;
    wire                        userclk2_1;
    wire                        mmcm_lock;
    
    //---------- Generate Per-Lane Signals -----------------
    genvar              i;                                  // Index for per-lane signals



//---------- Input FF ----------------------------------------------------------
always @ (posedge pclk)
begin

    if (!CLK_RST_N)
        begin
        //---------- 1st Stage FF --------------------------
        pclk_sel_reg1 <= {PCIE_LANE{1'd0}};
        pclk_sel_slave_reg1 <= {PCIE_LANE{1'd0}};
        gen3_reg1     <= 1'd0;
        //---------- 2nd Stage FF --------------------------
        pclk_sel_reg2 <= {PCIE_LANE{1'd0}};
        pclk_sel_slave_reg2 <= {PCIE_LANE{1'd0}};
        gen3_reg2     <= 1'd0;
        end
    else
        begin  
        //---------- 1st Stage FF --------------------------
        pclk_sel_reg1 <= CLK_PCLK_SEL;
        pclk_sel_slave_reg1 <= CLK_PCLK_SEL_SLAVE;
        gen3_reg1     <= CLK_GEN3;
        //---------- 2nd Stage FF --------------------------
        pclk_sel_reg2 <= pclk_sel_reg1;
        pclk_sel_slave_reg2 <= pclk_sel_slave_reg1;
        gen3_reg2     <= gen3_reg1;
        end
        
end


   
//---------- Select Reference clock or TXOUTCLK --------------------------------   
generate if ((PCIE_TXBUF_EN == "TRUE") && (PCIE_LINK_SPEED != 3))

    begin : refclk_i

    //---------- Select Reference Clock ----------------------------------------
    BUFG refclk_i
    (
    
        //---------- Input -------------------------------------
        .I                          (CLK_CLK),
        //---------- Output ------------------------------------
        .O                          (refclk)
       
    );
      
    end

else

    begin : txoutclk_i
    
    //---------- Select TXOUTCLK -----------------------------------------------
    BUFG txoutclk_i
    (
    
        //---------- Input -------------------------------------
        .I                          (CLK_TXOUTCLK),
        //---------- Output ------------------------------------
        .O                          (refclk)
       
    );
   
    end

endgenerate



//---------- MMCM --------------------------------------------------------------
MMCME2_ADV #
(

    .BANDWIDTH                  ("OPTIMIZED"),
    .CLKOUT4_CASCADE            ("FALSE"),
    .COMPENSATION               ("ZHOLD"),
    .STARTUP_WAIT               ("FALSE"),
    .DIVCLK_DIVIDE              (DIVCLK_DIVIDE),
    .CLKFBOUT_MULT_F            (CLKFBOUT_MULT_F),  
    .CLKFBOUT_PHASE             (0.000),
    .CLKFBOUT_USE_FINE_PS       ("FALSE"),
    .CLKOUT0_DIVIDE_F           (CLKOUT0_DIVIDE_F),                    
    .CLKOUT0_PHASE              (0.000),
    .CLKOUT0_DUTY_CYCLE         (0.500),
    .CLKOUT0_USE_FINE_PS        ("FALSE"),
    .CLKOUT1_DIVIDE             (CLKOUT1_DIVIDE),                    
    .CLKOUT1_PHASE              (0.000),
    .CLKOUT1_DUTY_CYCLE         (0.500),
    .CLKOUT1_USE_FINE_PS        ("FALSE"),
    .CLKOUT2_DIVIDE             (CLKOUT2_DIVIDE),                  
    .CLKOUT2_PHASE              (0.000),
    .CLKOUT2_DUTY_CYCLE         (0.500),
    .CLKOUT2_USE_FINE_PS        ("FALSE"),
    .CLKOUT3_DIVIDE             (CLKOUT3_DIVIDE),                  
    .CLKOUT3_PHASE              (0.000),
    .CLKOUT3_DUTY_CYCLE         (0.500),
    .CLKOUT3_USE_FINE_PS        ("FALSE"),
    .CLKOUT4_DIVIDE             (CLKOUT4_DIVIDE),                  
    .CLKOUT4_PHASE              (0.000),
    .CLKOUT4_DUTY_CYCLE         (0.500),
    .CLKOUT4_USE_FINE_PS        ("FALSE"),
    .CLKIN1_PERIOD              (CLKIN1_PERIOD),                   
    .REF_JITTER1                (0.010)
    
)
mmcm_i
(

     //---------- Input ------------------------------------
    .CLKIN1                     (refclk),
    .CLKIN2                     (1'd0),                     // not used, comment out CLKIN2 if it cause implementation issues
  //.CLKIN2                     (refclk),                   // not used, comment out CLKIN2 if it cause implementation issues
    .CLKINSEL                   (1'd1),
    .CLKFBIN                    (mmcm_fb),
    .RST                        (!CLK_RST_N),
    .PWRDWN                     (1'd0), 
    
    //---------- Output ------------------------------------
    .CLKFBOUT                   (mmcm_fb),
    .CLKFBOUTB                  (),
    .CLKOUT0                    (clk_125mhz),
    .CLKOUT0B                   (),
    .CLKOUT1                    (clk_250mhz),
    .CLKOUT1B                   (),
    .CLKOUT2                    (userclk1),
    .CLKOUT2B                   (),
    .CLKOUT3                    (userclk2),
    .CLKOUT3B                   (),
    .CLKOUT4                    (oobclk),
    .CLKOUT5                    (),
    .CLKOUT6                    (),
    .LOCKED                     (mmcm_lock),
    
    //---------- Dynamic Reconfiguration -------------------
    .DCLK                       ( 1'd0),
    .DADDR                      ( 7'd0),
    .DEN                        ( 1'd0),
    .DWE                        ( 1'd0),
    .DI                         (16'd0),
    .DO                         (),
    .DRDY                       (),
    
    //---------- Dynamic Phase Shift -----------------------
    .PSCLK                      (1'd0),
    .PSEN                       (1'd0),
    .PSINCDEC                   (1'd0),
    .PSDONE                     (),
    
    //---------- Status ------------------------------------
    .CLKINSTOPPED               (),
    .CLKFBSTOPPED               ()  

); 
  


//---------- Select PCLK MUX ---------------------------------------------------
generate if (PCIE_LINK_SPEED != 1) 

    begin : pclk_i1_bufgctrl
    //---------- PCLK Mux ----------------------------------
    BUFGCTRL pclk_i1
    (
        //---------- Input ---------------------------------
        .CE0                        (1'd1),         
        .CE1                        (1'd1),        
        .I0                         (clk_125mhz),   
        .I1                         (clk_250mhz),   
        .IGNORE0                    (1'd0),        
        .IGNORE1                    (1'd0),        
        .S0                         (~pclk_sel),    
        .S1                         ( pclk_sel),    
        //---------- Output --------------------------------
        .O                          (pclk_1)
    );
    end

else 

    //---------- Select PCLK Buffer ------------------------
    begin : pclk_i1_bufg
    //---------- PCLK Buffer -------------------------------
    BUFG pclk_i1
    (
        //---------- Input ---------------------------------
        .I                          (clk_125mhz), 
        //---------- Output --------------------------------
        .O                          (clk_125mhz_buf)
    );
    assign pclk_1 = clk_125mhz_buf;
    end 

endgenerate

//---------- Select PCLK MUX for Slave---------------------------------------------------
generate  if(PCIE_CLK_SHARING_EN == "FALSE")
   //---------- PCLK MUX for Slave------------------// 
    begin : pclk_slave_disable
    assign CLK_PCLK_SLAVE = 1'b0;
    end  

else if (PCIE_LINK_SPEED != 1) 

    begin : pclk_slave_bufgctrl
    //---------- PCLK Mux ----------------------------------
    BUFGCTRL pclk_slave
    (
        //---------- Input ---------------------------------
        .CE0                        (1'd1),         
        .CE1                        (1'd1),        
        .I0                         (clk_125mhz),   
        .I1                         (clk_250mhz),   
        .IGNORE0                    (1'd0),        
        .IGNORE1                    (1'd0),        
        .S0                         (~pclk_sel_slave),    
        .S1                         ( pclk_sel_slave),    
        //---------- Output --------------------------------
        .O                          (CLK_PCLK_SLAVE)
    );
    end

else 

    //---------- Select PCLK Buffer ------------------------
    begin : pclk_slave_bufg
    //---------- PCLK Buffer -------------------------------
    BUFG pclk_slave
    (
        //---------- Input ---------------------------------
        .I                          (clk_125mhz), 
        //---------- Output --------------------------------
        .O                          (CLK_PCLK_SLAVE)
    );
    end 

endgenerate



//---------- Generate RXOUTCLK Buffer for Debug --------------------------------
generate if ((PCIE_DEBUG_MODE == 1) || (PCIE_ASYNC_EN == "TRUE"))
        
    begin : rxoutclk_per_lane
    //---------- Generate per Lane -------------------------
    for (i=0; i<PCIE_LANE; i=i+1) 
    
        begin : rxoutclk_i
        //---------- RXOUTCLK Buffer -----------------------
        BUFG rxoutclk_i
        (
            //---------- Input -----------------------------
            .I                          (CLK_RXOUTCLK_IN[i]), 
            //---------- Output ----------------------------
            .O                          (CLK_RXOUTCLK_OUT[i])
        );
        end

    end 
        
else

    //---------- Disable RXOUTCLK Buffer for Normal Operation 
    begin : rxoutclk_i_disable
    assign CLK_RXOUTCLK_OUT = {PCIE_LANE{1'd0}};
    end       
            
endgenerate 


//---------- Generate DCLK Buffer ----------------------------------------------
//generate if (PCIE_USERCLK2_FREQ <= 3)
//---------- Disable DCLK Buffer -----------------------
//    begin : dclk_i
//    assign CLK_DCLK = userclk2_1;                       // always less than 125Mhz
//   end
//else
//    begin : dclk_i_bufg
//---------- DCLK Buffer -------------------------------
//    BUFG dclk_i
//    (
//---------- Input ---------------------------------
//        .I                          (clk_125mhz), 
//---------- Output --------------------------------
//        .O                          (CLK_DCLK)
//    );
//    end 
//endgenerate

generate if (PCIE_LINK_SPEED != 1)

    begin : dclk_i_bufg
    //---------- DCLK Buffer -------------------------------
    BUFG dclk_i
    (
        //---------- Input ---------------------------------
        .I                          (clk_125mhz),
        //---------- Output --------------------------------
        .O                          (CLK_DCLK)
    );
    end

else

    //---------- Disable DCLK Buffer -----------------------
    begin : dclk_i
    assign CLK_DCLK = clk_125mhz_buf;                       // always 125 MHz in Gen1
    end

endgenerate




//---------- Generate USERCLK1 Buffer ------------------------------------------
generate if (PCIE_GEN1_MODE == 1'b1 && PCIE_USERCLK1_FREQ == 3) 
    //---------- USERCLK1 same as PCLK -------------------
    begin :userclk1_i1_no_bufg
    assign userclk1_1 = pclk_1;
    end 
else
    begin : userclk1_i1
    //---------- USERCLK1 Buffer ---------------------------
    BUFG usrclk1_i1
    (
        //---------- Input ---------------------------------
        .I                          (userclk1),
        //---------- Output --------------------------------
        .O                          (userclk1_1)
    );
    end 
endgenerate 



//---------- Generate USERCLK2 Buffer ------------------------------------------

generate if (PCIE_GEN1_MODE == 1'b1 && PCIE_USERCLK2_FREQ == 3 ) 
//---------- USERCLK2 same as PCLK -------------------
    begin : userclk2_i1_no_bufg0
    assign userclk2_1 = pclk_1;
    end 
else if (PCIE_USERCLK2_FREQ == PCIE_USERCLK1_FREQ ) 
//---------- USERCLK2 same as USERCLK1 -------------------
    begin : userclk2_i1_no_bufg1
    assign userclk2_1 = userclk1_1;
    end  
else    
    begin : userclk2_i1
    //---------- USERCLK2 Buffer ---------------------------
    BUFG usrclk2_i1
    (
        //---------- Input ---------------------------------
        .I                          (userclk2),
        //---------- Output --------------------------------
        .O                          (userclk2_1)
    );
    end
endgenerate 



//---------- Generate OOBCLK Buffer --------------------------------------------
generate if (PCIE_OOBCLK_MODE == 2) 

    begin : oobclk_i1
    //---------- OOBCLK Buffer -----------------------------
    BUFG oobclk_i1
    (
        //---------- Input ---------------------------------
        .I                          (oobclk),
        //---------- Output --------------------------------
        .O                          (CLK_OOBCLK)
    );
    end

else 
        
    //---------- Disable OOBCLK Buffer ---------------------
    begin : oobclk_i1_disable
    assign CLK_OOBCLK = pclk;
    end  

endgenerate 


// Disabled Second Stage Buffers
    assign pclk         = pclk_1;
    assign CLK_RXUSRCLK = pclk_1;
    assign CLK_USERCLK1 = userclk1_1;
    assign CLK_USERCLK2 = userclk2_1;
 



//---------- Select PCLK -------------------------------------------------------
always @ (posedge pclk)
begin

    if (!CLK_RST_N)
        pclk_sel <= 1'd0;
    else
        begin 
        //---------- Select 250 MHz ------------------------
        if (&pclk_sel_reg2)
            pclk_sel <= 1'd1;
        //---------- Select 125 MHz ------------------------  
        else if (&(~pclk_sel_reg2))
            pclk_sel <= 1'd0;  
        //---------- Hold PCLK -----------------------------
        else
            pclk_sel <= pclk_sel;
        end

end        

always @ (posedge pclk)
begin

    if (!CLK_RST_N)
        pclk_sel_slave<= 1'd0;
    else
        begin 
        //---------- Select 250 MHz ------------------------
        if (&pclk_sel_slave_reg2)
            pclk_sel_slave <= 1'd1;
        //---------- Select 125 MHz ------------------------  
        else if (&(~pclk_sel_slave_reg2))
            pclk_sel_slave <= 1'd0;  
        //---------- Hold PCLK -----------------------------
        else
            pclk_sel_slave <= pclk_sel_slave;
        end

end     



//---------- PIPE Clock Output -------------------------------------------------
assign CLK_PCLK      = pclk;
assign CLK_MMCM_LOCK = mmcm_lock;



endmodule
