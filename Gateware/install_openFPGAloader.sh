sudo apt install git gzip libftdi1-2 libftdi1-dev libhidapi-hidraw0 libhidapi-dev libudev-dev zlib1g-dev cmake pkg-config make g++
git clone https://github.com/trabucayre/openFPGALoader
cd openFPGALoader
mkdir build
cd build
cmake ..
cmake --build .
sudo make install
cd ..
sudo cp 99-openfpgaloader.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && sudo udevadm trigger
sudo usermod -a $USER -G plugdev

