#!/usr/bin/env tclsh

# Generate a Multiboot address table
#
# Inputs:
#     - bitstream size
#     - flash type
#     - configuration data width
#     - frequency (MHz)
#     - flash density (Mbit)
#
# Assumptions:
#     - The special configuration startup condition DCI_WAIT is assumed to be
#       required and is included by default. This can be a significant factor
#       in the spaceing between images, especially in smaller flash devices.
#       This can be disable in the call to the NextBitstreamAddress procedure
#       if you are confident that DCI_WAIT is not required in your design.
#       If disabled, a small wait for PLL startup will be used instead.
#       However, this cannot be disabled in the current design but the extra
#       spacing required is small and likely not significant even in the
#       smallest flash devices.
#     - Using a sector size of 256 kB (smaller sectors will align)
#     - timer image size = 1 kB
#     - Only SPI and BPIx16 is supported (BPIx8 support not tested)
#
# TODO: Verify write_cfgmem settings and XDC contraints output
# Possible features:
#     - Add a list of FPGA bitstream sizes
#     - Automatically search for a bin file and get its size
#     - Change verbose-ness so that it can be piped with other commands
#       better (For example, it should be able to be output only the
#       write_cfgmem command to stdout)


## Globals ##
set INSTRUCTIONS "

Usage: [info script]

This Tcl script calculates the multiboot address maps for using 
timer barrier images for Multi-boot 7 series designs.

See XAPP1246 or XAPP1247 for more information

Usage:

Interactive mode:
    [info script]

Interactive mode with given bitstream size in bytes:
    [info script] <bitstream_size>

Batch mode (all arguments are required in the given order):
    [info script] <flash_type> <data_width> <freq_mhz> <flash_size_mbit> <bitstream_size>

    <flash_type>      : Flash type: spi, bpi
    <data_width>      : Flash data width: 1, 2, 4, 8, 16
    <freq_mhz>        : Frequency of CCLK (enter highest frequency used)
    <flash_size_mbit> : Size of flash device in Mbit (ex: 128, 256, 512, 1024)
    <bitstream_size>  : Size of bitstream in bytes. Get this from UG470 or
                        UG570. If compression is enabled and reading this
                        directly form the bitstream file itself, be aware that
                        subsequent builds can vary significantly in size and
                        this script will need to be re-run.

Interactive mode instructions:
- Select the parameters when prompted
- The first item listed is the default
- An empty answer will select the default

- Unless passed as the only command line argument, the
  bitstream length defaults to 0.

"

## Option ranges and default values
#  To change a default value, make it the first value in the list
set FLASH_TYPES [list spi bpi]
set FLASH_WIDTH [list 4 1 2 8 16]
set FREQ_MHZ_RANGE [list 100 3 150]
set FLASH_DENSITIES [list 256 32 64 128 512 1024 2048 4096 8192]

# Very rough ranges on valid bitstream sizes in bytes
set MIN_BIT_SIZE    131072 ; # 1 Mbit (in bytes)
set MAX_BIT_SIZE 536870912 ; # 4 Gbit (in bytes)
set BIT_SIZE_RANGE [list 0 $MIN_BIT_SIZE $MAX_BIT_SIZE]


# hexpr --
#
# Arguments:
# args: values to return formatted as hexidecimal 
#       All values are passed along to expr
#
# Results:
proc hexpr args {
   uplevel "format \"0x%08X\" \"[expr $args] \""
}


# PromptForOption --
#
# Arguments:
# prompt: text to display to at prompt
# values: list of values to display and select from
# range: if this is true, treat values as a list of three integers:
#       0 - default 
#       1 - minumum value
#       2 - maximum value
#
# Results: A valid response is returned from values
proc PromptForOption {prompt values {range 0}} {

    while {1} {
        puts -nonewline "${prompt} ( "
        foreach i $values {
            puts -nonewline "$i "
        }
        puts -nonewline ") : "
        flush stdout;
        if {[gets stdin line] < 0 && [eof stdin]} {
            return -code error "end of file detected"
        } elseif {[string length [string trim $line]] < 1} {
            return [lindex $values 0]
        } else {
            if {$range} {
                scan $line "%d" freq 
                if {$freq > [lindex $values 1] && $freq < [lindex $values 2]} {
                    return $freq
                }
            } else {
                set value [string tolower [string trim $line]]
                if {[lsearch $values $value] >= 0} {
                    return $value
                }
            }
        }
        puts "$line not recognized"
    }

    # shouldn't get here
    error -code error "Failed to get a valid option"

}

