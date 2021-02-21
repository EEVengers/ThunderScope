import React from 'react';
import { connect } from 'react-redux';
import DefaultValues from '../../../configuration/defaultValues';
import ControlMode from '../../../configuration/enums/controlMode';
import VoltageUnit from '../../../configuration/enums/voltageUnit';
import './../../../css/sidebar/widgets/verticalWidget.css';

class VerticalWidget extends React.Component<any, any> { 
   // Active Channel
  changeChannel = (channelNumber: number) => {
    this.props.dispatch({type: 'vertical/changeChannel', payload: channelNumber})
  }

  // Time Per Division
  incrementTimePerDivision = () => {
    this.props.dispatch({type: 'vertical/increaseTimePerDivision'});
  }

  decrementTimePerDivision = () => {
    this.props.dispatch({type: 'vertical/decreaseTimePerDivision'});
  }

  incrementTimePerDivisionFine = () => {
    this.props.dispatch({type: 'vertical/increaseTimePerDivisionFine'});
  }

  decrementTimePerDivisionFine = () => {
    this.props.dispatch({type: 'vertical/decreaseTimePerDivisionFine'});
  }

  changeControlMode = (mode: ControlMode) => {
    this.props.dispatch({ type: 'vertical/changeControlMode', payload: mode});
  }

  changeDivisionUnit = (unit: VoltageUnit) => {
    this.props.dispatch({type: 'vertical/changeDivisionUnit', payload: unit});
  }

  // Vertical Offset
  incrementVerticalOffset = () => {
    this.props.dispatch({ type: 'vertical/increaseVerticalOffset'});
  }

  decrementVerticalOffset = () => {
    this.props.dispatch({ type: 'vertical/decreaseVerticalOffset'});
  }


