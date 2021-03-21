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

      <div className="MeasurementsWidget-Max">
        <label
          className="DisplayValue-MaxLabel"
        >
          {this.props.measurementsWidget.measurement[0].mathType}
        </label>
        <label
          className="DisplayValue-MaxValue"
        >
          {this.props.measurementsWidget.measurement[0].value}
          {this.props.measurementsWidget.measurement[0].unit}
        </label>
        <div className="ClearBlock"></div> 
      </div>

      <div className="MeasurementsWidget-Min">
        <label
          className="DisplayValue-MinLabel"
        >
          {this.props.measurementsWidget.measurement[1].mathType}
        </label>
        <label
          className="DisplayValue-MinValue"
        >
          {this.props.measurementsWidget.measurement[1].value}
          {this.props.measurementsWidget.measurement[1].unit}
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