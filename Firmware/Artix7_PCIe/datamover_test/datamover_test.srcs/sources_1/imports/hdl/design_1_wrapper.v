`timescale 1 ps / 1 ps

module design_1_wrapper
   (output [14:0] DDR3_addr,
    output [2:0] DDR3_ba,
    output DDR3_cas_n,
    output [0:0] DDR3_ck_n,
    output [0:0] DDR3_ck_p,
    output [0:0] DDR3_cke,
    output [0:0] DDR3_cs_n,
    output [1:0] DDR3_dm,
    inout [15:0] DDR3_dq,
    inout [1:0] DDR3_dqs_n,
    inout [1:0] DDR3_dqs_p,
    output [0:0] DDR3_odt,
    output DDR3_ras_n,
    output DDR3_reset_n,
    output DDR3_we_n,
    input [0:0] pcie_clk_n,
    input [0:0] pcie_clk_p,
    input [3:0] pcie_mgt_rxn,
    input [3:0] pcie_mgt_rxp,
    output [3:0] pcie_mgt_txn,
    output [3:0] pcie_mgt_txp,
    input pcie_perstn,
    output [3:0] led,
    output [3:0] atten,
    output [3:0] dc_cpl,
    output i2c_sda,					
    output i2c_scl,				
    output pga_sdio,				
    output pga_sclk,				
    output [3:0] pga_cs,
    output adc_sdata,
    output adc_sclk,
    output adc_cs,
    output adc_pd,
    output adc_rstn,
    output acq_en,
    output osc_oe,
    output fe_en,
    input  adc_pg,
    input  fe_pg,
    output probe_comp,
    input adc_lclk_p,
	input adc_lclk_n,
	input adc_fclk_p,
	input adc_fclk_n,
	input[7:0] adc_data_p,
	input[7:0] adc_data_n
    );
    
  wire axi_aclk;
  wire axi_aresetn;
  wire S01_ARESETN;
  
  wire [71:0]S_AXIS_S2MM_CMD_tdata;
  wire S_AXIS_S2MM_CMD_tready;
  wire S_AXIS_S2MM_CMD_tvalid;
  
  wire [127:0]S_AXIS_S2MM_tdata;
  wire S_AXIS_S2MM_tready;
  wire S_AXIS_S2MM_tvalid;

  wire s2mm_err;
  wire s2mm_halt;
  wire s2mm_wr_xfer_cmplt;
 
  wire [31:0]gpio2_io_i;
  wire [1:0]gpio_io_o_0;
  
//  datamover_traffic_gen(
//    .axi_aclk(axi_aclk),
//    .axi_aresetn(axi_aresetn),
//    .S01_ARESETN(S01_ARESETN),
//    .S_AXIS_S2MM_CMD_tready(S_AXIS_S2MM_CMD_tready),
//    .S_AXIS_S2MM_CMD_tdata(S_AXIS_S2MM_CMD_tdata),
//    .S_AXIS_S2MM_CMD_tvalid(S_AXIS_S2MM_CMD_tvalid),
//    .S_AXIS_S2MM_tready(S_AXIS_S2MM_tready),
//    .S_AXIS_S2MM_tdata(S_AXIS_S2MM_tdata),
//    .S_AXIS_S2MM_tvalid(S_AXIS_S2MM_tvalid),
//    .s2mm_err(s2mm_err),
//    .s2mm_halt(s2mm_halt),
//    .s2mm_wr_xfer_cmplt(s2mm_wr_xfer_cmplt),
//    .gpio_io_o_0(gpio_io_o_0),
//    .gpio2_io_i(gpio2_io_i)
//  );

  design_1 design_1_i(
        .DDR3_addr(DDR3_addr),
        .DDR3_ba(DDR3_ba),
        .DDR3_cas_n(DDR3_cas_n),
        .DDR3_ck_n(DDR3_ck_n),
        .DDR3_ck_p(DDR3_ck_p),
        .DDR3_cke(DDR3_cke),
        .DDR3_cs_n(DDR3_cs_n),
        .DDR3_dm(DDR3_dm),
        .DDR3_dq(DDR3_dq),
        .DDR3_dqs_n(DDR3_dqs_n),
        .DDR3_dqs_p(DDR3_dqs_p),
        .DDR3_odt(DDR3_odt),
        .DDR3_ras_n(DDR3_ras_n),
        .DDR3_reset_n(DDR3_reset_n),
        .DDR3_we_n(DDR3_we_n),
        .S01_ARESETN(1'b0),
        .S_AXIS_S2MM_CMD_tdata(S_AXIS_S2MM_CMD_tdata),
        .S_AXIS_S2MM_CMD_tready(S_AXIS_S2MM_CMD_tready),
        .S_AXIS_S2MM_CMD_tvalid(S_AXIS_S2MM_CMD_tvalid),
        .S_AXIS_S2MM_tdata(S_AXIS_S2MM_tdata),
        .S_AXIS_S2MM_tready(S_AXIS_S2MM_tready),
        .S_AXIS_S2MM_tvalid(S_AXIS_S2MM_tvalid),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .gpio2_io_i(gpio2_io_i),
        .gpio_io_o_0(gpio_io_o_0),
        .pcie_clk_n(pcie_clk_n),
        .pcie_clk_p(pcie_clk_p),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .pcie_perstn(pcie_perstn),
        .s2mm_err(s2mm_err),
        .s2mm_halt(1'b1),
        .s2mm_wr_xfer_cmplt(s2mm_wr_xfer_cmplt));
endmodule
