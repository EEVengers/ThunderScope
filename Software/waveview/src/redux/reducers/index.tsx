import { combineReducers } from 'redux';
import horizontalWidgetReducer from './widgetReducers/horizontalWidgetReducer';
import verticalWidgetReducer from './widgetReducers/verticalWidgetReducer';
import measurementsWidgetReducer from './widgetReducers/measurementsWidgetReducer';
import triggerWidgetReducer from './widgetReducers/triggerWidgetReducer';

export default combineReducers(
  {
    horizontalWidget: horizontalWidgetReducer,
    verticalWidget: verticalWidgetReducer,
    measurementsWidget: measurementsWidgetReducer,
    triggerWidget: triggerWidgetReducer
  }
);
