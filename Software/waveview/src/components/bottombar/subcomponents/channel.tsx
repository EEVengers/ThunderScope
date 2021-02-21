import React from 'react';
import { connect } from 'react-redux';
import ControlMode from '../../../configuration/enums/controlMode';
import './../../../css/bottombar/subcomponents/channel.css';

class Channel extends React.Component<any, any> {
  render() {
    return (
      <div className={"Channel" + this.props.channelNumber} style={{color: this.props.verticalWidget.channelColorsList[this.props.channelNumber-1]}}>
        <label>
          CH{this.props.channelNumber}: 
          {" "}
          {this.props.verticalWidget.settings.controlMode == ControlMode.Course && this.props.verticalWidget.timePerDivision[this.props.channelNumber-1].value}
          {this.props.verticalWidget.settings.controlMode == ControlMode.Fine && this.props.verticalWidget.timePerDivision[this.props.channelNumber-1].fineValue.toString()}
          {this.props.verticalWidget.settings.controlMode == ControlMode.Fine && this.props.verticalWidget.timePerDivision[this.props.channelNumber-1].fineUnit.toString() + "/div"},
          {" "}
          {this.props.verticalWidget.verticalOffset[this.props.channelNumber-1].value}
          {this.props.verticalWidget.verticalOffset[this.props.channelNumber-1].unit},
          {" "}
          {this.props.verticalWidget.measurementType[this.props.channelNumber-1]}
        </label>
      </div>
    )
  }
}

function mapStateToProps(state: { verticalWidget: any; }) {
  return {
    verticalWidget: state.verticalWidget
  };
}

export default connect(mapStateToProps)(Channel);
  