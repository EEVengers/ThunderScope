import SettingsInitialState from '../initialStates/settingsInitialState';

export default function SettingsReducer(state = SettingsInitialState, action: {type: any, payload: any}) {
  switch(action.type) {
    default:
      return state;
  }
}