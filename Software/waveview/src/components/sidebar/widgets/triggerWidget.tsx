import React from 'react';
import { connect } from 'react-redux';
import './../../../css/sidebar/widgets/triggerWidget.css';
import VoltageUnit from '../../../configuration/enums/voltageUnit';
import TriggerType from '../../../configuration/enums/triggerType';

import CMD from '../../../configuration/enums/cmd';
import {Plumber, PlumberArgs} from '../../../util/plumber';
import { setChHelper } from '../../../util/setChHelper';

import Box from '@material-ui/core/Box';
import Button from '@material-ui/core/Button';
import ButtonGroup from '@material-ui/core/ButtonGroup';

class TriggerWidget extends React.Component<any, any> {

  // Trigger Channel
  increaseChannel = () => {
    this.props.dispatch({type: 'trigger/increaseChannel'});
  }

  decreaseChannel = () => {
    this.props.dispatch({type: 'trigger/decreaseChannel'});
  }

  changeChannel = (channelNumber: number) => {
    let chStatus = (this.props.verticalWidget.settings as any[]).map(x => x.status > 0);
    let setChState = setChHelper(chStatus[0], chStatus[1], chStatus[2], chStatus[3], channelNumber);
    Plumber.getInstance().handleSetChState(setChState);
    this.props.dispatch({type: 'vertical/setChannelOrder', payload: setChState.chOrder});
    this.props.dispatch({type: 'trigger/changeChannel', payload: channelNumber});
    // this.props.dispatch({type: 'vertical/changeChannelStatus', payload: channelNumber - 1});
    // This was making it so that clicking on Trigger will activate that channel in the UX. We do not want the UX to show this, only the backend needs to know.
  }

  // Trigger Type
  changeTriggerType = (triggerType: TriggerType) => {
    let edgeNum = (triggerType === TriggerType.RisingEdge) ? 1 : 2;
    let args: PlumberArgs = {
      headCheck: () => true,
      bodyCheck: () => true,
      cmd: CMD.CMD_SetEdgeType,
      id: 0,
      writeData: [edgeNum, 0]
    }
    Plumber.getInstance().cycle(args);
    this.props.dispatch({type: 'trigger/changeTriggerType', payload: triggerType});
  }

  // Trigger Level
  increaseTriggerLevel = () => {
    let tw = this.props.triggerWidget;
    let lvl = tw.triggerLevel[tw.triggerChannel-1];
    let vw = this.props.verticalWidget;
    let div = vw.timePerDivision[tw.triggerChannel-1].coarse;
    console.log(lvl);
    Plumber.getInstance().handleSetLevel(lvl.value+1, lvl.unit, div.value, div.unit);
    this.props.dispatch({type: 'trigger/increaseTriggerLevelValue'});
  }

  decreaseTriggerLevel = () => {
    let tw = this.props.triggerWidget;
    let lvl = tw.triggerLevel[tw.triggerChannel-1];
    let vw = this.props.verticalWidget;
    let div = vw.timePerDivision[tw.triggerChannel-1].coarse;
    console.log(lvl);
    Plumber.getInstance().handleSetLevel(lvl.value-1, lvl.unit, div.value, div.unit);
    this.props.dispatch({type: 'trigger/decreaseTriggerLevelValue'});
  }

  // Trigger Level Unit
  changeTriggerLevelUnit = (voltageUnit: VoltageUnit) => {
    let tw = this.props.triggerWidget;
    let lvl = tw.triggerLevel[tw.triggerChannel-1];
    let vw = this.props.verticalWidget;
    let div = vw.timePerDivision[tw.triggerChannel-1].coarse;
    Plumber.getInstance().handleSetLevel(lvl.value, voltageUnit, div.value, div.unit);
    this.props.dispatch({type: 'trigger/changeTriggerLevelUnit', payload: voltageUnit});
  }

