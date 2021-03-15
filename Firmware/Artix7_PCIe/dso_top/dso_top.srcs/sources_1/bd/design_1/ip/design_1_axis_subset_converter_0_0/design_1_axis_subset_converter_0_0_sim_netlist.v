// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Mar 15 11:10:08 2021
// Host        : DESKTOP-J72MK93 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_axis_subset_converter_0_0 -prefix
//               design_1_axis_subset_converter_0_0_ design_1_axis_subset_converter_0_0_sim_netlist.v
// Design      : design_1_axis_subset_converter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_axis_subset_converter_0_0_axis_subset_converter_v1_1_21_core
   (m_axis_tlast,
    aclk,
    aresetn,
    s_axis_tvalid,
    m_axis_tready,
    aclken);
  output m_axis_tlast;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  input m_axis_tready;
  input aclken;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire clear;
  wire \gen_pulsed_tlast_cntr.pulsed_tlast_cntr ;
  wire \gen_pulsed_tlast_cntr.pulsed_tlast_cntr[6]_i_2_n_0 ;
  wire \gen_pulsed_tlast_cntr.pulsed_tlast_cntr[7]_i_4_n_0 ;
  wire [7:0]\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns ;
  wire [7:0]\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg ;
  wire m_axis_tlast;
  wire m_axis_tlast_INST_0_i_1_n_0;
  wire m_axis_tready;
  wire s_axis_tvalid;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr[0]_i_1 
       (.I0(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [0]),
        .O(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr[1]_i_1 
       (.I0(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [0]),
        .I1(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [1]),
        .O(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr[2]_i_1 
       (.I0(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [2]),
        .I1(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [0]),
        .I2(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [1]),
        .O(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr[3]_i_1 
       (.I0(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [3]),
        .I1(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [0]),
        .I2(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [1]),
        .I3(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [2]),
        .O(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr[4]_i_1 
       (.I0(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [4]),
        .I1(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [2]),
        .I2(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [1]),
        .I3(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [0]),
        .I4(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [3]),
        .O(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr[5]_i_1 
       (.I0(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [5]),
        .I1(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [3]),
        .I2(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [0]),
        .I3(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [1]),
        .I4(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [2]),
        .I5(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [4]),
        .O(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr[6]_i_1 
       (.I0(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [6]),
        .I1(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [4]),
        .I2(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [2]),
        .I3(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr[6]_i_2_n_0 ),
        .I4(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [3]),
        .I5(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [5]),
        .O(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr[6]_i_2 
       (.I0(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [1]),
        .I1(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [0]),
        .O(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr[6]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr[7]_i_1 
       (.I0(aresetn),
        .O(clear));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr[7]_i_2 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .I2(aclken),
        .O(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hB8CC)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr[7]_i_3 
       (.I0(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr[7]_i_4_n_0 ),
        .I1(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [7]),
        .I2(m_axis_tlast_INST_0_i_1_n_0),
        .I3(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [6]),
        .O(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr[7]_i_4 
       (.I0(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [4]),
        .I1(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [2]),
        .I2(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [0]),
        .I3(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [1]),
        .I4(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [3]),
        .I5(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [5]),
        .O(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg[0] 
       (.C(aclk),
        .CE(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr ),
        .D(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [0]),
        .Q(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg[1] 
       (.C(aclk),
        .CE(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr ),
        .D(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [1]),
        .Q(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg[2] 
       (.C(aclk),
        .CE(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr ),
        .D(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [2]),
        .Q(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg[3] 
       (.C(aclk),
        .CE(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr ),
        .D(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [3]),
        .Q(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg[4] 
       (.C(aclk),
        .CE(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr ),
        .D(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [4]),
        .Q(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg[5] 
       (.C(aclk),
        .CE(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr ),
        .D(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [5]),
        .Q(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg[6] 
       (.C(aclk),
        .CE(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr ),
        .D(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [6]),
        .Q(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg[7] 
       (.C(aclk),
        .CE(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr ),
        .D(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_ns [7]),
        .Q(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [7]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    m_axis_tlast_INST_0
       (.I0(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [6]),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .I2(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [7]),
        .O(m_axis_tlast));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    m_axis_tlast_INST_0_i_1
       (.I0(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [4]),
        .I1(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [2]),
        .I2(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [1]),
        .I3(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [0]),
        .I4(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [3]),
        .I5(\gen_pulsed_tlast_cntr.pulsed_tlast_cntr_reg [5]),
        .O(m_axis_tlast_INST_0_i_1_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axis_subset_converter_0_0,top_design_1_axis_subset_converter_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "top_design_1_axis_subset_converter_0_0,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_axis_subset_converter_0_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [127:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [15:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;

  wire aclk;
  wire aresetn;
  wire [127:0]m_axis_tdata;
  wire [15:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [127:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire NLW_inst_sparse_tkeep_removed_UNCONNECTED;
  wire NLW_inst_transfer_dropped_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [15:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  (* C_DEFAULT_TLAST = "256" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_M_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) 
  (* C_M_AXIS_TDATA_WIDTH = "128" *) 
  (* C_M_AXIS_TDEST_WIDTH = "1" *) 
  (* C_M_AXIS_TID_WIDTH = "1" *) 
  (* C_M_AXIS_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_SIGNAL_SET = "32'b00000000000000000000000000000011" *) 
  (* C_S_AXIS_TDATA_WIDTH = "128" *) 
  (* C_S_AXIS_TDEST_WIDTH = "1" *) 
  (* C_S_AXIS_TID_WIDTH = "1" *) 
  (* C_S_AXIS_TUSER_WIDTH = "1" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0 inst
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[15:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(1'b1),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sparse_tkeep_removed(NLW_inst_sparse_tkeep_removed_UNCONNECTED),
        .transfer_dropped(NLW_inst_transfer_dropped_UNCONNECTED));
endmodule

(* C_DEFAULT_TLAST = "256" *) (* C_FAMILY = "artix7" *) (* C_M_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) 
(* C_M_AXIS_TDATA_WIDTH = "128" *) (* C_M_AXIS_TDEST_WIDTH = "1" *) (* C_M_AXIS_TID_WIDTH = "1" *) 
(* C_M_AXIS_TUSER_WIDTH = "1" *) (* C_S_AXIS_SIGNAL_SET = "32'b00000000000000000000000000000011" *) (* C_S_AXIS_TDATA_WIDTH = "128" *) 
(* C_S_AXIS_TDEST_WIDTH = "1" *) (* C_S_AXIS_TID_WIDTH = "1" *) (* C_S_AXIS_TUSER_WIDTH = "1" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) 
module design_1_axis_subset_converter_0_0_top_design_1_axis_subset_converter_0_0
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    transfer_dropped,
    sparse_tkeep_removed);
  input aclk;
  input aresetn;
  input aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tstrb;
  input [15:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tstrb;
  output [15:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output transfer_dropped;
  output sparse_tkeep_removed;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [127:0]s_axis_tdata;
  wire s_axis_tvalid;

  assign m_axis_tdata[127:0] = s_axis_tdata;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[15] = \<const1> ;
  assign m_axis_tkeep[14] = \<const1> ;
  assign m_axis_tkeep[13] = \<const1> ;
  assign m_axis_tkeep[12] = \<const1> ;
  assign m_axis_tkeep[11] = \<const1> ;
  assign m_axis_tkeep[10] = \<const1> ;
  assign m_axis_tkeep[9] = \<const1> ;
  assign m_axis_tkeep[8] = \<const1> ;
  assign m_axis_tkeep[7] = \<const1> ;
  assign m_axis_tkeep[6] = \<const1> ;
  assign m_axis_tkeep[5] = \<const1> ;
  assign m_axis_tkeep[4] = \<const1> ;
  assign m_axis_tkeep[3] = \<const1> ;
  assign m_axis_tkeep[2] = \<const1> ;
  assign m_axis_tkeep[1] = \<const1> ;
  assign m_axis_tkeep[0] = \<const1> ;
  assign m_axis_tstrb[15] = \<const0> ;
  assign m_axis_tstrb[14] = \<const0> ;
  assign m_axis_tstrb[13] = \<const0> ;
  assign m_axis_tstrb[12] = \<const0> ;
  assign m_axis_tstrb[11] = \<const0> ;
  assign m_axis_tstrb[10] = \<const0> ;
  assign m_axis_tstrb[9] = \<const0> ;
  assign m_axis_tstrb[8] = \<const0> ;
  assign m_axis_tstrb[7] = \<const0> ;
  assign m_axis_tstrb[6] = \<const0> ;
  assign m_axis_tstrb[5] = \<const0> ;
  assign m_axis_tstrb[4] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  assign sparse_tkeep_removed = \<const0> ;
  assign transfer_dropped = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_axis_subset_converter_0_0_axis_subset_converter_v1_1_21_core axis_subset_converter_v1_1_21_core
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
