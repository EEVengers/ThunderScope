#Usage - Complies the Scope C project for MacOS currently and generates a program output to be used with the GUI Interface Program.

CC = gcc
CCFLAGS = -std=c++17 -o
CCFLAGS_debug = -std=c++17 -g -o 
CCFLAGS_fast = -std=c++17 -O2 -o
CCFLAGS_super_fast = -std=c++17 -O3 -o
soruce = main.cpp EVLibrary.cpp dataTransferHandler.cpp digitalProcessor.cpp EVMath.cpp EVSuperSpeedFIFOBridge.cpp EVTester.cpp
lib = -L/usr/local/lib -lftd3xx -lstdc++ -pthread -lm
lib_debug =
target = scope


all: gen

gen:
	${CC} ${CCFLAGS} ${target} ${soruce} ${lib}
	echo "Finished Making ${target}"

debug:
	${CC} ${CCFLAGS_debug} ${target} ${soruce} ${lib}
	@echo "Made Debug"

fast:
	${CC} ${CCFLAGS_fast} ${target} ${soruce} ${lib}
	@echo "Made Fast"

super_fast:
	${CC} ${CCFLAGS_super_fast} ${target} ${soruce} ${lib}
	@echo "Made Supra Fast"

clean:
	rm ${target}
	@echo "Cleaned This Mess"
