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

interface IDisplayValueBlockProps {
  leftValue: string,
  rightValue: string
}

export type {
  IBlockProps,
  IBlockState,
  IAdjustValueBlockProps,
  IDisplayValueBlockProps,
  IAdjustChannelBlockProps
}