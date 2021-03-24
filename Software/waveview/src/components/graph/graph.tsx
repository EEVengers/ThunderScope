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
          yDomain={this.props.graph.yDomain}
          xDomain={this.props.graph.xDomain}
          margin={{right:0, bottom:0}}
        >
          <HorizontalGridLines
            style={{stroke: '#4D4D4D'}}
            left={0}
            top={0}
            width={10000}
            height={10000}
            tickTotal={12}
          />
          <VerticalGridLines
            style={{stroke: '#4D4D4D'}}
            left={0}
            top={0}
            width={10000}
            height={10000}
            tickTotal={10}
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

function mapStateToProps(state: { graph: any, settings: any, verticalWidget: any }) {
  return {
    graph: state.graph,
    settings: state.settings,
    verticalWidget: state.verticalWidget
  };
}

export default connect(mapStateToProps)(Graph);
