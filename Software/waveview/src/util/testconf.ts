import { CMD, PlumberArgs, Plumber } from './plumber';

class TestConf {
  getChArgs: PlumberArgs;
  setChArgs: PlumberArgs;

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
  }

  update(get: boolean) {
    if(get) {
      Plumber.getInstance().cycle(this.getChArgs);
    }
    else {
      Plumber.getInstance().cycle(this.setChArgs);
    }
  }
}

export default TestConf;