sudo apt install build-essential git cmake pkgconf libgtkmm-3.0-dev libcairomm-1.0-dev libsigc++-2.0-dev libyaml-cpp-dev catch2 libglfw3-dev curl xzip
#On Ubuntu 23.04 and later, you can instead use system-provided Vulkan packages: 
sudo apt-get install libvulkan-dev glslang-dev glslang-tools spirv-tools glslc
#On Ubuntu 22.10 and earlier, you will need to use the Vulkan SDK.
#TODO: check to see if above line worked, else install SDK
cd ~ 
git clone https://github.com/anthonix/ffts.git 
cd ffts 
mkdir build 
cd build 
cmake .. -DENABLE_SHARED=ON 
make -j4 
sudo make install
cd ~ 
git clone --recursive https://github.com/ngscopeclient/scopehal-apps.git 
cd scopehal-apps 
mkdir build 
cd build 
cmake .. -DCMAKE_BUILD_TYPE=Release 
make -j4

