import os
import mmap
import numpy as np

class pcie_mem:

    def __init__(self,offset,size=0x10000):
        self.offset = offset
        self.size = size
        
        mmap_file = os.open('/dev/mem', os.O_RDWR | os.O_SYNC)
        mem = mmap.mmap(mmap_file, self.size,
                        mmap.MAP_SHARED,
                        mmap.PROT_READ | mmap.PROT_WRITE,
                        offset=self.offset)
        os.close(mmap_file)
        self.array = np.frombuffer(mem, np.uint32, self.size >> 2)
        
    def wread(self,address):
        idx = address >> 2
        #print(hex(self.offset+address))
        return_val = int(self.array[idx])
        return return_val
        
    def wwrite(self,address,data):
        idx = address >> 2
        #print(hex(self.offset+address))
        self.array[idx] = np.uint32(data)