#include "axi_data_fifo.h"
#include <sstream>

axi_data_fifo::axi_data_fifo(sc_core::sc_module_name module_name,xsc::common_cpp::properties&) :
	sc_module(module_name) {
		M_INITIATOR_rd_socket = new xtlm::xtlm_aximm_initiator_socket("initiator_rd_socket",32);
		M_INITIATOR_wr_socket = new xtlm::xtlm_aximm_initiator_socket("initiator_wr_socket",32);
	 	S_TARGET_rd_socket = new xtlm::xtlm_aximm_target_socket("target_rd_socket",32);
		S_TARGET_wr_socket = new xtlm::xtlm_aximm_target_socket("target_wr_socket",32);
		P1 = new xtlm::xtlm_aximm_passthru_module("P1");
		P2 = new xtlm::xtlm_aximm_passthru_module("P2");
		P1->initiator_socket->bind(*M_INITIATOR_rd_socket);
		P2->initiator_socket->bind(*M_INITIATOR_wr_socket);
		S_TARGET_rd_socket->bind(*(P1->target_socket));
		S_TARGET_wr_socket->bind(*(P2->target_socket));
		}

axi_data_fifo::~axi_data_fifo() {
	delete M_INITIATOR_wr_socket;
	delete M_INITIATOR_rd_socket;
	delete S_TARGET_wr_socket;
	delete S_TARGET_rd_socket;
	delete P1;
	delete P2;
}
