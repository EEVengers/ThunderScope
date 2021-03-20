import React from 'react';
import { connect } from 'react-redux';
import ControlMode from '../../../configuration/enums/controlMode';
import ProbeMode from '../../../configuration/enums/probeMode';
import './../../../css/bottombar/subcomponents/channel.css';

class Channel extends React.Component<any, any> {
  render() {
    return (
      <div className={"Channel" + this.props.channelNumber} style={{color: this.props.verticalWidget.channelColorsList[this.props.channelNumber-1]}}>
        <label>
          CH{this.props.channelNumber}: 
          {" "}
          {this.props.verticalWidget.settings[this.props.channelNumber-1].controlMode === ControlMode.Course 
            && this.props.verticalWidget.timePerDivision[this.props.channelNumber-1].course.value.toString()
            + this.props.verticalWidget.timePerDivision[this.props.channelNumber-1].course.unit.toString() + "/div"}
          {this.props.verticalWidget.settings[this.props.channelNumber-1].controlMode === ControlMode.Fine 
            && (this.props.verticalWidget.settings[this.props.channelNumber-1].probeMode === ProbeMode.x1 
              ? this.props.verticalWidget.timePerDivision[this.props.channelNumber-1].fine.value.toString()
              : this.props.verticalWidget.timePerDivision[this.props.channelNumber-1].fine.x10value.toString())
            + this.props.verticalWidget.timePerDivision[this.props.channelNumber-1].fine.unit.toString() + "/div"},
          {" "}
          {this.props.verticalWidget.verticalOffset[this.props.channelNumber-1].value}
          {this.props.verticalWidget.verticalOffset[this.props.channelNumber-1].unit},
          {" "}
          {this.props.verticalWidget.settings[this.props.channelNumber-1].coupling}
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
  