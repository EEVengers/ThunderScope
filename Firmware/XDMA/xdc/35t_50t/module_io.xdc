#TS R4.1    FPGA Module R2
set_property -dict {PACKAGE_PIN U17 IOSTANDARD SSTL135} [get_ports led]
#JM1-96     JM1-95  LED         U17 [THIS IS BANK 14!]

set_property -dict {PACKAGE_PIN P6 IOSTANDARD LVCMOS33} [get_ports sync]
#JM1-94     JM1-93  SYNC        P6

set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS33} [get_ports spi_sdio]
#JM2-31     JM2-32  PGA_SDIO    L3
set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS33} [get_ports spi_sclk]
#JM2-33     JM2-34  PGA_SCLK    K2

set_property -dict {PACKAGE_PIN N1 IOSTANDARD LVCMOS33} [get_ports {pga_cs[3]}]
#JM2-43     JM2-44  PROBE_COMP  N1
set_property -dict {PACKAGE_PIN R3 IOSTANDARD LVCMOS33} [get_ports {pga_cs[2]}]
#JM2-53     JM2-54  PGA_CSn_3   R3
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS33} [get_ports {pga_cs[1]}]
#JM2-63     JM2-64  ATTEN_4     K1
set_property -dict {PACKAGE_PIN R6 IOSTANDARD LVCMOS33} [get_ports {pga_cs[0]}]
#JM2-68     JM2-67  ADC_PG      R6

set_property -dict {PACKAGE_PIN M1 IOSTANDARD LVCMOS33} [get_ports {atten[3]}]
#JM2-35     JM2-36  PGA_CSn_1   M1
set_property -dict {PACKAGE_PIN M5 IOSTANDARD LVCMOS33} [get_ports {atten[2]}]
#JM2-45     JM2-46  PGA_CSn_2   M5
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS33} [get_ports {atten[1]}]
#JM2-55     JM2-56  ATTEN_3     P1
set_property -dict {PACKAGE_PIN L4 IOSTANDARD LVCMOS33} [get_ports {atten[0]}]
#JM2-62     JM2-61  ADC_PD      L4

set_property -dict {PACKAGE_PIN N6 IOSTANDARD LVCMOS33} [get_ports {dc_cpl[3]}]
#JM2-37     JM2-38  ATTEN_1     N6
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports {dc_cpl[2]}]
#JM2-47     JM2-48  ATTEN_2     M2
set_property -dict {PACKAGE_PIN T2 IOSTANDARD LVCMOS33} [get_ports {dc_cpl[1]}]
#JM2-57     JM2-58  DC_CPL_3    T2
set_property -dict {PACKAGE_PIN M6 IOSTANDARD LVCMOS33} [get_ports {dc_cpl[0]}]
#JM2-64     JM2-63  ADC_RSTn    M6

set_property -dict {PACKAGE_PIN P3 IOSTANDARD LVCMOS33} [get_ports {term[3]}]
#JM2-41     JM2-42  DC_CPL_1    P3
set_property -dict {PACKAGE_PIN N2 IOSTANDARD LVCMOS33} [get_ports {term[2]}]
#JM2-51     JM2-52  DC_CPL_2    N2
set_property -dict {PACKAGE_PIN P5 IOSTANDARD LVCMOS33} [get_ports {term[1]}]
#JM2-61     JM2-62  PGA_CSn_4   P5
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports {term[0]}]
#JM2-66     JM2-65  ADC_CSn     J4

set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS33} [get_ports probe_comp]
#JM2-65    JM2-66  DC_CPL_4    K3

set_property -dict {PACKAGE_PIN N3 IOSTANDARD LVCMOS33} [get_ports osc_oe]
#JM2-48     JM2-47  OSC_OE      N3

set_property -dict {PACKAGE_PIN M4 IOSTANDARD LVCMOS33} [get_ports acq_en]
#JM2-52     JM2-51  ACQ_EN      M4

set_property -dict {PACKAGE_PIN K6 IOSTANDARD LVCMOS33} [get_ports fe_en]
#JM2-54     JM2-53  FE_EN       K6

set_property -dict {PACKAGE_PIN N4 IOSTANDARD LVCMOS33} [get_ports i2c_sda]
#JM2-56     JM2-55  SDA         N4
set_property -dict {PACKAGE_PIN K5 IOSTANDARD LVCMOS33} [get_ports i2c_scl]
#JM2-58     JM2-57  SCL         K5

set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS33} [get_ports adc_cs]
#JM2-46     JM2-45  FE_PG       J5

###############################################################################
# SPI
###############################################################################
set_property PACKAGE_PIN K16 [get_ports qspi_d0]
set_property PACKAGE_PIN L17 [get_ports qspi_d1]
set_property PACKAGE_PIN J15 [get_ports qspi_d2]
set_property PACKAGE_PIN J16 [get_ports qspi_d3]

