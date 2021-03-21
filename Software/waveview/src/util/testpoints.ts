import { CMD, PlumberArgs, Plumber, SetMathOp } from './plumber';

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
  scope_data: any[][] = []; //[ch-1] for channel, [5] for math
  scope_data_max_idx = 5;

  chCount: number = 4;
  doMath: Boolean = true;

  rampArgs: PlumberArgs;
  setChArgs: PlumberArgs;
  setFileArgs: PlumberArgs;
  setMathArgs: PlumberArgs;
  setChDone: Boolean = false;
  setFileDone: Boolean = false;
  setMathDone: Boolean = false;

  constructor(xRange: number, yRange: number) {
    this.x = new Range(0, xRange);
    this.y = new Range(-yRange, yRange);

    for(var j = 0; j < this.scope_data_max_idx; j++) {
      this.scope_data[j] = [];
      for(var i = 0; i < 1; i++) {
        this.scope_data[j][i] = {x: i, y: 0};
      }
    }

    this.rampArgs = {
      headCheck: () => true,
      bodyCheck: (a, bytesRead, body) => {
        var chMax = this.effectiveChCount();
        var perChannel = Math.floor(body.length/chMax);
        for(var channel = 0; channel < chMax; channel++) {
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

    this.setChArgs = {
      headCheck: () => {
        this.setChDone = true;
        return true;
      },
      bodyCheck: () => true,
      cmd: CMD.CMD_SetCh,
      id: 0,
      writeData: [this.chCount, 0]
    }

    this.setFileArgs = {
      headCheck: () => {
        this.setFileDone = true;
        return true;
      },
      bodyCheck: () => true,
      cmd: CMD.CMD_SetFile,
      id: 0,
      writeData: [74, 0]
    }

    this.setMathArgs = {
      headCheck: () => {
        this.setMathDone = true;
        return true;
      },
      bodyCheck: () => true,
      cmd: CMD.CMD_SetMath,
      id: 0,
      writeData: Plumber.getInstance().makeSetMathData(2, 4, SetMathOp.SetMath_Plus)
    }
  }

  mountCalls() {
    Plumber.getInstance().cycle(this.setChArgs);
    Plumber.getInstance().cycle(this.setFileArgs);
    Plumber.getInstance().cycle(this.setMathArgs);
  }

  update() {
    if(this.setChDone && this.setFileDone && this.setMathDone) {
      Plumber.getInstance().cycle(this.rampArgs);
    }
  }

  effectiveChCount() {
    return (this.doMath) ? this.chCount + 1: this.chCount;
  }

  getData() {
    var chMax = this.effectiveChCount();
    console.log(this.scope_data);
    return this.scope_data.slice(0, chMax);
  }
}

export default TestPoints;