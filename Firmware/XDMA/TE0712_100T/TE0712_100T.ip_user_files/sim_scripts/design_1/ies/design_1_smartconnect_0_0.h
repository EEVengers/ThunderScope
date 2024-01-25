#ifndef IP_DESIGN_1_SMARTCONNECT_0_0_H_
#define IP_DESIGN_1_SMARTCONNECT_0_0_H_

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

#include "design_1_smartconnect_0_0_sc.h"




#ifdef XILINX_SIMULATOR
class DllExport design_1_smartconnect_0_0 : public design_1_smartconnect_0_0_sc
{
public:

  design_1_smartconnect_0_0(const sc_core::sc_module_name& nm);
  virtual ~design_1_smartconnect_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > aclk;
  sc_core::sc_in< bool > aresetn;
  sc_core::sc_in< sc_dt::sc_bv<32> > S00_AXI_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<3> > S00_AXI_awprot;
  sc_core::sc_in< bool > S00_AXI_awvalid;
  sc_core::sc_out< bool > S00_AXI_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > S00_AXI_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > S00_AXI_wstrb;
  sc_core::sc_in< bool > S00_AXI_wvalid;
  sc_core::sc_out< bool > S00_AXI_wready;
  sc_core::sc_out< sc_dt::sc_bv<2> > S00_AXI_bresp;
  sc_core::sc_out< bool > S00_AXI_bvalid;
  sc_core::sc_in< bool > S00_AXI_bready;
  sc_core::sc_in< sc_dt::sc_bv<32> > S00_AXI_araddr;
  sc_core::sc_in< sc_dt::sc_bv<3> > S00_AXI_arprot;
  sc_core::sc_in< bool > S00_AXI_arvalid;
  sc_core::sc_out< bool > S00_AXI_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > S00_AXI_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > S00_AXI_rresp;
  sc_core::sc_out< bool > S00_AXI_rvalid;
  sc_core::sc_in< bool > S00_AXI_rready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M00_AXI_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M00_AXI_awprot;
  sc_core::sc_out< bool > M00_AXI_awvalid;
  sc_core::sc_in< bool > M00_AXI_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M00_AXI_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > M00_AXI_wstrb;
  sc_core::sc_out< bool > M00_AXI_wvalid;
  sc_core::sc_in< bool > M00_AXI_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > M00_AXI_bresp;
  sc_core::sc_in< bool > M00_AXI_bvalid;
  sc_core::sc_out< bool > M00_AXI_bready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M00_AXI_araddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M00_AXI_arprot;
  sc_core::sc_out< bool > M00_AXI_arvalid;
  sc_core::sc_in< bool > M00_AXI_arready;
  sc_core::sc_in< sc_dt::sc_bv<32> > M00_AXI_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > M00_AXI_rresp;
  sc_core::sc_in< bool > M00_AXI_rvalid;
  sc_core::sc_out< bool > M00_AXI_rready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M01_AXI_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M01_AXI_awprot;
  sc_core::sc_out< bool > M01_AXI_awvalid;
  sc_core::sc_in< bool > M01_AXI_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M01_AXI_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > M01_AXI_wstrb;
  sc_core::sc_out< bool > M01_AXI_wvalid;
  sc_core::sc_in< bool > M01_AXI_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > M01_AXI_bresp;
  sc_core::sc_in< bool > M01_AXI_bvalid;
  sc_core::sc_out< bool > M01_AXI_bready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M01_AXI_araddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M01_AXI_arprot;
  sc_core::sc_out< bool > M01_AXI_arvalid;
  sc_core::sc_in< bool > M01_AXI_arready;
  sc_core::sc_in< sc_dt::sc_bv<32> > M01_AXI_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > M01_AXI_rresp;
  sc_core::sc_in< bool > M01_AXI_rvalid;
  sc_core::sc_out< bool > M01_AXI_rready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M02_AXI_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M02_AXI_awprot;
  sc_core::sc_out< bool > M02_AXI_awvalid;
  sc_core::sc_in< bool > M02_AXI_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M02_AXI_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > M02_AXI_wstrb;
  sc_core::sc_out< bool > M02_AXI_wvalid;
  sc_core::sc_in< bool > M02_AXI_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > M02_AXI_bresp;
  sc_core::sc_in< bool > M02_AXI_bvalid;
  sc_core::sc_out< bool > M02_AXI_bready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M02_AXI_araddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M02_AXI_arprot;
  sc_core::sc_out< bool > M02_AXI_arvalid;
  sc_core::sc_in< bool > M02_AXI_arready;
  sc_core::sc_in< sc_dt::sc_bv<32> > M02_AXI_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > M02_AXI_rresp;
  sc_core::sc_in< bool > M02_AXI_rvalid;
  sc_core::sc_out< bool > M02_AXI_rready;

protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>* mp_S00_AXI_transactor;
  xtlm::xaximm_xtlm2pin_t<32,32,1,1,1,1,1,1>* mp_M00_AXI_transactor;
  xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>* mp_M01_AXI_transactor;
  xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>* mp_M02_AXI_transactor;

};
#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
class DllExport design_1_smartconnect_0_0 : public design_1_smartconnect_0_0_sc
{
public:

