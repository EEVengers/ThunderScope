import CMD from '../configuration/enums/cmd';
import { PlumberArgs, Plumber, SetMathOp } from './plumber';
import store from '../redux/store';
import { LineSeriesPoint } from 'react-vis';

class TestPoints {
  scope_data: LineSeriesPoint[][] = []; //[ch-1] for channel, [5] for math
  scope_data_max_idx = 5;

  chCount: number = 4;
  doMath: Boolean = true;
  lastX: number = 0;

  setChArgs: PlumberArgs;
  setFileArgs: PlumberArgs;
  setMathArgs: PlumberArgs;
  setChDone: Boolean = false;
  setFileDone: Boolean = false;
  setMathDone: Boolean = false;

  constructor(xRange: number, yRange: number) {
    store.dispatch({type: "graph/xDomain", payload: [0, xRange]});
    store.dispatch({type: "graph/yDomain", payload: [-yRange, yRange]})

    for(var j = 0; j < this.scope_data_max_idx; j++) {
      this.scope_data[j] = [{x: 0, y: 0}];
    }

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
      let state = store.getState();
      let xLimit = state.graph.xDomain[1];
      let args: PlumberArgs = {
        headCheck: () => true,
        bodyCheck: (a, bytesRead, body) => {
          var chMax = this.effectiveChCount();
          var perChannel = Math.floor(body.length/chMax);
          let xOffset = (this.lastX < xLimit) ? this.lastX : 0;
          for(var channel = 0; channel < chMax; channel++) {
            for(var i = 0; i < perChannel; i++) {
              let x = xOffset + i;
              let y = body[channel*perChannel + i];
              this.scope_data[channel][x] = {x: x, y: y};
            }
          }
          this.lastX = xOffset + perChannel;
          return true;
        },
        cmd: CMD.CMD_GetData1,
        id: 0,
        writeData: [0, 0]
      };

      Plumber.getInstance().cycle(args);
    }
  }

  effectiveChCount() {
    return (this.doMath) ? this.chCount + 1: this.chCount;
  }

  getData() {
    var chMax = this.effectiveChCount();
    return this.scope_data.slice(0, chMax);
  }
}

export default TestPoints;