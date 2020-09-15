# XDMA Windows Driver

This project is Xilinx's sample Windows driver for 'DMA/Bridge Subsystem for PCI Express v4.0' (XDMA) IP. 

*Please note that this driver and associated software are supplied to give a basic generic reference
 implementation only. Customers may have specific use-cases and/or requirements for which this driver 
 is not suitable.*

### Dependencies

* Target machine running Windows 7 or Windows 10
* Development machine running Windows 7 (or later) 
* Visual Studio 2015 (or later) installed on development machine
* Windows Driver Kit (WDK) version 1703 (or later) installed on development machine 

## Directory Structure

```
<project_root>/
|__ build/                - Generated directory containing build output binaries.
|__ exe/                  - Contains sample client application source code.
|  |__ simple_dma/        - Sample code for AXI-MM configured XDMA IP.
|  |__ streaming_dma/     - Sample code for AXI-ST configured XDMA IP.
|  |__ user_events/       - Sample code for access to user event interrupts. 
|  |__ xdma_info/         - Utility application which prints out the XDMA core ip 
|  |                        configuration.
|  |__ xdma_rw/           - Utility for reading/writing to/from xdma device nodes such 
|  |                        as control, user, bypass, h2c_0, c2h_0 etc. 
|  |__ xdma_test/         - Basic test application which performs H2C/C2H transfers on 
|                           all present channels. 
|__ inc/                  - Contains public API header file for XDMA driver.
|__ libxdma/              - Static kernel library for XDMA IP.
|__ sys/                  - Reference driver source code which uses libxdma
|__ README.md             - This file.
|__ XDMA.sln              - Visual Studio Solution.
```

## Development Environment Setup

