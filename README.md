# ThunderScope
Low-Cost Four Channel 1GSPS Oscilliscope using Thunderbolt/USB4 to stream data to PC for processing and display. 

Join our dev discord: https://discord.com/invite/pds7k3WrpK

Our best long-form documentation is currently at the Hackaday.io project page: https://hackaday.io/project/180090-thunderscope

Get the hardware through our crowdsupply when we launch: https://www.crowdsupply.com/eevengers/thunderscope

___
## Hardware 

Rev.1 mainboard: Thunderscope_E

Rev.2 mainboard: Thunderscope_Rev2

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
