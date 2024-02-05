from pcie_mem_util import *

import re

class QSPI:
    #REGS
    REG_RST   = 0x40
    REG_CR    = 0x60
    REG_SR    = 0x64
    REG_DTR   = 0x68
    REG_DRR   = 0x6C
    REG_SSR   = 0x70
    REG_DTO   = 0x74
    REG_DRO   = 0x78
    
    #MASK
    REG_RST_MASK = 0xA
    REG_CR_OFF   = 0x186
    REG_CR_ON    = 0x086
    REG_SR_RXE   = 0x00000001
    REG_SR_RXF   = 0x00000002
    REG_SR_TXE   = 0x00000004
    REG_SR_TXF   = 0x00000008
    REG_SSR_CEN  = 0xFFFFFFFE
    REG_SSR_CEF  = 0xFFFFFFFF
    
    #FLASH CMDS
    CMD_READ_ID         = 0x90
    CMD_RDID            = 0x9F
    CMD_READ            = 0x13
    CMD_SECTOR_ERASE    = 0xDC
    CMD_STATUSREG_CLEAR = 0x30
    CMD_STATUSREG_READ  = 0x05    
    CMD_PAGEPROGRAM_WRITE = 0x12
    SR_IS_READY_MASK    = 0x01
    CMD_WRITE_ENABLE    = 0x06
    
    
    def __init__ (self,device_offset,base_offset,sim=False):
        self.device_offset = device_offset
        self.base_offset = base_offset
        self.sim = sim
        self.reset()
        #Dummy read
        self.read_id()
        
        self.flash_id = self.read_id()
        # self.falsh_info = self.device_info_read() #TODO: Not Supported on Micron Flash?
        # print(hex(self.flash_id))
        self.page_size = 0x100
        self.sector_size = 64*1024

        # print(hex(self.sector_size))
        # print(hex(self.random_read(0x0)[0x23]))
        print("FLASH ID : 0x%02X, Sector Size : 0x%08X" % (self.flash_id,self.sector_size))
        # print(self.is_busy())
        self.status_clear()
        #if (self.load_mcs("page.mcs",verify_only=True)):
        #    self.load_mcs("page.mcs")
        # print(hex(self.random_read(0x0)[0x23])) #TODO: Add check for version?
        #read_arry = self.random_read(0x0)
        #for i in range(len(read_arry)):
        #    print(hex(i),hex(read_arry[i]))
        if(self.sim):
            self.pcie_stats()
        
    def pcie_stats(self):
        mem = pcie_mem(self.device_offset+self.base_offset,sim=self.sim)
        print("PCIe Writes : %6d, Reads : %6d" % mem.get_stats())
        mem.clear_stats()

    def reset(self):
        mem = pcie_mem(self.device_offset+self.base_offset,sim=self.sim)
        mem.wwrite(self.REG_RST,self.REG_RST_MASK)
        mem.wwrite(self.REG_SSR,self.REG_SSR_CEF)
        mem.wwrite(self.REG_CR,self.REG_CR_OFF)
        
    def issue_cmd(self,cmd,readback = 0):
        #get pcie memory
        mem = pcie_mem(self.device_offset+self.base_offset,sim=self.sim)
        #write cmd section
        #enable CE
        mem.wwrite(self.REG_SSR,self.REG_SSR_CEN)
        #write cmd sequence until full or end of sequence, issue and start again
        cmd_idx = 0
        if (not self.sim):
            while(cmd_idx<len(cmd)):
                while(cmd_idx<len(cmd) and (mem.wread(self.REG_SR)&self.REG_SR_TXF)!=self.REG_SR_TXF):
                    mem.wwrite(self.REG_DTR,cmd[cmd_idx])
                    #print(hex(cmd[cmd_idx]))
                    cmd_idx += 1
                #start
                mem.wwrite(self.REG_CR,self.REG_CR_ON)
                #go until empty
                while((mem.wread(self.REG_SR)&self.REG_SR_TXE)!=self.REG_SR_TXE):
                    pass
                #stop
                mem.wwrite(self.REG_CR,self.REG_CR_OFF)
                #empty RX (all garabge data during cmd issue
                while((mem.wread(self.REG_SR)&self.REG_SR_RXE)!=self.REG_SR_RXE):
                    mem.wread(self.REG_DRR)
            #read 
            read_idx = 0
            return_val = []
            while(read_idx<readback):
                while(read_idx<readback and (mem.wread(self.REG_SR)&self.REG_SR_TXF)!=self.REG_SR_TXF):
                    mem.wwrite(self.REG_DTR,0x0)
                    read_idx += 1
                #start
                mem.wwrite(self.REG_CR,self.REG_CR_ON)
                #go until empty
                while((mem.wread(self.REG_SR)&self.REG_SR_TXE)!=self.REG_SR_TXE):
                    pass
                #stop
                mem.wwrite(self.REG_CR,self.REG_CR_OFF)
                #read RX
                while((mem.wread(self.REG_SR)&self.REG_SR_RXE)!=self.REG_SR_RXE):
                    return_val.append(mem.wread(self.REG_DRR))
                    #print(hex(return_val[-1]))
        else:
            while(cmd_idx<len(cmd)):
                mem.wread(self.REG_SR)
                mem.wwrite(self.REG_DTR,cmd[cmd_idx])
                #print(hex(cmd[cmd_idx]))
                cmd_idx += 1
                #start
                mem.wwrite(self.REG_CR,self.REG_CR_ON)
                #go until empty
                mem.wread(self.REG_SR)
                #stop
                mem.wwrite(self.REG_CR,self.REG_CR_OFF)
                #empty RX (all garabge data during cmd issue
                mem.wread(self.REG_SR)
                mem.wread(self.REG_DRR)
                #read 
            read_idx = 0
            return_val = []
            while(read_idx<readback):
                mem.wread(self.REG_SR)
                mem.wwrite(self.REG_DTR,0x0)
                read_idx += 1
                #start
                mem.wwrite(self.REG_CR,self.REG_CR_ON)
                #go until empty
                mem.wread(self.REG_SR)
                #stop
                mem.wwrite(self.REG_CR,self.REG_CR_OFF)
                #read RX
                mem.wread(self.REG_SR)
                return_val.append(mem.wread(self.REG_DRR))
                #print(hex(return_val[-1]))
        
        #turn off CE
        mem.wwrite(self.REG_SSR,self.REG_SSR_CEF)
        
        return return_val


    def read_id(self):
        cmd = [self.CMD_READ_ID,0,0,0]
        return_val = self.issue_cmd(cmd,2)[1]
        return return_val
    
    def device_info_read(self):
        cmd = [self.CMD_RDID]
        return_val = self.issue_cmd(cmd,0x51)
        return return_val
        
    def random_read(self,addr,length=256):
        cmd = [self.CMD_READ]
        addr = int.to_bytes(addr,4,'big')
        for addr8 in addr:
            cmd.append(addr8)
        return_val = self.issue_cmd(cmd,length)
        return return_val
        
    def is_busy(self): 
        cmd = [self.CMD_STATUSREG_READ]
        if ((self.issue_cmd(cmd,1)[0]&self.SR_IS_READY_MASK)==self.SR_IS_READY_MASK):
            return True
        else:
            return False
    
    def status_clear(self):
        cmd = [self.CMD_STATUSREG_CLEAR]
        self.issue_cmd(cmd)
    
    def write_en(self):
        cmd = [self.CMD_WRITE_ENABLE]
        self.issue_cmd(cmd)
        
    def erase_sector(self,addr):
        # print("Erase Sector at 0x%08X" % (addr))
        self.status_clear()
        self.write_en()
        #make sure nothing is happening
        while(self.is_busy()):
            pass
        cmd = [self.CMD_SECTOR_ERASE]
        addr = int.to_bytes(addr,4,'big')
        for addr8 in addr:
            cmd.append(addr8)
        self.issue_cmd(cmd,0)
        #wait until done
        while(self.is_busy()):
            pass        
        self.status_clear()
        
    def random_write(self,addr,data):
        self.status_clear()
        self.write_en()
        #make sure nothing is happening
        while(self.is_busy()):
            pass
        cmd = [self.CMD_PAGEPROGRAM_WRITE]
        addr = int.to_bytes(addr,4,'big')
        for addr8 in addr:
            cmd.append(addr8)
        cmd.extend(data)
        self.issue_cmd(cmd,0)
        #wait until done
        while(self.is_busy()):
            pass        
        self.status_clear()
    
    def write_sector(self,addr,data):        
        self.erase_sector(addr)
        stride = self.page_size
        #print(data[0:0x80])
        for i in range(0,len(data),stride):
            #print(i)
            self.random_write(addr+i,data[0+i:stride+i])
    
    def verify_sector (self,addr,data):
        read_data = self.random_read(addr,self.sector_size)
        if (self.sim):
            return 0
        for rbyte,dbyte in zip(read_data,data):
            if(rbyte != dbyte):
                print (addr,rbyte,dbyte)
                print("BAD VERIFY")
                return 1
        print("GOOD VERIFY")
        return 0
    
    def write_flash(self,addr,data,verify_only=False):
        print("Addr : 0x%08X, Len : 0x%08X" % (addr,len(data)))
        for i in range(0,len(data),self.sector_size):
            if(i<len(data)):
                if(not verify_only):
                    self.write_sector(addr+i,data[0+i:self.sector_size+i])
                if(self.verify_sector(addr+i,data[0+i:self.sector_size+i])==1):
                    return 1
            else:
                if(not verify_only):
                    self.write_sector(addr+i,data[0+i:])
                if(self.verify_sector(addr+i,data[0+i:])==1):
                    return 1
        return 0
        
    # NEEDS MORE Features to support full MCS files
    def load_mcs(self,path,verify_only=False):
        key = ":([0-9A-F]{2})([0-9A-F]{4})([0-9A-F]{2})([0-9A-F]+)?([0-9A-F]{2})"
        base_addr = 0
        pass_var = 0
        file_b = bytearray()
        count = 0
        with open(path, 'r') as file_t:
            lines = file_t.readlines()
            for line in lines:
                m = re.search(key,line)
                if m:
                    num_bytes = int(m.group(1),16)
                    addr      = int(m.group(2),16)            
                    mcs_type  = int(m.group(3),16)
                    if mcs_type == 1:
                        break            
                    if mcs_type == 4: #Update Base Address? assume sector change?
                        if (len(file_b)!=0):
                            pass_var += self.write_flash(base_addr,file_b,verify_only)
                            file_b = bytearray()
                        base_addr = int(m.group(4),16) << 16
                        continue    
                    data_b    = int.to_bytes(int(m.group(4),16),num_bytes,'big')
                    file_b.extend(data_b)
        pass_var += self.write_flash(base_addr,file_b,verify_only)
        if(self.sim):
            self.pcie_stats()
        return pass_var