1. Install Visual Studio 2015 and WDK 10 ([see here][ref3]) on the development machine.
2. Setup shared network folders between the dev machine and target machines.
3. OPTIONAL - Locate the *TraceView* program in the WDK (usually in _tools/tracing/`ARCH`_ and copy to target machine or place in shared folder. 
4. Place the project directory (this file's folder) into the shared network drive. 

### Building from Source

#### From Visual Studio

The Windows driver and sample applications can be built using Visual Studio (2015 or later). Simply open the *XDMA.sln* solution, open the *Build* menu and click *Build Solution*. 

This driver project configurations support 32bit/64bit, Windows7/Windows10 OS. In order to target a different Windows OS, go to the driver project *Properties->Driver Settings->General* and change *Target OS Version* to the desired OS.

Also *Release* and *Debug* build configurations exist and are configurable via the *Configuration Manager*.

The compiled build products can then be found in the *build/`ARCH`/* folder. This folder contains the following folders:
- *bin/* contains sample and test applications
- *libxdma/* contains static xdma kernel library 
- *XDMA_Driver/* contains the driver package

#### From Command Line

1. Open *Developer Command Prompt for VS2015*
2. Change directory to the project root directory
3. Run the following command:

        msbuild /t:clean /t:build XDMA.sln

4. The build should run and display the following 

        Build succeeded.
            0 Warning(s)
            0 Error(s)

        Time Elapsed 00:01:05.55

For more information on building Windows drivers visit the [MSDN website][ref4].

### Driver Installation

The easiest way to install the driver is via Windows' *Device Manager* 
(_Control Panel->System->Device Manager_).

_**Note**: The driver does not provide a certified signature and uses a test signature instead. Please be aware that, depending on your target operating system, you may need to enable test-signed drivers in your windows boot configuration in order to enable installation of this driver. See [MSDN website][ref5] for further information._

1. Open the *Device Manager*
2. Initially the device may be displayed as a *PCI Serial Port* device.
3. Right-Click on the device and select *Update Driver Software* and select the folder of the built XDMA driver (typically *build/`ARCH`/XDMA_Driver/`CONFIG`/*
4. If prompted about unverified driver publisher, select *Install this driver software anyway*.
5. *Xilinx Drivers -> Xilinx DMA* should now be visible in the *Device Manager*

## Sample Applications

#### xdma_test

This application is designed to run with the PCIe example design which implements a 4KByte BRAM buffer in the user portion of the design. As such DMA transfers should be limited to 4 KByte transfers. For a 4 channel design this script transfers 1024 bytes on each channel. The following functions are performed: 
-	Determines how many h2c and c2h channels are enabled in the PCIe DMA IP 
-	Determines if the PCIe DMA core is configured for memory mapped or streaming modes 
-	Performs data transfers on all available h2c and c2h channels 
-	Verifies that the data written to the device matches the data that was read from the device 
-	Reports pass (return 0) or fail (return 1) completion status to the user 

###### Usage
```
xdma_test.exe
```

#### xdma_info

This application opens the XDMA *control* device node via *CreateFile()* and executes *ReadFile()* to read status and control registers of the XDMA IP core. These register values are then interpreted according to the register map in the [IP Documentation][ref2]. The IP core configuration and status is then printed to console.

This application is written in C++11 and it is recommended to compile with at least MSVC v14.0 (Visual Studio 2015) or equivalent compiler.

###### Usage
```
xdma_info.exe
```

#### xdma_rw

This application can be used to open any of the device nodes and perform read/write operations. Typically this is useful for reading memory space of the *control* or *user* PCIe BARs. However it can also be used to perform single DMA operations via the h2c_* and c2h_* nodes, where the asterix ('*') denotes the channel index (0-3).

###### Usage
```
xdma_rw.exe <DEVNODE> <read|write> <ADDR> [OPTIONS] [DATA]
    - DEVNODE : One of: control | user | event_* | hc2_* | c2h_*, 
                where the * is a numeric wildcard (0-15 for events, 0-3 for hc2 and c2h).
    - ADDR :    The target offset address of the read/write operation. 
                Can be in hex or decimal.
    - OPTIONS : 
                -l (length of data to read/write)
                -b open file as binary. only use with -f option below.
                -f PATH use contents of file at PATH as input or write output into file
                -v more verbose output
    - DATA :    Space seperated byte data in decimal or hex (big endian). 
                e.g. for the 4 byte value 0x44332211 (decimal 1144201745),
                DATA can be either: 0x11 0x22 0x33 0x44
                or: 17 34 51 68
```

###### Examples

Read a 4 Byte control register at offset 0x1000:
```
xdma_rw.exe control read 0x1000 -l 4
```

Write 2 Bytes (0x1234) to a control register at offset 0x2004:
```
xdma_rw.exe control write 0x2004 0x34 0x12
```

Read 256 Bytes of user memory at offset 0x0:
```
xdma_rw.exe user read 0 -l 0x100
```

Get data from a binary file (my_data.bin) and write it into user memory at offset 0x0
```
xdma_rw.exe user write 0 -b -f my_data.bin
```

Read 4kB from a C2H_0 at offset 0 into a binary file (my_data.bin).
```
xdma_rw.exe c2h_0 read 0 –l 0x1000 -b -f my_data.bin
```

Read 4kB of data from C2H channel 0 at offset 0x100
```
xdma_rw.exe c2h_0 read 0x100 -l 0x1000
```

Write 4 Bytes (0x12345678) to H2C channel 3 at offset 0x10:
```
xdma_rw.exe h2c_3 write 0x10 0x78 0x56 0x34 0x12
```


#### simple_dma

This application demonstrates how to perform simple DMA transactions. 
- Firstly it shows how to find and enumerate any XDMA devices attached. 
- Then the program opens two device nodes, *h2c_0* and *c2h_0*. 
- A single DMA read transaction of 8MB from FPGA card to Host is done via *ReadFile()* on the *c2h_0* node. 
- Similarly for a single DMA write transaction of 8MB from Host to FPGA card, *WriteFile()* is used on the *h2c_0* node.

###### Usage
```
simple_dma.exe
```

#### streaming_dma

This application demonstrates how to use the driver interface for AXI-ST configured XDMA. 
- Firstly it shows how to find and enumerate any XDMA devices attached. 
- Then the program opens two device nodes, *h2c_0* and *c2h_0*. 
- A thread is started which reads from the *c2h_0* node. Due to the loopback nature in the AXI-ST example design, the read operation will block until data is supplied to the XDMA engine.
- Data is then transfered to the card by writing to the *h2c_0* node.
- The reading thread should now unblock and receive data from the card. Several reads may be necessary until all data is read. 

###### Usage
```
streaming_dma.exe
```

#### user_event

This application opens a user event device file and waits on the event to be triggered. How a user  
event is triggered depends entirely on the user logic implemented in the FPGA.

###### Usage
```
user_event.exe EVENT_ID
    - EVENT_ID:    The user event interrupt index (0-15) 
```

### Poll Mode

The default mechanism for detecting a DMA transfer completion is the use of interrupts. However the driver also supports polling the hardware for completion instead. The use of poll mode may decrease DMA completion latency. This feature can be enabled at driver installation as follows:

1. Uninstall any currently installed XDMA driver.
2. Locate the *XDMA.inf* file in the driver package directory (*build/`ARCH`/XDMA_DRIVER/`CONFIG`*)
3. edit the following lines in the file as follows:
```
[XDMA_Inst.NT.Services.AddReg]
HKR,Parameters,"POLL_MODE",0x00010001,0 
```
to:
```
[XDMA_Inst.NT.Services.AddReg]
HKR,Parameters,"POLL_MODE",0x00010001,1 
```
4. Install the driver using the device manager as normal. 

Alternatively the *XDMA.inx* file in the driver source folder (*sys/*) can be edited in the same manner, however in this case a recompilation is required before the installation.

## Known Issues

* Driver installation gives warning due to test signature.

## References

* [Official Website][ref1]
* [IP Documentation][ref2]
* [Microsoft WDK][ref3]
* [MSDN: Building a Driver][ref4]
* [MSDN: Testsigning Boot Configuration][ref5]

[ref1]: https://www.xilinx.com/products/intellectual-property/pcie-dma.html
[ref2]: https://www.xilinx.com/support/documentation/ip_documentation/xdma/v3_0/pg195-pcie-dma.pdf
[ref3]: https://developer.microsoft.com/en-us/windows/hardware/windows-driver-kit
[ref4]: https://msdn.microsoft.com/en-us/windows/hardware/drivers/develop/building-a-driver
[ref5]: https://msdn.microsoft.com/en-us/windows/hardware/drivers/install/the-testsigning-boot-configuration-option
