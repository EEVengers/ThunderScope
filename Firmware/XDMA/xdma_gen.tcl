#*****************************************************************************************
# Vivado (TM) v2024.1 (64-bit)
#
#
#*****************************************************************************************
if { $argc > 2 } {
    puts "Too many args."
    puts "Please try again."
    break
}


if { $argc < 1 } {
    puts "Using 200t Target"
    set Target "200t"
} else {
    if { [lindex $argv 0] == "50t" } {
        puts "Using 50t Target"
        set Target "50t"
    } elseif { [lindex $argv 0] == "35t" } {
        puts "Using 35t Target"
        set Target "35t"
    } elseif { [lindex $argv 0] == "100t" } {
        puts "Using 100t Target"
        set Target "100t"
    } elseif { [lindex $argv 0] == "200t" } {
        puts "Using 200t Target"
        set Target "200t"
    } else {
        puts "Unknown Target."
        break
    }
}

if { $argc < 2 } {
    puts "Using 6 jobs"
    set j "6"
} else {
    if { [lindex $argv 1] == "1" } {
        puts "Using 1 jobs"
        set j "1"
    } elseif { [lindex $argv 1] == "2" } {
        puts "Using 2 jobs"
        set j "2"
    } elseif { [lindex $argv 1] == "3" } {
        puts "Using 3 jobs"
        set j "3"
    } elseif { [lindex $argv 1] == "4" } {
        puts "Using 4 jobs"
        set j "4"
    } elseif { [lindex $argv 1] == "5" } {
        puts "Using 5 jobs"
        set j "5"
    } elseif { [lindex $argv 1] == "6" } {
        puts "Using 6 jobs"
        set j "6"
    } elseif { [lindex $argv 1] == "7" } {
        puts "Using 7 jobs"
        set j "7"
    } elseif { [lindex $argv 1] == "8" } {
        puts "Using 8 jobs"
        set j "8"
    } elseif { [lindex $argv 1] == "9" } {
        puts "Using 9 jobs"
        set j "9"
    } elseif { [lindex $argv 1] == "10" } {
        puts "Using 10 jobs"
        set j "10"
    } elseif { [lindex $argv 1] == "11" } {
        puts "Using 11 jobs"
        set j "11"
    } elseif { [lindex $argv 1] == "12" } {
        puts "Using 12 jobs"
        set j "12"
    } elseif { [lindex $argv 1] == "13" } {
        puts "Using 13 jobs"
        set j "13"
    } elseif { [lindex $argv 1] == "14" } {
        puts "Using 14 jobs"
        set j "14"
    } elseif { [lindex $argv 1] == "15" } {
        puts "Using 15 jobs"
        set j "15"
    } elseif { [lindex $argv 1] == "16" } {
        puts "Using 16 jobs"
        set j "16"
    } else {
        puts "Unknown Target."
        break
    }
}

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir "."

# Use origin directory path location variable, if specified in the tcl shell
if { [info exists ::origin_dir_loc] } {
  set origin_dir $::origin_dir_loc
}

# Set the project name
set _xil_proj_name_ "xdma_prj"

set _xil_proj_name_ [format "%s_%s" $_xil_proj_name_ $Target]

puts $_xil_proj_name_

# Use project name variable, if specified in the tcl shell
if { [info exists ::user_project_name] } {
  set _xil_proj_name_ $::user_project_name
}

variable script_file
set script_file "xdma_gen.tcl"


# Create project
if {$Target=="50t"} {
create_project ${_xil_proj_name_} ./${_xil_proj_name_} -part xc7a50t-csg325-2
} elseif {$Target=="35t"} {
create_project ${_xil_proj_name_} ./${_xil_proj_name_} -part xc7a35t-csg325-2
} elseif {$Target=="100t"} {
create_project ${_xil_proj_name_} ./${_xil_proj_name_} -part xc7a100tfgg484-2
} elseif {$Target=="200t"} {
create_project ${_xil_proj_name_} ./${_xil_proj_name_} -part xc7a200tfbg484-2
}

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

