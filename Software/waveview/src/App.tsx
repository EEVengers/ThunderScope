
import React from 'react';
import logo from './logo.svg';
import './App.css';
import {
  XYPlot,
  XAxis,
  YAxis,
  HorizontalGridLines,
  VerticalGridLines,
  LineSeries
} from 'react-vis';

function App() {
  return (
    <div className="App">
      <header className="App-header">
      <div>
        <div className="left_col">
             <XYPlot width={300} height={300}>
              <HorizontalGridLines style={{stroke: '#B7E9ED'}} />
              <VerticalGridLines style={{stroke: '#B7E9ED'}} />
              <XAxis
                title="X Axis"
                style={{
                  line: {stroke: '#ADDDE1'},
                  ticks: {stroke: '#ADDDE1'},
                  text: {stroke: 'none', fill: '#6b6b76', fontWeight: 600}
                } as any}
              />
              <YAxis title="Y Axis" />
              <LineSeries
                className="third-series"
                data={[{x: 1, y: 3}, {x: 2, y: 5}, {x: 3, y: 15}, {x: 4, y: 12}]}
                style={{
                  strokeLinejoin: 'round',
                  strokeWidth: 4
                } as any}
              />
            </XYPlot>
        </div>
        <div className="right_col">
        </div>
        
      </div>
      
      </header>
    </div>
  );
}

export default App;
