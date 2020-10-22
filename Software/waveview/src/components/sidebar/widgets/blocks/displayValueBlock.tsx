import React from 'react';
import './displayValueBlock.css';

interface IDisplayValueBlockProps {
  leftValue: string,
  rightValue: string
}

interface IBlockProps {
  blockType: string,
  data: object
}

interface IBlockState {
  blockType: string,
  data: any
}

class AdjustValueBlock extends React.Component<IBlockProps, IBlockState> {

  constructor(props: IBlockProps) {
    super(props);
    this.state = {
      blockType: this.props.blockType,
      data: this.props.data as IDisplayValueBlockProps
    }
  }

  render() {
    return (
      <div className="DisplayValueBlockComponent">
        <label
          className="DisplayValueBlockLeftValue"
        >
          {this.state.data.leftValue}
        </label>
        <label
          className="DisplayValueBlockRightValue"
        >
          {this.state.data.rightValue}
        </label>
        <div className="ClearBlock"></div> 
      </div>
    )
  }
}

export default AdjustValueBlock;