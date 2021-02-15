################################################################################
# This constraints file contains default clock frequencies to be used during 
# creation of a Synthesis Design Checkpoint (DCP). For best results the 
# frequencies should be modified to match the target frequencies.
# This constraints file is not used in top-down/global synthesis (not the
# default flow of Vivado).
################################################################################
################## Out-of-Context Clock Specifications #########################
################################################################################
create_clock -period 10.000 [get_ports IBUF_DS_P]
################################################################################
