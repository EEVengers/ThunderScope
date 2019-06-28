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

import struct

def parse(bitstream):
    '''Parses a bitstream from a bytes object'''
    HEADER = bytes([0x00, 0x09, 0x0f, 0xf0, 0x0f, 0xf0, 0x0f,
                    0xf0, 0x0f, 0xf0, 0x00, 0x00, 0x01])

    SECTION_NAMES = {
        'a' : 'design',
        'b' : 'part_name',
        'c' : 'date',
        'd' : 'time',
        'e' : 'data',
    }

    index = len(HEADER)
    sections = {}
    if bitstream[:len(HEADER)] == HEADER:
        while True:
            section_id = chr(bitstream[index])
            index += 1

            if section_id == 'e':
                section_length = struct.unpack_from('>I', bitstream, index)[0]
                index += 4
            else:
                section_length = struct.unpack_from('>H', bitstream, index)[0]
                index += 2

            data = bitstream[index:index + section_length]

            if section_id != 'e':
                data = data[:-1].decode('utf-8')

            section_name = SECTION_NAMES[section_id]
            sections[section_name] = {
                'section_length' : section_length,
                'data'           : data,
            }
            index += section_length

            if section_id == 'e':
                break

    return sections
