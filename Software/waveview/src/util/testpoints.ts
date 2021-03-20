import { CMD, PlumberArgs, Plumber } from './plumber';

class Range {
  dataMin: number = 0;
  dataMax: number = 0;

  constructor(min: number, max: number){
    this.dataMin = min;
    this.dataMax = max;
  }

  getDomain() {
    return [this.dataMin, this.dataMax];
  }
}

class TestPoints {
  x: Range;
  y: Range;
  ready: Boolean = true;
  scope_data: any[][] = [];
  rampArgs: PlumberArgs;

  constructor(xRange: number, yRange: number) {
    this.x = new Range(0, xRange);
    this.y = new Range(-yRange, yRange);

    for(var j = 0; j < 4; j++) {
      this.scope_data[j] = [];
      for(var i = 0; i < 1024; i++) {
        this.scope_data[j][i] = {x: i, y: 0};
      }
    }

    this.rampArgs = {
      headCheck: () => true,
      bodyCheck: (a, bytesRead, body) => {
        var perChannel = body.length/4;
        for(var channel = 0; channel < 4; channel++) {
          for(var i = 0; i < perChannel; i++) {
            this.scope_data[channel][i] = {x: i, y: body[channel*perChannel + i]};
          }
        }
        return true;
      },
      cmd: CMD.CMD_GetData1,
      id: 0x1F2C,
      writeData: [0, 0]
    };
  }

  update() {
    Plumber.getInstance().cycle(this.rampArgs);
  }

  getData() {
    return this.scope_data;
  }
}

export default TestPoints;