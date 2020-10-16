import React from 'react';
import './displayValueBlock.css';

interface IDisplayValueBlockProps {
  leftValue: string,
  rightValue: string
}

interface IDisplayValueBlockState {
  leftValue: string,
  rightValue: string
}

class AdjustValueBlock extends React.Component<IDisplayValueBlockProps, IDisplayValueBlockState> {

  constructor(props: IDisplayValueBlockProps) {
    super(props);
    this.state = {
      leftValue: props.leftValue,
      rightValue: props.rightValue
    }
  }

  render() {
    return (
      <div className="DisplayValueBlockComponent">
        <label
          className="DisplayValueBlockLeftValue"
        >
          {this.state.leftValue}
        </label>
        <label
          className="DisplayValueBlockRightValue"
        >
          {this.state.rightValue}
        </label>
        <div className="ClearBlock"></div> 
      </div>
    )
  }
}

export default AdjustValueBlock;