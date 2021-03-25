import React from 'react';
import { connect } from 'react-redux';
import MathType from '../../../configuration/enums/mathType';
import './../../../css/sidebar/widgets/measurementsWidget.css';
import GraphStatus from '../../../configuration/enums/graphStatus';

import CMD from '../../../configuration/enums/cmd';
import {Plumber, PlumberArgs} from '../../../util/plumber';
import ControlMode from '../../../configuration/enums/controlMode';

class MeasurementsWidget extends React.Component<any, any> {
  static instanceList: MeasurementsWidget[] = [];
  timerID: number = 0;

  componentDidMount() {
    MeasurementsWidget.instanceList.push(this);
    this.timerID = window.setInterval(
      () => this.tick(),
      1000
    );
  }

  tick() {
    if(this.props.graph.currentStatus === GraphStatus.On) {
      this.props.dispatch({type: 'measurements/tick'});
      this.update();
    }
  }

  update() {
    //TODO: unit analysis
    let channels = this.props.measurementsWidget.displayChannel as boolean[];
    let channelNum = channels.map(v => v ? 1 : 0) as number[];
    if(channelNum.reduce((a, b) => a + b) === 0) {
      return; //Don't bother C if we don't need to.
    }
    let maxArgs: PlumberArgs = {
      headCheck: () => true,
      bodyCheck: (args, bytesRead, body) => {
        let decoded = Plumber.getInstance().decodeGetMinMax(args, body);
        this.props.dispatch({type: 'measurements/setMax', payload: decoded });
        return true;
      },
      cmd: CMD.CMD_GetMax,
      id: 0,
      writeData: channelNum
    }
    let minArgs: PlumberArgs = {
      headCheck: () => true,
      bodyCheck: (args, bytesRead, body) => {
        let decoded = Plumber.getInstance().decodeGetMinMax(args, body);
        this.props.dispatch({type: 'measurements/setMin', payload: decoded });
        return true;
      },
      cmd: CMD.CMD_GetMin,
      id: 0,
      writeData: channelNum
    }
    Plumber.getInstance().cycle(maxArgs);
    Plumber.getInstance().cycle(minArgs);
  }

  measureChannel = (channelNumber: number) => {
    this.props.dispatch({type: 'measurements/selectChannel', payload: channelNumber });
  }

