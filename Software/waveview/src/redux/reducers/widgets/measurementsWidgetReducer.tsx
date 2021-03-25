import MeasurementsWidgetInitialState from '../../initialStates/measurementsWidgetInitialState';
import { MaxMinResult } from '../../../util/plumber';

export default function MeasurementsWidgetReducer(state = MeasurementsWidgetInitialState, action: {type: any, payload: any}) {
  var tmp;

  switch(action.type) {
    case "measurements/selectChannel":
      tmp = state.displayChannel;
      tmp[action.payload - 1] = !state.displayChannel[action.payload - 1];

      return {
        ...state,
        displayChannel: tmp
      };
    case "measurements/setMax":
      //TODO: unit analysis
      let setMaxPayload = action.payload as MaxMinResult[];
      tmp = state.max
      for(let maxItem of setMaxPayload) {
        tmp[maxItem.ch - 1].value = maxItem.y;
      }
      return {
        ...state,
        max: tmp
      }
    case "measurements/setMin":
      //TODO: unit analysis
      let setMinPayload = action.payload as MaxMinResult[];
      tmp = state.min
      for(let minItem of setMinPayload) {
        tmp[minItem.ch - 1].value = minItem.y;
      }
      return {
        ...state,
        min: tmp
      }
    case "measurements/tick":
      return {
        ...state,
        tickCount: state.tickCount + 1
      }
    default:
      return state;
  }
}