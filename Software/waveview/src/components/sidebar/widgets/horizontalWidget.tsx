import React from 'react';
import { connect } from 'react-redux';
import './../../../css/sidebar/widgets/horizontalWidget.css';
import TimeBaseMode from '../../../configuration/enums/timeBaseMode';
import TimeUnit from '../../../configuration/enums/timeUnit';

class HorizontalWidget extends React.Component<any, any> { 

  // Horizontal Time Base
  incrementTimeBase = () => {
    this.props.dispatch({ type: 'horizontal/increaseTimeBase'});
  }

  decrementTimeBase = () => {
    this.props.dispatch({ type: 'horizontal/decreaseTimeBase'});
  }

  incrementTimeBaseFine = () => {
    this.props.dispatch({ type: 'horizontal/increaseTimeBaseFine'});
  }

  decrementTimeBaseFine = () => {
    this.props.dispatch({ type: 'horizontal/decreaseTimeBaseFine'});
  }

  changeTimeBaseMode = (mode: TimeBaseMode) => {
    this.props.dispatch({ type: 'horizontal/changeTimeBaseMode', payload: mode});
  }

  changeTimeBaseUnit = (unit: TimeUnit) => {
    this.props.dispatch({type: 'horizontal/changeTimeBaseUnit', payload: unit})
  }

  // Horizontal Offset
  incrementOffset = () => {
    this.props.dispatch({ type: 'horizontal/increaseOffset'});
  }

  decrementOffset = () => {
    this.props.dispatch({ type: 'horizontal/decreaseOffset'});
  }

  render() {
    return (
      <div className="HorizontalWidget">
        <div className="WidgetTitle">
          Horizontal
        </div>

        <div className="TimeBaseTitle">
          Time Base
        </div>

        <div className="TimeBaseMode">
          <button
            className="CourseControlButton"
            onClick={() => this.changeTimeBaseMode(TimeBaseMode.Course)}>
              <label
                className=""
                style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.mode ==  TimeBaseMode.Course ? "bold" : "normal"}}>
                Course
              </label>
          </button>
          <button
            className="FineControlButton"
            onClick={() => this.changeTimeBaseMode(TimeBaseMode.Fine)}>
              <label
                  className=""
                  style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.mode ==  TimeBaseMode.Fine ? "bold" : "normal"}}>
                  Fine
              </label>
          </button>
        </div>

        <div className="HorizontalWidgetAdjustBlock-HorizontalTimeBase">
          <button 
            className="MinusButton"
            onClick={() => this.props.horizontalWidget.horizontalTimeBase.mode == TimeBaseMode.Course ? this.decrementTimeBase() : this.decrementTimeBaseFine()}>
            -
          </button>
          <label 
            className="AdjustValueBlockHorizontalTimeBase"
            style={{color: "white"}}
          >
            {this.props.horizontalWidget.horizontalTimeBase.mode == TimeBaseMode.Course && this.props.horizontalWidget.horizontalTimeBase.value.toString()}
            {this.props.horizontalWidget.horizontalTimeBase.mode == TimeBaseMode.Fine && this.props.horizontalWidget.horizontalTimeBase.fineValue.toString()}
            {this.props.horizontalWidget.horizontalTimeBase.mode == TimeBaseMode.Fine && this.props.horizontalWidget.horizontalTimeBase.fineUnit.toString() + "/div"}
          </label>
          <button 
            className="PlusButton"
            onClick={() => this.props.horizontalWidget.horizontalTimeBase.mode == TimeBaseMode.Course ? this.incrementTimeBase() : this.incrementTimeBaseFine()}>
            +
          </button>
        </div>

        {this.props.horizontalWidget.horizontalTimeBase.mode == TimeBaseMode.Fine &&
        <div className="FineModeUnitButtons">
        <button
          className="NanoSecondButton"
          onClick={() => this.changeTimeBaseUnit(TimeUnit.NanoSecond)}>
          <label
            className={"NanoSecondButtonText"}
            style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.fineUnit == TimeUnit.NanoSecond ? "bold" : "normal"}}>
            {TimeUnit.NanoSecond}
          </label>
        </button>
        <button
          className="MicroSecondButton"
          onClick={() => this.changeTimeBaseUnit(TimeUnit.MicroSecond)}>
          <label
            className={"MicroSecondButtonText"}
            style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.fineUnit == TimeUnit.MicroSecond ? "bold" : "normal"}}>
            {TimeUnit.MicroSecond}
          </label>
        </button>
        <button
          className="MilliSecondButton"
          onClick={() => this.changeTimeBaseUnit(TimeUnit.MilliSecond)}>
          <label
            className={"MilliSecondButtonText"}
            style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.fineUnit == TimeUnit.MilliSecond ? "bold" : "normal"}}>
            {TimeUnit.MilliSecond}
          </label>
        </button>
        <button
          className="SecondButton"
          onClick={() => this.changeTimeBaseUnit(TimeUnit.Second)}>
          <label
            className={"SecondButtonText"}
            style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.fineUnit == TimeUnit.Second ? "bold" : "normal"}}>
            {TimeUnit.Second}
          </label>
        </button>
        </div>
        }


        <div className="HorizontalOffsetTitle">
          Horizontal Offset
        </div>
        <div className="HorizontalWidgetAdjustBlock-HorizontalOffset">
          <button 
            className="MinusButton"
            onClick={() => this.decrementOffset()}>
            -
          </button>
          <label 
            className="AdjustValueBlockHorizontalOffset"
            style={{color: "white"}}
          >
            {this.props.horizontalWidget.horizontalOffset.value.toString()}{this.props.horizontalWidget.horizontalOffset.unit}
          </label>
          <button 
            className="PlusButton"
            onClick={() => this.incrementOffset()}>
            +
          </button>
        </div>
        
      </div>
    )
  }
}

function mapStateToProps(state: { horizontalWidget: any; }) {
  return {
    horizontalWidget: state.horizontalWidget
  };
}

export default connect(mapStateToProps)(HorizontalWidget);
