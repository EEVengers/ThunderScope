import { data } from '../testdata/sin1MHz';

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

  constructor() {
    this.x = new Range(1000);
    this.y = new Range(300);
  }

  update(tickCount: number) {
    let maxSeconds = Math.floor(data.length/this.x.displayLimit)
    let seconds = Math.floor(tickCount/60) % maxSeconds;
    let currentSecondTicks = (tickCount % 60);
    this.x.dataMin = seconds * this.x.displayLimit;
    this.x.dataMax = this.x.dataMin + (Math.floor(this.x.displayLimit*currentSecondTicks/60));
  }

  getData() {
    return data.slice(this.x.dataMin, this.x.dataMax);
  }
}

export default TestPoints;