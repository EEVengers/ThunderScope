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


#include "design_1_smartconnect_0_0_sc.h"

#include "design_1_smartconnect_0_0.h"

#include "smartconnect.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
design_1_smartconnect_0_0::design_1_smartconnect_0_0(const sc_core::sc_module_name& nm) : design_1_smartconnect_0_0_sc(nm), aclk("aclk"), aresetn("aresetn"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"), M01_AXI_awaddr("M01_AXI_awaddr"), M01_AXI_awprot("M01_AXI_awprot"), M01_AXI_awvalid("M01_AXI_awvalid"), M01_AXI_awready("M01_AXI_awready"), M01_AXI_wdata("M01_AXI_wdata"), M01_AXI_wstrb("M01_AXI_wstrb"), M01_AXI_wvalid("M01_AXI_wvalid"), M01_AXI_wready("M01_AXI_wready"), M01_AXI_bresp("M01_AXI_bresp"), M01_AXI_bvalid("M01_AXI_bvalid"), M01_AXI_bready("M01_AXI_bready"), M01_AXI_araddr("M01_AXI_araddr"), M01_AXI_arprot("M01_AXI_arprot"), M01_AXI_arvalid("M01_AXI_arvalid"), M01_AXI_arready("M01_AXI_arready"), M01_AXI_rdata("M01_AXI_rdata"), M01_AXI_rresp("M01_AXI_rresp"), M01_AXI_rvalid("M01_AXI_rvalid"), M01_AXI_rready("M01_AXI_rready"), M02_AXI_awaddr("M02_AXI_awaddr"), M02_AXI_awprot("M02_AXI_awprot"), M02_AXI_awvalid("M02_AXI_awvalid"), M02_AXI_awready("M02_AXI_awready"), M02_AXI_wdata("M02_AXI_wdata"), M02_AXI_wstrb("M02_AXI_wstrb"), M02_AXI_wvalid("M02_AXI_wvalid"), M02_AXI_wready("M02_AXI_wready"), M02_AXI_bresp("M02_AXI_bresp"), M02_AXI_bvalid("M02_AXI_bvalid"), M02_AXI_bready("M02_AXI_bready"), M02_AXI_araddr("M02_AXI_araddr"), M02_AXI_arprot("M02_AXI_arprot"), M02_AXI_arvalid("M02_AXI_arvalid"), M02_AXI_arready("M02_AXI_arready"), M02_AXI_rdata("M02_AXI_rdata"), M02_AXI_rresp("M02_AXI_rresp"), M02_AXI_rvalid("M02_AXI_rvalid"), M02_AXI_rready("M02_AXI_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M02_AXI_transactor = NULL;

  // initialize socket stubs

}

