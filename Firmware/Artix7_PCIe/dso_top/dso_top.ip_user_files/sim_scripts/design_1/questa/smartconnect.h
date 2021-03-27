#ifndef __SMARTCONNECT__H__
#define __SMARTCONNECT__H__

#include "xtlm.h"
#include "utils/xtlm_aximm_target_stub.h"
#include "utils/xtlm_aximm_initiator_stub.h"
#include "utils/xtlm_aximm_passthru_module.h"
#include <map>
#include <string>
#include "smartconnect_xtlm.h"
#include "report_handler.h"
#include<sstream>

#define si_socket(idx) \
        xtlm::xtlm_aximm_target_socket* S##idx##_AXI_tlm_aximm_read_socket; \
        xtlm::xtlm_aximm_target_socket* S##idx##_AXI_tlm_aximm_write_socket; 

#define mi_socket(idx) \
        xtlm::xtlm_aximm_initiator_socket* M##idx##_AXI_tlm_aximm_read_socket; \
        xtlm::xtlm_aximm_initiator_socket* M##idx##_AXI_tlm_aximm_write_socket; 

using namespace std;

class smartconnect :  public sc_module {

    public: 
        SC_HAS_PROCESS (smartconnect);

        smartconnect(sc_module_name nm, xsc::common_cpp::properties& properties);

        si_socket(00)
        si_socket(01)
        si_socket(02)
        si_socket(03)
        si_socket(04)
        si_socket(05)
        si_socket(06)
        si_socket(07)
        si_socket(08)
        si_socket(09)
        si_socket(10)
        si_socket(11)
        si_socket(12)
        si_socket(13)
        si_socket(14)
        si_socket(15)

        mi_socket(00)
        mi_socket(01)
        mi_socket(02)
        mi_socket(03)
        mi_socket(04)
        mi_socket(05)
        mi_socket(06)
        mi_socket(07)
        mi_socket(08)
        mi_socket(09)
        mi_socket(10)
        mi_socket(11)
        mi_socket(12)
        mi_socket(13)
        mi_socket(14)
        mi_socket(15)
                        
        sc_in<bool> aclk;
        sc_in<bool> aclk1;
        sc_in<bool> aclk2;
        sc_in<bool> aclk3;
        sc_in<bool> aclk4;
        sc_in<bool> aclk5;
        sc_in<bool> aclk6;
        sc_in<bool> aclk7;
        sc_in<bool> aclk8;
        sc_in<bool> aclk9;
        sc_in<bool> aclk10;
        sc_in<bool> aclk11;
        sc_in<bool> aclk12;
        sc_in<bool> aclk13;
        sc_in<bool> aclk14;
        sc_in<bool> aclk15;

        sc_in<bool> aresetn;
        void before_end_of_elaboration();

        vector<xtlm::xtlm_aximm_target_socket*> target_rd_sockets;
        vector<xtlm::xtlm_aximm_target_socket*> target_wr_sockets;
        vector<xtlm::xtlm_aximm_initiator_socket*> initiator_rd_sockets;
        vector<xtlm::xtlm_aximm_initiator_socket*> initiator_wr_sockets;
    private:         
        // Configuration handoff from HIP instance
        map<string, string> smartconnect_config;
        smartconnect_xtlm* core_model;

        std::string filename;
        std::stringstream m_ss;
	    xsc::common_cpp::report_handler* m_report_handler;
        
        sc_core::sc_signal<bool> aresetn_signal;
};


#endif // __SMARTCONNECT__H__
