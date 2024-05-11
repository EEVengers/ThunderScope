from qspi import *

print("Sim for QSPI interface via PCIe")
sim_qspi = QSPI(0x0,0x0,sim=True)
print("Sim for Full Flash")
sim_qspi.load_mcs("../output/xdma_prj_100t_full.mcs")
print("Sim for Update Only")
sim_qspi.load_mcs("../output/xdma_prj_100t_update.mcs")