void design_1_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
    mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
    mp_S00_AXI_transactor->AWVALID(S00_AXI_awvalid);
    mp_S00_AXI_transactor->AWREADY(S00_AXI_awready);
    mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
    mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
    mp_S00_AXI_transactor->WVALID(S00_AXI_wvalid);
    mp_S00_AXI_transactor->WREADY(S00_AXI_wready);
    mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
    mp_S00_AXI_transactor->BVALID(S00_AXI_bvalid);
    mp_S00_AXI_transactor->BREADY(S00_AXI_bready);
    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
    mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,32,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
    mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
    mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
    mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
    mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
    mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
    mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
    mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
    mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
    mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
    mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
    mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
    mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
    mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
    mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
    mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
    mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
    mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
    mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }

  // configure 'M01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M01_AXI' transactor parameters
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "9");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);

    // M01_AXI' transactor ports

    mp_M01_AXI_transactor->AWADDR(M01_AXI_awaddr);
    mp_M01_AXI_transactor->AWPROT(M01_AXI_awprot);
    mp_M01_AXI_transactor->AWVALID(M01_AXI_awvalid);
    mp_M01_AXI_transactor->AWREADY(M01_AXI_awready);
    mp_M01_AXI_transactor->WDATA(M01_AXI_wdata);
    mp_M01_AXI_transactor->WSTRB(M01_AXI_wstrb);
    mp_M01_AXI_transactor->WVALID(M01_AXI_wvalid);
    mp_M01_AXI_transactor->WREADY(M01_AXI_wready);
    mp_M01_AXI_transactor->BRESP(M01_AXI_bresp);
    mp_M01_AXI_transactor->BVALID(M01_AXI_bvalid);
    mp_M01_AXI_transactor->BREADY(M01_AXI_bready);
    mp_M01_AXI_transactor->ARADDR(M01_AXI_araddr);
    mp_M01_AXI_transactor->ARPROT(M01_AXI_arprot);
    mp_M01_AXI_transactor->ARVALID(M01_AXI_arvalid);
    mp_M01_AXI_transactor->ARREADY(M01_AXI_arready);
    mp_M01_AXI_transactor->RDATA(M01_AXI_rdata);
    mp_M01_AXI_transactor->RRESP(M01_AXI_rresp);
    mp_M01_AXI_transactor->RVALID(M01_AXI_rvalid);
    mp_M01_AXI_transactor->RREADY(M01_AXI_rready);
    mp_M01_AXI_transactor->CLK(aclk);
    mp_M01_AXI_transactor->RST(aresetn);

    // M01_AXI' transactor sockets

    mp_impl->M01_AXI_tlm_aximm_read_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->M01_AXI_tlm_aximm_write_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }

  // configure 'M02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M02_AXI' transactor parameters
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "9");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);

    // M02_AXI' transactor ports

    mp_M02_AXI_transactor->AWADDR(M02_AXI_awaddr);
    mp_M02_AXI_transactor->AWPROT(M02_AXI_awprot);
    mp_M02_AXI_transactor->AWVALID(M02_AXI_awvalid);
    mp_M02_AXI_transactor->AWREADY(M02_AXI_awready);
    mp_M02_AXI_transactor->WDATA(M02_AXI_wdata);
    mp_M02_AXI_transactor->WSTRB(M02_AXI_wstrb);
    mp_M02_AXI_transactor->WVALID(M02_AXI_wvalid);
    mp_M02_AXI_transactor->WREADY(M02_AXI_wready);
    mp_M02_AXI_transactor->BRESP(M02_AXI_bresp);
    mp_M02_AXI_transactor->BVALID(M02_AXI_bvalid);
    mp_M02_AXI_transactor->BREADY(M02_AXI_bready);
    mp_M02_AXI_transactor->ARADDR(M02_AXI_araddr);
    mp_M02_AXI_transactor->ARPROT(M02_AXI_arprot);
    mp_M02_AXI_transactor->ARVALID(M02_AXI_arvalid);
    mp_M02_AXI_transactor->ARREADY(M02_AXI_arready);
    mp_M02_AXI_transactor->RDATA(M02_AXI_rdata);
    mp_M02_AXI_transactor->RRESP(M02_AXI_rresp);
    mp_M02_AXI_transactor->RVALID(M02_AXI_rvalid);
    mp_M02_AXI_transactor->RREADY(M02_AXI_rready);
    mp_M02_AXI_transactor->CLK(aclk);
    mp_M02_AXI_transactor->RST(aresetn);

    // M02_AXI' transactor sockets

    mp_impl->M02_AXI_tlm_aximm_read_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->M02_AXI_tlm_aximm_write_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
design_1_smartconnect_0_0::design_1_smartconnect_0_0(const sc_core::sc_module_name& nm) : design_1_smartconnect_0_0_sc(nm), aclk("aclk"), aresetn("aresetn"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"), M01_AXI_awaddr("M01_AXI_awaddr"), M01_AXI_awprot("M01_AXI_awprot"), M01_AXI_awvalid("M01_AXI_awvalid"), M01_AXI_awready("M01_AXI_awready"), M01_AXI_wdata("M01_AXI_wdata"), M01_AXI_wstrb("M01_AXI_wstrb"), M01_AXI_wvalid("M01_AXI_wvalid"), M01_AXI_wready("M01_AXI_wready"), M01_AXI_bresp("M01_AXI_bresp"), M01_AXI_bvalid("M01_AXI_bvalid"), M01_AXI_bready("M01_AXI_bready"), M01_AXI_araddr("M01_AXI_araddr"), M01_AXI_arprot("M01_AXI_arprot"), M01_AXI_arvalid("M01_AXI_arvalid"), M01_AXI_arready("M01_AXI_arready"), M01_AXI_rdata("M01_AXI_rdata"), M01_AXI_rresp("M01_AXI_rresp"), M01_AXI_rvalid("M01_AXI_rvalid"), M01_AXI_rready("M01_AXI_rready"), M02_AXI_awaddr("M02_AXI_awaddr"), M02_AXI_awprot("M02_AXI_awprot"), M02_AXI_awvalid("M02_AXI_awvalid"), M02_AXI_awready("M02_AXI_awready"), M02_AXI_wdata("M02_AXI_wdata"), M02_AXI_wstrb("M02_AXI_wstrb"), M02_AXI_wvalid("M02_AXI_wvalid"), M02_AXI_wready("M02_AXI_wready"), M02_AXI_bresp("M02_AXI_bresp"), M02_AXI_bvalid("M02_AXI_bvalid"), M02_AXI_bready("M02_AXI_bready"), M02_AXI_araddr("M02_AXI_araddr"), M02_AXI_arprot("M02_AXI_arprot"), M02_AXI_arvalid("M02_AXI_arvalid"), M02_AXI_arready("M02_AXI_arready"), M02_AXI_rdata("M02_AXI_rdata"), M02_AXI_rresp("M02_AXI_rresp"), M02_AXI_rvalid("M02_AXI_rvalid"), M02_AXI_rready("M02_AXI_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M02_AXI_transactor = NULL;

  // initialize socket stubs

}

