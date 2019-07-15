# The EEVengers Oscilliscope Project
Low-Cost Four Channel 1GSPS Oscilliscope using USB 3 Gen 2 (10Gbps) to stream data to PC for processing and display.
___
## Hardware
![Picture](DSO_Hardware/Block_Diagram.png?raw=true "Block Diagram")

### [Front End](DSO_Hardware/FE)
The analog front end of an oscilloscope should have an input impedance of 1MΩ in parallel with ~15pF. The front end must also take in *any* signal between *8 mV and 40 V peak to peak* and attuenuate or amplify it to fit the ADC's full-scale voltage (the max voltage it can read at its inputs), which for the HMCAD1511 ADC that we are using is software adjustable between 1.8 V to 2.2 V. 

#### Current Implementation
The front of the front end (FFE) has relay controlled attenuators for course attenuation control and a high impedence, low-noise opamp to provide some gain, since the PGA doesn't have the full 225 V/V gain to bring a 8 mV signal to 1.8V. The LMH6518 programmable gain amplifer (PGA) gives us finer gain control and adjustable anti-aliasing filters. To shift the signal and to cancel any DC offset, a DAC feeds a copy of the measured DC offset into the non-inverting terminal of the PGA. Four front ends are connected to a 4:1 adapter (FE Adaptor), bringing their differential outputs to the ADC and providing more outputs for the input relay control signals. 

#### Issues
1. The PGA output saturates at ~1V and can therefore not be used to drive the ADC to it's full-scale voltage.
2. Preamp is highly unstable when attenuators are switched in via relay

#### Next Steps
Since the ADC samples at 13 bits internally and provides a software configurable "digital gain", where instead of using the full resolution when downsampling, only a subset of the actual resolution is used to downsample to 8 bits. This degrades the performance of the ADC in exchange for gain that would otherwise have to be provided by the front end. By using 2.5x digital gain, the PGA may be used to drive the ADC without reaching saturation or needing additional amplification. 

The next step for the front end will be to design a JFET buffer with level shifting for the PGA, a good starting point would be the circuit shown in page 34 of the [LMH6518 Datasheet](http://www.ti.com/lit/ds/symlink/lmh6518.pdf). Then a new single board front end can be designed and tested with the PGA and buffer circuit. Once this front end is fully tested and working, a new front end design can be made with further emphasis on lowering BOM cost by replacing the LMH6518 with a discrete or opamp-based solution. 

### [ADC](DSO_Hardware/ADC) and PLL
The [HMCAD1511](https://www.analog.com/media/en/technical-documentation/data-sheets/hmcad1511.pdf) ADC converts the input signal to digital at a rate determined by the input clock. Currently, the clock will be provided externally until the PLL is designed and fitted on the ADC board. Current implementation is untested until ADC interface HDL is written for the FPGA.

#### Issues
1. Pulldown on CS pin should be a pullup
2. Pullup on PD pin should be a pulldown

### [Digital Interface](DSO_Hardware/Digital_Interface)
The 8 serial data pairs and 2 clocking pairs from the ADC are routed to the [Spartan-6](https://www.xilinx.com/products/silicon-devices/fpga/spartan-6.html#documentation) FPGA to be deserialized to a 32-bit parallel interface used by the [FT601](https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT600Q-FT601Q%20IC%20Datasheet.pdf) USB 3 controller IC. This IC then transfers the ADC data over to the PC for processing and display. The [FT2232H](https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT2232H.pdf), which uses USB 2, is connected through a USB hub and provides JTAG programming for the FPGA on channel A and an 8-bit parallel bus to communicate to the FPGA on channel B. Through logic on the FPGA, this 8-bit parallel bus can be used to send SPI and I2C data to the rest of the oscilliscope.

#### Issues
1. TMS & TDO are swapped (fixed on all dev units)
2. M1 configuration pin not connected to ground due to duplicate pin in symbol (1k pulldown installed on all dev units)

___
## Firmware
### Setup
To program the FPGA, use [papillio loader](http://www.papilio.cc/index.php?n=Papilio.PapilioLoaderV2) or [OpenOCD](http://openocd.org/). For Windows, papillio loader should be a smooth install, then use the GUI to upload to the FPGA. On Linux or Mac, build either one from source.

For OpenOCD:
Run `openocd -f xc6_openocd.cfg` in a folder with the cfg file, the bin file you wish to upload and the bscan bit file. 
Then open a new terminal tab and run `telnet 127.0.0.1 4444` 
In the new terminal tab, run:

```
init
jtagspi_init 0 bscan_spi_xc6slx4.bit    (or bscan_spi_xc6slx4_new.bit)
jtagspi_program blink_top.bin 0x0
fpga_program
shutdown
```

___
## Software
