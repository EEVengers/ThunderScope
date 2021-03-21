import MeasurementsWidgetInitialState from '../../initialStates/measurementsWidgetInitialState';

export default function(state = MeasurementsWidgetInitialState, action: {type: any, payload: any}) { 
  var tmp;

  switch(action.type) {
    case "measurements/selectChannel":
      tmp = state.displayChannel;
      tmp[action.payload - 1] = !state.displayChannel[action.payload - 1];

      return {
        ...state,
        displayChannel: tmp
      };
    default:
      return state;
  }
}