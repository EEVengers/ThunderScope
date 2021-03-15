-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Mon Mar 15 11:10:28 2021
-- Host        : DESKTOP-J72MK93 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_axi_datamover_0_0 -prefix
--               design_1_axi_datamover_0_0_ design_1_axi_datamover_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_datamover_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_axi_datamover_pcc is
  port (
    sig_mmap_reset_reg : out STD_LOGIC;
    sig_sm_halt_reg : out STD_LOGIC;
    sig_input_reg_empty : out STD_LOGIC;
    sig_mstr2addr_burst : out STD_LOGIC_VECTOR ( 0 to 0 );
    \in\ : out STD_LOGIC_VECTOR ( 47 downto 0 );
    sig_calc_error_pushed : out STD_LOGIC;
    sig_mstr2data_cmd_valid : out STD_LOGIC;
    sig_mstr2addr_cmd_valid : out STD_LOGIC;
    sig_sm_halt_reg_reg_0 : out STD_LOGIC;
    s2mm_err : out STD_LOGIC;
    \sig_addr_cntr_im0_msh_reg[15]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sig_calc_error_pushed_reg_0 : out STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 53 downto 0 );
    sig_stream_rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_ld_xfer_reg_tmp_reg_0 : in STD_LOGIC;
    sig_cmd2addr_valid_reg_0 : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    sig_inhibit_rdy_n_0 : in STD_LOGIC;
    sig_cmd2data_valid_reg_0 : in STD_LOGIC;
    sig_data2all_tlast_error : in STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_axi_datamover_0_0_axi_datamover_pcc;

architecture STRUCTURE of design_1_axi_datamover_0_0_axi_datamover_pcc is
  signal \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \I_STRT_STRB_GEN/lsig_end_addr_us__37\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \I_STRT_STRB_GEN/lsig_end_vect\ : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \I_STRT_STRB_GEN/lsig_start_vect\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_addr_aligned_im0 : STD_LOGIC;
  signal sig_addr_aligned_ireg1 : STD_LOGIC;
  signal sig_addr_aligned_ireg1_i_2_n_0 : STD_LOGIC;
  signal sig_addr_aligned_ireg1_i_3_n_0 : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[0]_i_3_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[0]_i_4_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[0]_i_5_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[0]_i_6_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[0]_i_7_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[12]_i_2_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[12]_i_3_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[12]_i_4_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[12]_i_5_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[4]_i_2_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[4]_i_3_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[4]_i_4_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[4]_i_5_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[8]_i_2_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[8]_i_3_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[8]_i_4_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh[8]_i_5_n_0\ : STD_LOGIC;
  signal sig_addr_cntr_im0_msh_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sig_addr_cntr_im0_msh_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal sig_addr_cntr_incr_ireg2 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[10]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[11]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[12]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[5]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[6]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_incr_ireg2[9]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0[15]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[0]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[10]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[11]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[12]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[13]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[14]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[1]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[2]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[3]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[4]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[5]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[6]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[7]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[8]\ : STD_LOGIC;
  signal \sig_addr_cntr_lsh_im0_reg_n_0_[9]\ : STD_LOGIC;
  signal sig_addr_cntr_lsh_kh : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sig_adjusted_addr_incr_im1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \sig_adjusted_addr_incr_ireg2[11]_i_2_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[11]_i_3_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[11]_i_4_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[11]_i_5_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[3]_i_2_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[3]_i_3_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[3]_i_4_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[3]_i_5_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[3]_i_6_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[3]_i_7_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[3]_i_8_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[3]_i_9_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_2_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_3_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_4_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2[7]_i_5_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \sig_adjusted_addr_incr_ireg2_reg_n_0_[9]\ : STD_LOGIC;
  signal sig_brst_cnt_eq_one_im0 : STD_LOGIC;
  signal sig_brst_cnt_eq_one_ireg1 : STD_LOGIC;
  signal sig_brst_cnt_eq_zero_im0 : STD_LOGIC;
  signal sig_brst_cnt_eq_zero_ireg1 : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_7_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_8_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[11]_i_9_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[15]_i_7_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_7_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_8_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[3]_i_9_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_7_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_8_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0[7]_i_9_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[0]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[10]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[11]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[12]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[13]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[14]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[15]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[1]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[2]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[3]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[4]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[5]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[6]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[7]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[8]\ : STD_LOGIC;
  signal \sig_btt_cntr_im0_reg_n_0_[9]\ : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01 : STD_LOGIC;
  signal \sig_btt_eq_b2mbaa_im01_carry__0_i_1_n_0\ : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_i_1_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_i_2_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_i_3_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_i_4_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_n_1 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_n_2 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_im01_carry_n_3 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa_ireg1 : STD_LOGIC;
  signal sig_btt_is_zero : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01 : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa_im01_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa_im01_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa_im01_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa_im01_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa_im01_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa_im01_carry__0_n_2\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa_im01_carry__0_n_3\ : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_1_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_2_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_3_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_4_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_5_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_6_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_7_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_i_8_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_n_1 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_n_2 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_im01_carry_n_3 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa_ireg1 : STD_LOGIC;
  signal \sig_byte_change_minus1_im2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sig_byte_change_minus1_im2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sig_byte_change_minus1_im2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sig_byte_change_minus1_im2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sig_byte_change_minus1_im2_carry__0_n_0\ : STD_LOGIC;
  signal \sig_byte_change_minus1_im2_carry__0_n_1\ : STD_LOGIC;
  signal \sig_byte_change_minus1_im2_carry__0_n_2\ : STD_LOGIC;
  signal \sig_byte_change_minus1_im2_carry__0_n_3\ : STD_LOGIC;
  signal \sig_byte_change_minus1_im2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sig_byte_change_minus1_im2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sig_byte_change_minus1_im2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sig_byte_change_minus1_im2_carry__1_n_2\ : STD_LOGIC;
  signal \sig_byte_change_minus1_im2_carry__1_n_3\ : STD_LOGIC;
  signal sig_byte_change_minus1_im2_carry_i_1_n_0 : STD_LOGIC;
  signal sig_byte_change_minus1_im2_carry_i_2_n_0 : STD_LOGIC;
  signal sig_byte_change_minus1_im2_carry_i_3_n_0 : STD_LOGIC;
  signal sig_byte_change_minus1_im2_carry_i_4_n_0 : STD_LOGIC;
  signal sig_byte_change_minus1_im2_carry_n_0 : STD_LOGIC;
  signal sig_byte_change_minus1_im2_carry_n_1 : STD_LOGIC;
  signal sig_byte_change_minus1_im2_carry_n_2 : STD_LOGIC;
  signal sig_byte_change_minus1_im2_carry_n_3 : STD_LOGIC;
  signal sig_bytes_to_mbaa_im0 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal sig_bytes_to_mbaa_ireg1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \sig_bytes_to_mbaa_ireg1[12]_i_2_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[12]_i_3_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[12]_i_4_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[4]_i_2_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[4]_i_3_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[4]_i_4_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[4]_i_5_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[4]_i_6_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[8]_i_2_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[8]_i_3_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[8]_i_4_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1[8]_i_5_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \^sig_calc_error_pushed\ : STD_LOGIC;
  signal sig_calc_error_pushed_i_1_n_0 : STD_LOGIC;
  signal sig_calc_error_reg0 : STD_LOGIC;
  signal sig_calc_error_reg_i_1_n_0 : STD_LOGIC;
  signal sig_calc_error_reg_i_3_n_0 : STD_LOGIC;
  signal sig_calc_error_reg_i_4_n_0 : STD_LOGIC;
  signal sig_cmd2addr_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2data_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2dre_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2dre_valid_reg_n_0 : STD_LOGIC;
  signal sig_finish_addr_offset_im1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_finish_addr_offset_ireg2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sig_finish_addr_offset_ireg2[3]_i_2_n_0\ : STD_LOGIC;
  signal sig_first_xfer_im0 : STD_LOGIC;
  signal sig_first_xfer_im0_i_1_n_0 : STD_LOGIC;
  signal sig_input_cache_type_reg0 : STD_LOGIC;
  signal sig_input_eof_reg_reg_n_0 : STD_LOGIC;
  signal \^sig_input_reg_empty\ : STD_LOGIC;
  signal sig_last_addr_offset_im2_n_0 : STD_LOGIC;
  signal sig_ld_xfer_reg : STD_LOGIC;
  signal sig_ld_xfer_reg_i_1_n_0 : STD_LOGIC;
  signal sig_ld_xfer_reg_tmp : STD_LOGIC;
  signal sig_ld_xfer_reg_tmp_i_1_n_0 : STD_LOGIC;
  signal \^sig_mmap_reset_reg\ : STD_LOGIC;
  signal \^sig_mstr2addr_burst\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sig_mstr2addr_cmd_valid\ : STD_LOGIC;
  signal \^sig_mstr2data_cmd_valid\ : STD_LOGIC;
  signal sig_no_btt_residue_im0 : STD_LOGIC;
  signal sig_no_btt_residue_ireg1 : STD_LOGIC;
  signal sig_no_btt_residue_ireg1_i_2_n_0 : STD_LOGIC;
  signal sig_no_btt_residue_ireg1_i_3_n_0 : STD_LOGIC;
  signal sig_parent_done : STD_LOGIC;
  signal sig_parent_done_i_1_n_0 : STD_LOGIC;
  signal sig_predict_addr_lsh_im2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_predict_addr_lsh_ireg3 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \sig_predict_addr_lsh_ireg3[11]_i_2_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[11]_i_3_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[11]_i_4_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[11]_i_5_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[15]_i_2_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[3]_i_2_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[3]_i_3_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[3]_i_4_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[3]_i_5_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_2_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_3_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_4_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3[7]_i_5_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3__0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal sig_sm_halt_ns : STD_LOGIC;
  signal \^sig_sm_halt_reg\ : STD_LOGIC;
  signal sig_sm_ld_calc2_reg : STD_LOGIC;
  signal sig_sm_ld_calc2_reg_ns : STD_LOGIC;
  signal sig_sm_ld_xfer_reg_ns : STD_LOGIC;
  signal sig_sm_pop_input_reg : STD_LOGIC;
  signal sig_sm_pop_input_reg_ns : STD_LOGIC;
  signal sig_strbgen_addr_ireg2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_strbgen_bytes_ireg2 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \sig_strbgen_bytes_ireg2[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_strbgen_bytes_ireg2[3]_i_3_n_0\ : STD_LOGIC;
  signal \sig_strbgen_bytes_ireg2[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_strbgen_bytes_ireg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \sig_strbgen_bytes_ireg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \sig_strbgen_bytes_ireg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \sig_strbgen_bytes_ireg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \sig_strbgen_bytes_ireg2_reg_n_0_[4]\ : STD_LOGIC;
  signal sig_xfer_end_strb_ireg3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sig_xfer_end_strb_ireg3[10]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[11]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[12]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[13]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[14]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[5]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[6]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_end_strb_ireg3[9]_i_1_n_0\ : STD_LOGIC;
  signal sig_xfer_len_eq_0_im2 : STD_LOGIC;
  signal sig_xfer_len_eq_0_ireg3 : STD_LOGIC;
  signal sig_xfer_len_eq_0_ireg3_i_2_n_0 : STD_LOGIC;
  signal sig_xfer_reg_empty : STD_LOGIC;
  signal sig_xfer_reg_empty_i_1_n_0 : STD_LOGIC;
  signal sig_xfer_strt_strb_im2 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal sig_xfer_strt_strb_ireg3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sig_xfer_strt_strb_ireg3[10]_i_2_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[12]_i_2_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[13]_i_2_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[14]_i_2_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_2_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_3_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_4_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_5_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_6_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_7_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_8_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[15]_i_9_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[4]_i_2_n_0\ : STD_LOGIC;
  signal \sig_xfer_strt_strb_ireg3[8]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_sig_addr_cntr_im0_msh_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_adjusted_addr_incr_ireg2_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_btt_cntr_im0_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sig_btt_eq_b2mbaa_im01_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sig_btt_eq_b2mbaa_im01_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sig_btt_eq_b2mbaa_im01_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sig_btt_lt_b2mbaa_im01_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_btt_lt_b2mbaa_im01_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sig_byte_change_minus1_im2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sig_byte_change_minus1_im2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sig_byte_change_minus1_im2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_bytes_to_mbaa_ireg1_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_sig_bytes_to_mbaa_ireg1_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_sig_pcc_sm_state[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_onehot_sig_pcc_sm_state[5]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \FSM_onehot_sig_pcc_sm_state[6]_i_1\ : label is "soft_lutpair48";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[0]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[1]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[2]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[4]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[5]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[6]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sig_pcc_sm_state_reg[7]\ : label is "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[1]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[2]_i_2__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][10]_srl4_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][11]_srl4_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][12]_srl4_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][13]_srl4_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][14]_srl4_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][15]_srl4_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][16]_srl4_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][17]_srl4_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][18]_srl4_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][19]_srl4_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][1]_srl4_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][20]_srl4_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][21]_srl4_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][22]_srl4_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][23]_srl4_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][23]_srl4_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][24]_srl4_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][24]_srl4_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][25]_srl4_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][25]_srl4_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][26]_srl4_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][26]_srl4_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][27]_srl4_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][27]_srl4_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][28]_srl4_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][28]_srl4_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][29]_srl4_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][29]_srl4_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][30]_srl4_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][30]_srl4_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][31]_srl4_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][31]_srl4_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][32]_srl4_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][32]_srl4_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][33]_srl4_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][33]_srl4_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][34]_srl4_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][34]_srl4_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][35]_srl4_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][35]_srl4_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][36]_srl4_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][36]_srl4_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][37]_srl4_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][38]_srl4_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][39]_srl4_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][40]_srl4_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][41]_srl4_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][42]_srl4_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][43]_srl4_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][44]_srl4_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][45]_srl4_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][46]_srl4_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][47]_srl4_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][48]_srl4_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][49]_srl4_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][50]_srl4_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][51]_srl4_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][52]_srl4_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][53]_srl4_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][54]_srl4_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][5]_srl4_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][6]_srl4_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][7]_srl4_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][8]_srl4_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[3][9]_srl4_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[22]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[24]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[25]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[26]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[27]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[28]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[29]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[30]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[5]_INST_0\ : label is "soft_lutpair47";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sig_addr_cntr_im0_msh_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_addr_cntr_im0_msh_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_addr_cntr_im0_msh_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sig_addr_cntr_im0_msh_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \sig_addr_cntr_incr_ireg2[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sig_addr_cntr_incr_ireg2[12]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sig_addr_cntr_incr_ireg2[5]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of sig_brst_cnt_eq_one_ireg1_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of sig_brst_cnt_eq_zero_ireg1_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of sig_btt_eq_b2mbaa_ireg1_i_1 : label is "soft_lutpair8";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of sig_btt_lt_b2mbaa_im01_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \sig_btt_lt_b2mbaa_im01_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of sig_btt_lt_b2mbaa_ireg1_i_1 : label is "soft_lutpair9";
  attribute ADDER_THRESHOLD of sig_byte_change_minus1_im2_carry : label is 35;
  attribute ADDER_THRESHOLD of \sig_byte_change_minus1_im2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sig_byte_change_minus1_im2_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of sig_calc_error_pushed_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sig_finish_addr_offset_ireg2[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sig_finish_addr_offset_ireg2[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sig_finish_addr_offset_ireg2[3]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of sig_last_addr_offset_im2 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of sig_ld_xfer_reg_i_1 : label is "soft_lutpair36";
  attribute ADDER_THRESHOLD of \sig_predict_addr_lsh_ireg3_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sig_predict_addr_lsh_ireg3_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sig_predict_addr_lsh_ireg3_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sig_predict_addr_lsh_ireg3_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of sig_sm_pop_input_reg_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[10]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[11]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[13]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[14]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[15]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[2]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[3]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[4]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[5]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[6]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \sig_xfer_end_strb_ireg3[9]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of sig_xfer_len_eq_0_ireg3_i_2 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of sig_xfer_reg_empty_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[10]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[11]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[11]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[12]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[14]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[15]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[15]_i_5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[15]_i_6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[15]_i_8\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[15]_i_9\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sig_xfer_strt_strb_ireg3[4]_i_1\ : label is "soft_lutpair28";
begin
  \in\(47 downto 0) <= \^in\(47 downto 0);
  sig_calc_error_pushed <= \^sig_calc_error_pushed\;
  sig_input_reg_empty <= \^sig_input_reg_empty\;
  sig_mmap_reset_reg <= \^sig_mmap_reset_reg\;
  sig_mstr2addr_burst(0) <= \^sig_mstr2addr_burst\(0);
  sig_mstr2addr_cmd_valid <= \^sig_mstr2addr_cmd_valid\;
  sig_mstr2data_cmd_valid <= \^sig_mstr2data_cmd_valid\;
  sig_sm_halt_reg <= \^sig_sm_halt_reg\;
\FSM_onehot_sig_pcc_sm_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4444F444"
    )
        port map (
      I0 => sig_calc_error_reg0,
      I1 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      I3 => sig_parent_done,
      I4 => \^sig_calc_error_pushed\,
      I5 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\,
      O => \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888F88"
    )
        port map (
      I0 => sig_calc_error_reg0,
      I1 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\,
      I2 => sig_parent_done,
      I3 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      I4 => \^sig_calc_error_pushed\,
      O => \FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => sig_sm_ld_xfer_reg_ns,
      I1 => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\,
      I2 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\,
      O => \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\,
      O => \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D08DDD80D080D08"
    )
        port map (
      I0 => \^sig_mstr2data_cmd_valid\,
      I1 => sig_ld_xfer_reg_tmp_reg_0,
      I2 => \^sig_mstr2addr_cmd_valid\,
      I3 => sig_cmd2dre_valid_reg_n_0,
      I4 => sig_cmd2addr_valid_reg_0,
      I5 => sig_inhibit_rdy_n,
      O => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\
    );
\FSM_onehot_sig_pcc_sm_state[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      I2 => \^sig_calc_error_pushed\,
      O => \FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0\
    );
\FSM_onehot_sig_pcc_sm_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => '0',
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\,
      S => \^sig_mmap_reset_reg\
    );
\FSM_onehot_sig_pcc_sm_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1]\,
      R => \^sig_mmap_reset_reg\
    );
\FSM_onehot_sig_pcc_sm_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[2]_i_1_n_0\,
      Q => sig_sm_ld_calc2_reg_ns,
      R => \^sig_mmap_reset_reg\
    );
\FSM_onehot_sig_pcc_sm_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_sm_ld_calc2_reg,
      Q => sig_sm_ld_xfer_reg_ns,
      R => \^sig_mmap_reset_reg\
    );
\FSM_onehot_sig_pcc_sm_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5]\,
      R => \^sig_mmap_reset_reg\
    );
\FSM_onehot_sig_pcc_sm_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      R => \^sig_mmap_reset_reg\
    );
\FSM_onehot_sig_pcc_sm_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0\,
      Q => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7]\,
      R => \^sig_mmap_reset_reg\
    );
\INFERRED_GEN.cnt_i[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^sig_sm_halt_reg\,
      I1 => \^sig_input_reg_empty\,
      I2 => \^sig_calc_error_pushed\,
      I3 => Q(0),
      O => sig_sm_halt_reg_reg_0
    );
\INFERRED_GEN.cnt_i[2]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^sig_calc_error_pushed\,
      I1 => \^sig_input_reg_empty\,
      I2 => \^sig_sm_halt_reg\,
      O => sig_calc_error_pushed_reg_0
    );
\INFERRED_GEN.data_reg[3][10]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(10),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(10),
      I4 => \^in\(45),
      O => \^in\(38)
    );
\INFERRED_GEN.data_reg[3][11]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(9),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(9),
      I4 => \^in\(45),
      O => \^in\(37)
    );
\INFERRED_GEN.data_reg[3][12]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(8),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(8),
      I4 => \^in\(45),
      O => \^in\(36)
    );
\INFERRED_GEN.data_reg[3][13]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(7),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(7),
      I4 => \^in\(45),
      O => \^in\(35)
    );
\INFERRED_GEN.data_reg[3][14]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(6),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(6),
      I4 => \^in\(45),
      O => \^in\(34)
    );
\INFERRED_GEN.data_reg[3][15]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(5),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(5),
      I4 => \^in\(45),
      O => \^in\(33)
    );
\INFERRED_GEN.data_reg[3][16]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(4),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(4),
      I4 => \^in\(45),
      O => \^in\(32)
    );
\INFERRED_GEN.data_reg[3][17]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(3),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(3),
      I4 => \^in\(45),
      O => \^in\(31)
    );
\INFERRED_GEN.data_reg[3][18]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(2),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(2),
      I4 => \^in\(45),
      O => \^in\(30)
    );
\INFERRED_GEN.data_reg[3][19]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(1),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(1),
      I4 => \^in\(45),
      O => \^in\(29)
    );
\INFERRED_GEN.data_reg[3][1]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^in\(47),
      I1 => \^in\(45),
      O => \^in\(46)
    );
\INFERRED_GEN.data_reg[3][20]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(0),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(0),
      I4 => \^in\(45),
      O => \^in\(28)
    );
\INFERRED_GEN.data_reg[3][21]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(15),
      I1 => sig_first_xfer_im0,
      O => \^in\(27)
    );
\INFERRED_GEN.data_reg[3][22]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(14),
      I1 => sig_first_xfer_im0,
      O => \^in\(26)
    );
\INFERRED_GEN.data_reg[3][23]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(13),
      I1 => sig_first_xfer_im0,
      O => \^in\(25)
    );
\INFERRED_GEN.data_reg[3][23]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(15),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(31),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(31)
    );
\INFERRED_GEN.data_reg[3][24]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(12),
      I1 => sig_first_xfer_im0,
      O => \^in\(24)
    );
\INFERRED_GEN.data_reg[3][24]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(14),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(30),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(30)
    );
\INFERRED_GEN.data_reg[3][25]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(11),
      I1 => sig_first_xfer_im0,
      O => \^in\(23)
    );
\INFERRED_GEN.data_reg[3][25]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(13),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(29),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(29)
    );
\INFERRED_GEN.data_reg[3][26]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(10),
      I1 => sig_first_xfer_im0,
      O => \^in\(22)
    );
\INFERRED_GEN.data_reg[3][26]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(12),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(28),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(28)
    );
\INFERRED_GEN.data_reg[3][27]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(9),
      I1 => sig_first_xfer_im0,
      O => \^in\(21)
    );
\INFERRED_GEN.data_reg[3][27]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(11),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(27),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(27)
    );
\INFERRED_GEN.data_reg[3][28]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(8),
      I1 => sig_first_xfer_im0,
      O => \^in\(20)
    );
\INFERRED_GEN.data_reg[3][28]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(10),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(26),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(26)
    );
\INFERRED_GEN.data_reg[3][29]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(7),
      I1 => sig_first_xfer_im0,
      O => \^in\(19)
    );
\INFERRED_GEN.data_reg[3][29]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(9),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(25),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(25)
    );
\INFERRED_GEN.data_reg[3][2]_srl4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF57575757"
    )
        port map (
      I0 => sig_brst_cnt_eq_zero_ireg1,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_btt_eq_b2mbaa_ireg1,
      I3 => sig_addr_aligned_ireg1,
      I4 => sig_brst_cnt_eq_one_ireg1,
      I5 => sig_no_btt_residue_ireg1,
      O => \^in\(45)
    );
\INFERRED_GEN.data_reg[3][30]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(6),
      I1 => sig_first_xfer_im0,
      O => \^in\(18)
    );
\INFERRED_GEN.data_reg[3][30]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(8),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(24),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(24)
    );
\INFERRED_GEN.data_reg[3][31]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(5),
      I1 => sig_first_xfer_im0,
      O => \^in\(17)
    );
\INFERRED_GEN.data_reg[3][31]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(7),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(23),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(23)
    );
\INFERRED_GEN.data_reg[3][32]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(4),
      I1 => sig_first_xfer_im0,
      O => \^in\(16)
    );
\INFERRED_GEN.data_reg[3][32]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(6),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(22),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(22)
    );
\INFERRED_GEN.data_reg[3][33]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(3),
      I1 => sig_first_xfer_im0,
      O => \^in\(15)
    );
\INFERRED_GEN.data_reg[3][33]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(5),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(21),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(21)
    );
\INFERRED_GEN.data_reg[3][34]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(2),
      I1 => sig_first_xfer_im0,
      O => \^in\(14)
    );
\INFERRED_GEN.data_reg[3][34]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(4),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(20),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(20)
    );
\INFERRED_GEN.data_reg[3][35]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(1),
      I1 => sig_first_xfer_im0,
      O => \^in\(13)
    );
\INFERRED_GEN.data_reg[3][35]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(3),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(19),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(19)
    );
\INFERRED_GEN.data_reg[3][36]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(0),
      I1 => sig_first_xfer_im0,
      O => \^in\(12)
    );
\INFERRED_GEN.data_reg[3][36]_srl4_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(2),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(18),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(18)
    );
\INFERRED_GEN.data_reg[3][37]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(1),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(17),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(17)
    );
\INFERRED_GEN.data_reg[3][38]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(0),
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(16),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(16)
    );
\INFERRED_GEN.data_reg[3][39]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(15),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(15)
    );
\INFERRED_GEN.data_reg[3][3]_srl4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_input_eof_reg_reg_n_0,
      I1 => \^in\(45),
      O => \^in\(44)
    );
\INFERRED_GEN.data_reg[3][40]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[14]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(14),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(14)
    );
\INFERRED_GEN.data_reg[3][41]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[13]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(13),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(13)
    );
\INFERRED_GEN.data_reg[3][42]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[12]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(12),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(12)
    );
\INFERRED_GEN.data_reg[3][43]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(11),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(11)
    );
\INFERRED_GEN.data_reg[3][44]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(10),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(10)
    );
\INFERRED_GEN.data_reg[3][45]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(9),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(9)
    );
\INFERRED_GEN.data_reg[3][46]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(8),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(8)
    );
\INFERRED_GEN.data_reg[3][47]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(7),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(7)
    );
\INFERRED_GEN.data_reg[3][48]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(6),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(6)
    );
\INFERRED_GEN.data_reg[3][49]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(5),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(5)
    );
\INFERRED_GEN.data_reg[3][50]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(4),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(4)
    );
\INFERRED_GEN.data_reg[3][51]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(3),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(3)
    );
\INFERRED_GEN.data_reg[3][52]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(2),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(2)
    );
\INFERRED_GEN.data_reg[3][53]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(1),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(1)
    );
\INFERRED_GEN.data_reg[3][54]_srl4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I1 => \^sig_mstr2addr_burst\(0),
      I2 => sig_addr_cntr_lsh_kh(0),
      O => \sig_addr_cntr_im0_msh_reg[15]_0\(0)
    );
\INFERRED_GEN.data_reg[3][5]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(15),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(15),
      I4 => \^in\(45),
      O => \^in\(43)
    );
\INFERRED_GEN.data_reg[3][6]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(14),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(14),
      I4 => \^in\(45),
      O => \^in\(42)
    );
\INFERRED_GEN.data_reg[3][7]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(13),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(13),
      I4 => \^in\(45),
      O => \^in\(41)
    );
\INFERRED_GEN.data_reg[3][8]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(12),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(12),
      I4 => \^in\(45),
      O => \^in\(40)
    );
\INFERRED_GEN.data_reg[3][9]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF80"
    )
        port map (
      I0 => sig_xfer_strt_strb_ireg3(11),
      I1 => sig_first_xfer_im0,
      I2 => sig_xfer_len_eq_0_ireg3,
      I3 => sig_xfer_end_strb_ireg3(11),
      I4 => \^in\(45),
      O => \^in\(39)
    );
\s2mm_dbg_data[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^in\(4),
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(1)
    );
\s2mm_dbg_data[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^in\(5),
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(2)
    );
\s2mm_dbg_data[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^in\(6),
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(3)
    );
\s2mm_dbg_data[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^in\(7),
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(4)
    );
\s2mm_dbg_data[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^in\(8),
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(5)
    );
\s2mm_dbg_data[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^in\(9),
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(6)
    );
\s2mm_dbg_data[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^in\(10),
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(7)
    );
\s2mm_dbg_data[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^in\(11),
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(8)
    );
\s2mm_dbg_data[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^sig_mstr2data_cmd_valid\,
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(9)
    );
\s2mm_dbg_data[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^sig_sm_halt_reg\,
      I1 => \^sig_input_reg_empty\,
      I2 => \^sig_calc_error_pushed\,
      I3 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(0)
    );
s2mm_err_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^in\(47),
      I1 => sig_data2all_tlast_error,
      O => s2mm_err
    );
sig_addr_aligned_ireg1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      I4 => sig_addr_aligned_ireg1_i_2_n_0,
      I5 => sig_addr_aligned_ireg1_i_3_n_0,
      O => sig_addr_aligned_im0
    );
sig_addr_aligned_ireg1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      O => sig_addr_aligned_ireg1_i_2_n_0
    );
sig_addr_aligned_ireg1_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      O => sig_addr_aligned_ireg1_i_3_n_0
    );
sig_addr_aligned_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_addr_aligned_im0,
      Q => sig_addr_aligned_ireg1,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => sig_calc_error_reg0,
      I1 => sig_predict_addr_lsh_ireg3(15),
      I2 => p_1_in,
      I3 => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\,
      O => \sig_addr_cntr_im0_msh[0]_i_1_n_0\
    );
\sig_addr_cntr_im0_msh[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(34),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(0),
      O => \sig_addr_cntr_im0_msh[0]_i_3_n_0\
    );
\sig_addr_cntr_im0_msh[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(37),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(3),
      O => \sig_addr_cntr_im0_msh[0]_i_4_n_0\
    );
\sig_addr_cntr_im0_msh[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(36),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(2),
      O => \sig_addr_cntr_im0_msh[0]_i_5_n_0\
    );
\sig_addr_cntr_im0_msh[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(35),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(1),
      O => \sig_addr_cntr_im0_msh[0]_i_6_n_0\
    );
\sig_addr_cntr_im0_msh[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555C55"
    )
        port map (
      I0 => sig_addr_cntr_im0_msh_reg(0),
      I1 => \out\(34),
      I2 => Q(0),
      I3 => \^sig_input_reg_empty\,
      I4 => \^sig_sm_halt_reg\,
      I5 => \^in\(47),
      O => \sig_addr_cntr_im0_msh[0]_i_7_n_0\
    );
\sig_addr_cntr_im0_msh[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(49),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(15),
      O => \sig_addr_cntr_im0_msh[12]_i_2_n_0\
    );
\sig_addr_cntr_im0_msh[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(48),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(14),
      O => \sig_addr_cntr_im0_msh[12]_i_3_n_0\
    );
\sig_addr_cntr_im0_msh[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(47),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(13),
      O => \sig_addr_cntr_im0_msh[12]_i_4_n_0\
    );
\sig_addr_cntr_im0_msh[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(46),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(12),
      O => \sig_addr_cntr_im0_msh[12]_i_5_n_0\
    );
\sig_addr_cntr_im0_msh[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(41),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(7),
      O => \sig_addr_cntr_im0_msh[4]_i_2_n_0\
    );
\sig_addr_cntr_im0_msh[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(40),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(6),
      O => \sig_addr_cntr_im0_msh[4]_i_3_n_0\
    );
\sig_addr_cntr_im0_msh[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(39),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(5),
      O => \sig_addr_cntr_im0_msh[4]_i_4_n_0\
    );
\sig_addr_cntr_im0_msh[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(38),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(4),
      O => \sig_addr_cntr_im0_msh[4]_i_5_n_0\
    );
\sig_addr_cntr_im0_msh[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(45),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(11),
      O => \sig_addr_cntr_im0_msh[8]_i_2_n_0\
    );
\sig_addr_cntr_im0_msh[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(44),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(10),
      O => \sig_addr_cntr_im0_msh[8]_i_3_n_0\
    );
\sig_addr_cntr_im0_msh[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(43),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(9),
      O => \sig_addr_cntr_im0_msh[8]_i_4_n_0\
    );
\sig_addr_cntr_im0_msh[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(42),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_addr_cntr_im0_msh_reg(8),
      O => \sig_addr_cntr_im0_msh[8]_i_5_n_0\
    );
\sig_addr_cntr_im0_msh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_7\,
      Q => sig_addr_cntr_im0_msh_reg(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_0\,
      CO(2) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_1\,
      CO(1) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_2\,
      CO(0) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \sig_addr_cntr_im0_msh[0]_i_3_n_0\,
      O(3) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_4\,
      O(2) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_5\,
      O(1) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_6\,
      O(0) => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_7\,
      S(3) => \sig_addr_cntr_im0_msh[0]_i_4_n_0\,
      S(2) => \sig_addr_cntr_im0_msh[0]_i_5_n_0\,
      S(1) => \sig_addr_cntr_im0_msh[0]_i_6_n_0\,
      S(0) => \sig_addr_cntr_im0_msh[0]_i_7_n_0\
    );
\sig_addr_cntr_im0_msh_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_5\,
      Q => sig_addr_cntr_im0_msh_reg(10),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_4\,
      Q => sig_addr_cntr_im0_msh_reg(11),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_7\,
      Q => sig_addr_cntr_im0_msh_reg(12),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_0\,
      CO(3) => \NLW_sig_addr_cntr_im0_msh_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_1\,
      CO(1) => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_2\,
      CO(0) => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_4\,
      O(2) => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_5\,
      O(1) => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_6\,
      O(0) => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_7\,
      S(3) => \sig_addr_cntr_im0_msh[12]_i_2_n_0\,
      S(2) => \sig_addr_cntr_im0_msh[12]_i_3_n_0\,
      S(1) => \sig_addr_cntr_im0_msh[12]_i_4_n_0\,
      S(0) => \sig_addr_cntr_im0_msh[12]_i_5_n_0\
    );
\sig_addr_cntr_im0_msh_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_6\,
      Q => sig_addr_cntr_im0_msh_reg(13),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_5\,
      Q => sig_addr_cntr_im0_msh_reg(14),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[12]_i_1_n_4\,
      Q => sig_addr_cntr_im0_msh_reg(15),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_6\,
      Q => sig_addr_cntr_im0_msh_reg(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_5\,
      Q => sig_addr_cntr_im0_msh_reg(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_4\,
      Q => sig_addr_cntr_im0_msh_reg(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_7\,
      Q => sig_addr_cntr_im0_msh_reg(4),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_addr_cntr_im0_msh_reg[0]_i_2_n_0\,
      CO(3) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_0\,
      CO(2) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_1\,
      CO(1) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_2\,
      CO(0) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_4\,
      O(2) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_5\,
      O(1) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_6\,
      O(0) => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_7\,
      S(3) => \sig_addr_cntr_im0_msh[4]_i_2_n_0\,
      S(2) => \sig_addr_cntr_im0_msh[4]_i_3_n_0\,
      S(1) => \sig_addr_cntr_im0_msh[4]_i_4_n_0\,
      S(0) => \sig_addr_cntr_im0_msh[4]_i_5_n_0\
    );
\sig_addr_cntr_im0_msh_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_6\,
      Q => sig_addr_cntr_im0_msh_reg(5),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_5\,
      Q => sig_addr_cntr_im0_msh_reg(6),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_4\,
      Q => sig_addr_cntr_im0_msh_reg(7),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_7\,
      Q => sig_addr_cntr_im0_msh_reg(8),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_im0_msh_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_addr_cntr_im0_msh_reg[4]_i_1_n_0\,
      CO(3) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_0\,
      CO(2) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_1\,
      CO(1) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_2\,
      CO(0) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_4\,
      O(2) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_5\,
      O(1) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_6\,
      O(0) => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_7\,
      S(3) => \sig_addr_cntr_im0_msh[8]_i_2_n_0\,
      S(2) => \sig_addr_cntr_im0_msh[8]_i_3_n_0\,
      S(1) => \sig_addr_cntr_im0_msh[8]_i_4_n_0\,
      S(0) => \sig_addr_cntr_im0_msh[8]_i_5_n_0\
    );
\sig_addr_cntr_im0_msh_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_im0_msh[0]_i_1_n_0\,
      D => \sig_addr_cntr_im0_msh_reg[8]_i_1_n_6\,
      Q => sig_addr_cntr_im0_msh_reg(9),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(0),
      O => \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(10),
      O => \sig_addr_cntr_incr_ireg2[10]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(11),
      O => \sig_addr_cntr_incr_ireg2[11]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => sig_first_xfer_im0,
      I1 => sig_bytes_to_mbaa_ireg1(12),
      I2 => sig_btt_lt_b2mbaa_ireg1,
      O => \sig_addr_cntr_incr_ireg2[12]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(1),
      O => \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(2),
      O => \sig_addr_cntr_incr_ireg2[2]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(3),
      O => \sig_addr_cntr_incr_ireg2[3]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(4),
      O => \sig_addr_cntr_incr_ireg2[4]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(5),
      O => \sig_addr_cntr_incr_ireg2[5]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(6),
      O => \sig_addr_cntr_incr_ireg2[6]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(7),
      O => \sig_addr_cntr_incr_ireg2[7]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(8),
      O => \sig_addr_cntr_incr_ireg2[8]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(9),
      O => \sig_addr_cntr_incr_ireg2[9]_i_1_n_0\
    );
\sig_addr_cntr_incr_ireg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[10]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(10),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[11]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(11),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[12]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(12),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[2]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[3]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[4]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(4),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[5]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(5),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[6]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(6),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[7]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(7),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[8]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(8),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_incr_ireg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[9]_i_1_n_0\,
      Q => sig_addr_cntr_incr_ireg2(9),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(18),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => \sig_predict_addr_lsh_ireg3__0\(0),
      O => \p_1_in__0\(0)
    );
\sig_addr_cntr_lsh_im0[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(28),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => \sig_predict_addr_lsh_ireg3__0\(10),
      O => \p_1_in__0\(10)
    );
\sig_addr_cntr_lsh_im0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(29),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => \sig_predict_addr_lsh_ireg3__0\(11),
      O => \p_1_in__0\(11)
    );
\sig_addr_cntr_lsh_im0[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(30),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => \sig_predict_addr_lsh_ireg3__0\(12),
      O => \p_1_in__0\(12)
    );
\sig_addr_cntr_lsh_im0[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(31),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => \sig_predict_addr_lsh_ireg3__0\(13),
      O => \p_1_in__0\(13)
    );
\sig_addr_cntr_lsh_im0[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(32),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => \sig_predict_addr_lsh_ireg3__0\(14),
      O => \p_1_in__0\(14)
    );
\sig_addr_cntr_lsh_im0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0004"
    )
        port map (
      I0 => Q(0),
      I1 => \^sig_input_reg_empty\,
      I2 => \^sig_sm_halt_reg\,
      I3 => \^in\(47),
      I4 => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\,
      O => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\
    );
\sig_addr_cntr_lsh_im0[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(33),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => sig_predict_addr_lsh_ireg3(15),
      O => \p_1_in__0\(15)
    );
\sig_addr_cntr_lsh_im0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(19),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => \sig_predict_addr_lsh_ireg3__0\(1),
      O => \p_1_in__0\(1)
    );
\sig_addr_cntr_lsh_im0[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(20),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => \sig_predict_addr_lsh_ireg3__0\(2),
      O => \p_1_in__0\(2)
    );
\sig_addr_cntr_lsh_im0[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(21),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => \sig_predict_addr_lsh_ireg3__0\(3),
      O => \p_1_in__0\(3)
    );
\sig_addr_cntr_lsh_im0[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(22),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => \sig_predict_addr_lsh_ireg3__0\(4),
      O => \p_1_in__0\(4)
    );
\sig_addr_cntr_lsh_im0[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(23),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => \sig_predict_addr_lsh_ireg3__0\(5),
      O => \p_1_in__0\(5)
    );
\sig_addr_cntr_lsh_im0[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(24),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => \sig_predict_addr_lsh_ireg3__0\(6),
      O => \p_1_in__0\(6)
    );
\sig_addr_cntr_lsh_im0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(25),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => \sig_predict_addr_lsh_ireg3__0\(7),
      O => \p_1_in__0\(7)
    );
\sig_addr_cntr_lsh_im0[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(26),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => \sig_predict_addr_lsh_ireg3__0\(8),
      O => \p_1_in__0\(8)
    );
\sig_addr_cntr_lsh_im0[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \out\(27),
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      I5 => \sig_predict_addr_lsh_ireg3__0\(9),
      O => \p_1_in__0\(9)
    );
\sig_addr_cntr_lsh_im0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(0),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(10),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(11),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(12),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[12]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(13),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[13]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(14),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[14]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(15),
      Q => p_1_in,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(1),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(2),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(3),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(4),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(5),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(6),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(7),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(8),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_im0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \p_1_in__0\(9),
      Q => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(18),
      Q => sig_addr_cntr_lsh_kh(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(28),
      Q => sig_addr_cntr_lsh_kh(10),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(29),
      Q => sig_addr_cntr_lsh_kh(11),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(30),
      Q => sig_addr_cntr_lsh_kh(12),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(31),
      Q => sig_addr_cntr_lsh_kh(13),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(32),
      Q => sig_addr_cntr_lsh_kh(14),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(33),
      Q => sig_addr_cntr_lsh_kh(15),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(34),
      Q => sig_addr_cntr_lsh_kh(16),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(35),
      Q => sig_addr_cntr_lsh_kh(17),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(36),
      Q => sig_addr_cntr_lsh_kh(18),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(37),
      Q => sig_addr_cntr_lsh_kh(19),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(19),
      Q => sig_addr_cntr_lsh_kh(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(38),
      Q => sig_addr_cntr_lsh_kh(20),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(39),
      Q => sig_addr_cntr_lsh_kh(21),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(40),
      Q => sig_addr_cntr_lsh_kh(22),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(41),
      Q => sig_addr_cntr_lsh_kh(23),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(42),
      Q => sig_addr_cntr_lsh_kh(24),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(43),
      Q => sig_addr_cntr_lsh_kh(25),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(44),
      Q => sig_addr_cntr_lsh_kh(26),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(45),
      Q => sig_addr_cntr_lsh_kh(27),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(46),
      Q => sig_addr_cntr_lsh_kh(28),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(47),
      Q => sig_addr_cntr_lsh_kh(29),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(20),
      Q => sig_addr_cntr_lsh_kh(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(48),
      Q => sig_addr_cntr_lsh_kh(30),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(49),
      Q => sig_addr_cntr_lsh_kh(31),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(21),
      Q => sig_addr_cntr_lsh_kh(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(22),
      Q => sig_addr_cntr_lsh_kh(4),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(23),
      Q => sig_addr_cntr_lsh_kh(5),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(24),
      Q => sig_addr_cntr_lsh_kh(6),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(25),
      Q => sig_addr_cntr_lsh_kh(7),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(26),
      Q => sig_addr_cntr_lsh_kh(8),
      R => \^sig_mmap_reset_reg\
    );
\sig_addr_cntr_lsh_kh_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(27),
      Q => sig_addr_cntr_lsh_kh(9),
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(11),
      O => \sig_adjusted_addr_incr_ireg2[11]_i_2_n_0\
    );
\sig_adjusted_addr_incr_ireg2[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(10),
      O => \sig_adjusted_addr_incr_ireg2[11]_i_3_n_0\
    );
\sig_adjusted_addr_incr_ireg2[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(9),
      O => \sig_adjusted_addr_incr_ireg2[11]_i_4_n_0\
    );
\sig_adjusted_addr_incr_ireg2[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(8),
      O => \sig_adjusted_addr_incr_ireg2[11]_i_5_n_0\
    );
\sig_adjusted_addr_incr_ireg2[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(3),
      O => \sig_adjusted_addr_incr_ireg2[3]_i_2_n_0\
    );
\sig_adjusted_addr_incr_ireg2[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(2),
      O => \sig_adjusted_addr_incr_ireg2[3]_i_3_n_0\
    );
\sig_adjusted_addr_incr_ireg2[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(1),
      O => \sig_adjusted_addr_incr_ireg2[3]_i_4_n_0\
    );
\sig_adjusted_addr_incr_ireg2[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(0),
      O => \sig_adjusted_addr_incr_ireg2[3]_i_5_n_0\
    );
\sig_adjusted_addr_incr_ireg2[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07F7F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(3),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      O => \sig_adjusted_addr_incr_ireg2[3]_i_6_n_0\
    );
\sig_adjusted_addr_incr_ireg2[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07F7F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(2),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      O => \sig_adjusted_addr_incr_ireg2[3]_i_7_n_0\
    );
\sig_adjusted_addr_incr_ireg2[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07F7F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(1),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      O => \sig_adjusted_addr_incr_ireg2[3]_i_8_n_0\
    );
\sig_adjusted_addr_incr_ireg2[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07F7F808"
    )
        port map (
      I0 => sig_bytes_to_mbaa_ireg1(0),
      I1 => sig_first_xfer_im0,
      I2 => sig_btt_lt_b2mbaa_ireg1,
      I3 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      O => \sig_adjusted_addr_incr_ireg2[3]_i_9_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(7),
      O => \sig_adjusted_addr_incr_ireg2[7]_i_2_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(6),
      O => \sig_adjusted_addr_incr_ireg2[7]_i_3_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(5),
      O => \sig_adjusted_addr_incr_ireg2[7]_i_4_n_0\
    );
\sig_adjusted_addr_incr_ireg2[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      I1 => sig_btt_lt_b2mbaa_ireg1,
      I2 => sig_first_xfer_im0,
      I3 => sig_bytes_to_mbaa_ireg1(4),
      O => \sig_adjusted_addr_incr_ireg2[7]_i_5_n_0\
    );
\sig_adjusted_addr_incr_ireg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(0),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[0]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(10),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[10]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(11),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[11]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0\,
      CO(3) => \NLW_sig_adjusted_addr_incr_ireg2_reg[11]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_1\,
      CO(1) => \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_2\,
      CO(0) => \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_adjusted_addr_incr_im1(11 downto 8),
      S(3) => \sig_adjusted_addr_incr_ireg2[11]_i_2_n_0\,
      S(2) => \sig_adjusted_addr_incr_ireg2[11]_i_3_n_0\,
      S(1) => \sig_adjusted_addr_incr_ireg2[11]_i_4_n_0\,
      S(0) => \sig_adjusted_addr_incr_ireg2[11]_i_5_n_0\
    );
\sig_adjusted_addr_incr_ireg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(1),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[1]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(2),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[2]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(3),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[3]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_0\,
      CO(2) => \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_1\,
      CO(1) => \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_2\,
      CO(0) => \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sig_adjusted_addr_incr_ireg2[3]_i_2_n_0\,
      DI(2) => \sig_adjusted_addr_incr_ireg2[3]_i_3_n_0\,
      DI(1) => \sig_adjusted_addr_incr_ireg2[3]_i_4_n_0\,
      DI(0) => \sig_adjusted_addr_incr_ireg2[3]_i_5_n_0\,
      O(3 downto 0) => sig_adjusted_addr_incr_im1(3 downto 0),
      S(3) => \sig_adjusted_addr_incr_ireg2[3]_i_6_n_0\,
      S(2) => \sig_adjusted_addr_incr_ireg2[3]_i_7_n_0\,
      S(1) => \sig_adjusted_addr_incr_ireg2[3]_i_8_n_0\,
      S(0) => \sig_adjusted_addr_incr_ireg2[3]_i_9_n_0\
    );
\sig_adjusted_addr_incr_ireg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(4),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[4]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(5),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[5]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(6),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[6]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(7),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[7]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_0\,
      CO(3) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0\,
      CO(2) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_1\,
      CO(1) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_2\,
      CO(0) => \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_adjusted_addr_incr_im1(7 downto 4),
      S(3) => \sig_adjusted_addr_incr_ireg2[7]_i_2_n_0\,
      S(2) => \sig_adjusted_addr_incr_ireg2[7]_i_3_n_0\,
      S(1) => \sig_adjusted_addr_incr_ireg2[7]_i_4_n_0\,
      S(0) => \sig_adjusted_addr_incr_ireg2[7]_i_5_n_0\
    );
\sig_adjusted_addr_incr_ireg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(8),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[8]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_adjusted_addr_incr_ireg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_adjusted_addr_incr_im1(9),
      Q => \sig_adjusted_addr_incr_ireg2_reg_n_0_[9]\,
      R => \^sig_mmap_reset_reg\
    );
sig_brst_cnt_eq_one_ireg1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[12]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[14]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[15]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[13]\,
      O => sig_brst_cnt_eq_one_im0
    );
sig_brst_cnt_eq_one_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_brst_cnt_eq_one_im0,
      Q => sig_brst_cnt_eq_one_ireg1,
      R => \^sig_mmap_reset_reg\
    );
sig_brst_cnt_eq_zero_ireg1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[12]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[14]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[15]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[13]\,
      O => sig_brst_cnt_eq_zero_im0
    );
sig_brst_cnt_eq_zero_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_brst_cnt_eq_zero_im0,
      Q => sig_brst_cnt_eq_zero_ireg1,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555545"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(11),
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      O => \sig_btt_cntr_im0[11]_i_2_n_0\
    );
\sig_btt_cntr_im0[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555545"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(10),
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      O => \sig_btt_cntr_im0[11]_i_3_n_0\
    );
\sig_btt_cntr_im0[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555545"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(9),
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      O => \sig_btt_cntr_im0[11]_i_4_n_0\
    );
\sig_btt_cntr_im0[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555545"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(8),
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      O => \sig_btt_cntr_im0[11]_i_5_n_0\
    );
\sig_btt_cntr_im0[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(11),
      I1 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(11),
      O => \sig_btt_cntr_im0[11]_i_6_n_0\
    );
\sig_btt_cntr_im0[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(10),
      I1 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(10),
      O => \sig_btt_cntr_im0[11]_i_7_n_0\
    );
\sig_btt_cntr_im0[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(9),
      I1 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(9),
      O => \sig_btt_cntr_im0[11]_i_8_n_0\
    );
\sig_btt_cntr_im0[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(8),
      I1 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(8),
      O => \sig_btt_cntr_im0[11]_i_9_n_0\
    );
\sig_btt_cntr_im0[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => Q(0),
      I1 => \^sig_input_reg_empty\,
      I2 => \^sig_sm_halt_reg\,
      I3 => \^in\(47),
      O => \sig_btt_cntr_im0[15]_i_2_n_0\
    );
\sig_btt_cntr_im0[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555545"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(12),
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      O => \sig_btt_cntr_im0[15]_i_3_n_0\
    );
\sig_btt_cntr_im0[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555557555555545"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[15]\,
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      I5 => \out\(15),
      O => \sig_btt_cntr_im0[15]_i_4_n_0\
    );
\sig_btt_cntr_im0[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555557555555545"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[14]\,
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      I5 => \out\(14),
      O => \sig_btt_cntr_im0[15]_i_5_n_0\
    );
\sig_btt_cntr_im0[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555557555555545"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[13]\,
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      I5 => \out\(13),
      O => \sig_btt_cntr_im0[15]_i_6_n_0\
    );
\sig_btt_cntr_im0[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(12),
      I1 => \sig_btt_cntr_im0_reg_n_0_[12]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(12),
      O => \sig_btt_cntr_im0[15]_i_7_n_0\
    );
\sig_btt_cntr_im0[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555545"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(3),
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      O => \sig_btt_cntr_im0[3]_i_2_n_0\
    );
\sig_btt_cntr_im0[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555545"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(2),
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      O => \sig_btt_cntr_im0[3]_i_3_n_0\
    );
\sig_btt_cntr_im0[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555545"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(1),
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      O => \sig_btt_cntr_im0[3]_i_4_n_0\
    );
\sig_btt_cntr_im0[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555545"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(0),
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      O => \sig_btt_cntr_im0[3]_i_5_n_0\
    );
\sig_btt_cntr_im0[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(3),
      I1 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(3),
      O => \sig_btt_cntr_im0[3]_i_6_n_0\
    );
\sig_btt_cntr_im0[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(2),
      I1 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(2),
      O => \sig_btt_cntr_im0[3]_i_7_n_0\
    );
\sig_btt_cntr_im0[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(1),
      I1 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(1),
      O => \sig_btt_cntr_im0[3]_i_8_n_0\
    );
\sig_btt_cntr_im0[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(0),
      I1 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(0),
      O => \sig_btt_cntr_im0[3]_i_9_n_0\
    );
\sig_btt_cntr_im0[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555545"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(7),
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      O => \sig_btt_cntr_im0[7]_i_2_n_0\
    );
\sig_btt_cntr_im0[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555545"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(6),
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      O => \sig_btt_cntr_im0[7]_i_3_n_0\
    );
\sig_btt_cntr_im0[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555545"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(5),
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      O => \sig_btt_cntr_im0[7]_i_4_n_0\
    );
\sig_btt_cntr_im0[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555545"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(4),
      I1 => Q(0),
      I2 => \^sig_input_reg_empty\,
      I3 => \^sig_sm_halt_reg\,
      I4 => \^in\(47),
      O => \sig_btt_cntr_im0[7]_i_5_n_0\
    );
\sig_btt_cntr_im0[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(7),
      I1 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(7),
      O => \sig_btt_cntr_im0[7]_i_6_n_0\
    );
\sig_btt_cntr_im0[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(6),
      I1 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(6),
      O => \sig_btt_cntr_im0[7]_i_7_n_0\
    );
\sig_btt_cntr_im0[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(5),
      I1 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(5),
      O => \sig_btt_cntr_im0[7]_i_8_n_0\
    );
\sig_btt_cntr_im0[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => sig_addr_cntr_incr_ireg2(4),
      I1 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      I2 => sig_calc_error_reg0,
      I3 => \out\(4),
      O => \sig_btt_cntr_im0[7]_i_9_n_0\
    );
\sig_btt_cntr_im0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[3]_i_1_n_7\,
      Q => \sig_btt_cntr_im0_reg_n_0_[0]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[11]_i_1_n_5\,
      Q => \sig_btt_cntr_im0_reg_n_0_[10]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[11]_i_1_n_4\,
      Q => \sig_btt_cntr_im0_reg_n_0_[11]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_btt_cntr_im0_reg[7]_i_1_n_0\,
      CO(3) => \sig_btt_cntr_im0_reg[11]_i_1_n_0\,
      CO(2) => \sig_btt_cntr_im0_reg[11]_i_1_n_1\,
      CO(1) => \sig_btt_cntr_im0_reg[11]_i_1_n_2\,
      CO(0) => \sig_btt_cntr_im0_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sig_btt_cntr_im0[11]_i_2_n_0\,
      DI(2) => \sig_btt_cntr_im0[11]_i_3_n_0\,
      DI(1) => \sig_btt_cntr_im0[11]_i_4_n_0\,
      DI(0) => \sig_btt_cntr_im0[11]_i_5_n_0\,
      O(3) => \sig_btt_cntr_im0_reg[11]_i_1_n_4\,
      O(2) => \sig_btt_cntr_im0_reg[11]_i_1_n_5\,
      O(1) => \sig_btt_cntr_im0_reg[11]_i_1_n_6\,
      O(0) => \sig_btt_cntr_im0_reg[11]_i_1_n_7\,
      S(3) => \sig_btt_cntr_im0[11]_i_6_n_0\,
      S(2) => \sig_btt_cntr_im0[11]_i_7_n_0\,
      S(1) => \sig_btt_cntr_im0[11]_i_8_n_0\,
      S(0) => \sig_btt_cntr_im0[11]_i_9_n_0\
    );
\sig_btt_cntr_im0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_7\,
      Q => \sig_btt_cntr_im0_reg_n_0_[12]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_6\,
      Q => \sig_btt_cntr_im0_reg_n_0_[13]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_5\,
      Q => \sig_btt_cntr_im0_reg_n_0_[14]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[15]_i_1_n_4\,
      Q => \sig_btt_cntr_im0_reg_n_0_[15]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_btt_cntr_im0_reg[11]_i_1_n_0\,
      CO(3) => \NLW_sig_btt_cntr_im0_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sig_btt_cntr_im0_reg[15]_i_1_n_1\,
      CO(1) => \sig_btt_cntr_im0_reg[15]_i_1_n_2\,
      CO(0) => \sig_btt_cntr_im0_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \sig_btt_cntr_im0[15]_i_2_n_0\,
      DI(1) => \sig_btt_cntr_im0[15]_i_2_n_0\,
      DI(0) => \sig_btt_cntr_im0[15]_i_3_n_0\,
      O(3) => \sig_btt_cntr_im0_reg[15]_i_1_n_4\,
      O(2) => \sig_btt_cntr_im0_reg[15]_i_1_n_5\,
      O(1) => \sig_btt_cntr_im0_reg[15]_i_1_n_6\,
      O(0) => \sig_btt_cntr_im0_reg[15]_i_1_n_7\,
      S(3) => \sig_btt_cntr_im0[15]_i_4_n_0\,
      S(2) => \sig_btt_cntr_im0[15]_i_5_n_0\,
      S(1) => \sig_btt_cntr_im0[15]_i_6_n_0\,
      S(0) => \sig_btt_cntr_im0[15]_i_7_n_0\
    );
\sig_btt_cntr_im0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[3]_i_1_n_6\,
      Q => \sig_btt_cntr_im0_reg_n_0_[1]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[3]_i_1_n_5\,
      Q => \sig_btt_cntr_im0_reg_n_0_[2]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[3]_i_1_n_4\,
      Q => \sig_btt_cntr_im0_reg_n_0_[3]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_btt_cntr_im0_reg[3]_i_1_n_0\,
      CO(2) => \sig_btt_cntr_im0_reg[3]_i_1_n_1\,
      CO(1) => \sig_btt_cntr_im0_reg[3]_i_1_n_2\,
      CO(0) => \sig_btt_cntr_im0_reg[3]_i_1_n_3\,
      CYINIT => \sig_btt_cntr_im0[15]_i_2_n_0\,
      DI(3) => \sig_btt_cntr_im0[3]_i_2_n_0\,
      DI(2) => \sig_btt_cntr_im0[3]_i_3_n_0\,
      DI(1) => \sig_btt_cntr_im0[3]_i_4_n_0\,
      DI(0) => \sig_btt_cntr_im0[3]_i_5_n_0\,
      O(3) => \sig_btt_cntr_im0_reg[3]_i_1_n_4\,
      O(2) => \sig_btt_cntr_im0_reg[3]_i_1_n_5\,
      O(1) => \sig_btt_cntr_im0_reg[3]_i_1_n_6\,
      O(0) => \sig_btt_cntr_im0_reg[3]_i_1_n_7\,
      S(3) => \sig_btt_cntr_im0[3]_i_6_n_0\,
      S(2) => \sig_btt_cntr_im0[3]_i_7_n_0\,
      S(1) => \sig_btt_cntr_im0[3]_i_8_n_0\,
      S(0) => \sig_btt_cntr_im0[3]_i_9_n_0\
    );
\sig_btt_cntr_im0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_7\,
      Q => \sig_btt_cntr_im0_reg_n_0_[4]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_6\,
      Q => \sig_btt_cntr_im0_reg_n_0_[5]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_5\,
      Q => \sig_btt_cntr_im0_reg_n_0_[6]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[7]_i_1_n_4\,
      Q => \sig_btt_cntr_im0_reg_n_0_[7]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_btt_cntr_im0_reg[3]_i_1_n_0\,
      CO(3) => \sig_btt_cntr_im0_reg[7]_i_1_n_0\,
      CO(2) => \sig_btt_cntr_im0_reg[7]_i_1_n_1\,
      CO(1) => \sig_btt_cntr_im0_reg[7]_i_1_n_2\,
      CO(0) => \sig_btt_cntr_im0_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sig_btt_cntr_im0[7]_i_2_n_0\,
      DI(2) => \sig_btt_cntr_im0[7]_i_3_n_0\,
      DI(1) => \sig_btt_cntr_im0[7]_i_4_n_0\,
      DI(0) => \sig_btt_cntr_im0[7]_i_5_n_0\,
      O(3) => \sig_btt_cntr_im0_reg[7]_i_1_n_4\,
      O(2) => \sig_btt_cntr_im0_reg[7]_i_1_n_5\,
      O(1) => \sig_btt_cntr_im0_reg[7]_i_1_n_6\,
      O(0) => \sig_btt_cntr_im0_reg[7]_i_1_n_7\,
      S(3) => \sig_btt_cntr_im0[7]_i_6_n_0\,
      S(2) => \sig_btt_cntr_im0[7]_i_7_n_0\,
      S(1) => \sig_btt_cntr_im0[7]_i_8_n_0\,
      S(0) => \sig_btt_cntr_im0[7]_i_9_n_0\
    );
\sig_btt_cntr_im0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[11]_i_1_n_7\,
      Q => \sig_btt_cntr_im0_reg_n_0_[8]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_btt_cntr_im0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \sig_addr_cntr_lsh_im0[15]_i_1_n_0\,
      D => \sig_btt_cntr_im0_reg[11]_i_1_n_6\,
      Q => \sig_btt_cntr_im0_reg_n_0_[9]\,
      R => \^sig_mmap_reset_reg\
    );
sig_btt_eq_b2mbaa_im01_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sig_btt_eq_b2mbaa_im01_carry_n_0,
      CO(2) => sig_btt_eq_b2mbaa_im01_carry_n_1,
      CO(1) => sig_btt_eq_b2mbaa_im01_carry_n_2,
      CO(0) => sig_btt_eq_b2mbaa_im01_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_sig_btt_eq_b2mbaa_im01_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sig_btt_eq_b2mbaa_im01_carry_i_1_n_0,
      S(2) => sig_btt_eq_b2mbaa_im01_carry_i_2_n_0,
      S(1) => sig_btt_eq_b2mbaa_im01_carry_i_3_n_0,
      S(0) => sig_btt_eq_b2mbaa_im01_carry_i_4_n_0
    );
\sig_btt_eq_b2mbaa_im01_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sig_btt_eq_b2mbaa_im01_carry_n_0,
      CO(3 downto 1) => \NLW_sig_btt_eq_b2mbaa_im01_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => sig_btt_eq_b2mbaa_im01,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_sig_btt_eq_b2mbaa_im01_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \sig_btt_eq_b2mbaa_im01_carry__0_i_1_n_0\
    );
\sig_btt_eq_b2mbaa_im01_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(12),
      O => \sig_btt_eq_b2mbaa_im01_carry__0_i_1_n_0\
    );
sig_btt_eq_b2mbaa_im01_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      I1 => sig_bytes_to_mbaa_im0(10),
      I2 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      I3 => sig_bytes_to_mbaa_im0(11),
      I4 => sig_bytes_to_mbaa_im0(9),
      I5 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      O => sig_btt_eq_b2mbaa_im01_carry_i_1_n_0
    );
sig_btt_eq_b2mbaa_im01_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      I1 => sig_bytes_to_mbaa_im0(6),
      I2 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I3 => sig_bytes_to_mbaa_im0(7),
      I4 => sig_bytes_to_mbaa_im0(8),
      I5 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      O => sig_btt_eq_b2mbaa_im01_carry_i_2_n_0
    );
sig_btt_eq_b2mbaa_im01_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      I1 => sig_bytes_to_mbaa_im0(4),
      I2 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I3 => sig_bytes_to_mbaa_im0(5),
      I4 => sig_bytes_to_mbaa_im0(3),
      I5 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      O => sig_btt_eq_b2mbaa_im01_carry_i_3_n_0
    );
sig_btt_eq_b2mbaa_im01_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(2),
      I1 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I5 => sig_bytes_to_mbaa_im0(1),
      O => sig_btt_eq_b2mbaa_im01_carry_i_4_n_0
    );
sig_btt_eq_b2mbaa_ireg1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => sig_btt_eq_b2mbaa_im01,
      I1 => \sig_btt_cntr_im0_reg_n_0_[13]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[15]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[14]\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[12]\,
      O => sig_btt_eq_b2mbaa_im0
    );
sig_btt_eq_b2mbaa_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_btt_eq_b2mbaa_im0,
      Q => sig_btt_eq_b2mbaa_ireg1,
      R => \^sig_mmap_reset_reg\
    );
sig_btt_lt_b2mbaa_im01_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sig_btt_lt_b2mbaa_im01_carry_n_0,
      CO(2) => sig_btt_lt_b2mbaa_im01_carry_n_1,
      CO(1) => sig_btt_lt_b2mbaa_im01_carry_n_2,
      CO(0) => sig_btt_lt_b2mbaa_im01_carry_n_3,
      CYINIT => '0',
      DI(3) => sig_btt_lt_b2mbaa_im01_carry_i_1_n_0,
      DI(2) => sig_btt_lt_b2mbaa_im01_carry_i_2_n_0,
      DI(1) => sig_btt_lt_b2mbaa_im01_carry_i_3_n_0,
      DI(0) => sig_btt_lt_b2mbaa_im01_carry_i_4_n_0,
      O(3 downto 0) => NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sig_btt_lt_b2mbaa_im01_carry_i_5_n_0,
      S(2) => sig_btt_lt_b2mbaa_im01_carry_i_6_n_0,
      S(1) => sig_btt_lt_b2mbaa_im01_carry_i_7_n_0,
      S(0) => sig_btt_lt_b2mbaa_im01_carry_i_8_n_0
    );
\sig_btt_lt_b2mbaa_im01_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sig_btt_lt_b2mbaa_im01_carry_n_0,
      CO(3) => \NLW_sig_btt_lt_b2mbaa_im01_carry__0_CO_UNCONNECTED\(3),
      CO(2) => sig_btt_lt_b2mbaa_im01,
      CO(1) => \sig_btt_lt_b2mbaa_im01_carry__0_n_2\,
      CO(0) => \sig_btt_lt_b2mbaa_im01_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => sig_bytes_to_mbaa_im0(12),
      DI(1) => \sig_btt_lt_b2mbaa_im01_carry__0_i_1_n_0\,
      DI(0) => \sig_btt_lt_b2mbaa_im01_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_sig_btt_lt_b2mbaa_im01_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \sig_btt_lt_b2mbaa_im01_carry__0_i_3_n_0\,
      S(1) => \sig_btt_lt_b2mbaa_im01_carry__0_i_4_n_0\,
      S(0) => \sig_btt_lt_b2mbaa_im01_carry__0_i_5_n_0\
    );
\sig_btt_lt_b2mbaa_im01_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      I1 => sig_bytes_to_mbaa_im0(11),
      I2 => sig_bytes_to_mbaa_im0(10),
      I3 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      O => \sig_btt_lt_b2mbaa_im01_carry__0_i_1_n_0\
    );
\sig_btt_lt_b2mbaa_im01_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I1 => sig_bytes_to_mbaa_im0(9),
      I2 => sig_bytes_to_mbaa_im0(8),
      I3 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      O => \sig_btt_lt_b2mbaa_im01_carry__0_i_2_n_0\
    );
\sig_btt_lt_b2mbaa_im01_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(12),
      O => \sig_btt_lt_b2mbaa_im01_carry__0_i_3_n_0\
    );
\sig_btt_lt_b2mbaa_im01_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(11),
      I1 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      I2 => sig_bytes_to_mbaa_im0(10),
      I3 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      O => \sig_btt_lt_b2mbaa_im01_carry__0_i_4_n_0\
    );
\sig_btt_lt_b2mbaa_im01_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(9),
      I1 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I2 => sig_bytes_to_mbaa_im0(8),
      I3 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      O => \sig_btt_lt_b2mbaa_im01_carry__0_i_5_n_0\
    );
sig_btt_lt_b2mbaa_im01_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I1 => sig_bytes_to_mbaa_im0(7),
      I2 => sig_bytes_to_mbaa_im0(6),
      I3 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_1_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I1 => sig_bytes_to_mbaa_im0(5),
      I2 => sig_bytes_to_mbaa_im0(4),
      I3 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_2_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I1 => sig_bytes_to_mbaa_im0(3),
      I2 => sig_bytes_to_mbaa_im0(2),
      I3 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_3_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I1 => sig_bytes_to_mbaa_im0(1),
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_4_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(7),
      I1 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I2 => sig_bytes_to_mbaa_im0(6),
      I3 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_5_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(5),
      I1 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      I2 => sig_bytes_to_mbaa_im0(4),
      I3 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_6_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(2),
      I1 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I2 => sig_bytes_to_mbaa_im0(3),
      I3 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_7_n_0
    );
sig_btt_lt_b2mbaa_im01_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sig_bytes_to_mbaa_im0(1),
      I1 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      O => sig_btt_lt_b2mbaa_im01_carry_i_8_n_0
    );
sig_btt_lt_b2mbaa_ireg1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa_im01,
      I1 => \sig_btt_cntr_im0_reg_n_0_[13]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[15]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[14]\,
      I4 => \sig_btt_cntr_im0_reg_n_0_[12]\,
      O => sig_btt_lt_b2mbaa_im0
    );
sig_btt_lt_b2mbaa_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_btt_lt_b2mbaa_im0,
      Q => sig_btt_lt_b2mbaa_ireg1,
      R => \^sig_mmap_reset_reg\
    );
sig_byte_change_minus1_im2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sig_byte_change_minus1_im2_carry_n_0,
      CO(2) => sig_byte_change_minus1_im2_carry_n_1,
      CO(1) => sig_byte_change_minus1_im2_carry_n_2,
      CO(0) => sig_byte_change_minus1_im2_carry_n_3,
      CYINIT => \sig_adjusted_addr_incr_ireg2_reg_n_0_[0]\,
      DI(3) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[4]\,
      DI(2) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[3]\,
      DI(1) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[2]\,
      DI(0) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[1]\,
      O(3) => \^in\(4),
      O(2 downto 0) => NLW_sig_byte_change_minus1_im2_carry_O_UNCONNECTED(2 downto 0),
      S(3) => sig_byte_change_minus1_im2_carry_i_1_n_0,
      S(2) => sig_byte_change_minus1_im2_carry_i_2_n_0,
      S(1) => sig_byte_change_minus1_im2_carry_i_3_n_0,
      S(0) => sig_byte_change_minus1_im2_carry_i_4_n_0
    );
\sig_byte_change_minus1_im2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sig_byte_change_minus1_im2_carry_n_0,
      CO(3) => \sig_byte_change_minus1_im2_carry__0_n_0\,
      CO(2) => \sig_byte_change_minus1_im2_carry__0_n_1\,
      CO(1) => \sig_byte_change_minus1_im2_carry__0_n_2\,
      CO(0) => \sig_byte_change_minus1_im2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[8]\,
      DI(2) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[7]\,
      DI(1) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[6]\,
      DI(0) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[5]\,
      O(3 downto 0) => \^in\(8 downto 5),
      S(3) => \sig_byte_change_minus1_im2_carry__0_i_1_n_0\,
      S(2) => \sig_byte_change_minus1_im2_carry__0_i_2_n_0\,
      S(1) => \sig_byte_change_minus1_im2_carry__0_i_3_n_0\,
      S(0) => \sig_byte_change_minus1_im2_carry__0_i_4_n_0\
    );
\sig_byte_change_minus1_im2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[8]\,
      O => \sig_byte_change_minus1_im2_carry__0_i_1_n_0\
    );
\sig_byte_change_minus1_im2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[7]\,
      O => \sig_byte_change_minus1_im2_carry__0_i_2_n_0\
    );
\sig_byte_change_minus1_im2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[6]\,
      O => \sig_byte_change_minus1_im2_carry__0_i_3_n_0\
    );
\sig_byte_change_minus1_im2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[5]\,
      O => \sig_byte_change_minus1_im2_carry__0_i_4_n_0\
    );
\sig_byte_change_minus1_im2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_byte_change_minus1_im2_carry__0_n_0\,
      CO(3 downto 2) => \NLW_sig_byte_change_minus1_im2_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sig_byte_change_minus1_im2_carry__1_n_2\,
      CO(0) => \sig_byte_change_minus1_im2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[10]\,
      DI(0) => \sig_adjusted_addr_incr_ireg2_reg_n_0_[9]\,
      O(3) => \NLW_sig_byte_change_minus1_im2_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => \^in\(11 downto 9),
      S(3) => '0',
      S(2) => \sig_byte_change_minus1_im2_carry__1_i_1_n_0\,
      S(1) => \sig_byte_change_minus1_im2_carry__1_i_2_n_0\,
      S(0) => \sig_byte_change_minus1_im2_carry__1_i_3_n_0\
    );
\sig_byte_change_minus1_im2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[11]\,
      O => \sig_byte_change_minus1_im2_carry__1_i_1_n_0\
    );
\sig_byte_change_minus1_im2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[10]\,
      O => \sig_byte_change_minus1_im2_carry__1_i_2_n_0\
    );
\sig_byte_change_minus1_im2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[9]\,
      O => \sig_byte_change_minus1_im2_carry__1_i_3_n_0\
    );
sig_byte_change_minus1_im2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[4]\,
      O => sig_byte_change_minus1_im2_carry_i_1_n_0
    );
sig_byte_change_minus1_im2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[3]\,
      O => sig_byte_change_minus1_im2_carry_i_2_n_0
    );
sig_byte_change_minus1_im2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[2]\,
      O => sig_byte_change_minus1_im2_carry_i_3_n_0
    );
sig_byte_change_minus1_im2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_adjusted_addr_incr_ireg2_reg_n_0_[1]\,
      O => sig_byte_change_minus1_im2_carry_i_4_n_0
    );
\sig_bytes_to_mbaa_ireg1[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      O => \sig_bytes_to_mbaa_ireg1[12]_i_2_n_0\
    );
\sig_bytes_to_mbaa_ireg1[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      O => \sig_bytes_to_mbaa_ireg1[12]_i_3_n_0\
    );
\sig_bytes_to_mbaa_ireg1[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      O => \sig_bytes_to_mbaa_ireg1[12]_i_4_n_0\
    );
\sig_bytes_to_mbaa_ireg1[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      O => \sig_bytes_to_mbaa_ireg1[4]_i_2_n_0\
    );
\sig_bytes_to_mbaa_ireg1[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      O => \sig_bytes_to_mbaa_ireg1[4]_i_3_n_0\
    );
\sig_bytes_to_mbaa_ireg1[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      O => \sig_bytes_to_mbaa_ireg1[4]_i_4_n_0\
    );
\sig_bytes_to_mbaa_ireg1[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      O => \sig_bytes_to_mbaa_ireg1[4]_i_5_n_0\
    );
\sig_bytes_to_mbaa_ireg1[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      O => \sig_bytes_to_mbaa_ireg1[4]_i_6_n_0\
    );
\sig_bytes_to_mbaa_ireg1[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      O => \sig_bytes_to_mbaa_ireg1[8]_i_2_n_0\
    );
\sig_bytes_to_mbaa_ireg1[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      O => \sig_bytes_to_mbaa_ireg1[8]_i_3_n_0\
    );
\sig_bytes_to_mbaa_ireg1[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      O => \sig_bytes_to_mbaa_ireg1[8]_i_4_n_0\
    );
\sig_bytes_to_mbaa_ireg1[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      O => \sig_bytes_to_mbaa_ireg1[8]_i_5_n_0\
    );
\sig_bytes_to_mbaa_ireg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      Q => sig_bytes_to_mbaa_ireg1(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_bytes_to_mbaa_im0(10),
      Q => sig_bytes_to_mbaa_ireg1(10),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_bytes_to_mbaa_im0(11),
      Q => sig_bytes_to_mbaa_ireg1(11),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_bytes_to_mbaa_im0(12),
      Q => sig_bytes_to_mbaa_ireg1(12),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_0\,
      CO(3) => sig_bytes_to_mbaa_im0(12),
      CO(2) => \NLW_sig_bytes_to_mbaa_ireg1_reg[12]_i_1_CO_UNCONNECTED\(2),
      CO(1) => \sig_bytes_to_mbaa_ireg1_reg[12]_i_1_n_2\,
      CO(0) => \sig_bytes_to_mbaa_ireg1_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sig_bytes_to_mbaa_ireg1_reg[12]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => sig_bytes_to_mbaa_im0(11 downto 9),
      S(3) => '1',
      S(2) => \sig_bytes_to_mbaa_ireg1[12]_i_2_n_0\,
      S(1) => \sig_bytes_to_mbaa_ireg1[12]_i_3_n_0\,
      S(0) => \sig_bytes_to_mbaa_ireg1[12]_i_4_n_0\
    );
\sig_bytes_to_mbaa_ireg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_bytes_to_mbaa_im0(1),
      Q => sig_bytes_to_mbaa_ireg1(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_bytes_to_mbaa_im0(2),
      Q => sig_bytes_to_mbaa_ireg1(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_bytes_to_mbaa_im0(3),
      Q => sig_bytes_to_mbaa_ireg1(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_bytes_to_mbaa_im0(4),
      Q => sig_bytes_to_mbaa_ireg1(4),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_0\,
      CO(2) => \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_1\,
      CO(1) => \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_2\,
      CO(0) => \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_3\,
      CYINIT => \sig_bytes_to_mbaa_ireg1[4]_i_2_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_bytes_to_mbaa_im0(4 downto 1),
      S(3) => \sig_bytes_to_mbaa_ireg1[4]_i_3_n_0\,
      S(2) => \sig_bytes_to_mbaa_ireg1[4]_i_4_n_0\,
      S(1) => \sig_bytes_to_mbaa_ireg1[4]_i_5_n_0\,
      S(0) => \sig_bytes_to_mbaa_ireg1[4]_i_6_n_0\
    );
\sig_bytes_to_mbaa_ireg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_bytes_to_mbaa_im0(5),
      Q => sig_bytes_to_mbaa_ireg1(5),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_bytes_to_mbaa_im0(6),
      Q => sig_bytes_to_mbaa_ireg1(6),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_bytes_to_mbaa_im0(7),
      Q => sig_bytes_to_mbaa_ireg1(7),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_bytes_to_mbaa_im0(8),
      Q => sig_bytes_to_mbaa_ireg1(8),
      R => \^sig_mmap_reset_reg\
    );
\sig_bytes_to_mbaa_ireg1_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_0\,
      CO(3) => \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_0\,
      CO(2) => \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_1\,
      CO(1) => \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_2\,
      CO(0) => \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_bytes_to_mbaa_im0(8 downto 5),
      S(3) => \sig_bytes_to_mbaa_ireg1[8]_i_2_n_0\,
      S(2) => \sig_bytes_to_mbaa_ireg1[8]_i_3_n_0\,
      S(1) => \sig_bytes_to_mbaa_ireg1[8]_i_4_n_0\,
      S(0) => \sig_bytes_to_mbaa_ireg1[8]_i_5_n_0\
    );
\sig_bytes_to_mbaa_ireg1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_bytes_to_mbaa_im0(9),
      Q => sig_bytes_to_mbaa_ireg1(9),
      R => \^sig_mmap_reset_reg\
    );
sig_calc_error_pushed_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \^in\(47),
      I1 => sig_xfer_reg_empty,
      I2 => sig_ld_xfer_reg,
      I3 => \^sig_calc_error_pushed\,
      O => sig_calc_error_pushed_i_1_n_0
    );
sig_calc_error_pushed_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_calc_error_pushed_i_1_n_0,
      Q => \^sig_calc_error_pushed\,
      R => \^sig_mmap_reset_reg\
    );
sig_calc_error_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCECC"
    )
        port map (
      I0 => sig_btt_is_zero,
      I1 => \^in\(47),
      I2 => \^sig_sm_halt_reg\,
      I3 => \^sig_input_reg_empty\,
      I4 => Q(0),
      O => sig_calc_error_reg_i_1_n_0
    );
sig_calc_error_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => sig_calc_error_reg_i_3_n_0,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => \out\(3),
      I4 => \out\(2),
      I5 => sig_calc_error_reg_i_4_n_0,
      O => sig_btt_is_zero
    );
sig_calc_error_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \out\(12),
      I1 => \out\(13),
      I2 => \out\(10),
      I3 => \out\(11),
      I4 => \out\(15),
      I5 => \out\(14),
      O => sig_calc_error_reg_i_3_n_0
    );
sig_calc_error_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \out\(6),
      I1 => \out\(7),
      I2 => \out\(4),
      I3 => \out\(5),
      I4 => \out\(9),
      I5 => \out\(8),
      O => sig_calc_error_reg_i_4_n_0
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_calc_error_reg_i_1_n_0,
      Q => \^in\(47),
      R => \^sig_mmap_reset_reg\
    );
sig_cmd2addr_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50554444"
    )
        port map (
      I0 => \^sig_mmap_reset_reg\,
      I1 => sig_sm_ld_xfer_reg_ns,
      I2 => sig_cmd2addr_valid_reg_0,
      I3 => sig_inhibit_rdy_n,
      I4 => \^sig_mstr2addr_cmd_valid\,
      O => sig_cmd2addr_valid_i_1_n_0
    );
sig_cmd2addr_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_cmd2addr_valid_i_1_n_0,
      Q => \^sig_mstr2addr_cmd_valid\,
      R => '0'
    );
sig_cmd2data_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55054444"
    )
        port map (
      I0 => \^sig_mmap_reset_reg\,
      I1 => sig_sm_ld_xfer_reg_ns,
      I2 => sig_inhibit_rdy_n_0,
      I3 => sig_cmd2data_valid_reg_0,
      I4 => \^sig_mstr2data_cmd_valid\,
      O => sig_cmd2data_valid_i_1_n_0
    );
sig_cmd2data_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_cmd2data_valid_i_1_n_0,
      Q => \^sig_mstr2data_cmd_valid\,
      R => '0'
    );
sig_cmd2dre_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sig_sm_ld_xfer_reg_ns,
      I1 => sig_first_xfer_im0,
      I2 => sig_cmd2dre_valid_reg_n_0,
      O => sig_cmd2dre_valid_i_1_n_0
    );
sig_cmd2dre_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_cmd2dre_valid_i_1_n_0,
      Q => sig_cmd2dre_valid_reg_n_0,
      R => \^sig_mmap_reset_reg\
    );
\sig_finish_addr_offset_ireg2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556AAA6A"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I1 => sig_bytes_to_mbaa_ireg1(0),
      I2 => sig_first_xfer_im0,
      I3 => sig_btt_lt_b2mbaa_ireg1,
      I4 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      O => sig_finish_addr_offset_im1(0)
    );
\sig_finish_addr_offset_ireg2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I1 => \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\,
      I2 => \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      O => sig_finish_addr_offset_im1(1)
    );
\sig_finish_addr_offset_ireg2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA80157F157FEA80"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\,
      I1 => \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\,
      I2 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I3 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I4 => \sig_addr_cntr_incr_ireg2[2]_i_1_n_0\,
      I5 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      O => sig_finish_addr_offset_im1(2)
    );
\sig_finish_addr_offset_ireg2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D42B2BD4"
    )
        port map (
      I0 => \sig_finish_addr_offset_ireg2[3]_i_2_n_0\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I2 => \sig_addr_cntr_incr_ireg2[2]_i_1_n_0\,
      I3 => \sig_addr_cntr_incr_ireg2[3]_i_1_n_0\,
      I4 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      O => sig_finish_addr_offset_im1(3)
    );
\sig_finish_addr_offset_ireg2[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"157F"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I1 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I2 => \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\,
      I3 => \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\,
      O => \sig_finish_addr_offset_ireg2[3]_i_2_n_0\
    );
\sig_finish_addr_offset_ireg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_finish_addr_offset_im1(0),
      Q => sig_finish_addr_offset_ireg2(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_finish_addr_offset_ireg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_finish_addr_offset_im1(1),
      Q => sig_finish_addr_offset_ireg2(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_finish_addr_offset_ireg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_finish_addr_offset_im1(2),
      Q => sig_finish_addr_offset_ireg2(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_finish_addr_offset_ireg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_finish_addr_offset_im1(3),
      Q => sig_finish_addr_offset_ireg2(3),
      R => \^sig_mmap_reset_reg\
    );
sig_first_xfer_im0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => sig_first_xfer_im0,
      I1 => sig_calc_error_reg0,
      I2 => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\,
      I3 => \^sig_mmap_reset_reg\,
      O => sig_first_xfer_im0_i_1_n_0
    );
sig_first_xfer_im0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_first_xfer_im0_i_1_n_0,
      Q => sig_first_xfer_im0,
      R => '0'
    );
sig_input_burst_type_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(16),
      Q => \^sig_mstr2addr_burst\(0),
      R => sig_input_cache_type_reg0
    );
sig_input_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(17),
      Q => sig_input_eof_reg_reg_n_0,
      R => sig_input_cache_type_reg0
    );
sig_input_reg_empty_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sig_sm_pop_input_reg,
      I1 => \^sig_calc_error_pushed\,
      I2 => \^sig_mmap_reset_reg\,
      O => sig_input_cache_type_reg0
    );
sig_input_reg_empty_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^in\(47),
      I1 => \^sig_sm_halt_reg\,
      I2 => \^sig_input_reg_empty\,
      I3 => Q(0),
      O => sig_calc_error_reg0
    );
sig_input_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => '0',
      Q => \^sig_input_reg_empty\,
      S => sig_input_cache_type_reg0
    );
\sig_input_tag_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(50),
      Q => \^in\(0),
      R => sig_input_cache_type_reg0
    );
\sig_input_tag_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(51),
      Q => \^in\(1),
      R => sig_input_cache_type_reg0
    );
\sig_input_tag_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(52),
      Q => \^in\(2),
      R => sig_input_cache_type_reg0
    );
\sig_input_tag_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_calc_error_reg0,
      D => \out\(53),
      Q => \^in\(3),
      R => sig_input_cache_type_reg0
    );
sig_last_addr_offset_im2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => sig_last_addr_offset_im2_n_0
    );
sig_ld_xfer_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0544"
    )
        port map (
      I0 => \^sig_mmap_reset_reg\,
      I1 => sig_sm_ld_xfer_reg_ns,
      I2 => sig_xfer_reg_empty,
      I3 => sig_ld_xfer_reg,
      O => sig_ld_xfer_reg_i_1_n_0
    );
sig_ld_xfer_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_ld_xfer_reg_i_1_n_0,
      Q => sig_ld_xfer_reg,
      R => '0'
    );
sig_ld_xfer_reg_tmp_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => sig_ld_xfer_reg_tmp,
      I1 => sig_sm_ld_xfer_reg_ns,
      I2 => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\,
      I3 => \^sig_mmap_reset_reg\,
      O => sig_ld_xfer_reg_tmp_i_1_n_0
    );
sig_ld_xfer_reg_tmp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_ld_xfer_reg_tmp_i_1_n_0,
      Q => sig_ld_xfer_reg_tmp,
      R => '0'
    );
sig_mmap_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_stream_rst,
      Q => \^sig_mmap_reset_reg\,
      R => '0'
    );
sig_no_btt_residue_ireg1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[6]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[1]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[7]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[11]\,
      I4 => sig_no_btt_residue_ireg1_i_2_n_0,
      I5 => sig_no_btt_residue_ireg1_i_3_n_0,
      O => sig_no_btt_residue_im0
    );
sig_no_btt_residue_ireg1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[2]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[3]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[0]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[10]\,
      O => sig_no_btt_residue_ireg1_i_2_n_0
    );
sig_no_btt_residue_ireg1_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \sig_btt_cntr_im0_reg_n_0_[9]\,
      I1 => \sig_btt_cntr_im0_reg_n_0_[4]\,
      I2 => \sig_btt_cntr_im0_reg_n_0_[8]\,
      I3 => \sig_btt_cntr_im0_reg_n_0_[5]\,
      O => sig_no_btt_residue_ireg1_i_3_n_0
    );
sig_no_btt_residue_ireg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg_ns,
      D => sig_no_btt_residue_im0,
      Q => sig_no_btt_residue_ireg1,
      R => \^sig_mmap_reset_reg\
    );
sig_parent_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001510"
    )
        port map (
      I0 => \^sig_mmap_reset_reg\,
      I1 => \^in\(45),
      I2 => sig_ld_xfer_reg_tmp,
      I3 => sig_parent_done,
      I4 => sig_calc_error_reg0,
      O => sig_parent_done_i_1_n_0
    );
sig_parent_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_parent_done_i_1_n_0,
      Q => sig_parent_done,
      R => '0'
    );
\sig_predict_addr_lsh_ireg3[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      I1 => sig_addr_cntr_incr_ireg2(11),
      O => \sig_predict_addr_lsh_ireg3[11]_i_2_n_0\
    );
\sig_predict_addr_lsh_ireg3[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      I1 => sig_addr_cntr_incr_ireg2(10),
      O => \sig_predict_addr_lsh_ireg3[11]_i_3_n_0\
    );
\sig_predict_addr_lsh_ireg3[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      I1 => sig_addr_cntr_incr_ireg2(9),
      O => \sig_predict_addr_lsh_ireg3[11]_i_4_n_0\
    );
\sig_predict_addr_lsh_ireg3[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      I1 => sig_addr_cntr_incr_ireg2(8),
      O => \sig_predict_addr_lsh_ireg3[11]_i_5_n_0\
    );
\sig_predict_addr_lsh_ireg3[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[12]\,
      I1 => sig_addr_cntr_incr_ireg2(12),
      O => \sig_predict_addr_lsh_ireg3[15]_i_2_n_0\
    );
\sig_predict_addr_lsh_ireg3[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      I1 => sig_addr_cntr_incr_ireg2(3),
      O => \sig_predict_addr_lsh_ireg3[3]_i_2_n_0\
    );
\sig_predict_addr_lsh_ireg3[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      I1 => sig_addr_cntr_incr_ireg2(2),
      O => \sig_predict_addr_lsh_ireg3[3]_i_3_n_0\
    );
\sig_predict_addr_lsh_ireg3[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      I1 => sig_addr_cntr_incr_ireg2(1),
      O => \sig_predict_addr_lsh_ireg3[3]_i_4_n_0\
    );
\sig_predict_addr_lsh_ireg3[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      I1 => sig_addr_cntr_incr_ireg2(0),
      O => \sig_predict_addr_lsh_ireg3[3]_i_5_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      I1 => sig_addr_cntr_incr_ireg2(7),
      O => \sig_predict_addr_lsh_ireg3[7]_i_2_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      I1 => sig_addr_cntr_incr_ireg2(6),
      O => \sig_predict_addr_lsh_ireg3[7]_i_3_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      I1 => sig_addr_cntr_incr_ireg2(5),
      O => \sig_predict_addr_lsh_ireg3[7]_i_4_n_0\
    );
\sig_predict_addr_lsh_ireg3[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      I1 => sig_addr_cntr_incr_ireg2(4),
      O => \sig_predict_addr_lsh_ireg3[7]_i_5_n_0\
    );
\sig_predict_addr_lsh_ireg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(0),
      Q => \sig_predict_addr_lsh_ireg3__0\(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(10),
      Q => \sig_predict_addr_lsh_ireg3__0\(10),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(11),
      Q => \sig_predict_addr_lsh_ireg3__0\(11),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0\,
      CO(3) => \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_0\,
      CO(2) => \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_1\,
      CO(1) => \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_2\,
      CO(0) => \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sig_addr_cntr_lsh_im0_reg_n_0_[11]\,
      DI(2) => \sig_addr_cntr_lsh_im0_reg_n_0_[10]\,
      DI(1) => \sig_addr_cntr_lsh_im0_reg_n_0_[9]\,
      DI(0) => \sig_addr_cntr_lsh_im0_reg_n_0_[8]\,
      O(3 downto 0) => sig_predict_addr_lsh_im2(11 downto 8),
      S(3) => \sig_predict_addr_lsh_ireg3[11]_i_2_n_0\,
      S(2) => \sig_predict_addr_lsh_ireg3[11]_i_3_n_0\,
      S(1) => \sig_predict_addr_lsh_ireg3[11]_i_4_n_0\,
      S(0) => \sig_predict_addr_lsh_ireg3[11]_i_5_n_0\
    );
\sig_predict_addr_lsh_ireg3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(12),
      Q => \sig_predict_addr_lsh_ireg3__0\(12),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(13),
      Q => \sig_predict_addr_lsh_ireg3__0\(13),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(14),
      Q => \sig_predict_addr_lsh_ireg3__0\(14),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(15),
      Q => sig_predict_addr_lsh_ireg3(15),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_0\,
      CO(3) => \NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_1\,
      CO(1) => \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_2\,
      CO(0) => \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \sig_addr_cntr_lsh_im0_reg_n_0_[14]\,
      DI(1) => \sig_addr_cntr_lsh_im0_reg_n_0_[13]\,
      DI(0) => \sig_addr_cntr_lsh_im0_reg_n_0_[12]\,
      O(3 downto 0) => sig_predict_addr_lsh_im2(15 downto 12),
      S(3) => p_1_in,
      S(2) => \sig_addr_cntr_lsh_im0_reg_n_0_[14]\,
      S(1) => \sig_addr_cntr_lsh_im0_reg_n_0_[13]\,
      S(0) => \sig_predict_addr_lsh_ireg3[15]_i_2_n_0\
    );
\sig_predict_addr_lsh_ireg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(1),
      Q => \sig_predict_addr_lsh_ireg3__0\(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(2),
      Q => \sig_predict_addr_lsh_ireg3__0\(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(3),
      Q => \sig_predict_addr_lsh_ireg3__0\(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_0\,
      CO(2) => \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_1\,
      CO(1) => \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_2\,
      CO(0) => \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      DI(2) => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      DI(1) => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      DI(0) => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      O(3 downto 0) => sig_predict_addr_lsh_im2(3 downto 0),
      S(3) => \sig_predict_addr_lsh_ireg3[3]_i_2_n_0\,
      S(2) => \sig_predict_addr_lsh_ireg3[3]_i_3_n_0\,
      S(1) => \sig_predict_addr_lsh_ireg3[3]_i_4_n_0\,
      S(0) => \sig_predict_addr_lsh_ireg3[3]_i_5_n_0\
    );
\sig_predict_addr_lsh_ireg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(4),
      Q => \sig_predict_addr_lsh_ireg3__0\(4),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(5),
      Q => \sig_predict_addr_lsh_ireg3__0\(5),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(6),
      Q => \sig_predict_addr_lsh_ireg3__0\(6),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(7),
      Q => \sig_predict_addr_lsh_ireg3__0\(7),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_0\,
      CO(3) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0\,
      CO(2) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_1\,
      CO(1) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_2\,
      CO(0) => \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \sig_addr_cntr_lsh_im0_reg_n_0_[7]\,
      DI(2) => \sig_addr_cntr_lsh_im0_reg_n_0_[6]\,
      DI(1) => \sig_addr_cntr_lsh_im0_reg_n_0_[5]\,
      DI(0) => \sig_addr_cntr_lsh_im0_reg_n_0_[4]\,
      O(3 downto 0) => sig_predict_addr_lsh_im2(7 downto 4),
      S(3) => \sig_predict_addr_lsh_ireg3[7]_i_2_n_0\,
      S(2) => \sig_predict_addr_lsh_ireg3[7]_i_3_n_0\,
      S(1) => \sig_predict_addr_lsh_ireg3[7]_i_4_n_0\,
      S(0) => \sig_predict_addr_lsh_ireg3[7]_i_5_n_0\
    );
\sig_predict_addr_lsh_ireg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(8),
      Q => \sig_predict_addr_lsh_ireg3__0\(8),
      R => \^sig_mmap_reset_reg\
    );
\sig_predict_addr_lsh_ireg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_predict_addr_lsh_im2(9),
      Q => \sig_predict_addr_lsh_ireg3__0\(9),
      R => \^sig_mmap_reset_reg\
    );
sig_sm_halt_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0]\,
      I1 => \^sig_calc_error_pushed\,
      I2 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7]\,
      O => sig_sm_halt_ns
    );
sig_sm_halt_reg_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_sm_halt_ns,
      Q => \^sig_sm_halt_reg\,
      S => \^sig_mmap_reset_reg\
    );
sig_sm_ld_calc2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_sm_ld_calc2_reg_ns,
      Q => sig_sm_ld_calc2_reg,
      R => \^sig_mmap_reset_reg\
    );
sig_sm_pop_input_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6]\,
      I1 => sig_parent_done,
      I2 => \^sig_calc_error_pushed\,
      O => sig_sm_pop_input_reg_ns
    );
sig_sm_pop_input_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_sm_pop_input_reg_ns,
      Q => sig_sm_pop_input_reg,
      R => \^sig_mmap_reset_reg\
    );
\sig_strbgen_addr_ireg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_lsh_im0_reg_n_0_[0]\,
      Q => sig_strbgen_addr_ireg2(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_strbgen_addr_ireg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_lsh_im0_reg_n_0_[1]\,
      Q => sig_strbgen_addr_ireg2(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_strbgen_addr_ireg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_lsh_im0_reg_n_0_[2]\,
      Q => sig_strbgen_addr_ireg2(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_strbgen_addr_ireg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_lsh_im0_reg_n_0_[3]\,
      Q => sig_strbgen_addr_ireg2(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_strbgen_bytes_ireg2[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_mmap_reset_reg\,
      I1 => sig_strbgen_bytes_ireg2(4),
      O => \sig_strbgen_bytes_ireg2[3]_i_1_n_0\
    );
\sig_strbgen_bytes_ireg2[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => sig_sm_ld_calc2_reg,
      I1 => \sig_strbgen_bytes_ireg2[3]_i_3_n_0\,
      I2 => \sig_addr_cntr_incr_ireg2[9]_i_1_n_0\,
      I3 => \sig_addr_cntr_incr_ireg2[6]_i_1_n_0\,
      I4 => \sig_addr_cntr_incr_ireg2[10]_i_1_n_0\,
      O => sig_strbgen_bytes_ireg2(4)
    );
\sig_strbgen_bytes_ireg2[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2[4]_i_1_n_0\,
      I1 => \sig_addr_cntr_incr_ireg2[12]_i_1_n_0\,
      I2 => \sig_addr_cntr_incr_ireg2[11]_i_1_n_0\,
      I3 => \sig_addr_cntr_incr_ireg2[5]_i_1_n_0\,
      I4 => \sig_addr_cntr_incr_ireg2[8]_i_1_n_0\,
      I5 => \sig_addr_cntr_incr_ireg2[7]_i_1_n_0\,
      O => \sig_strbgen_bytes_ireg2[3]_i_3_n_0\
    );
\sig_strbgen_bytes_ireg2[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => \sig_addr_cntr_incr_ireg2[4]_i_1_n_0\,
      I1 => sig_sm_ld_calc2_reg,
      I2 => sig_strbgen_bytes_ireg2(4),
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      O => \sig_strbgen_bytes_ireg2[4]_i_1_n_0\
    );
\sig_strbgen_bytes_ireg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[0]_i_1_n_0\,
      Q => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      R => \sig_strbgen_bytes_ireg2[3]_i_1_n_0\
    );
\sig_strbgen_bytes_ireg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[1]_i_1_n_0\,
      Q => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      R => \sig_strbgen_bytes_ireg2[3]_i_1_n_0\
    );
\sig_strbgen_bytes_ireg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[2]_i_1_n_0\,
      Q => \sig_strbgen_bytes_ireg2_reg_n_0_[2]\,
      R => \sig_strbgen_bytes_ireg2[3]_i_1_n_0\
    );
\sig_strbgen_bytes_ireg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => \sig_addr_cntr_incr_ireg2[3]_i_1_n_0\,
      Q => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      R => \sig_strbgen_bytes_ireg2[3]_i_1_n_0\
    );
\sig_strbgen_bytes_ireg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_strbgen_bytes_ireg2[4]_i_1_n_0\,
      Q => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA81"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[10]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA01"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[11]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8881"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(2),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(1),
      O => \sig_xfer_end_strb_ireg3[12]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8801"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[13]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8001"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[14]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[15]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[1]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEB"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[2]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAB"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[3]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEB"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(2),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(1),
      O => \sig_xfer_end_strb_ireg3[4]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEAB"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[5]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAB"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[6]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[7]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA89"
    )
        port map (
      I0 => sig_finish_addr_offset_ireg2(3),
      I1 => sig_finish_addr_offset_ireg2(1),
      I2 => sig_finish_addr_offset_ireg2(0),
      I3 => sig_finish_addr_offset_ireg2(2),
      O => \sig_xfer_end_strb_ireg3[9]_i_1_n_0\
    );
\sig_xfer_end_strb_ireg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => '1',
      Q => sig_xfer_end_strb_ireg3(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \sig_xfer_end_strb_ireg3[10]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(10),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \sig_xfer_end_strb_ireg3[11]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(11),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \sig_xfer_end_strb_ireg3[12]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(12),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \sig_xfer_end_strb_ireg3[13]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(13),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \sig_xfer_end_strb_ireg3[14]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(14),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \sig_xfer_end_strb_ireg3[15]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(15),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \sig_xfer_end_strb_ireg3[1]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \sig_xfer_end_strb_ireg3[2]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \sig_xfer_end_strb_ireg3[3]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \sig_xfer_end_strb_ireg3[4]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(4),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \sig_xfer_end_strb_ireg3[5]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(5),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \sig_xfer_end_strb_ireg3[6]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(6),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \sig_xfer_end_strb_ireg3[7]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(7),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_last_addr_offset_im2_n_0,
      Q => sig_xfer_end_strb_ireg3(8),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_end_strb_ireg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \sig_xfer_end_strb_ireg3[9]_i_1_n_0\,
      Q => sig_xfer_end_strb_ireg3(9),
      R => \^sig_mmap_reset_reg\
    );
sig_xfer_len_eq_0_ireg3_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^in\(11),
      I1 => \^in\(9),
      I2 => \^in\(10),
      I3 => \^in\(8),
      I4 => sig_xfer_len_eq_0_ireg3_i_2_n_0,
      O => sig_xfer_len_eq_0_im2
    );
sig_xfer_len_eq_0_ireg3_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^in\(4),
      I1 => \^in\(6),
      I2 => \^in\(5),
      I3 => \^in\(7),
      O => sig_xfer_len_eq_0_ireg3_i_2_n_0
    );
sig_xfer_len_eq_0_ireg3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_xfer_len_eq_0_im2,
      Q => sig_xfer_len_eq_0_ireg3,
      R => \^sig_mmap_reset_reg\
    );
sig_xfer_reg_empty_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF2E"
    )
        port map (
      I0 => \FSM_onehot_sig_pcc_sm_state[6]_i_2_n_0\,
      I1 => sig_xfer_reg_empty,
      I2 => sig_ld_xfer_reg,
      I3 => \^sig_mmap_reset_reg\,
      O => sig_xfer_reg_empty_i_1_n_0
    );
sig_xfer_reg_empty_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_xfer_reg_empty_i_1_n_0,
      Q => sig_xfer_reg_empty,
      R => '0'
    );
\sig_xfer_strt_strb_ireg3[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(1),
      I1 => sig_strbgen_addr_ireg2(0),
      I2 => sig_strbgen_addr_ireg2(3),
      I3 => sig_strbgen_addr_ireg2(2),
      O => \I_STRT_STRB_GEN/lsig_start_vect\(0)
    );
\sig_xfer_strt_strb_ireg3[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F80000F8F8F8F8"
    )
        port map (
      I0 => \I_STRT_STRB_GEN/lsig_end_addr_us__37\(1),
      I1 => \I_STRT_STRB_GEN/lsig_end_addr_us__37\(3),
      I2 => \sig_xfer_strt_strb_ireg3[12]_i_2_n_0\,
      I3 => sig_strbgen_addr_ireg2(2),
      I4 => \sig_xfer_strt_strb_ireg3[10]_i_2_n_0\,
      I5 => sig_strbgen_addr_ireg2(3),
      O => sig_xfer_strt_strb_im2(10)
    );
\sig_xfer_strt_strb_ireg3[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(0),
      I1 => sig_strbgen_addr_ireg2(1),
      O => \sig_xfer_strt_strb_ireg3[10]_i_2_n_0\
    );
\sig_xfer_strt_strb_ireg3[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F8F8F8"
    )
        port map (
      I0 => \sig_xfer_strt_strb_ireg3[15]_i_2_n_0\,
      I1 => \I_STRT_STRB_GEN/lsig_end_addr_us__37\(3),
      I2 => \sig_xfer_strt_strb_ireg3[12]_i_2_n_0\,
      I3 => sig_strbgen_addr_ireg2(2),
      I4 => sig_strbgen_addr_ireg2(3),
      O => sig_xfer_strt_strb_im2(11)
    );
\sig_xfer_strt_strb_ireg3[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4DB2B24D"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(2),
      I1 => \sig_xfer_strt_strb_ireg3[15]_i_8_n_0\,
      I2 => \sig_xfer_strt_strb_ireg3[15]_i_7_n_0\,
      I3 => \sig_xfer_strt_strb_ireg3[15]_i_6_n_0\,
      I4 => sig_strbgen_addr_ireg2(3),
      O => \I_STRT_STRB_GEN/lsig_end_addr_us__37\(3)
    );
\sig_xfer_strt_strb_ireg3[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10F0F0F0"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(0),
      I1 => sig_strbgen_addr_ireg2(1),
      I2 => \sig_xfer_strt_strb_ireg3[12]_i_2_n_0\,
      I3 => sig_strbgen_addr_ireg2(2),
      I4 => sig_strbgen_addr_ireg2(3),
      O => sig_xfer_strt_strb_im2(12)
    );
\sig_xfer_strt_strb_ireg3[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BADBAEAA5D55BADB"
    )
        port map (
      I0 => \sig_xfer_strt_strb_ireg3[15]_i_9_n_0\,
      I1 => sig_strbgen_addr_ireg2(2),
      I2 => \sig_xfer_strt_strb_ireg3[15]_i_8_n_0\,
      I3 => \sig_xfer_strt_strb_ireg3[15]_i_7_n_0\,
      I4 => \sig_xfer_strt_strb_ireg3[15]_i_6_n_0\,
      I5 => sig_strbgen_addr_ireg2(3),
      O => \sig_xfer_strt_strb_ireg3[12]_i_2_n_0\
    );
\sig_xfer_strt_strb_ireg3[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F8F8F8F8F8F8F8"
    )
        port map (
      I0 => \sig_xfer_strt_strb_ireg3[15]_i_3_n_0\,
      I1 => \sig_xfer_strt_strb_ireg3[13]_i_2_n_0\,
      I2 => \sig_xfer_strt_strb_ireg3[15]_i_4_n_0\,
      I3 => sig_strbgen_addr_ireg2(3),
      I4 => sig_strbgen_addr_ireg2(2),
      I5 => sig_strbgen_addr_ireg2(1),
      O => sig_xfer_strt_strb_im2(13)
    );
\sig_xfer_strt_strb_ireg3[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF66676666FFFE"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(1),
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I2 => \sig_xfer_strt_strb_ireg3[15]_i_5_n_0\,
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I4 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I5 => sig_strbgen_addr_ireg2(0),
      O => \sig_xfer_strt_strb_ireg3[13]_i_2_n_0\
    );
\sig_xfer_strt_strb_ireg3[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F7F7F7000000"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(0),
      I1 => sig_strbgen_addr_ireg2(1),
      I2 => \sig_xfer_strt_strb_ireg3[14]_i_2_n_0\,
      I3 => \I_STRT_STRB_GEN/lsig_end_addr_us__37\(1),
      I4 => \sig_xfer_strt_strb_ireg3[15]_i_3_n_0\,
      I5 => \sig_xfer_strt_strb_ireg3[15]_i_4_n_0\,
      O => sig_xfer_strt_strb_im2(14)
    );
\sig_xfer_strt_strb_ireg3[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(2),
      I1 => sig_strbgen_addr_ireg2(3),
      O => \sig_xfer_strt_strb_ireg3[14]_i_2_n_0\
    );
\sig_xfer_strt_strb_ireg3[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111EEEFEEEE1110"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(0),
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I3 => \sig_xfer_strt_strb_ireg3[15]_i_5_n_0\,
      I4 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I5 => sig_strbgen_addr_ireg2(1),
      O => \I_STRT_STRB_GEN/lsig_end_addr_us__37\(1)
    );
\sig_xfer_strt_strb_ireg3[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \sig_xfer_strt_strb_ireg3[15]_i_2_n_0\,
      I1 => \sig_xfer_strt_strb_ireg3[15]_i_3_n_0\,
      I2 => \sig_xfer_strt_strb_ireg3[15]_i_4_n_0\,
      O => \I_STRT_STRB_GEN/lsig_end_vect\(15)
    );
\sig_xfer_strt_strb_ireg3[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666000200009998"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(1),
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I2 => \sig_xfer_strt_strb_ireg3[15]_i_5_n_0\,
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I4 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I5 => sig_strbgen_addr_ireg2(0),
      O => \sig_xfer_strt_strb_ireg3[15]_i_2_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09609009"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(3),
      I1 => \sig_xfer_strt_strb_ireg3[15]_i_6_n_0\,
      I2 => \sig_xfer_strt_strb_ireg3[15]_i_7_n_0\,
      I3 => \sig_xfer_strt_strb_ireg3[15]_i_8_n_0\,
      I4 => sig_strbgen_addr_ireg2(2),
      O => \sig_xfer_strt_strb_ireg3[15]_i_3_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2BB22B24D44DD4D"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(3),
      I1 => \sig_xfer_strt_strb_ireg3[15]_i_6_n_0\,
      I2 => \sig_xfer_strt_strb_ireg3[15]_i_7_n_0\,
      I3 => \sig_xfer_strt_strb_ireg3[15]_i_8_n_0\,
      I4 => sig_strbgen_addr_ireg2(2),
      I5 => \sig_xfer_strt_strb_ireg3[15]_i_9_n_0\,
      O => \sig_xfer_strt_strb_ireg3[15]_i_4_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[2]\,
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      O => \sig_xfer_strt_strb_ireg3[15]_i_5_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0003FFFD"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[2]\,
      I4 => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      O => \sig_xfer_strt_strb_ireg3[15]_i_6_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDC999811100000"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I2 => \sig_xfer_strt_strb_ireg3[15]_i_5_n_0\,
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I4 => sig_strbgen_addr_ireg2(0),
      I5 => sig_strbgen_addr_ireg2(1),
      O => \sig_xfer_strt_strb_ireg3[15]_i_7_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1111EEEF"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      I4 => \sig_strbgen_bytes_ireg2_reg_n_0_[2]\,
      O => \sig_xfer_strt_strb_ireg3[15]_i_8_n_0\
    );
\sig_xfer_strt_strb_ireg3[15]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \sig_strbgen_bytes_ireg2_reg_n_0_[0]\,
      I1 => \sig_strbgen_bytes_ireg2_reg_n_0_[1]\,
      I2 => \sig_strbgen_bytes_ireg2_reg_n_0_[3]\,
      I3 => \sig_strbgen_bytes_ireg2_reg_n_0_[2]\,
      I4 => \sig_strbgen_bytes_ireg2_reg_n_0_[4]\,
      O => \sig_xfer_strt_strb_ireg3[15]_i_9_n_0\
    );
\sig_xfer_strt_strb_ireg3[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010100"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(1),
      I1 => sig_strbgen_addr_ireg2(2),
      I2 => sig_strbgen_addr_ireg2(3),
      I3 => \sig_xfer_strt_strb_ireg3[13]_i_2_n_0\,
      I4 => \sig_xfer_strt_strb_ireg3[4]_i_2_n_0\,
      O => sig_xfer_strt_strb_im2(1)
    );
\sig_xfer_strt_strb_ireg3[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0007000700070000"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(0),
      I1 => sig_strbgen_addr_ireg2(1),
      I2 => sig_strbgen_addr_ireg2(2),
      I3 => sig_strbgen_addr_ireg2(3),
      I4 => \I_STRT_STRB_GEN/lsig_end_addr_us__37\(1),
      I5 => \sig_xfer_strt_strb_ireg3[4]_i_2_n_0\,
      O => sig_xfer_strt_strb_im2(2)
    );
\sig_xfer_strt_strb_ireg3[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \sig_xfer_strt_strb_ireg3[15]_i_2_n_0\,
      I1 => \sig_xfer_strt_strb_ireg3[4]_i_2_n_0\,
      I2 => sig_strbgen_addr_ireg2(2),
      I3 => sig_strbgen_addr_ireg2(3),
      O => sig_xfer_strt_strb_im2(3)
    );
\sig_xfer_strt_strb_ireg3[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000010F0"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(1),
      I1 => sig_strbgen_addr_ireg2(0),
      I2 => \sig_xfer_strt_strb_ireg3[4]_i_2_n_0\,
      I3 => sig_strbgen_addr_ireg2(2),
      I4 => sig_strbgen_addr_ireg2(3),
      O => sig_xfer_strt_strb_im2(4)
    );
\sig_xfer_strt_strb_ireg3[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6FFFFF6FFBDF6FF"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(3),
      I1 => \sig_xfer_strt_strb_ireg3[15]_i_6_n_0\,
      I2 => \sig_xfer_strt_strb_ireg3[15]_i_9_n_0\,
      I3 => sig_strbgen_addr_ireg2(2),
      I4 => \sig_xfer_strt_strb_ireg3[15]_i_8_n_0\,
      I5 => \sig_xfer_strt_strb_ireg3[15]_i_7_n_0\,
      O => \sig_xfer_strt_strb_ireg3[4]_i_2_n_0\
    );
\sig_xfer_strt_strb_ireg3[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F80000F8F8"
    )
        port map (
      I0 => \sig_xfer_strt_strb_ireg3[13]_i_2_n_0\,
      I1 => \I_STRT_STRB_GEN/lsig_end_addr_us__37\(2),
      I2 => \sig_xfer_strt_strb_ireg3[8]_i_2_n_0\,
      I3 => sig_strbgen_addr_ireg2(1),
      I4 => sig_strbgen_addr_ireg2(3),
      I5 => sig_strbgen_addr_ireg2(2),
      O => sig_xfer_strt_strb_im2(5)
    );
\sig_xfer_strt_strb_ireg3[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B0B0B0B000000"
    )
        port map (
      I0 => \sig_xfer_strt_strb_ireg3[10]_i_2_n_0\,
      I1 => sig_strbgen_addr_ireg2(2),
      I2 => sig_strbgen_addr_ireg2(3),
      I3 => \I_STRT_STRB_GEN/lsig_end_addr_us__37\(2),
      I4 => \I_STRT_STRB_GEN/lsig_end_addr_us__37\(1),
      I5 => \sig_xfer_strt_strb_ireg3[8]_i_2_n_0\,
      O => sig_xfer_strt_strb_im2(6)
    );
\sig_xfer_strt_strb_ireg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F08"
    )
        port map (
      I0 => \sig_xfer_strt_strb_ireg3[15]_i_2_n_0\,
      I1 => \I_STRT_STRB_GEN/lsig_end_addr_us__37\(2),
      I2 => sig_strbgen_addr_ireg2(3),
      I3 => \sig_xfer_strt_strb_ireg3[8]_i_2_n_0\,
      O => sig_xfer_strt_strb_im2(7)
    );
\sig_xfer_strt_strb_ireg3[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \sig_xfer_strt_strb_ireg3[15]_i_7_n_0\,
      I1 => \sig_xfer_strt_strb_ireg3[15]_i_8_n_0\,
      I2 => sig_strbgen_addr_ireg2(2),
      O => \I_STRT_STRB_GEN/lsig_end_addr_us__37\(2)
    );
\sig_xfer_strt_strb_ireg3[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0000"
    )
        port map (
      I0 => sig_strbgen_addr_ireg2(1),
      I1 => sig_strbgen_addr_ireg2(0),
      I2 => sig_strbgen_addr_ireg2(2),
      I3 => sig_strbgen_addr_ireg2(3),
      I4 => \sig_xfer_strt_strb_ireg3[8]_i_2_n_0\,
      O => sig_xfer_strt_strb_im2(8)
    );
\sig_xfer_strt_strb_ireg3[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFBEFAEDF5DBAFB"
    )
        port map (
      I0 => \sig_xfer_strt_strb_ireg3[15]_i_9_n_0\,
      I1 => sig_strbgen_addr_ireg2(2),
      I2 => \sig_xfer_strt_strb_ireg3[15]_i_8_n_0\,
      I3 => \sig_xfer_strt_strb_ireg3[15]_i_7_n_0\,
      I4 => \sig_xfer_strt_strb_ireg3[15]_i_6_n_0\,
      I5 => sig_strbgen_addr_ireg2(3),
      O => \sig_xfer_strt_strb_ireg3[8]_i_2_n_0\
    );
\sig_xfer_strt_strb_ireg3[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F8F8F8F8F8"
    )
        port map (
      I0 => \sig_xfer_strt_strb_ireg3[13]_i_2_n_0\,
      I1 => \I_STRT_STRB_GEN/lsig_end_addr_us__37\(3),
      I2 => \sig_xfer_strt_strb_ireg3[12]_i_2_n_0\,
      I3 => sig_strbgen_addr_ireg2(2),
      I4 => sig_strbgen_addr_ireg2(1),
      I5 => sig_strbgen_addr_ireg2(3),
      O => sig_xfer_strt_strb_im2(9)
    );
\sig_xfer_strt_strb_ireg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \I_STRT_STRB_GEN/lsig_start_vect\(0),
      Q => sig_xfer_strt_strb_ireg3(0),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_xfer_strt_strb_im2(10),
      Q => sig_xfer_strt_strb_ireg3(10),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_xfer_strt_strb_im2(11),
      Q => sig_xfer_strt_strb_ireg3(11),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_xfer_strt_strb_im2(12),
      Q => sig_xfer_strt_strb_ireg3(12),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_xfer_strt_strb_im2(13),
      Q => sig_xfer_strt_strb_ireg3(13),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_xfer_strt_strb_im2(14),
      Q => sig_xfer_strt_strb_ireg3(14),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => \I_STRT_STRB_GEN/lsig_end_vect\(15),
      Q => sig_xfer_strt_strb_ireg3(15),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_xfer_strt_strb_im2(1),
      Q => sig_xfer_strt_strb_ireg3(1),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_xfer_strt_strb_im2(2),
      Q => sig_xfer_strt_strb_ireg3(2),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_xfer_strt_strb_im2(3),
      Q => sig_xfer_strt_strb_ireg3(3),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_xfer_strt_strb_im2(4),
      Q => sig_xfer_strt_strb_ireg3(4),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_xfer_strt_strb_im2(5),
      Q => sig_xfer_strt_strb_ireg3(5),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_xfer_strt_strb_im2(6),
      Q => sig_xfer_strt_strb_ireg3(6),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_xfer_strt_strb_im2(7),
      Q => sig_xfer_strt_strb_ireg3(7),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_xfer_strt_strb_im2(8),
      Q => sig_xfer_strt_strb_ireg3(8),
      R => \^sig_mmap_reset_reg\
    );
\sig_xfer_strt_strb_ireg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_sm_ld_xfer_reg_ns,
      D => sig_xfer_strt_strb_im2(9),
      Q => sig_xfer_strt_strb_ireg3(9),
      R => \^sig_mmap_reset_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_axi_datamover_reset is
  port (
    sig_cmd_stat_rst_user_reg_n_cdc_from : out STD_LOGIC;
    s2mm_halt_cmplt : out STD_LOGIC;
    sig_stream_rst : out STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0 : out STD_LOGIC;
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_s_h_halt_reg_reg_0 : out STD_LOGIC;
    m_axi_s2mm_aresetn : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_halt_cmplt_reg_0 : in STD_LOGIC;
    sig_mmap_reset_reg : in STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_halt_reg : in STD_LOGIC;
    s2mm_halt : in STD_LOGIC
  );
end design_1_axi_datamover_0_0_axi_datamover_reset;

architecture STRUCTURE of design_1_axi_datamover_0_0_axi_datamover_reset is
  signal \^sig_cmd_stat_rst_user_reg_n_cdc_from\ : STD_LOGIC;
  signal sig_rst2all_stop_request : STD_LOGIC;
  signal sig_s_h_halt_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_stream_rst\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s2mm_dbg_data[0]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of sig_halt_reg_i_1 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of sig_m_valid_dup_i_3 : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of sig_s_h_halt_reg_i_1 : label is "soft_lutpair78";
begin
  sig_cmd_stat_rst_user_reg_n_cdc_from <= \^sig_cmd_stat_rst_user_reg_n_cdc_from\;
  sig_stream_rst <= \^sig_stream_rst\;
\s2mm_dbg_data[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^sig_cmd_stat_rst_user_reg_n_cdc_from\,
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(0)
    );
\s2mm_dbg_data[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s2mm_dbg_sel(0),
      I1 => \^sig_cmd_stat_rst_user_reg_n_cdc_from\,
      O => s2mm_dbg_data(1)
    );
sig_cmd_stat_rst_user_reg_n_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => m_axi_s2mm_aresetn,
      Q => \^sig_cmd_stat_rst_user_reg_n_cdc_from\,
      R => '0'
    );
sig_halt_cmplt_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sig_cmd_stat_rst_user_reg_n_cdc_from\,
      O => \^sig_stream_rst\
    );
sig_halt_cmplt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_halt_cmplt_reg_0,
      Q => s2mm_halt_cmplt,
      R => \^sig_stream_rst\
    );
sig_halt_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rst2all_stop_request,
      I1 => sig_halt_reg,
      O => sig_s_h_halt_reg_reg_0
    );
sig_m_valid_dup_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sig_cmd_stat_rst_user_reg_n_cdc_from\,
      I1 => sig_mmap_reset_reg,
      O => sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0
    );
sig_s_h_halt_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s2mm_halt,
      I1 => sig_rst2all_stop_request,
      O => sig_s_h_halt_reg_i_1_n_0
    );
sig_s_h_halt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_s_h_halt_reg_i_1_n_0,
      Q => sig_rst2all_stop_request,
      R => \^sig_stream_rst\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_axi_datamover_skid2mm_buf is
  port (
    \out\ : out STD_LOGIC;
    sig_s_ready_out_reg_0 : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    sig_last_skid_reg : out STD_LOGIC;
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    sig_data2skid_wlast : in STD_LOGIC;
    sig_last_skid_mux_out : in STD_LOGIC;
    sig_mmap_reset_reg : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    sig_m_valid_out_reg_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 127 downto 0 );
    \sig_strb_skid_reg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \sig_strb_reg_out_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end design_1_axi_datamover_0_0_axi_datamover_skid2mm_buf;

architecture STRUCTURE of design_1_axi_datamover_0_0_axi_datamover_skid2mm_buf is
  signal sig_data_reg_out_en : STD_LOGIC;
  signal sig_data_skid_mux_out : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sig_data_skid_reg : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal sig_m_valid_dup_i_1_n_0 : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal \sig_s_ready_dup_i_1__1_n_0\ : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  m_axi_s2mm_wvalid <= sig_m_valid_out;
  \out\ <= sig_s_ready_dup;
  sig_s_ready_out_reg_0 <= sig_s_ready_out;
\sig_data_reg_out[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(0),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(0),
      O => sig_data_skid_mux_out(0)
    );
\sig_data_reg_out[100]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(100),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(100),
      O => sig_data_skid_mux_out(100)
    );
\sig_data_reg_out[101]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(101),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(101),
      O => sig_data_skid_mux_out(101)
    );
\sig_data_reg_out[102]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(102),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(102),
      O => sig_data_skid_mux_out(102)
    );
\sig_data_reg_out[103]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(103),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(103),
      O => sig_data_skid_mux_out(103)
    );
\sig_data_reg_out[104]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(104),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(104),
      O => sig_data_skid_mux_out(104)
    );
\sig_data_reg_out[105]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(105),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(105),
      O => sig_data_skid_mux_out(105)
    );
\sig_data_reg_out[106]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(106),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(106),
      O => sig_data_skid_mux_out(106)
    );
\sig_data_reg_out[107]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(107),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(107),
      O => sig_data_skid_mux_out(107)
    );
\sig_data_reg_out[108]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(108),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(108),
      O => sig_data_skid_mux_out(108)
    );
\sig_data_reg_out[109]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(109),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(109),
      O => sig_data_skid_mux_out(109)
    );
\sig_data_reg_out[10]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(10),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(10),
      O => sig_data_skid_mux_out(10)
    );
\sig_data_reg_out[110]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(110),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(110),
      O => sig_data_skid_mux_out(110)
    );
\sig_data_reg_out[111]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(111),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(111),
      O => sig_data_skid_mux_out(111)
    );
\sig_data_reg_out[112]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(112),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(112),
      O => sig_data_skid_mux_out(112)
    );
\sig_data_reg_out[113]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(113),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(113),
      O => sig_data_skid_mux_out(113)
    );
\sig_data_reg_out[114]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(114),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(114),
      O => sig_data_skid_mux_out(114)
    );
\sig_data_reg_out[115]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(115),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(115),
      O => sig_data_skid_mux_out(115)
    );
\sig_data_reg_out[116]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(116),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(116),
      O => sig_data_skid_mux_out(116)
    );
\sig_data_reg_out[117]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(117),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(117),
      O => sig_data_skid_mux_out(117)
    );
\sig_data_reg_out[118]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(118),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(118),
      O => sig_data_skid_mux_out(118)
    );
\sig_data_reg_out[119]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(119),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(119),
      O => sig_data_skid_mux_out(119)
    );
\sig_data_reg_out[11]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(11),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(11),
      O => sig_data_skid_mux_out(11)
    );
\sig_data_reg_out[120]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(120),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(120),
      O => sig_data_skid_mux_out(120)
    );
\sig_data_reg_out[121]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(121),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(121),
      O => sig_data_skid_mux_out(121)
    );
\sig_data_reg_out[122]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(122),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(122),
      O => sig_data_skid_mux_out(122)
    );
\sig_data_reg_out[123]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(123),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(123),
      O => sig_data_skid_mux_out(123)
    );
\sig_data_reg_out[124]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(124),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(124),
      O => sig_data_skid_mux_out(124)
    );
\sig_data_reg_out[125]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(125),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(125),
      O => sig_data_skid_mux_out(125)
    );
\sig_data_reg_out[126]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(126),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(126),
      O => sig_data_skid_mux_out(126)
    );
\sig_data_reg_out[127]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_axi_s2mm_wready,
      I1 => sig_m_valid_dup,
      O => sig_data_reg_out_en
    );
\sig_data_reg_out[127]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(127),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(127),
      O => sig_data_skid_mux_out(127)
    );
\sig_data_reg_out[12]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(12),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(12),
      O => sig_data_skid_mux_out(12)
    );
\sig_data_reg_out[13]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(13),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(13),
      O => sig_data_skid_mux_out(13)
    );
\sig_data_reg_out[14]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(14),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(14),
      O => sig_data_skid_mux_out(14)
    );
\sig_data_reg_out[15]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(15),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(15),
      O => sig_data_skid_mux_out(15)
    );
\sig_data_reg_out[16]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(16),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(16),
      O => sig_data_skid_mux_out(16)
    );
\sig_data_reg_out[17]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(17),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(17),
      O => sig_data_skid_mux_out(17)
    );
\sig_data_reg_out[18]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(18),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(18),
      O => sig_data_skid_mux_out(18)
    );
\sig_data_reg_out[19]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(19),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(19),
      O => sig_data_skid_mux_out(19)
    );
\sig_data_reg_out[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(1),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(1),
      O => sig_data_skid_mux_out(1)
    );
\sig_data_reg_out[20]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(20),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(20),
      O => sig_data_skid_mux_out(20)
    );
\sig_data_reg_out[21]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(21),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(21),
      O => sig_data_skid_mux_out(21)
    );
\sig_data_reg_out[22]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(22),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(22),
      O => sig_data_skid_mux_out(22)
    );
\sig_data_reg_out[23]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(23),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(23),
      O => sig_data_skid_mux_out(23)
    );
\sig_data_reg_out[24]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(24),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(24),
      O => sig_data_skid_mux_out(24)
    );
\sig_data_reg_out[25]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(25),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(25),
      O => sig_data_skid_mux_out(25)
    );
\sig_data_reg_out[26]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(26),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(26),
      O => sig_data_skid_mux_out(26)
    );
\sig_data_reg_out[27]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(27),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(27),
      O => sig_data_skid_mux_out(27)
    );
\sig_data_reg_out[28]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(28),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(28),
      O => sig_data_skid_mux_out(28)
    );
\sig_data_reg_out[29]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(29),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(29),
      O => sig_data_skid_mux_out(29)
    );
\sig_data_reg_out[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(2),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(2),
      O => sig_data_skid_mux_out(2)
    );
\sig_data_reg_out[30]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(30),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(30),
      O => sig_data_skid_mux_out(30)
    );
\sig_data_reg_out[31]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(31),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(31),
      O => sig_data_skid_mux_out(31)
    );
\sig_data_reg_out[32]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(32),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(32),
      O => sig_data_skid_mux_out(32)
    );
\sig_data_reg_out[33]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(33),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(33),
      O => sig_data_skid_mux_out(33)
    );
\sig_data_reg_out[34]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(34),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(34),
      O => sig_data_skid_mux_out(34)
    );
\sig_data_reg_out[35]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(35),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(35),
      O => sig_data_skid_mux_out(35)
    );
\sig_data_reg_out[36]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(36),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(36),
      O => sig_data_skid_mux_out(36)
    );
\sig_data_reg_out[37]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(37),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(37),
      O => sig_data_skid_mux_out(37)
    );
\sig_data_reg_out[38]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(38),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(38),
      O => sig_data_skid_mux_out(38)
    );
\sig_data_reg_out[39]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(39),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(39),
      O => sig_data_skid_mux_out(39)
    );
\sig_data_reg_out[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(3),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(3),
      O => sig_data_skid_mux_out(3)
    );
\sig_data_reg_out[40]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(40),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(40),
      O => sig_data_skid_mux_out(40)
    );
\sig_data_reg_out[41]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(41),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(41),
      O => sig_data_skid_mux_out(41)
    );
\sig_data_reg_out[42]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(42),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(42),
      O => sig_data_skid_mux_out(42)
    );
\sig_data_reg_out[43]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(43),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(43),
      O => sig_data_skid_mux_out(43)
    );
\sig_data_reg_out[44]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(44),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(44),
      O => sig_data_skid_mux_out(44)
    );
\sig_data_reg_out[45]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(45),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(45),
      O => sig_data_skid_mux_out(45)
    );
\sig_data_reg_out[46]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(46),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(46),
      O => sig_data_skid_mux_out(46)
    );
\sig_data_reg_out[47]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(47),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(47),
      O => sig_data_skid_mux_out(47)
    );
\sig_data_reg_out[48]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(48),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(48),
      O => sig_data_skid_mux_out(48)
    );
\sig_data_reg_out[49]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(49),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(49),
      O => sig_data_skid_mux_out(49)
    );
\sig_data_reg_out[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(4),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(4),
      O => sig_data_skid_mux_out(4)
    );
\sig_data_reg_out[50]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(50),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(50),
      O => sig_data_skid_mux_out(50)
    );
\sig_data_reg_out[51]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(51),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(51),
      O => sig_data_skid_mux_out(51)
    );
\sig_data_reg_out[52]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(52),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(52),
      O => sig_data_skid_mux_out(52)
    );
\sig_data_reg_out[53]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(53),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(53),
      O => sig_data_skid_mux_out(53)
    );
\sig_data_reg_out[54]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(54),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(54),
      O => sig_data_skid_mux_out(54)
    );
\sig_data_reg_out[55]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(55),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(55),
      O => sig_data_skid_mux_out(55)
    );
\sig_data_reg_out[56]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(56),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(56),
      O => sig_data_skid_mux_out(56)
    );
\sig_data_reg_out[57]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(57),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(57),
      O => sig_data_skid_mux_out(57)
    );
\sig_data_reg_out[58]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(58),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(58),
      O => sig_data_skid_mux_out(58)
    );
\sig_data_reg_out[59]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(59),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(59),
      O => sig_data_skid_mux_out(59)
    );
\sig_data_reg_out[5]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(5),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(5),
      O => sig_data_skid_mux_out(5)
    );
\sig_data_reg_out[60]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(60),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(60),
      O => sig_data_skid_mux_out(60)
    );
\sig_data_reg_out[61]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(61),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(61),
      O => sig_data_skid_mux_out(61)
    );
\sig_data_reg_out[62]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(62),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(62),
      O => sig_data_skid_mux_out(62)
    );
\sig_data_reg_out[63]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(63),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(63),
      O => sig_data_skid_mux_out(63)
    );
\sig_data_reg_out[64]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(64),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(64),
      O => sig_data_skid_mux_out(64)
    );
\sig_data_reg_out[65]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(65),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(65),
      O => sig_data_skid_mux_out(65)
    );
\sig_data_reg_out[66]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(66),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(66),
      O => sig_data_skid_mux_out(66)
    );
\sig_data_reg_out[67]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(67),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(67),
      O => sig_data_skid_mux_out(67)
    );
\sig_data_reg_out[68]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(68),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(68),
      O => sig_data_skid_mux_out(68)
    );
\sig_data_reg_out[69]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(69),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(69),
      O => sig_data_skid_mux_out(69)
    );
\sig_data_reg_out[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(6),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(6),
      O => sig_data_skid_mux_out(6)
    );
\sig_data_reg_out[70]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(70),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(70),
      O => sig_data_skid_mux_out(70)
    );
\sig_data_reg_out[71]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(71),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(71),
      O => sig_data_skid_mux_out(71)
    );
\sig_data_reg_out[72]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(72),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(72),
      O => sig_data_skid_mux_out(72)
    );
\sig_data_reg_out[73]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(73),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(73),
      O => sig_data_skid_mux_out(73)
    );
\sig_data_reg_out[74]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(74),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(74),
      O => sig_data_skid_mux_out(74)
    );
\sig_data_reg_out[75]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(75),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(75),
      O => sig_data_skid_mux_out(75)
    );
\sig_data_reg_out[76]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(76),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(76),
      O => sig_data_skid_mux_out(76)
    );
\sig_data_reg_out[77]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(77),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(77),
      O => sig_data_skid_mux_out(77)
    );
\sig_data_reg_out[78]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(78),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(78),
      O => sig_data_skid_mux_out(78)
    );
\sig_data_reg_out[79]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(79),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(79),
      O => sig_data_skid_mux_out(79)
    );
\sig_data_reg_out[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(7),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(7),
      O => sig_data_skid_mux_out(7)
    );
\sig_data_reg_out[80]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(80),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(80),
      O => sig_data_skid_mux_out(80)
    );
\sig_data_reg_out[81]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(81),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(81),
      O => sig_data_skid_mux_out(81)
    );
\sig_data_reg_out[82]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(82),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(82),
      O => sig_data_skid_mux_out(82)
    );
\sig_data_reg_out[83]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(83),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(83),
      O => sig_data_skid_mux_out(83)
    );
\sig_data_reg_out[84]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(84),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(84),
      O => sig_data_skid_mux_out(84)
    );
\sig_data_reg_out[85]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(85),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(85),
      O => sig_data_skid_mux_out(85)
    );
\sig_data_reg_out[86]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(86),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(86),
      O => sig_data_skid_mux_out(86)
    );
\sig_data_reg_out[87]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(87),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(87),
      O => sig_data_skid_mux_out(87)
    );
\sig_data_reg_out[88]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(88),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(88),
      O => sig_data_skid_mux_out(88)
    );
\sig_data_reg_out[89]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(89),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(89),
      O => sig_data_skid_mux_out(89)
    );
\sig_data_reg_out[8]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(8),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(8),
      O => sig_data_skid_mux_out(8)
    );
\sig_data_reg_out[90]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(90),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(90),
      O => sig_data_skid_mux_out(90)
    );
\sig_data_reg_out[91]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(91),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(91),
      O => sig_data_skid_mux_out(91)
    );
\sig_data_reg_out[92]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(92),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(92),
      O => sig_data_skid_mux_out(92)
    );
\sig_data_reg_out[93]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(93),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(93),
      O => sig_data_skid_mux_out(93)
    );
\sig_data_reg_out[94]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(94),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(94),
      O => sig_data_skid_mux_out(94)
    );
\sig_data_reg_out[95]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(95),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(95),
      O => sig_data_skid_mux_out(95)
    );
\sig_data_reg_out[96]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(96),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(96),
      O => sig_data_skid_mux_out(96)
    );
\sig_data_reg_out[97]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(97),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(97),
      O => sig_data_skid_mux_out(97)
    );
\sig_data_reg_out[98]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(98),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(98),
      O => sig_data_skid_mux_out(98)
    );
\sig_data_reg_out[99]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(99),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(99),
      O => sig_data_skid_mux_out(99)
    );
\sig_data_reg_out[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(9),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(9),
      O => sig_data_skid_mux_out(9)
    );
\sig_data_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(0),
      Q => m_axi_s2mm_wdata(0),
      R => '0'
    );
\sig_data_reg_out_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(100),
      Q => m_axi_s2mm_wdata(100),
      R => '0'
    );
\sig_data_reg_out_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(101),
      Q => m_axi_s2mm_wdata(101),
      R => '0'
    );
\sig_data_reg_out_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(102),
      Q => m_axi_s2mm_wdata(102),
      R => '0'
    );
\sig_data_reg_out_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(103),
      Q => m_axi_s2mm_wdata(103),
      R => '0'
    );
\sig_data_reg_out_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(104),
      Q => m_axi_s2mm_wdata(104),
      R => '0'
    );
\sig_data_reg_out_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(105),
      Q => m_axi_s2mm_wdata(105),
      R => '0'
    );
\sig_data_reg_out_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(106),
      Q => m_axi_s2mm_wdata(106),
      R => '0'
    );
\sig_data_reg_out_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(107),
      Q => m_axi_s2mm_wdata(107),
      R => '0'
    );
\sig_data_reg_out_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(108),
      Q => m_axi_s2mm_wdata(108),
      R => '0'
    );
\sig_data_reg_out_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(109),
      Q => m_axi_s2mm_wdata(109),
      R => '0'
    );
\sig_data_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(10),
      Q => m_axi_s2mm_wdata(10),
      R => '0'
    );
\sig_data_reg_out_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(110),
      Q => m_axi_s2mm_wdata(110),
      R => '0'
    );
\sig_data_reg_out_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(111),
      Q => m_axi_s2mm_wdata(111),
      R => '0'
    );
\sig_data_reg_out_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(112),
      Q => m_axi_s2mm_wdata(112),
      R => '0'
    );
\sig_data_reg_out_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(113),
      Q => m_axi_s2mm_wdata(113),
      R => '0'
    );
\sig_data_reg_out_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(114),
      Q => m_axi_s2mm_wdata(114),
      R => '0'
    );
\sig_data_reg_out_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(115),
      Q => m_axi_s2mm_wdata(115),
      R => '0'
    );
\sig_data_reg_out_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(116),
      Q => m_axi_s2mm_wdata(116),
      R => '0'
    );
\sig_data_reg_out_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(117),
      Q => m_axi_s2mm_wdata(117),
      R => '0'
    );
\sig_data_reg_out_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(118),
      Q => m_axi_s2mm_wdata(118),
      R => '0'
    );
\sig_data_reg_out_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(119),
      Q => m_axi_s2mm_wdata(119),
      R => '0'
    );
\sig_data_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(11),
      Q => m_axi_s2mm_wdata(11),
      R => '0'
    );
\sig_data_reg_out_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(120),
      Q => m_axi_s2mm_wdata(120),
      R => '0'
    );
\sig_data_reg_out_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(121),
      Q => m_axi_s2mm_wdata(121),
      R => '0'
    );
\sig_data_reg_out_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(122),
      Q => m_axi_s2mm_wdata(122),
      R => '0'
    );
\sig_data_reg_out_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(123),
      Q => m_axi_s2mm_wdata(123),
      R => '0'
    );
\sig_data_reg_out_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(124),
      Q => m_axi_s2mm_wdata(124),
      R => '0'
    );
\sig_data_reg_out_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(125),
      Q => m_axi_s2mm_wdata(125),
      R => '0'
    );
\sig_data_reg_out_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(126),
      Q => m_axi_s2mm_wdata(126),
      R => '0'
    );
\sig_data_reg_out_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(127),
      Q => m_axi_s2mm_wdata(127),
      R => '0'
    );
\sig_data_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(12),
      Q => m_axi_s2mm_wdata(12),
      R => '0'
    );
\sig_data_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(13),
      Q => m_axi_s2mm_wdata(13),
      R => '0'
    );
\sig_data_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(14),
      Q => m_axi_s2mm_wdata(14),
      R => '0'
    );
\sig_data_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(15),
      Q => m_axi_s2mm_wdata(15),
      R => '0'
    );
\sig_data_reg_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(16),
      Q => m_axi_s2mm_wdata(16),
      R => '0'
    );
\sig_data_reg_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(17),
      Q => m_axi_s2mm_wdata(17),
      R => '0'
    );
\sig_data_reg_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(18),
      Q => m_axi_s2mm_wdata(18),
      R => '0'
    );
\sig_data_reg_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(19),
      Q => m_axi_s2mm_wdata(19),
      R => '0'
    );
\sig_data_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(1),
      Q => m_axi_s2mm_wdata(1),
      R => '0'
    );
\sig_data_reg_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(20),
      Q => m_axi_s2mm_wdata(20),
      R => '0'
    );
\sig_data_reg_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(21),
      Q => m_axi_s2mm_wdata(21),
      R => '0'
    );
\sig_data_reg_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(22),
      Q => m_axi_s2mm_wdata(22),
      R => '0'
    );
\sig_data_reg_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(23),
      Q => m_axi_s2mm_wdata(23),
      R => '0'
    );
\sig_data_reg_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(24),
      Q => m_axi_s2mm_wdata(24),
      R => '0'
    );
\sig_data_reg_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(25),
      Q => m_axi_s2mm_wdata(25),
      R => '0'
    );
\sig_data_reg_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(26),
      Q => m_axi_s2mm_wdata(26),
      R => '0'
    );
\sig_data_reg_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(27),
      Q => m_axi_s2mm_wdata(27),
      R => '0'
    );
\sig_data_reg_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(28),
      Q => m_axi_s2mm_wdata(28),
      R => '0'
    );
\sig_data_reg_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(29),
      Q => m_axi_s2mm_wdata(29),
      R => '0'
    );
\sig_data_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(2),
      Q => m_axi_s2mm_wdata(2),
      R => '0'
    );
\sig_data_reg_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(30),
      Q => m_axi_s2mm_wdata(30),
      R => '0'
    );
\sig_data_reg_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(31),
      Q => m_axi_s2mm_wdata(31),
      R => '0'
    );
\sig_data_reg_out_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(32),
      Q => m_axi_s2mm_wdata(32),
      R => '0'
    );
\sig_data_reg_out_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(33),
      Q => m_axi_s2mm_wdata(33),
      R => '0'
    );
\sig_data_reg_out_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(34),
      Q => m_axi_s2mm_wdata(34),
      R => '0'
    );
\sig_data_reg_out_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(35),
      Q => m_axi_s2mm_wdata(35),
      R => '0'
    );
\sig_data_reg_out_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(36),
      Q => m_axi_s2mm_wdata(36),
      R => '0'
    );
\sig_data_reg_out_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(37),
      Q => m_axi_s2mm_wdata(37),
      R => '0'
    );
\sig_data_reg_out_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(38),
      Q => m_axi_s2mm_wdata(38),
      R => '0'
    );
\sig_data_reg_out_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(39),
      Q => m_axi_s2mm_wdata(39),
      R => '0'
    );
\sig_data_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(3),
      Q => m_axi_s2mm_wdata(3),
      R => '0'
    );
\sig_data_reg_out_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(40),
      Q => m_axi_s2mm_wdata(40),
      R => '0'
    );
\sig_data_reg_out_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(41),
      Q => m_axi_s2mm_wdata(41),
      R => '0'
    );
\sig_data_reg_out_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(42),
      Q => m_axi_s2mm_wdata(42),
      R => '0'
    );
\sig_data_reg_out_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(43),
      Q => m_axi_s2mm_wdata(43),
      R => '0'
    );
\sig_data_reg_out_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(44),
      Q => m_axi_s2mm_wdata(44),
      R => '0'
    );
\sig_data_reg_out_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(45),
      Q => m_axi_s2mm_wdata(45),
      R => '0'
    );
\sig_data_reg_out_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(46),
      Q => m_axi_s2mm_wdata(46),
      R => '0'
    );
\sig_data_reg_out_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(47),
      Q => m_axi_s2mm_wdata(47),
      R => '0'
    );
\sig_data_reg_out_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(48),
      Q => m_axi_s2mm_wdata(48),
      R => '0'
    );
\sig_data_reg_out_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(49),
      Q => m_axi_s2mm_wdata(49),
      R => '0'
    );
\sig_data_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(4),
      Q => m_axi_s2mm_wdata(4),
      R => '0'
    );
\sig_data_reg_out_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(50),
      Q => m_axi_s2mm_wdata(50),
      R => '0'
    );
\sig_data_reg_out_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(51),
      Q => m_axi_s2mm_wdata(51),
      R => '0'
    );
\sig_data_reg_out_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(52),
      Q => m_axi_s2mm_wdata(52),
      R => '0'
    );
\sig_data_reg_out_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(53),
      Q => m_axi_s2mm_wdata(53),
      R => '0'
    );
\sig_data_reg_out_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(54),
      Q => m_axi_s2mm_wdata(54),
      R => '0'
    );
\sig_data_reg_out_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(55),
      Q => m_axi_s2mm_wdata(55),
      R => '0'
    );
\sig_data_reg_out_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(56),
      Q => m_axi_s2mm_wdata(56),
      R => '0'
    );
\sig_data_reg_out_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(57),
      Q => m_axi_s2mm_wdata(57),
      R => '0'
    );
\sig_data_reg_out_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(58),
      Q => m_axi_s2mm_wdata(58),
      R => '0'
    );
\sig_data_reg_out_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(59),
      Q => m_axi_s2mm_wdata(59),
      R => '0'
    );
\sig_data_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(5),
      Q => m_axi_s2mm_wdata(5),
      R => '0'
    );
\sig_data_reg_out_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(60),
      Q => m_axi_s2mm_wdata(60),
      R => '0'
    );
\sig_data_reg_out_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(61),
      Q => m_axi_s2mm_wdata(61),
      R => '0'
    );
\sig_data_reg_out_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(62),
      Q => m_axi_s2mm_wdata(62),
      R => '0'
    );
\sig_data_reg_out_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(63),
      Q => m_axi_s2mm_wdata(63),
      R => '0'
    );
\sig_data_reg_out_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(64),
      Q => m_axi_s2mm_wdata(64),
      R => '0'
    );
\sig_data_reg_out_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(65),
      Q => m_axi_s2mm_wdata(65),
      R => '0'
    );
\sig_data_reg_out_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(66),
      Q => m_axi_s2mm_wdata(66),
      R => '0'
    );
\sig_data_reg_out_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(67),
      Q => m_axi_s2mm_wdata(67),
      R => '0'
    );
\sig_data_reg_out_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(68),
      Q => m_axi_s2mm_wdata(68),
      R => '0'
    );
\sig_data_reg_out_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(69),
      Q => m_axi_s2mm_wdata(69),
      R => '0'
    );
\sig_data_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(6),
      Q => m_axi_s2mm_wdata(6),
      R => '0'
    );
\sig_data_reg_out_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(70),
      Q => m_axi_s2mm_wdata(70),
      R => '0'
    );
\sig_data_reg_out_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(71),
      Q => m_axi_s2mm_wdata(71),
      R => '0'
    );
\sig_data_reg_out_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(72),
      Q => m_axi_s2mm_wdata(72),
      R => '0'
    );
\sig_data_reg_out_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(73),
      Q => m_axi_s2mm_wdata(73),
      R => '0'
    );
\sig_data_reg_out_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(74),
      Q => m_axi_s2mm_wdata(74),
      R => '0'
    );
\sig_data_reg_out_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(75),
      Q => m_axi_s2mm_wdata(75),
      R => '0'
    );
\sig_data_reg_out_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(76),
      Q => m_axi_s2mm_wdata(76),
      R => '0'
    );
\sig_data_reg_out_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(77),
      Q => m_axi_s2mm_wdata(77),
      R => '0'
    );
\sig_data_reg_out_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(78),
      Q => m_axi_s2mm_wdata(78),
      R => '0'
    );
\sig_data_reg_out_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(79),
      Q => m_axi_s2mm_wdata(79),
      R => '0'
    );
\sig_data_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(7),
      Q => m_axi_s2mm_wdata(7),
      R => '0'
    );
\sig_data_reg_out_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(80),
      Q => m_axi_s2mm_wdata(80),
      R => '0'
    );
\sig_data_reg_out_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(81),
      Q => m_axi_s2mm_wdata(81),
      R => '0'
    );
\sig_data_reg_out_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(82),
      Q => m_axi_s2mm_wdata(82),
      R => '0'
    );
\sig_data_reg_out_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(83),
      Q => m_axi_s2mm_wdata(83),
      R => '0'
    );
\sig_data_reg_out_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(84),
      Q => m_axi_s2mm_wdata(84),
      R => '0'
    );
\sig_data_reg_out_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(85),
      Q => m_axi_s2mm_wdata(85),
      R => '0'
    );
\sig_data_reg_out_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(86),
      Q => m_axi_s2mm_wdata(86),
      R => '0'
    );
\sig_data_reg_out_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(87),
      Q => m_axi_s2mm_wdata(87),
      R => '0'
    );
\sig_data_reg_out_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(88),
      Q => m_axi_s2mm_wdata(88),
      R => '0'
    );
\sig_data_reg_out_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(89),
      Q => m_axi_s2mm_wdata(89),
      R => '0'
    );
\sig_data_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(8),
      Q => m_axi_s2mm_wdata(8),
      R => '0'
    );
\sig_data_reg_out_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(90),
      Q => m_axi_s2mm_wdata(90),
      R => '0'
    );
\sig_data_reg_out_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(91),
      Q => m_axi_s2mm_wdata(91),
      R => '0'
    );
\sig_data_reg_out_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(92),
      Q => m_axi_s2mm_wdata(92),
      R => '0'
    );
\sig_data_reg_out_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(93),
      Q => m_axi_s2mm_wdata(93),
      R => '0'
    );
\sig_data_reg_out_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(94),
      Q => m_axi_s2mm_wdata(94),
      R => '0'
    );
\sig_data_reg_out_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(95),
      Q => m_axi_s2mm_wdata(95),
      R => '0'
    );
\sig_data_reg_out_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(96),
      Q => m_axi_s2mm_wdata(96),
      R => '0'
    );
\sig_data_reg_out_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(97),
      Q => m_axi_s2mm_wdata(97),
      R => '0'
    );
\sig_data_reg_out_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(98),
      Q => m_axi_s2mm_wdata(98),
      R => '0'
    );
\sig_data_reg_out_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(99),
      Q => m_axi_s2mm_wdata(99),
      R => '0'
    );
\sig_data_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_data_skid_mux_out(9),
      Q => m_axi_s2mm_wdata(9),
      R => '0'
    );
\sig_data_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(0),
      Q => sig_data_skid_reg(0),
      R => '0'
    );
\sig_data_skid_reg_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(100),
      Q => sig_data_skid_reg(100),
      R => '0'
    );
\sig_data_skid_reg_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(101),
      Q => sig_data_skid_reg(101),
      R => '0'
    );
\sig_data_skid_reg_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(102),
      Q => sig_data_skid_reg(102),
      R => '0'
    );
\sig_data_skid_reg_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(103),
      Q => sig_data_skid_reg(103),
      R => '0'
    );
\sig_data_skid_reg_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(104),
      Q => sig_data_skid_reg(104),
      R => '0'
    );
\sig_data_skid_reg_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(105),
      Q => sig_data_skid_reg(105),
      R => '0'
    );
\sig_data_skid_reg_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(106),
      Q => sig_data_skid_reg(106),
      R => '0'
    );
\sig_data_skid_reg_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(107),
      Q => sig_data_skid_reg(107),
      R => '0'
    );
\sig_data_skid_reg_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(108),
      Q => sig_data_skid_reg(108),
      R => '0'
    );
\sig_data_skid_reg_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(109),
      Q => sig_data_skid_reg(109),
      R => '0'
    );
\sig_data_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(10),
      Q => sig_data_skid_reg(10),
      R => '0'
    );
\sig_data_skid_reg_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(110),
      Q => sig_data_skid_reg(110),
      R => '0'
    );
\sig_data_skid_reg_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(111),
      Q => sig_data_skid_reg(111),
      R => '0'
    );
\sig_data_skid_reg_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(112),
      Q => sig_data_skid_reg(112),
      R => '0'
    );
\sig_data_skid_reg_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(113),
      Q => sig_data_skid_reg(113),
      R => '0'
    );
\sig_data_skid_reg_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(114),
      Q => sig_data_skid_reg(114),
      R => '0'
    );
\sig_data_skid_reg_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(115),
      Q => sig_data_skid_reg(115),
      R => '0'
    );
\sig_data_skid_reg_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(116),
      Q => sig_data_skid_reg(116),
      R => '0'
    );
\sig_data_skid_reg_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(117),
      Q => sig_data_skid_reg(117),
      R => '0'
    );
\sig_data_skid_reg_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(118),
      Q => sig_data_skid_reg(118),
      R => '0'
    );
\sig_data_skid_reg_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(119),
      Q => sig_data_skid_reg(119),
      R => '0'
    );
\sig_data_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(11),
      Q => sig_data_skid_reg(11),
      R => '0'
    );
\sig_data_skid_reg_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(120),
      Q => sig_data_skid_reg(120),
      R => '0'
    );
\sig_data_skid_reg_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(121),
      Q => sig_data_skid_reg(121),
      R => '0'
    );
\sig_data_skid_reg_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(122),
      Q => sig_data_skid_reg(122),
      R => '0'
    );
\sig_data_skid_reg_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(123),
      Q => sig_data_skid_reg(123),
      R => '0'
    );
\sig_data_skid_reg_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(124),
      Q => sig_data_skid_reg(124),
      R => '0'
    );
\sig_data_skid_reg_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(125),
      Q => sig_data_skid_reg(125),
      R => '0'
    );
\sig_data_skid_reg_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(126),
      Q => sig_data_skid_reg(126),
      R => '0'
    );
\sig_data_skid_reg_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(127),
      Q => sig_data_skid_reg(127),
      R => '0'
    );
\sig_data_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(12),
      Q => sig_data_skid_reg(12),
      R => '0'
    );
\sig_data_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(13),
      Q => sig_data_skid_reg(13),
      R => '0'
    );
\sig_data_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(14),
      Q => sig_data_skid_reg(14),
      R => '0'
    );
\sig_data_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(15),
      Q => sig_data_skid_reg(15),
      R => '0'
    );
\sig_data_skid_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(16),
      Q => sig_data_skid_reg(16),
      R => '0'
    );
\sig_data_skid_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(17),
      Q => sig_data_skid_reg(17),
      R => '0'
    );
\sig_data_skid_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(18),
      Q => sig_data_skid_reg(18),
      R => '0'
    );
\sig_data_skid_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(19),
      Q => sig_data_skid_reg(19),
      R => '0'
    );
\sig_data_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(1),
      Q => sig_data_skid_reg(1),
      R => '0'
    );
\sig_data_skid_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(20),
      Q => sig_data_skid_reg(20),
      R => '0'
    );
\sig_data_skid_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(21),
      Q => sig_data_skid_reg(21),
      R => '0'
    );
\sig_data_skid_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(22),
      Q => sig_data_skid_reg(22),
      R => '0'
    );
\sig_data_skid_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(23),
      Q => sig_data_skid_reg(23),
      R => '0'
    );
\sig_data_skid_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(24),
      Q => sig_data_skid_reg(24),
      R => '0'
    );
\sig_data_skid_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(25),
      Q => sig_data_skid_reg(25),
      R => '0'
    );
\sig_data_skid_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(26),
      Q => sig_data_skid_reg(26),
      R => '0'
    );
\sig_data_skid_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(27),
      Q => sig_data_skid_reg(27),
      R => '0'
    );
\sig_data_skid_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(28),
      Q => sig_data_skid_reg(28),
      R => '0'
    );
\sig_data_skid_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(29),
      Q => sig_data_skid_reg(29),
      R => '0'
    );
\sig_data_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(2),
      Q => sig_data_skid_reg(2),
      R => '0'
    );
\sig_data_skid_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(30),
      Q => sig_data_skid_reg(30),
      R => '0'
    );
\sig_data_skid_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(31),
      Q => sig_data_skid_reg(31),
      R => '0'
    );
\sig_data_skid_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(32),
      Q => sig_data_skid_reg(32),
      R => '0'
    );
\sig_data_skid_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(33),
      Q => sig_data_skid_reg(33),
      R => '0'
    );
\sig_data_skid_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(34),
      Q => sig_data_skid_reg(34),
      R => '0'
    );
\sig_data_skid_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(35),
      Q => sig_data_skid_reg(35),
      R => '0'
    );
\sig_data_skid_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(36),
      Q => sig_data_skid_reg(36),
      R => '0'
    );
\sig_data_skid_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(37),
      Q => sig_data_skid_reg(37),
      R => '0'
    );
\sig_data_skid_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(38),
      Q => sig_data_skid_reg(38),
      R => '0'
    );
\sig_data_skid_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(39),
      Q => sig_data_skid_reg(39),
      R => '0'
    );
\sig_data_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(3),
      Q => sig_data_skid_reg(3),
      R => '0'
    );
\sig_data_skid_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(40),
      Q => sig_data_skid_reg(40),
      R => '0'
    );
\sig_data_skid_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(41),
      Q => sig_data_skid_reg(41),
      R => '0'
    );
\sig_data_skid_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(42),
      Q => sig_data_skid_reg(42),
      R => '0'
    );
\sig_data_skid_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(43),
      Q => sig_data_skid_reg(43),
      R => '0'
    );
\sig_data_skid_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(44),
      Q => sig_data_skid_reg(44),
      R => '0'
    );
\sig_data_skid_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(45),
      Q => sig_data_skid_reg(45),
      R => '0'
    );
\sig_data_skid_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(46),
      Q => sig_data_skid_reg(46),
      R => '0'
    );
\sig_data_skid_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(47),
      Q => sig_data_skid_reg(47),
      R => '0'
    );
\sig_data_skid_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(48),
      Q => sig_data_skid_reg(48),
      R => '0'
    );
\sig_data_skid_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(49),
      Q => sig_data_skid_reg(49),
      R => '0'
    );
\sig_data_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(4),
      Q => sig_data_skid_reg(4),
      R => '0'
    );
\sig_data_skid_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(50),
      Q => sig_data_skid_reg(50),
      R => '0'
    );
\sig_data_skid_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(51),
      Q => sig_data_skid_reg(51),
      R => '0'
    );
\sig_data_skid_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(52),
      Q => sig_data_skid_reg(52),
      R => '0'
    );
\sig_data_skid_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(53),
      Q => sig_data_skid_reg(53),
      R => '0'
    );
\sig_data_skid_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(54),
      Q => sig_data_skid_reg(54),
      R => '0'
    );
\sig_data_skid_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(55),
      Q => sig_data_skid_reg(55),
      R => '0'
    );
\sig_data_skid_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(56),
      Q => sig_data_skid_reg(56),
      R => '0'
    );
\sig_data_skid_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(57),
      Q => sig_data_skid_reg(57),
      R => '0'
    );
\sig_data_skid_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(58),
      Q => sig_data_skid_reg(58),
      R => '0'
    );
\sig_data_skid_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(59),
      Q => sig_data_skid_reg(59),
      R => '0'
    );
\sig_data_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(5),
      Q => sig_data_skid_reg(5),
      R => '0'
    );
\sig_data_skid_reg_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(60),
      Q => sig_data_skid_reg(60),
      R => '0'
    );
\sig_data_skid_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(61),
      Q => sig_data_skid_reg(61),
      R => '0'
    );
\sig_data_skid_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(62),
      Q => sig_data_skid_reg(62),
      R => '0'
    );
\sig_data_skid_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(63),
      Q => sig_data_skid_reg(63),
      R => '0'
    );
\sig_data_skid_reg_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(64),
      Q => sig_data_skid_reg(64),
      R => '0'
    );
\sig_data_skid_reg_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(65),
      Q => sig_data_skid_reg(65),
      R => '0'
    );
\sig_data_skid_reg_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(66),
      Q => sig_data_skid_reg(66),
      R => '0'
    );
\sig_data_skid_reg_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(67),
      Q => sig_data_skid_reg(67),
      R => '0'
    );
\sig_data_skid_reg_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(68),
      Q => sig_data_skid_reg(68),
      R => '0'
    );
\sig_data_skid_reg_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(69),
      Q => sig_data_skid_reg(69),
      R => '0'
    );
\sig_data_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(6),
      Q => sig_data_skid_reg(6),
      R => '0'
    );
\sig_data_skid_reg_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(70),
      Q => sig_data_skid_reg(70),
      R => '0'
    );
\sig_data_skid_reg_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(71),
      Q => sig_data_skid_reg(71),
      R => '0'
    );
\sig_data_skid_reg_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(72),
      Q => sig_data_skid_reg(72),
      R => '0'
    );
\sig_data_skid_reg_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(73),
      Q => sig_data_skid_reg(73),
      R => '0'
    );
\sig_data_skid_reg_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(74),
      Q => sig_data_skid_reg(74),
      R => '0'
    );
\sig_data_skid_reg_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(75),
      Q => sig_data_skid_reg(75),
      R => '0'
    );
\sig_data_skid_reg_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(76),
      Q => sig_data_skid_reg(76),
      R => '0'
    );
\sig_data_skid_reg_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(77),
      Q => sig_data_skid_reg(77),
      R => '0'
    );
\sig_data_skid_reg_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(78),
      Q => sig_data_skid_reg(78),
      R => '0'
    );
\sig_data_skid_reg_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(79),
      Q => sig_data_skid_reg(79),
      R => '0'
    );
\sig_data_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(7),
      Q => sig_data_skid_reg(7),
      R => '0'
    );
\sig_data_skid_reg_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(80),
      Q => sig_data_skid_reg(80),
      R => '0'
    );
\sig_data_skid_reg_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(81),
      Q => sig_data_skid_reg(81),
      R => '0'
    );
\sig_data_skid_reg_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(82),
      Q => sig_data_skid_reg(82),
      R => '0'
    );
\sig_data_skid_reg_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(83),
      Q => sig_data_skid_reg(83),
      R => '0'
    );
\sig_data_skid_reg_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(84),
      Q => sig_data_skid_reg(84),
      R => '0'
    );
\sig_data_skid_reg_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(85),
      Q => sig_data_skid_reg(85),
      R => '0'
    );
\sig_data_skid_reg_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(86),
      Q => sig_data_skid_reg(86),
      R => '0'
    );
\sig_data_skid_reg_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(87),
      Q => sig_data_skid_reg(87),
      R => '0'
    );
\sig_data_skid_reg_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(88),
      Q => sig_data_skid_reg(88),
      R => '0'
    );
\sig_data_skid_reg_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(89),
      Q => sig_data_skid_reg(89),
      R => '0'
    );
\sig_data_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(8),
      Q => sig_data_skid_reg(8),
      R => '0'
    );
\sig_data_skid_reg_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(90),
      Q => sig_data_skid_reg(90),
      R => '0'
    );
\sig_data_skid_reg_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(91),
      Q => sig_data_skid_reg(91),
      R => '0'
    );
\sig_data_skid_reg_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(92),
      Q => sig_data_skid_reg(92),
      R => '0'
    );
\sig_data_skid_reg_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(93),
      Q => sig_data_skid_reg(93),
      R => '0'
    );
\sig_data_skid_reg_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(94),
      Q => sig_data_skid_reg(94),
      R => '0'
    );
\sig_data_skid_reg_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(95),
      Q => sig_data_skid_reg(95),
      R => '0'
    );
\sig_data_skid_reg_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(96),
      Q => sig_data_skid_reg(96),
      R => '0'
    );
\sig_data_skid_reg_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(97),
      Q => sig_data_skid_reg(97),
      R => '0'
    );
\sig_data_skid_reg_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(98),
      Q => sig_data_skid_reg(98),
      R => '0'
    );
\sig_data_skid_reg_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(99),
      Q => sig_data_skid_reg(99),
      R => '0'
    );
\sig_data_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(9),
      Q => sig_data_skid_reg(9),
      R => '0'
    );
sig_last_reg_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => sig_last_skid_mux_out,
      Q => m_axi_s2mm_wlast,
      R => sig_stream_rst
    );
sig_last_skid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_data2skid_wlast,
      Q => sig_last_skid_reg,
      R => sig_stream_rst
    );
sig_m_valid_dup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040404044444444"
    )
        port map (
      I0 => sig_mmap_reset_reg,
      I1 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      I2 => sig_m_valid_dup,
      I3 => sig_s_ready_dup,
      I4 => m_axi_s2mm_wready,
      I5 => sig_m_valid_out_reg_0,
      O => sig_m_valid_dup_i_1_n_0
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_m_valid_dup_i_1_n_0,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_m_valid_dup_i_1_n_0,
      Q => sig_m_valid_out,
      R => '0'
    );
\sig_s_ready_dup_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEEEFE"
    )
        port map (
      I0 => m_axi_s2mm_wready,
      I1 => sig_mmap_reset_reg,
      I2 => sig_s_ready_dup,
      I3 => sig_m_valid_dup,
      I4 => sig_m_valid_out_reg_0,
      O => \sig_s_ready_dup_i_1__1_n_0\
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__1_n_0\,
      Q => sig_s_ready_dup,
      R => sig_stream_rst
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__1_n_0\,
      Q => sig_s_ready_out,
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(0),
      Q => m_axi_s2mm_wstrb(0),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(10),
      Q => m_axi_s2mm_wstrb(10),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(11),
      Q => m_axi_s2mm_wstrb(11),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(12),
      Q => m_axi_s2mm_wstrb(12),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(13),
      Q => m_axi_s2mm_wstrb(13),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(14),
      Q => m_axi_s2mm_wstrb(14),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(15),
      Q => m_axi_s2mm_wstrb(15),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(1),
      Q => m_axi_s2mm_wstrb(1),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(2),
      Q => m_axi_s2mm_wstrb(2),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(3),
      Q => m_axi_s2mm_wstrb(3),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(4),
      Q => m_axi_s2mm_wstrb(4),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(5),
      Q => m_axi_s2mm_wstrb(5),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(6),
      Q => m_axi_s2mm_wstrb(6),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(7),
      Q => m_axi_s2mm_wstrb(7),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(8),
      Q => m_axi_s2mm_wstrb(8),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_data_reg_out_en,
      D => \sig_strb_reg_out_reg[15]_0\(9),
      Q => m_axi_s2mm_wstrb(9),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(0),
      Q => Q(0),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(10),
      Q => Q(10),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(11),
      Q => Q(11),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(12),
      Q => Q(12),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(13),
      Q => Q(13),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(14),
      Q => Q(14),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(15),
      Q => Q(15),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(1),
      Q => Q(1),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(2),
      Q => Q(2),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(3),
      Q => Q(3),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(4),
      Q => Q(4),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(5),
      Q => Q(5),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(6),
      Q => Q(6),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(7),
      Q => Q(7),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(8),
      Q => Q(8),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(9),
      Q => Q(9),
      R => sig_stream_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_axi_datamover_skid_buf is
  port (
    \out\ : out STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    sig_m_valid_out_reg_0 : out STD_LOGIC;
    skid2dre_wlast : out STD_LOGIC;
    sig_stop_request : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 127 downto 0 );
    \sig_strb_reg_out_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_sready_stop_reg_reg_0 : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    sig_halt_reg_dly2 : in STD_LOGIC;
    sig_halt_reg_dly3 : in STD_LOGIC;
    s_axis_s2mm_tvalid : in STD_LOGIC;
    sig_mvalid_stop_reg_reg_0 : in STD_LOGIC;
    sig_mmap_reset_reg : in STD_LOGIC;
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    sig_m_valid_out_reg_1 : in STD_LOGIC
  );
end design_1_axi_datamover_0_0_axi_datamover_skid_buf;

architecture STRUCTURE of design_1_axi_datamover_0_0_axi_datamover_skid_buf is
  signal sig_data_reg_out0 : STD_LOGIC;
  signal sig_data_skid_mux_out : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sig_data_skid_reg : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sig_last_skid_mux_out : STD_LOGIC;
  signal sig_last_skid_reg : STD_LOGIC;
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal \sig_m_valid_dup_i_1__1_n_0\ : STD_LOGIC;
  signal \sig_m_valid_dup_i_2__0_n_0\ : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_mvalid_stop : STD_LOGIC;
  signal sig_mvalid_stop_reg_i_1_n_0 : STD_LOGIC;
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal sig_s_ready_dup_i_1_n_0 : STD_LOGIC;
  signal sig_s_ready_dup_i_2_n_0 : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  signal sig_slast_with_stop : STD_LOGIC;
  signal sig_sstrb_with_stop : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^sig_stop_request\ : STD_LOGIC;
  signal sig_strb_skid_mux_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_strb_skid_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sig_last_skid_reg_i_1 : label is "soft_lutpair0";
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
  attribute SOFT_HLUTNM of \sig_strb_skid_reg[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sig_strb_skid_reg[11]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sig_strb_skid_reg[12]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sig_strb_skid_reg[13]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sig_strb_skid_reg[14]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sig_strb_skid_reg[15]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sig_strb_skid_reg[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sig_strb_skid_reg[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sig_strb_skid_reg[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sig_strb_skid_reg[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sig_strb_skid_reg[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sig_strb_skid_reg[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sig_strb_skid_reg[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sig_strb_skid_reg[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sig_strb_skid_reg[9]_i_1\ : label is "soft_lutpair3";
begin
  \out\ <= sig_m_valid_dup;
  s_axis_s2mm_tready <= sig_s_ready_out;
  sig_m_valid_out_reg_0 <= sig_m_valid_out;
  sig_stop_request <= \^sig_stop_request\;
\sig_data_reg_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(0),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(0),
      O => sig_data_skid_mux_out(0)
    );
\sig_data_reg_out[100]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(100),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(100),
      O => sig_data_skid_mux_out(100)
    );
\sig_data_reg_out[101]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(101),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(101),
      O => sig_data_skid_mux_out(101)
    );
\sig_data_reg_out[102]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(102),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(102),
      O => sig_data_skid_mux_out(102)
    );
\sig_data_reg_out[103]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(103),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(103),
      O => sig_data_skid_mux_out(103)
    );
\sig_data_reg_out[104]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(104),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(104),
      O => sig_data_skid_mux_out(104)
    );
\sig_data_reg_out[105]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(105),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(105),
      O => sig_data_skid_mux_out(105)
    );
\sig_data_reg_out[106]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(106),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(106),
      O => sig_data_skid_mux_out(106)
    );
\sig_data_reg_out[107]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(107),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(107),
      O => sig_data_skid_mux_out(107)
    );
\sig_data_reg_out[108]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(108),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(108),
      O => sig_data_skid_mux_out(108)
    );
\sig_data_reg_out[109]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(109),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(109),
      O => sig_data_skid_mux_out(109)
    );
\sig_data_reg_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(10),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(10),
      O => sig_data_skid_mux_out(10)
    );
\sig_data_reg_out[110]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(110),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(110),
      O => sig_data_skid_mux_out(110)
    );
\sig_data_reg_out[111]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(111),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(111),
      O => sig_data_skid_mux_out(111)
    );
\sig_data_reg_out[112]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(112),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(112),
      O => sig_data_skid_mux_out(112)
    );
\sig_data_reg_out[113]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(113),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(113),
      O => sig_data_skid_mux_out(113)
    );
\sig_data_reg_out[114]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(114),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(114),
      O => sig_data_skid_mux_out(114)
    );
\sig_data_reg_out[115]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(115),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(115),
      O => sig_data_skid_mux_out(115)
    );
\sig_data_reg_out[116]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(116),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(116),
      O => sig_data_skid_mux_out(116)
    );
\sig_data_reg_out[117]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(117),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(117),
      O => sig_data_skid_mux_out(117)
    );
\sig_data_reg_out[118]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(118),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(118),
      O => sig_data_skid_mux_out(118)
    );
\sig_data_reg_out[119]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(119),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(119),
      O => sig_data_skid_mux_out(119)
    );
\sig_data_reg_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(11),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(11),
      O => sig_data_skid_mux_out(11)
    );
\sig_data_reg_out[120]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(120),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(120),
      O => sig_data_skid_mux_out(120)
    );
\sig_data_reg_out[121]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(121),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(121),
      O => sig_data_skid_mux_out(121)
    );
\sig_data_reg_out[122]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(122),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(122),
      O => sig_data_skid_mux_out(122)
    );
\sig_data_reg_out[123]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(123),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(123),
      O => sig_data_skid_mux_out(123)
    );
\sig_data_reg_out[124]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(124),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(124),
      O => sig_data_skid_mux_out(124)
    );
\sig_data_reg_out[125]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(125),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(125),
      O => sig_data_skid_mux_out(125)
    );
\sig_data_reg_out[126]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(126),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(126),
      O => sig_data_skid_mux_out(126)
    );
\sig_data_reg_out[127]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_mvalid_stop,
      I1 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      O => sig_data_reg_out0
    );
\sig_data_reg_out[127]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(127),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(127),
      O => sig_data_skid_mux_out(127)
    );
\sig_data_reg_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(12),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(12),
      O => sig_data_skid_mux_out(12)
    );
\sig_data_reg_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(13),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(13),
      O => sig_data_skid_mux_out(13)
    );
\sig_data_reg_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(14),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(14),
      O => sig_data_skid_mux_out(14)
    );
\sig_data_reg_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(15),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(15),
      O => sig_data_skid_mux_out(15)
    );
\sig_data_reg_out[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(16),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(16),
      O => sig_data_skid_mux_out(16)
    );
\sig_data_reg_out[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(17),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(17),
      O => sig_data_skid_mux_out(17)
    );
\sig_data_reg_out[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(18),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(18),
      O => sig_data_skid_mux_out(18)
    );
\sig_data_reg_out[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(19),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(19),
      O => sig_data_skid_mux_out(19)
    );
\sig_data_reg_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(1),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(1),
      O => sig_data_skid_mux_out(1)
    );
\sig_data_reg_out[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(20),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(20),
      O => sig_data_skid_mux_out(20)
    );
\sig_data_reg_out[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(21),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(21),
      O => sig_data_skid_mux_out(21)
    );
\sig_data_reg_out[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(22),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(22),
      O => sig_data_skid_mux_out(22)
    );
\sig_data_reg_out[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(23),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(23),
      O => sig_data_skid_mux_out(23)
    );
\sig_data_reg_out[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(24),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(24),
      O => sig_data_skid_mux_out(24)
    );
\sig_data_reg_out[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(25),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(25),
      O => sig_data_skid_mux_out(25)
    );
\sig_data_reg_out[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(26),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(26),
      O => sig_data_skid_mux_out(26)
    );
\sig_data_reg_out[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(27),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(27),
      O => sig_data_skid_mux_out(27)
    );
\sig_data_reg_out[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(28),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(28),
      O => sig_data_skid_mux_out(28)
    );
\sig_data_reg_out[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(29),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(29),
      O => sig_data_skid_mux_out(29)
    );
\sig_data_reg_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(2),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(2),
      O => sig_data_skid_mux_out(2)
    );
\sig_data_reg_out[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(30),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(30),
      O => sig_data_skid_mux_out(30)
    );
\sig_data_reg_out[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(31),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(31),
      O => sig_data_skid_mux_out(31)
    );
\sig_data_reg_out[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(32),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(32),
      O => sig_data_skid_mux_out(32)
    );
\sig_data_reg_out[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(33),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(33),
      O => sig_data_skid_mux_out(33)
    );
\sig_data_reg_out[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(34),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(34),
      O => sig_data_skid_mux_out(34)
    );
\sig_data_reg_out[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(35),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(35),
      O => sig_data_skid_mux_out(35)
    );
\sig_data_reg_out[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(36),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(36),
      O => sig_data_skid_mux_out(36)
    );
\sig_data_reg_out[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(37),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(37),
      O => sig_data_skid_mux_out(37)
    );
\sig_data_reg_out[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(38),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(38),
      O => sig_data_skid_mux_out(38)
    );
\sig_data_reg_out[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(39),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(39),
      O => sig_data_skid_mux_out(39)
    );
\sig_data_reg_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(3),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(3),
      O => sig_data_skid_mux_out(3)
    );
\sig_data_reg_out[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(40),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(40),
      O => sig_data_skid_mux_out(40)
    );
\sig_data_reg_out[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(41),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(41),
      O => sig_data_skid_mux_out(41)
    );
\sig_data_reg_out[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(42),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(42),
      O => sig_data_skid_mux_out(42)
    );
\sig_data_reg_out[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(43),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(43),
      O => sig_data_skid_mux_out(43)
    );
\sig_data_reg_out[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(44),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(44),
      O => sig_data_skid_mux_out(44)
    );
\sig_data_reg_out[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(45),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(45),
      O => sig_data_skid_mux_out(45)
    );
\sig_data_reg_out[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(46),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(46),
      O => sig_data_skid_mux_out(46)
    );
\sig_data_reg_out[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(47),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(47),
      O => sig_data_skid_mux_out(47)
    );
\sig_data_reg_out[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(48),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(48),
      O => sig_data_skid_mux_out(48)
    );
\sig_data_reg_out[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(49),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(49),
      O => sig_data_skid_mux_out(49)
    );
\sig_data_reg_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(4),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(4),
      O => sig_data_skid_mux_out(4)
    );
\sig_data_reg_out[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(50),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(50),
      O => sig_data_skid_mux_out(50)
    );
\sig_data_reg_out[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(51),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(51),
      O => sig_data_skid_mux_out(51)
    );
\sig_data_reg_out[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(52),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(52),
      O => sig_data_skid_mux_out(52)
    );
\sig_data_reg_out[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(53),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(53),
      O => sig_data_skid_mux_out(53)
    );
\sig_data_reg_out[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(54),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(54),
      O => sig_data_skid_mux_out(54)
    );
\sig_data_reg_out[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(55),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(55),
      O => sig_data_skid_mux_out(55)
    );
\sig_data_reg_out[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(56),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(56),
      O => sig_data_skid_mux_out(56)
    );
\sig_data_reg_out[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(57),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(57),
      O => sig_data_skid_mux_out(57)
    );
\sig_data_reg_out[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(58),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(58),
      O => sig_data_skid_mux_out(58)
    );
\sig_data_reg_out[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(59),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(59),
      O => sig_data_skid_mux_out(59)
    );
\sig_data_reg_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(5),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(5),
      O => sig_data_skid_mux_out(5)
    );
\sig_data_reg_out[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(60),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(60),
      O => sig_data_skid_mux_out(60)
    );
\sig_data_reg_out[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(61),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(61),
      O => sig_data_skid_mux_out(61)
    );
\sig_data_reg_out[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(62),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(62),
      O => sig_data_skid_mux_out(62)
    );
\sig_data_reg_out[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(63),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(63),
      O => sig_data_skid_mux_out(63)
    );
\sig_data_reg_out[64]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(64),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(64),
      O => sig_data_skid_mux_out(64)
    );
\sig_data_reg_out[65]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(65),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(65),
      O => sig_data_skid_mux_out(65)
    );
\sig_data_reg_out[66]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(66),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(66),
      O => sig_data_skid_mux_out(66)
    );
\sig_data_reg_out[67]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(67),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(67),
      O => sig_data_skid_mux_out(67)
    );
\sig_data_reg_out[68]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(68),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(68),
      O => sig_data_skid_mux_out(68)
    );
\sig_data_reg_out[69]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(69),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(69),
      O => sig_data_skid_mux_out(69)
    );
\sig_data_reg_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(6),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(6),
      O => sig_data_skid_mux_out(6)
    );
\sig_data_reg_out[70]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(70),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(70),
      O => sig_data_skid_mux_out(70)
    );
\sig_data_reg_out[71]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(71),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(71),
      O => sig_data_skid_mux_out(71)
    );
\sig_data_reg_out[72]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(72),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(72),
      O => sig_data_skid_mux_out(72)
    );
\sig_data_reg_out[73]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(73),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(73),
      O => sig_data_skid_mux_out(73)
    );
\sig_data_reg_out[74]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(74),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(74),
      O => sig_data_skid_mux_out(74)
    );
\sig_data_reg_out[75]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(75),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(75),
      O => sig_data_skid_mux_out(75)
    );
\sig_data_reg_out[76]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(76),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(76),
      O => sig_data_skid_mux_out(76)
    );
\sig_data_reg_out[77]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(77),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(77),
      O => sig_data_skid_mux_out(77)
    );
\sig_data_reg_out[78]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(78),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(78),
      O => sig_data_skid_mux_out(78)
    );
\sig_data_reg_out[79]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(79),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(79),
      O => sig_data_skid_mux_out(79)
    );
\sig_data_reg_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(7),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(7),
      O => sig_data_skid_mux_out(7)
    );
\sig_data_reg_out[80]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(80),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(80),
      O => sig_data_skid_mux_out(80)
    );
\sig_data_reg_out[81]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(81),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(81),
      O => sig_data_skid_mux_out(81)
    );
\sig_data_reg_out[82]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(82),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(82),
      O => sig_data_skid_mux_out(82)
    );
\sig_data_reg_out[83]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(83),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(83),
      O => sig_data_skid_mux_out(83)
    );
\sig_data_reg_out[84]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(84),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(84),
      O => sig_data_skid_mux_out(84)
    );
\sig_data_reg_out[85]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(85),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(85),
      O => sig_data_skid_mux_out(85)
    );
\sig_data_reg_out[86]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(86),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(86),
      O => sig_data_skid_mux_out(86)
    );
\sig_data_reg_out[87]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(87),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(87),
      O => sig_data_skid_mux_out(87)
    );
\sig_data_reg_out[88]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(88),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(88),
      O => sig_data_skid_mux_out(88)
    );
\sig_data_reg_out[89]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(89),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(89),
      O => sig_data_skid_mux_out(89)
    );
\sig_data_reg_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(8),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(8),
      O => sig_data_skid_mux_out(8)
    );
\sig_data_reg_out[90]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(90),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(90),
      O => sig_data_skid_mux_out(90)
    );
\sig_data_reg_out[91]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(91),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(91),
      O => sig_data_skid_mux_out(91)
    );
\sig_data_reg_out[92]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(92),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(92),
      O => sig_data_skid_mux_out(92)
    );
\sig_data_reg_out[93]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(93),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(93),
      O => sig_data_skid_mux_out(93)
    );
\sig_data_reg_out[94]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(94),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(94),
      O => sig_data_skid_mux_out(94)
    );
\sig_data_reg_out[95]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(95),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(95),
      O => sig_data_skid_mux_out(95)
    );
\sig_data_reg_out[96]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(96),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(96),
      O => sig_data_skid_mux_out(96)
    );
\sig_data_reg_out[97]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(97),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(97),
      O => sig_data_skid_mux_out(97)
    );
\sig_data_reg_out[98]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(98),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(98),
      O => sig_data_skid_mux_out(98)
    );
\sig_data_reg_out[99]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(99),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(99),
      O => sig_data_skid_mux_out(99)
    );
\sig_data_reg_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_s2mm_tdata(9),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(9),
      O => sig_data_skid_mux_out(9)
    );
\sig_data_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(0),
      Q => Q(0),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(100),
      Q => Q(100),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(101),
      Q => Q(101),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(102),
      Q => Q(102),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(103),
      Q => Q(103),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(104),
      Q => Q(104),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(105),
      Q => Q(105),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(106),
      Q => Q(106),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(107),
      Q => Q(107),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(108),
      Q => Q(108),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(109),
      Q => Q(109),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(10),
      Q => Q(10),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(110),
      Q => Q(110),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(111),
      Q => Q(111),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(112),
      Q => Q(112),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(113),
      Q => Q(113),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(114),
      Q => Q(114),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(115),
      Q => Q(115),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(116),
      Q => Q(116),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(117),
      Q => Q(117),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(118),
      Q => Q(118),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(119),
      Q => Q(119),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(11),
      Q => Q(11),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(120),
      Q => Q(120),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(121),
      Q => Q(121),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(122),
      Q => Q(122),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(123),
      Q => Q(123),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(124),
      Q => Q(124),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(125),
      Q => Q(125),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(126),
      Q => Q(126),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(127),
      Q => Q(127),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(12),
      Q => Q(12),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(13),
      Q => Q(13),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(14),
      Q => Q(14),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(15),
      Q => Q(15),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(16),
      Q => Q(16),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(17),
      Q => Q(17),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(18),
      Q => Q(18),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(19),
      Q => Q(19),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(1),
      Q => Q(1),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(20),
      Q => Q(20),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(21),
      Q => Q(21),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(22),
      Q => Q(22),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(23),
      Q => Q(23),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(24),
      Q => Q(24),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(25),
      Q => Q(25),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(26),
      Q => Q(26),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(27),
      Q => Q(27),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(28),
      Q => Q(28),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(29),
      Q => Q(29),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(2),
      Q => Q(2),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(30),
      Q => Q(30),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(31),
      Q => Q(31),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(32),
      Q => Q(32),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(33),
      Q => Q(33),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(34),
      Q => Q(34),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(35),
      Q => Q(35),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(36),
      Q => Q(36),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(37),
      Q => Q(37),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(38),
      Q => Q(38),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(39),
      Q => Q(39),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(3),
      Q => Q(3),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(40),
      Q => Q(40),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(41),
      Q => Q(41),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(42),
      Q => Q(42),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(43),
      Q => Q(43),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(44),
      Q => Q(44),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(45),
      Q => Q(45),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(46),
      Q => Q(46),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(47),
      Q => Q(47),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(48),
      Q => Q(48),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(49),
      Q => Q(49),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(4),
      Q => Q(4),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(50),
      Q => Q(50),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(51),
      Q => Q(51),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(52),
      Q => Q(52),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(53),
      Q => Q(53),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(54),
      Q => Q(54),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(55),
      Q => Q(55),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(56),
      Q => Q(56),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(57),
      Q => Q(57),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(58),
      Q => Q(58),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(59),
      Q => Q(59),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(5),
      Q => Q(5),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(60),
      Q => Q(60),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(61),
      Q => Q(61),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(62),
      Q => Q(62),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(63),
      Q => Q(63),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(64),
      Q => Q(64),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(65),
      Q => Q(65),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(66),
      Q => Q(66),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(67),
      Q => Q(67),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(68),
      Q => Q(68),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(69),
      Q => Q(69),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(6),
      Q => Q(6),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(70),
      Q => Q(70),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(71),
      Q => Q(71),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(72),
      Q => Q(72),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(73),
      Q => Q(73),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(74),
      Q => Q(74),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(75),
      Q => Q(75),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(76),
      Q => Q(76),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(77),
      Q => Q(77),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(78),
      Q => Q(78),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(79),
      Q => Q(79),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(7),
      Q => Q(7),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(80),
      Q => Q(80),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(81),
      Q => Q(81),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(82),
      Q => Q(82),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(83),
      Q => Q(83),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(84),
      Q => Q(84),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(85),
      Q => Q(85),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(86),
      Q => Q(86),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(87),
      Q => Q(87),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(88),
      Q => Q(88),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(89),
      Q => Q(89),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(8),
      Q => Q(8),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(90),
      Q => Q(90),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(91),
      Q => Q(91),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(92),
      Q => Q(92),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(93),
      Q => Q(93),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(94),
      Q => Q(94),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(95),
      Q => Q(95),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(96),
      Q => Q(96),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(97),
      Q => Q(97),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(98),
      Q => Q(98),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(99),
      Q => Q(99),
      R => sig_data_reg_out0
    );
\sig_data_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(9),
      Q => Q(9),
      R => sig_data_reg_out0
    );
\sig_data_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(0),
      Q => sig_data_skid_reg(0),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(100),
      Q => sig_data_skid_reg(100),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(101),
      Q => sig_data_skid_reg(101),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(102),
      Q => sig_data_skid_reg(102),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(103),
      Q => sig_data_skid_reg(103),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(104),
      Q => sig_data_skid_reg(104),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(105),
      Q => sig_data_skid_reg(105),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(106),
      Q => sig_data_skid_reg(106),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(107),
      Q => sig_data_skid_reg(107),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(108),
      Q => sig_data_skid_reg(108),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(109),
      Q => sig_data_skid_reg(109),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(10),
      Q => sig_data_skid_reg(10),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(110),
      Q => sig_data_skid_reg(110),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(111),
      Q => sig_data_skid_reg(111),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(112),
      Q => sig_data_skid_reg(112),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(113),
      Q => sig_data_skid_reg(113),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(114),
      Q => sig_data_skid_reg(114),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(115),
      Q => sig_data_skid_reg(115),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(116),
      Q => sig_data_skid_reg(116),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(117),
      Q => sig_data_skid_reg(117),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(118),
      Q => sig_data_skid_reg(118),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(119),
      Q => sig_data_skid_reg(119),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(11),
      Q => sig_data_skid_reg(11),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(120),
      Q => sig_data_skid_reg(120),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(121),
      Q => sig_data_skid_reg(121),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(122),
      Q => sig_data_skid_reg(122),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(123),
      Q => sig_data_skid_reg(123),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(124),
      Q => sig_data_skid_reg(124),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(125),
      Q => sig_data_skid_reg(125),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(126),
      Q => sig_data_skid_reg(126),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(127),
      Q => sig_data_skid_reg(127),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(12),
      Q => sig_data_skid_reg(12),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(13),
      Q => sig_data_skid_reg(13),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(14),
      Q => sig_data_skid_reg(14),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(15),
      Q => sig_data_skid_reg(15),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(16),
      Q => sig_data_skid_reg(16),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(17),
      Q => sig_data_skid_reg(17),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(18),
      Q => sig_data_skid_reg(18),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(19),
      Q => sig_data_skid_reg(19),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(1),
      Q => sig_data_skid_reg(1),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(20),
      Q => sig_data_skid_reg(20),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(21),
      Q => sig_data_skid_reg(21),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(22),
      Q => sig_data_skid_reg(22),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(23),
      Q => sig_data_skid_reg(23),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(24),
      Q => sig_data_skid_reg(24),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(25),
      Q => sig_data_skid_reg(25),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(26),
      Q => sig_data_skid_reg(26),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(27),
      Q => sig_data_skid_reg(27),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(28),
      Q => sig_data_skid_reg(28),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(29),
      Q => sig_data_skid_reg(29),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(2),
      Q => sig_data_skid_reg(2),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(30),
      Q => sig_data_skid_reg(30),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(31),
      Q => sig_data_skid_reg(31),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(32),
      Q => sig_data_skid_reg(32),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(33),
      Q => sig_data_skid_reg(33),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(34),
      Q => sig_data_skid_reg(34),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(35),
      Q => sig_data_skid_reg(35),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(36),
      Q => sig_data_skid_reg(36),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(37),
      Q => sig_data_skid_reg(37),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(38),
      Q => sig_data_skid_reg(38),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(39),
      Q => sig_data_skid_reg(39),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(3),
      Q => sig_data_skid_reg(3),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(40),
      Q => sig_data_skid_reg(40),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(41),
      Q => sig_data_skid_reg(41),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(42),
      Q => sig_data_skid_reg(42),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(43),
      Q => sig_data_skid_reg(43),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(44),
      Q => sig_data_skid_reg(44),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(45),
      Q => sig_data_skid_reg(45),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(46),
      Q => sig_data_skid_reg(46),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(47),
      Q => sig_data_skid_reg(47),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(48),
      Q => sig_data_skid_reg(48),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(49),
      Q => sig_data_skid_reg(49),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(4),
      Q => sig_data_skid_reg(4),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(50),
      Q => sig_data_skid_reg(50),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(51),
      Q => sig_data_skid_reg(51),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(52),
      Q => sig_data_skid_reg(52),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(53),
      Q => sig_data_skid_reg(53),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(54),
      Q => sig_data_skid_reg(54),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(55),
      Q => sig_data_skid_reg(55),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(56),
      Q => sig_data_skid_reg(56),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(57),
      Q => sig_data_skid_reg(57),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(58),
      Q => sig_data_skid_reg(58),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(59),
      Q => sig_data_skid_reg(59),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(5),
      Q => sig_data_skid_reg(5),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(60),
      Q => sig_data_skid_reg(60),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(61),
      Q => sig_data_skid_reg(61),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(62),
      Q => sig_data_skid_reg(62),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(63),
      Q => sig_data_skid_reg(63),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(64),
      Q => sig_data_skid_reg(64),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(65),
      Q => sig_data_skid_reg(65),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(66),
      Q => sig_data_skid_reg(66),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(67),
      Q => sig_data_skid_reg(67),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(68),
      Q => sig_data_skid_reg(68),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(69),
      Q => sig_data_skid_reg(69),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(6),
      Q => sig_data_skid_reg(6),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(70),
      Q => sig_data_skid_reg(70),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(71),
      Q => sig_data_skid_reg(71),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(72),
      Q => sig_data_skid_reg(72),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(73),
      Q => sig_data_skid_reg(73),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(74),
      Q => sig_data_skid_reg(74),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(75),
      Q => sig_data_skid_reg(75),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(76),
      Q => sig_data_skid_reg(76),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(77),
      Q => sig_data_skid_reg(77),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(78),
      Q => sig_data_skid_reg(78),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(79),
      Q => sig_data_skid_reg(79),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(7),
      Q => sig_data_skid_reg(7),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(80),
      Q => sig_data_skid_reg(80),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(81),
      Q => sig_data_skid_reg(81),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(82),
      Q => sig_data_skid_reg(82),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(83),
      Q => sig_data_skid_reg(83),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(84),
      Q => sig_data_skid_reg(84),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(85),
      Q => sig_data_skid_reg(85),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(86),
      Q => sig_data_skid_reg(86),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(87),
      Q => sig_data_skid_reg(87),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(88),
      Q => sig_data_skid_reg(88),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(89),
      Q => sig_data_skid_reg(89),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(8),
      Q => sig_data_skid_reg(8),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(90),
      Q => sig_data_skid_reg(90),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(91),
      Q => sig_data_skid_reg(91),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(92),
      Q => sig_data_skid_reg(92),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(93),
      Q => sig_data_skid_reg(93),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(94),
      Q => sig_data_skid_reg(94),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(95),
      Q => sig_data_skid_reg(95),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(96),
      Q => sig_data_skid_reg(96),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(97),
      Q => sig_data_skid_reg(97),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(98),
      Q => sig_data_skid_reg(98),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(99),
      Q => sig_data_skid_reg(99),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => s_axis_s2mm_tdata(9),
      Q => sig_data_skid_reg(9),
      R => sig_stream_rst
    );
sig_last_reg_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => s_axis_s2mm_tlast,
      I1 => \^sig_stop_request\,
      I2 => sig_s_ready_dup,
      I3 => sig_last_skid_reg,
      O => sig_last_skid_mux_out
    );
sig_last_reg_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_last_skid_mux_out,
      Q => skid2dre_wlast,
      R => sig_data_reg_out0
    );
sig_last_skid_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_s2mm_tlast,
      I1 => \^sig_stop_request\,
      O => sig_slast_with_stop
    );
sig_last_skid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_slast_with_stop,
      Q => sig_last_skid_reg,
      R => sig_stream_rst
    );
\sig_m_valid_dup_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40404040F0F070F0"
    )
        port map (
      I0 => sig_mvalid_stop_reg_reg_0,
      I1 => sig_m_valid_dup,
      I2 => \sig_m_valid_dup_i_2__0_n_0\,
      I3 => sig_halt_reg_dly2,
      I4 => sig_halt_reg_dly3,
      I5 => \^sig_stop_request\,
      O => \sig_m_valid_dup_i_1__1_n_0\
    );
\sig_m_valid_dup_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0004000F000C0"
    )
        port map (
      I0 => sig_mvalid_stop_reg_reg_0,
      I1 => sig_m_valid_dup,
      I2 => sig_m_valid_out_reg_1,
      I3 => sig_mvalid_stop,
      I4 => s_axis_s2mm_tvalid,
      I5 => sig_s_ready_dup,
      O => \sig_m_valid_dup_i_2__0_n_0\
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__1_n_0\,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__1_n_0\,
      Q => sig_m_valid_out,
      R => '0'
    );
sig_mvalid_stop_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBBBB0080"
    )
        port map (
      I0 => sig_mvalid_stop_reg_reg_0,
      I1 => sig_m_valid_dup,
      I2 => sig_halt_reg_dly2,
      I3 => sig_halt_reg_dly3,
      I4 => \^sig_stop_request\,
      I5 => sig_mvalid_stop,
      O => sig_mvalid_stop_reg_i_1_n_0
    );
sig_mvalid_stop_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_mvalid_stop_reg_i_1_n_0,
      Q => sig_mvalid_stop,
      R => sig_stream_rst
    );
sig_s_ready_dup_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20200020"
    )
        port map (
      I0 => sig_s_ready_dup_i_2_n_0,
      I1 => \^sig_stop_request\,
      I2 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      I3 => sig_halt_reg_dly2,
      I4 => sig_halt_reg_dly3,
      O => sig_s_ready_dup_i_1_n_0
    );
sig_s_ready_dup_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF70"
    )
        port map (
      I0 => sig_m_valid_dup,
      I1 => s_axis_s2mm_tvalid,
      I2 => sig_s_ready_dup,
      I3 => sig_mvalid_stop_reg_reg_0,
      I4 => sig_mmap_reset_reg,
      O => sig_s_ready_dup_i_2_n_0
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_s_ready_dup_i_1_n_0,
      Q => sig_s_ready_dup,
      R => '0'
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_s_ready_dup_i_1_n_0,
      Q => sig_s_ready_out,
      R => '0'
    );
sig_sready_stop_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_sready_stop_reg_reg_0,
      Q => \^sig_stop_request\,
      R => sig_stream_rst
    );
\sig_strb_reg_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(0),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(0),
      O => sig_strb_skid_mux_out(0)
    );
\sig_strb_reg_out[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(10),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(10),
      O => sig_strb_skid_mux_out(10)
    );
\sig_strb_reg_out[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(11),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(11),
      O => sig_strb_skid_mux_out(11)
    );
\sig_strb_reg_out[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(12),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(12),
      O => sig_strb_skid_mux_out(12)
    );
\sig_strb_reg_out[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(13),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(13),
      O => sig_strb_skid_mux_out(13)
    );
\sig_strb_reg_out[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(14),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(14),
      O => sig_strb_skid_mux_out(14)
    );
\sig_strb_reg_out[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(15),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(15),
      O => sig_strb_skid_mux_out(15)
    );
\sig_strb_reg_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(1),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(1),
      O => sig_strb_skid_mux_out(1)
    );
\sig_strb_reg_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(2),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(2),
      O => sig_strb_skid_mux_out(2)
    );
\sig_strb_reg_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(3),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(3),
      O => sig_strb_skid_mux_out(3)
    );
\sig_strb_reg_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(4),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(4),
      O => sig_strb_skid_mux_out(4)
    );
\sig_strb_reg_out[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(5),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(5),
      O => sig_strb_skid_mux_out(5)
    );
\sig_strb_reg_out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(6),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(6),
      O => sig_strb_skid_mux_out(6)
    );
\sig_strb_reg_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(7),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(7),
      O => sig_strb_skid_mux_out(7)
    );
\sig_strb_reg_out[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(8),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(8),
      O => sig_strb_skid_mux_out(8)
    );
\sig_strb_reg_out[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(9),
      I2 => sig_s_ready_dup,
      I3 => sig_strb_skid_reg(9),
      O => sig_strb_skid_mux_out(9)
    );
\sig_strb_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(0),
      Q => \sig_strb_reg_out_reg[15]_0\(0),
      R => sig_data_reg_out0
    );
\sig_strb_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(10),
      Q => \sig_strb_reg_out_reg[15]_0\(10),
      R => sig_data_reg_out0
    );
\sig_strb_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(11),
      Q => \sig_strb_reg_out_reg[15]_0\(11),
      R => sig_data_reg_out0
    );
\sig_strb_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(12),
      Q => \sig_strb_reg_out_reg[15]_0\(12),
      R => sig_data_reg_out0
    );
\sig_strb_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(13),
      Q => \sig_strb_reg_out_reg[15]_0\(13),
      R => sig_data_reg_out0
    );
\sig_strb_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(14),
      Q => \sig_strb_reg_out_reg[15]_0\(14),
      R => sig_data_reg_out0
    );
\sig_strb_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(15),
      Q => \sig_strb_reg_out_reg[15]_0\(15),
      R => sig_data_reg_out0
    );
\sig_strb_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(1),
      Q => \sig_strb_reg_out_reg[15]_0\(1),
      R => sig_data_reg_out0
    );
\sig_strb_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(2),
      Q => \sig_strb_reg_out_reg[15]_0\(2),
      R => sig_data_reg_out0
    );
\sig_strb_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(3),
      Q => \sig_strb_reg_out_reg[15]_0\(3),
      R => sig_data_reg_out0
    );
\sig_strb_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(4),
      Q => \sig_strb_reg_out_reg[15]_0\(4),
      R => sig_data_reg_out0
    );
\sig_strb_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(5),
      Q => \sig_strb_reg_out_reg[15]_0\(5),
      R => sig_data_reg_out0
    );
\sig_strb_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(6),
      Q => \sig_strb_reg_out_reg[15]_0\(6),
      R => sig_data_reg_out0
    );
\sig_strb_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(7),
      Q => \sig_strb_reg_out_reg[15]_0\(7),
      R => sig_data_reg_out0
    );
\sig_strb_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(8),
      Q => \sig_strb_reg_out_reg[15]_0\(8),
      R => sig_data_reg_out0
    );
\sig_strb_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(9),
      Q => \sig_strb_reg_out_reg[15]_0\(9),
      R => sig_data_reg_out0
    );
\sig_strb_skid_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(0),
      O => sig_sstrb_with_stop(0)
    );
\sig_strb_skid_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(10),
      O => sig_sstrb_with_stop(10)
    );
\sig_strb_skid_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(11),
      O => sig_sstrb_with_stop(11)
    );
\sig_strb_skid_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(12),
      O => sig_sstrb_with_stop(12)
    );
\sig_strb_skid_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(13),
      O => sig_sstrb_with_stop(13)
    );
\sig_strb_skid_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(14),
      O => sig_sstrb_with_stop(14)
    );
\sig_strb_skid_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(15),
      O => sig_sstrb_with_stop(15)
    );
\sig_strb_skid_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(1),
      O => sig_sstrb_with_stop(1)
    );
\sig_strb_skid_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(2),
      O => sig_sstrb_with_stop(2)
    );
\sig_strb_skid_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(3),
      O => sig_sstrb_with_stop(3)
    );
\sig_strb_skid_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(4),
      O => sig_sstrb_with_stop(4)
    );
\sig_strb_skid_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(5),
      O => sig_sstrb_with_stop(5)
    );
\sig_strb_skid_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(6),
      O => sig_sstrb_with_stop(6)
    );
\sig_strb_skid_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(7),
      O => sig_sstrb_with_stop(7)
    );
\sig_strb_skid_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(8),
      O => sig_sstrb_with_stop(8)
    );
\sig_strb_skid_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_stop_request\,
      I1 => s_axis_s2mm_tkeep(9),
      O => sig_sstrb_with_stop(9)
    );
\sig_strb_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(0),
      Q => sig_strb_skid_reg(0),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(10),
      Q => sig_strb_skid_reg(10),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(11),
      Q => sig_strb_skid_reg(11),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(12),
      Q => sig_strb_skid_reg(12),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(13),
      Q => sig_strb_skid_reg(13),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(14),
      Q => sig_strb_skid_reg(14),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(15),
      Q => sig_strb_skid_reg(15),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(1),
      Q => sig_strb_skid_reg(1),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(2),
      Q => sig_strb_skid_reg(2),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(3),
      Q => sig_strb_skid_reg(3),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(4),
      Q => sig_strb_skid_reg(4),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(5),
      Q => sig_strb_skid_reg(5),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(6),
      Q => sig_strb_skid_reg(6),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(7),
      Q => sig_strb_skid_reg(7),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(8),
      Q => sig_strb_skid_reg(8),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => sig_sstrb_with_stop(9),
      Q => sig_strb_skid_reg(9),
      R => sig_stream_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_axi_datamover_skid_buf_0 is
  port (
    \out\ : out STD_LOGIC;
    sig_s_ready_out_reg_0 : out STD_LOGIC;
    sig_m_valid_out_reg_0 : out STD_LOGIC;
    sig_dre2ibtt_tlast : out STD_LOGIC;
    sig_s_ready_out_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 127 downto 0 );
    \sig_strb_reg_out_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    skid2dre_wlast : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_data_reg_out_reg[127]_0\ : in STD_LOGIC;
    sig_mmap_reset_reg : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    sig_s_ready_dup_reg_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 127 downto 0 );
    \sig_strb_skid_reg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sig_s_ready_dup_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_datamover_0_0_axi_datamover_skid_buf_0 : entity is "axi_datamover_skid_buf";
end design_1_axi_datamover_0_0_axi_datamover_skid_buf_0;

architecture STRUCTURE of design_1_axi_datamover_0_0_axi_datamover_skid_buf_0 is
  signal sig_data_skid_mux_out : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sig_data_skid_reg : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sig_last_skid_mux_out : STD_LOGIC;
  signal sig_last_skid_reg : STD_LOGIC;
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal \sig_m_valid_dup_i_1__0_n_0\ : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal \sig_s_ready_dup_i_1__0_n_0\ : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  signal sig_strb_skid_mux_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_strb_skid_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  \out\ <= sig_m_valid_dup;
  sig_m_valid_out_reg_0 <= sig_m_valid_out;
  sig_s_ready_out_reg_0 <= sig_s_ready_out;
\sig_data_reg_out[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(0),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(0),
      O => sig_data_skid_mux_out(0)
    );
\sig_data_reg_out[100]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(100),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(100),
      O => sig_data_skid_mux_out(100)
    );
\sig_data_reg_out[101]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(101),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(101),
      O => sig_data_skid_mux_out(101)
    );
\sig_data_reg_out[102]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(102),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(102),
      O => sig_data_skid_mux_out(102)
    );
\sig_data_reg_out[103]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(103),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(103),
      O => sig_data_skid_mux_out(103)
    );
\sig_data_reg_out[104]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(104),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(104),
      O => sig_data_skid_mux_out(104)
    );
\sig_data_reg_out[105]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(105),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(105),
      O => sig_data_skid_mux_out(105)
    );
\sig_data_reg_out[106]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(106),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(106),
      O => sig_data_skid_mux_out(106)
    );
\sig_data_reg_out[107]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(107),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(107),
      O => sig_data_skid_mux_out(107)
    );
\sig_data_reg_out[108]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(108),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(108),
      O => sig_data_skid_mux_out(108)
    );
\sig_data_reg_out[109]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(109),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(109),
      O => sig_data_skid_mux_out(109)
    );
\sig_data_reg_out[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(10),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(10),
      O => sig_data_skid_mux_out(10)
    );
\sig_data_reg_out[110]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(110),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(110),
      O => sig_data_skid_mux_out(110)
    );
\sig_data_reg_out[111]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(111),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(111),
      O => sig_data_skid_mux_out(111)
    );
\sig_data_reg_out[112]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(112),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(112),
      O => sig_data_skid_mux_out(112)
    );
\sig_data_reg_out[113]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(113),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(113),
      O => sig_data_skid_mux_out(113)
    );
\sig_data_reg_out[114]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(114),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(114),
      O => sig_data_skid_mux_out(114)
    );
\sig_data_reg_out[115]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(115),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(115),
      O => sig_data_skid_mux_out(115)
    );
\sig_data_reg_out[116]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(116),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(116),
      O => sig_data_skid_mux_out(116)
    );
\sig_data_reg_out[117]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(117),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(117),
      O => sig_data_skid_mux_out(117)
    );
\sig_data_reg_out[118]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(118),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(118),
      O => sig_data_skid_mux_out(118)
    );
\sig_data_reg_out[119]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(119),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(119),
      O => sig_data_skid_mux_out(119)
    );
\sig_data_reg_out[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(11),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(11),
      O => sig_data_skid_mux_out(11)
    );
\sig_data_reg_out[120]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(120),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(120),
      O => sig_data_skid_mux_out(120)
    );
\sig_data_reg_out[121]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(121),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(121),
      O => sig_data_skid_mux_out(121)
    );
\sig_data_reg_out[122]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(122),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(122),
      O => sig_data_skid_mux_out(122)
    );
\sig_data_reg_out[123]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(123),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(123),
      O => sig_data_skid_mux_out(123)
    );
\sig_data_reg_out[124]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(124),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(124),
      O => sig_data_skid_mux_out(124)
    );
\sig_data_reg_out[125]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(125),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(125),
      O => sig_data_skid_mux_out(125)
    );
\sig_data_reg_out[126]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(126),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(126),
      O => sig_data_skid_mux_out(126)
    );
\sig_data_reg_out[127]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_s_ready_out,
      I1 => \sig_data_reg_out_reg[127]_0\,
      O => sig_s_ready_out_reg_1(0)
    );
\sig_data_reg_out[127]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(127),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(127),
      O => sig_data_skid_mux_out(127)
    );
\sig_data_reg_out[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(12),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(12),
      O => sig_data_skid_mux_out(12)
    );
\sig_data_reg_out[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(13),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(13),
      O => sig_data_skid_mux_out(13)
    );
\sig_data_reg_out[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(14),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(14),
      O => sig_data_skid_mux_out(14)
    );
\sig_data_reg_out[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(15),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(15),
      O => sig_data_skid_mux_out(15)
    );
\sig_data_reg_out[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(16),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(16),
      O => sig_data_skid_mux_out(16)
    );
\sig_data_reg_out[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(17),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(17),
      O => sig_data_skid_mux_out(17)
    );
\sig_data_reg_out[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(18),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(18),
      O => sig_data_skid_mux_out(18)
    );
\sig_data_reg_out[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(19),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(19),
      O => sig_data_skid_mux_out(19)
    );
\sig_data_reg_out[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(1),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(1),
      O => sig_data_skid_mux_out(1)
    );
\sig_data_reg_out[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(20),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(20),
      O => sig_data_skid_mux_out(20)
    );
\sig_data_reg_out[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(21),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(21),
      O => sig_data_skid_mux_out(21)
    );
\sig_data_reg_out[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(22),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(22),
      O => sig_data_skid_mux_out(22)
    );
\sig_data_reg_out[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(23),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(23),
      O => sig_data_skid_mux_out(23)
    );
\sig_data_reg_out[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(24),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(24),
      O => sig_data_skid_mux_out(24)
    );
\sig_data_reg_out[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(25),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(25),
      O => sig_data_skid_mux_out(25)
    );
\sig_data_reg_out[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(26),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(26),
      O => sig_data_skid_mux_out(26)
    );
\sig_data_reg_out[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(27),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(27),
      O => sig_data_skid_mux_out(27)
    );
\sig_data_reg_out[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(28),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(28),
      O => sig_data_skid_mux_out(28)
    );
\sig_data_reg_out[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(29),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(29),
      O => sig_data_skid_mux_out(29)
    );
\sig_data_reg_out[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(2),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(2),
      O => sig_data_skid_mux_out(2)
    );
\sig_data_reg_out[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(30),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(30),
      O => sig_data_skid_mux_out(30)
    );
\sig_data_reg_out[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(31),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(31),
      O => sig_data_skid_mux_out(31)
    );
\sig_data_reg_out[32]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(32),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(32),
      O => sig_data_skid_mux_out(32)
    );
\sig_data_reg_out[33]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(33),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(33),
      O => sig_data_skid_mux_out(33)
    );
\sig_data_reg_out[34]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(34),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(34),
      O => sig_data_skid_mux_out(34)
    );
\sig_data_reg_out[35]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(35),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(35),
      O => sig_data_skid_mux_out(35)
    );
\sig_data_reg_out[36]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(36),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(36),
      O => sig_data_skid_mux_out(36)
    );
\sig_data_reg_out[37]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(37),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(37),
      O => sig_data_skid_mux_out(37)
    );
\sig_data_reg_out[38]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(38),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(38),
      O => sig_data_skid_mux_out(38)
    );
\sig_data_reg_out[39]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(39),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(39),
      O => sig_data_skid_mux_out(39)
    );
\sig_data_reg_out[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(3),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(3),
      O => sig_data_skid_mux_out(3)
    );
\sig_data_reg_out[40]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(40),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(40),
      O => sig_data_skid_mux_out(40)
    );
\sig_data_reg_out[41]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(41),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(41),
      O => sig_data_skid_mux_out(41)
    );
\sig_data_reg_out[42]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(42),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(42),
      O => sig_data_skid_mux_out(42)
    );
\sig_data_reg_out[43]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(43),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(43),
      O => sig_data_skid_mux_out(43)
    );
\sig_data_reg_out[44]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(44),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(44),
      O => sig_data_skid_mux_out(44)
    );
\sig_data_reg_out[45]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(45),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(45),
      O => sig_data_skid_mux_out(45)
    );
\sig_data_reg_out[46]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(46),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(46),
      O => sig_data_skid_mux_out(46)
    );
\sig_data_reg_out[47]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(47),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(47),
      O => sig_data_skid_mux_out(47)
    );
\sig_data_reg_out[48]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(48),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(48),
      O => sig_data_skid_mux_out(48)
    );
\sig_data_reg_out[49]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(49),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(49),
      O => sig_data_skid_mux_out(49)
    );
\sig_data_reg_out[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(4),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(4),
      O => sig_data_skid_mux_out(4)
    );
\sig_data_reg_out[50]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(50),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(50),
      O => sig_data_skid_mux_out(50)
    );
\sig_data_reg_out[51]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(51),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(51),
      O => sig_data_skid_mux_out(51)
    );
\sig_data_reg_out[52]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(52),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(52),
      O => sig_data_skid_mux_out(52)
    );
\sig_data_reg_out[53]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(53),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(53),
      O => sig_data_skid_mux_out(53)
    );
\sig_data_reg_out[54]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(54),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(54),
      O => sig_data_skid_mux_out(54)
    );
\sig_data_reg_out[55]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(55),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(55),
      O => sig_data_skid_mux_out(55)
    );
\sig_data_reg_out[56]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(56),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(56),
      O => sig_data_skid_mux_out(56)
    );
\sig_data_reg_out[57]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(57),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(57),
      O => sig_data_skid_mux_out(57)
    );
\sig_data_reg_out[58]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(58),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(58),
      O => sig_data_skid_mux_out(58)
    );
\sig_data_reg_out[59]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(59),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(59),
      O => sig_data_skid_mux_out(59)
    );
\sig_data_reg_out[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(5),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(5),
      O => sig_data_skid_mux_out(5)
    );
\sig_data_reg_out[60]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(60),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(60),
      O => sig_data_skid_mux_out(60)
    );
\sig_data_reg_out[61]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(61),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(61),
      O => sig_data_skid_mux_out(61)
    );
\sig_data_reg_out[62]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(62),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(62),
      O => sig_data_skid_mux_out(62)
    );
\sig_data_reg_out[63]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(63),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(63),
      O => sig_data_skid_mux_out(63)
    );
\sig_data_reg_out[64]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(64),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(64),
      O => sig_data_skid_mux_out(64)
    );
\sig_data_reg_out[65]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(65),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(65),
      O => sig_data_skid_mux_out(65)
    );
\sig_data_reg_out[66]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(66),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(66),
      O => sig_data_skid_mux_out(66)
    );
\sig_data_reg_out[67]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(67),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(67),
      O => sig_data_skid_mux_out(67)
    );
\sig_data_reg_out[68]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(68),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(68),
      O => sig_data_skid_mux_out(68)
    );
\sig_data_reg_out[69]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(69),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(69),
      O => sig_data_skid_mux_out(69)
    );
\sig_data_reg_out[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(6),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(6),
      O => sig_data_skid_mux_out(6)
    );
\sig_data_reg_out[70]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(70),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(70),
      O => sig_data_skid_mux_out(70)
    );
\sig_data_reg_out[71]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(71),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(71),
      O => sig_data_skid_mux_out(71)
    );
\sig_data_reg_out[72]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(72),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(72),
      O => sig_data_skid_mux_out(72)
    );
\sig_data_reg_out[73]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(73),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(73),
      O => sig_data_skid_mux_out(73)
    );
\sig_data_reg_out[74]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(74),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(74),
      O => sig_data_skid_mux_out(74)
    );
\sig_data_reg_out[75]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(75),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(75),
      O => sig_data_skid_mux_out(75)
    );
\sig_data_reg_out[76]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(76),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(76),
      O => sig_data_skid_mux_out(76)
    );
\sig_data_reg_out[77]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(77),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(77),
      O => sig_data_skid_mux_out(77)
    );
\sig_data_reg_out[78]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(78),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(78),
      O => sig_data_skid_mux_out(78)
    );
\sig_data_reg_out[79]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(79),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(79),
      O => sig_data_skid_mux_out(79)
    );
\sig_data_reg_out[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(7),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(7),
      O => sig_data_skid_mux_out(7)
    );
\sig_data_reg_out[80]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(80),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(80),
      O => sig_data_skid_mux_out(80)
    );
\sig_data_reg_out[81]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(81),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(81),
      O => sig_data_skid_mux_out(81)
    );
\sig_data_reg_out[82]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(82),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(82),
      O => sig_data_skid_mux_out(82)
    );
\sig_data_reg_out[83]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(83),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(83),
      O => sig_data_skid_mux_out(83)
    );
\sig_data_reg_out[84]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(84),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(84),
      O => sig_data_skid_mux_out(84)
    );
\sig_data_reg_out[85]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(85),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(85),
      O => sig_data_skid_mux_out(85)
    );
\sig_data_reg_out[86]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(86),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(86),
      O => sig_data_skid_mux_out(86)
    );
\sig_data_reg_out[87]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(87),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(87),
      O => sig_data_skid_mux_out(87)
    );
\sig_data_reg_out[88]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(88),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(88),
      O => sig_data_skid_mux_out(88)
    );
\sig_data_reg_out[89]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(89),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(89),
      O => sig_data_skid_mux_out(89)
    );
\sig_data_reg_out[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(8),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(8),
      O => sig_data_skid_mux_out(8)
    );
\sig_data_reg_out[90]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(90),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(90),
      O => sig_data_skid_mux_out(90)
    );
\sig_data_reg_out[91]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(91),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(91),
      O => sig_data_skid_mux_out(91)
    );
\sig_data_reg_out[92]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(92),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(92),
      O => sig_data_skid_mux_out(92)
    );
\sig_data_reg_out[93]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(93),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(93),
      O => sig_data_skid_mux_out(93)
    );
\sig_data_reg_out[94]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(94),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(94),
      O => sig_data_skid_mux_out(94)
    );
\sig_data_reg_out[95]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(95),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(95),
      O => sig_data_skid_mux_out(95)
    );
\sig_data_reg_out[96]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(96),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(96),
      O => sig_data_skid_mux_out(96)
    );
\sig_data_reg_out[97]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(97),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(97),
      O => sig_data_skid_mux_out(97)
    );
\sig_data_reg_out[98]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(98),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(98),
      O => sig_data_skid_mux_out(98)
    );
\sig_data_reg_out[99]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(99),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(99),
      O => sig_data_skid_mux_out(99)
    );
\sig_data_reg_out[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(9),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(9),
      O => sig_data_skid_mux_out(9)
    );
\sig_data_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(0),
      Q => Q(0),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(100),
      Q => Q(100),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(101),
      Q => Q(101),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(102),
      Q => Q(102),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(103),
      Q => Q(103),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(104),
      Q => Q(104),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(105),
      Q => Q(105),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(106),
      Q => Q(106),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(107),
      Q => Q(107),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(108),
      Q => Q(108),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(109),
      Q => Q(109),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(10),
      Q => Q(10),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(110),
      Q => Q(110),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(111),
      Q => Q(111),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(112),
      Q => Q(112),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(113),
      Q => Q(113),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(114),
      Q => Q(114),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(115),
      Q => Q(115),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(116),
      Q => Q(116),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(117),
      Q => Q(117),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(118),
      Q => Q(118),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(119),
      Q => Q(119),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(11),
      Q => Q(11),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(120),
      Q => Q(120),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(121),
      Q => Q(121),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(122),
      Q => Q(122),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(123),
      Q => Q(123),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(124),
      Q => Q(124),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(125),
      Q => Q(125),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(126),
      Q => Q(126),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(127),
      Q => Q(127),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(12),
      Q => Q(12),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(13),
      Q => Q(13),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(14),
      Q => Q(14),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(15),
      Q => Q(15),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(16),
      Q => Q(16),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(17),
      Q => Q(17),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(18),
      Q => Q(18),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(19),
      Q => Q(19),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(1),
      Q => Q(1),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(20),
      Q => Q(20),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(21),
      Q => Q(21),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(22),
      Q => Q(22),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(23),
      Q => Q(23),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(24),
      Q => Q(24),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(25),
      Q => Q(25),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(26),
      Q => Q(26),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(27),
      Q => Q(27),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(28),
      Q => Q(28),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(29),
      Q => Q(29),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(2),
      Q => Q(2),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(30),
      Q => Q(30),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(31),
      Q => Q(31),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(32),
      Q => Q(32),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(33),
      Q => Q(33),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(34),
      Q => Q(34),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(35),
      Q => Q(35),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(36),
      Q => Q(36),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(37),
      Q => Q(37),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(38),
      Q => Q(38),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(39),
      Q => Q(39),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(3),
      Q => Q(3),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(40),
      Q => Q(40),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(41),
      Q => Q(41),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(42),
      Q => Q(42),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(43),
      Q => Q(43),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(44),
      Q => Q(44),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(45),
      Q => Q(45),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(46),
      Q => Q(46),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(47),
      Q => Q(47),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(48),
      Q => Q(48),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(49),
      Q => Q(49),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(4),
      Q => Q(4),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(50),
      Q => Q(50),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(51),
      Q => Q(51),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(52),
      Q => Q(52),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(53),
      Q => Q(53),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(54),
      Q => Q(54),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(55),
      Q => Q(55),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(56),
      Q => Q(56),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(57),
      Q => Q(57),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(58),
      Q => Q(58),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(59),
      Q => Q(59),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(5),
      Q => Q(5),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(60),
      Q => Q(60),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(61),
      Q => Q(61),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(62),
      Q => Q(62),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(63),
      Q => Q(63),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(64),
      Q => Q(64),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(65),
      Q => Q(65),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(66),
      Q => Q(66),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(67),
      Q => Q(67),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(68),
      Q => Q(68),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(69),
      Q => Q(69),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(6),
      Q => Q(6),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(70),
      Q => Q(70),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(71),
      Q => Q(71),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(72),
      Q => Q(72),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(73),
      Q => Q(73),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(74),
      Q => Q(74),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(75),
      Q => Q(75),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(76),
      Q => Q(76),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(77),
      Q => Q(77),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(78),
      Q => Q(78),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(79),
      Q => Q(79),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(7),
      Q => Q(7),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(80),
      Q => Q(80),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(81),
      Q => Q(81),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(82),
      Q => Q(82),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(83),
      Q => Q(83),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(84),
      Q => Q(84),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(85),
      Q => Q(85),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(86),
      Q => Q(86),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(87),
      Q => Q(87),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(88),
      Q => Q(88),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(89),
      Q => Q(89),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(8),
      Q => Q(8),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(90),
      Q => Q(90),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(91),
      Q => Q(91),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(92),
      Q => Q(92),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(93),
      Q => Q(93),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(94),
      Q => Q(94),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(95),
      Q => Q(95),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(96),
      Q => Q(96),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(97),
      Q => Q(97),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(98),
      Q => Q(98),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(99),
      Q => Q(99),
      R => sig_stream_rst
    );
\sig_data_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(9),
      Q => Q(9),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(0),
      Q => sig_data_skid_reg(0),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(100),
      Q => sig_data_skid_reg(100),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(101),
      Q => sig_data_skid_reg(101),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(102),
      Q => sig_data_skid_reg(102),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(103),
      Q => sig_data_skid_reg(103),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(104),
      Q => sig_data_skid_reg(104),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(105),
      Q => sig_data_skid_reg(105),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(106),
      Q => sig_data_skid_reg(106),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(107),
      Q => sig_data_skid_reg(107),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(108),
      Q => sig_data_skid_reg(108),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(109),
      Q => sig_data_skid_reg(109),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(10),
      Q => sig_data_skid_reg(10),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(110),
      Q => sig_data_skid_reg(110),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(111),
      Q => sig_data_skid_reg(111),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(112),
      Q => sig_data_skid_reg(112),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(113),
      Q => sig_data_skid_reg(113),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(114),
      Q => sig_data_skid_reg(114),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(115),
      Q => sig_data_skid_reg(115),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(116),
      Q => sig_data_skid_reg(116),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(117),
      Q => sig_data_skid_reg(117),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(118),
      Q => sig_data_skid_reg(118),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(119),
      Q => sig_data_skid_reg(119),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(11),
      Q => sig_data_skid_reg(11),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(120),
      Q => sig_data_skid_reg(120),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(121),
      Q => sig_data_skid_reg(121),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(122),
      Q => sig_data_skid_reg(122),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(123),
      Q => sig_data_skid_reg(123),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(124),
      Q => sig_data_skid_reg(124),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(125),
      Q => sig_data_skid_reg(125),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(126),
      Q => sig_data_skid_reg(126),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(127),
      Q => sig_data_skid_reg(127),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(12),
      Q => sig_data_skid_reg(12),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(13),
      Q => sig_data_skid_reg(13),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(14),
      Q => sig_data_skid_reg(14),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(15),
      Q => sig_data_skid_reg(15),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(16),
      Q => sig_data_skid_reg(16),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(17),
      Q => sig_data_skid_reg(17),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(18),
      Q => sig_data_skid_reg(18),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(19),
      Q => sig_data_skid_reg(19),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(1),
      Q => sig_data_skid_reg(1),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(20),
      Q => sig_data_skid_reg(20),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(21),
      Q => sig_data_skid_reg(21),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(22),
      Q => sig_data_skid_reg(22),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(23),
      Q => sig_data_skid_reg(23),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(24),
      Q => sig_data_skid_reg(24),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(25),
      Q => sig_data_skid_reg(25),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(26),
      Q => sig_data_skid_reg(26),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(27),
      Q => sig_data_skid_reg(27),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(28),
      Q => sig_data_skid_reg(28),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(29),
      Q => sig_data_skid_reg(29),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(2),
      Q => sig_data_skid_reg(2),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(30),
      Q => sig_data_skid_reg(30),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(31),
      Q => sig_data_skid_reg(31),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(32),
      Q => sig_data_skid_reg(32),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(33),
      Q => sig_data_skid_reg(33),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(34),
      Q => sig_data_skid_reg(34),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(35),
      Q => sig_data_skid_reg(35),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(36),
      Q => sig_data_skid_reg(36),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(37),
      Q => sig_data_skid_reg(37),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(38),
      Q => sig_data_skid_reg(38),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(39),
      Q => sig_data_skid_reg(39),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(3),
      Q => sig_data_skid_reg(3),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(40),
      Q => sig_data_skid_reg(40),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(41),
      Q => sig_data_skid_reg(41),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(42),
      Q => sig_data_skid_reg(42),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(43),
      Q => sig_data_skid_reg(43),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(44),
      Q => sig_data_skid_reg(44),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(45),
      Q => sig_data_skid_reg(45),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(46),
      Q => sig_data_skid_reg(46),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(47),
      Q => sig_data_skid_reg(47),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(48),
      Q => sig_data_skid_reg(48),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(49),
      Q => sig_data_skid_reg(49),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(4),
      Q => sig_data_skid_reg(4),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(50),
      Q => sig_data_skid_reg(50),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(51),
      Q => sig_data_skid_reg(51),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(52),
      Q => sig_data_skid_reg(52),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(53),
      Q => sig_data_skid_reg(53),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(54),
      Q => sig_data_skid_reg(54),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(55),
      Q => sig_data_skid_reg(55),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(56),
      Q => sig_data_skid_reg(56),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(57),
      Q => sig_data_skid_reg(57),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(58),
      Q => sig_data_skid_reg(58),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(59),
      Q => sig_data_skid_reg(59),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(5),
      Q => sig_data_skid_reg(5),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(60),
      Q => sig_data_skid_reg(60),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(61),
      Q => sig_data_skid_reg(61),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(62),
      Q => sig_data_skid_reg(62),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(63),
      Q => sig_data_skid_reg(63),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(64),
      Q => sig_data_skid_reg(64),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(65),
      Q => sig_data_skid_reg(65),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(66),
      Q => sig_data_skid_reg(66),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(67),
      Q => sig_data_skid_reg(67),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(68),
      Q => sig_data_skid_reg(68),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(69),
      Q => sig_data_skid_reg(69),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(6),
      Q => sig_data_skid_reg(6),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(70),
      Q => sig_data_skid_reg(70),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(71),
      Q => sig_data_skid_reg(71),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(72),
      Q => sig_data_skid_reg(72),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(73),
      Q => sig_data_skid_reg(73),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(74),
      Q => sig_data_skid_reg(74),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(75),
      Q => sig_data_skid_reg(75),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(76),
      Q => sig_data_skid_reg(76),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(77),
      Q => sig_data_skid_reg(77),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(78),
      Q => sig_data_skid_reg(78),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(79),
      Q => sig_data_skid_reg(79),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(7),
      Q => sig_data_skid_reg(7),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(80),
      Q => sig_data_skid_reg(80),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(81),
      Q => sig_data_skid_reg(81),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(82),
      Q => sig_data_skid_reg(82),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(83),
      Q => sig_data_skid_reg(83),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(84),
      Q => sig_data_skid_reg(84),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(85),
      Q => sig_data_skid_reg(85),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(86),
      Q => sig_data_skid_reg(86),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(87),
      Q => sig_data_skid_reg(87),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(88),
      Q => sig_data_skid_reg(88),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(89),
      Q => sig_data_skid_reg(89),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(8),
      Q => sig_data_skid_reg(8),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(90),
      Q => sig_data_skid_reg(90),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(91),
      Q => sig_data_skid_reg(91),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(92),
      Q => sig_data_skid_reg(92),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(93),
      Q => sig_data_skid_reg(93),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(94),
      Q => sig_data_skid_reg(94),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(95),
      Q => sig_data_skid_reg(95),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(96),
      Q => sig_data_skid_reg(96),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(97),
      Q => sig_data_skid_reg(97),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(98),
      Q => sig_data_skid_reg(98),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(99),
      Q => sig_data_skid_reg(99),
      R => sig_stream_rst
    );
\sig_data_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => D(9),
      Q => sig_data_skid_reg(9),
      R => sig_stream_rst
    );
\sig_last_reg_out_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skid2dre_wlast,
      I1 => sig_s_ready_dup,
      I2 => sig_last_skid_reg,
      O => sig_last_skid_mux_out
    );
sig_last_reg_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_last_skid_mux_out,
      Q => sig_dre2ibtt_tlast,
      R => sig_stream_rst
    );
sig_last_skid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => skid2dre_wlast,
      Q => sig_last_skid_reg,
      R => sig_stream_rst
    );
\sig_m_valid_dup_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044404044444444"
    )
        port map (
      I0 => sig_mmap_reset_reg,
      I1 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      I2 => sig_s_ready_dup_reg_0,
      I3 => sig_s_ready_dup,
      I4 => sig_m_valid_dup,
      I5 => E(0),
      O => \sig_m_valid_dup_i_1__0_n_0\
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__0_n_0\,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__0_n_0\,
      Q => sig_m_valid_out,
      R => '0'
    );
\sig_s_ready_dup_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2AFFFF"
    )
        port map (
      I0 => sig_s_ready_dup,
      I1 => sig_m_valid_dup,
      I2 => sig_s_ready_dup_reg_0,
      I3 => sig_mmap_reset_reg,
      I4 => sig_s_ready_dup_reg_1,
      O => \sig_s_ready_dup_i_1__0_n_0\
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__0_n_0\,
      Q => sig_s_ready_dup,
      R => sig_stream_rst
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__0_n_0\,
      Q => sig_s_ready_out,
      R => sig_stream_rst
    );
\sig_strb_reg_out[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(0),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(0),
      O => sig_strb_skid_mux_out(0)
    );
\sig_strb_reg_out[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(10),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(10),
      O => sig_strb_skid_mux_out(10)
    );
\sig_strb_reg_out[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(11),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(11),
      O => sig_strb_skid_mux_out(11)
    );
\sig_strb_reg_out[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(12),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(12),
      O => sig_strb_skid_mux_out(12)
    );
\sig_strb_reg_out[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(13),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(13),
      O => sig_strb_skid_mux_out(13)
    );
\sig_strb_reg_out[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(14),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(14),
      O => sig_strb_skid_mux_out(14)
    );
\sig_strb_reg_out[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(15),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(15),
      O => sig_strb_skid_mux_out(15)
    );
\sig_strb_reg_out[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(1),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(1),
      O => sig_strb_skid_mux_out(1)
    );
\sig_strb_reg_out[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(2),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(2),
      O => sig_strb_skid_mux_out(2)
    );
\sig_strb_reg_out[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(3),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(3),
      O => sig_strb_skid_mux_out(3)
    );
\sig_strb_reg_out[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(4),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(4),
      O => sig_strb_skid_mux_out(4)
    );
\sig_strb_reg_out[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(5),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(5),
      O => sig_strb_skid_mux_out(5)
    );
\sig_strb_reg_out[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(6),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(6),
      O => sig_strb_skid_mux_out(6)
    );
\sig_strb_reg_out[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(7),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(7),
      O => sig_strb_skid_mux_out(7)
    );
\sig_strb_reg_out[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(8),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(8),
      O => sig_strb_skid_mux_out(8)
    );
\sig_strb_reg_out[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sig_strb_skid_reg_reg[15]_0\(9),
      I1 => sig_s_ready_dup,
      I2 => sig_strb_skid_reg(9),
      O => sig_strb_skid_mux_out(9)
    );
\sig_strb_reg_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(0),
      Q => \sig_strb_reg_out_reg[15]_0\(0),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(10),
      Q => \sig_strb_reg_out_reg[15]_0\(10),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(11),
      Q => \sig_strb_reg_out_reg[15]_0\(11),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(12),
      Q => \sig_strb_reg_out_reg[15]_0\(12),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(13),
      Q => \sig_strb_reg_out_reg[15]_0\(13),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(14),
      Q => \sig_strb_reg_out_reg[15]_0\(14),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(15),
      Q => \sig_strb_reg_out_reg[15]_0\(15),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(1),
      Q => \sig_strb_reg_out_reg[15]_0\(1),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(2),
      Q => \sig_strb_reg_out_reg[15]_0\(2),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(3),
      Q => \sig_strb_reg_out_reg[15]_0\(3),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(4),
      Q => \sig_strb_reg_out_reg[15]_0\(4),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(5),
      Q => \sig_strb_reg_out_reg[15]_0\(5),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(6),
      Q => \sig_strb_reg_out_reg[15]_0\(6),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(7),
      Q => \sig_strb_reg_out_reg[15]_0\(7),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(8),
      Q => \sig_strb_reg_out_reg[15]_0\(8),
      R => sig_stream_rst
    );
\sig_strb_reg_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => E(0),
      D => sig_strb_skid_mux_out(9),
      Q => \sig_strb_reg_out_reg[15]_0\(9),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(0),
      Q => sig_strb_skid_reg(0),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(10),
      Q => sig_strb_skid_reg(10),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(11),
      Q => sig_strb_skid_reg(11),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(12),
      Q => sig_strb_skid_reg(12),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(13),
      Q => sig_strb_skid_reg(13),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(14),
      Q => sig_strb_skid_reg(14),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(15),
      Q => sig_strb_skid_reg(15),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(1),
      Q => sig_strb_skid_reg(1),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(2),
      Q => sig_strb_skid_reg(2),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(3),
      Q => sig_strb_skid_reg(3),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(4),
      Q => sig_strb_skid_reg(4),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(5),
      Q => sig_strb_skid_reg(5),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(6),
      Q => sig_strb_skid_reg(6),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(7),
      Q => sig_strb_skid_reg(7),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(8),
      Q => sig_strb_skid_reg(8),
      R => sig_stream_rst
    );
\sig_strb_skid_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_s_ready_dup,
      D => \sig_strb_skid_reg_reg[15]_0\(9),
      Q => sig_strb_skid_reg(9),
      R => sig_stream_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_cntr_incr_decr_addn_f is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_next_sequential_reg_reg : out STD_LOGIC;
    fifo_full_p1 : out STD_LOGIC;
    sig_s_ready_out_reg : out STD_LOGIC;
    sig_next_calc_error_reg_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sel : in STD_LOGIC;
    sig_mstr2data_cmd_valid : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]_0\ : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]_1\ : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]_0\ : in STD_LOGIC;
    sig_next_sequential_reg : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]\ : in STD_LOGIC;
    sig_dqual_reg_empty : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_0\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_1\ : in STD_LOGIC;
    sig_wdc_status_going_full : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_2\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_3\ : in STD_LOGIC;
    sig_addr_posted_cntr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_last_mmap_dbeat_reg : in STD_LOGIC;
    sig_halt_reg : in STD_LOGIC;
    \sig_dbeat_cntr[7]_i_3_0\ : in STD_LOGIC;
    \sig_dbeat_cntr[7]_i_3_1\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_4\ : in STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC
  );
end design_1_axi_datamover_0_0_cntr_incr_decr_addn_f;

architecture STRUCTURE of design_1_axi_datamover_0_0_cntr_incr_decr_addn_f is
  signal \INFERRED_GEN.cnt_i[2]_i_4_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sig_dbeat_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_6_n_0\ : STD_LOGIC;
  signal \^sig_next_calc_error_reg_reg\ : STD_LOGIC;
  signal \^sig_next_sequential_reg_reg\ : STD_LOGIC;
  signal \^sig_s_ready_out_reg\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FIFO_Full_i_1__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[2]_i_1__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[2]_i_4\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of sig_halt_cmplt_i_5 : label is "soft_lutpair80";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  sig_next_calc_error_reg_reg <= \^sig_next_calc_error_reg_reg\;
  sig_next_sequential_reg_reg <= \^sig_next_sequential_reg_reg\;
  sig_s_ready_out_reg <= \^sig_s_ready_out_reg\;
\FIFO_Full_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14C00000"
    )
        port map (
      I0 => \^q\(2),
      I1 => sel,
      I2 => \^q\(0),
      I3 => \^sig_next_sequential_reg_reg\,
      I4 => \^q\(1),
      O => fifo_full_p1
    );
\INFERRED_GEN.cnt_i[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AA5955"
    )
        port map (
      I0 => \^q\(0),
      I1 => \INFERRED_GEN.cnt_i_reg[1]_1\,
      I2 => \INFERRED_GEN.cnt_i_reg[1]_0\,
      I3 => sig_mstr2data_cmd_valid,
      I4 => \^sig_next_sequential_reg_reg\,
      O => addr_i_p1(0)
    );
\INFERRED_GEN.cnt_i[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFF20200000DF"
    )
        port map (
      I0 => sig_mstr2data_cmd_valid,
      I1 => \INFERRED_GEN.cnt_i_reg[1]_0\,
      I2 => \INFERRED_GEN.cnt_i_reg[1]_1\,
      I3 => \^q\(0),
      I4 => \^sig_next_sequential_reg_reg\,
      I5 => \^q\(1),
      O => addr_i_p1(1)
    );
\INFERRED_GEN.cnt_i[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F018001"
    )
        port map (
      I0 => sel,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^sig_next_sequential_reg_reg\,
      I4 => \^q\(2),
      O => addr_i_p1(2)
    );
\INFERRED_GEN.cnt_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEFFFFFFF"
    )
        port map (
      I0 => \INFERRED_GEN.cnt_i_reg[0]_0\,
      I1 => \INFERRED_GEN.cnt_i[2]_i_4_n_0\,
      I2 => \^sig_s_ready_out_reg\,
      I3 => sig_next_sequential_reg,
      I4 => \sig_dbeat_cntr_reg[7]\,
      I5 => sig_dqual_reg_empty,
      O => \^sig_next_sequential_reg_reg\
    );
\INFERRED_GEN.cnt_i[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sig_addr_posted_cntr(0),
      I1 => sig_addr_posted_cntr(2),
      I2 => sig_addr_posted_cntr(1),
      O => \INFERRED_GEN.cnt_i[2]_i_4_n_0\
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => sig_stream_rst
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \^q\(1),
      S => sig_stream_rst
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \^q\(2),
      S => sig_stream_rst
    );
\sig_dbeat_cntr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000FEEECCCC"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[7]_4\,
      I1 => sig_dqual_reg_empty,
      I2 => \sig_dbeat_cntr_reg[7]\,
      I3 => sig_next_sequential_reg,
      I4 => \^sig_s_ready_out_reg\,
      I5 => \sig_dbeat_cntr[7]_i_4_n_0\,
      O => E(0)
    );
\sig_dbeat_cntr[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[7]_2\,
      I1 => \sig_dbeat_cntr[7]_i_6_n_0\,
      I2 => \sig_dbeat_cntr_reg[7]_3\,
      I3 => \^sig_next_calc_error_reg_reg\,
      O => \^sig_s_ready_out_reg\
    );
\sig_dbeat_cntr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFAE"
    )
        port map (
      I0 => \INFERRED_GEN.cnt_i[2]_i_4_n_0\,
      I1 => sig_wsc2stat_status_valid,
      I2 => \sig_dbeat_cntr_reg[7]_0\,
      I3 => \sig_dbeat_cntr_reg[7]_1\,
      I4 => \^q\(2),
      I5 => sig_wdc_status_going_full,
      O => \sig_dbeat_cntr[7]_i_4_n_0\
    );
\sig_dbeat_cntr[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"888B"
    )
        port map (
      I0 => sig_last_mmap_dbeat_reg,
      I1 => sig_halt_reg,
      I2 => \sig_dbeat_cntr[7]_i_3_0\,
      I3 => \sig_dbeat_cntr[7]_i_3_1\,
      O => \sig_dbeat_cntr[7]_i_6_n_0\
    );
sig_halt_cmplt_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[7]_1\,
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(2),
      I3 => sig_addr_posted_cntr(0),
      O => \^sig_next_calc_error_reg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_cntr_incr_decr_addn_f_2 is
  port (
    fifo_full_p1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_wr_fifo : in STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]_0\ : in STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]_1\ : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    sig_calc_error_pushed : in STD_LOGIC;
    sig_input_reg_empty : in STD_LOGIC;
    sig_sm_halt_reg : in STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_datamover_0_0_cntr_incr_decr_addn_f_2 : entity is "cntr_incr_decr_addn_f";
end design_1_axi_datamover_0_0_cntr_incr_decr_addn_f_2;

architecture STRUCTURE of design_1_axi_datamover_0_0_cntr_incr_decr_addn_f_2 is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FIFO_Full_i_1 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[2]_i_1\ : label is "soft_lutpair76";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
FIFO_Full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00860000"
    )
        port map (
      I0 => \^q\(0),
      I1 => sig_wr_fifo,
      I2 => FIFO_Full_reg,
      I3 => \^q\(2),
      I4 => \^q\(1),
      O => fifo_full_p1
    );
\INFERRED_GEN.cnt_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010FFEFFFEF0010"
    )
        port map (
      I0 => \^q\(2),
      I1 => sig_calc_error_pushed,
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      I4 => sig_wr_fifo,
      I5 => \^q\(0),
      O => addr_i_p1(0)
    );
\INFERRED_GEN.cnt_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6A69AA6A6A6A6A6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \INFERRED_GEN.cnt_i_reg[1]_0\,
      I2 => \^q\(0),
      I3 => s_axis_s2mm_cmd_tvalid,
      I4 => \INFERRED_GEN.cnt_i_reg[1]_1\,
      I5 => sig_inhibit_rdy_n,
      O => addr_i_p1(1)
    );
\INFERRED_GEN.cnt_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"46CCCCDC"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => FIFO_Full_reg,
      I3 => sig_wr_fifo,
      I4 => \^q\(0),
      O => addr_i_p1(2)
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => sig_stream_rst
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \^q\(1),
      S => sig_stream_rst
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \^q\(2),
      S => sig_stream_rst
    );
\s2mm_dbg_data[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(2),
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_cntr_incr_decr_addn_f_3 is
  port (
    fifo_full_p1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_s2mm_sts_tvalid : out STD_LOGIC;
    sig_wr_fifo : in STD_LOGIC;
    m_axis_s2mm_sts_tready : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]_0\ : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]_1\ : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_datamover_0_0_cntr_incr_decr_addn_f_3 : entity is "cntr_incr_decr_addn_f";
end design_1_axi_datamover_0_0_cntr_incr_decr_addn_f_3;

architecture STRUCTURE of design_1_axi_datamover_0_0_cntr_incr_decr_addn_f_3 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sig_rd_empty : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FIFO_Full_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[1]_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[2]_i_1__1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of m_axis_s2mm_sts_tvalid_INST_0 : label is "soft_lutpair73";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FIFO_Full_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09020000"
    )
        port map (
      I0 => sig_wr_fifo,
      I1 => m_axis_s2mm_sts_tready,
      I2 => sig_rd_empty,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => fifo_full_p1
    );
\INFERRED_GEN.cnt_i[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDF20DF2020DF20"
    )
        port map (
      I0 => \INFERRED_GEN.cnt_i_reg[0]_0\,
      I1 => \INFERRED_GEN.cnt_i_reg[0]_1\,
      I2 => sig_wsc2stat_status_valid,
      I3 => m_axis_s2mm_sts_tready,
      I4 => sig_rd_empty,
      I5 => \^q\(0),
      O => addr_i_p1(0)
    );
\INFERRED_GEN.cnt_i[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65AAAA9A"
    )
        port map (
      I0 => \^q\(1),
      I1 => sig_rd_empty,
      I2 => m_axis_s2mm_sts_tready,
      I3 => \^q\(0),
      I4 => sig_wr_fifo,
      O => addr_i_p1(1)
    );
\INFERRED_GEN.cnt_i[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"46CCCCDC"
    )
        port map (
      I0 => \^q\(1),
      I1 => sig_rd_empty,
      I2 => m_axis_s2mm_sts_tready,
      I3 => \^q\(0),
      I4 => sig_wr_fifo,
      O => addr_i_p1(2)
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => sig_stream_rst
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \^q\(1),
      S => sig_stream_rst
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => sig_rd_empty,
      S => sig_stream_rst
    );
m_axis_s2mm_sts_tvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_rd_empty,
      O => m_axis_s2mm_sts_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_cntr_incr_decr_addn_f_4 is
  port (
    fifo_full_p1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_push_addr_reg1_out : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]_0\ : out STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    sig_wr_fifo : in STD_LOGIC;
    sig_mstr2addr_cmd_valid : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]_0\ : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]_1\ : in STD_LOGIC;
    s2mm_allow_addr_req : in STD_LOGIC;
    sig_addr_reg_empty : in STD_LOGIC;
    sig_halt_reg : in STD_LOGIC;
    sig_data2all_tlast_error : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_datamover_0_0_cntr_incr_decr_addn_f_4 : entity is "cntr_incr_decr_addn_f";
end design_1_axi_datamover_0_0_cntr_incr_decr_addn_f_4;

architecture STRUCTURE of design_1_axi_datamover_0_0_cntr_incr_decr_addn_f_4 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sig_push_addr_reg1_out\ : STD_LOGIC;
  signal sig_rd_empty : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FIFO_Full_i_1__4\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[2]_i_1__4\ : label is "soft_lutpair68";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  sig_push_addr_reg1_out <= \^sig_push_addr_reg1_out\;
\FIFO_Full_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41100000"
    )
        port map (
      I0 => sig_rd_empty,
      I1 => FIFO_Full_reg,
      I2 => sig_wr_fifo,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => fifo_full_p1
    );
\INFERRED_GEN.cnt_i[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5595AA6A"
    )
        port map (
      I0 => \^sig_push_addr_reg1_out\,
      I1 => sig_mstr2addr_cmd_valid,
      I2 => \INFERRED_GEN.cnt_i_reg[1]_0\,
      I3 => \INFERRED_GEN.cnt_i_reg[1]_1\,
      I4 => \^q\(0),
      O => addr_i_p1(0)
    );
\INFERRED_GEN.cnt_i[1]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08F7FF00F70800"
    )
        port map (
      I0 => sig_mstr2addr_cmd_valid,
      I1 => \INFERRED_GEN.cnt_i_reg[1]_0\,
      I2 => \INFERRED_GEN.cnt_i_reg[1]_1\,
      I3 => \^q\(0),
      I4 => \^sig_push_addr_reg1_out\,
      I5 => \^q\(1),
      O => addr_i_p1(1)
    );
\INFERRED_GEN.cnt_i[2]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1CCCCCCE"
    )
        port map (
      I0 => FIFO_Full_reg,
      I1 => sig_rd_empty,
      I2 => \^q\(0),
      I3 => sig_wr_fifo,
      I4 => \^q\(1),
      O => addr_i_p1(2)
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => sig_stream_rst
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \^q\(1),
      S => sig_stream_rst
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => sig_rd_empty,
      S => sig_stream_rst
    );
\sig_next_addr_reg[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => s2mm_allow_addr_req,
      I1 => sig_addr_reg_empty,
      I2 => sig_halt_reg,
      I3 => sig_data2all_tlast_error,
      I4 => sig_rd_empty,
      O => \^sig_push_addr_reg1_out\
    );
sig_posted_to_axi_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => sig_rd_empty,
      I1 => sig_data2all_tlast_error,
      I2 => sig_halt_reg,
      I3 => sig_addr_reg_empty,
      I4 => s2mm_allow_addr_req,
      I5 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      O => \INFERRED_GEN.cnt_i_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_cntr_incr_decr_addn_f__parameterized0\ is
  port (
    fifo_full_p1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_wr_fifo : out STD_LOGIC;
    sig_push_coelsc_reg : in STD_LOGIC;
    m_axi_s2mm_bvalid : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]_0\ : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]_1\ : in STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_cntr_incr_decr_addn_f__parameterized0\ : entity is "cntr_incr_decr_addn_f";
end \design_1_axi_datamover_0_0_cntr_incr_decr_addn_f__parameterized0\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_cntr_incr_decr_addn_f__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^sig_wr_fifo\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  sig_wr_fifo <= \^sig_wr_fifo\;
\FIFO_Full_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002020020200"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => sig_push_coelsc_reg,
      I3 => \^sig_wr_fifo\,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => fifo_full_p1
    );
\INFERRED_GEN.cnt_i[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB4BBB4444B444"
    )
        port map (
      I0 => \^q\(3),
      I1 => sig_push_coelsc_reg,
      I2 => m_axi_s2mm_bvalid,
      I3 => sig_inhibit_rdy_n,
      I4 => \INFERRED_GEN.cnt_i_reg[1]_0\,
      I5 => \^q\(0),
      O => addr_i_p1(0)
    );
\INFERRED_GEN.cnt_i[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08F7FF00F70800"
    )
        port map (
      I0 => m_axi_s2mm_bvalid,
      I1 => sig_inhibit_rdy_n,
      I2 => \INFERRED_GEN.cnt_i_reg[1]_0\,
      I3 => \^q\(0),
      I4 => \INFERRED_GEN.cnt_i_reg[1]_1\,
      I5 => \^q\(1),
      O => addr_i_p1(1)
    );
\INFERRED_GEN.cnt_i[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65AAAAAAAAAAAA9A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => sig_push_coelsc_reg,
      I3 => \^sig_wr_fifo\,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => addr_i_p1(2)
    );
\INFERRED_GEN.cnt_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F0080FFFF0100"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^sig_wr_fifo\,
      I3 => sig_push_coelsc_reg,
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => addr_i_p1(3)
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => sig_stream_rst
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \^q\(1),
      S => sig_stream_rst
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \^q\(2),
      S => sig_stream_rst
    );
\INFERRED_GEN.cnt_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(3),
      Q => \^q\(3),
      S => sig_stream_rst
    );
\INFERRED_GEN.data_reg[5][1]_srl6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_axi_s2mm_bvalid,
      I1 => sig_inhibit_rdy_n,
      I2 => \INFERRED_GEN.cnt_i_reg[1]_0\,
      O => \^sig_wr_fifo\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_cntr_incr_decr_addn_f__parameterized0_1\ is
  port (
    fifo_full_p1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\ : out STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    FIFO_Full_reg_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \INFERRED_GEN.cnt_i_reg[2]_0\ : in STD_LOGIC;
    sig_coelsc_reg_empty : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_cntr_incr_decr_addn_f__parameterized0_1\ : entity is "cntr_incr_decr_addn_f";
end \design_1_axi_datamover_0_0_cntr_incr_decr_addn_f__parameterized0_1\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_cntr_incr_decr_addn_f__parameterized0_1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[1]_i_1__3\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[2]_i_1__3\ : label is "soft_lutpair93";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\FIFO_Full_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200280080"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => FIFO_Full_reg,
      I3 => \^q\(3),
      I4 => FIFO_Full_reg_0,
      I5 => \^q\(1),
      O => fifo_full_p1
    );
\INFERRED_GEN.cnt_i[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E718"
    )
        port map (
      I0 => FIFO_Full_reg,
      I1 => \^q\(0),
      I2 => \INFERRED_GEN.cnt_i_reg[2]_0\,
      I3 => \^q\(1),
      O => addr_i_p1(1)
    );
\INFERRED_GEN.cnt_i[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sig_coelsc_reg_empty,
      I1 => \^q\(3),
      I2 => \INFERRED_GEN.cnt_i_reg[1]_0\(0),
      O => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\
    );
\INFERRED_GEN.cnt_i[2]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFD4002"
    )
        port map (
      I0 => \INFERRED_GEN.cnt_i_reg[2]_0\,
      I1 => FIFO_Full_reg,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => addr_i_p1(2)
    );
\INFERRED_GEN.cnt_i[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"58F0F0F0F0F0F0F1"
    )
        port map (
      I0 => \^q\(1),
      I1 => FIFO_Full_reg_0,
      I2 => \^q\(3),
      I3 => FIFO_Full_reg,
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => addr_i_p1(3)
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      S => sig_stream_rst
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \^q\(1),
      S => sig_stream_rst
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \^q\(2),
      S => sig_stream_rst
    );
\INFERRED_GEN.cnt_i_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => addr_i_p1(3),
      Q => \^q\(3),
      S => sig_stream_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_dynshreg_f is
  port (
    sig_wr_fifo : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 53 downto 0 );
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    \sig_input_tag_reg_reg[3]\ : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    s_axis_s2mm_cmd_tdata : in STD_LOGIC_VECTOR ( 53 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC
  );
end design_1_axi_datamover_0_0_dynshreg_f;

architecture STRUCTURE of design_1_axi_datamover_0_0_dynshreg_f is
  signal \^sig_wr_fifo\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][0]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[3][0]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][0]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][10]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][10]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][10]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][11]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][11]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][11]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][12]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][12]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][12]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][13]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][13]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][13]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][14]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][14]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][14]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][15]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][15]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][15]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][16]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][16]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][16]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][17]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][17]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][17]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][18]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][18]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][18]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][19]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][19]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][19]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][1]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][1]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][1]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][20]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][20]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][20]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][21]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][21]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][21]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][22]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][22]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][22]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][23]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][23]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][23]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][24]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][24]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][24]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][25]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][25]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][25]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][26]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][26]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][26]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][27]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][27]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][27]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][28]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][28]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][28]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][29]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][29]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][29]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][2]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][2]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][2]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][30]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][30]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][30]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][31]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][31]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][31]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][32]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][32]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][32]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][33]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][33]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][33]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][34]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][34]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][34]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][35]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][35]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][35]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][37]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][37]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][37]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][3]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][3]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][3]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][44]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][44]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][44]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][4]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][4]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][4]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][52]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][52]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][52]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][53]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][53]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][53]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][54]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][54]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][54]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][55]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][55]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][55]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][56]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][56]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][56]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][57]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][57]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][57]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][58]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][58]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][58]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][59]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][59]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][59]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][5]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][5]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][5]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][60]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][60]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][60]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][61]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][61]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][61]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][62]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][62]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][62]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][63]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][63]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][63]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][64]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][64]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][64]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][65]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][65]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][65]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][66]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][66]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][66]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][67]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][67]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][67]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][6]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][6]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][6]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][7]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][7]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][7]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][8]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][8]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][8]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][9]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][9]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][9]_srl4 ";
begin
  sig_wr_fifo <= \^sig_wr_fifo\;
\INFERRED_GEN.data_reg[3][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(53),
      Q => \out\(53)
    );
\INFERRED_GEN.data_reg[3][10]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(43),
      Q => \out\(43)
    );
\INFERRED_GEN.data_reg[3][11]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(42),
      Q => \out\(42)
    );
\INFERRED_GEN.data_reg[3][12]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(41),
      Q => \out\(41)
    );
\INFERRED_GEN.data_reg[3][13]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(40),
      Q => \out\(40)
    );
\INFERRED_GEN.data_reg[3][14]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(39),
      Q => \out\(39)
    );
\INFERRED_GEN.data_reg[3][15]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(38),
      Q => \out\(38)
    );
\INFERRED_GEN.data_reg[3][16]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(37),
      Q => \out\(37)
    );
\INFERRED_GEN.data_reg[3][17]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(36),
      Q => \out\(36)
    );
\INFERRED_GEN.data_reg[3][18]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(35),
      Q => \out\(35)
    );
\INFERRED_GEN.data_reg[3][19]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(34),
      Q => \out\(34)
    );
\INFERRED_GEN.data_reg[3][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(52),
      Q => \out\(52)
    );
\INFERRED_GEN.data_reg[3][20]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(33),
      Q => \out\(33)
    );
\INFERRED_GEN.data_reg[3][21]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(32),
      Q => \out\(32)
    );
\INFERRED_GEN.data_reg[3][22]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(31),
      Q => \out\(31)
    );
\INFERRED_GEN.data_reg[3][23]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(30),
      Q => \out\(30)
    );
\INFERRED_GEN.data_reg[3][24]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(29),
      Q => \out\(29)
    );
\INFERRED_GEN.data_reg[3][25]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(28),
      Q => \out\(28)
    );
\INFERRED_GEN.data_reg[3][26]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(27),
      Q => \out\(27)
    );
\INFERRED_GEN.data_reg[3][27]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(26),
      Q => \out\(26)
    );
\INFERRED_GEN.data_reg[3][28]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(25),
      Q => \out\(25)
    );
\INFERRED_GEN.data_reg[3][29]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(24),
      Q => \out\(24)
    );
\INFERRED_GEN.data_reg[3][2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(51),
      Q => \out\(51)
    );
\INFERRED_GEN.data_reg[3][30]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(23),
      Q => \out\(23)
    );
\INFERRED_GEN.data_reg[3][31]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(22),
      Q => \out\(22)
    );
\INFERRED_GEN.data_reg[3][32]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(21),
      Q => \out\(21)
    );
\INFERRED_GEN.data_reg[3][33]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(20),
      Q => \out\(20)
    );
\INFERRED_GEN.data_reg[3][34]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(19),
      Q => \out\(19)
    );
\INFERRED_GEN.data_reg[3][35]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(18),
      Q => \out\(18)
    );
\INFERRED_GEN.data_reg[3][37]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(17),
      Q => \out\(17)
    );
\INFERRED_GEN.data_reg[3][3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(50),
      Q => \out\(50)
    );
\INFERRED_GEN.data_reg[3][44]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(16),
      Q => \out\(16)
    );
\INFERRED_GEN.data_reg[3][4]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(49),
      Q => \out\(49)
    );
\INFERRED_GEN.data_reg[3][52]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(15),
      Q => \out\(15)
    );
\INFERRED_GEN.data_reg[3][53]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(14),
      Q => \out\(14)
    );
\INFERRED_GEN.data_reg[3][54]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(13),
      Q => \out\(13)
    );
\INFERRED_GEN.data_reg[3][55]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(12),
      Q => \out\(12)
    );
\INFERRED_GEN.data_reg[3][56]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(11),
      Q => \out\(11)
    );
\INFERRED_GEN.data_reg[3][57]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(10),
      Q => \out\(10)
    );
\INFERRED_GEN.data_reg[3][58]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(9),
      Q => \out\(9)
    );
\INFERRED_GEN.data_reg[3][59]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(8),
      Q => \out\(8)
    );
\INFERRED_GEN.data_reg[3][5]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(48),
      Q => \out\(48)
    );
\INFERRED_GEN.data_reg[3][60]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(7),
      Q => \out\(7)
    );
\INFERRED_GEN.data_reg[3][61]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(6),
      Q => \out\(6)
    );
\INFERRED_GEN.data_reg[3][62]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(5),
      Q => \out\(5)
    );
\INFERRED_GEN.data_reg[3][63]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(4),
      Q => \out\(4)
    );
\INFERRED_GEN.data_reg[3][64]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(3),
      Q => \out\(3)
    );
\INFERRED_GEN.data_reg[3][65]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(2),
      Q => \out\(2)
    );
\INFERRED_GEN.data_reg[3][66]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(1),
      Q => \out\(1)
    );
\INFERRED_GEN.data_reg[3][67]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(0),
      Q => \out\(0)
    );
\INFERRED_GEN.data_reg[3][67]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axis_s2mm_cmd_tvalid,
      I1 => \sig_input_tag_reg_reg[3]\,
      I2 => sig_inhibit_rdy_n,
      O => \^sig_wr_fifo\
    );
\INFERRED_GEN.data_reg[3][6]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(47),
      Q => \out\(47)
    );
\INFERRED_GEN.data_reg[3][7]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(46),
      Q => \out\(46)
    );
\INFERRED_GEN.data_reg[3][8]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(45),
      Q => \out\(45)
    );
\INFERRED_GEN.data_reg[3][9]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => s_axis_s2mm_cmd_tdata(44),
      Q => \out\(44)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_dynshreg_f__parameterized0\ is
  port (
    sig_wr_fifo : out STD_LOGIC;
    m_axis_s2mm_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_wsc2stat_status_valid : in STD_LOGIC;
    m_axis_s2mm_sts_tdata_7_sp_1 : in STD_LOGIC;
    \m_axis_s2mm_sts_tdata[7]_0\ : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 0 to 7 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_dynshreg_f__parameterized0\ : entity is "dynshreg_f";
end \design_1_axi_datamover_0_0_dynshreg_f__parameterized0\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_dynshreg_f__parameterized0\ is
  signal m_axis_s2mm_sts_tdata_7_sn_1 : STD_LOGIC;
  signal \^sig_wr_fifo\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][0]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[3][0]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][0]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][1]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][1]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][1]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][2]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][2]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][2]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][3]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][3]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][3]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][4]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][4]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][4]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][5]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][5]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][5]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][6]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][6]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][6]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][7]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][7]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_CMD_STATUS/GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][7]_srl4 ";
begin
  m_axis_s2mm_sts_tdata_7_sn_1 <= m_axis_s2mm_sts_tdata_7_sp_1;
  sig_wr_fifo <= \^sig_wr_fifo\;
\INFERRED_GEN.data_reg[3][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(0),
      Q => m_axis_s2mm_sts_tdata(7)
    );
\INFERRED_GEN.data_reg[3][0]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => sig_wsc2stat_status_valid,
      I1 => m_axis_s2mm_sts_tdata_7_sn_1,
      I2 => \m_axis_s2mm_sts_tdata[7]_0\,
      O => \^sig_wr_fifo\
    );
\INFERRED_GEN.data_reg[3][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(1),
      Q => m_axis_s2mm_sts_tdata(6)
    );
\INFERRED_GEN.data_reg[3][2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(2),
      Q => m_axis_s2mm_sts_tdata(5)
    );
\INFERRED_GEN.data_reg[3][3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(3),
      Q => m_axis_s2mm_sts_tdata(4)
    );
\INFERRED_GEN.data_reg[3][4]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(4),
      Q => m_axis_s2mm_sts_tdata(3)
    );
\INFERRED_GEN.data_reg[3][5]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(5),
      Q => m_axis_s2mm_sts_tdata(2)
    );
\INFERRED_GEN.data_reg[3][6]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(6),
      Q => m_axis_s2mm_sts_tdata(1)
    );
\INFERRED_GEN.data_reg[3][7]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(7),
      Q => m_axis_s2mm_sts_tdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_dynshreg_f__parameterized1\ is
  port (
    \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg\ : out STD_LOGIC;
    \m_axi_s2mm_bresp[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\ : out STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg_0\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_1\ : in STD_LOGIC;
    sig_wr_fifo : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 0 to 2 );
    m_axi_s2mm_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_dynshreg_f__parameterized1\ : entity is "dynshreg_f";
end \design_1_axi_datamover_0_0_dynshreg_f__parameterized1\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_dynshreg_f__parameterized1\ is
  signal \^m_axi_s2mm_bresp[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_wresp_sfifo_out : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_i_1\ : label is "soft_lutpair95";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[5][0]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[5][0]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5][0]_srl6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[5][1]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5] ";
  attribute srl_name of \INFERRED_GEN.data_reg[5][1]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/I_WRESP_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5][1]_srl6 ";
begin
  \m_axi_s2mm_bresp[1]\(0) <= \^m_axi_s2mm_bresp[1]\(0);
\GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5540"
    )
        port map (
      I0 => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_0\(0),
      I1 => sig_wresp_sfifo_out(0),
      I2 => \^m_axi_s2mm_bresp[1]\(0),
      I3 => \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg_0\,
      O => \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg\
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5504"
    )
        port map (
      I0 => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_0\(0),
      I1 => \^m_axi_s2mm_bresp[1]\(0),
      I2 => sig_wresp_sfifo_out(0),
      I3 => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_1\,
      O => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\
    );
\INFERRED_GEN.data_reg[5][0]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr(2),
      A1 => addr(1),
      A2 => addr(0),
      A3 => '0',
      CE => sig_wr_fifo,
      CLK => m_axi_s2mm_aclk,
      D => m_axi_s2mm_bresp(1),
      Q => \^m_axi_s2mm_bresp[1]\(0)
    );
\INFERRED_GEN.data_reg[5][1]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr(2),
      A1 => addr(1),
      A2 => addr(0),
      A3 => '0',
      CE => sig_wr_fifo,
      CLK => m_axi_s2mm_aclk,
      D => m_axi_s2mm_bresp(0),
      Q => sig_wresp_sfifo_out(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_dynshreg_f__parameterized2\ is
  port (
    sig_coelsc_interr_reg0 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \INFERRED_GEN.cnt_i_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \INFERRED_GEN.cnt_i_reg[3]_0\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg\ : out STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg_0\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_tlast_err_stop : in STD_LOGIC;
    sig_push_to_wsc : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_coelsc_reg_empty : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_1\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_3\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 6 );
    m_axi_s2mm_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_dynshreg_f__parameterized2\ : entity is "dynshreg_f";
end \design_1_axi_datamover_0_0_dynshreg_f__parameterized2\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_dynshreg_f__parameterized2\ is
  signal \^inferred_gen.cnt_i_reg[3]\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal sig_dcntl_sfifo_out : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_i_2\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[3]_i_2\ : label is "soft_lutpair94";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[5][0]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[5][0]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5][0]_srl6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[5][1]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5] ";
  attribute srl_name of \INFERRED_GEN.data_reg[5][1]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5][1]_srl6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[5][2]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5] ";
  attribute srl_name of \INFERRED_GEN.data_reg[5][2]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5][2]_srl6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[5][3]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5] ";
  attribute srl_name of \INFERRED_GEN.data_reg[5][3]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5][3]_srl6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[5][4]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5] ";
  attribute srl_name of \INFERRED_GEN.data_reg[5][4]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5][4]_srl6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[5][5]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5] ";
  attribute srl_name of \INFERRED_GEN.data_reg[5][5]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5][5]_srl6 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[5][6]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5] ";
  attribute srl_name of \INFERRED_GEN.data_reg[5][6]_srl6\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_STATUS_CNTLR/GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[5][6]_srl6 ";
begin
  \INFERRED_GEN.cnt_i_reg[3]\ <= \^inferred_gen.cnt_i_reg[3]\;
  \out\(5 downto 0) <= \^out\(5 downto 0);
\GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sig_dcntl_sfifo_out(1),
      I1 => \^out\(1),
      I2 => \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg_0\,
      O => sig_coelsc_interr_reg0
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg_0\,
      I1 => \^out\(1),
      I2 => sig_dcntl_sfifo_out(1),
      I3 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_1\,
      I4 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_2\(0),
      I5 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_3\,
      O => \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg\
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444404"
    )
        port map (
      I0 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(3),
      I1 => sig_coelsc_reg_empty,
      I2 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\(0),
      I3 => \^out\(1),
      I4 => sig_dcntl_sfifo_out(1),
      O => \^inferred_gen.cnt_i_reg[3]\
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(0),
      O => p_0_in
    );
\INFERRED_GEN.cnt_i[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55655555AA9AAAAA"
    )
        port map (
      I0 => \^inferred_gen.cnt_i_reg[3]\,
      I1 => sig_tlast_err_stop,
      I2 => sig_push_to_wsc,
      I3 => \INFERRED_GEN.cnt_i_reg[0]\,
      I4 => sig_inhibit_rdy_n,
      I5 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0),
      O => \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg\(0)
    );
\INFERRED_GEN.cnt_i[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => sig_dcntl_sfifo_out(1),
      I1 => \^out\(1),
      I2 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\(0),
      I3 => sig_coelsc_reg_empty,
      O => \INFERRED_GEN.cnt_i_reg[3]_0\
    );
\INFERRED_GEN.data_reg[5][0]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0),
      A1 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(1),
      A2 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(2),
      A3 => '0',
      CE => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\,
      CLK => m_axi_s2mm_aclk,
      D => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(0),
      Q => \^out\(5)
    );
\INFERRED_GEN.data_reg[5][1]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0),
      A1 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(1),
      A2 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(2),
      A3 => '0',
      CE => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\,
      CLK => m_axi_s2mm_aclk,
      D => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(1),
      Q => \^out\(4)
    );
\INFERRED_GEN.data_reg[5][2]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0),
      A1 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(1),
      A2 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(2),
      A3 => '0',
      CE => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\,
      CLK => m_axi_s2mm_aclk,
      D => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(2),
      Q => \^out\(3)
    );
\INFERRED_GEN.data_reg[5][3]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0),
      A1 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(1),
      A2 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(2),
      A3 => '0',
      CE => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\,
      CLK => m_axi_s2mm_aclk,
      D => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(3),
      Q => \^out\(2)
    );
\INFERRED_GEN.data_reg[5][4]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0),
      A1 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(1),
      A2 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(2),
      A3 => '0',
      CE => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\,
      CLK => m_axi_s2mm_aclk,
      D => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(4),
      Q => \^out\(1)
    );
\INFERRED_GEN.data_reg[5][5]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0),
      A1 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(1),
      A2 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(2),
      A3 => '0',
      CE => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\,
      CLK => m_axi_s2mm_aclk,
      D => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(5),
      Q => sig_dcntl_sfifo_out(1)
    );
\INFERRED_GEN.data_reg[5][6]_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0),
      A1 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(1),
      A2 => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(2),
      A3 => '0',
      CE => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\,
      CLK => m_axi_s2mm_aclk,
      D => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(6),
      Q => \^out\(0)
    );
\sig_wdc_statcnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99669926CC33CC33"
    )
        port map (
      I0 => \^inferred_gen.cnt_i_reg[3]\,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(3),
      I5 => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\,
      O => D(0)
    );
\sig_wdc_statcnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7CE0831"
    )
        port map (
      I0 => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\,
      I1 => Q(0),
      I2 => \^inferred_gen.cnt_i_reg[3]\,
      I3 => Q(1),
      I4 => Q(2),
      O => D(1)
    );
\sig_wdc_statcnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554AAAAAA2A"
    )
        port map (
      I0 => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => \^inferred_gen.cnt_i_reg[3]\,
      O => E(0)
    );
\sig_wdc_statcnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFD4002FFFC0003"
    )
        port map (
      I0 => \^inferred_gen.cnt_i_reg[3]\,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(3),
      I5 => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\,
      O => D(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_dynshreg_f__parameterized3\ is
  port (
    sig_wr_fifo : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 42 downto 0 );
    sig_mstr2addr_cmd_valid : in STD_LOGIC;
    sig_calc_error_reg_reg : in STD_LOGIC;
    sig_calc_error_reg_reg_0 : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 41 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_dynshreg_f__parameterized3\ : entity is "dynshreg_f";
end \design_1_axi_datamover_0_0_dynshreg_f__parameterized3\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_dynshreg_f__parameterized3\ is
  signal \^out\ : STD_LOGIC_VECTOR ( 42 downto 0 );
  signal \^sig_wr_fifo\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][11]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[3][11]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][11]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][12]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][12]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][12]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][15]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][15]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][15]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][16]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][16]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][16]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][17]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][17]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][17]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][18]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][18]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][18]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][19]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][19]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][19]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][20]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][20]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][20]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][21]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][21]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][21]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][22]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][22]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][22]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][23]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][23]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][23]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][24]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][24]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][24]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][25]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][25]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][25]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][26]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][26]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][26]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][27]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][27]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][27]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][28]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][28]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][28]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][29]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][29]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][29]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][30]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][30]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][30]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][31]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][31]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][31]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][32]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][32]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][32]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][33]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][33]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][33]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][34]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][34]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][34]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][35]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][35]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][35]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][36]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][36]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][36]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][37]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][37]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][37]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][38]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][38]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][38]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][39]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][39]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][39]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][40]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][40]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][40]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][41]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][41]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][41]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][42]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][42]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][42]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][43]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][43]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][43]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][44]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][44]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][44]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][45]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][45]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][45]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][46]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][46]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][46]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][47]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][47]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][47]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][48]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][48]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][48]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][49]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][49]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][49]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][50]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][50]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][50]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][51]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][51]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][51]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][52]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][52]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][52]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][53]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][53]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][53]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][54]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][54]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][54]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][8]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][8]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][8]_srl4 ";
begin
  \out\(42 downto 0) <= \^out\(42 downto 0);
  sig_wr_fifo <= \^sig_wr_fifo\;
\INFERRED_GEN.data_reg[3][11]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(40),
      Q => \^out\(41)
    );
\INFERRED_GEN.data_reg[3][12]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => '1',
      Q => \^out\(40)
    );
\INFERRED_GEN.data_reg[3][15]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(39),
      Q => \^out\(39)
    );
\INFERRED_GEN.data_reg[3][16]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(38),
      Q => \^out\(38)
    );
\INFERRED_GEN.data_reg[3][17]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(37),
      Q => \^out\(37)
    );
\INFERRED_GEN.data_reg[3][18]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(36),
      Q => \^out\(36)
    );
\INFERRED_GEN.data_reg[3][19]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(35),
      Q => \^out\(35)
    );
\INFERRED_GEN.data_reg[3][20]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(34),
      Q => \^out\(34)
    );
\INFERRED_GEN.data_reg[3][21]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(33),
      Q => \^out\(33)
    );
\INFERRED_GEN.data_reg[3][22]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(32),
      Q => \^out\(32)
    );
\INFERRED_GEN.data_reg[3][23]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(31),
      Q => \^out\(31)
    );
\INFERRED_GEN.data_reg[3][24]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(30),
      Q => \^out\(30)
    );
\INFERRED_GEN.data_reg[3][25]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(29),
      Q => \^out\(29)
    );
\INFERRED_GEN.data_reg[3][26]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(28),
      Q => \^out\(28)
    );
\INFERRED_GEN.data_reg[3][27]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(27),
      Q => \^out\(27)
    );
\INFERRED_GEN.data_reg[3][28]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(26),
      Q => \^out\(26)
    );
\INFERRED_GEN.data_reg[3][29]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(25),
      Q => \^out\(25)
    );
\INFERRED_GEN.data_reg[3][30]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(24),
      Q => \^out\(24)
    );
\INFERRED_GEN.data_reg[3][31]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(23),
      Q => \^out\(23)
    );
\INFERRED_GEN.data_reg[3][32]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(22),
      Q => \^out\(22)
    );
\INFERRED_GEN.data_reg[3][33]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(21),
      Q => \^out\(21)
    );
\INFERRED_GEN.data_reg[3][34]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(20),
      Q => \^out\(20)
    );
\INFERRED_GEN.data_reg[3][35]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(19),
      Q => \^out\(19)
    );
\INFERRED_GEN.data_reg[3][36]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(18),
      Q => \^out\(18)
    );
\INFERRED_GEN.data_reg[3][37]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(17),
      Q => \^out\(17)
    );
\INFERRED_GEN.data_reg[3][38]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(16),
      Q => \^out\(16)
    );
\INFERRED_GEN.data_reg[3][39]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(15),
      Q => \^out\(15)
    );
\INFERRED_GEN.data_reg[3][40]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(14),
      Q => \^out\(14)
    );
\INFERRED_GEN.data_reg[3][41]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(13),
      Q => \^out\(13)
    );
\INFERRED_GEN.data_reg[3][42]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(12),
      Q => \^out\(12)
    );
\INFERRED_GEN.data_reg[3][43]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(11),
      Q => \^out\(11)
    );
\INFERRED_GEN.data_reg[3][44]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(10),
      Q => \^out\(10)
    );
\INFERRED_GEN.data_reg[3][45]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(9),
      Q => \^out\(9)
    );
\INFERRED_GEN.data_reg[3][46]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(8),
      Q => \^out\(8)
    );
\INFERRED_GEN.data_reg[3][47]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(7),
      Q => \^out\(7)
    );
\INFERRED_GEN.data_reg[3][48]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(6),
      Q => \^out\(6)
    );
\INFERRED_GEN.data_reg[3][49]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(5),
      Q => \^out\(5)
    );
\INFERRED_GEN.data_reg[3][50]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(4),
      Q => \^out\(4)
    );
\INFERRED_GEN.data_reg[3][51]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(3),
      Q => \^out\(3)
    );
\INFERRED_GEN.data_reg[3][52]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(2),
      Q => \^out\(2)
    );
\INFERRED_GEN.data_reg[3][53]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(1),
      Q => \^out\(1)
    );
\INFERRED_GEN.data_reg[3][54]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(0),
      Q => \^out\(0)
    );
\INFERRED_GEN.data_reg[3][54]_srl4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sig_mstr2addr_cmd_valid,
      I1 => sig_calc_error_reg_reg,
      I2 => sig_calc_error_reg_reg_0,
      O => \^sig_wr_fifo\
    );
\INFERRED_GEN.data_reg[3][8]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sig_wr_fifo\,
      CLK => m_axi_s2mm_aclk,
      D => \in\(41),
      Q => \^out\(42)
    );
sig_addr_valid_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(42),
      O => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_dynshreg_f__parameterized4\ is
  port (
    sig_first_dbeat_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : out STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 39 downto 0 );
    sig_first_dbeat_reg_0 : in STD_LOGIC;
    sig_first_dbeat_reg_1 : in STD_LOGIC;
    \sig_first_dbeat__0\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[0]\ : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sig_dbeat_cntr_reg[5]\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[4]\ : in STD_LOGIC;
    sig_mstr2data_cmd_valid : in STD_LOGIC;
    sig_s2mm_ld_nxt_len_reg : in STD_LOGIC;
    sig_s2mm_ld_nxt_len_reg_0 : in STD_LOGIC;
    sig_last_dbeat_reg : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_last_dbeat_reg_0 : in STD_LOGIC;
    sig_next_calc_error_reg_reg : in STD_LOGIC_VECTOR ( 47 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_dynshreg_f__parameterized4\ : entity is "dynshreg_f";
end \design_1_axi_datamover_0_0_dynshreg_f__parameterized4\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_dynshreg_f__parameterized4\ is
  signal \^sel\ : STD_LOGIC;
  signal sig_cmd_fifo_data_out : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal sig_last_dbeat_i_2_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_4_n_0 : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][0]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[3][0]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][0]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][10]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][10]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][10]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][11]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][11]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][11]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][12]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][12]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][12]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][13]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][13]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][13]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][14]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][14]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][14]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][15]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][15]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][15]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][16]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][16]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][16]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][17]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][17]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][17]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][18]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][18]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][18]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][19]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][19]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][19]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][1]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][1]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][1]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][20]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][20]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][20]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][21]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][21]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][21]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][22]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][22]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][22]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][23]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][23]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][23]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][24]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][24]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][24]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][25]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][25]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][25]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][26]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][26]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][26]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][27]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][27]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][27]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][28]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][28]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][28]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][29]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][29]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][29]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][2]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][2]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][2]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][30]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][30]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][30]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][31]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][31]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][31]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][32]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][32]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][32]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][33]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][33]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][33]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][34]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][34]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][34]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][35]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][35]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][35]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][36]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][36]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][36]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][37]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][37]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][37]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][38]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][38]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][38]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][39]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][39]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][39]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][3]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][3]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][3]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][40]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][40]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][40]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][41]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][41]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][41]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][42]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][42]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][42]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][43]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][43]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][43]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][44]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][44]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][44]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][49]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][49]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][49]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][50]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][50]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][50]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][51]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][51]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][51]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][52]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][52]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][52]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][5]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][5]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][5]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][6]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][6]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][6]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][7]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][7]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][7]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][8]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][8]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][8]_srl4 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[3][9]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] ";
  attribute srl_name of \INFERRED_GEN.data_reg[3][9]_srl4\ : label is "U0/\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER/I_WR_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][9]_srl4 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[0]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[1]_i_1\ : label is "soft_lutpair81";
begin
  sel <= \^sel\;
\INFERRED_GEN.data_reg[3][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(47),
      Q => \out\(39)
    );
\INFERRED_GEN.data_reg[3][10]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(38),
      Q => \out\(30)
    );
\INFERRED_GEN.data_reg[3][11]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(37),
      Q => \out\(29)
    );
\INFERRED_GEN.data_reg[3][12]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(36),
      Q => \out\(28)
    );
\INFERRED_GEN.data_reg[3][13]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(35),
      Q => \out\(27)
    );
\INFERRED_GEN.data_reg[3][14]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(34),
      Q => \out\(26)
    );
\INFERRED_GEN.data_reg[3][15]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(33),
      Q => \out\(25)
    );
\INFERRED_GEN.data_reg[3][16]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(32),
      Q => \out\(24)
    );
\INFERRED_GEN.data_reg[3][17]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(31),
      Q => \out\(23)
    );
\INFERRED_GEN.data_reg[3][18]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(30),
      Q => \out\(22)
    );
\INFERRED_GEN.data_reg[3][19]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(29),
      Q => \out\(21)
    );
\INFERRED_GEN.data_reg[3][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(46),
      Q => \out\(38)
    );
\INFERRED_GEN.data_reg[3][20]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(28),
      Q => \out\(20)
    );
\INFERRED_GEN.data_reg[3][21]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(27),
      Q => \out\(19)
    );
\INFERRED_GEN.data_reg[3][22]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(26),
      Q => \out\(18)
    );
\INFERRED_GEN.data_reg[3][23]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(25),
      Q => \out\(17)
    );
\INFERRED_GEN.data_reg[3][24]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(24),
      Q => \out\(16)
    );
\INFERRED_GEN.data_reg[3][25]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(23),
      Q => \out\(15)
    );
\INFERRED_GEN.data_reg[3][26]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(22),
      Q => \out\(14)
    );
\INFERRED_GEN.data_reg[3][27]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(21),
      Q => \out\(13)
    );
\INFERRED_GEN.data_reg[3][28]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(20),
      Q => \out\(12)
    );
\INFERRED_GEN.data_reg[3][29]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(19),
      Q => \out\(11)
    );
\INFERRED_GEN.data_reg[3][2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(45),
      Q => \out\(37)
    );
\INFERRED_GEN.data_reg[3][30]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(18),
      Q => \out\(10)
    );
\INFERRED_GEN.data_reg[3][31]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(17),
      Q => \out\(9)
    );
\INFERRED_GEN.data_reg[3][32]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(16),
      Q => \out\(8)
    );
\INFERRED_GEN.data_reg[3][33]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(15),
      Q => \out\(7)
    );
\INFERRED_GEN.data_reg[3][34]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(14),
      Q => \out\(6)
    );
\INFERRED_GEN.data_reg[3][35]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(13),
      Q => \out\(5)
    );
\INFERRED_GEN.data_reg[3][36]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(12),
      Q => \out\(4)
    );
\INFERRED_GEN.data_reg[3][37]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(11),
      Q => sig_cmd_fifo_data_out(15)
    );
\INFERRED_GEN.data_reg[3][38]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(10),
      Q => sig_cmd_fifo_data_out(14)
    );
\INFERRED_GEN.data_reg[3][39]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(9),
      Q => sig_cmd_fifo_data_out(13)
    );
\INFERRED_GEN.data_reg[3][3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(44),
      Q => \out\(36)
    );
\INFERRED_GEN.data_reg[3][40]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(8),
      Q => sig_cmd_fifo_data_out(12)
    );
\INFERRED_GEN.data_reg[3][41]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(7),
      Q => sig_cmd_fifo_data_out(11)
    );
\INFERRED_GEN.data_reg[3][42]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(6),
      Q => sig_cmd_fifo_data_out(10)
    );
\INFERRED_GEN.data_reg[3][43]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(5),
      Q => sig_cmd_fifo_data_out(9)
    );
\INFERRED_GEN.data_reg[3][44]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(4),
      Q => sig_cmd_fifo_data_out(8)
    );
\INFERRED_GEN.data_reg[3][49]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(3),
      Q => \out\(3)
    );
\INFERRED_GEN.data_reg[3][50]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(2),
      Q => \out\(2)
    );
\INFERRED_GEN.data_reg[3][51]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(1),
      Q => \out\(1)
    );
\INFERRED_GEN.data_reg[3][52]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(0),
      Q => \out\(0)
    );
\INFERRED_GEN.data_reg[3][5]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(43),
      Q => \out\(35)
    );
\INFERRED_GEN.data_reg[3][6]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(42),
      Q => \out\(34)
    );
\INFERRED_GEN.data_reg[3][7]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(41),
      Q => \out\(33)
    );
\INFERRED_GEN.data_reg[3][8]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(40),
      Q => \out\(32)
    );
\INFERRED_GEN.data_reg[3][9]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => '0',
      A3 => '0',
      CE => \^sel\,
      CLK => m_axi_s2mm_aclk,
      D => sig_next_calc_error_reg_reg(39),
      Q => \out\(31)
    );
\sig_dbeat_cntr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[7]\(0),
      I1 => \sig_dbeat_cntr_reg[0]\,
      I2 => sig_cmd_fifo_data_out(8),
      O => D(0)
    );
\sig_dbeat_cntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[7]\(1),
      I1 => \sig_dbeat_cntr_reg[7]\(0),
      I2 => \sig_dbeat_cntr_reg[0]\,
      I3 => sig_cmd_fifo_data_out(9),
      O => D(1)
    );
\sig_dbeat_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[7]\(1),
      I1 => \sig_dbeat_cntr_reg[7]\(0),
      I2 => \sig_dbeat_cntr_reg[7]\(2),
      I3 => \sig_dbeat_cntr_reg[0]\,
      I4 => sig_cmd_fifo_data_out(10),
      O => D(2)
    );
\sig_dbeat_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FFFFFE010000"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[7]\(2),
      I1 => \sig_dbeat_cntr_reg[7]\(0),
      I2 => \sig_dbeat_cntr_reg[7]\(1),
      I3 => \sig_dbeat_cntr_reg[7]\(3),
      I4 => \sig_dbeat_cntr_reg[0]\,
      I5 => sig_cmd_fifo_data_out(11),
      O => D(3)
    );
\sig_dbeat_cntr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[7]\(4),
      I1 => \sig_dbeat_cntr_reg[4]\,
      I2 => \sig_dbeat_cntr_reg[0]\,
      I3 => sig_cmd_fifo_data_out(12),
      O => D(4)
    );
\sig_dbeat_cntr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[5]\,
      I1 => \sig_dbeat_cntr_reg[7]\(5),
      I2 => \sig_dbeat_cntr_reg[0]\,
      I3 => sig_cmd_fifo_data_out(13),
      O => D(5)
    );
\sig_dbeat_cntr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9FFA900"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[7]\(6),
      I1 => \sig_dbeat_cntr_reg[5]\,
      I2 => \sig_dbeat_cntr_reg[7]\(5),
      I3 => \sig_dbeat_cntr_reg[0]\,
      I4 => sig_cmd_fifo_data_out(14),
      O => D(6)
    );
\sig_dbeat_cntr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FFFFFE010000"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg[7]\(6),
      I1 => \sig_dbeat_cntr_reg[7]\(5),
      I2 => \sig_dbeat_cntr_reg[5]\,
      I3 => \sig_dbeat_cntr_reg[7]\(7),
      I4 => \sig_dbeat_cntr_reg[0]\,
      I5 => sig_cmd_fifo_data_out(15),
      O => D(7)
    );
sig_first_dbeat_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70FF700000000000"
    )
        port map (
      I0 => sig_first_dbeat_reg_0,
      I1 => sig_first_dbeat_reg_1,
      I2 => \sig_first_dbeat__0\,
      I3 => \sig_dbeat_cntr_reg[0]\,
      I4 => sig_last_dbeat_i_2_n_0,
      I5 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      O => sig_first_dbeat_reg
    );
sig_last_dbeat_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35FF303035003030"
    )
        port map (
      I0 => sig_last_dbeat_i_2_n_0,
      I1 => sig_last_dbeat_reg,
      I2 => \sig_dbeat_cntr_reg[0]\,
      I3 => E(0),
      I4 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      I5 => sig_last_dbeat_reg_0,
      O => sig_cmd_stat_rst_user_reg_n_cdc_from_reg
    );
sig_last_dbeat_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sig_cmd_fifo_data_out(13),
      I1 => sig_cmd_fifo_data_out(9),
      I2 => sig_cmd_fifo_data_out(10),
      I3 => sig_cmd_fifo_data_out(8),
      I4 => sig_last_dbeat_i_4_n_0,
      O => sig_last_dbeat_i_2_n_0
    );
sig_last_dbeat_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_cmd_fifo_data_out(11),
      I1 => sig_cmd_fifo_data_out(12),
      I2 => sig_cmd_fifo_data_out(14),
      I3 => sig_cmd_fifo_data_out(15),
      O => sig_last_dbeat_i_4_n_0
    );
sig_s2mm_ld_nxt_len_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => sig_mstr2data_cmd_valid,
      I1 => sig_s2mm_ld_nxt_len_reg,
      I2 => sig_s2mm_ld_nxt_len_reg_0,
      O => \^sel\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_srl_fifo_rbu_f is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_cmd_tready : out STD_LOGIC;
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC_VECTOR ( 53 downto 0 );
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    FIFO_Full_reg_0 : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]\ : in STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    sig_calc_error_pushed : in STD_LOGIC;
    sig_input_reg_empty : in STD_LOGIC;
    sig_sm_halt_reg : in STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_cmd_tdata : in STD_LOGIC_VECTOR ( 53 downto 0 )
  );
end design_1_axi_datamover_0_0_srl_fifo_rbu_f;

architecture STRUCTURE of design_1_axi_datamover_0_0_srl_fifo_rbu_f is
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_3 : STD_LOGIC;
  signal FIFO_Full_reg_n_0 : STD_LOGIC;
  signal fifo_full_p1 : STD_LOGIC;
  signal sig_wr_fifo : STD_LOGIC;
begin
CNTR_INCR_DECR_ADDN_F_I: entity work.design_1_axi_datamover_0_0_cntr_incr_decr_addn_f_2
     port map (
      FIFO_Full_reg => FIFO_Full_reg_0,
      \INFERRED_GEN.cnt_i_reg[1]_0\ => \INFERRED_GEN.cnt_i_reg[1]\,
      \INFERRED_GEN.cnt_i_reg[1]_1\ => FIFO_Full_reg_n_0,
      Q(2) => Q(0),
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      fifo_full_p1 => fifo_full_p1,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      s2mm_dbg_data(0) => s2mm_dbg_data(0),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      s_axis_s2mm_cmd_tvalid => s_axis_s2mm_cmd_tvalid,
      sig_calc_error_pushed => sig_calc_error_pushed,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n,
      sig_input_reg_empty => sig_input_reg_empty,
      sig_sm_halt_reg => sig_sm_halt_reg,
      sig_stream_rst => sig_stream_rst,
      sig_wr_fifo => sig_wr_fifo
    );
DYNSHREG_F_I: entity work.design_1_axi_datamover_0_0_dynshreg_f
     port map (
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(53 downto 0) => \out\(53 downto 0),
      s_axis_s2mm_cmd_tdata(53 downto 0) => s_axis_s2mm_cmd_tdata(53 downto 0),
      s_axis_s2mm_cmd_tvalid => s_axis_s2mm_cmd_tvalid,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n,
      \sig_input_tag_reg_reg[3]\ => FIFO_Full_reg_n_0,
      sig_wr_fifo => sig_wr_fifo
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => FIFO_Full_reg_n_0,
      R => sig_stream_rst
    );
s_axis_s2mm_cmd_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_inhibit_rdy_n,
      I1 => FIFO_Full_reg_n_0,
      O => s_axis_s2mm_cmd_tready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized0\ is
  port (
    FIFO_Full_reg_0 : out STD_LOGIC;
    sig_inhibit_rdy_n_reg : out STD_LOGIC;
    m_axis_s2mm_sts_tvalid : out STD_LOGIC;
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_s2mm_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    m_axis_s2mm_sts_tready : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 0 to 7 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized0\ : entity is "srl_fifo_rbu_f";
end \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized0\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized0\ is
  signal CNTR_INCR_DECR_ADDN_F_I_n_1 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal \^fifo_full_reg_0\ : STD_LOGIC;
  signal fifo_full_p1 : STD_LOGIC;
  signal sig_wr_fifo : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[20]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[6]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[7]_i_8\ : label is "soft_lutpair74";
begin
  FIFO_Full_reg_0 <= \^fifo_full_reg_0\;
CNTR_INCR_DECR_ADDN_F_I: entity work.design_1_axi_datamover_0_0_cntr_incr_decr_addn_f_3
     port map (
      \INFERRED_GEN.cnt_i_reg[0]_0\ => \INFERRED_GEN.cnt_i_reg[0]\,
      \INFERRED_GEN.cnt_i_reg[0]_1\ => \^fifo_full_reg_0\,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      fifo_full_p1 => fifo_full_p1,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axis_s2mm_sts_tready => m_axis_s2mm_sts_tready,
      m_axis_s2mm_sts_tvalid => m_axis_s2mm_sts_tvalid,
      sig_stream_rst => sig_stream_rst,
      sig_wr_fifo => sig_wr_fifo,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
DYNSHREG_F_I: entity work.\design_1_axi_datamover_0_0_dynshreg_f__parameterized0\
     port map (
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      \in\(0 to 7) => \in\(0 to 7),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axis_s2mm_sts_tdata(7 downto 0) => m_axis_s2mm_sts_tdata(7 downto 0),
      \m_axis_s2mm_sts_tdata[7]_0\ => \INFERRED_GEN.cnt_i_reg[0]\,
      m_axis_s2mm_sts_tdata_7_sp_1 => \^fifo_full_reg_0\,
      sig_wr_fifo => sig_wr_fifo,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => \^fifo_full_reg_0\,
      R => sig_stream_rst
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => \INFERRED_GEN.cnt_i_reg[0]\,
      I1 => \^fifo_full_reg_0\,
      I2 => sig_wsc2stat_status_valid,
      I3 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      O => SR(0)
    );
\s2mm_dbg_data[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^fifo_full_reg_0\,
      I1 => \INFERRED_GEN.cnt_i_reg[0]\,
      I2 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(1)
    );
\s2mm_dbg_data[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^fifo_full_reg_0\,
      I1 => \INFERRED_GEN.cnt_i_reg[0]\,
      I2 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(0)
    );
\sig_dbeat_cntr[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \INFERRED_GEN.cnt_i_reg[0]\,
      I1 => \^fifo_full_reg_0\,
      O => sig_inhibit_rdy_n_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized1\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \INFERRED_GEN.cnt_i_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_bready : out STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg\ : out STD_LOGIC;
    \m_axi_s2mm_bresp[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\ : out STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_push_coelsc_reg : in STD_LOGIC;
    m_axi_s2mm_bvalid : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]\ : in STD_LOGIC;
    m_axi_s2mm_bready_0 : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg_0\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_1\ : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized1\ : entity is "srl_fifo_rbu_f";
end \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized1\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized1\ is
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_3 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_4 : STD_LOGIC;
  signal FIFO_Full_reg_n_0 : STD_LOGIC;
  signal fifo_full_p1 : STD_LOGIC;
  signal sig_wr_fifo : STD_LOGIC;
begin
CNTR_INCR_DECR_ADDN_F_I: entity work.\design_1_axi_datamover_0_0_cntr_incr_decr_addn_f__parameterized0\
     port map (
      \INFERRED_GEN.cnt_i_reg[1]_0\ => FIFO_Full_reg_n_0,
      \INFERRED_GEN.cnt_i_reg[1]_1\ => \INFERRED_GEN.cnt_i_reg[1]\,
      Q(3) => \INFERRED_GEN.cnt_i_reg[3]\(0),
      Q(2) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_4,
      fifo_full_p1 => fifo_full_p1,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_bvalid => m_axi_s2mm_bvalid,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n,
      sig_push_coelsc_reg => sig_push_coelsc_reg,
      sig_stream_rst => sig_stream_rst,
      sig_wr_fifo => sig_wr_fifo
    );
DYNSHREG_F_I: entity work.\design_1_axi_datamover_0_0_dynshreg_f__parameterized1\
     port map (
      \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg_0\ => \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg_0\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_0\(0) => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_0\(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_1\ => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_1\,
      addr(0) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      addr(1) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      addr(2) => CNTR_INCR_DECR_ADDN_F_I_n_4,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_bresp(1 downto 0) => m_axi_s2mm_bresp(1 downto 0),
      \m_axi_s2mm_bresp[1]\(0) => \m_axi_s2mm_bresp[1]\(0),
      sig_wr_fifo => sig_wr_fifo
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => FIFO_Full_reg_n_0,
      R => sig_stream_rst
    );
m_axi_s2mm_bready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => m_axi_s2mm_bready_0,
      I1 => sig_inhibit_rdy_n,
      I2 => FIFO_Full_reg_n_0,
      O => m_axi_s2mm_bready
    );
\sig_addr_posted_cntr[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBB44444444BBBB"
    )
        port map (
      I0 => sig_wr_fifo,
      I1 => \out\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => D(0)
    );
\sig_addr_posted_cntr[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1E1E1E1F878E1E1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => \out\,
      I5 => sig_wr_fifo,
      O => D(1)
    );
\sig_addr_posted_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4666666666666662"
    )
        port map (
      I0 => \out\,
      I1 => sig_wr_fifo,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => E(0)
    );
\sig_addr_posted_cntr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEFE00801101"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \out\,
      I3 => sig_wr_fifo,
      I4 => Q(2),
      I5 => Q(3),
      O => D(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized2\ is
  port (
    FIFO_Full_reg_0 : out STD_LOGIC;
    sig_coelsc_interr_reg0 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \INFERRED_GEN.cnt_i_reg[3]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg\ : out STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg_0\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_tlast_err_stop : in STD_LOGIC;
    sig_push_to_wsc : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    sig_coelsc_reg_empty : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_2\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 6 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized2\ : entity is "srl_fifo_rbu_f";
end \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized2\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized2\ is
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_3 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_4 : STD_LOGIC;
  signal DYNSHREG_F_I_n_13 : STD_LOGIC;
  signal \^fifo_full_reg_0\ : STD_LOGIC;
  signal \^inferred_gen.cnt_i_reg[3]\ : STD_LOGIC;
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fifo_full_p1 : STD_LOGIC;
  signal sig_rd_empty : STD_LOGIC;
begin
  FIFO_Full_reg_0 <= \^fifo_full_reg_0\;
  \INFERRED_GEN.cnt_i_reg[3]\ <= \^inferred_gen.cnt_i_reg[3]\;
CNTR_INCR_DECR_ADDN_F_I: entity work.\design_1_axi_datamover_0_0_cntr_incr_decr_addn_f__parameterized0_1\
     port map (
      D(0) => addr_i_p1(0),
      FIFO_Full_reg => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\,
      FIFO_Full_reg_0 => DYNSHREG_F_I_n_13,
      \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\,
      \INFERRED_GEN.cnt_i_reg[1]_0\(0) => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0),
      \INFERRED_GEN.cnt_i_reg[2]_0\ => \^inferred_gen.cnt_i_reg[3]\,
      Q(3) => sig_rd_empty,
      Q(2) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_4,
      fifo_full_p1 => fifo_full_p1,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_stream_rst => sig_stream_rst
    );
DYNSHREG_F_I: entity work.\design_1_axi_datamover_0_0_dynshreg_f__parameterized2\
     port map (
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg_0\ => \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg_0\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(3) => sig_rd_empty,
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(2) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(1) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0) => CNTR_INCR_DECR_ADDN_F_I_n_4,
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\(0) => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_1\ => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_2\(0) => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_1\(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_3\ => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_2\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(0 to 6) => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(0 to 6),
      \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg\(0) => addr_i_p1(0),
      \INFERRED_GEN.cnt_i_reg[0]\ => \^fifo_full_reg_0\,
      \INFERRED_GEN.cnt_i_reg[3]\ => \^inferred_gen.cnt_i_reg[3]\,
      \INFERRED_GEN.cnt_i_reg[3]_0\ => DYNSHREG_F_I_n_13,
      Q(3 downto 0) => Q(3 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(5 downto 0) => \out\(5 downto 0),
      p_0_in => p_0_in,
      sig_coelsc_interr_reg0 => sig_coelsc_interr_reg0,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n,
      sig_push_to_wsc => sig_push_to_wsc,
      sig_tlast_err_stop => sig_tlast_err_stop
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => \^fifo_full_reg_0\,
      R => sig_stream_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized3\ is
  port (
    FIFO_Full_reg_0 : out STD_LOGIC;
    sig_push_addr_reg1_out : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 42 downto 0 );
    \INFERRED_GEN.cnt_i_reg[2]\ : out STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    FIFO_Full_reg_1 : in STD_LOGIC;
    sig_mstr2addr_cmd_valid : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]\ : in STD_LOGIC;
    s2mm_allow_addr_req : in STD_LOGIC;
    sig_addr_reg_empty : in STD_LOGIC;
    sig_halt_reg : in STD_LOGIC;
    sig_data2all_tlast_error : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 41 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized3\ : entity is "srl_fifo_rbu_f";
end \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized3\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized3\ is
  signal CNTR_INCR_DECR_ADDN_F_I_n_1 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal \^fifo_full_reg_0\ : STD_LOGIC;
  signal fifo_full_p1 : STD_LOGIC;
  signal sig_wr_fifo : STD_LOGIC;
begin
  FIFO_Full_reg_0 <= \^fifo_full_reg_0\;
CNTR_INCR_DECR_ADDN_F_I: entity work.design_1_axi_datamover_0_0_cntr_incr_decr_addn_f_4
     port map (
      FIFO_Full_reg => FIFO_Full_reg_1,
      \INFERRED_GEN.cnt_i_reg[1]_0\ => \INFERRED_GEN.cnt_i_reg[1]\,
      \INFERRED_GEN.cnt_i_reg[1]_1\ => \^fifo_full_reg_0\,
      \INFERRED_GEN.cnt_i_reg[2]_0\ => \INFERRED_GEN.cnt_i_reg[2]\,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      fifo_full_p1 => fifo_full_p1,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      s2mm_allow_addr_req => s2mm_allow_addr_req,
      sig_addr_reg_empty => sig_addr_reg_empty,
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_data2all_tlast_error => sig_data2all_tlast_error,
      sig_halt_reg => sig_halt_reg,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out,
      sig_stream_rst => sig_stream_rst,
      sig_wr_fifo => sig_wr_fifo
    );
DYNSHREG_F_I: entity work.\design_1_axi_datamover_0_0_dynshreg_f__parameterized3\
     port map (
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      \in\(41 downto 0) => \in\(41 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(42 downto 0) => \out\(42 downto 0),
      p_0_in => p_0_in,
      sig_calc_error_reg_reg => \INFERRED_GEN.cnt_i_reg[1]\,
      sig_calc_error_reg_reg_0 => \^fifo_full_reg_0\,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_wr_fifo => sig_wr_fifo
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => \^fifo_full_reg_0\,
      R => sig_stream_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized4\ is
  port (
    FIFO_Full_reg_0 : out STD_LOGIC;
    sig_first_dbeat_reg : out STD_LOGIC;
    sig_s_ready_out_reg : out STD_LOGIC;
    sig_next_sequential_reg_reg : out STD_LOGIC;
    sig_cmd2data_valid_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_inhibit_rdy_n_reg : out STD_LOGIC;
    sig_next_calc_error_reg_reg : out STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC_VECTOR ( 39 downto 0 );
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_first_dbeat_reg_0 : in STD_LOGIC;
    \sig_first_dbeat__0\ : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    sig_mstr2data_cmd_valid : in STD_LOGIC;
    sig_s2mm_ld_nxt_len_reg : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sig_dbeat_cntr_reg[5]\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[4]\ : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : in STD_LOGIC;
    sig_next_sequential_reg : in STD_LOGIC;
    sig_last_dbeat_reg : in STD_LOGIC;
    sig_dqual_reg_empty : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_0\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_1\ : in STD_LOGIC;
    sig_wdc_status_going_full : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_2\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_3\ : in STD_LOGIC;
    sig_addr_posted_cntr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_last_mmap_dbeat_reg : in STD_LOGIC;
    sig_halt_reg : in STD_LOGIC;
    \sig_dbeat_cntr[7]_i_3\ : in STD_LOGIC;
    \sig_dbeat_cntr[7]_i_3_0\ : in STD_LOGIC;
    sig_last_dbeat_reg_0 : in STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_next_calc_error_reg_reg_0 : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized4\ : entity is "srl_fifo_rbu_f";
end \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized4\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized4\ is
  signal CNTR_INCR_DECR_ADDN_F_I_n_1 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fifo_full_reg_0\ : STD_LOGIC;
  signal fifo_full_p1 : STD_LOGIC;
  signal \^sig_cmd2data_valid_reg\ : STD_LOGIC;
  signal \^sig_next_sequential_reg_reg\ : STD_LOGIC;
  signal \^sig_s_ready_out_reg\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_sig_pcc_sm_state[6]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[31]_INST_0\ : label is "soft_lutpair82";
begin
  E(0) <= \^e\(0);
  FIFO_Full_reg_0 <= \^fifo_full_reg_0\;
  sig_cmd2data_valid_reg <= \^sig_cmd2data_valid_reg\;
  sig_next_sequential_reg_reg <= \^sig_next_sequential_reg_reg\;
  sig_s_ready_out_reg <= \^sig_s_ready_out_reg\;
CNTR_INCR_DECR_ADDN_F_I: entity work.design_1_axi_datamover_0_0_cntr_incr_decr_addn_f
     port map (
      E(0) => \^e\(0),
      \INFERRED_GEN.cnt_i_reg[0]_0\ => \INFERRED_GEN.cnt_i_reg[0]\,
      \INFERRED_GEN.cnt_i_reg[1]_0\ => \^fifo_full_reg_0\,
      \INFERRED_GEN.cnt_i_reg[1]_1\ => sig_s2mm_ld_nxt_len_reg,
      Q(2) => Q(0),
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      fifo_full_p1 => fifo_full_p1,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      sel => \^sig_cmd2data_valid_reg\,
      sig_addr_posted_cntr(2 downto 0) => sig_addr_posted_cntr(2 downto 0),
      \sig_dbeat_cntr[7]_i_3_0\ => \sig_dbeat_cntr[7]_i_3\,
      \sig_dbeat_cntr[7]_i_3_1\ => \sig_dbeat_cntr[7]_i_3_0\,
      \sig_dbeat_cntr_reg[7]\ => sig_last_dbeat_reg,
      \sig_dbeat_cntr_reg[7]_0\ => \sig_dbeat_cntr_reg[7]_0\,
      \sig_dbeat_cntr_reg[7]_1\ => \sig_dbeat_cntr_reg[7]_1\,
      \sig_dbeat_cntr_reg[7]_2\ => \sig_dbeat_cntr_reg[7]_2\,
      \sig_dbeat_cntr_reg[7]_3\ => \sig_dbeat_cntr_reg[7]_3\,
      \sig_dbeat_cntr_reg[7]_4\ => sig_first_dbeat_reg_0,
      sig_dqual_reg_empty => sig_dqual_reg_empty,
      sig_halt_reg => sig_halt_reg,
      sig_last_mmap_dbeat_reg => sig_last_mmap_dbeat_reg,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_next_calc_error_reg_reg => sig_next_calc_error_reg_reg,
      sig_next_sequential_reg => sig_next_sequential_reg,
      sig_next_sequential_reg_reg => \^sig_next_sequential_reg_reg\,
      sig_s_ready_out_reg => \^sig_s_ready_out_reg\,
      sig_stream_rst => sig_stream_rst,
      sig_wdc_status_going_full => sig_wdc_status_going_full,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
DYNSHREG_F_I: entity work.\design_1_axi_datamover_0_0_dynshreg_f__parameterized4\
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => \^e\(0),
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(39 downto 0) => \out\(39 downto 0),
      sel => \^sig_cmd2data_valid_reg\,
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      \sig_dbeat_cntr_reg[0]\ => \^sig_next_sequential_reg_reg\,
      \sig_dbeat_cntr_reg[4]\ => \sig_dbeat_cntr_reg[4]\,
      \sig_dbeat_cntr_reg[5]\ => \sig_dbeat_cntr_reg[5]\,
      \sig_dbeat_cntr_reg[7]\(7 downto 0) => \sig_dbeat_cntr_reg[7]\(7 downto 0),
      \sig_first_dbeat__0\ => \sig_first_dbeat__0\,
      sig_first_dbeat_reg => sig_first_dbeat_reg,
      sig_first_dbeat_reg_0 => \^sig_s_ready_out_reg\,
      sig_first_dbeat_reg_1 => sig_first_dbeat_reg_0,
      sig_last_dbeat_reg => sig_last_dbeat_reg_0,
      sig_last_dbeat_reg_0 => sig_last_dbeat_reg,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_next_calc_error_reg_reg(47 downto 0) => sig_next_calc_error_reg_reg_0(47 downto 0),
      sig_s2mm_ld_nxt_len_reg => \^fifo_full_reg_0\,
      sig_s2mm_ld_nxt_len_reg_0 => sig_s2mm_ld_nxt_len_reg
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => \^fifo_full_reg_0\,
      R => sig_stream_rst
    );
\FSM_onehot_sig_pcc_sm_state[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_s2mm_ld_nxt_len_reg,
      I1 => \^fifo_full_reg_0\,
      O => sig_inhibit_rdy_n_reg
    );
\s2mm_dbg_data[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^fifo_full_reg_0\,
      I1 => sig_s2mm_ld_nxt_len_reg,
      I2 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_srl_fifo_f is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_cmd_tready : out STD_LOGIC;
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC_VECTOR ( 53 downto 0 );
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]\ : in STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    sig_calc_error_pushed : in STD_LOGIC;
    sig_input_reg_empty : in STD_LOGIC;
    sig_sm_halt_reg : in STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_cmd_tdata : in STD_LOGIC_VECTOR ( 53 downto 0 )
  );
end design_1_axi_datamover_0_0_srl_fifo_f;

architecture STRUCTURE of design_1_axi_datamover_0_0_srl_fifo_f is
begin
I_SRL_FIFO_RBU_F: entity work.design_1_axi_datamover_0_0_srl_fifo_rbu_f
     port map (
      FIFO_Full_reg_0 => FIFO_Full_reg,
      \INFERRED_GEN.cnt_i_reg[1]\ => \INFERRED_GEN.cnt_i_reg[1]\,
      Q(0) => Q(0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(53 downto 0) => \out\(53 downto 0),
      s2mm_dbg_data(0) => s2mm_dbg_data(0),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      s_axis_s2mm_cmd_tdata(53 downto 0) => s_axis_s2mm_cmd_tdata(53 downto 0),
      s_axis_s2mm_cmd_tready => s_axis_s2mm_cmd_tready,
      s_axis_s2mm_cmd_tvalid => s_axis_s2mm_cmd_tvalid,
      sig_calc_error_pushed => sig_calc_error_pushed,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n,
      sig_input_reg_empty => sig_input_reg_empty,
      sig_sm_halt_reg => sig_sm_halt_reg,
      sig_stream_rst => sig_stream_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_srl_fifo_f__parameterized0\ is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_inhibit_rdy_n_reg : out STD_LOGIC;
    m_axis_s2mm_sts_tvalid : out STD_LOGIC;
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_s2mm_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    m_axis_s2mm_sts_tready : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 0 to 7 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_srl_fifo_f__parameterized0\ : entity is "srl_fifo_f";
end \design_1_axi_datamover_0_0_srl_fifo_f__parameterized0\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_srl_fifo_f__parameterized0\ is
begin
I_SRL_FIFO_RBU_F: entity work.\design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized0\
     port map (
      FIFO_Full_reg_0 => FIFO_Full_reg,
      \INFERRED_GEN.cnt_i_reg[0]\ => \INFERRED_GEN.cnt_i_reg[0]\,
      SR(0) => SR(0),
      \in\(0 to 7) => \in\(0 to 7),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axis_s2mm_sts_tdata(7 downto 0) => m_axis_s2mm_sts_tdata(7 downto 0),
      m_axis_s2mm_sts_tready => m_axis_s2mm_sts_tready,
      m_axis_s2mm_sts_tvalid => m_axis_s2mm_sts_tvalid,
      s2mm_dbg_data(1 downto 0) => s2mm_dbg_data(1 downto 0),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_inhibit_rdy_n_reg => sig_inhibit_rdy_n_reg,
      sig_stream_rst => sig_stream_rst,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_srl_fifo_f__parameterized1\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \INFERRED_GEN.cnt_i_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_bready : out STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg\ : out STD_LOGIC;
    \m_axi_s2mm_bresp[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\ : out STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_push_coelsc_reg : in STD_LOGIC;
    m_axi_s2mm_bvalid : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]\ : in STD_LOGIC;
    m_axi_s2mm_bready_0 : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg_0\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_1\ : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_srl_fifo_f__parameterized1\ : entity is "srl_fifo_f";
end \design_1_axi_datamover_0_0_srl_fifo_f__parameterized1\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_srl_fifo_f__parameterized1\ is
begin
I_SRL_FIFO_RBU_F: entity work.\design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized1\
     port map (
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg_0\ => \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg_0\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_0\(0) => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_0\(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_1\ => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_1\,
      \INFERRED_GEN.cnt_i_reg[1]\ => \INFERRED_GEN.cnt_i_reg[1]\,
      \INFERRED_GEN.cnt_i_reg[3]\(0) => \INFERRED_GEN.cnt_i_reg[3]\(0),
      Q(3 downto 0) => Q(3 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_bready => m_axi_s2mm_bready,
      m_axi_s2mm_bready_0 => m_axi_s2mm_bready_0,
      m_axi_s2mm_bresp(1 downto 0) => m_axi_s2mm_bresp(1 downto 0),
      \m_axi_s2mm_bresp[1]\(0) => \m_axi_s2mm_bresp[1]\(0),
      m_axi_s2mm_bvalid => m_axi_s2mm_bvalid,
      \out\ => \out\,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n,
      sig_push_coelsc_reg => sig_push_coelsc_reg,
      sig_stream_rst => sig_stream_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_srl_fifo_f__parameterized2\ is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_coelsc_interr_reg0 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \INFERRED_GEN.cnt_i_reg[3]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg\ : out STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg_0\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_tlast_err_stop : in STD_LOGIC;
    sig_push_to_wsc : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC;
    sig_coelsc_reg_empty : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_2\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 6 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_srl_fifo_f__parameterized2\ : entity is "srl_fifo_f";
end \design_1_axi_datamover_0_0_srl_fifo_f__parameterized2\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_srl_fifo_f__parameterized2\ is
begin
I_SRL_FIFO_RBU_F: entity work.\design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized2\
     port map (
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      FIFO_Full_reg_0 => FIFO_Full_reg,
      \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg_0\ => \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg_0\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0) => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\ => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_1\(0) => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_1\(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_2\ => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_2\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(0 to 6) => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(0 to 6),
      \INFERRED_GEN.cnt_i_reg[3]\ => \INFERRED_GEN.cnt_i_reg[3]\,
      Q(3 downto 0) => Q(3 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(5 downto 0) => \out\(5 downto 0),
      p_0_in => p_0_in,
      sig_coelsc_interr_reg0 => sig_coelsc_interr_reg0,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n,
      sig_push_to_wsc => sig_push_to_wsc,
      sig_stream_rst => sig_stream_rst,
      sig_tlast_err_stop => sig_tlast_err_stop
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_srl_fifo_f__parameterized3\ is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_push_addr_reg1_out : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 42 downto 0 );
    \INFERRED_GEN.cnt_i_reg[2]\ : out STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    FIFO_Full_reg_0 : in STD_LOGIC;
    sig_mstr2addr_cmd_valid : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]\ : in STD_LOGIC;
    s2mm_allow_addr_req : in STD_LOGIC;
    sig_addr_reg_empty : in STD_LOGIC;
    sig_halt_reg : in STD_LOGIC;
    sig_data2all_tlast_error : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 41 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_srl_fifo_f__parameterized3\ : entity is "srl_fifo_f";
end \design_1_axi_datamover_0_0_srl_fifo_f__parameterized3\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_srl_fifo_f__parameterized3\ is
begin
I_SRL_FIFO_RBU_F: entity work.\design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized3\
     port map (
      FIFO_Full_reg_0 => FIFO_Full_reg,
      FIFO_Full_reg_1 => FIFO_Full_reg_0,
      \INFERRED_GEN.cnt_i_reg[1]\ => \INFERRED_GEN.cnt_i_reg[1]\,
      \INFERRED_GEN.cnt_i_reg[2]\ => \INFERRED_GEN.cnt_i_reg[2]\,
      \in\(41 downto 0) => \in\(41 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(42 downto 0) => \out\(42 downto 0),
      p_0_in => p_0_in,
      s2mm_allow_addr_req => s2mm_allow_addr_req,
      sig_addr_reg_empty => sig_addr_reg_empty,
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_data2all_tlast_error => sig_data2all_tlast_error,
      sig_halt_reg => sig_halt_reg,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out,
      sig_stream_rst => sig_stream_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_srl_fifo_f__parameterized4\ is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_first_dbeat_reg : out STD_LOGIC;
    sig_s_ready_out_reg : out STD_LOGIC;
    sig_next_sequential_reg_reg : out STD_LOGIC;
    sel : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_inhibit_rdy_n_reg : out STD_LOGIC;
    sig_next_calc_error_reg_reg : out STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC_VECTOR ( 39 downto 0 );
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_first_dbeat_reg_0 : in STD_LOGIC;
    \sig_first_dbeat__0\ : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    sig_mstr2data_cmd_valid : in STD_LOGIC;
    sig_s2mm_ld_nxt_len_reg : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sig_dbeat_cntr_reg[5]\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[4]\ : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : in STD_LOGIC;
    sig_next_sequential_reg : in STD_LOGIC;
    sig_last_dbeat_reg : in STD_LOGIC;
    sig_dqual_reg_empty : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_0\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_1\ : in STD_LOGIC;
    sig_wdc_status_going_full : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_2\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_3\ : in STD_LOGIC;
    sig_addr_posted_cntr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_last_mmap_dbeat_reg : in STD_LOGIC;
    sig_halt_reg : in STD_LOGIC;
    \sig_dbeat_cntr[7]_i_3\ : in STD_LOGIC;
    \sig_dbeat_cntr[7]_i_3_0\ : in STD_LOGIC;
    sig_last_dbeat_reg_0 : in STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_next_calc_error_reg_reg_0 : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_srl_fifo_f__parameterized4\ : entity is "srl_fifo_f";
end \design_1_axi_datamover_0_0_srl_fifo_f__parameterized4\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_srl_fifo_f__parameterized4\ is
begin
I_SRL_FIFO_RBU_F: entity work.\design_1_axi_datamover_0_0_srl_fifo_rbu_f__parameterized4\
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => E(0),
      FIFO_Full_reg_0 => FIFO_Full_reg,
      \INFERRED_GEN.cnt_i_reg[0]\ => \INFERRED_GEN.cnt_i_reg[0]\,
      Q(0) => Q(0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(39 downto 0) => \out\(39 downto 0),
      s2mm_dbg_data(0) => s2mm_dbg_data(0),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      sig_addr_posted_cntr(2 downto 0) => sig_addr_posted_cntr(2 downto 0),
      sig_cmd2data_valid_reg => sel,
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      \sig_dbeat_cntr[7]_i_3\ => \sig_dbeat_cntr[7]_i_3\,
      \sig_dbeat_cntr[7]_i_3_0\ => \sig_dbeat_cntr[7]_i_3_0\,
      \sig_dbeat_cntr_reg[4]\ => \sig_dbeat_cntr_reg[4]\,
      \sig_dbeat_cntr_reg[5]\ => \sig_dbeat_cntr_reg[5]\,
      \sig_dbeat_cntr_reg[7]\(7 downto 0) => \sig_dbeat_cntr_reg[7]\(7 downto 0),
      \sig_dbeat_cntr_reg[7]_0\ => \sig_dbeat_cntr_reg[7]_0\,
      \sig_dbeat_cntr_reg[7]_1\ => \sig_dbeat_cntr_reg[7]_1\,
      \sig_dbeat_cntr_reg[7]_2\ => \sig_dbeat_cntr_reg[7]_2\,
      \sig_dbeat_cntr_reg[7]_3\ => \sig_dbeat_cntr_reg[7]_3\,
      sig_dqual_reg_empty => sig_dqual_reg_empty,
      \sig_first_dbeat__0\ => \sig_first_dbeat__0\,
      sig_first_dbeat_reg => sig_first_dbeat_reg,
      sig_first_dbeat_reg_0 => sig_first_dbeat_reg_0,
      sig_halt_reg => sig_halt_reg,
      sig_inhibit_rdy_n_reg => sig_inhibit_rdy_n_reg,
      sig_last_dbeat_reg => sig_last_dbeat_reg,
      sig_last_dbeat_reg_0 => sig_last_dbeat_reg_0,
      sig_last_mmap_dbeat_reg => sig_last_mmap_dbeat_reg,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_next_calc_error_reg_reg => sig_next_calc_error_reg_reg,
      sig_next_calc_error_reg_reg_0(47 downto 0) => sig_next_calc_error_reg_reg_0(47 downto 0),
      sig_next_sequential_reg => sig_next_sequential_reg,
      sig_next_sequential_reg_reg => sig_next_sequential_reg_reg,
      sig_s2mm_ld_nxt_len_reg => sig_s2mm_ld_nxt_len_reg,
      sig_s_ready_out_reg => sig_s_ready_out_reg,
      sig_stream_rst => sig_stream_rst,
      sig_wdc_status_going_full => sig_wdc_status_going_full,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_axi_datamover_fifo is
  port (
    sig_init_done : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_cmd_tready : out STD_LOGIC;
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC_VECTOR ( 53 downto 0 );
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_init_done_reg_0 : in STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]\ : in STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    sig_calc_error_pushed : in STD_LOGIC;
    sig_input_reg_empty : in STD_LOGIC;
    sig_sm_halt_reg : in STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_cmd_tdata : in STD_LOGIC_VECTOR ( 53 downto 0 )
  );
end design_1_axi_datamover_0_0_axi_datamover_fifo;

architecture STRUCTURE of design_1_axi_datamover_0_0_axi_datamover_fifo is
  signal sig_inhibit_rdy_n : STD_LOGIC;
  signal sig_inhibit_rdy_n_i_1_n_0 : STD_LOGIC;
  signal \^sig_init_done\ : STD_LOGIC;
begin
  sig_init_done <= \^sig_init_done\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.design_1_axi_datamover_0_0_srl_fifo_f
     port map (
      FIFO_Full_reg => FIFO_Full_reg,
      \INFERRED_GEN.cnt_i_reg[1]\ => \INFERRED_GEN.cnt_i_reg[1]\,
      Q(0) => Q(0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(53 downto 0) => \out\(53 downto 0),
      s2mm_dbg_data(0) => s2mm_dbg_data(0),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      s_axis_s2mm_cmd_tdata(53 downto 0) => s_axis_s2mm_cmd_tdata(53 downto 0),
      s_axis_s2mm_cmd_tready => s_axis_s2mm_cmd_tready,
      s_axis_s2mm_cmd_tvalid => s_axis_s2mm_cmd_tvalid,
      sig_calc_error_pushed => sig_calc_error_pushed,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n,
      sig_input_reg_empty => sig_input_reg_empty,
      sig_sm_halt_reg => sig_sm_halt_reg,
      sig_stream_rst => sig_stream_rst
    );
sig_inhibit_rdy_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_init_done\,
      I1 => sig_inhibit_rdy_n,
      O => sig_inhibit_rdy_n_i_1_n_0
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_inhibit_rdy_n_i_1_n_0,
      Q => sig_inhibit_rdy_n,
      R => sig_stream_rst
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_init_done_reg_0,
      Q => \^sig_init_done\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized0\ is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_init_done_0 : out STD_LOGIC;
    sig_inhibit_rdy_n_reg_0 : out STD_LOGIC;
    sig_inhibit_rdy_n_reg_1 : out STD_LOGIC;
    m_axis_s2mm_sts_tvalid : out STD_LOGIC;
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_s2mm_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_init_done_reg_0 : in STD_LOGIC;
    m_axis_s2mm_sts_tready : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 0 to 7 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized0\ : entity is "axi_datamover_fifo";
end \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized0\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized0\ is
  signal \sig_inhibit_rdy_n_i_1__2_n_0\ : STD_LOGIC;
  signal \^sig_inhibit_rdy_n_reg_0\ : STD_LOGIC;
  signal \^sig_init_done_0\ : STD_LOGIC;
begin
  sig_inhibit_rdy_n_reg_0 <= \^sig_inhibit_rdy_n_reg_0\;
  sig_init_done_0 <= \^sig_init_done_0\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.\design_1_axi_datamover_0_0_srl_fifo_f__parameterized0\
     port map (
      FIFO_Full_reg => FIFO_Full_reg,
      \INFERRED_GEN.cnt_i_reg[0]\ => \^sig_inhibit_rdy_n_reg_0\,
      SR(0) => SR(0),
      \in\(0 to 7) => \in\(0 to 7),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axis_s2mm_sts_tdata(7 downto 0) => m_axis_s2mm_sts_tdata(7 downto 0),
      m_axis_s2mm_sts_tready => m_axis_s2mm_sts_tready,
      m_axis_s2mm_sts_tvalid => m_axis_s2mm_sts_tvalid,
      s2mm_dbg_data(1 downto 0) => s2mm_dbg_data(1 downto 0),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_inhibit_rdy_n_reg => sig_inhibit_rdy_n_reg_1,
      sig_stream_rst => sig_stream_rst,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
\sig_inhibit_rdy_n_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_init_done_0\,
      I1 => \^sig_inhibit_rdy_n_reg_0\,
      O => \sig_inhibit_rdy_n_i_1__2_n_0\
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_inhibit_rdy_n_i_1__2_n_0\,
      Q => \^sig_inhibit_rdy_n_reg_0\,
      R => sig_stream_rst
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_init_done_reg_0,
      Q => \^sig_init_done_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized1\ is
  port (
    sig_init_done : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \INFERRED_GEN.cnt_i_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_bready : out STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg\ : out STD_LOGIC;
    \m_axi_s2mm_bresp[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\ : out STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_init_done_reg_0 : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_push_coelsc_reg : in STD_LOGIC;
    m_axi_s2mm_bvalid : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]\ : in STD_LOGIC;
    m_axi_s2mm_bready_0 : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg_0\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_1\ : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized1\ : entity is "axi_datamover_fifo";
end \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized1\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized1\ is
  signal sig_inhibit_rdy_n : STD_LOGIC;
  signal \sig_inhibit_rdy_n_i_1__0_n_0\ : STD_LOGIC;
  signal \^sig_init_done\ : STD_LOGIC;
begin
  sig_init_done <= \^sig_init_done\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.\design_1_axi_datamover_0_0_srl_fifo_f__parameterized1\
     port map (
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg_0\ => \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg_0\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_0\(0) => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_0\(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_1\ => \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_1\,
      \INFERRED_GEN.cnt_i_reg[1]\ => \INFERRED_GEN.cnt_i_reg[1]\,
      \INFERRED_GEN.cnt_i_reg[3]\(0) => \INFERRED_GEN.cnt_i_reg[3]\(0),
      Q(3 downto 0) => Q(3 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_bready => m_axi_s2mm_bready,
      m_axi_s2mm_bready_0 => m_axi_s2mm_bready_0,
      m_axi_s2mm_bresp(1 downto 0) => m_axi_s2mm_bresp(1 downto 0),
      \m_axi_s2mm_bresp[1]\(0) => \m_axi_s2mm_bresp[1]\(0),
      m_axi_s2mm_bvalid => m_axi_s2mm_bvalid,
      \out\ => \out\,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n,
      sig_push_coelsc_reg => sig_push_coelsc_reg,
      sig_stream_rst => sig_stream_rst
    );
\sig_inhibit_rdy_n_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_init_done\,
      I1 => sig_inhibit_rdy_n,
      O => \sig_inhibit_rdy_n_i_1__0_n_0\
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_inhibit_rdy_n_i_1__0_n_0\,
      Q => sig_inhibit_rdy_n,
      R => sig_stream_rst
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_init_done_reg_0,
      Q => \^sig_init_done\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized2\ is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_init_done_0 : out STD_LOGIC;
    sig_inhibit_rdy_n : out STD_LOGIC;
    sig_coelsc_interr_reg0 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sig_push_coelsc_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg\ : out STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_init_done_reg_0 : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg_0\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_tlast_err_stop : in STD_LOGIC;
    sig_push_to_wsc : in STD_LOGIC;
    sig_coelsc_reg_empty : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_2\ : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 6 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized2\ : entity is "axi_datamover_fifo";
end \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized2\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized2\ is
  signal \^sig_inhibit_rdy_n\ : STD_LOGIC;
  signal \sig_inhibit_rdy_n_i_1__3_n_0\ : STD_LOGIC;
  signal \^sig_init_done_0\ : STD_LOGIC;
begin
  sig_inhibit_rdy_n <= \^sig_inhibit_rdy_n\;
  sig_init_done_0 <= \^sig_init_done_0\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.\design_1_axi_datamover_0_0_srl_fifo_f__parameterized2\
     port map (
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      FIFO_Full_reg => FIFO_Full_reg,
      \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg_0\ => \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg_0\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0) => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\ => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_1\(0) => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_1\(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_2\ => \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_2\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(0 to 6) => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(0 to 6),
      \INFERRED_GEN.cnt_i_reg[3]\ => sig_push_coelsc_reg,
      Q(3 downto 0) => Q(3 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(5 downto 0) => \out\(5 downto 0),
      p_0_in => p_0_in,
      sig_coelsc_interr_reg0 => sig_coelsc_interr_reg0,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_inhibit_rdy_n => \^sig_inhibit_rdy_n\,
      sig_push_to_wsc => sig_push_to_wsc,
      sig_stream_rst => sig_stream_rst,
      sig_tlast_err_stop => sig_tlast_err_stop
    );
\sig_inhibit_rdy_n_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_init_done_0\,
      I1 => \^sig_inhibit_rdy_n\,
      O => \sig_inhibit_rdy_n_i_1__3_n_0\
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_inhibit_rdy_n_i_1__3_n_0\,
      Q => \^sig_inhibit_rdy_n\,
      R => sig_stream_rst
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_init_done_reg_0,
      Q => \^sig_init_done_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized3\ is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_inhibit_rdy_n_reg_0 : out STD_LOGIC;
    sig_init_reg2_reg_0 : out STD_LOGIC;
    sig_init_reg2_reg_1 : out STD_LOGIC;
    sig_init_reg2_reg_2 : out STD_LOGIC;
    sig_init_reg2_reg_3 : out STD_LOGIC;
    sig_init_reg2_reg_4 : out STD_LOGIC;
    sig_push_addr_reg1_out : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 42 downto 0 );
    \INFERRED_GEN.cnt_i_reg[2]\ : out STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_mmap_reset_reg : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    sig_init_done : in STD_LOGIC;
    sig_init_done_0 : in STD_LOGIC;
    sig_init_done_1 : in STD_LOGIC;
    sig_init_done_2 : in STD_LOGIC;
    sig_init_done_3 : in STD_LOGIC;
    FIFO_Full_reg_0 : in STD_LOGIC;
    sig_mstr2addr_cmd_valid : in STD_LOGIC;
    s2mm_allow_addr_req : in STD_LOGIC;
    sig_addr_reg_empty : in STD_LOGIC;
    sig_halt_reg : in STD_LOGIC;
    sig_data2all_tlast_error : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 41 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized3\ : entity is "axi_datamover_fifo";
end \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized3\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized3\ is
  signal \sig_inhibit_rdy_n_i_1__4_n_0\ : STD_LOGIC;
  signal \^sig_inhibit_rdy_n_reg_0\ : STD_LOGIC;
  signal sig_init_done_4 : STD_LOGIC;
  signal sig_init_done_i_1_n_0 : STD_LOGIC;
  signal sig_init_reg2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sig_init_done_i_1 : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \sig_init_done_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \sig_init_done_i_1__1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \sig_init_done_i_1__2\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \sig_init_done_i_1__3\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \sig_init_done_i_1__4\ : label is "soft_lutpair71";
begin
  sig_inhibit_rdy_n_reg_0 <= \^sig_inhibit_rdy_n_reg_0\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.\design_1_axi_datamover_0_0_srl_fifo_f__parameterized3\
     port map (
      FIFO_Full_reg => FIFO_Full_reg,
      FIFO_Full_reg_0 => FIFO_Full_reg_0,
      \INFERRED_GEN.cnt_i_reg[1]\ => \^sig_inhibit_rdy_n_reg_0\,
      \INFERRED_GEN.cnt_i_reg[2]\ => \INFERRED_GEN.cnt_i_reg[2]\,
      \in\(41 downto 0) => \in\(41 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(42 downto 0) => \out\(42 downto 0),
      p_0_in => p_0_in,
      s2mm_allow_addr_req => s2mm_allow_addr_req,
      sig_addr_reg_empty => sig_addr_reg_empty,
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_data2all_tlast_error => sig_data2all_tlast_error,
      sig_halt_reg => sig_halt_reg,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out,
      sig_stream_rst => sig_stream_rst
    );
\sig_inhibit_rdy_n_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_init_done_4,
      I1 => \^sig_inhibit_rdy_n_reg_0\,
      O => \sig_inhibit_rdy_n_i_1__4_n_0\
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_inhibit_rdy_n_i_1__4_n_0\,
      Q => \^sig_inhibit_rdy_n_reg_0\,
      R => sig_stream_rst
    );
sig_init_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sig_init_reg2,
      I1 => sig_mmap_reset_reg,
      I2 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      I3 => sig_init_done_4,
      O => sig_init_done_i_1_n_0
    );
\sig_init_done_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sig_init_reg2,
      I1 => sig_mmap_reset_reg,
      I2 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      I3 => sig_init_done,
      O => sig_init_reg2_reg_0
    );
\sig_init_done_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sig_init_reg2,
      I1 => sig_mmap_reset_reg,
      I2 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      I3 => sig_init_done_0,
      O => sig_init_reg2_reg_1
    );
\sig_init_done_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sig_init_reg2,
      I1 => sig_mmap_reset_reg,
      I2 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      I3 => sig_init_done_1,
      O => sig_init_reg2_reg_2
    );
\sig_init_done_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sig_init_reg2,
      I1 => sig_mmap_reset_reg,
      I2 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      I3 => sig_init_done_2,
      O => sig_init_reg2_reg_3
    );
\sig_init_done_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sig_init_reg2,
      I1 => sig_mmap_reset_reg,
      I2 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      I3 => sig_init_done_3,
      O => sig_init_reg2_reg_4
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_init_done_i_1_n_0,
      Q => sig_init_done_4,
      R => '0'
    );
sig_init_reg2_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_mmap_reset_reg,
      Q => sig_init_reg2,
      S => sig_stream_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized4\ is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_init_done : out STD_LOGIC;
    sig_inhibit_rdy_n_reg_0 : out STD_LOGIC;
    sig_first_dbeat_reg : out STD_LOGIC;
    sig_s_ready_out_reg : out STD_LOGIC;
    sig_next_sequential_reg_reg : out STD_LOGIC;
    sig_s2mm_ld_nxt_len0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 39 downto 0 );
    sig_inhibit_rdy_n_reg_1 : out STD_LOGIC;
    sig_next_calc_error_reg_reg : out STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_init_done_reg_0 : in STD_LOGIC;
    sig_first_dbeat_reg_0 : in STD_LOGIC;
    \sig_first_dbeat__0\ : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    sig_mstr2data_cmd_valid : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sig_dbeat_cntr_reg[5]\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[4]\ : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : in STD_LOGIC;
    sig_next_sequential_reg : in STD_LOGIC;
    sig_last_dbeat_reg : in STD_LOGIC;
    sig_dqual_reg_empty : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_0\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_1\ : in STD_LOGIC;
    sig_wdc_status_going_full : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_2\ : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_3\ : in STD_LOGIC;
    sig_addr_posted_cntr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_last_mmap_dbeat_reg : in STD_LOGIC;
    sig_halt_reg : in STD_LOGIC;
    \sig_dbeat_cntr[7]_i_3\ : in STD_LOGIC;
    \sig_dbeat_cntr[7]_i_3_0\ : in STD_LOGIC;
    sig_last_dbeat_reg_0 : in STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_next_calc_error_reg_reg_0 : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized4\ : entity is "axi_datamover_fifo";
end \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized4\;

architecture STRUCTURE of \design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized4\ is
  signal \sig_inhibit_rdy_n_i_1__1_n_0\ : STD_LOGIC;
  signal \^sig_inhibit_rdy_n_reg_0\ : STD_LOGIC;
  signal \^sig_init_done\ : STD_LOGIC;
begin
  sig_inhibit_rdy_n_reg_0 <= \^sig_inhibit_rdy_n_reg_0\;
  sig_init_done <= \^sig_init_done\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.\design_1_axi_datamover_0_0_srl_fifo_f__parameterized4\
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => E(0),
      FIFO_Full_reg => FIFO_Full_reg,
      \INFERRED_GEN.cnt_i_reg[0]\ => \INFERRED_GEN.cnt_i_reg[0]\,
      Q(0) => Q(0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(39 downto 0) => \out\(39 downto 0),
      s2mm_dbg_data(0) => s2mm_dbg_data(0),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      sel => sig_s2mm_ld_nxt_len0,
      sig_addr_posted_cntr(2 downto 0) => sig_addr_posted_cntr(2 downto 0),
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
      \sig_dbeat_cntr[7]_i_3\ => \sig_dbeat_cntr[7]_i_3\,
      \sig_dbeat_cntr[7]_i_3_0\ => \sig_dbeat_cntr[7]_i_3_0\,
      \sig_dbeat_cntr_reg[4]\ => \sig_dbeat_cntr_reg[4]\,
      \sig_dbeat_cntr_reg[5]\ => \sig_dbeat_cntr_reg[5]\,
      \sig_dbeat_cntr_reg[7]\(7 downto 0) => \sig_dbeat_cntr_reg[7]\(7 downto 0),
      \sig_dbeat_cntr_reg[7]_0\ => \sig_dbeat_cntr_reg[7]_0\,
      \sig_dbeat_cntr_reg[7]_1\ => \sig_dbeat_cntr_reg[7]_1\,
      \sig_dbeat_cntr_reg[7]_2\ => \sig_dbeat_cntr_reg[7]_2\,
      \sig_dbeat_cntr_reg[7]_3\ => \sig_dbeat_cntr_reg[7]_3\,
      sig_dqual_reg_empty => sig_dqual_reg_empty,
      \sig_first_dbeat__0\ => \sig_first_dbeat__0\,
      sig_first_dbeat_reg => sig_first_dbeat_reg,
      sig_first_dbeat_reg_0 => sig_first_dbeat_reg_0,
      sig_halt_reg => sig_halt_reg,
      sig_inhibit_rdy_n_reg => sig_inhibit_rdy_n_reg_1,
      sig_last_dbeat_reg => sig_last_dbeat_reg,
      sig_last_dbeat_reg_0 => sig_last_dbeat_reg_0,
      sig_last_mmap_dbeat_reg => sig_last_mmap_dbeat_reg,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_next_calc_error_reg_reg => sig_next_calc_error_reg_reg,
      sig_next_calc_error_reg_reg_0(47 downto 0) => sig_next_calc_error_reg_reg_0(47 downto 0),
      sig_next_sequential_reg => sig_next_sequential_reg,
      sig_next_sequential_reg_reg => sig_next_sequential_reg_reg,
      sig_s2mm_ld_nxt_len_reg => \^sig_inhibit_rdy_n_reg_0\,
      sig_s_ready_out_reg => sig_s_ready_out_reg,
      sig_stream_rst => sig_stream_rst,
      sig_wdc_status_going_full => sig_wdc_status_going_full,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
\sig_inhibit_rdy_n_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_init_done\,
      I1 => \^sig_inhibit_rdy_n_reg_0\,
      O => \sig_inhibit_rdy_n_i_1__1_n_0\
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_inhibit_rdy_n_i_1__1_n_0\,
      Q => \^sig_inhibit_rdy_n_reg_0\,
      R => sig_stream_rst
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_init_done_reg_0,
      Q => \^sig_init_done\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_axi_datamover_addr_cntl is
  port (
    s2mm_addr_req_posted : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    FIFO_Full_reg : out STD_LOGIC;
    sig_addr_reg_empty : out STD_LOGIC;
    sig_addr2wsc_calc_error : out STD_LOGIC;
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    sig_inhibit_rdy_n : out STD_LOGIC;
    sig_init_reg2_reg : out STD_LOGIC;
    sig_init_reg2_reg_0 : out STD_LOGIC;
    sig_init_reg2_reg_1 : out STD_LOGIC;
    sig_init_reg2_reg_2 : out STD_LOGIC;
    sig_init_reg2_reg_3 : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_mmap_reset_reg : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    sig_init_done : in STD_LOGIC;
    sig_init_done_0 : in STD_LOGIC;
    sig_init_done_1 : in STD_LOGIC;
    sig_init_done_2 : in STD_LOGIC;
    sig_init_done_3 : in STD_LOGIC;
    FIFO_Full_reg_0 : in STD_LOGIC;
    sig_mstr2addr_cmd_valid : in STD_LOGIC;
    s2mm_allow_addr_req : in STD_LOGIC;
    sig_halt_reg : in STD_LOGIC;
    sig_data2all_tlast_error : in STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 41 downto 0 )
  );
end design_1_axi_datamover_0_0_axi_datamover_addr_cntl;

architecture STRUCTURE of design_1_axi_datamover_0_0_axi_datamover_addr_cntl is
  signal \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_52\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^sig_addr2wsc_calc_error\ : STD_LOGIC;
  signal \^sig_addr_reg_empty\ : STD_LOGIC;
  signal sig_addr_reg_full : STD_LOGIC;
  signal sig_aq_fifo_data_out : STD_LOGIC_VECTOR ( 50 downto 4 );
  signal \sig_next_addr_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal sig_posted_to_axi : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_posted_to_axi : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_posted_to_axi : signal is "no";
  signal sig_posted_to_axi_2 : STD_LOGIC;
  attribute RTL_KEEP of sig_posted_to_axi_2 : signal is "true";
  attribute equivalent_register_removal of sig_posted_to_axi_2 : signal is "no";
  signal sig_push_addr_reg1_out : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of sig_posted_to_axi_2_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_2_reg : label is "no";
  attribute KEEP of sig_posted_to_axi_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_reg : label is "no";
begin
  \out\ <= sig_posted_to_axi;
  s2mm_addr_req_posted <= sig_posted_to_axi_2;
  sig_addr2wsc_calc_error <= \^sig_addr2wsc_calc_error\;
  sig_addr_reg_empty <= \^sig_addr_reg_empty\;
\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO\: entity work.\design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized3\
     port map (
      FIFO_Full_reg => FIFO_Full_reg,
      FIFO_Full_reg_0 => FIFO_Full_reg_0,
      \INFERRED_GEN.cnt_i_reg[2]\ => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_52\,
      \in\(41 downto 0) => \in\(41 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(42) => sig_aq_fifo_data_out(50),
      \out\(41 downto 40) => sig_aq_fifo_data_out(47 downto 46),
      \out\(39 downto 0) => sig_aq_fifo_data_out(43 downto 4),
      p_0_in => p_0_in,
      s2mm_allow_addr_req => s2mm_allow_addr_req,
      sig_addr_reg_empty => \^sig_addr_reg_empty\,
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_data2all_tlast_error => sig_data2all_tlast_error,
      sig_halt_reg => sig_halt_reg,
      sig_inhibit_rdy_n_reg_0 => sig_inhibit_rdy_n,
      sig_init_done => sig_init_done,
      sig_init_done_0 => sig_init_done_0,
      sig_init_done_1 => sig_init_done_1,
      sig_init_done_2 => sig_init_done_2,
      sig_init_done_3 => sig_init_done_3,
      sig_init_reg2_reg_0 => sig_init_reg2_reg,
      sig_init_reg2_reg_1 => sig_init_reg2_reg_0,
      sig_init_reg2_reg_2 => sig_init_reg2_reg_1,
      sig_init_reg2_reg_3 => sig_init_reg2_reg_2,
      sig_init_reg2_reg_4 => sig_init_reg2_reg_3,
      sig_mmap_reset_reg => sig_mmap_reset_reg,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out,
      sig_stream_rst => sig_stream_rst
    );
sig_addr_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => '0',
      Q => \^sig_addr_reg_empty\,
      S => \sig_next_addr_reg[31]_i_1_n_0\
    );
sig_addr_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_push_addr_reg1_out,
      Q => sig_addr_reg_full,
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
sig_addr_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => p_0_in,
      Q => m_axi_s2mm_awvalid,
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(50),
      Q => \^sig_addr2wsc_calc_error\,
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => \^sig_addr2wsc_calc_error\,
      I1 => m_axi_s2mm_awready,
      I2 => sig_addr_reg_full,
      I3 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      O => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(4),
      Q => m_axi_s2mm_awaddr(0),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(14),
      Q => m_axi_s2mm_awaddr(10),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(15),
      Q => m_axi_s2mm_awaddr(11),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(16),
      Q => m_axi_s2mm_awaddr(12),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(17),
      Q => m_axi_s2mm_awaddr(13),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(18),
      Q => m_axi_s2mm_awaddr(14),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(19),
      Q => m_axi_s2mm_awaddr(15),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(20),
      Q => m_axi_s2mm_awaddr(16),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(21),
      Q => m_axi_s2mm_awaddr(17),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(22),
      Q => m_axi_s2mm_awaddr(18),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(23),
      Q => m_axi_s2mm_awaddr(19),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(5),
      Q => m_axi_s2mm_awaddr(1),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(24),
      Q => m_axi_s2mm_awaddr(20),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(25),
      Q => m_axi_s2mm_awaddr(21),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(26),
      Q => m_axi_s2mm_awaddr(22),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(27),
      Q => m_axi_s2mm_awaddr(23),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(28),
      Q => m_axi_s2mm_awaddr(24),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(29),
      Q => m_axi_s2mm_awaddr(25),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(30),
      Q => m_axi_s2mm_awaddr(26),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(31),
      Q => m_axi_s2mm_awaddr(27),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(32),
      Q => m_axi_s2mm_awaddr(28),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(33),
      Q => m_axi_s2mm_awaddr(29),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(6),
      Q => m_axi_s2mm_awaddr(2),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(34),
      Q => m_axi_s2mm_awaddr(30),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(35),
      Q => m_axi_s2mm_awaddr(31),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(7),
      Q => m_axi_s2mm_awaddr(3),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(8),
      Q => m_axi_s2mm_awaddr(4),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(9),
      Q => m_axi_s2mm_awaddr(5),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(10),
      Q => m_axi_s2mm_awaddr(6),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(11),
      Q => m_axi_s2mm_awaddr(7),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(12),
      Q => m_axi_s2mm_awaddr(8),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_addr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(13),
      Q => m_axi_s2mm_awaddr(9),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_burst_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(47),
      Q => m_axi_s2mm_awburst(0),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_len_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(36),
      Q => m_axi_s2mm_awlen(0),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_len_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(37),
      Q => m_axi_s2mm_awlen(1),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_len_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(38),
      Q => m_axi_s2mm_awlen(2),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_len_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(39),
      Q => m_axi_s2mm_awlen(3),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_len_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(40),
      Q => m_axi_s2mm_awlen(4),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_len_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(41),
      Q => m_axi_s2mm_awlen(5),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_len_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(42),
      Q => m_axi_s2mm_awlen(6),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_len_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(43),
      Q => m_axi_s2mm_awlen(7),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
\sig_next_size_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_aq_fifo_data_out(46),
      Q => m_axi_s2mm_awsize(0),
      R => \sig_next_addr_reg[31]_i_1_n_0\
    );
sig_posted_to_axi_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_52\,
      Q => sig_posted_to_axi_2,
      R => '0'
    );
sig_posted_to_axi_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_52\,
      Q => sig_posted_to_axi,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_axi_datamover_cmd_status is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_init_done : out STD_LOGIC;
    sig_init_done_0 : out STD_LOGIC;
    sig_inhibit_rdy_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_cmd_tready : out STD_LOGIC;
    sig_inhibit_rdy_n_reg : out STD_LOGIC;
    m_axis_s2mm_sts_tvalid : out STD_LOGIC;
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC_VECTOR ( 53 downto 0 );
    m_axis_s2mm_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_init_done_reg : in STD_LOGIC;
    sig_init_done_reg_0 : in STD_LOGIC;
    FIFO_Full_reg_0 : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[1]\ : in STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    sig_calc_error_pushed : in STD_LOGIC;
    sig_input_reg_empty : in STD_LOGIC;
    sig_sm_halt_reg : in STD_LOGIC;
    m_axis_s2mm_sts_tready : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    s_axis_s2mm_cmd_tdata : in STD_LOGIC_VECTOR ( 53 downto 0 );
    \in\ : in STD_LOGIC_VECTOR ( 0 to 7 )
  );
end design_1_axi_datamover_0_0_axi_datamover_cmd_status;

architecture STRUCTURE of design_1_axi_datamover_0_0_axi_datamover_cmd_status is
begin
\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO\: entity work.\design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized0\
     port map (
      FIFO_Full_reg => FIFO_Full_reg,
      SR(0) => SR(0),
      \in\(0 to 7) => \in\(0 to 7),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axis_s2mm_sts_tdata(7 downto 0) => m_axis_s2mm_sts_tdata(7 downto 0),
      m_axis_s2mm_sts_tready => m_axis_s2mm_sts_tready,
      m_axis_s2mm_sts_tvalid => m_axis_s2mm_sts_tvalid,
      s2mm_dbg_data(1 downto 0) => s2mm_dbg_data(2 downto 1),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_inhibit_rdy_n_reg_0 => sig_inhibit_rdy_n,
      sig_inhibit_rdy_n_reg_1 => sig_inhibit_rdy_n_reg,
      sig_init_done_0 => sig_init_done_0,
      sig_init_done_reg_0 => sig_init_done_reg_0,
      sig_stream_rst => sig_stream_rst,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
I_CMD_FIFO: entity work.design_1_axi_datamover_0_0_axi_datamover_fifo
     port map (
      FIFO_Full_reg => FIFO_Full_reg_0,
      \INFERRED_GEN.cnt_i_reg[1]\ => \INFERRED_GEN.cnt_i_reg[1]\,
      Q(0) => Q(0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(53 downto 0) => \out\(53 downto 0),
      s2mm_dbg_data(0) => s2mm_dbg_data(0),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      s_axis_s2mm_cmd_tdata(53 downto 0) => s_axis_s2mm_cmd_tdata(53 downto 0),
      s_axis_s2mm_cmd_tready => s_axis_s2mm_cmd_tready,
      s_axis_s2mm_cmd_tvalid => s_axis_s2mm_cmd_tvalid,
      sig_calc_error_pushed => sig_calc_error_pushed,
      sig_init_done => sig_init_done,
      sig_init_done_reg_0 => sig_init_done_reg,
      sig_input_reg_empty => sig_input_reg_empty,
      sig_sm_halt_reg => sig_sm_halt_reg,
      sig_stream_rst => sig_stream_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_axi_datamover_wr_status_cntl is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_wsc2stat_status_valid : out STD_LOGIC;
    \in\ : out STD_LOGIC_VECTOR ( 0 to 7 );
    sig_wdc_status_going_full : out STD_LOGIC;
    sig_halt_reg : out STD_LOGIC;
    sig_halt_reg_dly2 : out STD_LOGIC;
    sig_halt_reg_dly3 : out STD_LOGIC;
    sig_init_done : out STD_LOGIC;
    sig_init_done_0 : out STD_LOGIC;
    sig_inhibit_rdy_n : out STD_LOGIC;
    sig_wdc_status_going_full_reg_0 : out STD_LOGIC;
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sig_halt_reg_dly3_reg_0 : out STD_LOGIC;
    sig_halt_reg_dly3_reg_1 : out STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_init_done_reg : in STD_LOGIC;
    sig_init_done_reg_0 : in STD_LOGIC;
    sig_halt_reg_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_next_calc_error_reg : in STD_LOGIC;
    sig_inhibit_rdy_n_1 : in STD_LOGIC;
    \INFERRED_GEN.cnt_i[2]_i_2\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_s2mm_bvalid : in STD_LOGIC;
    \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg_0\ : in STD_LOGIC;
    sig_tlast_err_stop : in STD_LOGIC;
    sig_push_to_wsc : in STD_LOGIC;
    sig_addr2wsc_calc_error : in STD_LOGIC;
    sig_addr_reg_empty : in STD_LOGIC;
    sig_data2all_tlast_error : in STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_halt_cmplt_reg : in STD_LOGIC;
    s2mm_halt_cmplt : in STD_LOGIC;
    sig_stop_request : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 6 )
  );
end design_1_axi_datamover_0_0_axi_datamover_wr_status_cntl;

architecture STRUCTURE of design_1_axi_datamover_0_0_axi_datamover_wr_status_cntl is
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_11\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_12\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_13\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_14\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_15\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_17\ : STD_LOGIC;
  signal I_WRESP_STATUS_FIFO_n_1 : STD_LOGIC;
  signal I_WRESP_STATUS_FIFO_n_2 : STD_LOGIC;
  signal I_WRESP_STATUS_FIFO_n_3 : STD_LOGIC;
  signal I_WRESP_STATUS_FIFO_n_4 : STD_LOGIC;
  signal I_WRESP_STATUS_FIFO_n_7 : STD_LOGIC;
  signal I_WRESP_STATUS_FIFO_n_9 : STD_LOGIC;
  signal \^in\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal p_0_in : STD_LOGIC;
  signal \sig_addr_posted_cntr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal sig_addr_posted_cntr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_coelsc_interr_reg0 : STD_LOGIC;
  signal sig_coelsc_reg_empty : STD_LOGIC;
  signal sig_dcntl_sfifo_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sig_halt_cmplt_i_3_n_0 : STD_LOGIC;
  signal sig_halt_cmplt_i_4_n_0 : STD_LOGIC;
  signal sig_halt_cmplt_i_6_n_0 : STD_LOGIC;
  signal \^sig_halt_reg\ : STD_LOGIC;
  signal sig_halt_reg_dly1 : STD_LOGIC;
  signal \^sig_halt_reg_dly2\ : STD_LOGIC;
  signal \^sig_halt_reg_dly3\ : STD_LOGIC;
  signal sig_push_coelsc_reg : STD_LOGIC;
  signal sig_rd_empty : STD_LOGIC;
  signal sig_statcnt_gt_eq_thres : STD_LOGIC;
  signal \sig_wdc_statcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal sig_wdc_statcnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^sig_wdc_status_going_full\ : STD_LOGIC;
  signal sig_wresp_sfifo_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^sig_wsc2stat_status_valid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s2mm_dbg_data[13]_INST_0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[14]_INST_0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[15]_INST_0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[16]_INST_0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[17]_INST_0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[18]_INST_0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[21]_INST_0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[7]_INST_0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \sig_addr_posted_cntr[0]_i_1__0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of sig_halt_cmplt_i_3 : label is "soft_lutpair96";
begin
  \in\(0 to 7) <= \^in\(0 to 7);
  sig_halt_reg <= \^sig_halt_reg\;
  sig_halt_reg_dly2 <= \^sig_halt_reg_dly2\;
  sig_halt_reg_dly3 <= \^sig_halt_reg_dly3\;
  sig_wdc_status_going_full <= \^sig_wdc_status_going_full\;
  sig_wsc2stat_status_valid <= \^sig_wsc2stat_status_valid\;
\GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO\: entity work.\design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized2\
     port map (
      D(2) => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_12\,
      D(1) => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_13\,
      D(0) => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_14\,
      E(0) => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_11\,
      FIFO_Full_reg => FIFO_Full_reg,
      \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg\ => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_17\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg_0\ => \^in\(3),
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\(0) => sig_rd_empty,
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_0\ => \^in\(1),
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_1\(0) => sig_wresp_sfifo_out(1),
      \GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg_2\ => \^in\(2),
      \GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\ => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_15\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\ => \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg_0\,
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\(0 to 6) => \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(0 to 6),
      Q(3 downto 0) => sig_wdc_statcnt_reg(3 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(5 downto 1) => sig_dcntl_sfifo_out(6 downto 2),
      \out\(0) => sig_dcntl_sfifo_out(0),
      p_0_in => p_0_in,
      sig_coelsc_interr_reg0 => sig_coelsc_interr_reg0,
      sig_coelsc_reg_empty => sig_coelsc_reg_empty,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n,
      sig_init_done_0 => sig_init_done_0,
      sig_init_done_reg_0 => sig_init_done_reg_0,
      sig_push_coelsc_reg => sig_push_coelsc_reg,
      sig_push_to_wsc => sig_push_to_wsc,
      sig_stream_rst => sig_stream_rst,
      sig_tlast_err_stop => sig_tlast_err_stop
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => I_WRESP_STATUS_FIFO_n_7,
      Q => \^in\(2),
      R => SR(0)
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_interr_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_interr_reg0,
      Q => \^in\(3),
      R => SR(0)
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_okay_reg_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_17\,
      Q => \^in\(0),
      S => SR(0)
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_reg_empty_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => p_0_in,
      Q => sig_coelsc_reg_empty,
      S => SR(0)
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_dcntl_sfifo_out(0),
      Q => \^sig_wsc2stat_status_valid\,
      R => SR(0)
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => I_WRESP_STATUS_FIFO_n_9,
      Q => \^in\(1),
      R => SR(0)
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_dcntl_sfifo_out(3),
      Q => \^in\(7),
      R => SR(0)
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_dcntl_sfifo_out(4),
      Q => \^in\(6),
      R => SR(0)
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_dcntl_sfifo_out(5),
      Q => \^in\(5),
      R => SR(0)
    );
\GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_dcntl_sfifo_out(6),
      Q => \^in\(4),
      R => SR(0)
    );
\INFERRED_GEN.cnt_i[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFEFEFEFE"
    )
        port map (
      I0 => \^sig_wdc_status_going_full\,
      I1 => Q(0),
      I2 => sig_next_calc_error_reg,
      I3 => sig_inhibit_rdy_n_1,
      I4 => \INFERRED_GEN.cnt_i[2]_i_2\,
      I5 => \^sig_wsc2stat_status_valid\,
      O => sig_wdc_status_going_full_reg_0
    );
I_WRESP_STATUS_FIFO: entity work.\design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized1\
     port map (
      D(2) => I_WRESP_STATUS_FIFO_n_2,
      D(1) => I_WRESP_STATUS_FIFO_n_3,
      D(0) => I_WRESP_STATUS_FIFO_n_4,
      E(0) => I_WRESP_STATUS_FIFO_n_1,
      \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg\ => I_WRESP_STATUS_FIFO_n_7,
      \GEN_OMIT_INDET_BTT.sig_coelsc_decerr_reg_reg_0\ => \^in\(2),
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg\ => I_WRESP_STATUS_FIFO_n_9,
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_0\(0) => sig_dcntl_sfifo_out(2),
      \GEN_OMIT_INDET_BTT.sig_coelsc_slverr_reg_reg_1\ => \^in\(1),
      \INFERRED_GEN.cnt_i_reg[1]\ => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_15\,
      \INFERRED_GEN.cnt_i_reg[3]\(0) => sig_rd_empty,
      Q(3 downto 0) => sig_addr_posted_cntr_reg(3 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_bready => m_axi_s2mm_bready,
      m_axi_s2mm_bready_0 => \^sig_halt_reg\,
      m_axi_s2mm_bresp(1 downto 0) => m_axi_s2mm_bresp(1 downto 0),
      \m_axi_s2mm_bresp[1]\(0) => sig_wresp_sfifo_out(1),
      m_axi_s2mm_bvalid => m_axi_s2mm_bvalid,
      \out\ => \out\,
      sig_init_done => sig_init_done,
      sig_init_done_reg_0 => sig_init_done_reg,
      sig_push_coelsc_reg => sig_push_coelsc_reg,
      sig_stream_rst => sig_stream_rst
    );
\s2mm_dbg_data[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^in\(7),
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(1)
    );
\s2mm_dbg_data[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s2mm_dbg_sel(0),
      I1 => \^in\(6),
      O => s2mm_dbg_data(2)
    );
\s2mm_dbg_data[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s2mm_dbg_sel(0),
      I1 => \^in\(5),
      O => s2mm_dbg_data(3)
    );
\s2mm_dbg_data[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s2mm_dbg_sel(0),
      I1 => \^in\(4),
      O => s2mm_dbg_data(4)
    );
\s2mm_dbg_data[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^in\(3),
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(5)
    );
\s2mm_dbg_data[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^in\(2),
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(6)
    );
\s2mm_dbg_data[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^in\(1),
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(7)
    );
\s2mm_dbg_data[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^sig_wsc2stat_status_valid\,
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(8)
    );
\s2mm_dbg_data[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sig_wsc2stat_status_valid\,
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(0)
    );
\sig_addr_posted_cntr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_addr_posted_cntr_reg(0),
      O => \sig_addr_posted_cntr[0]_i_1__0_n_0\
    );
\sig_addr_posted_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => I_WRESP_STATUS_FIFO_n_1,
      D => \sig_addr_posted_cntr[0]_i_1__0_n_0\,
      Q => sig_addr_posted_cntr_reg(0),
      R => sig_stream_rst
    );
\sig_addr_posted_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => I_WRESP_STATUS_FIFO_n_1,
      D => I_WRESP_STATUS_FIFO_n_4,
      Q => sig_addr_posted_cntr_reg(1),
      R => sig_stream_rst
    );
\sig_addr_posted_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => I_WRESP_STATUS_FIFO_n_1,
      D => I_WRESP_STATUS_FIFO_n_3,
      Q => sig_addr_posted_cntr_reg(2),
      R => sig_stream_rst
    );
\sig_addr_posted_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => I_WRESP_STATUS_FIFO_n_1,
      D => I_WRESP_STATUS_FIFO_n_2,
      Q => sig_addr_posted_cntr_reg(3),
      R => sig_stream_rst
    );
sig_halt_cmplt_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => sig_halt_cmplt_i_3_n_0,
      I1 => \^sig_halt_reg_dly3\,
      I2 => sig_halt_cmplt_i_4_n_0,
      I3 => sig_halt_cmplt_reg,
      I4 => sig_halt_cmplt_i_6_n_0,
      I5 => s2mm_halt_cmplt,
      O => sig_halt_reg_dly3_reg_0
    );
sig_halt_cmplt_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => sig_addr2wsc_calc_error,
      I1 => sig_addr_posted_cntr_reg(1),
      I2 => sig_addr_posted_cntr_reg(0),
      I3 => sig_addr_posted_cntr_reg(3),
      I4 => sig_addr_posted_cntr_reg(2),
      O => sig_halt_cmplt_i_3_n_0
    );
sig_halt_cmplt_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_halt_reg\,
      I1 => sig_data2all_tlast_error,
      O => sig_halt_cmplt_i_4_n_0
    );
sig_halt_cmplt_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => sig_addr2wsc_calc_error,
      I1 => sig_addr_posted_cntr_reg(1),
      I2 => sig_addr_posted_cntr_reg(0),
      I3 => sig_addr_posted_cntr_reg(2),
      I4 => sig_addr_posted_cntr_reg(3),
      I5 => sig_addr_reg_empty,
      O => sig_halt_cmplt_i_6_n_0
    );
sig_halt_reg_dly1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \^sig_halt_reg\,
      Q => sig_halt_reg_dly1,
      R => sig_stream_rst
    );
sig_halt_reg_dly2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_halt_reg_dly1,
      Q => \^sig_halt_reg_dly2\,
      R => sig_stream_rst
    );
sig_halt_reg_dly3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \^sig_halt_reg_dly2\,
      Q => \^sig_halt_reg_dly3\,
      R => sig_stream_rst
    );
sig_halt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_halt_reg_reg_0,
      Q => \^sig_halt_reg\,
      R => sig_stream_rst
    );
sig_sready_stop_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^sig_halt_reg_dly3\,
      I1 => \^sig_halt_reg_dly2\,
      I2 => sig_stop_request,
      O => sig_halt_reg_dly3_reg_1
    );
\sig_wdc_statcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_wdc_statcnt_reg(0),
      O => \sig_wdc_statcnt[0]_i_1_n_0\
    );
\sig_wdc_statcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_11\,
      D => \sig_wdc_statcnt[0]_i_1_n_0\,
      Q => sig_wdc_statcnt_reg(0),
      R => sig_stream_rst
    );
\sig_wdc_statcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_11\,
      D => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_14\,
      Q => sig_wdc_statcnt_reg(1),
      R => sig_stream_rst
    );
\sig_wdc_statcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_11\,
      D => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_13\,
      Q => sig_wdc_statcnt_reg(2),
      R => sig_stream_rst
    );
\sig_wdc_statcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_11\,
      D => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO_n_12\,
      Q => sig_wdc_statcnt_reg(3),
      R => sig_stream_rst
    );
sig_wdc_status_going_full_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_wdc_statcnt_reg(2),
      I1 => sig_wdc_statcnt_reg(3),
      O => sig_statcnt_gt_eq_thres
    );
sig_wdc_status_going_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_statcnt_gt_eq_thres,
      Q => \^sig_wdc_status_going_full\,
      R => sig_stream_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_axi_datamover_wrdata_cntl is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    sig_next_calc_error_reg : out STD_LOGIC;
    s2mm_wr_xfer_cmplt : out STD_LOGIC;
    s2mm_ld_nxt_len : out STD_LOGIC;
    sig_push_to_wsc : out STD_LOGIC;
    \in\ : out STD_LOGIC_VECTOR ( 0 to 6 );
    sig_init_done : out STD_LOGIC;
    sig_inhibit_rdy_n : out STD_LOGIC;
    sig_data2all_tlast_error : out STD_LOGIC;
    sig_tlast_err_stop : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_inhibit_rdy_n_reg : out STD_LOGIC;
    sig_next_calc_error_reg_reg_0 : out STD_LOGIC;
    sig_m_valid_out_reg : out STD_LOGIC;
    sig_halt_reg_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0\ : out STD_LOGIC;
    sig_last_skid_mux_out : out STD_LOGIC;
    sig_data2skid_wlast : out STD_LOGIC;
    \sig_next_strt_strb_reg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \sig_next_strt_strb_reg_reg[15]_1\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg_0\ : out STD_LOGIC;
    s2mm_wr_len : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_stream_rst : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    sig_init_done_reg : in STD_LOGIC;
    sig_cmd_stat_rst_user_reg_n_cdc_from : in STD_LOGIC;
    sig_mstr2data_cmd_valid : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : in STD_LOGIC;
    sig_wsc2stat_status_valid : in STD_LOGIC;
    \sig_dbeat_cntr_reg[7]_0\ : in STD_LOGIC;
    sig_wdc_status_going_full : in STD_LOGIC;
    sig_dre2ibtt_tlast : in STD_LOGIC;
    sig_halt_reg : in STD_LOGIC;
    \sig_data_reg_out_reg[127]\ : in STD_LOGIC;
    sig_wr_xfer_cmplt_reg_0 : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \sig_addr_posted_cntr_reg[2]_0\ : in STD_LOGIC;
    sig_addr_reg_empty : in STD_LOGIC;
    s2mm_allow_addr_req : in STD_LOGIC;
    sig_last_reg_out_reg : in STD_LOGIC;
    sig_last_skid_reg : in STD_LOGIC;
    \sig_end_stbs_match_err2_carry__0_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \sig_strb_reg_out_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_inhibit_rdy_n_0 : in STD_LOGIC;
    sig_push_to_wsc_reg_0 : in STD_LOGIC;
    sig_next_calc_error_reg_reg_1 : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
end design_1_axi_datamover_0_0_axi_datamover_wrdata_cntl;

architecture STRUCTURE of design_1_axi_datamover_0_0_axi_datamover_wrdata_cntl is
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_58\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_59\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1_n_0\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1_n_0\ : STD_LOGIC;
  signal \^in\ : STD_LOGIC_VECTOR ( 0 to 6 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_addr_posted_cntr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sig_addr_posted_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[2]_i_1_n_0\ : STD_LOGIC;
  signal sig_cmd_fifo_data_out : STD_LOGIC_VECTOR ( 52 downto 0 );
  signal \^sig_data2all_tlast_error\ : STD_LOGIC;
  signal sig_data2wsc_cmd_cmplt0 : STD_LOGIC;
  signal sig_data2wsc_last_err0 : STD_LOGIC;
  signal \sig_data_reg_out[127]_i_3_n_0\ : STD_LOGIC;
  signal sig_dbeat_cntr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sig_dbeat_cntr[4]_i_2_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_5_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_7_n_0\ : STD_LOGIC;
  signal sig_dqual_reg_empty : STD_LOGIC;
  signal sig_dqual_reg_full : STD_LOGIC;
  signal sig_end_stbs_match_err2 : STD_LOGIC;
  signal \sig_end_stbs_match_err2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sig_end_stbs_match_err2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sig_end_stbs_match_err2_carry__0_n_3\ : STD_LOGIC;
  signal sig_end_stbs_match_err2_carry_i_1_n_0 : STD_LOGIC;
  signal sig_end_stbs_match_err2_carry_i_2_n_0 : STD_LOGIC;
  signal sig_end_stbs_match_err2_carry_i_3_n_0 : STD_LOGIC;
  signal sig_end_stbs_match_err2_carry_i_4_n_0 : STD_LOGIC;
  signal sig_end_stbs_match_err2_carry_n_0 : STD_LOGIC;
  signal sig_end_stbs_match_err2_carry_n_1 : STD_LOGIC;
  signal sig_end_stbs_match_err2_carry_n_2 : STD_LOGIC;
  signal sig_end_stbs_match_err2_carry_n_3 : STD_LOGIC;
  signal \sig_first_dbeat__0\ : STD_LOGIC;
  signal \^sig_halt_reg_reg\ : STD_LOGIC;
  signal sig_last_dbeat_i_3_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_5_n_0 : STD_LOGIC;
  signal sig_last_dbeat_reg_n_0 : STD_LOGIC;
  signal sig_last_mmap_dbeat : STD_LOGIC;
  signal sig_last_mmap_dbeat_reg : STD_LOGIC;
  signal sig_ld_new_cmd_reg : STD_LOGIC;
  signal sig_ld_new_cmd_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_next_calc_error_reg\ : STD_LOGIC;
  signal sig_next_calc_error_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_next_calc_error_reg_reg_0\ : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg : STD_LOGIC;
  signal sig_next_eof_reg : STD_LOGIC;
  signal sig_next_last_strb_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_next_sequential_reg : STD_LOGIC;
  signal sig_next_strt_strb_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_next_tag_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_push_dqual_reg : STD_LOGIC;
  signal sig_push_err2wsc : STD_LOGIC;
  signal sig_push_err2wsc_i_1_n_0 : STD_LOGIC;
  signal \^sig_push_to_wsc\ : STD_LOGIC;
  signal sig_push_to_wsc_i_1_n_0 : STD_LOGIC;
  signal sig_push_to_wsc_i_2_n_0 : STD_LOGIC;
  signal sig_s2mm_ld_nxt_len0 : STD_LOGIC;
  signal \^sig_tlast_err_stop\ : STD_LOGIC;
  signal sig_tlast_error : STD_LOGIC;
  signal sig_wr_xfer_cmplt0 : STD_LOGIC;
  signal sig_wr_xfer_cmplt_i_2_n_0 : STD_LOGIC;
  signal NLW_sig_end_stbs_match_err2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sig_end_stbs_match_err2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sig_end_stbs_match_err2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[2]_i_2__0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[5][6]_srl6_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[10]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[11]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[8]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \s2mm_dbg_data[9]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \sig_addr_posted_cntr[1]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \sig_addr_posted_cntr[2]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of sig_data2wsc_last_err_i_1 : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \sig_data_reg_out[127]_i_1__0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[4]_i_2\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[7]_i_5\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of sig_last_mmap_dbeat_reg_i_1 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \sig_last_reg_out_i_1__1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \sig_last_skid_reg_i_1__0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of sig_ld_new_cmd_reg_i_1 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of sig_push_err2wsc_i_1 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of sig_wr_xfer_cmplt_i_1 : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of sig_wr_xfer_cmplt_i_3 : label is "soft_lutpair84";
begin
  \in\(0 to 6) <= \^in\(0 to 6);
  sig_data2all_tlast_error <= \^sig_data2all_tlast_error\;
  sig_halt_reg_reg <= \^sig_halt_reg_reg\;
  sig_next_calc_error_reg <= \^sig_next_calc_error_reg\;
  sig_next_calc_error_reg_reg_0 <= \^sig_next_calc_error_reg_reg_0\;
  sig_push_to_wsc <= \^sig_push_to_wsc\;
  sig_tlast_err_stop <= \^sig_tlast_err_stop\;
\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO\: entity work.\design_1_axi_datamover_0_0_axi_datamover_fifo__parameterized4\
     port map (
      D(7 downto 0) => p_1_in(7 downto 0),
      E(0) => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_59\,
      FIFO_Full_reg => FIFO_Full_reg,
      \INFERRED_GEN.cnt_i_reg[0]\ => \INFERRED_GEN.cnt_i_reg[0]\,
      Q(0) => Q(0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(39 downto 36) => sig_cmd_fifo_data_out(52 downto 49),
      \out\(35 downto 4) => sig_cmd_fifo_data_out(47 downto 16),
      \out\(3 downto 0) => sig_cmd_fifo_data_out(3 downto 0),
      s2mm_dbg_data(0) => s2mm_dbg_data(4),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      sig_addr_posted_cntr(2 downto 0) => sig_addr_posted_cntr(2 downto 0),
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_58\,
      \sig_dbeat_cntr[7]_i_3\ => \^sig_data2all_tlast_error\,
      \sig_dbeat_cntr[7]_i_3_0\ => sig_wr_xfer_cmplt_reg_0,
      \sig_dbeat_cntr_reg[4]\ => \sig_dbeat_cntr[4]_i_2_n_0\,
      \sig_dbeat_cntr_reg[5]\ => \sig_dbeat_cntr[7]_i_5_n_0\,
      \sig_dbeat_cntr_reg[7]\(7 downto 0) => sig_dbeat_cntr(7 downto 0),
      \sig_dbeat_cntr_reg[7]_0\ => \sig_dbeat_cntr_reg[7]_0\,
      \sig_dbeat_cntr_reg[7]_1\ => \^sig_next_calc_error_reg\,
      \sig_dbeat_cntr_reg[7]_2\ => \sig_data_reg_out_reg[127]\,
      \sig_dbeat_cntr_reg[7]_3\ => \sig_dbeat_cntr[7]_i_7_n_0\,
      sig_dqual_reg_empty => sig_dqual_reg_empty,
      \sig_first_dbeat__0\ => \sig_first_dbeat__0\,
      sig_first_dbeat_reg => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3\,
      sig_first_dbeat_reg_0 => sig_wr_xfer_cmplt_i_2_n_0,
      sig_halt_reg => sig_halt_reg,
      sig_inhibit_rdy_n_reg_0 => sig_inhibit_rdy_n,
      sig_inhibit_rdy_n_reg_1 => sig_inhibit_rdy_n_reg,
      sig_init_done => sig_init_done,
      sig_init_done_reg_0 => sig_init_done_reg,
      sig_last_dbeat_reg => sig_last_dbeat_reg_n_0,
      sig_last_dbeat_reg_0 => sig_last_dbeat_i_3_n_0,
      sig_last_mmap_dbeat_reg => sig_last_mmap_dbeat_reg,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_next_calc_error_reg_reg => \^sig_next_calc_error_reg_reg_0\,
      sig_next_calc_error_reg_reg_0(47 downto 0) => sig_next_calc_error_reg_reg_1(47 downto 0),
      sig_next_sequential_reg => sig_next_sequential_reg,
      sig_next_sequential_reg_reg => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5\,
      sig_s2mm_ld_nxt_len0 => sig_s2mm_ld_nxt_len0,
      sig_s_ready_out_reg => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4\,
      sig_stream_rst => sig_stream_rst,
      sig_wdc_status_going_full => sig_wdc_status_going_full,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
\GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => sig_inhibit_rdy_n_0,
      I1 => sig_push_to_wsc_reg_0,
      I2 => \^sig_push_to_wsc\,
      I3 => \^sig_data2all_tlast_error\,
      I4 => \^sig_tlast_err_stop\,
      O => \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1_n_0\
    );
\GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_i_1_n_0\,
      Q => \^sig_tlast_err_stop\,
      R => sig_stream_rst
    );
\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_tlast_error,
      I1 => \^sig_data2all_tlast_error\,
      O => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1_n_0\
    );
\GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_i_1_n_0\,
      Q => \^sig_data2all_tlast_error\,
      R => sig_stream_rst
    );
\INFERRED_GEN.cnt_i[2]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^sig_data2all_tlast_error\,
      I1 => sig_halt_reg,
      I2 => sig_addr_reg_empty,
      I3 => s2mm_allow_addr_req,
      O => \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0\
    );
\INFERRED_GEN.data_reg[5][6]_srl6_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^sig_tlast_err_stop\,
      I1 => \^sig_push_to_wsc\,
      I2 => sig_push_to_wsc_reg_0,
      I3 => sig_inhibit_rdy_n_0,
      O => \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg_0\
    );
\s2mm_dbg_data[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s2mm_dbg_sel(0),
      I1 => \^in\(1),
      O => s2mm_dbg_data(2)
    );
\s2mm_dbg_data[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s2mm_dbg_sel(0),
      I1 => \^in\(0),
      O => s2mm_dbg_data(3)
    );
\s2mm_dbg_data[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^in\(3),
      I1 => s2mm_dbg_sel(0),
      O => s2mm_dbg_data(0)
    );
\s2mm_dbg_data[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s2mm_dbg_sel(0),
      I1 => \^in\(2),
      O => s2mm_dbg_data(1)
    );
\sig_addr_posted_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F80F0FE0"
    )
        port map (
      I0 => sig_addr_posted_cntr(1),
      I1 => sig_addr_posted_cntr(2),
      I2 => sig_last_mmap_dbeat_reg,
      I3 => \sig_addr_posted_cntr_reg[2]_0\,
      I4 => sig_addr_posted_cntr(0),
      O => \sig_addr_posted_cntr[0]_i_1_n_0\
    );
\sig_addr_posted_cntr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBDB2420"
    )
        port map (
      I0 => \sig_addr_posted_cntr_reg[2]_0\,
      I1 => sig_last_mmap_dbeat_reg,
      I2 => sig_addr_posted_cntr(0),
      I3 => sig_addr_posted_cntr(2),
      I4 => sig_addr_posted_cntr(1),
      O => \sig_addr_posted_cntr[1]_i_1_n_0\
    );
\sig_addr_posted_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF20FB00"
    )
        port map (
      I0 => \sig_addr_posted_cntr_reg[2]_0\,
      I1 => sig_last_mmap_dbeat_reg,
      I2 => sig_addr_posted_cntr(0),
      I3 => sig_addr_posted_cntr(2),
      I4 => sig_addr_posted_cntr(1),
      O => \sig_addr_posted_cntr[2]_i_1_n_0\
    );
\sig_addr_posted_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[0]_i_1_n_0\,
      Q => sig_addr_posted_cntr(0),
      R => sig_stream_rst
    );
\sig_addr_posted_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[1]_i_1_n_0\,
      Q => sig_addr_posted_cntr(1),
      R => sig_stream_rst
    );
\sig_addr_posted_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[2]_i_1_n_0\,
      Q => sig_addr_posted_cntr(2),
      R => sig_stream_rst
    );
sig_data2wsc_calc_err_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => \^sig_next_calc_error_reg\,
      Q => \^in\(4),
      R => sig_push_to_wsc_i_1_n_0
    );
sig_data2wsc_cmd_cmplt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sig_next_cmd_cmplt_reg,
      I1 => sig_tlast_error,
      I2 => \^sig_data2all_tlast_error\,
      O => sig_data2wsc_cmd_cmplt0
    );
sig_data2wsc_cmd_cmplt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_data2wsc_cmd_cmplt0,
      Q => \^in\(6),
      R => sig_push_to_wsc_i_1_n_0
    );
sig_data2wsc_last_err_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_data2all_tlast_error\,
      I1 => sig_tlast_error,
      O => sig_data2wsc_last_err0
    );
sig_data2wsc_last_err_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA8A2020"
    )
        port map (
      I0 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4\,
      I1 => sig_wr_xfer_cmplt_i_2_n_0,
      I2 => sig_next_eof_reg,
      I3 => sig_end_stbs_match_err2,
      I4 => sig_dre2ibtt_tlast,
      I5 => sig_halt_reg,
      O => sig_tlast_error
    );
sig_data2wsc_last_err_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_data2wsc_last_err0,
      Q => \^in\(5),
      R => sig_push_to_wsc_i_1_n_0
    );
\sig_data2wsc_tag_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_next_tag_reg(0),
      Q => \^in\(3),
      R => sig_push_to_wsc_i_1_n_0
    );
\sig_data2wsc_tag_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_next_tag_reg(1),
      Q => \^in\(2),
      R => sig_push_to_wsc_i_1_n_0
    );
\sig_data2wsc_tag_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_next_tag_reg(2),
      Q => \^in\(1),
      R => sig_push_to_wsc_i_1_n_0
    );
\sig_data2wsc_tag_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_next_tag_reg(3),
      Q => \^in\(0),
      R => sig_push_to_wsc_i_1_n_0
    );
\sig_data_reg_out[127]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5575"
    )
        port map (
      I0 => \out\,
      I1 => \^sig_data2all_tlast_error\,
      I2 => \sig_data_reg_out_reg[127]\,
      I3 => \sig_data_reg_out[127]_i_3_n_0\,
      I4 => sig_halt_reg,
      O => E(0)
    );
\sig_data_reg_out[127]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010FFFFFFFFFFFF"
    )
        port map (
      I0 => sig_addr_posted_cntr(2),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_last_mmap_dbeat_reg,
      I3 => \sig_addr_posted_cntr_reg[2]_0\,
      I4 => sig_dqual_reg_full,
      I5 => \^sig_next_calc_error_reg_reg_0\,
      O => \sig_data_reg_out[127]_i_3_n_0\
    );
\sig_dbeat_cntr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sig_dbeat_cntr(3),
      I1 => sig_dbeat_cntr(1),
      I2 => sig_dbeat_cntr(0),
      I3 => sig_dbeat_cntr(2),
      O => \sig_dbeat_cntr[4]_i_2_n_0\
    );
\sig_dbeat_cntr[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sig_dbeat_cntr(4),
      I1 => sig_dbeat_cntr(2),
      I2 => sig_dbeat_cntr(0),
      I3 => sig_dbeat_cntr(1),
      I4 => sig_dbeat_cntr(3),
      O => \sig_dbeat_cntr[7]_i_5_n_0\
    );
\sig_dbeat_cntr[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555575"
    )
        port map (
      I0 => sig_dqual_reg_full,
      I1 => \sig_addr_posted_cntr_reg[2]_0\,
      I2 => sig_last_mmap_dbeat_reg,
      I3 => sig_addr_posted_cntr(1),
      I4 => sig_addr_posted_cntr(2),
      O => \sig_dbeat_cntr[7]_i_7_n_0\
    );
\sig_dbeat_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_59\,
      D => p_1_in(0),
      Q => sig_dbeat_cntr(0),
      R => sig_stream_rst
    );
\sig_dbeat_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_59\,
      D => p_1_in(1),
      Q => sig_dbeat_cntr(1),
      R => sig_stream_rst
    );
\sig_dbeat_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_59\,
      D => p_1_in(2),
      Q => sig_dbeat_cntr(2),
      R => sig_stream_rst
    );
\sig_dbeat_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_59\,
      D => p_1_in(3),
      Q => sig_dbeat_cntr(3),
      R => sig_stream_rst
    );
\sig_dbeat_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_59\,
      D => p_1_in(4),
      Q => sig_dbeat_cntr(4),
      R => sig_stream_rst
    );
\sig_dbeat_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_59\,
      D => p_1_in(5),
      Q => sig_dbeat_cntr(5),
      R => sig_stream_rst
    );
\sig_dbeat_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_59\,
      D => p_1_in(6),
      Q => sig_dbeat_cntr(6),
      R => sig_stream_rst
    );
\sig_dbeat_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_59\,
      D => p_1_in(7),
      Q => sig_dbeat_cntr(7),
      R => sig_stream_rst
    );
sig_dqual_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => '0',
      Q => sig_dqual_reg_empty,
      S => sig_next_calc_error_reg_i_1_n_0
    );
sig_dqual_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => '1',
      Q => sig_dqual_reg_full,
      R => sig_next_calc_error_reg_i_1_n_0
    );
sig_end_stbs_match_err2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sig_end_stbs_match_err2_carry_n_0,
      CO(2) => sig_end_stbs_match_err2_carry_n_1,
      CO(1) => sig_end_stbs_match_err2_carry_n_2,
      CO(0) => sig_end_stbs_match_err2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_sig_end_stbs_match_err2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sig_end_stbs_match_err2_carry_i_1_n_0,
      S(2) => sig_end_stbs_match_err2_carry_i_2_n_0,
      S(1) => sig_end_stbs_match_err2_carry_i_3_n_0,
      S(0) => sig_end_stbs_match_err2_carry_i_4_n_0
    );
\sig_end_stbs_match_err2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sig_end_stbs_match_err2_carry_n_0,
      CO(3 downto 2) => \NLW_sig_end_stbs_match_err2_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => sig_end_stbs_match_err2,
      CO(0) => \sig_end_stbs_match_err2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_sig_end_stbs_match_err2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \sig_end_stbs_match_err2_carry__0_i_1_n_0\,
      S(0) => \sig_end_stbs_match_err2_carry__0_i_2_n_0\
    );
\sig_end_stbs_match_err2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_next_last_strb_reg(15),
      I1 => \sig_end_stbs_match_err2_carry__0_0\(15),
      O => \sig_end_stbs_match_err2_carry__0_i_1_n_0\
    );
\sig_end_stbs_match_err2_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sig_next_last_strb_reg(12),
      I1 => \sig_end_stbs_match_err2_carry__0_0\(12),
      I2 => sig_next_last_strb_reg(13),
      I3 => \sig_end_stbs_match_err2_carry__0_0\(13),
      I4 => \sig_end_stbs_match_err2_carry__0_0\(14),
      I5 => sig_next_last_strb_reg(14),
      O => \sig_end_stbs_match_err2_carry__0_i_2_n_0\
    );
sig_end_stbs_match_err2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sig_next_last_strb_reg(9),
      I1 => \sig_end_stbs_match_err2_carry__0_0\(9),
      I2 => sig_next_last_strb_reg(11),
      I3 => \sig_end_stbs_match_err2_carry__0_0\(11),
      I4 => \sig_end_stbs_match_err2_carry__0_0\(10),
      I5 => sig_next_last_strb_reg(10),
      O => sig_end_stbs_match_err2_carry_i_1_n_0
    );
sig_end_stbs_match_err2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sig_next_last_strb_reg(7),
      I1 => \sig_end_stbs_match_err2_carry__0_0\(7),
      I2 => sig_next_last_strb_reg(8),
      I3 => \sig_end_stbs_match_err2_carry__0_0\(8),
      I4 => \sig_end_stbs_match_err2_carry__0_0\(6),
      I5 => sig_next_last_strb_reg(6),
      O => sig_end_stbs_match_err2_carry_i_2_n_0
    );
sig_end_stbs_match_err2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sig_next_last_strb_reg(4),
      I1 => \sig_end_stbs_match_err2_carry__0_0\(4),
      I2 => sig_next_last_strb_reg(5),
      I3 => \sig_end_stbs_match_err2_carry__0_0\(5),
      I4 => \sig_end_stbs_match_err2_carry__0_0\(3),
      I5 => sig_next_last_strb_reg(3),
      O => sig_end_stbs_match_err2_carry_i_3_n_0
    );
sig_end_stbs_match_err2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => sig_next_last_strb_reg(0),
      I1 => \sig_end_stbs_match_err2_carry__0_0\(0),
      I2 => sig_next_last_strb_reg(2),
      I3 => \sig_end_stbs_match_err2_carry__0_0\(2),
      I4 => \sig_end_stbs_match_err2_carry__0_0\(1),
      I5 => sig_next_last_strb_reg(1),
      O => sig_end_stbs_match_err2_carry_i_4_n_0
    );
sig_first_dbeat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_3\,
      Q => \sig_first_dbeat__0\,
      R => '0'
    );
sig_last_dbeat_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4\,
      I1 => sig_last_dbeat_i_5_n_0,
      I2 => sig_dbeat_cntr(3),
      I3 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      I4 => sig_dbeat_cntr(7),
      O => sig_last_dbeat_i_3_n_0
    );
sig_last_dbeat_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => sig_dbeat_cntr(6),
      I1 => sig_dbeat_cntr(5),
      I2 => sig_dbeat_cntr(2),
      I3 => sig_dbeat_cntr(4),
      I4 => sig_dbeat_cntr(1),
      I5 => sig_dbeat_cntr(0),
      O => sig_last_dbeat_i_5_n_0
    );
sig_last_dbeat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_58\,
      Q => sig_last_dbeat_reg_n_0,
      R => '0'
    );
sig_last_mmap_dbeat_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_4\,
      I1 => sig_wr_xfer_cmplt_i_2_n_0,
      O => sig_last_mmap_dbeat
    );
sig_last_mmap_dbeat_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_last_mmap_dbeat,
      Q => sig_last_mmap_dbeat_reg,
      R => sig_stream_rst
    );
\sig_last_reg_out_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => sig_dqual_reg_full,
      I1 => sig_wr_xfer_cmplt_i_2_n_0,
      I2 => sig_last_reg_out_reg,
      I3 => sig_last_skid_reg,
      O => sig_last_skid_mux_out
    );
\sig_last_skid_reg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_dqual_reg_full,
      I1 => sig_wr_xfer_cmplt_i_2_n_0,
      O => sig_data2skid_wlast
    );
sig_ld_new_cmd_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => sig_ld_new_cmd_reg,
      I1 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      I2 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5\,
      O => sig_ld_new_cmd_reg_i_1_n_0
    );
sig_ld_new_cmd_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_ld_new_cmd_reg_i_1_n_0,
      Q => sig_ld_new_cmd_reg,
      R => '0'
    );
sig_m_valid_dup_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDDDFDDDDDDDF"
    )
        port map (
      I0 => \^sig_next_calc_error_reg_reg_0\,
      I1 => \sig_dbeat_cntr[7]_i_7_n_0\,
      I2 => sig_wr_xfer_cmplt_reg_0,
      I3 => \^sig_data2all_tlast_error\,
      I4 => sig_halt_reg,
      I5 => sig_last_mmap_dbeat_reg,
      O => sig_m_valid_out_reg
    );
sig_next_calc_error_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5\,
      I1 => sig_last_mmap_dbeat,
      I2 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      O => sig_next_calc_error_reg_i_1_n_0
    );
sig_next_calc_error_reg_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5\,
      O => sig_push_dqual_reg
    );
sig_next_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(52),
      Q => \^sig_next_calc_error_reg\,
      R => sig_next_calc_error_reg_i_1_n_0
    );
sig_next_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(51),
      Q => sig_next_cmd_cmplt_reg,
      R => sig_next_calc_error_reg_i_1_n_0
    );
sig_next_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(49),
      Q => sig_next_eof_reg,
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(32),
      Q => sig_next_last_strb_reg(0),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(42),
      Q => sig_next_last_strb_reg(10),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(43),
      Q => sig_next_last_strb_reg(11),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(44),
      Q => sig_next_last_strb_reg(12),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(45),
      Q => sig_next_last_strb_reg(13),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(46),
      Q => sig_next_last_strb_reg(14),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(47),
      Q => sig_next_last_strb_reg(15),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(33),
      Q => sig_next_last_strb_reg(1),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(34),
      Q => sig_next_last_strb_reg(2),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(35),
      Q => sig_next_last_strb_reg(3),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(36),
      Q => sig_next_last_strb_reg(4),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(37),
      Q => sig_next_last_strb_reg(5),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(38),
      Q => sig_next_last_strb_reg(6),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(39),
      Q => sig_next_last_strb_reg(7),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(40),
      Q => sig_next_last_strb_reg(8),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_last_strb_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(41),
      Q => sig_next_last_strb_reg(9),
      R => sig_next_calc_error_reg_i_1_n_0
    );
sig_next_sequential_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(50),
      Q => sig_next_sequential_reg,
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(16),
      Q => sig_next_strt_strb_reg(0),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(26),
      Q => sig_next_strt_strb_reg(10),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(27),
      Q => sig_next_strt_strb_reg(11),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(28),
      Q => sig_next_strt_strb_reg(12),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(29),
      Q => sig_next_strt_strb_reg(13),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(30),
      Q => sig_next_strt_strb_reg(14),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(31),
      Q => sig_next_strt_strb_reg(15),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(17),
      Q => sig_next_strt_strb_reg(1),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(18),
      Q => sig_next_strt_strb_reg(2),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(19),
      Q => sig_next_strt_strb_reg(3),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(20),
      Q => sig_next_strt_strb_reg(4),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(21),
      Q => sig_next_strt_strb_reg(5),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(22),
      Q => sig_next_strt_strb_reg(6),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(23),
      Q => sig_next_strt_strb_reg(7),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(24),
      Q => sig_next_strt_strb_reg(8),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_strt_strb_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(25),
      Q => sig_next_strt_strb_reg(9),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_tag_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(0),
      Q => sig_next_tag_reg(0),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_tag_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(1),
      Q => sig_next_tag_reg(1),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_tag_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(2),
      Q => sig_next_tag_reg(2),
      R => sig_next_calc_error_reg_i_1_n_0
    );
\sig_next_tag_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_dqual_reg,
      D => sig_cmd_fifo_data_out(3),
      Q => sig_next_tag_reg(3),
      R => sig_next_calc_error_reg_i_1_n_0
    );
sig_push_err2wsc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => sig_ld_new_cmd_reg,
      I1 => \^sig_next_calc_error_reg\,
      I2 => sig_push_err2wsc,
      I3 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      O => sig_push_err2wsc_i_1_n_0
    );
sig_push_err2wsc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_push_err2wsc_i_1_n_0,
      Q => sig_push_err2wsc,
      R => '0'
    );
sig_push_to_wsc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000020FFFFFFFF"
    )
        port map (
      I0 => sig_inhibit_rdy_n_0,
      I1 => sig_push_to_wsc_reg_0,
      I2 => \^sig_push_to_wsc\,
      I3 => sig_push_err2wsc,
      I4 => sig_last_mmap_dbeat,
      I5 => sig_cmd_stat_rst_user_reg_n_cdc_from,
      O => sig_push_to_wsc_i_1_n_0
    );
sig_push_to_wsc_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \^sig_tlast_err_stop\,
      I1 => sig_last_mmap_dbeat,
      I2 => sig_push_err2wsc,
      O => sig_push_to_wsc_i_2_n_0
    );
sig_push_to_wsc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => sig_push_to_wsc_i_2_n_0,
      D => sig_push_to_wsc_i_2_n_0,
      Q => \^sig_push_to_wsc\,
      R => sig_push_to_wsc_i_1_n_0
    );
sig_s2mm_ld_nxt_len_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_s2mm_ld_nxt_len0,
      Q => s2mm_ld_nxt_len,
      R => sig_stream_rst
    );
\sig_s2mm_wr_len_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_next_calc_error_reg_reg_1(4),
      Q => s2mm_wr_len(0),
      R => sig_stream_rst
    );
\sig_s2mm_wr_len_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_next_calc_error_reg_reg_1(5),
      Q => s2mm_wr_len(1),
      R => sig_stream_rst
    );
\sig_s2mm_wr_len_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_next_calc_error_reg_reg_1(6),
      Q => s2mm_wr_len(2),
      R => sig_stream_rst
    );
\sig_s2mm_wr_len_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_next_calc_error_reg_reg_1(7),
      Q => s2mm_wr_len(3),
      R => sig_stream_rst
    );
\sig_s2mm_wr_len_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_next_calc_error_reg_reg_1(8),
      Q => s2mm_wr_len(4),
      R => sig_stream_rst
    );
\sig_s2mm_wr_len_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_next_calc_error_reg_reg_1(9),
      Q => s2mm_wr_len(5),
      R => sig_stream_rst
    );
\sig_s2mm_wr_len_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_next_calc_error_reg_reg_1(10),
      Q => s2mm_wr_len(6),
      R => sig_stream_rst
    );
\sig_s2mm_wr_len_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_next_calc_error_reg_reg_1(11),
      Q => s2mm_wr_len(7),
      R => sig_stream_rst
    );
\sig_strb_reg_out[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(0),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(0),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(0),
      O => \sig_next_strt_strb_reg_reg[15]_0\(0)
    );
\sig_strb_reg_out[10]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(10),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(10),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(10),
      O => \sig_next_strt_strb_reg_reg[15]_0\(10)
    );
\sig_strb_reg_out[11]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(11),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(11),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(11),
      O => \sig_next_strt_strb_reg_reg[15]_0\(11)
    );
\sig_strb_reg_out[12]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(12),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(12),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(12),
      O => \sig_next_strt_strb_reg_reg[15]_0\(12)
    );
\sig_strb_reg_out[13]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(13),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(13),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(13),
      O => \sig_next_strt_strb_reg_reg[15]_0\(13)
    );
\sig_strb_reg_out[14]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(14),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(14),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(14),
      O => \sig_next_strt_strb_reg_reg[15]_0\(14)
    );
\sig_strb_reg_out[15]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(15),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(15),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(15),
      O => \sig_next_strt_strb_reg_reg[15]_0\(15)
    );
\sig_strb_reg_out[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(1),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(1),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(1),
      O => \sig_next_strt_strb_reg_reg[15]_0\(1)
    );
\sig_strb_reg_out[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(2),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(2),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(2),
      O => \sig_next_strt_strb_reg_reg[15]_0\(2)
    );
\sig_strb_reg_out[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(3),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(3),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(3),
      O => \sig_next_strt_strb_reg_reg[15]_0\(3)
    );
\sig_strb_reg_out[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(4),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(4),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(4),
      O => \sig_next_strt_strb_reg_reg[15]_0\(4)
    );
\sig_strb_reg_out[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(5),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(5),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(5),
      O => \sig_next_strt_strb_reg_reg[15]_0\(5)
    );
\sig_strb_reg_out[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(6),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(6),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(6),
      O => \sig_next_strt_strb_reg_reg[15]_0\(6)
    );
\sig_strb_reg_out[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(7),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(7),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(7),
      O => \sig_next_strt_strb_reg_reg[15]_0\(7)
    );
\sig_strb_reg_out[8]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(8),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(8),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(8),
      O => \sig_next_strt_strb_reg_reg[15]_0\(8)
    );
\sig_strb_reg_out[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => sig_next_strt_strb_reg(9),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(9),
      I3 => sig_last_dbeat_reg_n_0,
      I4 => sig_last_reg_out_reg,
      I5 => \sig_strb_reg_out_reg[15]\(9),
      O => \sig_next_strt_strb_reg_reg[15]_0\(9)
    );
\sig_strb_skid_reg[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(0),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(0),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(0)
    );
\sig_strb_skid_reg[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(10),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(10),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(10)
    );
\sig_strb_skid_reg[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(11),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(11),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(11)
    );
\sig_strb_skid_reg[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(12),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(12),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(12)
    );
\sig_strb_skid_reg[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(13),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(13),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(13)
    );
\sig_strb_skid_reg[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(14),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(14),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(14)
    );
\sig_strb_skid_reg[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(15),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(15),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(15)
    );
\sig_strb_skid_reg[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(1),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(1),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(1)
    );
\sig_strb_skid_reg[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(2),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(2),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(2)
    );
\sig_strb_skid_reg[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(3),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(3),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(3)
    );
\sig_strb_skid_reg[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(4),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(4),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(4)
    );
\sig_strb_skid_reg[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(5),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(5),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(5)
    );
\sig_strb_skid_reg[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(6),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(6),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(6)
    );
\sig_strb_skid_reg[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(7),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(7),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(7)
    );
\sig_strb_skid_reg[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(8),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(8),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(8)
    );
\sig_strb_skid_reg[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8BB"
    )
        port map (
      I0 => sig_next_strt_strb_reg(9),
      I1 => \sig_first_dbeat__0\,
      I2 => sig_next_last_strb_reg(9),
      I3 => sig_last_dbeat_reg_n_0,
      O => \sig_next_strt_strb_reg_reg[15]_1\(9)
    );
sig_wr_xfer_cmplt_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => sig_wr_xfer_cmplt_i_2_n_0,
      I1 => sig_dqual_reg_full,
      I2 => sig_wr_xfer_cmplt_reg_0,
      I3 => \^sig_halt_reg_reg\,
      O => sig_wr_xfer_cmplt0
    );
sig_wr_xfer_cmplt_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_dbeat_cntr(7),
      I1 => \sig_dbeat_cntr[7]_i_5_n_0\,
      I2 => sig_dbeat_cntr(5),
      I3 => sig_dbeat_cntr(6),
      O => sig_wr_xfer_cmplt_i_2_n_0
    );
sig_wr_xfer_cmplt_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5545"
    )
        port map (
      I0 => sig_halt_reg,
      I1 => \sig_data_reg_out[127]_i_3_n_0\,
      I2 => \sig_data_reg_out_reg[127]\,
      I3 => \^sig_data2all_tlast_error\,
      O => \^sig_halt_reg_reg\
    );
sig_wr_xfer_cmplt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_s2mm_aclk,
      CE => '1',
      D => sig_wr_xfer_cmplt0,
      Q => s2mm_wr_xfer_cmplt,
      R => sig_stream_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_axi_datamover_s2mm_full_wrap is
  port (
    s_axis_s2mm_tready : out STD_LOGIC;
    s2mm_addr_req_posted : out STD_LOGIC;
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    s2mm_wr_xfer_cmplt : out STD_LOGIC;
    s2mm_ld_nxt_len : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wlast : out STD_LOGIC;
    s2mm_halt_cmplt : out STD_LOGIC;
    s_axis_s2mm_cmd_tready : out STD_LOGIC;
    m_axis_s2mm_sts_tvalid : out STD_LOGIC;
    s2mm_err : out STD_LOGIC;
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 28 downto 0 );
    m_axi_s2mm_bready : out STD_LOGIC;
    m_axis_s2mm_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s2mm_wr_len : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    m_axi_s2mm_aresetn : in STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    m_axis_s2mm_sts_tready : in STD_LOGIC;
    m_axi_s2mm_bvalid : in STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    s2mm_allow_addr_req : in STD_LOGIC;
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    s2mm_halt : in STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    s_axis_s2mm_cmd_tdata : in STD_LOGIC_VECTOR ( 53 downto 0 );
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end design_1_axi_datamover_0_0_axi_datamover_s2mm_full_wrap;

architecture STRUCTURE of design_1_axi_datamover_0_0_axi_datamover_s2mm_full_wrap is
  signal \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done\ : STD_LOGIC;
  signal \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_rd_empty\ : STD_LOGIC;
  signal \GEN_INCLUDE_PCC.I_MSTR_PCC_n_55\ : STD_LOGIC;
  signal \GEN_INCLUDE_PCC.I_MSTR_PCC_n_99\ : STD_LOGIC;
  signal \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_inhibit_rdy_n\ : STD_LOGIC;
  signal \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_done\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n\ : STD_LOGIC;
  signal \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_init_done\ : STD_LOGIC;
  signal I_ADDR_CNTL_n_10 : STD_LOGIC;
  signal I_ADDR_CNTL_n_11 : STD_LOGIC;
  signal I_ADDR_CNTL_n_12 : STD_LOGIC;
  signal I_ADDR_CNTL_n_13 : STD_LOGIC;
  signal I_ADDR_CNTL_n_2 : STD_LOGIC;
  signal I_ADDR_CNTL_n_9 : STD_LOGIC;
  signal \I_CMD_FIFO/sig_init_done\ : STD_LOGIC;
  signal \I_CMD_FIFO/sig_rd_empty\ : STD_LOGIC;
  signal I_CMD_STATUS_n_0 : STD_LOGIC;
  signal I_CMD_STATUS_n_11 : STD_LOGIC;
  signal I_CMD_STATUS_n_6 : STD_LOGIC;
  signal I_RESET_n_3 : STD_LOGIC;
  signal I_RESET_n_6 : STD_LOGIC;
  signal \I_WRESP_STATUS_FIFO/sig_init_done\ : STD_LOGIC;
  signal I_WR_DATA_CNTL_n_0 : STD_LOGIC;
  signal I_WR_DATA_CNTL_n_17 : STD_LOGIC;
  signal I_WR_DATA_CNTL_n_18 : STD_LOGIC;
  signal I_WR_DATA_CNTL_n_19 : STD_LOGIC;
  signal I_WR_DATA_CNTL_n_20 : STD_LOGIC;
  signal I_WR_DATA_CNTL_n_22 : STD_LOGIC;
  signal I_WR_DATA_CNTL_n_62 : STD_LOGIC;
  signal I_WR_STATUS_CNTLR_n_0 : STD_LOGIC;
  signal I_WR_STATUS_CNTLR_n_17 : STD_LOGIC;
  signal I_WR_STATUS_CNTLR_n_27 : STD_LOGIC;
  signal I_WR_STATUS_CNTLR_n_28 : STD_LOGIC;
  signal dre2skid_wready : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in2_in_0 : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal \^s2mm_halt_cmplt\ : STD_LOGIC;
  signal sig_addr2data_addr_posted : STD_LOGIC;
  signal sig_addr2wsc_calc_error : STD_LOGIC;
  signal sig_addr_reg_empty : STD_LOGIC;
  signal sig_calc2dm_calc_err : STD_LOGIC;
  signal sig_calc_error_pushed : STD_LOGIC;
  signal sig_cmd2mstr_command : STD_LOGIC_VECTOR ( 67 downto 0 );
  signal sig_cmd_stat_rst_user_reg_n_cdc_from : STD_LOGIC;
  signal sig_data2all_tlast_error : STD_LOGIC;
  signal sig_data2skid_wlast : STD_LOGIC;
  signal sig_data2skid_wstrb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_data2wsc_calc_err : STD_LOGIC;
  signal sig_data2wsc_cmd_cmplt : STD_LOGIC;
  signal sig_data2wsc_last_err : STD_LOGIC;
  signal sig_data2wsc_tag : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_data_reg_out_en : STD_LOGIC;
  signal sig_data_reg_out_en_1 : STD_LOGIC;
  signal sig_dre2ibtt_tdata : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sig_dre2ibtt_tlast : STD_LOGIC;
  signal sig_dre2ibtt_tstrb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_dre2ibtt_tvalid : STD_LOGIC;
  signal sig_halt_reg : STD_LOGIC;
  signal sig_halt_reg_dly2 : STD_LOGIC;
  signal sig_halt_reg_dly3 : STD_LOGIC;
  signal sig_input_reg_empty : STD_LOGIC;
  signal sig_last_skid_mux_out : STD_LOGIC;
  signal sig_last_skid_reg : STD_LOGIC;
  signal sig_mmap_reset_reg : STD_LOGIC;
  signal sig_mstr2addr_addr : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal sig_mstr2addr_burst : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_mstr2addr_cmd_valid : STD_LOGIC;
  signal sig_mstr2data_cmd_last : STD_LOGIC;
  signal sig_mstr2data_cmd_valid : STD_LOGIC;
  signal sig_mstr2data_eof : STD_LOGIC;
  signal sig_mstr2data_last_strb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_mstr2data_len : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_mstr2data_saddr_lsb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_mstr2data_sequential : STD_LOGIC;
  signal sig_mstr2data_strt_strb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_mstr2data_tag : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sig_next_calc_error_reg : STD_LOGIC;
  signal sig_push_to_wsc : STD_LOGIC;
  signal sig_skid2data_wready : STD_LOGIC;
  signal sig_sm_halt_reg : STD_LOGIC;
  signal sig_stop_request : STD_LOGIC;
  signal sig_strb_skid_mux_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_strb_skid_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_stream_rst : STD_LOGIC;
  signal sig_tlast_err_stop : STD_LOGIC;
  signal sig_wdc_status_going_full : STD_LOGIC;
  signal sig_wsc2stat_status : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_wsc2stat_status_valid : STD_LOGIC;
  signal skid2dre_wdata : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal skid2dre_wlast : STD_LOGIC;
  signal skid2dre_wstrb : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal skid2dre_wvalid : STD_LOGIC;
begin
  s2mm_halt_cmplt <= \^s2mm_halt_cmplt\;
\ENABLE_AXIS_SKID.I_S2MM_STRM_SKID_BUF\: entity work.design_1_axi_datamover_0_0_axi_datamover_skid_buf
     port map (
      E(0) => sig_data_reg_out_en,
      Q(127 downto 0) => skid2dre_wdata(127 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\ => p_0_in2_in,
      s_axis_s2mm_tdata(127 downto 0) => s_axis_s2mm_tdata(127 downto 0),
      s_axis_s2mm_tkeep(15 downto 0) => s_axis_s2mm_tkeep(15 downto 0),
      s_axis_s2mm_tlast => s_axis_s2mm_tlast,
      s_axis_s2mm_tready => s_axis_s2mm_tready,
      s_axis_s2mm_tvalid => s_axis_s2mm_tvalid,
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_halt_reg_dly2 => sig_halt_reg_dly2,
      sig_halt_reg_dly3 => sig_halt_reg_dly3,
      sig_m_valid_out_reg_0 => skid2dre_wvalid,
      sig_m_valid_out_reg_1 => I_RESET_n_3,
      sig_mmap_reset_reg => sig_mmap_reset_reg,
      sig_mvalid_stop_reg_reg_0 => dre2skid_wready,
      sig_sready_stop_reg_reg_0 => I_WR_STATUS_CNTLR_n_28,
      sig_stop_request => sig_stop_request,
      \sig_strb_reg_out_reg[15]_0\(15 downto 0) => skid2dre_wstrb(15 downto 0),
      sig_stream_rst => sig_stream_rst,
      skid2dre_wlast => skid2dre_wlast
    );
\GEN_INCLUDE_PCC.I_MSTR_PCC\: entity work.design_1_axi_datamover_0_0_axi_datamover_pcc
     port map (
      Q(0) => \I_CMD_FIFO/sig_rd_empty\,
      \in\(47) => sig_calc2dm_calc_err,
      \in\(46) => sig_mstr2data_cmd_last,
      \in\(45) => sig_mstr2data_sequential,
      \in\(44) => sig_mstr2data_eof,
      \in\(43 downto 28) => sig_mstr2data_last_strb(15 downto 0),
      \in\(27 downto 12) => sig_mstr2data_strt_strb(15 downto 0),
      \in\(11 downto 4) => sig_mstr2data_len(7 downto 0),
      \in\(3 downto 0) => sig_mstr2data_tag(3 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\(53 downto 18) => sig_cmd2mstr_command(67 downto 32),
      \out\(17) => sig_cmd2mstr_command(30),
      \out\(16) => sig_cmd2mstr_command(23),
      \out\(15 downto 0) => sig_cmd2mstr_command(15 downto 0),
      s2mm_dbg_data(9 downto 1) => s2mm_dbg_data(27 downto 19),
      s2mm_dbg_data(0) => s2mm_dbg_data(3),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      s2mm_err => s2mm_err,
      \sig_addr_cntr_im0_msh_reg[15]_0\(31 downto 4) => sig_mstr2addr_addr(31 downto 4),
      \sig_addr_cntr_im0_msh_reg[15]_0\(3 downto 0) => sig_mstr2data_saddr_lsb(3 downto 0),
      sig_calc_error_pushed => sig_calc_error_pushed,
      sig_calc_error_pushed_reg_0 => \GEN_INCLUDE_PCC.I_MSTR_PCC_n_99\,
      sig_cmd2addr_valid_reg_0 => I_ADDR_CNTL_n_2,
      sig_cmd2data_valid_reg_0 => I_WR_DATA_CNTL_n_0,
      sig_data2all_tlast_error => sig_data2all_tlast_error,
      sig_inhibit_rdy_n => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n\,
      sig_inhibit_rdy_n_0 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n\,
      sig_input_reg_empty => sig_input_reg_empty,
      sig_ld_xfer_reg_tmp_reg_0 => I_WR_DATA_CNTL_n_17,
      sig_mmap_reset_reg => sig_mmap_reset_reg,
      sig_mstr2addr_burst(0) => sig_mstr2addr_burst(0),
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_sm_halt_reg => sig_sm_halt_reg,
      sig_sm_halt_reg_reg_0 => \GEN_INCLUDE_PCC.I_MSTR_PCC_n_55\,
      sig_stream_rst => sig_stream_rst
    );
\GEN_NO_REALIGNER.ENABLE_NOREALIGNER_SKID.I_NO_REALIGN_SKID_BUF\: entity work.design_1_axi_datamover_0_0_axi_datamover_skid_buf_0
     port map (
      D(127 downto 0) => skid2dre_wdata(127 downto 0),
      E(0) => sig_data_reg_out_en_1,
      Q(127 downto 0) => sig_dre2ibtt_tdata(127 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\ => p_0_in2_in_0,
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      \sig_data_reg_out_reg[127]_0\ => p_0_in2_in,
      sig_dre2ibtt_tlast => sig_dre2ibtt_tlast,
      sig_m_valid_out_reg_0 => sig_dre2ibtt_tvalid,
      sig_mmap_reset_reg => sig_mmap_reset_reg,
      sig_s_ready_dup_reg_0 => skid2dre_wvalid,
      sig_s_ready_dup_reg_1 => I_WR_DATA_CNTL_n_20,
      sig_s_ready_out_reg_0 => dre2skid_wready,
      sig_s_ready_out_reg_1(0) => sig_data_reg_out_en,
      \sig_strb_reg_out_reg[15]_0\(15 downto 0) => sig_dre2ibtt_tstrb(15 downto 0),
      \sig_strb_skid_reg_reg[15]_0\(15 downto 0) => skid2dre_wstrb(15 downto 0),
      sig_stream_rst => sig_stream_rst,
      skid2dre_wlast => skid2dre_wlast
    );
I_ADDR_CNTL: entity work.design_1_axi_datamover_0_0_axi_datamover_addr_cntl
     port map (
      FIFO_Full_reg => I_ADDR_CNTL_n_2,
      FIFO_Full_reg_0 => I_WR_DATA_CNTL_n_22,
      \in\(41) => sig_calc2dm_calc_err,
      \in\(40) => sig_mstr2addr_burst(0),
      \in\(39 downto 32) => sig_mstr2data_len(7 downto 0),
      \in\(31 downto 4) => sig_mstr2addr_addr(31 downto 4),
      \in\(3 downto 0) => sig_mstr2data_saddr_lsb(3 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_awaddr(31 downto 0) => m_axi_s2mm_awaddr(31 downto 0),
      m_axi_s2mm_awburst(0) => m_axi_s2mm_awburst(0),
      m_axi_s2mm_awlen(7 downto 0) => m_axi_s2mm_awlen(7 downto 0),
      m_axi_s2mm_awready => m_axi_s2mm_awready,
      m_axi_s2mm_awsize(0) => m_axi_s2mm_awsize(0),
      m_axi_s2mm_awvalid => m_axi_s2mm_awvalid,
      \out\ => sig_addr2data_addr_posted,
      s2mm_addr_req_posted => s2mm_addr_req_posted,
      s2mm_allow_addr_req => s2mm_allow_addr_req,
      sig_addr2wsc_calc_error => sig_addr2wsc_calc_error,
      sig_addr_reg_empty => sig_addr_reg_empty,
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_data2all_tlast_error => sig_data2all_tlast_error,
      sig_halt_reg => sig_halt_reg,
      sig_inhibit_rdy_n => \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n\,
      sig_init_done => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_init_done\,
      sig_init_done_0 => \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_done\,
      sig_init_done_1 => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done\,
      sig_init_done_2 => \I_WRESP_STATUS_FIFO/sig_init_done\,
      sig_init_done_3 => \I_CMD_FIFO/sig_init_done\,
      sig_init_reg2_reg => I_ADDR_CNTL_n_9,
      sig_init_reg2_reg_0 => I_ADDR_CNTL_n_10,
      sig_init_reg2_reg_1 => I_ADDR_CNTL_n_11,
      sig_init_reg2_reg_2 => I_ADDR_CNTL_n_12,
      sig_init_reg2_reg_3 => I_ADDR_CNTL_n_13,
      sig_mmap_reset_reg => sig_mmap_reset_reg,
      sig_mstr2addr_cmd_valid => sig_mstr2addr_cmd_valid,
      sig_stream_rst => sig_stream_rst
    );
I_CMD_STATUS: entity work.design_1_axi_datamover_0_0_axi_datamover_cmd_status
     port map (
      FIFO_Full_reg => I_CMD_STATUS_n_0,
      FIFO_Full_reg_0 => \GEN_INCLUDE_PCC.I_MSTR_PCC_n_99\,
      \INFERRED_GEN.cnt_i_reg[1]\ => \GEN_INCLUDE_PCC.I_MSTR_PCC_n_55\,
      Q(0) => \I_CMD_FIFO/sig_rd_empty\,
      SR(0) => I_CMD_STATUS_n_11,
      \in\(0) => sig_wsc2stat_status(7),
      \in\(1) => sig_wsc2stat_status(6),
      \in\(2) => sig_wsc2stat_status(5),
      \in\(3) => sig_wsc2stat_status(4),
      \in\(4) => sig_wsc2stat_status(3),
      \in\(5) => sig_wsc2stat_status(2),
      \in\(6) => sig_wsc2stat_status(1),
      \in\(7) => sig_wsc2stat_status(0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axis_s2mm_sts_tdata(7 downto 0) => m_axis_s2mm_sts_tdata(7 downto 0),
      m_axis_s2mm_sts_tready => m_axis_s2mm_sts_tready,
      m_axis_s2mm_sts_tvalid => m_axis_s2mm_sts_tvalid,
      \out\(53 downto 18) => sig_cmd2mstr_command(67 downto 32),
      \out\(17) => sig_cmd2mstr_command(30),
      \out\(16) => sig_cmd2mstr_command(23),
      \out\(15 downto 0) => sig_cmd2mstr_command(15 downto 0),
      s2mm_dbg_data(2) => s2mm_dbg_data(17),
      s2mm_dbg_data(1) => s2mm_dbg_data(4),
      s2mm_dbg_data(0) => s2mm_dbg_data(2),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      s_axis_s2mm_cmd_tdata(53 downto 0) => s_axis_s2mm_cmd_tdata(53 downto 0),
      s_axis_s2mm_cmd_tready => s_axis_s2mm_cmd_tready,
      s_axis_s2mm_cmd_tvalid => s_axis_s2mm_cmd_tvalid,
      sig_calc_error_pushed => sig_calc_error_pushed,
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_inhibit_rdy_n => \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_inhibit_rdy_n\,
      sig_inhibit_rdy_n_reg => I_CMD_STATUS_n_6,
      sig_init_done => \I_CMD_FIFO/sig_init_done\,
      sig_init_done_0 => \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_done\,
      sig_init_done_reg => I_ADDR_CNTL_n_13,
      sig_init_done_reg_0 => I_ADDR_CNTL_n_10,
      sig_input_reg_empty => sig_input_reg_empty,
      sig_sm_halt_reg => sig_sm_halt_reg,
      sig_stream_rst => sig_stream_rst,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
I_RESET: entity work.design_1_axi_datamover_0_0_axi_datamover_reset
     port map (
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_aresetn => m_axi_s2mm_aresetn,
      s2mm_dbg_data(1 downto 0) => s2mm_dbg_data(1 downto 0),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      s2mm_halt => s2mm_halt,
      s2mm_halt_cmplt => \^s2mm_halt_cmplt\,
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_cmd_stat_rst_user_reg_n_cdc_from_reg_0 => I_RESET_n_3,
      sig_halt_cmplt_reg_0 => I_WR_STATUS_CNTLR_n_27,
      sig_halt_reg => sig_halt_reg,
      sig_mmap_reset_reg => sig_mmap_reset_reg,
      sig_s_h_halt_reg_reg_0 => I_RESET_n_6,
      sig_stream_rst => sig_stream_rst
    );
I_S2MM_MMAP_SKID_BUF: entity work.design_1_axi_datamover_0_0_axi_datamover_skid2mm_buf
     port map (
      D(127 downto 0) => sig_dre2ibtt_tdata(127 downto 0),
      Q(15 downto 0) => sig_strb_skid_reg(15 downto 0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_wdata(127 downto 0) => m_axi_s2mm_wdata(127 downto 0),
      m_axi_s2mm_wlast => m_axi_s2mm_wlast,
      m_axi_s2mm_wready => m_axi_s2mm_wready,
      m_axi_s2mm_wstrb(15 downto 0) => m_axi_s2mm_wstrb(15 downto 0),
      m_axi_s2mm_wvalid => m_axi_s2mm_wvalid,
      \out\ => p_0_in3_in,
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_data2skid_wlast => sig_data2skid_wlast,
      sig_last_skid_mux_out => sig_last_skid_mux_out,
      sig_last_skid_reg => sig_last_skid_reg,
      sig_m_valid_out_reg_0 => I_WR_DATA_CNTL_n_19,
      sig_mmap_reset_reg => sig_mmap_reset_reg,
      sig_s_ready_out_reg_0 => sig_skid2data_wready,
      \sig_strb_reg_out_reg[15]_0\(15 downto 0) => sig_strb_skid_mux_out(15 downto 0),
      \sig_strb_skid_reg_reg[15]_0\(15 downto 0) => sig_data2skid_wstrb(15 downto 0),
      sig_stream_rst => sig_stream_rst
    );
I_WR_DATA_CNTL: entity work.design_1_axi_datamover_0_0_axi_datamover_wrdata_cntl
     port map (
      E(0) => sig_data_reg_out_en_1,
      FIFO_Full_reg => I_WR_DATA_CNTL_n_0,
      \GEN_OMIT_INDET_BTT.sig_tlast_err_stop_reg_0\ => I_WR_DATA_CNTL_n_62,
      \GEN_OMIT_INDET_BTT.sig_tlast_error_reg_reg_0\ => I_WR_DATA_CNTL_n_22,
      \INFERRED_GEN.cnt_i_reg[0]\ => I_WR_STATUS_CNTLR_n_17,
      Q(0) => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_rd_empty\,
      \in\(0) => sig_data2wsc_tag(3),
      \in\(1) => sig_data2wsc_tag(2),
      \in\(2) => sig_data2wsc_tag(1),
      \in\(3) => sig_data2wsc_tag(0),
      \in\(4) => sig_data2wsc_calc_err,
      \in\(5) => sig_data2wsc_last_err,
      \in\(6) => sig_data2wsc_cmd_cmplt,
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      \out\ => p_0_in2_in_0,
      s2mm_allow_addr_req => s2mm_allow_addr_req,
      s2mm_dbg_data(4) => s2mm_dbg_data(28),
      s2mm_dbg_data(3 downto 0) => s2mm_dbg_data(9 downto 6),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      s2mm_ld_nxt_len => s2mm_ld_nxt_len,
      s2mm_wr_len(7 downto 0) => s2mm_wr_len(7 downto 0),
      s2mm_wr_xfer_cmplt => s2mm_wr_xfer_cmplt,
      \sig_addr_posted_cntr_reg[2]_0\ => sig_addr2data_addr_posted,
      sig_addr_reg_empty => sig_addr_reg_empty,
      sig_cmd_stat_rst_user_reg_n_cdc_from => sig_cmd_stat_rst_user_reg_n_cdc_from,
      sig_data2all_tlast_error => sig_data2all_tlast_error,
      sig_data2skid_wlast => sig_data2skid_wlast,
      \sig_data_reg_out_reg[127]\ => sig_skid2data_wready,
      \sig_dbeat_cntr_reg[7]_0\ => I_CMD_STATUS_n_6,
      sig_dre2ibtt_tlast => sig_dre2ibtt_tlast,
      \sig_end_stbs_match_err2_carry__0_0\(15 downto 0) => sig_dre2ibtt_tstrb(15 downto 0),
      sig_halt_reg => sig_halt_reg,
      sig_halt_reg_reg => I_WR_DATA_CNTL_n_20,
      sig_inhibit_rdy_n => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n\,
      sig_inhibit_rdy_n_0 => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n\,
      sig_inhibit_rdy_n_reg => I_WR_DATA_CNTL_n_17,
      sig_init_done => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done\,
      sig_init_done_reg => I_ADDR_CNTL_n_11,
      sig_last_reg_out_reg => p_0_in3_in,
      sig_last_skid_mux_out => sig_last_skid_mux_out,
      sig_last_skid_reg => sig_last_skid_reg,
      sig_m_valid_out_reg => I_WR_DATA_CNTL_n_19,
      sig_mstr2data_cmd_valid => sig_mstr2data_cmd_valid,
      sig_next_calc_error_reg => sig_next_calc_error_reg,
      sig_next_calc_error_reg_reg_0 => I_WR_DATA_CNTL_n_18,
      sig_next_calc_error_reg_reg_1(47) => sig_calc2dm_calc_err,
      sig_next_calc_error_reg_reg_1(46) => sig_mstr2data_cmd_last,
      sig_next_calc_error_reg_reg_1(45) => sig_mstr2data_sequential,
      sig_next_calc_error_reg_reg_1(44) => sig_mstr2data_eof,
      sig_next_calc_error_reg_reg_1(43 downto 28) => sig_mstr2data_last_strb(15 downto 0),
      sig_next_calc_error_reg_reg_1(27 downto 12) => sig_mstr2data_strt_strb(15 downto 0),
      sig_next_calc_error_reg_reg_1(11 downto 4) => sig_mstr2data_len(7 downto 0),
      sig_next_calc_error_reg_reg_1(3 downto 0) => sig_mstr2data_tag(3 downto 0),
      \sig_next_strt_strb_reg_reg[15]_0\(15 downto 0) => sig_strb_skid_mux_out(15 downto 0),
      \sig_next_strt_strb_reg_reg[15]_1\(15 downto 0) => sig_data2skid_wstrb(15 downto 0),
      sig_push_to_wsc => sig_push_to_wsc,
      sig_push_to_wsc_reg_0 => I_WR_STATUS_CNTLR_n_0,
      \sig_strb_reg_out_reg[15]\(15 downto 0) => sig_strb_skid_reg(15 downto 0),
      sig_stream_rst => sig_stream_rst,
      sig_tlast_err_stop => sig_tlast_err_stop,
      sig_wdc_status_going_full => sig_wdc_status_going_full,
      sig_wr_xfer_cmplt_reg_0 => sig_dre2ibtt_tvalid,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
I_WR_STATUS_CNTLR: entity work.design_1_axi_datamover_0_0_axi_datamover_wr_status_cntl
     port map (
      FIFO_Full_reg => I_WR_STATUS_CNTLR_n_0,
      \GEN_OMIT_INDET_BTT.sig_coelsc_reg_full_reg_0\ => I_WR_DATA_CNTL_n_62,
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(0) => sig_data2wsc_tag(3),
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(1) => sig_data2wsc_tag(2),
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(2) => sig_data2wsc_tag(1),
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(3) => sig_data2wsc_tag(0),
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(4) => sig_data2wsc_calc_err,
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(5) => sig_data2wsc_last_err,
      \GEN_OMIT_INDET_BTT.sig_coelsc_tag_reg_reg[3]_0\(6) => sig_data2wsc_cmd_cmplt,
      \INFERRED_GEN.cnt_i[2]_i_2\ => I_CMD_STATUS_n_0,
      Q(0) => \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_rd_empty\,
      SR(0) => I_CMD_STATUS_n_11,
      \in\(0) => sig_wsc2stat_status(7),
      \in\(1) => sig_wsc2stat_status(6),
      \in\(2) => sig_wsc2stat_status(5),
      \in\(3) => sig_wsc2stat_status(4),
      \in\(4) => sig_wsc2stat_status(3),
      \in\(5) => sig_wsc2stat_status(2),
      \in\(6) => sig_wsc2stat_status(1),
      \in\(7) => sig_wsc2stat_status(0),
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_bready => m_axi_s2mm_bready,
      m_axi_s2mm_bresp(1 downto 0) => m_axi_s2mm_bresp(1 downto 0),
      m_axi_s2mm_bvalid => m_axi_s2mm_bvalid,
      \out\ => sig_addr2data_addr_posted,
      s2mm_dbg_data(8) => s2mm_dbg_data(18),
      s2mm_dbg_data(7 downto 1) => s2mm_dbg_data(16 downto 10),
      s2mm_dbg_data(0) => s2mm_dbg_data(5),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      s2mm_halt_cmplt => \^s2mm_halt_cmplt\,
      sig_addr2wsc_calc_error => sig_addr2wsc_calc_error,
      sig_addr_reg_empty => sig_addr_reg_empty,
      sig_data2all_tlast_error => sig_data2all_tlast_error,
      sig_halt_cmplt_reg => I_WR_DATA_CNTL_n_18,
      sig_halt_reg => sig_halt_reg,
      sig_halt_reg_dly2 => sig_halt_reg_dly2,
      sig_halt_reg_dly3 => sig_halt_reg_dly3,
      sig_halt_reg_dly3_reg_0 => I_WR_STATUS_CNTLR_n_27,
      sig_halt_reg_dly3_reg_1 => I_WR_STATUS_CNTLR_n_28,
      sig_halt_reg_reg_0 => I_RESET_n_6,
      sig_inhibit_rdy_n => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_inhibit_rdy_n\,
      sig_inhibit_rdy_n_1 => \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_inhibit_rdy_n\,
      sig_init_done => \I_WRESP_STATUS_FIFO/sig_init_done\,
      sig_init_done_0 => \GEN_OMIT_INDET_BTT.I_DATA_CNTL_STATUS_FIFO/sig_init_done\,
      sig_init_done_reg => I_ADDR_CNTL_n_12,
      sig_init_done_reg_0 => I_ADDR_CNTL_n_9,
      sig_next_calc_error_reg => sig_next_calc_error_reg,
      sig_push_to_wsc => sig_push_to_wsc,
      sig_stop_request => sig_stop_request,
      sig_stream_rst => sig_stream_rst,
      sig_tlast_err_stop => sig_tlast_err_stop,
      sig_wdc_status_going_full => sig_wdc_status_going_full,
      sig_wdc_status_going_full_reg_0 => I_WR_STATUS_CNTLR_n_17,
      sig_wsc2stat_status_valid => sig_wsc2stat_status_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0_axi_datamover is
  port (
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_mm2s_aresetn : in STD_LOGIC;
    mm2s_halt : in STD_LOGIC;
    mm2s_halt_cmplt : out STD_LOGIC;
    mm2s_err : out STD_LOGIC;
    m_axis_mm2s_cmdsts_aclk : in STD_LOGIC;
    m_axis_mm2s_cmdsts_aresetn : in STD_LOGIC;
    s_axis_mm2s_cmd_tvalid : in STD_LOGIC;
    s_axis_mm2s_cmd_tready : out STD_LOGIC;
    s_axis_mm2s_cmd_tdata : in STD_LOGIC_VECTOR ( 71 downto 0 );
    m_axis_mm2s_sts_tvalid : out STD_LOGIC;
    m_axis_mm2s_sts_tready : in STD_LOGIC;
    m_axis_mm2s_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_mm2s_sts_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_mm2s_sts_tlast : out STD_LOGIC;
    mm2s_allow_addr_req : in STD_LOGIC;
    mm2s_addr_req_posted : out STD_LOGIC;
    mm2s_rd_xfer_cmplt : out STD_LOGIC;
    m_axi_mm2s_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    mm2s_dbg_sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mm2s_dbg_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_aclk : in STD_LOGIC;
    m_axi_s2mm_aresetn : in STD_LOGIC;
    s2mm_halt : in STD_LOGIC;
    s2mm_halt_cmplt : out STD_LOGIC;
    s2mm_err : out STD_LOGIC;
    m_axis_s2mm_cmdsts_awclk : in STD_LOGIC;
    m_axis_s2mm_cmdsts_aresetn : in STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    s_axis_s2mm_cmd_tready : out STD_LOGIC;
    s_axis_s2mm_cmd_tdata : in STD_LOGIC_VECTOR ( 71 downto 0 );
    m_axis_s2mm_sts_tvalid : out STD_LOGIC;
    m_axis_s2mm_sts_tready : in STD_LOGIC;
    m_axis_s2mm_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_s2mm_sts_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_s2mm_sts_tlast : out STD_LOGIC;
    s2mm_allow_addr_req : in STD_LOGIC;
    s2mm_addr_req_posted : out STD_LOGIC;
    s2mm_wr_xfer_cmplt : out STD_LOGIC;
    s2mm_ld_nxt_len : out STD_LOGIC;
    s2mm_wr_len : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_s2mm_tlast : in STD_LOGIC;
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_CMD_WIDTH : integer;
  attribute C_CMD_WIDTH of design_1_axi_datamover_0_0_axi_datamover : entity is 72;
  attribute C_ENABLE_CACHE_USER : integer;
  attribute C_ENABLE_CACHE_USER of design_1_axi_datamover_0_0_axi_datamover : entity is 0;
  attribute C_ENABLE_MM2S_ADV_SIG : integer;
  attribute C_ENABLE_MM2S_ADV_SIG of design_1_axi_datamover_0_0_axi_datamover : entity is 0;
  attribute C_ENABLE_MM2S_TKEEP : integer;
  attribute C_ENABLE_MM2S_TKEEP of design_1_axi_datamover_0_0_axi_datamover : entity is 1;
  attribute C_ENABLE_S2MM_ADV_SIG : integer;
  attribute C_ENABLE_S2MM_ADV_SIG of design_1_axi_datamover_0_0_axi_datamover : entity is 1;
  attribute C_ENABLE_S2MM_TKEEP : integer;
  attribute C_ENABLE_S2MM_TKEEP of design_1_axi_datamover_0_0_axi_datamover : entity is 1;
  attribute C_ENABLE_SKID_BUF : string;
  attribute C_ENABLE_SKID_BUF of design_1_axi_datamover_0_0_axi_datamover : entity is "11111";
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_axi_datamover_0_0_axi_datamover : entity is "artix7";
  attribute C_INCLUDE_MM2S : integer;
  attribute C_INCLUDE_MM2S of design_1_axi_datamover_0_0_axi_datamover : entity is 0;
  attribute C_INCLUDE_MM2S_DRE : integer;
  attribute C_INCLUDE_MM2S_DRE of design_1_axi_datamover_0_0_axi_datamover : entity is 0;
  attribute C_INCLUDE_MM2S_STSFIFO : integer;
  attribute C_INCLUDE_MM2S_STSFIFO of design_1_axi_datamover_0_0_axi_datamover : entity is 0;
  attribute C_INCLUDE_S2MM : integer;
  attribute C_INCLUDE_S2MM of design_1_axi_datamover_0_0_axi_datamover : entity is 1;
  attribute C_INCLUDE_S2MM_DRE : integer;
  attribute C_INCLUDE_S2MM_DRE of design_1_axi_datamover_0_0_axi_datamover : entity is 0;
  attribute C_INCLUDE_S2MM_STSFIFO : integer;
  attribute C_INCLUDE_S2MM_STSFIFO of design_1_axi_datamover_0_0_axi_datamover : entity is 1;
  attribute C_MCDMA : integer;
  attribute C_MCDMA of design_1_axi_datamover_0_0_axi_datamover : entity is 0;
  attribute C_MICRO_DMA : integer;
  attribute C_MICRO_DMA of design_1_axi_datamover_0_0_axi_datamover : entity is 0;
  attribute C_MM2S_ADDR_PIPE_DEPTH : integer;
  attribute C_MM2S_ADDR_PIPE_DEPTH of design_1_axi_datamover_0_0_axi_datamover : entity is 3;
  attribute C_MM2S_BTT_USED : integer;
  attribute C_MM2S_BTT_USED of design_1_axi_datamover_0_0_axi_datamover : entity is 16;
  attribute C_MM2S_BURST_SIZE : integer;
  attribute C_MM2S_BURST_SIZE of design_1_axi_datamover_0_0_axi_datamover : entity is 16;
  attribute C_MM2S_INCLUDE_SF : integer;
  attribute C_MM2S_INCLUDE_SF of design_1_axi_datamover_0_0_axi_datamover : entity is 0;
  attribute C_MM2S_STSCMD_FIFO_DEPTH : integer;
  attribute C_MM2S_STSCMD_FIFO_DEPTH of design_1_axi_datamover_0_0_axi_datamover : entity is 4;
  attribute C_MM2S_STSCMD_IS_ASYNC : integer;
  attribute C_MM2S_STSCMD_IS_ASYNC of design_1_axi_datamover_0_0_axi_datamover : entity is 0;
  attribute C_M_AXIS_MM2S_TDATA_WIDTH : integer;
  attribute C_M_AXIS_MM2S_TDATA_WIDTH of design_1_axi_datamover_0_0_axi_datamover : entity is 32;
  attribute C_M_AXI_MM2S_ADDR_WIDTH : integer;
  attribute C_M_AXI_MM2S_ADDR_WIDTH of design_1_axi_datamover_0_0_axi_datamover : entity is 32;
  attribute C_M_AXI_MM2S_ARID : integer;
  attribute C_M_AXI_MM2S_ARID of design_1_axi_datamover_0_0_axi_datamover : entity is 0;
  attribute C_M_AXI_MM2S_DATA_WIDTH : integer;
  attribute C_M_AXI_MM2S_DATA_WIDTH of design_1_axi_datamover_0_0_axi_datamover : entity is 32;
  attribute C_M_AXI_MM2S_ID_WIDTH : integer;
  attribute C_M_AXI_MM2S_ID_WIDTH of design_1_axi_datamover_0_0_axi_datamover : entity is 4;
  attribute C_M_AXI_S2MM_ADDR_WIDTH : integer;
  attribute C_M_AXI_S2MM_ADDR_WIDTH of design_1_axi_datamover_0_0_axi_datamover : entity is 32;
  attribute C_M_AXI_S2MM_AWID : integer;
  attribute C_M_AXI_S2MM_AWID of design_1_axi_datamover_0_0_axi_datamover : entity is 0;
  attribute C_M_AXI_S2MM_DATA_WIDTH : integer;
  attribute C_M_AXI_S2MM_DATA_WIDTH of design_1_axi_datamover_0_0_axi_datamover : entity is 128;
  attribute C_M_AXI_S2MM_ID_WIDTH : integer;
  attribute C_M_AXI_S2MM_ID_WIDTH of design_1_axi_datamover_0_0_axi_datamover : entity is 4;
  attribute C_S2MM_ADDR_PIPE_DEPTH : integer;
  attribute C_S2MM_ADDR_PIPE_DEPTH of design_1_axi_datamover_0_0_axi_datamover : entity is 4;
  attribute C_S2MM_BTT_USED : integer;
  attribute C_S2MM_BTT_USED of design_1_axi_datamover_0_0_axi_datamover : entity is 16;
  attribute C_S2MM_BURST_SIZE : integer;
  attribute C_S2MM_BURST_SIZE of design_1_axi_datamover_0_0_axi_datamover : entity is 256;
  attribute C_S2MM_INCLUDE_SF : integer;
  attribute C_S2MM_INCLUDE_SF of design_1_axi_datamover_0_0_axi_datamover : entity is 0;
  attribute C_S2MM_STSCMD_FIFO_DEPTH : integer;
  attribute C_S2MM_STSCMD_FIFO_DEPTH of design_1_axi_datamover_0_0_axi_datamover : entity is 4;
  attribute C_S2MM_STSCMD_IS_ASYNC : integer;
  attribute C_S2MM_STSCMD_IS_ASYNC of design_1_axi_datamover_0_0_axi_datamover : entity is 0;
  attribute C_S2MM_SUPPORT_INDET_BTT : integer;
  attribute C_S2MM_SUPPORT_INDET_BTT of design_1_axi_datamover_0_0_axi_datamover : entity is 0;
  attribute C_S_AXIS_S2MM_TDATA_WIDTH : integer;
  attribute C_S_AXIS_S2MM_TDATA_WIDTH of design_1_axi_datamover_0_0_axi_datamover : entity is 128;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_axi_datamover_0_0_axi_datamover : entity is "yes";
end design_1_axi_datamover_0_0_axi_datamover;

architecture STRUCTURE of design_1_axi_datamover_0_0_axi_datamover is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_s2mm_awburst\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_s2mm_awsize\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^mm2s_halt\ : STD_LOGIC;
  signal \^s2mm_dbg_data\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^mm2s_halt\ <= mm2s_halt;
  m_axi_mm2s_araddr(31) <= \<const0>\;
  m_axi_mm2s_araddr(30) <= \<const0>\;
  m_axi_mm2s_araddr(29) <= \<const0>\;
  m_axi_mm2s_araddr(28) <= \<const0>\;
  m_axi_mm2s_araddr(27) <= \<const0>\;
  m_axi_mm2s_araddr(26) <= \<const0>\;
  m_axi_mm2s_araddr(25) <= \<const0>\;
  m_axi_mm2s_araddr(24) <= \<const0>\;
  m_axi_mm2s_araddr(23) <= \<const0>\;
  m_axi_mm2s_araddr(22) <= \<const0>\;
  m_axi_mm2s_araddr(21) <= \<const0>\;
  m_axi_mm2s_araddr(20) <= \<const0>\;
  m_axi_mm2s_araddr(19) <= \<const0>\;
  m_axi_mm2s_araddr(18) <= \<const0>\;
  m_axi_mm2s_araddr(17) <= \<const0>\;
  m_axi_mm2s_araddr(16) <= \<const0>\;
  m_axi_mm2s_araddr(15) <= \<const0>\;
  m_axi_mm2s_araddr(14) <= \<const0>\;
  m_axi_mm2s_araddr(13) <= \<const0>\;
  m_axi_mm2s_araddr(12) <= \<const0>\;
  m_axi_mm2s_araddr(11) <= \<const0>\;
  m_axi_mm2s_araddr(10) <= \<const0>\;
  m_axi_mm2s_araddr(9) <= \<const0>\;
  m_axi_mm2s_araddr(8) <= \<const0>\;
  m_axi_mm2s_araddr(7) <= \<const0>\;
  m_axi_mm2s_araddr(6) <= \<const0>\;
  m_axi_mm2s_araddr(5) <= \<const0>\;
  m_axi_mm2s_araddr(4) <= \<const0>\;
  m_axi_mm2s_araddr(3) <= \<const0>\;
  m_axi_mm2s_araddr(2) <= \<const0>\;
  m_axi_mm2s_araddr(1) <= \<const0>\;
  m_axi_mm2s_araddr(0) <= \<const0>\;
  m_axi_mm2s_arburst(1) <= \<const0>\;
  m_axi_mm2s_arburst(0) <= \<const0>\;
  m_axi_mm2s_arcache(3) <= \<const0>\;
  m_axi_mm2s_arcache(2) <= \<const0>\;
  m_axi_mm2s_arcache(1) <= \<const0>\;
  m_axi_mm2s_arcache(0) <= \<const0>\;
  m_axi_mm2s_arid(3) <= \<const0>\;
  m_axi_mm2s_arid(2) <= \<const0>\;
  m_axi_mm2s_arid(1) <= \<const0>\;
  m_axi_mm2s_arid(0) <= \<const0>\;
  m_axi_mm2s_arlen(7) <= \<const0>\;
  m_axi_mm2s_arlen(6) <= \<const0>\;
  m_axi_mm2s_arlen(5) <= \<const0>\;
  m_axi_mm2s_arlen(4) <= \<const0>\;
  m_axi_mm2s_arlen(3) <= \<const0>\;
  m_axi_mm2s_arlen(2) <= \<const0>\;
  m_axi_mm2s_arlen(1) <= \<const0>\;
  m_axi_mm2s_arlen(0) <= \<const0>\;
  m_axi_mm2s_arprot(2) <= \<const0>\;
  m_axi_mm2s_arprot(1) <= \<const0>\;
  m_axi_mm2s_arprot(0) <= \<const0>\;
  m_axi_mm2s_arsize(2) <= \<const0>\;
  m_axi_mm2s_arsize(1) <= \<const0>\;
  m_axi_mm2s_arsize(0) <= \<const0>\;
  m_axi_mm2s_aruser(3) <= \<const0>\;
  m_axi_mm2s_aruser(2) <= \<const0>\;
  m_axi_mm2s_aruser(1) <= \<const0>\;
  m_axi_mm2s_aruser(0) <= \<const0>\;
  m_axi_mm2s_arvalid <= \<const0>\;
  m_axi_mm2s_rready <= \<const0>\;
  m_axi_s2mm_awburst(1) <= \<const0>\;
  m_axi_s2mm_awburst(0) <= \^m_axi_s2mm_awburst\(0);
  m_axi_s2mm_awcache(3) <= \<const0>\;
  m_axi_s2mm_awcache(2) <= \<const0>\;
  m_axi_s2mm_awcache(1) <= \<const1>\;
  m_axi_s2mm_awcache(0) <= \<const1>\;
  m_axi_s2mm_awid(3) <= \<const0>\;
  m_axi_s2mm_awid(2) <= \<const0>\;
  m_axi_s2mm_awid(1) <= \<const0>\;
  m_axi_s2mm_awid(0) <= \<const0>\;
  m_axi_s2mm_awprot(2) <= \<const0>\;
  m_axi_s2mm_awprot(1) <= \<const0>\;
  m_axi_s2mm_awprot(0) <= \<const0>\;
  m_axi_s2mm_awsize(2) <= \^m_axi_s2mm_awsize\(2);
  m_axi_s2mm_awsize(1) <= \<const0>\;
  m_axi_s2mm_awsize(0) <= \<const0>\;
  m_axi_s2mm_awuser(3) <= \<const0>\;
  m_axi_s2mm_awuser(2) <= \<const0>\;
  m_axi_s2mm_awuser(1) <= \<const0>\;
  m_axi_s2mm_awuser(0) <= \<const0>\;
  m_axis_mm2s_sts_tdata(7) <= \<const0>\;
  m_axis_mm2s_sts_tdata(6) <= \<const0>\;
  m_axis_mm2s_sts_tdata(5) <= \<const0>\;
  m_axis_mm2s_sts_tdata(4) <= \<const0>\;
  m_axis_mm2s_sts_tdata(3) <= \<const0>\;
  m_axis_mm2s_sts_tdata(2) <= \<const0>\;
  m_axis_mm2s_sts_tdata(1) <= \<const0>\;
  m_axis_mm2s_sts_tdata(0) <= \<const0>\;
  m_axis_mm2s_sts_tkeep(0) <= \<const0>\;
  m_axis_mm2s_sts_tlast <= \<const0>\;
  m_axis_mm2s_sts_tvalid <= \<const0>\;
  m_axis_mm2s_tdata(31) <= \<const0>\;
  m_axis_mm2s_tdata(30) <= \<const0>\;
  m_axis_mm2s_tdata(29) <= \<const0>\;
  m_axis_mm2s_tdata(28) <= \<const0>\;
  m_axis_mm2s_tdata(27) <= \<const0>\;
  m_axis_mm2s_tdata(26) <= \<const0>\;
  m_axis_mm2s_tdata(25) <= \<const0>\;
  m_axis_mm2s_tdata(24) <= \<const0>\;
  m_axis_mm2s_tdata(23) <= \<const0>\;
  m_axis_mm2s_tdata(22) <= \<const0>\;
  m_axis_mm2s_tdata(21) <= \<const0>\;
  m_axis_mm2s_tdata(20) <= \<const0>\;
  m_axis_mm2s_tdata(19) <= \<const0>\;
  m_axis_mm2s_tdata(18) <= \<const0>\;
  m_axis_mm2s_tdata(17) <= \<const0>\;
  m_axis_mm2s_tdata(16) <= \<const0>\;
  m_axis_mm2s_tdata(15) <= \<const0>\;
  m_axis_mm2s_tdata(14) <= \<const0>\;
  m_axis_mm2s_tdata(13) <= \<const0>\;
  m_axis_mm2s_tdata(12) <= \<const0>\;
  m_axis_mm2s_tdata(11) <= \<const0>\;
  m_axis_mm2s_tdata(10) <= \<const0>\;
  m_axis_mm2s_tdata(9) <= \<const0>\;
  m_axis_mm2s_tdata(8) <= \<const0>\;
  m_axis_mm2s_tdata(7) <= \<const0>\;
  m_axis_mm2s_tdata(6) <= \<const0>\;
  m_axis_mm2s_tdata(5) <= \<const0>\;
  m_axis_mm2s_tdata(4) <= \<const0>\;
  m_axis_mm2s_tdata(3) <= \<const0>\;
  m_axis_mm2s_tdata(2) <= \<const0>\;
  m_axis_mm2s_tdata(1) <= \<const0>\;
  m_axis_mm2s_tdata(0) <= \<const0>\;
  m_axis_mm2s_tkeep(3) <= \<const0>\;
  m_axis_mm2s_tkeep(2) <= \<const0>\;
  m_axis_mm2s_tkeep(1) <= \<const0>\;
  m_axis_mm2s_tkeep(0) <= \<const0>\;
  m_axis_mm2s_tlast <= \<const0>\;
  m_axis_mm2s_tvalid <= \<const0>\;
  m_axis_s2mm_sts_tkeep(0) <= \<const1>\;
  m_axis_s2mm_sts_tlast <= \<const1>\;
  mm2s_addr_req_posted <= \<const0>\;
  mm2s_dbg_data(31) <= \<const1>\;
  mm2s_dbg_data(30) <= \<const0>\;
  mm2s_dbg_data(29) <= \<const1>\;
  mm2s_dbg_data(28) <= \<const1>\;
  mm2s_dbg_data(27) <= \<const1>\;
  mm2s_dbg_data(26) <= \<const1>\;
  mm2s_dbg_data(25) <= \<const1>\;
  mm2s_dbg_data(24) <= \<const0>\;
  mm2s_dbg_data(23) <= \<const1>\;
  mm2s_dbg_data(22) <= \<const1>\;
  mm2s_dbg_data(21) <= \<const1>\;
  mm2s_dbg_data(20) <= \<const0>\;
  mm2s_dbg_data(19) <= \<const1>\;
  mm2s_dbg_data(18) <= \<const1>\;
  mm2s_dbg_data(17) <= \<const1>\;
  mm2s_dbg_data(16) <= \<const1>\;
  mm2s_dbg_data(15) <= \<const0>\;
  mm2s_dbg_data(14) <= \<const0>\;
  mm2s_dbg_data(13) <= \<const0>\;
  mm2s_dbg_data(12) <= \<const0>\;
  mm2s_dbg_data(11) <= \<const0>\;
  mm2s_dbg_data(10) <= \<const0>\;
  mm2s_dbg_data(9) <= \<const0>\;
  mm2s_dbg_data(8) <= \<const0>\;
  mm2s_dbg_data(7) <= \<const0>\;
  mm2s_dbg_data(6) <= \<const0>\;
  mm2s_dbg_data(5) <= \<const0>\;
  mm2s_dbg_data(4) <= \<const0>\;
  mm2s_dbg_data(3) <= \<const0>\;
  mm2s_dbg_data(2) <= \<const0>\;
  mm2s_dbg_data(1) <= \<const0>\;
  mm2s_dbg_data(0) <= \<const0>\;
  mm2s_err <= \<const0>\;
  mm2s_halt_cmplt <= \^mm2s_halt\;
  mm2s_rd_xfer_cmplt <= \<const0>\;
  s2mm_dbg_data(31 downto 3) <= \^s2mm_dbg_data\(31 downto 3);
  s2mm_dbg_data(2) <= \^s2mm_dbg_data\(3);
  s2mm_dbg_data(1) <= \^s2mm_dbg_data\(3);
  s2mm_dbg_data(0) <= \^s2mm_dbg_data\(0);
  s_axis_mm2s_cmd_tready <= \<const0>\;
\GEN_S2MM_FULL.I_S2MM_FULL_WRAPPER\: entity work.design_1_axi_datamover_0_0_axi_datamover_s2mm_full_wrap
     port map (
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_aresetn => m_axi_s2mm_aresetn,
      m_axi_s2mm_awaddr(31 downto 0) => m_axi_s2mm_awaddr(31 downto 0),
      m_axi_s2mm_awburst(0) => \^m_axi_s2mm_awburst\(0),
      m_axi_s2mm_awlen(7 downto 0) => m_axi_s2mm_awlen(7 downto 0),
      m_axi_s2mm_awready => m_axi_s2mm_awready,
      m_axi_s2mm_awsize(0) => \^m_axi_s2mm_awsize\(2),
      m_axi_s2mm_awvalid => m_axi_s2mm_awvalid,
      m_axi_s2mm_bready => m_axi_s2mm_bready,
      m_axi_s2mm_bresp(1 downto 0) => m_axi_s2mm_bresp(1 downto 0),
      m_axi_s2mm_bvalid => m_axi_s2mm_bvalid,
      m_axi_s2mm_wdata(127 downto 0) => m_axi_s2mm_wdata(127 downto 0),
      m_axi_s2mm_wlast => m_axi_s2mm_wlast,
      m_axi_s2mm_wready => m_axi_s2mm_wready,
      m_axi_s2mm_wstrb(15 downto 0) => m_axi_s2mm_wstrb(15 downto 0),
      m_axi_s2mm_wvalid => m_axi_s2mm_wvalid,
      m_axis_s2mm_sts_tdata(7 downto 0) => m_axis_s2mm_sts_tdata(7 downto 0),
      m_axis_s2mm_sts_tready => m_axis_s2mm_sts_tready,
      m_axis_s2mm_sts_tvalid => m_axis_s2mm_sts_tvalid,
      s2mm_addr_req_posted => s2mm_addr_req_posted,
      s2mm_allow_addr_req => s2mm_allow_addr_req,
      s2mm_dbg_data(28 downto 17) => \^s2mm_dbg_data\(31 downto 20),
      s2mm_dbg_data(16 downto 1) => \^s2mm_dbg_data\(18 downto 3),
      s2mm_dbg_data(0) => \^s2mm_dbg_data\(0),
      s2mm_dbg_sel(0) => s2mm_dbg_sel(0),
      s2mm_err => s2mm_err,
      s2mm_halt => s2mm_halt,
      s2mm_halt_cmplt => s2mm_halt_cmplt,
      s2mm_ld_nxt_len => s2mm_ld_nxt_len,
      s2mm_wr_len(7 downto 0) => s2mm_wr_len(7 downto 0),
      s2mm_wr_xfer_cmplt => s2mm_wr_xfer_cmplt,
      s_axis_s2mm_cmd_tdata(53 downto 18) => s_axis_s2mm_cmd_tdata(67 downto 32),
      s_axis_s2mm_cmd_tdata(17) => s_axis_s2mm_cmd_tdata(30),
      s_axis_s2mm_cmd_tdata(16) => s_axis_s2mm_cmd_tdata(23),
      s_axis_s2mm_cmd_tdata(15 downto 0) => s_axis_s2mm_cmd_tdata(15 downto 0),
      s_axis_s2mm_cmd_tready => s_axis_s2mm_cmd_tready,
      s_axis_s2mm_cmd_tvalid => s_axis_s2mm_cmd_tvalid,
      s_axis_s2mm_tdata(127 downto 0) => s_axis_s2mm_tdata(127 downto 0),
      s_axis_s2mm_tkeep(15 downto 0) => s_axis_s2mm_tkeep(15 downto 0),
      s_axis_s2mm_tlast => s_axis_s2mm_tlast,
      s_axis_s2mm_tready => s_axis_s2mm_tready,
      s_axis_s2mm_tvalid => s_axis_s2mm_tvalid
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\s2mm_dbg_data[19]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s2mm_dbg_sel(0),
      O => \^s2mm_dbg_data\(19)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_datamover_0_0 is
  port (
    m_axi_s2mm_aclk : in STD_LOGIC;
    m_axi_s2mm_aresetn : in STD_LOGIC;
    s2mm_halt : in STD_LOGIC;
    s2mm_halt_cmplt : out STD_LOGIC;
    s2mm_err : out STD_LOGIC;
    m_axis_s2mm_cmdsts_awclk : in STD_LOGIC;
    m_axis_s2mm_cmdsts_aresetn : in STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    s_axis_s2mm_cmd_tready : out STD_LOGIC;
    s_axis_s2mm_cmd_tdata : in STD_LOGIC_VECTOR ( 71 downto 0 );
    m_axis_s2mm_sts_tvalid : out STD_LOGIC;
    m_axis_s2mm_sts_tready : in STD_LOGIC;
    m_axis_s2mm_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_s2mm_sts_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_s2mm_sts_tlast : out STD_LOGIC;
    s2mm_allow_addr_req : in STD_LOGIC;
    s2mm_addr_req_posted : out STD_LOGIC;
    s2mm_wr_xfer_cmplt : out STD_LOGIC;
    s2mm_ld_nxt_len : out STD_LOGIC;
    s2mm_wr_len : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_s2mm_tlast : in STD_LOGIC;
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s2mm_dbg_sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s2mm_dbg_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi_datamover_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_datamover_0_0 : entity is "design_1_axi_datamover_0_0,axi_datamover,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_axi_datamover_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_axi_datamover_0_0 : entity is "axi_datamover,Vivado 2020.1";
end design_1_axi_datamover_0_0;

architecture STRUCTURE of design_1_axi_datamover_0_0 is
  signal NLW_U0_m_axi_mm2s_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_mm2s_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_mm2s_sts_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_mm2s_sts_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_mm2s_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_mm2s_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_mm2s_addr_req_posted_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_mm2s_err_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_mm2s_halt_cmplt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_mm2s_rd_xfer_cmplt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_mm2s_cmd_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_mm2s_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_mm2s_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_mm2s_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_mm2s_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_mm2s_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_mm2s_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_mm2s_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_mm2s_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axis_mm2s_sts_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_mm2s_sts_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_mm2s_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_mm2s_dbg_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_CMD_WIDTH : integer;
  attribute C_CMD_WIDTH of U0 : label is 72;
  attribute C_ENABLE_CACHE_USER : integer;
  attribute C_ENABLE_CACHE_USER of U0 : label is 0;
  attribute C_ENABLE_MM2S_ADV_SIG : integer;
  attribute C_ENABLE_MM2S_ADV_SIG of U0 : label is 0;
  attribute C_ENABLE_MM2S_TKEEP : integer;
  attribute C_ENABLE_MM2S_TKEEP of U0 : label is 1;
  attribute C_ENABLE_S2MM_ADV_SIG : integer;
  attribute C_ENABLE_S2MM_ADV_SIG of U0 : label is 1;
  attribute C_ENABLE_S2MM_TKEEP : integer;
  attribute C_ENABLE_S2MM_TKEEP of U0 : label is 1;
  attribute C_ENABLE_SKID_BUF : string;
  attribute C_ENABLE_SKID_BUF of U0 : label is "11111";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_INCLUDE_MM2S : integer;
  attribute C_INCLUDE_MM2S of U0 : label is 0;
  attribute C_INCLUDE_MM2S_DRE : integer;
  attribute C_INCLUDE_MM2S_DRE of U0 : label is 0;
  attribute C_INCLUDE_MM2S_STSFIFO : integer;
  attribute C_INCLUDE_MM2S_STSFIFO of U0 : label is 0;
  attribute C_INCLUDE_S2MM : integer;
  attribute C_INCLUDE_S2MM of U0 : label is 1;
  attribute C_INCLUDE_S2MM_DRE : integer;
  attribute C_INCLUDE_S2MM_DRE of U0 : label is 0;
  attribute C_INCLUDE_S2MM_STSFIFO : integer;
  attribute C_INCLUDE_S2MM_STSFIFO of U0 : label is 1;
  attribute C_MCDMA : integer;
  attribute C_MCDMA of U0 : label is 0;
  attribute C_MICRO_DMA : integer;
  attribute C_MICRO_DMA of U0 : label is 0;
  attribute C_MM2S_ADDR_PIPE_DEPTH : integer;
  attribute C_MM2S_ADDR_PIPE_DEPTH of U0 : label is 3;
  attribute C_MM2S_BTT_USED : integer;
  attribute C_MM2S_BTT_USED of U0 : label is 16;
  attribute C_MM2S_BURST_SIZE : integer;
  attribute C_MM2S_BURST_SIZE of U0 : label is 16;
  attribute C_MM2S_INCLUDE_SF : integer;
  attribute C_MM2S_INCLUDE_SF of U0 : label is 0;
  attribute C_MM2S_STSCMD_FIFO_DEPTH : integer;
  attribute C_MM2S_STSCMD_FIFO_DEPTH of U0 : label is 4;
  attribute C_MM2S_STSCMD_IS_ASYNC : integer;
  attribute C_MM2S_STSCMD_IS_ASYNC of U0 : label is 0;
  attribute C_M_AXIS_MM2S_TDATA_WIDTH : integer;
  attribute C_M_AXIS_MM2S_TDATA_WIDTH of U0 : label is 32;
  attribute C_M_AXI_MM2S_ADDR_WIDTH : integer;
  attribute C_M_AXI_MM2S_ADDR_WIDTH of U0 : label is 32;
  attribute C_M_AXI_MM2S_ARID : integer;
  attribute C_M_AXI_MM2S_ARID of U0 : label is 0;
  attribute C_M_AXI_MM2S_DATA_WIDTH : integer;
  attribute C_M_AXI_MM2S_DATA_WIDTH of U0 : label is 32;
  attribute C_M_AXI_MM2S_ID_WIDTH : integer;
  attribute C_M_AXI_MM2S_ID_WIDTH of U0 : label is 4;
  attribute C_M_AXI_S2MM_ADDR_WIDTH : integer;
  attribute C_M_AXI_S2MM_ADDR_WIDTH of U0 : label is 32;
  attribute C_M_AXI_S2MM_AWID : integer;
  attribute C_M_AXI_S2MM_AWID of U0 : label is 0;
  attribute C_M_AXI_S2MM_DATA_WIDTH : integer;
  attribute C_M_AXI_S2MM_DATA_WIDTH of U0 : label is 128;
  attribute C_M_AXI_S2MM_ID_WIDTH : integer;
  attribute C_M_AXI_S2MM_ID_WIDTH of U0 : label is 4;
  attribute C_S2MM_ADDR_PIPE_DEPTH : integer;
  attribute C_S2MM_ADDR_PIPE_DEPTH of U0 : label is 4;
  attribute C_S2MM_BTT_USED : integer;
  attribute C_S2MM_BTT_USED of U0 : label is 16;
  attribute C_S2MM_BURST_SIZE : integer;
  attribute C_S2MM_BURST_SIZE of U0 : label is 256;
  attribute C_S2MM_INCLUDE_SF : integer;
  attribute C_S2MM_INCLUDE_SF of U0 : label is 0;
  attribute C_S2MM_STSCMD_FIFO_DEPTH : integer;
  attribute C_S2MM_STSCMD_FIFO_DEPTH of U0 : label is 4;
  attribute C_S2MM_STSCMD_IS_ASYNC : integer;
  attribute C_S2MM_STSCMD_IS_ASYNC of U0 : label is 0;
  attribute C_S2MM_SUPPORT_INDET_BTT : integer;
  attribute C_S2MM_SUPPORT_INDET_BTT of U0 : label is 0;
  attribute C_S_AXIS_S2MM_TDATA_WIDTH : integer;
  attribute C_S_AXIS_S2MM_TDATA_WIDTH of U0 : label is 128;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of m_axi_s2mm_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXI_S2MM_ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m_axi_s2mm_aclk : signal is "XIL_INTERFACENAME M_AXI_S2MM_ACLK, ASSOCIATED_BUSIF M_AXI_S2MM:S_AXIS_S2MM, ASSOCIATED_RESET m_axi_s2mm_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, INSERT_VIP 0";
  attribute x_interface_info of m_axi_s2mm_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXI_S2MM_ARESETN RST";
  attribute x_interface_parameter of m_axi_s2mm_aresetn : signal is "XIL_INTERFACENAME M_AXI_S2MM_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axi_s2mm_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWREADY";
  attribute x_interface_info of m_axi_s2mm_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWVALID";
  attribute x_interface_info of m_axi_s2mm_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BREADY";
  attribute x_interface_info of m_axi_s2mm_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BVALID";
  attribute x_interface_info of m_axi_s2mm_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WLAST";
  attribute x_interface_info of m_axi_s2mm_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WREADY";
  attribute x_interface_info of m_axi_s2mm_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WVALID";
  attribute x_interface_info of m_axis_s2mm_cmdsts_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXIS_S2MM_CMDSTS_ARESETN RST";
  attribute x_interface_parameter of m_axis_s2mm_cmdsts_aresetn : signal is "XIL_INTERFACENAME M_AXIS_S2MM_CMDSTS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_s2mm_cmdsts_awclk : signal is "xilinx.com:signal:clock:1.0 M_AXIS_S2MM_CMDSTS_AWCLK CLK";
  attribute x_interface_parameter of m_axis_s2mm_cmdsts_awclk : signal is "XIL_INTERFACENAME M_AXIS_S2MM_CMDSTS_AWCLK, ASSOCIATED_BUSIF S_AXIS_S2MM_CMD:M_AXIS_S2MM_STS, ASSOCIATED_RESET m_axis_s2mm_cmdsts_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, INSERT_VIP 0";
  attribute x_interface_info of m_axis_s2mm_sts_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TLAST";
  attribute x_interface_info of m_axis_s2mm_sts_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TREADY";
  attribute x_interface_info of m_axis_s2mm_sts_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TVALID";
  attribute x_interface_parameter of m_axis_s2mm_sts_tvalid : signal is "XIL_INTERFACENAME M_AXIS_S2MM_STS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_s2mm_cmd_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_CMD TREADY";
  attribute x_interface_info of s_axis_s2mm_cmd_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_CMD TVALID";
  attribute x_interface_parameter of s_axis_s2mm_cmd_tvalid : signal is "XIL_INTERFACENAME S_AXIS_S2MM_CMD, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_s2mm_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TLAST";
  attribute x_interface_info of s_axis_s2mm_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TREADY";
  attribute x_interface_info of s_axis_s2mm_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TVALID";
  attribute x_interface_info of m_axi_s2mm_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWADDR";
  attribute x_interface_info of m_axi_s2mm_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWBURST";
  attribute x_interface_info of m_axi_s2mm_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWCACHE";
  attribute x_interface_info of m_axi_s2mm_awid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWID";
  attribute x_interface_parameter of m_axi_s2mm_awid : signal is "XIL_INTERFACENAME M_AXI_S2MM, NUM_WRITE_OUTSTANDING 2, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 4, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_s2mm_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWLEN";
  attribute x_interface_info of m_axi_s2mm_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWPROT";
  attribute x_interface_info of m_axi_s2mm_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWSIZE";
  attribute x_interface_info of m_axi_s2mm_awuser : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWUSER";
  attribute x_interface_info of m_axi_s2mm_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BRESP";
  attribute x_interface_info of m_axi_s2mm_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WDATA";
  attribute x_interface_info of m_axi_s2mm_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WSTRB";
  attribute x_interface_info of m_axis_s2mm_sts_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TDATA";
  attribute x_interface_info of m_axis_s2mm_sts_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TKEEP";
  attribute x_interface_info of s_axis_s2mm_cmd_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_CMD TDATA";
  attribute x_interface_info of s_axis_s2mm_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TDATA";
  attribute x_interface_parameter of s_axis_s2mm_tdata : signal is "XIL_INTERFACENAME S_AXIS_S2MM, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_s2mm_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TKEEP";
begin
U0: entity work.design_1_axi_datamover_0_0_axi_datamover
     port map (
      m_axi_mm2s_aclk => '0',
      m_axi_mm2s_araddr(31 downto 0) => NLW_U0_m_axi_mm2s_araddr_UNCONNECTED(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => NLW_U0_m_axi_mm2s_arburst_UNCONNECTED(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => NLW_U0_m_axi_mm2s_arcache_UNCONNECTED(3 downto 0),
      m_axi_mm2s_aresetn => '1',
      m_axi_mm2s_arid(3 downto 0) => NLW_U0_m_axi_mm2s_arid_UNCONNECTED(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => NLW_U0_m_axi_mm2s_arlen_UNCONNECTED(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => NLW_U0_m_axi_mm2s_arprot_UNCONNECTED(2 downto 0),
      m_axi_mm2s_arready => '0',
      m_axi_mm2s_arsize(2 downto 0) => NLW_U0_m_axi_mm2s_arsize_UNCONNECTED(2 downto 0),
      m_axi_mm2s_aruser(3 downto 0) => NLW_U0_m_axi_mm2s_aruser_UNCONNECTED(3 downto 0),
      m_axi_mm2s_arvalid => NLW_U0_m_axi_mm2s_arvalid_UNCONNECTED,
      m_axi_mm2s_rdata(31 downto 0) => B"00000000000000000000000000000000",
      m_axi_mm2s_rlast => '0',
      m_axi_mm2s_rready => NLW_U0_m_axi_mm2s_rready_UNCONNECTED,
      m_axi_mm2s_rresp(1 downto 0) => B"00",
      m_axi_mm2s_rvalid => '0',
      m_axi_s2mm_aclk => m_axi_s2mm_aclk,
      m_axi_s2mm_aresetn => m_axi_s2mm_aresetn,
      m_axi_s2mm_awaddr(31 downto 0) => m_axi_s2mm_awaddr(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => m_axi_s2mm_awburst(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => m_axi_s2mm_awcache(3 downto 0),
      m_axi_s2mm_awid(3 downto 0) => m_axi_s2mm_awid(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => m_axi_s2mm_awlen(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => m_axi_s2mm_awprot(2 downto 0),
      m_axi_s2mm_awready => m_axi_s2mm_awready,
      m_axi_s2mm_awsize(2 downto 0) => m_axi_s2mm_awsize(2 downto 0),
      m_axi_s2mm_awuser(3 downto 0) => m_axi_s2mm_awuser(3 downto 0),
      m_axi_s2mm_awvalid => m_axi_s2mm_awvalid,
      m_axi_s2mm_bready => m_axi_s2mm_bready,
      m_axi_s2mm_bresp(1 downto 0) => m_axi_s2mm_bresp(1 downto 0),
      m_axi_s2mm_bvalid => m_axi_s2mm_bvalid,
      m_axi_s2mm_wdata(127 downto 0) => m_axi_s2mm_wdata(127 downto 0),
      m_axi_s2mm_wlast => m_axi_s2mm_wlast,
      m_axi_s2mm_wready => m_axi_s2mm_wready,
      m_axi_s2mm_wstrb(15 downto 0) => m_axi_s2mm_wstrb(15 downto 0),
      m_axi_s2mm_wvalid => m_axi_s2mm_wvalid,
      m_axis_mm2s_cmdsts_aclk => '0',
      m_axis_mm2s_cmdsts_aresetn => '1',
      m_axis_mm2s_sts_tdata(7 downto 0) => NLW_U0_m_axis_mm2s_sts_tdata_UNCONNECTED(7 downto 0),
      m_axis_mm2s_sts_tkeep(0) => NLW_U0_m_axis_mm2s_sts_tkeep_UNCONNECTED(0),
      m_axis_mm2s_sts_tlast => NLW_U0_m_axis_mm2s_sts_tlast_UNCONNECTED,
      m_axis_mm2s_sts_tready => '0',
      m_axis_mm2s_sts_tvalid => NLW_U0_m_axis_mm2s_sts_tvalid_UNCONNECTED,
      m_axis_mm2s_tdata(31 downto 0) => NLW_U0_m_axis_mm2s_tdata_UNCONNECTED(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => NLW_U0_m_axis_mm2s_tkeep_UNCONNECTED(3 downto 0),
      m_axis_mm2s_tlast => NLW_U0_m_axis_mm2s_tlast_UNCONNECTED,
      m_axis_mm2s_tready => '0',
      m_axis_mm2s_tvalid => NLW_U0_m_axis_mm2s_tvalid_UNCONNECTED,
      m_axis_s2mm_cmdsts_aresetn => m_axis_s2mm_cmdsts_aresetn,
      m_axis_s2mm_cmdsts_awclk => m_axis_s2mm_cmdsts_awclk,
      m_axis_s2mm_sts_tdata(7 downto 0) => m_axis_s2mm_sts_tdata(7 downto 0),
      m_axis_s2mm_sts_tkeep(0) => m_axis_s2mm_sts_tkeep(0),
      m_axis_s2mm_sts_tlast => m_axis_s2mm_sts_tlast,
      m_axis_s2mm_sts_tready => m_axis_s2mm_sts_tready,
      m_axis_s2mm_sts_tvalid => m_axis_s2mm_sts_tvalid,
      mm2s_addr_req_posted => NLW_U0_mm2s_addr_req_posted_UNCONNECTED,
      mm2s_allow_addr_req => '1',
      mm2s_dbg_data(31 downto 0) => NLW_U0_mm2s_dbg_data_UNCONNECTED(31 downto 0),
      mm2s_dbg_sel(3 downto 0) => B"0000",
      mm2s_err => NLW_U0_mm2s_err_UNCONNECTED,
      mm2s_halt => '0',
      mm2s_halt_cmplt => NLW_U0_mm2s_halt_cmplt_UNCONNECTED,
      mm2s_rd_xfer_cmplt => NLW_U0_mm2s_rd_xfer_cmplt_UNCONNECTED,
      s2mm_addr_req_posted => s2mm_addr_req_posted,
      s2mm_allow_addr_req => s2mm_allow_addr_req,
      s2mm_dbg_data(31 downto 0) => s2mm_dbg_data(31 downto 0),
      s2mm_dbg_sel(3 downto 0) => s2mm_dbg_sel(3 downto 0),
      s2mm_err => s2mm_err,
      s2mm_halt => s2mm_halt,
      s2mm_halt_cmplt => s2mm_halt_cmplt,
      s2mm_ld_nxt_len => s2mm_ld_nxt_len,
      s2mm_wr_len(7 downto 0) => s2mm_wr_len(7 downto 0),
      s2mm_wr_xfer_cmplt => s2mm_wr_xfer_cmplt,
      s_axis_mm2s_cmd_tdata(71 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axis_mm2s_cmd_tready => NLW_U0_s_axis_mm2s_cmd_tready_UNCONNECTED,
      s_axis_mm2s_cmd_tvalid => '0',
      s_axis_s2mm_cmd_tdata(71 downto 0) => s_axis_s2mm_cmd_tdata(71 downto 0),
      s_axis_s2mm_cmd_tready => s_axis_s2mm_cmd_tready,
      s_axis_s2mm_cmd_tvalid => s_axis_s2mm_cmd_tvalid,
      s_axis_s2mm_tdata(127 downto 0) => s_axis_s2mm_tdata(127 downto 0),
      s_axis_s2mm_tkeep(15 downto 0) => s_axis_s2mm_tkeep(15 downto 0),
      s_axis_s2mm_tlast => s_axis_s2mm_tlast,
      s_axis_s2mm_tready => s_axis_s2mm_tready,
      s_axis_s2mm_tvalid => s_axis_s2mm_tvalid
    );
end STRUCTURE;