  render() {
    return (
      <div className="MeasurementsWidget">
        <div className="WidgetTitle">
          Measurements
        </div>

      <div className="ChannelTitle">
        Channel
      </div>
      <div className="ChannelSelectionButtons">
        <button
          className="Channel1Button"
          onClick={() => this.measureChannel(1)}>
          <label
            className={"Channel1ButtonText"}
            style={{color: this.props.measurementsWidget.displayChannel[0] === true ? this.props.settings.colors.channel[0] : "black"}}>
            CH1
          </label>
        </button>
        <button
          className="Channel2Button"
          onClick={() => this.measureChannel(2)}>
          <label
            className={"Channel2ButtonText"}
            style={{color: this.props.measurementsWidget.displayChannel[1] === true ? this.props.settings.colors.channel[1] : "black"}}>
            CH2
          </label>
        </button>
        <button
          className="Channel3Button"
          onClick={() => this.measureChannel(3)}>
          <label
            className={"Channel3ButtonText"}
            style={{color: this.props.measurementsWidget.displayChannel[2] === true ? this.props.settings.colors.channel[2] : "black"}}>
            CH3
          </label>
        </button>
        <button
          className="Channel4Button"
          onClick={() => this.measureChannel(4)}>
          <label
            className={"Channel4ButtonText"}
            style={{color: this.props.measurementsWidget.displayChannel[3] === true ? this.props.settings.colors.channel[3] : "black"}}>
            CH4
          </label>
        </button>
      </div>

      {this.props.measurementsWidget.displayChannel[0] === true &&
      <div className="Channel1Measurements-Title">
        CH1 Measurements
      </div>
      }
      {this.props.measurementsWidget.displayChannel[0] === true &&
      <div className="Channel1Measurements">
        <label
          className="Channel1-MaxLabel"
          style={{color: this.props.settings.colors.channel[0]}}>
          {MathType.Max}
        </label>
        <label
          className="Channel1-MaxValue"
          style={{color: this.props.settings.colors.channel[0]}}>
          {this.props.measurementsWidget.max[0].value}
          {this.props.verticalWidget.settings[0].controlMode === ControlMode.Coarse 
            && this.props.verticalWidget.timePerDivision[0].coarse.unit.toString()}
          {this.props.verticalWidget.settings[0].controlMode === ControlMode.Fine 
            && + this.props.verticalWidget.timePerDivision[0].fine.unit.toString()}
        </label>
      <div className="ClearBlock"></div>
        <label
          className="Channel1-MinLabel"
          style={{color: this.props.settings.colors.channel[0]}}>
          {MathType.Min}
        </label>
        <label
          className="Channel1-MinValue"
          style={{color: this.props.settings.colors.channel[0]}}>
          {this.props.measurementsWidget.min[0].value}
          {this.props.verticalWidget.settings[0].controlMode === ControlMode.Coarse 
            && this.props.verticalWidget.timePerDivision[0].coarse.unit.toString()}
          {this.props.verticalWidget.settings[0].controlMode === ControlMode.Fine 
            && + this.props.verticalWidget.timePerDivision[0].fine.unit.toString()}
        </label>
      <div className="ClearBlock"></div>
      </div>
      }

      {this.props.measurementsWidget.displayChannel[1] === true &&
      <div className="Channel2Measurements-Title">
        CH2 Measurements
      </div>
      }
      {this.props.measurementsWidget.displayChannel[1] === true &&
      <div className="Channel2Measurements">
        <label
          className="Channel2-MaxLabel"
          style={{color: this.props.settings.colors.channel[1]}}>
          {MathType.Max}
        </label>
        <label
          className="Channel2-MaxValue"
          style={{color: this.props.settings.colors.channel[1]}}>
          {this.props.measurementsWidget.max[1].value}
          {this.props.verticalWidget.settings[1].controlMode === ControlMode.Coarse 
            && this.props.verticalWidget.timePerDivision[1].coarse.unit.toString()}
          {this.props.verticalWidget.settings[1].controlMode === ControlMode.Fine 
            && + this.props.verticalWidget.timePerDivision[1].fine.unit.toString()}
        </label>
      <div className="ClearBlock"></div>
        <label
          className="Channel2-MinLabel"
          style={{color: this.props.settings.colors.channel[1]}}>
          {MathType.Min}
        </label>
        <label
          className="Channel2-MinValue"
          style={{color: this.props.settings.colors.channel[1]}}>
          {this.props.measurementsWidget.min[1].value}
          {this.props.verticalWidget.settings[1].controlMode === ControlMode.Coarse 
            && this.props.verticalWidget.timePerDivision[1].coarse.unit.toString()}
          {this.props.verticalWidget.settings[1].controlMode === ControlMode.Fine 
            && + this.props.verticalWidget.timePerDivision[1].fine.unit.toString()}
        </label>
      <div className="ClearBlock"></div>
      </div>
      }

      {this.props.measurementsWidget.displayChannel[2] === true &&
      <div className="Channel3Measurements-Title">
        CH3 Measurements
      </div>
      }
      {this.props.measurementsWidget.displayChannel[2] === true &&
      <div className="Channel3Measurements">
        <label
          className="Channel3-MaxLabel"
          style={{color: this.props.settings.colors.channel[2]}}>
          {MathType.Max}
        </label>
        <label
          className="Channel3-MaxValue"
          style={{color: this.props.settings.colors.channel[2]}}>
          {this.props.measurementsWidget.max[2].value}
          {this.props.verticalWidget.settings[2].controlMode === ControlMode.Coarse 
            && this.props.verticalWidget.timePerDivision[2].coarse.unit.toString()}
          {this.props.verticalWidget.settings[2].controlMode === ControlMode.Fine 
            && + this.props.verticalWidget.timePerDivision[2].fine.unit.toString()}
        </label>
      <div className="ClearBlock"></div>
        <label
          className="Channel3-MinLabel"
          style={{color: this.props.settings.colors.channel[2]}}>
          {MathType.Min}
        </label>
        <label
          className="Channel3-MinValue"
          style={{color: this.props.settings.colors.channel[2]}}>
          {this.props.measurementsWidget.min[2].value}
          {this.props.verticalWidget.settings[2].controlMode === ControlMode.Coarse 
            && this.props.verticalWidget.timePerDivision[2].coarse.unit.toString()}
          {this.props.verticalWidget.settings[2].controlMode === ControlMode.Fine 
            && + this.props.verticalWidget.timePerDivision[2].fine.unit.toString()}
        </label>
      <div className="ClearBlock"></div>
      </div>
      }

      {this.props.measurementsWidget.displayChannel[3] === true &&
      <div className="Channel4Measurements-Title">
        CH4 Measurements
      </div>
      }
      {this.props.measurementsWidget.displayChannel[3] === true &&
      <div className="Channel4Measurements">
        <label
          className="Channel4-MaxLabel"
          style={{color: this.props.settings.colors.channel[3]}}>
          {MathType.Max}
        </label>
        <label
          className="Channel4-MaxValue"
          style={{color: this.props.settings.colors.channel[3]}}>
          {this.props.measurementsWidget.max[3].value}
          {this.props.verticalWidget.settings[3].controlMode === ControlMode.Coarse 
            && this.props.verticalWidget.timePerDivision[3].coarse.unit.toString()}
          {this.props.verticalWidget.settings[3].controlMode === ControlMode.Fine 
            && + this.props.verticalWidget.timePerDivision[3].fine.unit.toString()}
        </label>
      <div className="ClearBlock"></div>
        <label
          className="Channel4-MinLabel"
          style={{color: this.props.settings.colors.channel[3]}}>
          {MathType.Min}
        </label>
        <label
          className="Channel4-MinValue"
          style={{color: this.props.settings.colors.channel[3]}}>
          {this.props.measurementsWidget.min[3].value}
          {this.props.verticalWidget.settings[3].controlMode === ControlMode.Coarse 
            && this.props.verticalWidget.timePerDivision[3].coarse.unit.toString()}
          {this.props.verticalWidget.settings[3].controlMode === ControlMode.Fine 
            && + this.props.verticalWidget.timePerDivision[3].fine.unit.toString()}
        </label>
      <div className="ClearBlock"></div>
      </div>
      }

      </div>
    )
  }
}

function mapStateToProps(state: { measurementsWidget: any, verticalWidget: any, settings: any, graph: any }) {
  return {
    measurementsWidget: state.measurementsWidget,
    verticalWidget: state.verticalWidget,
    settings: state.settings,
    graph: state.graph
  };
}

export default connect(mapStateToProps)(MeasurementsWidget);