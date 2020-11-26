const initialState = {
  value: 0
}

export default function counterReducer(state = initialState, action: { type: any }) {
  switch (action.type) {
    case 'INCREASE_COUNTER':
      return { value: state.value + 1 }
    case 'DESCREASE_COUNTER':
      return { value: state.value - 1 }
    default:
      return state
  }
}