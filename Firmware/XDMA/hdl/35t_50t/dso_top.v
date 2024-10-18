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
    output led,
    output sync,
    output [3:0] atten,
    output [3:0] dc_cpl,
    output [3:0] term,
    output i2c_sda,					
    output i2c_scl,				
    output spi_sdio,				
    output spi_sclk,				
    output [3:0] pga_cs,
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
    input[7:0] adc_data_n,
    input Vp_Vn_0_v_n,
    input Vp_Vn_0_v_p,
    inout qspi_d0,
    inout qspi_d1,
    inout qspi_d2,
    inout qspi_d3,
    output qspi_cs,
    input ext_clk
    );

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
  wire s2mm_halt_cmplt;
  wire s2mm_wr_xfer_cmplt;
  
  wire fe_sda_buf;
  wire fe_scl_buf;  
  
  wire divclk;
  wire[63:0] data_deser;
  reg[63:0] adc_data;	
  wire serdes_ready;
  
  wire spi_rtl_0_io0_i;
  wire spi_rtl_0_io0_io;
  wire spi_rtl_0_io0_o;
  wire spi_rtl_0_io0_t;
  wire spi_rtl_0_io1_i;
  wire spi_rtl_0_io1_io;
  wire spi_rtl_0_io1_o;
  wire spi_rtl_0_io1_t;
  wire spi_rtl_0_io2_i;
  wire spi_rtl_0_io2_io;
  wire spi_rtl_0_io2_o;
  wire spi_rtl_0_io2_t;
  wire spi_rtl_0_io3_i;
  wire spi_rtl_0_io3_io;
  wire spi_rtl_0_io3_o;
  wire spi_rtl_0_io3_t;
  wire ss_o_0;
  
  wire init_calib_complete_0;
  
  assign term = gpio_io_o_0[15:12];
  assign atten = gpio_io_o_0[19:16];
  assign dc_cpl = ~gpio_io_o_0[23:20];
   
  assign led = serdes_ready & init_calib_complete_0;
  //assign sync = S01_ARESETN;
  
  assign acq_en = gpio_io_o_0[24];
  assign osc_oe = gpio_io_o_0[25];
  assign fe_en = gpio_io_o_0[26];  
  
  assign i2c_sda = (i2c_sda_buf) ? (1'bz) : (1'b0);
  assign i2c_scl = (i2c_scl_buf) ? (1'bz) : (1'b0);
  
  assign qspi_cs = (ss_o_0) ? (1'bz) : (1'b0);

  reg[15:0] sync_counter;
  reg sync_clk = 1'b0;
  always @ (posedge divclk) begin
      if (sync_counter==16'h1869) begin //devide 125MHz clk by 6250 per each period of 10kHz clock
          sync_counter <= 16'h0000;
          sync_clk <= ~sync_clk;
      end
      else 
          sync_counter <= sync_counter + 1'b1;
  end
  assign sync = sync_clk;
  
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
  
  reg[63:0] twos_comp;
  always @(*) begin 
    twos_comp[63:56] <= {data_deser[63],~data_deser[62:56]};
    twos_comp[55:48] <= {data_deser[55],~data_deser[54:48]};
    twos_comp[47:40] <= {data_deser[47],~data_deser[46:40]};
    twos_comp[39:32] <= {~data_deser[39],data_deser[38:32]}; //not inverted
    twos_comp[31:24] <= {data_deser[31],~data_deser[30:24]};
    twos_comp[23:16] <= {data_deser[23],~data_deser[22:16]}; 
    twos_comp[15:8] <= {~data_deser[15],data_deser[14:8]}; //not inverted
    twos_comp[7:0] <= {~data_deser[7],data_deser[6:0]}; //not inverted
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
            2'b00: adc_data <= {twos_comp[63:0]};
            2'b01: adc_data <= {twos_comp[63:56],twos_comp[31:24],twos_comp[55:48],twos_comp[23:16],twos_comp[47:40],twos_comp[15:8],twos_comp[39:32],twos_comp[7:0]};
            2'b10: adc_data <= {twos_comp[63:56],twos_comp[47:40],twos_comp[31:24],twos_comp[15:8],twos_comp[55:48],twos_comp[39:32],twos_comp[23:16],twos_comp[7:0]};		
            2'b11: adc_data <= {twos_comp[63:56],twos_comp[47:40],twos_comp[31:24],twos_comp[15:8],twos_comp[55:48],twos_comp[39:32],twos_comp[23:16],twos_comp[7:0]};
    endcase
  end
  
  /*
  assign adc_data = data_deser_twos_comp;
  
  assign adc_data = {8'h77,8'h66,8'h55,8'h44,8'h33,8'h22,8'h11,8'h00};
  
  reg[7:0] adc_ramp_counter;
  always @(posedge axi_aclk) begin
    if (!S01_ARESETN) 
        adc_ramp_counter <= 0;
    else
        adc_ramp_counter <= adc_ramp_counter + 1;
  end
  always @(*) begin
    adc_data <= {8{adc_ramp_counter}};
  end
  
  */
  
  wire serdes_rst;
  reg [2:0] serdes_rst_cdc = 3'b111;
  always @(posedge divclk)
    serdes_rst_cdc <= { serdes_rst_cdc[1:0], ~gpio_io_o_0[2] }; //gpio_io_o_0[2] is SERDES RSTn
  assign serdes_rst = serdes_rst_cdc[2];

  wire ddr_ready;
  reg [2:0] ddr_ready_cdc = 3'b000;
  always @(posedge divclk)
    ddr_ready_cdc <= { ddr_ready_cdc[1:0], init_calib_complete_0};
  assign ddr_ready = ddr_ready_cdc[2];

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
    .s2mm_halt_cmplt(s2mm_halt_cmplt),
    .s2mm_wr_xfer_cmplt(s2mm_wr_xfer_cmplt),
    .gpio_io_o_0(gpio_io_o_0),
    .gpio2_io_i(gpio2_io_i),
    .gpio2_io_o_0(gpio2_io_o_0),
    .serdes_ready (serdes_ready),
    .ddr_ready(ddr_ready)
  );
  
  serial_controller  serial_controller(
    .clk(axi_aclk),
    .rst(axi_aresetn),
    .AXI_STR_TXD_0_tdata(AXI_STR_TXD_0_tdata),
    .AXI_STR_TXD_0_tready(AXI_STR_TXD_0_tready),
    .AXI_STR_TXD_0_tvalid(AXI_STR_TXD_0_tvalid),
    .i2c_sda(i2c_sda_buf),
    .i2c_scl(i2c_scl_buf),
    .spi_sdio(spi_sdio),
    .spi_sclk(spi_sclk),
    .pga_cs(pga_cs),
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
    .gpio2_io_o_0(gpio2_io_o_0),
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
    .s2mm_halt_cmplt(s2mm_halt_cmplt),
    .s2mm_wr_xfer_cmplt(s2mm_wr_xfer_cmplt),
    .Vp_Vn_0_v_n(Vp_Vn_0_v_n),
    .Vp_Vn_0_v_p(Vp_Vn_0_v_p),
    .SPI_0_0_io0_i(spi_rtl_0_io0_i),
    .SPI_0_0_io0_o(spi_rtl_0_io0_o),
    .SPI_0_0_io0_t(spi_rtl_0_io0_t),
    .SPI_0_0_io1_i(spi_rtl_0_io1_i),
    .SPI_0_0_io1_o(spi_rtl_0_io1_o),
    .SPI_0_0_io1_t(spi_rtl_0_io1_t),
    .SPI_0_0_io2_i(spi_rtl_0_io2_i),
    .SPI_0_0_io2_o(spi_rtl_0_io2_o),
    .SPI_0_0_io2_t(spi_rtl_0_io2_t),
    .SPI_0_0_io3_i(spi_rtl_0_io3_i),
    .SPI_0_0_io3_o(spi_rtl_0_io3_o),
    .SPI_0_0_io3_t(spi_rtl_0_io3_t),
    .SPI_0_0_ss_t(),
    .ss_o_0(ss_o_0),
    .init_calib_complete_0(init_calib_complete_0),
    .ext_clk(ext_clk)
    );
        
IOBUF spi_rtl_0_io0_iobuf
    (.I(spi_rtl_0_io0_o),
    .IO(qspi_d0),
    .O(spi_rtl_0_io0_i),
    .T(spi_rtl_0_io0_t));
IOBUF spi_rtl_0_io1_iobuf
    (.I(spi_rtl_0_io1_o),
    .IO(qspi_d1),
    .O(spi_rtl_0_io1_i),
    .T(spi_rtl_0_io1_t));
IOBUF spi_rtl_0_io2_iobuf
    (.I(spi_rtl_0_io2_o),
    .IO(qspi_d2),
    .O(spi_rtl_0_io2_i),
    .T(spi_rtl_0_io2_t));
IOBUF spi_rtl_0_io3_iobuf
    (.I(spi_rtl_0_io3_o),
    .IO(qspi_d3),
    .O(spi_rtl_0_io3_i),
    .T(spi_rtl_0_io3_t));

endmodule