void design_1_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
    mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
    mp_S00_AXI_transactor->AWVALID(S00_AXI_awvalid);
    mp_S00_AXI_transactor->AWREADY(S00_AXI_awready);
    mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
    mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
    mp_S00_AXI_transactor->WVALID(S00_AXI_wvalid);
    mp_S00_AXI_transactor->WREADY(S00_AXI_wready);
    mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
    mp_S00_AXI_transactor->BVALID(S00_AXI_bvalid);
    mp_S00_AXI_transactor->BREADY(S00_AXI_bready);
    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
    mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,32,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
    mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
    mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
    mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
    mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
    mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
    mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
    mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
    mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
    mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
    mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
    mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
    mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
    mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
    mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
    mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
    mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
    mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
    mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }

  // configure 'M01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M01_AXI' transactor parameters
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "9");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);

    // M01_AXI' transactor ports

    mp_M01_AXI_transactor->AWADDR(M01_AXI_awaddr);
    mp_M01_AXI_transactor->AWPROT(M01_AXI_awprot);
    mp_M01_AXI_transactor->AWVALID(M01_AXI_awvalid);
    mp_M01_AXI_transactor->AWREADY(M01_AXI_awready);
    mp_M01_AXI_transactor->WDATA(M01_AXI_wdata);
    mp_M01_AXI_transactor->WSTRB(M01_AXI_wstrb);
    mp_M01_AXI_transactor->WVALID(M01_AXI_wvalid);
    mp_M01_AXI_transactor->WREADY(M01_AXI_wready);
    mp_M01_AXI_transactor->BRESP(M01_AXI_bresp);
    mp_M01_AXI_transactor->BVALID(M01_AXI_bvalid);
    mp_M01_AXI_transactor->BREADY(M01_AXI_bready);
    mp_M01_AXI_transactor->ARADDR(M01_AXI_araddr);
    mp_M01_AXI_transactor->ARPROT(M01_AXI_arprot);
    mp_M01_AXI_transactor->ARVALID(M01_AXI_arvalid);
    mp_M01_AXI_transactor->ARREADY(M01_AXI_arready);
    mp_M01_AXI_transactor->RDATA(M01_AXI_rdata);
    mp_M01_AXI_transactor->RRESP(M01_AXI_rresp);
    mp_M01_AXI_transactor->RVALID(M01_AXI_rvalid);
    mp_M01_AXI_transactor->RREADY(M01_AXI_rready);
    mp_M01_AXI_transactor->CLK(aclk);
    mp_M01_AXI_transactor->RST(aresetn);

    // M01_AXI' transactor sockets

    mp_impl->M01_AXI_tlm_aximm_read_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->M01_AXI_tlm_aximm_write_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }

  // configure 'M02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M02_AXI' transactor parameters
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "9");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);

    // M02_AXI' transactor ports

    mp_M02_AXI_transactor->AWADDR(M02_AXI_awaddr);
    mp_M02_AXI_transactor->AWPROT(M02_AXI_awprot);
    mp_M02_AXI_transactor->AWVALID(M02_AXI_awvalid);
    mp_M02_AXI_transactor->AWREADY(M02_AXI_awready);
    mp_M02_AXI_transactor->WDATA(M02_AXI_wdata);
    mp_M02_AXI_transactor->WSTRB(M02_AXI_wstrb);
    mp_M02_AXI_transactor->WVALID(M02_AXI_wvalid);
    mp_M02_AXI_transactor->WREADY(M02_AXI_wready);
    mp_M02_AXI_transactor->BRESP(M02_AXI_bresp);
    mp_M02_AXI_transactor->BVALID(M02_AXI_bvalid);
    mp_M02_AXI_transactor->BREADY(M02_AXI_bready);
    mp_M02_AXI_transactor->ARADDR(M02_AXI_araddr);
    mp_M02_AXI_transactor->ARPROT(M02_AXI_arprot);
    mp_M02_AXI_transactor->ARVALID(M02_AXI_arvalid);
    mp_M02_AXI_transactor->ARREADY(M02_AXI_arready);
    mp_M02_AXI_transactor->RDATA(M02_AXI_rdata);
    mp_M02_AXI_transactor->RRESP(M02_AXI_rresp);
    mp_M02_AXI_transactor->RVALID(M02_AXI_rvalid);
    mp_M02_AXI_transactor->RREADY(M02_AXI_rready);
    mp_M02_AXI_transactor->CLK(aclk);
    mp_M02_AXI_transactor->RST(aresetn);

    // M02_AXI' transactor sockets

    mp_impl->M02_AXI_tlm_aximm_read_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->M02_AXI_tlm_aximm_write_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
