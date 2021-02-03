import React from 'react';
import { connect } from 'react-redux';
import './../../../css/sidebar/widgets/triggerWidget.css';

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
    this.props.dispatch({type: 'trigger/increaseTriggerLevel'});
  }

  decreaseTriggerLevel = () => {
    this.props.dispatch({type: 'trigger/decreaseTriggerLevel'});
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
          {this.props.triggerWidget.triggerType.toString()}
        </label>
        <button 
          className="PlusButton"
          onClick={() => this.changeTriggerType()}>
          +
        </button>
      </div>

      <div className="TriggerWidgetAdjustTriggerLevel">
        <button 
          className="MinusButton"
          onClick={() => this.decreaseTriggerLevel()}>
          -
        </button>
        <label 
          className="AdjustChannelBlockValue"
          style={{color: this.props.triggerWidget.channelColorsList[this.props.triggerWidget.triggerChannel-1]}}
        >
          {this.props.triggerWidget.triggerLevel.toString()}
        </label>
        <button 
          className="PlusButton"
          onClick={() => this.increaseTriggerLevel()}>
          +
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
