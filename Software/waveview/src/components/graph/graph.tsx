import React from 'react';
import './graph.css';
import { data } from '../../testdata/sin1MHz';
import {
  FlexibleXYPlot,
  XAxis,
  YAxis,
  HorizontalGridLines,
  VerticalGridLines,
  LineSeries
} from 'react-vis';

interface IGraphProps {
}

interface IGraphState {
  tickCount: number;
  curData: any[];
}

//See https://stackoverflow.com/a/46987987
//Stateful code adapted from https://reactjs.org/docs/state-and-lifecycle.html
class Graph extends React.Component<IGraphProps,IGraphState> {
  timerID: number = 0;

  constructor(props: IGraphProps) {
    super(props);
    this.state = {tickCount: 0, curData: []};
  }

  componentDidMount() {
    this.timerID = window.setInterval(
      () => this.tick(),
      100
    )
  }

  componentWillUnmount() {
    clearInterval(this.timerID)
  }

  tick() {
    let tickCount = this.state.tickCount + 1;
    let pointPerTick = 10;
    let tickWindow = 100;
    let i0 = Math.min(
              Math.max(0, (tickCount-tickWindow)*pointPerTick),
              data.length - (tickWindow*pointPerTick)
            );
    let i1 = Math.min(tickCount*pointPerTick, data.length);
    this.setState({
      tickCount: tickCount,
      curData: data.slice(i0, i1)
    })
  }

  render() {
    return (
      <div className="graph_view">
        <FlexibleXYPlot>
          <HorizontalGridLines style={{stroke: '#4D4D4D'}} />
          <VerticalGridLines style={{stroke: '#4D4D4D'}} />
          <XAxis
            title="X Axis"
          />
          <YAxis 
            title="Y Axis" 
          />
          <LineSeries
            className="data-series"
            data={this.state.curData}
            style={{fill:"none"}}
            color="yellow"
          />
        </FlexibleXYPlot>
      </div>
    )
  }
}

export default Graph;