design_1_smartconnect_0_0::design_1_smartconnect_0_0(const sc_core::sc_module_name& nm) : design_1_smartconnect_0_0_sc(nm), aclk("aclk"), aresetn("aresetn"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"), M01_AXI_awaddr("M01_AXI_awaddr"), M01_AXI_awprot("M01_AXI_awprot"), M01_AXI_awvalid("M01_AXI_awvalid"), M01_AXI_awready("M01_AXI_awready"), M01_AXI_wdata("M01_AXI_wdata"), M01_AXI_wstrb("M01_AXI_wstrb"), M01_AXI_wvalid("M01_AXI_wvalid"), M01_AXI_wready("M01_AXI_wready"), M01_AXI_bresp("M01_AXI_bresp"), M01_AXI_bvalid("M01_AXI_bvalid"), M01_AXI_bready("M01_AXI_bready"), M01_AXI_araddr("M01_AXI_araddr"), M01_AXI_arprot("M01_AXI_arprot"), M01_AXI_arvalid("M01_AXI_arvalid"), M01_AXI_arready("M01_AXI_arready"), M01_AXI_rdata("M01_AXI_rdata"), M01_AXI_rresp("M01_AXI_rresp"), M01_AXI_rvalid("M01_AXI_rvalid"), M01_AXI_rready("M01_AXI_rready"), M02_AXI_awaddr("M02_AXI_awaddr"), M02_AXI_awprot("M02_AXI_awprot"), M02_AXI_awvalid("M02_AXI_awvalid"), M02_AXI_awready("M02_AXI_awready"), M02_AXI_wdata("M02_AXI_wdata"), M02_AXI_wstrb("M02_AXI_wstrb"), M02_AXI_wvalid("M02_AXI_wvalid"), M02_AXI_wready("M02_AXI_wready"), M02_AXI_bresp("M02_AXI_bresp"), M02_AXI_bvalid("M02_AXI_bvalid"), M02_AXI_bready("M02_AXI_bready"), M02_AXI_araddr("M02_AXI_araddr"), M02_AXI_arprot("M02_AXI_arprot"), M02_AXI_arvalid("M02_AXI_arvalid"), M02_AXI_arready("M02_AXI_arready"), M02_AXI_rdata("M02_AXI_rdata"), M02_AXI_rresp("M02_AXI_rresp"), M02_AXI_rvalid("M02_AXI_rvalid"), M02_AXI_rready("M02_AXI_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M02_AXI_transactor = NULL;

  // initialize socket stubs

}

void design_1_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
    mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
    mp_S00_AXI_transactor->AWVALID(S00_AXI_awvalid);
    mp_S00_AXI_transactor->AWREADY(S00_AXI_awready);
    mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
    mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
    mp_S00_AXI_transactor->WVALID(S00_AXI_wvalid);
    mp_S00_AXI_transactor->WREADY(S00_AXI_wready);
    mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
    mp_S00_AXI_transactor->BVALID(S00_AXI_bvalid);
    mp_S00_AXI_transactor->BREADY(S00_AXI_bready);
    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
    mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,32,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
    mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
    mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
    mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
    mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
    mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
    mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
    mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
    mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
    mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
    mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
    mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
    mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
    mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
    mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
    mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
    mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
    mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
    mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }

  // configure 'M01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M01_AXI' transactor parameters
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "9");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);

    // M01_AXI' transactor ports

    mp_M01_AXI_transactor->AWADDR(M01_AXI_awaddr);
    mp_M01_AXI_transactor->AWPROT(M01_AXI_awprot);
    mp_M01_AXI_transactor->AWVALID(M01_AXI_awvalid);
    mp_M01_AXI_transactor->AWREADY(M01_AXI_awready);
    mp_M01_AXI_transactor->WDATA(M01_AXI_wdata);
    mp_M01_AXI_transactor->WSTRB(M01_AXI_wstrb);
    mp_M01_AXI_transactor->WVALID(M01_AXI_wvalid);
    mp_M01_AXI_transactor->WREADY(M01_AXI_wready);
    mp_M01_AXI_transactor->BRESP(M01_AXI_bresp);
    mp_M01_AXI_transactor->BVALID(M01_AXI_bvalid);
    mp_M01_AXI_transactor->BREADY(M01_AXI_bready);
    mp_M01_AXI_transactor->ARADDR(M01_AXI_araddr);
    mp_M01_AXI_transactor->ARPROT(M01_AXI_arprot);
    mp_M01_AXI_transactor->ARVALID(M01_AXI_arvalid);
    mp_M01_AXI_transactor->ARREADY(M01_AXI_arready);
    mp_M01_AXI_transactor->RDATA(M01_AXI_rdata);
    mp_M01_AXI_transactor->RRESP(M01_AXI_rresp);
    mp_M01_AXI_transactor->RVALID(M01_AXI_rvalid);
    mp_M01_AXI_transactor->RREADY(M01_AXI_rready);
    mp_M01_AXI_transactor->CLK(aclk);
    mp_M01_AXI_transactor->RST(aresetn);

    // M01_AXI' transactor sockets

    mp_impl->M01_AXI_tlm_aximm_read_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->M01_AXI_tlm_aximm_write_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }

  // configure 'M02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M02_AXI' transactor parameters
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "9");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);

    // M02_AXI' transactor ports

    mp_M02_AXI_transactor->AWADDR(M02_AXI_awaddr);
    mp_M02_AXI_transactor->AWPROT(M02_AXI_awprot);
    mp_M02_AXI_transactor->AWVALID(M02_AXI_awvalid);
    mp_M02_AXI_transactor->AWREADY(M02_AXI_awready);
    mp_M02_AXI_transactor->WDATA(M02_AXI_wdata);
    mp_M02_AXI_transactor->WSTRB(M02_AXI_wstrb);
    mp_M02_AXI_transactor->WVALID(M02_AXI_wvalid);
    mp_M02_AXI_transactor->WREADY(M02_AXI_wready);
    mp_M02_AXI_transactor->BRESP(M02_AXI_bresp);
    mp_M02_AXI_transactor->BVALID(M02_AXI_bvalid);
    mp_M02_AXI_transactor->BREADY(M02_AXI_bready);
    mp_M02_AXI_transactor->ARADDR(M02_AXI_araddr);
    mp_M02_AXI_transactor->ARPROT(M02_AXI_arprot);
    mp_M02_AXI_transactor->ARVALID(M02_AXI_arvalid);
    mp_M02_AXI_transactor->ARREADY(M02_AXI_arready);
    mp_M02_AXI_transactor->RDATA(M02_AXI_rdata);
    mp_M02_AXI_transactor->RRESP(M02_AXI_rresp);
    mp_M02_AXI_transactor->RVALID(M02_AXI_rvalid);
    mp_M02_AXI_transactor->RREADY(M02_AXI_rready);
    mp_M02_AXI_transactor->CLK(aclk);
    mp_M02_AXI_transactor->RST(aresetn);

    // M02_AXI' transactor sockets

    mp_impl->M02_AXI_tlm_aximm_read_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->M02_AXI_tlm_aximm_write_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
