import React from 'react';
import './widget.css';
import AdjustValueBlock from './blocks/adjustValueBlock';
import DisplayValueBlock from './blocks/displayValueBlock';
import {IWidgetProps, IWidgetState} from '../../../interfaces/sidebar/sidebarInterfaces';
import AdjustChannelBlock from './blocks/adjustChannelBlock';

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
        this.state.blocks.map((b) => {
          switch (b.blockType) {
            // TODO: Move this logic into a helper method
            case "AdjustChannel":
              return (
                <AdjustChannelBlock
                  blockType={b.blockType}
                  data={b.data}
                />
              )
            case "AdjustValue":
              return (
              <AdjustValueBlock 
                blockType={b.blockType}
                data={b.data}
              />
              )
            case "DisplayValue":
              return (
              <DisplayValueBlock 
                blockType={b.blockType}
                data={b.data}
              />
              )
            default:
              return (<div />)
          }
        })
        }
      </div>
    )
  }
}

export default Widget;
