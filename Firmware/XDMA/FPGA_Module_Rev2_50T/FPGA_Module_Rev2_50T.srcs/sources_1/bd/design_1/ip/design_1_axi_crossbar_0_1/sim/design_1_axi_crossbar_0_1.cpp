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


#include "design_1_axi_crossbar_0_1_sc.h"

#include "design_1_axi_crossbar_0_1.h"

#include "axi_crossbar.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
design_1_axi_crossbar_0_1::design_1_axi_crossbar_0_1(const sc_core::sc_module_name& nm) : design_1_axi_crossbar_0_1_sc(nm), aclk("aclk"), aresetn("aresetn"), s_axi_awid("s_axi_awid"), s_axi_awaddr("s_axi_awaddr"), s_axi_awlen("s_axi_awlen"), s_axi_awsize("s_axi_awsize"), s_axi_awburst("s_axi_awburst"), s_axi_awlock("s_axi_awlock"), s_axi_awcache("s_axi_awcache"), s_axi_awprot("s_axi_awprot"), s_axi_awqos("s_axi_awqos"), s_axi_awuser("s_axi_awuser"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wlast("s_axi_wlast"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bid("s_axi_bid"), s_axi_bresp("s_axi_bresp"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_arid("s_axi_arid"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arsize("s_axi_arsize"), s_axi_arburst("s_axi_arburst"), s_axi_arlock("s_axi_arlock"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arqos("s_axi_arqos"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rid("s_axi_rid"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_awid("m_axi_awid"), m_axi_awaddr("m_axi_awaddr"), m_axi_awlen("m_axi_awlen"), m_axi_awsize("m_axi_awsize"), m_axi_awburst("m_axi_awburst"), m_axi_awlock("m_axi_awlock"), m_axi_awcache("m_axi_awcache"), m_axi_awprot("m_axi_awprot"), m_axi_awregion("m_axi_awregion"), m_axi_awqos("m_axi_awqos"), m_axi_awuser("m_axi_awuser"), m_axi_awvalid("m_axi_awvalid"), m_axi_awready("m_axi_awready"), m_axi_wdata("m_axi_wdata"), m_axi_wstrb("m_axi_wstrb"), m_axi_wlast("m_axi_wlast"), m_axi_wvalid("m_axi_wvalid"), m_axi_wready("m_axi_wready"), m_axi_bid("m_axi_bid"), m_axi_bresp("m_axi_bresp"), m_axi_bvalid("m_axi_bvalid"), m_axi_bready("m_axi_bready"), m_axi_arid("m_axi_arid"), m_axi_araddr("m_axi_araddr"), m_axi_arlen("m_axi_arlen"), m_axi_arsize("m_axi_arsize"), m_axi_arburst("m_axi_arburst"), m_axi_arlock("m_axi_arlock"), m_axi_arcache("m_axi_arcache"), m_axi_arprot("m_axi_arprot"), m_axi_arregion("m_axi_arregion"), m_axi_arqos("m_axi_arqos"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rid("m_axi_rid"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rlast("m_axi_rlast"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_s_axi_awid_converter_0 = NULL;
  mp_s_axi_awaddr_converter_0 = NULL;
  mp_s_axi_awlen_converter_0 = NULL;
  mp_s_axi_awsize_converter_0 = NULL;
  mp_s_axi_awburst_converter_0 = NULL;
  mp_s_axi_awlock_converter_0 = NULL;
  mp_s_axi_awcache_converter_0 = NULL;
  mp_s_axi_awprot_converter_0 = NULL;
  mp_s_axi_awqos_converter_0 = NULL;
  mp_s_axi_awuser_converter_0 = NULL;
  mp_s_axi_awvalid_converter_0 = NULL;
  mp_s_axi_awready_converter_0 = NULL;
  mp_s_axi_wdata_converter_0 = NULL;
  mp_s_axi_wstrb_converter_0 = NULL;
  mp_s_axi_wlast_converter_0 = NULL;
  mp_s_axi_wvalid_converter_0 = NULL;
  mp_s_axi_wready_converter_0 = NULL;
  mp_s_axi_bid_converter_0 = NULL;
  mp_s_axi_bresp_converter_0 = NULL;
  mp_s_axi_bvalid_converter_0 = NULL;
  mp_s_axi_bready_converter_0 = NULL;
  mp_s_axi_arid_converter_0 = NULL;
  mp_s_axi_araddr_converter_0 = NULL;
  mp_s_axi_arlen_converter_0 = NULL;
  mp_s_axi_arsize_converter_0 = NULL;
  mp_s_axi_arburst_converter_0 = NULL;
  mp_s_axi_arlock_converter_0 = NULL;
  mp_s_axi_arcache_converter_0 = NULL;
  mp_s_axi_arprot_converter_0 = NULL;
  mp_s_axi_arqos_converter_0 = NULL;
  mp_s_axi_arvalid_converter_0 = NULL;
  mp_s_axi_arready_converter_0 = NULL;
  mp_s_axi_rid_converter_0 = NULL;
  mp_s_axi_rdata_converter_0 = NULL;
  mp_s_axi_rresp_converter_0 = NULL;
  mp_s_axi_rlast_converter_0 = NULL;
  mp_s_axi_rvalid_converter_0 = NULL;
  mp_s_axi_rready_converter_0 = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_m_axi_awlock_converter = NULL;
  mp_m_axi_awvalid_converter = NULL;
  mp_m_axi_awready_converter = NULL;
  mp_m_axi_wlast_converter = NULL;
  mp_m_axi_wvalid_converter = NULL;
  mp_m_axi_wready_converter = NULL;
  mp_m_axi_bvalid_converter = NULL;
  mp_m_axi_bready_converter = NULL;
  mp_m_axi_arlock_converter = NULL;
  mp_m_axi_arvalid_converter = NULL;
  mp_m_axi_arready_converter = NULL;
  mp_m_axi_rlast_converter = NULL;
  mp_m_axi_rvalid_converter = NULL;
  mp_m_axi_rready_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_s_axi_awid_converter_1 = NULL;
  mp_s_axi_awaddr_converter_1 = NULL;
  mp_s_axi_awlen_converter_1 = NULL;
  mp_s_axi_awsize_converter_1 = NULL;
  mp_s_axi_awburst_converter_1 = NULL;
  mp_s_axi_awlock_converter_1 = NULL;
  mp_s_axi_awcache_converter_1 = NULL;
  mp_s_axi_awprot_converter_1 = NULL;
  mp_s_axi_awqos_converter_1 = NULL;
  mp_s_axi_awuser_converter_1 = NULL;
  mp_s_axi_awvalid_converter_1 = NULL;
  mp_s_axi_awready_converter_1 = NULL;
  mp_s_axi_wdata_converter_1 = NULL;
  mp_s_axi_wstrb_converter_1 = NULL;
  mp_s_axi_wlast_converter_1 = NULL;
  mp_s_axi_wvalid_converter_1 = NULL;
  mp_s_axi_wready_converter_1 = NULL;
  mp_s_axi_bid_converter_1 = NULL;
  mp_s_axi_bresp_converter_1 = NULL;
  mp_s_axi_bvalid_converter_1 = NULL;
  mp_s_axi_bready_converter_1 = NULL;
  mp_s_axi_arid_converter_1 = NULL;
  mp_s_axi_araddr_converter_1 = NULL;
  mp_s_axi_arlen_converter_1 = NULL;
  mp_s_axi_arsize_converter_1 = NULL;
  mp_s_axi_arburst_converter_1 = NULL;
  mp_s_axi_arlock_converter_1 = NULL;
  mp_s_axi_arcache_converter_1 = NULL;
  mp_s_axi_arprot_converter_1 = NULL;
  mp_s_axi_arqos_converter_1 = NULL;
  mp_s_axi_arvalid_converter_1 = NULL;
  mp_s_axi_arready_converter_1 = NULL;
  mp_s_axi_rid_converter_1 = NULL;
  mp_s_axi_rdata_converter_1 = NULL;
  mp_s_axi_rresp_converter_1 = NULL;
  mp_s_axi_rlast_converter_1 = NULL;
  mp_s_axi_rvalid_converter_1 = NULL;
  mp_s_axi_rready_converter_1 = NULL;

  // initialize junctures
  mp_s_axi_concat_arready = NULL;
  mp_s_axi_concat_awready = NULL;
  mp_s_axi_concat_bid = NULL;
  mp_s_axi_concat_bresp = NULL;
  mp_s_axi_concat_bvalid = NULL;
  mp_s_axi_concat_rdata = NULL;
  mp_s_axi_concat_rid = NULL;
  mp_s_axi_concat_rlast = NULL;
  mp_s_axi_concat_rresp = NULL;
  mp_s_axi_concat_rvalid = NULL;
  mp_s_axi_concat_wready = NULL;
  mp_s_axi_split_araddr = NULL;
  mp_s_axi_split_arburst = NULL;
  mp_s_axi_split_arcache = NULL;
  mp_s_axi_split_arid = NULL;
  mp_s_axi_split_arlen = NULL;
  mp_s_axi_split_arlock = NULL;
  mp_s_axi_split_arprot = NULL;
  mp_s_axi_split_arqos = NULL;
  mp_s_axi_split_arsize = NULL;
  mp_s_axi_split_arvalid = NULL;
  mp_s_axi_split_awaddr = NULL;
  mp_s_axi_split_awburst = NULL;
  mp_s_axi_split_awcache = NULL;
  mp_s_axi_split_awid = NULL;
  mp_s_axi_split_awlen = NULL;
  mp_s_axi_split_awlock = NULL;
  mp_s_axi_split_awprot = NULL;
  mp_s_axi_split_awqos = NULL;
  mp_s_axi_split_awsize = NULL;
  mp_s_axi_split_awuser = NULL;
  mp_s_axi_split_awvalid = NULL;
  mp_s_axi_split_bready = NULL;
  mp_s_axi_split_rready = NULL;
  mp_s_axi_split_wdata = NULL;
  mp_s_axi_split_wlast = NULL;
  mp_s_axi_split_wstrb = NULL;
  mp_s_axi_split_wvalid = NULL;
  mp_s_axi_split_awid = new xsc::xsc_split<2, 2>("s_axi_split_awid");
  mp_s_axi_split_awid->in_port(s_axi_awid);
  mp_s_axi_split_awid->out_port[0](s_axi_split_awid_out_0);
    mp_s_axi_split_awid->add_mask(0,1,0);
  mp_s_axi_split_awaddr = new xsc::xsc_split<64, 2>("s_axi_split_awaddr");
  mp_s_axi_split_awaddr->in_port(s_axi_awaddr);
  mp_s_axi_split_awaddr->out_port[0](s_axi_split_awaddr_out_0);
    mp_s_axi_split_awaddr->add_mask(0,32,0);
  mp_s_axi_split_awlen = new xsc::xsc_split<16, 2>("s_axi_split_awlen");
  mp_s_axi_split_awlen->in_port(s_axi_awlen);
  mp_s_axi_split_awlen->out_port[0](s_axi_split_awlen_out_0);
    mp_s_axi_split_awlen->add_mask(0,8,0);
  mp_s_axi_split_awsize = new xsc::xsc_split<6, 2>("s_axi_split_awsize");
  mp_s_axi_split_awsize->in_port(s_axi_awsize);
  mp_s_axi_split_awsize->out_port[0](s_axi_split_awsize_out_0);
    mp_s_axi_split_awsize->add_mask(0,3,0);
  mp_s_axi_split_awburst = new xsc::xsc_split<4, 2>("s_axi_split_awburst");
  mp_s_axi_split_awburst->in_port(s_axi_awburst);
  mp_s_axi_split_awburst->out_port[0](s_axi_split_awburst_out_0);
    mp_s_axi_split_awburst->add_mask(0,2,0);
  mp_s_axi_split_awlock = new xsc::xsc_split<2, 2>("s_axi_split_awlock");
  mp_s_axi_split_awlock->in_port(s_axi_awlock);
  mp_s_axi_split_awlock->out_port[0](s_axi_split_awlock_out_0);
    mp_s_axi_split_awlock->add_mask(0,1,0);
  mp_s_axi_split_awcache = new xsc::xsc_split<8, 2>("s_axi_split_awcache");
  mp_s_axi_split_awcache->in_port(s_axi_awcache);
  mp_s_axi_split_awcache->out_port[0](s_axi_split_awcache_out_0);
    mp_s_axi_split_awcache->add_mask(0,4,0);
  mp_s_axi_split_awprot = new xsc::xsc_split<6, 2>("s_axi_split_awprot");
  mp_s_axi_split_awprot->in_port(s_axi_awprot);
  mp_s_axi_split_awprot->out_port[0](s_axi_split_awprot_out_0);
    mp_s_axi_split_awprot->add_mask(0,3,0);
  mp_s_axi_split_awqos = new xsc::xsc_split<8, 2>("s_axi_split_awqos");
  mp_s_axi_split_awqos->in_port(s_axi_awqos);
  mp_s_axi_split_awqos->out_port[0](s_axi_split_awqos_out_0);
    mp_s_axi_split_awqos->add_mask(0,4,0);
  mp_s_axi_split_awuser = new xsc::xsc_split<8, 2>("s_axi_split_awuser");
  mp_s_axi_split_awuser->in_port(s_axi_awuser);
  mp_s_axi_split_awuser->out_port[0](s_axi_split_awuser_out_0);
    mp_s_axi_split_awuser->add_mask(0,4,0);
  mp_s_axi_split_awvalid = new xsc::xsc_split<2, 2>("s_axi_split_awvalid");
  mp_s_axi_split_awvalid->in_port(s_axi_awvalid);
  mp_s_axi_split_awvalid->out_port[0](s_axi_split_awvalid_out_0);
    mp_s_axi_split_awvalid->add_mask(0,1,0);
  mp_s_axi_concat_awready = new xsc::xsc_concatenator<2, 2>("s_axi_concat_awready");
  mp_s_axi_concat_awready->in_port[0](s_axi_concat_awready_out_0);
  mp_s_axi_concat_awready->out_port(s_axi_awready);
    mp_s_axi_concat_awready->offset_port(0, 0);
  mp_s_axi_split_wdata = new xsc::xsc_split<512, 2>("s_axi_split_wdata");
  mp_s_axi_split_wdata->in_port(s_axi_wdata);
  mp_s_axi_split_wdata->out_port[0](s_axi_split_wdata_out_0);
    mp_s_axi_split_wdata->add_mask(0,256,0);
  mp_s_axi_split_wstrb = new xsc::xsc_split<64, 2>("s_axi_split_wstrb");
  mp_s_axi_split_wstrb->in_port(s_axi_wstrb);
  mp_s_axi_split_wstrb->out_port[0](s_axi_split_wstrb_out_0);
    mp_s_axi_split_wstrb->add_mask(0,32,0);
  mp_s_axi_split_wlast = new xsc::xsc_split<2, 2>("s_axi_split_wlast");
  mp_s_axi_split_wlast->in_port(s_axi_wlast);
  mp_s_axi_split_wlast->out_port[0](s_axi_split_wlast_out_0);
    mp_s_axi_split_wlast->add_mask(0,1,0);
  mp_s_axi_split_wvalid = new xsc::xsc_split<2, 2>("s_axi_split_wvalid");
  mp_s_axi_split_wvalid->in_port(s_axi_wvalid);
  mp_s_axi_split_wvalid->out_port[0](s_axi_split_wvalid_out_0);
    mp_s_axi_split_wvalid->add_mask(0,1,0);
  mp_s_axi_concat_wready = new xsc::xsc_concatenator<2, 2>("s_axi_concat_wready");
  mp_s_axi_concat_wready->in_port[0](s_axi_concat_wready_out_0);
  mp_s_axi_concat_wready->out_port(s_axi_wready);
    mp_s_axi_concat_wready->offset_port(0, 0);
  mp_s_axi_concat_bid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_bid");
  mp_s_axi_concat_bid->in_port[0](s_axi_concat_bid_out_0);
  mp_s_axi_concat_bid->out_port(s_axi_bid);
    mp_s_axi_concat_bid->offset_port(0, 0);
  mp_s_axi_concat_bresp = new xsc::xsc_concatenator<4, 2>("s_axi_concat_bresp");
  mp_s_axi_concat_bresp->in_port[0](s_axi_concat_bresp_out_0);
  mp_s_axi_concat_bresp->out_port(s_axi_bresp);
    mp_s_axi_concat_bresp->offset_port(0, 0);
  mp_s_axi_concat_bvalid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_bvalid");
  mp_s_axi_concat_bvalid->in_port[0](s_axi_concat_bvalid_out_0);
  mp_s_axi_concat_bvalid->out_port(s_axi_bvalid);
    mp_s_axi_concat_bvalid->offset_port(0, 0);
  mp_s_axi_split_bready = new xsc::xsc_split<2, 2>("s_axi_split_bready");
  mp_s_axi_split_bready->in_port(s_axi_bready);
  mp_s_axi_split_bready->out_port[0](s_axi_split_bready_out_0);
    mp_s_axi_split_bready->add_mask(0,1,0);
  mp_s_axi_split_arid = new xsc::xsc_split<2, 2>("s_axi_split_arid");
  mp_s_axi_split_arid->in_port(s_axi_arid);
  mp_s_axi_split_arid->out_port[0](s_axi_split_arid_out_0);
    mp_s_axi_split_arid->add_mask(0,1,0);
  mp_s_axi_split_araddr = new xsc::xsc_split<64, 2>("s_axi_split_araddr");
  mp_s_axi_split_araddr->in_port(s_axi_araddr);
  mp_s_axi_split_araddr->out_port[0](s_axi_split_araddr_out_0);
    mp_s_axi_split_araddr->add_mask(0,32,0);
  mp_s_axi_split_arlen = new xsc::xsc_split<16, 2>("s_axi_split_arlen");
  mp_s_axi_split_arlen->in_port(s_axi_arlen);
  mp_s_axi_split_arlen->out_port[0](s_axi_split_arlen_out_0);
    mp_s_axi_split_arlen->add_mask(0,8,0);
  mp_s_axi_split_arsize = new xsc::xsc_split<6, 2>("s_axi_split_arsize");
  mp_s_axi_split_arsize->in_port(s_axi_arsize);
  mp_s_axi_split_arsize->out_port[0](s_axi_split_arsize_out_0);
    mp_s_axi_split_arsize->add_mask(0,3,0);
  mp_s_axi_split_arburst = new xsc::xsc_split<4, 2>("s_axi_split_arburst");
  mp_s_axi_split_arburst->in_port(s_axi_arburst);
  mp_s_axi_split_arburst->out_port[0](s_axi_split_arburst_out_0);
    mp_s_axi_split_arburst->add_mask(0,2,0);
  mp_s_axi_split_arlock = new xsc::xsc_split<2, 2>("s_axi_split_arlock");
  mp_s_axi_split_arlock->in_port(s_axi_arlock);
  mp_s_axi_split_arlock->out_port[0](s_axi_split_arlock_out_0);
    mp_s_axi_split_arlock->add_mask(0,1,0);
  mp_s_axi_split_arcache = new xsc::xsc_split<8, 2>("s_axi_split_arcache");
  mp_s_axi_split_arcache->in_port(s_axi_arcache);
  mp_s_axi_split_arcache->out_port[0](s_axi_split_arcache_out_0);
    mp_s_axi_split_arcache->add_mask(0,4,0);
  mp_s_axi_split_arprot = new xsc::xsc_split<6, 2>("s_axi_split_arprot");
  mp_s_axi_split_arprot->in_port(s_axi_arprot);
  mp_s_axi_split_arprot->out_port[0](s_axi_split_arprot_out_0);
    mp_s_axi_split_arprot->add_mask(0,3,0);
  mp_s_axi_split_arqos = new xsc::xsc_split<8, 2>("s_axi_split_arqos");
  mp_s_axi_split_arqos->in_port(s_axi_arqos);
  mp_s_axi_split_arqos->out_port[0](s_axi_split_arqos_out_0);
    mp_s_axi_split_arqos->add_mask(0,4,0);
  mp_s_axi_split_arvalid = new xsc::xsc_split<2, 2>("s_axi_split_arvalid");
  mp_s_axi_split_arvalid->in_port(s_axi_arvalid);
  mp_s_axi_split_arvalid->out_port[0](s_axi_split_arvalid_out_0);
    mp_s_axi_split_arvalid->add_mask(0,1,0);
  mp_s_axi_concat_arready = new xsc::xsc_concatenator<2, 2>("s_axi_concat_arready");
  mp_s_axi_concat_arready->in_port[0](s_axi_concat_arready_out_0);
  mp_s_axi_concat_arready->out_port(s_axi_arready);
    mp_s_axi_concat_arready->offset_port(0, 0);
  mp_s_axi_concat_rid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_rid");
  mp_s_axi_concat_rid->in_port[0](s_axi_concat_rid_out_0);
  mp_s_axi_concat_rid->out_port(s_axi_rid);
    mp_s_axi_concat_rid->offset_port(0, 0);
  mp_s_axi_concat_rdata = new xsc::xsc_concatenator<512, 2>("s_axi_concat_rdata");
  mp_s_axi_concat_rdata->in_port[0](s_axi_concat_rdata_out_0);
  mp_s_axi_concat_rdata->out_port(s_axi_rdata);
    mp_s_axi_concat_rdata->offset_port(0, 0);
  mp_s_axi_concat_rresp = new xsc::xsc_concatenator<4, 2>("s_axi_concat_rresp");
  mp_s_axi_concat_rresp->in_port[0](s_axi_concat_rresp_out_0);
  mp_s_axi_concat_rresp->out_port(s_axi_rresp);
    mp_s_axi_concat_rresp->offset_port(0, 0);
  mp_s_axi_concat_rlast = new xsc::xsc_concatenator<2, 2>("s_axi_concat_rlast");
  mp_s_axi_concat_rlast->in_port[0](s_axi_concat_rlast_out_0);
  mp_s_axi_concat_rlast->out_port(s_axi_rlast);
    mp_s_axi_concat_rlast->offset_port(0, 0);
  mp_s_axi_concat_rvalid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_rvalid");
  mp_s_axi_concat_rvalid->in_port[0](s_axi_concat_rvalid_out_0);
  mp_s_axi_concat_rvalid->out_port(s_axi_rvalid);
    mp_s_axi_concat_rvalid->offset_port(0, 0);
  mp_s_axi_split_rready = new xsc::xsc_split<2, 2>("s_axi_split_rready");
  mp_s_axi_split_rready->in_port(s_axi_rready);
  mp_s_axi_split_rready->out_port[0](s_axi_split_rready_out_0);
    mp_s_axi_split_rready->add_mask(0,1,0);
  
  mp_s_axi_split_awid->out_port[1](s_axi_split_awid_out_1);
    mp_s_axi_split_awid->add_mask(1,2,1);
  
  mp_s_axi_split_awaddr->out_port[1](s_axi_split_awaddr_out_1);
    mp_s_axi_split_awaddr->add_mask(1,64,32);
  
  mp_s_axi_split_awlen->out_port[1](s_axi_split_awlen_out_1);
    mp_s_axi_split_awlen->add_mask(1,16,8);
  
  mp_s_axi_split_awsize->out_port[1](s_axi_split_awsize_out_1);
    mp_s_axi_split_awsize->add_mask(1,6,3);
  
  mp_s_axi_split_awburst->out_port[1](s_axi_split_awburst_out_1);
    mp_s_axi_split_awburst->add_mask(1,4,2);
  
  mp_s_axi_split_awlock->out_port[1](s_axi_split_awlock_out_1);
    mp_s_axi_split_awlock->add_mask(1,2,1);
  
  mp_s_axi_split_awcache->out_port[1](s_axi_split_awcache_out_1);
    mp_s_axi_split_awcache->add_mask(1,8,4);
  
  mp_s_axi_split_awprot->out_port[1](s_axi_split_awprot_out_1);
    mp_s_axi_split_awprot->add_mask(1,6,3);
  
  mp_s_axi_split_awqos->out_port[1](s_axi_split_awqos_out_1);
    mp_s_axi_split_awqos->add_mask(1,8,4);
  
  mp_s_axi_split_awuser->out_port[1](s_axi_split_awuser_out_1);
    mp_s_axi_split_awuser->add_mask(1,8,4);
  
  mp_s_axi_split_awvalid->out_port[1](s_axi_split_awvalid_out_1);
    mp_s_axi_split_awvalid->add_mask(1,2,1);
  mp_s_axi_concat_awready->in_port[1](s_axi_concat_awready_out_1);
  mp_s_axi_concat_awready->offset_port(1, 1);
  
  mp_s_axi_split_wdata->out_port[1](s_axi_split_wdata_out_1);
    mp_s_axi_split_wdata->add_mask(1,512,256);
  
  mp_s_axi_split_wstrb->out_port[1](s_axi_split_wstrb_out_1);
    mp_s_axi_split_wstrb->add_mask(1,64,32);
  
  mp_s_axi_split_wlast->out_port[1](s_axi_split_wlast_out_1);
    mp_s_axi_split_wlast->add_mask(1,2,1);
  
  mp_s_axi_split_wvalid->out_port[1](s_axi_split_wvalid_out_1);
    mp_s_axi_split_wvalid->add_mask(1,2,1);
  mp_s_axi_concat_wready->in_port[1](s_axi_concat_wready_out_1);
  mp_s_axi_concat_wready->offset_port(1, 1);
  mp_s_axi_concat_bid->in_port[1](s_axi_concat_bid_out_1);
  mp_s_axi_concat_bid->offset_port(1, 1);
  mp_s_axi_concat_bresp->in_port[1](s_axi_concat_bresp_out_1);
  mp_s_axi_concat_bresp->offset_port(1, 2);
  mp_s_axi_concat_bvalid->in_port[1](s_axi_concat_bvalid_out_1);
  mp_s_axi_concat_bvalid->offset_port(1, 1);
  
  mp_s_axi_split_bready->out_port[1](s_axi_split_bready_out_1);
    mp_s_axi_split_bready->add_mask(1,2,1);
  
  mp_s_axi_split_arid->out_port[1](s_axi_split_arid_out_1);
    mp_s_axi_split_arid->add_mask(1,2,1);
  
  mp_s_axi_split_araddr->out_port[1](s_axi_split_araddr_out_1);
    mp_s_axi_split_araddr->add_mask(1,64,32);
  
  mp_s_axi_split_arlen->out_port[1](s_axi_split_arlen_out_1);
    mp_s_axi_split_arlen->add_mask(1,16,8);
  
  mp_s_axi_split_arsize->out_port[1](s_axi_split_arsize_out_1);
    mp_s_axi_split_arsize->add_mask(1,6,3);
  
  mp_s_axi_split_arburst->out_port[1](s_axi_split_arburst_out_1);
    mp_s_axi_split_arburst->add_mask(1,4,2);
  
  mp_s_axi_split_arlock->out_port[1](s_axi_split_arlock_out_1);
    mp_s_axi_split_arlock->add_mask(1,2,1);
  
  mp_s_axi_split_arcache->out_port[1](s_axi_split_arcache_out_1);
    mp_s_axi_split_arcache->add_mask(1,8,4);
  
  mp_s_axi_split_arprot->out_port[1](s_axi_split_arprot_out_1);
    mp_s_axi_split_arprot->add_mask(1,6,3);
  
  mp_s_axi_split_arqos->out_port[1](s_axi_split_arqos_out_1);
    mp_s_axi_split_arqos->add_mask(1,8,4);
  
  mp_s_axi_split_arvalid->out_port[1](s_axi_split_arvalid_out_1);
    mp_s_axi_split_arvalid->add_mask(1,2,1);
  mp_s_axi_concat_arready->in_port[1](s_axi_concat_arready_out_1);
  mp_s_axi_concat_arready->offset_port(1, 1);
  mp_s_axi_concat_rid->in_port[1](s_axi_concat_rid_out_1);
  mp_s_axi_concat_rid->offset_port(1, 1);
  mp_s_axi_concat_rdata->in_port[1](s_axi_concat_rdata_out_1);
  mp_s_axi_concat_rdata->offset_port(1, 256);
  mp_s_axi_concat_rresp->in_port[1](s_axi_concat_rresp_out_1);
  mp_s_axi_concat_rresp->offset_port(1, 2);
  mp_s_axi_concat_rlast->in_port[1](s_axi_concat_rlast_out_1);
  mp_s_axi_concat_rlast->offset_port(1, 1);
  mp_s_axi_concat_rvalid->in_port[1](s_axi_concat_rvalid_out_1);
  mp_s_axi_concat_rvalid->offset_port(1, 1);
  
  mp_s_axi_split_rready->out_port[1](s_axi_split_rready_out_1);
    mp_s_axi_split_rready->add_mask(1,2,1);

  // initialize socket stubs

}

void design_1_axi_crossbar_0_1::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_crossbar_0_1", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "4");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<256,32,1,4,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_s_axi_awid_converter_0 = new xsc::common::vector2vector_converter<2,1>("s_axi_awid_converter_0");
    mp_s_axi_awid_converter_0->vector_in(s_axi_split_awid_out_0);
    mp_s_axi_awid_converter_0->vector_out(m_s_axi_awid_converter_0_signal);
    mp_S00_AXI_transactor->AWID(m_s_axi_awid_converter_0_signal);
    mp_s_axi_awaddr_converter_0 = new xsc::common::vector2vector_converter<64,32>("s_axi_awaddr_converter_0");
    mp_s_axi_awaddr_converter_0->vector_in(s_axi_split_awaddr_out_0);
    mp_s_axi_awaddr_converter_0->vector_out(m_s_axi_awaddr_converter_0_signal);
    mp_S00_AXI_transactor->AWADDR(m_s_axi_awaddr_converter_0_signal);
    mp_s_axi_awlen_converter_0 = new xsc::common::vector2vector_converter<16,8>("s_axi_awlen_converter_0");
    mp_s_axi_awlen_converter_0->vector_in(s_axi_split_awlen_out_0);
    mp_s_axi_awlen_converter_0->vector_out(m_s_axi_awlen_converter_0_signal);
    mp_S00_AXI_transactor->AWLEN(m_s_axi_awlen_converter_0_signal);
    mp_s_axi_awsize_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_awsize_converter_0");
    mp_s_axi_awsize_converter_0->vector_in(s_axi_split_awsize_out_0);
    mp_s_axi_awsize_converter_0->vector_out(m_s_axi_awsize_converter_0_signal);
    mp_S00_AXI_transactor->AWSIZE(m_s_axi_awsize_converter_0_signal);
    mp_s_axi_awburst_converter_0 = new xsc::common::vector2vector_converter<4,2>("s_axi_awburst_converter_0");
    mp_s_axi_awburst_converter_0->vector_in(s_axi_split_awburst_out_0);
    mp_s_axi_awburst_converter_0->vector_out(m_s_axi_awburst_converter_0_signal);
    mp_S00_AXI_transactor->AWBURST(m_s_axi_awburst_converter_0_signal);
    mp_s_axi_awlock_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awlock_converter_0");
    mp_s_axi_awlock_converter_0->vector_in(s_axi_split_awlock_out_0);
    mp_s_axi_awlock_converter_0->scalar_out(m_s_axi_awlock_converter_0_signal);
    mp_S00_AXI_transactor->AWLOCK(m_s_axi_awlock_converter_0_signal);
    mp_s_axi_awcache_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_awcache_converter_0");
    mp_s_axi_awcache_converter_0->vector_in(s_axi_split_awcache_out_0);
    mp_s_axi_awcache_converter_0->vector_out(m_s_axi_awcache_converter_0_signal);
    mp_S00_AXI_transactor->AWCACHE(m_s_axi_awcache_converter_0_signal);
    mp_s_axi_awprot_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_awprot_converter_0");
    mp_s_axi_awprot_converter_0->vector_in(s_axi_split_awprot_out_0);
    mp_s_axi_awprot_converter_0->vector_out(m_s_axi_awprot_converter_0_signal);
    mp_S00_AXI_transactor->AWPROT(m_s_axi_awprot_converter_0_signal);
    mp_s_axi_awqos_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_awqos_converter_0");
    mp_s_axi_awqos_converter_0->vector_in(s_axi_split_awqos_out_0);
    mp_s_axi_awqos_converter_0->vector_out(m_s_axi_awqos_converter_0_signal);
    mp_S00_AXI_transactor->AWQOS(m_s_axi_awqos_converter_0_signal);
    mp_s_axi_awuser_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_awuser_converter_0");
    mp_s_axi_awuser_converter_0->vector_in(s_axi_split_awuser_out_0);
    mp_s_axi_awuser_converter_0->vector_out(m_s_axi_awuser_converter_0_signal);
    mp_S00_AXI_transactor->AWUSER(m_s_axi_awuser_converter_0_signal);
    mp_s_axi_awvalid_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awvalid_converter_0");
    mp_s_axi_awvalid_converter_0->vector_in(s_axi_split_awvalid_out_0);
    mp_s_axi_awvalid_converter_0->scalar_out(m_s_axi_awvalid_converter_0_signal);
    mp_S00_AXI_transactor->AWVALID(m_s_axi_awvalid_converter_0_signal);
    mp_s_axi_awready_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_awready_converter_0");
    mp_s_axi_awready_converter_0->scalar_in(m_s_axi_awready_converter_0_signal);
    mp_s_axi_awready_converter_0->vector_out(s_axi_concat_awready_out_0);
    mp_S00_AXI_transactor->AWREADY(m_s_axi_awready_converter_0_signal);
    mp_s_axi_wdata_converter_0 = new xsc::common::vector2vector_converter<512,256>("s_axi_wdata_converter_0");
    mp_s_axi_wdata_converter_0->vector_in(s_axi_split_wdata_out_0);
    mp_s_axi_wdata_converter_0->vector_out(m_s_axi_wdata_converter_0_signal);
    mp_S00_AXI_transactor->WDATA(m_s_axi_wdata_converter_0_signal);
    mp_s_axi_wstrb_converter_0 = new xsc::common::vector2vector_converter<64,32>("s_axi_wstrb_converter_0");
    mp_s_axi_wstrb_converter_0->vector_in(s_axi_split_wstrb_out_0);
    mp_s_axi_wstrb_converter_0->vector_out(m_s_axi_wstrb_converter_0_signal);
    mp_S00_AXI_transactor->WSTRB(m_s_axi_wstrb_converter_0_signal);
    mp_s_axi_wlast_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wlast_converter_0");
    mp_s_axi_wlast_converter_0->vector_in(s_axi_split_wlast_out_0);
    mp_s_axi_wlast_converter_0->scalar_out(m_s_axi_wlast_converter_0_signal);
    mp_S00_AXI_transactor->WLAST(m_s_axi_wlast_converter_0_signal);
    mp_s_axi_wvalid_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wvalid_converter_0");
    mp_s_axi_wvalid_converter_0->vector_in(s_axi_split_wvalid_out_0);
    mp_s_axi_wvalid_converter_0->scalar_out(m_s_axi_wvalid_converter_0_signal);
    mp_S00_AXI_transactor->WVALID(m_s_axi_wvalid_converter_0_signal);
    mp_s_axi_wready_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_wready_converter_0");
    mp_s_axi_wready_converter_0->scalar_in(m_s_axi_wready_converter_0_signal);
    mp_s_axi_wready_converter_0->vector_out(s_axi_concat_wready_out_0);
    mp_S00_AXI_transactor->WREADY(m_s_axi_wready_converter_0_signal);
    mp_s_axi_bid_converter_0 = new xsc::common::vector2vector_converter<1,2>("s_axi_bid_converter_0");
    mp_s_axi_bid_converter_0->vector_in(m_s_axi_bid_converter_0_signal);
    mp_s_axi_bid_converter_0->vector_out(s_axi_concat_bid_out_0);
    mp_S00_AXI_transactor->BID(m_s_axi_bid_converter_0_signal);
    mp_s_axi_bresp_converter_0 = new xsc::common::vector2vector_converter<2,4>("s_axi_bresp_converter_0");
    mp_s_axi_bresp_converter_0->vector_in(m_s_axi_bresp_converter_0_signal);
    mp_s_axi_bresp_converter_0->vector_out(s_axi_concat_bresp_out_0);
    mp_S00_AXI_transactor->BRESP(m_s_axi_bresp_converter_0_signal);
    mp_s_axi_bvalid_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_bvalid_converter_0");
    mp_s_axi_bvalid_converter_0->scalar_in(m_s_axi_bvalid_converter_0_signal);
    mp_s_axi_bvalid_converter_0->vector_out(s_axi_concat_bvalid_out_0);
    mp_S00_AXI_transactor->BVALID(m_s_axi_bvalid_converter_0_signal);
    mp_s_axi_bready_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_bready_converter_0");
    mp_s_axi_bready_converter_0->vector_in(s_axi_split_bready_out_0);
    mp_s_axi_bready_converter_0->scalar_out(m_s_axi_bready_converter_0_signal);
    mp_S00_AXI_transactor->BREADY(m_s_axi_bready_converter_0_signal);
    mp_s_axi_arid_converter_0 = new xsc::common::vector2vector_converter<2,1>("s_axi_arid_converter_0");
    mp_s_axi_arid_converter_0->vector_in(s_axi_split_arid_out_0);
    mp_s_axi_arid_converter_0->vector_out(m_s_axi_arid_converter_0_signal);
    mp_S00_AXI_transactor->ARID(m_s_axi_arid_converter_0_signal);
    mp_s_axi_araddr_converter_0 = new xsc::common::vector2vector_converter<64,32>("s_axi_araddr_converter_0");
    mp_s_axi_araddr_converter_0->vector_in(s_axi_split_araddr_out_0);
    mp_s_axi_araddr_converter_0->vector_out(m_s_axi_araddr_converter_0_signal);
    mp_S00_AXI_transactor->ARADDR(m_s_axi_araddr_converter_0_signal);
    mp_s_axi_arlen_converter_0 = new xsc::common::vector2vector_converter<16,8>("s_axi_arlen_converter_0");
    mp_s_axi_arlen_converter_0->vector_in(s_axi_split_arlen_out_0);
    mp_s_axi_arlen_converter_0->vector_out(m_s_axi_arlen_converter_0_signal);
    mp_S00_AXI_transactor->ARLEN(m_s_axi_arlen_converter_0_signal);
    mp_s_axi_arsize_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_arsize_converter_0");
    mp_s_axi_arsize_converter_0->vector_in(s_axi_split_arsize_out_0);
    mp_s_axi_arsize_converter_0->vector_out(m_s_axi_arsize_converter_0_signal);
    mp_S00_AXI_transactor->ARSIZE(m_s_axi_arsize_converter_0_signal);
    mp_s_axi_arburst_converter_0 = new xsc::common::vector2vector_converter<4,2>("s_axi_arburst_converter_0");
    mp_s_axi_arburst_converter_0->vector_in(s_axi_split_arburst_out_0);
    mp_s_axi_arburst_converter_0->vector_out(m_s_axi_arburst_converter_0_signal);
    mp_S00_AXI_transactor->ARBURST(m_s_axi_arburst_converter_0_signal);
    mp_s_axi_arlock_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arlock_converter_0");
    mp_s_axi_arlock_converter_0->vector_in(s_axi_split_arlock_out_0);
    mp_s_axi_arlock_converter_0->scalar_out(m_s_axi_arlock_converter_0_signal);
    mp_S00_AXI_transactor->ARLOCK(m_s_axi_arlock_converter_0_signal);
    mp_s_axi_arcache_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_arcache_converter_0");
    mp_s_axi_arcache_converter_0->vector_in(s_axi_split_arcache_out_0);
    mp_s_axi_arcache_converter_0->vector_out(m_s_axi_arcache_converter_0_signal);
    mp_S00_AXI_transactor->ARCACHE(m_s_axi_arcache_converter_0_signal);
    mp_s_axi_arprot_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_arprot_converter_0");
    mp_s_axi_arprot_converter_0->vector_in(s_axi_split_arprot_out_0);
    mp_s_axi_arprot_converter_0->vector_out(m_s_axi_arprot_converter_0_signal);
    mp_S00_AXI_transactor->ARPROT(m_s_axi_arprot_converter_0_signal);
    mp_s_axi_arqos_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_arqos_converter_0");
    mp_s_axi_arqos_converter_0->vector_in(s_axi_split_arqos_out_0);
    mp_s_axi_arqos_converter_0->vector_out(m_s_axi_arqos_converter_0_signal);
    mp_S00_AXI_transactor->ARQOS(m_s_axi_arqos_converter_0_signal);
    mp_s_axi_arvalid_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arvalid_converter_0");
    mp_s_axi_arvalid_converter_0->vector_in(s_axi_split_arvalid_out_0);
    mp_s_axi_arvalid_converter_0->scalar_out(m_s_axi_arvalid_converter_0_signal);
    mp_S00_AXI_transactor->ARVALID(m_s_axi_arvalid_converter_0_signal);
    mp_s_axi_arready_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_arready_converter_0");
    mp_s_axi_arready_converter_0->scalar_in(m_s_axi_arready_converter_0_signal);
    mp_s_axi_arready_converter_0->vector_out(s_axi_concat_arready_out_0);
    mp_S00_AXI_transactor->ARREADY(m_s_axi_arready_converter_0_signal);
    mp_s_axi_rid_converter_0 = new xsc::common::vector2vector_converter<1,2>("s_axi_rid_converter_0");
    mp_s_axi_rid_converter_0->vector_in(m_s_axi_rid_converter_0_signal);
    mp_s_axi_rid_converter_0->vector_out(s_axi_concat_rid_out_0);
    mp_S00_AXI_transactor->RID(m_s_axi_rid_converter_0_signal);
    mp_s_axi_rdata_converter_0 = new xsc::common::vector2vector_converter<256,512>("s_axi_rdata_converter_0");
    mp_s_axi_rdata_converter_0->vector_in(m_s_axi_rdata_converter_0_signal);
    mp_s_axi_rdata_converter_0->vector_out(s_axi_concat_rdata_out_0);
    mp_S00_AXI_transactor->RDATA(m_s_axi_rdata_converter_0_signal);
    mp_s_axi_rresp_converter_0 = new xsc::common::vector2vector_converter<2,4>("s_axi_rresp_converter_0");
    mp_s_axi_rresp_converter_0->vector_in(m_s_axi_rresp_converter_0_signal);
    mp_s_axi_rresp_converter_0->vector_out(s_axi_concat_rresp_out_0);
    mp_S00_AXI_transactor->RRESP(m_s_axi_rresp_converter_0_signal);
    mp_s_axi_rlast_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rlast_converter_0");
    mp_s_axi_rlast_converter_0->scalar_in(m_s_axi_rlast_converter_0_signal);
    mp_s_axi_rlast_converter_0->vector_out(s_axi_concat_rlast_out_0);
    mp_S00_AXI_transactor->RLAST(m_s_axi_rlast_converter_0_signal);
    mp_s_axi_rvalid_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rvalid_converter_0");
    mp_s_axi_rvalid_converter_0->scalar_in(m_s_axi_rvalid_converter_0_signal);
    mp_s_axi_rvalid_converter_0->vector_out(s_axi_concat_rvalid_out_0);
    mp_S00_AXI_transactor->RVALID(m_s_axi_rvalid_converter_0_signal);
    mp_s_axi_rready_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_rready_converter_0");
    mp_s_axi_rready_converter_0->vector_in(s_axi_split_rready_out_0);
    mp_s_axi_rready_converter_0->scalar_out(m_s_axi_rready_converter_0_signal);
    mp_S00_AXI_transactor->RREADY(m_s_axi_rready_converter_0_signal);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->target_0_rd_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->target_0_wr_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_crossbar_0_1", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "4");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "128");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<256,32,1,4,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWID(m_axi_awid);
    mp_M00_AXI_transactor->AWADDR(m_axi_awaddr);
    mp_M00_AXI_transactor->AWLEN(m_axi_awlen);
    mp_M00_AXI_transactor->AWSIZE(m_axi_awsize);
    mp_M00_AXI_transactor->AWBURST(m_axi_awburst);
    mp_m_axi_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_awlock_converter");
    mp_m_axi_awlock_converter->scalar_in(m_m_axi_awlock_converter_signal);
    mp_m_axi_awlock_converter->vector_out(m_axi_awlock);
    mp_M00_AXI_transactor->AWLOCK(m_m_axi_awlock_converter_signal);
    mp_M00_AXI_transactor->AWCACHE(m_axi_awcache);
    mp_M00_AXI_transactor->AWPROT(m_axi_awprot);
    mp_M00_AXI_transactor->AWREGION(m_axi_awregion);
    mp_M00_AXI_transactor->AWQOS(m_axi_awqos);
    mp_M00_AXI_transactor->AWUSER(m_axi_awuser);
    mp_m_axi_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_awvalid_converter");
    mp_m_axi_awvalid_converter->scalar_in(m_m_axi_awvalid_converter_signal);
    mp_m_axi_awvalid_converter->vector_out(m_axi_awvalid);
    mp_M00_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_signal);
    mp_m_axi_awready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_awready_converter");
    mp_m_axi_awready_converter->vector_in(m_axi_awready);
    mp_m_axi_awready_converter->scalar_out(m_m_axi_awready_converter_signal);
    mp_M00_AXI_transactor->AWREADY(m_m_axi_awready_converter_signal);
    mp_M00_AXI_transactor->WDATA(m_axi_wdata);
    mp_M00_AXI_transactor->WSTRB(m_axi_wstrb);
    mp_m_axi_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_wlast_converter");
    mp_m_axi_wlast_converter->scalar_in(m_m_axi_wlast_converter_signal);
    mp_m_axi_wlast_converter->vector_out(m_axi_wlast);
    mp_M00_AXI_transactor->WLAST(m_m_axi_wlast_converter_signal);
    mp_m_axi_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_wvalid_converter");
    mp_m_axi_wvalid_converter->scalar_in(m_m_axi_wvalid_converter_signal);
    mp_m_axi_wvalid_converter->vector_out(m_axi_wvalid);
    mp_M00_AXI_transactor->WVALID(m_m_axi_wvalid_converter_signal);
    mp_m_axi_wready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_wready_converter");
    mp_m_axi_wready_converter->vector_in(m_axi_wready);
    mp_m_axi_wready_converter->scalar_out(m_m_axi_wready_converter_signal);
    mp_M00_AXI_transactor->WREADY(m_m_axi_wready_converter_signal);
    mp_M00_AXI_transactor->BID(m_axi_bid);
    mp_M00_AXI_transactor->BRESP(m_axi_bresp);
    mp_m_axi_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_bvalid_converter");
    mp_m_axi_bvalid_converter->vector_in(m_axi_bvalid);
    mp_m_axi_bvalid_converter->scalar_out(m_m_axi_bvalid_converter_signal);
    mp_M00_AXI_transactor->BVALID(m_m_axi_bvalid_converter_signal);
    mp_m_axi_bready_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_bready_converter");
    mp_m_axi_bready_converter->scalar_in(m_m_axi_bready_converter_signal);
    mp_m_axi_bready_converter->vector_out(m_axi_bready);
    mp_M00_AXI_transactor->BREADY(m_m_axi_bready_converter_signal);
    mp_M00_AXI_transactor->ARID(m_axi_arid);
    mp_M00_AXI_transactor->ARADDR(m_axi_araddr);
    mp_M00_AXI_transactor->ARLEN(m_axi_arlen);
    mp_M00_AXI_transactor->ARSIZE(m_axi_arsize);
    mp_M00_AXI_transactor->ARBURST(m_axi_arburst);
    mp_m_axi_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_arlock_converter");
    mp_m_axi_arlock_converter->scalar_in(m_m_axi_arlock_converter_signal);
    mp_m_axi_arlock_converter->vector_out(m_axi_arlock);
    mp_M00_AXI_transactor->ARLOCK(m_m_axi_arlock_converter_signal);
    mp_M00_AXI_transactor->ARCACHE(m_axi_arcache);
    mp_M00_AXI_transactor->ARPROT(m_axi_arprot);
    mp_M00_AXI_transactor->ARREGION(m_axi_arregion);
    mp_M00_AXI_transactor->ARQOS(m_axi_arqos);
    mp_m_axi_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_arvalid_converter");
    mp_m_axi_arvalid_converter->scalar_in(m_m_axi_arvalid_converter_signal);
    mp_m_axi_arvalid_converter->vector_out(m_axi_arvalid);
    mp_M00_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_signal);
    mp_m_axi_arready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_arready_converter");
    mp_m_axi_arready_converter->vector_in(m_axi_arready);
    mp_m_axi_arready_converter->scalar_out(m_m_axi_arready_converter_signal);
    mp_M00_AXI_transactor->ARREADY(m_m_axi_arready_converter_signal);
    mp_M00_AXI_transactor->RID(m_axi_rid);
    mp_M00_AXI_transactor->RDATA(m_axi_rdata);
    mp_M00_AXI_transactor->RRESP(m_axi_rresp);
    mp_m_axi_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_rlast_converter");
    mp_m_axi_rlast_converter->vector_in(m_axi_rlast);
    mp_m_axi_rlast_converter->scalar_out(m_m_axi_rlast_converter_signal);
    mp_M00_AXI_transactor->RLAST(m_m_axi_rlast_converter_signal);
    mp_m_axi_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_rvalid_converter");
    mp_m_axi_rvalid_converter->vector_in(m_axi_rvalid);
    mp_m_axi_rvalid_converter->scalar_out(m_m_axi_rvalid_converter_signal);
    mp_M00_AXI_transactor->RVALID(m_m_axi_rvalid_converter_signal);
    mp_m_axi_rready_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_rready_converter");
    mp_m_axi_rready_converter->scalar_in(m_m_axi_rready_converter_signal);
    mp_m_axi_rready_converter->vector_out(m_axi_rready);
    mp_M00_AXI_transactor->RREADY(m_m_axi_rready_converter_signal);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->initiator_0_rd_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->initiator_0_wr_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_crossbar_0_1", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "4");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<256,32,1,4,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);

    // S01_AXI' transactor ports

    mp_s_axi_awid_converter_1 = new xsc::common::vector2vector_converter<2,1>("s_axi_awid_converter_1");
    mp_s_axi_awid_converter_1->vector_in(s_axi_split_awid_out_1);
    mp_s_axi_awid_converter_1->vector_out(m_s_axi_awid_converter_1_signal);
    mp_S01_AXI_transactor->AWID(m_s_axi_awid_converter_1_signal);
    mp_s_axi_awaddr_converter_1 = new xsc::common::vector2vector_converter<64,32>("s_axi_awaddr_converter_1");
    mp_s_axi_awaddr_converter_1->vector_in(s_axi_split_awaddr_out_1);
    mp_s_axi_awaddr_converter_1->vector_out(m_s_axi_awaddr_converter_1_signal);
    mp_S01_AXI_transactor->AWADDR(m_s_axi_awaddr_converter_1_signal);
    mp_s_axi_awlen_converter_1 = new xsc::common::vector2vector_converter<16,8>("s_axi_awlen_converter_1");
    mp_s_axi_awlen_converter_1->vector_in(s_axi_split_awlen_out_1);
    mp_s_axi_awlen_converter_1->vector_out(m_s_axi_awlen_converter_1_signal);
    mp_S01_AXI_transactor->AWLEN(m_s_axi_awlen_converter_1_signal);
    mp_s_axi_awsize_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_awsize_converter_1");
    mp_s_axi_awsize_converter_1->vector_in(s_axi_split_awsize_out_1);
    mp_s_axi_awsize_converter_1->vector_out(m_s_axi_awsize_converter_1_signal);
    mp_S01_AXI_transactor->AWSIZE(m_s_axi_awsize_converter_1_signal);
    mp_s_axi_awburst_converter_1 = new xsc::common::vector2vector_converter<4,2>("s_axi_awburst_converter_1");
    mp_s_axi_awburst_converter_1->vector_in(s_axi_split_awburst_out_1);
    mp_s_axi_awburst_converter_1->vector_out(m_s_axi_awburst_converter_1_signal);
    mp_S01_AXI_transactor->AWBURST(m_s_axi_awburst_converter_1_signal);
    mp_s_axi_awlock_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awlock_converter_1");
    mp_s_axi_awlock_converter_1->vector_in(s_axi_split_awlock_out_1);
    mp_s_axi_awlock_converter_1->scalar_out(m_s_axi_awlock_converter_1_signal);
    mp_S01_AXI_transactor->AWLOCK(m_s_axi_awlock_converter_1_signal);
    mp_s_axi_awcache_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_awcache_converter_1");
    mp_s_axi_awcache_converter_1->vector_in(s_axi_split_awcache_out_1);
    mp_s_axi_awcache_converter_1->vector_out(m_s_axi_awcache_converter_1_signal);
    mp_S01_AXI_transactor->AWCACHE(m_s_axi_awcache_converter_1_signal);
    mp_s_axi_awprot_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_awprot_converter_1");
    mp_s_axi_awprot_converter_1->vector_in(s_axi_split_awprot_out_1);
    mp_s_axi_awprot_converter_1->vector_out(m_s_axi_awprot_converter_1_signal);
    mp_S01_AXI_transactor->AWPROT(m_s_axi_awprot_converter_1_signal);
    mp_s_axi_awqos_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_awqos_converter_1");
    mp_s_axi_awqos_converter_1->vector_in(s_axi_split_awqos_out_1);
    mp_s_axi_awqos_converter_1->vector_out(m_s_axi_awqos_converter_1_signal);
    mp_S01_AXI_transactor->AWQOS(m_s_axi_awqos_converter_1_signal);
    mp_s_axi_awuser_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_awuser_converter_1");
    mp_s_axi_awuser_converter_1->vector_in(s_axi_split_awuser_out_1);
    mp_s_axi_awuser_converter_1->vector_out(m_s_axi_awuser_converter_1_signal);
    mp_S01_AXI_transactor->AWUSER(m_s_axi_awuser_converter_1_signal);
    mp_s_axi_awvalid_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awvalid_converter_1");
    mp_s_axi_awvalid_converter_1->vector_in(s_axi_split_awvalid_out_1);
    mp_s_axi_awvalid_converter_1->scalar_out(m_s_axi_awvalid_converter_1_signal);
    mp_S01_AXI_transactor->AWVALID(m_s_axi_awvalid_converter_1_signal);
    mp_s_axi_awready_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_awready_converter_1");
    mp_s_axi_awready_converter_1->scalar_in(m_s_axi_awready_converter_1_signal);
    mp_s_axi_awready_converter_1->vector_out(s_axi_concat_awready_out_1);
    mp_S01_AXI_transactor->AWREADY(m_s_axi_awready_converter_1_signal);
    mp_s_axi_wdata_converter_1 = new xsc::common::vector2vector_converter<512,256>("s_axi_wdata_converter_1");
    mp_s_axi_wdata_converter_1->vector_in(s_axi_split_wdata_out_1);
    mp_s_axi_wdata_converter_1->vector_out(m_s_axi_wdata_converter_1_signal);
    mp_S01_AXI_transactor->WDATA(m_s_axi_wdata_converter_1_signal);
    mp_s_axi_wstrb_converter_1 = new xsc::common::vector2vector_converter<64,32>("s_axi_wstrb_converter_1");
    mp_s_axi_wstrb_converter_1->vector_in(s_axi_split_wstrb_out_1);
    mp_s_axi_wstrb_converter_1->vector_out(m_s_axi_wstrb_converter_1_signal);
    mp_S01_AXI_transactor->WSTRB(m_s_axi_wstrb_converter_1_signal);
    mp_s_axi_wlast_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wlast_converter_1");
    mp_s_axi_wlast_converter_1->vector_in(s_axi_split_wlast_out_1);
    mp_s_axi_wlast_converter_1->scalar_out(m_s_axi_wlast_converter_1_signal);
    mp_S01_AXI_transactor->WLAST(m_s_axi_wlast_converter_1_signal);
    mp_s_axi_wvalid_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wvalid_converter_1");
    mp_s_axi_wvalid_converter_1->vector_in(s_axi_split_wvalid_out_1);
    mp_s_axi_wvalid_converter_1->scalar_out(m_s_axi_wvalid_converter_1_signal);
    mp_S01_AXI_transactor->WVALID(m_s_axi_wvalid_converter_1_signal);
    mp_s_axi_wready_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_wready_converter_1");
    mp_s_axi_wready_converter_1->scalar_in(m_s_axi_wready_converter_1_signal);
    mp_s_axi_wready_converter_1->vector_out(s_axi_concat_wready_out_1);
    mp_S01_AXI_transactor->WREADY(m_s_axi_wready_converter_1_signal);
    mp_s_axi_bid_converter_1 = new xsc::common::vector2vector_converter<1,2>("s_axi_bid_converter_1");
    mp_s_axi_bid_converter_1->vector_in(m_s_axi_bid_converter_1_signal);
    mp_s_axi_bid_converter_1->vector_out(s_axi_concat_bid_out_1);
    mp_S01_AXI_transactor->BID(m_s_axi_bid_converter_1_signal);
    mp_s_axi_bresp_converter_1 = new xsc::common::vector2vector_converter<2,4>("s_axi_bresp_converter_1");
    mp_s_axi_bresp_converter_1->vector_in(m_s_axi_bresp_converter_1_signal);
    mp_s_axi_bresp_converter_1->vector_out(s_axi_concat_bresp_out_1);
    mp_S01_AXI_transactor->BRESP(m_s_axi_bresp_converter_1_signal);
    mp_s_axi_bvalid_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_bvalid_converter_1");
    mp_s_axi_bvalid_converter_1->scalar_in(m_s_axi_bvalid_converter_1_signal);
    mp_s_axi_bvalid_converter_1->vector_out(s_axi_concat_bvalid_out_1);
    mp_S01_AXI_transactor->BVALID(m_s_axi_bvalid_converter_1_signal);
    mp_s_axi_bready_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_bready_converter_1");
    mp_s_axi_bready_converter_1->vector_in(s_axi_split_bready_out_1);
    mp_s_axi_bready_converter_1->scalar_out(m_s_axi_bready_converter_1_signal);
    mp_S01_AXI_transactor->BREADY(m_s_axi_bready_converter_1_signal);
    mp_s_axi_arid_converter_1 = new xsc::common::vector2vector_converter<2,1>("s_axi_arid_converter_1");
    mp_s_axi_arid_converter_1->vector_in(s_axi_split_arid_out_1);
    mp_s_axi_arid_converter_1->vector_out(m_s_axi_arid_converter_1_signal);
    mp_S01_AXI_transactor->ARID(m_s_axi_arid_converter_1_signal);
    mp_s_axi_araddr_converter_1 = new xsc::common::vector2vector_converter<64,32>("s_axi_araddr_converter_1");
    mp_s_axi_araddr_converter_1->vector_in(s_axi_split_araddr_out_1);
    mp_s_axi_araddr_converter_1->vector_out(m_s_axi_araddr_converter_1_signal);
    mp_S01_AXI_transactor->ARADDR(m_s_axi_araddr_converter_1_signal);
    mp_s_axi_arlen_converter_1 = new xsc::common::vector2vector_converter<16,8>("s_axi_arlen_converter_1");
    mp_s_axi_arlen_converter_1->vector_in(s_axi_split_arlen_out_1);
    mp_s_axi_arlen_converter_1->vector_out(m_s_axi_arlen_converter_1_signal);
    mp_S01_AXI_transactor->ARLEN(m_s_axi_arlen_converter_1_signal);
    mp_s_axi_arsize_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_arsize_converter_1");
    mp_s_axi_arsize_converter_1->vector_in(s_axi_split_arsize_out_1);
    mp_s_axi_arsize_converter_1->vector_out(m_s_axi_arsize_converter_1_signal);
    mp_S01_AXI_transactor->ARSIZE(m_s_axi_arsize_converter_1_signal);
    mp_s_axi_arburst_converter_1 = new xsc::common::vector2vector_converter<4,2>("s_axi_arburst_converter_1");
    mp_s_axi_arburst_converter_1->vector_in(s_axi_split_arburst_out_1);
    mp_s_axi_arburst_converter_1->vector_out(m_s_axi_arburst_converter_1_signal);
    mp_S01_AXI_transactor->ARBURST(m_s_axi_arburst_converter_1_signal);
    mp_s_axi_arlock_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arlock_converter_1");
    mp_s_axi_arlock_converter_1->vector_in(s_axi_split_arlock_out_1);
    mp_s_axi_arlock_converter_1->scalar_out(m_s_axi_arlock_converter_1_signal);
    mp_S01_AXI_transactor->ARLOCK(m_s_axi_arlock_converter_1_signal);
    mp_s_axi_arcache_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_arcache_converter_1");
    mp_s_axi_arcache_converter_1->vector_in(s_axi_split_arcache_out_1);
    mp_s_axi_arcache_converter_1->vector_out(m_s_axi_arcache_converter_1_signal);
    mp_S01_AXI_transactor->ARCACHE(m_s_axi_arcache_converter_1_signal);
    mp_s_axi_arprot_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_arprot_converter_1");
    mp_s_axi_arprot_converter_1->vector_in(s_axi_split_arprot_out_1);
    mp_s_axi_arprot_converter_1->vector_out(m_s_axi_arprot_converter_1_signal);
    mp_S01_AXI_transactor->ARPROT(m_s_axi_arprot_converter_1_signal);
    mp_s_axi_arqos_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_arqos_converter_1");
    mp_s_axi_arqos_converter_1->vector_in(s_axi_split_arqos_out_1);
    mp_s_axi_arqos_converter_1->vector_out(m_s_axi_arqos_converter_1_signal);
    mp_S01_AXI_transactor->ARQOS(m_s_axi_arqos_converter_1_signal);
    mp_s_axi_arvalid_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arvalid_converter_1");
    mp_s_axi_arvalid_converter_1->vector_in(s_axi_split_arvalid_out_1);
    mp_s_axi_arvalid_converter_1->scalar_out(m_s_axi_arvalid_converter_1_signal);
    mp_S01_AXI_transactor->ARVALID(m_s_axi_arvalid_converter_1_signal);
    mp_s_axi_arready_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_arready_converter_1");
    mp_s_axi_arready_converter_1->scalar_in(m_s_axi_arready_converter_1_signal);
    mp_s_axi_arready_converter_1->vector_out(s_axi_concat_arready_out_1);
    mp_S01_AXI_transactor->ARREADY(m_s_axi_arready_converter_1_signal);
    mp_s_axi_rid_converter_1 = new xsc::common::vector2vector_converter<1,2>("s_axi_rid_converter_1");
    mp_s_axi_rid_converter_1->vector_in(m_s_axi_rid_converter_1_signal);
    mp_s_axi_rid_converter_1->vector_out(s_axi_concat_rid_out_1);
    mp_S01_AXI_transactor->RID(m_s_axi_rid_converter_1_signal);
    mp_s_axi_rdata_converter_1 = new xsc::common::vector2vector_converter<256,512>("s_axi_rdata_converter_1");
    mp_s_axi_rdata_converter_1->vector_in(m_s_axi_rdata_converter_1_signal);
    mp_s_axi_rdata_converter_1->vector_out(s_axi_concat_rdata_out_1);
    mp_S01_AXI_transactor->RDATA(m_s_axi_rdata_converter_1_signal);
    mp_s_axi_rresp_converter_1 = new xsc::common::vector2vector_converter<2,4>("s_axi_rresp_converter_1");
    mp_s_axi_rresp_converter_1->vector_in(m_s_axi_rresp_converter_1_signal);
    mp_s_axi_rresp_converter_1->vector_out(s_axi_concat_rresp_out_1);
    mp_S01_AXI_transactor->RRESP(m_s_axi_rresp_converter_1_signal);
    mp_s_axi_rlast_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rlast_converter_1");
    mp_s_axi_rlast_converter_1->scalar_in(m_s_axi_rlast_converter_1_signal);
    mp_s_axi_rlast_converter_1->vector_out(s_axi_concat_rlast_out_1);
    mp_S01_AXI_transactor->RLAST(m_s_axi_rlast_converter_1_signal);
    mp_s_axi_rvalid_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rvalid_converter_1");
    mp_s_axi_rvalid_converter_1->scalar_in(m_s_axi_rvalid_converter_1_signal);
    mp_s_axi_rvalid_converter_1->vector_out(s_axi_concat_rvalid_out_1);
    mp_S01_AXI_transactor->RVALID(m_s_axi_rvalid_converter_1_signal);
    mp_s_axi_rready_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_rready_converter_1");
    mp_s_axi_rready_converter_1->vector_in(s_axi_split_rready_out_1);
    mp_s_axi_rready_converter_1->scalar_out(m_s_axi_rready_converter_1_signal);
    mp_S01_AXI_transactor->RREADY(m_s_axi_rready_converter_1_signal);
    mp_S01_AXI_transactor->CLK(aclk);
    mp_S01_AXI_transactor->RST(aresetn);

    // S01_AXI' transactor sockets

    mp_impl->target_1_rd_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->target_1_wr_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
design_1_axi_crossbar_0_1::design_1_axi_crossbar_0_1(const sc_core::sc_module_name& nm) : design_1_axi_crossbar_0_1_sc(nm), aclk("aclk"), aresetn("aresetn"), s_axi_awid("s_axi_awid"), s_axi_awaddr("s_axi_awaddr"), s_axi_awlen("s_axi_awlen"), s_axi_awsize("s_axi_awsize"), s_axi_awburst("s_axi_awburst"), s_axi_awlock("s_axi_awlock"), s_axi_awcache("s_axi_awcache"), s_axi_awprot("s_axi_awprot"), s_axi_awqos("s_axi_awqos"), s_axi_awuser("s_axi_awuser"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wlast("s_axi_wlast"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bid("s_axi_bid"), s_axi_bresp("s_axi_bresp"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_arid("s_axi_arid"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arsize("s_axi_arsize"), s_axi_arburst("s_axi_arburst"), s_axi_arlock("s_axi_arlock"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arqos("s_axi_arqos"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rid("s_axi_rid"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_awid("m_axi_awid"), m_axi_awaddr("m_axi_awaddr"), m_axi_awlen("m_axi_awlen"), m_axi_awsize("m_axi_awsize"), m_axi_awburst("m_axi_awburst"), m_axi_awlock("m_axi_awlock"), m_axi_awcache("m_axi_awcache"), m_axi_awprot("m_axi_awprot"), m_axi_awregion("m_axi_awregion"), m_axi_awqos("m_axi_awqos"), m_axi_awuser("m_axi_awuser"), m_axi_awvalid("m_axi_awvalid"), m_axi_awready("m_axi_awready"), m_axi_wdata("m_axi_wdata"), m_axi_wstrb("m_axi_wstrb"), m_axi_wlast("m_axi_wlast"), m_axi_wvalid("m_axi_wvalid"), m_axi_wready("m_axi_wready"), m_axi_bid("m_axi_bid"), m_axi_bresp("m_axi_bresp"), m_axi_bvalid("m_axi_bvalid"), m_axi_bready("m_axi_bready"), m_axi_arid("m_axi_arid"), m_axi_araddr("m_axi_araddr"), m_axi_arlen("m_axi_arlen"), m_axi_arsize("m_axi_arsize"), m_axi_arburst("m_axi_arburst"), m_axi_arlock("m_axi_arlock"), m_axi_arcache("m_axi_arcache"), m_axi_arprot("m_axi_arprot"), m_axi_arregion("m_axi_arregion"), m_axi_arqos("m_axi_arqos"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rid("m_axi_rid"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rlast("m_axi_rlast"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_s_axi_awid_converter_0 = NULL;
  mp_s_axi_awaddr_converter_0 = NULL;
  mp_s_axi_awlen_converter_0 = NULL;
  mp_s_axi_awsize_converter_0 = NULL;
  mp_s_axi_awburst_converter_0 = NULL;
  mp_s_axi_awlock_converter_0 = NULL;
  mp_s_axi_awcache_converter_0 = NULL;
  mp_s_axi_awprot_converter_0 = NULL;
  mp_s_axi_awqos_converter_0 = NULL;
  mp_s_axi_awuser_converter_0 = NULL;
  mp_s_axi_awvalid_converter_0 = NULL;
  mp_s_axi_awready_converter_0 = NULL;
  mp_s_axi_wdata_converter_0 = NULL;
  mp_s_axi_wstrb_converter_0 = NULL;
  mp_s_axi_wlast_converter_0 = NULL;
  mp_s_axi_wvalid_converter_0 = NULL;
  mp_s_axi_wready_converter_0 = NULL;
  mp_s_axi_bid_converter_0 = NULL;
  mp_s_axi_bresp_converter_0 = NULL;
  mp_s_axi_bvalid_converter_0 = NULL;
  mp_s_axi_bready_converter_0 = NULL;
  mp_s_axi_arid_converter_0 = NULL;
  mp_s_axi_araddr_converter_0 = NULL;
  mp_s_axi_arlen_converter_0 = NULL;
  mp_s_axi_arsize_converter_0 = NULL;
  mp_s_axi_arburst_converter_0 = NULL;
  mp_s_axi_arlock_converter_0 = NULL;
  mp_s_axi_arcache_converter_0 = NULL;
  mp_s_axi_arprot_converter_0 = NULL;
  mp_s_axi_arqos_converter_0 = NULL;
  mp_s_axi_arvalid_converter_0 = NULL;
  mp_s_axi_arready_converter_0 = NULL;
  mp_s_axi_rid_converter_0 = NULL;
  mp_s_axi_rdata_converter_0 = NULL;
  mp_s_axi_rresp_converter_0 = NULL;
  mp_s_axi_rlast_converter_0 = NULL;
  mp_s_axi_rvalid_converter_0 = NULL;
  mp_s_axi_rready_converter_0 = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_m_axi_awlock_converter = NULL;
  mp_m_axi_awvalid_converter = NULL;
  mp_m_axi_awready_converter = NULL;
  mp_m_axi_wlast_converter = NULL;
  mp_m_axi_wvalid_converter = NULL;
  mp_m_axi_wready_converter = NULL;
  mp_m_axi_bvalid_converter = NULL;
  mp_m_axi_bready_converter = NULL;
  mp_m_axi_arlock_converter = NULL;
  mp_m_axi_arvalid_converter = NULL;
  mp_m_axi_arready_converter = NULL;
  mp_m_axi_rlast_converter = NULL;
  mp_m_axi_rvalid_converter = NULL;
  mp_m_axi_rready_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_s_axi_awid_converter_1 = NULL;
  mp_s_axi_awaddr_converter_1 = NULL;
  mp_s_axi_awlen_converter_1 = NULL;
  mp_s_axi_awsize_converter_1 = NULL;
  mp_s_axi_awburst_converter_1 = NULL;
  mp_s_axi_awlock_converter_1 = NULL;
  mp_s_axi_awcache_converter_1 = NULL;
  mp_s_axi_awprot_converter_1 = NULL;
  mp_s_axi_awqos_converter_1 = NULL;
  mp_s_axi_awuser_converter_1 = NULL;
  mp_s_axi_awvalid_converter_1 = NULL;
  mp_s_axi_awready_converter_1 = NULL;
  mp_s_axi_wdata_converter_1 = NULL;
  mp_s_axi_wstrb_converter_1 = NULL;
  mp_s_axi_wlast_converter_1 = NULL;
  mp_s_axi_wvalid_converter_1 = NULL;
  mp_s_axi_wready_converter_1 = NULL;
  mp_s_axi_bid_converter_1 = NULL;
  mp_s_axi_bresp_converter_1 = NULL;
  mp_s_axi_bvalid_converter_1 = NULL;
  mp_s_axi_bready_converter_1 = NULL;
  mp_s_axi_arid_converter_1 = NULL;
  mp_s_axi_araddr_converter_1 = NULL;
  mp_s_axi_arlen_converter_1 = NULL;
  mp_s_axi_arsize_converter_1 = NULL;
  mp_s_axi_arburst_converter_1 = NULL;
  mp_s_axi_arlock_converter_1 = NULL;
  mp_s_axi_arcache_converter_1 = NULL;
  mp_s_axi_arprot_converter_1 = NULL;
  mp_s_axi_arqos_converter_1 = NULL;
  mp_s_axi_arvalid_converter_1 = NULL;
  mp_s_axi_arready_converter_1 = NULL;
  mp_s_axi_rid_converter_1 = NULL;
  mp_s_axi_rdata_converter_1 = NULL;
  mp_s_axi_rresp_converter_1 = NULL;
  mp_s_axi_rlast_converter_1 = NULL;
  mp_s_axi_rvalid_converter_1 = NULL;
  mp_s_axi_rready_converter_1 = NULL;

  // initialize junctures
  mp_s_axi_concat_arready = NULL;
  mp_s_axi_concat_awready = NULL;
  mp_s_axi_concat_bid = NULL;
  mp_s_axi_concat_bresp = NULL;
  mp_s_axi_concat_bvalid = NULL;
  mp_s_axi_concat_rdata = NULL;
  mp_s_axi_concat_rid = NULL;
  mp_s_axi_concat_rlast = NULL;
  mp_s_axi_concat_rresp = NULL;
  mp_s_axi_concat_rvalid = NULL;
  mp_s_axi_concat_wready = NULL;
  mp_s_axi_split_araddr = NULL;
  mp_s_axi_split_arburst = NULL;
  mp_s_axi_split_arcache = NULL;
  mp_s_axi_split_arid = NULL;
  mp_s_axi_split_arlen = NULL;
  mp_s_axi_split_arlock = NULL;
  mp_s_axi_split_arprot = NULL;
  mp_s_axi_split_arqos = NULL;
  mp_s_axi_split_arsize = NULL;
  mp_s_axi_split_arvalid = NULL;
  mp_s_axi_split_awaddr = NULL;
  mp_s_axi_split_awburst = NULL;
  mp_s_axi_split_awcache = NULL;
  mp_s_axi_split_awid = NULL;
  mp_s_axi_split_awlen = NULL;
  mp_s_axi_split_awlock = NULL;
  mp_s_axi_split_awprot = NULL;
  mp_s_axi_split_awqos = NULL;
  mp_s_axi_split_awsize = NULL;
  mp_s_axi_split_awuser = NULL;
  mp_s_axi_split_awvalid = NULL;
  mp_s_axi_split_bready = NULL;
  mp_s_axi_split_rready = NULL;
  mp_s_axi_split_wdata = NULL;
  mp_s_axi_split_wlast = NULL;
  mp_s_axi_split_wstrb = NULL;
  mp_s_axi_split_wvalid = NULL;
  mp_s_axi_split_awid = new xsc::xsc_split<2, 2>("s_axi_split_awid");
  mp_s_axi_split_awid->in_port(s_axi_awid);
  mp_s_axi_split_awid->out_port[0](s_axi_split_awid_out_0);
    mp_s_axi_split_awid->add_mask(0,1,0);
  mp_s_axi_split_awaddr = new xsc::xsc_split<64, 2>("s_axi_split_awaddr");
  mp_s_axi_split_awaddr->in_port(s_axi_awaddr);
  mp_s_axi_split_awaddr->out_port[0](s_axi_split_awaddr_out_0);
    mp_s_axi_split_awaddr->add_mask(0,32,0);
  mp_s_axi_split_awlen = new xsc::xsc_split<16, 2>("s_axi_split_awlen");
  mp_s_axi_split_awlen->in_port(s_axi_awlen);
  mp_s_axi_split_awlen->out_port[0](s_axi_split_awlen_out_0);
    mp_s_axi_split_awlen->add_mask(0,8,0);
  mp_s_axi_split_awsize = new xsc::xsc_split<6, 2>("s_axi_split_awsize");
  mp_s_axi_split_awsize->in_port(s_axi_awsize);
  mp_s_axi_split_awsize->out_port[0](s_axi_split_awsize_out_0);
    mp_s_axi_split_awsize->add_mask(0,3,0);
  mp_s_axi_split_awburst = new xsc::xsc_split<4, 2>("s_axi_split_awburst");
  mp_s_axi_split_awburst->in_port(s_axi_awburst);
  mp_s_axi_split_awburst->out_port[0](s_axi_split_awburst_out_0);
    mp_s_axi_split_awburst->add_mask(0,2,0);
  mp_s_axi_split_awlock = new xsc::xsc_split<2, 2>("s_axi_split_awlock");
  mp_s_axi_split_awlock->in_port(s_axi_awlock);
  mp_s_axi_split_awlock->out_port[0](s_axi_split_awlock_out_0);
    mp_s_axi_split_awlock->add_mask(0,1,0);
  mp_s_axi_split_awcache = new xsc::xsc_split<8, 2>("s_axi_split_awcache");
  mp_s_axi_split_awcache->in_port(s_axi_awcache);
  mp_s_axi_split_awcache->out_port[0](s_axi_split_awcache_out_0);
    mp_s_axi_split_awcache->add_mask(0,4,0);
  mp_s_axi_split_awprot = new xsc::xsc_split<6, 2>("s_axi_split_awprot");
  mp_s_axi_split_awprot->in_port(s_axi_awprot);
  mp_s_axi_split_awprot->out_port[0](s_axi_split_awprot_out_0);
    mp_s_axi_split_awprot->add_mask(0,3,0);
  mp_s_axi_split_awqos = new xsc::xsc_split<8, 2>("s_axi_split_awqos");
  mp_s_axi_split_awqos->in_port(s_axi_awqos);
  mp_s_axi_split_awqos->out_port[0](s_axi_split_awqos_out_0);
    mp_s_axi_split_awqos->add_mask(0,4,0);
  mp_s_axi_split_awuser = new xsc::xsc_split<8, 2>("s_axi_split_awuser");
  mp_s_axi_split_awuser->in_port(s_axi_awuser);
  mp_s_axi_split_awuser->out_port[0](s_axi_split_awuser_out_0);
    mp_s_axi_split_awuser->add_mask(0,4,0);
  mp_s_axi_split_awvalid = new xsc::xsc_split<2, 2>("s_axi_split_awvalid");
  mp_s_axi_split_awvalid->in_port(s_axi_awvalid);
  mp_s_axi_split_awvalid->out_port[0](s_axi_split_awvalid_out_0);
    mp_s_axi_split_awvalid->add_mask(0,1,0);
  mp_s_axi_concat_awready = new xsc::xsc_concatenator<2, 2>("s_axi_concat_awready");
  mp_s_axi_concat_awready->in_port[0](s_axi_concat_awready_out_0);
  mp_s_axi_concat_awready->out_port(s_axi_awready);
    mp_s_axi_concat_awready->offset_port(0, 0);
  mp_s_axi_split_wdata = new xsc::xsc_split<512, 2>("s_axi_split_wdata");
  mp_s_axi_split_wdata->in_port(s_axi_wdata);
  mp_s_axi_split_wdata->out_port[0](s_axi_split_wdata_out_0);
    mp_s_axi_split_wdata->add_mask(0,256,0);
  mp_s_axi_split_wstrb = new xsc::xsc_split<64, 2>("s_axi_split_wstrb");
  mp_s_axi_split_wstrb->in_port(s_axi_wstrb);
  mp_s_axi_split_wstrb->out_port[0](s_axi_split_wstrb_out_0);
    mp_s_axi_split_wstrb->add_mask(0,32,0);
  mp_s_axi_split_wlast = new xsc::xsc_split<2, 2>("s_axi_split_wlast");
  mp_s_axi_split_wlast->in_port(s_axi_wlast);
  mp_s_axi_split_wlast->out_port[0](s_axi_split_wlast_out_0);
    mp_s_axi_split_wlast->add_mask(0,1,0);
  mp_s_axi_split_wvalid = new xsc::xsc_split<2, 2>("s_axi_split_wvalid");
  mp_s_axi_split_wvalid->in_port(s_axi_wvalid);
  mp_s_axi_split_wvalid->out_port[0](s_axi_split_wvalid_out_0);
    mp_s_axi_split_wvalid->add_mask(0,1,0);
  mp_s_axi_concat_wready = new xsc::xsc_concatenator<2, 2>("s_axi_concat_wready");
  mp_s_axi_concat_wready->in_port[0](s_axi_concat_wready_out_0);
  mp_s_axi_concat_wready->out_port(s_axi_wready);
    mp_s_axi_concat_wready->offset_port(0, 0);
  mp_s_axi_concat_bid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_bid");
  mp_s_axi_concat_bid->in_port[0](s_axi_concat_bid_out_0);
  mp_s_axi_concat_bid->out_port(s_axi_bid);
    mp_s_axi_concat_bid->offset_port(0, 0);
  mp_s_axi_concat_bresp = new xsc::xsc_concatenator<4, 2>("s_axi_concat_bresp");
  mp_s_axi_concat_bresp->in_port[0](s_axi_concat_bresp_out_0);
  mp_s_axi_concat_bresp->out_port(s_axi_bresp);
    mp_s_axi_concat_bresp->offset_port(0, 0);
  mp_s_axi_concat_bvalid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_bvalid");
  mp_s_axi_concat_bvalid->in_port[0](s_axi_concat_bvalid_out_0);
  mp_s_axi_concat_bvalid->out_port(s_axi_bvalid);
    mp_s_axi_concat_bvalid->offset_port(0, 0);
  mp_s_axi_split_bready = new xsc::xsc_split<2, 2>("s_axi_split_bready");
  mp_s_axi_split_bready->in_port(s_axi_bready);
  mp_s_axi_split_bready->out_port[0](s_axi_split_bready_out_0);
    mp_s_axi_split_bready->add_mask(0,1,0);
  mp_s_axi_split_arid = new xsc::xsc_split<2, 2>("s_axi_split_arid");
  mp_s_axi_split_arid->in_port(s_axi_arid);
  mp_s_axi_split_arid->out_port[0](s_axi_split_arid_out_0);
    mp_s_axi_split_arid->add_mask(0,1,0);
  mp_s_axi_split_araddr = new xsc::xsc_split<64, 2>("s_axi_split_araddr");
  mp_s_axi_split_araddr->in_port(s_axi_araddr);
  mp_s_axi_split_araddr->out_port[0](s_axi_split_araddr_out_0);
    mp_s_axi_split_araddr->add_mask(0,32,0);
  mp_s_axi_split_arlen = new xsc::xsc_split<16, 2>("s_axi_split_arlen");
  mp_s_axi_split_arlen->in_port(s_axi_arlen);
  mp_s_axi_split_arlen->out_port[0](s_axi_split_arlen_out_0);
    mp_s_axi_split_arlen->add_mask(0,8,0);
  mp_s_axi_split_arsize = new xsc::xsc_split<6, 2>("s_axi_split_arsize");
  mp_s_axi_split_arsize->in_port(s_axi_arsize);
  mp_s_axi_split_arsize->out_port[0](s_axi_split_arsize_out_0);
    mp_s_axi_split_arsize->add_mask(0,3,0);
  mp_s_axi_split_arburst = new xsc::xsc_split<4, 2>("s_axi_split_arburst");
  mp_s_axi_split_arburst->in_port(s_axi_arburst);
  mp_s_axi_split_arburst->out_port[0](s_axi_split_arburst_out_0);
    mp_s_axi_split_arburst->add_mask(0,2,0);
  mp_s_axi_split_arlock = new xsc::xsc_split<2, 2>("s_axi_split_arlock");
  mp_s_axi_split_arlock->in_port(s_axi_arlock);
  mp_s_axi_split_arlock->out_port[0](s_axi_split_arlock_out_0);
    mp_s_axi_split_arlock->add_mask(0,1,0);
  mp_s_axi_split_arcache = new xsc::xsc_split<8, 2>("s_axi_split_arcache");
  mp_s_axi_split_arcache->in_port(s_axi_arcache);
  mp_s_axi_split_arcache->out_port[0](s_axi_split_arcache_out_0);
    mp_s_axi_split_arcache->add_mask(0,4,0);
  mp_s_axi_split_arprot = new xsc::xsc_split<6, 2>("s_axi_split_arprot");
  mp_s_axi_split_arprot->in_port(s_axi_arprot);
  mp_s_axi_split_arprot->out_port[0](s_axi_split_arprot_out_0);
    mp_s_axi_split_arprot->add_mask(0,3,0);
  mp_s_axi_split_arqos = new xsc::xsc_split<8, 2>("s_axi_split_arqos");
  mp_s_axi_split_arqos->in_port(s_axi_arqos);
  mp_s_axi_split_arqos->out_port[0](s_axi_split_arqos_out_0);
    mp_s_axi_split_arqos->add_mask(0,4,0);
  mp_s_axi_split_arvalid = new xsc::xsc_split<2, 2>("s_axi_split_arvalid");
  mp_s_axi_split_arvalid->in_port(s_axi_arvalid);
  mp_s_axi_split_arvalid->out_port[0](s_axi_split_arvalid_out_0);
    mp_s_axi_split_arvalid->add_mask(0,1,0);
  mp_s_axi_concat_arready = new xsc::xsc_concatenator<2, 2>("s_axi_concat_arready");
  mp_s_axi_concat_arready->in_port[0](s_axi_concat_arready_out_0);
  mp_s_axi_concat_arready->out_port(s_axi_arready);
    mp_s_axi_concat_arready->offset_port(0, 0);
  mp_s_axi_concat_rid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_rid");
  mp_s_axi_concat_rid->in_port[0](s_axi_concat_rid_out_0);
  mp_s_axi_concat_rid->out_port(s_axi_rid);
    mp_s_axi_concat_rid->offset_port(0, 0);
  mp_s_axi_concat_rdata = new xsc::xsc_concatenator<512, 2>("s_axi_concat_rdata");
  mp_s_axi_concat_rdata->in_port[0](s_axi_concat_rdata_out_0);
  mp_s_axi_concat_rdata->out_port(s_axi_rdata);
    mp_s_axi_concat_rdata->offset_port(0, 0);
  mp_s_axi_concat_rresp = new xsc::xsc_concatenator<4, 2>("s_axi_concat_rresp");
  mp_s_axi_concat_rresp->in_port[0](s_axi_concat_rresp_out_0);
  mp_s_axi_concat_rresp->out_port(s_axi_rresp);
    mp_s_axi_concat_rresp->offset_port(0, 0);
  mp_s_axi_concat_rlast = new xsc::xsc_concatenator<2, 2>("s_axi_concat_rlast");
  mp_s_axi_concat_rlast->in_port[0](s_axi_concat_rlast_out_0);
  mp_s_axi_concat_rlast->out_port(s_axi_rlast);
    mp_s_axi_concat_rlast->offset_port(0, 0);
  mp_s_axi_concat_rvalid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_rvalid");
  mp_s_axi_concat_rvalid->in_port[0](s_axi_concat_rvalid_out_0);
  mp_s_axi_concat_rvalid->out_port(s_axi_rvalid);
    mp_s_axi_concat_rvalid->offset_port(0, 0);
  mp_s_axi_split_rready = new xsc::xsc_split<2, 2>("s_axi_split_rready");
  mp_s_axi_split_rready->in_port(s_axi_rready);
  mp_s_axi_split_rready->out_port[0](s_axi_split_rready_out_0);
    mp_s_axi_split_rready->add_mask(0,1,0);
  
  mp_s_axi_split_awid->out_port[1](s_axi_split_awid_out_1);
    mp_s_axi_split_awid->add_mask(1,2,1);
  
  mp_s_axi_split_awaddr->out_port[1](s_axi_split_awaddr_out_1);
    mp_s_axi_split_awaddr->add_mask(1,64,32);
  
  mp_s_axi_split_awlen->out_port[1](s_axi_split_awlen_out_1);
    mp_s_axi_split_awlen->add_mask(1,16,8);
  
  mp_s_axi_split_awsize->out_port[1](s_axi_split_awsize_out_1);
    mp_s_axi_split_awsize->add_mask(1,6,3);
  
  mp_s_axi_split_awburst->out_port[1](s_axi_split_awburst_out_1);
    mp_s_axi_split_awburst->add_mask(1,4,2);
  
  mp_s_axi_split_awlock->out_port[1](s_axi_split_awlock_out_1);
    mp_s_axi_split_awlock->add_mask(1,2,1);
  
  mp_s_axi_split_awcache->out_port[1](s_axi_split_awcache_out_1);
    mp_s_axi_split_awcache->add_mask(1,8,4);
  
  mp_s_axi_split_awprot->out_port[1](s_axi_split_awprot_out_1);
    mp_s_axi_split_awprot->add_mask(1,6,3);
  
  mp_s_axi_split_awqos->out_port[1](s_axi_split_awqos_out_1);
    mp_s_axi_split_awqos->add_mask(1,8,4);
  
  mp_s_axi_split_awuser->out_port[1](s_axi_split_awuser_out_1);
    mp_s_axi_split_awuser->add_mask(1,8,4);
  
  mp_s_axi_split_awvalid->out_port[1](s_axi_split_awvalid_out_1);
    mp_s_axi_split_awvalid->add_mask(1,2,1);
  mp_s_axi_concat_awready->in_port[1](s_axi_concat_awready_out_1);
  mp_s_axi_concat_awready->offset_port(1, 1);
  
  mp_s_axi_split_wdata->out_port[1](s_axi_split_wdata_out_1);
    mp_s_axi_split_wdata->add_mask(1,512,256);
  
  mp_s_axi_split_wstrb->out_port[1](s_axi_split_wstrb_out_1);
    mp_s_axi_split_wstrb->add_mask(1,64,32);
  
  mp_s_axi_split_wlast->out_port[1](s_axi_split_wlast_out_1);
    mp_s_axi_split_wlast->add_mask(1,2,1);
  
  mp_s_axi_split_wvalid->out_port[1](s_axi_split_wvalid_out_1);
    mp_s_axi_split_wvalid->add_mask(1,2,1);
  mp_s_axi_concat_wready->in_port[1](s_axi_concat_wready_out_1);
  mp_s_axi_concat_wready->offset_port(1, 1);
  mp_s_axi_concat_bid->in_port[1](s_axi_concat_bid_out_1);
  mp_s_axi_concat_bid->offset_port(1, 1);
  mp_s_axi_concat_bresp->in_port[1](s_axi_concat_bresp_out_1);
  mp_s_axi_concat_bresp->offset_port(1, 2);
  mp_s_axi_concat_bvalid->in_port[1](s_axi_concat_bvalid_out_1);
  mp_s_axi_concat_bvalid->offset_port(1, 1);
  
  mp_s_axi_split_bready->out_port[1](s_axi_split_bready_out_1);
    mp_s_axi_split_bready->add_mask(1,2,1);
  
  mp_s_axi_split_arid->out_port[1](s_axi_split_arid_out_1);
    mp_s_axi_split_arid->add_mask(1,2,1);
  
  mp_s_axi_split_araddr->out_port[1](s_axi_split_araddr_out_1);
    mp_s_axi_split_araddr->add_mask(1,64,32);
  
  mp_s_axi_split_arlen->out_port[1](s_axi_split_arlen_out_1);
    mp_s_axi_split_arlen->add_mask(1,16,8);
  
  mp_s_axi_split_arsize->out_port[1](s_axi_split_arsize_out_1);
    mp_s_axi_split_arsize->add_mask(1,6,3);
  
  mp_s_axi_split_arburst->out_port[1](s_axi_split_arburst_out_1);
    mp_s_axi_split_arburst->add_mask(1,4,2);
  
  mp_s_axi_split_arlock->out_port[1](s_axi_split_arlock_out_1);
    mp_s_axi_split_arlock->add_mask(1,2,1);
  
  mp_s_axi_split_arcache->out_port[1](s_axi_split_arcache_out_1);
    mp_s_axi_split_arcache->add_mask(1,8,4);
  
  mp_s_axi_split_arprot->out_port[1](s_axi_split_arprot_out_1);
    mp_s_axi_split_arprot->add_mask(1,6,3);
  
  mp_s_axi_split_arqos->out_port[1](s_axi_split_arqos_out_1);
    mp_s_axi_split_arqos->add_mask(1,8,4);
  
  mp_s_axi_split_arvalid->out_port[1](s_axi_split_arvalid_out_1);
    mp_s_axi_split_arvalid->add_mask(1,2,1);
  mp_s_axi_concat_arready->in_port[1](s_axi_concat_arready_out_1);
  mp_s_axi_concat_arready->offset_port(1, 1);
  mp_s_axi_concat_rid->in_port[1](s_axi_concat_rid_out_1);
  mp_s_axi_concat_rid->offset_port(1, 1);
  mp_s_axi_concat_rdata->in_port[1](s_axi_concat_rdata_out_1);
  mp_s_axi_concat_rdata->offset_port(1, 256);
  mp_s_axi_concat_rresp->in_port[1](s_axi_concat_rresp_out_1);
  mp_s_axi_concat_rresp->offset_port(1, 2);
  mp_s_axi_concat_rlast->in_port[1](s_axi_concat_rlast_out_1);
  mp_s_axi_concat_rlast->offset_port(1, 1);
  mp_s_axi_concat_rvalid->in_port[1](s_axi_concat_rvalid_out_1);
  mp_s_axi_concat_rvalid->offset_port(1, 1);
  
  mp_s_axi_split_rready->out_port[1](s_axi_split_rready_out_1);
    mp_s_axi_split_rready->add_mask(1,2,1);

  // initialize socket stubs

}

void design_1_axi_crossbar_0_1::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_crossbar_0_1", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "4");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<256,32,1,4,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_s_axi_awid_converter_0 = new xsc::common::vector2vector_converter<2,1>("s_axi_awid_converter_0");
    mp_s_axi_awid_converter_0->vector_in(s_axi_split_awid_out_0);
    mp_s_axi_awid_converter_0->vector_out(m_s_axi_awid_converter_0_signal);
    mp_S00_AXI_transactor->AWID(m_s_axi_awid_converter_0_signal);
    mp_s_axi_awaddr_converter_0 = new xsc::common::vector2vector_converter<64,32>("s_axi_awaddr_converter_0");
    mp_s_axi_awaddr_converter_0->vector_in(s_axi_split_awaddr_out_0);
    mp_s_axi_awaddr_converter_0->vector_out(m_s_axi_awaddr_converter_0_signal);
    mp_S00_AXI_transactor->AWADDR(m_s_axi_awaddr_converter_0_signal);
    mp_s_axi_awlen_converter_0 = new xsc::common::vector2vector_converter<16,8>("s_axi_awlen_converter_0");
    mp_s_axi_awlen_converter_0->vector_in(s_axi_split_awlen_out_0);
    mp_s_axi_awlen_converter_0->vector_out(m_s_axi_awlen_converter_0_signal);
    mp_S00_AXI_transactor->AWLEN(m_s_axi_awlen_converter_0_signal);
    mp_s_axi_awsize_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_awsize_converter_0");
    mp_s_axi_awsize_converter_0->vector_in(s_axi_split_awsize_out_0);
    mp_s_axi_awsize_converter_0->vector_out(m_s_axi_awsize_converter_0_signal);
    mp_S00_AXI_transactor->AWSIZE(m_s_axi_awsize_converter_0_signal);
    mp_s_axi_awburst_converter_0 = new xsc::common::vector2vector_converter<4,2>("s_axi_awburst_converter_0");
    mp_s_axi_awburst_converter_0->vector_in(s_axi_split_awburst_out_0);
    mp_s_axi_awburst_converter_0->vector_out(m_s_axi_awburst_converter_0_signal);
    mp_S00_AXI_transactor->AWBURST(m_s_axi_awburst_converter_0_signal);
    mp_s_axi_awlock_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awlock_converter_0");
    mp_s_axi_awlock_converter_0->vector_in(s_axi_split_awlock_out_0);
    mp_s_axi_awlock_converter_0->scalar_out(m_s_axi_awlock_converter_0_signal);
    mp_S00_AXI_transactor->AWLOCK(m_s_axi_awlock_converter_0_signal);
    mp_s_axi_awcache_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_awcache_converter_0");
    mp_s_axi_awcache_converter_0->vector_in(s_axi_split_awcache_out_0);
    mp_s_axi_awcache_converter_0->vector_out(m_s_axi_awcache_converter_0_signal);
    mp_S00_AXI_transactor->AWCACHE(m_s_axi_awcache_converter_0_signal);
    mp_s_axi_awprot_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_awprot_converter_0");
    mp_s_axi_awprot_converter_0->vector_in(s_axi_split_awprot_out_0);
    mp_s_axi_awprot_converter_0->vector_out(m_s_axi_awprot_converter_0_signal);
    mp_S00_AXI_transactor->AWPROT(m_s_axi_awprot_converter_0_signal);
    mp_s_axi_awqos_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_awqos_converter_0");
    mp_s_axi_awqos_converter_0->vector_in(s_axi_split_awqos_out_0);
    mp_s_axi_awqos_converter_0->vector_out(m_s_axi_awqos_converter_0_signal);
    mp_S00_AXI_transactor->AWQOS(m_s_axi_awqos_converter_0_signal);
    mp_s_axi_awuser_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_awuser_converter_0");
    mp_s_axi_awuser_converter_0->vector_in(s_axi_split_awuser_out_0);
    mp_s_axi_awuser_converter_0->vector_out(m_s_axi_awuser_converter_0_signal);
    mp_S00_AXI_transactor->AWUSER(m_s_axi_awuser_converter_0_signal);
    mp_s_axi_awvalid_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awvalid_converter_0");
    mp_s_axi_awvalid_converter_0->vector_in(s_axi_split_awvalid_out_0);
    mp_s_axi_awvalid_converter_0->scalar_out(m_s_axi_awvalid_converter_0_signal);
    mp_S00_AXI_transactor->AWVALID(m_s_axi_awvalid_converter_0_signal);
    mp_s_axi_awready_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_awready_converter_0");
    mp_s_axi_awready_converter_0->scalar_in(m_s_axi_awready_converter_0_signal);
    mp_s_axi_awready_converter_0->vector_out(s_axi_concat_awready_out_0);
    mp_S00_AXI_transactor->AWREADY(m_s_axi_awready_converter_0_signal);
    mp_s_axi_wdata_converter_0 = new xsc::common::vector2vector_converter<512,256>("s_axi_wdata_converter_0");
    mp_s_axi_wdata_converter_0->vector_in(s_axi_split_wdata_out_0);
    mp_s_axi_wdata_converter_0->vector_out(m_s_axi_wdata_converter_0_signal);
    mp_S00_AXI_transactor->WDATA(m_s_axi_wdata_converter_0_signal);
    mp_s_axi_wstrb_converter_0 = new xsc::common::vector2vector_converter<64,32>("s_axi_wstrb_converter_0");
    mp_s_axi_wstrb_converter_0->vector_in(s_axi_split_wstrb_out_0);
    mp_s_axi_wstrb_converter_0->vector_out(m_s_axi_wstrb_converter_0_signal);
    mp_S00_AXI_transactor->WSTRB(m_s_axi_wstrb_converter_0_signal);
    mp_s_axi_wlast_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wlast_converter_0");
    mp_s_axi_wlast_converter_0->vector_in(s_axi_split_wlast_out_0);
    mp_s_axi_wlast_converter_0->scalar_out(m_s_axi_wlast_converter_0_signal);
    mp_S00_AXI_transactor->WLAST(m_s_axi_wlast_converter_0_signal);
    mp_s_axi_wvalid_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wvalid_converter_0");
    mp_s_axi_wvalid_converter_0->vector_in(s_axi_split_wvalid_out_0);
    mp_s_axi_wvalid_converter_0->scalar_out(m_s_axi_wvalid_converter_0_signal);
    mp_S00_AXI_transactor->WVALID(m_s_axi_wvalid_converter_0_signal);
    mp_s_axi_wready_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_wready_converter_0");
    mp_s_axi_wready_converter_0->scalar_in(m_s_axi_wready_converter_0_signal);
    mp_s_axi_wready_converter_0->vector_out(s_axi_concat_wready_out_0);
    mp_S00_AXI_transactor->WREADY(m_s_axi_wready_converter_0_signal);
    mp_s_axi_bid_converter_0 = new xsc::common::vector2vector_converter<1,2>("s_axi_bid_converter_0");
    mp_s_axi_bid_converter_0->vector_in(m_s_axi_bid_converter_0_signal);
    mp_s_axi_bid_converter_0->vector_out(s_axi_concat_bid_out_0);
    mp_S00_AXI_transactor->BID(m_s_axi_bid_converter_0_signal);
    mp_s_axi_bresp_converter_0 = new xsc::common::vector2vector_converter<2,4>("s_axi_bresp_converter_0");
    mp_s_axi_bresp_converter_0->vector_in(m_s_axi_bresp_converter_0_signal);
    mp_s_axi_bresp_converter_0->vector_out(s_axi_concat_bresp_out_0);
    mp_S00_AXI_transactor->BRESP(m_s_axi_bresp_converter_0_signal);
    mp_s_axi_bvalid_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_bvalid_converter_0");
    mp_s_axi_bvalid_converter_0->scalar_in(m_s_axi_bvalid_converter_0_signal);
    mp_s_axi_bvalid_converter_0->vector_out(s_axi_concat_bvalid_out_0);
    mp_S00_AXI_transactor->BVALID(m_s_axi_bvalid_converter_0_signal);
    mp_s_axi_bready_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_bready_converter_0");
    mp_s_axi_bready_converter_0->vector_in(s_axi_split_bready_out_0);
    mp_s_axi_bready_converter_0->scalar_out(m_s_axi_bready_converter_0_signal);
    mp_S00_AXI_transactor->BREADY(m_s_axi_bready_converter_0_signal);
    mp_s_axi_arid_converter_0 = new xsc::common::vector2vector_converter<2,1>("s_axi_arid_converter_0");
    mp_s_axi_arid_converter_0->vector_in(s_axi_split_arid_out_0);
    mp_s_axi_arid_converter_0->vector_out(m_s_axi_arid_converter_0_signal);
    mp_S00_AXI_transactor->ARID(m_s_axi_arid_converter_0_signal);
    mp_s_axi_araddr_converter_0 = new xsc::common::vector2vector_converter<64,32>("s_axi_araddr_converter_0");
    mp_s_axi_araddr_converter_0->vector_in(s_axi_split_araddr_out_0);
    mp_s_axi_araddr_converter_0->vector_out(m_s_axi_araddr_converter_0_signal);
    mp_S00_AXI_transactor->ARADDR(m_s_axi_araddr_converter_0_signal);
    mp_s_axi_arlen_converter_0 = new xsc::common::vector2vector_converter<16,8>("s_axi_arlen_converter_0");
    mp_s_axi_arlen_converter_0->vector_in(s_axi_split_arlen_out_0);
    mp_s_axi_arlen_converter_0->vector_out(m_s_axi_arlen_converter_0_signal);
    mp_S00_AXI_transactor->ARLEN(m_s_axi_arlen_converter_0_signal);
    mp_s_axi_arsize_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_arsize_converter_0");
    mp_s_axi_arsize_converter_0->vector_in(s_axi_split_arsize_out_0);
    mp_s_axi_arsize_converter_0->vector_out(m_s_axi_arsize_converter_0_signal);
    mp_S00_AXI_transactor->ARSIZE(m_s_axi_arsize_converter_0_signal);
    mp_s_axi_arburst_converter_0 = new xsc::common::vector2vector_converter<4,2>("s_axi_arburst_converter_0");
    mp_s_axi_arburst_converter_0->vector_in(s_axi_split_arburst_out_0);
    mp_s_axi_arburst_converter_0->vector_out(m_s_axi_arburst_converter_0_signal);
    mp_S00_AXI_transactor->ARBURST(m_s_axi_arburst_converter_0_signal);
    mp_s_axi_arlock_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arlock_converter_0");
    mp_s_axi_arlock_converter_0->vector_in(s_axi_split_arlock_out_0);
    mp_s_axi_arlock_converter_0->scalar_out(m_s_axi_arlock_converter_0_signal);
    mp_S00_AXI_transactor->ARLOCK(m_s_axi_arlock_converter_0_signal);
    mp_s_axi_arcache_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_arcache_converter_0");
    mp_s_axi_arcache_converter_0->vector_in(s_axi_split_arcache_out_0);
    mp_s_axi_arcache_converter_0->vector_out(m_s_axi_arcache_converter_0_signal);
    mp_S00_AXI_transactor->ARCACHE(m_s_axi_arcache_converter_0_signal);
    mp_s_axi_arprot_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_arprot_converter_0");
    mp_s_axi_arprot_converter_0->vector_in(s_axi_split_arprot_out_0);
    mp_s_axi_arprot_converter_0->vector_out(m_s_axi_arprot_converter_0_signal);
    mp_S00_AXI_transactor->ARPROT(m_s_axi_arprot_converter_0_signal);
    mp_s_axi_arqos_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_arqos_converter_0");
    mp_s_axi_arqos_converter_0->vector_in(s_axi_split_arqos_out_0);
    mp_s_axi_arqos_converter_0->vector_out(m_s_axi_arqos_converter_0_signal);
    mp_S00_AXI_transactor->ARQOS(m_s_axi_arqos_converter_0_signal);
    mp_s_axi_arvalid_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arvalid_converter_0");
    mp_s_axi_arvalid_converter_0->vector_in(s_axi_split_arvalid_out_0);
    mp_s_axi_arvalid_converter_0->scalar_out(m_s_axi_arvalid_converter_0_signal);
    mp_S00_AXI_transactor->ARVALID(m_s_axi_arvalid_converter_0_signal);
    mp_s_axi_arready_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_arready_converter_0");
    mp_s_axi_arready_converter_0->scalar_in(m_s_axi_arready_converter_0_signal);
    mp_s_axi_arready_converter_0->vector_out(s_axi_concat_arready_out_0);
    mp_S00_AXI_transactor->ARREADY(m_s_axi_arready_converter_0_signal);
    mp_s_axi_rid_converter_0 = new xsc::common::vector2vector_converter<1,2>("s_axi_rid_converter_0");
    mp_s_axi_rid_converter_0->vector_in(m_s_axi_rid_converter_0_signal);
    mp_s_axi_rid_converter_0->vector_out(s_axi_concat_rid_out_0);
    mp_S00_AXI_transactor->RID(m_s_axi_rid_converter_0_signal);
    mp_s_axi_rdata_converter_0 = new xsc::common::vector2vector_converter<256,512>("s_axi_rdata_converter_0");
    mp_s_axi_rdata_converter_0->vector_in(m_s_axi_rdata_converter_0_signal);
    mp_s_axi_rdata_converter_0->vector_out(s_axi_concat_rdata_out_0);
    mp_S00_AXI_transactor->RDATA(m_s_axi_rdata_converter_0_signal);
    mp_s_axi_rresp_converter_0 = new xsc::common::vector2vector_converter<2,4>("s_axi_rresp_converter_0");
    mp_s_axi_rresp_converter_0->vector_in(m_s_axi_rresp_converter_0_signal);
    mp_s_axi_rresp_converter_0->vector_out(s_axi_concat_rresp_out_0);
    mp_S00_AXI_transactor->RRESP(m_s_axi_rresp_converter_0_signal);
    mp_s_axi_rlast_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rlast_converter_0");
    mp_s_axi_rlast_converter_0->scalar_in(m_s_axi_rlast_converter_0_signal);
    mp_s_axi_rlast_converter_0->vector_out(s_axi_concat_rlast_out_0);
    mp_S00_AXI_transactor->RLAST(m_s_axi_rlast_converter_0_signal);
    mp_s_axi_rvalid_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rvalid_converter_0");
    mp_s_axi_rvalid_converter_0->scalar_in(m_s_axi_rvalid_converter_0_signal);
    mp_s_axi_rvalid_converter_0->vector_out(s_axi_concat_rvalid_out_0);
    mp_S00_AXI_transactor->RVALID(m_s_axi_rvalid_converter_0_signal);
    mp_s_axi_rready_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_rready_converter_0");
    mp_s_axi_rready_converter_0->vector_in(s_axi_split_rready_out_0);
    mp_s_axi_rready_converter_0->scalar_out(m_s_axi_rready_converter_0_signal);
    mp_S00_AXI_transactor->RREADY(m_s_axi_rready_converter_0_signal);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->target_0_rd_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->target_0_wr_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_crossbar_0_1", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "4");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "128");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<256,32,1,4,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWID(m_axi_awid);
    mp_M00_AXI_transactor->AWADDR(m_axi_awaddr);
    mp_M00_AXI_transactor->AWLEN(m_axi_awlen);
    mp_M00_AXI_transactor->AWSIZE(m_axi_awsize);
    mp_M00_AXI_transactor->AWBURST(m_axi_awburst);
    mp_m_axi_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_awlock_converter");
    mp_m_axi_awlock_converter->scalar_in(m_m_axi_awlock_converter_signal);
    mp_m_axi_awlock_converter->vector_out(m_axi_awlock);
    mp_M00_AXI_transactor->AWLOCK(m_m_axi_awlock_converter_signal);
    mp_M00_AXI_transactor->AWCACHE(m_axi_awcache);
    mp_M00_AXI_transactor->AWPROT(m_axi_awprot);
    mp_M00_AXI_transactor->AWREGION(m_axi_awregion);
    mp_M00_AXI_transactor->AWQOS(m_axi_awqos);
    mp_M00_AXI_transactor->AWUSER(m_axi_awuser);
    mp_m_axi_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_awvalid_converter");
    mp_m_axi_awvalid_converter->scalar_in(m_m_axi_awvalid_converter_signal);
    mp_m_axi_awvalid_converter->vector_out(m_axi_awvalid);
    mp_M00_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_signal);
    mp_m_axi_awready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_awready_converter");
    mp_m_axi_awready_converter->vector_in(m_axi_awready);
    mp_m_axi_awready_converter->scalar_out(m_m_axi_awready_converter_signal);
    mp_M00_AXI_transactor->AWREADY(m_m_axi_awready_converter_signal);
    mp_M00_AXI_transactor->WDATA(m_axi_wdata);
    mp_M00_AXI_transactor->WSTRB(m_axi_wstrb);
    mp_m_axi_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_wlast_converter");
    mp_m_axi_wlast_converter->scalar_in(m_m_axi_wlast_converter_signal);
    mp_m_axi_wlast_converter->vector_out(m_axi_wlast);
    mp_M00_AXI_transactor->WLAST(m_m_axi_wlast_converter_signal);
    mp_m_axi_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_wvalid_converter");
    mp_m_axi_wvalid_converter->scalar_in(m_m_axi_wvalid_converter_signal);
    mp_m_axi_wvalid_converter->vector_out(m_axi_wvalid);
    mp_M00_AXI_transactor->WVALID(m_m_axi_wvalid_converter_signal);
    mp_m_axi_wready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_wready_converter");
    mp_m_axi_wready_converter->vector_in(m_axi_wready);
    mp_m_axi_wready_converter->scalar_out(m_m_axi_wready_converter_signal);
    mp_M00_AXI_transactor->WREADY(m_m_axi_wready_converter_signal);
    mp_M00_AXI_transactor->BID(m_axi_bid);
    mp_M00_AXI_transactor->BRESP(m_axi_bresp);
    mp_m_axi_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_bvalid_converter");
    mp_m_axi_bvalid_converter->vector_in(m_axi_bvalid);
    mp_m_axi_bvalid_converter->scalar_out(m_m_axi_bvalid_converter_signal);
    mp_M00_AXI_transactor->BVALID(m_m_axi_bvalid_converter_signal);
    mp_m_axi_bready_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_bready_converter");
    mp_m_axi_bready_converter->scalar_in(m_m_axi_bready_converter_signal);
    mp_m_axi_bready_converter->vector_out(m_axi_bready);
    mp_M00_AXI_transactor->BREADY(m_m_axi_bready_converter_signal);
    mp_M00_AXI_transactor->ARID(m_axi_arid);
    mp_M00_AXI_transactor->ARADDR(m_axi_araddr);
    mp_M00_AXI_transactor->ARLEN(m_axi_arlen);
    mp_M00_AXI_transactor->ARSIZE(m_axi_arsize);
    mp_M00_AXI_transactor->ARBURST(m_axi_arburst);
    mp_m_axi_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_arlock_converter");
    mp_m_axi_arlock_converter->scalar_in(m_m_axi_arlock_converter_signal);
    mp_m_axi_arlock_converter->vector_out(m_axi_arlock);
    mp_M00_AXI_transactor->ARLOCK(m_m_axi_arlock_converter_signal);
    mp_M00_AXI_transactor->ARCACHE(m_axi_arcache);
    mp_M00_AXI_transactor->ARPROT(m_axi_arprot);
    mp_M00_AXI_transactor->ARREGION(m_axi_arregion);
    mp_M00_AXI_transactor->ARQOS(m_axi_arqos);
    mp_m_axi_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_arvalid_converter");
    mp_m_axi_arvalid_converter->scalar_in(m_m_axi_arvalid_converter_signal);
    mp_m_axi_arvalid_converter->vector_out(m_axi_arvalid);
    mp_M00_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_signal);
    mp_m_axi_arready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_arready_converter");
    mp_m_axi_arready_converter->vector_in(m_axi_arready);
    mp_m_axi_arready_converter->scalar_out(m_m_axi_arready_converter_signal);
    mp_M00_AXI_transactor->ARREADY(m_m_axi_arready_converter_signal);
    mp_M00_AXI_transactor->RID(m_axi_rid);
    mp_M00_AXI_transactor->RDATA(m_axi_rdata);
    mp_M00_AXI_transactor->RRESP(m_axi_rresp);
    mp_m_axi_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_rlast_converter");
    mp_m_axi_rlast_converter->vector_in(m_axi_rlast);
    mp_m_axi_rlast_converter->scalar_out(m_m_axi_rlast_converter_signal);
    mp_M00_AXI_transactor->RLAST(m_m_axi_rlast_converter_signal);
    mp_m_axi_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_rvalid_converter");
    mp_m_axi_rvalid_converter->vector_in(m_axi_rvalid);
    mp_m_axi_rvalid_converter->scalar_out(m_m_axi_rvalid_converter_signal);
    mp_M00_AXI_transactor->RVALID(m_m_axi_rvalid_converter_signal);
    mp_m_axi_rready_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_rready_converter");
    mp_m_axi_rready_converter->scalar_in(m_m_axi_rready_converter_signal);
    mp_m_axi_rready_converter->vector_out(m_axi_rready);
    mp_M00_AXI_transactor->RREADY(m_m_axi_rready_converter_signal);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->initiator_0_rd_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->initiator_0_wr_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_crossbar_0_1", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "4");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<256,32,1,4,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);

    // S01_AXI' transactor ports

    mp_s_axi_awid_converter_1 = new xsc::common::vector2vector_converter<2,1>("s_axi_awid_converter_1");
    mp_s_axi_awid_converter_1->vector_in(s_axi_split_awid_out_1);
    mp_s_axi_awid_converter_1->vector_out(m_s_axi_awid_converter_1_signal);
    mp_S01_AXI_transactor->AWID(m_s_axi_awid_converter_1_signal);
    mp_s_axi_awaddr_converter_1 = new xsc::common::vector2vector_converter<64,32>("s_axi_awaddr_converter_1");
    mp_s_axi_awaddr_converter_1->vector_in(s_axi_split_awaddr_out_1);
    mp_s_axi_awaddr_converter_1->vector_out(m_s_axi_awaddr_converter_1_signal);
    mp_S01_AXI_transactor->AWADDR(m_s_axi_awaddr_converter_1_signal);
    mp_s_axi_awlen_converter_1 = new xsc::common::vector2vector_converter<16,8>("s_axi_awlen_converter_1");
    mp_s_axi_awlen_converter_1->vector_in(s_axi_split_awlen_out_1);
    mp_s_axi_awlen_converter_1->vector_out(m_s_axi_awlen_converter_1_signal);
    mp_S01_AXI_transactor->AWLEN(m_s_axi_awlen_converter_1_signal);
    mp_s_axi_awsize_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_awsize_converter_1");
    mp_s_axi_awsize_converter_1->vector_in(s_axi_split_awsize_out_1);
    mp_s_axi_awsize_converter_1->vector_out(m_s_axi_awsize_converter_1_signal);
    mp_S01_AXI_transactor->AWSIZE(m_s_axi_awsize_converter_1_signal);
    mp_s_axi_awburst_converter_1 = new xsc::common::vector2vector_converter<4,2>("s_axi_awburst_converter_1");
    mp_s_axi_awburst_converter_1->vector_in(s_axi_split_awburst_out_1);
    mp_s_axi_awburst_converter_1->vector_out(m_s_axi_awburst_converter_1_signal);
    mp_S01_AXI_transactor->AWBURST(m_s_axi_awburst_converter_1_signal);
    mp_s_axi_awlock_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awlock_converter_1");
    mp_s_axi_awlock_converter_1->vector_in(s_axi_split_awlock_out_1);
    mp_s_axi_awlock_converter_1->scalar_out(m_s_axi_awlock_converter_1_signal);
    mp_S01_AXI_transactor->AWLOCK(m_s_axi_awlock_converter_1_signal);
    mp_s_axi_awcache_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_awcache_converter_1");
    mp_s_axi_awcache_converter_1->vector_in(s_axi_split_awcache_out_1);
    mp_s_axi_awcache_converter_1->vector_out(m_s_axi_awcache_converter_1_signal);
    mp_S01_AXI_transactor->AWCACHE(m_s_axi_awcache_converter_1_signal);
    mp_s_axi_awprot_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_awprot_converter_1");
    mp_s_axi_awprot_converter_1->vector_in(s_axi_split_awprot_out_1);
    mp_s_axi_awprot_converter_1->vector_out(m_s_axi_awprot_converter_1_signal);
    mp_S01_AXI_transactor->AWPROT(m_s_axi_awprot_converter_1_signal);
    mp_s_axi_awqos_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_awqos_converter_1");
    mp_s_axi_awqos_converter_1->vector_in(s_axi_split_awqos_out_1);
    mp_s_axi_awqos_converter_1->vector_out(m_s_axi_awqos_converter_1_signal);
    mp_S01_AXI_transactor->AWQOS(m_s_axi_awqos_converter_1_signal);
    mp_s_axi_awuser_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_awuser_converter_1");
    mp_s_axi_awuser_converter_1->vector_in(s_axi_split_awuser_out_1);
    mp_s_axi_awuser_converter_1->vector_out(m_s_axi_awuser_converter_1_signal);
    mp_S01_AXI_transactor->AWUSER(m_s_axi_awuser_converter_1_signal);
    mp_s_axi_awvalid_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awvalid_converter_1");
    mp_s_axi_awvalid_converter_1->vector_in(s_axi_split_awvalid_out_1);
    mp_s_axi_awvalid_converter_1->scalar_out(m_s_axi_awvalid_converter_1_signal);
    mp_S01_AXI_transactor->AWVALID(m_s_axi_awvalid_converter_1_signal);
    mp_s_axi_awready_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_awready_converter_1");
    mp_s_axi_awready_converter_1->scalar_in(m_s_axi_awready_converter_1_signal);
    mp_s_axi_awready_converter_1->vector_out(s_axi_concat_awready_out_1);
    mp_S01_AXI_transactor->AWREADY(m_s_axi_awready_converter_1_signal);
    mp_s_axi_wdata_converter_1 = new xsc::common::vector2vector_converter<512,256>("s_axi_wdata_converter_1");
    mp_s_axi_wdata_converter_1->vector_in(s_axi_split_wdata_out_1);
    mp_s_axi_wdata_converter_1->vector_out(m_s_axi_wdata_converter_1_signal);
    mp_S01_AXI_transactor->WDATA(m_s_axi_wdata_converter_1_signal);
    mp_s_axi_wstrb_converter_1 = new xsc::common::vector2vector_converter<64,32>("s_axi_wstrb_converter_1");
    mp_s_axi_wstrb_converter_1->vector_in(s_axi_split_wstrb_out_1);
    mp_s_axi_wstrb_converter_1->vector_out(m_s_axi_wstrb_converter_1_signal);
    mp_S01_AXI_transactor->WSTRB(m_s_axi_wstrb_converter_1_signal);
    mp_s_axi_wlast_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wlast_converter_1");
    mp_s_axi_wlast_converter_1->vector_in(s_axi_split_wlast_out_1);
    mp_s_axi_wlast_converter_1->scalar_out(m_s_axi_wlast_converter_1_signal);
    mp_S01_AXI_transactor->WLAST(m_s_axi_wlast_converter_1_signal);
    mp_s_axi_wvalid_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wvalid_converter_1");
    mp_s_axi_wvalid_converter_1->vector_in(s_axi_split_wvalid_out_1);
    mp_s_axi_wvalid_converter_1->scalar_out(m_s_axi_wvalid_converter_1_signal);
    mp_S01_AXI_transactor->WVALID(m_s_axi_wvalid_converter_1_signal);
    mp_s_axi_wready_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_wready_converter_1");
    mp_s_axi_wready_converter_1->scalar_in(m_s_axi_wready_converter_1_signal);
    mp_s_axi_wready_converter_1->vector_out(s_axi_concat_wready_out_1);
    mp_S01_AXI_transactor->WREADY(m_s_axi_wready_converter_1_signal);
    mp_s_axi_bid_converter_1 = new xsc::common::vector2vector_converter<1,2>("s_axi_bid_converter_1");
    mp_s_axi_bid_converter_1->vector_in(m_s_axi_bid_converter_1_signal);
    mp_s_axi_bid_converter_1->vector_out(s_axi_concat_bid_out_1);
    mp_S01_AXI_transactor->BID(m_s_axi_bid_converter_1_signal);
    mp_s_axi_bresp_converter_1 = new xsc::common::vector2vector_converter<2,4>("s_axi_bresp_converter_1");
    mp_s_axi_bresp_converter_1->vector_in(m_s_axi_bresp_converter_1_signal);
    mp_s_axi_bresp_converter_1->vector_out(s_axi_concat_bresp_out_1);
    mp_S01_AXI_transactor->BRESP(m_s_axi_bresp_converter_1_signal);
    mp_s_axi_bvalid_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_bvalid_converter_1");
    mp_s_axi_bvalid_converter_1->scalar_in(m_s_axi_bvalid_converter_1_signal);
    mp_s_axi_bvalid_converter_1->vector_out(s_axi_concat_bvalid_out_1);
    mp_S01_AXI_transactor->BVALID(m_s_axi_bvalid_converter_1_signal);
    mp_s_axi_bready_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_bready_converter_1");
    mp_s_axi_bready_converter_1->vector_in(s_axi_split_bready_out_1);
    mp_s_axi_bready_converter_1->scalar_out(m_s_axi_bready_converter_1_signal);
    mp_S01_AXI_transactor->BREADY(m_s_axi_bready_converter_1_signal);
    mp_s_axi_arid_converter_1 = new xsc::common::vector2vector_converter<2,1>("s_axi_arid_converter_1");
    mp_s_axi_arid_converter_1->vector_in(s_axi_split_arid_out_1);
    mp_s_axi_arid_converter_1->vector_out(m_s_axi_arid_converter_1_signal);
    mp_S01_AXI_transactor->ARID(m_s_axi_arid_converter_1_signal);
    mp_s_axi_araddr_converter_1 = new xsc::common::vector2vector_converter<64,32>("s_axi_araddr_converter_1");
    mp_s_axi_araddr_converter_1->vector_in(s_axi_split_araddr_out_1);
    mp_s_axi_araddr_converter_1->vector_out(m_s_axi_araddr_converter_1_signal);
    mp_S01_AXI_transactor->ARADDR(m_s_axi_araddr_converter_1_signal);
    mp_s_axi_arlen_converter_1 = new xsc::common::vector2vector_converter<16,8>("s_axi_arlen_converter_1");
    mp_s_axi_arlen_converter_1->vector_in(s_axi_split_arlen_out_1);
    mp_s_axi_arlen_converter_1->vector_out(m_s_axi_arlen_converter_1_signal);
    mp_S01_AXI_transactor->ARLEN(m_s_axi_arlen_converter_1_signal);
    mp_s_axi_arsize_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_arsize_converter_1");
    mp_s_axi_arsize_converter_1->vector_in(s_axi_split_arsize_out_1);
    mp_s_axi_arsize_converter_1->vector_out(m_s_axi_arsize_converter_1_signal);
    mp_S01_AXI_transactor->ARSIZE(m_s_axi_arsize_converter_1_signal);
    mp_s_axi_arburst_converter_1 = new xsc::common::vector2vector_converter<4,2>("s_axi_arburst_converter_1");
    mp_s_axi_arburst_converter_1->vector_in(s_axi_split_arburst_out_1);
    mp_s_axi_arburst_converter_1->vector_out(m_s_axi_arburst_converter_1_signal);
    mp_S01_AXI_transactor->ARBURST(m_s_axi_arburst_converter_1_signal);
    mp_s_axi_arlock_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arlock_converter_1");
    mp_s_axi_arlock_converter_1->vector_in(s_axi_split_arlock_out_1);
    mp_s_axi_arlock_converter_1->scalar_out(m_s_axi_arlock_converter_1_signal);
    mp_S01_AXI_transactor->ARLOCK(m_s_axi_arlock_converter_1_signal);
    mp_s_axi_arcache_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_arcache_converter_1");
    mp_s_axi_arcache_converter_1->vector_in(s_axi_split_arcache_out_1);
    mp_s_axi_arcache_converter_1->vector_out(m_s_axi_arcache_converter_1_signal);
    mp_S01_AXI_transactor->ARCACHE(m_s_axi_arcache_converter_1_signal);
    mp_s_axi_arprot_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_arprot_converter_1");
    mp_s_axi_arprot_converter_1->vector_in(s_axi_split_arprot_out_1);
    mp_s_axi_arprot_converter_1->vector_out(m_s_axi_arprot_converter_1_signal);
    mp_S01_AXI_transactor->ARPROT(m_s_axi_arprot_converter_1_signal);
    mp_s_axi_arqos_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_arqos_converter_1");
    mp_s_axi_arqos_converter_1->vector_in(s_axi_split_arqos_out_1);
    mp_s_axi_arqos_converter_1->vector_out(m_s_axi_arqos_converter_1_signal);
    mp_S01_AXI_transactor->ARQOS(m_s_axi_arqos_converter_1_signal);
    mp_s_axi_arvalid_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arvalid_converter_1");
    mp_s_axi_arvalid_converter_1->vector_in(s_axi_split_arvalid_out_1);
    mp_s_axi_arvalid_converter_1->scalar_out(m_s_axi_arvalid_converter_1_signal);
    mp_S01_AXI_transactor->ARVALID(m_s_axi_arvalid_converter_1_signal);
    mp_s_axi_arready_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_arready_converter_1");
    mp_s_axi_arready_converter_1->scalar_in(m_s_axi_arready_converter_1_signal);
    mp_s_axi_arready_converter_1->vector_out(s_axi_concat_arready_out_1);
    mp_S01_AXI_transactor->ARREADY(m_s_axi_arready_converter_1_signal);
    mp_s_axi_rid_converter_1 = new xsc::common::vector2vector_converter<1,2>("s_axi_rid_converter_1");
    mp_s_axi_rid_converter_1->vector_in(m_s_axi_rid_converter_1_signal);
    mp_s_axi_rid_converter_1->vector_out(s_axi_concat_rid_out_1);
    mp_S01_AXI_transactor->RID(m_s_axi_rid_converter_1_signal);
    mp_s_axi_rdata_converter_1 = new xsc::common::vector2vector_converter<256,512>("s_axi_rdata_converter_1");
    mp_s_axi_rdata_converter_1->vector_in(m_s_axi_rdata_converter_1_signal);
    mp_s_axi_rdata_converter_1->vector_out(s_axi_concat_rdata_out_1);
    mp_S01_AXI_transactor->RDATA(m_s_axi_rdata_converter_1_signal);
    mp_s_axi_rresp_converter_1 = new xsc::common::vector2vector_converter<2,4>("s_axi_rresp_converter_1");
    mp_s_axi_rresp_converter_1->vector_in(m_s_axi_rresp_converter_1_signal);
    mp_s_axi_rresp_converter_1->vector_out(s_axi_concat_rresp_out_1);
    mp_S01_AXI_transactor->RRESP(m_s_axi_rresp_converter_1_signal);
    mp_s_axi_rlast_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rlast_converter_1");
    mp_s_axi_rlast_converter_1->scalar_in(m_s_axi_rlast_converter_1_signal);
    mp_s_axi_rlast_converter_1->vector_out(s_axi_concat_rlast_out_1);
    mp_S01_AXI_transactor->RLAST(m_s_axi_rlast_converter_1_signal);
    mp_s_axi_rvalid_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rvalid_converter_1");
    mp_s_axi_rvalid_converter_1->scalar_in(m_s_axi_rvalid_converter_1_signal);
    mp_s_axi_rvalid_converter_1->vector_out(s_axi_concat_rvalid_out_1);
    mp_S01_AXI_transactor->RVALID(m_s_axi_rvalid_converter_1_signal);
    mp_s_axi_rready_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_rready_converter_1");
    mp_s_axi_rready_converter_1->vector_in(s_axi_split_rready_out_1);
    mp_s_axi_rready_converter_1->scalar_out(m_s_axi_rready_converter_1_signal);
    mp_S01_AXI_transactor->RREADY(m_s_axi_rready_converter_1_signal);
    mp_S01_AXI_transactor->CLK(aclk);
    mp_S01_AXI_transactor->RST(aresetn);

    // S01_AXI' transactor sockets

    mp_impl->target_1_rd_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->target_1_wr_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
design_1_axi_crossbar_0_1::design_1_axi_crossbar_0_1(const sc_core::sc_module_name& nm) : design_1_axi_crossbar_0_1_sc(nm), aclk("aclk"), aresetn("aresetn"), s_axi_awid("s_axi_awid"), s_axi_awaddr("s_axi_awaddr"), s_axi_awlen("s_axi_awlen"), s_axi_awsize("s_axi_awsize"), s_axi_awburst("s_axi_awburst"), s_axi_awlock("s_axi_awlock"), s_axi_awcache("s_axi_awcache"), s_axi_awprot("s_axi_awprot"), s_axi_awqos("s_axi_awqos"), s_axi_awuser("s_axi_awuser"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wlast("s_axi_wlast"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bid("s_axi_bid"), s_axi_bresp("s_axi_bresp"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_arid("s_axi_arid"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arsize("s_axi_arsize"), s_axi_arburst("s_axi_arburst"), s_axi_arlock("s_axi_arlock"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arqos("s_axi_arqos"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rid("s_axi_rid"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_awid("m_axi_awid"), m_axi_awaddr("m_axi_awaddr"), m_axi_awlen("m_axi_awlen"), m_axi_awsize("m_axi_awsize"), m_axi_awburst("m_axi_awburst"), m_axi_awlock("m_axi_awlock"), m_axi_awcache("m_axi_awcache"), m_axi_awprot("m_axi_awprot"), m_axi_awregion("m_axi_awregion"), m_axi_awqos("m_axi_awqos"), m_axi_awuser("m_axi_awuser"), m_axi_awvalid("m_axi_awvalid"), m_axi_awready("m_axi_awready"), m_axi_wdata("m_axi_wdata"), m_axi_wstrb("m_axi_wstrb"), m_axi_wlast("m_axi_wlast"), m_axi_wvalid("m_axi_wvalid"), m_axi_wready("m_axi_wready"), m_axi_bid("m_axi_bid"), m_axi_bresp("m_axi_bresp"), m_axi_bvalid("m_axi_bvalid"), m_axi_bready("m_axi_bready"), m_axi_arid("m_axi_arid"), m_axi_araddr("m_axi_araddr"), m_axi_arlen("m_axi_arlen"), m_axi_arsize("m_axi_arsize"), m_axi_arburst("m_axi_arburst"), m_axi_arlock("m_axi_arlock"), m_axi_arcache("m_axi_arcache"), m_axi_arprot("m_axi_arprot"), m_axi_arregion("m_axi_arregion"), m_axi_arqos("m_axi_arqos"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rid("m_axi_rid"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rlast("m_axi_rlast"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_s_axi_awid_converter_0 = NULL;
  mp_s_axi_awaddr_converter_0 = NULL;
  mp_s_axi_awlen_converter_0 = NULL;
  mp_s_axi_awsize_converter_0 = NULL;
  mp_s_axi_awburst_converter_0 = NULL;
  mp_s_axi_awlock_converter_0 = NULL;
  mp_s_axi_awcache_converter_0 = NULL;
  mp_s_axi_awprot_converter_0 = NULL;
  mp_s_axi_awqos_converter_0 = NULL;
  mp_s_axi_awuser_converter_0 = NULL;
  mp_s_axi_awvalid_converter_0 = NULL;
  mp_s_axi_awready_converter_0 = NULL;
  mp_s_axi_wdata_converter_0 = NULL;
  mp_s_axi_wstrb_converter_0 = NULL;
  mp_s_axi_wlast_converter_0 = NULL;
  mp_s_axi_wvalid_converter_0 = NULL;
  mp_s_axi_wready_converter_0 = NULL;
  mp_s_axi_bid_converter_0 = NULL;
  mp_s_axi_bresp_converter_0 = NULL;
  mp_s_axi_bvalid_converter_0 = NULL;
  mp_s_axi_bready_converter_0 = NULL;
  mp_s_axi_arid_converter_0 = NULL;
  mp_s_axi_araddr_converter_0 = NULL;
  mp_s_axi_arlen_converter_0 = NULL;
  mp_s_axi_arsize_converter_0 = NULL;
  mp_s_axi_arburst_converter_0 = NULL;
  mp_s_axi_arlock_converter_0 = NULL;
  mp_s_axi_arcache_converter_0 = NULL;
  mp_s_axi_arprot_converter_0 = NULL;
  mp_s_axi_arqos_converter_0 = NULL;
  mp_s_axi_arvalid_converter_0 = NULL;
  mp_s_axi_arready_converter_0 = NULL;
  mp_s_axi_rid_converter_0 = NULL;
  mp_s_axi_rdata_converter_0 = NULL;
  mp_s_axi_rresp_converter_0 = NULL;
  mp_s_axi_rlast_converter_0 = NULL;
  mp_s_axi_rvalid_converter_0 = NULL;
  mp_s_axi_rready_converter_0 = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_m_axi_awlock_converter = NULL;
  mp_m_axi_awvalid_converter = NULL;
  mp_m_axi_awready_converter = NULL;
  mp_m_axi_wlast_converter = NULL;
  mp_m_axi_wvalid_converter = NULL;
  mp_m_axi_wready_converter = NULL;
  mp_m_axi_bvalid_converter = NULL;
  mp_m_axi_bready_converter = NULL;
  mp_m_axi_arlock_converter = NULL;
  mp_m_axi_arvalid_converter = NULL;
  mp_m_axi_arready_converter = NULL;
  mp_m_axi_rlast_converter = NULL;
  mp_m_axi_rvalid_converter = NULL;
  mp_m_axi_rready_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_s_axi_awid_converter_1 = NULL;
  mp_s_axi_awaddr_converter_1 = NULL;
  mp_s_axi_awlen_converter_1 = NULL;
  mp_s_axi_awsize_converter_1 = NULL;
  mp_s_axi_awburst_converter_1 = NULL;
  mp_s_axi_awlock_converter_1 = NULL;
  mp_s_axi_awcache_converter_1 = NULL;
  mp_s_axi_awprot_converter_1 = NULL;
  mp_s_axi_awqos_converter_1 = NULL;
  mp_s_axi_awuser_converter_1 = NULL;
  mp_s_axi_awvalid_converter_1 = NULL;
  mp_s_axi_awready_converter_1 = NULL;
  mp_s_axi_wdata_converter_1 = NULL;
  mp_s_axi_wstrb_converter_1 = NULL;
  mp_s_axi_wlast_converter_1 = NULL;
  mp_s_axi_wvalid_converter_1 = NULL;
  mp_s_axi_wready_converter_1 = NULL;
  mp_s_axi_bid_converter_1 = NULL;
  mp_s_axi_bresp_converter_1 = NULL;
  mp_s_axi_bvalid_converter_1 = NULL;
  mp_s_axi_bready_converter_1 = NULL;
  mp_s_axi_arid_converter_1 = NULL;
  mp_s_axi_araddr_converter_1 = NULL;
  mp_s_axi_arlen_converter_1 = NULL;
  mp_s_axi_arsize_converter_1 = NULL;
  mp_s_axi_arburst_converter_1 = NULL;
  mp_s_axi_arlock_converter_1 = NULL;
  mp_s_axi_arcache_converter_1 = NULL;
  mp_s_axi_arprot_converter_1 = NULL;
  mp_s_axi_arqos_converter_1 = NULL;
  mp_s_axi_arvalid_converter_1 = NULL;
  mp_s_axi_arready_converter_1 = NULL;
  mp_s_axi_rid_converter_1 = NULL;
  mp_s_axi_rdata_converter_1 = NULL;
  mp_s_axi_rresp_converter_1 = NULL;
  mp_s_axi_rlast_converter_1 = NULL;
  mp_s_axi_rvalid_converter_1 = NULL;
  mp_s_axi_rready_converter_1 = NULL;

  // initialize junctures
  mp_s_axi_concat_arready = NULL;
  mp_s_axi_concat_awready = NULL;
  mp_s_axi_concat_bid = NULL;
  mp_s_axi_concat_bresp = NULL;
  mp_s_axi_concat_bvalid = NULL;
  mp_s_axi_concat_rdata = NULL;
  mp_s_axi_concat_rid = NULL;
  mp_s_axi_concat_rlast = NULL;
  mp_s_axi_concat_rresp = NULL;
  mp_s_axi_concat_rvalid = NULL;
  mp_s_axi_concat_wready = NULL;
  mp_s_axi_split_araddr = NULL;
  mp_s_axi_split_arburst = NULL;
  mp_s_axi_split_arcache = NULL;
  mp_s_axi_split_arid = NULL;
  mp_s_axi_split_arlen = NULL;
  mp_s_axi_split_arlock = NULL;
  mp_s_axi_split_arprot = NULL;
  mp_s_axi_split_arqos = NULL;
  mp_s_axi_split_arsize = NULL;
  mp_s_axi_split_arvalid = NULL;
  mp_s_axi_split_awaddr = NULL;
  mp_s_axi_split_awburst = NULL;
  mp_s_axi_split_awcache = NULL;
  mp_s_axi_split_awid = NULL;
  mp_s_axi_split_awlen = NULL;
  mp_s_axi_split_awlock = NULL;
  mp_s_axi_split_awprot = NULL;
  mp_s_axi_split_awqos = NULL;
  mp_s_axi_split_awsize = NULL;
  mp_s_axi_split_awuser = NULL;
  mp_s_axi_split_awvalid = NULL;
  mp_s_axi_split_bready = NULL;
  mp_s_axi_split_rready = NULL;
  mp_s_axi_split_wdata = NULL;
  mp_s_axi_split_wlast = NULL;
  mp_s_axi_split_wstrb = NULL;
  mp_s_axi_split_wvalid = NULL;
  mp_s_axi_split_awid = new xsc::xsc_split<2, 2>("s_axi_split_awid");
  mp_s_axi_split_awid->in_port(s_axi_awid);
  mp_s_axi_split_awid->out_port[0](s_axi_split_awid_out_0);
    mp_s_axi_split_awid->add_mask(0,1,0);
  mp_s_axi_split_awaddr = new xsc::xsc_split<64, 2>("s_axi_split_awaddr");
  mp_s_axi_split_awaddr->in_port(s_axi_awaddr);
  mp_s_axi_split_awaddr->out_port[0](s_axi_split_awaddr_out_0);
    mp_s_axi_split_awaddr->add_mask(0,32,0);
  mp_s_axi_split_awlen = new xsc::xsc_split<16, 2>("s_axi_split_awlen");
  mp_s_axi_split_awlen->in_port(s_axi_awlen);
  mp_s_axi_split_awlen->out_port[0](s_axi_split_awlen_out_0);
    mp_s_axi_split_awlen->add_mask(0,8,0);
  mp_s_axi_split_awsize = new xsc::xsc_split<6, 2>("s_axi_split_awsize");
  mp_s_axi_split_awsize->in_port(s_axi_awsize);
  mp_s_axi_split_awsize->out_port[0](s_axi_split_awsize_out_0);
    mp_s_axi_split_awsize->add_mask(0,3,0);
  mp_s_axi_split_awburst = new xsc::xsc_split<4, 2>("s_axi_split_awburst");
  mp_s_axi_split_awburst->in_port(s_axi_awburst);
  mp_s_axi_split_awburst->out_port[0](s_axi_split_awburst_out_0);
    mp_s_axi_split_awburst->add_mask(0,2,0);
  mp_s_axi_split_awlock = new xsc::xsc_split<2, 2>("s_axi_split_awlock");
  mp_s_axi_split_awlock->in_port(s_axi_awlock);
  mp_s_axi_split_awlock->out_port[0](s_axi_split_awlock_out_0);
    mp_s_axi_split_awlock->add_mask(0,1,0);
  mp_s_axi_split_awcache = new xsc::xsc_split<8, 2>("s_axi_split_awcache");
  mp_s_axi_split_awcache->in_port(s_axi_awcache);
  mp_s_axi_split_awcache->out_port[0](s_axi_split_awcache_out_0);
    mp_s_axi_split_awcache->add_mask(0,4,0);
  mp_s_axi_split_awprot = new xsc::xsc_split<6, 2>("s_axi_split_awprot");
  mp_s_axi_split_awprot->in_port(s_axi_awprot);
  mp_s_axi_split_awprot->out_port[0](s_axi_split_awprot_out_0);
    mp_s_axi_split_awprot->add_mask(0,3,0);
  mp_s_axi_split_awqos = new xsc::xsc_split<8, 2>("s_axi_split_awqos");
  mp_s_axi_split_awqos->in_port(s_axi_awqos);
  mp_s_axi_split_awqos->out_port[0](s_axi_split_awqos_out_0);
    mp_s_axi_split_awqos->add_mask(0,4,0);
  mp_s_axi_split_awuser = new xsc::xsc_split<8, 2>("s_axi_split_awuser");
  mp_s_axi_split_awuser->in_port(s_axi_awuser);
  mp_s_axi_split_awuser->out_port[0](s_axi_split_awuser_out_0);
    mp_s_axi_split_awuser->add_mask(0,4,0);
  mp_s_axi_split_awvalid = new xsc::xsc_split<2, 2>("s_axi_split_awvalid");
  mp_s_axi_split_awvalid->in_port(s_axi_awvalid);
  mp_s_axi_split_awvalid->out_port[0](s_axi_split_awvalid_out_0);
    mp_s_axi_split_awvalid->add_mask(0,1,0);
  mp_s_axi_concat_awready = new xsc::xsc_concatenator<2, 2>("s_axi_concat_awready");
  mp_s_axi_concat_awready->in_port[0](s_axi_concat_awready_out_0);
  mp_s_axi_concat_awready->out_port(s_axi_awready);
    mp_s_axi_concat_awready->offset_port(0, 0);
  mp_s_axi_split_wdata = new xsc::xsc_split<512, 2>("s_axi_split_wdata");
  mp_s_axi_split_wdata->in_port(s_axi_wdata);
  mp_s_axi_split_wdata->out_port[0](s_axi_split_wdata_out_0);
    mp_s_axi_split_wdata->add_mask(0,256,0);
  mp_s_axi_split_wstrb = new xsc::xsc_split<64, 2>("s_axi_split_wstrb");
  mp_s_axi_split_wstrb->in_port(s_axi_wstrb);
  mp_s_axi_split_wstrb->out_port[0](s_axi_split_wstrb_out_0);
    mp_s_axi_split_wstrb->add_mask(0,32,0);
  mp_s_axi_split_wlast = new xsc::xsc_split<2, 2>("s_axi_split_wlast");
  mp_s_axi_split_wlast->in_port(s_axi_wlast);
  mp_s_axi_split_wlast->out_port[0](s_axi_split_wlast_out_0);
    mp_s_axi_split_wlast->add_mask(0,1,0);
  mp_s_axi_split_wvalid = new xsc::xsc_split<2, 2>("s_axi_split_wvalid");
  mp_s_axi_split_wvalid->in_port(s_axi_wvalid);
  mp_s_axi_split_wvalid->out_port[0](s_axi_split_wvalid_out_0);
    mp_s_axi_split_wvalid->add_mask(0,1,0);
  mp_s_axi_concat_wready = new xsc::xsc_concatenator<2, 2>("s_axi_concat_wready");
  mp_s_axi_concat_wready->in_port[0](s_axi_concat_wready_out_0);
  mp_s_axi_concat_wready->out_port(s_axi_wready);
    mp_s_axi_concat_wready->offset_port(0, 0);
  mp_s_axi_concat_bid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_bid");
  mp_s_axi_concat_bid->in_port[0](s_axi_concat_bid_out_0);
  mp_s_axi_concat_bid->out_port(s_axi_bid);
    mp_s_axi_concat_bid->offset_port(0, 0);
  mp_s_axi_concat_bresp = new xsc::xsc_concatenator<4, 2>("s_axi_concat_bresp");
  mp_s_axi_concat_bresp->in_port[0](s_axi_concat_bresp_out_0);
  mp_s_axi_concat_bresp->out_port(s_axi_bresp);
    mp_s_axi_concat_bresp->offset_port(0, 0);
  mp_s_axi_concat_bvalid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_bvalid");
  mp_s_axi_concat_bvalid->in_port[0](s_axi_concat_bvalid_out_0);
  mp_s_axi_concat_bvalid->out_port(s_axi_bvalid);
    mp_s_axi_concat_bvalid->offset_port(0, 0);
  mp_s_axi_split_bready = new xsc::xsc_split<2, 2>("s_axi_split_bready");
  mp_s_axi_split_bready->in_port(s_axi_bready);
  mp_s_axi_split_bready->out_port[0](s_axi_split_bready_out_0);
    mp_s_axi_split_bready->add_mask(0,1,0);
  mp_s_axi_split_arid = new xsc::xsc_split<2, 2>("s_axi_split_arid");
  mp_s_axi_split_arid->in_port(s_axi_arid);
  mp_s_axi_split_arid->out_port[0](s_axi_split_arid_out_0);
    mp_s_axi_split_arid->add_mask(0,1,0);
  mp_s_axi_split_araddr = new xsc::xsc_split<64, 2>("s_axi_split_araddr");
  mp_s_axi_split_araddr->in_port(s_axi_araddr);
  mp_s_axi_split_araddr->out_port[0](s_axi_split_araddr_out_0);
    mp_s_axi_split_araddr->add_mask(0,32,0);
  mp_s_axi_split_arlen = new xsc::xsc_split<16, 2>("s_axi_split_arlen");
  mp_s_axi_split_arlen->in_port(s_axi_arlen);
  mp_s_axi_split_arlen->out_port[0](s_axi_split_arlen_out_0);
    mp_s_axi_split_arlen->add_mask(0,8,0);
  mp_s_axi_split_arsize = new xsc::xsc_split<6, 2>("s_axi_split_arsize");
  mp_s_axi_split_arsize->in_port(s_axi_arsize);
  mp_s_axi_split_arsize->out_port[0](s_axi_split_arsize_out_0);
    mp_s_axi_split_arsize->add_mask(0,3,0);
  mp_s_axi_split_arburst = new xsc::xsc_split<4, 2>("s_axi_split_arburst");
  mp_s_axi_split_arburst->in_port(s_axi_arburst);
  mp_s_axi_split_arburst->out_port[0](s_axi_split_arburst_out_0);
    mp_s_axi_split_arburst->add_mask(0,2,0);
  mp_s_axi_split_arlock = new xsc::xsc_split<2, 2>("s_axi_split_arlock");
  mp_s_axi_split_arlock->in_port(s_axi_arlock);
  mp_s_axi_split_arlock->out_port[0](s_axi_split_arlock_out_0);
    mp_s_axi_split_arlock->add_mask(0,1,0);
  mp_s_axi_split_arcache = new xsc::xsc_split<8, 2>("s_axi_split_arcache");
  mp_s_axi_split_arcache->in_port(s_axi_arcache);
  mp_s_axi_split_arcache->out_port[0](s_axi_split_arcache_out_0);
    mp_s_axi_split_arcache->add_mask(0,4,0);
  mp_s_axi_split_arprot = new xsc::xsc_split<6, 2>("s_axi_split_arprot");
  mp_s_axi_split_arprot->in_port(s_axi_arprot);
  mp_s_axi_split_arprot->out_port[0](s_axi_split_arprot_out_0);
    mp_s_axi_split_arprot->add_mask(0,3,0);
  mp_s_axi_split_arqos = new xsc::xsc_split<8, 2>("s_axi_split_arqos");
  mp_s_axi_split_arqos->in_port(s_axi_arqos);
  mp_s_axi_split_arqos->out_port[0](s_axi_split_arqos_out_0);
    mp_s_axi_split_arqos->add_mask(0,4,0);
  mp_s_axi_split_arvalid = new xsc::xsc_split<2, 2>("s_axi_split_arvalid");
  mp_s_axi_split_arvalid->in_port(s_axi_arvalid);
  mp_s_axi_split_arvalid->out_port[0](s_axi_split_arvalid_out_0);
    mp_s_axi_split_arvalid->add_mask(0,1,0);
  mp_s_axi_concat_arready = new xsc::xsc_concatenator<2, 2>("s_axi_concat_arready");
  mp_s_axi_concat_arready->in_port[0](s_axi_concat_arready_out_0);
  mp_s_axi_concat_arready->out_port(s_axi_arready);
    mp_s_axi_concat_arready->offset_port(0, 0);
  mp_s_axi_concat_rid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_rid");
  mp_s_axi_concat_rid->in_port[0](s_axi_concat_rid_out_0);
  mp_s_axi_concat_rid->out_port(s_axi_rid);
    mp_s_axi_concat_rid->offset_port(0, 0);
  mp_s_axi_concat_rdata = new xsc::xsc_concatenator<512, 2>("s_axi_concat_rdata");
  mp_s_axi_concat_rdata->in_port[0](s_axi_concat_rdata_out_0);
  mp_s_axi_concat_rdata->out_port(s_axi_rdata);
    mp_s_axi_concat_rdata->offset_port(0, 0);
  mp_s_axi_concat_rresp = new xsc::xsc_concatenator<4, 2>("s_axi_concat_rresp");
  mp_s_axi_concat_rresp->in_port[0](s_axi_concat_rresp_out_0);
  mp_s_axi_concat_rresp->out_port(s_axi_rresp);
    mp_s_axi_concat_rresp->offset_port(0, 0);
  mp_s_axi_concat_rlast = new xsc::xsc_concatenator<2, 2>("s_axi_concat_rlast");
  mp_s_axi_concat_rlast->in_port[0](s_axi_concat_rlast_out_0);
  mp_s_axi_concat_rlast->out_port(s_axi_rlast);
    mp_s_axi_concat_rlast->offset_port(0, 0);
  mp_s_axi_concat_rvalid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_rvalid");
  mp_s_axi_concat_rvalid->in_port[0](s_axi_concat_rvalid_out_0);
  mp_s_axi_concat_rvalid->out_port(s_axi_rvalid);
    mp_s_axi_concat_rvalid->offset_port(0, 0);
  mp_s_axi_split_rready = new xsc::xsc_split<2, 2>("s_axi_split_rready");
  mp_s_axi_split_rready->in_port(s_axi_rready);
  mp_s_axi_split_rready->out_port[0](s_axi_split_rready_out_0);
    mp_s_axi_split_rready->add_mask(0,1,0);
  
  mp_s_axi_split_awid->out_port[1](s_axi_split_awid_out_1);
    mp_s_axi_split_awid->add_mask(1,2,1);
  
  mp_s_axi_split_awaddr->out_port[1](s_axi_split_awaddr_out_1);
    mp_s_axi_split_awaddr->add_mask(1,64,32);
  
  mp_s_axi_split_awlen->out_port[1](s_axi_split_awlen_out_1);
    mp_s_axi_split_awlen->add_mask(1,16,8);
  
  mp_s_axi_split_awsize->out_port[1](s_axi_split_awsize_out_1);
    mp_s_axi_split_awsize->add_mask(1,6,3);
  
  mp_s_axi_split_awburst->out_port[1](s_axi_split_awburst_out_1);
    mp_s_axi_split_awburst->add_mask(1,4,2);
  
  mp_s_axi_split_awlock->out_port[1](s_axi_split_awlock_out_1);
    mp_s_axi_split_awlock->add_mask(1,2,1);
  
  mp_s_axi_split_awcache->out_port[1](s_axi_split_awcache_out_1);
    mp_s_axi_split_awcache->add_mask(1,8,4);
  
  mp_s_axi_split_awprot->out_port[1](s_axi_split_awprot_out_1);
    mp_s_axi_split_awprot->add_mask(1,6,3);
  
  mp_s_axi_split_awqos->out_port[1](s_axi_split_awqos_out_1);
    mp_s_axi_split_awqos->add_mask(1,8,4);
  
  mp_s_axi_split_awuser->out_port[1](s_axi_split_awuser_out_1);
    mp_s_axi_split_awuser->add_mask(1,8,4);
  
  mp_s_axi_split_awvalid->out_port[1](s_axi_split_awvalid_out_1);
    mp_s_axi_split_awvalid->add_mask(1,2,1);
  mp_s_axi_concat_awready->in_port[1](s_axi_concat_awready_out_1);
  mp_s_axi_concat_awready->offset_port(1, 1);
  
  mp_s_axi_split_wdata->out_port[1](s_axi_split_wdata_out_1);
    mp_s_axi_split_wdata->add_mask(1,512,256);
  
  mp_s_axi_split_wstrb->out_port[1](s_axi_split_wstrb_out_1);
    mp_s_axi_split_wstrb->add_mask(1,64,32);
  
  mp_s_axi_split_wlast->out_port[1](s_axi_split_wlast_out_1);
    mp_s_axi_split_wlast->add_mask(1,2,1);
  
  mp_s_axi_split_wvalid->out_port[1](s_axi_split_wvalid_out_1);
    mp_s_axi_split_wvalid->add_mask(1,2,1);
  mp_s_axi_concat_wready->in_port[1](s_axi_concat_wready_out_1);
  mp_s_axi_concat_wready->offset_port(1, 1);
  mp_s_axi_concat_bid->in_port[1](s_axi_concat_bid_out_1);
  mp_s_axi_concat_bid->offset_port(1, 1);
  mp_s_axi_concat_bresp->in_port[1](s_axi_concat_bresp_out_1);
  mp_s_axi_concat_bresp->offset_port(1, 2);
  mp_s_axi_concat_bvalid->in_port[1](s_axi_concat_bvalid_out_1);
  mp_s_axi_concat_bvalid->offset_port(1, 1);
  
  mp_s_axi_split_bready->out_port[1](s_axi_split_bready_out_1);
    mp_s_axi_split_bready->add_mask(1,2,1);
  
  mp_s_axi_split_arid->out_port[1](s_axi_split_arid_out_1);
    mp_s_axi_split_arid->add_mask(1,2,1);
  
  mp_s_axi_split_araddr->out_port[1](s_axi_split_araddr_out_1);
    mp_s_axi_split_araddr->add_mask(1,64,32);
  
  mp_s_axi_split_arlen->out_port[1](s_axi_split_arlen_out_1);
    mp_s_axi_split_arlen->add_mask(1,16,8);
  
  mp_s_axi_split_arsize->out_port[1](s_axi_split_arsize_out_1);
    mp_s_axi_split_arsize->add_mask(1,6,3);
  
  mp_s_axi_split_arburst->out_port[1](s_axi_split_arburst_out_1);
    mp_s_axi_split_arburst->add_mask(1,4,2);
  
  mp_s_axi_split_arlock->out_port[1](s_axi_split_arlock_out_1);
    mp_s_axi_split_arlock->add_mask(1,2,1);
  
  mp_s_axi_split_arcache->out_port[1](s_axi_split_arcache_out_1);
    mp_s_axi_split_arcache->add_mask(1,8,4);
  
  mp_s_axi_split_arprot->out_port[1](s_axi_split_arprot_out_1);
    mp_s_axi_split_arprot->add_mask(1,6,3);
  
  mp_s_axi_split_arqos->out_port[1](s_axi_split_arqos_out_1);
    mp_s_axi_split_arqos->add_mask(1,8,4);
  
  mp_s_axi_split_arvalid->out_port[1](s_axi_split_arvalid_out_1);
    mp_s_axi_split_arvalid->add_mask(1,2,1);
  mp_s_axi_concat_arready->in_port[1](s_axi_concat_arready_out_1);
  mp_s_axi_concat_arready->offset_port(1, 1);
  mp_s_axi_concat_rid->in_port[1](s_axi_concat_rid_out_1);
  mp_s_axi_concat_rid->offset_port(1, 1);
  mp_s_axi_concat_rdata->in_port[1](s_axi_concat_rdata_out_1);
  mp_s_axi_concat_rdata->offset_port(1, 256);
  mp_s_axi_concat_rresp->in_port[1](s_axi_concat_rresp_out_1);
  mp_s_axi_concat_rresp->offset_port(1, 2);
  mp_s_axi_concat_rlast->in_port[1](s_axi_concat_rlast_out_1);
  mp_s_axi_concat_rlast->offset_port(1, 1);
  mp_s_axi_concat_rvalid->in_port[1](s_axi_concat_rvalid_out_1);
  mp_s_axi_concat_rvalid->offset_port(1, 1);
  
  mp_s_axi_split_rready->out_port[1](s_axi_split_rready_out_1);
    mp_s_axi_split_rready->add_mask(1,2,1);

  // initialize socket stubs

}

void design_1_axi_crossbar_0_1::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_crossbar_0_1", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "4");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<256,32,1,4,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_s_axi_awid_converter_0 = new xsc::common::vector2vector_converter<2,1>("s_axi_awid_converter_0");
    mp_s_axi_awid_converter_0->vector_in(s_axi_split_awid_out_0);
    mp_s_axi_awid_converter_0->vector_out(m_s_axi_awid_converter_0_signal);
    mp_S00_AXI_transactor->AWID(m_s_axi_awid_converter_0_signal);
    mp_s_axi_awaddr_converter_0 = new xsc::common::vector2vector_converter<64,32>("s_axi_awaddr_converter_0");
    mp_s_axi_awaddr_converter_0->vector_in(s_axi_split_awaddr_out_0);
    mp_s_axi_awaddr_converter_0->vector_out(m_s_axi_awaddr_converter_0_signal);
    mp_S00_AXI_transactor->AWADDR(m_s_axi_awaddr_converter_0_signal);
    mp_s_axi_awlen_converter_0 = new xsc::common::vector2vector_converter<16,8>("s_axi_awlen_converter_0");
    mp_s_axi_awlen_converter_0->vector_in(s_axi_split_awlen_out_0);
    mp_s_axi_awlen_converter_0->vector_out(m_s_axi_awlen_converter_0_signal);
    mp_S00_AXI_transactor->AWLEN(m_s_axi_awlen_converter_0_signal);
    mp_s_axi_awsize_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_awsize_converter_0");
    mp_s_axi_awsize_converter_0->vector_in(s_axi_split_awsize_out_0);
    mp_s_axi_awsize_converter_0->vector_out(m_s_axi_awsize_converter_0_signal);
    mp_S00_AXI_transactor->AWSIZE(m_s_axi_awsize_converter_0_signal);
    mp_s_axi_awburst_converter_0 = new xsc::common::vector2vector_converter<4,2>("s_axi_awburst_converter_0");
    mp_s_axi_awburst_converter_0->vector_in(s_axi_split_awburst_out_0);
    mp_s_axi_awburst_converter_0->vector_out(m_s_axi_awburst_converter_0_signal);
    mp_S00_AXI_transactor->AWBURST(m_s_axi_awburst_converter_0_signal);
    mp_s_axi_awlock_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awlock_converter_0");
    mp_s_axi_awlock_converter_0->vector_in(s_axi_split_awlock_out_0);
    mp_s_axi_awlock_converter_0->scalar_out(m_s_axi_awlock_converter_0_signal);
    mp_S00_AXI_transactor->AWLOCK(m_s_axi_awlock_converter_0_signal);
    mp_s_axi_awcache_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_awcache_converter_0");
    mp_s_axi_awcache_converter_0->vector_in(s_axi_split_awcache_out_0);
    mp_s_axi_awcache_converter_0->vector_out(m_s_axi_awcache_converter_0_signal);
    mp_S00_AXI_transactor->AWCACHE(m_s_axi_awcache_converter_0_signal);
    mp_s_axi_awprot_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_awprot_converter_0");
    mp_s_axi_awprot_converter_0->vector_in(s_axi_split_awprot_out_0);
    mp_s_axi_awprot_converter_0->vector_out(m_s_axi_awprot_converter_0_signal);
    mp_S00_AXI_transactor->AWPROT(m_s_axi_awprot_converter_0_signal);
    mp_s_axi_awqos_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_awqos_converter_0");
    mp_s_axi_awqos_converter_0->vector_in(s_axi_split_awqos_out_0);
    mp_s_axi_awqos_converter_0->vector_out(m_s_axi_awqos_converter_0_signal);
    mp_S00_AXI_transactor->AWQOS(m_s_axi_awqos_converter_0_signal);
    mp_s_axi_awuser_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_awuser_converter_0");
    mp_s_axi_awuser_converter_0->vector_in(s_axi_split_awuser_out_0);
    mp_s_axi_awuser_converter_0->vector_out(m_s_axi_awuser_converter_0_signal);
    mp_S00_AXI_transactor->AWUSER(m_s_axi_awuser_converter_0_signal);
    mp_s_axi_awvalid_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awvalid_converter_0");
    mp_s_axi_awvalid_converter_0->vector_in(s_axi_split_awvalid_out_0);
    mp_s_axi_awvalid_converter_0->scalar_out(m_s_axi_awvalid_converter_0_signal);
    mp_S00_AXI_transactor->AWVALID(m_s_axi_awvalid_converter_0_signal);
    mp_s_axi_awready_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_awready_converter_0");
    mp_s_axi_awready_converter_0->scalar_in(m_s_axi_awready_converter_0_signal);
    mp_s_axi_awready_converter_0->vector_out(s_axi_concat_awready_out_0);
    mp_S00_AXI_transactor->AWREADY(m_s_axi_awready_converter_0_signal);
    mp_s_axi_wdata_converter_0 = new xsc::common::vector2vector_converter<512,256>("s_axi_wdata_converter_0");
    mp_s_axi_wdata_converter_0->vector_in(s_axi_split_wdata_out_0);
    mp_s_axi_wdata_converter_0->vector_out(m_s_axi_wdata_converter_0_signal);
    mp_S00_AXI_transactor->WDATA(m_s_axi_wdata_converter_0_signal);
    mp_s_axi_wstrb_converter_0 = new xsc::common::vector2vector_converter<64,32>("s_axi_wstrb_converter_0");
    mp_s_axi_wstrb_converter_0->vector_in(s_axi_split_wstrb_out_0);
    mp_s_axi_wstrb_converter_0->vector_out(m_s_axi_wstrb_converter_0_signal);
    mp_S00_AXI_transactor->WSTRB(m_s_axi_wstrb_converter_0_signal);
    mp_s_axi_wlast_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wlast_converter_0");
    mp_s_axi_wlast_converter_0->vector_in(s_axi_split_wlast_out_0);
    mp_s_axi_wlast_converter_0->scalar_out(m_s_axi_wlast_converter_0_signal);
    mp_S00_AXI_transactor->WLAST(m_s_axi_wlast_converter_0_signal);
    mp_s_axi_wvalid_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wvalid_converter_0");
    mp_s_axi_wvalid_converter_0->vector_in(s_axi_split_wvalid_out_0);
    mp_s_axi_wvalid_converter_0->scalar_out(m_s_axi_wvalid_converter_0_signal);
    mp_S00_AXI_transactor->WVALID(m_s_axi_wvalid_converter_0_signal);
    mp_s_axi_wready_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_wready_converter_0");
    mp_s_axi_wready_converter_0->scalar_in(m_s_axi_wready_converter_0_signal);
    mp_s_axi_wready_converter_0->vector_out(s_axi_concat_wready_out_0);
    mp_S00_AXI_transactor->WREADY(m_s_axi_wready_converter_0_signal);
    mp_s_axi_bid_converter_0 = new xsc::common::vector2vector_converter<1,2>("s_axi_bid_converter_0");
    mp_s_axi_bid_converter_0->vector_in(m_s_axi_bid_converter_0_signal);
    mp_s_axi_bid_converter_0->vector_out(s_axi_concat_bid_out_0);
    mp_S00_AXI_transactor->BID(m_s_axi_bid_converter_0_signal);
    mp_s_axi_bresp_converter_0 = new xsc::common::vector2vector_converter<2,4>("s_axi_bresp_converter_0");
    mp_s_axi_bresp_converter_0->vector_in(m_s_axi_bresp_converter_0_signal);
    mp_s_axi_bresp_converter_0->vector_out(s_axi_concat_bresp_out_0);
    mp_S00_AXI_transactor->BRESP(m_s_axi_bresp_converter_0_signal);
    mp_s_axi_bvalid_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_bvalid_converter_0");
    mp_s_axi_bvalid_converter_0->scalar_in(m_s_axi_bvalid_converter_0_signal);
    mp_s_axi_bvalid_converter_0->vector_out(s_axi_concat_bvalid_out_0);
    mp_S00_AXI_transactor->BVALID(m_s_axi_bvalid_converter_0_signal);
    mp_s_axi_bready_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_bready_converter_0");
    mp_s_axi_bready_converter_0->vector_in(s_axi_split_bready_out_0);
    mp_s_axi_bready_converter_0->scalar_out(m_s_axi_bready_converter_0_signal);
    mp_S00_AXI_transactor->BREADY(m_s_axi_bready_converter_0_signal);
    mp_s_axi_arid_converter_0 = new xsc::common::vector2vector_converter<2,1>("s_axi_arid_converter_0");
    mp_s_axi_arid_converter_0->vector_in(s_axi_split_arid_out_0);
    mp_s_axi_arid_converter_0->vector_out(m_s_axi_arid_converter_0_signal);
    mp_S00_AXI_transactor->ARID(m_s_axi_arid_converter_0_signal);
    mp_s_axi_araddr_converter_0 = new xsc::common::vector2vector_converter<64,32>("s_axi_araddr_converter_0");
    mp_s_axi_araddr_converter_0->vector_in(s_axi_split_araddr_out_0);
    mp_s_axi_araddr_converter_0->vector_out(m_s_axi_araddr_converter_0_signal);
    mp_S00_AXI_transactor->ARADDR(m_s_axi_araddr_converter_0_signal);
    mp_s_axi_arlen_converter_0 = new xsc::common::vector2vector_converter<16,8>("s_axi_arlen_converter_0");
    mp_s_axi_arlen_converter_0->vector_in(s_axi_split_arlen_out_0);
    mp_s_axi_arlen_converter_0->vector_out(m_s_axi_arlen_converter_0_signal);
    mp_S00_AXI_transactor->ARLEN(m_s_axi_arlen_converter_0_signal);
    mp_s_axi_arsize_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_arsize_converter_0");
    mp_s_axi_arsize_converter_0->vector_in(s_axi_split_arsize_out_0);
    mp_s_axi_arsize_converter_0->vector_out(m_s_axi_arsize_converter_0_signal);
    mp_S00_AXI_transactor->ARSIZE(m_s_axi_arsize_converter_0_signal);
    mp_s_axi_arburst_converter_0 = new xsc::common::vector2vector_converter<4,2>("s_axi_arburst_converter_0");
    mp_s_axi_arburst_converter_0->vector_in(s_axi_split_arburst_out_0);
    mp_s_axi_arburst_converter_0->vector_out(m_s_axi_arburst_converter_0_signal);
    mp_S00_AXI_transactor->ARBURST(m_s_axi_arburst_converter_0_signal);
    mp_s_axi_arlock_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arlock_converter_0");
    mp_s_axi_arlock_converter_0->vector_in(s_axi_split_arlock_out_0);
    mp_s_axi_arlock_converter_0->scalar_out(m_s_axi_arlock_converter_0_signal);
    mp_S00_AXI_transactor->ARLOCK(m_s_axi_arlock_converter_0_signal);
    mp_s_axi_arcache_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_arcache_converter_0");
    mp_s_axi_arcache_converter_0->vector_in(s_axi_split_arcache_out_0);
    mp_s_axi_arcache_converter_0->vector_out(m_s_axi_arcache_converter_0_signal);
    mp_S00_AXI_transactor->ARCACHE(m_s_axi_arcache_converter_0_signal);
    mp_s_axi_arprot_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_arprot_converter_0");
    mp_s_axi_arprot_converter_0->vector_in(s_axi_split_arprot_out_0);
    mp_s_axi_arprot_converter_0->vector_out(m_s_axi_arprot_converter_0_signal);
    mp_S00_AXI_transactor->ARPROT(m_s_axi_arprot_converter_0_signal);
    mp_s_axi_arqos_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_arqos_converter_0");
    mp_s_axi_arqos_converter_0->vector_in(s_axi_split_arqos_out_0);
    mp_s_axi_arqos_converter_0->vector_out(m_s_axi_arqos_converter_0_signal);
    mp_S00_AXI_transactor->ARQOS(m_s_axi_arqos_converter_0_signal);
    mp_s_axi_arvalid_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arvalid_converter_0");
    mp_s_axi_arvalid_converter_0->vector_in(s_axi_split_arvalid_out_0);
    mp_s_axi_arvalid_converter_0->scalar_out(m_s_axi_arvalid_converter_0_signal);
    mp_S00_AXI_transactor->ARVALID(m_s_axi_arvalid_converter_0_signal);
    mp_s_axi_arready_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_arready_converter_0");
    mp_s_axi_arready_converter_0->scalar_in(m_s_axi_arready_converter_0_signal);
    mp_s_axi_arready_converter_0->vector_out(s_axi_concat_arready_out_0);
    mp_S00_AXI_transactor->ARREADY(m_s_axi_arready_converter_0_signal);
    mp_s_axi_rid_converter_0 = new xsc::common::vector2vector_converter<1,2>("s_axi_rid_converter_0");
    mp_s_axi_rid_converter_0->vector_in(m_s_axi_rid_converter_0_signal);
    mp_s_axi_rid_converter_0->vector_out(s_axi_concat_rid_out_0);
    mp_S00_AXI_transactor->RID(m_s_axi_rid_converter_0_signal);
    mp_s_axi_rdata_converter_0 = new xsc::common::vector2vector_converter<256,512>("s_axi_rdata_converter_0");
    mp_s_axi_rdata_converter_0->vector_in(m_s_axi_rdata_converter_0_signal);
    mp_s_axi_rdata_converter_0->vector_out(s_axi_concat_rdata_out_0);
    mp_S00_AXI_transactor->RDATA(m_s_axi_rdata_converter_0_signal);
    mp_s_axi_rresp_converter_0 = new xsc::common::vector2vector_converter<2,4>("s_axi_rresp_converter_0");
    mp_s_axi_rresp_converter_0->vector_in(m_s_axi_rresp_converter_0_signal);
    mp_s_axi_rresp_converter_0->vector_out(s_axi_concat_rresp_out_0);
    mp_S00_AXI_transactor->RRESP(m_s_axi_rresp_converter_0_signal);
    mp_s_axi_rlast_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rlast_converter_0");
    mp_s_axi_rlast_converter_0->scalar_in(m_s_axi_rlast_converter_0_signal);
    mp_s_axi_rlast_converter_0->vector_out(s_axi_concat_rlast_out_0);
    mp_S00_AXI_transactor->RLAST(m_s_axi_rlast_converter_0_signal);
    mp_s_axi_rvalid_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rvalid_converter_0");
    mp_s_axi_rvalid_converter_0->scalar_in(m_s_axi_rvalid_converter_0_signal);
    mp_s_axi_rvalid_converter_0->vector_out(s_axi_concat_rvalid_out_0);
    mp_S00_AXI_transactor->RVALID(m_s_axi_rvalid_converter_0_signal);
    mp_s_axi_rready_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_rready_converter_0");
    mp_s_axi_rready_converter_0->vector_in(s_axi_split_rready_out_0);
    mp_s_axi_rready_converter_0->scalar_out(m_s_axi_rready_converter_0_signal);
    mp_S00_AXI_transactor->RREADY(m_s_axi_rready_converter_0_signal);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->target_0_rd_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->target_0_wr_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_crossbar_0_1", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "4");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "128");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<256,32,1,4,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWID(m_axi_awid);
    mp_M00_AXI_transactor->AWADDR(m_axi_awaddr);
    mp_M00_AXI_transactor->AWLEN(m_axi_awlen);
    mp_M00_AXI_transactor->AWSIZE(m_axi_awsize);
    mp_M00_AXI_transactor->AWBURST(m_axi_awburst);
    mp_m_axi_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_awlock_converter");
    mp_m_axi_awlock_converter->scalar_in(m_m_axi_awlock_converter_signal);
    mp_m_axi_awlock_converter->vector_out(m_axi_awlock);
    mp_M00_AXI_transactor->AWLOCK(m_m_axi_awlock_converter_signal);
    mp_M00_AXI_transactor->AWCACHE(m_axi_awcache);
    mp_M00_AXI_transactor->AWPROT(m_axi_awprot);
    mp_M00_AXI_transactor->AWREGION(m_axi_awregion);
    mp_M00_AXI_transactor->AWQOS(m_axi_awqos);
    mp_M00_AXI_transactor->AWUSER(m_axi_awuser);
    mp_m_axi_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_awvalid_converter");
    mp_m_axi_awvalid_converter->scalar_in(m_m_axi_awvalid_converter_signal);
    mp_m_axi_awvalid_converter->vector_out(m_axi_awvalid);
    mp_M00_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_signal);
    mp_m_axi_awready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_awready_converter");
    mp_m_axi_awready_converter->vector_in(m_axi_awready);
    mp_m_axi_awready_converter->scalar_out(m_m_axi_awready_converter_signal);
    mp_M00_AXI_transactor->AWREADY(m_m_axi_awready_converter_signal);
    mp_M00_AXI_transactor->WDATA(m_axi_wdata);
    mp_M00_AXI_transactor->WSTRB(m_axi_wstrb);
    mp_m_axi_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_wlast_converter");
    mp_m_axi_wlast_converter->scalar_in(m_m_axi_wlast_converter_signal);
    mp_m_axi_wlast_converter->vector_out(m_axi_wlast);
    mp_M00_AXI_transactor->WLAST(m_m_axi_wlast_converter_signal);
    mp_m_axi_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_wvalid_converter");
    mp_m_axi_wvalid_converter->scalar_in(m_m_axi_wvalid_converter_signal);
    mp_m_axi_wvalid_converter->vector_out(m_axi_wvalid);
    mp_M00_AXI_transactor->WVALID(m_m_axi_wvalid_converter_signal);
    mp_m_axi_wready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_wready_converter");
    mp_m_axi_wready_converter->vector_in(m_axi_wready);
    mp_m_axi_wready_converter->scalar_out(m_m_axi_wready_converter_signal);
    mp_M00_AXI_transactor->WREADY(m_m_axi_wready_converter_signal);
    mp_M00_AXI_transactor->BID(m_axi_bid);
    mp_M00_AXI_transactor->BRESP(m_axi_bresp);
    mp_m_axi_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_bvalid_converter");
    mp_m_axi_bvalid_converter->vector_in(m_axi_bvalid);
    mp_m_axi_bvalid_converter->scalar_out(m_m_axi_bvalid_converter_signal);
    mp_M00_AXI_transactor->BVALID(m_m_axi_bvalid_converter_signal);
    mp_m_axi_bready_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_bready_converter");
    mp_m_axi_bready_converter->scalar_in(m_m_axi_bready_converter_signal);
    mp_m_axi_bready_converter->vector_out(m_axi_bready);
    mp_M00_AXI_transactor->BREADY(m_m_axi_bready_converter_signal);
    mp_M00_AXI_transactor->ARID(m_axi_arid);
    mp_M00_AXI_transactor->ARADDR(m_axi_araddr);
    mp_M00_AXI_transactor->ARLEN(m_axi_arlen);
    mp_M00_AXI_transactor->ARSIZE(m_axi_arsize);
    mp_M00_AXI_transactor->ARBURST(m_axi_arburst);
    mp_m_axi_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_arlock_converter");
    mp_m_axi_arlock_converter->scalar_in(m_m_axi_arlock_converter_signal);
    mp_m_axi_arlock_converter->vector_out(m_axi_arlock);
    mp_M00_AXI_transactor->ARLOCK(m_m_axi_arlock_converter_signal);
    mp_M00_AXI_transactor->ARCACHE(m_axi_arcache);
    mp_M00_AXI_transactor->ARPROT(m_axi_arprot);
    mp_M00_AXI_transactor->ARREGION(m_axi_arregion);
    mp_M00_AXI_transactor->ARQOS(m_axi_arqos);
    mp_m_axi_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_arvalid_converter");
    mp_m_axi_arvalid_converter->scalar_in(m_m_axi_arvalid_converter_signal);
    mp_m_axi_arvalid_converter->vector_out(m_axi_arvalid);
    mp_M00_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_signal);
    mp_m_axi_arready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_arready_converter");
    mp_m_axi_arready_converter->vector_in(m_axi_arready);
    mp_m_axi_arready_converter->scalar_out(m_m_axi_arready_converter_signal);
    mp_M00_AXI_transactor->ARREADY(m_m_axi_arready_converter_signal);
    mp_M00_AXI_transactor->RID(m_axi_rid);
    mp_M00_AXI_transactor->RDATA(m_axi_rdata);
    mp_M00_AXI_transactor->RRESP(m_axi_rresp);
    mp_m_axi_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_rlast_converter");
    mp_m_axi_rlast_converter->vector_in(m_axi_rlast);
    mp_m_axi_rlast_converter->scalar_out(m_m_axi_rlast_converter_signal);
    mp_M00_AXI_transactor->RLAST(m_m_axi_rlast_converter_signal);
    mp_m_axi_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_rvalid_converter");
    mp_m_axi_rvalid_converter->vector_in(m_axi_rvalid);
    mp_m_axi_rvalid_converter->scalar_out(m_m_axi_rvalid_converter_signal);
    mp_M00_AXI_transactor->RVALID(m_m_axi_rvalid_converter_signal);
    mp_m_axi_rready_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_rready_converter");
    mp_m_axi_rready_converter->scalar_in(m_m_axi_rready_converter_signal);
    mp_m_axi_rready_converter->vector_out(m_axi_rready);
    mp_M00_AXI_transactor->RREADY(m_m_axi_rready_converter_signal);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->initiator_0_rd_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->initiator_0_wr_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_crossbar_0_1", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "4");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<256,32,1,4,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);

    // S01_AXI' transactor ports

    mp_s_axi_awid_converter_1 = new xsc::common::vector2vector_converter<2,1>("s_axi_awid_converter_1");
    mp_s_axi_awid_converter_1->vector_in(s_axi_split_awid_out_1);
    mp_s_axi_awid_converter_1->vector_out(m_s_axi_awid_converter_1_signal);
    mp_S01_AXI_transactor->AWID(m_s_axi_awid_converter_1_signal);
    mp_s_axi_awaddr_converter_1 = new xsc::common::vector2vector_converter<64,32>("s_axi_awaddr_converter_1");
    mp_s_axi_awaddr_converter_1->vector_in(s_axi_split_awaddr_out_1);
    mp_s_axi_awaddr_converter_1->vector_out(m_s_axi_awaddr_converter_1_signal);
    mp_S01_AXI_transactor->AWADDR(m_s_axi_awaddr_converter_1_signal);
    mp_s_axi_awlen_converter_1 = new xsc::common::vector2vector_converter<16,8>("s_axi_awlen_converter_1");
    mp_s_axi_awlen_converter_1->vector_in(s_axi_split_awlen_out_1);
    mp_s_axi_awlen_converter_1->vector_out(m_s_axi_awlen_converter_1_signal);
    mp_S01_AXI_transactor->AWLEN(m_s_axi_awlen_converter_1_signal);
    mp_s_axi_awsize_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_awsize_converter_1");
    mp_s_axi_awsize_converter_1->vector_in(s_axi_split_awsize_out_1);
    mp_s_axi_awsize_converter_1->vector_out(m_s_axi_awsize_converter_1_signal);
    mp_S01_AXI_transactor->AWSIZE(m_s_axi_awsize_converter_1_signal);
    mp_s_axi_awburst_converter_1 = new xsc::common::vector2vector_converter<4,2>("s_axi_awburst_converter_1");
    mp_s_axi_awburst_converter_1->vector_in(s_axi_split_awburst_out_1);
    mp_s_axi_awburst_converter_1->vector_out(m_s_axi_awburst_converter_1_signal);
    mp_S01_AXI_transactor->AWBURST(m_s_axi_awburst_converter_1_signal);
    mp_s_axi_awlock_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awlock_converter_1");
    mp_s_axi_awlock_converter_1->vector_in(s_axi_split_awlock_out_1);
    mp_s_axi_awlock_converter_1->scalar_out(m_s_axi_awlock_converter_1_signal);
    mp_S01_AXI_transactor->AWLOCK(m_s_axi_awlock_converter_1_signal);
    mp_s_axi_awcache_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_awcache_converter_1");
    mp_s_axi_awcache_converter_1->vector_in(s_axi_split_awcache_out_1);
    mp_s_axi_awcache_converter_1->vector_out(m_s_axi_awcache_converter_1_signal);
    mp_S01_AXI_transactor->AWCACHE(m_s_axi_awcache_converter_1_signal);
    mp_s_axi_awprot_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_awprot_converter_1");
    mp_s_axi_awprot_converter_1->vector_in(s_axi_split_awprot_out_1);
    mp_s_axi_awprot_converter_1->vector_out(m_s_axi_awprot_converter_1_signal);
    mp_S01_AXI_transactor->AWPROT(m_s_axi_awprot_converter_1_signal);
    mp_s_axi_awqos_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_awqos_converter_1");
    mp_s_axi_awqos_converter_1->vector_in(s_axi_split_awqos_out_1);
    mp_s_axi_awqos_converter_1->vector_out(m_s_axi_awqos_converter_1_signal);
    mp_S01_AXI_transactor->AWQOS(m_s_axi_awqos_converter_1_signal);
    mp_s_axi_awuser_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_awuser_converter_1");
    mp_s_axi_awuser_converter_1->vector_in(s_axi_split_awuser_out_1);
    mp_s_axi_awuser_converter_1->vector_out(m_s_axi_awuser_converter_1_signal);
    mp_S01_AXI_transactor->AWUSER(m_s_axi_awuser_converter_1_signal);
    mp_s_axi_awvalid_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awvalid_converter_1");
    mp_s_axi_awvalid_converter_1->vector_in(s_axi_split_awvalid_out_1);
    mp_s_axi_awvalid_converter_1->scalar_out(m_s_axi_awvalid_converter_1_signal);
    mp_S01_AXI_transactor->AWVALID(m_s_axi_awvalid_converter_1_signal);
    mp_s_axi_awready_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_awready_converter_1");
    mp_s_axi_awready_converter_1->scalar_in(m_s_axi_awready_converter_1_signal);
    mp_s_axi_awready_converter_1->vector_out(s_axi_concat_awready_out_1);
    mp_S01_AXI_transactor->AWREADY(m_s_axi_awready_converter_1_signal);
    mp_s_axi_wdata_converter_1 = new xsc::common::vector2vector_converter<512,256>("s_axi_wdata_converter_1");
    mp_s_axi_wdata_converter_1->vector_in(s_axi_split_wdata_out_1);
    mp_s_axi_wdata_converter_1->vector_out(m_s_axi_wdata_converter_1_signal);
    mp_S01_AXI_transactor->WDATA(m_s_axi_wdata_converter_1_signal);
    mp_s_axi_wstrb_converter_1 = new xsc::common::vector2vector_converter<64,32>("s_axi_wstrb_converter_1");
    mp_s_axi_wstrb_converter_1->vector_in(s_axi_split_wstrb_out_1);
    mp_s_axi_wstrb_converter_1->vector_out(m_s_axi_wstrb_converter_1_signal);
    mp_S01_AXI_transactor->WSTRB(m_s_axi_wstrb_converter_1_signal);
    mp_s_axi_wlast_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wlast_converter_1");
    mp_s_axi_wlast_converter_1->vector_in(s_axi_split_wlast_out_1);
    mp_s_axi_wlast_converter_1->scalar_out(m_s_axi_wlast_converter_1_signal);
    mp_S01_AXI_transactor->WLAST(m_s_axi_wlast_converter_1_signal);
    mp_s_axi_wvalid_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wvalid_converter_1");
    mp_s_axi_wvalid_converter_1->vector_in(s_axi_split_wvalid_out_1);
    mp_s_axi_wvalid_converter_1->scalar_out(m_s_axi_wvalid_converter_1_signal);
    mp_S01_AXI_transactor->WVALID(m_s_axi_wvalid_converter_1_signal);
    mp_s_axi_wready_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_wready_converter_1");
    mp_s_axi_wready_converter_1->scalar_in(m_s_axi_wready_converter_1_signal);
    mp_s_axi_wready_converter_1->vector_out(s_axi_concat_wready_out_1);
    mp_S01_AXI_transactor->WREADY(m_s_axi_wready_converter_1_signal);
    mp_s_axi_bid_converter_1 = new xsc::common::vector2vector_converter<1,2>("s_axi_bid_converter_1");
    mp_s_axi_bid_converter_1->vector_in(m_s_axi_bid_converter_1_signal);
    mp_s_axi_bid_converter_1->vector_out(s_axi_concat_bid_out_1);
    mp_S01_AXI_transactor->BID(m_s_axi_bid_converter_1_signal);
    mp_s_axi_bresp_converter_1 = new xsc::common::vector2vector_converter<2,4>("s_axi_bresp_converter_1");
    mp_s_axi_bresp_converter_1->vector_in(m_s_axi_bresp_converter_1_signal);
    mp_s_axi_bresp_converter_1->vector_out(s_axi_concat_bresp_out_1);
    mp_S01_AXI_transactor->BRESP(m_s_axi_bresp_converter_1_signal);
    mp_s_axi_bvalid_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_bvalid_converter_1");
    mp_s_axi_bvalid_converter_1->scalar_in(m_s_axi_bvalid_converter_1_signal);
    mp_s_axi_bvalid_converter_1->vector_out(s_axi_concat_bvalid_out_1);
    mp_S01_AXI_transactor->BVALID(m_s_axi_bvalid_converter_1_signal);
    mp_s_axi_bready_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_bready_converter_1");
    mp_s_axi_bready_converter_1->vector_in(s_axi_split_bready_out_1);
    mp_s_axi_bready_converter_1->scalar_out(m_s_axi_bready_converter_1_signal);
    mp_S01_AXI_transactor->BREADY(m_s_axi_bready_converter_1_signal);
    mp_s_axi_arid_converter_1 = new xsc::common::vector2vector_converter<2,1>("s_axi_arid_converter_1");
    mp_s_axi_arid_converter_1->vector_in(s_axi_split_arid_out_1);
    mp_s_axi_arid_converter_1->vector_out(m_s_axi_arid_converter_1_signal);
    mp_S01_AXI_transactor->ARID(m_s_axi_arid_converter_1_signal);
    mp_s_axi_araddr_converter_1 = new xsc::common::vector2vector_converter<64,32>("s_axi_araddr_converter_1");
    mp_s_axi_araddr_converter_1->vector_in(s_axi_split_araddr_out_1);
    mp_s_axi_araddr_converter_1->vector_out(m_s_axi_araddr_converter_1_signal);
    mp_S01_AXI_transactor->ARADDR(m_s_axi_araddr_converter_1_signal);
    mp_s_axi_arlen_converter_1 = new xsc::common::vector2vector_converter<16,8>("s_axi_arlen_converter_1");
    mp_s_axi_arlen_converter_1->vector_in(s_axi_split_arlen_out_1);
    mp_s_axi_arlen_converter_1->vector_out(m_s_axi_arlen_converter_1_signal);
    mp_S01_AXI_transactor->ARLEN(m_s_axi_arlen_converter_1_signal);
    mp_s_axi_arsize_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_arsize_converter_1");
    mp_s_axi_arsize_converter_1->vector_in(s_axi_split_arsize_out_1);
    mp_s_axi_arsize_converter_1->vector_out(m_s_axi_arsize_converter_1_signal);
    mp_S01_AXI_transactor->ARSIZE(m_s_axi_arsize_converter_1_signal);
    mp_s_axi_arburst_converter_1 = new xsc::common::vector2vector_converter<4,2>("s_axi_arburst_converter_1");
    mp_s_axi_arburst_converter_1->vector_in(s_axi_split_arburst_out_1);
    mp_s_axi_arburst_converter_1->vector_out(m_s_axi_arburst_converter_1_signal);
    mp_S01_AXI_transactor->ARBURST(m_s_axi_arburst_converter_1_signal);
    mp_s_axi_arlock_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arlock_converter_1");
    mp_s_axi_arlock_converter_1->vector_in(s_axi_split_arlock_out_1);
    mp_s_axi_arlock_converter_1->scalar_out(m_s_axi_arlock_converter_1_signal);
    mp_S01_AXI_transactor->ARLOCK(m_s_axi_arlock_converter_1_signal);
    mp_s_axi_arcache_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_arcache_converter_1");
    mp_s_axi_arcache_converter_1->vector_in(s_axi_split_arcache_out_1);
    mp_s_axi_arcache_converter_1->vector_out(m_s_axi_arcache_converter_1_signal);
    mp_S01_AXI_transactor->ARCACHE(m_s_axi_arcache_converter_1_signal);
    mp_s_axi_arprot_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_arprot_converter_1");
    mp_s_axi_arprot_converter_1->vector_in(s_axi_split_arprot_out_1);
    mp_s_axi_arprot_converter_1->vector_out(m_s_axi_arprot_converter_1_signal);
    mp_S01_AXI_transactor->ARPROT(m_s_axi_arprot_converter_1_signal);
    mp_s_axi_arqos_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_arqos_converter_1");
    mp_s_axi_arqos_converter_1->vector_in(s_axi_split_arqos_out_1);
    mp_s_axi_arqos_converter_1->vector_out(m_s_axi_arqos_converter_1_signal);
    mp_S01_AXI_transactor->ARQOS(m_s_axi_arqos_converter_1_signal);
    mp_s_axi_arvalid_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arvalid_converter_1");
    mp_s_axi_arvalid_converter_1->vector_in(s_axi_split_arvalid_out_1);
    mp_s_axi_arvalid_converter_1->scalar_out(m_s_axi_arvalid_converter_1_signal);
    mp_S01_AXI_transactor->ARVALID(m_s_axi_arvalid_converter_1_signal);
    mp_s_axi_arready_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_arready_converter_1");
    mp_s_axi_arready_converter_1->scalar_in(m_s_axi_arready_converter_1_signal);
    mp_s_axi_arready_converter_1->vector_out(s_axi_concat_arready_out_1);
    mp_S01_AXI_transactor->ARREADY(m_s_axi_arready_converter_1_signal);
    mp_s_axi_rid_converter_1 = new xsc::common::vector2vector_converter<1,2>("s_axi_rid_converter_1");
    mp_s_axi_rid_converter_1->vector_in(m_s_axi_rid_converter_1_signal);
    mp_s_axi_rid_converter_1->vector_out(s_axi_concat_rid_out_1);
    mp_S01_AXI_transactor->RID(m_s_axi_rid_converter_1_signal);
    mp_s_axi_rdata_converter_1 = new xsc::common::vector2vector_converter<256,512>("s_axi_rdata_converter_1");
    mp_s_axi_rdata_converter_1->vector_in(m_s_axi_rdata_converter_1_signal);
    mp_s_axi_rdata_converter_1->vector_out(s_axi_concat_rdata_out_1);
    mp_S01_AXI_transactor->RDATA(m_s_axi_rdata_converter_1_signal);
    mp_s_axi_rresp_converter_1 = new xsc::common::vector2vector_converter<2,4>("s_axi_rresp_converter_1");
    mp_s_axi_rresp_converter_1->vector_in(m_s_axi_rresp_converter_1_signal);
    mp_s_axi_rresp_converter_1->vector_out(s_axi_concat_rresp_out_1);
    mp_S01_AXI_transactor->RRESP(m_s_axi_rresp_converter_1_signal);
    mp_s_axi_rlast_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rlast_converter_1");
    mp_s_axi_rlast_converter_1->scalar_in(m_s_axi_rlast_converter_1_signal);
    mp_s_axi_rlast_converter_1->vector_out(s_axi_concat_rlast_out_1);
    mp_S01_AXI_transactor->RLAST(m_s_axi_rlast_converter_1_signal);
    mp_s_axi_rvalid_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rvalid_converter_1");
    mp_s_axi_rvalid_converter_1->scalar_in(m_s_axi_rvalid_converter_1_signal);
    mp_s_axi_rvalid_converter_1->vector_out(s_axi_concat_rvalid_out_1);
    mp_S01_AXI_transactor->RVALID(m_s_axi_rvalid_converter_1_signal);
    mp_s_axi_rready_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_rready_converter_1");
    mp_s_axi_rready_converter_1->vector_in(s_axi_split_rready_out_1);
    mp_s_axi_rready_converter_1->scalar_out(m_s_axi_rready_converter_1_signal);
    mp_S01_AXI_transactor->RREADY(m_s_axi_rready_converter_1_signal);
    mp_S01_AXI_transactor->CLK(aclk);
    mp_S01_AXI_transactor->RST(aresetn);

    // S01_AXI' transactor sockets

    mp_impl->target_1_rd_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->target_1_wr_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
design_1_axi_crossbar_0_1::design_1_axi_crossbar_0_1(const sc_core::sc_module_name& nm) : design_1_axi_crossbar_0_1_sc(nm),  aclk("aclk"), aresetn("aresetn"), s_axi_awid("s_axi_awid"), s_axi_awaddr("s_axi_awaddr"), s_axi_awlen("s_axi_awlen"), s_axi_awsize("s_axi_awsize"), s_axi_awburst("s_axi_awburst"), s_axi_awlock("s_axi_awlock"), s_axi_awcache("s_axi_awcache"), s_axi_awprot("s_axi_awprot"), s_axi_awqos("s_axi_awqos"), s_axi_awuser("s_axi_awuser"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wlast("s_axi_wlast"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bid("s_axi_bid"), s_axi_bresp("s_axi_bresp"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_arid("s_axi_arid"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arsize("s_axi_arsize"), s_axi_arburst("s_axi_arburst"), s_axi_arlock("s_axi_arlock"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arqos("s_axi_arqos"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rid("s_axi_rid"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_awid("m_axi_awid"), m_axi_awaddr("m_axi_awaddr"), m_axi_awlen("m_axi_awlen"), m_axi_awsize("m_axi_awsize"), m_axi_awburst("m_axi_awburst"), m_axi_awlock("m_axi_awlock"), m_axi_awcache("m_axi_awcache"), m_axi_awprot("m_axi_awprot"), m_axi_awregion("m_axi_awregion"), m_axi_awqos("m_axi_awqos"), m_axi_awuser("m_axi_awuser"), m_axi_awvalid("m_axi_awvalid"), m_axi_awready("m_axi_awready"), m_axi_wdata("m_axi_wdata"), m_axi_wstrb("m_axi_wstrb"), m_axi_wlast("m_axi_wlast"), m_axi_wvalid("m_axi_wvalid"), m_axi_wready("m_axi_wready"), m_axi_bid("m_axi_bid"), m_axi_bresp("m_axi_bresp"), m_axi_bvalid("m_axi_bvalid"), m_axi_bready("m_axi_bready"), m_axi_arid("m_axi_arid"), m_axi_araddr("m_axi_araddr"), m_axi_arlen("m_axi_arlen"), m_axi_arsize("m_axi_arsize"), m_axi_arburst("m_axi_arburst"), m_axi_arlock("m_axi_arlock"), m_axi_arcache("m_axi_arcache"), m_axi_arprot("m_axi_arprot"), m_axi_arregion("m_axi_arregion"), m_axi_arqos("m_axi_arqos"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rid("m_axi_rid"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rlast("m_axi_rlast"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready")
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_s_axi_awid_converter_0 = NULL;
  mp_s_axi_awaddr_converter_0 = NULL;
  mp_s_axi_awlen_converter_0 = NULL;
  mp_s_axi_awsize_converter_0 = NULL;
  mp_s_axi_awburst_converter_0 = NULL;
  mp_s_axi_awlock_converter_0 = NULL;
  mp_s_axi_awcache_converter_0 = NULL;
  mp_s_axi_awprot_converter_0 = NULL;
  mp_s_axi_awqos_converter_0 = NULL;
  mp_s_axi_awuser_converter_0 = NULL;
  mp_s_axi_awvalid_converter_0 = NULL;
  mp_s_axi_awready_converter_0 = NULL;
  mp_s_axi_wdata_converter_0 = NULL;
  mp_s_axi_wstrb_converter_0 = NULL;
  mp_s_axi_wlast_converter_0 = NULL;
  mp_s_axi_wvalid_converter_0 = NULL;
  mp_s_axi_wready_converter_0 = NULL;
  mp_s_axi_bid_converter_0 = NULL;
  mp_s_axi_bresp_converter_0 = NULL;
  mp_s_axi_bvalid_converter_0 = NULL;
  mp_s_axi_bready_converter_0 = NULL;
  mp_s_axi_arid_converter_0 = NULL;
  mp_s_axi_araddr_converter_0 = NULL;
  mp_s_axi_arlen_converter_0 = NULL;
  mp_s_axi_arsize_converter_0 = NULL;
  mp_s_axi_arburst_converter_0 = NULL;
  mp_s_axi_arlock_converter_0 = NULL;
  mp_s_axi_arcache_converter_0 = NULL;
  mp_s_axi_arprot_converter_0 = NULL;
  mp_s_axi_arqos_converter_0 = NULL;
  mp_s_axi_arvalid_converter_0 = NULL;
  mp_s_axi_arready_converter_0 = NULL;
  mp_s_axi_rid_converter_0 = NULL;
  mp_s_axi_rdata_converter_0 = NULL;
  mp_s_axi_rresp_converter_0 = NULL;
  mp_s_axi_rlast_converter_0 = NULL;
  mp_s_axi_rvalid_converter_0 = NULL;
  mp_s_axi_rready_converter_0 = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_m_axi_awlock_converter = NULL;
  mp_m_axi_awvalid_converter = NULL;
  mp_m_axi_awready_converter = NULL;
  mp_m_axi_wlast_converter = NULL;
  mp_m_axi_wvalid_converter = NULL;
  mp_m_axi_wready_converter = NULL;
  mp_m_axi_bvalid_converter = NULL;
  mp_m_axi_bready_converter = NULL;
  mp_m_axi_arlock_converter = NULL;
  mp_m_axi_arvalid_converter = NULL;
  mp_m_axi_arready_converter = NULL;
  mp_m_axi_rlast_converter = NULL;
  mp_m_axi_rvalid_converter = NULL;
  mp_m_axi_rready_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_s_axi_awid_converter_1 = NULL;
  mp_s_axi_awaddr_converter_1 = NULL;
  mp_s_axi_awlen_converter_1 = NULL;
  mp_s_axi_awsize_converter_1 = NULL;
  mp_s_axi_awburst_converter_1 = NULL;
  mp_s_axi_awlock_converter_1 = NULL;
  mp_s_axi_awcache_converter_1 = NULL;
  mp_s_axi_awprot_converter_1 = NULL;
  mp_s_axi_awqos_converter_1 = NULL;
  mp_s_axi_awuser_converter_1 = NULL;
  mp_s_axi_awvalid_converter_1 = NULL;
  mp_s_axi_awready_converter_1 = NULL;
  mp_s_axi_wdata_converter_1 = NULL;
  mp_s_axi_wstrb_converter_1 = NULL;
  mp_s_axi_wlast_converter_1 = NULL;
  mp_s_axi_wvalid_converter_1 = NULL;
  mp_s_axi_wready_converter_1 = NULL;
  mp_s_axi_bid_converter_1 = NULL;
  mp_s_axi_bresp_converter_1 = NULL;
  mp_s_axi_bvalid_converter_1 = NULL;
  mp_s_axi_bready_converter_1 = NULL;
  mp_s_axi_arid_converter_1 = NULL;
  mp_s_axi_araddr_converter_1 = NULL;
  mp_s_axi_arlen_converter_1 = NULL;
  mp_s_axi_arsize_converter_1 = NULL;
  mp_s_axi_arburst_converter_1 = NULL;
  mp_s_axi_arlock_converter_1 = NULL;
  mp_s_axi_arcache_converter_1 = NULL;
  mp_s_axi_arprot_converter_1 = NULL;
  mp_s_axi_arqos_converter_1 = NULL;
  mp_s_axi_arvalid_converter_1 = NULL;
  mp_s_axi_arready_converter_1 = NULL;
  mp_s_axi_rid_converter_1 = NULL;
  mp_s_axi_rdata_converter_1 = NULL;
  mp_s_axi_rresp_converter_1 = NULL;
  mp_s_axi_rlast_converter_1 = NULL;
  mp_s_axi_rvalid_converter_1 = NULL;
  mp_s_axi_rready_converter_1 = NULL;

  // initialize junctures
  mp_s_axi_concat_arready = NULL;
  mp_s_axi_concat_awready = NULL;
  mp_s_axi_concat_bid = NULL;
  mp_s_axi_concat_bresp = NULL;
  mp_s_axi_concat_bvalid = NULL;
  mp_s_axi_concat_rdata = NULL;
  mp_s_axi_concat_rid = NULL;
  mp_s_axi_concat_rlast = NULL;
  mp_s_axi_concat_rresp = NULL;
  mp_s_axi_concat_rvalid = NULL;
  mp_s_axi_concat_wready = NULL;
  mp_s_axi_split_araddr = NULL;
  mp_s_axi_split_arburst = NULL;
  mp_s_axi_split_arcache = NULL;
  mp_s_axi_split_arid = NULL;
  mp_s_axi_split_arlen = NULL;
  mp_s_axi_split_arlock = NULL;
  mp_s_axi_split_arprot = NULL;
  mp_s_axi_split_arqos = NULL;
  mp_s_axi_split_arsize = NULL;
  mp_s_axi_split_arvalid = NULL;
  mp_s_axi_split_awaddr = NULL;
  mp_s_axi_split_awburst = NULL;
  mp_s_axi_split_awcache = NULL;
  mp_s_axi_split_awid = NULL;
  mp_s_axi_split_awlen = NULL;
  mp_s_axi_split_awlock = NULL;
  mp_s_axi_split_awprot = NULL;
  mp_s_axi_split_awqos = NULL;
  mp_s_axi_split_awsize = NULL;
  mp_s_axi_split_awuser = NULL;
  mp_s_axi_split_awvalid = NULL;
  mp_s_axi_split_bready = NULL;
  mp_s_axi_split_rready = NULL;
  mp_s_axi_split_wdata = NULL;
  mp_s_axi_split_wlast = NULL;
  mp_s_axi_split_wstrb = NULL;
  mp_s_axi_split_wvalid = NULL;
  // Instantiate Socket Stubs

  // configure S00_AXI_transactor
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "4");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<256,32,1,4,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);
  mp_s_axi_awid_converter_0 = new xsc::common::vector2vector_converter<2,1>("s_axi_awid_converter_0");
  mp_s_axi_split_awid = new xsc::xsc_split<2, 2>("s_axi_split_awid");
  mp_s_axi_split_awid->in_port(s_axi_awid);
  mp_s_axi_split_awid->out_port[0](s_axi_split_awid_out_0);
    mp_s_axi_split_awid->add_mask(0,1,0);
  mp_s_axi_awid_converter_0->vector_in(s_axi_split_awid_out_0);
  mp_s_axi_awid_converter_0->vector_out(m_s_axi_awid_converter_0_signal);
  mp_S00_AXI_transactor->AWID(m_s_axi_awid_converter_0_signal);
  mp_s_axi_awaddr_converter_0 = new xsc::common::vector2vector_converter<64,32>("s_axi_awaddr_converter_0");
  mp_s_axi_split_awaddr = new xsc::xsc_split<64, 2>("s_axi_split_awaddr");
  mp_s_axi_split_awaddr->in_port(s_axi_awaddr);
  mp_s_axi_split_awaddr->out_port[0](s_axi_split_awaddr_out_0);
    mp_s_axi_split_awaddr->add_mask(0,32,0);
  mp_s_axi_awaddr_converter_0->vector_in(s_axi_split_awaddr_out_0);
  mp_s_axi_awaddr_converter_0->vector_out(m_s_axi_awaddr_converter_0_signal);
  mp_S00_AXI_transactor->AWADDR(m_s_axi_awaddr_converter_0_signal);
  mp_s_axi_awlen_converter_0 = new xsc::common::vector2vector_converter<16,8>("s_axi_awlen_converter_0");
  mp_s_axi_split_awlen = new xsc::xsc_split<16, 2>("s_axi_split_awlen");
  mp_s_axi_split_awlen->in_port(s_axi_awlen);
  mp_s_axi_split_awlen->out_port[0](s_axi_split_awlen_out_0);
    mp_s_axi_split_awlen->add_mask(0,8,0);
  mp_s_axi_awlen_converter_0->vector_in(s_axi_split_awlen_out_0);
  mp_s_axi_awlen_converter_0->vector_out(m_s_axi_awlen_converter_0_signal);
  mp_S00_AXI_transactor->AWLEN(m_s_axi_awlen_converter_0_signal);
  mp_s_axi_awsize_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_awsize_converter_0");
  mp_s_axi_split_awsize = new xsc::xsc_split<6, 2>("s_axi_split_awsize");
  mp_s_axi_split_awsize->in_port(s_axi_awsize);
  mp_s_axi_split_awsize->out_port[0](s_axi_split_awsize_out_0);
    mp_s_axi_split_awsize->add_mask(0,3,0);
  mp_s_axi_awsize_converter_0->vector_in(s_axi_split_awsize_out_0);
  mp_s_axi_awsize_converter_0->vector_out(m_s_axi_awsize_converter_0_signal);
  mp_S00_AXI_transactor->AWSIZE(m_s_axi_awsize_converter_0_signal);
  mp_s_axi_awburst_converter_0 = new xsc::common::vector2vector_converter<4,2>("s_axi_awburst_converter_0");
  mp_s_axi_split_awburst = new xsc::xsc_split<4, 2>("s_axi_split_awburst");
  mp_s_axi_split_awburst->in_port(s_axi_awburst);
  mp_s_axi_split_awburst->out_port[0](s_axi_split_awburst_out_0);
    mp_s_axi_split_awburst->add_mask(0,2,0);
  mp_s_axi_awburst_converter_0->vector_in(s_axi_split_awburst_out_0);
  mp_s_axi_awburst_converter_0->vector_out(m_s_axi_awburst_converter_0_signal);
  mp_S00_AXI_transactor->AWBURST(m_s_axi_awburst_converter_0_signal);
  mp_s_axi_awlock_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awlock_converter_0");
  mp_s_axi_split_awlock = new xsc::xsc_split<2, 2>("s_axi_split_awlock");
  mp_s_axi_split_awlock->in_port(s_axi_awlock);
  mp_s_axi_split_awlock->out_port[0](s_axi_split_awlock_out_0);
    mp_s_axi_split_awlock->add_mask(0,1,0);
  mp_s_axi_awlock_converter_0->vector_in(s_axi_split_awlock_out_0);
  mp_s_axi_awlock_converter_0->scalar_out(m_s_axi_awlock_converter_0_signal);
  mp_S00_AXI_transactor->AWLOCK(m_s_axi_awlock_converter_0_signal);
  mp_s_axi_awcache_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_awcache_converter_0");
  mp_s_axi_split_awcache = new xsc::xsc_split<8, 2>("s_axi_split_awcache");
  mp_s_axi_split_awcache->in_port(s_axi_awcache);
  mp_s_axi_split_awcache->out_port[0](s_axi_split_awcache_out_0);
    mp_s_axi_split_awcache->add_mask(0,4,0);
  mp_s_axi_awcache_converter_0->vector_in(s_axi_split_awcache_out_0);
  mp_s_axi_awcache_converter_0->vector_out(m_s_axi_awcache_converter_0_signal);
  mp_S00_AXI_transactor->AWCACHE(m_s_axi_awcache_converter_0_signal);
  mp_s_axi_awprot_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_awprot_converter_0");
  mp_s_axi_split_awprot = new xsc::xsc_split<6, 2>("s_axi_split_awprot");
  mp_s_axi_split_awprot->in_port(s_axi_awprot);
  mp_s_axi_split_awprot->out_port[0](s_axi_split_awprot_out_0);
    mp_s_axi_split_awprot->add_mask(0,3,0);
  mp_s_axi_awprot_converter_0->vector_in(s_axi_split_awprot_out_0);
  mp_s_axi_awprot_converter_0->vector_out(m_s_axi_awprot_converter_0_signal);
  mp_S00_AXI_transactor->AWPROT(m_s_axi_awprot_converter_0_signal);
  mp_s_axi_awqos_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_awqos_converter_0");
  mp_s_axi_split_awqos = new xsc::xsc_split<8, 2>("s_axi_split_awqos");
  mp_s_axi_split_awqos->in_port(s_axi_awqos);
  mp_s_axi_split_awqos->out_port[0](s_axi_split_awqos_out_0);
    mp_s_axi_split_awqos->add_mask(0,4,0);
  mp_s_axi_awqos_converter_0->vector_in(s_axi_split_awqos_out_0);
  mp_s_axi_awqos_converter_0->vector_out(m_s_axi_awqos_converter_0_signal);
  mp_S00_AXI_transactor->AWQOS(m_s_axi_awqos_converter_0_signal);
  mp_s_axi_awuser_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_awuser_converter_0");
  mp_s_axi_split_awuser = new xsc::xsc_split<8, 2>("s_axi_split_awuser");
  mp_s_axi_split_awuser->in_port(s_axi_awuser);
  mp_s_axi_split_awuser->out_port[0](s_axi_split_awuser_out_0);
    mp_s_axi_split_awuser->add_mask(0,4,0);
  mp_s_axi_awuser_converter_0->vector_in(s_axi_split_awuser_out_0);
  mp_s_axi_awuser_converter_0->vector_out(m_s_axi_awuser_converter_0_signal);
  mp_S00_AXI_transactor->AWUSER(m_s_axi_awuser_converter_0_signal);
  mp_s_axi_awvalid_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awvalid_converter_0");
  mp_s_axi_split_awvalid = new xsc::xsc_split<2, 2>("s_axi_split_awvalid");
  mp_s_axi_split_awvalid->in_port(s_axi_awvalid);
  mp_s_axi_split_awvalid->out_port[0](s_axi_split_awvalid_out_0);
    mp_s_axi_split_awvalid->add_mask(0,1,0);
  mp_s_axi_awvalid_converter_0->vector_in(s_axi_split_awvalid_out_0);
  mp_s_axi_awvalid_converter_0->scalar_out(m_s_axi_awvalid_converter_0_signal);
  mp_S00_AXI_transactor->AWVALID(m_s_axi_awvalid_converter_0_signal);
  mp_s_axi_awready_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_awready_converter_0");
  mp_s_axi_concat_awready = new xsc::xsc_concatenator<2, 2>("s_axi_concat_awready");
  mp_s_axi_concat_awready->in_port[0](s_axi_concat_awready_out_0);
  mp_s_axi_concat_awready->out_port(s_axi_awready);
    mp_s_axi_concat_awready->offset_port(0, 0);
  mp_s_axi_awready_converter_0->scalar_in(m_s_axi_awready_converter_0_signal);
  mp_s_axi_awready_converter_0->vector_out(s_axi_concat_awready_out_0);
  mp_S00_AXI_transactor->AWREADY(m_s_axi_awready_converter_0_signal);
  mp_s_axi_wdata_converter_0 = new xsc::common::vector2vector_converter<512,256>("s_axi_wdata_converter_0");
  mp_s_axi_split_wdata = new xsc::xsc_split<512, 2>("s_axi_split_wdata");
  mp_s_axi_split_wdata->in_port(s_axi_wdata);
  mp_s_axi_split_wdata->out_port[0](s_axi_split_wdata_out_0);
    mp_s_axi_split_wdata->add_mask(0,256,0);
  mp_s_axi_wdata_converter_0->vector_in(s_axi_split_wdata_out_0);
  mp_s_axi_wdata_converter_0->vector_out(m_s_axi_wdata_converter_0_signal);
  mp_S00_AXI_transactor->WDATA(m_s_axi_wdata_converter_0_signal);
  mp_s_axi_wstrb_converter_0 = new xsc::common::vector2vector_converter<64,32>("s_axi_wstrb_converter_0");
  mp_s_axi_split_wstrb = new xsc::xsc_split<64, 2>("s_axi_split_wstrb");
  mp_s_axi_split_wstrb->in_port(s_axi_wstrb);
  mp_s_axi_split_wstrb->out_port[0](s_axi_split_wstrb_out_0);
    mp_s_axi_split_wstrb->add_mask(0,32,0);
  mp_s_axi_wstrb_converter_0->vector_in(s_axi_split_wstrb_out_0);
  mp_s_axi_wstrb_converter_0->vector_out(m_s_axi_wstrb_converter_0_signal);
  mp_S00_AXI_transactor->WSTRB(m_s_axi_wstrb_converter_0_signal);
  mp_s_axi_wlast_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wlast_converter_0");
  mp_s_axi_split_wlast = new xsc::xsc_split<2, 2>("s_axi_split_wlast");
  mp_s_axi_split_wlast->in_port(s_axi_wlast);
  mp_s_axi_split_wlast->out_port[0](s_axi_split_wlast_out_0);
    mp_s_axi_split_wlast->add_mask(0,1,0);
  mp_s_axi_wlast_converter_0->vector_in(s_axi_split_wlast_out_0);
  mp_s_axi_wlast_converter_0->scalar_out(m_s_axi_wlast_converter_0_signal);
  mp_S00_AXI_transactor->WLAST(m_s_axi_wlast_converter_0_signal);
  mp_s_axi_wvalid_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wvalid_converter_0");
  mp_s_axi_split_wvalid = new xsc::xsc_split<2, 2>("s_axi_split_wvalid");
  mp_s_axi_split_wvalid->in_port(s_axi_wvalid);
  mp_s_axi_split_wvalid->out_port[0](s_axi_split_wvalid_out_0);
    mp_s_axi_split_wvalid->add_mask(0,1,0);
  mp_s_axi_wvalid_converter_0->vector_in(s_axi_split_wvalid_out_0);
  mp_s_axi_wvalid_converter_0->scalar_out(m_s_axi_wvalid_converter_0_signal);
  mp_S00_AXI_transactor->WVALID(m_s_axi_wvalid_converter_0_signal);
  mp_s_axi_wready_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_wready_converter_0");
  mp_s_axi_concat_wready = new xsc::xsc_concatenator<2, 2>("s_axi_concat_wready");
  mp_s_axi_concat_wready->in_port[0](s_axi_concat_wready_out_0);
  mp_s_axi_concat_wready->out_port(s_axi_wready);
    mp_s_axi_concat_wready->offset_port(0, 0);
  mp_s_axi_wready_converter_0->scalar_in(m_s_axi_wready_converter_0_signal);
  mp_s_axi_wready_converter_0->vector_out(s_axi_concat_wready_out_0);
  mp_S00_AXI_transactor->WREADY(m_s_axi_wready_converter_0_signal);
  mp_s_axi_bid_converter_0 = new xsc::common::vector2vector_converter<1,2>("s_axi_bid_converter_0");
  mp_s_axi_concat_bid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_bid");
  mp_s_axi_concat_bid->in_port[0](s_axi_concat_bid_out_0);
  mp_s_axi_concat_bid->out_port(s_axi_bid);
    mp_s_axi_concat_bid->offset_port(0, 0);
  mp_s_axi_bid_converter_0->vector_in(m_s_axi_bid_converter_0_signal);
  mp_s_axi_bid_converter_0->vector_out(s_axi_concat_bid_out_0);
  mp_S00_AXI_transactor->BID(m_s_axi_bid_converter_0_signal);
  mp_s_axi_bresp_converter_0 = new xsc::common::vector2vector_converter<2,4>("s_axi_bresp_converter_0");
  mp_s_axi_concat_bresp = new xsc::xsc_concatenator<4, 2>("s_axi_concat_bresp");
  mp_s_axi_concat_bresp->in_port[0](s_axi_concat_bresp_out_0);
  mp_s_axi_concat_bresp->out_port(s_axi_bresp);
    mp_s_axi_concat_bresp->offset_port(0, 0);
  mp_s_axi_bresp_converter_0->vector_in(m_s_axi_bresp_converter_0_signal);
  mp_s_axi_bresp_converter_0->vector_out(s_axi_concat_bresp_out_0);
  mp_S00_AXI_transactor->BRESP(m_s_axi_bresp_converter_0_signal);
  mp_s_axi_bvalid_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_bvalid_converter_0");
  mp_s_axi_concat_bvalid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_bvalid");
  mp_s_axi_concat_bvalid->in_port[0](s_axi_concat_bvalid_out_0);
  mp_s_axi_concat_bvalid->out_port(s_axi_bvalid);
    mp_s_axi_concat_bvalid->offset_port(0, 0);
  mp_s_axi_bvalid_converter_0->scalar_in(m_s_axi_bvalid_converter_0_signal);
  mp_s_axi_bvalid_converter_0->vector_out(s_axi_concat_bvalid_out_0);
  mp_S00_AXI_transactor->BVALID(m_s_axi_bvalid_converter_0_signal);
  mp_s_axi_bready_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_bready_converter_0");
  mp_s_axi_split_bready = new xsc::xsc_split<2, 2>("s_axi_split_bready");
  mp_s_axi_split_bready->in_port(s_axi_bready);
  mp_s_axi_split_bready->out_port[0](s_axi_split_bready_out_0);
    mp_s_axi_split_bready->add_mask(0,1,0);
  mp_s_axi_bready_converter_0->vector_in(s_axi_split_bready_out_0);
  mp_s_axi_bready_converter_0->scalar_out(m_s_axi_bready_converter_0_signal);
  mp_S00_AXI_transactor->BREADY(m_s_axi_bready_converter_0_signal);
  mp_s_axi_arid_converter_0 = new xsc::common::vector2vector_converter<2,1>("s_axi_arid_converter_0");
  mp_s_axi_split_arid = new xsc::xsc_split<2, 2>("s_axi_split_arid");
  mp_s_axi_split_arid->in_port(s_axi_arid);
  mp_s_axi_split_arid->out_port[0](s_axi_split_arid_out_0);
    mp_s_axi_split_arid->add_mask(0,1,0);
  mp_s_axi_arid_converter_0->vector_in(s_axi_split_arid_out_0);
  mp_s_axi_arid_converter_0->vector_out(m_s_axi_arid_converter_0_signal);
  mp_S00_AXI_transactor->ARID(m_s_axi_arid_converter_0_signal);
  mp_s_axi_araddr_converter_0 = new xsc::common::vector2vector_converter<64,32>("s_axi_araddr_converter_0");
  mp_s_axi_split_araddr = new xsc::xsc_split<64, 2>("s_axi_split_araddr");
  mp_s_axi_split_araddr->in_port(s_axi_araddr);
  mp_s_axi_split_araddr->out_port[0](s_axi_split_araddr_out_0);
    mp_s_axi_split_araddr->add_mask(0,32,0);
  mp_s_axi_araddr_converter_0->vector_in(s_axi_split_araddr_out_0);
  mp_s_axi_araddr_converter_0->vector_out(m_s_axi_araddr_converter_0_signal);
  mp_S00_AXI_transactor->ARADDR(m_s_axi_araddr_converter_0_signal);
  mp_s_axi_arlen_converter_0 = new xsc::common::vector2vector_converter<16,8>("s_axi_arlen_converter_0");
  mp_s_axi_split_arlen = new xsc::xsc_split<16, 2>("s_axi_split_arlen");
  mp_s_axi_split_arlen->in_port(s_axi_arlen);
  mp_s_axi_split_arlen->out_port[0](s_axi_split_arlen_out_0);
    mp_s_axi_split_arlen->add_mask(0,8,0);
  mp_s_axi_arlen_converter_0->vector_in(s_axi_split_arlen_out_0);
  mp_s_axi_arlen_converter_0->vector_out(m_s_axi_arlen_converter_0_signal);
  mp_S00_AXI_transactor->ARLEN(m_s_axi_arlen_converter_0_signal);
  mp_s_axi_arsize_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_arsize_converter_0");
  mp_s_axi_split_arsize = new xsc::xsc_split<6, 2>("s_axi_split_arsize");
  mp_s_axi_split_arsize->in_port(s_axi_arsize);
  mp_s_axi_split_arsize->out_port[0](s_axi_split_arsize_out_0);
    mp_s_axi_split_arsize->add_mask(0,3,0);
  mp_s_axi_arsize_converter_0->vector_in(s_axi_split_arsize_out_0);
  mp_s_axi_arsize_converter_0->vector_out(m_s_axi_arsize_converter_0_signal);
  mp_S00_AXI_transactor->ARSIZE(m_s_axi_arsize_converter_0_signal);
  mp_s_axi_arburst_converter_0 = new xsc::common::vector2vector_converter<4,2>("s_axi_arburst_converter_0");
  mp_s_axi_split_arburst = new xsc::xsc_split<4, 2>("s_axi_split_arburst");
  mp_s_axi_split_arburst->in_port(s_axi_arburst);
  mp_s_axi_split_arburst->out_port[0](s_axi_split_arburst_out_0);
    mp_s_axi_split_arburst->add_mask(0,2,0);
  mp_s_axi_arburst_converter_0->vector_in(s_axi_split_arburst_out_0);
  mp_s_axi_arburst_converter_0->vector_out(m_s_axi_arburst_converter_0_signal);
  mp_S00_AXI_transactor->ARBURST(m_s_axi_arburst_converter_0_signal);
  mp_s_axi_arlock_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arlock_converter_0");
  mp_s_axi_split_arlock = new xsc::xsc_split<2, 2>("s_axi_split_arlock");
  mp_s_axi_split_arlock->in_port(s_axi_arlock);
  mp_s_axi_split_arlock->out_port[0](s_axi_split_arlock_out_0);
    mp_s_axi_split_arlock->add_mask(0,1,0);
  mp_s_axi_arlock_converter_0->vector_in(s_axi_split_arlock_out_0);
  mp_s_axi_arlock_converter_0->scalar_out(m_s_axi_arlock_converter_0_signal);
  mp_S00_AXI_transactor->ARLOCK(m_s_axi_arlock_converter_0_signal);
  mp_s_axi_arcache_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_arcache_converter_0");
  mp_s_axi_split_arcache = new xsc::xsc_split<8, 2>("s_axi_split_arcache");
  mp_s_axi_split_arcache->in_port(s_axi_arcache);
  mp_s_axi_split_arcache->out_port[0](s_axi_split_arcache_out_0);
    mp_s_axi_split_arcache->add_mask(0,4,0);
  mp_s_axi_arcache_converter_0->vector_in(s_axi_split_arcache_out_0);
  mp_s_axi_arcache_converter_0->vector_out(m_s_axi_arcache_converter_0_signal);
  mp_S00_AXI_transactor->ARCACHE(m_s_axi_arcache_converter_0_signal);
  mp_s_axi_arprot_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_arprot_converter_0");
  mp_s_axi_split_arprot = new xsc::xsc_split<6, 2>("s_axi_split_arprot");
  mp_s_axi_split_arprot->in_port(s_axi_arprot);
  mp_s_axi_split_arprot->out_port[0](s_axi_split_arprot_out_0);
    mp_s_axi_split_arprot->add_mask(0,3,0);
  mp_s_axi_arprot_converter_0->vector_in(s_axi_split_arprot_out_0);
  mp_s_axi_arprot_converter_0->vector_out(m_s_axi_arprot_converter_0_signal);
  mp_S00_AXI_transactor->ARPROT(m_s_axi_arprot_converter_0_signal);
  mp_s_axi_arqos_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_arqos_converter_0");
  mp_s_axi_split_arqos = new xsc::xsc_split<8, 2>("s_axi_split_arqos");
  mp_s_axi_split_arqos->in_port(s_axi_arqos);
  mp_s_axi_split_arqos->out_port[0](s_axi_split_arqos_out_0);
    mp_s_axi_split_arqos->add_mask(0,4,0);
  mp_s_axi_arqos_converter_0->vector_in(s_axi_split_arqos_out_0);
  mp_s_axi_arqos_converter_0->vector_out(m_s_axi_arqos_converter_0_signal);
  mp_S00_AXI_transactor->ARQOS(m_s_axi_arqos_converter_0_signal);
  mp_s_axi_arvalid_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arvalid_converter_0");
  mp_s_axi_split_arvalid = new xsc::xsc_split<2, 2>("s_axi_split_arvalid");
  mp_s_axi_split_arvalid->in_port(s_axi_arvalid);
  mp_s_axi_split_arvalid->out_port[0](s_axi_split_arvalid_out_0);
    mp_s_axi_split_arvalid->add_mask(0,1,0);
  mp_s_axi_arvalid_converter_0->vector_in(s_axi_split_arvalid_out_0);
  mp_s_axi_arvalid_converter_0->scalar_out(m_s_axi_arvalid_converter_0_signal);
  mp_S00_AXI_transactor->ARVALID(m_s_axi_arvalid_converter_0_signal);
  mp_s_axi_arready_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_arready_converter_0");
  mp_s_axi_concat_arready = new xsc::xsc_concatenator<2, 2>("s_axi_concat_arready");
  mp_s_axi_concat_arready->in_port[0](s_axi_concat_arready_out_0);
  mp_s_axi_concat_arready->out_port(s_axi_arready);
    mp_s_axi_concat_arready->offset_port(0, 0);
  mp_s_axi_arready_converter_0->scalar_in(m_s_axi_arready_converter_0_signal);
  mp_s_axi_arready_converter_0->vector_out(s_axi_concat_arready_out_0);
  mp_S00_AXI_transactor->ARREADY(m_s_axi_arready_converter_0_signal);
  mp_s_axi_rid_converter_0 = new xsc::common::vector2vector_converter<1,2>("s_axi_rid_converter_0");
  mp_s_axi_concat_rid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_rid");
  mp_s_axi_concat_rid->in_port[0](s_axi_concat_rid_out_0);
  mp_s_axi_concat_rid->out_port(s_axi_rid);
    mp_s_axi_concat_rid->offset_port(0, 0);
  mp_s_axi_rid_converter_0->vector_in(m_s_axi_rid_converter_0_signal);
  mp_s_axi_rid_converter_0->vector_out(s_axi_concat_rid_out_0);
  mp_S00_AXI_transactor->RID(m_s_axi_rid_converter_0_signal);
  mp_s_axi_rdata_converter_0 = new xsc::common::vector2vector_converter<256,512>("s_axi_rdata_converter_0");
  mp_s_axi_concat_rdata = new xsc::xsc_concatenator<512, 2>("s_axi_concat_rdata");
  mp_s_axi_concat_rdata->in_port[0](s_axi_concat_rdata_out_0);
  mp_s_axi_concat_rdata->out_port(s_axi_rdata);
    mp_s_axi_concat_rdata->offset_port(0, 0);
  mp_s_axi_rdata_converter_0->vector_in(m_s_axi_rdata_converter_0_signal);
  mp_s_axi_rdata_converter_0->vector_out(s_axi_concat_rdata_out_0);
  mp_S00_AXI_transactor->RDATA(m_s_axi_rdata_converter_0_signal);
  mp_s_axi_rresp_converter_0 = new xsc::common::vector2vector_converter<2,4>("s_axi_rresp_converter_0");
  mp_s_axi_concat_rresp = new xsc::xsc_concatenator<4, 2>("s_axi_concat_rresp");
  mp_s_axi_concat_rresp->in_port[0](s_axi_concat_rresp_out_0);
  mp_s_axi_concat_rresp->out_port(s_axi_rresp);
    mp_s_axi_concat_rresp->offset_port(0, 0);
  mp_s_axi_rresp_converter_0->vector_in(m_s_axi_rresp_converter_0_signal);
  mp_s_axi_rresp_converter_0->vector_out(s_axi_concat_rresp_out_0);
  mp_S00_AXI_transactor->RRESP(m_s_axi_rresp_converter_0_signal);
  mp_s_axi_rlast_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rlast_converter_0");
  mp_s_axi_concat_rlast = new xsc::xsc_concatenator<2, 2>("s_axi_concat_rlast");
  mp_s_axi_concat_rlast->in_port[0](s_axi_concat_rlast_out_0);
  mp_s_axi_concat_rlast->out_port(s_axi_rlast);
    mp_s_axi_concat_rlast->offset_port(0, 0);
  mp_s_axi_rlast_converter_0->scalar_in(m_s_axi_rlast_converter_0_signal);
  mp_s_axi_rlast_converter_0->vector_out(s_axi_concat_rlast_out_0);
  mp_S00_AXI_transactor->RLAST(m_s_axi_rlast_converter_0_signal);
  mp_s_axi_rvalid_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rvalid_converter_0");
  mp_s_axi_concat_rvalid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_rvalid");
  mp_s_axi_concat_rvalid->in_port[0](s_axi_concat_rvalid_out_0);
  mp_s_axi_concat_rvalid->out_port(s_axi_rvalid);
    mp_s_axi_concat_rvalid->offset_port(0, 0);
  mp_s_axi_rvalid_converter_0->scalar_in(m_s_axi_rvalid_converter_0_signal);
  mp_s_axi_rvalid_converter_0->vector_out(s_axi_concat_rvalid_out_0);
  mp_S00_AXI_transactor->RVALID(m_s_axi_rvalid_converter_0_signal);
  mp_s_axi_rready_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_rready_converter_0");
  mp_s_axi_split_rready = new xsc::xsc_split<2, 2>("s_axi_split_rready");
  mp_s_axi_split_rready->in_port(s_axi_rready);
  mp_s_axi_split_rready->out_port[0](s_axi_split_rready_out_0);
    mp_s_axi_split_rready->add_mask(0,1,0);
  mp_s_axi_rready_converter_0->vector_in(s_axi_split_rready_out_0);
  mp_s_axi_rready_converter_0->scalar_out(m_s_axi_rready_converter_0_signal);
  mp_S00_AXI_transactor->RREADY(m_s_axi_rready_converter_0_signal);
  mp_S00_AXI_transactor->CLK(aclk);
  mp_S00_AXI_transactor->RST(aresetn);

  // configure M00_AXI_transactor
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "4");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "128");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<256,32,1,4,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);
  mp_M00_AXI_transactor->AWID(m_axi_awid);
  mp_M00_AXI_transactor->AWADDR(m_axi_awaddr);
  mp_M00_AXI_transactor->AWLEN(m_axi_awlen);
  mp_M00_AXI_transactor->AWSIZE(m_axi_awsize);
  mp_M00_AXI_transactor->AWBURST(m_axi_awburst);
  mp_m_axi_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_awlock_converter");
  mp_m_axi_awlock_converter->scalar_in(m_m_axi_awlock_converter_signal);
  mp_m_axi_awlock_converter->vector_out(m_axi_awlock);
  mp_M00_AXI_transactor->AWLOCK(m_m_axi_awlock_converter_signal);
  mp_M00_AXI_transactor->AWCACHE(m_axi_awcache);
  mp_M00_AXI_transactor->AWPROT(m_axi_awprot);
  mp_M00_AXI_transactor->AWREGION(m_axi_awregion);
  mp_M00_AXI_transactor->AWQOS(m_axi_awqos);
  mp_M00_AXI_transactor->AWUSER(m_axi_awuser);
  mp_m_axi_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_awvalid_converter");
  mp_m_axi_awvalid_converter->scalar_in(m_m_axi_awvalid_converter_signal);
  mp_m_axi_awvalid_converter->vector_out(m_axi_awvalid);
  mp_M00_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_signal);
  mp_m_axi_awready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_awready_converter");
  mp_m_axi_awready_converter->vector_in(m_axi_awready);
  mp_m_axi_awready_converter->scalar_out(m_m_axi_awready_converter_signal);
  mp_M00_AXI_transactor->AWREADY(m_m_axi_awready_converter_signal);
  mp_M00_AXI_transactor->WDATA(m_axi_wdata);
  mp_M00_AXI_transactor->WSTRB(m_axi_wstrb);
  mp_m_axi_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_wlast_converter");
  mp_m_axi_wlast_converter->scalar_in(m_m_axi_wlast_converter_signal);
  mp_m_axi_wlast_converter->vector_out(m_axi_wlast);
  mp_M00_AXI_transactor->WLAST(m_m_axi_wlast_converter_signal);
  mp_m_axi_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_wvalid_converter");
  mp_m_axi_wvalid_converter->scalar_in(m_m_axi_wvalid_converter_signal);
  mp_m_axi_wvalid_converter->vector_out(m_axi_wvalid);
  mp_M00_AXI_transactor->WVALID(m_m_axi_wvalid_converter_signal);
  mp_m_axi_wready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_wready_converter");
  mp_m_axi_wready_converter->vector_in(m_axi_wready);
  mp_m_axi_wready_converter->scalar_out(m_m_axi_wready_converter_signal);
  mp_M00_AXI_transactor->WREADY(m_m_axi_wready_converter_signal);
  mp_M00_AXI_transactor->BID(m_axi_bid);
  mp_M00_AXI_transactor->BRESP(m_axi_bresp);
  mp_m_axi_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_bvalid_converter");
  mp_m_axi_bvalid_converter->vector_in(m_axi_bvalid);
  mp_m_axi_bvalid_converter->scalar_out(m_m_axi_bvalid_converter_signal);
  mp_M00_AXI_transactor->BVALID(m_m_axi_bvalid_converter_signal);
  mp_m_axi_bready_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_bready_converter");
  mp_m_axi_bready_converter->scalar_in(m_m_axi_bready_converter_signal);
  mp_m_axi_bready_converter->vector_out(m_axi_bready);
  mp_M00_AXI_transactor->BREADY(m_m_axi_bready_converter_signal);
  mp_M00_AXI_transactor->ARID(m_axi_arid);
  mp_M00_AXI_transactor->ARADDR(m_axi_araddr);
  mp_M00_AXI_transactor->ARLEN(m_axi_arlen);
  mp_M00_AXI_transactor->ARSIZE(m_axi_arsize);
  mp_M00_AXI_transactor->ARBURST(m_axi_arburst);
  mp_m_axi_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_arlock_converter");
  mp_m_axi_arlock_converter->scalar_in(m_m_axi_arlock_converter_signal);
  mp_m_axi_arlock_converter->vector_out(m_axi_arlock);
  mp_M00_AXI_transactor->ARLOCK(m_m_axi_arlock_converter_signal);
  mp_M00_AXI_transactor->ARCACHE(m_axi_arcache);
  mp_M00_AXI_transactor->ARPROT(m_axi_arprot);
  mp_M00_AXI_transactor->ARREGION(m_axi_arregion);
  mp_M00_AXI_transactor->ARQOS(m_axi_arqos);
  mp_m_axi_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_arvalid_converter");
  mp_m_axi_arvalid_converter->scalar_in(m_m_axi_arvalid_converter_signal);
  mp_m_axi_arvalid_converter->vector_out(m_axi_arvalid);
  mp_M00_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_signal);
  mp_m_axi_arready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_arready_converter");
  mp_m_axi_arready_converter->vector_in(m_axi_arready);
  mp_m_axi_arready_converter->scalar_out(m_m_axi_arready_converter_signal);
  mp_M00_AXI_transactor->ARREADY(m_m_axi_arready_converter_signal);
  mp_M00_AXI_transactor->RID(m_axi_rid);
  mp_M00_AXI_transactor->RDATA(m_axi_rdata);
  mp_M00_AXI_transactor->RRESP(m_axi_rresp);
  mp_m_axi_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_rlast_converter");
  mp_m_axi_rlast_converter->vector_in(m_axi_rlast);
  mp_m_axi_rlast_converter->scalar_out(m_m_axi_rlast_converter_signal);
  mp_M00_AXI_transactor->RLAST(m_m_axi_rlast_converter_signal);
  mp_m_axi_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_rvalid_converter");
  mp_m_axi_rvalid_converter->vector_in(m_axi_rvalid);
  mp_m_axi_rvalid_converter->scalar_out(m_m_axi_rvalid_converter_signal);
  mp_M00_AXI_transactor->RVALID(m_m_axi_rvalid_converter_signal);
  mp_m_axi_rready_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_rready_converter");
  mp_m_axi_rready_converter->scalar_in(m_m_axi_rready_converter_signal);
  mp_m_axi_rready_converter->vector_out(m_axi_rready);
  mp_M00_AXI_transactor->RREADY(m_m_axi_rready_converter_signal);
  mp_M00_AXI_transactor->CLK(aclk);
  mp_M00_AXI_transactor->RST(aresetn);

  // configure S01_AXI_transactor
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "4");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<256,32,1,4,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);
  mp_s_axi_awid_converter_1 = new xsc::common::vector2vector_converter<2,1>("s_axi_awid_converter_1");
  
  mp_s_axi_split_awid->out_port[1](s_axi_split_awid_out_1);
    mp_s_axi_split_awid->add_mask(1,2,1);
  mp_s_axi_awid_converter_1->vector_in(s_axi_split_awid_out_1);
  mp_s_axi_awid_converter_1->vector_out(m_s_axi_awid_converter_1_signal);
  mp_S01_AXI_transactor->AWID(m_s_axi_awid_converter_1_signal);
  mp_s_axi_awaddr_converter_1 = new xsc::common::vector2vector_converter<64,32>("s_axi_awaddr_converter_1");
  
  mp_s_axi_split_awaddr->out_port[1](s_axi_split_awaddr_out_1);
    mp_s_axi_split_awaddr->add_mask(1,64,32);
  mp_s_axi_awaddr_converter_1->vector_in(s_axi_split_awaddr_out_1);
  mp_s_axi_awaddr_converter_1->vector_out(m_s_axi_awaddr_converter_1_signal);
  mp_S01_AXI_transactor->AWADDR(m_s_axi_awaddr_converter_1_signal);
  mp_s_axi_awlen_converter_1 = new xsc::common::vector2vector_converter<16,8>("s_axi_awlen_converter_1");
  
  mp_s_axi_split_awlen->out_port[1](s_axi_split_awlen_out_1);
    mp_s_axi_split_awlen->add_mask(1,16,8);
  mp_s_axi_awlen_converter_1->vector_in(s_axi_split_awlen_out_1);
  mp_s_axi_awlen_converter_1->vector_out(m_s_axi_awlen_converter_1_signal);
  mp_S01_AXI_transactor->AWLEN(m_s_axi_awlen_converter_1_signal);
  mp_s_axi_awsize_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_awsize_converter_1");
  
  mp_s_axi_split_awsize->out_port[1](s_axi_split_awsize_out_1);
    mp_s_axi_split_awsize->add_mask(1,6,3);
  mp_s_axi_awsize_converter_1->vector_in(s_axi_split_awsize_out_1);
  mp_s_axi_awsize_converter_1->vector_out(m_s_axi_awsize_converter_1_signal);
  mp_S01_AXI_transactor->AWSIZE(m_s_axi_awsize_converter_1_signal);
  mp_s_axi_awburst_converter_1 = new xsc::common::vector2vector_converter<4,2>("s_axi_awburst_converter_1");
  
  mp_s_axi_split_awburst->out_port[1](s_axi_split_awburst_out_1);
    mp_s_axi_split_awburst->add_mask(1,4,2);
  mp_s_axi_awburst_converter_1->vector_in(s_axi_split_awburst_out_1);
  mp_s_axi_awburst_converter_1->vector_out(m_s_axi_awburst_converter_1_signal);
  mp_S01_AXI_transactor->AWBURST(m_s_axi_awburst_converter_1_signal);
  mp_s_axi_awlock_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awlock_converter_1");
  
  mp_s_axi_split_awlock->out_port[1](s_axi_split_awlock_out_1);
    mp_s_axi_split_awlock->add_mask(1,2,1);
  mp_s_axi_awlock_converter_1->vector_in(s_axi_split_awlock_out_1);
  mp_s_axi_awlock_converter_1->scalar_out(m_s_axi_awlock_converter_1_signal);
  mp_S01_AXI_transactor->AWLOCK(m_s_axi_awlock_converter_1_signal);
  mp_s_axi_awcache_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_awcache_converter_1");
  
  mp_s_axi_split_awcache->out_port[1](s_axi_split_awcache_out_1);
    mp_s_axi_split_awcache->add_mask(1,8,4);
  mp_s_axi_awcache_converter_1->vector_in(s_axi_split_awcache_out_1);
  mp_s_axi_awcache_converter_1->vector_out(m_s_axi_awcache_converter_1_signal);
  mp_S01_AXI_transactor->AWCACHE(m_s_axi_awcache_converter_1_signal);
  mp_s_axi_awprot_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_awprot_converter_1");
  
  mp_s_axi_split_awprot->out_port[1](s_axi_split_awprot_out_1);
    mp_s_axi_split_awprot->add_mask(1,6,3);
  mp_s_axi_awprot_converter_1->vector_in(s_axi_split_awprot_out_1);
  mp_s_axi_awprot_converter_1->vector_out(m_s_axi_awprot_converter_1_signal);
  mp_S01_AXI_transactor->AWPROT(m_s_axi_awprot_converter_1_signal);
  mp_s_axi_awqos_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_awqos_converter_1");
  
  mp_s_axi_split_awqos->out_port[1](s_axi_split_awqos_out_1);
    mp_s_axi_split_awqos->add_mask(1,8,4);
  mp_s_axi_awqos_converter_1->vector_in(s_axi_split_awqos_out_1);
  mp_s_axi_awqos_converter_1->vector_out(m_s_axi_awqos_converter_1_signal);
  mp_S01_AXI_transactor->AWQOS(m_s_axi_awqos_converter_1_signal);
  mp_s_axi_awuser_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_awuser_converter_1");
  
  mp_s_axi_split_awuser->out_port[1](s_axi_split_awuser_out_1);
    mp_s_axi_split_awuser->add_mask(1,8,4);
  mp_s_axi_awuser_converter_1->vector_in(s_axi_split_awuser_out_1);
  mp_s_axi_awuser_converter_1->vector_out(m_s_axi_awuser_converter_1_signal);
  mp_S01_AXI_transactor->AWUSER(m_s_axi_awuser_converter_1_signal);
  mp_s_axi_awvalid_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awvalid_converter_1");
  
  mp_s_axi_split_awvalid->out_port[1](s_axi_split_awvalid_out_1);
    mp_s_axi_split_awvalid->add_mask(1,2,1);
  mp_s_axi_awvalid_converter_1->vector_in(s_axi_split_awvalid_out_1);
  mp_s_axi_awvalid_converter_1->scalar_out(m_s_axi_awvalid_converter_1_signal);
  mp_S01_AXI_transactor->AWVALID(m_s_axi_awvalid_converter_1_signal);
  mp_s_axi_awready_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_awready_converter_1");
  mp_s_axi_concat_awready->in_port[1](s_axi_concat_awready_out_1);
  mp_s_axi_concat_awready->offset_port(1, 1);
  mp_s_axi_awready_converter_1->scalar_in(m_s_axi_awready_converter_1_signal);
  mp_s_axi_awready_converter_1->vector_out(s_axi_concat_awready_out_1);
  mp_S01_AXI_transactor->AWREADY(m_s_axi_awready_converter_1_signal);
  mp_s_axi_wdata_converter_1 = new xsc::common::vector2vector_converter<512,256>("s_axi_wdata_converter_1");
  
  mp_s_axi_split_wdata->out_port[1](s_axi_split_wdata_out_1);
    mp_s_axi_split_wdata->add_mask(1,512,256);
  mp_s_axi_wdata_converter_1->vector_in(s_axi_split_wdata_out_1);
  mp_s_axi_wdata_converter_1->vector_out(m_s_axi_wdata_converter_1_signal);
  mp_S01_AXI_transactor->WDATA(m_s_axi_wdata_converter_1_signal);
  mp_s_axi_wstrb_converter_1 = new xsc::common::vector2vector_converter<64,32>("s_axi_wstrb_converter_1");
  
  mp_s_axi_split_wstrb->out_port[1](s_axi_split_wstrb_out_1);
    mp_s_axi_split_wstrb->add_mask(1,64,32);
  mp_s_axi_wstrb_converter_1->vector_in(s_axi_split_wstrb_out_1);
  mp_s_axi_wstrb_converter_1->vector_out(m_s_axi_wstrb_converter_1_signal);
  mp_S01_AXI_transactor->WSTRB(m_s_axi_wstrb_converter_1_signal);
  mp_s_axi_wlast_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wlast_converter_1");
  
  mp_s_axi_split_wlast->out_port[1](s_axi_split_wlast_out_1);
    mp_s_axi_split_wlast->add_mask(1,2,1);
  mp_s_axi_wlast_converter_1->vector_in(s_axi_split_wlast_out_1);
  mp_s_axi_wlast_converter_1->scalar_out(m_s_axi_wlast_converter_1_signal);
  mp_S01_AXI_transactor->WLAST(m_s_axi_wlast_converter_1_signal);
  mp_s_axi_wvalid_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wvalid_converter_1");
  
  mp_s_axi_split_wvalid->out_port[1](s_axi_split_wvalid_out_1);
    mp_s_axi_split_wvalid->add_mask(1,2,1);
  mp_s_axi_wvalid_converter_1->vector_in(s_axi_split_wvalid_out_1);
  mp_s_axi_wvalid_converter_1->scalar_out(m_s_axi_wvalid_converter_1_signal);
  mp_S01_AXI_transactor->WVALID(m_s_axi_wvalid_converter_1_signal);
  mp_s_axi_wready_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_wready_converter_1");
  mp_s_axi_concat_wready->in_port[1](s_axi_concat_wready_out_1);
  mp_s_axi_concat_wready->offset_port(1, 1);
  mp_s_axi_wready_converter_1->scalar_in(m_s_axi_wready_converter_1_signal);
  mp_s_axi_wready_converter_1->vector_out(s_axi_concat_wready_out_1);
  mp_S01_AXI_transactor->WREADY(m_s_axi_wready_converter_1_signal);
  mp_s_axi_bid_converter_1 = new xsc::common::vector2vector_converter<1,2>("s_axi_bid_converter_1");
  mp_s_axi_concat_bid->in_port[1](s_axi_concat_bid_out_1);
  mp_s_axi_concat_bid->offset_port(1, 1);
  mp_s_axi_bid_converter_1->vector_in(m_s_axi_bid_converter_1_signal);
  mp_s_axi_bid_converter_1->vector_out(s_axi_concat_bid_out_1);
  mp_S01_AXI_transactor->BID(m_s_axi_bid_converter_1_signal);
  mp_s_axi_bresp_converter_1 = new xsc::common::vector2vector_converter<2,4>("s_axi_bresp_converter_1");
  mp_s_axi_concat_bresp->in_port[1](s_axi_concat_bresp_out_1);
  mp_s_axi_concat_bresp->offset_port(1, 2);
  mp_s_axi_bresp_converter_1->vector_in(m_s_axi_bresp_converter_1_signal);
  mp_s_axi_bresp_converter_1->vector_out(s_axi_concat_bresp_out_1);
  mp_S01_AXI_transactor->BRESP(m_s_axi_bresp_converter_1_signal);
  mp_s_axi_bvalid_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_bvalid_converter_1");
  mp_s_axi_concat_bvalid->in_port[1](s_axi_concat_bvalid_out_1);
  mp_s_axi_concat_bvalid->offset_port(1, 1);
  mp_s_axi_bvalid_converter_1->scalar_in(m_s_axi_bvalid_converter_1_signal);
  mp_s_axi_bvalid_converter_1->vector_out(s_axi_concat_bvalid_out_1);
  mp_S01_AXI_transactor->BVALID(m_s_axi_bvalid_converter_1_signal);
  mp_s_axi_bready_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_bready_converter_1");
  
  mp_s_axi_split_bready->out_port[1](s_axi_split_bready_out_1);
    mp_s_axi_split_bready->add_mask(1,2,1);
  mp_s_axi_bready_converter_1->vector_in(s_axi_split_bready_out_1);
  mp_s_axi_bready_converter_1->scalar_out(m_s_axi_bready_converter_1_signal);
  mp_S01_AXI_transactor->BREADY(m_s_axi_bready_converter_1_signal);
  mp_s_axi_arid_converter_1 = new xsc::common::vector2vector_converter<2,1>("s_axi_arid_converter_1");
  
  mp_s_axi_split_arid->out_port[1](s_axi_split_arid_out_1);
    mp_s_axi_split_arid->add_mask(1,2,1);
  mp_s_axi_arid_converter_1->vector_in(s_axi_split_arid_out_1);
  mp_s_axi_arid_converter_1->vector_out(m_s_axi_arid_converter_1_signal);
  mp_S01_AXI_transactor->ARID(m_s_axi_arid_converter_1_signal);
  mp_s_axi_araddr_converter_1 = new xsc::common::vector2vector_converter<64,32>("s_axi_araddr_converter_1");
  
  mp_s_axi_split_araddr->out_port[1](s_axi_split_araddr_out_1);
    mp_s_axi_split_araddr->add_mask(1,64,32);
  mp_s_axi_araddr_converter_1->vector_in(s_axi_split_araddr_out_1);
  mp_s_axi_araddr_converter_1->vector_out(m_s_axi_araddr_converter_1_signal);
  mp_S01_AXI_transactor->ARADDR(m_s_axi_araddr_converter_1_signal);
  mp_s_axi_arlen_converter_1 = new xsc::common::vector2vector_converter<16,8>("s_axi_arlen_converter_1");
  
  mp_s_axi_split_arlen->out_port[1](s_axi_split_arlen_out_1);
    mp_s_axi_split_arlen->add_mask(1,16,8);
  mp_s_axi_arlen_converter_1->vector_in(s_axi_split_arlen_out_1);
  mp_s_axi_arlen_converter_1->vector_out(m_s_axi_arlen_converter_1_signal);
  mp_S01_AXI_transactor->ARLEN(m_s_axi_arlen_converter_1_signal);
  mp_s_axi_arsize_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_arsize_converter_1");
  
  mp_s_axi_split_arsize->out_port[1](s_axi_split_arsize_out_1);
    mp_s_axi_split_arsize->add_mask(1,6,3);
  mp_s_axi_arsize_converter_1->vector_in(s_axi_split_arsize_out_1);
  mp_s_axi_arsize_converter_1->vector_out(m_s_axi_arsize_converter_1_signal);
  mp_S01_AXI_transactor->ARSIZE(m_s_axi_arsize_converter_1_signal);
  mp_s_axi_arburst_converter_1 = new xsc::common::vector2vector_converter<4,2>("s_axi_arburst_converter_1");
  
  mp_s_axi_split_arburst->out_port[1](s_axi_split_arburst_out_1);
    mp_s_axi_split_arburst->add_mask(1,4,2);
  mp_s_axi_arburst_converter_1->vector_in(s_axi_split_arburst_out_1);
  mp_s_axi_arburst_converter_1->vector_out(m_s_axi_arburst_converter_1_signal);
  mp_S01_AXI_transactor->ARBURST(m_s_axi_arburst_converter_1_signal);
  mp_s_axi_arlock_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arlock_converter_1");
  
  mp_s_axi_split_arlock->out_port[1](s_axi_split_arlock_out_1);
    mp_s_axi_split_arlock->add_mask(1,2,1);
  mp_s_axi_arlock_converter_1->vector_in(s_axi_split_arlock_out_1);
  mp_s_axi_arlock_converter_1->scalar_out(m_s_axi_arlock_converter_1_signal);
  mp_S01_AXI_transactor->ARLOCK(m_s_axi_arlock_converter_1_signal);
  mp_s_axi_arcache_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_arcache_converter_1");
  
  mp_s_axi_split_arcache->out_port[1](s_axi_split_arcache_out_1);
    mp_s_axi_split_arcache->add_mask(1,8,4);
  mp_s_axi_arcache_converter_1->vector_in(s_axi_split_arcache_out_1);
  mp_s_axi_arcache_converter_1->vector_out(m_s_axi_arcache_converter_1_signal);
  mp_S01_AXI_transactor->ARCACHE(m_s_axi_arcache_converter_1_signal);
  mp_s_axi_arprot_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_arprot_converter_1");
  
  mp_s_axi_split_arprot->out_port[1](s_axi_split_arprot_out_1);
    mp_s_axi_split_arprot->add_mask(1,6,3);
  mp_s_axi_arprot_converter_1->vector_in(s_axi_split_arprot_out_1);
  mp_s_axi_arprot_converter_1->vector_out(m_s_axi_arprot_converter_1_signal);
  mp_S01_AXI_transactor->ARPROT(m_s_axi_arprot_converter_1_signal);
  mp_s_axi_arqos_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_arqos_converter_1");
  
  mp_s_axi_split_arqos->out_port[1](s_axi_split_arqos_out_1);
    mp_s_axi_split_arqos->add_mask(1,8,4);
  mp_s_axi_arqos_converter_1->vector_in(s_axi_split_arqos_out_1);
  mp_s_axi_arqos_converter_1->vector_out(m_s_axi_arqos_converter_1_signal);
  mp_S01_AXI_transactor->ARQOS(m_s_axi_arqos_converter_1_signal);
  mp_s_axi_arvalid_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arvalid_converter_1");
  
  mp_s_axi_split_arvalid->out_port[1](s_axi_split_arvalid_out_1);
    mp_s_axi_split_arvalid->add_mask(1,2,1);
  mp_s_axi_arvalid_converter_1->vector_in(s_axi_split_arvalid_out_1);
  mp_s_axi_arvalid_converter_1->scalar_out(m_s_axi_arvalid_converter_1_signal);
  mp_S01_AXI_transactor->ARVALID(m_s_axi_arvalid_converter_1_signal);
  mp_s_axi_arready_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_arready_converter_1");
  mp_s_axi_concat_arready->in_port[1](s_axi_concat_arready_out_1);
  mp_s_axi_concat_arready->offset_port(1, 1);
  mp_s_axi_arready_converter_1->scalar_in(m_s_axi_arready_converter_1_signal);
  mp_s_axi_arready_converter_1->vector_out(s_axi_concat_arready_out_1);
  mp_S01_AXI_transactor->ARREADY(m_s_axi_arready_converter_1_signal);
  mp_s_axi_rid_converter_1 = new xsc::common::vector2vector_converter<1,2>("s_axi_rid_converter_1");
  mp_s_axi_concat_rid->in_port[1](s_axi_concat_rid_out_1);
  mp_s_axi_concat_rid->offset_port(1, 1);
  mp_s_axi_rid_converter_1->vector_in(m_s_axi_rid_converter_1_signal);
  mp_s_axi_rid_converter_1->vector_out(s_axi_concat_rid_out_1);
  mp_S01_AXI_transactor->RID(m_s_axi_rid_converter_1_signal);
  mp_s_axi_rdata_converter_1 = new xsc::common::vector2vector_converter<256,512>("s_axi_rdata_converter_1");
  mp_s_axi_concat_rdata->in_port[1](s_axi_concat_rdata_out_1);
  mp_s_axi_concat_rdata->offset_port(1, 256);
  mp_s_axi_rdata_converter_1->vector_in(m_s_axi_rdata_converter_1_signal);
  mp_s_axi_rdata_converter_1->vector_out(s_axi_concat_rdata_out_1);
  mp_S01_AXI_transactor->RDATA(m_s_axi_rdata_converter_1_signal);
  mp_s_axi_rresp_converter_1 = new xsc::common::vector2vector_converter<2,4>("s_axi_rresp_converter_1");
  mp_s_axi_concat_rresp->in_port[1](s_axi_concat_rresp_out_1);
  mp_s_axi_concat_rresp->offset_port(1, 2);
  mp_s_axi_rresp_converter_1->vector_in(m_s_axi_rresp_converter_1_signal);
  mp_s_axi_rresp_converter_1->vector_out(s_axi_concat_rresp_out_1);
  mp_S01_AXI_transactor->RRESP(m_s_axi_rresp_converter_1_signal);
  mp_s_axi_rlast_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rlast_converter_1");
  mp_s_axi_concat_rlast->in_port[1](s_axi_concat_rlast_out_1);
  mp_s_axi_concat_rlast->offset_port(1, 1);
  mp_s_axi_rlast_converter_1->scalar_in(m_s_axi_rlast_converter_1_signal);
  mp_s_axi_rlast_converter_1->vector_out(s_axi_concat_rlast_out_1);
  mp_S01_AXI_transactor->RLAST(m_s_axi_rlast_converter_1_signal);
  mp_s_axi_rvalid_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rvalid_converter_1");
  mp_s_axi_concat_rvalid->in_port[1](s_axi_concat_rvalid_out_1);
  mp_s_axi_concat_rvalid->offset_port(1, 1);
  mp_s_axi_rvalid_converter_1->scalar_in(m_s_axi_rvalid_converter_1_signal);
  mp_s_axi_rvalid_converter_1->vector_out(s_axi_concat_rvalid_out_1);
  mp_S01_AXI_transactor->RVALID(m_s_axi_rvalid_converter_1_signal);
  mp_s_axi_rready_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_rready_converter_1");
  
  mp_s_axi_split_rready->out_port[1](s_axi_split_rready_out_1);
    mp_s_axi_split_rready->add_mask(1,2,1);
  mp_s_axi_rready_converter_1->vector_in(s_axi_split_rready_out_1);
  mp_s_axi_rready_converter_1->scalar_out(m_s_axi_rready_converter_1_signal);
  mp_S01_AXI_transactor->RREADY(m_s_axi_rready_converter_1_signal);
  mp_S01_AXI_transactor->CLK(aclk);
  mp_S01_AXI_transactor->RST(aresetn);


  // initialize transactors stubs
  S00_AXI_transactor_target_wr_socket_stub = nullptr;
  S00_AXI_transactor_target_rd_socket_stub = nullptr;
  M00_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M00_AXI_transactor_initiator_rd_socket_stub = nullptr;
  S01_AXI_transactor_target_wr_socket_stub = nullptr;
  S01_AXI_transactor_target_rd_socket_stub = nullptr;

}

void design_1_axi_crossbar_0_1::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_crossbar_0_1", "S00_AXI_TLM_MODE") != 1)
  {
    mp_impl->target_0_rd_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->target_0_wr_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
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
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_crossbar_0_1", "M00_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_0_rd_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->initiator_0_wr_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
    M00_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M00_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M00_AXI_transactor->wr_socket));
    M00_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M00_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_M00_AXI_transactor->disable_transactor();
  }

  // configure 'S01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_crossbar_0_1", "S01_AXI_TLM_MODE") != 1)
  {
    mp_impl->target_1_rd_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->target_1_wr_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
    S01_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S01_AXI_transactor_target_wr_socket_stub->bind(*(mp_S01_AXI_transactor->wr_socket));
    S01_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S01_AXI_transactor_target_rd_socket_stub->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_S01_AXI_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
design_1_axi_crossbar_0_1::design_1_axi_crossbar_0_1(const sc_core::sc_module_name& nm) : design_1_axi_crossbar_0_1_sc(nm),  aclk("aclk"), aresetn("aresetn"), s_axi_awid("s_axi_awid"), s_axi_awaddr("s_axi_awaddr"), s_axi_awlen("s_axi_awlen"), s_axi_awsize("s_axi_awsize"), s_axi_awburst("s_axi_awburst"), s_axi_awlock("s_axi_awlock"), s_axi_awcache("s_axi_awcache"), s_axi_awprot("s_axi_awprot"), s_axi_awqos("s_axi_awqos"), s_axi_awuser("s_axi_awuser"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wlast("s_axi_wlast"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bid("s_axi_bid"), s_axi_bresp("s_axi_bresp"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_arid("s_axi_arid"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arsize("s_axi_arsize"), s_axi_arburst("s_axi_arburst"), s_axi_arlock("s_axi_arlock"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arqos("s_axi_arqos"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rid("s_axi_rid"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), m_axi_awid("m_axi_awid"), m_axi_awaddr("m_axi_awaddr"), m_axi_awlen("m_axi_awlen"), m_axi_awsize("m_axi_awsize"), m_axi_awburst("m_axi_awburst"), m_axi_awlock("m_axi_awlock"), m_axi_awcache("m_axi_awcache"), m_axi_awprot("m_axi_awprot"), m_axi_awregion("m_axi_awregion"), m_axi_awqos("m_axi_awqos"), m_axi_awuser("m_axi_awuser"), m_axi_awvalid("m_axi_awvalid"), m_axi_awready("m_axi_awready"), m_axi_wdata("m_axi_wdata"), m_axi_wstrb("m_axi_wstrb"), m_axi_wlast("m_axi_wlast"), m_axi_wvalid("m_axi_wvalid"), m_axi_wready("m_axi_wready"), m_axi_bid("m_axi_bid"), m_axi_bresp("m_axi_bresp"), m_axi_bvalid("m_axi_bvalid"), m_axi_bready("m_axi_bready"), m_axi_arid("m_axi_arid"), m_axi_araddr("m_axi_araddr"), m_axi_arlen("m_axi_arlen"), m_axi_arsize("m_axi_arsize"), m_axi_arburst("m_axi_arburst"), m_axi_arlock("m_axi_arlock"), m_axi_arcache("m_axi_arcache"), m_axi_arprot("m_axi_arprot"), m_axi_arregion("m_axi_arregion"), m_axi_arqos("m_axi_arqos"), m_axi_arvalid("m_axi_arvalid"), m_axi_arready("m_axi_arready"), m_axi_rid("m_axi_rid"), m_axi_rdata("m_axi_rdata"), m_axi_rresp("m_axi_rresp"), m_axi_rlast("m_axi_rlast"), m_axi_rvalid("m_axi_rvalid"), m_axi_rready("m_axi_rready")
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_s_axi_awid_converter_0 = NULL;
  mp_s_axi_awaddr_converter_0 = NULL;
  mp_s_axi_awlen_converter_0 = NULL;
  mp_s_axi_awsize_converter_0 = NULL;
  mp_s_axi_awburst_converter_0 = NULL;
  mp_s_axi_awlock_converter_0 = NULL;
  mp_s_axi_awcache_converter_0 = NULL;
  mp_s_axi_awprot_converter_0 = NULL;
  mp_s_axi_awqos_converter_0 = NULL;
  mp_s_axi_awuser_converter_0 = NULL;
  mp_s_axi_awvalid_converter_0 = NULL;
  mp_s_axi_awready_converter_0 = NULL;
  mp_s_axi_wdata_converter_0 = NULL;
  mp_s_axi_wstrb_converter_0 = NULL;
  mp_s_axi_wlast_converter_0 = NULL;
  mp_s_axi_wvalid_converter_0 = NULL;
  mp_s_axi_wready_converter_0 = NULL;
  mp_s_axi_bid_converter_0 = NULL;
  mp_s_axi_bresp_converter_0 = NULL;
  mp_s_axi_bvalid_converter_0 = NULL;
  mp_s_axi_bready_converter_0 = NULL;
  mp_s_axi_arid_converter_0 = NULL;
  mp_s_axi_araddr_converter_0 = NULL;
  mp_s_axi_arlen_converter_0 = NULL;
  mp_s_axi_arsize_converter_0 = NULL;
  mp_s_axi_arburst_converter_0 = NULL;
  mp_s_axi_arlock_converter_0 = NULL;
  mp_s_axi_arcache_converter_0 = NULL;
  mp_s_axi_arprot_converter_0 = NULL;
  mp_s_axi_arqos_converter_0 = NULL;
  mp_s_axi_arvalid_converter_0 = NULL;
  mp_s_axi_arready_converter_0 = NULL;
  mp_s_axi_rid_converter_0 = NULL;
  mp_s_axi_rdata_converter_0 = NULL;
  mp_s_axi_rresp_converter_0 = NULL;
  mp_s_axi_rlast_converter_0 = NULL;
  mp_s_axi_rvalid_converter_0 = NULL;
  mp_s_axi_rready_converter_0 = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_m_axi_awlock_converter = NULL;
  mp_m_axi_awvalid_converter = NULL;
  mp_m_axi_awready_converter = NULL;
  mp_m_axi_wlast_converter = NULL;
  mp_m_axi_wvalid_converter = NULL;
  mp_m_axi_wready_converter = NULL;
  mp_m_axi_bvalid_converter = NULL;
  mp_m_axi_bready_converter = NULL;
  mp_m_axi_arlock_converter = NULL;
  mp_m_axi_arvalid_converter = NULL;
  mp_m_axi_arready_converter = NULL;
  mp_m_axi_rlast_converter = NULL;
  mp_m_axi_rvalid_converter = NULL;
  mp_m_axi_rready_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_s_axi_awid_converter_1 = NULL;
  mp_s_axi_awaddr_converter_1 = NULL;
  mp_s_axi_awlen_converter_1 = NULL;
  mp_s_axi_awsize_converter_1 = NULL;
  mp_s_axi_awburst_converter_1 = NULL;
  mp_s_axi_awlock_converter_1 = NULL;
  mp_s_axi_awcache_converter_1 = NULL;
  mp_s_axi_awprot_converter_1 = NULL;
  mp_s_axi_awqos_converter_1 = NULL;
  mp_s_axi_awuser_converter_1 = NULL;
  mp_s_axi_awvalid_converter_1 = NULL;
  mp_s_axi_awready_converter_1 = NULL;
  mp_s_axi_wdata_converter_1 = NULL;
  mp_s_axi_wstrb_converter_1 = NULL;
  mp_s_axi_wlast_converter_1 = NULL;
  mp_s_axi_wvalid_converter_1 = NULL;
  mp_s_axi_wready_converter_1 = NULL;
  mp_s_axi_bid_converter_1 = NULL;
  mp_s_axi_bresp_converter_1 = NULL;
  mp_s_axi_bvalid_converter_1 = NULL;
  mp_s_axi_bready_converter_1 = NULL;
  mp_s_axi_arid_converter_1 = NULL;
  mp_s_axi_araddr_converter_1 = NULL;
  mp_s_axi_arlen_converter_1 = NULL;
  mp_s_axi_arsize_converter_1 = NULL;
  mp_s_axi_arburst_converter_1 = NULL;
  mp_s_axi_arlock_converter_1 = NULL;
  mp_s_axi_arcache_converter_1 = NULL;
  mp_s_axi_arprot_converter_1 = NULL;
  mp_s_axi_arqos_converter_1 = NULL;
  mp_s_axi_arvalid_converter_1 = NULL;
  mp_s_axi_arready_converter_1 = NULL;
  mp_s_axi_rid_converter_1 = NULL;
  mp_s_axi_rdata_converter_1 = NULL;
  mp_s_axi_rresp_converter_1 = NULL;
  mp_s_axi_rlast_converter_1 = NULL;
  mp_s_axi_rvalid_converter_1 = NULL;
  mp_s_axi_rready_converter_1 = NULL;

  // initialize junctures
  mp_s_axi_concat_arready = NULL;
  mp_s_axi_concat_awready = NULL;
  mp_s_axi_concat_bid = NULL;
  mp_s_axi_concat_bresp = NULL;
  mp_s_axi_concat_bvalid = NULL;
  mp_s_axi_concat_rdata = NULL;
  mp_s_axi_concat_rid = NULL;
  mp_s_axi_concat_rlast = NULL;
  mp_s_axi_concat_rresp = NULL;
  mp_s_axi_concat_rvalid = NULL;
  mp_s_axi_concat_wready = NULL;
  mp_s_axi_split_araddr = NULL;
  mp_s_axi_split_arburst = NULL;
  mp_s_axi_split_arcache = NULL;
  mp_s_axi_split_arid = NULL;
  mp_s_axi_split_arlen = NULL;
  mp_s_axi_split_arlock = NULL;
  mp_s_axi_split_arprot = NULL;
  mp_s_axi_split_arqos = NULL;
  mp_s_axi_split_arsize = NULL;
  mp_s_axi_split_arvalid = NULL;
  mp_s_axi_split_awaddr = NULL;
  mp_s_axi_split_awburst = NULL;
  mp_s_axi_split_awcache = NULL;
  mp_s_axi_split_awid = NULL;
  mp_s_axi_split_awlen = NULL;
  mp_s_axi_split_awlock = NULL;
  mp_s_axi_split_awprot = NULL;
  mp_s_axi_split_awqos = NULL;
  mp_s_axi_split_awsize = NULL;
  mp_s_axi_split_awuser = NULL;
  mp_s_axi_split_awvalid = NULL;
  mp_s_axi_split_bready = NULL;
  mp_s_axi_split_rready = NULL;
  mp_s_axi_split_wdata = NULL;
  mp_s_axi_split_wlast = NULL;
  mp_s_axi_split_wstrb = NULL;
  mp_s_axi_split_wvalid = NULL;
  // Instantiate Socket Stubs

  // configure S00_AXI_transactor
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "4");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<256,32,1,4,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);
  mp_s_axi_awid_converter_0 = new xsc::common::vector2vector_converter<2,1>("s_axi_awid_converter_0");
  mp_s_axi_split_awid = new xsc::xsc_split<2, 2>("s_axi_split_awid");
  mp_s_axi_split_awid->in_port(s_axi_awid);
  mp_s_axi_split_awid->out_port[0](s_axi_split_awid_out_0);
    mp_s_axi_split_awid->add_mask(0,1,0);
  mp_s_axi_awid_converter_0->vector_in(s_axi_split_awid_out_0);
  mp_s_axi_awid_converter_0->vector_out(m_s_axi_awid_converter_0_signal);
  mp_S00_AXI_transactor->AWID(m_s_axi_awid_converter_0_signal);
  mp_s_axi_awaddr_converter_0 = new xsc::common::vector2vector_converter<64,32>("s_axi_awaddr_converter_0");
  mp_s_axi_split_awaddr = new xsc::xsc_split<64, 2>("s_axi_split_awaddr");
  mp_s_axi_split_awaddr->in_port(s_axi_awaddr);
  mp_s_axi_split_awaddr->out_port[0](s_axi_split_awaddr_out_0);
    mp_s_axi_split_awaddr->add_mask(0,32,0);
  mp_s_axi_awaddr_converter_0->vector_in(s_axi_split_awaddr_out_0);
  mp_s_axi_awaddr_converter_0->vector_out(m_s_axi_awaddr_converter_0_signal);
  mp_S00_AXI_transactor->AWADDR(m_s_axi_awaddr_converter_0_signal);
  mp_s_axi_awlen_converter_0 = new xsc::common::vector2vector_converter<16,8>("s_axi_awlen_converter_0");
  mp_s_axi_split_awlen = new xsc::xsc_split<16, 2>("s_axi_split_awlen");
  mp_s_axi_split_awlen->in_port(s_axi_awlen);
  mp_s_axi_split_awlen->out_port[0](s_axi_split_awlen_out_0);
    mp_s_axi_split_awlen->add_mask(0,8,0);
  mp_s_axi_awlen_converter_0->vector_in(s_axi_split_awlen_out_0);
  mp_s_axi_awlen_converter_0->vector_out(m_s_axi_awlen_converter_0_signal);
  mp_S00_AXI_transactor->AWLEN(m_s_axi_awlen_converter_0_signal);
  mp_s_axi_awsize_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_awsize_converter_0");
  mp_s_axi_split_awsize = new xsc::xsc_split<6, 2>("s_axi_split_awsize");
  mp_s_axi_split_awsize->in_port(s_axi_awsize);
  mp_s_axi_split_awsize->out_port[0](s_axi_split_awsize_out_0);
    mp_s_axi_split_awsize->add_mask(0,3,0);
  mp_s_axi_awsize_converter_0->vector_in(s_axi_split_awsize_out_0);
  mp_s_axi_awsize_converter_0->vector_out(m_s_axi_awsize_converter_0_signal);
  mp_S00_AXI_transactor->AWSIZE(m_s_axi_awsize_converter_0_signal);
  mp_s_axi_awburst_converter_0 = new xsc::common::vector2vector_converter<4,2>("s_axi_awburst_converter_0");
  mp_s_axi_split_awburst = new xsc::xsc_split<4, 2>("s_axi_split_awburst");
  mp_s_axi_split_awburst->in_port(s_axi_awburst);
  mp_s_axi_split_awburst->out_port[0](s_axi_split_awburst_out_0);
    mp_s_axi_split_awburst->add_mask(0,2,0);
  mp_s_axi_awburst_converter_0->vector_in(s_axi_split_awburst_out_0);
  mp_s_axi_awburst_converter_0->vector_out(m_s_axi_awburst_converter_0_signal);
  mp_S00_AXI_transactor->AWBURST(m_s_axi_awburst_converter_0_signal);
  mp_s_axi_awlock_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awlock_converter_0");
  mp_s_axi_split_awlock = new xsc::xsc_split<2, 2>("s_axi_split_awlock");
  mp_s_axi_split_awlock->in_port(s_axi_awlock);
  mp_s_axi_split_awlock->out_port[0](s_axi_split_awlock_out_0);
    mp_s_axi_split_awlock->add_mask(0,1,0);
  mp_s_axi_awlock_converter_0->vector_in(s_axi_split_awlock_out_0);
  mp_s_axi_awlock_converter_0->scalar_out(m_s_axi_awlock_converter_0_signal);
  mp_S00_AXI_transactor->AWLOCK(m_s_axi_awlock_converter_0_signal);
  mp_s_axi_awcache_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_awcache_converter_0");
  mp_s_axi_split_awcache = new xsc::xsc_split<8, 2>("s_axi_split_awcache");
  mp_s_axi_split_awcache->in_port(s_axi_awcache);
  mp_s_axi_split_awcache->out_port[0](s_axi_split_awcache_out_0);
    mp_s_axi_split_awcache->add_mask(0,4,0);
  mp_s_axi_awcache_converter_0->vector_in(s_axi_split_awcache_out_0);
  mp_s_axi_awcache_converter_0->vector_out(m_s_axi_awcache_converter_0_signal);
  mp_S00_AXI_transactor->AWCACHE(m_s_axi_awcache_converter_0_signal);
  mp_s_axi_awprot_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_awprot_converter_0");
  mp_s_axi_split_awprot = new xsc::xsc_split<6, 2>("s_axi_split_awprot");
  mp_s_axi_split_awprot->in_port(s_axi_awprot);
  mp_s_axi_split_awprot->out_port[0](s_axi_split_awprot_out_0);
    mp_s_axi_split_awprot->add_mask(0,3,0);
  mp_s_axi_awprot_converter_0->vector_in(s_axi_split_awprot_out_0);
  mp_s_axi_awprot_converter_0->vector_out(m_s_axi_awprot_converter_0_signal);
  mp_S00_AXI_transactor->AWPROT(m_s_axi_awprot_converter_0_signal);
  mp_s_axi_awqos_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_awqos_converter_0");
  mp_s_axi_split_awqos = new xsc::xsc_split<8, 2>("s_axi_split_awqos");
  mp_s_axi_split_awqos->in_port(s_axi_awqos);
  mp_s_axi_split_awqos->out_port[0](s_axi_split_awqos_out_0);
    mp_s_axi_split_awqos->add_mask(0,4,0);
  mp_s_axi_awqos_converter_0->vector_in(s_axi_split_awqos_out_0);
  mp_s_axi_awqos_converter_0->vector_out(m_s_axi_awqos_converter_0_signal);
  mp_S00_AXI_transactor->AWQOS(m_s_axi_awqos_converter_0_signal);
  mp_s_axi_awuser_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_awuser_converter_0");
  mp_s_axi_split_awuser = new xsc::xsc_split<8, 2>("s_axi_split_awuser");
  mp_s_axi_split_awuser->in_port(s_axi_awuser);
  mp_s_axi_split_awuser->out_port[0](s_axi_split_awuser_out_0);
    mp_s_axi_split_awuser->add_mask(0,4,0);
  mp_s_axi_awuser_converter_0->vector_in(s_axi_split_awuser_out_0);
  mp_s_axi_awuser_converter_0->vector_out(m_s_axi_awuser_converter_0_signal);
  mp_S00_AXI_transactor->AWUSER(m_s_axi_awuser_converter_0_signal);
  mp_s_axi_awvalid_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awvalid_converter_0");
  mp_s_axi_split_awvalid = new xsc::xsc_split<2, 2>("s_axi_split_awvalid");
  mp_s_axi_split_awvalid->in_port(s_axi_awvalid);
  mp_s_axi_split_awvalid->out_port[0](s_axi_split_awvalid_out_0);
    mp_s_axi_split_awvalid->add_mask(0,1,0);
  mp_s_axi_awvalid_converter_0->vector_in(s_axi_split_awvalid_out_0);
  mp_s_axi_awvalid_converter_0->scalar_out(m_s_axi_awvalid_converter_0_signal);
  mp_S00_AXI_transactor->AWVALID(m_s_axi_awvalid_converter_0_signal);
  mp_s_axi_awready_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_awready_converter_0");
  mp_s_axi_concat_awready = new xsc::xsc_concatenator<2, 2>("s_axi_concat_awready");
  mp_s_axi_concat_awready->in_port[0](s_axi_concat_awready_out_0);
  mp_s_axi_concat_awready->out_port(s_axi_awready);
    mp_s_axi_concat_awready->offset_port(0, 0);
  mp_s_axi_awready_converter_0->scalar_in(m_s_axi_awready_converter_0_signal);
  mp_s_axi_awready_converter_0->vector_out(s_axi_concat_awready_out_0);
  mp_S00_AXI_transactor->AWREADY(m_s_axi_awready_converter_0_signal);
  mp_s_axi_wdata_converter_0 = new xsc::common::vector2vector_converter<512,256>("s_axi_wdata_converter_0");
  mp_s_axi_split_wdata = new xsc::xsc_split<512, 2>("s_axi_split_wdata");
  mp_s_axi_split_wdata->in_port(s_axi_wdata);
  mp_s_axi_split_wdata->out_port[0](s_axi_split_wdata_out_0);
    mp_s_axi_split_wdata->add_mask(0,256,0);
  mp_s_axi_wdata_converter_0->vector_in(s_axi_split_wdata_out_0);
  mp_s_axi_wdata_converter_0->vector_out(m_s_axi_wdata_converter_0_signal);
  mp_S00_AXI_transactor->WDATA(m_s_axi_wdata_converter_0_signal);
  mp_s_axi_wstrb_converter_0 = new xsc::common::vector2vector_converter<64,32>("s_axi_wstrb_converter_0");
  mp_s_axi_split_wstrb = new xsc::xsc_split<64, 2>("s_axi_split_wstrb");
  mp_s_axi_split_wstrb->in_port(s_axi_wstrb);
  mp_s_axi_split_wstrb->out_port[0](s_axi_split_wstrb_out_0);
    mp_s_axi_split_wstrb->add_mask(0,32,0);
  mp_s_axi_wstrb_converter_0->vector_in(s_axi_split_wstrb_out_0);
  mp_s_axi_wstrb_converter_0->vector_out(m_s_axi_wstrb_converter_0_signal);
  mp_S00_AXI_transactor->WSTRB(m_s_axi_wstrb_converter_0_signal);
  mp_s_axi_wlast_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wlast_converter_0");
  mp_s_axi_split_wlast = new xsc::xsc_split<2, 2>("s_axi_split_wlast");
  mp_s_axi_split_wlast->in_port(s_axi_wlast);
  mp_s_axi_split_wlast->out_port[0](s_axi_split_wlast_out_0);
    mp_s_axi_split_wlast->add_mask(0,1,0);
  mp_s_axi_wlast_converter_0->vector_in(s_axi_split_wlast_out_0);
  mp_s_axi_wlast_converter_0->scalar_out(m_s_axi_wlast_converter_0_signal);
  mp_S00_AXI_transactor->WLAST(m_s_axi_wlast_converter_0_signal);
  mp_s_axi_wvalid_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wvalid_converter_0");
  mp_s_axi_split_wvalid = new xsc::xsc_split<2, 2>("s_axi_split_wvalid");
  mp_s_axi_split_wvalid->in_port(s_axi_wvalid);
  mp_s_axi_split_wvalid->out_port[0](s_axi_split_wvalid_out_0);
    mp_s_axi_split_wvalid->add_mask(0,1,0);
  mp_s_axi_wvalid_converter_0->vector_in(s_axi_split_wvalid_out_0);
  mp_s_axi_wvalid_converter_0->scalar_out(m_s_axi_wvalid_converter_0_signal);
  mp_S00_AXI_transactor->WVALID(m_s_axi_wvalid_converter_0_signal);
  mp_s_axi_wready_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_wready_converter_0");
  mp_s_axi_concat_wready = new xsc::xsc_concatenator<2, 2>("s_axi_concat_wready");
  mp_s_axi_concat_wready->in_port[0](s_axi_concat_wready_out_0);
  mp_s_axi_concat_wready->out_port(s_axi_wready);
    mp_s_axi_concat_wready->offset_port(0, 0);
  mp_s_axi_wready_converter_0->scalar_in(m_s_axi_wready_converter_0_signal);
  mp_s_axi_wready_converter_0->vector_out(s_axi_concat_wready_out_0);
  mp_S00_AXI_transactor->WREADY(m_s_axi_wready_converter_0_signal);
  mp_s_axi_bid_converter_0 = new xsc::common::vector2vector_converter<1,2>("s_axi_bid_converter_0");
  mp_s_axi_concat_bid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_bid");
  mp_s_axi_concat_bid->in_port[0](s_axi_concat_bid_out_0);
  mp_s_axi_concat_bid->out_port(s_axi_bid);
    mp_s_axi_concat_bid->offset_port(0, 0);
  mp_s_axi_bid_converter_0->vector_in(m_s_axi_bid_converter_0_signal);
  mp_s_axi_bid_converter_0->vector_out(s_axi_concat_bid_out_0);
  mp_S00_AXI_transactor->BID(m_s_axi_bid_converter_0_signal);
  mp_s_axi_bresp_converter_0 = new xsc::common::vector2vector_converter<2,4>("s_axi_bresp_converter_0");
  mp_s_axi_concat_bresp = new xsc::xsc_concatenator<4, 2>("s_axi_concat_bresp");
  mp_s_axi_concat_bresp->in_port[0](s_axi_concat_bresp_out_0);
  mp_s_axi_concat_bresp->out_port(s_axi_bresp);
    mp_s_axi_concat_bresp->offset_port(0, 0);
  mp_s_axi_bresp_converter_0->vector_in(m_s_axi_bresp_converter_0_signal);
  mp_s_axi_bresp_converter_0->vector_out(s_axi_concat_bresp_out_0);
  mp_S00_AXI_transactor->BRESP(m_s_axi_bresp_converter_0_signal);
  mp_s_axi_bvalid_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_bvalid_converter_0");
  mp_s_axi_concat_bvalid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_bvalid");
  mp_s_axi_concat_bvalid->in_port[0](s_axi_concat_bvalid_out_0);
  mp_s_axi_concat_bvalid->out_port(s_axi_bvalid);
    mp_s_axi_concat_bvalid->offset_port(0, 0);
  mp_s_axi_bvalid_converter_0->scalar_in(m_s_axi_bvalid_converter_0_signal);
  mp_s_axi_bvalid_converter_0->vector_out(s_axi_concat_bvalid_out_0);
  mp_S00_AXI_transactor->BVALID(m_s_axi_bvalid_converter_0_signal);
  mp_s_axi_bready_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_bready_converter_0");
  mp_s_axi_split_bready = new xsc::xsc_split<2, 2>("s_axi_split_bready");
  mp_s_axi_split_bready->in_port(s_axi_bready);
  mp_s_axi_split_bready->out_port[0](s_axi_split_bready_out_0);
    mp_s_axi_split_bready->add_mask(0,1,0);
  mp_s_axi_bready_converter_0->vector_in(s_axi_split_bready_out_0);
  mp_s_axi_bready_converter_0->scalar_out(m_s_axi_bready_converter_0_signal);
  mp_S00_AXI_transactor->BREADY(m_s_axi_bready_converter_0_signal);
  mp_s_axi_arid_converter_0 = new xsc::common::vector2vector_converter<2,1>("s_axi_arid_converter_0");
  mp_s_axi_split_arid = new xsc::xsc_split<2, 2>("s_axi_split_arid");
  mp_s_axi_split_arid->in_port(s_axi_arid);
  mp_s_axi_split_arid->out_port[0](s_axi_split_arid_out_0);
    mp_s_axi_split_arid->add_mask(0,1,0);
  mp_s_axi_arid_converter_0->vector_in(s_axi_split_arid_out_0);
  mp_s_axi_arid_converter_0->vector_out(m_s_axi_arid_converter_0_signal);
  mp_S00_AXI_transactor->ARID(m_s_axi_arid_converter_0_signal);
  mp_s_axi_araddr_converter_0 = new xsc::common::vector2vector_converter<64,32>("s_axi_araddr_converter_0");
  mp_s_axi_split_araddr = new xsc::xsc_split<64, 2>("s_axi_split_araddr");
  mp_s_axi_split_araddr->in_port(s_axi_araddr);
  mp_s_axi_split_araddr->out_port[0](s_axi_split_araddr_out_0);
    mp_s_axi_split_araddr->add_mask(0,32,0);
  mp_s_axi_araddr_converter_0->vector_in(s_axi_split_araddr_out_0);
  mp_s_axi_araddr_converter_0->vector_out(m_s_axi_araddr_converter_0_signal);
  mp_S00_AXI_transactor->ARADDR(m_s_axi_araddr_converter_0_signal);
  mp_s_axi_arlen_converter_0 = new xsc::common::vector2vector_converter<16,8>("s_axi_arlen_converter_0");
  mp_s_axi_split_arlen = new xsc::xsc_split<16, 2>("s_axi_split_arlen");
  mp_s_axi_split_arlen->in_port(s_axi_arlen);
  mp_s_axi_split_arlen->out_port[0](s_axi_split_arlen_out_0);
    mp_s_axi_split_arlen->add_mask(0,8,0);
  mp_s_axi_arlen_converter_0->vector_in(s_axi_split_arlen_out_0);
  mp_s_axi_arlen_converter_0->vector_out(m_s_axi_arlen_converter_0_signal);
  mp_S00_AXI_transactor->ARLEN(m_s_axi_arlen_converter_0_signal);
  mp_s_axi_arsize_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_arsize_converter_0");
  mp_s_axi_split_arsize = new xsc::xsc_split<6, 2>("s_axi_split_arsize");
  mp_s_axi_split_arsize->in_port(s_axi_arsize);
  mp_s_axi_split_arsize->out_port[0](s_axi_split_arsize_out_0);
    mp_s_axi_split_arsize->add_mask(0,3,0);
  mp_s_axi_arsize_converter_0->vector_in(s_axi_split_arsize_out_0);
  mp_s_axi_arsize_converter_0->vector_out(m_s_axi_arsize_converter_0_signal);
  mp_S00_AXI_transactor->ARSIZE(m_s_axi_arsize_converter_0_signal);
  mp_s_axi_arburst_converter_0 = new xsc::common::vector2vector_converter<4,2>("s_axi_arburst_converter_0");
  mp_s_axi_split_arburst = new xsc::xsc_split<4, 2>("s_axi_split_arburst");
  mp_s_axi_split_arburst->in_port(s_axi_arburst);
  mp_s_axi_split_arburst->out_port[0](s_axi_split_arburst_out_0);
    mp_s_axi_split_arburst->add_mask(0,2,0);
  mp_s_axi_arburst_converter_0->vector_in(s_axi_split_arburst_out_0);
  mp_s_axi_arburst_converter_0->vector_out(m_s_axi_arburst_converter_0_signal);
  mp_S00_AXI_transactor->ARBURST(m_s_axi_arburst_converter_0_signal);
  mp_s_axi_arlock_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arlock_converter_0");
  mp_s_axi_split_arlock = new xsc::xsc_split<2, 2>("s_axi_split_arlock");
  mp_s_axi_split_arlock->in_port(s_axi_arlock);
  mp_s_axi_split_arlock->out_port[0](s_axi_split_arlock_out_0);
    mp_s_axi_split_arlock->add_mask(0,1,0);
  mp_s_axi_arlock_converter_0->vector_in(s_axi_split_arlock_out_0);
  mp_s_axi_arlock_converter_0->scalar_out(m_s_axi_arlock_converter_0_signal);
  mp_S00_AXI_transactor->ARLOCK(m_s_axi_arlock_converter_0_signal);
  mp_s_axi_arcache_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_arcache_converter_0");
  mp_s_axi_split_arcache = new xsc::xsc_split<8, 2>("s_axi_split_arcache");
  mp_s_axi_split_arcache->in_port(s_axi_arcache);
  mp_s_axi_split_arcache->out_port[0](s_axi_split_arcache_out_0);
    mp_s_axi_split_arcache->add_mask(0,4,0);
  mp_s_axi_arcache_converter_0->vector_in(s_axi_split_arcache_out_0);
  mp_s_axi_arcache_converter_0->vector_out(m_s_axi_arcache_converter_0_signal);
  mp_S00_AXI_transactor->ARCACHE(m_s_axi_arcache_converter_0_signal);
  mp_s_axi_arprot_converter_0 = new xsc::common::vector2vector_converter<6,3>("s_axi_arprot_converter_0");
  mp_s_axi_split_arprot = new xsc::xsc_split<6, 2>("s_axi_split_arprot");
  mp_s_axi_split_arprot->in_port(s_axi_arprot);
  mp_s_axi_split_arprot->out_port[0](s_axi_split_arprot_out_0);
    mp_s_axi_split_arprot->add_mask(0,3,0);
  mp_s_axi_arprot_converter_0->vector_in(s_axi_split_arprot_out_0);
  mp_s_axi_arprot_converter_0->vector_out(m_s_axi_arprot_converter_0_signal);
  mp_S00_AXI_transactor->ARPROT(m_s_axi_arprot_converter_0_signal);
  mp_s_axi_arqos_converter_0 = new xsc::common::vector2vector_converter<8,4>("s_axi_arqos_converter_0");
  mp_s_axi_split_arqos = new xsc::xsc_split<8, 2>("s_axi_split_arqos");
  mp_s_axi_split_arqos->in_port(s_axi_arqos);
  mp_s_axi_split_arqos->out_port[0](s_axi_split_arqos_out_0);
    mp_s_axi_split_arqos->add_mask(0,4,0);
  mp_s_axi_arqos_converter_0->vector_in(s_axi_split_arqos_out_0);
  mp_s_axi_arqos_converter_0->vector_out(m_s_axi_arqos_converter_0_signal);
  mp_S00_AXI_transactor->ARQOS(m_s_axi_arqos_converter_0_signal);
  mp_s_axi_arvalid_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arvalid_converter_0");
  mp_s_axi_split_arvalid = new xsc::xsc_split<2, 2>("s_axi_split_arvalid");
  mp_s_axi_split_arvalid->in_port(s_axi_arvalid);
  mp_s_axi_split_arvalid->out_port[0](s_axi_split_arvalid_out_0);
    mp_s_axi_split_arvalid->add_mask(0,1,0);
  mp_s_axi_arvalid_converter_0->vector_in(s_axi_split_arvalid_out_0);
  mp_s_axi_arvalid_converter_0->scalar_out(m_s_axi_arvalid_converter_0_signal);
  mp_S00_AXI_transactor->ARVALID(m_s_axi_arvalid_converter_0_signal);
  mp_s_axi_arready_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_arready_converter_0");
  mp_s_axi_concat_arready = new xsc::xsc_concatenator<2, 2>("s_axi_concat_arready");
  mp_s_axi_concat_arready->in_port[0](s_axi_concat_arready_out_0);
  mp_s_axi_concat_arready->out_port(s_axi_arready);
    mp_s_axi_concat_arready->offset_port(0, 0);
  mp_s_axi_arready_converter_0->scalar_in(m_s_axi_arready_converter_0_signal);
  mp_s_axi_arready_converter_0->vector_out(s_axi_concat_arready_out_0);
  mp_S00_AXI_transactor->ARREADY(m_s_axi_arready_converter_0_signal);
  mp_s_axi_rid_converter_0 = new xsc::common::vector2vector_converter<1,2>("s_axi_rid_converter_0");
  mp_s_axi_concat_rid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_rid");
  mp_s_axi_concat_rid->in_port[0](s_axi_concat_rid_out_0);
  mp_s_axi_concat_rid->out_port(s_axi_rid);
    mp_s_axi_concat_rid->offset_port(0, 0);
  mp_s_axi_rid_converter_0->vector_in(m_s_axi_rid_converter_0_signal);
  mp_s_axi_rid_converter_0->vector_out(s_axi_concat_rid_out_0);
  mp_S00_AXI_transactor->RID(m_s_axi_rid_converter_0_signal);
  mp_s_axi_rdata_converter_0 = new xsc::common::vector2vector_converter<256,512>("s_axi_rdata_converter_0");
  mp_s_axi_concat_rdata = new xsc::xsc_concatenator<512, 2>("s_axi_concat_rdata");
  mp_s_axi_concat_rdata->in_port[0](s_axi_concat_rdata_out_0);
  mp_s_axi_concat_rdata->out_port(s_axi_rdata);
    mp_s_axi_concat_rdata->offset_port(0, 0);
  mp_s_axi_rdata_converter_0->vector_in(m_s_axi_rdata_converter_0_signal);
  mp_s_axi_rdata_converter_0->vector_out(s_axi_concat_rdata_out_0);
  mp_S00_AXI_transactor->RDATA(m_s_axi_rdata_converter_0_signal);
  mp_s_axi_rresp_converter_0 = new xsc::common::vector2vector_converter<2,4>("s_axi_rresp_converter_0");
  mp_s_axi_concat_rresp = new xsc::xsc_concatenator<4, 2>("s_axi_concat_rresp");
  mp_s_axi_concat_rresp->in_port[0](s_axi_concat_rresp_out_0);
  mp_s_axi_concat_rresp->out_port(s_axi_rresp);
    mp_s_axi_concat_rresp->offset_port(0, 0);
  mp_s_axi_rresp_converter_0->vector_in(m_s_axi_rresp_converter_0_signal);
  mp_s_axi_rresp_converter_0->vector_out(s_axi_concat_rresp_out_0);
  mp_S00_AXI_transactor->RRESP(m_s_axi_rresp_converter_0_signal);
  mp_s_axi_rlast_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rlast_converter_0");
  mp_s_axi_concat_rlast = new xsc::xsc_concatenator<2, 2>("s_axi_concat_rlast");
  mp_s_axi_concat_rlast->in_port[0](s_axi_concat_rlast_out_0);
  mp_s_axi_concat_rlast->out_port(s_axi_rlast);
    mp_s_axi_concat_rlast->offset_port(0, 0);
  mp_s_axi_rlast_converter_0->scalar_in(m_s_axi_rlast_converter_0_signal);
  mp_s_axi_rlast_converter_0->vector_out(s_axi_concat_rlast_out_0);
  mp_S00_AXI_transactor->RLAST(m_s_axi_rlast_converter_0_signal);
  mp_s_axi_rvalid_converter_0 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rvalid_converter_0");
  mp_s_axi_concat_rvalid = new xsc::xsc_concatenator<2, 2>("s_axi_concat_rvalid");
  mp_s_axi_concat_rvalid->in_port[0](s_axi_concat_rvalid_out_0);
  mp_s_axi_concat_rvalid->out_port(s_axi_rvalid);
    mp_s_axi_concat_rvalid->offset_port(0, 0);
  mp_s_axi_rvalid_converter_0->scalar_in(m_s_axi_rvalid_converter_0_signal);
  mp_s_axi_rvalid_converter_0->vector_out(s_axi_concat_rvalid_out_0);
  mp_S00_AXI_transactor->RVALID(m_s_axi_rvalid_converter_0_signal);
  mp_s_axi_rready_converter_0 = new xsc::common::vectorN2scalar_converter<2>("s_axi_rready_converter_0");
  mp_s_axi_split_rready = new xsc::xsc_split<2, 2>("s_axi_split_rready");
  mp_s_axi_split_rready->in_port(s_axi_rready);
  mp_s_axi_split_rready->out_port[0](s_axi_split_rready_out_0);
    mp_s_axi_split_rready->add_mask(0,1,0);
  mp_s_axi_rready_converter_0->vector_in(s_axi_split_rready_out_0);
  mp_s_axi_rready_converter_0->scalar_out(m_s_axi_rready_converter_0_signal);
  mp_S00_AXI_transactor->RREADY(m_s_axi_rready_converter_0_signal);
  mp_S00_AXI_transactor->CLK(aclk);
  mp_S00_AXI_transactor->RST(aresetn);

  // configure M00_AXI_transactor
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "4");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "8");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "8");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "128");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<256,32,1,4,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);
  mp_M00_AXI_transactor->AWID(m_axi_awid);
  mp_M00_AXI_transactor->AWADDR(m_axi_awaddr);
  mp_M00_AXI_transactor->AWLEN(m_axi_awlen);
  mp_M00_AXI_transactor->AWSIZE(m_axi_awsize);
  mp_M00_AXI_transactor->AWBURST(m_axi_awburst);
  mp_m_axi_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_awlock_converter");
  mp_m_axi_awlock_converter->scalar_in(m_m_axi_awlock_converter_signal);
  mp_m_axi_awlock_converter->vector_out(m_axi_awlock);
  mp_M00_AXI_transactor->AWLOCK(m_m_axi_awlock_converter_signal);
  mp_M00_AXI_transactor->AWCACHE(m_axi_awcache);
  mp_M00_AXI_transactor->AWPROT(m_axi_awprot);
  mp_M00_AXI_transactor->AWREGION(m_axi_awregion);
  mp_M00_AXI_transactor->AWQOS(m_axi_awqos);
  mp_M00_AXI_transactor->AWUSER(m_axi_awuser);
  mp_m_axi_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_awvalid_converter");
  mp_m_axi_awvalid_converter->scalar_in(m_m_axi_awvalid_converter_signal);
  mp_m_axi_awvalid_converter->vector_out(m_axi_awvalid);
  mp_M00_AXI_transactor->AWVALID(m_m_axi_awvalid_converter_signal);
  mp_m_axi_awready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_awready_converter");
  mp_m_axi_awready_converter->vector_in(m_axi_awready);
  mp_m_axi_awready_converter->scalar_out(m_m_axi_awready_converter_signal);
  mp_M00_AXI_transactor->AWREADY(m_m_axi_awready_converter_signal);
  mp_M00_AXI_transactor->WDATA(m_axi_wdata);
  mp_M00_AXI_transactor->WSTRB(m_axi_wstrb);
  mp_m_axi_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_wlast_converter");
  mp_m_axi_wlast_converter->scalar_in(m_m_axi_wlast_converter_signal);
  mp_m_axi_wlast_converter->vector_out(m_axi_wlast);
  mp_M00_AXI_transactor->WLAST(m_m_axi_wlast_converter_signal);
  mp_m_axi_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_wvalid_converter");
  mp_m_axi_wvalid_converter->scalar_in(m_m_axi_wvalid_converter_signal);
  mp_m_axi_wvalid_converter->vector_out(m_axi_wvalid);
  mp_M00_AXI_transactor->WVALID(m_m_axi_wvalid_converter_signal);
  mp_m_axi_wready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_wready_converter");
  mp_m_axi_wready_converter->vector_in(m_axi_wready);
  mp_m_axi_wready_converter->scalar_out(m_m_axi_wready_converter_signal);
  mp_M00_AXI_transactor->WREADY(m_m_axi_wready_converter_signal);
  mp_M00_AXI_transactor->BID(m_axi_bid);
  mp_M00_AXI_transactor->BRESP(m_axi_bresp);
  mp_m_axi_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_bvalid_converter");
  mp_m_axi_bvalid_converter->vector_in(m_axi_bvalid);
  mp_m_axi_bvalid_converter->scalar_out(m_m_axi_bvalid_converter_signal);
  mp_M00_AXI_transactor->BVALID(m_m_axi_bvalid_converter_signal);
  mp_m_axi_bready_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_bready_converter");
  mp_m_axi_bready_converter->scalar_in(m_m_axi_bready_converter_signal);
  mp_m_axi_bready_converter->vector_out(m_axi_bready);
  mp_M00_AXI_transactor->BREADY(m_m_axi_bready_converter_signal);
  mp_M00_AXI_transactor->ARID(m_axi_arid);
  mp_M00_AXI_transactor->ARADDR(m_axi_araddr);
  mp_M00_AXI_transactor->ARLEN(m_axi_arlen);
  mp_M00_AXI_transactor->ARSIZE(m_axi_arsize);
  mp_M00_AXI_transactor->ARBURST(m_axi_arburst);
  mp_m_axi_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_arlock_converter");
  mp_m_axi_arlock_converter->scalar_in(m_m_axi_arlock_converter_signal);
  mp_m_axi_arlock_converter->vector_out(m_axi_arlock);
  mp_M00_AXI_transactor->ARLOCK(m_m_axi_arlock_converter_signal);
  mp_M00_AXI_transactor->ARCACHE(m_axi_arcache);
  mp_M00_AXI_transactor->ARPROT(m_axi_arprot);
  mp_M00_AXI_transactor->ARREGION(m_axi_arregion);
  mp_M00_AXI_transactor->ARQOS(m_axi_arqos);
  mp_m_axi_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_arvalid_converter");
  mp_m_axi_arvalid_converter->scalar_in(m_m_axi_arvalid_converter_signal);
  mp_m_axi_arvalid_converter->vector_out(m_axi_arvalid);
  mp_M00_AXI_transactor->ARVALID(m_m_axi_arvalid_converter_signal);
  mp_m_axi_arready_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_arready_converter");
  mp_m_axi_arready_converter->vector_in(m_axi_arready);
  mp_m_axi_arready_converter->scalar_out(m_m_axi_arready_converter_signal);
  mp_M00_AXI_transactor->ARREADY(m_m_axi_arready_converter_signal);
  mp_M00_AXI_transactor->RID(m_axi_rid);
  mp_M00_AXI_transactor->RDATA(m_axi_rdata);
  mp_M00_AXI_transactor->RRESP(m_axi_rresp);
  mp_m_axi_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_rlast_converter");
  mp_m_axi_rlast_converter->vector_in(m_axi_rlast);
  mp_m_axi_rlast_converter->scalar_out(m_m_axi_rlast_converter_signal);
  mp_M00_AXI_transactor->RLAST(m_m_axi_rlast_converter_signal);
  mp_m_axi_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("m_axi_rvalid_converter");
  mp_m_axi_rvalid_converter->vector_in(m_axi_rvalid);
  mp_m_axi_rvalid_converter->scalar_out(m_m_axi_rvalid_converter_signal);
  mp_M00_AXI_transactor->RVALID(m_m_axi_rvalid_converter_signal);
  mp_m_axi_rready_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_rready_converter");
  mp_m_axi_rready_converter->scalar_in(m_m_axi_rready_converter_signal);
  mp_m_axi_rready_converter->vector_out(m_axi_rready);
  mp_M00_AXI_transactor->RREADY(m_m_axi_rready_converter_signal);
  mp_M00_AXI_transactor->CLK(aclk);
  mp_M00_AXI_transactor->RST(aresetn);

  // configure S01_AXI_transactor
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "256");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "125000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "4");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_xdma_0_0_axi_aclk");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<256,32,1,4,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);
  mp_s_axi_awid_converter_1 = new xsc::common::vector2vector_converter<2,1>("s_axi_awid_converter_1");
  
  mp_s_axi_split_awid->out_port[1](s_axi_split_awid_out_1);
    mp_s_axi_split_awid->add_mask(1,2,1);
  mp_s_axi_awid_converter_1->vector_in(s_axi_split_awid_out_1);
  mp_s_axi_awid_converter_1->vector_out(m_s_axi_awid_converter_1_signal);
  mp_S01_AXI_transactor->AWID(m_s_axi_awid_converter_1_signal);
  mp_s_axi_awaddr_converter_1 = new xsc::common::vector2vector_converter<64,32>("s_axi_awaddr_converter_1");
  
  mp_s_axi_split_awaddr->out_port[1](s_axi_split_awaddr_out_1);
    mp_s_axi_split_awaddr->add_mask(1,64,32);
  mp_s_axi_awaddr_converter_1->vector_in(s_axi_split_awaddr_out_1);
  mp_s_axi_awaddr_converter_1->vector_out(m_s_axi_awaddr_converter_1_signal);
  mp_S01_AXI_transactor->AWADDR(m_s_axi_awaddr_converter_1_signal);
  mp_s_axi_awlen_converter_1 = new xsc::common::vector2vector_converter<16,8>("s_axi_awlen_converter_1");
  
  mp_s_axi_split_awlen->out_port[1](s_axi_split_awlen_out_1);
    mp_s_axi_split_awlen->add_mask(1,16,8);
  mp_s_axi_awlen_converter_1->vector_in(s_axi_split_awlen_out_1);
  mp_s_axi_awlen_converter_1->vector_out(m_s_axi_awlen_converter_1_signal);
  mp_S01_AXI_transactor->AWLEN(m_s_axi_awlen_converter_1_signal);
  mp_s_axi_awsize_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_awsize_converter_1");
  
  mp_s_axi_split_awsize->out_port[1](s_axi_split_awsize_out_1);
    mp_s_axi_split_awsize->add_mask(1,6,3);
  mp_s_axi_awsize_converter_1->vector_in(s_axi_split_awsize_out_1);
  mp_s_axi_awsize_converter_1->vector_out(m_s_axi_awsize_converter_1_signal);
  mp_S01_AXI_transactor->AWSIZE(m_s_axi_awsize_converter_1_signal);
  mp_s_axi_awburst_converter_1 = new xsc::common::vector2vector_converter<4,2>("s_axi_awburst_converter_1");
  
  mp_s_axi_split_awburst->out_port[1](s_axi_split_awburst_out_1);
    mp_s_axi_split_awburst->add_mask(1,4,2);
  mp_s_axi_awburst_converter_1->vector_in(s_axi_split_awburst_out_1);
  mp_s_axi_awburst_converter_1->vector_out(m_s_axi_awburst_converter_1_signal);
  mp_S01_AXI_transactor->AWBURST(m_s_axi_awburst_converter_1_signal);
  mp_s_axi_awlock_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awlock_converter_1");
  
  mp_s_axi_split_awlock->out_port[1](s_axi_split_awlock_out_1);
    mp_s_axi_split_awlock->add_mask(1,2,1);
  mp_s_axi_awlock_converter_1->vector_in(s_axi_split_awlock_out_1);
  mp_s_axi_awlock_converter_1->scalar_out(m_s_axi_awlock_converter_1_signal);
  mp_S01_AXI_transactor->AWLOCK(m_s_axi_awlock_converter_1_signal);
  mp_s_axi_awcache_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_awcache_converter_1");
  
  mp_s_axi_split_awcache->out_port[1](s_axi_split_awcache_out_1);
    mp_s_axi_split_awcache->add_mask(1,8,4);
  mp_s_axi_awcache_converter_1->vector_in(s_axi_split_awcache_out_1);
  mp_s_axi_awcache_converter_1->vector_out(m_s_axi_awcache_converter_1_signal);
  mp_S01_AXI_transactor->AWCACHE(m_s_axi_awcache_converter_1_signal);
  mp_s_axi_awprot_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_awprot_converter_1");
  
  mp_s_axi_split_awprot->out_port[1](s_axi_split_awprot_out_1);
    mp_s_axi_split_awprot->add_mask(1,6,3);
  mp_s_axi_awprot_converter_1->vector_in(s_axi_split_awprot_out_1);
  mp_s_axi_awprot_converter_1->vector_out(m_s_axi_awprot_converter_1_signal);
  mp_S01_AXI_transactor->AWPROT(m_s_axi_awprot_converter_1_signal);
  mp_s_axi_awqos_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_awqos_converter_1");
  
  mp_s_axi_split_awqos->out_port[1](s_axi_split_awqos_out_1);
    mp_s_axi_split_awqos->add_mask(1,8,4);
  mp_s_axi_awqos_converter_1->vector_in(s_axi_split_awqos_out_1);
  mp_s_axi_awqos_converter_1->vector_out(m_s_axi_awqos_converter_1_signal);
  mp_S01_AXI_transactor->AWQOS(m_s_axi_awqos_converter_1_signal);
  mp_s_axi_awuser_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_awuser_converter_1");
  
  mp_s_axi_split_awuser->out_port[1](s_axi_split_awuser_out_1);
    mp_s_axi_split_awuser->add_mask(1,8,4);
  mp_s_axi_awuser_converter_1->vector_in(s_axi_split_awuser_out_1);
  mp_s_axi_awuser_converter_1->vector_out(m_s_axi_awuser_converter_1_signal);
  mp_S01_AXI_transactor->AWUSER(m_s_axi_awuser_converter_1_signal);
  mp_s_axi_awvalid_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_awvalid_converter_1");
  
  mp_s_axi_split_awvalid->out_port[1](s_axi_split_awvalid_out_1);
    mp_s_axi_split_awvalid->add_mask(1,2,1);
  mp_s_axi_awvalid_converter_1->vector_in(s_axi_split_awvalid_out_1);
  mp_s_axi_awvalid_converter_1->scalar_out(m_s_axi_awvalid_converter_1_signal);
  mp_S01_AXI_transactor->AWVALID(m_s_axi_awvalid_converter_1_signal);
  mp_s_axi_awready_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_awready_converter_1");
  mp_s_axi_concat_awready->in_port[1](s_axi_concat_awready_out_1);
  mp_s_axi_concat_awready->offset_port(1, 1);
  mp_s_axi_awready_converter_1->scalar_in(m_s_axi_awready_converter_1_signal);
  mp_s_axi_awready_converter_1->vector_out(s_axi_concat_awready_out_1);
  mp_S01_AXI_transactor->AWREADY(m_s_axi_awready_converter_1_signal);
  mp_s_axi_wdata_converter_1 = new xsc::common::vector2vector_converter<512,256>("s_axi_wdata_converter_1");
  
  mp_s_axi_split_wdata->out_port[1](s_axi_split_wdata_out_1);
    mp_s_axi_split_wdata->add_mask(1,512,256);
  mp_s_axi_wdata_converter_1->vector_in(s_axi_split_wdata_out_1);
  mp_s_axi_wdata_converter_1->vector_out(m_s_axi_wdata_converter_1_signal);
  mp_S01_AXI_transactor->WDATA(m_s_axi_wdata_converter_1_signal);
  mp_s_axi_wstrb_converter_1 = new xsc::common::vector2vector_converter<64,32>("s_axi_wstrb_converter_1");
  
  mp_s_axi_split_wstrb->out_port[1](s_axi_split_wstrb_out_1);
    mp_s_axi_split_wstrb->add_mask(1,64,32);
  mp_s_axi_wstrb_converter_1->vector_in(s_axi_split_wstrb_out_1);
  mp_s_axi_wstrb_converter_1->vector_out(m_s_axi_wstrb_converter_1_signal);
  mp_S01_AXI_transactor->WSTRB(m_s_axi_wstrb_converter_1_signal);
  mp_s_axi_wlast_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wlast_converter_1");
  
  mp_s_axi_split_wlast->out_port[1](s_axi_split_wlast_out_1);
    mp_s_axi_split_wlast->add_mask(1,2,1);
  mp_s_axi_wlast_converter_1->vector_in(s_axi_split_wlast_out_1);
  mp_s_axi_wlast_converter_1->scalar_out(m_s_axi_wlast_converter_1_signal);
  mp_S01_AXI_transactor->WLAST(m_s_axi_wlast_converter_1_signal);
  mp_s_axi_wvalid_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_wvalid_converter_1");
  
  mp_s_axi_split_wvalid->out_port[1](s_axi_split_wvalid_out_1);
    mp_s_axi_split_wvalid->add_mask(1,2,1);
  mp_s_axi_wvalid_converter_1->vector_in(s_axi_split_wvalid_out_1);
  mp_s_axi_wvalid_converter_1->scalar_out(m_s_axi_wvalid_converter_1_signal);
  mp_S01_AXI_transactor->WVALID(m_s_axi_wvalid_converter_1_signal);
  mp_s_axi_wready_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_wready_converter_1");
  mp_s_axi_concat_wready->in_port[1](s_axi_concat_wready_out_1);
  mp_s_axi_concat_wready->offset_port(1, 1);
  mp_s_axi_wready_converter_1->scalar_in(m_s_axi_wready_converter_1_signal);
  mp_s_axi_wready_converter_1->vector_out(s_axi_concat_wready_out_1);
  mp_S01_AXI_transactor->WREADY(m_s_axi_wready_converter_1_signal);
  mp_s_axi_bid_converter_1 = new xsc::common::vector2vector_converter<1,2>("s_axi_bid_converter_1");
  mp_s_axi_concat_bid->in_port[1](s_axi_concat_bid_out_1);
  mp_s_axi_concat_bid->offset_port(1, 1);
  mp_s_axi_bid_converter_1->vector_in(m_s_axi_bid_converter_1_signal);
  mp_s_axi_bid_converter_1->vector_out(s_axi_concat_bid_out_1);
  mp_S01_AXI_transactor->BID(m_s_axi_bid_converter_1_signal);
  mp_s_axi_bresp_converter_1 = new xsc::common::vector2vector_converter<2,4>("s_axi_bresp_converter_1");
  mp_s_axi_concat_bresp->in_port[1](s_axi_concat_bresp_out_1);
  mp_s_axi_concat_bresp->offset_port(1, 2);
  mp_s_axi_bresp_converter_1->vector_in(m_s_axi_bresp_converter_1_signal);
  mp_s_axi_bresp_converter_1->vector_out(s_axi_concat_bresp_out_1);
  mp_S01_AXI_transactor->BRESP(m_s_axi_bresp_converter_1_signal);
  mp_s_axi_bvalid_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_bvalid_converter_1");
  mp_s_axi_concat_bvalid->in_port[1](s_axi_concat_bvalid_out_1);
  mp_s_axi_concat_bvalid->offset_port(1, 1);
  mp_s_axi_bvalid_converter_1->scalar_in(m_s_axi_bvalid_converter_1_signal);
  mp_s_axi_bvalid_converter_1->vector_out(s_axi_concat_bvalid_out_1);
  mp_S01_AXI_transactor->BVALID(m_s_axi_bvalid_converter_1_signal);
  mp_s_axi_bready_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_bready_converter_1");
  
  mp_s_axi_split_bready->out_port[1](s_axi_split_bready_out_1);
    mp_s_axi_split_bready->add_mask(1,2,1);
  mp_s_axi_bready_converter_1->vector_in(s_axi_split_bready_out_1);
  mp_s_axi_bready_converter_1->scalar_out(m_s_axi_bready_converter_1_signal);
  mp_S01_AXI_transactor->BREADY(m_s_axi_bready_converter_1_signal);
  mp_s_axi_arid_converter_1 = new xsc::common::vector2vector_converter<2,1>("s_axi_arid_converter_1");
  
  mp_s_axi_split_arid->out_port[1](s_axi_split_arid_out_1);
    mp_s_axi_split_arid->add_mask(1,2,1);
  mp_s_axi_arid_converter_1->vector_in(s_axi_split_arid_out_1);
  mp_s_axi_arid_converter_1->vector_out(m_s_axi_arid_converter_1_signal);
  mp_S01_AXI_transactor->ARID(m_s_axi_arid_converter_1_signal);
  mp_s_axi_araddr_converter_1 = new xsc::common::vector2vector_converter<64,32>("s_axi_araddr_converter_1");
  
  mp_s_axi_split_araddr->out_port[1](s_axi_split_araddr_out_1);
    mp_s_axi_split_araddr->add_mask(1,64,32);
  mp_s_axi_araddr_converter_1->vector_in(s_axi_split_araddr_out_1);
  mp_s_axi_araddr_converter_1->vector_out(m_s_axi_araddr_converter_1_signal);
  mp_S01_AXI_transactor->ARADDR(m_s_axi_araddr_converter_1_signal);
  mp_s_axi_arlen_converter_1 = new xsc::common::vector2vector_converter<16,8>("s_axi_arlen_converter_1");
  
  mp_s_axi_split_arlen->out_port[1](s_axi_split_arlen_out_1);
    mp_s_axi_split_arlen->add_mask(1,16,8);
  mp_s_axi_arlen_converter_1->vector_in(s_axi_split_arlen_out_1);
  mp_s_axi_arlen_converter_1->vector_out(m_s_axi_arlen_converter_1_signal);
  mp_S01_AXI_transactor->ARLEN(m_s_axi_arlen_converter_1_signal);
  mp_s_axi_arsize_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_arsize_converter_1");
  
  mp_s_axi_split_arsize->out_port[1](s_axi_split_arsize_out_1);
    mp_s_axi_split_arsize->add_mask(1,6,3);
  mp_s_axi_arsize_converter_1->vector_in(s_axi_split_arsize_out_1);
  mp_s_axi_arsize_converter_1->vector_out(m_s_axi_arsize_converter_1_signal);
  mp_S01_AXI_transactor->ARSIZE(m_s_axi_arsize_converter_1_signal);
  mp_s_axi_arburst_converter_1 = new xsc::common::vector2vector_converter<4,2>("s_axi_arburst_converter_1");
  
  mp_s_axi_split_arburst->out_port[1](s_axi_split_arburst_out_1);
    mp_s_axi_split_arburst->add_mask(1,4,2);
  mp_s_axi_arburst_converter_1->vector_in(s_axi_split_arburst_out_1);
  mp_s_axi_arburst_converter_1->vector_out(m_s_axi_arburst_converter_1_signal);
  mp_S01_AXI_transactor->ARBURST(m_s_axi_arburst_converter_1_signal);
  mp_s_axi_arlock_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arlock_converter_1");
  
  mp_s_axi_split_arlock->out_port[1](s_axi_split_arlock_out_1);
    mp_s_axi_split_arlock->add_mask(1,2,1);
  mp_s_axi_arlock_converter_1->vector_in(s_axi_split_arlock_out_1);
  mp_s_axi_arlock_converter_1->scalar_out(m_s_axi_arlock_converter_1_signal);
  mp_S01_AXI_transactor->ARLOCK(m_s_axi_arlock_converter_1_signal);
  mp_s_axi_arcache_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_arcache_converter_1");
  
  mp_s_axi_split_arcache->out_port[1](s_axi_split_arcache_out_1);
    mp_s_axi_split_arcache->add_mask(1,8,4);
  mp_s_axi_arcache_converter_1->vector_in(s_axi_split_arcache_out_1);
  mp_s_axi_arcache_converter_1->vector_out(m_s_axi_arcache_converter_1_signal);
  mp_S01_AXI_transactor->ARCACHE(m_s_axi_arcache_converter_1_signal);
  mp_s_axi_arprot_converter_1 = new xsc::common::vector2vector_converter<6,3>("s_axi_arprot_converter_1");
  
  mp_s_axi_split_arprot->out_port[1](s_axi_split_arprot_out_1);
    mp_s_axi_split_arprot->add_mask(1,6,3);
  mp_s_axi_arprot_converter_1->vector_in(s_axi_split_arprot_out_1);
  mp_s_axi_arprot_converter_1->vector_out(m_s_axi_arprot_converter_1_signal);
  mp_S01_AXI_transactor->ARPROT(m_s_axi_arprot_converter_1_signal);
  mp_s_axi_arqos_converter_1 = new xsc::common::vector2vector_converter<8,4>("s_axi_arqos_converter_1");
  
  mp_s_axi_split_arqos->out_port[1](s_axi_split_arqos_out_1);
    mp_s_axi_split_arqos->add_mask(1,8,4);
  mp_s_axi_arqos_converter_1->vector_in(s_axi_split_arqos_out_1);
  mp_s_axi_arqos_converter_1->vector_out(m_s_axi_arqos_converter_1_signal);
  mp_S01_AXI_transactor->ARQOS(m_s_axi_arqos_converter_1_signal);
  mp_s_axi_arvalid_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_arvalid_converter_1");
  
  mp_s_axi_split_arvalid->out_port[1](s_axi_split_arvalid_out_1);
    mp_s_axi_split_arvalid->add_mask(1,2,1);
  mp_s_axi_arvalid_converter_1->vector_in(s_axi_split_arvalid_out_1);
  mp_s_axi_arvalid_converter_1->scalar_out(m_s_axi_arvalid_converter_1_signal);
  mp_S01_AXI_transactor->ARVALID(m_s_axi_arvalid_converter_1_signal);
  mp_s_axi_arready_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_arready_converter_1");
  mp_s_axi_concat_arready->in_port[1](s_axi_concat_arready_out_1);
  mp_s_axi_concat_arready->offset_port(1, 1);
  mp_s_axi_arready_converter_1->scalar_in(m_s_axi_arready_converter_1_signal);
  mp_s_axi_arready_converter_1->vector_out(s_axi_concat_arready_out_1);
  mp_S01_AXI_transactor->ARREADY(m_s_axi_arready_converter_1_signal);
  mp_s_axi_rid_converter_1 = new xsc::common::vector2vector_converter<1,2>("s_axi_rid_converter_1");
  mp_s_axi_concat_rid->in_port[1](s_axi_concat_rid_out_1);
  mp_s_axi_concat_rid->offset_port(1, 1);
  mp_s_axi_rid_converter_1->vector_in(m_s_axi_rid_converter_1_signal);
  mp_s_axi_rid_converter_1->vector_out(s_axi_concat_rid_out_1);
  mp_S01_AXI_transactor->RID(m_s_axi_rid_converter_1_signal);
  mp_s_axi_rdata_converter_1 = new xsc::common::vector2vector_converter<256,512>("s_axi_rdata_converter_1");
  mp_s_axi_concat_rdata->in_port[1](s_axi_concat_rdata_out_1);
  mp_s_axi_concat_rdata->offset_port(1, 256);
  mp_s_axi_rdata_converter_1->vector_in(m_s_axi_rdata_converter_1_signal);
  mp_s_axi_rdata_converter_1->vector_out(s_axi_concat_rdata_out_1);
  mp_S01_AXI_transactor->RDATA(m_s_axi_rdata_converter_1_signal);
  mp_s_axi_rresp_converter_1 = new xsc::common::vector2vector_converter<2,4>("s_axi_rresp_converter_1");
  mp_s_axi_concat_rresp->in_port[1](s_axi_concat_rresp_out_1);
  mp_s_axi_concat_rresp->offset_port(1, 2);
  mp_s_axi_rresp_converter_1->vector_in(m_s_axi_rresp_converter_1_signal);
  mp_s_axi_rresp_converter_1->vector_out(s_axi_concat_rresp_out_1);
  mp_S01_AXI_transactor->RRESP(m_s_axi_rresp_converter_1_signal);
  mp_s_axi_rlast_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rlast_converter_1");
  mp_s_axi_concat_rlast->in_port[1](s_axi_concat_rlast_out_1);
  mp_s_axi_concat_rlast->offset_port(1, 1);
  mp_s_axi_rlast_converter_1->scalar_in(m_s_axi_rlast_converter_1_signal);
  mp_s_axi_rlast_converter_1->vector_out(s_axi_concat_rlast_out_1);
  mp_S01_AXI_transactor->RLAST(m_s_axi_rlast_converter_1_signal);
  mp_s_axi_rvalid_converter_1 = new xsc::common::scalar2vectorN_converter<2>("s_axi_rvalid_converter_1");
  mp_s_axi_concat_rvalid->in_port[1](s_axi_concat_rvalid_out_1);
  mp_s_axi_concat_rvalid->offset_port(1, 1);
  mp_s_axi_rvalid_converter_1->scalar_in(m_s_axi_rvalid_converter_1_signal);
  mp_s_axi_rvalid_converter_1->vector_out(s_axi_concat_rvalid_out_1);
  mp_S01_AXI_transactor->RVALID(m_s_axi_rvalid_converter_1_signal);
  mp_s_axi_rready_converter_1 = new xsc::common::vectorN2scalar_converter<2>("s_axi_rready_converter_1");
  
  mp_s_axi_split_rready->out_port[1](s_axi_split_rready_out_1);
    mp_s_axi_split_rready->add_mask(1,2,1);
  mp_s_axi_rready_converter_1->vector_in(s_axi_split_rready_out_1);
  mp_s_axi_rready_converter_1->scalar_out(m_s_axi_rready_converter_1_signal);
  mp_S01_AXI_transactor->RREADY(m_s_axi_rready_converter_1_signal);
  mp_S01_AXI_transactor->CLK(aclk);
  mp_S01_AXI_transactor->RST(aresetn);


  // initialize transactors stubs
  S00_AXI_transactor_target_wr_socket_stub = nullptr;
  S00_AXI_transactor_target_rd_socket_stub = nullptr;
  M00_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M00_AXI_transactor_initiator_rd_socket_stub = nullptr;
  S01_AXI_transactor_target_wr_socket_stub = nullptr;
  S01_AXI_transactor_target_rd_socket_stub = nullptr;

}

void design_1_axi_crossbar_0_1::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_crossbar_0_1", "S00_AXI_TLM_MODE") != 1)
  {
    mp_impl->target_0_rd_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->target_0_wr_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
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
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_crossbar_0_1", "M00_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_0_rd_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->initiator_0_wr_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
    M00_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M00_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M00_AXI_transactor->wr_socket));
    M00_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M00_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_M00_AXI_transactor->disable_transactor();
  }

  // configure 'S01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_axi_crossbar_0_1", "S01_AXI_TLM_MODE") != 1)
  {
    mp_impl->target_1_rd_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->target_1_wr_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
    S01_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S01_AXI_transactor_target_wr_socket_stub->bind(*(mp_S01_AXI_transactor->wr_socket));
    S01_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S01_AXI_transactor_target_rd_socket_stub->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_S01_AXI_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




design_1_axi_crossbar_0_1::~design_1_axi_crossbar_0_1()
{
  delete mp_S00_AXI_transactor;
  delete mp_s_axi_awid_converter_0;
  delete mp_s_axi_awaddr_converter_0;
  delete mp_s_axi_awlen_converter_0;
  delete mp_s_axi_awsize_converter_0;
  delete mp_s_axi_awburst_converter_0;
  delete mp_s_axi_awlock_converter_0;
  delete mp_s_axi_awcache_converter_0;
  delete mp_s_axi_awprot_converter_0;
  delete mp_s_axi_awqos_converter_0;
  delete mp_s_axi_awuser_converter_0;
  delete mp_s_axi_awvalid_converter_0;
  delete mp_s_axi_awready_converter_0;
  delete mp_s_axi_wdata_converter_0;
  delete mp_s_axi_wstrb_converter_0;
  delete mp_s_axi_wlast_converter_0;
  delete mp_s_axi_wvalid_converter_0;
  delete mp_s_axi_wready_converter_0;
  delete mp_s_axi_bid_converter_0;
  delete mp_s_axi_bresp_converter_0;
  delete mp_s_axi_bvalid_converter_0;
  delete mp_s_axi_bready_converter_0;
  delete mp_s_axi_arid_converter_0;
  delete mp_s_axi_araddr_converter_0;
  delete mp_s_axi_arlen_converter_0;
  delete mp_s_axi_arsize_converter_0;
  delete mp_s_axi_arburst_converter_0;
  delete mp_s_axi_arlock_converter_0;
  delete mp_s_axi_arcache_converter_0;
  delete mp_s_axi_arprot_converter_0;
  delete mp_s_axi_arqos_converter_0;
  delete mp_s_axi_arvalid_converter_0;
  delete mp_s_axi_arready_converter_0;
  delete mp_s_axi_rid_converter_0;
  delete mp_s_axi_rdata_converter_0;
  delete mp_s_axi_rresp_converter_0;
  delete mp_s_axi_rlast_converter_0;
  delete mp_s_axi_rvalid_converter_0;
  delete mp_s_axi_rready_converter_0;

  delete mp_M00_AXI_transactor;
  delete mp_m_axi_awlock_converter;
  delete mp_m_axi_awvalid_converter;
  delete mp_m_axi_awready_converter;
  delete mp_m_axi_wlast_converter;
  delete mp_m_axi_wvalid_converter;
  delete mp_m_axi_wready_converter;
  delete mp_m_axi_bvalid_converter;
  delete mp_m_axi_bready_converter;
  delete mp_m_axi_arlock_converter;
  delete mp_m_axi_arvalid_converter;
  delete mp_m_axi_arready_converter;
  delete mp_m_axi_rlast_converter;
  delete mp_m_axi_rvalid_converter;
  delete mp_m_axi_rready_converter;

  delete mp_S01_AXI_transactor;
  delete mp_s_axi_awid_converter_1;
  delete mp_s_axi_awaddr_converter_1;
  delete mp_s_axi_awlen_converter_1;
  delete mp_s_axi_awsize_converter_1;
  delete mp_s_axi_awburst_converter_1;
  delete mp_s_axi_awlock_converter_1;
  delete mp_s_axi_awcache_converter_1;
  delete mp_s_axi_awprot_converter_1;
  delete mp_s_axi_awqos_converter_1;
  delete mp_s_axi_awuser_converter_1;
  delete mp_s_axi_awvalid_converter_1;
  delete mp_s_axi_awready_converter_1;
  delete mp_s_axi_wdata_converter_1;
  delete mp_s_axi_wstrb_converter_1;
  delete mp_s_axi_wlast_converter_1;
  delete mp_s_axi_wvalid_converter_1;
  delete mp_s_axi_wready_converter_1;
  delete mp_s_axi_bid_converter_1;
  delete mp_s_axi_bresp_converter_1;
  delete mp_s_axi_bvalid_converter_1;
  delete mp_s_axi_bready_converter_1;
  delete mp_s_axi_arid_converter_1;
  delete mp_s_axi_araddr_converter_1;
  delete mp_s_axi_arlen_converter_1;
  delete mp_s_axi_arsize_converter_1;
  delete mp_s_axi_arburst_converter_1;
  delete mp_s_axi_arlock_converter_1;
  delete mp_s_axi_arcache_converter_1;
  delete mp_s_axi_arprot_converter_1;
  delete mp_s_axi_arqos_converter_1;
  delete mp_s_axi_arvalid_converter_1;
  delete mp_s_axi_arready_converter_1;
  delete mp_s_axi_rid_converter_1;
  delete mp_s_axi_rdata_converter_1;
  delete mp_s_axi_rresp_converter_1;
  delete mp_s_axi_rlast_converter_1;
  delete mp_s_axi_rvalid_converter_1;
  delete mp_s_axi_rready_converter_1;

  delete mp_s_axi_concat_arready;
  delete mp_s_axi_concat_awready;
  delete mp_s_axi_concat_bid;
  delete mp_s_axi_concat_bresp;
  delete mp_s_axi_concat_bvalid;
  delete mp_s_axi_concat_rdata;
  delete mp_s_axi_concat_rid;
  delete mp_s_axi_concat_rlast;
  delete mp_s_axi_concat_rresp;
  delete mp_s_axi_concat_rvalid;
  delete mp_s_axi_concat_wready;
  delete mp_s_axi_split_araddr;
  delete mp_s_axi_split_arburst;
  delete mp_s_axi_split_arcache;
  delete mp_s_axi_split_arid;
  delete mp_s_axi_split_arlen;
  delete mp_s_axi_split_arlock;
  delete mp_s_axi_split_arprot;
  delete mp_s_axi_split_arqos;
  delete mp_s_axi_split_arsize;
  delete mp_s_axi_split_arvalid;
  delete mp_s_axi_split_awaddr;
  delete mp_s_axi_split_awburst;
  delete mp_s_axi_split_awcache;
  delete mp_s_axi_split_awid;
  delete mp_s_axi_split_awlen;
  delete mp_s_axi_split_awlock;
  delete mp_s_axi_split_awprot;
  delete mp_s_axi_split_awqos;
  delete mp_s_axi_split_awsize;
  delete mp_s_axi_split_awuser;
  delete mp_s_axi_split_awvalid;
  delete mp_s_axi_split_bready;
  delete mp_s_axi_split_rready;
  delete mp_s_axi_split_wdata;
  delete mp_s_axi_split_wlast;
  delete mp_s_axi_split_wstrb;
  delete mp_s_axi_split_wvalid;
}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(design_1_axi_crossbar_0_1);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(design_1_axi_crossbar_0_1);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(design_1_axi_crossbar_0_1);
SC_REGISTER_BV(512);
#endif

