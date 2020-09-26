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

function Graph(props: any) {
  return (
    <div className="graph_view">
      <FlexibleXYPlot
        yDomain={props.yDomain}
        xDomain={props.xDomain}
      >
        <HorizontalGridLines style={{stroke: '#4D4D4D'}} />
        <VerticalGridLines style={{stroke: '#4D4D4D'}} />
        <XAxis
          title=""
          hideTicks
        />
        <YAxis 
          title="" 
          hideTicks
        />
        <LineSeries
          className="data-series"
          data={props.data}
          style={{fill:"none"}}
          color="yellow"
        />
      </FlexibleXYPlot>
    </div>
  )
}

export default Graph;
