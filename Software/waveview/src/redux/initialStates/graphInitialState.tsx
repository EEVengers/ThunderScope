import GraphStatus from "../../configuration/enums/graphStatus";

const GraphInitialState = {
  currentStatus: GraphStatus.On,
  singleMode: false,
  xDomain: [0,0],
  yDomain: [0,0],
  tickCount: 0
};

export default GraphInitialState;