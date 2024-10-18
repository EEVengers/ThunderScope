git clone -b dev https://github.com/EEVengers/ts_litex_driver_linux.git
cd ts_litex_driver_linux/kernel
make
sudo ./init.sh
# Hacky, will remove when I sort out udev rules
sudo chmod 777 /dev/litepcie0
