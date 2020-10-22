import React from 'react';
import './widget.css';
import BlockType from '../../../interfaces/sidebar/blockType';
import BlockList from './blocks/blockList';
import {IBlockProps} from '../../../interfaces/sidebar/blockInterfaces';
import {IWidgetProps, IWidgetState} from '../../../interfaces/sidebar/sidebarInterfaces';

function create(blocktype: BlockType, props: IBlockProps) {
  let c = BlockList[blocktype];
  if(c == null) //Also catch undefined
  {
    return (<div />);
  }
  else
  {
    return React.createElement(c, props);
  }
}

class Widget extends React.Component<IWidgetProps, IWidgetState> {

  constructor(props: IWidgetProps) {
    super(props);
    this.state = {
      title: props.title,
      blocks: props.blocks
    }
  }

  render() {
    return (
      <div className={this.state.title + "-component"}>
        <div className="WidgetTitle">
          {this.state.title}
        </div>
        {
        this.state.blocks.map((b) =>  create(b.blockType, {data: b.data}))
        }
      </div>
    )
  }
}

export default Widget;
