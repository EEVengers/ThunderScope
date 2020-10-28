import BlockType from '../../../enums/sidebar/widgets/blockType';

  interface IBlockTypedProps {
    blockType: BlockType,
    data: object
  }

// Widget Interfaces
  interface IWidget {
    title: string,
    blocks: IBlockTypedProps[]
  }

  interface IWidgetProps {
    title: string,
    blocks: IBlockTypedProps[]
  }

  interface IWidgetState {
    title: string,
    blocks: IBlockTypedProps[]
  }

  interface IButton {
    color: string, 
    className: string, 
    text: string
  }

export type {
  IWidget,
  IWidgetProps,
  IWidgetState,
  IBlockTypedProps,
  IButton
}