design_1_smartconnect_0_0::design_1_smartconnect_0_0(const sc_core::sc_module_name& nm) : design_1_smartconnect_0_0_sc(nm),  aclk("aclk"), aresetn("aresetn"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"), M01_AXI_awaddr("M01_AXI_awaddr"), M01_AXI_awprot("M01_AXI_awprot"), M01_AXI_awvalid("M01_AXI_awvalid"), M01_AXI_awready("M01_AXI_awready"), M01_AXI_wdata("M01_AXI_wdata"), M01_AXI_wstrb("M01_AXI_wstrb"), M01_AXI_wvalid("M01_AXI_wvalid"), M01_AXI_wready("M01_AXI_wready"), M01_AXI_bresp("M01_AXI_bresp"), M01_AXI_bvalid("M01_AXI_bvalid"), M01_AXI_bready("M01_AXI_bready"), M01_AXI_araddr("M01_AXI_araddr"), M01_AXI_arprot("M01_AXI_arprot"), M01_AXI_arvalid("M01_AXI_arvalid"), M01_AXI_arready("M01_AXI_arready"), M01_AXI_rdata("M01_AXI_rdata"), M01_AXI_rresp("M01_AXI_rresp"), M01_AXI_rvalid("M01_AXI_rvalid"), M01_AXI_rready("M01_AXI_rready"), M02_AXI_awaddr("M02_AXI_awaddr"), M02_AXI_awprot("M02_AXI_awprot"), M02_AXI_awvalid("M02_AXI_awvalid"), M02_AXI_awready("M02_AXI_awready"), M02_AXI_wdata("M02_AXI_wdata"), M02_AXI_wstrb("M02_AXI_wstrb"), M02_AXI_wvalid("M02_AXI_wvalid"), M02_AXI_wready("M02_AXI_wready"), M02_AXI_bresp("M02_AXI_bresp"), M02_AXI_bvalid("M02_AXI_bvalid"), M02_AXI_bready("M02_AXI_bready"), M02_AXI_araddr("M02_AXI_araddr"), M02_AXI_arprot("M02_AXI_arprot"), M02_AXI_arvalid("M02_AXI_arvalid"), M02_AXI_arready("M02_AXI_arready"), M02_AXI_rdata("M02_AXI_rdata"), M02_AXI_rresp("M02_AXI_rresp"), M02_AXI_rvalid("M02_AXI_rvalid"), M02_AXI_rready("M02_AXI_rready")
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M02_AXI_transactor = NULL;
  // Instantiate Socket Stubs

  // configure S00_AXI_transactor
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);
  mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
  mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
  mp_S00_AXI_transactor->AWVALID(S00_AXI_awvalid);
  mp_S00_AXI_transactor->AWREADY(S00_AXI_awready);
  mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
  mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
  mp_S00_AXI_transactor->WVALID(S00_AXI_wvalid);
  mp_S00_AXI_transactor->WREADY(S00_AXI_wready);
  mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
  mp_S00_AXI_transactor->BVALID(S00_AXI_bvalid);
  mp_S00_AXI_transactor->BREADY(S00_AXI_bready);
  mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
  mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
  mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
  mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
  mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
  mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
  mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
  mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
  mp_S00_AXI_transactor->CLK(aclk);
  mp_S00_AXI_transactor->RST(aresetn);

  // configure M00_AXI_transactor
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,32,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);
  mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
  mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
  mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
  mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
  mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
  mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
  mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
  mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
  mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
  mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
  mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
  mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
  mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
  mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
  mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
  mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
  mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
  mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
  mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
  mp_M00_AXI_transactor->CLK(aclk);
  mp_M00_AXI_transactor->RST(aresetn);

  // configure M01_AXI_transactor
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "9");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);
  mp_M01_AXI_transactor->AWADDR(M01_AXI_awaddr);
  mp_M01_AXI_transactor->AWPROT(M01_AXI_awprot);
  mp_M01_AXI_transactor->AWVALID(M01_AXI_awvalid);
  mp_M01_AXI_transactor->AWREADY(M01_AXI_awready);
  mp_M01_AXI_transactor->WDATA(M01_AXI_wdata);
  mp_M01_AXI_transactor->WSTRB(M01_AXI_wstrb);
  mp_M01_AXI_transactor->WVALID(M01_AXI_wvalid);
  mp_M01_AXI_transactor->WREADY(M01_AXI_wready);
  mp_M01_AXI_transactor->BRESP(M01_AXI_bresp);
  mp_M01_AXI_transactor->BVALID(M01_AXI_bvalid);
  mp_M01_AXI_transactor->BREADY(M01_AXI_bready);
  mp_M01_AXI_transactor->ARADDR(M01_AXI_araddr);
  mp_M01_AXI_transactor->ARPROT(M01_AXI_arprot);
  mp_M01_AXI_transactor->ARVALID(M01_AXI_arvalid);
  mp_M01_AXI_transactor->ARREADY(M01_AXI_arready);
  mp_M01_AXI_transactor->RDATA(M01_AXI_rdata);
  mp_M01_AXI_transactor->RRESP(M01_AXI_rresp);
  mp_M01_AXI_transactor->RVALID(M01_AXI_rvalid);
  mp_M01_AXI_transactor->RREADY(M01_AXI_rready);
  mp_M01_AXI_transactor->CLK(aclk);
  mp_M01_AXI_transactor->RST(aresetn);

  // configure M02_AXI_transactor
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "9");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);
  mp_M02_AXI_transactor->AWADDR(M02_AXI_awaddr);
  mp_M02_AXI_transactor->AWPROT(M02_AXI_awprot);
  mp_M02_AXI_transactor->AWVALID(M02_AXI_awvalid);
  mp_M02_AXI_transactor->AWREADY(M02_AXI_awready);
  mp_M02_AXI_transactor->WDATA(M02_AXI_wdata);
  mp_M02_AXI_transactor->WSTRB(M02_AXI_wstrb);
  mp_M02_AXI_transactor->WVALID(M02_AXI_wvalid);
  mp_M02_AXI_transactor->WREADY(M02_AXI_wready);
  mp_M02_AXI_transactor->BRESP(M02_AXI_bresp);
  mp_M02_AXI_transactor->BVALID(M02_AXI_bvalid);
  mp_M02_AXI_transactor->BREADY(M02_AXI_bready);
  mp_M02_AXI_transactor->ARADDR(M02_AXI_araddr);
  mp_M02_AXI_transactor->ARPROT(M02_AXI_arprot);
  mp_M02_AXI_transactor->ARVALID(M02_AXI_arvalid);
  mp_M02_AXI_transactor->ARREADY(M02_AXI_arready);
  mp_M02_AXI_transactor->RDATA(M02_AXI_rdata);
  mp_M02_AXI_transactor->RRESP(M02_AXI_rresp);
  mp_M02_AXI_transactor->RVALID(M02_AXI_rvalid);
  mp_M02_AXI_transactor->RREADY(M02_AXI_rready);
  mp_M02_AXI_transactor->CLK(aclk);
  mp_M02_AXI_transactor->RST(aresetn);


  // initialize transactors stubs
  S00_AXI_transactor_target_wr_socket_stub = nullptr;
  S00_AXI_transactor_target_rd_socket_stub = nullptr;
  M00_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M00_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M01_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M01_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M02_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M02_AXI_transactor_initiator_rd_socket_stub = nullptr;

}

