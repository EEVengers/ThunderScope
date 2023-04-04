#include "xtlm.h"
#include <string.h>
#include <math.h>
#include <iomanip>
#include<list>
#include <map>
#include <vector>
#include <sstream>
#include <bitset>
#ifndef SMARTCONNECT_XTLM_H
#define SMARTCONNECT_XTLM_H
#include "smartconnect_xtlm_impl.h"
#include "report_handler.h"
#include <sstream>

using namespace std;

class smartconnect_xtlm: public sc_module {
	SC_HAS_PROCESS(smartconnect_xtlm);

  enum transaction_status {
     TRANSACTION_OK = 1,
     TRANSACTION_INVALID = 0,
     TRANSACTION_ADDRESS_ERROR = -1,
     TRANSACTION_BURST_ERROR = -2,
     TRANSACTION_ID_ERROR = -3
  };

public:
	smartconnect_xtlm(sc_core::sc_module_name name,
            xsc::common_cpp::properties& _properties, map<string,string> _smc_properties,xsc::common_cpp::report_handler* report_handler);

	~smartconnect_xtlm();

    //Target sockets
    // TODO: Pluralize...
    vector<xtlm::xtlm_aximm_target_socket*> saxi_wr_socket;
    vector<xtlm::xtlm_aximm_target_socket*> saxi_rd_socket;

    //Initiator sockets
    vector<xtlm::xtlm_aximm_initiator_socket*> maxi_rd_socket;
    vector<xtlm::xtlm_aximm_initiator_socket*> maxi_wr_socket;

//    TODO: delete - should not be required:
//	sc_in<bool> axi_aclk;
//	sc_in<bool> axi_aresetn;
   unsigned int transport_dbg_cb(xtlm::aximm_payload& trans,int si_num); 
   void b_transport_cb(xtlm::aximm_payload & trans, sc_core::sc_time & t,int si_num); 
private:
   vector<smartconnect_xtlm_impl::target_rd_util*> saxi_rd_util;
   vector<smartconnect_xtlm_impl::target_wr_util*> saxi_wr_util;
   vector<xtlm::xtlm_aximm_initiator_rd_socket_util*> maxi_rd_util;
   vector<xtlm::xtlm_aximm_initiator_wr_socket_util*> maxi_wr_util;

   vector<list<xtlm::aximm_payload*> > saxi_rd_req_vec;
   vector<list<xtlm::aximm_payload*> > saxi_rd_resp_vec;

   vector<list<xtlm::aximm_payload*> > saxi_wr_req_vec;
   vector<list<xtlm::aximm_payload*> > saxi_wr_resp_vec;

   vector<list<xtlm::aximm_payload*> > maxi_wr_req_vec;
   vector<list<xtlm::aximm_payload*> > maxi_wr_resp_vec;

   vector<list<xtlm::aximm_payload*> > maxi_rd_req_vec;
   vector<list<xtlm::aximm_payload*> > maxi_rd_resp_vec;

   vector<list<unsigned int> > maxi_wr_req_numsi_vec;
   vector<list<unsigned int> > maxi_rd_req_numsi_vec;

   vector<list<xtlm::aximm_payload*>::iterator > maxi_rd_req_vec_itr;

   vector<xsc::common_cpp::properties> SI_m_properties;
   vector<xsc::common_cpp::properties> MI_m_properties;


   xtlm::aximm_payload* s_trans;
   xtlm::aximm_payload* m_trans;
   xtlm::xtlm_aximm_mem_manager* mem_manager;

   //Map variables to hold payload logistical information
   map<xtlm::aximm_payload*, xtlm::aximm_payload*>       map_wr_mi_to_si;     //Maps generated MI trans to incoming SI trans
   map<xtlm::aximm_payload*, int>                        map_wr_si_to_nummi;  //Maps each incoming SI trans to number of MI trans generated
   map<xtlm::aximm_payload*, int>                        map_wr_si_to_numsi;  //Maps each incoming SI trans to corresponding SI port
   multimap<xtlm::aximm_payload*, xtlm::aximm_payload*>  mmap_wr_si_to_mi;    //Maps each incoming SI trans to multiple MI trans generated
   multimap<xtlm::aximm_payload*, xtlm::aximm_payload*>::iterator  mmap_wr_si_to_mi_itr;

