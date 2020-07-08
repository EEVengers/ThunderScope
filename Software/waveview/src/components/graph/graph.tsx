import React from 'react';
import './graph.css';
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
            data={[{x: 1, y: 3}, {x: 2, y: 5}, {x: 3, y: 15}, {x: 4, y: 12}]}
          />
        </FlexibleXYPlot>
      </div>
    )
  }
}

export default Graph;
