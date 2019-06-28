# Copyright (C) 2015  Forest Crossman <cyrozap@gmail.com>
#
# This file is part of openocd-xilinx-loader.
#
# openocd-xilinx-loader is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# openocd-xilinx-loader is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with openocd-xilinx-loader.  If not, see <http://www.gnu.org/licenses/>.

def flip_bits(word, bitlength):
    '''Flip bits from left to right'''
    out = 0
    for i in range(0, bitlength):
        if (word & (1 << i)):
            out |= (1 << (bitlength - 1 - i))
    return out

def bit_swap(word):
    '''Bit-swaps a 16-bit word per UG380 page 78'''
    high_byte = (word & 0xff00) >> 8
    low_byte = word & 0x00ff
    new_high_byte = flip_bits(high_byte, 8)
    new_low_byte = flip_bits(low_byte, 8)
    new_word = (new_high_byte << 8) | new_low_byte
    return new_word
