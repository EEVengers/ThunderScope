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
jtagspi_init 0 bscan_spi_xc6slx4.bit    (or bscan_spi_xc6slx4_OLD.bit)
jtagspi_program blink_top.bin 0x0
fpga_program
shutdown
```

___
## Software

### WIP
Andrew: Writing this late, it might be complete but this is my disclaimer in case I happen to have forgotten something, this will be removed when I'm certain the instructions below are sufficient.

We are using React and Electron for our desktop app. The main dependency to be able to build and test it is npm. This is a package manager for Node.js, which itself is a JavaScript runtime used by React. Installing npm is different for reach platform, `npmjs.com` will have platform specific instructions. These will always include installing Node.js as well.

Once you have npm installed, you can:
```
cd EEVengers/DSO_Software/scopeview
```
Then use:
```
npm run start
```
After you see the app start up in your browser, use:
```
npm run electron-start
```
This should display the app in its own Electron window.

Curious souls can go into the package.json file to see exactly what these scripts do.

The `electron-dev` command is a WIP script which aims to wait for React to start, not open it in your browser and instead only open it in an Electron instance. This will be much more dev friendly.

If you want to build for distribution run:
```
npm run electron-pack
```
This will build the application for Linux, Mac and Windows. This is a single command that runs `electron-builder -lmw` for you. You can confirm this in package.json as well. If you want to build only for your platform in order to test for development, and save time instead of building all three, you can manually use:
```
electron-builder
```
This will build for your current platform.

The scopeview directory has a `build` and a `dist` folder. The `build` folder is environment specific and contains build information. The `dist` folder is where finished builds for the desired platforms will go.

These folders will naturally be environment specific and are quite large. In fact, **if you commit them to your branch, you will no longer be able to push your changes to GitHub.com**. Delete them before you commit, you can always generate them again next time you run the commands above. We should discuss possibly .gitignore-ing them.
