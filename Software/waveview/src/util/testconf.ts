import { CMD, PlumberArgs, Plumber, SetMathOp } from './plumber';

class TestConf {
  getChArgs: PlumberArgs;
  setChArgs: PlumberArgs;
  setMathArgs: PlumberArgs;

  constructor() {
    this.getChArgs = {
      headCheck: (a, head) => true,
      bodyCheck: (a, bytesRead, body) => {
        console.log("C++ channel count: " + body[0]);
        return true;
      },
      cmd: CMD.CMD_GetCh,
      id: 0,
      writeData: [0, 0]
    }

    this.setChArgs = {
      headCheck: () => true,
      bodyCheck: () => true,
      cmd: CMD.CMD_SetCh,
      id: 0,
      writeData: [4, 0]
    }

    this.setMathArgs = {
      bodyCheck: () => true,
      headCheck: () => {
        console.log("I did it, I set the math");
        return true;
      },
      cmd: CMD.CMD_SetMath,
      id: 0,
      writeData: Plumber.getInstance().makeSetMathData(0, 2, SetMathOp.SetMath_Plus)
    }
  }

  update(get: boolean) {
    if(get) {
      Plumber.getInstance().cycle(this.getChArgs);
    }
    else {
      Plumber.getInstance().cycle(this.setChArgs);
    }
  }

  mathUpdate() {
    Plumber.getInstance().cycle(this.setMathArgs);
  }
}

export default TestConf;