# InteractiveMode --
#
# Arguments:
# bits: Optional size of bitstream (will be prompted otherwize)
#
# Results: A valid response is returned from values
proc InteractiveMode {{bits 0}} {
    global INSTRUCTIONS
    global FLASH_TYPES
    global FLASH_WIDTH
    global FREQ_MHZ_RANGE
    global FLASH_DENSITIES
    global BIT_SIZE_RANGE 

    set options {}
    puts "$INSTRUCTIONS"
    puts "Entering interactive mode\n"

    set prompt "Enter flash type: "
    lappend options [PromptForOption $prompt $FLASH_TYPES]

    set prompt "Enter flash width (bits): "
    lappend options [PromptForOption $prompt $FLASH_WIDTH]

    set prompt "Enter CCLK frequency (MHz): "
    lappend options [PromptForOption $prompt $FREQ_MHZ_RANGE 1]

    set prompt "Enter Flash density in Mbit (2^20 bits):\n    "
    lappend options [PromptForOption $prompt $FLASH_DENSITIES]

    if {$bits == 0} {
        set prompt "Enter bitstream size in bytes:\n    "
        set size [PromptForOption $prompt $BIT_SIZE_RANGE 1]
        while {$size == 0} {
            puts "No default bitstream size available, please enter \
                  correct bitstream size"
            set size [PromptForOption $prompt $BIT_SIZE_RANGE 1]
        }
        lappend options $size
    } else {
        lappend options $bits
    }

    return $options
}


# GetOptions --
#
# Arguments:
#
# Results: Interactive mode is run or command line arguments are processed for
# valid values
proc GetOptions {argc argv} {
    global INSTRUCTIONS
    global MIN_BIT_SIZE
    global MAX_BIT_SIZE

    if { $argc == 1 } {
        if {![scan [lindex $argv 0] "%d" bit_size_bytes]} {
            puts "Single argument must be an integer"
            puts $INSTRUCTIONS
            return -1
        }
        if { $bit_size_bytes < $MIN_BIT_SIZE || \
             $bit_size_bytes > $MAX_BIT_SIZE } {
            puts "\"[lindex $argv 0]\" is not a valid bitstream size"
            puts "Expecting between $MIN_BIT_SIZE and $MAX_BIT_SIZE bytes"
            puts $INSTRUCTIONS
            return -1
        } else {
            set options [InteractiveMode $bit_size_bytes]
        }
    } elseif { $argc == 5 } {
        set options {}
        scan [lindex $argv 0] "%s" flash_type
        scan [lindex $argv 1] "%d" data_width
        scan [lindex $argv 2] "%d" freq_mhz
        scan [lindex $argv 3] "%d" flash_size_mbit
        scan [lindex $argv 4] "%d" bit_size_bytes

        lappend options $flash_type
        lappend options $data_width
        lappend options $freq_mhz
        lappend options $flash_size_mbit
        lappend options $bit_size_bytes

    } elseif { $argc == 0 } {
        set options [InteractiveMode]
    } else {
        puts "Unrecognized argument list: $argv" 
        puts $INSTRUCTIONS
        return -1
    }

    # puts "DEBUG(GetOptions): Options: $options"
    return $options
}

    
# NextBitstreamAddress --
#
# Calculate the address for the next bitstream. There is a minimum buffer
# requirement between bitstreams as certain startup conditions can delay
# configuration. If a following bitstream inserts new configuration commands,
# it could cause a configuration failure of the first bitstream
#
# Arguments:
# bits:      size of the bitstream
# start:     start address for the bitstream (0 by default)
# width:     (optional) Configuration width (defaults to 16)
# freq:      (optional) Configuration frequency in MHz (defaults to 134)
# dci_wait:  (optional) Is DCI wait needed. Should be set to 1 if any DCI is
#            being used in the design. Recommended to leave this at the
#            default unless no DCI is used in the design
# family:    (optional) 7: 7 series, 8: UltraScale (defaults to 7)
#            Safe to leave at 7 for UltraScale
#
# results:
# Returns the next address at which it is safe to place a new bitstream (such
# as the timer images)
proc NextBitstreamAddress {bits start {width 16} {freq_mhz 134} {dci_wait 1} \
                           {family 7}} {

    # Constants

    # Always assume at least PLL lock waitup is needed. This is quite small
    set pll_tlockmax_us 200

    # Use 256 kB sectors, smaller sectors may save a little bit of buffer
    # space, but will likely cause problems if used on 256 kB sector devices
    set sector_size [expr 256 * 2**10]

    if {$family == 8} {
        set dcu_wait_ms 4
    } else {
        set dcu_wait_ms 10
    }
    set dcu_wait_us [expr $dcu_wait_ms * 1000]

    # DCI Wait is always larger then pll_tlockmax_us, use it if enabled
    if {$dci_wait} {
        set wait_time [expr $dcu_wait_us * pow(10, -6)]
    } else {
        set wait_time [expr $pll_tlockmax_us * pow(10, -6)]
    }

    set frequency [expr $freq_mhz * 10**6]

    # Find the number CCLK cycles needed for the max wait time
    set wait_cycles [expr int(ceil($wait_time * $frequency))]
#    puts " -- Wait cycles: $wait_cycles"

    # The extra bits needed for the buffer
    set extra_bytes [expr ($wait_cycles * $width) / 8]
    # int(ceil(($frequency * $width / 8)))]

#    puts " -- Extra Bytes: $extra_bytes"

    # Add the extra bytes to the bitstream size and get the end address
    set bits_end [expr $bits + $start + $extra_bytes]

    set end_sector [expr int(ceil((1.0 * $bits_end) / $sector_size))]

    set end_address [expr $end_sector * $sector_size]

#    puts " -- Next available address: [hexpr $end_address]"

    return $end_address
}


