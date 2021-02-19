import React from 'react';
import { connect } from 'react-redux';
import DefaultValues from '../../../configuration/defaultValues';
import './../../../css/sidebar/widgets/verticalWidget.css';

class VerticalWidget extends React.Component<any, any> { 
   // Active Channel
  changeChannel = (channelNumber: number) => {
    this.props.dispatch({type: 'vertical/changeChannel', payload: channelNumber})
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