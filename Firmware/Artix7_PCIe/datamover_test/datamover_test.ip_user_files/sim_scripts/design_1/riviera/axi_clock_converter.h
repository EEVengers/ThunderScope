#ifndef _axi_clock_converter_
#define _axi_clock_converter_
#include <xtlm.h>
#include <utils/xtlm_aximm_passthru_module.h>
#include <systemc>

class axi_clock_converter:public sc_module{
	public:
		axi_clock_converter(sc_core::sc_module_name module_name,xsc::common_cpp::properties&);
		virtual ~axi_clock_converter();
		SC_HAS_PROCESS(axi_clock_converter);
	xtlm::xtlm_aximm_target_socket* S_TARGET_rd_socket;
	xtlm::xtlm_aximm_target_socket* S_TARGET_wr_socket;
	xtlm::xtlm_aximm_initiator_socket*  M_INITIATOR_rd_socket;
	xtlm::xtlm_aximm_initiator_socket* M_INITIATOR_wr_socket;
  sc_in<bool> s_axi_aclk;
	sc_in<bool> s_axi_aresetn;
  sc_in<bool> m_axi_aclk;
	sc_in<bool> m_axi_aresetn;
  
	private:
	xtlm::xtlm_aximm_passthru_module *P1;
	xtlm::xtlm_aximm_passthru_module *P2;	
};

#endif

