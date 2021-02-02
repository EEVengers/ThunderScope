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
