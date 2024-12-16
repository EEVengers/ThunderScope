# ThunderScope
Low-Cost Four Channel 1GSPS Oscilloscope using Thunderbolt/USB4 to stream data to PC for processing and display. 

Join our [development discord server](https://discord.com/invite/pds7k3WrpK)

We are now at #thunderscope:matrix.org on matrix or #thunderscope:libera.chat on IRC as well!

Some older long-form documentation is on the [Hackaday.io project page](https://hackaday.io/project/180090-thunderscope)

Get the hardware through our [crowdsupply page](https://www.crowdsupply.com/eevengers/thunderscope) 

Catch up with these videos on the project: 

[TEARDOWN 2023 - Open Sourcing the Secrets of Oscilloscope Design](https://www.youtube.com/watch?v=58P7UrNaYS4)

[Hackaday Supercon 2023 - A Circuit to Measure Circuits: How do Oscilloscopes do it?](https://www.youtube.com/watch?v=6kINL2e2XGs)

[Teardown Session 39: ThunderScope](https://www.youtube.com/watch?v=HIrENqQAbHI)



## Quick Start Guide 

### LiteX

1. Follow the instructions in the [LiteX Build and Setup Guide](Docs/LiteX.md) guide to build the gateware and software for running LiteX firmware on the Thunderscope.
2. Build TS.NET.Engine using the [build scripts](https://github.com/EEVengers/TS.NET/tree/main/build-scripts)
   - Dependences for build scripts on Debian/Ubuntu Linux: `sudo apt-get install -y dotnet-sdk-8.0 libgdiplus`
   - On Windows, should just need Visual Studio with the C# plugins
   - Copy [appsettings.json](https://github.com/EEVengers/TS.NET/blob/main/source/TS.NET.Engine/appsettings.json) and [thunderscope.yaml]
3. Install ngscopeclient, following the instructions in their [user manual](https://www.ngscopeclient.org/manual/GettingStarted.html)
4. Run TS.NET.Engine and ngscopeclient
5. Add ThunderScope in ngscopeclient under Add -> Oscilloscope with "thunderscope" Driver, "Twinlan" Transport and "Localhost:5025:5026" for the Path

### XDMA [DEPRECATED]

These instructions have moved to the [ts_xdma_archive repo](https://github.com/EEVengers/ts_xdma_archive)

## Troubleshooting 

If you are getting under ~1000MB/s throughput on Linux, try turning off VT-d (Intel) or IOMMU/AMD-Vi (AMD) in BIOS or using "intel_iommu=off" in GRUB (Intel)

## Beta 2 Errata and Fixes

Follow the [rework instructions](Docs/Beta%202%20Errata.md) to bring your Beta 2 to production level frequency response and noise performance

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

## Beta Unit FPGA Module Type by Serial Number

| Serial Numbers | Module Type |
| ------ | ---------- |
| TS0004, TS0006, TS0015  | TE0712 100T |
| TS0007, TS0008, TS0011-TS0014  | TE0712 200T |
| TS0009, TS0010, TS0016-TS0018  | Custom Rev.2 |
