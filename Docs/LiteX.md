# LiteX Build and Setup Guide

## Gateware

The FPGA gateware for the Thunderscope is supported by the [ThunderScope Litex Repo](https://github.com/EEVengers/thunderscope_litex).

### Prebuilt Bitstreams

Prebuilt bitstreams are available from the [ThunderScope LiteX Repo Releases](https://github.com/EEVengers/thunderscope_litex/releases).
You can download the appropriate file for your FPGA variant there.

Use [openFPGALoader](https://github.com/trabucayre/openFPGALoader) to flash a new bitstream to your ThunderScope.

```shell
> openFPGALoader --fpga-part [FPGA_PART] -f -c digilent_hs2 thunderscope_aXXX.bit
```

where the `FPGA_PART` is one of:

- `xc7a200tfbg484`
- `xc7a100tfgg484`
- `xc7a50tcsg324`

### Build

1. Install Vivado, Python3, and LiteX.

2. Ensure Vivado is in your current path

3. Clone the thunderscope_litex repo and follow the instruction in the README.md to build the gateware and generate the software driver.

4. `./thunderscope.py --variant=<variant> --driver --build`

Available Variants:

| Label   | Description |
| :-----: | :---------- |
| `a200t` | Trenz A200T Module |
| `a100t` | Trenz A100T Module |
| `a50t`  | Custom Module |

### Flash

1. Connect the JTAG debugger to the Thunderscope

2. `./thunderscope.py --variant=<variant> --flash`

## LitePCIe Driver

### Linux

The Linux driver for the LiteX build is available from the [ts_litex_driver_linux Repo](https://github.com/EEVengers/ts_litex_driver_linux)

1. Build and install the LitePCIe Driver project using make.

```sh
$ cd kernel/
$ make
$ sudo ./init.sh
```

### Windows

The Windows driver for the LiteX build is available from the [ts_litex_driver_win Repo](https://github.com/EEVengers/ts_litex_driver_win)

1. Install the prerequisites as described in the driver project's README, including either the Windows WDK and KMDF or the EWDK command line tools.

2. Build the LitePCIe Driver project by opening the .vcxproj file in Visual Studio, Or launching the EWDK build environment.

```cmd
> C:\EWDK\LaunchBuildEnv.cmd
> cd litepciedrv
> buildall.bat
```

The Driver file is found in the `litepciedrv/x64/Release/litepciedrv` folder.

4. To install the driver, verify your PC is in TESTSIGNING mode.  In an administrator command prompt, run the command `Bcdedit.exe -set TESTSIGNING ON` and reboot the system.

    When Windows is in TESTSIGNING mode, ensure the Thunderscope is connected to the PC.  Open the Device Manager and locate the Thunderscope in the "Multifunction Devices" category.  Right-Click the Thunderscope device and select "Update Driver".  Tell Windows to manualy install the driver from the litepciedrv build folder noted above.

## TsLitex Library

The libtslitex library provides control over the Thunderscope input channels and Sample DMA.  Clone the [libtslitex Repo](https://github.com/EEvengers/libtslitex).

Libtslitex uses the CMake build environment.

1. Create a build folder

```
> mkdir build && cd build
```

2. Configure CMake

```
> cmake ..
```

3. Build with CMake

```
> cmake --build . --config=Release
```

4. There is a test application built to `build/artifacts/example/Release/` and the libraries are found in the `build/Release` folder

## TS.NET

Management of Data buffers and data triggering is provided by the TS.NET project.

1. Clone the [TS.NET Repo](https://github.com/EEVengers/TS.NET)

2. Build the TS.NET.Engine project using the included build script.

> Windows
> ```cmd
> > cd build-scripts
> > powershell -ExecutionPolicy Bypass -File "TS.NET.Engine (win-x64).ps1"
> ```

> Linux
> ```shell
> > cd build-scripts
> > ./TS.NET.Engine\ (linux-x64).bash
> ```

3. Copy the tslitex library file into the TS.NET.Engine build directory

> Windows
> ```cmd
> > cp libtslitex/build/Release/tslitex.dll TS.NET/builds/win-x64/TS.NET.Engine/0.1.0/tslitex.dll
> ```

> Linux
> ```shell
> > cp libtslitex/build/artifacts/libtslitex/libtslitex.so TS.NET/builds/linux-x64/TS.NET.Engine/0.1.0/libtslitex.so
> ```

4. Change the configured HardwareDriver in the thunderscope.yaml file to LiteX

```yaml
HardwareDriver: LiteX
```

You should now be able to run TS.NET.Engine and connect to the Thunderscope.
