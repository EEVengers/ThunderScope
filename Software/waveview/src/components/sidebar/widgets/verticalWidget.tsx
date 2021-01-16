import React from 'react';
import { connect } from 'react-redux';
import './../../../css/sidebar/widgets/verticalWidget.css';

class VerticalWidget extends React.Component<any, any> { 
  incrementValue = (value: any) => {
    this.props.dispatch({ type: 'vertical/increaseValue', payload: value});
  }

  decrementValue = (value: any) => {
    this.props.dispatch({ type: 'vertical/decreaseValue' , payload: value});
  }

  increaseChannel = () => {
    this.props.dispatch({type: 'vertical/increaseChannel'});
  }

  decreaseChannel = () => {
    this.props.dispatch({type: 'vertical/decreaseChannel'});
  }

  render() {
    return (
      <div className="VerticalWidget">
        <div className="WidgetTitle">
          Vertical
        </div>

      <div className="VerticalWidgetAdjustChannelBlock">
        <button 
          className="MinusButton"
          onClick={this.decreaseChannel}>
          -
        </button>
        <label 
          className="AdjustChannelBlockValue"
          style={{color: this.props.verticalWidget.channelColorsList[this.props.verticalWidget.channel-1]}}
        >
          CH{this.props.verticalWidget.channel.toString()}
        </label>
        <button 
          className="PlusButton"
          onClick={this.increaseChannel}>
          +
        </button>
      </div>

      <div className="VerticalWidgetAdjustBlock-Value1">
        <button 
          className="MinusButton"
          onClick={() => this.decrementValue(1)}>
          -
        </button>
        <label 
          className="AdjustValueBlockValue1"
          style={{color: this.props.verticalWidget.channelColorsList[this.props.verticalWidget.channel-1]}}
        >
          {this.props.verticalWidget.value1.toString()}{"V/div"}
        </label>
        <button 
          className="PlusButton"
          onClick={() => this.incrementValue(1)}>
          +
        </button>
      </div>

      <div className="VerticalWidgetAdjustBlock-Value2">
        <button 
          className="MinusButton"
          onClick={() => this.decrementValue(2)}>
          -
        </button>
        <label 
          className="AdjustValueBlockValue2"
          style={{color: this.props.verticalWidget.channelColorsList[this.props.verticalWidget.channel-1]}}
        >
          {this.props.verticalWidget.value2.toString()}{"mV"}
        </label>
        <button 
          className="PlusButton"
          onClick={() => this.incrementValue(2)}>
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