import { combineReducers } from 'redux';
import channelReducer from './channelReducer';
import counterReducer from './counterReducer';

export default combineReducers(
  {
    count: counterReducer, 
    channel: channelReducer
  }
);
