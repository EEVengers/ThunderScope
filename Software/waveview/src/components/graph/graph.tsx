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

class Graph extends React.Component<any, any> { 

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
          yDomain={this.props.yDomain}
          xDomain={this.props.xDomain}
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
            this.props.dataSeries.map((data: any, index: any) => {
              return <LineSeries
                className="data-series"
                data={data}
                style={{fill:"none", transform: "translate(0,0)"}}
                color={this.props.settings.colors.channel[index]}
              />
            })
          }
        </FlexibleXYPlot>
      </div>
    )
  }
}

function mapStateToProps(state: { graph: any, settings: any }) {
  return {
    graph: state.graph,
    settings: state.settings
  };
}

export default connect(mapStateToProps)(Graph);
