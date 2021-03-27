`timescale 1ns / 1ps

module datamover_traffic_gen(
    input S_AXIS_S2MM_CMD_tready,
    input S_AXIS_S2MM_tready,
    input axi_aclk,
    input axi_aresetn,
    input s2mm_err,
    input s2mm_wr_xfer_cmplt,
    input[1:0] gpio_io_o_0,
    output S01_ARESETN,
    output[71:0] S_AXIS_S2MM_CMD_tdata,
    output S_AXIS_S2MM_CMD_tvalid,
    output[127:0] S_AXIS_S2MM_tdata,
    output S_AXIS_S2MM_tvalid,
    output s2mm_halt,
    output[31:0] gpio2_io_i
    );
    
  reg cmd_tvalid;
  reg [31:0] address;
  always @(posedge axi_aclk) begin
    cmd_tvalid <= 1;
    if (!S01_ARESETN) begin
        address <= 0;
        cmd_tvalid <= 0;
    end
    else if (S_AXIS_S2MM_CMD_tready) begin
        address <= address + 13'h1000;
    end
  end
  
  assign S_AXIS_S2MM_CMD_tvalid = cmd_tvalid;
  //Reserved[3:0], Tag[3:0], SADDR[31:0], DRE, EOF, DSA[3:0], Type, BTT[22:0]
  assign S_AXIS_S2MM_CMD_tdata = {4'h0,4'h0,address,1'b0,1'b1,6'h00,1'b0,23'h001000};
  
  reg data_tvalid;
  reg [15:0] data_counter;
  always @(posedge axi_aclk) begin
    data_tvalid <= 1;
    if (!S01_ARESETN) begin
        data_counter <= 0;
        data_tvalid <= 0;
    end
    else if (S_AXIS_S2MM_tready) begin
        data_counter <= data_counter + 1;
    end
  end
  
  assign S_AXIS_S2MM_tvalid = data_tvalid;
  assign S_AXIS_S2MM_tdata = {8{data_counter}};
  
  reg [15:0] transfer_counter;
  always @(posedge axi_aclk) begin
    if (!S01_ARESETN) begin
        transfer_counter <= 0;
    end
    else if (s2mm_wr_xfer_cmplt) begin
        transfer_counter <= transfer_counter + 1;
    end
  end
  
  assign gpio2_io_i = {s2mm_err,15'h0000,transfer_counter};
  assign S01_ARESETN = 1'b0;//(axi_aresetn & gpio_io_o_0[1]);
  //              0         0           0
  //              0         0           1
  //              0         1           0
  //              1         1           1
  assign s2mm_halt = 1'b1;//~gpio_io_o_0[0];
    
endmodule
