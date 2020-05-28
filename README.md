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

We are using React with TypeScript and Electron for our desktop app. The main dependency to be able to build and test it is Node.js, which includes npm. npm is a package manager for Node.js, which itself is a JavaScript runtime used by React. Installing Node.js is different for reach platform, go to:
```
nodejs.org
```
for platform specific instructions. These will always include installing npm as well.

Once you have Node.js and npm installed, you can:
```
cd DSO/Software/waveview
```
Then you will want to grab all the dependencies before you can actually do anything. Dependencies are not uploaded to git and must be grabbed individually by each person. Do to this simply use:
```
npm install
```
This will get everything and place it inside the node_modules folder.

We have two main scripts that you should use. For development work, use:
```
npm run electron-dev
```
This will open up the app in a dev environment, with hot reloading supported. The built in chrome dev tools have the react dev tools installed and your terminal will be watching the process, so all of the dev tools are at your disposal.

For distribution, we have:
```
npm run electron-build
```
This will make a distribution ready bundle suitable for your current platform. If you ever need to build another platform's bundle, contact Andrew.

Curious souls can go into the package.json file to see exactly what these scripts do, but careful.
Once you stare into the void, so too does the void stare into you.

The scopeview directory will now have a `build` and a `dist` folder. The `build` folder is environment specific and contains build information. The `dist` folder is where finished builds for the desired platforms will go.

These folders will naturally be environment specific and are quite large. In fact, **if you commit them to your branch, you will no longer be able to push your changes to GitHub.com**. Feel free to .gitignore them.

Useful Links: (list of bookmarks for Andrew's reference, can be ignored by everyone else but anyone curious enough can peruse)

[Getting Started with React and Electron](https://medium.com/@brockhoff/using-electron-with-react-the-basics-e93f9761f86f)

[More In-Depth Info About Preparing Distribution Ready JSON](https://getstream.io/blog/takeaways-on-building-a-react-based-app-with-electron/)

[Building React with Electron](https://medium.com/@kitze/%EF%B8%8F-from-react-to-an-electron-app-ready-for-production-a0468ecb1da3)

[N-API Link 1](https://medium.com/@tarkus/how-to-call-c-c-code-from-node-js-86a773033892)

[N-API Link 2](https://medium.com/@atulanand94/beginners-guide-to-writing-nodejs-addons-using-c-and-n-api-node-addon-api-9b3b718a9a7f)

[TypeScript + Electron](https://github.com/yhirose/react-typescript-electron-sample-with-create-react-app-and-electron-builder)
