# Electron<->C++ Protocol

Packet structure diagram (ripped from `common.hpp` and minimized):

```
   __________________________________________________________
  |          |          |          |                        |
  | Command  | PacketID | DataSize |    Packet Data         |
  |  16bits  |  16bits  |  16bits  |  However Many Bits as  |
  |  2Bytes  |  2Bytes  |  2Bytes  |  Defined by dataSize   |
  |          |          |          |                        |
  |__________|__________|__________|________________________|
```

The rest of this page concerns the *meaning* of `Command` and the expected `dataSize` of a packet. In other words, the diagram is the "syntax", what follows is the "semantics".

The leading byte of `Command` will correspond to a category:

Byte | Category
-----|------------
0x0  | Get Data
0x1  | Demo
0x2  | Get Config
0x3  | Set Config

`PacketID` is omitted from these tables because it is useless right now.

## Implemented Commands

Prepend the name with `CMD_` to find it in the Electron and C++ code.

### Electron -> C++

Cmd  | DataSize        | Name                | Description
-----|-----------------|---------------------|------------------------
0x01 | 2 (useless)     | GetData1            |
0x05 | 4               | GetMin              | Data: `[ch1, ch2, ch3, ch4]`, each 1 or 0
0x06 | 4               | GetMax              | Data: `[ch1, ch2, ch3, ch4]`, each 1 or 0
0x11 | 2               | SetFile             | Number mapped to filename by C++
0x1F | 2 (useless)     | RampDemo            |
0x21 | 2 (useless)     | GetWindowSize       |
0x22 | 2 (useless)     | GetCh               |
0x23 | 2 (useless)     | GetLevel            |
0x24 | 2 (useless)     | GetTriggerCh        |
0x25 | 2 (useless)     | GetEdgeType         |
0x31 | 4               | SetWindowSize       | Data has new window size as uint32
0x32 | 4               | SetCh               | Data: `[ch1, ch2, ch3, ch4]`, each 1 or 0
0x33 | 2               | SetLevel            | Data has new level
0x34 | 2               | SetTriggerCh        | Data has channel 1,2,3,4
0x35 | 2               | SetEdgeType         | Data has 1 (rising) or 2 (falling)
0x37 | 4               | SetVerticalScaling  | Data has ch, mV/div as int16
0x3F | 4               | SetMath             | Data: [LHS ch, RHS ch, op, 0]

For SetMath, `op` can be:

+ 0: none
+ 1: plus
+ 2: minus

Note that the encoding used by the protocol might not be same as the encoding used in the rest of the C++ or Electron code: any conversions should be done by `controller.cpp` and `plumber.ts` respectively.

### C++ -> Electron

Cmd  | DataSize        | Name                | Description
-----|-----------------|---------------------|------------------------
0x01 | ch * windowSize | GetData1            | Data for all ch
0x05 | 64              | GetMin              | Data has `[x1, x2...]` and `[y1, y2..]` as uint64 and int64
0x06 | 64              | GetMax              | Data has `[x1, x2...]` and `[y1, y2..]` as uint64 and int64
0x11 | 0               | SetFile             | Set testdata filename
0x1F | 4096            | RampDemo            | 4 ch, simple waves
0x21 | 4               | GetWindowSize       | Data has window size as uint32
0x22 | 2               | GetCh               | Data has ch 1, 2, or 4
0x23 | 2               | GetLevel            | Data has new level
0x24 | 2               | GetTriggerCh        | Data has channel 1,2,3 or 4
0x25 | 2               | GetEdgeType         | Data has 1 (rising) or 2 (falling)
0x31 | 0               | SetWindowSize       |
0x32 | 0               | SetCh               |
0x33 | 0               | SetLevel            |
0x34 | 0               | SetTriggerCh        |
0x35 | 0               | SetEdgeType         |
0x37 | 0               | SetVerticalScaling  |
0x3F | 0               | SetMath             |

## Allocated But Not Implemented

### Electron -> C++

Cmd  | DataSize        | Name                | Description
-----|-----------------|---------------------|------------------------
0x02 | 2 (useless)     | GetData2            | Reserved, If we need 1 command/ch
0x03 | 2 (useless)     | GetData3            | Reserved, If we need 1 command/ch
0x04 | 2 (useless)     | GetData4            | Reserved, If we need 1 command/ch
0x36 | 2?              | SetBandwidth        |
0x38 | 2               | SetVerticalOffset   | Data\[0\] has offset
0x39 | 2?              | SetHorizontalOffset |
0x3A | 2               | SetCoupling         | Data\[0\] has 0\1 for AC\DC

### C++ -> Electron

Cmd  | DataSize        | Name                | Description
-----|-----------------|---------------------|------------------------
0x02 | windowSize      | Reserved            | If we need 1 command/ch
0x03 | windowSize      | Reserved            | If we need 1 command/ch
0x04 | windowSize      | Reserved            | If we need 1 command/ch
0x36 | 0               | SetBandwidth        |
0x38 | 0               | SetVerticalOffset   |
0x39 | 0               | SetHorizontalOffset |
0x3A | 0               | SetCoupling         |

## Proposed But Not Allocated

