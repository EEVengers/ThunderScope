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

Developers with Rev.1 mainboard and TE0712 module should use dso_top_TE0712 or dso_top_TE0712_unsigned

Rev.2 mainboard can only be used with our custom FPGA module and dso_top_fpga_module_rev2_unsigned firmware 

___
## Software

Our primary software is TS.net, which takes in data from the hardware, triggers on it, and sends the triggered data over to [(ng/gl)scopeclient](https://github.com/glscopeclient/scopehal-apps)

Dependences for build scripts on Linux:
apt-get install -y dotnet6
apt-get install -y libgdiplus

On Windows, should just need Visual Studio with the C# plugins
