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

interface IGraphProps {
  yDomain: number[],
  xDomain: number[],
  dataSeries: any[][],
  colorSeries: string[]
}

function Graph(props: IGraphProps) {
  return (
    <div className="graph_view">
      <div className="graph_sidebar" />
      <FlexibleXYPlot
        yDomain={props.yDomain}
        xDomain={props.xDomain}
      >
        <HorizontalGridLines 
          style={{stroke: '#4D4D4D'}}
          left={0} 
          top={0}
          height={10000}
          width={10000}
        />
        <VerticalGridLines 
          style={{stroke: '#4D4D4D'}}
          left={0} 
          top={0}
          height={10000}
          width={10000}
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
          props.dataSeries.map((data, index) => {
            return <LineSeries
              className="data-series"
              data={data}
              style={{fill:"none"}}
              color={props.colorSeries[index]}
            />
          })
        }
      </FlexibleXYPlot>
    </div>
  )
}

export default Graph;