void design_1_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
    S00_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S00_AXI_transactor_target_wr_socket_stub->bind(*(mp_S00_AXI_transactor->wr_socket));
    S00_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S00_AXI_transactor_target_rd_socket_stub->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_S00_AXI_transactor->disable_transactor();
  }

  // configure 'M00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
    M00_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M00_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M00_AXI_transactor->wr_socket));
    M00_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M00_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_M00_AXI_transactor->disable_transactor();
  }

  // configure 'M01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M01_AXI_TLM_MODE") != 1)
  {
    mp_impl->M01_AXI_tlm_aximm_read_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->M01_AXI_tlm_aximm_write_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }
  else
  {
    M01_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M01_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M01_AXI_transactor->wr_socket));
    M01_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M01_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_M01_AXI_transactor->disable_transactor();
  }

  // configure 'M02_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M02_AXI_TLM_MODE") != 1)
  {
    mp_impl->M02_AXI_tlm_aximm_read_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->M02_AXI_tlm_aximm_write_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }
  else
  {
    M02_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M02_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M02_AXI_transactor->wr_socket));
    M02_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M02_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_M02_AXI_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
design_1_smartconnect_0_0::design_1_smartconnect_0_0(const sc_core::sc_module_name& nm) : design_1_smartconnect_0_0_sc(nm),  aclk("aclk"), aresetn("aresetn"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"), M01_AXI_awaddr("M01_AXI_awaddr"), M01_AXI_awprot("M01_AXI_awprot"), M01_AXI_awvalid("M01_AXI_awvalid"), M01_AXI_awready("M01_AXI_awready"), M01_AXI_wdata("M01_AXI_wdata"), M01_AXI_wstrb("M01_AXI_wstrb"), M01_AXI_wvalid("M01_AXI_wvalid"), M01_AXI_wready("M01_AXI_wready"), M01_AXI_bresp("M01_AXI_bresp"), M01_AXI_bvalid("M01_AXI_bvalid"), M01_AXI_bready("M01_AXI_bready"), M01_AXI_araddr("M01_AXI_araddr"), M01_AXI_arprot("M01_AXI_arprot"), M01_AXI_arvalid("M01_AXI_arvalid"), M01_AXI_arready("M01_AXI_arready"), M01_AXI_rdata("M01_AXI_rdata"), M01_AXI_rresp("M01_AXI_rresp"), M01_AXI_rvalid("M01_AXI_rvalid"), M01_AXI_rready("M01_AXI_rready"), M02_AXI_awaddr("M02_AXI_awaddr"), M02_AXI_awprot("M02_AXI_awprot"), M02_AXI_awvalid("M02_AXI_awvalid"), M02_AXI_awready("M02_AXI_awready"), M02_AXI_wdata("M02_AXI_wdata"), M02_AXI_wstrb("M02_AXI_wstrb"), M02_AXI_wvalid("M02_AXI_wvalid"), M02_AXI_wready("M02_AXI_wready"), M02_AXI_bresp("M02_AXI_bresp"), M02_AXI_bvalid("M02_AXI_bvalid"), M02_AXI_bready("M02_AXI_bready"), M02_AXI_araddr("M02_AXI_araddr"), M02_AXI_arprot("M02_AXI_arprot"), M02_AXI_arvalid("M02_AXI_arvalid"), M02_AXI_arready("M02_AXI_arready"), M02_AXI_rdata("M02_AXI_rdata"), M02_AXI_rresp("M02_AXI_rresp"), M02_AXI_rvalid("M02_AXI_rvalid"), M02_AXI_rready("M02_AXI_rready")
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M02_AXI_transactor = NULL;
  // Instantiate Socket Stubs

  // configure S00_AXI_transactor
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);
  mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
  mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
  mp_S00_AXI_transactor->AWVALID(S00_AXI_awvalid);
  mp_S00_AXI_transactor->AWREADY(S00_AXI_awready);
  mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
  mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
  mp_S00_AXI_transactor->WVALID(S00_AXI_wvalid);
  mp_S00_AXI_transactor->WREADY(S00_AXI_wready);
  mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
  mp_S00_AXI_transactor->BVALID(S00_AXI_bvalid);
  mp_S00_AXI_transactor->BREADY(S00_AXI_bready);
  mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
  mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
  mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
  mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
  mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
  mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
  mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
  mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
  mp_S00_AXI_transactor->CLK(aclk);
  mp_S00_AXI_transactor->RST(aresetn);

  // configure M00_AXI_transactor
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,32,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);
  mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
  mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
  mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
  mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
  mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
  mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
  mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
  mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
  mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
  mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
  mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
  mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
  mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
  mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
  mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
  mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
  mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
  mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
  mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
  mp_M00_AXI_transactor->CLK(aclk);
  mp_M00_AXI_transactor->RST(aresetn);

  // configure M01_AXI_transactor
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "9");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);
  mp_M01_AXI_transactor->AWADDR(M01_AXI_awaddr);
  mp_M01_AXI_transactor->AWPROT(M01_AXI_awprot);
  mp_M01_AXI_transactor->AWVALID(M01_AXI_awvalid);
  mp_M01_AXI_transactor->AWREADY(M01_AXI_awready);
  mp_M01_AXI_transactor->WDATA(M01_AXI_wdata);
  mp_M01_AXI_transactor->WSTRB(M01_AXI_wstrb);
  mp_M01_AXI_transactor->WVALID(M01_AXI_wvalid);
  mp_M01_AXI_transactor->WREADY(M01_AXI_wready);
  mp_M01_AXI_transactor->BRESP(M01_AXI_bresp);
  mp_M01_AXI_transactor->BVALID(M01_AXI_bvalid);
  mp_M01_AXI_transactor->BREADY(M01_AXI_bready);
  mp_M01_AXI_transactor->ARADDR(M01_AXI_araddr);
  mp_M01_AXI_transactor->ARPROT(M01_AXI_arprot);
  mp_M01_AXI_transactor->ARVALID(M01_AXI_arvalid);
  mp_M01_AXI_transactor->ARREADY(M01_AXI_arready);
  mp_M01_AXI_transactor->RDATA(M01_AXI_rdata);
  mp_M01_AXI_transactor->RRESP(M01_AXI_rresp);
  mp_M01_AXI_transactor->RVALID(M01_AXI_rvalid);
  mp_M01_AXI_transactor->RREADY(M01_AXI_rready);
  mp_M01_AXI_transactor->CLK(aclk);
  mp_M01_AXI_transactor->RST(aresetn);

  // configure M02_AXI_transactor
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "9");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,9,1,1,1,1,1,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);
  mp_M02_AXI_transactor->AWADDR(M02_AXI_awaddr);
  mp_M02_AXI_transactor->AWPROT(M02_AXI_awprot);
  mp_M02_AXI_transactor->AWVALID(M02_AXI_awvalid);
  mp_M02_AXI_transactor->AWREADY(M02_AXI_awready);
  mp_M02_AXI_transactor->WDATA(M02_AXI_wdata);
  mp_M02_AXI_transactor->WSTRB(M02_AXI_wstrb);
  mp_M02_AXI_transactor->WVALID(M02_AXI_wvalid);
  mp_M02_AXI_transactor->WREADY(M02_AXI_wready);
  mp_M02_AXI_transactor->BRESP(M02_AXI_bresp);
  mp_M02_AXI_transactor->BVALID(M02_AXI_bvalid);
  mp_M02_AXI_transactor->BREADY(M02_AXI_bready);
  mp_M02_AXI_transactor->ARADDR(M02_AXI_araddr);
  mp_M02_AXI_transactor->ARPROT(M02_AXI_arprot);
  mp_M02_AXI_transactor->ARVALID(M02_AXI_arvalid);
  mp_M02_AXI_transactor->ARREADY(M02_AXI_arready);
  mp_M02_AXI_transactor->RDATA(M02_AXI_rdata);
  mp_M02_AXI_transactor->RRESP(M02_AXI_rresp);
  mp_M02_AXI_transactor->RVALID(M02_AXI_rvalid);
  mp_M02_AXI_transactor->RREADY(M02_AXI_rready);
  mp_M02_AXI_transactor->CLK(aclk);
  mp_M02_AXI_transactor->RST(aresetn);


  // initialize transactors stubs
  S00_AXI_transactor_target_wr_socket_stub = nullptr;
  S00_AXI_transactor_target_rd_socket_stub = nullptr;
  M00_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M00_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M01_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M01_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M02_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M02_AXI_transactor_initiator_rd_socket_stub = nullptr;

}

