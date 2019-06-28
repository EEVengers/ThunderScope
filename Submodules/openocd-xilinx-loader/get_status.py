#!/usr/bin/env python3
#
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

import binascii
import struct
import sys

from openocd import OpenOcd
import xilinx.utilities

read_status_reg_commands = [
    0xFFFF,
    0xAA99,
    0x5566,
    0x2000,
    0x2901,
    0x2000,
    0x2000,
    0x2000,
    0x2000,
]

def print_status(status):
    status_fields = [
        ['SWWD_strikeout', bool, 15],
        ['IN_PWRDN',       bool, 14],
        ['DONE',           bool, 13],
        ['INIT_B',         bool, 12],
        ['MODE',           int,  [11, 10, 9]],
        ['HSWAPEN',        bool, 8],
        ['PART_SECURED',   bool, 7],
        ['DEC_ERROR',      bool, 6],
        ['GHIGH_B',        bool, 5],
        ['GWE',            bool, 4],
        ['GTS_CFG_B',      bool, 3],
        ['DCM_LOCK',       bool, 2],
        ['ID_ERROR',       bool, 1],
        ['CRC_ERROR',      bool, 0],
    ]

    for field in status_fields:
        padded_name = field[0] + ' ' * (16 - len(field[0]))
        if field[1] == bool:
            result = 1 if (status & (1 << field[2])) else 0
        elif field[1] == int:
            result = 0
            for bit in field[2]:
                result |= status & (1 << bit) >> field[2][-1]
        print(padded_name, result)

if __name__ == "__main__":
    tap = input("Tap name [xc6slx100.tap]: ") or 'xc6slx100.tap'
    drscan_command = 'drscan %s' % tap

    with OpenOcd(verbose=False) as ocd:
        # CFG_IN
        ocd.send('irscan %s 0x05' % tap)
        command = drscan_command
        for word in read_status_reg_commands:
            command += ' 16 0x%04X' % xilinx.utilities.flip_bits(word, 16)
        ocd.send(command)

        # CFG_OUT
        ocd.send('irscan %s 0x04' % tap)
        response = ocd.send(drscan_command + ' 16 0x0000')
        response_bytes = binascii.a2b_hex(response)
        response_int = (response_bytes[0] << 8) | response_bytes[1]
        status = xilinx.utilities.flip_bits(response_int, 16)

        print("0x%04X" % status)
        print_status(status)