  design_1_smartconnect_0_0(const sc_core::sc_module_name& nm);
  virtual ~design_1_smartconnect_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > aclk;
  sc_core::sc_in< bool > aresetn;
  sc_core::sc_in< sc_dt::sc_bv<32> > S00_AXI_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<3> > S00_AXI_awprot;
  sc_core::sc_in< bool > S00_AXI_awvalid;
  sc_core::sc_out< bool > S00_AXI_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > S00_AXI_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > S00_AXI_wstrb;
  sc_core::sc_in< bool > S00_AXI_wvalid;
  sc_core::sc_out< bool > S00_AXI_wready;
  sc_core::sc_out< sc_dt::sc_bv<2> > S00_AXI_bresp;
  sc_core::sc_out< bool > S00_AXI_bvalid;
  sc_core::sc_in< bool > S00_AXI_bready;
  sc_core::sc_in< sc_dt::sc_bv<32> > S00_AXI_araddr;
  sc_core::sc_in< sc_dt::sc_bv<3> > S00_AXI_arprot;
  sc_core::sc_in< bool > S00_AXI_arvalid;
  sc_core::sc_out< bool > S00_AXI_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > S00_AXI_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > S00_AXI_rresp;
  sc_core::sc_out< bool > S00_AXI_rvalid;
  sc_core::sc_in< bool > S00_AXI_rready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M00_AXI_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M00_AXI_awprot;
  sc_core::sc_out< bool > M00_AXI_awvalid;
  sc_core::sc_in< bool > M00_AXI_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M00_AXI_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > M00_AXI_wstrb;
  sc_core::sc_out< bool > M00_AXI_wvalid;
  sc_core::sc_in< bool > M00_AXI_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > M00_AXI_bresp;
  sc_core::sc_in< bool > M00_AXI_bvalid;
  sc_core::sc_out< bool > M00_AXI_bready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M00_AXI_araddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M00_AXI_arprot;
  sc_core::sc_out< bool > M00_AXI_arvalid;
  sc_core::sc_in< bool > M00_AXI_arready;
  sc_core::sc_in< sc_dt::sc_bv<32> > M00_AXI_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > M00_AXI_rresp;
  sc_core::sc_in< bool > M00_AXI_rvalid;
  sc_core::sc_out< bool > M00_AXI_rready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M01_AXI_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M01_AXI_awprot;
  sc_core::sc_out< bool > M01_AXI_awvalid;
  sc_core::sc_in< bool > M01_AXI_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M01_AXI_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > M01_AXI_wstrb;
  sc_core::sc_out< bool > M01_AXI_wvalid;
  sc_core::sc_in< bool > M01_AXI_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > M01_AXI_bresp;
  sc_core::sc_in< bool > M01_AXI_bvalid;
  sc_core::sc_out< bool > M01_AXI_bready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M01_AXI_araddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M01_AXI_arprot;
  sc_core::sc_out< bool > M01_AXI_arvalid;
  sc_core::sc_in< bool > M01_AXI_arready;
  sc_core::sc_in< sc_dt::sc_bv<32> > M01_AXI_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > M01_AXI_rresp;
  sc_core::sc_in< bool > M01_AXI_rvalid;
  sc_core::sc_out< bool > M01_AXI_rready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M02_AXI_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M02_AXI_awprot;
  sc_core::sc_out< bool > M02_AXI_awvalid;
  sc_core::sc_in< bool > M02_AXI_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M02_AXI_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > M02_AXI_wstrb;
  sc_core::sc_out< bool > M02_AXI_wvalid;
  sc_core::sc_in< bool > M02_AXI_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > M02_AXI_bresp;
  sc_core::sc_in< bool > M02_AXI_bvalid;
  sc_core::sc_out< bool > M02_AXI_bready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M02_AXI_araddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M02_AXI_arprot;
  sc_core::sc_out< bool > M02_AXI_arvalid;
  sc_core::sc_in< bool > M02_AXI_arready;
  sc_core::sc_in< sc_dt::sc_bv<32> > M02_AXI_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > M02_AXI_rresp;
  sc_core::sc_in< bool > M02_AXI_rvalid;
  sc_core::sc_out< bool > M02_AXI_rready;

protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>* mp_S00_AXI_transactor;
  xtlm::xaximm_xtlm2pin_t<32,32,1,1,1,1,1,1>* mp_M00_AXI_transactor;
  xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>* mp_M01_AXI_transactor;
  xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>* mp_M02_AXI_transactor;

};
#endif // XM_SYSTEMC




