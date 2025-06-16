if cd ts_litex_driver_linux; then 
	git pull
else 
	git clone -b build_updates https://github.com/EEVengers/ts_litex_driver_linux.git
	cd ts_litex_driver_linux
fi
cd kernel
make
sudo ./init.sh
# Hacky, will remove when I sort out udev rules
sudo chmod 777 /dev/thunderscope*
