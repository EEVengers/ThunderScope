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

___
## Baseboard Hardware 

| Revision | Label | Status | Location |
| ------ | ---- | ---------- | ------------------------------ |
| Rev.1  | N/A  | DEPRECATED | Hardware/Altium/Thunderscope_E |
| Rev.2  | N/A  | DEPRECATED | Hardware/Altium/Thunderscope_Rev2 |
| Rev.3  | Alpha  | TO BE DEPRECATED | Hardware/Altium/Thunderscope_Rev3 |
| Rev.4  | Beta 1  | ACTIVE | Hardware/Altium/Thunderscope_Rev4 |
| Rev.4.1  | Beta 2  | IN PRODUCTION | Hardware/Altium/Thunderscope_Rev4.1 |

## FPGA Module Hardware 

| Revision | Status | Location |
| ------ | ---------- | ------------------------------ |
| TE0712  |  ACTIVE | [Trenz Electronics TE0712 Module, 100T or 200T Varients](https://wiki.trenz-electronic.de/display/PD/TE0712+TRM) |
| Rev.1  | DEPRECATED | Hardware/Altium/FPGA_Module |
| Rev.2  | IN PRODUCTION | Hardware/Altium/FPGA_Module_Rev2 or Hardware/KiCad/FPGA_Module_Rev2|

___
## Firmware

We have two types of firmware, LiteX and XDMA. We are in the process of updating the LiteX firmware to work on the latest hardware, and we will use it moving forward. Until then, use the XDMA firmware if you are not working on LiteX.

TODO: Table of Beta Unit serial numbers with module types and firmware locations

Follow the instructions in the Software/xdma_driver_linux or Software/xdma_driver_win_src_2018_2 folders to install the XDMA linux or windows driver before proceeding with installing the rest of the software.

For LiteX developers, the Linux driver is stable. [Windows](https://github.com/NateMeyer/litepcie_driver_win) and [Mac](https://github.com/tech2077/litepcie-macos-driver) drivers are in development.

___
## Software

Our primary software is [TS.NET](https://github.com/macaba/TS.NET), which takes in data from the hardware, triggers on it, and sends the triggered data over to [ngscopeclient](https://www.ngscopeclient.org/)

Dependences for build scripts on Linux: `apt-get install -y dotnet6; apt-get install -y libgdiplus`

On Windows, should just need Visual Studio with the C# plugins

To install ngscopeclient, follow the instructions in their [user manual](https://www.ngscopeclient.org/downloads/ngscopeclient-manual.pdf)
