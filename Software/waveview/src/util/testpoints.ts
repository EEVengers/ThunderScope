import { data as sine_data} from '../testdata/sin1MHz';
import { data as sinc_data} from '../testdata/sinc1MHz';

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
  data: any[];

  constructor(xRange: number, yRange: number, source: string) {
    this.x = new Range(xRange);
    this.y = new Range(yRange);
    if(source === "sine") {
      this.data = sine_data;
    }
    else if(source === "sinc") {
      this.data = sinc_data;
    }
    else {
      this.data = [];
    }
  }

  update(tickCount: number) {
    let maxSeconds = Math.floor(this.data.length/this.x.displayLimit)
    let seconds = Math.floor(tickCount/60) % maxSeconds;
    let currentSecondTicks = (tickCount % 60);
    this.x.dataMin = seconds * this.x.displayLimit;
    this.x.dataMax = this.x.dataMin + (Math.floor(this.x.displayLimit*currentSecondTicks/60));
  }

  getData() {
    return this.data.slice(this.x.dataMin, this.x.dataMax);
  }
}

export default TestPoints;