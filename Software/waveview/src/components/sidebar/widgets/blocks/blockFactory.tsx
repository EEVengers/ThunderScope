import React from 'react';
import {IBlockProps, IBlockState} from '../../../../interfaces/sidebar/sidebarInterfaces';

type BlockConstructor = new (props: IBlockProps) => React.Component<IBlockProps, IBlockState>;

abstract class BlockFactory {
  private static BlockConstructorDict: { [blocktype:string] : BlockConstructor } = {};

  static register(blockType: string, constructor: BlockConstructor) {
    BlockFactory.BlockConstructorDict[blockType] = constructor;
  }

  static create(blocktype: string, props: IBlockProps) {
    let c = BlockFactory.BlockConstructorDict[blocktype];
    if(c == null) //Also catch undefined
    {
      return (<div />);
    }
    else
    {
      return React.createElement(c, props);
    }
  }
}

export default BlockFactory;