#ifdef RIVIERA
class DllExport design_1_smartconnect_0_0 : public design_1_smartconnect_0_0_sc
{
public:

  design_1_smartconnect_0_0(const sc_core::sc_module_name& nm);
  virtual ~design_1_smartconnect_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > aclk;
  sc_core::sc_in< bool > aresetn;
  sc_core::sc_in< sc_dt::sc_bv<32> > S00_AXI_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<3> > S00_AXI_awprot;
  sc_core::sc_in< bool > S00_AXI_awvalid;
  sc_core::sc_out< bool > S00_AXI_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > S00_AXI_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > S00_AXI_wstrb;
  sc_core::sc_in< bool > S00_AXI_wvalid;
  sc_core::sc_out< bool > S00_AXI_wready;
  sc_core::sc_out< sc_dt::sc_bv<2> > S00_AXI_bresp;
  sc_core::sc_out< bool > S00_AXI_bvalid;
  sc_core::sc_in< bool > S00_AXI_bready;
  sc_core::sc_in< sc_dt::sc_bv<32> > S00_AXI_araddr;
  sc_core::sc_in< sc_dt::sc_bv<3> > S00_AXI_arprot;
  sc_core::sc_in< bool > S00_AXI_arvalid;
  sc_core::sc_out< bool > S00_AXI_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > S00_AXI_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > S00_AXI_rresp;
  sc_core::sc_out< bool > S00_AXI_rvalid;
  sc_core::sc_in< bool > S00_AXI_rready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M00_AXI_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M00_AXI_awprot;
  sc_core::sc_out< bool > M00_AXI_awvalid;
  sc_core::sc_in< bool > M00_AXI_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M00_AXI_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > M00_AXI_wstrb;
  sc_core::sc_out< bool > M00_AXI_wvalid;
  sc_core::sc_in< bool > M00_AXI_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > M00_AXI_bresp;
  sc_core::sc_in< bool > M00_AXI_bvalid;
  sc_core::sc_out< bool > M00_AXI_bready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M00_AXI_araddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M00_AXI_arprot;
  sc_core::sc_out< bool > M00_AXI_arvalid;
  sc_core::sc_in< bool > M00_AXI_arready;
  sc_core::sc_in< sc_dt::sc_bv<32> > M00_AXI_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > M00_AXI_rresp;
  sc_core::sc_in< bool > M00_AXI_rvalid;
  sc_core::sc_out< bool > M00_AXI_rready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M01_AXI_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M01_AXI_awprot;
  sc_core::sc_out< bool > M01_AXI_awvalid;
  sc_core::sc_in< bool > M01_AXI_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M01_AXI_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > M01_AXI_wstrb;
  sc_core::sc_out< bool > M01_AXI_wvalid;
  sc_core::sc_in< bool > M01_AXI_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > M01_AXI_bresp;
  sc_core::sc_in< bool > M01_AXI_bvalid;
  sc_core::sc_out< bool > M01_AXI_bready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M01_AXI_araddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M01_AXI_arprot;
  sc_core::sc_out< bool > M01_AXI_arvalid;
  sc_core::sc_in< bool > M01_AXI_arready;
  sc_core::sc_in< sc_dt::sc_bv<32> > M01_AXI_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > M01_AXI_rresp;
  sc_core::sc_in< bool > M01_AXI_rvalid;
  sc_core::sc_out< bool > M01_AXI_rready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M02_AXI_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M02_AXI_awprot;
  sc_core::sc_out< bool > M02_AXI_awvalid;
  sc_core::sc_in< bool > M02_AXI_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M02_AXI_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > M02_AXI_wstrb;
  sc_core::sc_out< bool > M02_AXI_wvalid;
  sc_core::sc_in< bool > M02_AXI_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > M02_AXI_bresp;
  sc_core::sc_in< bool > M02_AXI_bvalid;
  sc_core::sc_out< bool > M02_AXI_bready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M02_AXI_araddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M02_AXI_arprot;
  sc_core::sc_out< bool > M02_AXI_arvalid;
  sc_core::sc_in< bool > M02_AXI_arready;
  sc_core::sc_in< sc_dt::sc_bv<32> > M02_AXI_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > M02_AXI_rresp;
  sc_core::sc_in< bool > M02_AXI_rvalid;
  sc_core::sc_out< bool > M02_AXI_rready;

protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>* mp_S00_AXI_transactor;
  xtlm::xaximm_xtlm2pin_t<32,32,1,1,1,1,1,1>* mp_M00_AXI_transactor;
  xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>* mp_M01_AXI_transactor;
  xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>* mp_M02_AXI_transactor;

};
#endif // RIVIERA




