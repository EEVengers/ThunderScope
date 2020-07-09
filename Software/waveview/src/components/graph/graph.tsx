import React from 'react';
import './graph.css';
import { data } from '../../testdata/sin10kHz_ratio12';
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
          <HorizontalGridLines style={{stroke: '#B7E9ED'}} />
          <VerticalGridLines style={{stroke: '#B7E9ED'}} />
          <XAxis
            title="X Axis"
          />
          <YAxis 
            title="Y Axis" 
          />
          <LineSeries
            className="data-series"
            data={data}
          />
        </FlexibleXYPlot>
      </div>
    )
  }
}

export default Graph;