add_files -norecurse $origin_dir/hdl

if {$Target=="50t"} {
add_files -norecurse $origin_dir/hdl/35t_50t
} elseif {$Target=="35t"} {
add_files -norecurse $origin_dir/hdl/35t_50t
} elseif {$Target=="100t"} {
add_files -norecurse $origin_dir/hdl/100t_200t
} elseif {$Target=="200t"} {
add_files -norecurse $origin_dir/hdl/100t_200t
}


set files [list \
 [file normalize "${origin_dir}/xci/${Target}/clk_wiz_0.xcix" ]\
 [file normalize "${origin_dir}/xci/${Target}/fifo_generator_0/fifo_generator_0.xci" ]\
]
import_files -fileset sources_1 $files

if {$Target=="50t"} {
add_files -fileset constrs_1 $origin_dir/xdc/35t_50t/module_io.xdc
add_files -fileset constrs_1 $origin_dir/xdc/35t_50t/module_bitgen.xdc
add_files -fileset constrs_1 $origin_dir/xdc/35t_50t/timing.xdc
} elseif {$Target=="35t"} {
add_files -fileset constrs_1 $origin_dir/xdc/35t_50t/module_io.xdc
add_files -fileset constrs_1 $origin_dir/xdc/35t_50t/module_bitgen.xdc
add_files -fileset constrs_1 $origin_dir/xdc/35t_50t/timing.xdc
} elseif {$Target=="100t"} {
add_files -fileset constrs_1 $origin_dir/xdc/module_bitgen.xdc
add_files -fileset constrs_1 $origin_dir/xdc/module_io.xdc
add_files -fileset constrs_1 $origin_dir/xdc/timing.xdc
} elseif {$Target=="200t"} {
add_files -fileset constrs_1 $origin_dir/xdc/module_bitgen.xdc
add_files -fileset constrs_1 $origin_dir/xdc/module_io.xdc
add_files -fileset constrs_1 $origin_dir/xdc/timing.xdc
}




update_compile_order -fileset sources_1

if {$Target=="50t"} {
source $origin_dir/bd/top_bd_50t.tcl
} elseif {$Target=="100t"} {
source $origin_dir/bd/top_bd_100t.tcl
} elseif {$Target=="200t"} {
source $origin_dir/bd/top_bd_200t.tcl
}

if {$Target=="50t"} {
set_property CONFIG.XML_INPUT_FILE {../../../../../../../xci/50t/mig_a.prj} [get_bd_cells /Memory/mig_7series_0]
} elseif {$Target=="35t"} {
set_property CONFIG.XML_INPUT_FILE {../../../../../../../xci/35t/mig_a.prj} [get_bd_cells /Memory/mig_7series_0]
} elseif {$Target=="100t"} {
set_property CONFIG.XML_INPUT_FILE {../../../../../../../xci/100t/mig_a.prj} [get_bd_cells /Memory/mig_7series_0]
} elseif {$Target=="200t"} {
set_property CONFIG.XML_INPUT_FILE {../../../../../../../xci/200t/mig_a.prj} [get_bd_cells /Memory/mig_7series_0]
}


validate_bd_design
save_bd_design

set_property top dso_top [current_fileset]

update_compile_order -fileset sources_1

puts "INFO: Project created:${_xil_proj_name_}"

if {$Target=="35t"} {
#IN PROGRESS!

launch_runs synth_1 -jobs $j
wait_on_run synth_1


set_property IS_LOCKED true [get_files design_1_xdma_0_0.xci] 
update_compile_order -fileset sources_1
file copy -force ${origin_dir}/xci/${Target}/design_1_xdma_0_0.sv $origin_dir/xdma_prj_35t/xdma_prj_35t.srcs/sources_1/bd/design_1/ip/design_1_xdma_0_0/synth/design_1_xdma_0_0.sv
update_compile_order -fileset sources_1
reset_run design_1_xdma_0_0_synth_1
config_ip_cache -clear_output_repo
}

