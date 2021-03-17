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

The rest of this page concerns the *meaning* of `Command` and `PacketID`, and the expected `dataSize` of a packet. In other words, the diagram is the "syntax", what follows is the "semantics".

PacketID is omitted from these tables because it is useless right now.

## Implemented Commands

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

Cmd  | DataSize        | Name      | Description
-----|-----------------|-----------|------------------------
0x01 | ch * windowSize | GetData   | 
0x02 | useless         | Reserved  | If we need 1 command/ch
0x03 | useless         | Reserved  | If we need 1 command/ch
0x04 | useless         | Reserved  | If we need 1 command/ch

## Proposed But Not Allocated

+ getWindowSize/setWindowSize
+ getCh/setCh
+ getLevel/setLevel
+ getTriggerCh/setTriggerCh
+ getEdgeType/setRising/setFalling