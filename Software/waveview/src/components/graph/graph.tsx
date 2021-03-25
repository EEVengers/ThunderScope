import React from 'react';
import { connect } from 'react-redux';
import './../../css/graph/graph.css';
import {
  FlexibleXYPlot,
  XAxis,
  YAxis,
  HorizontalGridLines,
  VerticalGridLines,
  LineSeries
} from 'react-vis';

import GraphStatus from '../../configuration/enums/graphStatus';
import TestPoints from '../../util/testpoints';
import { convertTime } from '../../util/convert';
import TimeUnit from '../../configuration/enums/timeUnit';
import DefaultValues from '../../configuration/defaultValues';

class Graph extends React.Component<any, any> {
  static instanceList: Graph[] = [];
  timerID: number = 0;
  generator: TestPoints = new TestPoints();

  componentDidMount() {
    Graph.instanceList.push(this);
    this.timerID = window.setInterval(
      () => this.tick(),
      16.67
    );
    this.generator.mountCalls();
  }

  componentWillUnmount() {
    clearInterval(this.timerID)
  }

  tick() {
    if(this.props.graph.currentStatus === GraphStatus.On) {
      this.props.dispatch({type: 'graph/tick'});
      this.generator.update();
    }
  }

  render() {
    let base = this.props.horizontalWidget.horizontalTimeBase.coarse;
    let dCount = DefaultValues.divisions.time;
    let winSize = dCount * convertTime(base.value, base.unit, TimeUnit.NanoSecond);
    let yTicks = [-128, -96, -64, -32, 0, 32, 64, 96, 128]
    let xTicks = [
      0,
      1*winSize/10,
      2*winSize/10,
      3*winSize/10,
      4*winSize/10,
      5*winSize/10,
      6*winSize/10,
      7*winSize/10,
      8*winSize/10,
      9*winSize/10,
      winSize
    ]
    return (
      <div className="graph_view">
        <div
          className="graph_sidebar"
        >
          <p
            className = "graph_arrow"
          >
            &#x21b3;
          </p>
        </div>
        <FlexibleXYPlot
          yDomain={[-128,128]}
          xDomain={[0, winSize]}
          margin={{right:0, bottom:0}}
        >
          <HorizontalGridLines
            style={{stroke: '#4D4D4D'}}
            left={0}
            top={0}
            width={10000}
            height={10000}
            tickValues={yTicks}
          />
          <VerticalGridLines
            style={{stroke: '#4D4D4D'}}
            left={0}
            top={0}
            width={10000}
            height={10000}
            tickValues={xTicks}
          />
          <XAxis
            title=""
            hideTicks
          />
          <YAxis
            title=""
            hideTicks
          />
          {
            this.generator.getData().map((data: any, index: any) => {
              return (
              <LineSeries
                className="data-series"
                data={data}
                style={{fill:"none", transform: "translate(0,0)", opacity: this.props.verticalWidget.settings[index].status}}
                color={this.props.settings.colors.channel[index]}
              />
              )
            })
          }
        </FlexibleXYPlot>
      </div>
    )
  }
}

function mapStateToProps(state: { graph: any, settings: any, verticalWidget: any, horizontalWidget: any }) {
  return {
    graph: state.graph,
    settings: state.settings,
    verticalWidget: state.verticalWidget,
    horizontalWidget: state.horizontalWidget
  };
}

export default connect(mapStateToProps)(Graph);
