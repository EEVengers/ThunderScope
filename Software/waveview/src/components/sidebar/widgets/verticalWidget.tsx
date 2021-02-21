import React from 'react';
import { connect } from 'react-redux';
import DefaultValues from '../../../configuration/defaultValues';
import ControlMode from '../../../configuration/enums/controlMode';
import VoltageUnit from '../../../configuration/enums/voltageUnit';
import MeasurementType from '../../../configuration/enums/measurementType';
import ProbeMode from '../../../configuration/enums/probeMode';
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

  changeCouplingMode = (mode: MeasurementType) => {
    this.props.dispatch({type: 'vertical/changeCouplingMode', payload: mode});
  }

  changeProbeMode = (mode: ProbeMode) => {
    this.props.dispatch({type: 'vertical/changeProbeMode', payload: mode});
  }

  changeBandwidth = (num: number) => {
    this.props.dispatch({type: 'vertical/changeBandwidth', payload: num});
  }

  changeChannelStatus = (channelNumber: number) => {
    this.props.dispatch({type: 'vertical/changeChannelStatus', payload: channelNumber});
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
          onClick={() => this.props.verticalWidget.settings[0].status && this.changeChannel(1)}
          onDoubleClick={() => this.changeChannelStatus(0)}>
          <label
            className={"Channel1ButtonText"}
            style={{color: this.props.verticalWidget.settings[0].status == 1 ? this.props.verticalWidget.channelColorsList[0] : "black"}}>
            CH1
          </label>
        </button>
        <button
          className="Channel2Button"
          onClick={() => this.props.verticalWidget.settings[1].status && this.changeChannel(2)}
          onDoubleClick={() => this.changeChannelStatus(1)}>
          <label
            className={"Channel2ButtonText"}
            style={{color: this.props.verticalWidget.settings[1].status == 1 ? this.props.verticalWidget.channelColorsList[1] : "black"}}>
            CH2
          </label>
        </button>
        <button
          className="Channel3Button"
          onClick={() => this.props.verticalWidget.settings[2].status && this.changeChannel(3)}
          onDoubleClick={() => this.changeChannelStatus(2)}>
          <label
            className={"Channel3ButtonText"}
            style={{color: this.props.verticalWidget.settings[2].status == 1 ? this.props.verticalWidget.channelColorsList[2] : "black"}}>
            CH3
          </label>
        </button>
        <button
          className="Channel4Button"
          onClick={() => this.props.verticalWidget.settings[3].status && this.changeChannel(4)}
          onDoubleClick={() => this.changeChannelStatus(3)}>
          <label
            className={"Channel4ButtonText"}
            style={{color: this.props.verticalWidget.settings[3].status == 1 ? this.props.verticalWidget.channelColorsList[3] : "black"}}>
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
                style={{fontWeight: this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].controlMode ==  ControlMode.Course ? "bold" : "normal"}}>
                Course
              </label>
          </button>
          <button
            className="FineControlButton"
            onClick={() => this.changeControlMode(ControlMode.Fine)}>
              <label
                  className=""
                  style={{fontWeight: this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].controlMode ==  ControlMode.Fine ? "bold" : "normal"}}>
                  Fine
              </label>
          </button>
      </div>

      <div className="VerticalWidgetAdjustBlock-TimePerDivision">
        <button 
          className="MinusButton"
          onClick={() => this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].controlMode == ControlMode.Course ? this.decrementTimePerDivision() : this.decrementTimePerDivisionFine()}>
          -
        </button>
        <label 
          className="AdjustValueBlockTimePerDivision"
          style={{color: this.props.verticalWidget.channelColorsList[this.props.verticalWidget.activeChannel-1]}}
        >
          {this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].controlMode == ControlMode.Course 
            && this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].probeMode == ProbeMode.x1
            && DefaultValues.x1ProbeValues[this.props.verticalWidget.timePerDivision[this.props.verticalWidget.activeChannel-1].index]}
          {this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].controlMode == ControlMode.Course 
            && this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].probeMode == ProbeMode.x10
            && DefaultValues.x10ProbeValues[this.props.verticalWidget.timePerDivision[this.props.verticalWidget.activeChannel-1].index]}  
          {this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].controlMode == ControlMode.Fine && this.props.verticalWidget.timePerDivision[this.props.verticalWidget.activeChannel-1].fineValue.toString()}
          {this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].controlMode == ControlMode.Fine && this.props.verticalWidget.timePerDivision[this.props.verticalWidget.activeChannel-1].fineUnit.toString() + "/div"}
        </label>
        <button 
          className="PlusButton"
          onClick={() => this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].controlMode == ControlMode.Course ? this.incrementTimePerDivision() : this.incrementTimePerDivisionFine()}>
          +
        </button>
      </div>

      {this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].controlMode == ControlMode.Fine &&
        <div className="FineModeUnitButtons">
        <button
          className="NanoVoltButtonVertical"
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
            style={{fontWeight: this.props.verticalWidget.timePerDivision[this.props.verticalWidget.activeChannel-1].fineUnit == VoltageUnit.MilliVolt ? "bold" : "normal"}}>
            {VoltageUnit.MilliVolt}
          </label>
        </button>
        <button
          className="VoltButton"
          onClick={() => this.changeDivisionUnit(VoltageUnit.Volt)}>
          <label
            className={"VoltButtonText"}
            style={{fontWeight: this.props.verticalWidget.timePerDivision[this.props.verticalWidget.activeChannel-1].fineUnit == VoltageUnit.Volt ? "bold" : "normal"}}>
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

      <div className="CouplingTitle">
        Coupling
      </div>
      <div className="VerticalWidgetCouplingButtons">
        <button
          className="AC-Button"
          onClick={() => this.changeCouplingMode(MeasurementType.AC)}>
          <label
            className="AC-ButtonText"
            style={{fontWeight: this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].coupling == MeasurementType.AC ? "bold" : "normal"}}>
            {MeasurementType.AC}
          </label>
        </button>
        <button
          className="DC-Button"
          onClick={() => this.changeCouplingMode(MeasurementType.DC)}>
          <label
            className="DC-ButtonText"
            style={{fontWeight: this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].coupling == MeasurementType.DC ? "bold" : "normal"}}>
            {MeasurementType.DC}
          </label>
        </button>
      </div>

      <div className="ProbeTitle">
        Probe Mode
      </div>
      <div className="VerticalWidgetProbeButtons">
        <button 
          className="x1-Button"
          onClick={() => this.changeProbeMode(ProbeMode.x1)}>
          <label
            className="x1-ButtonText"
            style={{fontWeight: this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].probeMode == ProbeMode.x1 ? "bold" : "normal"}}>
            x1
          </label>
        </button>
        <button 
          className="x10-Button"
          onClick={() => this.changeProbeMode(ProbeMode.x10)}>
          <label
            className="x10-ButtonText"
            style={{fontWeight: this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].probeMode == ProbeMode.x10 ? "bold" : "normal"}}>
            x10
          </label>
        </button>
      </div>

      <div className="BandwidthTitle">
        Bandwidth
      </div>
      <div className="VerticalWidgetBandwidthButtons">
        <button
          className="20MHz-Button"
          onClick={() => this.changeBandwidth(20)}>
          <label
            className="20MHz-ButtonText"
            style={{fontWeight: this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].bandwidth == 20 ? "bold" : "normal"}}>
            20MHz
          </label>
        </button>
        <button
          className="100MHz-Button"
          onClick={() => this.changeBandwidth(100)}>
          <label
            className="100MHz-ButtonText"
            style={{fontWeight: this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].bandwidth == 100 ? "bold" : "normal"}}>
            100MHz
          </label>
        </button>
        <button
          className="200MHz-Button"
          onClick={() => (this.props.verticalWidget.totalChannelsUsed <= 2) && this.changeBandwidth(200)}>
          <label
            className="200MHz-ButtonText"
            style={{fontWeight: this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].bandwidth == 200 ? "bold" : "normal"}}>
            200MHz
          </label>
        </button>
        <button
          className="350MHz-Button"
          onClick={() => (this.props.verticalWidget.totalChannelsUsed <= 1) && this.changeBandwidth(350)}>
          <label
            className="350MHz-ButtonText"
            style={{fontWeight: this.props.verticalWidget.settings[this.props.verticalWidget.activeChannel-1].bandwidth == 350 ? "bold" : "normal"}}>
            350MHz
          </label>
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