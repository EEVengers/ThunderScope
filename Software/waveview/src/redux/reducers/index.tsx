import { combineReducers } from 'redux';
import horizontalWidgetReducer from './widgets/horizontalWidgetReducer';
import verticalWidgetReducer from './widgets/verticalWidgetReducer';
import measurementsWidgetReducer from './widgets/measurementsWidgetReducer';
import triggerWidgetReducer from './widgets/triggerWidgetReducer';
import settingsReducer from './settingsReducer';
import graphReducer from './graphReducer';
import mathWidgetReducer from './widgets/mathWidgetReducer';

export default combineReducers(
  {
    horizontalWidget: horizontalWidgetReducer,
    verticalWidget: verticalWidgetReducer,
    measurementsWidget: measurementsWidgetReducer,
    triggerWidget: triggerWidgetReducer,
    mathWidget: mathWidgetReducer,
    settings: settingsReducer,
    graph: graphReducer
  }
);
