import GraphStatus from "../../configuration/enums/graphStatus";
import HorizontalWidgetInitialState from "./horizontalWidgetInitialState";
import TimeUnit from "../../configuration/enums/timeUnit";
import { convertTime } from "../../util/convert";

let defaultTimeDivisions = 10;
let coarse = HorizontalWidgetInitialState.horizontalTimeBase.course;
let xLimit = convertTime(coarse.value, coarse.unit, TimeUnit.NanoSecond) * defaultTimeDivisions;

const GraphInitialState = {
  currentStatus: GraphStatus.On,
  singleMode: false,
  xDomain: [0,xLimit],
  yDomain: [-128,128],
  tickCount: 0,
  voltageDivisions: 10, //TODO: change graph to 8, make this 8
  timeDivisons: defaultTimeDivisions
};

export default GraphInitialState;