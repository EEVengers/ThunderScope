# Electron<->C++ Protocol

Packet structure diagram (ripped from `common.hpp` and minimized):

```
//   __________________________________________________________
//  |          |          |          |                        |
//  | Command  | PacketID | DataSize |    Packet Data         |
//  |  16bits  |  16bits  |  16bits  |  However Many Bits as  |
//  |  2Bytes  |  2Bytes  |  2Bytes  |  Defined by dataSize   |
//  |          |          |          |                        |
//  |__________|__________|__________|________________________|
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

Cmd  | DataSize        | Name      | Description
-----|-----------------|-----------|------------------------
0x1F | useless         | RampDemo  |

### C++ -> Electron

Cmd  | DataSize        | Name      | Description
-----|-----------------|-----------|------------------------
0x1F | 4096            | RampDemo  | 4 ch, simple waves

## Allocated But Not Implemented

### Electron -> C++

Cmd  | DataSize        | Name          | Description
-----|-----------------|---------------|------------------------
0x01 | 2 (useless)     | GetData       | 
0x02 | 2 (useless)     | Reserved      | If we need 1 command/ch
0x03 | 2 (useless)     | Reserved      | If we need 1 command/ch
0x04 | 2 (useless)     | Reserved      | If we need 1 command/ch
0x11 | `strlen(name)`  | SetFile       | Set testdata filename
0x21 | 2 (useless)     | GetWindowSize |
0x22 | 2 (useless)     | GetCh         |
0x31 | 4               | SetWindowSize | Data has new window size
0x32 | 1               | SetCh         | Data has ch 1, 2 or 4

### C++ -> Electron

Cmd  | DataSize        | Name          | Description
-----|-----------------|---------------|------------------------
0x01 | ch * windowSize | GetData       | Data for all ch
0x11 | useless         | SetFile       | Set testdata filename
0x21 | 4               | GetWindowSize | Data has window size
0x22 | 1               | GetCh         | Data has ch 1, 2, or 4
0x31 | useless         | SetWindowSize |
0x32 | useless         | SetCh         |

## Proposed But Not Allocated

+ getMax/getMin
+ getLevel/setLevel
+ getTriggerCh/setTriggerCh
+ getEdgeType/setRising/setFalling