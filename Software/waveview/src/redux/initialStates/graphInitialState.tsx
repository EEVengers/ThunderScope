import GraphStatus from "../../configuration/enums/graphStatus";

const GraphInitialState = {
  currentStatus: GraphStatus.On,
  xDomain: [0,0],
  yDomain: [0,0]
};

export default GraphInitialState;