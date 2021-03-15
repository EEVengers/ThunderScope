`timescale 1ns / 1ps

module adc_to_datamover(
    input axi_aclk,
    input axi_aresetn,
    output S01_ARESETN,
    input axis_cmd_tready,
    output[71:0] axis_cmd_tdata,
    output axis_cmd_tvalid,
    input axis_data_tready,
    output[127:0] axis_data_tdata,
    output axis_data_tvalid,
    input[63:0] adc_data_deser,
    input adc_divclk,
    input s2mm_err,
    output s2mm_halt,
    input s2mm_wr_xfer_cmplt,
    input[1:0] gpio_io_o_0,
    output[31:0] gpio2_io_i
    );

  wire fifo_full;
  wire fifo_empty;
  wire fifo_rd_en;
  wire[127:0] ch1_fifo_data;
//  wire[127:0] ch2_fifo_data;
//  wire[127:0] ch3_fifo_data;
//  wire[127:0] ch4_fifo_data;

  reg cmd_tvalid;
  reg [31:0] address;
  always @(posedge axi_aclk) begin
    cmd_tvalid <= 1;
    if (!S01_ARESETN) begin
        address <= 0;
        cmd_tvalid <= 0;
    end
    else if (axis_cmd_tready) begin
        address <= address + 13'h1000;
    end
  end

  assign axis_cmd_tvalid = cmd_tvalid;
  //Reserved[3:0], Tag[3:0], SADDR[31:0], DRE, EOF, DSA[3:0], Type, BTT[22:0]
  assign axis_cmd_tdata = {4'h0,4'h0,address,1'b0,1'b1,6'h00,1'b0,23'h001000};

  reg rd_en;
  reg data_tvalid;
  reg [15:0] data_counter;
  always @(posedge axi_aclk) begin
    data_tvalid <= ~fifo_empty;
    rd_en <= 1'b0;
    if (!S01_ARESETN) begin
        data_counter <= 0;
        data_tvalid <= 0;
    end
    else if (axis_data_tready & data_tvalid) begin
        rd_en <= 1'b1;
    end
  end

  assign axis_data_tvalid = data_tvalid;
  assign axis_data_tdata = {8{ch1_fifo_data}};
  assign fifo_rd_en = rd_en;
  //assign fifo_rd_en[3:1] = 3'b111;

  //Transfer Counter
  reg [15:0] transfer_counter;
  always @(posedge axi_aclk) begin
    if (!S01_ARESETN) begin
        transfer_counter <= 0;
    end
    else if (s2mm_wr_xfer_cmplt) begin
        transfer_counter <= transfer_counter + 1;
    end
  end

  //Status GPIOs
  assign gpio2_io_i = {s2mm_err,15'h0000,transfer_counter};
  assign S01_ARESETN = 1'b0; //(axi_aresetn & gpio_io_o_0[1]);
  //           0     =      0              0
  //           0     =      0              1
  //           0     =      1              0
  //           1     =      1              1
  assign s2mm_halt = 1'b1; //~gpio_io_o_0[0];

  fifo_generator_0 ch1_fifo (
   	.rst(~S01_ARESETN),
   	.wr_clk(adc_divclk),
   	.rd_clk(axi_aclk),
   	.din({~adc_data_deser[63:32],adc_data_deser[31:24],~adc_data_deser[23:0]}),
   	.wr_en(~fifo_full),	//add a state machine to deal with fifo full
   	.rd_en(fifo_rd_en),
   	.dout(ch1_fifo_data),
   	.full(fifo_full),
  	.empty(fifo_empty)
	);


//  fifo_generator_0 ch2_fifo (
//   	.rst(1'b0),
//   	.wr_clk(adc_divclk),
//   	.rd_clk(axi_aclk),
//   	.din({adc_data_deser[31:24],~adc_data_deser[23:16]}),
//   	.wr_en(~|fifo_full),	//add a state machine to deal with fifo full
//   	.rd_en(fifo_rd_en[1]),
//   	.dout(ch2_fifo_data),
//   	.full(fifo_full[1]),
//  	.empty(fifo_empty[1])
//	);

//  fifo_generator_0 ch3_fifo (
//   	.rst(1'b0),
//   	.wr_clk(adc_divclk),
//   	.rd_clk(axi_aclk),
//   	.din(~adc_data_deser[47:32]),
//   	.wr_en(~|fifo_full),	//add a state machine to deal with fifo full
//   	.rd_en(fifo_rd_en[2]),
//   	.dout(ch3_fifo_data),
//   	.full(fifo_full[2]),
//  	.empty(fifo_empty[2])
//	);

//  fifo_generator_0 ch4_fifo (
//   	.rst(1'b0),
//   	.wr_clk(adc_divclk),
//   	.rd_clk(axi_aclk),
//   	.din(~adc_data_deser[63:48]),
//   	.wr_en(~|fifo_full),	//add a state machine to deal with fifo full
//   	.rd_en(fifo_rd_en[3]),
//   	.dout(ch4_fifo_data),
//   	.full(fifo_full[3]),
//  	.empty(fifo_empty[3])
//	);

endmodule
