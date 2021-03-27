import TriggerWidgetInitialState from '../../initialStates/triggerWidgetInitialState';

export default function TriggerWidgetReducer(state = TriggerWidgetInitialState, action: {type: any, payload: any}) {
  var channelIndex = state.triggerChannel - 1;
  var tmp;

  switch(action.type) {
    case "trigger/changeChannel":
      return {
        ...state,
        triggerChannel: action.payload
      };
    case "trigger/changeTriggerType":
      tmp = state.triggerType;

      tmp[channelIndex] = action.payload;
      return {
        ...state,
        triggerType: tmp
      };
    case "trigger/increaseTriggerLevelValue":
      tmp = state.triggerLevel;
      tmp[channelIndex].value = Number((state.triggerLevel[channelIndex].value + 1).toFixed(1));
      return {
        ...state,
        triggerLevel: tmp
      };
    case "trigger/decreaseTriggerLevelValue":
      tmp = state.triggerLevel;
      tmp[channelIndex].value = Number((state.triggerLevel[channelIndex].value - 1).toFixed(1));
      return {
        ...state,
        triggerLevel: tmp
      };
    case "trigger/changeTriggerLevelUnit":
      tmp = state.triggerLevel;
      tmp[channelIndex].unit = action.payload;
      return {
        ...state,
        triggerLevel: tmp
      }
    default:
      return state;
  }
}