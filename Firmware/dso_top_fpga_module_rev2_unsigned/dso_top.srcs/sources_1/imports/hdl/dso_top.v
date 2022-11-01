`timescale 1 ps / 1 ps

module dso_top
   (output [12:0] DDR3_addr,
    output [2:0] DDR3_ba,
    output DDR3_cas_n,
    output [0:0] DDR3_ck_n,
    output [0:0] DDR3_ck_p,
    output [0:0] DDR3_cke,
    output [0:0] DDR3_cs_n,
    output [3:0] DDR3_dm,
    inout [31:0] DDR3_dq,
    inout [3:0] DDR3_dqs_n,
    inout [3:0] DDR3_dqs_p,
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
    output [0:0] led,
    output sync,
    output [3:0] atten,
    output [3:0] dc_cpl,
    output [3:0] term,
    output i2c_sda,					
    output i2c_scl,				
    output pga_sdio,				
    output pga_sclk,				
    output [3:0] pga_cs,
    output adc_sdata,
    output adc_sclk,
    output adc_cs,
    output acq_en,
    output osc_oe,
    output fe_en,
    output probe_comp,
    input adc_lclk_p,
	input adc_lclk_n,
	input adc_fclk_p,
	input adc_fclk_n,
	input[7:0] adc_data_p,
	input[7:0] adc_data_n
    );
    
  wire [31:0]M00_AXI_0_araddr;
  wire [1:0]M00_AXI_0_arburst;
  wire [3:0]M00_AXI_0_arcache;
  wire [0:0]M00_AXI_0_arid;
  wire [7:0]M00_AXI_0_arlen;
  wire [0:0]M00_AXI_0_arlock;
  wire [2:0]M00_AXI_0_arprot;
  wire [3:0]M00_AXI_0_arqos;
  wire [0:0]M00_AXI_0_arready;
  wire [3:0]M00_AXI_0_arregion;
  wire [2:0]M00_AXI_0_arsize;
  wire [0:0]M00_AXI_0_arvalid;
  wire [31:0]M00_AXI_0_awaddr;
  wire [1:0]M00_AXI_0_awburst;
  wire [3:0]M00_AXI_0_awcache;
  wire [0:0]M00_AXI_0_awid;
  wire [7:0]M00_AXI_0_awlen;
  wire [0:0]M00_AXI_0_awlock;
  wire [2:0]M00_AXI_0_awprot;
  wire [3:0]M00_AXI_0_awqos;
  wire [0:0]M00_AXI_0_awready;
  wire [3:0]M00_AXI_0_awregion;
  wire [2:0]M00_AXI_0_awsize;
  wire [3:0]M00_AXI_0_awuser;
  wire [0:0]M00_AXI_0_awvalid;
  wire [0:0]M00_AXI_0_bid;
  wire [0:0]M00_AXI_0_bready;
  wire [1:0]M00_AXI_0_bresp;
  wire [0:0]M00_AXI_0_bvalid;
  wire [255:0]M00_AXI_0_rdata;
  wire [0:0]M00_AXI_0_rid;
  wire [0:0]M00_AXI_0_rlast;
  wire [0:0]M00_AXI_0_rready;
  wire [1:0]M00_AXI_0_rresp;
  wire [0:0]M00_AXI_0_rvalid;
  wire [255:0]M00_AXI_0_wdata;
  wire [0:0]M00_AXI_0_wlast;
  wire [0:0]M00_AXI_0_wready;
  wire [31:0]M00_AXI_0_wstrb;
  wire [0:0]M00_AXI_0_wvalid;
  
  wire [27:0]S_AXI_0_araddr;
  wire [1:0]S_AXI_0_arburst;
  wire [3:0]S_AXI_0_arcache;
  wire [0:0]S_AXI_0_arid;
  wire [7:0]S_AXI_0_arlen;
  wire S_AXI_0_arlock;
  wire [2:0]S_AXI_0_arprot;
  wire [3:0]S_AXI_0_arqos;
  wire S_AXI_0_arready;
  wire [2:0]S_AXI_0_arsize;
  wire S_AXI_0_arvalid;
  wire [27:0]S_AXI_0_awaddr;
  wire [1:0]S_AXI_0_awburst;
  wire [3:0]S_AXI_0_awcache;
  wire [0:0]S_AXI_0_awid;
  wire [7:0]S_AXI_0_awlen;
  wire S_AXI_0_awlock;
  wire [2:0]S_AXI_0_awprot;
  wire [3:0]S_AXI_0_awqos;
  wire S_AXI_0_awready;
  wire [2:0]S_AXI_0_awsize;
  wire S_AXI_0_awvalid;
  wire [0:0]S_AXI_0_bid;
  wire S_AXI_0_bready;
  wire [1:0]S_AXI_0_bresp;
  wire S_AXI_0_bvalid;
  wire [255:0]S_AXI_0_rdata;
  wire [0:0]S_AXI_0_rid;
  wire S_AXI_0_rlast;
  wire S_AXI_0_rready;
  wire [1:0]S_AXI_0_rresp;
  wire S_AXI_0_rvalid;
  wire [255:0]S_AXI_0_wdata;
  wire S_AXI_0_wlast;
  wire S_AXI_0_wready;
  wire [31:0]S_AXI_0_wstrb;
  wire S_AXI_0_wvalid;
  
  wire ui_clk_sync_rst_0;
  wire ui_clk_0;

  wire [31:0]AXI_STR_TXD_0_tdata;
  wire AXI_STR_TXD_0_tlast;
  wire AXI_STR_TXD_0_tready;
  wire AXI_STR_TXD_0_tvalid;
  
  wire S01_ARESETN;
  
  wire [71:0]S_AXIS_S2MM_CMD_tdata;
  wire S_AXIS_S2MM_CMD_tready;
  wire S_AXIS_S2MM_CMD_tvalid;
  wire [127:0]S_AXIS_S2MM_tdata;
  wire S_AXIS_S2MM_tready;
  wire S_AXIS_S2MM_tvalid;
  wire S_AXIS_S2MM_tlast;
  
  wire axi_aclk;
  wire axi_aresetn;
 
  wire [31:0]gpio2_io_i;
  wire [31:0]gpio_io_o_0;

  wire s2mm_err;
  wire s2mm_halt;
  wire s2mm_wr_xfer_cmplt;
  
  wire fe_sda_buf;
  wire fe_scl_buf;  
  
  wire divclk;
  wire[63:0] data_deser;
  reg[63:0] adc_data;	
  wire serdes_ready;
  
  wire init_calib_complete_0;
  
  assign term = gpio_io_o_0[15:12];
  assign atten = gpio_io_o_0[19:16];
  assign dc_cpl = gpio_io_o_0[23:20];
   
  assign led[0] = ~init_calib_complete_0;
  assign sync = S01_ARESETN;
  
  assign acq_en = gpio_io_o_0[24];
  assign osc_oe = gpio_io_o_0[25];
  assign fe_en = gpio_io_o_0[26];  
  
  assign i2c_sda = (i2c_sda_buf) ? (1'bz) : (1'b0);
  assign i2c_scl = (i2c_scl_buf) ? (1'bz) : (1'b0);

  reg[15:0] probe_div_counter;
  reg probe_div_clk = 1'b0;
  always @ (posedge axi_aclk) begin
      if (probe_div_counter==16'h1869) begin //devide 125MHz clk by 6250 per each period of 10kHz clock
          probe_div_counter <= 16'h0000;
          probe_div_clk <= ~probe_div_clk;
      end
      else 
          probe_div_counter <= probe_div_counter + 1'b1;
  end
  assign probe_comp = probe_div_clk;
  
  reg[63:0] data_deser_uninverted;
  always @(*) begin 
    data_deser_uninverted[63:56] <= {~data_deser[63:56]};
    data_deser_uninverted[55:48] <= {~data_deser[55:48]};
    data_deser_uninverted[47:40] <= {~data_deser[47:40]};
    data_deser_uninverted[39:32] <= {data_deser[39:32]};
    data_deser_uninverted[31:24] <= {~data_deser[31:24]};
    data_deser_uninverted[23:16] <= {~data_deser[23:16]};
    data_deser_uninverted[15:8] <= {data_deser[15:8]};
    data_deser_uninverted[7:0] <= {data_deser[6:0]};
  end
  
  wire[1:0] channel_mux;
  reg [2:0] channel_mux_cdc_0;
  reg [2:0] channel_mux_cdc_1;
  
  always @(posedge divclk) begin
    channel_mux_cdc_0 <= { channel_mux_cdc_0[1:0], gpio_io_o_0[4] };
    channel_mux_cdc_1 <= { channel_mux_cdc_1[1:0], gpio_io_o_0[5] };
  end
  
  assign channel_mux = {channel_mux_cdc_1[2],channel_mux_cdc_0[2]};
  
  always @(*)
    begin
        case(channel_mux)
            2'b00: adc_data <= {data_deser_uninverted[63:0]};
            2'b01: adc_data <= {data_deser_uninverted[63:56],data_deser_uninverted[31:24],data_deser_uninverted[55:48],data_deser_uninverted[23:16],data_deser_uninverted[47:40],data_deser_uninverted[15:8],data_deser_uninverted[39:32],data_deser_uninverted[7:0]};
            2'b10: adc_data <= {data_deser_uninverted[63:56],data_deser_uninverted[47:40],data_deser_uninverted[31:24],data_deser_uninverted[15:8],data_deser_uninverted[55:48],data_deser_uninverted[39:32],data_deser_uninverted[23:16],data_deser_uninverted[7:0]};		
            2'b11: adc_data <= {data_deser_uninverted[63:56],data_deser_uninverted[47:40],data_deser_uninverted[31:24],data_deser_uninverted[15:8],data_deser_uninverted[55:48],data_deser_uninverted[39:32],data_deser_uninverted[23:16],data_deser_uninverted[7:0]};
    endcase
  end
  
  /*  
  assign adc_data = data_deser_twos_comp;
  
  assign adc_data = {8'h77,8'h66,8'h55,8'h44,8'h33,8'h22,8'h11,8'h00};
  reg[7:0] adc_ramp_counter;
  always @(posedge divclk) begin
    if (!S01_ARESETN) 
        adc_ramp_counter <= 0;
    else
        adc_ramp_counter <= adc_ramp_counter + 1;
  end
  assign adc_data = {8{adc_ramp_counter}};
  */
  
  wire serdes_rst;
  reg [2:0] serdes_rst_cdc = 3'b111;
  always @(posedge divclk)
    serdes_rst_cdc <= { serdes_rst_cdc[1:0], !S01_ARESETN };
  assign serdes_rst = serdes_rst_cdc[2];

  serdes serdes (
	.rst            (serdes_rst),
	.adc_lclk_p		(adc_lclk_p),
	.adc_lclk_n		(adc_lclk_n),
	.adc_fclk_p		(adc_fclk_p),
	.adc_fclk_n		(adc_fclk_n),
	.adc_data_p		(adc_data_p),
	.adc_data_n		(adc_data_n),
	.axi_aclk       (axi_aclk),
	.divclk			(divclk),
	.data_deser		(data_deser),
	.ready          (serdes_ready)
	);

  adc_to_datamover adc_to_datamover (
    .axi_aclk(axi_aclk),
    .axi_aresetn(axi_aresetn),
    .S01_ARESETN(S01_ARESETN),
    .axis_cmd_tready(S_AXIS_S2MM_CMD_tready),
    .axis_cmd_tdata(S_AXIS_S2MM_CMD_tdata),
    .axis_cmd_tvalid(S_AXIS_S2MM_CMD_tvalid),
    .axis_data_tready(S_AXIS_S2MM_tready),
    .axis_data_tdata(S_AXIS_S2MM_tdata),
    .axis_data_tvalid(S_AXIS_S2MM_tvalid),
    .axis_data_tlast(S_AXIS_S2MM_tlast),
    .adc_data(adc_data),
    .adc_divclk(divclk),
    .s2mm_err(s2mm_err),
    .s2mm_halt(s2mm_halt),
    .s2mm_wr_xfer_cmplt(s2mm_wr_xfer_cmplt),
    .gpio_io_o_0(gpio_io_o_0),
    .gpio2_io_i(gpio2_io_i),
    .serdes_ready (serdes_ready)
  );
  
  serial_controller  serial_controller(
    .clk(axi_aclk),
    .rst(axi_aresetn),
    .AXI_STR_TXD_0_tdata(AXI_STR_TXD_0_tdata),
    .AXI_STR_TXD_0_tready(AXI_STR_TXD_0_tready),
    .AXI_STR_TXD_0_tvalid(AXI_STR_TXD_0_tvalid),
    .i2c_sda(i2c_sda_buf),
    .i2c_scl(i2c_scl_buf),
    .pga_sdio(pga_sdio),
    .pga_sclk(pga_sclk),
    .pga_cs(pga_cs),
    .adc_sdata(adc_sdata),
    .adc_sclk(adc_sclk),
    .adc_cs(adc_cs)
    );

  design_1 design_1_i
   (
    .AXI_STR_TXD_0_tdata(AXI_STR_TXD_0_tdata),
    .AXI_STR_TXD_0_tlast(AXI_STR_TXD_0_tlast),
    .AXI_STR_TXD_0_tready(AXI_STR_TXD_0_tready),
    .AXI_STR_TXD_0_tvalid(AXI_STR_TXD_0_tvalid),
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
    .S01_ARESETN(S01_ARESETN),
    .S_AXIS_S2MM_CMD_tdata(S_AXIS_S2MM_CMD_tdata),
    .S_AXIS_S2MM_CMD_tready(S_AXIS_S2MM_CMD_tready),
    .S_AXIS_S2MM_CMD_tvalid(S_AXIS_S2MM_CMD_tvalid),
    .S_AXIS_S2MM_tdata(S_AXIS_S2MM_tdata),
    .S_AXIS_S2MM_tkeep(16'hFFFF),
    .S_AXIS_S2MM_tready(S_AXIS_S2MM_tready),
    .S_AXIS_S2MM_tvalid(S_AXIS_S2MM_tvalid),
    .S_AXIS_S2MM_tlast(S_AXIS_S2MM_tlast),
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
    .s2mm_halt(s2mm_halt),
    .s2mm_wr_xfer_cmplt(s2mm_wr_xfer_cmplt),
    .S_AXI_0_araddr(S_AXI_0_araddr),
    .S_AXI_0_arburst(S_AXI_0_arburst),
    .S_AXI_0_arcache(S_AXI_0_arcache),
    .S_AXI_0_arid(S_AXI_0_arid),
    .S_AXI_0_arlen(S_AXI_0_arlen),
    .S_AXI_0_arlock(S_AXI_0_arlock),
    .S_AXI_0_arprot(S_AXI_0_arprot),
    .S_AXI_0_arqos(S_AXI_0_arqos),
    .S_AXI_0_arready(S_AXI_0_arready),
    .S_AXI_0_arsize(S_AXI_0_arsize),
    .S_AXI_0_arvalid(S_AXI_0_arvalid),
    .S_AXI_0_awaddr(S_AXI_0_awaddr),
    .S_AXI_0_awburst(S_AXI_0_awburst),
    .S_AXI_0_awcache(S_AXI_0_awcache),
    .S_AXI_0_awid(S_AXI_0_awid),
    .S_AXI_0_awlen(S_AXI_0_awlen),
    .S_AXI_0_awlock(S_AXI_0_awlock),
    .S_AXI_0_awprot(S_AXI_0_awprot),
    .S_AXI_0_awqos(S_AXI_0_awqos),
    .S_AXI_0_awready(S_AXI_0_awready),
    .S_AXI_0_awsize(S_AXI_0_awsize),
    .S_AXI_0_awvalid(S_AXI_0_awvalid),
    .S_AXI_0_bid(S_AXI_0_bid),
    .S_AXI_0_bready(S_AXI_0_bready),
    .S_AXI_0_bresp(S_AXI_0_bresp),
    .S_AXI_0_bvalid(S_AXI_0_bvalid),
    .S_AXI_0_rdata(S_AXI_0_rdata),
    .S_AXI_0_rid(S_AXI_0_rid),
    .S_AXI_0_rlast(S_AXI_0_rlast),
    .S_AXI_0_rready(S_AXI_0_rready),
    .S_AXI_0_rresp(S_AXI_0_rresp),
    .S_AXI_0_rvalid(S_AXI_0_rvalid),
    .S_AXI_0_wdata(S_AXI_0_wdata),
    .S_AXI_0_wlast(S_AXI_0_wlast),
    .S_AXI_0_wready(S_AXI_0_wready),
    .S_AXI_0_wstrb(S_AXI_0_wstrb),
    .S_AXI_0_wvalid(S_AXI_0_wvalid),
    .M00_AXI_0_araddr(M00_AXI_0_araddr),
    .M00_AXI_0_arburst(M00_AXI_0_arburst),
    .M00_AXI_0_arcache(M00_AXI_0_arcache),
    .M00_AXI_0_arid(M00_AXI_0_arid),
    .M00_AXI_0_arlen(M00_AXI_0_arlen),
    .M00_AXI_0_arlock(M00_AXI_0_arlock),
    .M00_AXI_0_arprot(M00_AXI_0_arprot),
    .M00_AXI_0_arqos(M00_AXI_0_arqos),
    .M00_AXI_0_arready(M00_AXI_0_arready),
    .M00_AXI_0_arregion(M00_AXI_0_arregion),
    .M00_AXI_0_arsize(M00_AXI_0_arsize),
    .M00_AXI_0_arvalid(M00_AXI_0_arvalid),
    .M00_AXI_0_awaddr(M00_AXI_0_awaddr),
    .M00_AXI_0_awburst(M00_AXI_0_awburst),
    .M00_AXI_0_awcache(M00_AXI_0_awcache),
    .M00_AXI_0_awid(M00_AXI_0_awid),
    .M00_AXI_0_awlen(M00_AXI_0_awlen),
    .M00_AXI_0_awlock(M00_AXI_0_awlock),
    .M00_AXI_0_awprot(M00_AXI_0_awprot),
    .M00_AXI_0_awqos(M00_AXI_0_awqos),
    .M00_AXI_0_awready(M00_AXI_0_awready),
    .M00_AXI_0_awregion(M00_AXI_0_awregion),
    .M00_AXI_0_awsize(M00_AXI_0_awsize),
    .M00_AXI_0_awuser(M00_AXI_0_awuser),
    .M00_AXI_0_awvalid(M00_AXI_0_awvalid),
    .M00_AXI_0_bid(M00_AXI_0_bid),
    .M00_AXI_0_bready(M00_AXI_0_bready),
    .M00_AXI_0_bresp(M00_AXI_0_bresp),
    .M00_AXI_0_bvalid(M00_AXI_0_bvalid),
    .M00_AXI_0_rdata(M00_AXI_0_rdata),
    .M00_AXI_0_rid(M00_AXI_0_rid),
    .M00_AXI_0_rlast(M00_AXI_0_rlast),
    .M00_AXI_0_rready(M00_AXI_0_rready),
    .M00_AXI_0_rresp(M00_AXI_0_rresp),
    .M00_AXI_0_rvalid(M00_AXI_0_rvalid),
    .M00_AXI_0_wdata(M00_AXI_0_wdata),
    .M00_AXI_0_wlast(M00_AXI_0_wlast),
    .M00_AXI_0_wready(M00_AXI_0_wready),
    .M00_AXI_0_wstrb(M00_AXI_0_wstrb),
    .M00_AXI_0_wvalid(M00_AXI_0_wvalid),
    .ui_clk_sync_rst_0(ui_clk_sync_rst_0),
    .ui_clk_0(ui_clk_0),
    .init_calib_complete_0(init_calib_complete_0)
    );
    
    axixclk axixclk
    (
    .S_AXI_ACLK(axi_aclk),
    .S_AXI_ARESETN(axi_aresetn),
    .S_AXI_AWID(M00_AXI_0_awid),
    .S_AXI_AWADDR(M00_AXI_0_awaddr),
    .S_AXI_AWLEN(M00_AXI_0_awlen),
    .S_AXI_AWSIZE(M00_AXI_0_awsize),
    .S_AXI_AWBURST(M00_AXI_0_awburst),
    .S_AXI_AWLOCK(M00_AXI_0_awlock),
    .S_AXI_AWCACHE(M00_AXI_0_awcache),
    .S_AXI_AWPROT(M00_AXI_0_awprot),
    .S_AXI_AWQOS(M00_AXI_0_awqos),
    .S_AXI_AWVALID(M00_AXI_0_awvalid),
    .S_AXI_AWREADY(M00_AXI_0_awready),
    .S_AXI_WDATA(M00_AXI_0_wdata),
    .S_AXI_WSTRB(M00_AXI_0_wstrb),
    .S_AXI_WLAST(M00_AXI_0_wlast),
    .S_AXI_WVALID(M00_AXI_0_wvalid),
    .S_AXI_WREADY(M00_AXI_0_wready),
    .S_AXI_BID(M00_AXI_0_bid),
    .S_AXI_BRESP(M00_AXI_0_bresp),
    .S_AXI_BVALID(M00_AXI_0_bvalid),
    .S_AXI_BREADY(M00_AXI_0_bready),
    .S_AXI_ARID(M00_AXI_0_arid),
    .S_AXI_ARADDR(M00_AXI_0_araddr),
    .S_AXI_ARLEN(M00_AXI_0_arlen),
    .S_AXI_ARSIZE(M00_AXI_0_arsize),
    .S_AXI_ARBURST(M00_AXI_0_arburst),
    .S_AXI_ARLOCK(M00_AXI_0_arlock),
    .S_AXI_ARCACHE(M00_AXI_0_arcache),
    .S_AXI_ARPROT(M00_AXI_0_arprot),
    .S_AXI_ARQOS(M00_AXI_0_arqos),
    .S_AXI_ARVALID(M00_AXI_0_arvalid),
    .S_AXI_ARREADY(M00_AXI_0_arready),
    .S_AXI_RID(M00_AXI_0_rid),
    .S_AXI_RDATA(M00_AXI_0_rdata),
    .S_AXI_RRESP(M00_AXI_0_rresp),
    .S_AXI_RLAST(M00_AXI_0_rlast),
    .S_AXI_RVALID(M00_AXI_0_rvalid),
    .S_AXI_RREADY(M00_AXI_0_rready),
    .M_AXI_ACLK(ui_clk_0),
    .M_AXI_ARESETN(~ui_clk_sync_rst_0),
    .M_AXI_AWID(S_AXI_0_awid),
    .M_AXI_AWADDR(S_AXI_0_awaddr),
    .M_AXI_AWLEN(S_AXI_0_awlen),
    .M_AXI_AWSIZE(S_AXI_0_awsize),
    .M_AXI_AWBURST(S_AXI_0_awburst),
    .M_AXI_AWLOCK(S_AXI_0_awlock),
    .M_AXI_AWCACHE(S_AXI_0_awcache),
    .M_AXI_AWPROT(S_AXI_0_awprot),
    .M_AXI_AWQOS(S_AXI_0_awqos),
    .M_AXI_AWVALID(S_AXI_0_awvalid),
    .M_AXI_AWREADY(S_AXI_0_awready),
    .M_AXI_WDATA(S_AXI_0_wdata),
    .M_AXI_WSTRB(S_AXI_0_wstrb),
    .M_AXI_WLAST(S_AXI_0_wlast),
    .M_AXI_WVALID(S_AXI_0_wvalid),
    .M_AXI_WREADY(S_AXI_0_wready),
    .M_AXI_BID(S_AXI_0_bid),
    .M_AXI_BRESP(S_AXI_0_bresp),
    .M_AXI_BVALID(S_AXI_0_bvalid),
    .M_AXI_BREADY(S_AXI_0_bready),
    .M_AXI_ARID(S_AXI_0_arid),
    .M_AXI_ARADDR(S_AXI_0_araddr),
    .M_AXI_ARLEN(S_AXI_0_arlen),
    .M_AXI_ARSIZE(S_AXI_0_arsize),
    .M_AXI_ARBURST(S_AXI_0_arburst),
    .M_AXI_ARLOCK(S_AXI_0_arlock),
    .M_AXI_ARCACHE(S_AXI_0_arcache),
    .M_AXI_ARPROT(S_AXI_0_arprot),
    .M_AXI_ARQOS(S_AXI_0_arqos),
    .M_AXI_ARVALID(S_AXI_0_arvalid),
    .M_AXI_ARREADY(S_AXI_0_arready),
    .M_AXI_RID(S_AXI_0_rid),
    .M_AXI_RDATA(S_AXI_0_rdata),
    .M_AXI_RRESP(S_AXI_0_rresp),
    .M_AXI_RLAST(S_AXI_0_rlast),
    .M_AXI_RVALID(S_AXI_0_rvalid),
    .M_AXI_RREADY(S_AXI_0_rready)
    );
        
endmodule