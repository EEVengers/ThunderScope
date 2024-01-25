// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

#ifndef XTLM_SIMPLE_INTERCONNECT_H_
#define XTLM_SIMPLE_INTERCONNECT_H_

#include "xtlm.h"
class xtlm_simple_interconnect_model;
class axi_crossbar: public sc_core::sc_module {
public:
	axi_crossbar(sc_module_name name, xsc::common_cpp::properties& properties);
	virtual ~axi_crossbar();
  xsc::common_cpp::report_handler* m_report_handler;
	//Socket_declaration
		xtlm::xtlm_aximm_initiator_socket* initiator_0_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_0_wr_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_1_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_1_wr_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_2_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_2_wr_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_3_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_3_wr_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_4_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_4_wr_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_5_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_5_wr_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_6_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_6_wr_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_7_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_7_wr_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_8_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_8_wr_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_9_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_9_wr_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_10_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_10_wr_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_11_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_11_wr_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_12_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_12_wr_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_13_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_13_wr_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_14_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_14_wr_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_15_rd_socket;
		xtlm::xtlm_aximm_initiator_socket* initiator_15_wr_socket;
		
		xtlm::xtlm_aximm_target_socket* target_0_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_0_wr_socket;
		xtlm::xtlm_aximm_target_socket* target_1_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_1_wr_socket;
		xtlm::xtlm_aximm_target_socket* target_2_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_2_wr_socket;
		xtlm::xtlm_aximm_target_socket* target_3_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_3_wr_socket;
		xtlm::xtlm_aximm_target_socket* target_4_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_4_wr_socket;
		xtlm::xtlm_aximm_target_socket* target_5_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_5_wr_socket;
		xtlm::xtlm_aximm_target_socket* target_6_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_6_wr_socket;
		xtlm::xtlm_aximm_target_socket* target_7_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_7_wr_socket;
		xtlm::xtlm_aximm_target_socket* target_8_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_8_wr_socket;
		xtlm::xtlm_aximm_target_socket* target_9_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_9_wr_socket;
		xtlm::xtlm_aximm_target_socket* target_10_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_10_wr_socket;
		xtlm::xtlm_aximm_target_socket* target_11_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_11_wr_socket;
		xtlm::xtlm_aximm_target_socket* target_12_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_12_wr_socket;
		xtlm::xtlm_aximm_target_socket* target_13_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_13_wr_socket;
		xtlm::xtlm_aximm_target_socket* target_14_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_14_wr_socket;
		xtlm::xtlm_aximm_target_socket* target_15_rd_socket;
		xtlm::xtlm_aximm_target_socket* target_15_wr_socket;	
		sc_in<bool> aclk;
		sc_in<bool> aresetn;
		private :
	  xtlm_simple_interconnect_model* m_model;
};

#endif /* XTLM_SIMPLE_INTERCONNECT_H_ */