set_property strategy Flow_AlternateRoutability [get_runs synth_1]
set_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY rebuilt [get_runs synth_1]
set_property STEPS.SYNTH_DESIGN.ARGS.RETIMING true [get_runs synth_1]

set_property STEPS.OPT_DESIGN.ARGS.DIRECTIVE Explore [get_runs impl_1]

set_property STEPS.PLACE_DESIGN.ARGS.DIRECTIVE ExtraNetDelay_high [get_runs impl_1]

set_property STEPS.PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
set_property STEPS.PHYS_OPT_DESIGN.ARGS.DIRECTIVE Default [get_runs impl_1]

set_property STEPS.ROUTE_DESIGN.ARGS.DIRECTIVE AggressiveExplore [get_runs impl_1]

set_property STEPS.POST_ROUTE_PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
set_property STEPS.POST_ROUTE_PHYS_OPT_DESIGN.ARGS.DIRECTIVE Default [get_runs impl_1]


set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]



launch_runs impl_1 -to_step write_bitstream -jobs $j
wait_on_run impl_1

open_run impl_1

write_bitstream -force -bin_file $origin_dir/output/${_xil_proj_name_}.bit

if {$Target=="50t"} {
set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x023FC00 [current_design]
} elseif {$Target=="100t"} {
set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x097FC00 [current_design]
} elseif {$Target=="200t"} {
set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x097FC00 [current_design]
}

write_bitstream -force -bin_file $origin_dir/output/${_xil_proj_name_}_gold.bit

if {$Target=="50t"} {
write_cfgmem -force -format mcs -size 8 -interface SPIx4 -loadbit "up 0x0000000 $origin_dir/output/${_xil_proj_name_}_gold.bit up 0x0240000 $origin_dir/output/${_xil_proj_name_}.bit" -loaddata "up 0x023FC00 ./cfg/timer1_50t.bin up 0x0480000 ./cfg/timer2_50t.bin" $origin_dir/output/${_xil_proj_name_}_full.mcs
write_cfgmem -force -format mcs -size 8 -interface SPIx4 -loadbit "up 0x0240000 $origin_dir/output/${_xil_proj_name_}.bit" $origin_dir/output/${_xil_proj_name_}_update.mcs
} elseif {$Target=="100t"} {
write_cfgmem -force -format mcs -size 32 -interface SPIx4 -loadbit "up 0x0000000 $origin_dir/output/${_xil_proj_name_}_gold.bit up 0x0980000 $origin_dir/output/${_xil_proj_name_}.bit" -loaddata "up 0x097FC00 ./cfg/timer1.bin up 0x01300000 ./cfg/timer2.bin" $origin_dir/output/${_xil_proj_name_}_full.mcs
write_cfgmem -force -format mcs -size 32 -interface SPIx4 -loadbit "up 0x0980000 $origin_dir/output/${_xil_proj_name_}.bit" $origin_dir/output/${_xil_proj_name_}_update.mcs
} elseif {$Target=="200t"} {
write_cfgmem -force -format mcs -size 32 -interface SPIx4 -loadbit "up 0x0000000 $origin_dir/output/${_xil_proj_name_}_gold.bit up 0x0980000 $origin_dir/output/${_xil_proj_name_}.bit" -loaddata "up 0x097FC00 ./cfg/timer1.bin up 0x01300000 ./cfg/timer2.bin" $origin_dir/output/${_xil_proj_name_}_full.mcs
write_cfgmem -force -format mcs -size 32 -interface SPIx4 -loadbit "up 0x0980000 $origin_dir/output/${_xil_proj_name_}.bit" $origin_dir/output/${_xil_proj_name_}_update.mcs
}


close_project
 