   map<xtlm::aximm_payload*, xtlm::aximm_payload*>       map_rd_mi_to_si;     //Maps generated MI trans to incoming SI trans
   map<xtlm::aximm_payload*, int>                        map_rd_si_to_nummi;  //Maps each incoming SI trans to number of MI trans generated
   map<xtlm::aximm_payload*, int>                        map_rd_si_to_numsi;  //Maps each incoming SI trans to corresponding SI port
   multimap<xtlm::aximm_payload*, xtlm::aximm_payload*>  mmap_rd_si_to_mi;    //Maps each incoming SI trans to multiple MI trans generated
   multimap<xtlm::aximm_payload*, xtlm::aximm_payload*>::iterator  mmap_rd_si_to_mi_itr;

   //Map implementation of decode table
   map<std::string, uint64_t> map_SEG;
   map<std::string, uint64_t>::iterator map_SEG_itr;
        
   //List implementation of decode table
   list<std::pair <uint64_t, uint64_t>> decode_table;
   list<std::pair <uint64_t, uint64_t>>::iterator decode_table_itr;

   void process_saxi_wr_req();
   void process_saxi_wr_resp();

   void process_maxi_wr_req();
   void process_maxi_wr_resp();

   void process_saxi_rd_req();
   void process_saxi_rd_resp();

   void process_maxi_rd_req();
   void process_maxi_rd_resp();

   //Utility function
   void print_header(std::string str);
   void print_footer(std::string str);
   void print_log(std::string port, int port_id, std::string rw, std::string action, xtlm::aximm_payload* &trans_ptr);

   //To check whether it is legal address
   bool is_address_hit(xtlm::aximm_payload* &trans_ptr, int num_si, unsigned long long &si_sep_route, int &m_burst_length, unsigned int &m_burst_size);

   int decode_burst_size(unsigned int burst_size);
   int encode_burst_size(int num_burst);
   int get_max_burst_length(std::string protocol);
   transaction_status get_transaction_status(xtlm::aximm_payload* &trans_ptr, int num_si, unsigned long long &si_sep_route, int &m_burst_length, unsigned int &m_burst_size);

   void create_burst_transaction(std::list<xtlm::aximm_payload*> &saxi_vec, std::list<xtlm::aximm_payload*> &maxi_vec, 
                                  std::list<unsigned int> &axiid_vec, int m_burst_length, unsigned int m_burst_size, int &req_cnt, unsigned int numsi,
                                  unsigned int nummi, unsigned long long si_sep_route);

   xtlm::aximm_payload* get_dummy_transaction(xtlm::xtlm_command cmd);


   sc_core::sc_event check_saxi_wr_req, check_saxi_rd_req, send_wr_resp, initiate_maxi_wr_req, initiate_maxi_rd_req, send_saxi_rd_resp;

   bool trans_done, create_wr_resp;

   vector<int> maxi_wr_req_cnt; 
   vector<int> maxi_rd_req_cnt;

   list<xtlm::aximm_payload*> slave_wr_resp;
   list<xtlm::aximm_payload*> slave_rd_resp;
   list<int> slave_wr_resp_nummi;
   list<int> slave_rd_resp_nummi;

   int slave_wr_req, slave_rd_req;

   int bad_saxi_wr_trans, bad_saxi_rd_trans;

   std::string payload_msg, mmu_baseaddr, mmu_size, mmu_seproute;

   vector<int> MI_burst_length;
   vector<int> MI_burst_size;

   map<string,string> smc_properties;

   // Populated from smc_properties (until xtlm handoff includes user parameters)
   int smc_num_si;
   int smc_num_mi;
   int m_rd_burst_length;
   int m_wr_burst_length;
   unsigned int m_rd_burst_size;
   unsigned int m_wr_burst_size;

   xsc::common_cpp::properties m_properties;

   int is_address_hit_lite(xtlm::aximm_payload* trans_ptr, int num_si);
   std::stringstream m_ss;
   xsc::common_cpp::report_handler* m_report_handler;
};

//Extension class to carry SEP_ROUTE information in cascaded smartconnect topology
class smartconnect_extension : public xtlm::xtlm_extension<smartconnect_extension> {
public:
  smartconnect_extension() : xtlm::xtlm_extension<smartconnect_extension>() {
    sep_route = 0;
  }

  virtual xtlm::xtlm_extension_base * clone() const{
    return NULL;
  }

  virtual void copy_from(xtlm::xtlm_extension_base const & ext){
  }

  unsigned long long sep_route;
  list<xtlm::aximm_payload* > mi_trans_vec;
  
  void set_sep_route(unsigned long long sep_route_) {
    sep_route = sep_route_;
  }

  void push_mi_trans(xtlm::aximm_payload* mi_trans) {
    mi_trans_vec.push_back(mi_trans);
  }

  list<xtlm::aximm_payload* >& get_mi_trans_vec() {
   return mi_trans_vec;
  }
  
  unsigned long long get_sep_route() {
    return sep_route;
  }
};
#endif