  render() {
    return (
      <div className="VerticalWidget">
        <div className="WidgetTitle">
          Vertical
        </div>

      <div className="ChannelTitle">
        Channel
      </div>
      <div className="ChannelSelectionButtons">
        <button
          className="Channel1Button"
          onClick={() => this.changeChannel(1)}>
          <label
            className={"Channel1ButtonText"}
            style={{color: this.props.verticalWidget.activeChannel == 1 ? this.props.verticalWidget.channelColorsList[this.props.verticalWidget.activeChannel-1] : "black"}}>
            CH1
          </label>
        </button>
        <button
          className="Channel2Button"
          onClick={() => this.changeChannel(2)}>
          <label
            className={"Channel2ButtonText"}
            style={{color: this.props.verticalWidget.activeChannel == 2 ? this.props.verticalWidget.channelColorsList[this.props.verticalWidget.activeChannel-1] : "black"}}>
            CH2
          </label>
        </button>
        <button
          className="Channel3Button"
          onClick={() => this.changeChannel(3)}>
          <label
            className={"Channel3ButtonText"}
            style={{color: this.props.verticalWidget.activeChannel == 3 ? this.props.verticalWidget.channelColorsList[this.props.verticalWidget.activeChannel-1] : "black"}}>
            CH3
          </label>
        </button>
        <button
          className="Channel4Button"
          onClick={() => this.changeChannel(4)}>
          <label
            className={"Channel4ButtonText"}
            style={{color: this.props.verticalWidget.activeChannel == 4 ? this.props.verticalWidget.channelColorsList[this.props.verticalWidget.activeChannel-1] : "black"}}>
            CH4
          </label>
        </button>
      </div>

      <div className="DivisionTitle">
        Division
      </div>
      <div className="DivisionMode">
          <button
            className="CourseControlButton"
            onClick={() => this.changeControlMode(ControlMode.Course)}>
              <label
                className=""
                style={{fontWeight: this.props.verticalWidget.settings.controlMode ==  ControlMode.Course ? "bold" : "normal"}}>
                Course
              </label>
          </button>
          <button
            className="FineControlButton"
            onClick={() => this.changeControlMode(ControlMode.Fine)}>
              <label
                  className=""
                  style={{fontWeight: this.props.verticalWidget.settings.controlMode ==  ControlMode.Fine ? "bold" : "normal"}}>
                  Fine
              </label>
          </button>
      </div>

      <div className="VerticalWidgetAdjustBlock-TimePerDivision">
        <button 
          className="MinusButton"
          onClick={() => this.props.verticalWidget.settings.controlMode == ControlMode.Course ? this.decrementTimePerDivision() : this.decrementTimePerDivisionFine()}>
          -
        </button>
        <label 
          className="AdjustValueBlockTimePerDivision"
          style={{color: this.props.verticalWidget.channelColorsList[this.props.verticalWidget.activeChannel-1]}}
        >
          {this.props.verticalWidget.settings.controlMode == ControlMode.Course && DefaultValues.x1ProbeValues[this.props.verticalWidget.timePerDivision[this.props.verticalWidget.activeChannel-1].index]}
          {this.props.verticalWidget.settings.controlMode == ControlMode.Fine && this.props.verticalWidget.timePerDivision[this.props.verticalWidget.activeChannel-1].fineValue.toString()}
          {this.props.verticalWidget.settings.controlMode == ControlMode.Fine && this.props.verticalWidget.timePerDivision[this.props.verticalWidget.activeChannel-1].fineUnit.toString() + "/div"}
        </label>
        <button 
          className="PlusButton"
          onClick={() => this.props.verticalWidget.settings.controlMode == ControlMode.Course ? this.incrementTimePerDivision() : this.incrementTimePerDivisionFine()}>
          +
        </button>
      </div>

      {this.props.verticalWidget.settings.controlMode == ControlMode.Fine &&
        <div className="FineModeUnitButtons">
        <button
          className="NanoVoltButton"
          onClick={() => this.changeDivisionUnit(VoltageUnit.NanoVolt)}>
          <label
            className={"MicroVoltButtonText"}
            style={{fontWeight: this.props.verticalWidget.timePerDivision[this.props.verticalWidget.activeChannel-1].fineUnit == VoltageUnit.NanoVolt? "bold" : "normal"}}>
            {VoltageUnit.NanoVolt}
          </label>
        </button>
        <button
          className="MicroVoltButton"
          onClick={() => this.changeDivisionUnit(VoltageUnit.MicroVolt)}>
          <label
            className={"MicroVoltButtonText"}
            style={{fontWeight: this.props.verticalWidget.timePerDivision[this.props.verticalWidget.activeChannel-1].fineUnit == VoltageUnit.MicroVolt? "bold" : "normal"}}>
            {VoltageUnit.MicroVolt}
          </label>
        </button>
        <button
          className="MilliVoltButton"
          onClick={() => this.changeDivisionUnit(VoltageUnit.MilliVolt)}>
          <label
            className={"MilliVoltButtonText"}
            style={{fontWeight: this.props.verticalWidget.timePerDivision[this.props.verticalWidget.activeChannel-1].fineUnit == VoltageUnit.MilliVolt? "bold" : "normal"}}>
            {VoltageUnit.MilliVolt}
          </label>
        </button>
        <button
          className="VoltButton"
          onClick={() => this.changeDivisionUnit(VoltageUnit.Volt)}>
          <label
            className={"VoltButtonText"}
            style={{fontWeight: this.props.verticalWidget.timePerDivision[this.props.verticalWidget.activeChannel-1].fineUnit == VoltageUnit.Volt? "bold" : "normal"}}>
            {VoltageUnit.Volt}
          </label>
        </button>
        </div>
        }

      <div className="OffsetTitle">
        Offset
      </div>
      <div className="VerticalWidgetAdjustBlock-VerticalOffset">
        <button 
          className="MinusButton"
          onClick={() => this.decrementVerticalOffset()}>
          -
        </button>
        <label 
          className="AdjustValueBlockVerticalOffset"
          style={{color: this.props.verticalWidget.channelColorsList[this.props.verticalWidget.activeChannel-1]}}
        >
          {this.props.verticalWidget.verticalOffset[this.props.verticalWidget.activeChannel-1].value}{"mV"}
        </label>
        <button 
          className="PlusButton"
          onClick={() => this.incrementVerticalOffset()}>
          +
        </button>
      </div>

      </div>
    )
  }
}

function mapStateToProps(state: { verticalWidget: any; }) {
  return {
    verticalWidget: state.verticalWidget
  };
}

export default connect(mapStateToProps)(VerticalWidget);