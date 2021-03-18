import { CMD, PlumberArgs, Plumber } from './plumber';

class TestConf {
  getChArgs: PlumberArgs;
  setChArgs: PlumberArgs;

  getChHeads: number = 0;
  getChBodies: number = 0;

  constructor() {
    this.getChArgs = {
      headCheck: (a, head) => {
        this.getChHeads++;
        return true;
      },
      bodyCheck: (a, bytesRead, body) => {
        this.getChBodies++;
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
      console.log(this.getChHeads);
      console.log(this.getChBodies);
    }
    else {
      Plumber.getInstance().cycle(this.setChArgs);
    }
  }
}

export default TestConf;