import GraphStatus from "../../configuration/enums/graphStatus";

const GraphInitialState = {
  currentStatus: GraphStatus.On,
  singleMode: false,
  xDomain: [0,1000],
  yDomain: [-128,128],
  tickCount: 0,
  voltageDivisions: 10, //TODO: change graph to 8, make this 8
  timeDivisons: 10
};

export default GraphInitialState;