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
    output axis_data_tlast,
    input[63:0] adc_data,
    input adc_divclk,
    input s2mm_err,
    output s2mm_halt,
    input s2mm_halt_cmplt,
    input s2mm_wr_xfer_cmplt,
    input[31:0] gpio_io_o_0,
    output[31:0] gpio2_io_i,
    input[31:0] gpio2_io_o_0,
    input serdes_ready,
    input ddr_ready
    );

  wire fifo_full;
  wire fifo_empty;
  wire fifo_valid;
  wire fifo_rd_en;
  wire[127:0] fifo_data;

  reg cmd_tvalid;
  reg [27:0] address;
  always @(posedge axi_aclk) begin
    cmd_tvalid <= 1;
    if (!S01_ARESETN) begin
        address <= 0;
        cmd_tvalid <= 0;
    end
    else if (axis_cmd_tready) begin
        address <= address + 16'h1000;
    end
  end

  assign axis_cmd_tvalid = cmd_tvalid;
  //Reserved[3:0], Tag[3:0], SADDR[31:0], DRE, EOF, DSA[3:0], Type, BTT[22:0]
  assign axis_cmd_tdata = {4'h0,4'h0,4'h0,address,1'b0,1'b1,6'h00,1'b1,23'h001000};
  
  wire new_sample;
  assign new_sample = axis_data_tready & ~fifo_empty;
  assign fifo_rd_en = new_sample;
  assign axis_data_tvalid = new_sample & fifo_valid;
  
  reg [7:0] data_counter;
  reg data_tlast;
  always @(posedge axi_aclk) begin
    if (!S01_ARESETN) begin
        data_counter <= 0;
    end
    else if (new_sample) begin
        data_counter <= data_counter + 1;
        data_tlast <= 0;
        if (data_counter==16'd254) begin
            data_tlast <= 1;
        end
    end
  end
  assign axis_data_tlast = data_tlast; 
  
  assign axis_data_tdata = {fifo_data[63:0],fifo_data[127:64]};

/*  always @(*)
    begin
        case(gpio_io_o_0[5:4]) // pga_cs demux
            2'b00: axis_data_tdata <= {fifo_data[63:0],fifo_data[127:64]};
            2'b01: axis_data_tdata <= {fifo_data[63:56],fifo_data[31:24],fifo_data[55:48],fifo_data[23:16],fifo_data[47:40],fifo_data[15:8],fifo_data[39:32],fifo_data[7:0],fifo_data[127:120],fifo_data[95:88],fifo_data[119:112],fifo_data[87:80],fifo_data[111:104],fifo_data[79:72],fifo_data[103:96],fifo_data[71:64]};
            2'b10: axis_data_tdata <= {fifo_data[63:56],fifo_data[47:40],fifo_data[31:24],fifo_data[15:8],fifo_data[55:48],fifo_data[39:32],fifo_data[23:16],fifo_data[7:0],fifo_data[127:120],fifo_data[111:104],fifo_data[95:88],fifo_data[79:72],fifo_data[119:112],fifo_data[103:96],fifo_data[87:80],fifo_data[71:64]};		
            2'b11: axis_data_tdata <= {fifo_data[63:56],fifo_data[47:40],fifo_data[31:24],fifo_data[15:8],fifo_data[55:48],fifo_data[39:32],fifo_data[23:16],fifo_data[7:0],fifo_data[127:120],fifo_data[111:104],fifo_data[95:88],fifo_data[79:72],fifo_data[119:112],fifo_data[103:96],fifo_data[87:80],fifo_data[71:64]};
    endcase
  end*/

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
  
  wire fifo_full_aclk;
  reg [2:0] fifo_full_cdc = 3'b000;
  always @(posedge axi_aclk)
    fifo_full_cdc <= { fifo_full_cdc[1:0], fifo_full};
  assign fifo_full_aclk = fifo_full_cdc[2];
  
  reg [10:0] fifo_full_counter;
  always @(posedge axi_aclk) begin
    if (!S01_ARESETN) begin
        fifo_full_counter <= 0;
    end
    else if (fifo_full) begin
        fifo_full_counter <= fifo_full_counter + 1;
    end
  end
  
  reg wraparound = 0;
  reg wraparound_overflow = 0;
  always @(posedge axi_aclk) begin
    if (!S01_ARESETN) begin
        wraparound <= 0;
        wraparound_overflow <= 0;
    end
    else if (gpio2_io_o_0[16]) begin
        wraparound <= 0;
    end
    else if (gpio2_io_o_0[17]) begin
        wraparound_overflow <= 0;
    end
    else if (address == 28'hFFFF000) begin
        wraparound <= 1;
        if (wraparound) begin
            wraparound_overflow <= 1;
        end
    end
  end

  //Status GPIOs
  assign gpio2_io_i = {s2mm_err,fifo_full_aclk,s2mm_halt_cmplt,fifo_full_counter,wraparound_overflow,wraparound,transfer_counter};
  assign S01_ARESETN = (axi_aresetn & gpio_io_o_0[1]);
  assign s2mm_halt = ~gpio_io_o_0[0];

  fifo_generator_0 adc_fifo (
   	.rst(~S01_ARESETN),
   	.wr_clk(adc_divclk),
   	.rd_clk(axi_aclk),
   	.din(adc_data),
   	.wr_en(serdes_ready & ddr_ready),	//add a state machine to deal with fifo full
   	.rd_en(fifo_rd_en),
   	.dout(fifo_data),
   	.full(fifo_full),
  	.empty(fifo_empty),
  	.valid(fifo_valid)
	);

endmodule
