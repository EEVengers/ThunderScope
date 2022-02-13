// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
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

#include "axi_dwidth_converter.h"

#include <map>
#include <string>

design_1_axi_dwidth_converter_0_0_sc::design_1_axi_dwidth_converter_0_0_sc(const sc_core::sc_module_name& nm) : sc_core::sc_module(nm), mp_impl(NULL)
{
  // configure connectivity manager
  xsc::utils::xsc_sim_manager::addInstance("design_1_axi_dwidth_converter_0_0", this);

  // initialize module
    xsc::common_cpp::properties model_param_props;
    model_param_props.addLong("C_AXI_PROTOCOL", "0");
    model_param_props.addLong("C_S_AXI_ID_WIDTH", "2");
    model_param_props.addLong("C_SUPPORTS_ID", "1");
    model_param_props.addLong("C_AXI_ADDR_WIDTH", "32");
    model_param_props.addLong("C_S_AXI_DATA_WIDTH", "128");
    model_param_props.addLong("C_M_AXI_DATA_WIDTH", "256");
    model_param_props.addLong("C_AXI_SUPPORTS_WRITE", "0");
    model_param_props.addLong("C_AXI_SUPPORTS_READ", "1");
    model_param_props.addLong("C_FIFO_MODE", "0");
    model_param_props.addLong("C_S_AXI_ACLK_RATIO", "1");
    model_param_props.addLong("C_M_AXI_ACLK_RATIO", "2");
    model_param_props.addLong("C_AXI_IS_ACLK_ASYNC", "0");
    model_param_props.addLong("C_MAX_SPLIT_BEATS", "16");
    model_param_props.addLong("C_PACKING_LEVEL", "1");
    model_param_props.addLong("C_SYNCHRONIZER_STAGE", "3");
    model_param_props.addString("C_FAMILY", "artix7");

  mp_impl = new axi_dwidth_converter("inst", model_param_props);

  // initialize sockets
  target_rd_socket = mp_impl->target_rd_socket;
  target_wr_socket = mp_impl->target_wr_socket;
  initiator_rd_socket = mp_impl->initiator_rd_socket;
  initiator_wr_socket = mp_impl->initiator_wr_socket;
}

design_1_axi_dwidth_converter_0_0_sc::~design_1_axi_dwidth_converter_0_0_sc()
{
  xsc::utils::xsc_sim_manager::clean();

  delete mp_impl;
}

