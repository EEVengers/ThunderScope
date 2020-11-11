import React from 'react';
import {IBlockProps, IBlockState} from '../../../../interfaces/sidebar/widgets/blockInterfaces';
import BlockType from '../../../../enums/sidebar/widgets/blockType';
import AdjustChannelBlock from './adjustChannelBlock';
import AdjustValueBlock from './adjustValueBlock';
import DisplayValueBlock from './displayValueBlock';

type BlockConstructor = new (props: IBlockProps) => React.Component<IBlockProps, IBlockState>;

let BlockList: BlockConstructor[] = [];

BlockList[BlockType.AdjustChannel] = AdjustChannelBlock;
BlockList[BlockType.AdjustValue] = AdjustValueBlock;
BlockList[BlockType.DisplayValue] = DisplayValueBlock;

export default BlockList;