# FirstTimerAddress --
#
# Calculate the first timer address based off the multiboot address
#
# Arguments:
# multiboot_address: Address of the multiboot image. This is the next "safe"
#                    sector after the golden bitstream
# Results:
# returns the address to place the first timer
proc FirstTimerAddress {multiboot_address} {
    set timer_size 1024

    return [expr $multiboot_address - $timer_size]
}

# WbstarAddress --
#
# Calculate the first timer address
#
# Arguments:
# multiboot_address: Address of the multiboot image. This is the next "safe"
#                    sector after the golden bitstream
# Results:
# returns the address for WBSTAR (BITSTREAM.CONFIG.NEXT_CONFIG_ADDR)
proc WbstarAddress {multiboot_address} {
    set wbstar_offset 512

    return [expr $multiboot_address - $wbstar_offset]
}


# CreateNext4Bytes --
#
# Formats 4 bytes for a bitstream SPI or BPIx16
#
# Arguments:
# bitswap (optional) - Swap the bits in the byte
# 
# Results:
# return a single byte 
proc CreateNext4Bytes {word {bitswap 0} {byteswap 0}} {

    set return_string ""

    # puts "DEBUG: Next hex string : $word"


    switch $byteswap {
        0 {
            set byte_sequence {0 2 4 6}
        }
        1 {
            set byte_sequence {2 0 6 4}
        }
        default {
            error "Unknown byte swap pattern: $byteswap"
        }
    }

    foreach i $byte_sequence {

        set out_data [binary format H2 [string range $word $i [expr $i + 1]]]
        binary scan $out_data B8 bin_string

        # puts "DEBUG: Next byte : $bin_string"

        if {$bitswap} {
            append return_string [string reverse $bin_string]
        } else {
            append return_string $bin_string
        }

    }

    # puts "DEBUG: Next string: $return_string"
    return $return_string 
}


# CreateTimers --
#
# Create the BIN files for the Timers
#
# Arguments:
# timer - either 1 or 2 for the timer to be built
# bitswap (optional) - Swap the bits in each byte
# byteswap (optional) - Swap the bytes (every other byte)
# 
# Results:
# timer1.bin and timer2.bin are created.
#
# timer1.bin will be 1024 bytes with the bus width detect, sync word and timer
# values near the end of the .bin file.
#
# timer2.bin will be just over 256 bytes (includes 256 bytes of dummy words
# before the sync word
proc CreateTimers {timer {bitswap 0} {byteswap 0}} {

#    set timer1_size 1024
    #
    set dummy_word            "FFFFFFFF"
    set sync_word             "AA995566"
    set bus_width_detect_word "000000BB"
    set bus_width_word        "11220044"
    set noop_word             "20000000"
    set timer_word            "30022001"
    set timer_set_value [expr int(0x40000000)]
    # puts "DEBUG(CreateTimers): timer_set_value: $timer_set_value"

    if {$timer == "1"} {
        set timer_filename timer1.bin
        set header_size_words 242
        set timer_count 0x4000
    } else {
        set timer_filename "timer${timer}.bin"
        set header_size_words 1
        set timer_count 1
    }
    puts "Writing Timer: $timer_filename"

    set timer_list ""

    # Add the dummy words
    set i 0
    while {$i < $header_size_words} {
        incr i
        lappend timer_list $dummy_word
    }

    # Here's the main content of the timer image
    lappend timer_list $bus_width_detect_word
    lappend timer_list $bus_width_word
    lappend timer_list $dummy_word
    lappend timer_list $dummy_word
    lappend timer_list $sync_word
    lappend timer_list $noop_word
    lappend timer_list $noop_word
    lappend timer_list $noop_word
    lappend timer_list $timer_word

    # Figure out the timer string
    set timer_string [format "%08X" [expr $timer_set_value | $timer_count]]
    lappend timer_list $timer_string

    # Add a few dummy words and no-ops
    lappend timer_list $noop_word
    lappend timer_list $noop_word
    lappend timer_list $dummy_word
    lappend timer_list $dummy_word


	set fp [open $timer_filename w]
	fconfigure $fp -translation binary

    foreach i $timer_list {
        set next_word [CreateNext4Bytes $i $bitswap $byteswap]
        puts -nonewline $fp [binary format B32 $next_word]
    }

    close $fp
}