set_property IOSTANDARD SSTL135 [get_ports qspi_d0]
set_property IOSTANDARD SSTL135 [get_ports qspi_d1]
set_property IOSTANDARD SSTL135 [get_ports qspi_d2]
set_property IOSTANDARD SSTL135 [get_ports qspi_d3]

set_property PACKAGE_PIN L15 [get_ports qspi_cs]
set_property IOSTANDARD SSTL135 [get_ports qspi_cs]

set_property INTERNAL_VREF 0.675 [get_iobanks 14]

#############################################################################################################
##ADC Differential I/O
#############################################################################################################

set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports adc_lclk_p]
set_property -dict {PACKAGE_PIN R1 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports adc_lclk_n]

set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports adc_fclk_p]
set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports adc_fclk_n]

##NOT INVERTED [7:0]
set_property -dict {PACKAGE_PIN U4 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_p[0]}]
set_property -dict {PACKAGE_PIN V4 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_n[0]}]

##NOT INVERTED [15:8]
set_property -dict {PACKAGE_PIN V3 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_p[1]}]
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_n[1]}]

##INVERTED [23:16]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_p[2]}]
set_property -dict {PACKAGE_PIN V6 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_n[2]}]

##INVERTED [31:24]
set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_p[3]}]
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_n[3]}]

##NOT INVERTED [39:32]
set_property -dict {PACKAGE_PIN R5 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_p[4]}]
set_property -dict {PACKAGE_PIN T5 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_n[4]}]

##INVERTED [47:40]
set_property -dict {PACKAGE_PIN T4 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_p[5]}]
set_property -dict {PACKAGE_PIN T3 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_n[5]}]

##INVERTED [55:48]
set_property -dict {PACKAGE_PIN U6 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_p[6]}]
set_property -dict {PACKAGE_PIN U5 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_n[6]}]

##INVERTED [63:56]
set_property -dict {PACKAGE_PIN R7 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_p[7]}]
set_property -dict {PACKAGE_PIN T7 IOSTANDARD LVDS_25 DIFF_TERM 0} [get_ports {adc_data_n[7]}]

############################################################################################################
# PCIe x4
############################################################################################################

# PCIe lane 0 / GTP 3
#set_property LOC GTPE2_CHANNEL_X0Y3 [get_cells {design_1_i/PCIe/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
set_property PACKAGE_PIN G3 [get_ports {pcie_mgt_rxn[0]}]
set_property PACKAGE_PIN G4 [get_ports {pcie_mgt_rxp[0]}]
set_property PACKAGE_PIN B1 [get_ports {pcie_mgt_txn[0]}]
set_property PACKAGE_PIN B2 [get_ports {pcie_mgt_txp[0]}]

# PCIe lane 1 / GTP 2
#set_property LOC GTPE2_CHANNEL_X0Y2 [get_cells {design_1_i/PCIe/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
set_property PACKAGE_PIN C3 [get_ports {pcie_mgt_rxn[1]}]
set_property PACKAGE_PIN C4 [get_ports {pcie_mgt_rxp[1]}]
set_property PACKAGE_PIN D1 [get_ports {pcie_mgt_txn[1]}]
set_property PACKAGE_PIN D2 [get_ports {pcie_mgt_txp[1]}]

# PCIe lane 2 / GTP 1
#set_property LOC GTPE2_CHANNEL_X0Y1 [get_cells {design_1_i/PCIe/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
set_property PACKAGE_PIN A3 [get_ports {pcie_mgt_rxn[2]}]
set_property PACKAGE_PIN A4 [get_ports {pcie_mgt_rxp[2]}]
set_property PACKAGE_PIN F1 [get_ports {pcie_mgt_txn[2]}]
set_property PACKAGE_PIN F2 [get_ports {pcie_mgt_txp[2]}]

# PCIe lane 3 / GTP 0
#set_property LOC GTPE2_CHANNEL_X0Y0 [get_cells {design_1_i/PCIe/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
set_property PACKAGE_PIN E3 [get_ports {pcie_mgt_rxn[3]}]
set_property PACKAGE_PIN E4 [get_ports {pcie_mgt_rxp[3]}]
set_property PACKAGE_PIN H1 [get_ports {pcie_mgt_txn[3]}]
set_property PACKAGE_PIN H2 [get_ports {pcie_mgt_txp[3]}]

# PCIe refclock
set_property PACKAGE_PIN B6 [get_ports {pcie_clk_p[0]}]
set_property PACKAGE_PIN B5 [get_ports {pcie_clk_n[0]}]

# PCIe PERSTn
set_property -dict {PACKAGE_PIN L2 IOSTANDARD LVCMOS33} [get_ports pcie_perstn]

############################################################################################################
# Clock
############################################################################################################
set_property -dict {PACKAGE_PIN P4 IOSTANDARD LVCMOS33} [get_ports ext_clk]

