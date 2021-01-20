import React from 'react';
import { connect } from 'react-redux';
import DefaultValues from '../../../configuration/defaultValues';
import './../../../css/sidebar/widgets/verticalWidget.css';

class VerticalWidget extends React.Component<any, any> { 
   // Active Channel
   increaseChannel = () => {
    this.props.dispatch({type: 'vertical/increaseChannel'});
  }

  decreaseChannel = () => {
    this.props.dispatch({type: 'vertical/decreaseChannel'});
  }

  // Vertical Offset
  incrementVerticalOffset = () => {
    this.props.dispatch({ type: 'vertical/increaseVerticalOffset'});
  }

  decrementVerticalOffset = () => {
    this.props.dispatch({ type: 'vertical/decreaseVerticalOffset'});
  }

  // Time Per Division
  incrementTimePerDivision = () => {
    this.props.dispatch({type: 'vertical/increaseTimePerDivision'});
  }

  decrementTimePerDivision = () => {
    this.props.dispatch({type: 'vertical/decreaseTimePerDivision'});
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
          onClick={() => this.decreaseChannel()}>
          -
        </button>
        <label 
          className="AdjustChannelBlockValue"
          style={{color: this.props.verticalWidget.channelColorsList[this.props.verticalWidget.activeChannel-1]}}
        >
          CH{this.props.verticalWidget.activeChannel.toString()}
        </label>
        <button 
          className="PlusButton"
          onClick={() => this.increaseChannel()}>
          +
        </button>
      </div>

      <div className="VerticalWidgetAdjustBlock-TimePerDivision">
        <button 
          className="MinusButton"
          onClick={() => this.decrementTimePerDivision()}>
          -
        </button>
        <label 
          className="AdjustValueBlockTimePerDivision"
          style={{color: this.props.verticalWidget.channelColorsList[this.props.verticalWidget.activeChannel-1]}}
        >
          {DefaultValues.x1ProbeValues[this.props.verticalWidget.timePerDivision[this.props.verticalWidget.activeChannel-1].index]}
        </label>
        <button 
          className="PlusButton"
          onClick={() => this.incrementTimePerDivision()}>
          +
        </button>
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