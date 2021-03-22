import { CMD, PlumberArgs, Plumber } from './plumber';

class TestConf {
  getEdgeArgs: PlumberArgs;
  setEdgeArgs: PlumberArgs;
  getWinArgs: PlumberArgs;
  setWinArgs: PlumberArgs;

  getMinArgs: PlumberArgs;
  getMaxArgs: PlumberArgs;

  constructor() {

    this.getEdgeArgs = {
      headCheck: (a, head) => true,
      bodyCheck: (a, bytesRead, body) => {
        console.log("C++ edge type: " + body[0]);
        return true;
      },
      cmd: CMD.CMD_GetEdgeType,
      id: 0,
      writeData: [0, 0]
    }

    this.setEdgeArgs = {
      headCheck: () => true,
      bodyCheck: () => true,
      cmd: CMD.CMD_SetEdgeType,
      id: 0,
      writeData: [2, 0]
    }

    this.getWinArgs = {
      headCheck: () => true,
      bodyCheck: (args, bytesRead, body) => {
        var body32 = new Uint32Array(body.buffer);
        console.log(body32);
        return true;
      },
      cmd: CMD.CMD_GetWindowSize,
      id: 0,
      writeData: [0, 0]
    }

    this.setWinArgs = {
      headCheck: () => {
        console.log("I set win");
        return true;
      },
      bodyCheck: () => true,
      cmd: CMD.CMD_SetWindowSize,
      id: 0,
      writeData: new Int8Array((new Uint32Array([20])).buffer)
    }

    this.getMinArgs = {
      headCheck: () => true,
      bodyCheck: (args, bytesRead, body) => {
        console.log(Plumber.getInstance().decodeGetMinMax(args, body));
        return true;
      },
      cmd: CMD.CMD_GetMin,
      id: 0,
      writeData: [1, 0, 1, 1]
    }

    this.getMaxArgs = {
      headCheck: () => true,
      bodyCheck: (args, bytesRead, body) => {
        console.log(Plumber.getInstance().decodeGetMinMax(args, body));
        return true;
      },
      cmd: CMD.CMD_GetMax,
      id: 0,
      writeData: [1, 1, 1, 1]
    }

  }

  update(get: boolean) {
    /*if(get) {
      Plumber.getInstance().cycle(this.getWinArgs);
    }
    else {
      Plumber.getInstance().cycle(this.setWinArgs);
    }*/
    Plumber.getInstance().cycle(this.getMinArgs);
  }
}

export default TestConf;