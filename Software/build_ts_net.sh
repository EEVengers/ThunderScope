sudo apt-get install -y dotnet-sdk-8.0

if cd TS.NET; then 
	git pull
else 
    git clone https://github.com/EEVengers/TS.NET.git
	cd TS.NET
fi

cd build-scripts/
./TS.NET.Engine\ \(linux-x64\).bash
cd ../..
cp libtslitex/build/artifacts/libtslitex/libtslitex.so TS.NET/builds/linux-x64/TS.NET.Engine/0.1.0/libtslitex.so
cd TS.NET/builds/linux-x64/TS.NET.Engine/0.1.0/
sed -i -e 's/HardwareDriver: XDMA/HardwareDriver: LiteX/g' thunderscope.yaml
#./TS.NET.Engine


