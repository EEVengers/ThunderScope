import os
import mmap
import numpy as np

class pcie_mem:
    total_writes = 0
    total_reads  = 0
    def __init__(self,offset,size=0x10000,sim=False):
        self.offset = offset
        self.size = size      
        
        if (not sim):
            print("hello")
            mmap_file = os.open('/dev/mem', os.O_RDWR | os.O_SYNC)
            mem = mmap.mmap(mmap_file, self.size,
                            mmap.MAP_SHARED,
                            mmap.PROT_READ | mmap.PROT_WRITE,
                            offset=self.offset)
            os.close(mmap_file)
            self.array = np.frombuffer(mem, np.uint32, self.size >> 2)
        else:
            self.array = np.zeros(self.size >> 2, dtype=np.uint32)
        
    def wread(self,address):
        pcie_mem.total_reads += 1
        idx = address >> 2
        #print(hex(self.offset+address))
        return_val = int(self.array[idx])
        return return_val
        
    def wwrite(self,address,data):
        pcie_mem.total_writes += 1
        idx = address >> 2
        #print(hex(self.offset+address))
        self.array[idx] = np.uint32(data)

    def get_stats(self):
        return (pcie_mem.total_writes,pcie_mem.total_reads)
    
    def clear_stats(self):
        pcie_mem.total_writes = 0
        pcie_mem.total_reads  = 0
