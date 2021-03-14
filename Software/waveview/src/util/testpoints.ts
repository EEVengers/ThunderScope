import { data as sine_data} from '../testdata/sin1MHz';
import { data as sinc_data} from '../testdata/sinc1MHz';

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
  data: any[];

  constructor(xRange: number, yRange: number, source: string) {
    this.x = new Range(xRange);
    this.y = new Range(yRange);
    if(source === "sine") {
      this.data = sine_data;
    }
    else if(source === "sinc") {
      this.data = sinc_data;
    }
    else {
      this.data = [];
    }
    
    const thunderBridge = (window as any).thunderBridge;

    var testPacket16 = new Uint16Array(new ArrayBuffer(10));
    testPacket16[0] = 1;
    testPacket16[1] = 0x1F2C;
    testPacket16[2] = 4;
    var testPacket = new Uint8Array(testPacket16.buffer);
    testPacket[6] = 1;
    testPacket[7] = 2;
    testPacket[8] = 3;
    testPacket[9] = 4;

    thunderBridge.write(testPacket,() => {});

    var rxBuff = new Uint8Array(new ArrayBuffer(4096));
    thunderBridge.read(rxBuff, (err: NodeJS.ErrnoException, bytesRead: number, bytes: Uint8Array) => {
      /*Only appears on exit: why is that???*/
      if(bytes != undefined)
        console.log(bytesRead);
      console.log(new Uint8Array(bytes));
    });
  }

  update(tickCount: number) {
    let maxSeconds = Math.floor(this.data.length/this.x.displayLimit)
    let seconds = Math.floor(tickCount/60) % maxSeconds;
    let currentSecondTicks = (tickCount % 60);
    this.x.dataMin = seconds * this.x.displayLimit;
    this.x.dataMax = this.x.dataMin + (Math.floor(this.x.displayLimit*currentSecondTicks/60));
  }

  getData() {
    return this.data.slice(this.x.dataMin, this.x.dataMax);
  }
}

export default TestPoints;