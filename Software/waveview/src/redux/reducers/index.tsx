import { combineReducers } from 'redux';
import channelReducer from './channelReducer';
import counterReducer from './counterReducer';
import horizontalWidgetReducer from './horizontalWidgetReducer';

export default combineReducers(
  {
    horizontalWidget: horizontalWidgetReducer,
    count: counterReducer, 
    channel: channelReducer
  }
);
