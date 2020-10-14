# Flashing FTDI Chip

## Setup
Add Papilio loader and binaries to your path
```
export PATH=/home/alex/dev/DSO/Firmware/FPGA_Prog_Setup/Papilio-Loader:$PATH
export PATH=/home/alex/dev/Papilio-Loader/papilio-prog:$PATH
```

Check that the board is visible
```
lsusb

# Or look in dev for ttyUSB0 & ttyUSB1
ls /dev
```

Program the board
```
sudo papilio-prog -b /home/alex/dev/DSO/Firmware/FPGA_Prog_Setup/Papilio-Loader/bscan_spi.bit -f FT6_Write_Test.bit
```


## Blink Test
Program the board and check that the blue LEDs are counting up in binary
```
papilio-prog -b bscan_spi.bit -f blink_top.bit
```
