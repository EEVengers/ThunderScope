const initialState = {
  channel: 1,
  color: '#EBFF00'
};

const channelColorsList = ["", "#EBFF00", "#00FF19", "#0075FF", "#FF0000"]

export default function(state = initialState, action: { type: any; }) {
  switch(action.type) {
    case 'INCREMENT_CHANNEL':
      if (state.channel >= 4) {
        return {
          channel: state.channel,
          color: state.color
        }
      }
      return {
        channel: state.channel + 1,
        color: channelColorsList[state.channel + 1]
      };
    case 'DECREMENT_CHANNEL':
      if (state.channel == 1) {
        return {
          channel: state.channel,
          color: state.color
        }
      }
      return {
        channel: state.channel - 1,
        color: channelColorsList[state.channel - 1]
      };
    default:
      return state;
  }
}