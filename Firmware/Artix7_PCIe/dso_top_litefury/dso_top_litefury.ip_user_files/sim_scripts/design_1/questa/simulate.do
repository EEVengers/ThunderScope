onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib design_1_opt

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

quit -force
