git clone https://github.com/EEVengers/thunderscope_litex.git
cd thunderscope_litex

#https://adaptivesupport.amd.com/s/article/76585?language=en_US
sudo apt install libtinfo-dev
sudo ln -s /lib/x86_64-linux-gnu/libtinfo.so.6 /lib/x86_64-linux-gnu/libtinfo.so.5

source ~/Xilinx/Vivado/2024.1/settings64.sh 
export LITEX_ENV_VIVADO=~/Xilinx/Vivado/2024.1

if [ "$1" == "a50t" ]; then
	./thunderscope.py --variant=a50t --build --flash
elif [ "$1" == "a100t" ]; then
	./thunderscope.py --variant=a100t --build --flash
elif [ "$1" == "a200t" ]; then
	./thunderscope.py --variant=a200t --build --flash
else
	echo "Valid arguments are: a50t a100t a200t"
fi
