import React from 'react';
import './displayValueBlock.css';
import {IDisplayValueBlockProps, IBlockProps, IBlockState} from '../../../../interfaces/sidebar/widgets/blockInterfaces';

class DisplayValueBlock extends React.Component<IBlockProps, IBlockState> {
  constructor(props: IBlockProps) {
    super(props);
    this.state = {
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

export default DisplayValueBlock;