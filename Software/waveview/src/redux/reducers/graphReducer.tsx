import GraphStatus from '../../configuration/enums/graphStatus';
import GraphInitialState from '../initialStates/graphInitialState';

export default function(state = GraphInitialState, action: {type: any, payload: any}) {
  switch(action.type) {
    case "graph/changeStatus":
      var newStatus = state.currentStatus === GraphStatus.On ? GraphStatus.Off : GraphStatus.On;
      return {
        ...state,
        currentStatus: newStatus
      };
    case "graph/singleMode":
      // Need to implement this in the tick generator to stop/pause polling when in single mode
      return {
        ...state,
        currentStatus: GraphStatus.Off,
        singleMode: !state.singleMode
      };
    default:
      return state;
  }
}