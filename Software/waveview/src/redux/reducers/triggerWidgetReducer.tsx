import TriggerType from '../../configuration/enums/triggerType';
import DefaultChannelColor from '../../configuration/enums/defaultChannelColor';

const initialState = {
  triggerChannel: 1,
  channelColorsList: [
    DefaultChannelColor.Channel1, 
    DefaultChannelColor.Channel2, 
    DefaultChannelColor.Channel3, 
    DefaultChannelColor.Channel4
  ],
  triggerType: TriggerType.RisingEdge,
  triggerLevel: 0
};

export default function(state = initialState, action: {type: any, payload: any}) {
  switch(action.type) {
    case "trigger/increaseChannel":
      if (state.triggerChannel >= 4) {
        return { ...state }
      }
      return {
        ...state,
        triggerChannel: state.triggerChannel + 1
      };
    case "trigger/decreaseChannel":
      if (state.triggerChannel == 1) {
        return { ...state }
      }
      return {
        ...state,
        triggerChannel: state.triggerChannel - 1
      };
    case "trigger/changeTriggerType":
      if (state.triggerType == TriggerType.RisingEdge) {
        return {
          ...state,
          triggerType: TriggerType.FallingEdge
        }
      }
      return {
        ...state,
        triggerType: TriggerType.RisingEdge
      }
    case "trigger/increaseTriggerLevel":
      return {
        ...state,
        triggerLevel: state.triggerLevel + 1
      };
    case "trigger/decreaseTriggerLevel":
      return {
        ...state,
        triggerLevel: state.triggerLevel - 1
      };
    default:
      return state;
  }
}