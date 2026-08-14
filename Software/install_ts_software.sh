#!/bin/bash

if [ "$1" = "build" ]; then

    if cd libtslitex; then 
        git pull
    else 
        git clone https://github.com/EEVengers/libtslitex.git
        cd libtslitex
    fi
    mkdir build
    cd build
    cmake ..
    cmake --build . --config=Release

    cd ../..

    if cd TS.NET; then 
        git pull
    else
        git clone https://github.com/EEVengers/TS.NET.git	
        cd TS.NET
    fi

    cd build-scripts/
    ./TS.NET.Engine.cs
    ./TS.NET.Testbench.UI.cs
    cd ../..
    cp libtslitex/build/artifacts/libtslitex/libtslitex.so.* TS.NET/build/TS.NET.Engine/linux-x64/libtslitex.so
    cp libtslitex/build/artifacts/libtslitex/libtslitex.so.* TS.NET/build/TS.NET.Testbench.UI/linux-x64/libtslitex.so

    if cd scopehal-apps; then 
        git pull
        git submodule update --recursive
    else 
        git clone --recursive https://github.com/ngscopeclient/scopehal-apps.git 
        cd scopehal-apps 
    fi

    mkdir build 
    cd build 
    cmake .. -DCMAKE_BUILD_TYPE=Release 
    make -j4

    cd ../..

    echo "sleep 1 && ./scopehal-apps/build/src/ngscopeclient/ngscopeclient ThunderScope:thunderscope:twinlan:localhost:5025:5026 &" > ThunderScope.sh
    echo "./TS.NET/build/TS.NET.Engine/linux-x64/TS.NET.Engine" >> ThunderScope.sh
    chmod +x ThunderScope.sh
    
else

wget https://github.com/EEVengers/libtslitex/releases/download/v0.1.0/libtslitex-ubuntu-latest-clang-artifacts.zip
unzip libtslitex-ubuntu-latest-clang-artifacts.zip -d libtslitex
rm libtslitex-ubuntu-latest-clang-artifacts.zip

wget https://github.com/EEVengers/TS.NET/releases/download/v0.1.0/TS.NET.Engine-linux-x64-v0.1.0.zip
unzip TS.NET.Engine-linux-x64-v0.1.0.zip -d TS.NET.Engine
rm TS.NET.Engine-linux-x64-v0.1.0.zip

wget https://github.com/EEVengers/TS.NET/releases/download/v0.1.0/TS.NET.Testbench.UI-linux-x64-v0.1.0.zip
unzip TS.NET.Testbench.UI-linux-x64-v0.1.0.zip -d TS.NET.Testbench.UI
rm TS.NET.Testbench.UI-linux-x64-v0.1.0.zip

cp libtslitex/libtslitex/libtslitex.so TS.NET.Engine/libtslitex.so
cp libtslitex/libtslitex/libtslitex.so TS.NET.Testbench.UI/libtslitex.so

if cd scopehal-apps; then 
    git pull
    git submodule update --recursive
else 
    git clone --recursive https://github.com/ngscopeclient/scopehal-apps.git 
    cd scopehal-apps 
fi

mkdir build 
cd build 
cmake .. -DCMAKE_BUILD_TYPE=Release 
make -j4

echo "sleep 1 && ./scopehal-apps/build/src/ngscopeclient/ngscopeclient ThunderScope:thunderscope:twinlan:localhost:5025:5026 &" > ThunderScope.sh
echo "./TS.NET.Engine/TS.NET.Engine" >> ThunderScope.sh
chmod +x ThunderScope.sh

fi
