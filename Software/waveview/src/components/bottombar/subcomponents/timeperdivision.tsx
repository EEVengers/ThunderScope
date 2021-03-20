import React from 'react';
import { connect } from 'react-redux';
import './../../../css/bottombar/subcomponents/timeperdivision.css';
import ControlMode from '../../../configuration/enums/controlMode';

class TimePerDivision extends React.Component<any, any> { 
  render() {
    return(
      <div className="TimePerDivisionComponent">
        {this.props.horizontalWidget.horizontalTimeBase.mode == ControlMode.Course && this.props.horizontalWidget.horizontalTimeBase.course.value.toString()}
        {this.props.horizontalWidget.horizontalTimeBase.mode == ControlMode.Course && this.props.horizontalWidget.horizontalTimeBase.course.unit.toString() + "/div"}
        {this.props.horizontalWidget.horizontalTimeBase.mode == ControlMode.Fine && this.props.horizontalWidget.horizontalTimeBase.fine.value.toString()}
        {this.props.horizontalWidget.horizontalTimeBase.mode == ControlMode.Fine && this.props.horizontalWidget.horizontalTimeBase.fine.unit.toString() + "/div"}
      </div>
    )
  }
}

function mapStateToProps(state: { horizontalWidget: any; }) {
  return {
    horizontalWidget: state.horizontalWidget
  };
}

export default connect(mapStateToProps)(TimePerDivision);