import React from 'react';
import { connect } from 'react-redux';
import './../../../css/sidebar/widgets/horizontalWidget.css';
import ControlMode from '../../../configuration/enums/controlMode';
import TimeUnit from '../../../configuration/enums/timeUnit';
import { Plumber } from '../../../util/plumber';
import Box from '@material-ui/core/Box';
import Button from '@material-ui/core/Button';
import ButtonGroup from '@material-ui/core/ButtonGroup';

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
        <Box className="WidgetTitle">
          Horizontal
        </Box>

        <Box className="TimeBaseTitle">
          Time Base
        </Box>

        <ButtonGroup variant="contained" className="TimeBaseMode">
          <Button
            variant="contained"
            className="CoarseControlButton"
            onClick={() => this.changeTimeBaseMode(ControlMode.Coarse)}>
              <label
                className=""
                style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.mode ===  ControlMode.Coarse ? "bold" : "normal"}}>
                Coarse
              </label>
          </Button>
          <Button
            variant="contained"
            className="FineControlButton"
            onClick={() => this.changeTimeBaseMode(ControlMode.Fine)}>
              <label
                  className=""
                  style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.mode ===  ControlMode.Fine ? "bold" : "normal"}}>
                  Fine
              </label>
          </Button>
        </ButtonGroup>

        <Box className="HorizontalWidgetAdjustBlock-HorizontalTimeBase">
          <Button
            variant="contained"
            size="small"
            className="MinusButton"
            style={{maxWidth: '30px', maxHeight: '30px', minWidth: '30px', minHeight: '30px'}}
            onClick={() => this.props.horizontalWidget.horizontalTimeBase.mode === ControlMode.Coarse ? this.decrementTimeBase() : this.decrementTimeBaseFine()}>
            -
          </Button>
          <label
            className="AdjustValueBlockHorizontalTimeBase"
            style={{color: "white"}}
          >
            {this.props.horizontalWidget.horizontalTimeBase.mode === ControlMode.Coarse && this.props.horizontalWidget.horizontalTimeBase.coarse.value.toString()}
            {this.props.horizontalWidget.horizontalTimeBase.mode === ControlMode.Coarse && this.props.horizontalWidget.horizontalTimeBase.coarse.unit.toString() + "/div"}
            {this.props.horizontalWidget.horizontalTimeBase.mode === ControlMode.Fine && this.props.horizontalWidget.horizontalTimeBase.fine.value.toString()}
            {this.props.horizontalWidget.horizontalTimeBase.mode === ControlMode.Fine && this.props.horizontalWidget.horizontalTimeBase.fine.unit.toString() + "/div"}
          </label>
          <Button
            variant="contained"
            size="small"
            className="PlusButton"
            style={{maxWidth: '30px', maxHeight: '30px', minWidth: '30px', minHeight: '30px'}}
            onClick={() => this.props.horizontalWidget.horizontalTimeBase.mode === ControlMode.Coarse ? this.incrementTimeBase() : this.incrementTimeBaseFine()}>
            +
          </Button>
        </Box>

        {this.props.horizontalWidget.horizontalTimeBase.mode === ControlMode.Fine &&
        <ButtonGroup variant="contained" className="FineModeUnitButtons">
        <Button
          className="NanoSecondButton"
          onClick={() => this.changeTimeBaseUnit(TimeUnit.NanoSecond)}>
          <label
            className={"NanoSecondButtonText"}
            style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.fine.unit === TimeUnit.NanoSecond ? "bold" : "normal"}}>
            {TimeUnit.NanoSecond}
          </label>
        </Button>
        <Button
          className="MicroSecondButton"
          onClick={() => this.changeTimeBaseUnit(TimeUnit.MicroSecond)}>
          <label
            className={"MicroSecondButtonText"}
            style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.fine.unit === TimeUnit.MicroSecond ? "bold" : "normal"}}>
            {TimeUnit.MicroSecond}
          </label>
        </Button>
        <Button
          className="MilliSecondButton"
          onClick={() => this.changeTimeBaseUnit(TimeUnit.MilliSecond)}>
          <label
            className={"MilliSecondButtonText"}
            style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.fine.unit === TimeUnit.MilliSecond ? "bold" : "normal"}}>
            {TimeUnit.MilliSecond}
          </label>
        </Button>
        <Button
          className="SecondButton"
          onClick={() => this.changeTimeBaseUnit(TimeUnit.Second)}>
          <label
            className={"SecondButtonText"}
            style={{fontWeight: this.props.horizontalWidget.horizontalTimeBase.fine.unit === TimeUnit.Second ? "bold" : "normal"}}>
            {TimeUnit.Second}
          </label>
        </Button>
        </ButtonGroup>
        }


        <Box className="HorizontalOffsetTitle">
          Offset
        </Box>
        <Box className="HorizontalWidgetAdjustBlock-HorizontalOffset">
          <Button
            className="MinusButton"
            variant="contained"
            size="small"
            style={{maxWidth: '30px', maxHeight: '30px', minWidth: '30px', minHeight: '30px'}}
            onClick={() => this.decrementOffset()}>
            -
          </Button>
          <label
            className="AdjustValueBlockHorizontalOffset"
            style={{color: "white"}}
          >
            {this.props.horizontalWidget.horizontalOffset.value.toString()}{this.props.horizontalWidget.horizontalOffset.unit}
          </label>
          <Button
            className="PlusButton"
            variant="contained"
            size="small"
            style={{maxWidth: '30px', maxHeight: '30px', minWidth: '30px', minHeight: '30px'}}
            onClick={() => this.incrementOffset()}>
            +
          </Button>
        </Box>

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
