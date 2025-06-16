if cd libtslitex; then 
	git pull
else 
    git clone -b dev_updates https://github.com/EEVengers/libtslitex.git
	cd libtslitex
fi
mkdir build
cd build
cmake ..
cmake --build . --config=Release
#./artifacts/example/thunderscope_test io

