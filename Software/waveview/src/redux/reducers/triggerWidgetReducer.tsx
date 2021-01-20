import TriggerType from '../../configuration/enums/triggerType';

const initialState = {
  triggerChannel: 1,
  triggerType: TriggerType.RisingEdge,
  triggerLevel: 0
};

export default function(state = initialState, action: {type: any, payload: any}) {
  switch(action.type) {
    case "trigger/test":
      return { ...state };
    default:
      return state;
  }
}