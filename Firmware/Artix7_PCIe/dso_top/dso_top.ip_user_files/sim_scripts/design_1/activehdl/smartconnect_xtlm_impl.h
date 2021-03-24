#ifndef _SMARTCONNECT_XTLM_IMPL_
#define _SMARTCONNECT_XTLM_IMPL_
#include "xtlm.h"

class smartconnect_xtlm;

namespace smartconnect_xtlm_impl {
class target_rd_util: public xtlm::xtlm_aximm_target_rd_socket_util {
public:
    int si_number;
	target_rd_util(sc_core::sc_module_name p_name,
			xtlm::aximm::granularity g_hint, int width_p,int si_number_,smartconnect_xtlm *_sxtlm_ptr); 
    //void register_b_transport(void (smartconnect_xtlm::*b_transport_handler)(xtlm::aximm_payload&, sc_core::sc_time& ,int si_num));
    //void register_transport_dbg(unsigned int (smartconnect_xtlm::*transport_dbg_handler)(xtlm::aximm_payload&,int si_num));
    private:
	unsigned int transport_dbg_cb(xtlm::aximm_payload& trans); 
	void b_transport(xtlm::aximm_payload & trans, sc_core::sc_time & t); 
    //void (*b_transport_handler)(xtlm::aximm_payload& trans, sc_core::sc_time& t,int si_num);
    //unsigned int (*transport_dbg_handler)(xtlm::aximm_payload& trans,int si_num);
    smartconnect_xtlm* sxtlm_ptr;
    
};

class target_wr_util: public xtlm::xtlm_aximm_target_wr_socket_util {
public:
    int si_number;
	target_wr_util(sc_core::sc_module_name p_name,
			xtlm::aximm::granularity g_hint, int width_p,int si_number_,smartconnect_xtlm *_sxtlm_ptr); 
    //void register_b_transport(void (*b_transport_handler)(xtlm::aximm_payload&, sc_core::sc_time& ,int si_num));
    //void register_transport_dbg(unsigned int (*transport_dbg_handler)(xtlm::aximm_payload&, int si_num));
    private:
	unsigned int transport_dbg_cb(xtlm::aximm_payload& trans); 
	void b_transport(xtlm::aximm_payload & trans, sc_core::sc_time & t); 
    //void (*b_transport_handler)(xtlm::aximm_payload& trans, sc_core::sc_time& t,int si_num);
    //unsigned int (*transport_dbg_handler)(xtlm::aximm_payload& trans,int si_num);
    smartconnect_xtlm* sxtlm_ptr;
};
}
#endif
