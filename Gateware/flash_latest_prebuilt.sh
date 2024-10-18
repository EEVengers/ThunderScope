mkdir prebuilt_bitstreams
cd prebuilt_bitstreams
wget https://github.com/EEVengers/thunderscope_litex/releases/download/beta_2-0fd27d5b/thunderscope_a100t.bin -O thunderscope_a100t.bin
wget https://github.com/EEVengers/thunderscope_litex/releases/download/beta_2-0fd27d5b/thunderscope_a100t.bit -O thunderscope_a100t.bit
wget https://github.com/EEVengers/thunderscope_litex/releases/download/beta_2-0fd27d5b/thunderscope_a200t.bin -O thunderscope_a200t.bin
wget https://github.com/EEVengers/thunderscope_litex/releases/download/beta_2-0fd27d5b/thunderscope_a200t.bit -O thunderscope_a200t.bit
wget https://github.com/EEVengers/thunderscope_litex/releases/download/beta_2-0fd27d5b/thunderscope_a50t.bin -O thunderscope_a50t.bin
wget https://github.com/EEVengers/thunderscope_litex/releases/download/beta_2-0fd27d5b/thunderscope_a50t.bit -O thunderscope_a50t.bit

if [ "$1" == "a50t" ]; then
	openFPGALoader --fpga-part xc7a50tcsg324 -f -c digilent_hs2 thunderscope_a50.bit
elif [ "$1" == "a100t" ]; then
	openFPGALoader --fpga-part xc7a100tfgg484 -f -c digilent_hs2 thunderscope_a100.bit
elif [ "$1" == "a100t" ]; then
	openFPGALoader --fpga-part xc7a200tfbg484 -f -c digilent_hs2 thunderscope_a200.bit
else
	echo "Valid arguments are: a50t a100t a200t"
fi

