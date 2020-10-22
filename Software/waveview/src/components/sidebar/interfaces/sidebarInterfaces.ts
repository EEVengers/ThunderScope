// Widget Interfaces
  interface IWidget {
    title: string,
    blocks: IBlockProps[]
  }

  interface IWidgetProps {
    title: string,
    blocks: IBlockProps[]
  }

  interface IWidgetState {
    title: string,
    blocks: IBlockProps[]
  }

// Block Interfaces
  interface IBlockProps {
    blockType: string,
    data: object
  }
  
  interface IBlockState {
    blockType: string,
    data: any
  }

  interface IAdjustValueBlockProps {
    data: {
      value: number,
      unit: string,
      perUnit: boolean
    }
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
  IBlockProps,
  IBlockState,
  IAdjustValueBlockProps,
  IDisplayValueBlockProps
}