  render() {
    return (
      <Box className="TriggerWidget">
      <Box className="WidgetTitle">
        Trigger
      </Box>

      <Box className="ChannelTitle">
        Channel
      </Box>
      <ButtonGroup variant="contained" className="ChannelSelectionButtons">
        <Button
          className="Channel1Button"
          onClick={() => this.changeChannel(1)}>
          <label
            className={"Channel1ButtonText"}
            style={{color: this.props.triggerWidget.triggerChannel === 1 ? this.props.settings.colors.channel[this.props.triggerWidget.triggerChannel-1] : "black"}}>
            CH1
          </label>
        </Button>
        <Button
          className="Channel2Button"
          onClick={() => this.changeChannel(2)}>
          <label
            className={"Channel2ButtonText"}
            style={{color: this.props.triggerWidget.triggerChannel === 2 ? this.props.settings.colors.channel[this.props.triggerWidget.triggerChannel-1] : "black"}}>
            CH2
          </label>
        </Button>
        <Button
          className="Channel3Button"
          onClick={() => this.changeChannel(3)}>
          <label
            className={"Channel3ButtonText"}
            style={{color: this.props.triggerWidget.triggerChannel === 3 ? this.props.settings.colors.channel[this.props.triggerWidget.triggerChannel-1] : "black"}}>
            CH3
          </label>
        </Button>
        <Button
          className="Channel4Button"
          onClick={() => this.changeChannel(4)}>
          <label
            className={"Channel4ButtonText"}
            style={{color: this.props.triggerWidget.triggerChannel === 4 ? this.props.settings.colors.channel[this.props.triggerWidget.triggerChannel-1] : "black"}}>
            CH4
          </label>
        </Button>
      </ButtonGroup>

      <Box className="TriggerModeTitle">
        Trigger Mode
      </Box>
      <ButtonGroup variant="contained" className="TriggerModeButtons">
        <Button
          className="FallingEdgeButton"
          onClick={() => this.changeTriggerType(TriggerType.FallingEdge)}>
          <label
            className="FallingEdgeButtonText"
            style={{fontWeight: this.props.triggerWidget.triggerType[this.props.triggerWidget.triggerChannel-1] === TriggerType.FallingEdge ? "bold" : "normal"}}>
            Falling Edge
          </label>
        </Button>
        <Button
          className="RisingEdgeButton"
          onClick={() => this.changeTriggerType(TriggerType.RisingEdge)}>
          <label
            className="RisingEdgeButtonText"
            style={{fontWeight: this.props.triggerWidget.triggerType[this.props.triggerWidget.triggerChannel-1] === TriggerType.RisingEdge ? "bold" : "normal"}}>
            Rising Edge
          </label>
        </Button>
      </ButtonGroup>

      <Box className="TriggerLevelTitle">
        Trigger Level
      </Box>
      <Box className="TriggerWidgetAdjustTriggerLevelValue">
        <Button
          variant="contained"
          size="small"
          className="MinusButton"
          style={{maxWidth: '30px', maxHeight: '30px', minWidth: '30px', minHeight: '30px'}}
          onClick={() => this.decreaseTriggerLevel()}>
          -
        </Button>
        <label
          className="AdjustChannelBlockValue"
          style={{color: this.props.settings.colors.channel[this.props.triggerWidget.triggerChannel-1]}}
        >
          {this.props.triggerWidget.triggerLevel[this.props.triggerWidget.triggerChannel-1].value.toString()}
          {this.props.triggerWidget.triggerLevel[this.props.triggerWidget.triggerChannel-1].unit}
        </label>
        <Button
          variant="contained"
          size="small"
          className="PlusButton"
          style={{maxWidth: '30px', maxHeight: '30px', minWidth: '30px', minHeight: '30px'}}
          onClick={() => this.increaseTriggerLevel()}>
          +
        </Button>
      </Box>

      <ButtonGroup variant="contained" className="TriggerWidgetAdjustTriggerLevelUnit">
        <Button
          className="NanoVoltButton"
          onClick={() => this.changeTriggerLevelUnit(VoltageUnit.NanoVolt)}>
          <label
            className={"NanoVoltButtonText"}
            style={{fontWeight: this.props.triggerWidget.triggerLevel[this.props.triggerWidget.triggerChannel-1].unit === VoltageUnit.NanoVolt ? "bold" : "normal"}}>
            {VoltageUnit.NanoVolt}
          </label>
        </Button>
        <Button
          className="MicroVoltButton"
          onClick={() => this.changeTriggerLevelUnit(VoltageUnit.MicroVolt)}>
          <label
            className={"MicroVoltButtonText"}
            style={{fontWeight: this.props.triggerWidget.triggerLevel[this.props.triggerWidget.triggerChannel-1].unit === VoltageUnit.MicroVolt ? "bold" : "normal"}}>
            {VoltageUnit.MicroVolt}
          </label>
        </Button>
        <Button
          className="MilliVoltButton"
          onClick={() => this.changeTriggerLevelUnit(VoltageUnit.MilliVolt)}>
          <label
            className={"MilliVoltButtonText"}
            style={{fontWeight: this.props.triggerWidget.triggerLevel[this.props.triggerWidget.triggerChannel-1].unit === VoltageUnit.MilliVolt ? "bold" : "normal"}}>
            {VoltageUnit.MilliVolt}
          </label>
        </Button>
        <Button
          className="VoltButton"
          onClick={() => this.changeTriggerLevelUnit(VoltageUnit.Volt)}>
          <label
            className={"VoltButtonText"}
            style={{fontWeight: this.props.triggerWidget.triggerLevel[this.props.triggerWidget.triggerChannel-1].unit === VoltageUnit.Volt ? "bold" : "normal"}}>
            {VoltageUnit.Volt}
          </label>
        </Button>
      </ButtonGroup>

    </Box>
    )
  }
}

function mapStateToProps(state: { triggerWidget: any, settings: any, verticalWidget: any }) {
  return {
    triggerWidget: state.triggerWidget,
    settings: state.settings,
    verticalWidget: state.verticalWidget
  };
}

export default connect(mapStateToProps)(TriggerWidget);
