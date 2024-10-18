
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2024.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   if { [string compare $scripts_vivado_version $current_vivado_version] > 0 } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2042 -severity "ERROR" " This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Sourcing the script failed since it was created with a future version of Vivado."}

   } else {
     catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   }

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a200tfbg484-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:axi_crossbar:2.1\
xilinx.com:ip:axi_fifo_mm_s:4.3\
xilinx.com:ip:axi_gpio:2.0\
xilinx.com:ip:axi_quad_spi:3.2\
xilinx.com:ip:xadc_wiz:3.3\
xilinx.com:ip:axi_datamover:5.1\
xilinx.com:ip:xlconstant:1.1\
xilinx.com:ip:axi_clock_converter:2.1\
xilinx.com:ip:clk_wiz:6.0\
xilinx.com:ip:mig_7series:4.2\
xilinx.com:ip:util_ds_buf:2.2\
xilinx.com:ip:util_vector_logic:2.0\
xilinx.com:ip:axi_dwidth_converter:2.1\
xilinx.com:ip:xdma:4.1\
"

   set list_ips_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2011 -severity "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2012 -severity "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

if { $bCheckIPsPassed != 1 } {
  common::send_gid_msg -ssname BD::TCL -id 2023 -severity "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}


##################################################################
# MIG PRJ FILE TCL PROCs
##################################################################

proc write_mig_file_design_1_mig_7series_0_0 { str_mig_prj_filepath } {

   file mkdir [ file dirname "$str_mig_prj_filepath" ]
   set mig_prj_file [open $str_mig_prj_filepath  w+]

   puts $mig_prj_file {﻿<?xml version="1.0" encoding="UTF-8" standalone="no" ?>}
   puts $mig_prj_file {<Project NoOfControllers="1">}
   puts $mig_prj_file {  }
   puts $mig_prj_file {<!-- IMPORTANT: This is an internal file that has been generated by the MIG software. Any direct editing or changes made to this file may result in unpredictable behavior or data corruption. It is strongly advised that users do not edit the contents of this file. Re-run the MIG GUI with the required settings if any of the options provided below need to be altered. -->}
   puts $mig_prj_file {  <ModuleName>design_1_mig_7series_0_0</ModuleName>}
   puts $mig_prj_file {  <dci_inouts_inputs>1</dci_inouts_inputs>}
   puts $mig_prj_file {  <dci_inputs>1</dci_inputs>}
   puts $mig_prj_file {  <Debug_En>OFF</Debug_En>}
   puts $mig_prj_file {  <DataDepth_En>1024</DataDepth_En>}
   puts $mig_prj_file {  <LowPower_En>ON</LowPower_En>}
   puts $mig_prj_file {  <XADC_En>Disabled</XADC_En>}
   puts $mig_prj_file {  <TargetFPGA>xc7a200t-fbg484/-2</TargetFPGA>}
   puts $mig_prj_file {  <Version>4.2</Version>}
   puts $mig_prj_file {  <SystemClock>No Buffer</SystemClock>}
   puts $mig_prj_file {  <ReferenceClock>No Buffer</ReferenceClock>}
   puts $mig_prj_file {  <SysResetPolarity>ACTIVE LOW</SysResetPolarity>}
   puts $mig_prj_file {  <BankSelectionFlag>FALSE</BankSelectionFlag>}
   puts $mig_prj_file {  <InternalVref>0</InternalVref>}
   puts $mig_prj_file {  <dci_hr_inouts_inputs>50 Ohms</dci_hr_inouts_inputs>}
   puts $mig_prj_file {  <dci_cascade>0</dci_cascade>}
   puts $mig_prj_file {  <Controller number="0">}
   puts $mig_prj_file {    <MemoryDevice>DDR3_SDRAM/Components/MT41K256M16XX-125</MemoryDevice>}
   puts $mig_prj_file {    <TimePeriod>2500</TimePeriod>}
   puts $mig_prj_file {    <VccAuxIO>1.8V</VccAuxIO>}
   puts $mig_prj_file {    <PHYRatio>4:1</PHYRatio>}
   puts $mig_prj_file {    <InputClkFreq>400</InputClkFreq>}
   puts $mig_prj_file {    <UIExtraClocks>0</UIExtraClocks>}
   puts $mig_prj_file {    <MMCM_VCO>800</MMCM_VCO>}
   puts $mig_prj_file {    <MMCMClkOut0> 1.000</MMCMClkOut0>}
   puts $mig_prj_file {    <MMCMClkOut1>1</MMCMClkOut1>}
   puts $mig_prj_file {    <MMCMClkOut2>1</MMCMClkOut2>}
   puts $mig_prj_file {    <MMCMClkOut3>1</MMCMClkOut3>}
   puts $mig_prj_file {    <MMCMClkOut4>1</MMCMClkOut4>}
   puts $mig_prj_file {    <DataWidth>32</DataWidth>}
   puts $mig_prj_file {    <DeepMemory>1</DeepMemory>}
   puts $mig_prj_file {    <DataMask>1</DataMask>}
   puts $mig_prj_file {    <ECC>Disabled</ECC>}
   puts $mig_prj_file {    <Ordering>Strict</Ordering>}
   puts $mig_prj_file {    <BankMachineCnt>3</BankMachineCnt>}
   puts $mig_prj_file {    <CustomPart>FALSE</CustomPart>}
   puts $mig_prj_file {    <NewPartName/>}
   puts $mig_prj_file {    <RowAddress>15</RowAddress>}
   puts $mig_prj_file {    <ColAddress>10</ColAddress>}
   puts $mig_prj_file {    <BankAddress>3</BankAddress>}
   puts $mig_prj_file {    <MemoryVoltage>1.5V</MemoryVoltage>}
   puts $mig_prj_file {    <C0_MEM_SIZE>1073741824</C0_MEM_SIZE>}
   puts $mig_prj_file {    <UserMemoryAddressMap>BANK_ROW_COLUMN</UserMemoryAddressMap>}
   puts $mig_prj_file {    <PinSelection>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="J1" SLEW="" VCCAUX_IO="" name="ddr3_addr[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="L4" SLEW="" VCCAUX_IO="" name="ddr3_addr[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="P5" SLEW="" VCCAUX_IO="" name="ddr3_addr[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="K2" SLEW="" VCCAUX_IO="" name="ddr3_addr[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M1" SLEW="" VCCAUX_IO="" name="ddr3_addr[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M5" SLEW="" VCCAUX_IO="" name="ddr3_addr[14]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="P6" SLEW="" VCCAUX_IO="" name="ddr3_addr[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="N5" SLEW="" VCCAUX_IO="" name="ddr3_addr[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="N3" SLEW="" VCCAUX_IO="" name="ddr3_addr[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="G1" SLEW="" VCCAUX_IO="" name="ddr3_addr[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M3" SLEW="" VCCAUX_IO="" name="ddr3_addr[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="N2" SLEW="" VCCAUX_IO="" name="ddr3_addr[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="J5" SLEW="" VCCAUX_IO="" name="ddr3_addr[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="L1" SLEW="" VCCAUX_IO="" name="ddr3_addr[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="P2" SLEW="" VCCAUX_IO="" name="ddr3_addr[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="P4" SLEW="" VCCAUX_IO="" name="ddr3_ba[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="H5" SLEW="" VCCAUX_IO="" name="ddr3_ba[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="H2" SLEW="" VCCAUX_IO="" name="ddr3_ba[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M2" SLEW="" VCCAUX_IO="" name="ddr3_cas_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="P1" SLEW="" VCCAUX_IO="" name="ddr3_ck_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="R1" SLEW="" VCCAUX_IO="" name="ddr3_ck_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="L3" SLEW="" VCCAUX_IO="" name="ddr3_cke[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="K1" SLEW="" VCCAUX_IO="" name="ddr3_cs_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="W2" SLEW="" VCCAUX_IO="" name="ddr3_dm[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="Y7" SLEW="" VCCAUX_IO="" name="ddr3_dm[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="V4" SLEW="" VCCAUX_IO="" name="ddr3_dm[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="V5" SLEW="" VCCAUX_IO="" name="ddr3_dm[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="T1" SLEW="" VCCAUX_IO="" name="ddr3_dq[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AB7" SLEW="" VCCAUX_IO="" name="ddr3_dq[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="V7" SLEW="" VCCAUX_IO="" name="ddr3_dq[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AA8" SLEW="" VCCAUX_IO="" name="ddr3_dq[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="Y9" SLEW="" VCCAUX_IO="" name="ddr3_dq[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AB6" SLEW="" VCCAUX_IO="" name="ddr3_dq[14]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="W9" SLEW="" VCCAUX_IO="" name="ddr3_dq[15]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AB5" SLEW="" VCCAUX_IO="" name="ddr3_dq[16]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AA5" SLEW="" VCCAUX_IO="" name="ddr3_dq[17]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AB3" SLEW="" VCCAUX_IO="" name="ddr3_dq[18]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="W4" SLEW="" VCCAUX_IO="" name="ddr3_dq[19]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="W1" SLEW="" VCCAUX_IO="" name="ddr3_dq[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AB2" SLEW="" VCCAUX_IO="" name="ddr3_dq[20]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="Y4" SLEW="" VCCAUX_IO="" name="ddr3_dq[21]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AB1" SLEW="" VCCAUX_IO="" name="ddr3_dq[22]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AA1" SLEW="" VCCAUX_IO="" name="ddr3_dq[23]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="R6" SLEW="" VCCAUX_IO="" name="ddr3_dq[24]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="Y6" SLEW="" VCCAUX_IO="" name="ddr3_dq[25]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="T6" SLEW="" VCCAUX_IO="" name="ddr3_dq[26]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U6" SLEW="" VCCAUX_IO="" name="ddr3_dq[27]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="T5" SLEW="" VCCAUX_IO="" name="ddr3_dq[28]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AA6" SLEW="" VCCAUX_IO="" name="ddr3_dq[29]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U3" SLEW="" VCCAUX_IO="" name="ddr3_dq[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="T4" SLEW="" VCCAUX_IO="" name="ddr3_dq[30]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U5" SLEW="" VCCAUX_IO="" name="ddr3_dq[31]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="Y2" SLEW="" VCCAUX_IO="" name="ddr3_dq[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U2" SLEW="" VCCAUX_IO="" name="ddr3_dq[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="Y1" SLEW="" VCCAUX_IO="" name="ddr3_dq[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U1" SLEW="" VCCAUX_IO="" name="ddr3_dq[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="V2" SLEW="" VCCAUX_IO="" name="ddr3_dq[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AB8" SLEW="" VCCAUX_IO="" name="ddr3_dq[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="Y8" SLEW="" VCCAUX_IO="" name="ddr3_dq[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="R2" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="V8" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="AA3" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="W5" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="R3" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="V9" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="Y3" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="W6" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="K3" SLEW="" VCCAUX_IO="" name="ddr3_odt[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M6" SLEW="" VCCAUX_IO="" name="ddr3_ras_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="LVCMOS15" PADName="H3" SLEW="" VCCAUX_IO="" name="ddr3_reset_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="J2" SLEW="" VCCAUX_IO="" name="ddr3_we_n"/>}
   puts $mig_prj_file {    </PinSelection>}
   puts $mig_prj_file {    <System_Control>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="sys_rst"/>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="init_calib_complete"/>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="tg_compare_error"/>}
   puts $mig_prj_file {    </System_Control>}
   puts $mig_prj_file {    <TimingParameters>}
   puts $mig_prj_file {      <Parameters tcke="5" tfaw="40" tras="35" trcd="13.75" trefi="7.8" trfc="260" trp="13.75" trrd="7.5" trtp="7.5" twtr="7.5"/>}
   puts $mig_prj_file {    </TimingParameters>}
   puts $mig_prj_file {    <mrBurstLength name="Burst Length">8 - Fixed</mrBurstLength>}
   puts $mig_prj_file {    <mrBurstType name="Read Burst Type and Length">Sequential</mrBurstType>}
   puts $mig_prj_file {    <mrCasLatency name="CAS Latency">6</mrCasLatency>}
   puts $mig_prj_file {    <mrMode name="Mode">Normal</mrMode>}
   puts $mig_prj_file {    <mrDllReset name="DLL Reset">No</mrDllReset>}
   puts $mig_prj_file {    <mrPdMode name="DLL control for precharge PD">Slow Exit</mrPdMode>}
   puts $mig_prj_file {    <emrDllEnable name="DLL Enable">Enable</emrDllEnable>}
   puts $mig_prj_file {    <emrOutputDriveStrength name="Output Driver Impedance Control">RZQ/7</emrOutputDriveStrength>}
   puts $mig_prj_file {    <emrMirrorSelection name="Address Mirroring">Disable</emrMirrorSelection>}
   puts $mig_prj_file {    <emrCSSelection name="Controller Chip Select Pin">Enable</emrCSSelection>}
   puts $mig_prj_file {    <emrRTT name="RTT (nominal) - On Die Termination (ODT)">RZQ/4</emrRTT>}
   puts $mig_prj_file {    <emrPosted name="Additive Latency (AL)">0</emrPosted>}
   puts $mig_prj_file {    <emrOCD name="Write Leveling Enable">Disabled</emrOCD>}
   puts $mig_prj_file {    <emrDQS name="TDQS enable">Enabled</emrDQS>}
   puts $mig_prj_file {    <emrRDQS name="Qoff">Output Buffer Enabled</emrRDQS>}
   puts $mig_prj_file {    <mr2PartialArraySelfRefresh name="Partial-Array Self Refresh">Full Array</mr2PartialArraySelfRefresh>}
   puts $mig_prj_file {    <mr2CasWriteLatency name="CAS write latency">5</mr2CasWriteLatency>}
   puts $mig_prj_file {    <mr2AutoSelfRefresh name="Auto Self Refresh">Enabled</mr2AutoSelfRefresh>}
   puts $mig_prj_file {    <mr2SelfRefreshTempRange name="High Temparature Self Refresh Rate">Normal</mr2SelfRefreshTempRange>}
   puts $mig_prj_file {    <mr2RTTWR name="RTT_WR - Dynamic On Die Termination (ODT)">Dynamic ODT off</mr2RTTWR>}
   puts $mig_prj_file {    <PortInterface>AXI</PortInterface>}
   puts $mig_prj_file {    <AXIParameters>}
   puts $mig_prj_file {      <C0_C_RD_WR_ARB_ALGORITHM>RD_PRI_REG_STARVE_LIMIT</C0_C_RD_WR_ARB_ALGORITHM>}
   puts $mig_prj_file {      <C0_S_AXI_ADDR_WIDTH>30</C0_S_AXI_ADDR_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_DATA_WIDTH>256</C0_S_AXI_DATA_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_ID_WIDTH>1</C0_S_AXI_ID_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_SUPPORTS_NARROW_BURST>0</C0_S_AXI_SUPPORTS_NARROW_BURST>}
   puts $mig_prj_file {    </AXIParameters>}
   puts $mig_prj_file {  </Controller>}
   puts $mig_prj_file {</Project>}

   close $mig_prj_file
}
# End of write_mig_file_design_1_mig_7series_0_0()



##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: PCIe
proc create_hier_cell_PCIe { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_PCIe() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_LITE

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 pcie

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_mgt


  # Create pins
  create_bd_pin -dir O -type clk axi_aclk
  create_bd_pin -dir O -type rst axi_aresetn
  create_bd_pin -dir I -type rst pcie_perstn
  create_bd_pin -dir O user_lnk_up_0

  # Create instance: axi_dwidth_converter_0, and set properties
  set axi_dwidth_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dwidth_converter:2.1 axi_dwidth_converter_0 ]
  set_property -dict [list \
    CONFIG.ADDR_WIDTH {32} \
    CONFIG.FIFO_MODE {0} \
    CONFIG.PROTOCOL {AXI4} \
    CONFIG.READ_WRITE_MODE {READ_ONLY} \
  ] $axi_dwidth_converter_0


  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.2 util_ds_buf_0 ]
  set_property CONFIG.C_BUF_TYPE {IBUFDSGTE} $util_ds_buf_0


  # Create instance: xdma_0, and set properties
  set xdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xdma:4.1 xdma_0 ]
  set_property -dict [list \
    CONFIG.PF0_DEVICE_ID_mqdma {9024} \
    CONFIG.PF0_SRIOV_VF_DEVICE_ID {0000} \
    CONFIG.PF2_DEVICE_ID_mqdma {9024} \
    CONFIG.PF3_DEVICE_ID_mqdma {9024} \
    CONFIG.Shared_Logic_Both_7xG2 {false} \
    CONFIG.axi_data_width {128_bit} \
    CONFIG.axi_id_width {2} \
    CONFIG.axil_master_64bit_en {false} \
    CONFIG.axilite_master_en {true} \
    CONFIG.axilite_master_scale {Megabytes} \
    CONFIG.axilite_master_size {1} \
    CONFIG.axisten_freq {125} \
    CONFIG.cfg_mgmt_if {false} \
    CONFIG.copy_pf0 {true} \
    CONFIG.dsc_bypass_rd {0001} \
    CONFIG.dsc_bypass_wr {0000} \
    CONFIG.mode_selection {Advanced} \
    CONFIG.pcie_extended_tag {false} \
    CONFIG.pciebar2axibar_axil_master {0x40000000} \
    CONFIG.performance {true} \
    CONFIG.pf0_device_id {7024} \
    CONFIG.pf0_msi_enabled {true} \
    CONFIG.pl_link_cap_max_link_speed {5.0_GT/s} \
    CONFIG.pl_link_cap_max_link_width {X4} \
    CONFIG.plltype {QPLL1} \
    CONFIG.runbit_fix {false} \
    CONFIG.xdma_pcie_64bit_en {true} \
    CONFIG.xdma_pcie_prefetchable {true} \
    CONFIG.xdma_rnum_rids {2} \
    CONFIG.xdma_wnum_rids {8} \
  ] $xdma_0


  # Create interface connections
  connect_bd_intf_net -intf_net CLK_IN_D_0_1 [get_bd_intf_pins pcie] [get_bd_intf_pins util_ds_buf_0/CLK_IN_D]
  connect_bd_intf_net -intf_net PCIe_M_AXI_LITE [get_bd_intf_pins M_AXI_LITE] [get_bd_intf_pins xdma_0/M_AXI_LITE]
  connect_bd_intf_net -intf_net xdma_0_M_AXI [get_bd_intf_pins M_AXI] [get_bd_intf_pins axi_dwidth_converter_0/M_AXI]
  connect_bd_intf_net -intf_net xdma_0_M_AXI1 [get_bd_intf_pins axi_dwidth_converter_0/S_AXI] [get_bd_intf_pins xdma_0/M_AXI]
  connect_bd_intf_net -intf_net xdma_0_pcie_mgt [get_bd_intf_pins pcie_mgt] [get_bd_intf_pins xdma_0/pcie_mgt]

  # Create port connections
  connect_bd_net -net PCIe_axi_aresetn [get_bd_pins xdma_0/axi_aresetn] [get_bd_pins axi_aresetn] [get_bd_pins axi_dwidth_converter_0/s_axi_aresetn]
  connect_bd_net -net sys_rst_n_0_1 [get_bd_pins pcie_perstn] [get_bd_pins xdma_0/sys_rst_n]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins util_ds_buf_0/IBUF_OUT] [get_bd_pins xdma_0/sys_clk]
  connect_bd_net -net xdma_0_axi_aclk [get_bd_pins xdma_0/axi_aclk] [get_bd_pins axi_aclk] [get_bd_pins axi_dwidth_converter_0/s_axi_aclk]
  connect_bd_net -net xdma_0_user_lnk_up [get_bd_pins xdma_0/user_lnk_up] [get_bd_pins user_lnk_up_0]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Memory
proc create_hier_cell_Memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR3

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S01_AXI


  # Create pins
  create_bd_pin -dir I -type clk ACLK
  create_bd_pin -dir I -type rst S00_ARESETN
  create_bd_pin -dir I -from 11 -to 0 device_temp_i
  create_bd_pin -dir I -type clk ext_clk_n
  create_bd_pin -dir I -type clk ext_clk_p
  create_bd_pin -dir O init_calib_complete_0
  create_bd_pin -dir I -type rst resetn_0

  # Create instance: axi_clock_converter_0, and set properties
  set axi_clock_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_clock_converter:2.1 axi_clock_converter_0 ]

  # Create instance: axi_crossbar_0, and set properties
  set axi_crossbar_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_crossbar:2.1 axi_crossbar_0 ]
  set_property -dict [list \
    CONFIG.ADDR_WIDTH {32} \
    CONFIG.M00_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A00_ADDR_WIDTH {0} \
    CONFIG.M01_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A00_ADDR_WIDTH {0} \
    CONFIG.M02_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A00_ADDR_WIDTH {0} \
    CONFIG.M03_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A00_ADDR_WIDTH {0} \
    CONFIG.M04_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A00_ADDR_WIDTH {0} \
    CONFIG.M05_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A00_ADDR_WIDTH {0} \
    CONFIG.M06_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A00_ADDR_WIDTH {0} \
    CONFIG.M07_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A00_ADDR_WIDTH {0} \
    CONFIG.M08_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A00_ADDR_WIDTH {0} \
    CONFIG.M09_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A00_ADDR_WIDTH {0} \
    CONFIG.M10_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A00_ADDR_WIDTH {0} \
    CONFIG.M11_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A00_ADDR_WIDTH {0} \
    CONFIG.M12_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A00_ADDR_WIDTH {0} \
    CONFIG.M13_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A00_ADDR_WIDTH {0} \
    CONFIG.M14_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A00_ADDR_WIDTH {0} \
    CONFIG.M15_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.NUM_MI {1} \
    CONFIG.NUM_SI {2} \
  ] $axi_crossbar_0


  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [list \
    CONFIG.CLKIN1_JITTER_PS {200.0} \
    CONFIG.CLKIN2_JITTER_PS {100.0} \
    CONFIG.CLKOUT1_DRIVES {BUFG} \
    CONFIG.CLKOUT1_JITTER {111.427} \
    CONFIG.CLKOUT1_PHASE_ERROR {154.678} \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {400} \
    CONFIG.CLKOUT2_DRIVES {BUFG} \
    CONFIG.CLKOUT2_JITTER {124.134} \
    CONFIG.CLKOUT2_PHASE_ERROR {154.678} \
    CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {200} \
    CONFIG.CLKOUT2_USED {true} \
    CONFIG.CLKOUT3_DRIVES {BUFG} \
    CONFIG.CLKOUT4_DRIVES {BUFG} \
    CONFIG.CLKOUT5_DRIVES {BUFG} \
    CONFIG.CLKOUT6_DRIVES {BUFG} \
    CONFIG.CLKOUT7_DRIVES {BUFG} \
    CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
    CONFIG.MMCM_CLKFBOUT_MULT_F {24} \
    CONFIG.MMCM_CLKIN1_PERIOD {20.000} \
    CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
    CONFIG.MMCM_CLKOUT0_DIVIDE_F {3} \
    CONFIG.MMCM_CLKOUT1_DIVIDE {6} \
    CONFIG.MMCM_COMPENSATION {ZHOLD} \
    CONFIG.NUM_OUT_CLKS {2} \
    CONFIG.PLL_CLKIN_PERIOD {20.000} \
    CONFIG.PRIMITIVE {PLL} \
    CONFIG.PRIM_IN_FREQ {50} \
    CONFIG.PRIM_SOURCE {Global_buffer} \
    CONFIG.RESET_PORT {resetn} \
    CONFIG.RESET_TYPE {ACTIVE_LOW} \
    CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
    CONFIG.USE_INCLK_SWITCHOVER {false} \
  ] $clk_wiz_0


  # Create instance: mig_7series_0, and set properties
  set mig_7series_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.2 mig_7series_0 ]

  # Generate the PRJ File for MIG
  set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name $mig_7series_0 ] ] ]
  set str_mig_file_name mig_a.prj
  set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}
  write_mig_file_design_1_mig_7series_0_0 $str_mig_file_path

  set_property -dict [list \
    CONFIG.BOARD_MIG_PARAM {Custom} \
    CONFIG.MIG_DONT_TOUCH_PARAM {Custom} \
    CONFIG.RESET_BOARD_INTERFACE {Custom} \
    CONFIG.XML_INPUT_FILE {mig_a.prj} \
  ] $mig_7series_0


  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.2 util_ds_buf_0 ]

  # Create instance: util_ds_buf_1, and set properties
  set util_ds_buf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.2 util_ds_buf_1 ]
  set_property CONFIG.C_BUF_TYPE {BUFG} $util_ds_buf_1


  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [list \
    CONFIG.C_OPERATION {not} \
    CONFIG.C_SIZE {1} \
  ] $util_vector_logic_0


  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins axi_crossbar_0/S00_AXI]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_pins S01_AXI] [get_bd_intf_pins axi_crossbar_0/S01_AXI]
  connect_bd_intf_net -intf_net axi_clock_converter_0_M_AXI [get_bd_intf_pins axi_clock_converter_0/M_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M00_AXI [get_bd_intf_pins axi_clock_converter_0/S_AXI] [get_bd_intf_pins axi_crossbar_0/M00_AXI]
  connect_bd_intf_net -intf_net mig_7series_0_DDR3 [get_bd_intf_pins DDR3] [get_bd_intf_pins mig_7series_0/DDR3]

  # Create port connections
  connect_bd_net -net ACLK_1 [get_bd_pins ACLK] [get_bd_pins axi_clock_converter_0/s_axi_aclk] [get_bd_pins axi_crossbar_0/aclk]
  connect_bd_net -net S00_ARESETN_1 [get_bd_pins S00_ARESETN] [get_bd_pins axi_clock_converter_0/s_axi_aresetn] [get_bd_pins axi_crossbar_0/aresetn]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins mig_7series_0/sys_clk_i]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins mig_7series_0/clk_ref_i]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins mig_7series_0/aresetn] [get_bd_pins mig_7series_0/sys_rst]
  connect_bd_net -net device_temp_i_1 [get_bd_pins device_temp_i] [get_bd_pins mig_7series_0/device_temp_i]
  connect_bd_net -net ext_clk_n_1 [get_bd_pins ext_clk_n] [get_bd_pins util_ds_buf_0/IBUF_DS_N]
  connect_bd_net -net ext_clk_p_1 [get_bd_pins ext_clk_p] [get_bd_pins util_ds_buf_0/IBUF_DS_P]
  connect_bd_net -net mig_7series_0_init_calib_complete [get_bd_pins mig_7series_0/init_calib_complete] [get_bd_pins init_calib_complete_0]
  connect_bd_net -net mig_7series_0_ui_clk [get_bd_pins mig_7series_0/ui_clk] [get_bd_pins axi_clock_converter_0/m_axi_aclk]
  connect_bd_net -net mig_7series_0_ui_clk_sync_rst [get_bd_pins mig_7series_0/ui_clk_sync_rst] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net resetn_0_1 [get_bd_pins resetn_0] [get_bd_pins clk_wiz_0/resetn]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins util_ds_buf_0/IBUF_OUT] [get_bd_pins util_ds_buf_1/BUFG_I]
  connect_bd_net -net util_ds_buf_1_BUFG_O [get_bd_pins util_ds_buf_1/BUFG_O] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins axi_clock_converter_0/m_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Datamover
proc create_hier_cell_Datamover { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Datamover() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_S2MM

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_S2MM

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_S2MM_CMD


  # Create pins
  create_bd_pin -dir I -type clk axi_aclk
  create_bd_pin -dir I -type rst axi_aresetn
  create_bd_pin -dir O s2mm_err
  create_bd_pin -dir I s2mm_halt
  create_bd_pin -dir O s2mm_wr_xfer_cmplt
  create_bd_pin -dir O s2mm_halt_cmplt

  # Create instance: axi_datamover_0, and set properties
  set axi_datamover_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_datamover:5.1 axi_datamover_0 ]
  set_property -dict [list \
    CONFIG.c_dummy {1} \
    CONFIG.c_enable_mm2s {0} \
    CONFIG.c_enable_s2mm_adv_sig {1} \
    CONFIG.c_m_axi_s2mm_data_width {256} \
    CONFIG.c_m_axi_s2mm_id_width {0} \
    CONFIG.c_s2mm_burst_size {128} \
    CONFIG.c_s_axis_s2mm_tdata_width {128} \
  ] $axi_datamover_0


  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S_AXIS_S2MM_CMD] [get_bd_intf_pins axi_datamover_0/S_AXIS_S2MM_CMD]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins M_AXI_S2MM] [get_bd_intf_pins axi_datamover_0/M_AXI_S2MM]
  connect_bd_intf_net -intf_net S_AXIS_S2MM_1 [get_bd_intf_pins S_AXIS_S2MM] [get_bd_intf_pins axi_datamover_0/S_AXIS_S2MM]

  # Create port connections
  connect_bd_net -net axi_aclk_1 [get_bd_pins axi_aclk] [get_bd_pins axi_datamover_0/m_axi_s2mm_aclk] [get_bd_pins axi_datamover_0/m_axis_s2mm_cmdsts_awclk]
  connect_bd_net -net axi_aresetn_1 [get_bd_pins axi_aresetn] [get_bd_pins axi_datamover_0/m_axi_s2mm_aresetn] [get_bd_pins axi_datamover_0/m_axis_s2mm_cmdsts_aresetn]
  connect_bd_net -net axi_datamover_0_s2mm_err [get_bd_pins axi_datamover_0/s2mm_err] [get_bd_pins s2mm_err]
  connect_bd_net -net axi_datamover_0_s2mm_halt_cmplt [get_bd_pins axi_datamover_0/s2mm_halt_cmplt] [get_bd_pins s2mm_halt_cmplt]
  connect_bd_net -net axi_datamover_0_s2mm_wr_xfer_cmplt [get_bd_pins axi_datamover_0/s2mm_wr_xfer_cmplt] [get_bd_pins s2mm_wr_xfer_cmplt]
  connect_bd_net -net s2mm_halt_0_1 [get_bd_pins s2mm_halt] [get_bd_pins axi_datamover_0/s2mm_halt]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins xlconstant_0/dout] [get_bd_pins axi_datamover_0/s2mm_allow_addr_req]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: AXI_LITE_IO
proc create_hier_cell_AXI_LITE_IO { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_AXI_LITE_IO() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 AXI_STR_TXD_0

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 SPI_0_0

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vp_Vn_0


  # Create pins
  create_bd_pin -dir I -type clk axi_aclk
  create_bd_pin -dir I -type rst axi_resetn
  create_bd_pin -dir I -from 31 -to 0 gpio2_io_i
  create_bd_pin -dir O -from 31 -to 0 gpio_io_o_0
  create_bd_pin -dir O -from 0 -to 0 ss_o_0
  create_bd_pin -dir O -from 11 -to 0 temp_out_0
  create_bd_pin -dir O -from 31 -to 0 gpio2_io_o_0

  # Create instance: axi_crossbar_0, and set properties
  set axi_crossbar_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_crossbar:2.1 axi_crossbar_0 ]
  set_property -dict [list \
    CONFIG.M00_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M00_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M01_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M02_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M03_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A00_ADDR_WIDTH {0} \
    CONFIG.M04_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M04_READ_ISSUING {1} \
    CONFIG.M04_WRITE_ISSUING {1} \
    CONFIG.M05_A00_ADDR_WIDTH {0} \
    CONFIG.M05_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M05_READ_ISSUING {1} \
    CONFIG.M05_WRITE_ISSUING {1} \
    CONFIG.M06_A00_ADDR_WIDTH {0} \
    CONFIG.M06_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M06_READ_ISSUING {1} \
    CONFIG.M06_WRITE_ISSUING {1} \
    CONFIG.M07_A00_ADDR_WIDTH {0} \
    CONFIG.M07_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M07_READ_ISSUING {1} \
    CONFIG.M07_WRITE_ISSUING {1} \
    CONFIG.M08_A00_ADDR_WIDTH {0} \
    CONFIG.M08_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M08_READ_ISSUING {1} \
    CONFIG.M08_WRITE_ISSUING {1} \
    CONFIG.M09_A00_ADDR_WIDTH {0} \
    CONFIG.M09_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M09_READ_ISSUING {1} \
    CONFIG.M09_WRITE_ISSUING {1} \
    CONFIG.M10_A00_ADDR_WIDTH {0} \
    CONFIG.M10_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M10_READ_ISSUING {1} \
    CONFIG.M10_WRITE_ISSUING {1} \
    CONFIG.M11_A00_ADDR_WIDTH {0} \
    CONFIG.M11_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M11_READ_ISSUING {1} \
    CONFIG.M11_WRITE_ISSUING {1} \
    CONFIG.M12_A00_ADDR_WIDTH {0} \
    CONFIG.M12_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M12_READ_ISSUING {1} \
    CONFIG.M12_WRITE_ISSUING {1} \
    CONFIG.M13_A00_ADDR_WIDTH {0} \
    CONFIG.M13_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M13_READ_ISSUING {1} \
    CONFIG.M13_WRITE_ISSUING {1} \
    CONFIG.M14_A00_ADDR_WIDTH {0} \
    CONFIG.M14_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M14_READ_ISSUING {1} \
    CONFIG.M14_WRITE_ISSUING {1} \
    CONFIG.M15_A00_ADDR_WIDTH {0} \
    CONFIG.M15_A00_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A01_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A02_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A03_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A04_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A05_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A06_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A07_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A08_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A09_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A10_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A11_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A12_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A13_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A14_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_A15_BASE_ADDR {0xffffffffffffffff} \
    CONFIG.M15_READ_ISSUING {1} \
    CONFIG.M15_WRITE_ISSUING {1} \
    CONFIG.NUM_MI {4} \
    CONFIG.S01_READ_ACCEPTANCE {1} \
    CONFIG.S01_WRITE_ACCEPTANCE {1} \
    CONFIG.S02_READ_ACCEPTANCE {1} \
    CONFIG.S02_WRITE_ACCEPTANCE {1} \
    CONFIG.S03_READ_ACCEPTANCE {1} \
    CONFIG.S03_WRITE_ACCEPTANCE {1} \
    CONFIG.S04_READ_ACCEPTANCE {1} \
    CONFIG.S04_WRITE_ACCEPTANCE {1} \
    CONFIG.S05_READ_ACCEPTANCE {1} \
    CONFIG.S05_WRITE_ACCEPTANCE {1} \
    CONFIG.S06_READ_ACCEPTANCE {1} \
    CONFIG.S06_WRITE_ACCEPTANCE {1} \
    CONFIG.S07_READ_ACCEPTANCE {1} \
    CONFIG.S07_WRITE_ACCEPTANCE {1} \
    CONFIG.S08_READ_ACCEPTANCE {1} \
    CONFIG.S08_WRITE_ACCEPTANCE {1} \
    CONFIG.S09_READ_ACCEPTANCE {1} \
    CONFIG.S09_WRITE_ACCEPTANCE {1} \
    CONFIG.S10_READ_ACCEPTANCE {1} \
    CONFIG.S10_WRITE_ACCEPTANCE {1} \
    CONFIG.S11_READ_ACCEPTANCE {1} \
    CONFIG.S11_WRITE_ACCEPTANCE {1} \
    CONFIG.S12_READ_ACCEPTANCE {1} \
    CONFIG.S12_WRITE_ACCEPTANCE {1} \
    CONFIG.S13_READ_ACCEPTANCE {1} \
    CONFIG.S13_WRITE_ACCEPTANCE {1} \
    CONFIG.S14_READ_ACCEPTANCE {1} \
    CONFIG.S14_WRITE_ACCEPTANCE {1} \
    CONFIG.S15_READ_ACCEPTANCE {1} \
    CONFIG.S15_WRITE_ACCEPTANCE {1} \
    CONFIG.STRATEGY {1} \
  ] $axi_crossbar_0


  # Create instance: axi_fifo_mm_s_0, and set properties
  set axi_fifo_mm_s_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.3 axi_fifo_mm_s_0 ]
  set_property -dict [list \
    CONFIG.C_USE_RX_DATA {0} \
    CONFIG.C_USE_TX_CTRL {0} \
  ] $axi_fifo_mm_s_0


  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [list \
    CONFIG.C_ALL_INPUTS_2 {0} \
    CONFIG.C_ALL_OUTPUTS {1} \
    CONFIG.C_GPIO_WIDTH {32} \
    CONFIG.C_IS_DUAL {1} \
  ] $axi_gpio_0


  # Create instance: axi_quad_spi_0, and set properties
  set axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_0 ]
  set_property -dict [list \
    CONFIG.C_FIFO_DEPTH {256} \
    CONFIG.C_SPI_MEMORY {2} \
    CONFIG.C_SPI_MODE {2} \
  ] $axi_quad_spi_0


  # Create instance: xadc_wiz_0, and set properties
  set xadc_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xadc_wiz:3.3 xadc_wiz_0 ]
  set_property -dict [list \
    CONFIG.ENABLE_TEMP_BUS {true} \
    CONFIG.TEMPERATURE_ALARM_OT_TRIGGER {85} \
  ] $xadc_wiz_0


  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins AXI_STR_TXD_0] [get_bd_intf_pins axi_fifo_mm_s_0/AXI_STR_TXD]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins SPI_0_0] [get_bd_intf_pins axi_quad_spi_0/SPI_0]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins Vp_Vn_0] [get_bd_intf_pins xadc_wiz_0/Vp_Vn]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins axi_crossbar_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M00_AXI [get_bd_intf_pins axi_crossbar_0/M00_AXI] [get_bd_intf_pins axi_fifo_mm_s_0/S_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M01_AXI [get_bd_intf_pins axi_crossbar_0/M01_AXI] [get_bd_intf_pins axi_gpio_0/S_AXI]
  connect_bd_intf_net -intf_net axi_crossbar_0_M02_AXI [get_bd_intf_pins axi_crossbar_0/M02_AXI] [get_bd_intf_pins axi_quad_spi_0/AXI_LITE]
  connect_bd_intf_net -intf_net axi_crossbar_0_M03_AXI [get_bd_intf_pins axi_crossbar_0/M03_AXI] [get_bd_intf_pins xadc_wiz_0/s_axi_lite]

  # Create port connections
  connect_bd_net -net axi_aclk_1 [get_bd_pins axi_aclk] [get_bd_pins axi_crossbar_0/aclk] [get_bd_pins axi_fifo_mm_s_0/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_quad_spi_0/ext_spi_clk] [get_bd_pins axi_quad_spi_0/s_axi_aclk] [get_bd_pins xadc_wiz_0/s_axi_aclk]
  connect_bd_net -net axi_gpio_0_gpio2_io_o [get_bd_pins axi_gpio_0/gpio2_io_o] [get_bd_pins gpio2_io_o_0]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_pins axi_gpio_0/gpio_io_o] [get_bd_pins gpio_io_o_0]
  connect_bd_net -net axi_quad_spi_0_ss_o [get_bd_pins axi_quad_spi_0/ss_o] [get_bd_pins ss_o_0]
  connect_bd_net -net axi_resetn_1 [get_bd_pins axi_resetn] [get_bd_pins axi_crossbar_0/aresetn] [get_bd_pins axi_fifo_mm_s_0/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_quad_spi_0/s_axi_aresetn] [get_bd_pins xadc_wiz_0/s_axi_aresetn]
  connect_bd_net -net gpio2_io_i_1 [get_bd_pins gpio2_io_i] [get_bd_pins axi_gpio_0/gpio2_io_i]
  connect_bd_net -net xadc_wiz_0_temp_out [get_bd_pins xadc_wiz_0/temp_out] [get_bd_pins temp_out_0]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set AXI_STR_TXD_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 AXI_STR_TXD_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
   ] $AXI_STR_TXD_0

  set DDR3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR3 ]

  set SPI_0_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 SPI_0_0 ]

  set S_AXIS_S2MM [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_S2MM ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {16} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $S_AXIS_S2MM

  set S_AXIS_S2MM_CMD [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_S2MM_CMD ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {0} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {9} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $S_AXIS_S2MM_CMD

  set Vp_Vn_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vp_Vn_0 ]

  set pcie [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 pcie ]

  set pcie_mgt [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_mgt ]


  # Create ports
  set S01_ARESETN [ create_bd_port -dir I -type rst S01_ARESETN ]
  set axi_aclk [ create_bd_port -dir O -type clk axi_aclk ]
  set axi_aresetn [ create_bd_port -dir O axi_aresetn ]
  set ext_clk_n [ create_bd_port -dir I -type clk -freq_hz 50000000 ext_clk_n ]
  set ext_clk_p [ create_bd_port -dir I -type clk -freq_hz 50000000 ext_clk_p ]
  set gpio2_io_i [ create_bd_port -dir I -from 31 -to 0 gpio2_io_i ]
  set gpio_io_o_0 [ create_bd_port -dir O -from 31 -to 0 gpio_io_o_0 ]
  set init_calib_complete_0 [ create_bd_port -dir O init_calib_complete_0 ]
  set pcie_perstn [ create_bd_port -dir I -type rst pcie_perstn ]
  set s2mm_err [ create_bd_port -dir O s2mm_err ]
  set s2mm_halt [ create_bd_port -dir I s2mm_halt ]
  set s2mm_wr_xfer_cmplt [ create_bd_port -dir O s2mm_wr_xfer_cmplt ]
  set ss_o_0 [ create_bd_port -dir O -from 0 -to 0 ss_o_0 ]
  set gpio2_io_o_0 [ create_bd_port -dir O -from 31 -to 0 gpio2_io_o_0 ]
  set s2mm_halt_cmplt [ create_bd_port -dir O s2mm_halt_cmplt ]

  # Create instance: AXI_LITE_IO
  create_hier_cell_AXI_LITE_IO [current_bd_instance .] AXI_LITE_IO

  # Create instance: Datamover
  create_hier_cell_Datamover [current_bd_instance .] Datamover

  # Create instance: Memory
  create_hier_cell_Memory [current_bd_instance .] Memory

  # Create instance: PCIe
  create_hier_cell_PCIe [current_bd_instance .] PCIe

  # Create interface connections
  connect_bd_intf_net -intf_net AXI_LITE_IO_AXI_STR_TXD_0 [get_bd_intf_ports AXI_STR_TXD_0] [get_bd_intf_pins AXI_LITE_IO/AXI_STR_TXD_0]
  connect_bd_intf_net -intf_net AXI_LITE_IO_SPI_0_0 [get_bd_intf_ports SPI_0_0] [get_bd_intf_pins AXI_LITE_IO/SPI_0_0]
  connect_bd_intf_net -intf_net CLK_IN_D_0_1 [get_bd_intf_ports pcie] [get_bd_intf_pins PCIe/pcie]
  connect_bd_intf_net -intf_net Datamover_M_AXI_S2MM [get_bd_intf_pins Datamover/M_AXI_S2MM] [get_bd_intf_pins Memory/S01_AXI]
  connect_bd_intf_net -intf_net PCIe_M_AXI_LITE [get_bd_intf_pins AXI_LITE_IO/S00_AXI] [get_bd_intf_pins PCIe/M_AXI_LITE]
  connect_bd_intf_net -intf_net S_AXIS_S2MM_0_1 [get_bd_intf_ports S_AXIS_S2MM] [get_bd_intf_pins Datamover/S_AXIS_S2MM]
  connect_bd_intf_net -intf_net S_AXIS_S2MM_CMD_0_1 [get_bd_intf_ports S_AXIS_S2MM_CMD] [get_bd_intf_pins Datamover/S_AXIS_S2MM_CMD]
  connect_bd_intf_net -intf_net Vp_Vn_0_1 [get_bd_intf_ports Vp_Vn_0] [get_bd_intf_pins AXI_LITE_IO/Vp_Vn_0]
  connect_bd_intf_net -intf_net mig_7series_0_DDR3 [get_bd_intf_ports DDR3] [get_bd_intf_pins Memory/DDR3]
  connect_bd_intf_net -intf_net xdma_0_M_AXI [get_bd_intf_pins Memory/S00_AXI] [get_bd_intf_pins PCIe/M_AXI]
  connect_bd_intf_net -intf_net xdma_0_pcie_mgt [get_bd_intf_ports pcie_mgt] [get_bd_intf_pins PCIe/pcie_mgt]

  # Create port connections
  connect_bd_net -net AXI_LITE_IO_gpio2_io_o_0 [get_bd_pins AXI_LITE_IO/gpio2_io_o_0] [get_bd_ports gpio2_io_o_0]
  connect_bd_net -net AXI_LITE_IO_gpio_io_o_0 [get_bd_pins AXI_LITE_IO/gpio_io_o_0] [get_bd_ports gpio_io_o_0]
  connect_bd_net -net AXI_LITE_IO_ss_o_0 [get_bd_pins AXI_LITE_IO/ss_o_0] [get_bd_ports ss_o_0]
  connect_bd_net -net AXI_LITE_IO_temp_out_0 [get_bd_pins AXI_LITE_IO/temp_out_0] [get_bd_pins Memory/device_temp_i]
  connect_bd_net -net Datamover_s2mm_err_0 [get_bd_pins Datamover/s2mm_err] [get_bd_ports s2mm_err]
  connect_bd_net -net Datamover_s2mm_halt_cmplt_0 [get_bd_pins Datamover/s2mm_halt_cmplt] [get_bd_ports s2mm_halt_cmplt]
  connect_bd_net -net Datamover_s2mm_wr_xfer_cmplt_0 [get_bd_pins Datamover/s2mm_wr_xfer_cmplt] [get_bd_ports s2mm_wr_xfer_cmplt]
  connect_bd_net -net Memory_init_calib_complete_0 [get_bd_pins Memory/init_calib_complete_0] [get_bd_ports init_calib_complete_0]
  connect_bd_net -net PCIe_axi_aresetn [get_bd_pins PCIe/axi_aresetn] [get_bd_ports axi_aresetn] [get_bd_pins AXI_LITE_IO/axi_resetn] [get_bd_pins Memory/S00_ARESETN]
  connect_bd_net -net PCIe_user_lnk_up_0 [get_bd_pins PCIe/user_lnk_up_0] [get_bd_pins Memory/resetn_0]
  connect_bd_net -net S01_ARESETN_0_1 [get_bd_ports S01_ARESETN] [get_bd_pins Datamover/axi_aresetn]
  connect_bd_net -net clk_in1_n_0_1 [get_bd_ports ext_clk_n] [get_bd_pins Memory/ext_clk_n]
  connect_bd_net -net clk_in1_p_0_1 [get_bd_ports ext_clk_p] [get_bd_pins Memory/ext_clk_p]
  connect_bd_net -net gpio2_io_i_0_1 [get_bd_ports gpio2_io_i] [get_bd_pins AXI_LITE_IO/gpio2_io_i]
  connect_bd_net -net s2mm_halt_0_1 [get_bd_ports s2mm_halt] [get_bd_pins Datamover/s2mm_halt]
  connect_bd_net -net sys_rst_n_0_1 [get_bd_ports pcie_perstn] [get_bd_pins PCIe/pcie_perstn]
  connect_bd_net -net xdma_0_axi_aclk [get_bd_pins PCIe/axi_aclk] [get_bd_ports axi_aclk] [get_bd_pins AXI_LITE_IO/axi_aclk] [get_bd_pins Datamover/axi_aclk] [get_bd_pins Memory/ACLK]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces Datamover/axi_datamover_0/Data_S2MM] [get_bd_addr_segs Memory/mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x00000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces PCIe/xdma_0/M_AXI] [get_bd_addr_segs Memory/mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x40020000 -range 0x00010000 -target_address_space [get_bd_addr_spaces PCIe/xdma_0/M_AXI_LITE] [get_bd_addr_segs AXI_LITE_IO/axi_fifo_mm_s_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x40000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces PCIe/xdma_0/M_AXI_LITE] [get_bd_addr_segs AXI_LITE_IO/axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40040000 -range 0x00010000 -target_address_space [get_bd_addr_spaces PCIe/xdma_0/M_AXI_LITE] [get_bd_addr_segs AXI_LITE_IO/axi_quad_spi_0/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40010000 -range 0x00010000 -target_address_space [get_bd_addr_spaces PCIe/xdma_0/M_AXI_LITE] [get_bd_addr_segs AXI_LITE_IO/xadc_wiz_0/s_axi_lite/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


