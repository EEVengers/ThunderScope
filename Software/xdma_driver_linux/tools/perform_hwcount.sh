#!/bin/bash

#rm hw_log_h2c.txt
#rm hw_log_c2h.txt
h2c=/dev/xdma0_h2c_0
c2h=/dev/xdma0_c2h_0
iter=1

out_h2c=hw_log_h2c.txt
out_c2h=hw_log_c2h.txt

byte=64
for ((j=0; j<=16; j++)) do
	echo "** HW H2C = $h2c bytecount = $byte and iteration = $iter" | tee -a $out_h2c
	./performance -d $h2c -c $iter -s $byte | tee -a $out_h2c
	byte=$(($byte*2))
done

byte=64
for ((j=0; j<=16; j++)) do
	echo "** HW C2H = $c2h bytecount = $byte and iteration = $iter" | tee -a $out_c2h
	./performance -d $c2h -c $iter -s $byte | tee -a  $out_c2h
	byte=$(($byte*2))
done
