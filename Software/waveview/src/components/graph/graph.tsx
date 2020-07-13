import React from 'react';
import './graph.css';
import { data } from '../../testdata/sin1MHz_ratio12';
import {
  FlexibleXYPlot,
  XAxis,
  YAxis,
  HorizontalGridLines,
  VerticalGridLines,
  LineSeries
} from 'react-vis';

class Graph extends React.Component {
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
            data={data}
            style={{fill:"none"}}
            color="yellow"
          />
        </FlexibleXYPlot>
      </div>
    )
  }
}

export default Graph;