#ifdef VCSSYSTEMC
#include "utils/xtlm_aximm_initiator_stub.h"

#include "utils/xtlm_aximm_target_stub.h"

class DllExport design_1_smartconnect_0_0 : public design_1_smartconnect_0_0_sc
{
public:

  design_1_smartconnect_0_0(const sc_core::sc_module_name& nm);
  virtual ~design_1_smartconnect_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > aclk;
  sc_core::sc_in< bool > aresetn;
  sc_core::sc_in< sc_dt::sc_bv<32> > S00_AXI_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<3> > S00_AXI_awprot;
  sc_core::sc_in< bool > S00_AXI_awvalid;
  sc_core::sc_out< bool > S00_AXI_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > S00_AXI_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > S00_AXI_wstrb;
  sc_core::sc_in< bool > S00_AXI_wvalid;
  sc_core::sc_out< bool > S00_AXI_wready;
  sc_core::sc_out< sc_dt::sc_bv<2> > S00_AXI_bresp;
  sc_core::sc_out< bool > S00_AXI_bvalid;
  sc_core::sc_in< bool > S00_AXI_bready;
  sc_core::sc_in< sc_dt::sc_bv<32> > S00_AXI_araddr;
  sc_core::sc_in< sc_dt::sc_bv<3> > S00_AXI_arprot;
  sc_core::sc_in< bool > S00_AXI_arvalid;
  sc_core::sc_out< bool > S00_AXI_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > S00_AXI_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > S00_AXI_rresp;
  sc_core::sc_out< bool > S00_AXI_rvalid;
  sc_core::sc_in< bool > S00_AXI_rready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M00_AXI_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M00_AXI_awprot;
  sc_core::sc_out< bool > M00_AXI_awvalid;
  sc_core::sc_in< bool > M00_AXI_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M00_AXI_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > M00_AXI_wstrb;
  sc_core::sc_out< bool > M00_AXI_wvalid;
  sc_core::sc_in< bool > M00_AXI_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > M00_AXI_bresp;
  sc_core::sc_in< bool > M00_AXI_bvalid;
  sc_core::sc_out< bool > M00_AXI_bready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M00_AXI_araddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M00_AXI_arprot;
  sc_core::sc_out< bool > M00_AXI_arvalid;
  sc_core::sc_in< bool > M00_AXI_arready;
  sc_core::sc_in< sc_dt::sc_bv<32> > M00_AXI_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > M00_AXI_rresp;
  sc_core::sc_in< bool > M00_AXI_rvalid;
  sc_core::sc_out< bool > M00_AXI_rready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M01_AXI_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M01_AXI_awprot;
  sc_core::sc_out< bool > M01_AXI_awvalid;
  sc_core::sc_in< bool > M01_AXI_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M01_AXI_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > M01_AXI_wstrb;
  sc_core::sc_out< bool > M01_AXI_wvalid;
  sc_core::sc_in< bool > M01_AXI_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > M01_AXI_bresp;
  sc_core::sc_in< bool > M01_AXI_bvalid;
  sc_core::sc_out< bool > M01_AXI_bready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M01_AXI_araddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M01_AXI_arprot;
  sc_core::sc_out< bool > M01_AXI_arvalid;
  sc_core::sc_in< bool > M01_AXI_arready;
  sc_core::sc_in< sc_dt::sc_bv<32> > M01_AXI_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > M01_AXI_rresp;
  sc_core::sc_in< bool > M01_AXI_rvalid;
  sc_core::sc_out< bool > M01_AXI_rready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M02_AXI_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M02_AXI_awprot;
  sc_core::sc_out< bool > M02_AXI_awvalid;
  sc_core::sc_in< bool > M02_AXI_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M02_AXI_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > M02_AXI_wstrb;
  sc_core::sc_out< bool > M02_AXI_wvalid;
  sc_core::sc_in< bool > M02_AXI_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > M02_AXI_bresp;
  sc_core::sc_in< bool > M02_AXI_bvalid;
  sc_core::sc_out< bool > M02_AXI_bready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M02_AXI_araddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M02_AXI_arprot;
  sc_core::sc_out< bool > M02_AXI_arvalid;
  sc_core::sc_in< bool > M02_AXI_arready;
  sc_core::sc_in< sc_dt::sc_bv<32> > M02_AXI_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > M02_AXI_rresp;
  sc_core::sc_in< bool > M02_AXI_rvalid;
  sc_core::sc_out< bool > M02_AXI_rready;

protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>* mp_S00_AXI_transactor;
  xtlm::xaximm_xtlm2pin_t<32,32,1,1,1,1,1,1>* mp_M00_AXI_transactor;
  xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>* mp_M01_AXI_transactor;
  xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>* mp_M02_AXI_transactor;

