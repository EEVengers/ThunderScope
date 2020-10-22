import React from 'react';
import './widget.css';
import AdjustValueBlock from './blocks/adjustValueBlock';
import DisplayValueBlock from './blocks/displayValueBlock';

interface IBlockProps {
  blockType: string,
  data: object
}

interface IWidgetProps {
  title: string,
  blocks: IBlockProps[]
}

interface IWidgetState {
  title: string,
  blocks: IBlockProps[]
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
          <AdjustValueBlock 
            blockType={this.state.title}
            data={this.state.blocks}
          />
          <DisplayValueBlock 
            blockType={this.state.title}
            data={this.state.blocks}
          />
      </div>
    )
  }
}

export default Widget;
