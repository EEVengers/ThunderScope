import CMD from '../configuration/enums/cmd';

export enum SetMathOp {
  SetMath_None = 0,
  SetMath_Plus = 1,
  SetMath_Minus = 2,
}

export interface MaxMinResult {
  ch: number,
  x: number,
  y: number
}

export interface PlumberArgs {
  headCheck: (args: PlumberArgs, head: Uint16Array) => boolean;
  bodyCheck: (args: PlumberArgs, bytesRead: number, body: Int8Array) => boolean;
  cmd: CMD;
  id: number;
  writeData: number[] | Int8Array;
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
    //console.log("nextCycle");
    var args = this.cmdQueue.shift();
    this.ready = true;
    if(args) {
      this.cycle(args);
    }
  }

  private doRead(args: PlumberArgs) {
    var rxBuff = new Uint8Array(new ArrayBuffer(6));
    this.bridge.read(rxBuff, (err: NodeJS.ErrnoException, bytesRead: number, bytes: Uint8Array) => {
      var bytes16 = new Uint16Array(bytes.buffer);
      var dataSize = bytes16[2];
      if(!args.headCheck(args, bytes16) || dataSize === 0) {
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

  private commandNeedsQueueing(args: PlumberArgs) {
    if(args.cmd <= CMD.CMD_GetData4) {
      return false;
    }
    else if(args.cmd === CMD.CMD_RampDemo) {
      return false;
    }
    return true;
  }

  public cycle(args: PlumberArgs) {
    //console.log("cycle: " + args.cmd);
    if(this.ready) {
      var packet8 = this.argsToPacket(args);
      this.ready = false;
      //console.log("write: " + args.cmd);
      this.bridge.write(packet8,() => {
        this.doRead(args);
      });
    }
    else if(this.commandNeedsQueueing(args)) {
      //console.log("queue: " + args.cmd);
      this.cmdQueue.push(args);
    }
  }

  public makeSetMathData(lhsChan: number, rhsChan: number, op: SetMathOp) {
    return [lhsChan, rhsChan, op, 0];
  }

  public decodeGetMinMax(args: PlumberArgs, a: Int8Array) {
    let maxCh = 4;
    let a64u = new BigUint64Array(a.buffer);
    let a64s = new BigInt64Array(a.buffer);
    var res: MaxMinResult[] = [];
    for(var i = 0; i < args.writeData.length; i++) {
      if(args.writeData[i] !== 0) {
        res.push({ch: i + 1, x: Number(a64u[i]), y: Number(a64s[i + maxCh])});
      }
    }
    return res;
  }
}