import { combineReducers } from 'redux';
import channelReducer from './channelReducer';
import counterReducer from './counterReducer';
import horizontalWidgetReducer from './horizontalWidgetReducer';
import verticalWidgetReducer from './verticalWidgetReducer';
import measurementsWidgetReducer from './measurementsWidgetReducer';

export default combineReducers(
  {
    horizontalWidget: horizontalWidgetReducer,
    verticalWidget: verticalWidgetReducer,
    measurementsWidget: measurementsWidgetReducer,
    count: counterReducer, 
    channel: channelReducer
  }
);
