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


import struct
import sys

from openocd import OpenOcd
import xilinx.bitstream
import xilinx.utilities


QUEUE_MAX_LENGTH = 256


if __name__ == "__main__":
    bitstream = open(sys.argv[1], 'rb').read()
    bitstream_data = xilinx.bitstream.parse(bitstream)['data']['data']

    dr_data = []
    for byte in bitstream_data:
        dr_data.append(byte)
    dr_data = bytes(dr_data)

    words = []
    for index in range(0, len(dr_data), 2):
        word = struct.unpack_from('>H', dr_data, index)[0]
        words.append(word)

    tap = input("Tap name [xc6slx100.tap]: ") or 'xc6slx100.tap'
    drscan_command = 'drscan %s ' % tap

    with OpenOcd(verbose=False) as ocd:
        # Reset TAP
        ocd.send('pathmove RESET RUN/IDLE')

        # JPROGRAM
        ocd.send('irscan %s 0x0B' % tap)

        # CFG_IN
        ocd.send('irscan %s 0x05' % tap)
        ocd.send('runtest 10000')

        # CFG_IN
        sys.stdout.write("Loading... ")
        ocd.send('irscan %s 0x05' % tap)
        number_of_words = len(words)
        command_number = 0
        command_queue = []
        for word_index in range(0, number_of_words, QUEUE_MAX_LENGTH):
            command_queue.append(drscan_command)
            for word in words[word_index:word_index + QUEUE_MAX_LENGTH]:
                sys.stdout.write("% 3d%%" % int(command_number/number_of_words * 100))
                command_queue.append('16 0x%04X' % xilinx.utilities.flip_bits(word, 16))
                command_number += 1
                sys.stdout.write("\b\b\b\b")
            command_queue.append('-endstate DRSHIFT')
            ocd.send(' '.join(command_queue))
            command_queue = []
        ocd.send(drscan_command + '16 0x%04X' % xilinx.utilities.flip_bits(words[-1], 16))

        # JSTART
        ocd.send("irscan %s 0x0C" % tap)
        ocd.send("runtest 24")

        # Reset TAP
        ocd.send('pathmove RESET RUN/IDLE')

        sys.stdout.write("100%\n")
