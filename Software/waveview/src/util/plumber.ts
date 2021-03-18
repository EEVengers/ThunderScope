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

  //Set Config commands
  CMD_SetWindowSize = 0x31,
  CMD_SetCh = 0x32,
  CMD_SetMath = 0x3F
}

export enum SetMathOp {
  SetMath_None = 0,
  SetMath_Plus = 1,
  SetMath_Minus = 2,
}

export interface PlumberArgs {
  headCheck: (args: PlumberArgs, head: Uint16Array) => boolean;
  bodyCheck: (args: PlumberArgs, bytesRead: number, body: Uint8Array) => boolean;
  cmd: CMD;
  id: number;
  writeData: number[];
}

export class Plumber {
  private static instance: Plumber
  private bridge: any;
  private ready: boolean;
  private cmdCache: {[key: number]: PlumberArgs };

  private constructor() {
    this.bridge = (window as any).thunderBridge;
    this.ready = true;
    this.cmdCache = {};
  }

  public static getInstance(): Plumber {
    if(!Plumber.instance) {
      Plumber.instance = new Plumber();
    }
    return Plumber.instance;
  }

  private doRead(args: PlumberArgs) {
    var rxBuff = new Uint8Array(new ArrayBuffer(6));
    this.bridge.read(rxBuff, (err: NodeJS.ErrnoException, bytesRead: number, bytes: Uint8Array) => {
      var bytes16 = new Uint16Array(bytes.buffer);
      var dataSize = bytes16[2];
      if(!args.headCheck(args, bytes16) || dataSize == 0) {
        this.ready = true;
        return;
      }

      var dataRxBuff = new Uint8Array(dataSize);
      this.bridge.read(dataRxBuff, (nestedErr: NodeJS.ErrnoException, nestedBytesRead: number, nestedBytes: Uint8Array) => {
        this.ready = true;
        args.bodyCheck(args, nestedBytesRead, nestedBytes);
      });
    });
  }

  private makePacket(args: PlumberArgs) {
    var fullSize = 6 + args.writeData.length;
    var packet16 = new Uint16Array(new ArrayBuffer(fullSize));
    packet16[0] = args.cmd;
    packet16[1] = args.id;
    packet16[2] = args.writeData.length;
    
    //Not expecting to write large bodies to C++
    var packet8 = new Uint8Array(packet16.buffer);
    for(var i = 0; i < args.writeData.length; i++) {
      packet8[i + 6] = args.writeData[i];
    }
    return packet8;
  }

  public makeSetMathData(lhsChan: number, rhsChan: number, op: SetMathOp) {
    return [lhsChan, rhsChan, op, 0];
  }

  public cycle(args: PlumberArgs) {
    if(this.ready) {
      this.ready = false;
      var packet: Uint8Array;
      var realArgs: PlumberArgs;
      if(Object.keys(this.cmdCache).length > 0) {
        var overrideArgs = Object.values(this.cmdCache)[0];
        delete this.cmdCache[overrideArgs.cmd as number];
        packet = this.makePacket(overrideArgs);
        realArgs = overrideArgs;
      }
      else {
        packet = this.makePacket(args);
        realArgs = args;
      }

      this.bridge.write(packet,() => {
        this.doRead(realArgs);
      });
      return true;
    }
    else {
      if(args.cmd >= 0x20) {
        this.cmdCache[args.cmd as number] = args;
      }
      return false;
    }
  }
}