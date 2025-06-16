#TS.NET deps

add-apt-repository ppa:dotnet/backports
apt-get update && apt-get install -y dotnet-sdk-9.0

#ngscopeclient deps

apt install build-essential git cmake pkgconf libgtkmm-3.0-dev libcairomm-1.0-dev libsigc++-2.0-dev libyaml-cpp-dev catch2 libglfw3-dev curl xzip libhidapi-dev

#On Ubuntu 23.04 and later, you can instead use system-provided Vulkan packages: 
apt install libvulkan-dev glslang-dev glslang-tools spirv-tools glslc

#On Ubuntu 22.10 and earlier, you will need to use the Vulkan SDK.
#TODO: check to see if above line worked, else install SDK
