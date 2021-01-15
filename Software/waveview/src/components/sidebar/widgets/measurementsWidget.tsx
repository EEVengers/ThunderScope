import React from 'react';
import { connect } from 'react-redux';
import './../../../css/sidebar/widgets/measurementsWidget.css';

class MeasurementsWidget extends React.Component<any, any> {

  render() {
    return (
      <div className="MeasurementsWidget">
        <div className="WidgetTitle">
          Measurements
        </div>

      <div className="MeasurementsWidgetDisplayValueBlock-Value1">
        <label
          className="DisplayValueBlockLeftValue1"
        >
          {this.props.measurementsWidget.leftValue1}
        </label>
        <label
          className="DisplayValueBlockRightValue1"
        >
          {this.props.measurementsWidget.rightValue1}
        </label>
        <div className="ClearBlock"></div> 
      </div>

      <div className="MeasurementsWidgetDisplayValueBlock-Value2">
        <label
          className="DisplayValueBlockLeftValue2"
        >
          {this.props.measurementsWidget.leftValue2}
        </label>
        <label
          className="DisplayValueBlockRightValue2"
        >
          {this.props.measurementsWidget.rightValue2}
        </label>
        <div className="ClearBlock"></div> 
      </div>

      </div>
    )
  }
}

function mapStateToProps(state: { measurementsWidget: any; }) {
  return {
    measurementsWidget: state.measurementsWidget
  };
}

export default connect(mapStateToProps)(MeasurementsWidget);