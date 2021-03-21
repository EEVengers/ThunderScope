#include "smartconnect_xtlm_impl.h"
#include "smartconnect_xtlm.h"

namespace smartconnect_xtlm_impl {
	target_rd_util::target_rd_util(sc_core::sc_module_name p_name,
			xtlm::aximm::granularity g_hint, int width_p,int si_number_,smartconnect_xtlm *_sxtlm_ptr) :si_number(si_number_),
			xtlm::xtlm_aximm_target_rd_socket_util(p_name, g_hint, width_p),sxtlm_ptr(_sxtlm_ptr) {
	}
	unsigned int target_rd_util::transport_dbg_cb(xtlm::aximm_payload& trans) {
		return sxtlm_ptr->transport_dbg_cb(trans,si_number);
	}
	void target_rd_util::b_transport(xtlm::aximm_payload & trans, sc_core::sc_time & t) {
        sxtlm_ptr->b_transport_cb(trans,t,si_number);
        /*
		std::stringstream ss;
		std::string payloadDes;
		trans.get_log(payloadDes, 1);
		if (parent->m_report_handler->get_verbosity_level()
				== xsc::common_cpp::DEBUG) {
			ss.str("");
			ss << parent->m_module_name << ": "
					<< "Received blocking READ  call b_transport IN sock_id "
					<< m_index << std::endl << payloadDes;
			parent->m_report_handler->report("1", ss.str().c_str(),
					xsc::common_cpp::INFO, xsc::common_cpp::DEBUG);
		}
		int master_itf_id = parent->addressDecoder(trans,
				parent->sockIdtoItfId(m_index));
		if (master_itf_id < 0) {
			trans.set_response_status(xtlm::XTLM_ADDRESS_ERROR_RESPONSE);
		} else if (trans.get_command() == xtlm::XTLM_IGNORE_COMMAND) {
			trans.set_response_status(xtlm::XTLM_COMMAND_ERROR_RESPONSE);
		} else {
			parent->m_b_trans_master_req[master_itf_id].push(&trans);
			while (parent->m_master_btr_busy[master_itf_id]
					|| parent->m_b_trans_master_req[master_itf_id].front() != &trans) {
				wait(parent->m_btr_done_event[master_itf_id]);
			}
			parent->m_master_btr_busy[master_itf_id] = true;
			if (parent->m_report_handler->get_verbosity_level()
					== xsc::common_cpp::DEBUG) {
				ss.str("");
				ss << parent->m_module_name << ": "
						<< "Forwarding blocking READ call b_transport IN to slave "
						<< master_itf_id << std::endl << payloadDes;
				parent->m_report_handler->report("1", ss.str().c_str(),
						xsc::common_cpp::INFO, xsc::common_cpp::DEBUG);
			}

			parent->initiator_rd_sockets_util[master_itf_id]->b_transport(trans,
					t);

			parent->m_b_trans_master_req[master_itf_id].pop();
			parent->m_master_btr_busy[master_itf_id] = false;
			notify(parent->m_btr_done_event[master_itf_id]);
			if (parent->m_report_handler->get_verbosity_level()
					== xsc::common_cpp::DEBUG) {
				ss.str("");
				ss << parent->m_module_name << ": "
						<< "Forwarding done READ call b_transport IN to slave "
						<< master_itf_id << std::endl << payloadDes;
				parent->m_report_handler->report("1", ss.str().c_str(),
						xsc::common_cpp::INFO, xsc::common_cpp::DEBUG);
			}
		}
        */
    }
  /*
    void target_rd_util::register_b_transport(void (*smartconnect_xtlm::b_transport_handler_)(xtlm::aximm_payload& trans, sc_core::sc_time& t,int si_num)) {
        b_transport_handler = b_transport_handler_;
    }
    void target_rd_util::register_transport_dbg(unsigned int (*smartconnect_xtlm::transport_dbg_handler_)(xtlm::aximm_payload& trans,int si_num)) {
        transport_dbg_handler = transport_dbg_handler_;
    }
    */
	target_wr_util::target_wr_util(sc_core::sc_module_name p_name,
			xtlm::aximm::granularity g_hint, int width_p,int si_number_,smartconnect_xtlm *_sxtlm_ptr) :si_number(si_number_),
			xtlm::xtlm_aximm_target_wr_socket_util(p_name, g_hint, width_p),sxtlm_ptr(_sxtlm_ptr) {
	}
	unsigned int target_wr_util::transport_dbg_cb(xtlm::aximm_payload& trans) {
		return sxtlm_ptr->transport_dbg_cb(trans,si_number);
	}
	void target_wr_util::b_transport(xtlm::aximm_payload & trans, sc_core::sc_time & t) {
        sxtlm_ptr->b_transport_cb(trans,t,si_number);
        /*
		//Should wait till the parent is free to make transport call
		std::stringstream ss;
		std::string payloadDes;
		trans.get_log(payloadDes, 1);
		if (parent->m_report_handler->get_verbosity_level()
				== xsc::common_cpp::DEBUG) {
			ss.str("");
			ss << parent->m_module_name << ": "
					<< "Received blocking WRITE call b_transport IN sock_id "
					<< m_index << std::endl << payloadDes;
			parent->m_report_handler->report("1", ss.str().c_str(),
					xsc::common_cpp::INFO, xsc::common_cpp::DEBUG);
		}
		int master_itf_id = parent->addressDecoder(trans,
				parent->sockIdtoItfId(m_index));
		if (master_itf_id < 0) {
			trans.set_response_status(xtlm::XTLM_ADDRESS_ERROR_RESPONSE);
		} else if (trans.get_command() == xtlm::XTLM_IGNORE_COMMAND) {
			trans.set_response_status(xtlm::XTLM_COMMAND_ERROR_RESPONSE);
		} else {
			parent->m_b_trans_master_req[master_itf_id].push(&trans);
			while (parent->m_master_btr_busy[master_itf_id]
					|| parent->m_b_trans_master_req[master_itf_id].front() != &trans) {
				wait(parent->m_btr_done_event[master_itf_id]);
			}
			parent->m_master_btr_busy[master_itf_id] = true;
			if (parent->m_report_handler->get_verbosity_level()
					== xsc::common_cpp::DEBUG) {
				ss.str("");
				ss << parent->m_module_name << ": "
						<< "Forwarding blocking WRITE call b_transport IN to slave "
						<< master_itf_id << std::endl << payloadDes;
				parent->m_report_handler->report("1", ss.str().c_str(),
						xsc::common_cpp::INFO, xsc::common_cpp::DEBUG);
			}
			parent->initiator_wr_sockets_util[master_itf_id]->b_transport(trans,
					t);

			parent->m_b_trans_master_req[master_itf_id].pop();
			parent->m_master_btr_busy[master_itf_id] = false;
			notify(parent->m_btr_done_event[master_itf_id]);
			if (parent->m_report_handler->get_verbosity_level()
					== xsc::common_cpp::DEBUG) {
				ss.str("");
				ss << parent->m_module_name << ": "
						<< "Forwarding done WRITE call b_transport IN to slave "
						<< master_itf_id << std::endl << payloadDes;
				parent->m_report_handler->report("1", ss.str().c_str(),
						xsc::common_cpp::INFO, xsc::common_cpp::DEBUG);
			}
		}
        */
	}
  /*
    void target_wr_util::register_b_transport(void (smartconnect_xtlm::*b_transport_handler_)(xtlm::aximm_payload& trans, sc_core::sc_time& t, int si_num)) {
        b_transport_handler = b_transport_handler_;
    }
    void target_wr_util::register_transport_dbg(unsigned int (smartconnect_xtlm::*transport_dbg_handler_)(xtlm::aximm_payload& trans,int si_num)) {
        transport_dbg_handler = transport_dbg_handler_;
    }
    */
}
