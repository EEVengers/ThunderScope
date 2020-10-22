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

// Block Interfaces
  interface IBlockTypedProps {
    blockType: string,
    data: object
  }

  interface IBlockProps {
    data: object
  }
  
  interface IBlockState {
    data: any
  }

  interface IAdjustValueBlockProps {
    data: {
      value: number,
      unit: string,
      showPerDiv: boolean
    }
  }

  interface IAdjustChannelBlockProps {
    channel: number
  }

  interface IButton {
    color: string, 
    className: string, 
    text: string
  }

  interface IDisplayValueBlockProps {
    leftValue: string,
    rightValue: string
  }

export type {
  IButton,
  IWidget,
  IWidgetProps,
  IWidgetState,
  IBlockTypedProps,
  IBlockProps,
  IBlockState,
  IAdjustValueBlockProps,
  IDisplayValueBlockProps,
  IAdjustChannelBlockProps
}