import React from 'react';
import './widget.css';
import {IWidgetProps, IWidgetState} from '../../../interfaces/sidebar/sidebarInterfaces';
import BlockFactory from './blocks/blockFactory';
import AdjustChannelBlock from './blocks/adjustChannelBlock';
import AdjustValueBlock from './blocks/adjustValueBlock';
import DisplayValueBlock from './blocks/displayValueBlock';

BlockFactory.register(AdjustChannelBlock.blocktype, AdjustChannelBlock);
BlockFactory.register(AdjustValueBlock.blocktype, AdjustValueBlock);
BlockFactory.register(DisplayValueBlock.blocktype, DisplayValueBlock);

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
        this.state.blocks.map((b) =>  BlockFactory.create(b.blockType, {data: b.data}))
        }
      </div>
    )
  }
}

export default Widget;
