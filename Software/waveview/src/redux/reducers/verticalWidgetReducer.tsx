const initialState = {
  channel: 1,
  channelColorsList: ["#EBFF00", "#00FF19", "#0075FF", "#FF0000"],
  value1: 0,
  value2: 0
};

export default function(state = initialState, action: {type: any, payload: any}) {
  switch(action.type) {
    case "vertical/increaseChannel":
      if (state.channel >= 4) {
        return {
          channel: state.channel,
          channelColorsList: state.channelColorsList,
          value1: state.value1,
          value2: state.value2
        }
      }
      return {
        channel: state.channel + 1,
        channelColorsList: state.channelColorsList,
        value1: state.value1,
        value2: state.value2
      };
    case "vertical/decreaseChannel":
      if (state.channel == 1) {
        return {
          channel: state.channel,
          channelColorsList: state.channelColorsList,
          value1: state.value1,
          value2: state.value2
        }
      }
      return {
        channel: state.channel - 1,
        channelColorsList: state.channelColorsList,
        value1: state.value1,
        value2: state.value2
      };
    case "vertical/increaseValue":
      if (action.payload == 1) {
        return {
          channel: state.channel,
          channelColorsList: state.channelColorsList,
          value1: state.value1 + 1,
          value2: state.value2
        }
      }
      else if (action.payload == 2) {
        return {
          channel: state.channel,
          channelColorsList: state.channelColorsList,
          value1: state.value1,
          value2: state.value2 + 1
        }
      }
      else return {
        channel: state.channel,
        channelColorsList: state.channelColorsList,
        value1: state.value1,
        value2: state.value2
      };
    case "vertical/decreaseValue":
      if (action.payload == 1) {
        return {
          channel: state.channel,
          channelColorsList: state.channelColorsList,
          value1: state.value1 - 1,
          value2: state.value2
        }
      }
      else if (action.payload == 2) {
        return {
          channel: state.channel,
          channelColorsList: state.channelColorsList,
          value1: state.value1,
          value2: state.value2 - 1
        }
      }
      else return {
        channel: state.channel,
          channelColorsList: state.channelColorsList,
        value1: state.value1,
        value2: state.value2
      };
    default:
      return state;
  }
}