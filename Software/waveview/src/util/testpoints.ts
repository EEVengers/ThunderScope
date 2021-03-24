import CMD from '../configuration/enums/cmd';
import { PlumberArgs, Plumber, SetMathOp } from './plumber';
import store from '../redux/store';
import { LineSeriesPoint } from 'react-vis';
import DefaultValues from '../configuration/defaultValues';
import { convertTime } from '../util/convert';
import TimeUnit from '../configuration/enums/timeUnit';

class TestPoints {
  scope_data: LineSeriesPoint[][] = []; //[ch-1] for channel, [5] for math
  getDataMaxCh = 5;
  lastX: number = 0;

  setChArgs: PlumberArgs;
  setFileArgs: PlumberArgs;
  setWinArgs: PlumberArgs;
  setChDone: Boolean = false;
  setFileDone: Boolean = false;
  setWinDone: Boolean = false;

  constructor() {
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

    let base = state.horizontalWidget.horizontalTimeBase.course;
    let dCount = DefaultValues.divisions.time;
    let xLimit = dCount * convertTime(base.value, base.unit, TimeUnit.NanoSecond);
    this.setWinArgs = {
      headCheck: () => {
        this.setWinDone = true;
        return true;
      },
      bodyCheck: () => true,
      cmd: CMD.CMD_SetWindowSize,
      id: 0,
      writeData: new Int8Array((new Uint32Array([xLimit])).buffer)
    }
  }

  mountCalls() {
    Plumber.getInstance().cycle(this.setChArgs);
    Plumber.getInstance().cycle(this.setFileArgs);
    Plumber.getInstance().cycle(this.setWinArgs);
  }

  update() {
    if(this.setChDone && this.setFileDone && this.setWinDone) {
      let state = store.getState();
      let base = state.horizontalWidget.horizontalTimeBase.course;
      let xLimit = convertTime(base.value, base.unit, TimeUnit.NanoSecond);
      let doMath = state.mathWidget.mathEnabled as boolean;
      let order = state.verticalWidget.getDataChannelOrder as number[];

      let args: PlumberArgs = {
        headCheck: () => true,
        bodyCheck: (a, bytesRead, body) => {
          var chMax = (doMath) ? order.length + 1: order.length;
          var perChannel = Math.floor(body.length/chMax);
          let xOffset = (this.lastX < xLimit) ? this.lastX : 0;
          var cppChannel = 0;
          for(var uiChannel = 0; uiChannel < this.getDataMaxCh; uiChannel++) {
            let mathCh = (uiChannel == this.getDataMaxCh-1) && doMath;
            let dataCh = order.includes(uiChannel + 1);
            if(mathCh || dataCh) {
              for(var i = 0; i < perChannel; i++) {
                var x = xOffset + i;
                if(x != 0 && !this.scope_data[uiChannel][x-1]) {
                  //Adding a channel while other channels in middle of screen
                  //causes an error.
                  break;
                }
                let y = body[cppChannel*perChannel + i];
                this.scope_data[uiChannel][x] = {x: x, y: y};
              }
              cppChannel++;
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