create_clock -period 10.000 -name {pcie_clk_p[0]} -waveform {0.000 5.000} [get_ports {pcie_clk_p[0]}]
#create_clock -period 2.000 -name {adc_lclk_p} -waveform {0.000 1.000} [get_ports {adc_lclk_p}]
