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
      // Handle what needs to happen when clicking the Single button
      return state;
    default:
      return state;
  }
}