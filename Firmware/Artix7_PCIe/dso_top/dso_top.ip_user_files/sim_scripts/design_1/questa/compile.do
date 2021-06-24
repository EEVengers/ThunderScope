vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/fifo_generator_v13_1_4
vlib questa_lib/msim/xdma_v4_1_6
vlib questa_lib/msim/util_vector_logic_v2_0_1
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_21
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/axi_data_fifo_v2_1_20
vlib questa_lib/msim/axi_crossbar_v2_1_22
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_fifo_v1_0_14
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/axi_datamover_v5_1_23
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_23
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_vip_v1_1_7
vlib questa_lib/msim/axi_fifo_mm_s_v4_2_3
vlib questa_lib/msim/axi_protocol_converter_v2_1_21
vlib questa_lib/msim/axi_clock_converter_v2_1_20
vlib questa_lib/msim/axi_dwidth_converter_v2_1_21

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap fifo_generator_v13_1_4 questa_lib/msim/fifo_generator_v13_1_4
vmap xdma_v4_1_6 questa_lib/msim/xdma_v4_1_6
vmap util_vector_logic_v2_0_1 questa_lib/msim/util_vector_logic_v2_0_1
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_21 questa_lib/msim/axi_register_slice_v2_1_21
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_20 questa_lib/msim/axi_data_fifo_v2_1_20
vmap axi_crossbar_v2_1_22 questa_lib/msim/axi_crossbar_v2_1_22
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_14 questa_lib/msim/lib_fifo_v1_0_14
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_23 questa_lib/msim/axi_datamover_v5_1_23
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_23 questa_lib/msim/axi_gpio_v2_0_23
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_vip_v1_1_7 questa_lib/msim/axi_vip_v1_1_7
vmap axi_fifo_mm_s_v4_2_3 questa_lib/msim/axi_fifo_mm_s_v4_2_3
vmap axi_protocol_converter_v2_1_21 questa_lib/msim/axi_protocol_converter_v2_1_21
vmap axi_clock_converter_v2_1_20 questa_lib/msim/axi_clock_converter_v2_1_20
vmap axi_dwidth_converter_v2_1_21 questa_lib/msim/axi_dwidth_converter_v2_1_21

vlog -work xilinx_vip  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_clock.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_eq.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_drp.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_rate.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_reset.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_sync.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gtp_pipe_rate.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gtp_pipe_drp.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gtp_pipe_reset.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_user.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_wrapper.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_qpll_drp.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_qpll_reset.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_qpll_wrapper.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_rxeq_scan.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_top.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_core_top.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_axi_basic_rx_null_gen.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_axi_basic_rx_pipeline.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_axi_basic_rx.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_axi_basic_top.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_axi_basic_tx_pipeline.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_axi_basic_tx_thrtl_ctl.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_axi_basic_tx.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_7x.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_bram_7x.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_bram_top_7x.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_brams_7x.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_pipe_lane.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_pipe_misc.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_pipe_pipeline.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gt_top.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gt_common.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gtp_cpllpd_ovrd.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gtx_cpllpd_ovrd.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gt_rx_valid_filter_7x.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gt_wrapper.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie2_top.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/sim/design_1_xdma_0_0_pcie2_ip.v" \

vlog -work blk_mem_gen_v8_4_4  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_1/sim/xdma_v4_1_6_blk_mem_64_reg_be.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_2/sim/xdma_v4_1_6_blk_mem_64_noreg_be.v" \

vlog -work fifo_generator_v13_1_4  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/e6d5/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4  -93 \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/e6d5/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/e6d5/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_3/sim/pcie2_fifo_generator_dma_cpl.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_4/sim/pcie2_fifo_generator_tgt_brdg.v" \

vlog -work xdma_v4_1_6  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/xdma_v4_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_dma_cpl.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_dma_req.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_rx_destraddler.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_rx_demux.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_tgt_cpl.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_tgt_req.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_tx_mux.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_axi_stream_intf.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_cfg_sideband.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_pcie2_to_pcie3_wrapper.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_dma_bram_wrap.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_dma_bram_wrap_1024.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_dma_bram_wrap_2048.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_core_top.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/sim/design_1_xdma_0_0.sv" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_util_ds_buf_0_0/util_ds_buf.vhd" \
"../../../bd/design_1/ip/design_1_util_ds_buf_0_0/sim/design_1_util_ds_buf_0_0.vhd" \

vlog -work util_vector_logic_v2_0_1  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/design_1_mig_7series_0_0_mig_sim.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/design_1_mig_7series_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vlog -work xlconstant_v1_1_7  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_2/sim/design_1_xlconstant_0_2.v" \

vlog -work generic_baseblocks_v2_1_0  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_21  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_20  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_22  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work lib_pkg_v1_0_2  -93 \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_14  -93 \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93 \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_23  -93 \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/af86/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_axi_datamover_0_0/sim/design_1_axi_datamover_0_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconstant_0_3/sim/design_1_xlconstant_0_3.v" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_23  -93 \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/bb35/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_1/sim/design_1_axi_gpio_0_1.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_1_0/sim/design_1_axi_gpio_1_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_48ac_one_0.v" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_48ac_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_48ac_arinsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_48ac_rinsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_48ac_awinsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_48ac_winsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_48ac_binsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_48ac_aroutsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_48ac_routsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_48ac_awoutsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_48ac_woutsw_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_48ac_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_48ac_arni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_48ac_rni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_48ac_awni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_48ac_wni_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_48ac_bni_0.sv" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/053f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_48ac_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_48ac_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/9d43/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_48ac_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_48ac_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_48ac_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_48ac_srn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_48ac_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_48ac_swn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_48ac_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_48ac_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_48ac_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_48ac_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_48ac_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_48ac_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_48ac_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/7af8/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_48ac_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_48ac_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_48ac_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_48ac_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_48ac_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_48ac_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_48ac_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_48ac_m01e_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_48ac_m02s2a_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_48ac_m02arn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_42/sim/bd_48ac_m02rn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_43/sim/bd_48ac_m02awn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_44/sim/bd_48ac_m02wn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_45/sim/bd_48ac_m02bn_0.sv" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/ip/ip_46/sim/bd_48ac_m02e_0.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/bd_0/sim/bd_48ac.v" \

vlog -work axi_vip_v1_1_7  -sv -L axi_vip_v1_1_7 -L smartconnect_v1_0 -L xdma_v4_1_6 -L xilinx_vip "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_smartconnect_0_0/sim/design_1_smartconnect_0_0.v" \

vcom -work axi_fifo_mm_s_v4_2_3  -93 \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/5bfc/hdl/axi_fifo_mm_s_v4_2_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ip/design_1_axi_fifo_mm_s_0_0/sim/design_1_axi_fifo_mm_s_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_21  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_20  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/7589/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_21  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/07be/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/b8f8/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/8b3d" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/2702/hdl/verilog" "+incdir+../../../../dso_top.srcs/sources_1/bd/design_1/ipshared/4676/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_us_df_0/sim/design_1_auto_us_df_0.v" \
"../../../bd/design_1/ip/design_1_auto_us_df_1/sim/design_1_auto_us_df_1.v" \
"../../../bd/design_1/ip/design_1_m00_data_fifo_0/sim/design_1_m00_data_fifo_0.v" \
"../../../bd/design_1/ip/design_1_auto_cc_0/sim/design_1_auto_cc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

