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
cp libtslitex/build/artifacts/libtslitex/libtslitex.so TS.NET/build/TS.NET.Engine/linux-x64/libtslitex.so
cp libtslitex/build/artifacts/libtslitex/libtslitex.so TS.NET/build/TS.NET.Testbench.UI/linux-x64/libtslitex.so

