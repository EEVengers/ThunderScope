#ifndef _axi_data_fifo_
#define _axi_data_fifo_
#include <xtlm.h>
#include <utils/xtlm_aximm_passthru_module.h>
#include <systemc>

class axi_data_fifo:public sc_module{
	public:
		axi_data_fifo(sc_core::sc_module_name module_name,xsc::common_cpp::properties&);
		virtual ~axi_data_fifo();
		SC_HAS_PROCESS(axi_data_fifo);
	xtlm::xtlm_aximm_target_socket* S_TARGET_rd_socket;
	xtlm::xtlm_aximm_target_socket* S_TARGET_wr_socket;
	xtlm::xtlm_aximm_initiator_socket*  M_INITIATOR_rd_socket;
	xtlm::xtlm_aximm_initiator_socket* M_INITIATOR_wr_socket;
  	sc_in<bool> aclk;
	sc_in<bool> aresetn;
	private:
	xtlm::xtlm_aximm_passthru_module *P1;
	xtlm::xtlm_aximm_passthru_module *P2;	
};

#endif

