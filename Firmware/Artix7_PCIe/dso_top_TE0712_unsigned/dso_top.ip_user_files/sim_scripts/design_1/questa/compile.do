vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -sv "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/DDR3_Optimization/dso_top/dso_top.srcs/sources_1/bd/design_1/ip/design_1_xdma_0_0/design_1_xdma_0_0_sim_netlist.v" \
"c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/DDR3_Optimization/dso_top/dso_top.srcs/sources_1/bd/design_1/ip/design_1_util_ds_buf_0_0/design_1_util_ds_buf_0_0_sim_netlist.v" \
"c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/DDR3_Optimization/dso_top/dso_top.srcs/sources_1/bd/design_1/ip/design_1_util_vector_logic_0_0/design_1_util_vector_logic_0_0_sim_netlist.v" \
"c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/DDR3_Optimization/dso_top/dso_top.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0_sim_netlist.v" \
"c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/DDR3_Optimization/dso_top/dso_top.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_sim_netlist.v" \
"c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/DDR3_Optimization/dso_top/dso_top.srcs/sources_1/bd/design_1/ip/design_1_axi_datamover_0_0/design_1_axi_datamover_0_0_sim_netlist.v" \
"c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/DDR3_Optimization/dso_top/dso_top.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1_sim_netlist.v" \
"c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/DDR3_Optimization/dso_top/dso_top.srcs/sources_1/bd/design_1/ip/design_1_axi_fifo_mm_s_0_0/design_1_axi_fifo_mm_s_0_0_sim_netlist.v" \
"c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/DDR3_Optimization/dso_top/dso_top.srcs/sources_1/bd/design_1/ip/design_1_axi_dwidth_converter_0_0/design_1_axi_dwidth_converter_0_0_sim_netlist.v" \
"c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/DDR3_Optimization/dso_top/dso_top.srcs/sources_1/bd/design_1/ip/design_1_axi_crossbar_0_0/design_1_axi_crossbar_0_0_sim_netlist.v" \
"c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/DDR3_Optimization/dso_top/dso_top.srcs/sources_1/bd/design_1/ip/design_1_axi_crossbar_0_1/design_1_axi_crossbar_0_1_sim_netlist.v" \
"c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/DDR3_Optimization/dso_top/dso_top.srcs/sources_1/bd/design_1/ip/design_1_axi_clock_converter_0_0/design_1_axi_clock_converter_0_0_sim_netlist.v" \

vlog -work xil_defaultlib \
"glbl.v"

