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
  CMD_SetCh = 0x32
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

  private constructor() {
    this.bridge = (window as any).thunderBridge;
    this.ready = true;
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
      if(!args.headCheck(args, bytes16)) {
        return;
      }

      var dataSize = bytes16[2];
      var dataRxBuff = new Uint8Array(dataSize);
      this.bridge.read(dataRxBuff, (nestedErr: NodeJS.ErrnoException, nestedBytesRead: number, nestedBytes: Uint8Array) => {
        this.ready = true;
        args.bodyCheck(args, nestedBytesRead, nestedBytes);
      });
    });
  }

  public cycle(args: PlumberArgs) {
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

    if(!this.ready) {
      return false;
    }
    this.ready = false;
    this.bridge.write(packet8,() => {
      this.doRead(args);
    });
    return true;
  }
}