import { combineReducers } from 'redux';
import horizontalWidgetReducer from './widgets/horizontalWidgetReducer';
import verticalWidgetReducer from './widgets/verticalWidgetReducer';
import measurementsWidgetReducer from './widgets/measurementsWidgetReducer';
import triggerWidgetReducer from './widgets/triggerWidgetReducer';

export default combineReducers(
  {
    horizontalWidget: horizontalWidgetReducer,
    verticalWidget: verticalWidgetReducer,
    measurementsWidget: measurementsWidgetReducer,
    triggerWidget: triggerWidgetReducer
  }
);