void design_1_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
    S00_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S00_AXI_transactor_target_wr_socket_stub->bind(*(mp_S00_AXI_transactor->wr_socket));
    S00_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S00_AXI_transactor_target_rd_socket_stub->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_S00_AXI_transactor->disable_transactor();
  }

  // configure 'M00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
    M00_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M00_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M00_AXI_transactor->wr_socket));
    M00_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M00_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_M00_AXI_transactor->disable_transactor();
  }

  // configure 'M01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M01_AXI_TLM_MODE") != 1)
  {
    mp_impl->M01_AXI_tlm_aximm_read_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->M01_AXI_tlm_aximm_write_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }
  else
  {
    M01_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M01_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M01_AXI_transactor->wr_socket));
    M01_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M01_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_M01_AXI_transactor->disable_transactor();
  }

  // configure 'M02_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M02_AXI_TLM_MODE") != 1)
  {
    mp_impl->M02_AXI_tlm_aximm_read_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->M02_AXI_tlm_aximm_write_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }
  else
  {
    M02_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M02_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M02_AXI_transactor->wr_socket));
    M02_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M02_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_M02_AXI_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




design_1_smartconnect_0_0::~design_1_smartconnect_0_0()
{
  delete mp_S00_AXI_transactor;

  delete mp_M00_AXI_transactor;

  delete mp_M01_AXI_transactor;

  delete mp_M02_AXI_transactor;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(design_1_smartconnect_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(design_1_smartconnect_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(design_1_smartconnect_0_0);
#endif

