import GraphStatus from "../../configuration/enums/graphStatus";
import HorizontalWidgetInitialState from "./horizontalWidgetInitialState";
import TimeUnit from "../../configuration/enums/timeUnit";
import { convertTime } from "../../util/convert";

const GraphInitialState = {
  currentStatus: GraphStatus.On,
  singleMode: false,
  tickCount: 0
};

export default GraphInitialState;