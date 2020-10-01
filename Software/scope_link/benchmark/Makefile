CC=g++
BINARIES=benchmarkTrigger
GCC_MISSED=-O3 -fopt-info-vec-missed
GCC_VECT=-O3 -fopt-info-loop-optimized
GCC_BENCH=-std=c++11 -isystem benchmark/include -Lbenchmark/build/src -lbenchmark -lpthread

benchmarkTrigger: benchmarkTrigger.cpp
		${CC} ${GCC_MISSED}=benchmarkTrigger.miss benchmarkTrigger.cpp ${GCC_BENCH} -o benchmarkTrigger
		${CC} ${GCC_VECT}=benchmarkTrigger.opt benchmarkTrigger.cpp ${GCC_BENCH} -o benchmarkTrigger
		cat benchmarkTrigger.opt

run:	
		./benchmarkTrigger
		cat benchmarkTrigger.miss
		objdump -d benchmarkTrigger > objdump_benchmarkTrigger.txt

miss:
		cat *.miss

opt:
		cat *.opt

clean:	
		rm ${BINARIES} *.miss *.opt *txt || true

