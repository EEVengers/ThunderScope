import TriggerType from '../../configuration/enums/triggerType';
import DefaultChannelColor from '../../configuration/enums/defaultChannelColor';
import VoltageUnit from '../../configuration/enums/voltageUnit';

const initialState = {
  triggerChannel: 1,
  channelColorsList: [
    DefaultChannelColor.Channel1, 
    DefaultChannelColor.Channel2, 
    DefaultChannelColor.Channel3, 
    DefaultChannelColor.Channel4
  ],
  triggerType: [
    TriggerType.RisingEdge,
    TriggerType.RisingEdge,
    TriggerType.RisingEdge,
    TriggerType.RisingEdge
  ],
  triggerLevel: [
    {value: 0.0, unit: VoltageUnit.MilliVolt},
    {value: 0.0, unit: VoltageUnit.MilliVolt},
    {value: 0.0, unit: VoltageUnit.MilliVolt},
    {value: 0.0, unit: VoltageUnit.MilliVolt}
  ]
};

export default function(state = initialState, action: {type: any, payload: any}) {
  var channelIndex = state.triggerChannel - 1;
  var tmp;

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
      tmp = state.triggerType;

      if (state.triggerType[channelIndex] == TriggerType.RisingEdge) {
        tmp[channelIndex] = TriggerType.FallingEdge;
        return {
          ...state,
          triggerType: tmp
        }
      }
      tmp[channelIndex] = TriggerType.RisingEdge;
      return {
        ...state,
        triggerType: tmp
      }
    case "trigger/increaseTriggerLevelValue":
      tmp = state.triggerLevel;
      tmp[channelIndex].value = Number((state.triggerLevel[channelIndex].value + 0.1).toFixed(1));
      return {
        ...state,
        triggerLevel: tmp
      };
    case "trigger/decreaseTriggerLevelValue":
      tmp = state.triggerLevel;
      tmp[channelIndex].value = Number((state.triggerLevel[channelIndex].value - 0.1).toFixed(1));
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