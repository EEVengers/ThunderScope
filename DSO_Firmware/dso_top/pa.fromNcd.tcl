
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name dso_top -dir "/home/aleksa/Documents/FPGA_Dev/dso_top/planAhead_run_3" -part xc6slx4tqg144-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/home/aleksa/Documents/FPGA_Dev/dso_top/dso_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/aleksa/Documents/FPGA_Dev/dso_top} }
set_property target_constrs_file "dso_top.ucf" [current_fileset -constrset]
add_files [list {dso_top.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "/home/aleksa/Documents/FPGA_Dev/dso_top/dso_top.ncd"
if {[catch {read_twx -name results_1 -file "/home/aleksa/Documents/FPGA_Dev/dso_top/dso_top.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/home/aleksa/Documents/FPGA_Dev/dso_top/dso_top.twx\": $eInfo"
}
