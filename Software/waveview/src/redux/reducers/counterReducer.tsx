const initialState = {
  count: 0
};

export default function(state = initialState, action: { type: any; }) {
  switch(action.type) {
    case 'INCREMENT_COUNTER':
      return {
        count: state.count + 1
      };
    case 'DECREMENT_COUNTER':
      return {
        count: state.count - 1
      };
    default:
      return state;
  }
}