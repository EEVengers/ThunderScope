# openocd-xilinx-loader

Some Python scripts to program Xilinx FPGAs using OpenOCD.

**NOTE:** Since the bugs in OpenOCD that caused me to write the `load_fpga.py`
script are now fixed, you should use the native OpenOCD support for Xilinx
FPGAs instead--it's much faster and also supports 7-series devices. For
example:

```
$ openocd -f <interface config> -f cpld/xilinx-xc6s.cfg -c "init; xc6s_program xc6s.tap; pld load 0 bitstream.bit; exit"
```

## Requirements

- OpenOCD
- Python 3

## Usage

```bash
$ ./load_fpga.py your_bitstream.bit
$ ./get_status.py
```

## Limitations

- Currently only works with Spartan-6 devices.
