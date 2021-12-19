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
    input s2mm_err,
    output s2mm_halt,
    input s2mm_wr_xfer_cmplt,
    input[31:0] gpio_io_o_0,
    output[31:0] gpio2_io_i
    );

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
  assign new_sample = axis_data_tready;
  assign fifo_rd_en = new_sample;
  assign axis_data_tvalid = new_sample;
  
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
  
  assign axis_data_tdata = {16{data_counter}};

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
  assign gpio2_io_i = {s2mm_err,15'd0,transfer_counter};
  assign S01_ARESETN = (axi_aresetn & gpio_io_o_0[1]);
  assign s2mm_halt = ~gpio_io_o_0[0];

endmodule
