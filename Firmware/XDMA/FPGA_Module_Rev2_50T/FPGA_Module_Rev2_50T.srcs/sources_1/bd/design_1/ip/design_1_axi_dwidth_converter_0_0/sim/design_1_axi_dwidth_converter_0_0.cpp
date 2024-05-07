// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
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


#include "design_1_axi_dwidth_converter_0_0_sc.h"

#include "design_1_axi_dwidth_converter_0_0.h"

#include "axi_dwidth_converter.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
design_1_axi_dwidth_converter_0_0::design_1_axi_dwidth_converter_0_0(const sc_core::sc_module_name& nm) : design_1_axi_dwidth_converter_0_0_sc(nm), s_axi_aclk("s_axi_aclk"), s_axi_aresetn("s_axi_aresetn"), s_axi_arid("s_axi_arid"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arsize("s_axi_arsize"), s_axi_arburst("s_axi_arburst"), s_axi_arlock("s_axi_arlock"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arregion("s_axi_arregion"), s_axi_arqos("s_axi_arqos"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rid("s_axi_rid"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_araddr("m_axi_araddr"), m_axi_arlen("m_axi_arlen"), m_axi_arsize("m_axi_arsize"), m_axi_arburst("m_axi_arburst"), m_axi_arlock("m_axi_arlock"), m_axi_arcache("m_axi_arcache"), m_axi_arprot("m_axi_arprot"), m_axi_arregion("m_axi_arregion"), m_axi_arqos("m_axi_arqos"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rlast("m_axi_rlast"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready"),mp_S_AXI_wr_socket_stub(nullptr),mp_M_AXI_wr_socket_stub(nullptr)
{

  // initialize pins
  mp_impl->s_axi_aclk(s_axi_aclk);
  mp_impl->s_axi_aresetn(s_axi_aresetn);

  // initialize transactors
  mp_S_AXI_transactor = NULL;
  mp_s_axi_arlock_converter = NULL;
  mp_M_AXI_transactor = NULL;
  mp_m_axi_arlock_converter = NULL;

  // initialize socket stubs
  mp_S_AXI_wr_socket_stub = NULL;
  mp_M_AXI_wr_socket_stub = NULL;

}

void design_1_axi_dwidth_converter_0_0::before_end_of_elaboration()
{
  // configure 'S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_dwidth_converter_0_0", "S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S_AXI' transactor parameters
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "128");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "2");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<128,32,2,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);

    // S_AXI' transactor ports

    mp_S_AXI_transactor->ARID(s_axi_arid);
    mp_S_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S_AXI_transactor->ARLEN(s_axi_arlen);
    mp_S_AXI_transactor->ARSIZE(s_axi_arsize);
    mp_S_AXI_transactor->ARBURST(s_axi_arburst);
    mp_s_axi_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_arlock_converter");
    mp_s_axi_arlock_converter->vector_in(s_axi_arlock);
    mp_s_axi_arlock_converter->scalar_out(m_s_axi_arlock_converter_signal);
    mp_S_AXI_transactor->ARLOCK(m_s_axi_arlock_converter_signal);
    mp_S_AXI_transactor->ARCACHE(s_axi_arcache);
    mp_S_AXI_transactor->ARPROT(s_axi_arprot);
    mp_S_AXI_transactor->ARREGION(s_axi_arregion);
    mp_S_AXI_transactor->ARQOS(s_axi_arqos);
    mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXI_transactor->ARREADY(s_axi_arready);
    mp_S_AXI_transactor->RID(s_axi_rid);
    mp_S_AXI_transactor->RDATA(s_axi_rdata);
    mp_S_AXI_transactor->RRESP(s_axi_rresp);
    mp_S_AXI_transactor->RLAST(s_axi_rlast);
    mp_S_AXI_transactor->RVALID(s_axi_rvalid);
    mp_S_AXI_transactor->RREADY(s_axi_rready);
    mp_S_AXI_transactor->CLK(s_axi_aclk);
    m_S_AXI_transactor_rst_signal.write(1);
    mp_S_AXI_transactor->RST(m_S_AXI_transactor_rst_signal);

    // S_AXI' transactor sockets

    mp_impl->target_rd_socket->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->target_wr_socket->bind(mp_S_AXI_wr_socket_stub->initiator_socket);
  }

  // configure 'M_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_dwidth_converter_0_0", "M_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_M_AXI_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket", 0);

  // 'M_AXI' transactor parameters
    xsc::common_cpp::properties M_AXI_transactor_param_props;
    M_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    M_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    M_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    M_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    M_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "128");
    M_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    M_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<256,32,1,1,1,1,1,1>("M_AXI_transactor", M_AXI_transactor_param_props);

    // M_AXI' transactor ports

    mp_M_AXI_transactor->ARADDR(m_axi_araddr);
    mp_M_AXI_transactor->ARLEN(m_axi_arlen);
    mp_M_AXI_transactor->ARSIZE(m_axi_arsize);
    mp_M_AXI_transactor->ARBURST(m_axi_arburst);
    mp_m_axi_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_arlock_converter");
    mp_m_axi_arlock_converter->scalar_in(m_m_axi_arlock_converter_signal);
    mp_m_axi_arlock_converter->vector_out(m_axi_arlock);
    mp_M_AXI_transactor->ARLOCK(m_m_axi_arlock_converter_signal);
    mp_M_AXI_transactor->ARCACHE(m_axi_arcache);
    mp_M_AXI_transactor->ARPROT(m_axi_arprot);
    mp_M_AXI_transactor->ARREGION(m_axi_arregion);
    mp_M_AXI_transactor->ARQOS(m_axi_arqos);
    mp_M_AXI_transactor->ARVALID(m_axi_arvalid);
    mp_M_AXI_transactor->ARREADY(m_axi_arready);
    mp_M_AXI_transactor->RDATA(m_axi_rdata);
    mp_M_AXI_transactor->RRESP(m_axi_rresp);
    mp_M_AXI_transactor->RLAST(m_axi_rlast);
    mp_M_AXI_transactor->RVALID(m_axi_rvalid);
    mp_M_AXI_transactor->RREADY(m_axi_rready);
    mp_M_AXI_transactor->CLK(s_axi_aclk);
    m_M_AXI_transactor_rst_signal.write(1);
    mp_M_AXI_transactor->RST(m_M_AXI_transactor_rst_signal);

    // M_AXI' transactor sockets

    mp_impl->initiator_rd_socket->bind(*(mp_M_AXI_transactor->rd_socket));
    mp_impl->initiator_wr_socket->bind(mp_M_AXI_wr_socket_stub->target_socket);
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
design_1_axi_dwidth_converter_0_0::design_1_axi_dwidth_converter_0_0(const sc_core::sc_module_name& nm) : design_1_axi_dwidth_converter_0_0_sc(nm), s_axi_aclk("s_axi_aclk"), s_axi_aresetn("s_axi_aresetn"), s_axi_arid("s_axi_arid"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arsize("s_axi_arsize"), s_axi_arburst("s_axi_arburst"), s_axi_arlock("s_axi_arlock"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arregion("s_axi_arregion"), s_axi_arqos("s_axi_arqos"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rid("s_axi_rid"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_araddr("m_axi_araddr"), m_axi_arlen("m_axi_arlen"), m_axi_arsize("m_axi_arsize"), m_axi_arburst("m_axi_arburst"), m_axi_arlock("m_axi_arlock"), m_axi_arcache("m_axi_arcache"), m_axi_arprot("m_axi_arprot"), m_axi_arregion("m_axi_arregion"), m_axi_arqos("m_axi_arqos"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rlast("m_axi_rlast"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready"),mp_S_AXI_wr_socket_stub(nullptr),mp_M_AXI_wr_socket_stub(nullptr)
{

  // initialize pins
  mp_impl->s_axi_aclk(s_axi_aclk);
  mp_impl->s_axi_aresetn(s_axi_aresetn);

  // initialize transactors
  mp_S_AXI_transactor = NULL;
  mp_s_axi_arlock_converter = NULL;
  mp_M_AXI_transactor = NULL;
  mp_m_axi_arlock_converter = NULL;

  // initialize socket stubs
  mp_S_AXI_wr_socket_stub = NULL;
  mp_M_AXI_wr_socket_stub = NULL;

}

void design_1_axi_dwidth_converter_0_0::before_end_of_elaboration()
{
  // configure 'S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_dwidth_converter_0_0", "S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S_AXI' transactor parameters
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "128");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "2");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<128,32,2,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);

    // S_AXI' transactor ports

    mp_S_AXI_transactor->ARID(s_axi_arid);
    mp_S_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S_AXI_transactor->ARLEN(s_axi_arlen);
    mp_S_AXI_transactor->ARSIZE(s_axi_arsize);
    mp_S_AXI_transactor->ARBURST(s_axi_arburst);
    mp_s_axi_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_arlock_converter");
    mp_s_axi_arlock_converter->vector_in(s_axi_arlock);
    mp_s_axi_arlock_converter->scalar_out(m_s_axi_arlock_converter_signal);
    mp_S_AXI_transactor->ARLOCK(m_s_axi_arlock_converter_signal);
    mp_S_AXI_transactor->ARCACHE(s_axi_arcache);
    mp_S_AXI_transactor->ARPROT(s_axi_arprot);
    mp_S_AXI_transactor->ARREGION(s_axi_arregion);
    mp_S_AXI_transactor->ARQOS(s_axi_arqos);
    mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXI_transactor->ARREADY(s_axi_arready);
    mp_S_AXI_transactor->RID(s_axi_rid);
    mp_S_AXI_transactor->RDATA(s_axi_rdata);
    mp_S_AXI_transactor->RRESP(s_axi_rresp);
    mp_S_AXI_transactor->RLAST(s_axi_rlast);
    mp_S_AXI_transactor->RVALID(s_axi_rvalid);
    mp_S_AXI_transactor->RREADY(s_axi_rready);
    mp_S_AXI_transactor->CLK(s_axi_aclk);
    m_S_AXI_transactor_rst_signal.write(1);
    mp_S_AXI_transactor->RST(m_S_AXI_transactor_rst_signal);

    // S_AXI' transactor sockets

    mp_impl->target_rd_socket->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->target_wr_socket->bind(mp_S_AXI_wr_socket_stub->initiator_socket);
  }

  // configure 'M_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_dwidth_converter_0_0", "M_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_M_AXI_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket", 0);

  // 'M_AXI' transactor parameters
    xsc::common_cpp::properties M_AXI_transactor_param_props;
    M_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    M_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    M_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    M_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    M_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "128");
    M_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    M_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<256,32,1,1,1,1,1,1>("M_AXI_transactor", M_AXI_transactor_param_props);

    // M_AXI' transactor ports

    mp_M_AXI_transactor->ARADDR(m_axi_araddr);
    mp_M_AXI_transactor->ARLEN(m_axi_arlen);
    mp_M_AXI_transactor->ARSIZE(m_axi_arsize);
    mp_M_AXI_transactor->ARBURST(m_axi_arburst);
    mp_m_axi_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_arlock_converter");
    mp_m_axi_arlock_converter->scalar_in(m_m_axi_arlock_converter_signal);
    mp_m_axi_arlock_converter->vector_out(m_axi_arlock);
    mp_M_AXI_transactor->ARLOCK(m_m_axi_arlock_converter_signal);
    mp_M_AXI_transactor->ARCACHE(m_axi_arcache);
    mp_M_AXI_transactor->ARPROT(m_axi_arprot);
    mp_M_AXI_transactor->ARREGION(m_axi_arregion);
    mp_M_AXI_transactor->ARQOS(m_axi_arqos);
    mp_M_AXI_transactor->ARVALID(m_axi_arvalid);
    mp_M_AXI_transactor->ARREADY(m_axi_arready);
    mp_M_AXI_transactor->RDATA(m_axi_rdata);
    mp_M_AXI_transactor->RRESP(m_axi_rresp);
    mp_M_AXI_transactor->RLAST(m_axi_rlast);
    mp_M_AXI_transactor->RVALID(m_axi_rvalid);
    mp_M_AXI_transactor->RREADY(m_axi_rready);
    mp_M_AXI_transactor->CLK(s_axi_aclk);
    m_M_AXI_transactor_rst_signal.write(1);
    mp_M_AXI_transactor->RST(m_M_AXI_transactor_rst_signal);

    // M_AXI' transactor sockets

    mp_impl->initiator_rd_socket->bind(*(mp_M_AXI_transactor->rd_socket));
    mp_impl->initiator_wr_socket->bind(mp_M_AXI_wr_socket_stub->target_socket);
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
design_1_axi_dwidth_converter_0_0::design_1_axi_dwidth_converter_0_0(const sc_core::sc_module_name& nm) : design_1_axi_dwidth_converter_0_0_sc(nm), s_axi_aclk("s_axi_aclk"), s_axi_aresetn("s_axi_aresetn"), s_axi_arid("s_axi_arid"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arsize("s_axi_arsize"), s_axi_arburst("s_axi_arburst"), s_axi_arlock("s_axi_arlock"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arregion("s_axi_arregion"), s_axi_arqos("s_axi_arqos"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rid("s_axi_rid"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_araddr("m_axi_araddr"), m_axi_arlen("m_axi_arlen"), m_axi_arsize("m_axi_arsize"), m_axi_arburst("m_axi_arburst"), m_axi_arlock("m_axi_arlock"), m_axi_arcache("m_axi_arcache"), m_axi_arprot("m_axi_arprot"), m_axi_arregion("m_axi_arregion"), m_axi_arqos("m_axi_arqos"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rlast("m_axi_rlast"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready"),mp_S_AXI_wr_socket_stub(nullptr),mp_M_AXI_wr_socket_stub(nullptr)
{

  // initialize pins
  mp_impl->s_axi_aclk(s_axi_aclk);
  mp_impl->s_axi_aresetn(s_axi_aresetn);

  // initialize transactors
  mp_S_AXI_transactor = NULL;
  mp_s_axi_arlock_converter = NULL;
  mp_M_AXI_transactor = NULL;
  mp_m_axi_arlock_converter = NULL;

  // initialize socket stubs
  mp_S_AXI_wr_socket_stub = NULL;
  mp_M_AXI_wr_socket_stub = NULL;

}

void design_1_axi_dwidth_converter_0_0::before_end_of_elaboration()
{
  // configure 'S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_dwidth_converter_0_0", "S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S_AXI' transactor parameters
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "128");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "2");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<128,32,2,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);

    // S_AXI' transactor ports

    mp_S_AXI_transactor->ARID(s_axi_arid);
    mp_S_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S_AXI_transactor->ARLEN(s_axi_arlen);
    mp_S_AXI_transactor->ARSIZE(s_axi_arsize);
    mp_S_AXI_transactor->ARBURST(s_axi_arburst);
    mp_s_axi_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_arlock_converter");
    mp_s_axi_arlock_converter->vector_in(s_axi_arlock);
    mp_s_axi_arlock_converter->scalar_out(m_s_axi_arlock_converter_signal);
    mp_S_AXI_transactor->ARLOCK(m_s_axi_arlock_converter_signal);
    mp_S_AXI_transactor->ARCACHE(s_axi_arcache);
    mp_S_AXI_transactor->ARPROT(s_axi_arprot);
    mp_S_AXI_transactor->ARREGION(s_axi_arregion);
    mp_S_AXI_transactor->ARQOS(s_axi_arqos);
    mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXI_transactor->ARREADY(s_axi_arready);
    mp_S_AXI_transactor->RID(s_axi_rid);
    mp_S_AXI_transactor->RDATA(s_axi_rdata);
    mp_S_AXI_transactor->RRESP(s_axi_rresp);
    mp_S_AXI_transactor->RLAST(s_axi_rlast);
    mp_S_AXI_transactor->RVALID(s_axi_rvalid);
    mp_S_AXI_transactor->RREADY(s_axi_rready);
    mp_S_AXI_transactor->CLK(s_axi_aclk);
    m_S_AXI_transactor_rst_signal.write(1);
    mp_S_AXI_transactor->RST(m_S_AXI_transactor_rst_signal);

    // S_AXI' transactor sockets

    mp_impl->target_rd_socket->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->target_wr_socket->bind(mp_S_AXI_wr_socket_stub->initiator_socket);
  }

  // configure 'M_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_dwidth_converter_0_0", "M_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_M_AXI_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket", 0);

  // 'M_AXI' transactor parameters
    xsc::common_cpp::properties M_AXI_transactor_param_props;
    M_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    M_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    M_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    M_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    M_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "128");
    M_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    M_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<256,32,1,1,1,1,1,1>("M_AXI_transactor", M_AXI_transactor_param_props);

    // M_AXI' transactor ports

    mp_M_AXI_transactor->ARADDR(m_axi_araddr);
    mp_M_AXI_transactor->ARLEN(m_axi_arlen);
    mp_M_AXI_transactor->ARSIZE(m_axi_arsize);
    mp_M_AXI_transactor->ARBURST(m_axi_arburst);
    mp_m_axi_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_arlock_converter");
    mp_m_axi_arlock_converter->scalar_in(m_m_axi_arlock_converter_signal);
    mp_m_axi_arlock_converter->vector_out(m_axi_arlock);
    mp_M_AXI_transactor->ARLOCK(m_m_axi_arlock_converter_signal);
    mp_M_AXI_transactor->ARCACHE(m_axi_arcache);
    mp_M_AXI_transactor->ARPROT(m_axi_arprot);
    mp_M_AXI_transactor->ARREGION(m_axi_arregion);
    mp_M_AXI_transactor->ARQOS(m_axi_arqos);
    mp_M_AXI_transactor->ARVALID(m_axi_arvalid);
    mp_M_AXI_transactor->ARREADY(m_axi_arready);
    mp_M_AXI_transactor->RDATA(m_axi_rdata);
    mp_M_AXI_transactor->RRESP(m_axi_rresp);
    mp_M_AXI_transactor->RLAST(m_axi_rlast);
    mp_M_AXI_transactor->RVALID(m_axi_rvalid);
    mp_M_AXI_transactor->RREADY(m_axi_rready);
    mp_M_AXI_transactor->CLK(s_axi_aclk);
    m_M_AXI_transactor_rst_signal.write(1);
    mp_M_AXI_transactor->RST(m_M_AXI_transactor_rst_signal);

    // M_AXI' transactor sockets

    mp_impl->initiator_rd_socket->bind(*(mp_M_AXI_transactor->rd_socket));
    mp_impl->initiator_wr_socket->bind(mp_M_AXI_wr_socket_stub->target_socket);
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
design_1_axi_dwidth_converter_0_0::design_1_axi_dwidth_converter_0_0(const sc_core::sc_module_name& nm) : design_1_axi_dwidth_converter_0_0_sc(nm),  s_axi_aclk("s_axi_aclk"), s_axi_aresetn("s_axi_aresetn"), s_axi_arid("s_axi_arid"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arsize("s_axi_arsize"), s_axi_arburst("s_axi_arburst"), s_axi_arlock("s_axi_arlock"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arregion("s_axi_arregion"), s_axi_arqos("s_axi_arqos"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rid("s_axi_rid"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_araddr("m_axi_araddr"), m_axi_arlen("m_axi_arlen"), m_axi_arsize("m_axi_arsize"), m_axi_arburst("m_axi_arburst"), m_axi_arlock("m_axi_arlock"), m_axi_arcache("m_axi_arcache"), m_axi_arprot("m_axi_arprot"), m_axi_arregion("m_axi_arregion"), m_axi_arqos("m_axi_arqos"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rlast("m_axi_rlast"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready"),mp_S_AXI_wr_socket_stub(nullptr),mp_M_AXI_wr_socket_stub(nullptr)
{
  // initialize pins
  mp_impl->s_axi_aclk(s_axi_aclk);
  mp_impl->s_axi_aresetn(s_axi_aresetn);

  // initialize transactors
  mp_S_AXI_transactor = NULL;
  mp_s_axi_arlock_converter = NULL;
  mp_M_AXI_transactor = NULL;
  mp_m_axi_arlock_converter = NULL;
  // Instantiate Socket Stubs
  mp_S_AXI_wr_socket_stub = NULL;
  mp_M_AXI_wr_socket_stub = NULL;

  // configure S_AXI_transactor
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "128");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "2");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<128,32,2,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);
  mp_S_AXI_transactor->ARID(s_axi_arid);
  mp_S_AXI_transactor->ARADDR(s_axi_araddr);
  mp_S_AXI_transactor->ARLEN(s_axi_arlen);
  mp_S_AXI_transactor->ARSIZE(s_axi_arsize);
  mp_S_AXI_transactor->ARBURST(s_axi_arburst);
  mp_s_axi_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_arlock_converter");
  mp_s_axi_arlock_converter->vector_in(s_axi_arlock);
  mp_s_axi_arlock_converter->scalar_out(m_s_axi_arlock_converter_signal);
  mp_S_AXI_transactor->ARLOCK(m_s_axi_arlock_converter_signal);
  mp_S_AXI_transactor->ARCACHE(s_axi_arcache);
  mp_S_AXI_transactor->ARPROT(s_axi_arprot);
  mp_S_AXI_transactor->ARREGION(s_axi_arregion);
  mp_S_AXI_transactor->ARQOS(s_axi_arqos);
  mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
  mp_S_AXI_transactor->ARREADY(s_axi_arready);
  mp_S_AXI_transactor->RID(s_axi_rid);
  mp_S_AXI_transactor->RDATA(s_axi_rdata);
  mp_S_AXI_transactor->RRESP(s_axi_rresp);
  mp_S_AXI_transactor->RLAST(s_axi_rlast);
  mp_S_AXI_transactor->RVALID(s_axi_rvalid);
  mp_S_AXI_transactor->RREADY(s_axi_rready);
  mp_S_AXI_transactor->CLK(s_axi_aclk);
  m_S_AXI_transactor_rst_signal.write(1);
  mp_S_AXI_transactor->RST(m_S_AXI_transactor_rst_signal);

  // configure M_AXI_transactor
    xsc::common_cpp::properties M_AXI_transactor_param_props;
    M_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    M_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    M_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    M_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    M_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "128");
    M_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    M_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<256,32,1,1,1,1,1,1>("M_AXI_transactor", M_AXI_transactor_param_props);
  mp_M_AXI_transactor->ARADDR(m_axi_araddr);
  mp_M_AXI_transactor->ARLEN(m_axi_arlen);
  mp_M_AXI_transactor->ARSIZE(m_axi_arsize);
  mp_M_AXI_transactor->ARBURST(m_axi_arburst);
  mp_m_axi_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_arlock_converter");
  mp_m_axi_arlock_converter->scalar_in(m_m_axi_arlock_converter_signal);
  mp_m_axi_arlock_converter->vector_out(m_axi_arlock);
  mp_M_AXI_transactor->ARLOCK(m_m_axi_arlock_converter_signal);
  mp_M_AXI_transactor->ARCACHE(m_axi_arcache);
  mp_M_AXI_transactor->ARPROT(m_axi_arprot);
  mp_M_AXI_transactor->ARREGION(m_axi_arregion);
  mp_M_AXI_transactor->ARQOS(m_axi_arqos);
  mp_M_AXI_transactor->ARVALID(m_axi_arvalid);
  mp_M_AXI_transactor->ARREADY(m_axi_arready);
  mp_M_AXI_transactor->RDATA(m_axi_rdata);
  mp_M_AXI_transactor->RRESP(m_axi_rresp);
  mp_M_AXI_transactor->RLAST(m_axi_rlast);
  mp_M_AXI_transactor->RVALID(m_axi_rvalid);
  mp_M_AXI_transactor->RREADY(m_axi_rready);
  mp_M_AXI_transactor->CLK(s_axi_aclk);
  m_M_AXI_transactor_rst_signal.write(1);
  mp_M_AXI_transactor->RST(m_M_AXI_transactor_rst_signal);


  // initialize transactors stubs
  S_AXI_transactor_target_rd_socket_stub = nullptr;
  M_AXI_transactor_initiator_rd_socket_stub = nullptr;

}

void design_1_axi_dwidth_converter_0_0::before_end_of_elaboration()
{
  // configure 'S_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_dwidth_converter_0_0", "S_AXI_TLM_MODE") != 1)
  {
    mp_impl->target_rd_socket->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_S_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->target_wr_socket->bind(mp_S_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
    S_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_S_AXI_transactor->disable_transactor();
  }

  // configure 'M_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_dwidth_converter_0_0", "M_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_rd_socket->bind(*(mp_M_AXI_transactor->rd_socket));
    mp_M_AXI_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket", 0);
    mp_impl->initiator_wr_socket->bind(mp_M_AXI_wr_socket_stub->target_socket);
  }
  else
  {
    M_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXI_transactor->rd_socket));
    mp_M_AXI_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
design_1_axi_dwidth_converter_0_0::design_1_axi_dwidth_converter_0_0(const sc_core::sc_module_name& nm) : design_1_axi_dwidth_converter_0_0_sc(nm),  s_axi_aclk("s_axi_aclk"), s_axi_aresetn("s_axi_aresetn"), s_axi_arid("s_axi_arid"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arsize("s_axi_arsize"), s_axi_arburst("s_axi_arburst"), s_axi_arlock("s_axi_arlock"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arregion("s_axi_arregion"), s_axi_arqos("s_axi_arqos"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rid("s_axi_rid"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_araddr("m_axi_araddr"), m_axi_arlen("m_axi_arlen"), m_axi_arsize("m_axi_arsize"), m_axi_arburst("m_axi_arburst"), m_axi_arlock("m_axi_arlock"), m_axi_arcache("m_axi_arcache"), m_axi_arprot("m_axi_arprot"), m_axi_arregion("m_axi_arregion"), m_axi_arqos("m_axi_arqos"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rlast("m_axi_rlast"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready"),mp_S_AXI_wr_socket_stub(nullptr),mp_M_AXI_wr_socket_stub(nullptr)
{
  // initialize pins
  mp_impl->s_axi_aclk(s_axi_aclk);
  mp_impl->s_axi_aresetn(s_axi_aresetn);

  // initialize transactors
  mp_S_AXI_transactor = NULL;
  mp_s_axi_arlock_converter = NULL;
  mp_M_AXI_transactor = NULL;
  mp_m_axi_arlock_converter = NULL;
  // Instantiate Socket Stubs
  mp_S_AXI_wr_socket_stub = NULL;
  mp_M_AXI_wr_socket_stub = NULL;

  // configure S_AXI_transactor
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "128");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "2");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "0");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<128,32,2,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);
  mp_S_AXI_transactor->ARID(s_axi_arid);
  mp_S_AXI_transactor->ARADDR(s_axi_araddr);
  mp_S_AXI_transactor->ARLEN(s_axi_arlen);
  mp_S_AXI_transactor->ARSIZE(s_axi_arsize);
  mp_S_AXI_transactor->ARBURST(s_axi_arburst);
  mp_s_axi_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_arlock_converter");
  mp_s_axi_arlock_converter->vector_in(s_axi_arlock);
  mp_s_axi_arlock_converter->scalar_out(m_s_axi_arlock_converter_signal);
  mp_S_AXI_transactor->ARLOCK(m_s_axi_arlock_converter_signal);
  mp_S_AXI_transactor->ARCACHE(s_axi_arcache);
  mp_S_AXI_transactor->ARPROT(s_axi_arprot);
  mp_S_AXI_transactor->ARREGION(s_axi_arregion);
  mp_S_AXI_transactor->ARQOS(s_axi_arqos);
  mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
  mp_S_AXI_transactor->ARREADY(s_axi_arready);
  mp_S_AXI_transactor->RID(s_axi_rid);
  mp_S_AXI_transactor->RDATA(s_axi_rdata);
  mp_S_AXI_transactor->RRESP(s_axi_rresp);
  mp_S_AXI_transactor->RLAST(s_axi_rlast);
  mp_S_AXI_transactor->RVALID(s_axi_rvalid);
  mp_S_AXI_transactor->RREADY(s_axi_rready);
  mp_S_AXI_transactor->CLK(s_axi_aclk);
  m_S_AXI_transactor_rst_signal.write(1);
  mp_S_AXI_transactor->RST(m_S_AXI_transactor_rst_signal);

  // configure M_AXI_transactor
    xsc::common_cpp::properties M_AXI_transactor_param_props;
    M_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    M_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    M_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    M_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    M_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "128");
    M_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    M_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<256,32,1,1,1,1,1,1>("M_AXI_transactor", M_AXI_transactor_param_props);
  mp_M_AXI_transactor->ARADDR(m_axi_araddr);
  mp_M_AXI_transactor->ARLEN(m_axi_arlen);
  mp_M_AXI_transactor->ARSIZE(m_axi_arsize);
  mp_M_AXI_transactor->ARBURST(m_axi_arburst);
  mp_m_axi_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_arlock_converter");
  mp_m_axi_arlock_converter->scalar_in(m_m_axi_arlock_converter_signal);
  mp_m_axi_arlock_converter->vector_out(m_axi_arlock);
  mp_M_AXI_transactor->ARLOCK(m_m_axi_arlock_converter_signal);
  mp_M_AXI_transactor->ARCACHE(m_axi_arcache);
  mp_M_AXI_transactor->ARPROT(m_axi_arprot);
  mp_M_AXI_transactor->ARREGION(m_axi_arregion);
  mp_M_AXI_transactor->ARQOS(m_axi_arqos);
  mp_M_AXI_transactor->ARVALID(m_axi_arvalid);
  mp_M_AXI_transactor->ARREADY(m_axi_arready);
  mp_M_AXI_transactor->RDATA(m_axi_rdata);
  mp_M_AXI_transactor->RRESP(m_axi_rresp);
  mp_M_AXI_transactor->RLAST(m_axi_rlast);
  mp_M_AXI_transactor->RVALID(m_axi_rvalid);
  mp_M_AXI_transactor->RREADY(m_axi_rready);
  mp_M_AXI_transactor->CLK(s_axi_aclk);
  m_M_AXI_transactor_rst_signal.write(1);
  mp_M_AXI_transactor->RST(m_M_AXI_transactor_rst_signal);


  // initialize transactors stubs
  S_AXI_transactor_target_rd_socket_stub = nullptr;
  M_AXI_transactor_initiator_rd_socket_stub = nullptr;

}

void design_1_axi_dwidth_converter_0_0::before_end_of_elaboration()
{
  // configure 'S_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_dwidth_converter_0_0", "S_AXI_TLM_MODE") != 1)
  {
    mp_impl->target_rd_socket->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_S_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->target_wr_socket->bind(mp_S_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
    S_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_S_AXI_transactor->disable_transactor();
  }

  // configure 'M_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_dwidth_converter_0_0", "M_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_rd_socket->bind(*(mp_M_AXI_transactor->rd_socket));
    mp_M_AXI_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket", 0);
    mp_impl->initiator_wr_socket->bind(mp_M_AXI_wr_socket_stub->target_socket);
  }
  else
  {
    M_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXI_transactor->rd_socket));
    mp_M_AXI_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




design_1_axi_dwidth_converter_0_0::~design_1_axi_dwidth_converter_0_0()
{
  delete mp_S_AXI_transactor;
  delete mp_s_axi_arlock_converter;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_dwidth_converter_0_0", "S_AXI_TLM_MODE") != 1)
  {
    delete mp_S_AXI_wr_socket_stub;
  }

  delete mp_M_AXI_transactor;
  delete mp_m_axi_arlock_converter;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_dwidth_converter_0_0", "M_AXI_TLM_MODE") != 1)
  {
    delete mp_M_AXI_wr_socket_stub;
  }

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(design_1_axi_dwidth_converter_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(design_1_axi_dwidth_converter_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(design_1_axi_dwidth_converter_0_0);
SC_REGISTER_BV(256);
#endif

