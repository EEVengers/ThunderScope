const thunderBridge = (window as any).thunderBridge;

class Range {
  dataMin: number = 0;
  dataMax: number = 0;
  displayLimit: number = 0;

  constructor(limit: number){
    this.displayLimit = limit;
  }

  getDomain() {
    return [this.dataMin, this.dataMin + this.displayLimit];
  }
}

class TestPoints {
  x: Range;
  y: Range;
  ready: Boolean = true;
  scope_data: any[][] = [];

  constructor(xRange: number, yRange: number) {
    this.x = new Range(xRange);
    this.y = new Range(yRange);

    for(var j = 0; j < 4; j++) {
      this.scope_data[j] = [];
      for(var i = 0; i < 1024; i++) {
        this.scope_data[j][i] = {x: i, y: 0};
      }
    }  
  }

  doRead() {
    var rxBuff = new Uint8Array(new ArrayBuffer(6));
    thunderBridge.read(rxBuff, (err: NodeJS.ErrnoException, bytesRead: number, bytes: Uint8Array) => {
      var bytes16 = new Uint16Array(bytes.buffer);
      var dataSize = bytes16[2];
      //console.log(bytes16);
      //console.log(bytes);

      var dataRxBuff = new Uint8Array(dataSize);
      thunderBridge.read(dataRxBuff, (nestedErr: NodeJS.ErrnoException, nestedBytesRead: number, nestedBytes: Uint8Array) => {
        this.ready = true;
        var perChannel = (nestedBytes.length/4);
        for(var channel = 0; channel < 4; channel++) {
          for(var i = 0; i < perChannel; i++) {
            this.scope_data[channel][i] = {x: i, y: nestedBytes[channel*perChannel + i]}
          }
          //console.log(nestedBytes);
          //console.log(this.scope_data[channel]);
          //console.log("channel: " + channel);
        }
      });
    });
  }

  update() {

    var testPacket16 = new Uint16Array(new ArrayBuffer(10));
    testPacket16[0] = 0x1F;
    testPacket16[1] = 0x1F2C;
    testPacket16[2] = 4;
    var testPacket = new Uint8Array(testPacket16.buffer);
    testPacket[6] = 1;
    testPacket[7] = 2;
    testPacket[8] = 3;
    testPacket[9] = 4;

    if(!this.ready) {
      return;
    }
    this.ready = false;
    console.log(Date.now()); //millisecond
    thunderBridge.write(testPacket,() => {
      this.doRead();
    });
  }

  getData() {
    return this.scope_data;
  }
}

export default TestPoints;