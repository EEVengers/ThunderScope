# ThunderScope
Low-Cost Four Channel 1GSPS Oscilliscope using Thunderbolt/USB4 to stream data to PC for processing and display. 

Join our [development discord server](https://discord.com/invite/pds7k3WrpK)

We are now at #thunderscope:matrix.org on matrix or #thunderscope:libera.chat on IRC as well!

Some older long-form documentation is on the [Hackaday.io project page](https://hackaday.io/project/180090-thunderscope)

Get the hardware through our [crowdsupply page](https://www.crowdsupply.com/eevengers/thunderscope) when we launch: 

Catch up with these videos on the project: 

[TEARDOWN 2023 - Open Sourcing the Secrets of Oscilloscope Design](https://www.youtube.com/watch?v=58P7UrNaYS4)

[Hackaday Supercon 2023 - A Circuit to Measure Circuits: How do Oscilloscopes do it?](https://www.youtube.com/watch?v=6kINL2e2XGs)

[Teardown Session 39: ThunderScope](https://www.youtube.com/watch?v=HIrENqQAbHI)



## Quick Start Guide 

These are instructions for the XDMA gateware, which is currently the most stable gateware and driver.

1. Install the XDMA driver for [Linux](https://github.com/EEVengers/ThunderScope/tree/master/Software/xdma_driver_linux) or [Windows](https://github.com/EEVengers/ThunderScope/tree/master/Software/xdma_driver_win_src_2018_2)
   - On Windows, first run `Bcdedit.exe -set TESTSIGNING ON` in administrator powershell and restart your computer
      - Then use the [MSI installer](https://github.com/EEVengers/ThunderScope/blob/master/Software/xdma_driver_win_src_2018_2/Installers/Win10_x64_Release/XDMADriverInstaller.msi), when asked if you want to use polling, click no
   - On Linux, run `sudo make install` in the [xdma](https://github.com/EEVengers/ThunderScope/tree/master/Software/xdma_driver_linux/xdma) directory
      - Run `make` in the [tools](https://github.com/EEVengers/ThunderScope/tree/master/Software/xdma_driver_linux/tools) directory
      - Create a udev rule so you don't have to run everything acessing the hardware as root:
         - create `/etc/udev/rules.d/70-thunderscope.rules` file with the line `ACTION=="add", SUBSYSTEM=="xdma", TAG+="uaccess"`
      - With a TS connected, run `sudo ./load_driver.sh` in the [tests](https://github.com/EEVengers/ThunderScope/tree/master/Software/xdma_driver_linux/tests) directory
        - Output should be `The Kernel module installed correctly and the xmda devices were recognized.`  
2. Build TS.NET.Engine using the [build scripts](https://github.com/macaba/TS.NET/tree/main/build-scripts)
   - Dependences for build scripts on Debian/Ubuntu Linux: `sudo apt-get install -y dotnet-sdk-8.0 libgdiplus`
   - On Windows, should just need Visual Studio with the C# plugins
   - Copy [appsettings.json](https://github.com/macaba/TS.NET/blob/main/source/TS.NET.Engine/appsettings.json) and [thunderscope.yaml](https://github.com/macaba/TS.NET/blob/main/source/TS.NET.Engine/thunderscope.yaml) into the same directory as the TS.NET.Engine application
3. Install ngscopeclient, following the instructions in their [user manual](https://www.ngscopeclient.org/manual/GettingStarted.html)
4. Run TS.NET.Engine and ngscopeclient
5. Add ThunderScope in ngscopeclient under Add -> Oscilloscope with "thunderscope" Driver, "Twinlan" Transport and "Localhost:5025:5026" for the Path

## Troubleshooting 

If you are getting under ~1000MB/s throughput on Linux, try turning off VT-d (Intel) or IOMMU/AMD-Vi (AMD) in BIOS or using "intel_iommu=off" in GRUB (Intel)

## Beta 2 Front End Rework

Remove the covers on the front end shielding cans, repeat the steps below for each channel.

![Screenshot of 3D View of Beta 2 Front End, C30 Labeled With "1", C26 Labeled With "2"](https://github.com/EEVengers/ThunderScope/blob/master/Docs/Beta%202%20Front%20End%20Rework.PNG)

1. Replace "1" with a 220pF 50V COG 0402 Capacitor (GCM1555C1H221FA16D), this will flatten the crossover response and eliminate peaking for square waves under ~100kHz.
   - [Check out this video for an explaination](https://youtu.be/EY9enxyHi5o)
2. Replace "2" with a 1.2nF 100V C0G 0603 Capacitor (GCM1885C2A122FA16D), this will increase the frequency for which the maximum 100Vpp input voltage rating applies.
   - [Check out this video for an explaination](https://youtu.be/33C-LlOQOUs)


## Baseboard Hardware 

| Revision | Label | Status | Location |
| ------ | ---- | ---------- | ------------------------------ |
| Rev.1  | N/A  | DEPRECATED | Hardware/Altium/Thunderscope_E |
| Rev.2  | N/A  | DEPRECATED | Hardware/Altium/Thunderscope_Rev2 |
| Rev.3  | Alpha  | DEPRECATED | Hardware/Altium/Thunderscope_Rev3 |
| Rev.4  | Beta 1  | ACTIVE | Hardware/Altium/Thunderscope_Rev4 |
| Rev.4.1  | Beta 2  | ACTIVE | Hardware/Altium/Thunderscope_Rev4.1 |

## FPGA Module Hardware 

| Revision | Status | Location |
| ------ | ---------- | ------------------------------ |
| TE0712  |  ACTIVE | [Trenz Electronics TE0712 Module, 100T or 200T Varients](https://wiki.trenz-electronic.de/display/PD/TE0712+TRM) |
| Rev.1  | DEPRECATED | Hardware/Altium/FPGA_Module |
| Rev.2  | ACTIVE | Hardware/Altium/FPGA_Module_Rev2 or Hardware/KiCad/FPGA_Module_Rev2|

## Firmware

We have two types of firmware, LiteX and XDMA. We are in the process of updating the LiteX firmware to work on the latest hardware, and we will use it moving forward. Until then, use the XDMA firmware if you are not working on LiteX.

TODO: Table of Beta Unit serial numbers with module types and firmware locations

| Serial Numbers | Module Type | XDMA Firmware Location |
| ------ | ---------- | ------------------------------ |
| TS0004, TS0006, TS0015  | TE0712 100T | Firmware/XDMA/output/xdma_prj_100t_full.mcs |
| TS0007, TS0008, TS0011-TS0014  | TE0712 200T | Firmware/XDMA/output/xdma_prj_200t_full.mcs |
| TS0009, TS0010, TS0016-TS0018  | Custom Rev.2 | Firmware/XDMA/output/xdma_prj_50t_full.mcs |

Follow the instructions in the Software/xdma_driver_linux or Software/xdma_driver_win_src_2018_2 folders to install the XDMA linux or windows driver before proceeding with installing the rest of the software.

For LiteX developers, the Linux driver is stable. [Windows](https://github.com/NateMeyer/litepcie_driver_win) and [Mac](https://github.com/tech2077/litepcie-macos-driver) drivers are in development.

## Software

Our primary software is [TS.NET](https://github.com/macaba/TS.NET), which takes in data from the hardware, triggers on it, and sends the triggered data over to [ngscopeclient](https://www.ngscopeclient.org/)
