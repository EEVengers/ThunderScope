import React from 'react';
import { connect } from 'react-redux';
import './../../../css/sidebar/widgets/horizontalWidget.css';

class HorizontalWidget extends React.Component<any, any> { 

  // Horizontal Time Base
  incrementTimeBase = () => {
    this.props.dispatch({ type: 'horizontal/increaseTimeBase'});
  }

  decrementTimeBase = () => {
    this.props.dispatch({ type: 'horizontal/decreaseTimeBase'});
  }

  // Horizontal Offset
  incrementOffset = () => {
    this.props.dispatch({ type: 'horizontal/increaseOffset'});
  }

  decrementOffset = () => {
    this.props.dispatch({ type: 'horizontal/decreaseOffset'});
  }

  render() {
    return (
      <div className="HorizontalWidget">
        <div className="WidgetTitle">
          Horizontal
        </div>
        
        <div className="HorizontalWidgetAdjustBlock-HorizontalTimeBase">
          <button 
            className="MinusButton"
            onClick={() => this.decrementTimeBase}>
            -
          </button>
          <label 
            className="AdjustValueBlockHorizontalTimeBase"
            style={{color: "white"}}
          >
            {this.props.horizontalWidget.horizontalTimeBase.value.toString()}{this.props.horizontalWidget.horizontalTimeBase.unit}
          </label>
          <button 
            className="PlusButton"
            onClick={() => this.incrementTimeBase}>
            +
          </button>
        </div>

        <div className="HorizontalWidgetAdjustBlock-HorizontalOffset">
          <button 
            className="MinusButton"
            onClick={() => this.decrementOffset}>
            -
          </button>
          <label 
            className="AdjustValueBlockHorizontalOffset"
            style={{color: "white"}}
          >
            {this.props.horizontalWidget.horizontalOffset.value.toString()}{this.props.horizontalWidget.horizontalOffset.unit}
          </label>
          <button 
            className="PlusButton"
            onClick={() => this.incrementOffset}>
            +
          </button>
        </div>
        
      </div>
    )
  }
}

function mapStateToProps(state: { horizontalWidget: any; }) {
  return {
    horizontalWidget: state.horizontalWidget
  };
}

export default connect(mapStateToProps)(HorizontalWidget);
