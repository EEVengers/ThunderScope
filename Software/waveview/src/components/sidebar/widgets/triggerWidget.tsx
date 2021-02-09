import React from 'react';
import { connect } from 'react-redux';
import './../../../css/sidebar/widgets/triggerWidget.css';
import VoltageUnit from '../../../configuration/enums/voltageUnit';

class TriggerWidget extends React.Component<any, any> {

  // Trigger Channel
  increaseChannel = () => {
    this.props.dispatch({type: 'trigger/increaseChannel'});
  }

  decreaseChannel = () => {
    this.props.dispatch({type: 'trigger/decreaseChannel'});
  }

  // Trigger Type
  changeTriggerType = () => {
    this.props.dispatch({type: 'trigger/changeTriggerType'});
  }

  // Trigger Level
  increaseTriggerLevel = () => {
    this.props.dispatch({type: 'trigger/increaseTriggerLevelValue'});
  }

  decreaseTriggerLevel = () => {
    this.props.dispatch({type: 'trigger/decreaseTriggerLevelValue'});
  }

  // Trigger Level Unit
  changeTriggerLevelUnit = (voltageUnit: VoltageUnit) => {
    this.props.dispatch({type: 'trigger/changeTriggerLevelUnit', payload: voltageUnit})
  }

  render() {
    return (
      <div className="TriggerWidget">
      <div className="WidgetTitle">
        Trigger
      </div>
      
      <div className="TriggerWidgetAdjustChannelBlock">
        <button 
          className="MinusButton"
          onClick={() => this.decreaseChannel()}>
          -
        </button>
        <label 
          className="AdjustChannelBlockValue"
          style={{color: this.props.triggerWidget.channelColorsList[this.props.triggerWidget.triggerChannel-1]}}
        >
          CH{this.props.triggerWidget.triggerChannel.toString()}
        </label>
        <button 
          className="PlusButton"
          onClick={() => this.increaseChannel()}>
          +
        </button>
      </div>

      <div className="TriggerWidgetAdjustTriggerType">
        <button 
          className="MinusButton"
          onClick={() => this.changeTriggerType()}>
          -
        </button>
        <label 
          className="AdjustChannelBlockValue"
          style={{color: this.props.triggerWidget.channelColorsList[this.props.triggerWidget.triggerChannel-1]}}
        >
          {this.props.triggerWidget.triggerType[this.props.triggerWidget.triggerChannel-1].toString()}
        </label>
        <button 
          className="PlusButton"
          onClick={() => this.changeTriggerType()}>
          +
        </button>
      </div>

      <div className="TriggerWidgetAdjustTriggerLevelValue">
        <button 
          className="MinusButton"
          onClick={() => this.decreaseTriggerLevel()}>
          -
        </button>
        <label 
          className="AdjustChannelBlockValue"
          style={{color: this.props.triggerWidget.channelColorsList[this.props.triggerWidget.triggerChannel-1]}}
        >
          {this.props.triggerWidget.triggerLevel[this.props.triggerWidget.triggerChannel-1].value.toString()}
          {this.props.triggerWidget.triggerLevel[this.props.triggerWidget.triggerChannel-1].unit}
        </label>
        <button 
          className="PlusButton"
          onClick={() => this.increaseTriggerLevel()}>
          +
        </button>
      </div>

      <div className="TriggerWidgetAdjustTriggerLevelUnit">
        <button
          className="NanoVoltButton"
          onClick={() => this.changeTriggerLevelUnit(VoltageUnit.NanoVolt)}>
          <label
            className={"NanoVoltButtonText"}
            style={{fontWeight: this.props.triggerWidget.triggerLevel[this.props.triggerWidget.triggerChannel-1].unit == VoltageUnit.NanoVolt ? "bold" : "normal"}}>
            {VoltageUnit.NanoVolt}
          </label>
        </button>
        <button
          className="MicroVoltButton"
          onClick={() => this.changeTriggerLevelUnit(VoltageUnit.MicroVolt)}>
          <label
            className={"MicroVoltButtonText"}
            style={{fontWeight: this.props.triggerWidget.triggerLevel[this.props.triggerWidget.triggerChannel-1].unit == VoltageUnit.MicroVolt ? "bold" : "normal"}}>
            {VoltageUnit.MicroVolt}
          </label>
        </button>
        <button
          className="MilliVoltButton"
          onClick={() => this.changeTriggerLevelUnit(VoltageUnit.MilliVolt)}>
          <label
            className={"MilliVoltButtonText"}
            style={{fontWeight: this.props.triggerWidget.triggerLevel[this.props.triggerWidget.triggerChannel-1].unit == VoltageUnit.MilliVolt ? "bold" : "normal"}}>
            {VoltageUnit.MilliVolt}
          </label>
        </button>
        <button
          className="VoltButton"
          onClick={() => this.changeTriggerLevelUnit(VoltageUnit.Volt)}>
          <label
            className={"VoltButtonText"}
            style={{fontWeight: this.props.triggerWidget.triggerLevel[this.props.triggerWidget.triggerChannel-1].unit == VoltageUnit.Volt ? "bold" : "normal"}}>
            {VoltageUnit.Volt}
          </label>
        </button>
      </div>
      
    </div>
    )
  }
}

function mapStateToProps(state: { triggerWidget: any; }) {
  return {
    triggerWidget: state.triggerWidget
  };
}

export default connect(mapStateToProps)(TriggerWidget);