  // Transactor stubs
  xtlm::xtlm_aximm_initiator_stub * M00_AXI_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M00_AXI_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M01_AXI_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M01_AXI_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M02_AXI_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M02_AXI_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_target_stub * S00_AXI_transactor_target_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub * S00_AXI_transactor_target_wr_socket_stub;

  // Socket stubs

};
#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
#include "utils/xtlm_aximm_initiator_stub.h"

#include "utils/xtlm_aximm_target_stub.h"

class DllExport design_1_smartconnect_0_0 : public design_1_smartconnect_0_0_sc
{
public:

  design_1_smartconnect_0_0(const sc_core::sc_module_name& nm);
  virtual ~design_1_smartconnect_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > aclk;
  sc_core::sc_in< bool > aresetn;
  sc_core::sc_in< sc_dt::sc_bv<32> > S00_AXI_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<3> > S00_AXI_awprot;
  sc_core::sc_in< bool > S00_AXI_awvalid;
  sc_core::sc_out< bool > S00_AXI_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > S00_AXI_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > S00_AXI_wstrb;
  sc_core::sc_in< bool > S00_AXI_wvalid;
  sc_core::sc_out< bool > S00_AXI_wready;
  sc_core::sc_out< sc_dt::sc_bv<2> > S00_AXI_bresp;
  sc_core::sc_out< bool > S00_AXI_bvalid;
  sc_core::sc_in< bool > S00_AXI_bready;
  sc_core::sc_in< sc_dt::sc_bv<32> > S00_AXI_araddr;
  sc_core::sc_in< sc_dt::sc_bv<3> > S00_AXI_arprot;
  sc_core::sc_in< bool > S00_AXI_arvalid;
  sc_core::sc_out< bool > S00_AXI_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > S00_AXI_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > S00_AXI_rresp;
  sc_core::sc_out< bool > S00_AXI_rvalid;
  sc_core::sc_in< bool > S00_AXI_rready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M00_AXI_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M00_AXI_awprot;
  sc_core::sc_out< bool > M00_AXI_awvalid;
  sc_core::sc_in< bool > M00_AXI_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M00_AXI_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > M00_AXI_wstrb;
  sc_core::sc_out< bool > M00_AXI_wvalid;
  sc_core::sc_in< bool > M00_AXI_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > M00_AXI_bresp;
  sc_core::sc_in< bool > M00_AXI_bvalid;
  sc_core::sc_out< bool > M00_AXI_bready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M00_AXI_araddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M00_AXI_arprot;
  sc_core::sc_out< bool > M00_AXI_arvalid;
  sc_core::sc_in< bool > M00_AXI_arready;
  sc_core::sc_in< sc_dt::sc_bv<32> > M00_AXI_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > M00_AXI_rresp;
  sc_core::sc_in< bool > M00_AXI_rvalid;
  sc_core::sc_out< bool > M00_AXI_rready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M01_AXI_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M01_AXI_awprot;
  sc_core::sc_out< bool > M01_AXI_awvalid;
  sc_core::sc_in< bool > M01_AXI_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M01_AXI_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > M01_AXI_wstrb;
  sc_core::sc_out< bool > M01_AXI_wvalid;
  sc_core::sc_in< bool > M01_AXI_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > M01_AXI_bresp;
  sc_core::sc_in< bool > M01_AXI_bvalid;
  sc_core::sc_out< bool > M01_AXI_bready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M01_AXI_araddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M01_AXI_arprot;
  sc_core::sc_out< bool > M01_AXI_arvalid;
  sc_core::sc_in< bool > M01_AXI_arready;
  sc_core::sc_in< sc_dt::sc_bv<32> > M01_AXI_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > M01_AXI_rresp;
  sc_core::sc_in< bool > M01_AXI_rvalid;
  sc_core::sc_out< bool > M01_AXI_rready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M02_AXI_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M02_AXI_awprot;
  sc_core::sc_out< bool > M02_AXI_awvalid;
  sc_core::sc_in< bool > M02_AXI_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > M02_AXI_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > M02_AXI_wstrb;
  sc_core::sc_out< bool > M02_AXI_wvalid;
  sc_core::sc_in< bool > M02_AXI_wready;
  sc_core::sc_in< sc_dt::sc_bv<2> > M02_AXI_bresp;
  sc_core::sc_in< bool > M02_AXI_bvalid;
  sc_core::sc_out< bool > M02_AXI_bready;
  sc_core::sc_out< sc_dt::sc_bv<9> > M02_AXI_araddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > M02_AXI_arprot;
  sc_core::sc_out< bool > M02_AXI_arvalid;
  sc_core::sc_in< bool > M02_AXI_arready;
  sc_core::sc_in< sc_dt::sc_bv<32> > M02_AXI_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > M02_AXI_rresp;
  sc_core::sc_in< bool > M02_AXI_rvalid;
  sc_core::sc_out< bool > M02_AXI_rready;

protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>* mp_S00_AXI_transactor;
  xtlm::xaximm_xtlm2pin_t<32,32,1,1,1,1,1,1>* mp_M00_AXI_transactor;
  xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>* mp_M01_AXI_transactor;
  xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>* mp_M02_AXI_transactor;

  // Transactor stubs
  xtlm::xtlm_aximm_initiator_stub * M00_AXI_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M00_AXI_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M01_AXI_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M01_AXI_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M02_AXI_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M02_AXI_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_target_stub * S00_AXI_transactor_target_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub * S00_AXI_transactor_target_wr_socket_stub;

  // Socket stubs

};
#endif // MTI_SYSTEMC
#endif // IP_DESIGN_1_SMARTCONNECT_0_0_H_
