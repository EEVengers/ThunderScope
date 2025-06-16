if cd ffts; then 
	git pull
else 
    git clone https://github.com/anthonix/ffts.git 
	cd ffts 
fi

mkdir build 
cd build 
cmake .. -DENABLE_SHARED=ON 
make -j4 
sudo make install 
cd ../..

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

