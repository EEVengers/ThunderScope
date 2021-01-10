import { combineReducers } from 'redux';
import channelReducer from './channelReducer';
import counterReducer from './counterReducer';
import horizontalWidgetReducer from './horizontalWidgetReducer';
import verticalWidgetReducer from './verticalWidgetReducer';

export default combineReducers(
  {
    horizontalWidget: horizontalWidgetReducer,
    verticalWidget: verticalWidgetReducer,
    count: counterReducer, 
    channel: channelReducer
  }
);
