const initialState = {
  channel: 1,
  color: 'yellow'
};

export default function(state = initialState, action: { type: any; }) {
  switch(action.type) {
    case 'INCREMENT_CHANNEL':
      return {
        channel: state.channel + 1
      };
    case 'DECREMENT_CHANNEL':
      return {
        channel: state.channel - 1
      };
    default:
      return state;
  }
}