# XDMA

## Build

In this directory with Vivado tcl console, run `source src_proc.tcl` 

Then run `src ./xdma_gen.tcl <target> <threads>` 
* Targets (Default is 200t)
  * `50t`
  * `100t`
  * `200t`
* Threads (Default is 6) If threads is used, target must be used
  * `1`
  * `...`
  * `16`


## TODO:

* Check SPI clk for Flash write.
* Update MCS file decode.
* look at quad writes and reads for frimware updates.