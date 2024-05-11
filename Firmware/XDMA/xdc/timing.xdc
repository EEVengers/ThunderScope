create_clock -period 2.000 -name adc_lclk_p -waveform {0.000 1.000} -add [get_ports adc_lclk_p]

create_clock -period 20.000 -name ext_clk_p -waveform {0.000 10.000} [get_ports ext_clk_p]

create_clock -period 10.000 -name {pcie_clk_p[0]} -waveform {0.000 5.000} [get_ports {pcie_clk_p[0]}]

set_clock_groups -asynchronous -group {adc_lclk_p divclk} -group {ext_clk_p clk_pll_i} -group {pcie_clk_p[0] txoutclk_x0y0 userclk2}
