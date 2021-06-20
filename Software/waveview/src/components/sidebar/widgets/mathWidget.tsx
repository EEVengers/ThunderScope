import React from 'react';
import { connect } from 'react-redux';
import MathOperators from '../../../configuration/enums/mathOperators';
import '../../../css/sidebar/widgets/mathWidget.css';

import { Plumber } from '../../../util/plumber';

import Box from '@material-ui/core/Box';
import Button from '@material-ui/core/Button';
import ButtonGroup from '@material-ui/core/ButtonGroup';

class TriggerWidget extends React.Component<any, any> {

  toggleMathMode = (mathEnabled: boolean) => {
    let w = this.props.mathWidget;
    Plumber.getInstance().handleMath(mathEnabled, w.channel1, w.channel2, w.mathOperator);

    this.props.dispatch({type: 'math/toggleMathMode', payload: mathEnabled });
    this.props.dispatch({type: 'vertical/toggleMathWaveform' });
  }

  changeChannel1 = (channelNumber: number) => {
    let w = this.props.mathWidget;
    if(w.channel2 !== channelNumber) {
      Plumber.getInstance().handleMath(w.mathEnabled, channelNumber, w.channel2, w.mathOperator);
      this.props.dispatch({type: 'math/changeChannel1', payload: channelNumber });
    }
  }

  changeChannel2 = (channelNumber: number) => {
    let w = this.props.mathWidget;
    if(w.channel1 !== channelNumber) {
      Plumber.getInstance().handleMath(w.mathEnabled, w.channel1, channelNumber, w.mathOperator);
      this.props.dispatch({type: 'math/changeChannel2', payload: channelNumber });
    }
  }

  changeOperator = (operator: MathOperators) => {
    let w = this.props.mathWidget;
    Plumber.getInstance().handleMath(w.mathEnabled, w.channel1, w.channel2, operator);
    this.props.dispatch({type: 'math/changeOperator', payload: operator });
  }

  render() {
    return (
      <div className="MathWidget">

      <Box className="WidgetTitle">
        Math
      </Box>

      <Box className="MathModeTitle">
        Math Mode
      </Box>
      <ButtonGroup variant="contained" className="MathModeButtons">
        <Button
          className="OnButton"
          onClick={() => this.toggleMathMode(true)}>
          <label
            className="OnButtonText"
            style={{fontWeight: this.props.mathWidget.mathEnabled === true ? "bold" : "normal"}}>
            ON
          </label>
        </Button>
        <Button
          className="OffButton"
          onClick={() => this.toggleMathMode(false)}>
          <label
            className="OffButtonText"
            style={{fontWeight: this.props.mathWidget.mathEnabled === false ? "bold" : "normal"}}>
            OFF
          </label>
        </Button>
      </ButtonGroup>

      {this.props.mathWidget.mathEnabled === true &&
      <Box className="Channel1Title">
        Channel 1
      </Box>
      }
      {this.props.mathWidget.mathEnabled === true &&
      <ButtonGroup variant="contained" className="ChannelSelectionButtons">
        <Button
          className="Channel1Button"
          onClick={() => this.changeChannel1(1)}>
          <label
            className={"Channel1ButtonText"}
            style={{color: this.props.mathWidget.channel1 === 1 ? this.props.settings.colors.channel[0] : "black"}}>
            CH1
          </label>
        </Button>
        <Button
          className="Channel2Button"
          onClick={() => this.changeChannel1(2)}>
          <label
            className={"Channel2ButtonText"}
            style={{color: this.props.mathWidget.channel1 === 2 ? this.props.settings.colors.channel[1] : "black"}}>
            CH2
          </label>
        </Button>
        <Button
          className="Channel3Button"
          onClick={() => this.changeChannel1(3)}>
          <label
            className={"Channel3ButtonText"}
            style={{color: this.props.mathWidget.channel1 === 3 ? this.props.settings.colors.channel[2] : "black"}}>
            CH3
          </label>
        </Button>
        <Button
          className="Channel4Button"
          onClick={() => this.changeChannel1(4)}>
          <label
            className={"Channel4ButtonText"}
            style={{color: this.props.mathWidget.channel1 === 4 ? this.props.settings.colors.channel[3] : "black"}}>
            CH4
          </label>
        </Button>
      </ButtonGroup>
      }

      {this.props.mathWidget.mathEnabled === true &&
      <Box className="OperatorTitle">
        Operation
      </Box>
      }
      {this.props.mathWidget.mathEnabled === true &&
      <ButtonGroup variant="contained" className="OperatorButtons">
        <Button
          className="AdditionButton"
          onClick={() => this.changeOperator(MathOperators.Addition)}>
          <label
            className="AdditionButtonText"
            style={{fontWeight: this.props.mathWidget.mathOperator === MathOperators.Addition ? "bold" : "normal"}}>
            ADD ({MathOperators.Addition})
          </label>
        </Button>
        <Button
          className="SubtractionButton"
          onClick={() => this.changeOperator(MathOperators.Subtraction)}>
          <label
            className="SubtractionButtonText"
            style={{fontWeight: this.props.mathWidget.mathOperator === MathOperators.Subtraction ? "bold" : "normal"}}>
            SUBTRACT ({MathOperators.Subtraction})
          </label>
        </Button>
      </ButtonGroup>
      }

      {this.props.mathWidget.mathEnabled === true &&
      <Box className="Channel2Title">
        Channel 2
      </Box>
      }
      {this.props.mathWidget.mathEnabled === true &&
      <ButtonGroup variant="contained" className="ChannelSelectionButtons">
        <Button
          className="Channel1Button"
          onClick={() => this.changeChannel2(1)}>
          <label
            className={"Channel1ButtonText"}
            style={{color: this.props.mathWidget.channel2 === 1 ? this.props.settings.colors.channel[0] : "black"}}>
            CH1
          </label>
        </Button>
        <Button
          className="Channel2Button"
          onClick={() => this.changeChannel2(2)}>
          <label
            className={"Channel2ButtonText"}
            style={{color: this.props.mathWidget.channel2 === 2 ? this.props.settings.colors.channel[1] : "black"}}>
            CH2
          </label>
        </Button>
        <Button
          className="Channel3Button"
          onClick={() => this.changeChannel2(3)}>
          <label
            className={"Channel3ButtonText"}
            style={{color: this.props.mathWidget.channel2 === 3 ? this.props.settings.colors.channel[2] : "black"}}>
            CH3
          </label>
        </Button>
        <Button
          className="Channel4Button"
          onClick={() => this.changeChannel2(4)}>
          <label
            className={"Channel4ButtonText"}
            style={{color: this.props.mathWidget.channel2 === 4 ? this.props.settings.colors.channel[3] : "black"}}>
            CH4
          </label>
        </Button>
      </ButtonGroup>
      }

      </div>
    )
  }
}

function mapStateToProps(state: { mathWidget: any, verticalWidget: any, settings: any}) {
  return {
    mathWidget: state.mathWidget,
    verticalWidget: state.verticalWidget,
    settings: state.settings
  };
}

export default connect(mapStateToProps)(TriggerWidget);
