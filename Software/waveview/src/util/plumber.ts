export enum CMD {
  //Data commands
  CMD_GetData1 = 0x01,
  CMD_GetData2 = 0x02,
  CMD_GetData3 = 0x03,
  CMD_GetData4 = 0x04,

  //Demo commands
  CMD_SetFile = 0x11,
  CMD_RampDemo = 0x1F,

  //Get Config commands
  CMD_GetWindowSize = 0x21,
  CMD_GetCh = 0x22,
  CMD_GetLevel = 0x23,
  CMD_GetTriggerCh = 0x24,
  CMD_GetEdgeType = 0x25,

  //Set Config commands
  CMD_SetWindowSize = 0x31,
  CMD_SetCh = 0x32,
  CMD_SetLevel = 0x33,
  CMD_SetTriggerCh = 0x34,
  CMD_SetEdgeType = 0x35,
  CMD_SetMath = 0x3F
}

export enum SetMathOp {
  SetMath_None = 0,
  SetMath_Plus = 1,
  SetMath_Minus = 2,
}

export interface PlumberArgs {
  headCheck: (args: PlumberArgs, head: Uint16Array) => boolean;
  bodyCheck: (args: PlumberArgs, bytesRead: number, body: Int8Array) => boolean;
  cmd: CMD;
  id: number;
  writeData: number[];
}

export class Plumber {
  private static instance: Plumber
  private bridge: any;
  private ready: boolean;
  private cmdQueue: PlumberArgs[];

  private constructor() {
    this.bridge = (window as any).thunderBridge;
    this.ready = true;
    this.cmdQueue = [];
  }

  public static getInstance(): Plumber {
    if(!Plumber.instance) {
      Plumber.instance = new Plumber();
    }
    return Plumber.instance;
  }

  private nextCycle() {
    this.ready = true;
    var args = this.cmdQueue.shift();
    if(args) {
      this.cycle(args);
    }
  }

  private doRead(args: PlumberArgs) {
    var rxBuff = new Uint8Array(new ArrayBuffer(6));
    this.bridge.read(rxBuff, (err: NodeJS.ErrnoException, bytesRead: number, bytes: Uint8Array) => {
      var bytes16 = new Uint16Array(bytes.buffer);
      var dataSize = bytes16[2];
      if(!args.headCheck(args, bytes16) || dataSize == 0) {
        this.nextCycle();
        return;
      }

      var dataRxBuff = new Int8Array(dataSize);
      this.bridge.read(dataRxBuff, (nestedErr: NodeJS.ErrnoException, nestedBytesRead: number, nestedBytes: Int8Array) => {
        this.nextCycle();
        args.bodyCheck(args, nestedBytesRead, nestedBytes);
      });
    });
  }

  private argsToPacket(args: PlumberArgs) {
    var fullSize = 6 + args.writeData.length;
    var packet16 = new Uint16Array(new ArrayBuffer(fullSize));
    packet16[0] = args.cmd;
    packet16[1] = args.id;
    packet16[2] = args.writeData.length;

    //Not expecting to write large bodies to C++
    var packet8 = new Int8Array(packet16.buffer);
    for(var i = 0; i < args.writeData.length; i++) {
      packet8[i + 6] = args.writeData[i];
    }
    return packet8;
  }

  public cycle(args: PlumberArgs) {
    if(this.ready) {
      var packet8 = this.argsToPacket(args);
      this.ready = false;
      this.bridge.write(packet8,() => {
        this.doRead(args);
      });
    }
    else if(args.cmd >= 0x20) {
      this.cmdQueue.push(args);
    }
  }

  public makeSetMathData(lhsChan: number, rhsChan: number, op: SetMathOp) {
    return [lhsChan, rhsChan, op, 0];
  }
}