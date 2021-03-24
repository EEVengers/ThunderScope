import React from 'react';
import { connect } from 'react-redux';
import './../../../css/sidebar/widgets/horizontalWidget.css';
import ControlMode from '../../../configuration/enums/controlMode';
import TimeUnit from '../../../configuration/enums/timeUnit';
import { Plumber } from '../../../util/plumber';

class HorizontalWidget extends React.Component<any, any> {

  // Horizontal Time Base
  incrementTimeBase = () => {
    let i = this.props.horizontalWidget.horizontalTimeBase.index + 1;
    Plumber.getInstance().handleHoriz(i);
    this.props.dispatch({ type: 'horizontal/increaseTimeBase'});
  }

  decrementTimeBase = () => {
    let i = this.props.horizontalWidget.horizontalTimeBase.index - 1;
    Plumber.getInstance().handleHoriz(i);
    this.props.dispatch({ type: 'horizontal/decreaseTimeBase'});
  }

  incrementTimeBaseFine = () => {
    //TODO: actually scale
    this.props.dispatch({ type: 'horizontal/increaseTimeBaseFine'});
  }

  decrementTimeBaseFine = () => {
    //TODO: actually scale
    this.props.dispatch({ type: 'horizontal/decreaseTimeBaseFine'});
  }

  changeTimeBaseMode = (mode: ControlMode) => {
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
            onClick={() => this.changeTimeBaseMode(ControlMode.Course)}>
              <label
                className=""
                style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.mode ===  ControlMode.Course ? "bold" : "normal"}}>
                Course
              </label>
          </button>
          <button
            className="FineControlButton"
            onClick={() => this.changeTimeBaseMode(ControlMode.Fine)}>
              <label
                  className=""
                  style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.mode ===  ControlMode.Fine ? "bold" : "normal"}}>
                  Fine
              </label>
          </button>
        </div>

        <div className="HorizontalWidgetAdjustBlock-HorizontalTimeBase">
          <button
            className="MinusButton"
            onClick={() => this.props.horizontalWidget.horizontalTimeBase.mode === ControlMode.Course ? this.decrementTimeBase() : this.decrementTimeBaseFine()}>
            -
          </button>
          <label
            className="AdjustValueBlockHorizontalTimeBase"
            style={{color: "white"}}
          >
            {this.props.horizontalWidget.horizontalTimeBase.mode === ControlMode.Course && this.props.horizontalWidget.horizontalTimeBase.course.value.toString()}
            {this.props.horizontalWidget.horizontalTimeBase.mode === ControlMode.Course && this.props.horizontalWidget.horizontalTimeBase.course.unit.toString() + "/div"}
            {this.props.horizontalWidget.horizontalTimeBase.mode === ControlMode.Fine && this.props.horizontalWidget.horizontalTimeBase.fine.value.toString()}
            {this.props.horizontalWidget.horizontalTimeBase.mode === ControlMode.Fine && this.props.horizontalWidget.horizontalTimeBase.fine.unit.toString() + "/div"}
          </label>
          <button
            className="PlusButton"
            onClick={() => this.props.horizontalWidget.horizontalTimeBase.mode === ControlMode.Course ? this.incrementTimeBase() : this.incrementTimeBaseFine()}>
            +
          </button>
        </div>

        {this.props.horizontalWidget.horizontalTimeBase.mode === ControlMode.Fine &&
        <div className="FineModeUnitButtons">
        <button
          className="NanoSecondButton"
          onClick={() => this.changeTimeBaseUnit(TimeUnit.NanoSecond)}>
          <label
            className={"NanoSecondButtonText"}
            style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.fine.unit === TimeUnit.NanoSecond ? "bold" : "normal"}}>
            {TimeUnit.NanoSecond}
          </label>
        </button>
        <button
          className="MicroSecondButton"
          onClick={() => this.changeTimeBaseUnit(TimeUnit.MicroSecond)}>
          <label
            className={"MicroSecondButtonText"}
            style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.fine.unit === TimeUnit.MicroSecond ? "bold" : "normal"}}>
            {TimeUnit.MicroSecond}
          </label>
        </button>
        <button
          className="MilliSecondButton"
          onClick={() => this.changeTimeBaseUnit(TimeUnit.MilliSecond)}>
          <label
            className={"MilliSecondButtonText"}
            style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.fine.unit === TimeUnit.MilliSecond ? "bold" : "normal"}}>
            {TimeUnit.MilliSecond}
          </label>
        </button>
        <button
          className="SecondButton"
          onClick={() => this.changeTimeBaseUnit(TimeUnit.Second)}>
          <label
            className={"SecondButtonText"}
            style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.fine.unit === TimeUnit.Second ? "bold" : "normal"}}>
            {TimeUnit.Second}
          </label>
        </button>
        </div>
        }


        <div className="HorizontalOffsetTitle">
          Offset
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
