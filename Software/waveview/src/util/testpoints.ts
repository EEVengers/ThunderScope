import CMD from '../configuration/enums/cmd';
import { PlumberArgs, Plumber, SetMathOp } from './plumber';
import store from '../redux/store';
import { LineSeriesPoint } from 'react-vis';

class TestPoints {
  scope_data: LineSeriesPoint[][] = []; //[ch-1] for channel, [5] for math
  getDataMaxCh = 5;
  lastX: number = 0;

  setChArgs: PlumberArgs;
  setFileArgs: PlumberArgs;
  setChDone: Boolean = false;
  setFileDone: Boolean = false;

  constructor(xRange: number, yRange: number) {
    store.dispatch({type: "graph/xDomain", payload: [0, xRange]});
    store.dispatch({type: "graph/yDomain", payload: [-yRange, yRange]})

    let state = store.getState();
    for(var j = 0; j < this.getDataMaxCh; j++) {
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
      writeData: [state.verticalWidget.getDataChannelOrder.length, 0]
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
  }

  mountCalls() {
    Plumber.getInstance().cycle(this.setChArgs);
    Plumber.getInstance().cycle(this.setFileArgs);
  }

  update() {
    if(this.setChDone && this.setFileDone) {
      let state = store.getState();
      let xLimit = state.graph.xDomain[1];
      let doMath = state.mathWidget.mathEnabled as boolean;
      let order = state.verticalWidget.getDataChannelOrder as number[];

      let args: PlumberArgs = {
        headCheck: () => true,
        bodyCheck: (a, bytesRead, body) => {
          var chMax = (doMath) ? order.length + 1: order.length;
          var perChannel = Math.floor(body.length/chMax);
          let xOffset = (this.lastX < xLimit) ? this.lastX : 0;
          for(var channel = 0; channel < this.getDataMaxCh; channel++) {
            let mathCh = (channel == this.getDataMaxCh-1) && doMath;
            let dataCh = order.includes(channel + 1);
            if(mathCh || dataCh) {
              for(var i = 0; i < perChannel; i++) {
                var x = xOffset + i;
                if(x != 0 && !this.scope_data[channel][x-1]) {
                  //Adding a channel while other channels in middle of screen
                  //causes an error.
                  break;
                }
                let y = body[channel*perChannel + i];
                this.scope_data[channel][x] = {x: x, y: y};
              }
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

  getData() {
    return this.scope_data;
  }
}

export default TestPoints;