# CompareAddress2Size --
#
# Check that given address is within the bounds of the flash device
#
# Arguments:
# address: address in bytes
# size   : size of flash device in bits
# 
# Results:
# Return the size difference in bytes (rounded up) between the address and
# size of the flash. Negative means address is with the flash density
proc CompareAddress2Size {address size_mbit} {
    # convert address to bits
    set size_bytes [expr ($size_mbit/8) * 2**20]
    return [expr $address - $size_bytes]
}

## ---- Main (script entry) ----
set options [GetOptions $argc $argv]
if {$options == -1} {
    exit -1
}

set type [lindex $options 0]
set width [lindex $options 1]
set freq_mhz [lindex $options 2]
set flash_size_mbit [lindex $options 3]
set bitsize_bytes [lindex $options 4]

puts "Flash type          : [string toupper $type]"
puts "Flash width (bits)  : $width"
puts "CCLK frequency (MHz): $freq_mhz"
puts "Flash density (Mbit): $flash_size_mbit"
puts "Bitstream size (B)  : $bitsize_bytes"

# By default, do not swap bits or bytes
set bitswap 0
set byteswap 0

# Select the appropriate configuration mode
switch ${type}_${width} {
    "spi_1" {
        set interface "SPIx1"
    }
    "spi_2" {
        set interface "SPIx2"
    }
    "spi_4" {
        set interface "SPIx4"
    }
    "spi_8" {
        set interface "SPIx8"
    }
    "bpi_8" {
        set interface "BPIx8"
        set bitswap 1
    }
    "bpi_16" {
        set interface "BPIx16"
        set bitswap 1
        set byteswap 1
    }
    default {
        error "Unknown width and flash type combo: $type/$width"
    }
}


# Create the timer images
puts ""
CreateTimers 1 $bitswap $byteswap
CreateTimers 2 $bitswap $byteswap

set multiboot_address [NextBitstreamAddress $bitsize_bytes 0 $width $freq_mhz 0]
set timer1_address [FirstTimerAddress $multiboot_address]
set timer2_address [NextBitstreamAddress $bitsize_bytes $multiboot_address \
        $width $freq_mhz 0]


# Check that the sizes make sense
set crit_warn "\nCritical Warning: The"
set beyond_msg "address is beyond the end of the flash device"

set size_check [CompareAddress2Size $timer1_address $flash_size_mbit]
if {$size_check > 0} {
    puts "$crit_warn Timer1 $beyond_msg"
}
set size_check [CompareAddress2Size $multiboot_address $flash_size_mbit]
if {$size_check > 0} {
    puts "$crit_warn Multiboot start $beyond_msg"
}
set size_check [CompareAddress2Size $timer2_address $flash_size_mbit]
if {$size_check > 0} {
    puts "$crit_warn Timer2 $beyond_msg"
}

# Adjust for BPI addressing if required
if {[string match $interface "BPIx16"]} {
    set multiboot_address [expr $multiboot_address >> 1]
    set timer1_address [expr $timer1_address >> 1]
    set timer2_address [expr $timer2_address >> 1]
}

puts ""
puts "Golden bitstream address: [hexpr 0]"
puts "Timer1 image address    : [hexpr $timer1_address]"
puts "Multiboot image address : [hexpr $multiboot_address]"
puts "Timer2 image address    : [hexpr $timer2_address]"

# Write out the write_cfgmem command line 
puts ""
puts "write_cfgmem command:"
puts -nonewline "write_cfgmem -format mcs -size [expr ($flash_size_mbit/8)]" 
puts -nonewline " -interface $interface"
puts -nonewline " -loadbit \""
puts -nonewline "up [hexpr 0] <golden>"
puts -nonewline " up [hexpr $multiboot_address] <multiboot>\" "
puts -nonewline " -loaddata \""
puts -nonewline "up [hexpr $timer1_address] timer1.bin"
puts -nonewline " up [hexpr $timer2_address] timer2.bin\""
puts -nonewline " <output_mcs>"
puts ""

