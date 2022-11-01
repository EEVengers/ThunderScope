#ifndef IP_DESIGN_1_AUTO_US_DF_1_H_
#define IP_DESIGN_1_AUTO_US_DF_1_H_

// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


#ifndef XTLM
#include "xtlm.h"
#endif
#ifndef SYSTEMC_INCLUDED
#include <systemc>
#endif

#if defined(_MSC_VER)
#define DllExport __declspec(dllexport)
#elif defined(__GNUC__)
#define DllExport __attribute__ ((visibility("default")))
#else
#define DllExport
#endif

#include "design_1_auto_us_df_1_sc.h"




#ifdef XILINX_SIMULATOR
#include "utils/xtlm_aximm_initiator_stub.h"
#include "utils/xtlm_aximm_target_stub.h"
class DllExport design_1_auto_us_df_1 : public design_1_auto_us_df_1_sc
{
public:

  design_1_auto_us_df_1(const sc_core::sc_module_name& nm);
  virtual ~design_1_auto_us_df_1();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > s_axi_aclk;
  sc_core::sc_in< bool > s_axi_aresetn;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_awburst;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_axi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awqos;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<128> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<16> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wlast;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< sc_dt::sc_bv<4> > s_axi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_axi_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axi_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_axi_awburst;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_axi_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_awprot;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_awregion;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_awqos;
  sc_core::sc_out< bool > m_axi_awvalid;
  sc_core::sc_in< bool > m_axi_awready;
  sc_core::sc_out< sc_dt::sc_bv<256> > m_axi_wdata;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_axi_wstrb;
  sc_core::sc_out< bool > m_axi_wlast;
  sc_core::sc_out< bool > m_axi_wvalid;
  sc_core::sc_in< bool > m_axi_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axi_bresp;
  sc_core::sc_in< bool > m_axi_bvalid;
  sc_core::sc_out< bool > m_axi_bready;

protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<128,32,4,1,1,1,1,1>* mp_S_AXI_transactor;
  xsc::common::vectorN2scalar_converter<1>* mp_s_axi_awlock_converter;
  sc_signal< bool > m_s_axi_awlock_converter_signal;
  sc_signal< bool > m_S_AXI_transactor_rst_signal;
  xtlm::xaximm_xtlm2pin_t<256,32,1,1,1,1,1,1>* mp_M_AXI_transactor;
  xsc::common::scalar2vectorN_converter<1>* mp_m_axi_awlock_converter;
  sc_signal< bool > m_m_axi_awlock_converter_signal;
  sc_signal< bool > m_M_AXI_transactor_rst_signal;
  xtlm::xtlm_aximm_initiator_stub* mp_S_AXI_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub* mp_M_AXI_rd_socket_stub;

};
#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
#include "utils/xtlm_aximm_initiator_stub.h"
#include "utils/xtlm_aximm_target_stub.h"
class DllExport design_1_auto_us_df_1 : public design_1_auto_us_df_1_sc
{
public:

  design_1_auto_us_df_1(const sc_core::sc_module_name& nm);
  virtual ~design_1_auto_us_df_1();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > s_axi_aclk;
  sc_core::sc_in< bool > s_axi_aresetn;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_awburst;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_axi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awqos;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<128> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<16> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wlast;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< sc_dt::sc_bv<4> > s_axi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_axi_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axi_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_axi_awburst;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_axi_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_awprot;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_awregion;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_awqos;
  sc_core::sc_out< bool > m_axi_awvalid;
  sc_core::sc_in< bool > m_axi_awready;
  sc_core::sc_out< sc_dt::sc_bv<256> > m_axi_wdata;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_axi_wstrb;
  sc_core::sc_out< bool > m_axi_wlast;
  sc_core::sc_out< bool > m_axi_wvalid;
  sc_core::sc_in< bool > m_axi_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axi_bresp;
  sc_core::sc_in< bool > m_axi_bvalid;
  sc_core::sc_out< bool > m_axi_bready;

protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<128,32,4,1,1,1,1,1>* mp_S_AXI_transactor;
  xsc::common::vectorN2scalar_converter<1>* mp_s_axi_awlock_converter;
  sc_signal< bool > m_s_axi_awlock_converter_signal;
  sc_signal< bool > m_S_AXI_transactor_rst_signal;
  xtlm::xaximm_xtlm2pin_t<256,32,1,1,1,1,1,1>* mp_M_AXI_transactor;
  xsc::common::scalar2vectorN_converter<1>* mp_m_axi_awlock_converter;
  sc_signal< bool > m_m_axi_awlock_converter_signal;
  sc_signal< bool > m_M_AXI_transactor_rst_signal;
  xtlm::xtlm_aximm_initiator_stub* mp_S_AXI_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub* mp_M_AXI_rd_socket_stub;

};
#endif // XM_SYSTEMC




#ifdef RIVIERA
#include "utils/xtlm_aximm_initiator_stub.h"
#include "utils/xtlm_aximm_target_stub.h"
class DllExport design_1_auto_us_df_1 : public design_1_auto_us_df_1_sc
{
public:

