
module serial_controller(
  input clk,
  input rst,
  input [31:0]AXI_STR_TXD_0_tdata,
  input AXI_STR_TXD_0_tvalid,
  output reg AXI_STR_TXD_0_tready,
  output i2c_sda,					
  output i2c_scl,				
  output reg pga_sdio,				
  output reg pga_sclk,				
  output reg[3:0] pga_cs,
  output reg adc_sdata,
  output reg adc_sclk,
  output reg adc_cs
  );


wire i2c_data_req, spi_data_req;
wire[7:0] fifo_rd_data;
assign fifo_rd_data = AXI_STR_TXD_0_tdata[7:0];

parameter[1:0]  IDLE = 2'b00,
				CONTROL_BYTE = 2'b01,
				TRANSMIT_WAIT = 2'b10,
				TRANSMIT = 2'b11;
					
reg[1:0] state = IDLE;
reg[2:0] mux_control;
reg en, spi_en, i2c_en;
reg sys_data_req;

always @(posedge clk) begin
	
	case (state)
		IDLE: 
			if (AXI_STR_TXD_0_tvalid) begin
				state <= CONTROL_BYTE;
				sys_data_req <= 1'b1;
			end
			else
				state <= IDLE;
		CONTROL_BYTE:
		    begin
				state <= TRANSMIT_WAIT;
				sys_data_req <= 1'b0;
				mux_control <= fifo_rd_data[2:0];
			end
		TRANSMIT_WAIT:
			if (AXI_STR_TXD_0_tvalid) begin
				state <= TRANSMIT;
				en <= 1'b1;
			end
			else
				state <= TRANSMIT_WAIT;
		TRANSMIT:
			if (spi_done | i2c_done) begin
				state <= IDLE;
				en <= 1'b0;
			end
			else
				state <= TRANSMIT;
	endcase
end
    
always @(*)
begin
	
	AXI_STR_TXD_0_tready = sys_data_req | i2c_data_req | spi_data_req;
	
	spi_en = (~&mux_control) ? (en) : (1'b0);
	i2c_en = (&mux_control) ? (en) : (1'b0);
	
	pga_sdio = (mux_control[2]) ? (1'b0) : (sdo);
	pga_sclk = (mux_control[2]) ? (1'b1) : (sclk);
	
	case(mux_control) // pga_cs demux
		3'b000: pga_cs = {cs,1'b1,1'b1,1'b1};
		3'b001: pga_cs = {1'b1,cs,1'b1,1'b1};
		3'b010: pga_cs = {1'b1,1'b1,cs,1'b1};		
		3'b011: pga_cs = {1'b1,1'b1,1'b1,cs};
		default: pga_cs = 4'b1111;
	endcase
	
	adc_sdata = (mux_control[2:1] == 2'b10) ? (sdo) : (1'b0);
	adc_sclk = (mux_control[2:1] == 2'b10) ? (sclk) : (1'b1);
	adc_cs = (mux_control[2:1] == 2'b10) ? (cs) : (1'b1);
	
	//TODO: Add program flash SPI muxes
	
end    
    
    I2C_Transmit 	I2C_Transmit( 
    .clk			(clk),
    .data			(fifo_rd_data),
    .data_ready		(AXI_STR_TXD_0_tvalid),
    .en				(i2c_en),
    .data_req		(i2c_data_req),
    .sda			(i2c_sda),
    .scl			(i2c_scl),
    .done			(i2c_done)
    );
    
    SPI_Transmit 	SPI_Transmit(
    .clk			(clk),
    .data			(fifo_rd_data),
    .data_ready		(AXI_STR_TXD_0_tvalid),
    .en				(spi_en),
    .data_req		(spi_data_req),
    .sdo			(sdo),
    .sclk			(sclk),
    .cs				(cs),
    .done			(spi_done)
    );
        
endmodule