  design_1_auto_us_df_1(const sc_core::sc_module_name& nm);
  virtual ~design_1_auto_us_df_1();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > s_axi_aclk;
  sc_core::sc_in< bool > s_axi_aresetn;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_awburst;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_axi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awqos;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<128> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<16> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wlast;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< sc_dt::sc_bv<4> > s_axi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_axi_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axi_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_axi_awburst;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_axi_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_awprot;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_awregion;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_awqos;
  sc_core::sc_out< bool > m_axi_awvalid;
  sc_core::sc_in< bool > m_axi_awready;
  sc_core::sc_out< sc_dt::sc_bv<256> > m_axi_wdata;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_axi_wstrb;
  sc_core::sc_out< bool > m_axi_wlast;
  sc_core::sc_out< bool > m_axi_wvalid;
  sc_core::sc_in< bool > m_axi_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axi_bresp;
  sc_core::sc_in< bool > m_axi_bvalid;
  sc_core::sc_out< bool > m_axi_bready;

protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<128,32,4,1,1,1,1,1>* mp_S_AXI_transactor;
  xsc::common::vectorN2scalar_converter<1>* mp_s_axi_awlock_converter;
  sc_signal< bool > m_s_axi_awlock_converter_signal;
  sc_signal< bool > m_S_AXI_transactor_rst_signal;
  xtlm::xaximm_xtlm2pin_t<256,32,1,1,1,1,1,1>* mp_M_AXI_transactor;
  xsc::common::scalar2vectorN_converter<1>* mp_m_axi_awlock_converter;
  sc_signal< bool > m_m_axi_awlock_converter_signal;
  sc_signal< bool > m_M_AXI_transactor_rst_signal;
  xtlm::xtlm_aximm_initiator_stub* mp_S_AXI_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub* mp_M_AXI_rd_socket_stub;

};
#endif // RIVIERA




#ifdef VCSSYSTEMC
#include "utils/xtlm_aximm_initiator_stub.h"

#include "utils/xtlm_aximm_target_stub.h"

class DllExport design_1_auto_us_df_1 : public design_1_auto_us_df_1_sc
{
public:

  design_1_auto_us_df_1(const sc_core::sc_module_name& nm);
  virtual ~design_1_auto_us_df_1();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > s_axi_aclk;
  sc_core::sc_in< bool > s_axi_aresetn;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_awburst;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_axi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awqos;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<128> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<16> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wlast;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< sc_dt::sc_bv<4> > s_axi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_axi_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axi_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_axi_awburst;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_axi_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_awprot;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_awregion;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_awqos;
  sc_core::sc_out< bool > m_axi_awvalid;
  sc_core::sc_in< bool > m_axi_awready;
  sc_core::sc_out< sc_dt::sc_bv<256> > m_axi_wdata;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_axi_wstrb;
  sc_core::sc_out< bool > m_axi_wlast;
  sc_core::sc_out< bool > m_axi_wvalid;
  sc_core::sc_in< bool > m_axi_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axi_bresp;
  sc_core::sc_in< bool > m_axi_bvalid;
  sc_core::sc_out< bool > m_axi_bready;

protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<128,32,4,1,1,1,1,1>* mp_S_AXI_transactor;
  xsc::common::vectorN2scalar_converter<1>* mp_s_axi_awlock_converter;
  sc_signal< bool > m_s_axi_awlock_converter_signal;
  sc_signal< bool > m_S_AXI_transactor_rst_signal;
  xtlm::xaximm_xtlm2pin_t<256,32,1,1,1,1,1,1>* mp_M_AXI_transactor;
  xsc::common::scalar2vectorN_converter<1>* mp_m_axi_awlock_converter;
  sc_signal< bool > m_m_axi_awlock_converter_signal;
  sc_signal< bool > m_M_AXI_transactor_rst_signal;

  // Transactor stubs
  xtlm::xtlm_aximm_initiator_stub * M_AXI_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_target_stub * S_AXI_transactor_target_wr_socket_stub;

  // Socket stubs
  xtlm::xtlm_aximm_initiator_stub* mp_S_AXI_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub* mp_M_AXI_rd_socket_stub;

};
#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
#include "utils/xtlm_aximm_initiator_stub.h"

#include "utils/xtlm_aximm_target_stub.h"

class DllExport design_1_auto_us_df_1 : public design_1_auto_us_df_1_sc
{
public:

  design_1_auto_us_df_1(const sc_core::sc_module_name& nm);
  virtual ~design_1_auto_us_df_1();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > s_axi_aclk;
  sc_core::sc_in< bool > s_axi_aresetn;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_awburst;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_axi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awqos;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<128> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<16> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wlast;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< sc_dt::sc_bv<4> > s_axi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_axi_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axi_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_axi_awburst;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_axi_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_awprot;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_awregion;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_awqos;
  sc_core::sc_out< bool > m_axi_awvalid;
  sc_core::sc_in< bool > m_axi_awready;
  sc_core::sc_out< sc_dt::sc_bv<256> > m_axi_wdata;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_axi_wstrb;
  sc_core::sc_out< bool > m_axi_wlast;
  sc_core::sc_out< bool > m_axi_wvalid;
  sc_core::sc_in< bool > m_axi_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axi_bresp;
  sc_core::sc_in< bool > m_axi_bvalid;
  sc_core::sc_out< bool > m_axi_bready;

protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<128,32,4,1,1,1,1,1>* mp_S_AXI_transactor;
  xsc::common::vectorN2scalar_converter<1>* mp_s_axi_awlock_converter;
  sc_signal< bool > m_s_axi_awlock_converter_signal;
  sc_signal< bool > m_S_AXI_transactor_rst_signal;
  xtlm::xaximm_xtlm2pin_t<256,32,1,1,1,1,1,1>* mp_M_AXI_transactor;
  xsc::common::scalar2vectorN_converter<1>* mp_m_axi_awlock_converter;
  sc_signal< bool > m_m_axi_awlock_converter_signal;
  sc_signal< bool > m_M_AXI_transactor_rst_signal;

  // Transactor stubs
  xtlm::xtlm_aximm_initiator_stub * M_AXI_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_target_stub * S_AXI_transactor_target_wr_socket_stub;

  // Socket stubs
  xtlm::xtlm_aximm_initiator_stub* mp_S_AXI_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub* mp_M_AXI_rd_socket_stub;

};
#endif // MTI_SYSTEMC
#endif // IP_DESIGN_1_AUTO_US_DF_1_H_
