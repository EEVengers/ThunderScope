-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Mar 23 12:15:02 2021
-- Host        : DESKTOP-J72MK93 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_auto_us_df_1 -prefix
--               design_1_auto_us_df_1_ design_1_auto_us_df_1_sim_netlist.vhdl
-- Design      : design_1_auto_us_df_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_axi_register_slice_v2_1_21_axic_register_slice is
  port (
    \aresetn_d_reg[1]_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_WREADY_i_reg : out STD_LOGIC;
    \FSM_sequential_si_state_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \si_ptr_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_WREADY_i_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \si_wrap_cnt_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_si_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_WREADY_i_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_push_block0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    \FSM_sequential_si_state_reg[0]\ : out STD_LOGIC;
    \si_be_reg[15]\ : out STD_LOGIC;
    s_ready_i_reg_1 : out STD_LOGIC;
    s_axi_wlast_0 : out STD_LOGIC;
    s_axi_wlast_1 : out STD_LOGIC;
    \buf_cnt_reg[1]\ : out STD_LOGIC;
    \buf_cnt_reg[1]_0\ : out STD_LOGIC;
    \m_payload_i_reg[66]_0\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awsize : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \aresetn_d_reg[1]_1\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \si_buf_reg[1]\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    si_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_176_in : in STD_LOGIC;
    \FSM_sequential_si_state_reg[0]_0\ : in STD_LOGIC;
    si_wrap_word_next : in STD_LOGIC;
    \si_ptr_reg[0]\ : in STD_LOGIC;
    word : in STD_LOGIC;
    \m_payload_i_reg[61]_0\ : in STD_LOGIC_VECTOR ( 45 downto 0 );
    \si_be_reg[0]\ : in STD_LOGIC;
    \si_be_reg[0]_0\ : in STD_LOGIC;
    \si_be_reg[1]\ : in STD_LOGIC;
    \si_be_reg[1]_0\ : in STD_LOGIC;
    \si_be_reg[2]\ : in STD_LOGIC;
    \si_be_reg[2]_0\ : in STD_LOGIC;
    \si_be_reg[3]\ : in STD_LOGIC;
    \si_be_reg[3]_0\ : in STD_LOGIC;
    \si_be_reg[4]\ : in STD_LOGIC;
    \si_be_reg[4]_0\ : in STD_LOGIC;
    \si_be_reg[5]\ : in STD_LOGIC;
    \si_be_reg[5]_0\ : in STD_LOGIC;
    \si_be_reg[6]\ : in STD_LOGIC;
    \si_be_reg[6]_0\ : in STD_LOGIC;
    \si_be_reg[7]\ : in STD_LOGIC;
    \si_be_reg[7]_0\ : in STD_LOGIC;
    \si_be_reg[8]\ : in STD_LOGIC;
    \si_be_reg[8]_0\ : in STD_LOGIC;
    \si_be_reg[9]\ : in STD_LOGIC;
    \si_be_reg[9]_0\ : in STD_LOGIC;
    \si_be_reg[10]\ : in STD_LOGIC;
    \si_be_reg[10]_0\ : in STD_LOGIC;
    \si_be_reg[11]\ : in STD_LOGIC;
    \si_be_reg[11]_0\ : in STD_LOGIC;
    \si_be_reg[12]\ : in STD_LOGIC;
    \si_be_reg[12]_0\ : in STD_LOGIC;
    \si_be_reg[13]\ : in STD_LOGIC;
    \si_be_reg[13]_0\ : in STD_LOGIC;
    \si_be_reg[14]\ : in STD_LOGIC;
    \si_be_reg[14]_0\ : in STD_LOGIC;
    \si_be_reg[15]_0\ : in STD_LOGIC;
    \si_be_reg[15]_1\ : in STD_LOGIC;
    \si_be_reg[15]_2\ : in STD_LOGIC;
    \si_be_reg[15]_3\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \si_ptr_reg[1]\ : in STD_LOGIC;
    \si_ptr_reg[2]\ : in STD_LOGIC;
    \si_ptr_reg[6]\ : in STD_LOGIC;
    \si_wrap_cnt_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \si_wrap_cnt_reg[1]\ : in STD_LOGIC;
    \si_wrap_cnt_reg[2]\ : in STD_LOGIC;
    \si_wrap_cnt_reg[3]_1\ : in STD_LOGIC;
    \si_be_reg[0]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \si_ptr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    buf_cnt : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : in STD_LOGIC;
    \aresetn_d_reg[1]_2\ : in STD_LOGIC;
    m_valid_i_reg_inv_0 : in STD_LOGIC;
    m_valid_i_reg_inv_1 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    aw_pop : in STD_LOGIC;
    \m_payload_i_reg[66]_1\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \m_payload_i_reg[35]_0\ : in STD_LOGIC
  );
end design_1_auto_us_df_1_axi_register_slice_v2_1_21_axic_register_slice;

architecture STRUCTURE of design_1_auto_us_df_1_axi_register_slice_v2_1_21_axic_register_slice is
  signal \^fsm_sequential_si_state_reg[1]\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_wready_i_reg\ : STD_LOGIC;
  signal S_AXI_WREADY_ns : STD_LOGIC;
  signal \^aresetn_d_reg[1]_0\ : STD_LOGIC;
  signal dw_fifogen_aw_i_3_n_0 : STD_LOGIC;
  signal \m_payload_i[35]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[37]_i_1_n_0\ : STD_LOGIC;
  signal \m_valid_i_inv_i_1__0_n_0\ : STD_LOGIC;
  signal s_awvalid_reg : STD_LOGIC;
  signal \^s_axi_awsize\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_wvalid_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal \si_word[0]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_AXI_WREADY_i_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \buf_cnt[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \buf_cnt[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of cmd_push_block_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \si_be[15]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \si_burst[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \si_ptr[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \si_ptr[6]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \si_word[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \si_wrap_cnt[3]_i_1\ : label is "soft_lutpair4";
begin
  \FSM_sequential_si_state_reg[1]\ <= \^fsm_sequential_si_state_reg[1]\;
  SR(0) <= \^sr\(0);
  S_AXI_WREADY_i_reg <= \^s_axi_wready_i_reg\;
  \aresetn_d_reg[1]_0\ <= \^aresetn_d_reg[1]_0\;
  s_axi_awsize(1 downto 0) <= \^s_axi_awsize\(1 downto 0);
  s_axi_wvalid_0(0) <= \^s_axi_wvalid_0\(0);
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\FSM_sequential_si_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F070FFFFF070F07F"
    )
        port map (
      I0 => p_176_in,
      I1 => s_axi_wlast,
      I2 => si_state(0),
      I3 => si_state(1),
      I4 => \FSM_sequential_si_state_reg[0]_0\,
      I5 => dw_fifogen_aw_i_3_n_0,
      O => s_axi_wlast_0
    );
\FSM_sequential_si_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000FF80"
    )
        port map (
      I0 => p_176_in,
      I1 => s_axi_wlast,
      I2 => si_state(0),
      I3 => si_state(1),
      I4 => dw_fifogen_aw_i_3_n_0,
      O => s_axi_wlast_1
    );
S_AXI_WREADY_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \aresetn_d_reg[1]_2\,
      O => \^sr\(0)
    );
S_AXI_WREADY_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => si_state(0),
      I1 => \FSM_sequential_si_state_reg[0]_0\,
      I2 => S_AXI_WREADY_ns,
      I3 => \si_buf_reg[1]\,
      O => \FSM_sequential_si_state_reg[0]\
    );
S_AXI_WREADY_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F800F0F0080008F"
    )
        port map (
      I0 => p_176_in,
      I1 => s_axi_wlast,
      I2 => si_state(0),
      I3 => si_state(1),
      I4 => \FSM_sequential_si_state_reg[0]_0\,
      I5 => dw_fifogen_aw_i_3_n_0,
      O => S_AXI_WREADY_ns
    );
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \aresetn_d_reg[1]_1\,
      Q => \^aresetn_d_reg[1]_0\,
      R => \^sr\(0)
    );
\buf_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9962"
    )
        port map (
      I0 => \^s_axi_wready_i_reg\,
      I1 => aw_pop,
      I2 => buf_cnt(1),
      I3 => buf_cnt(0),
      O => \buf_cnt_reg[1]_0\
    );
\buf_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A68A"
    )
        port map (
      I0 => buf_cnt(1),
      I1 => buf_cnt(0),
      I2 => aw_pop,
      I3 => \^s_axi_wready_i_reg\,
      O => \buf_cnt_reg[1]\
    );
cmd_push_block_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_ready_i_reg_0\,
      I1 => \FSM_sequential_si_state_reg[0]_0\,
      O => cmd_push_block0
    );
dw_fifogen_aw_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008000AAAA0000"
    )
        port map (
      I0 => dw_fifogen_aw_i_3_n_0,
      I1 => \si_buf_reg[1]\,
      I2 => s_axi_wvalid,
      I3 => s_axi_wlast,
      I4 => si_state(1),
      I5 => si_state(0),
      O => \^s_axi_wready_i_reg\
    );
dw_fifogen_aw_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B00"
    )
        port map (
      I0 => buf_cnt(0),
      I1 => buf_cnt(1),
      I2 => s_awvalid_reg,
      I3 => s_axi_awready,
      O => dw_fifogen_aw_i_3_n_0
    );
\m_payload_i[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FA3A"
    )
        port map (
      I0 => \^s_axi_awsize\(0),
      I1 => \m_payload_i_reg[35]_0\,
      I2 => s_awvalid_reg,
      I3 => \m_payload_i_reg[61]_0\(29),
      O => \m_payload_i[35]_i_1_n_0\
    );
\m_payload_i[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAFA"
    )
        port map (
      I0 => \^s_axi_awsize\(1),
      I1 => \m_payload_i_reg[61]_0\(30),
      I2 => s_awvalid_reg,
      I3 => \m_payload_i_reg[35]_0\,
      O => \m_payload_i[37]_i_1_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(0),
      Q => \m_payload_i_reg[66]_0\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(4),
      Q => \m_payload_i_reg[66]_0\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(5),
      Q => \m_payload_i_reg[66]_0\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(6),
      Q => \m_payload_i_reg[66]_0\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(7),
      Q => \m_payload_i_reg[66]_0\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(8),
      Q => \m_payload_i_reg[66]_0\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(9),
      Q => \m_payload_i_reg[66]_0\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(10),
      Q => \m_payload_i_reg[66]_0\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(11),
      Q => \m_payload_i_reg[66]_0\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(12),
      Q => \m_payload_i_reg[66]_0\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(13),
      Q => \m_payload_i_reg[66]_0\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(1),
      Q => \m_payload_i_reg[66]_0\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(14),
      Q => \m_payload_i_reg[66]_0\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(15),
      Q => \m_payload_i_reg[66]_0\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(16),
      Q => \m_payload_i_reg[66]_0\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(17),
      Q => \m_payload_i_reg[66]_0\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(18),
      Q => \m_payload_i_reg[66]_0\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(19),
      Q => \m_payload_i_reg[66]_0\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(20),
      Q => \m_payload_i_reg[66]_0\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(21),
      Q => \m_payload_i_reg[66]_0\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(22),
      Q => \m_payload_i_reg[66]_0\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(23),
      Q => \m_payload_i_reg[66]_0\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(2),
      Q => \m_payload_i_reg[66]_0\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(24),
      Q => \m_payload_i_reg[66]_0\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(25),
      Q => \m_payload_i_reg[66]_0\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(26),
      Q => \m_payload_i_reg[66]_0\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(27),
      Q => \m_payload_i_reg[66]_0\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(28),
      Q => \m_payload_i_reg[66]_0\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \m_payload_i[35]_i_1_n_0\,
      Q => \^s_axi_awsize\(0),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(8),
      Q => \m_payload_i_reg[66]_0\(35),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \m_payload_i[37]_i_1_n_0\,
      Q => \^s_axi_awsize\(1),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(9),
      Q => \m_payload_i_reg[66]_0\(36),
      R => '0'
    );
\m_payload_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(10),
      Q => \m_payload_i_reg[66]_0\(37),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(3),
      Q => \m_payload_i_reg[66]_0\(3),
      R => '0'
    );
\m_payload_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(33),
      Q => \m_payload_i_reg[66]_0\(38),
      R => '0'
    );
\m_payload_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(34),
      Q => \m_payload_i_reg[66]_0\(39),
      R => '0'
    );
\m_payload_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(35),
      Q => \m_payload_i_reg[66]_0\(40),
      R => '0'
    );
\m_payload_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(36),
      Q => \m_payload_i_reg[66]_0\(41),
      R => '0'
    );
\m_payload_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(11),
      Q => \m_payload_i_reg[66]_0\(42),
      R => '0'
    );
\m_payload_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(12),
      Q => \m_payload_i_reg[66]_0\(43),
      R => '0'
    );
\m_payload_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(13),
      Q => \m_payload_i_reg[66]_0\(44),
      R => '0'
    );
\m_payload_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(14),
      Q => \m_payload_i_reg[66]_0\(45),
      R => '0'
    );
\m_payload_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(15),
      Q => \m_payload_i_reg[66]_0\(46),
      R => '0'
    );
\m_payload_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(16),
      Q => \m_payload_i_reg[66]_0\(47),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(4),
      Q => \m_payload_i_reg[66]_0\(4),
      R => '0'
    );
\m_payload_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(17),
      Q => \m_payload_i_reg[66]_0\(48),
      R => '0'
    );
\m_payload_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(18),
      Q => \m_payload_i_reg[66]_0\(49),
      R => '0'
    );
\m_payload_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(37),
      Q => \m_payload_i_reg[66]_0\(50),
      R => '0'
    );
\m_payload_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(38),
      Q => \m_payload_i_reg[66]_0\(51),
      R => '0'
    );
\m_payload_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(39),
      Q => \m_payload_i_reg[66]_0\(52),
      R => '0'
    );
\m_payload_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(40),
      Q => \m_payload_i_reg[66]_0\(53),
      R => '0'
    );
\m_payload_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(41),
      Q => \m_payload_i_reg[66]_0\(54),
      R => '0'
    );
\m_payload_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(42),
      Q => \m_payload_i_reg[66]_0\(55),
      R => '0'
    );
\m_payload_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(43),
      Q => \m_payload_i_reg[66]_0\(56),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(5),
      Q => \m_payload_i_reg[66]_0\(5),
      R => '0'
    );
\m_payload_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(44),
      Q => \m_payload_i_reg[66]_0\(57),
      R => '0'
    );
\m_payload_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(45),
      Q => \m_payload_i_reg[66]_0\(58),
      R => '0'
    );
\m_payload_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(19),
      Q => \m_payload_i_reg[66]_0\(59),
      R => '0'
    );
\m_payload_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(20),
      Q => \m_payload_i_reg[66]_0\(60),
      R => '0'
    );
\m_payload_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(21),
      Q => \m_payload_i_reg[66]_0\(61),
      R => '0'
    );
\m_payload_i_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(22),
      Q => \m_payload_i_reg[66]_0\(62),
      R => '0'
    );
\m_payload_i_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(23),
      Q => \m_payload_i_reg[66]_0\(63),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(6),
      Q => \m_payload_i_reg[66]_0\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[66]_1\(7),
      Q => \m_payload_i_reg[66]_0\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(2),
      Q => \m_payload_i_reg[66]_0\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_awvalid_reg,
      D => \m_payload_i_reg[61]_0\(3),
      Q => \m_payload_i_reg[66]_0\(9),
      R => '0'
    );
m_valid_i_inv_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040AAEAFFFFFFFF"
    )
        port map (
      I0 => m_valid_i_reg_inv_0,
      I1 => \^s_ready_i_reg_0\,
      I2 => \aresetn_d_reg[1]_2\,
      I3 => m_valid_i_reg_inv_1,
      I4 => s_axi_awvalid,
      I5 => \^aresetn_d_reg[1]_0\,
      O => s_ready_i_reg_1
    );
\m_valid_i_inv_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4FF"
    )
        port map (
      I0 => \^s_ready_i_reg_0\,
      I1 => \^s_axi_wready_i_reg\,
      I2 => \FSM_sequential_si_state_reg[0]_0\,
      I3 => \^aresetn_d_reg[1]_0\,
      O => \m_valid_i_inv_i_1__0_n_0\
    );
m_valid_i_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \m_valid_i_inv_i_1__0_n_0\,
      Q => s_awvalid_reg,
      R => '0'
    );
s_ready_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD50000"
    )
        port map (
      I0 => \^aresetn_d_reg[1]_0\,
      I1 => s_awvalid_reg,
      I2 => \FSM_sequential_si_state_reg[0]_0\,
      I3 => \^s_axi_wready_i_reg\,
      I4 => \aresetn_d_reg[1]_1\,
      O => s_ready_i_i_1_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => s_ready_i_i_1_n_0,
      Q => \^s_ready_i_reg_0\,
      R => '0'
    );
\si_be[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5D5D555"
    )
        port map (
      I0 => \^fsm_sequential_si_state_reg[1]\,
      I1 => s_axi_wvalid,
      I2 => \si_buf_reg[1]\,
      I3 => \si_be_reg[0]_1\(0),
      I4 => \si_be_reg[0]_1\(1),
      O => \^s_axi_wvalid_0\(0)
    );
\si_be[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFFBAFFBAFFBA00"
    )
        port map (
      I0 => \si_be_reg[15]_0\,
      I1 => \si_ptr_reg[0]\,
      I2 => \si_be_reg[15]_1\,
      I3 => \^fsm_sequential_si_state_reg[1]\,
      I4 => \si_be_reg[15]_2\,
      I5 => \si_be_reg[15]_3\,
      O => D(15)
    );
\si_be_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \si_be_reg[0]\,
      I1 => \si_be_reg[0]_0\,
      O => D(0),
      S => \^fsm_sequential_si_state_reg[1]\
    );
\si_be_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \si_be_reg[10]\,
      I1 => \si_be_reg[10]_0\,
      O => D(10),
      S => \^fsm_sequential_si_state_reg[1]\
    );
\si_be_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \si_be_reg[11]\,
      I1 => \si_be_reg[11]_0\,
      O => D(11),
      S => \^fsm_sequential_si_state_reg[1]\
    );
\si_be_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \si_be_reg[12]\,
      I1 => \si_be_reg[12]_0\,
      O => D(12),
      S => \^fsm_sequential_si_state_reg[1]\
    );
\si_be_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \si_be_reg[13]\,
      I1 => \si_be_reg[13]_0\,
      O => D(13),
      S => \^fsm_sequential_si_state_reg[1]\
    );
\si_be_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \si_be_reg[14]\,
      I1 => \si_be_reg[14]_0\,
      O => D(14),
      S => \^fsm_sequential_si_state_reg[1]\
    );
\si_be_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \si_be_reg[1]\,
      I1 => \si_be_reg[1]_0\,
      O => D(1),
      S => \^fsm_sequential_si_state_reg[1]\
    );
\si_be_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \si_be_reg[2]\,
      I1 => \si_be_reg[2]_0\,
      O => D(2),
      S => \^fsm_sequential_si_state_reg[1]\
    );
\si_be_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \si_be_reg[3]\,
      I1 => \si_be_reg[3]_0\,
      O => D(3),
      S => \^fsm_sequential_si_state_reg[1]\
    );
\si_be_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \si_be_reg[4]\,
      I1 => \si_be_reg[4]_0\,
      O => D(4),
      S => \^fsm_sequential_si_state_reg[1]\
    );
\si_be_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \si_be_reg[5]\,
      I1 => \si_be_reg[5]_0\,
      O => D(5),
      S => \^fsm_sequential_si_state_reg[1]\
    );
\si_be_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \si_be_reg[6]\,
      I1 => \si_be_reg[6]_0\,
      O => D(6),
      S => \^fsm_sequential_si_state_reg[1]\
    );
\si_be_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \si_be_reg[7]\,
      I1 => \si_be_reg[7]_0\,
      O => D(7),
      S => \^fsm_sequential_si_state_reg[1]\
    );
\si_be_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \si_be_reg[8]\,
      I1 => \si_be_reg[8]_0\,
      O => D(8),
      S => \^fsm_sequential_si_state_reg[1]\
    );
\si_be_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \si_be_reg[9]\,
      I1 => \si_be_reg[9]_0\,
      O => D(9),
      S => \^fsm_sequential_si_state_reg[1]\
    );
\si_burst[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_sequential_si_state_reg[1]\,
      O => \FSM_sequential_si_state_reg[1]_0\(0)
    );
\si_burst[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAFE"
    )
        port map (
      I0 => \FSM_sequential_si_state_reg[0]_0\,
      I1 => si_state(1),
      I2 => si_state(0),
      I3 => \^s_axi_wready_i_reg\,
      O => \^fsm_sequential_si_state_reg[1]\
    );
\si_ptr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^fsm_sequential_si_state_reg[1]\,
      I3 => \si_ptr_reg[1]\,
      O => \si_ptr_reg[5]\(0)
    );
\si_ptr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AFF6A006A006A00"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^fsm_sequential_si_state_reg[1]\,
      I4 => \si_ptr_reg[2]\,
      I5 => \m_payload_i_reg[61]_0\(1),
      O => \si_ptr_reg[5]\(1)
    );
\si_ptr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \^fsm_sequential_si_state_reg[1]\,
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      O => \si_ptr_reg[5]\(2)
    );
\si_ptr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \^fsm_sequential_si_state_reg[1]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      I5 => Q(4),
      O => \si_ptr_reg[5]\(3)
    );
\si_ptr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \^fsm_sequential_si_state_reg[1]\,
      I1 => \si_ptr_reg[6]\,
      I2 => Q(5),
      O => \si_ptr_reg[5]\(4)
    );
\si_ptr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF800080FF80FF"
    )
        port map (
      I0 => \si_buf_reg[1]\,
      I1 => s_axi_wvalid,
      I2 => \si_ptr_reg[0]\,
      I3 => \^fsm_sequential_si_state_reg[1]\,
      I4 => \m_payload_i_reg[61]_0\(31),
      I5 => \m_payload_i_reg[61]_0\(32),
      O => S_AXI_WREADY_i_reg_0(0)
    );
\si_ptr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD555D555D555D"
    )
        port map (
      I0 => \^fsm_sequential_si_state_reg[1]\,
      I1 => p_176_in,
      I2 => \si_be_reg[0]_1\(1),
      I3 => \si_be_reg[0]_1\(0),
      I4 => word,
      I5 => \si_ptr_reg[0]_0\(0),
      O => E(0)
    );
\si_ptr[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \^fsm_sequential_si_state_reg[1]\,
      I1 => Q(5),
      I2 => \si_ptr_reg[6]\,
      I3 => Q(6),
      O => \si_ptr_reg[5]\(5)
    );
\si_word[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBBBB88808888"
    )
        port map (
      I0 => \si_word[0]_i_2_n_0\,
      I1 => \^s_axi_wvalid_0\(0),
      I2 => \si_ptr_reg[0]_0\(0),
      I3 => \si_ptr_reg[0]\,
      I4 => \^fsm_sequential_si_state_reg[1]\,
      I5 => word,
      O => \si_be_reg[15]\
    );
\si_word[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BFF8B00"
    )
        port map (
      I0 => si_wrap_word_next,
      I1 => \si_ptr_reg[0]\,
      I2 => word,
      I3 => \^fsm_sequential_si_state_reg[1]\,
      I4 => \m_payload_i_reg[61]_0\(0),
      O => \si_word[0]_i_2_n_0\
    );
\si_wrap_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \si_wrap_cnt_reg[3]_0\(1),
      I1 => \si_wrap_cnt_reg[3]_0\(0),
      I2 => \^fsm_sequential_si_state_reg[1]\,
      I3 => \si_wrap_cnt_reg[1]\,
      O => \si_wrap_cnt_reg[3]\(0)
    );
\si_wrap_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9FFA900"
    )
        port map (
      I0 => \si_wrap_cnt_reg[3]_0\(2),
      I1 => \si_wrap_cnt_reg[3]_0\(0),
      I2 => \si_wrap_cnt_reg[3]_0\(1),
      I3 => \^fsm_sequential_si_state_reg[1]\,
      I4 => \si_wrap_cnt_reg[2]\,
      O => \si_wrap_cnt_reg[3]\(1)
    );
\si_wrap_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \si_buf_reg[1]\,
      I1 => s_axi_wvalid,
      I2 => \^fsm_sequential_si_state_reg[1]\,
      O => S_AXI_WREADY_i_reg_1(0)
    );
\si_wrap_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => \si_wrap_cnt_reg[3]_0\(3),
      I1 => \si_wrap_cnt_reg[3]_0\(2),
      I2 => \si_wrap_cnt_reg[3]_0\(1),
      I3 => \si_wrap_cnt_reg[3]_0\(0),
      I4 => \^fsm_sequential_si_state_reg[1]\,
      I5 => \si_wrap_cnt_reg[3]_1\,
      O => \si_wrap_cnt_reg[3]\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_us_df_1_axi_register_slice_v2_1_21_axic_register_slice__parameterized4\ is
  port (
    \aresetn_d_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[39]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 50 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[41]_0\ : out STD_LOGIC;
    \m_payload_i_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \si_wrap_cnt_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[6]_0\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[3]_0\ : out STD_LOGIC;
    \m_payload_i_reg[3]_1\ : out STD_LOGIC;
    \m_payload_i_reg[2]_0\ : out STD_LOGIC;
    \m_payload_i_reg[2]_1\ : out STD_LOGIC;
    \m_payload_i_reg[2]_2\ : out STD_LOGIC;
    \m_payload_i_reg[0]_0\ : out STD_LOGIC;
    \m_payload_i_reg[0]_1\ : out STD_LOGIC;
    \m_payload_i_reg[0]_2\ : out STD_LOGIC;
    \m_payload_i_reg[0]_3\ : out STD_LOGIC;
    \m_payload_i_reg[0]_4\ : out STD_LOGIC;
    \m_payload_i_reg[0]_5\ : out STD_LOGIC;
    \m_payload_i_reg[37]_0\ : out STD_LOGIC;
    \m_payload_i_reg[35]_0\ : out STD_LOGIC;
    \m_payload_i_reg[37]_1\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \m_payload_i_reg[1]_0\ : out STD_LOGIC;
    \m_payload_i_reg[1]_1\ : out STD_LOGIC;
    \m_payload_i_reg[3]_2\ : out STD_LOGIC;
    \m_payload_i_reg[2]_3\ : out STD_LOGIC;
    \m_payload_i_reg[36]_0\ : out STD_LOGIC;
    \m_payload_i_reg[45]_0\ : out STD_LOGIC;
    \m_payload_i_reg[46]_0\ : out STD_LOGIC;
    \m_payload_i_reg[7]_0\ : out STD_LOGIC;
    f_si_wrap_word_return : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    \aresetn_d_reg[0]_1\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_valid_i_reg_inv_0 : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \si_ptr_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \si_wrap_cnt_reg[0]_0\ : in STD_LOGIC;
    \si_wrap_cnt_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 64 downto 0 );
    s_ready_i_reg_0 : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_us_df_1_axi_register_slice_v2_1_21_axic_register_slice__parameterized4\ : entity is "axi_register_slice_v2_1_21_axic_register_slice";
end \design_1_auto_us_df_1_axi_register_slice_v2_1_21_axic_register_slice__parameterized4\;

architecture STRUCTURE of \design_1_auto_us_df_1_axi_register_slice_v2_1_21_axic_register_slice__parameterized4\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 50 downto 0 );
  signal \^aresetn_d_reg[0]_0\ : STD_LOGIC;
  signal \m_payload_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[44]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[44]_i_3_n_0\ : STD_LOGIC;
  signal \m_payload_i[44]_i_4_n_0\ : STD_LOGIC;
  signal \m_payload_i[44]_i_5_n_0\ : STD_LOGIC;
  signal \m_payload_i[44]_i_6_n_0\ : STD_LOGIC;
  signal \m_payload_i[44]_i_7_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_10_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_11_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_12_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_13_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_14_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_15_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_3_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_4_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_5_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_6_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_7_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_8_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_9_n_0\ : STD_LOGIC;
  signal \m_payload_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[51]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[51]_i_3_n_0\ : STD_LOGIC;
  signal \m_payload_i[51]_i_5_n_0\ : STD_LOGIC;
  signal \m_payload_i[51]_i_6_n_0\ : STD_LOGIC;
  signal \m_payload_i[51]_i_7_n_0\ : STD_LOGIC;
  signal \m_payload_i[51]_i_8_n_0\ : STD_LOGIC;
  signal \m_payload_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[5]_i_3_n_0\ : STD_LOGIC;
  signal \m_payload_i[5]_i_4_n_0\ : STD_LOGIC;
  signal \m_payload_i[62]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[63]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[63]_i_3_n_0\ : STD_LOGIC;
  signal \m_payload_i[63]_i_4_n_0\ : STD_LOGIC;
  signal \m_payload_i[64]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[64]_i_3_n_0\ : STD_LOGIC;
  signal \m_payload_i[64]_i_4_n_0\ : STD_LOGIC;
  signal \m_payload_i[65]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[65]_i_3_n_0\ : STD_LOGIC;
  signal \m_payload_i[65]_i_4_n_0\ : STD_LOGIC;
  signal \m_payload_i[66]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[66]_i_3_n_0\ : STD_LOGIC;
  signal \m_payload_i[66]_i_4_n_0\ : STD_LOGIC;
  signal \m_payload_i[66]_i_5_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_3_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_4_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_5_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_6_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_7_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_8_n_0\ : STD_LOGIC;
  signal \m_payload_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \m_payload_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[37]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[37]_1\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \^m_payload_i_reg[41]_0\ : STD_LOGIC;
  signal s_axi_awlen_ii : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal \si_be[11]_i_4_n_0\ : STD_LOGIC;
  signal \si_be[13]_i_4_n_0\ : STD_LOGIC;
  signal \si_be[1]_i_4_n_0\ : STD_LOGIC;
  signal \si_be[3]_i_4_n_0\ : STD_LOGIC;
  signal \si_be[5]_i_4_n_0\ : STD_LOGIC;
  signal \si_be[7]_i_4_n_0\ : STD_LOGIC;
  signal \si_be[9]_i_4_n_0\ : STD_LOGIC;
  signal \si_ptr[0]_i_2_n_0\ : STD_LOGIC;
  signal \si_wrap_be_next[12]_i_2_n_0\ : STD_LOGIC;
  signal \si_wrap_be_next[13]_i_2_n_0\ : STD_LOGIC;
  signal \si_wrap_be_next[14]_i_2_n_0\ : STD_LOGIC;
  signal \si_wrap_be_next[1]_i_2_n_0\ : STD_LOGIC;
  signal \si_wrap_be_next[4]_i_2_n_0\ : STD_LOGIC;
  signal \si_wrap_be_next[6]_i_2_n_0\ : STD_LOGIC;
  signal \si_wrap_be_next[8]_i_2_n_0\ : STD_LOGIC;
  signal \si_wrap_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \si_wrap_cnt[1]_i_3_n_0\ : STD_LOGIC;
  signal \si_wrap_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \si_wrap_cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \si_wrap_word_next[0]_i_2_n_0\ : STD_LOGIC;
  signal sr_awaddr : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_payload_i[0]_i_2\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \m_payload_i[39]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \m_payload_i[44]_i_2\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \m_payload_i[44]_i_4\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \m_payload_i[44]_i_5\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \m_payload_i[44]_i_7\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \m_payload_i[46]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \m_payload_i[47]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_11\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_12\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_15\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_7\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_9\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_2\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \m_payload_i[51]_i_3\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \m_payload_i[51]_i_4\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \m_payload_i[51]_i_5\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \m_payload_i[51]_i_6\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \m_payload_i[51]_i_7\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \m_payload_i[51]_i_8\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_3\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_4\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \m_payload_i[62]_i_2\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \m_payload_i[63]_i_2\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \m_payload_i[63]_i_3\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \m_payload_i[63]_i_4\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \m_payload_i[64]_i_4\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \m_payload_i[65]_i_2\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \m_payload_i[65]_i_3\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \m_payload_i[66]_i_3\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \m_payload_i[66]_i_4\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \m_payload_i[66]_i_5\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_3\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_5\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_6\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_7\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_8\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_4\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \si_ptr[0]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \si_ptr[2]_i_2\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \si_wrap_be_next[10]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \si_wrap_be_next[11]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \si_wrap_be_next[13]_i_2\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \si_wrap_be_next[14]_i_2\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \si_wrap_be_next[2]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \si_wrap_be_next[3]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \si_wrap_be_next[4]_i_2\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \si_wrap_be_next[6]_i_2\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \si_wrap_be_next[7]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \si_wrap_be_next[8]_i_2\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \si_wrap_cnt[3]_i_4\ : label is "soft_lutpair124";
begin
  E(0) <= \^e\(0);
  Q(50 downto 0) <= \^q\(50 downto 0);
  \aresetn_d_reg[0]_0\ <= \^aresetn_d_reg[0]_0\;
  \m_payload_i_reg[37]_0\ <= \^m_payload_i_reg[37]_0\;
  \m_payload_i_reg[37]_1\(14 downto 0) <= \^m_payload_i_reg[37]_1\(14 downto 0);
  \m_payload_i_reg[41]_0\ <= \^m_payload_i_reg[41]_0\;
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => '1',
      Q => \^aresetn_d_reg[0]_0\,
      R => \aresetn_d_reg[0]_1\
    );
cmd_packed_wrap_i1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_awlen_ii(7),
      I1 => s_axi_awlen_ii(6),
      O => DI(3)
    );
cmd_packed_wrap_i1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEEA"
    )
        port map (
      I0 => s_axi_awlen_ii(5),
      I1 => s_axi_awlen_ii(4),
      I2 => \^q\(31),
      I3 => \^q\(29),
      I4 => \^q\(30),
      O => DI(2)
    );
cmd_packed_wrap_i1_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFCF800"
    )
        port map (
      I0 => \^q\(29),
      I1 => s_axi_awlen_ii(2),
      I2 => s_axi_awlen_ii(3),
      I3 => \^q\(30),
      I4 => \^q\(31),
      O => DI(1)
    );
cmd_packed_wrap_i1_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA0000"
    )
        port map (
      I0 => s_axi_awlen_ii(1),
      I1 => s_axi_awlen_ii(0),
      I2 => \^q\(29),
      I3 => \^q\(30),
      I4 => \^q\(31),
      O => DI(0)
    );
cmd_packed_wrap_i1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_awlen_ii(6),
      I1 => s_axi_awlen_ii(7),
      O => S(3)
    );
cmd_packed_wrap_i1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00015554"
    )
        port map (
      I0 => s_axi_awlen_ii(5),
      I1 => \^q\(31),
      I2 => \^q\(29),
      I3 => \^q\(30),
      I4 => s_axi_awlen_ii(4),
      O => S(2)
    );
cmd_packed_wrap_i1_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C3360"
    )
        port map (
      I0 => \^q\(29),
      I1 => s_axi_awlen_ii(2),
      I2 => \^q\(30),
      I3 => \^q\(31),
      I4 => s_axi_awlen_ii(3),
      O => S(1)
    );
cmd_packed_wrap_i1_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001EF000"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^q\(30),
      I2 => s_axi_awlen_ii(0),
      I3 => s_axi_awlen_ii(1),
      I4 => \^q\(31),
      O => S(0)
    );
\m_payload_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA8A88888888"
    )
        port map (
      I0 => sr_awaddr(0),
      I1 => \m_payload_i[4]_i_2_n_0\,
      I2 => s_axi_awlen_ii(0),
      I3 => \^q\(31),
      I4 => \m_payload_i[62]_i_2_n_0\,
      I5 => \m_payload_i[0]_i_2_n_0\,
      O => \m_payload_i_reg[39]_0\(0)
    );
\m_payload_i[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => CO(0),
      I1 => \^q\(33),
      I2 => \^q\(32),
      O => \m_payload_i[0]_i_2_n_0\
    );
\m_payload_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888A88"
    )
        port map (
      I0 => sr_awaddr(1),
      I1 => \m_payload_i[4]_i_2_n_0\,
      I2 => \^q\(32),
      I3 => \^q\(33),
      I4 => CO(0),
      I5 => \m_payload_i[63]_i_4_n_0\,
      O => \m_payload_i_reg[39]_0\(1)
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888A88888"
    )
        port map (
      I0 => sr_awaddr(2),
      I1 => \m_payload_i[4]_i_2_n_0\,
      I2 => \m_payload_i[64]_i_2_n_0\,
      I3 => \^q\(32),
      I4 => \^q\(33),
      I5 => CO(0),
      O => \m_payload_i_reg[39]_0\(2)
    );
\m_payload_i[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_payload_i_reg[41]_0\,
      I1 => \^q\(30),
      O => \m_payload_i_reg[39]_0\(8)
    );
\m_payload_i[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => \^m_payload_i_reg[41]_0\,
      I1 => CO(0),
      I2 => \^q\(33),
      I3 => \^q\(32),
      O => \m_payload_i_reg[39]_0\(9)
    );
\m_payload_i[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => \^m_payload_i_reg[41]_0\,
      I1 => CO(0),
      I2 => \^q\(33),
      I3 => \^q\(32),
      O => \m_payload_i_reg[39]_0\(10)
    );
\m_payload_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888A88888"
    )
        port map (
      I0 => sr_awaddr(3),
      I1 => \m_payload_i[4]_i_2_n_0\,
      I2 => \m_payload_i[65]_i_3_n_0\,
      I3 => \^q\(32),
      I4 => \^q\(33),
      I5 => CO(0),
      O => \m_payload_i_reg[39]_0\(3)
    );
\m_payload_i[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \m_payload_i[44]_i_2_n_0\,
      I1 => \m_payload_i[44]_i_3_n_0\,
      O => \m_payload_i_reg[39]_0\(11)
    );
\m_payload_i[44]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4474"
    )
        port map (
      I0 => s_axi_awlen_ii(0),
      I1 => \^m_payload_i_reg[41]_0\,
      I2 => \m_payload_i[44]_i_4_n_0\,
      I3 => \si_ptr[0]_i_2_n_0\,
      O => \m_payload_i[44]_i_2_n_0\
    );
\m_payload_i[44]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00AE00AE0000"
    )
        port map (
      I0 => \m_payload_i[44]_i_5_n_0\,
      I1 => \m_payload_i[48]_i_10_n_0\,
      I2 => \m_payload_i[44]_i_6_n_0\,
      I3 => \m_payload_i[44]_i_7_n_0\,
      I4 => \^q\(0),
      I5 => \m_payload_i[66]_i_2_n_0\,
      O => \m_payload_i[44]_i_3_n_0\
    );
\m_payload_i[44]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEFFFEF"
    )
        port map (
      I0 => \^q\(31),
      I1 => \^q\(30),
      I2 => s_axi_awlen_ii(5),
      I3 => \^q\(29),
      I4 => s_axi_awlen_ii(4),
      O => \m_payload_i[44]_i_4_n_0\
    );
\m_payload_i[44]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \m_payload_i[7]_i_2_n_0\,
      I1 => \^q\(31),
      I2 => sr_awaddr(3),
      O => \m_payload_i[44]_i_5_n_0\
    );
\m_payload_i[44]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBBBF0000"
    )
        port map (
      I0 => \^q\(31),
      I1 => sr_awaddr(3),
      I2 => \m_payload_i[6]_i_6_n_0\,
      I3 => CO(0),
      I4 => \m_payload_i[65]_i_3_n_0\,
      I5 => \m_payload_i[48]_i_9_n_0\,
      O => \m_payload_i[44]_i_6_n_0\
    );
\m_payload_i[44]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^m_payload_i_reg[41]_0\,
      O => \m_payload_i[44]_i_7_n_0\
    );
\m_payload_i[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \m_payload_i[48]_i_4_n_0\,
      I1 => \m_payload_i[48]_i_3_n_0\,
      O => \m_payload_i_reg[39]_0\(12)
    );
\m_payload_i[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \m_payload_i[48]_i_4_n_0\,
      I1 => \m_payload_i[48]_i_3_n_0\,
      I2 => \m_payload_i[48]_i_2_n_0\,
      O => \m_payload_i_reg[39]_0\(13)
    );
\m_payload_i[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => \m_payload_i[48]_i_2_n_0\,
      I1 => \m_payload_i[48]_i_3_n_0\,
      I2 => \m_payload_i[48]_i_4_n_0\,
      I3 => \m_payload_i[48]_i_6_n_0\,
      O => \m_payload_i_reg[39]_0\(14)
    );
\m_payload_i[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF10EF"
    )
        port map (
      I0 => \m_payload_i[48]_i_2_n_0\,
      I1 => \m_payload_i[48]_i_3_n_0\,
      I2 => \m_payload_i[48]_i_4_n_0\,
      I3 => \m_payload_i[48]_i_5_n_0\,
      I4 => \m_payload_i[48]_i_6_n_0\,
      O => \m_payload_i_reg[39]_0\(15)
    );
\m_payload_i[48]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF545500"
    )
        port map (
      I0 => \m_payload_i[48]_i_14_n_0\,
      I1 => CO(0),
      I2 => \m_payload_i[6]_i_6_n_0\,
      I3 => \m_payload_i[63]_i_4_n_0\,
      I4 => \m_payload_i[63]_i_2_n_0\,
      I5 => \m_payload_i[48]_i_15_n_0\,
      O => \m_payload_i[48]_i_10_n_0\
    );
\m_payload_i[48]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => \^q\(0),
      I1 => \m_payload_i[66]_i_2_n_0\,
      I2 => sr_awaddr(3),
      I3 => \^q\(31),
      I4 => \m_payload_i[7]_i_2_n_0\,
      O => \m_payload_i[48]_i_11_n_0\
    );
\m_payload_i[48]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen_ii(6),
      I1 => \^q\(29),
      I2 => s_axi_awlen_ii(7),
      O => \m_payload_i[48]_i_12_n_0\
    );
\m_payload_i[48]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F0F53FF5FFF53F"
    )
        port map (
      I0 => \m_payload_i[6]_i_5_n_0\,
      I1 => s_axi_awlen_ii(4),
      I2 => \^q\(31),
      I3 => \^q\(30),
      I4 => \^q\(29),
      I5 => s_axi_awlen_ii(7),
      O => \m_payload_i[48]_i_13_n_0\
    );
\m_payload_i[48]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^q\(31),
      I1 => \^q\(30),
      I2 => sr_awaddr(1),
      O => \m_payload_i[48]_i_14_n_0\
    );
\m_payload_i[48]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02220000"
    )
        port map (
      I0 => \m_payload_i[6]_i_3_n_0\,
      I1 => \^q\(31),
      I2 => \^q\(29),
      I3 => \^q\(30),
      I4 => sr_awaddr(2),
      O => \m_payload_i[48]_i_15_n_0\
    );
\m_payload_i[48]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7474747444747474"
    )
        port map (
      I0 => s_axi_awlen_ii(2),
      I1 => \^m_payload_i_reg[41]_0\,
      I2 => \m_payload_i[7]_i_3_n_0\,
      I3 => \^q\(31),
      I4 => s_axi_awlen_ii(3),
      I5 => \m_payload_i[62]_i_2_n_0\,
      O => \m_payload_i[48]_i_2_n_0\
    );
\m_payload_i[48]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444477477777"
    )
        port map (
      I0 => s_axi_awlen_ii(1),
      I1 => \^m_payload_i_reg[41]_0\,
      I2 => s_axi_awlen_ii(2),
      I3 => \m_payload_i[62]_i_2_n_0\,
      I4 => \^q\(31),
      I5 => \m_payload_i[6]_i_2_n_0\,
      O => \m_payload_i[48]_i_3_n_0\
    );
\m_payload_i[48]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055550100"
    )
        port map (
      I0 => \m_payload_i[48]_i_7_n_0\,
      I1 => \m_payload_i[48]_i_8_n_0\,
      I2 => \m_payload_i[48]_i_9_n_0\,
      I3 => \m_payload_i[48]_i_10_n_0\,
      I4 => \m_payload_i[48]_i_11_n_0\,
      I5 => \m_payload_i[44]_i_2_n_0\,
      O => \m_payload_i[48]_i_4_n_0\
    );
\m_payload_i[48]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7477444474777477"
    )
        port map (
      I0 => s_axi_awlen_ii(4),
      I1 => \^m_payload_i_reg[41]_0\,
      I2 => \m_payload_i[51]_i_6_n_0\,
      I3 => \m_payload_i[48]_i_12_n_0\,
      I4 => \m_payload_i[65]_i_2_n_0\,
      I5 => s_axi_awlen_ii(5),
      O => \m_payload_i[48]_i_5_n_0\
    );
\m_payload_i[48]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => s_axi_awlen_ii(3),
      I1 => \^m_payload_i_reg[41]_0\,
      I2 => \m_payload_i[48]_i_13_n_0\,
      O => \m_payload_i[48]_i_6_n_0\
    );
\m_payload_i[48]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF1"
    )
        port map (
      I0 => \m_payload_i[66]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => \^m_payload_i_reg[41]_0\,
      I3 => \^q\(33),
      O => \m_payload_i[48]_i_7_n_0\
    );
\m_payload_i[48]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0020AAAA"
    )
        port map (
      I0 => \m_payload_i[65]_i_3_n_0\,
      I1 => CO(0),
      I2 => \^q\(33),
      I3 => \^q\(32),
      I4 => sr_awaddr(3),
      I5 => \^q\(31),
      O => \m_payload_i[48]_i_8_n_0\
    );
\m_payload_i[48]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A888AAAA"
    )
        port map (
      I0 => \m_payload_i[64]_i_2_n_0\,
      I1 => \^q\(31),
      I2 => \^q\(29),
      I3 => \^q\(30),
      I4 => sr_awaddr(2),
      O => \m_payload_i[48]_i_9_n_0\
    );
\m_payload_i[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \m_payload_i[51]_i_3_n_0\,
      I1 => \m_payload_i[51]_i_2_n_0\,
      O => \m_payload_i_reg[39]_0\(16)
    );
\m_payload_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888A8888"
    )
        port map (
      I0 => \^q\(0),
      I1 => \m_payload_i[4]_i_2_n_0\,
      I2 => \m_payload_i[66]_i_2_n_0\,
      I3 => \^q\(32),
      I4 => \^q\(33),
      I5 => CO(0),
      O => \m_payload_i_reg[39]_0\(4)
    );
\m_payload_i[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFEF"
    )
        port map (
      I0 => \^m_payload_i_reg[41]_0\,
      I1 => CO(0),
      I2 => \^q\(33),
      I3 => \^q\(32),
      I4 => \m_payload_i[6]_i_4_n_0\,
      O => \m_payload_i[4]_i_2_n_0\
    );
\m_payload_i[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2D2DDD222222D22"
    )
        port map (
      I0 => \m_payload_i[51]_i_3_n_0\,
      I1 => \m_payload_i[51]_i_2_n_0\,
      I2 => \^m_payload_i_reg[41]_0\,
      I3 => s_axi_awlen_ii(7),
      I4 => \m_payload_i[65]_i_2_n_0\,
      I5 => s_axi_awlen_ii(6),
      O => \m_payload_i_reg[39]_0\(17)
    );
\m_payload_i[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0A0003000000"
    )
        port map (
      I0 => s_axi_awlen_ii(6),
      I1 => \m_payload_i[65]_i_2_n_0\,
      I2 => \m_payload_i[51]_i_2_n_0\,
      I3 => \m_payload_i[51]_i_3_n_0\,
      I4 => s_axi_awlen_ii(7),
      I5 => \^m_payload_i_reg[41]_0\,
      O => \m_payload_i_reg[39]_0\(18)
    );
\m_payload_i[51]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7774444477747774"
    )
        port map (
      I0 => s_axi_awlen_ii(5),
      I1 => \^m_payload_i_reg[41]_0\,
      I2 => \m_payload_i[51]_i_5_n_0\,
      I3 => \m_payload_i[51]_i_6_n_0\,
      I4 => \m_payload_i[65]_i_2_n_0\,
      I5 => s_axi_awlen_ii(6),
      O => \m_payload_i[51]_i_2_n_0\
    );
\m_payload_i[51]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \m_payload_i[48]_i_6_n_0\,
      I1 => \m_payload_i[48]_i_2_n_0\,
      I2 => \m_payload_i[48]_i_3_n_0\,
      I3 => \m_payload_i[48]_i_4_n_0\,
      I4 => \m_payload_i[48]_i_5_n_0\,
      O => \m_payload_i[51]_i_3_n_0\
    );
\m_payload_i[51]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F4F4FFF"
    )
        port map (
      I0 => \m_payload_i[51]_i_7_n_0\,
      I1 => \m_payload_i[51]_i_8_n_0\,
      I2 => \^q\(35),
      I3 => \^q\(32),
      I4 => \^q\(33),
      O => \^m_payload_i_reg[41]_0\
    );
\m_payload_i[51]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(29),
      I1 => s_axi_awlen_ii(7),
      O => \m_payload_i[51]_i_5_n_0\
    );
\m_payload_i[51]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(31),
      I1 => \^q\(30),
      O => \m_payload_i[51]_i_6_n_0\
    );
\m_payload_i[51]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_awlen_ii(6),
      I1 => s_axi_awlen_ii(7),
      I2 => s_axi_awlen_ii(1),
      I3 => s_axi_awlen_ii(2),
      O => \m_payload_i[51]_i_7_n_0\
    );
\m_payload_i[51]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_awlen_ii(5),
      I1 => s_axi_awlen_ii(4),
      I2 => s_axi_awlen_ii(0),
      I3 => s_axi_awlen_ii(3),
      O => \m_payload_i[51]_i_8_n_0\
    );
\m_payload_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"95999999AAAAAAAA"
    )
        port map (
      I0 => sr_awaddr(5),
      I1 => \m_payload_i[5]_i_2_n_0\,
      I2 => \^q\(30),
      I3 => \^q\(31),
      I4 => \m_payload_i[5]_i_3_n_0\,
      I5 => \m_payload_i[6]_i_4_n_0\,
      O => \m_payload_i_reg[39]_0\(5)
    );
\m_payload_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF47"
    )
        port map (
      I0 => s_axi_awlen_ii(4),
      I1 => \^q\(29),
      I2 => s_axi_awlen_ii(5),
      I3 => \^q\(30),
      I4 => \^q\(31),
      I5 => \m_payload_i[5]_i_4_n_0\,
      O => \m_payload_i[5]_i_2_n_0\
    );
\m_payload_i[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen_ii(0),
      I1 => \^q\(29),
      I2 => s_axi_awlen_ii(1),
      O => \m_payload_i[5]_i_3_n_0\
    );
\m_payload_i[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => s_axi_awlen_ii(3),
      I1 => \^q\(29),
      I2 => s_axi_awlen_ii(2),
      I3 => \^q\(30),
      I4 => \^q\(31),
      O => \m_payload_i[5]_i_4_n_0\
    );
\m_payload_i[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F3FFFFFFFF7A7B"
    )
        port map (
      I0 => s_axi_awlen_ii(0),
      I1 => \^q\(32),
      I2 => sr_awaddr(0),
      I3 => \^q\(33),
      I4 => \^q\(31),
      I5 => \m_payload_i[62]_i_2_n_0\,
      O => \m_payload_i_reg[39]_0\(19)
    );
\m_payload_i[62]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(30),
      I1 => \^q\(29),
      O => \m_payload_i[62]_i_2_n_0\
    );
\m_payload_i[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDF7F7F7F7F0FD"
    )
        port map (
      I0 => \^q\(32),
      I1 => \m_payload_i[63]_i_2_n_0\,
      I2 => \m_payload_i[63]_i_3_n_0\,
      I3 => \^q\(33),
      I4 => sr_awaddr(1),
      I5 => \m_payload_i[63]_i_4_n_0\,
      O => \m_payload_i_reg[39]_0\(20)
    );
\m_payload_i[63]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => sr_awaddr(0),
      I1 => s_axi_awlen_ii(0),
      I2 => \^q\(31),
      I3 => \^q\(29),
      I4 => \^q\(30),
      O => \m_payload_i[63]_i_2_n_0\
    );
\m_payload_i[63]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"46"
    )
        port map (
      I0 => \^q\(31),
      I1 => \^q\(30),
      I2 => \^q\(29),
      O => \m_payload_i[63]_i_3_n_0\
    );
\m_payload_i[63]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => s_axi_awlen_ii(1),
      I1 => \^q\(29),
      I2 => s_axi_awlen_ii(0),
      I3 => \^q\(31),
      I4 => \^q\(30),
      O => \m_payload_i[63]_i_4_n_0\
    );
\m_payload_i[64]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4DC77DD7"
    )
        port map (
      I0 => \^q\(32),
      I1 => sr_awaddr(2),
      I2 => \m_payload_i[64]_i_2_n_0\,
      I3 => \m_payload_i[64]_i_3_n_0\,
      I4 => \^q\(33),
      I5 => \m_payload_i[64]_i_4_n_0\,
      O => \m_payload_i_reg[39]_0\(21)
    );
\m_payload_i[64]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEAEBFFFFFAEBF"
    )
        port map (
      I0 => \^q\(31),
      I1 => \^q\(29),
      I2 => s_axi_awlen_ii(1),
      I3 => s_axi_awlen_ii(2),
      I4 => \^q\(30),
      I5 => s_axi_awlen_ii(0),
      O => \m_payload_i[64]_i_2_n_0\
    );
\m_payload_i[64]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888E888888888888"
    )
        port map (
      I0 => sr_awaddr(1),
      I1 => \m_payload_i[63]_i_4_n_0\,
      I2 => \m_payload_i[62]_i_2_n_0\,
      I3 => \^q\(31),
      I4 => s_axi_awlen_ii(0),
      I5 => sr_awaddr(0),
      O => \m_payload_i[64]_i_3_n_0\
    );
\m_payload_i[64]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \^q\(31),
      I1 => \^q\(30),
      I2 => \^q\(29),
      O => \m_payload_i[64]_i_4_n_0\
    );
\m_payload_i[65]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"757DF7FFD7D7F7FF"
    )
        port map (
      I0 => \m_payload_i[65]_i_2_n_0\,
      I1 => \m_payload_i[65]_i_3_n_0\,
      I2 => sr_awaddr(3),
      I3 => \^q\(33),
      I4 => \^q\(32),
      I5 => \m_payload_i[65]_i_4_n_0\,
      O => \m_payload_i_reg[39]_0\(22)
    );
\m_payload_i[65]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^q\(30),
      I2 => \^q\(31),
      O => \m_payload_i[65]_i_2_n_0\
    );
\m_payload_i[65]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(31),
      I1 => \m_payload_i[7]_i_2_n_0\,
      O => \m_payload_i[65]_i_3_n_0\
    );
\m_payload_i[65]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAEAE08080808"
    )
        port map (
      I0 => \m_payload_i[64]_i_3_n_0\,
      I1 => \m_payload_i[6]_i_3_n_0\,
      I2 => \^q\(31),
      I3 => \^q\(29),
      I4 => \^q\(30),
      I5 => sr_awaddr(2),
      O => \m_payload_i[65]_i_4_n_0\
    );
\m_payload_i[66]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C13CFDFD"
    )
        port map (
      I0 => \^q\(33),
      I1 => \m_payload_i[66]_i_2_n_0\,
      I2 => \^q\(0),
      I3 => \m_payload_i[66]_i_3_n_0\,
      I4 => \^q\(32),
      O => \m_payload_i_reg[39]_0\(23)
    );
\m_payload_i[66]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000044F0"
    )
        port map (
      I0 => \^q\(29),
      I1 => s_axi_awlen_ii(0),
      I2 => \m_payload_i[66]_i_4_n_0\,
      I3 => \^q\(31),
      I4 => \^q\(30),
      I5 => \m_payload_i[66]_i_5_n_0\,
      O => \m_payload_i[66]_i_2_n_0\
    );
\m_payload_i[66]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE08"
    )
        port map (
      I0 => \m_payload_i[65]_i_4_n_0\,
      I1 => \m_payload_i[7]_i_2_n_0\,
      I2 => \^q\(31),
      I3 => sr_awaddr(3),
      O => \m_payload_i[66]_i_3_n_0\
    );
\m_payload_i[66]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen_ii(3),
      I1 => \^q\(29),
      I2 => s_axi_awlen_ii(4),
      O => \m_payload_i[66]_i_4_n_0\
    );
\m_payload_i[66]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D800"
    )
        port map (
      I0 => \^q\(29),
      I1 => s_axi_awlen_ii(1),
      I2 => s_axi_awlen_ii(2),
      I3 => \^q\(30),
      I4 => \^q\(31),
      O => \m_payload_i[66]_i_5_n_0\
    );
\m_payload_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5666AAAAAAAAAAAA"
    )
        port map (
      I0 => sr_awaddr(6),
      I1 => \m_payload_i[6]_i_2_n_0\,
      I2 => \^q\(31),
      I3 => \m_payload_i[6]_i_3_n_0\,
      I4 => \m_payload_i[6]_i_4_n_0\,
      I5 => sr_awaddr(5),
      O => \m_payload_i_reg[39]_0\(6)
    );
\m_payload_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B8FF0000B800"
    )
        port map (
      I0 => s_axi_awlen_ii(3),
      I1 => \^q\(29),
      I2 => s_axi_awlen_ii(4),
      I3 => \^q\(30),
      I4 => \^q\(31),
      I5 => \m_payload_i[6]_i_5_n_0\,
      O => \m_payload_i[6]_i_2_n_0\
    );
\m_payload_i[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3300B8B8"
    )
        port map (
      I0 => s_axi_awlen_ii(0),
      I1 => \^q\(30),
      I2 => s_axi_awlen_ii(2),
      I3 => s_axi_awlen_ii(1),
      I4 => \^q\(29),
      O => \m_payload_i[6]_i_3_n_0\
    );
\m_payload_i[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101010001010"
    )
        port map (
      I0 => \^m_payload_i_reg[41]_0\,
      I1 => \m_payload_i[6]_i_6_n_0\,
      I2 => CO(0),
      I3 => \^q\(0),
      I4 => \m_payload_i[6]_i_7_n_0\,
      I5 => \m_payload_i[6]_i_8_n_0\,
      O => \m_payload_i[6]_i_4_n_0\
    );
\m_payload_i[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen_ii(5),
      I1 => \^q\(29),
      I2 => s_axi_awlen_ii(6),
      O => \m_payload_i[6]_i_5_n_0\
    );
\m_payload_i[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      O => \m_payload_i[6]_i_6_n_0\
    );
\m_payload_i[6]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sr_awaddr(1),
      I1 => sr_awaddr(0),
      O => \m_payload_i[6]_i_7_n_0\
    );
\m_payload_i[6]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sr_awaddr(3),
      I1 => sr_awaddr(2),
      O => \m_payload_i[6]_i_8_n_0\
    );
\m_payload_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A55AAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \m_payload_i[7]_i_2_n_0\,
      I2 => \^q\(31),
      I3 => \m_payload_i[7]_i_3_n_0\,
      I4 => sr_awaddr(6),
      I5 => \m_payload_i[7]_i_4_n_0\,
      O => \m_payload_i_reg[39]_0\(7)
    );
\m_payload_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_awlen_ii(0),
      I1 => s_axi_awlen_ii(1),
      I2 => \^q\(30),
      I3 => s_axi_awlen_ii(2),
      I4 => \^q\(29),
      I5 => s_axi_awlen_ii(3),
      O => \m_payload_i[7]_i_2_n_0\
    );
\m_payload_i[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4700FFFF47FF"
    )
        port map (
      I0 => s_axi_awlen_ii(4),
      I1 => \^q\(29),
      I2 => s_axi_awlen_ii(5),
      I3 => \^q\(30),
      I4 => \^q\(31),
      I5 => \m_payload_i[48]_i_12_n_0\,
      O => \m_payload_i[7]_i_3_n_0\
    );
\m_payload_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_payload_i[6]_i_4_n_0\,
      I1 => sr_awaddr(5),
      O => \m_payload_i[7]_i_4_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(0),
      Q => sr_awaddr(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(10),
      Q => \^q\(4),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(11),
      Q => \^q\(5),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(12),
      Q => \^q\(6),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(13),
      Q => \^q\(7),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(14),
      Q => \^q\(8),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(15),
      Q => \^q\(9),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(16),
      Q => \^q\(10),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(17),
      Q => \^q\(11),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(18),
      Q => \^q\(12),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(19),
      Q => \^q\(13),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(1),
      Q => sr_awaddr(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(20),
      Q => \^q\(14),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(21),
      Q => \^q\(15),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(22),
      Q => \^q\(16),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(23),
      Q => \^q\(17),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(24),
      Q => \^q\(18),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(25),
      Q => \^q\(19),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(26),
      Q => \^q\(20),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(27),
      Q => \^q\(21),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(28),
      Q => \^q\(22),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(29),
      Q => \^q\(23),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(2),
      Q => sr_awaddr(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(30),
      Q => \^q\(24),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(31),
      Q => \^q\(25),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(32),
      Q => \^q\(26),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(33),
      Q => \^q\(27),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(34),
      Q => \^q\(28),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(35),
      Q => \^q\(29),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(36),
      Q => \^q\(30),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(37),
      Q => \^q\(31),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(38),
      Q => \^q\(32),
      R => '0'
    );
\m_payload_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(39),
      Q => \^q\(33),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(3),
      Q => sr_awaddr(3),
      R => '0'
    );
\m_payload_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(40),
      Q => \^q\(34),
      R => '0'
    );
\m_payload_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(41),
      Q => \^q\(35),
      R => '0'
    );
\m_payload_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(42),
      Q => \^q\(36),
      R => '0'
    );
\m_payload_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(43),
      Q => \^q\(37),
      R => '0'
    );
\m_payload_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(44),
      Q => s_axi_awlen_ii(0),
      R => '0'
    );
\m_payload_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(45),
      Q => s_axi_awlen_ii(1),
      R => '0'
    );
\m_payload_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(46),
      Q => s_axi_awlen_ii(2),
      R => '0'
    );
\m_payload_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(47),
      Q => s_axi_awlen_ii(3),
      R => '0'
    );
\m_payload_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(48),
      Q => s_axi_awlen_ii(4),
      R => '0'
    );
\m_payload_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(49),
      Q => s_axi_awlen_ii(5),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(4),
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(50),
      Q => s_axi_awlen_ii(6),
      R => '0'
    );
\m_payload_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(51),
      Q => s_axi_awlen_ii(7),
      R => '0'
    );
\m_payload_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(52),
      Q => \^q\(38),
      R => '0'
    );
\m_payload_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(53),
      Q => \^q\(39),
      R => '0'
    );
\m_payload_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(54),
      Q => \^q\(40),
      R => '0'
    );
\m_payload_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(55),
      Q => \^q\(41),
      R => '0'
    );
\m_payload_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(56),
      Q => \^q\(42),
      R => '0'
    );
\m_payload_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(57),
      Q => \^q\(43),
      R => '0'
    );
\m_payload_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(58),
      Q => \^q\(44),
      R => '0'
    );
\m_payload_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(59),
      Q => \^q\(45),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(5),
      Q => sr_awaddr(5),
      R => '0'
    );
\m_payload_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(60),
      Q => \^q\(46),
      R => '0'
    );
\m_payload_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(61),
      Q => \^q\(47),
      R => '0'
    );
\m_payload_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(62),
      Q => \^q\(48),
      R => '0'
    );
\m_payload_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(63),
      Q => \^q\(49),
      R => '0'
    );
\m_payload_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(64),
      Q => \^q\(50),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(6),
      Q => sr_awaddr(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(7),
      Q => \^q\(1),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(8),
      Q => \^q\(2),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \^e\(0),
      D => D(9),
      Q => \^q\(3),
      R => '0'
    );
m_valid_i_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \out\,
      CE => '1',
      D => m_valid_i_reg_inv_0,
      Q => \^e\(0),
      R => '0'
    );
s_ready_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FDD0000"
    )
        port map (
      I0 => s_ready_i_reg_0,
      I1 => s_ready_i_reg_1,
      I2 => s_axi_awvalid,
      I3 => \^e\(0),
      I4 => \^aresetn_d_reg[0]_0\,
      O => s_ready_i_i_1_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => s_ready_i_i_1_n_0,
      Q => s_axi_awready,
      R => '0'
    );
\si_be[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => \si_be[1]_i_4_n_0\,
      I1 => sr_awaddr(0),
      I2 => \m_payload_i[62]_i_2_n_0\,
      I3 => sr_awaddr(1),
      I4 => sr_awaddr(2),
      I5 => sr_awaddr(3),
      O => \m_payload_i_reg[0]_1\
    );
\si_be[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAAAAAAAAA"
    )
        port map (
      I0 => \si_be[11]_i_4_n_0\,
      I1 => sr_awaddr(0),
      I2 => \m_payload_i[62]_i_2_n_0\,
      I3 => sr_awaddr(2),
      I4 => sr_awaddr(3),
      I5 => sr_awaddr(1),
      O => \m_payload_i_reg[0]_4\
    );
\si_be[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABAAAAAAA"
    )
        port map (
      I0 => \si_be[11]_i_4_n_0\,
      I1 => sr_awaddr(2),
      I2 => sr_awaddr(3),
      I3 => sr_awaddr(1),
      I4 => sr_awaddr(0),
      I5 => \m_payload_i[62]_i_2_n_0\,
      O => \m_payload_i_reg[2]_3\
    );
\si_be[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC0F80000"
    )
        port map (
      I0 => sr_awaddr(1),
      I1 => \^q\(29),
      I2 => \^q\(30),
      I3 => sr_awaddr(2),
      I4 => sr_awaddr(3),
      I5 => \^q\(31),
      O => \si_be[11]_i_4_n_0\
    );
\si_be[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAEA"
    )
        port map (
      I0 => \si_be[13]_i_4_n_0\,
      I1 => sr_awaddr(2),
      I2 => sr_awaddr(3),
      I3 => \m_payload_i[62]_i_2_n_0\,
      I4 => sr_awaddr(1),
      I5 => sr_awaddr(0),
      O => \m_payload_i_reg[2]_2\
    );
\si_be[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAEAAAAAA"
    )
        port map (
      I0 => \si_be[13]_i_4_n_0\,
      I1 => sr_awaddr(0),
      I2 => sr_awaddr(1),
      I3 => sr_awaddr(2),
      I4 => sr_awaddr(3),
      I5 => \m_payload_i[62]_i_2_n_0\,
      O => \m_payload_i_reg[0]_0\
    );
\si_be[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFAAAAAFAAAAAAA"
    )
        port map (
      I0 => \^q\(31),
      I1 => sr_awaddr(1),
      I2 => \^q\(30),
      I3 => \^q\(29),
      I4 => sr_awaddr(3),
      I5 => sr_awaddr(2),
      O => \si_be[13]_i_4_n_0\
    );
\si_be[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_0\,
      I1 => sr_awaddr(0),
      I2 => \m_payload_i[62]_i_2_n_0\,
      I3 => sr_awaddr(2),
      I4 => sr_awaddr(3),
      I5 => sr_awaddr(1),
      O => \m_payload_i_reg[0]_5\
    );
\si_be[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAEAAAEEAAEAAA"
    )
        port map (
      I0 => \^q\(31),
      I1 => sr_awaddr(3),
      I2 => sr_awaddr(2),
      I3 => \^q\(30),
      I4 => \^q\(29),
      I5 => sr_awaddr(1),
      O => \^m_payload_i_reg[37]_0\
    );
\si_be[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \^q\(30),
      I1 => \^q\(29),
      I2 => sr_awaddr(0),
      I3 => sr_awaddr(1),
      I4 => sr_awaddr(3),
      I5 => sr_awaddr(2),
      O => \m_payload_i_reg[36]_0\
    );
\si_be[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
        port map (
      I0 => \si_be[1]_i_4_n_0\,
      I1 => sr_awaddr(1),
      I2 => sr_awaddr(2),
      I3 => sr_awaddr(3),
      I4 => sr_awaddr(0),
      I5 => \m_payload_i[62]_i_2_n_0\,
      O => \m_payload_i_reg[1]_0\
    );
\si_be[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAFAAABAAAA"
    )
        port map (
      I0 => \^q\(31),
      I1 => sr_awaddr(1),
      I2 => sr_awaddr(2),
      I3 => sr_awaddr(3),
      I4 => \^q\(29),
      I5 => \^q\(30),
      O => \si_be[1]_i_4_n_0\
    );
\si_be[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => \si_be[3]_i_4_n_0\,
      I1 => sr_awaddr(0),
      I2 => \m_payload_i[62]_i_2_n_0\,
      I3 => sr_awaddr(1),
      I4 => sr_awaddr(2),
      I5 => sr_awaddr(3),
      O => \m_payload_i_reg[0]_2\
    );
\si_be[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => \si_be[3]_i_4_n_0\,
      I1 => sr_awaddr(1),
      I2 => sr_awaddr(2),
      I3 => sr_awaddr(3),
      I4 => sr_awaddr(0),
      I5 => \m_payload_i[62]_i_2_n_0\,
      O => \m_payload_i_reg[1]_1\
    );
\si_be[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFCCCECCCFCCCC"
    )
        port map (
      I0 => sr_awaddr(1),
      I1 => \^q\(31),
      I2 => sr_awaddr(3),
      I3 => sr_awaddr(2),
      I4 => \^q\(30),
      I5 => \^q\(29),
      O => \si_be[3]_i_4_n_0\
    );
\si_be[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => \si_be[5]_i_4_n_0\,
      I1 => \m_payload_i[62]_i_2_n_0\,
      I2 => sr_awaddr(3),
      I3 => sr_awaddr(2),
      I4 => sr_awaddr(1),
      I5 => sr_awaddr(0),
      O => \m_payload_i_reg[3]_0\
    );
\si_be[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAABAAAAAA"
    )
        port map (
      I0 => \si_be[5]_i_4_n_0\,
      I1 => \m_payload_i[62]_i_2_n_0\,
      I2 => sr_awaddr(3),
      I3 => sr_awaddr(2),
      I4 => sr_awaddr(0),
      I5 => sr_awaddr(1),
      O => \m_payload_i_reg[3]_1\
    );
\si_be[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFBFAFAAA"
    )
        port map (
      I0 => \^q\(31),
      I1 => sr_awaddr(1),
      I2 => \^q\(30),
      I3 => \^q\(29),
      I4 => sr_awaddr(2),
      I5 => sr_awaddr(3),
      O => \si_be[5]_i_4_n_0\
    );
\si_be[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAAAAAAAAA"
    )
        port map (
      I0 => \si_be[7]_i_4_n_0\,
      I1 => sr_awaddr(0),
      I2 => \m_payload_i[62]_i_2_n_0\,
      I3 => sr_awaddr(3),
      I4 => sr_awaddr(2),
      I5 => sr_awaddr(1),
      O => \m_payload_i_reg[0]_3\
    );
\si_be[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABAAAAAAA"
    )
        port map (
      I0 => \si_be[7]_i_4_n_0\,
      I1 => sr_awaddr(3),
      I2 => sr_awaddr(2),
      I3 => sr_awaddr(1),
      I4 => sr_awaddr(0),
      I5 => \m_payload_i[62]_i_2_n_0\,
      O => \m_payload_i_reg[3]_2\
    );
\si_be[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFCCECCCFCCCCC"
    )
        port map (
      I0 => sr_awaddr(1),
      I1 => \^q\(31),
      I2 => sr_awaddr(2),
      I3 => sr_awaddr(3),
      I4 => \^q\(30),
      I5 => \^q\(29),
      O => \si_be[7]_i_4_n_0\
    );
\si_be[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => \si_be[9]_i_4_n_0\,
      I1 => \m_payload_i[62]_i_2_n_0\,
      I2 => sr_awaddr(2),
      I3 => sr_awaddr(3),
      I4 => sr_awaddr(1),
      I5 => sr_awaddr(0),
      O => \m_payload_i_reg[2]_0\
    );
\si_be[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAABAAAAAA"
    )
        port map (
      I0 => \si_be[9]_i_4_n_0\,
      I1 => \m_payload_i[62]_i_2_n_0\,
      I2 => sr_awaddr(2),
      I3 => sr_awaddr(3),
      I4 => sr_awaddr(0),
      I5 => sr_awaddr(1),
      O => \m_payload_i_reg[2]_1\
    );
\si_be[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAAAAAAFBFAAAAA"
    )
        port map (
      I0 => \^q\(31),
      I1 => sr_awaddr(1),
      I2 => \^q\(30),
      I3 => \^q\(29),
      I4 => sr_awaddr(3),
      I5 => sr_awaddr(2),
      O => \si_be[9]_i_4_n_0\
    );
\si_ptr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \si_ptr[0]_i_2_n_0\,
      I1 => sr_awaddr(5),
      I2 => \si_ptr_reg[0]\(0),
      I3 => \si_wrap_cnt_reg[0]_0\,
      O => \m_payload_i_reg[5]_0\(0)
    );
\si_ptr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000383830000808"
    )
        port map (
      I0 => s_axi_awlen_ii(1),
      I1 => \^q\(31),
      I2 => \^q\(30),
      I3 => s_axi_awlen_ii(2),
      I4 => \^q\(29),
      I5 => s_axi_awlen_ii(3),
      O => \si_ptr[0]_i_2_n_0\
    );
\si_ptr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000008820000000"
    )
        port map (
      I0 => sr_awaddr(6),
      I1 => \^q\(31),
      I2 => s_axi_awlen_ii(3),
      I3 => \^q\(29),
      I4 => \^q\(30),
      I5 => s_axi_awlen_ii(2),
      O => \m_payload_i_reg[6]_0\
    );
\si_ptr[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^q\(30),
      I2 => s_axi_awlen_ii(3),
      I3 => \^q\(31),
      O => \m_payload_i_reg[35]_0\
    );
\si_wrap_be_next[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEEEF"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_1\(1),
      I1 => s_axi_awlen_ii(3),
      I2 => \si_wrap_be_next[8]_i_2_n_0\,
      I3 => sr_awaddr(3),
      I4 => \^q\(30),
      I5 => \^q\(29),
      O => \^m_payload_i_reg[37]_1\(0)
    );
\si_wrap_be_next[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAAA"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_1\(11),
      I1 => sr_awaddr(2),
      I2 => sr_awaddr(3),
      I3 => sr_awaddr(1),
      I4 => \si_wrap_be_next[14]_i_2_n_0\,
      O => \^m_payload_i_reg[37]_1\(10)
    );
\si_wrap_be_next[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABAAA"
    )
        port map (
      I0 => \^q\(31),
      I1 => s_axi_awlen_ii(1),
      I2 => sr_awaddr(3),
      I3 => \^q\(30),
      I4 => \^q\(29),
      O => \^m_payload_i_reg[37]_1\(11)
    );
\si_wrap_be_next[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_1\(13),
      I1 => sr_awaddr(3),
      I2 => sr_awaddr(2),
      I3 => \si_wrap_be_next[12]_i_2_n_0\,
      O => \^m_payload_i_reg[37]_1\(12)
    );
\si_wrap_be_next[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000010001"
    )
        port map (
      I0 => \^q\(29),
      I1 => s_axi_awlen_ii(3),
      I2 => \^q\(30),
      I3 => s_axi_awlen_ii(2),
      I4 => s_axi_awlen_ii(1),
      I5 => sr_awaddr(1),
      O => \si_wrap_be_next[12]_i_2_n_0\
    );
\si_wrap_be_next[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(31),
      I1 => s_axi_awlen_ii(2),
      I2 => sr_awaddr(3),
      I3 => s_axi_awlen_ii(1),
      I4 => \si_wrap_be_next[13]_i_2_n_0\,
      I5 => sr_awaddr(2),
      O => \^m_payload_i_reg[37]_1\(13)
    );
\si_wrap_be_next[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^q\(30),
      O => \si_wrap_be_next[13]_i_2_n_0\
    );
\si_wrap_be_next[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => \^q\(31),
      I1 => sr_awaddr(2),
      I2 => sr_awaddr(3),
      I3 => sr_awaddr(1),
      I4 => \si_wrap_be_next[14]_i_2_n_0\,
      O => \^m_payload_i_reg[37]_1\(14)
    );
\si_wrap_be_next[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axi_awlen_ii(1),
      I1 => \^q\(29),
      I2 => s_axi_awlen_ii(3),
      I3 => \^q\(30),
      I4 => s_axi_awlen_ii(2),
      O => \si_wrap_be_next[14]_i_2_n_0\
    );
\si_wrap_be_next[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBAA"
    )
        port map (
      I0 => \^q\(31),
      I1 => sr_awaddr(3),
      I2 => s_axi_awlen_ii(1),
      I3 => \^q\(30),
      I4 => \si_wrap_be_next[1]_i_2_n_0\,
      O => \^m_payload_i_reg[37]_1\(1)
    );
\si_wrap_be_next[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA2022"
    )
        port map (
      I0 => \^q\(29),
      I1 => sr_awaddr(3),
      I2 => s_axi_awlen_ii(1),
      I3 => sr_awaddr(2),
      I4 => \^q\(30),
      I5 => s_axi_awlen_ii(2),
      O => \si_wrap_be_next[1]_i_2_n_0\
    );
\si_wrap_be_next[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAEAAAA"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_1\(3),
      I1 => sr_awaddr(1),
      I2 => sr_awaddr(2),
      I3 => sr_awaddr(3),
      I4 => \si_wrap_be_next[14]_i_2_n_0\,
      O => \^m_payload_i_reg[37]_1\(2)
    );
\si_wrap_be_next[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFCCCC"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^q\(31),
      I2 => sr_awaddr(3),
      I3 => s_axi_awlen_ii(1),
      I4 => \^q\(30),
      O => \^m_payload_i_reg[37]_1\(3)
    );
\si_wrap_be_next[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00FF04FF00"
    )
        port map (
      I0 => s_axi_awlen_ii(1),
      I1 => \^q\(29),
      I2 => s_axi_awlen_ii(2),
      I3 => \^m_payload_i_reg[37]_1\(7),
      I4 => \si_wrap_be_next[4]_i_2_n_0\,
      I5 => \si_wrap_be_next[12]_i_2_n_0\,
      O => \^m_payload_i_reg[37]_1\(4)
    );
\si_wrap_be_next[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sr_awaddr(2),
      I1 => sr_awaddr(3),
      O => \si_wrap_be_next[4]_i_2_n_0\
    );
\si_wrap_be_next[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAABAAAAAA"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_1\(7),
      I1 => s_axi_awlen_ii(2),
      I2 => sr_awaddr(3),
      I3 => sr_awaddr(2),
      I4 => \^q\(29),
      I5 => s_axi_awlen_ii(1),
      O => \^m_payload_i_reg[37]_1\(5)
    );
\si_wrap_be_next[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEEEEEEEEEEEEE"
    )
        port map (
      I0 => \si_wrap_be_next[6]_i_2_n_0\,
      I1 => \^q\(31),
      I2 => sr_awaddr(3),
      I3 => sr_awaddr(2),
      I4 => sr_awaddr(1),
      I5 => \si_wrap_be_next[14]_i_2_n_0\,
      O => \^m_payload_i_reg[37]_1\(6)
    );
\si_wrap_be_next[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(30),
      I1 => \^q\(29),
      O => \si_wrap_be_next[6]_i_2_n_0\
    );
\si_wrap_be_next[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^q\(31),
      I1 => \^q\(29),
      I2 => \^q\(30),
      O => \^m_payload_i_reg[37]_1\(7)
    );
\si_wrap_be_next[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_1\(9),
      I1 => \si_wrap_be_next[8]_i_2_n_0\,
      I2 => \^q\(30),
      I3 => \^q\(29),
      I4 => sr_awaddr(3),
      I5 => s_axi_awlen_ii(3),
      O => \^m_payload_i_reg[37]_1\(8)
    );
\si_wrap_be_next[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5504"
    )
        port map (
      I0 => s_axi_awlen_ii(2),
      I1 => sr_awaddr(1),
      I2 => s_axi_awlen_ii(1),
      I3 => sr_awaddr(2),
      O => \si_wrap_be_next[8]_i_2_n_0\
    );
\si_wrap_be_next[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBAAAAAAAAAAAA"
    )
        port map (
      I0 => \^m_payload_i_reg[37]_1\(11),
      I1 => s_axi_awlen_ii(2),
      I2 => s_axi_awlen_ii(1),
      I3 => sr_awaddr(2),
      I4 => \si_wrap_be_next[13]_i_2_n_0\,
      I5 => sr_awaddr(3),
      O => \^m_payload_i_reg[37]_1\(9)
    );
\si_wrap_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47774744"
    )
        port map (
      I0 => \si_wrap_cnt_reg[0]_1\(0),
      I1 => \si_wrap_cnt_reg[0]_0\,
      I2 => \^q\(0),
      I3 => \^q\(31),
      I4 => \si_wrap_cnt[0]_i_2_n_0\,
      O => \si_wrap_cnt_reg[0]\(0)
    );
\si_wrap_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30503F50305F3F5F"
    )
        port map (
      I0 => sr_awaddr(2),
      I1 => sr_awaddr(3),
      I2 => \^q\(30),
      I3 => \^q\(29),
      I4 => sr_awaddr(1),
      I5 => sr_awaddr(0),
      O => \si_wrap_cnt[0]_i_2_n_0\
    );
\si_wrap_cnt[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => s_axi_awlen_ii(1),
      I1 => \si_wrap_cnt[1]_i_3_n_0\,
      I2 => \^q\(31),
      I3 => sr_awaddr(5),
      O => \m_payload_i_reg[45]_0\
    );
\si_wrap_cnt[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCFFF0AACC00F0"
    )
        port map (
      I0 => \^q\(0),
      I1 => sr_awaddr(3),
      I2 => sr_awaddr(1),
      I3 => \^q\(29),
      I4 => \^q\(30),
      I5 => sr_awaddr(2),
      O => \si_wrap_cnt[1]_i_3_n_0\
    );
\si_wrap_cnt[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C8"
    )
        port map (
      I0 => \si_wrap_cnt[2]_i_3_n_0\,
      I1 => s_axi_awlen_ii(2),
      I2 => \^q\(31),
      I3 => sr_awaddr(6),
      O => \m_payload_i_reg[46]_0\
    );
\si_wrap_cnt[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0305F30503F5F3F5"
    )
        port map (
      I0 => sr_awaddr(2),
      I1 => \^q\(0),
      I2 => \^q\(29),
      I3 => \^q\(30),
      I4 => sr_awaddr(5),
      I5 => sr_awaddr(3),
      O => \si_wrap_cnt[2]_i_3_n_0\
    );
\si_wrap_cnt[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5000530053005300"
    )
        port map (
      I0 => \^q\(1),
      I1 => \si_wrap_cnt[3]_i_4_n_0\,
      I2 => \^q\(31),
      I3 => s_axi_awlen_ii(3),
      I4 => sr_awaddr(6),
      I5 => \si_wrap_be_next[6]_i_2_n_0\,
      O => \m_payload_i_reg[7]_0\
    );
\si_wrap_cnt[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B0B3808"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(29),
      I2 => \^q\(30),
      I3 => sr_awaddr(5),
      I4 => sr_awaddr(3),
      O => \si_wrap_cnt[3]_i_4_n_0\
    );
\si_wrap_word_next[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFFF"
    )
        port map (
      I0 => \^q\(31),
      I1 => \^q\(30),
      I2 => \^q\(29),
      I3 => s_axi_awlen_ii(3),
      I4 => \si_wrap_word_next[0]_i_2_n_0\,
      O => f_si_wrap_word_return
    );
\si_wrap_word_next[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FCA00FFFFFFFF"
    )
        port map (
      I0 => s_axi_awlen_ii(2),
      I1 => s_axi_awlen_ii(1),
      I2 => \^q\(29),
      I3 => \^q\(30),
      I4 => \^q\(31),
      I5 => \^q\(0),
      O => \si_wrap_word_next[0]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_generic_baseblocks_v2_1_0_command_fifo is
  port (
    m_valid_i_reg_inv : out STD_LOGIC;
    cmd_push_block_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cmd_ready_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_inv_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \USE_WRITE.wr_cmd_ready\ : in STD_LOGIC;
    \NO_CMD_QUEUE.cmd_cnt_reg[4]\ : in STD_LOGIC;
    s_ready_i_reg : in STD_LOGIC;
    \USE_WRITE.m_axi_awready_i\ : in STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end design_1_auto_us_df_1_generic_baseblocks_v2_1_0_command_fifo;

architecture STRUCTURE of design_1_auto_us_df_1_generic_baseblocks_v2_1_0_command_fifo is
  signal M_READY_I : STD_LOGIC;
  signal \NO_CMD_QUEUE.cmd_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[3]_i_2_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[4]_i_3_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_VALID_WRITE.buffer_Full_q\ : STD_LOGIC;
  signal \USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0\ : STD_LOGIC;
  signal \^cmd_push_block_reg\ : STD_LOGIC;
  signal data_Exists_I : STD_LOGIC;
  signal data_Exists_I_i_2_n_0 : STD_LOGIC;
  signal \^m_valid_i_reg_inv\ : STD_LOGIC;
  signal next_Data_Exists : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][2]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][3]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \NO_CMD_QUEUE.cmd_cnt[1]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \NO_CMD_QUEUE.cmd_cnt[2]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of S_AXI_WREADY_i_i_3 : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \USE_RTL_ADDR.addr_q[0]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \USE_RTL_ADDR.addr_q[2]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \USE_RTL_ADDR.addr_q[3]_i_2\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \USE_RTL_ADDR.addr_q[4]_i_3\ : label is "soft_lutpair110";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][0]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][0]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31][0]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][1]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][1]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31][1]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][2]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][2]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31][2]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][3]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][3]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_WRITE.write_addr_inst/gen_id_queue.id_queue/USE_RTL_FIFO.data_srl_reg[31][3]_srl32 ";
  attribute SOFT_HLUTNM of s_ready_i_i_2 : label is "soft_lutpair111";
begin
  cmd_push_block_reg <= \^cmd_push_block_reg\;
  m_valid_i_reg_inv <= \^m_valid_i_reg_inv\;
\NO_CMD_QUEUE.cmd_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => Q(0),
      I1 => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      I2 => \USE_WRITE.wr_cmd_ready\,
      I3 => Q(1),
      O => D(0)
    );
\NO_CMD_QUEUE.cmd_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFF4400B"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_ready\,
      I1 => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      O => D(1)
    );
\NO_CMD_QUEUE.cmd_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFBA20000045"
    )
        port map (
      I0 => Q(1),
      I1 => \USE_WRITE.wr_cmd_ready\,
      I2 => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => D(2)
    );
\NO_CMD_QUEUE.cmd_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666266666666"
    )
        port map (
      I0 => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      I1 => \USE_WRITE.wr_cmd_ready\,
      I2 => Q(4),
      I3 => Q(0),
      I4 => Q(1),
      I5 => \NO_CMD_QUEUE.cmd_cnt_reg[4]\,
      O => cmd_ready_i_reg(0)
    );
\NO_CMD_QUEUE.cmd_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(1),
      I3 => \NO_CMD_QUEUE.cmd_cnt[4]_i_4_n_0\,
      I4 => Q(0),
      I5 => Q(2),
      O => D(3)
    );
\NO_CMD_QUEUE.cmd_cnt[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      I1 => \USE_WRITE.wr_cmd_ready\,
      O => \NO_CMD_QUEUE.cmd_cnt[4]_i_4_n_0\
    );
S_AXI_WREADY_i_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^cmd_push_block_reg\,
      I1 => E(0),
      O => \^m_valid_i_reg_inv\
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => s_axi_bready,
      I2 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0\,
      O => M_READY_I
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0\,
      Q => s_axi_bid(0),
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0\,
      Q => s_axi_bid(1),
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0\,
      Q => s_axi_bid(2),
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0\,
      Q => s_axi_bid(3),
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => M_READY_I,
      D => data_Exists_I,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0\,
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\
    );
\USE_RTL_ADDR.addr_q[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(0),
      O => \USE_RTL_ADDR.addr_q[0]_i_1_n_0\
    );
\USE_RTL_ADDR.addr_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A666AAAA59995555"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(0),
      I1 => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      I2 => m_axi_bvalid,
      I3 => s_axi_bready,
      I4 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0\,
      I5 => \USE_RTL_ADDR.addr_q_reg\(1),
      O => \USE_RTL_ADDR.addr_q[1]_i_1_n_0\
    );
\USE_RTL_ADDR.addr_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FF88007"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q[3]_i_2_n_0\,
      I1 => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      I2 => \USE_RTL_ADDR.addr_q_reg\(0),
      I3 => \USE_RTL_ADDR.addr_q_reg\(1),
      I4 => \USE_RTL_ADDR.addr_q_reg\(2),
      O => \USE_RTL_ADDR.addr_q[2]_i_1_n_0\
    );
\USE_RTL_ADDR.addr_q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFEEE80000111"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(0),
      I1 => \USE_RTL_ADDR.addr_q_reg\(1),
      I2 => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      I3 => \USE_RTL_ADDR.addr_q[3]_i_2_n_0\,
      I4 => \USE_RTL_ADDR.addr_q_reg\(2),
      I5 => \USE_RTL_ADDR.addr_q_reg\(3),
      O => \USE_RTL_ADDR.addr_q[3]_i_1_n_0\
    );
\USE_RTL_ADDR.addr_q[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0\,
      I1 => s_axi_bready,
      I2 => m_axi_bvalid,
      O => \USE_RTL_ADDR.addr_q[3]_i_2_n_0\
    );
\USE_RTL_ADDR.addr_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0C0C088080808"
    )
        port map (
      I0 => data_Exists_I_i_2_n_0,
      I1 => data_Exists_I,
      I2 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0\,
      I3 => s_axi_bready,
      I4 => m_axi_bvalid,
      I5 => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      O => \USE_RTL_ADDR.addr_q\
    );
\USE_RTL_ADDR.addr_q[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(4),
      I1 => \USE_RTL_ADDR.addr_q_reg\(3),
      I2 => \USE_RTL_ADDR.addr_q_reg\(0),
      I3 => \USE_RTL_ADDR.addr_q_reg\(1),
      I4 => \USE_RTL_ADDR.addr_q[4]_i_3_n_0\,
      I5 => \USE_RTL_ADDR.addr_q_reg\(2),
      O => \USE_RTL_ADDR.addr_q[4]_i_2_n_0\
    );
\USE_RTL_ADDR.addr_q[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      I1 => m_axi_bvalid,
      I2 => s_axi_bready,
      I3 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0\,
      O => \USE_RTL_ADDR.addr_q[4]_i_3_n_0\
    );
\USE_RTL_ADDR.addr_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[0]_i_1_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(0),
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\
    );
\USE_RTL_ADDR.addr_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[1]_i_1_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(1),
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\
    );
\USE_RTL_ADDR.addr_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[2]_i_1_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(2),
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\
    );
\USE_RTL_ADDR.addr_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[3]_i_1_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(3),
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\
    );
\USE_RTL_ADDR.addr_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[4]_i_2_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(4),
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\
    );
\USE_RTL_FIFO.data_srl_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      CLK => \out\,
      D => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]_0\(0),
      Q => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][0]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cmd_push_block,
      I1 => \^m_valid_i_reg_inv\,
      O => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\
    );
\USE_RTL_FIFO.data_srl_reg[31][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      CLK => \out\,
      D => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]_0\(1),
      Q => \USE_RTL_FIFO.data_srl_reg[31][1]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][1]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][2]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      CLK => \out\,
      D => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]_0\(2),
      Q => \USE_RTL_FIFO.data_srl_reg[31][2]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][2]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][3]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      CLK => \out\,
      D => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]_0\(3),
      Q => \USE_RTL_FIFO.data_srl_reg[31][3]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][3]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_VALID_WRITE.buffer_Full_q_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7070FFFF70000000"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => s_axi_bready,
      I2 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0\,
      I3 => \USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0\,
      I4 => data_Exists_I,
      I5 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      O => \USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0\
    );
\USE_RTL_VALID_WRITE.buffer_Full_q_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => \USE_RTL_ADDR.addr_q_reg\(1),
      I3 => \USE_RTL_ADDR.addr_q_reg\(4),
      I4 => \USE_RTL_ADDR.addr_q_reg\(3),
      I5 => \USE_RTL_ADDR.addr_q_reg\(2),
      O => \USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0\
    );
\USE_RTL_VALID_WRITE.buffer_Full_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0\,
      Q => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\
    );
data_Exists_I_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFFFF007000"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => s_axi_bready,
      I2 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_n_0\,
      I3 => data_Exists_I,
      I4 => data_Exists_I_i_2_n_0,
      I5 => \USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1_n_0\,
      O => next_Data_Exists
    );
data_Exists_I_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(2),
      I1 => \USE_RTL_ADDR.addr_q_reg\(3),
      I2 => \USE_RTL_ADDR.addr_q_reg\(0),
      I3 => \USE_RTL_ADDR.addr_q_reg\(4),
      I4 => \USE_RTL_ADDR.addr_q_reg\(1),
      O => data_Exists_I_i_2_n_0
    );
data_Exists_I_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => next_Data_Exists,
      Q => data_Exists_I,
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\
    );
m_valid_i_inv_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555540000000"
    )
        port map (
      I0 => cmd_push_block,
      I1 => m_valid_i_reg_inv_0,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(4),
      I5 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      O => \^cmd_push_block_reg\
    );
s_ready_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^cmd_push_block_reg\,
      I1 => s_ready_i_reg,
      I2 => \USE_WRITE.m_axi_awready_i\,
      O => s_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of design_1_auto_us_df_1_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_1_auto_us_df_1_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of design_1_auto_us_df_1_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of design_1_auto_us_df_1_xpm_cdc_async_rst : entity is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of design_1_auto_us_df_1_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of design_1_auto_us_df_1_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_auto_us_df_1_xpm_cdc_async_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_auto_us_df_1_xpm_cdc_async_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of design_1_auto_us_df_1_xpm_cdc_async_rst : entity is "ASYNC_RST";
end design_1_auto_us_df_1_xpm_cdc_async_rst;

architecture STRUCTURE of design_1_auto_us_df_1_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_blk_mem_gen_prim_wrapper is
  port (
    doutb : out STD_LOGIC_VECTOR ( 71 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    ena : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end design_1_auto_us_df_1_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of design_1_auto_us_df_1_blk_mem_gen_prim_wrapper is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "GENERATE_X_ONLY",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => addrb(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => addra(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clkb,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 24) => dina(34 downto 27),
      DIADI(23 downto 16) => dina(25 downto 18),
      DIADI(15 downto 8) => dina(16 downto 9),
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 24) => dina(70 downto 63),
      DIBDI(23 downto 16) => dina(61 downto 54),
      DIBDI(15 downto 8) => dina(52 downto 45),
      DIBDI(7 downto 0) => dina(43 downto 36),
      DIPADIP(3) => dina(35),
      DIPADIP(2) => dina(26),
      DIPADIP(1) => dina(17),
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => dina(71),
      DIPBDIP(2) => dina(62),
      DIPBDIP(1) => dina(53),
      DIPBDIP(0) => dina(44),
      DOADO(31 downto 24) => doutb(34 downto 27),
      DOADO(23 downto 16) => doutb(25 downto 18),
      DOADO(15 downto 8) => doutb(16 downto 9),
      DOADO(7 downto 0) => doutb(7 downto 0),
      DOBDO(31 downto 24) => doutb(70 downto 63),
      DOBDO(23 downto 16) => doutb(61 downto 54),
      DOBDO(15 downto 8) => doutb(52 downto 45),
      DOBDO(7 downto 0) => doutb(43 downto 36),
      DOPADOP(3) => doutb(35),
      DOPADOP(2) => doutb(26),
      DOPADOP(1) => doutb(17),
      DOPADOP(0) => doutb(8),
      DOPBDOP(3) => doutb(71),
      DOPBDOP(2) => doutb(62),
      DOPBDOP(1) => doutb(53),
      DOPBDOP(0) => doutb(44),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => enb,
      ENBWREN => ena,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => wea(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized0\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 71 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    ena : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized0\ : entity is "blk_mem_gen_prim_wrapper";
end \design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized0\;

architecture STRUCTURE of \design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized0\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "GENERATE_X_ONLY",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => addrb(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => addra(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clkb,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 24) => dina(34 downto 27),
      DIADI(23 downto 16) => dina(25 downto 18),
      DIADI(15 downto 8) => dina(16 downto 9),
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 24) => dina(70 downto 63),
      DIBDI(23 downto 16) => dina(61 downto 54),
      DIBDI(15 downto 8) => dina(52 downto 45),
      DIBDI(7 downto 0) => dina(43 downto 36),
      DIPADIP(3) => dina(35),
      DIPADIP(2) => dina(26),
      DIPADIP(1) => dina(17),
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => dina(71),
      DIPBDIP(2) => dina(62),
      DIPBDIP(1) => dina(53),
      DIPBDIP(0) => dina(44),
      DOADO(31 downto 24) => doutb(34 downto 27),
      DOADO(23 downto 16) => doutb(25 downto 18),
      DOADO(15 downto 8) => doutb(16 downto 9),
      DOADO(7 downto 0) => doutb(7 downto 0),
      DOBDO(31 downto 24) => doutb(70 downto 63),
      DOBDO(23 downto 16) => doutb(61 downto 54),
      DOBDO(15 downto 8) => doutb(52 downto 45),
      DOBDO(7 downto 0) => doutb(43 downto 36),
      DOPADOP(3) => doutb(35),
      DOPADOP(2) => doutb(26),
      DOPADOP(1) => doutb(17),
      DOPADOP(0) => doutb(8),
      DOPBDOP(3) => doutb(71),
      DOPBDOP(2) => doutb(62),
      DOPBDOP(1) => doutb(53),
      DOPBDOP(0) => doutb(44),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => enb,
      ENBWREN => ena,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => wea(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized1\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 71 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    ena : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized1\ : entity is "blk_mem_gen_prim_wrapper";
end \design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized1\;

architecture STRUCTURE of \design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized1\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "GENERATE_X_ONLY",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => addrb(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => addra(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clkb,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 24) => dina(34 downto 27),
      DIADI(23 downto 16) => dina(25 downto 18),
      DIADI(15 downto 8) => dina(16 downto 9),
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 24) => dina(70 downto 63),
      DIBDI(23 downto 16) => dina(61 downto 54),
      DIBDI(15 downto 8) => dina(52 downto 45),
      DIBDI(7 downto 0) => dina(43 downto 36),
      DIPADIP(3) => dina(35),
      DIPADIP(2) => dina(26),
      DIPADIP(1) => dina(17),
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => dina(71),
      DIPBDIP(2) => dina(62),
      DIPBDIP(1) => dina(53),
      DIPBDIP(0) => dina(44),
      DOADO(31 downto 24) => doutb(34 downto 27),
      DOADO(23 downto 16) => doutb(25 downto 18),
      DOADO(15 downto 8) => doutb(16 downto 9),
      DOADO(7 downto 0) => doutb(7 downto 0),
      DOBDO(31 downto 24) => doutb(70 downto 63),
      DOBDO(23 downto 16) => doutb(61 downto 54),
      DOBDO(15 downto 8) => doutb(52 downto 45),
      DOBDO(7 downto 0) => doutb(43 downto 36),
      DOPADOP(3) => doutb(35),
      DOPADOP(2) => doutb(26),
      DOPADOP(1) => doutb(17),
      DOPADOP(0) => doutb(8),
      DOPBDOP(3) => doutb(71),
      DOPBDOP(2) => doutb(62),
      DOPBDOP(1) => doutb(53),
      DOPBDOP(0) => doutb(44),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => enb,
      ENBWREN => ena,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => wea(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized2\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 71 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    ena : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized2\ : entity is "blk_mem_gen_prim_wrapper";
end \design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized2\;

architecture STRUCTURE of \design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized2\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "GENERATE_X_ONLY",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => addrb(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => addra(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clkb,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 24) => dina(34 downto 27),
      DIADI(23 downto 16) => dina(25 downto 18),
      DIADI(15 downto 8) => dina(16 downto 9),
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 24) => dina(70 downto 63),
      DIBDI(23 downto 16) => dina(61 downto 54),
      DIBDI(15 downto 8) => dina(52 downto 45),
      DIBDI(7 downto 0) => dina(43 downto 36),
      DIPADIP(3) => dina(35),
      DIPADIP(2) => dina(26),
      DIPADIP(1) => dina(17),
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => dina(71),
      DIPBDIP(2) => dina(62),
      DIPBDIP(1) => dina(53),
      DIPBDIP(0) => dina(44),
      DOADO(31 downto 24) => doutb(34 downto 27),
      DOADO(23 downto 16) => doutb(25 downto 18),
      DOADO(15 downto 8) => doutb(16 downto 9),
      DOADO(7 downto 0) => doutb(7 downto 0),
      DOBDO(31 downto 24) => doutb(70 downto 63),
      DOBDO(23 downto 16) => doutb(61 downto 54),
      DOBDO(15 downto 8) => doutb(52 downto 45),
      DOBDO(7 downto 0) => doutb(43 downto 36),
      DOPADOP(3) => doutb(35),
      DOPADOP(2) => doutb(26),
      DOPADOP(1) => doutb(17),
      DOPADOP(0) => doutb(8),
      DOPBDOP(3) => doutb(71),
      DOPBDOP(2) => doutb(62),
      DOPBDOP(1) => doutb(53),
      DOPBDOP(0) => doutb(44),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => enb,
      ENBWREN => ena,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => wea(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_dmem is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 65 downto 0 );
    s_aclk : in STD_LOGIC;
    \goreg_dm.dout_i_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 65 downto 0 );
    \goreg_dm.dout_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end design_1_auto_us_df_1_dmem;

architecture STRUCTURE of design_1_auto_us_df_1_dmem is
  signal NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_48_53_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_54_59_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_60_65_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of RAM_reg_0_31_0_5 : label is 2112;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of RAM_reg_0_31_0_5 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of RAM_reg_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of RAM_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of RAM_reg_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of RAM_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of RAM_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of RAM_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_12_17 : label is 2112;
  attribute RTL_RAM_NAME of RAM_reg_0_31_12_17 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_31_12_17 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_12_17 : label is 31;
  attribute ram_offset of RAM_reg_0_31_12_17 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_12_17 : label is 12;
  attribute ram_slice_end of RAM_reg_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_18_23 : label is 2112;
  attribute RTL_RAM_NAME of RAM_reg_0_31_18_23 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_31_18_23 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_18_23 : label is 31;
  attribute ram_offset of RAM_reg_0_31_18_23 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_18_23 : label is 18;
  attribute ram_slice_end of RAM_reg_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_24_29 : label is 2112;
  attribute RTL_RAM_NAME of RAM_reg_0_31_24_29 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_31_24_29 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_24_29 : label is 31;
  attribute ram_offset of RAM_reg_0_31_24_29 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_24_29 : label is 24;
  attribute ram_slice_end of RAM_reg_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_30_35 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_30_35 : label is 2112;
  attribute RTL_RAM_NAME of RAM_reg_0_31_30_35 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_31_30_35 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_31_30_35 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_30_35 : label is 31;
  attribute ram_offset of RAM_reg_0_31_30_35 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_30_35 : label is 30;
  attribute ram_slice_end of RAM_reg_0_31_30_35 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_36_41 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_36_41 : label is 2112;
  attribute RTL_RAM_NAME of RAM_reg_0_31_36_41 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_31_36_41 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_31_36_41 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_36_41 : label is 31;
  attribute ram_offset of RAM_reg_0_31_36_41 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_36_41 : label is 36;
  attribute ram_slice_end of RAM_reg_0_31_36_41 : label is 41;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_42_47 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_42_47 : label is 2112;
  attribute RTL_RAM_NAME of RAM_reg_0_31_42_47 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_31_42_47 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_31_42_47 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_42_47 : label is 31;
  attribute ram_offset of RAM_reg_0_31_42_47 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_42_47 : label is 42;
  attribute ram_slice_end of RAM_reg_0_31_42_47 : label is 47;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_48_53 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_48_53 : label is 2112;
  attribute RTL_RAM_NAME of RAM_reg_0_31_48_53 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_31_48_53 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_31_48_53 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_48_53 : label is 31;
  attribute ram_offset of RAM_reg_0_31_48_53 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_48_53 : label is 48;
  attribute ram_slice_end of RAM_reg_0_31_48_53 : label is 53;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_54_59 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_54_59 : label is 2112;
  attribute RTL_RAM_NAME of RAM_reg_0_31_54_59 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_31_54_59 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_31_54_59 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_54_59 : label is 31;
  attribute ram_offset of RAM_reg_0_31_54_59 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_54_59 : label is 54;
  attribute ram_slice_end of RAM_reg_0_31_54_59 : label is 59;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_60_65 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_60_65 : label is 2112;
  attribute RTL_RAM_NAME of RAM_reg_0_31_60_65 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_31_60_65 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_31_60_65 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_60_65 : label is 31;
  attribute ram_offset of RAM_reg_0_31_60_65 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_60_65 : label is 60;
  attribute ram_slice_end of RAM_reg_0_31_60_65 : label is 65;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_6_11 : label is 2112;
  attribute RTL_RAM_NAME of RAM_reg_0_31_6_11 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute RTL_RAM_TYPE of RAM_reg_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of RAM_reg_0_31_6_11 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_6_11 : label is 31;
  attribute ram_offset of RAM_reg_0_31_6_11 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_6_11 : label is 6;
  attribute ram_slice_end of RAM_reg_0_31_6_11 : label is 11;
begin
RAM_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRB(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRC(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => DI(1 downto 0),
      DIB(1 downto 0) => DI(3 downto 2),
      DIC(1 downto 0) => DI(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout_i(1 downto 0),
      DOB(1 downto 0) => dout_i(3 downto 2),
      DOC(1 downto 0) => dout_i(5 downto 4),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => \goreg_dm.dout_i_reg[1]\(0)
    );
RAM_reg_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRB(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRC(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => DI(13 downto 12),
      DIB(1 downto 0) => DI(15 downto 14),
      DIC(1 downto 0) => DI(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout_i(13 downto 12),
      DOB(1 downto 0) => dout_i(15 downto 14),
      DOC(1 downto 0) => dout_i(17 downto 16),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => \goreg_dm.dout_i_reg[1]\(0)
    );
RAM_reg_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRB(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRC(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => DI(19 downto 18),
      DIB(1 downto 0) => DI(21 downto 20),
      DIC(1 downto 0) => DI(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout_i(19 downto 18),
      DOB(1 downto 0) => dout_i(21 downto 20),
      DOC(1 downto 0) => dout_i(23 downto 22),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => \goreg_dm.dout_i_reg[1]\(0)
    );
RAM_reg_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRB(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRC(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => DI(25 downto 24),
      DIB(1 downto 0) => DI(27 downto 26),
      DIC(1 downto 0) => DI(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout_i(25 downto 24),
      DOB(1 downto 0) => dout_i(27 downto 26),
      DOC(1 downto 0) => dout_i(29 downto 28),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => \goreg_dm.dout_i_reg[1]\(0)
    );
RAM_reg_0_31_30_35: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRB(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRC(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => DI(31 downto 30),
      DIB(1 downto 0) => DI(33 downto 32),
      DIC(1 downto 0) => DI(35 downto 34),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout_i(31 downto 30),
      DOB(1 downto 0) => dout_i(33 downto 32),
      DOC(1 downto 0) => dout_i(35 downto 34),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => \goreg_dm.dout_i_reg[1]\(0)
    );
RAM_reg_0_31_36_41: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRB(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRC(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => DI(37 downto 36),
      DIB(1 downto 0) => DI(39 downto 38),
      DIC(1 downto 0) => DI(41 downto 40),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout_i(37 downto 36),
      DOB(1 downto 0) => dout_i(39 downto 38),
      DOC(1 downto 0) => dout_i(41 downto 40),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => \goreg_dm.dout_i_reg[1]\(0)
    );
RAM_reg_0_31_42_47: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRB(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRC(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => DI(43 downto 42),
      DIB(1 downto 0) => DI(45 downto 44),
      DIC(1 downto 0) => DI(47 downto 46),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout_i(43 downto 42),
      DOB(1 downto 0) => dout_i(45 downto 44),
      DOC(1 downto 0) => dout_i(47 downto 46),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => \goreg_dm.dout_i_reg[1]\(0)
    );
RAM_reg_0_31_48_53: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRB(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRC(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => DI(49 downto 48),
      DIB(1 downto 0) => DI(51 downto 50),
      DIC(1 downto 0) => DI(53 downto 52),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout_i(49 downto 48),
      DOB(1 downto 0) => dout_i(51 downto 50),
      DOC(1 downto 0) => dout_i(53 downto 52),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_48_53_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => \goreg_dm.dout_i_reg[1]\(0)
    );
RAM_reg_0_31_54_59: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRB(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRC(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => DI(55 downto 54),
      DIB(1 downto 0) => DI(57 downto 56),
      DIC(1 downto 0) => DI(59 downto 58),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout_i(55 downto 54),
      DOB(1 downto 0) => dout_i(57 downto 56),
      DOC(1 downto 0) => dout_i(59 downto 58),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_54_59_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => \goreg_dm.dout_i_reg[1]\(0)
    );
RAM_reg_0_31_60_65: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRB(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRC(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => DI(61 downto 60),
      DIB(1 downto 0) => DI(63 downto 62),
      DIC(1 downto 0) => DI(65 downto 64),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout_i(61 downto 60),
      DOB(1 downto 0) => dout_i(63 downto 62),
      DOC(1 downto 0) => dout_i(65 downto 64),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_60_65_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => \goreg_dm.dout_i_reg[1]\(0)
    );
RAM_reg_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRB(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRC(4 downto 0) => \goreg_dm.dout_i_reg[1]_0\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => DI(7 downto 6),
      DIB(1 downto 0) => DI(9 downto 8),
      DIC(1 downto 0) => DI(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => dout_i(7 downto 6),
      DOB(1 downto 0) => dout_i(9 downto 8),
      DOC(1 downto 0) => dout_i(11 downto 10),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => \goreg_dm.dout_i_reg[1]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_rd_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gc0.count_d1_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[4]_1\ : in STD_LOGIC
  );
end design_1_auto_us_df_1_rd_bin_cntr;

architecture STRUCTURE of design_1_auto_us_df_1_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1\ : label is "soft_lutpair0";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => plusOp(3)
    );
\gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => plusOp(4)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[4]_1\,
      D => \^q\(0),
      Q => \gc0.count_d1_reg[4]_0\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[4]_1\,
      D => \^q\(1),
      Q => \gc0.count_d1_reg[4]_0\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[4]_1\,
      D => \^q\(2),
      Q => \gc0.count_d1_reg[4]_0\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[4]_1\,
      D => \^q\(3),
      Q => \gc0.count_d1_reg[4]_0\(3)
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[4]_1\,
      D => \^q\(4),
      Q => \gc0.count_d1_reg[4]_0\(4)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => plusOp(0),
      PRE => \gc0.count_d1_reg[4]_1\,
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[4]_1\,
      D => plusOp(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[4]_1\,
      D => plusOp(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[4]_1\,
      D => plusOp(3),
      Q => \^q\(3)
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \gc0.count_d1_reg[4]_1\,
      D => plusOp(4),
      Q => \^q\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_rd_fwft is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    \gpregsm2.curr_fwft_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    \gpregsm2.user_valid_reg_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC
  );
end design_1_auto_us_df_1_rd_fwft;

architecture STRUCTURE of design_1_auto_us_df_1_rd_fwft is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_d1 : STD_LOGIC;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm2.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm2.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm2.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm2.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm2.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm2.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm2.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm2.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm2.user_valid_reg\ : label is "no";
begin
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCB1000"
    )
        port map (
      I0 => m_axi_awready,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \out\,
      I4 => aempty_fwft_fb_i,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \gpregsm2.user_valid_reg_0\,
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \gpregsm2.user_valid_reg_0\,
      Q => aempty_fwft_i
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EECCFFCF22000000"
    )
        port map (
      I0 => m_axi_awready,
      I1 => curr_fwft_state(0),
      I2 => empty_d1,
      I3 => \out\,
      I4 => curr_fwft_state(1),
      I5 => empty_fwft_fb_i,
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \gpregsm2.user_valid_reg_0\,
      Q => empty_fwft_fb_i
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EECCFFCF22000000"
    )
        port map (
      I0 => m_axi_awready,
      I1 => curr_fwft_state(0),
      I2 => empty_d1,
      I3 => \out\,
      I4 => curr_fwft_state(1),
      I5 => empty_fwft_fb_o_i,
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => \gpregsm2.user_valid_reg_0\,
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \gpregsm2.user_valid_reg_0\,
      Q => empty_fwft_i
    );
\gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0051"
    )
        port map (
      I0 => \out\,
      I1 => curr_fwft_state(1),
      I2 => m_axi_awready,
      I3 => curr_fwft_state(0),
      O => E(0)
    );
\goreg_dm.dout_i[65]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004540"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => m_axi_awready,
      I2 => curr_fwft_state(1),
      I3 => empty_d1,
      I4 => \out\,
      I5 => \gpregsm2.user_valid_reg_0\,
      O => \gpregsm2.curr_fwft_state_reg[0]_0\(0)
    );
\gprege2.empty_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \out\,
      PRE => \gpregsm2.user_valid_reg_0\,
      Q => empty_d1
    );
\gpregsm2.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1151"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => \out\,
      I2 => curr_fwft_state(1),
      I3 => m_axi_awready,
      O => next_fwft_state(1)
    );
\gpregsm2.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \gpregsm2.user_valid_reg_0\,
      D => '0',
      Q => curr_fwft_state(0)
    );
\gpregsm2.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \gpregsm2.user_valid_reg_0\,
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm2.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \gpregsm2.user_valid_reg_0\,
      D => next_fwft_state(1),
      Q => user_valid
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_fwft_i,
      O => m_axi_awvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_rd_status_flags_ss is
  port (
    \out\ : out STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ram_empty_i_reg_1 : in STD_LOGIC
  );
end design_1_auto_us_df_1_rd_status_flags_ss;

architecture STRUCTURE of design_1_auto_us_df_1_rd_status_flags_ss is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_empty_i_reg_0,
      PRE => ram_empty_i_reg_1,
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_empty_i_reg_0,
      PRE => ram_empty_i_reg_1,
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_wr_bin_cntr is
  port (
    ram_full_comb : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_fb_i_reg_0 : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC;
    ram_empty_fb_i_i_3_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_empty_fb_i_i_2_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gcc0.gc0.count_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_auto_us_df_1_wr_bin_cntr;

architecture STRUCTURE of design_1_auto_us_df_1_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1\ : STD_LOGIC;
  signal \gwss.wsts/comp0\ : STD_LOGIC;
  signal \gwss.wsts/comp1\ : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_empty_fb_i_i_4_n_0 : STD_LOGIC;
  signal ram_empty_fb_i_i_5_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_3_n_0 : STD_LOGIC;
  signal wr_pntr_plus1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ram_full_fb_i_i_2 : label is "soft_lutpair2";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus1(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus1(0),
      I1 => wr_pntr_plus1(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wr_pntr_plus1(0),
      I1 => wr_pntr_plus1(1),
      I2 => wr_pntr_plus1(2),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_pntr_plus1(1),
      I1 => wr_pntr_plus1(0),
      I2 => wr_pntr_plus1(2),
      I3 => wr_pntr_plus1(3),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => wr_pntr_plus1(2),
      I1 => wr_pntr_plus1(0),
      I2 => wr_pntr_plus1(1),
      I3 => wr_pntr_plus1(3),
      I4 => wr_pntr_plus1(4),
      O => \plusOp__0\(4)
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gcc0.gc0.count_reg[4]_0\(0),
      CLR => AR(0),
      D => wr_pntr_plus1(0),
      Q => \^q\(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gcc0.gc0.count_reg[4]_0\(0),
      CLR => AR(0),
      D => wr_pntr_plus1(1),
      Q => \^q\(1)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gcc0.gc0.count_reg[4]_0\(0),
      CLR => AR(0),
      D => wr_pntr_plus1(2),
      Q => \^q\(2)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gcc0.gc0.count_reg[4]_0\(0),
      CLR => AR(0),
      D => wr_pntr_plus1(3),
      Q => \^q\(3)
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gcc0.gc0.count_reg[4]_0\(0),
      CLR => AR(0),
      D => wr_pntr_plus1(4),
      Q => \^q\(4)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => \gcc0.gc0.count_reg[4]_0\(0),
      D => \plusOp__0\(0),
      PRE => AR(0),
      Q => wr_pntr_plus1(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gcc0.gc0.count_reg[4]_0\(0),
      CLR => AR(0),
      D => \plusOp__0\(1),
      Q => wr_pntr_plus1(1)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gcc0.gc0.count_reg[4]_0\(0),
      CLR => AR(0),
      D => \plusOp__0\(2),
      Q => wr_pntr_plus1(2)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gcc0.gc0.count_reg[4]_0\(0),
      CLR => AR(0),
      D => \plusOp__0\(3),
      Q => wr_pntr_plus1(3)
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gcc0.gc0.count_reg[4]_0\(0),
      CLR => AR(0),
      D => \plusOp__0\(4),
      Q => wr_pntr_plus1(4)
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFFFF88008888"
    )
        port map (
      I0 => E(0),
      I1 => \gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1\,
      I2 => \gwss.wsts/comp0\,
      I3 => \out\,
      I4 => s_axi_awvalid,
      I5 => ram_empty_i_reg,
      O => ram_full_fb_i_reg
    );
ram_empty_fb_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \^q\(1),
      I1 => ram_empty_fb_i_i_2_0(1),
      I2 => \^q\(0),
      I3 => ram_empty_fb_i_i_2_0(0),
      I4 => ram_empty_fb_i_i_4_n_0,
      O => \gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1\
    );
ram_empty_fb_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \^q\(1),
      I1 => ram_empty_fb_i_i_3_0(1),
      I2 => \^q\(0),
      I3 => ram_empty_fb_i_i_3_0(0),
      I4 => ram_empty_fb_i_i_5_n_0,
      O => \gwss.wsts/comp0\
    );
ram_empty_fb_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => ram_empty_fb_i_i_2_0(3),
      I2 => \^q\(2),
      I3 => ram_empty_fb_i_i_2_0(2),
      I4 => ram_empty_fb_i_i_2_0(4),
      I5 => \^q\(4),
      O => ram_empty_fb_i_i_4_n_0
    );
ram_empty_fb_i_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => ram_empty_fb_i_i_3_0(3),
      I2 => \^q\(2),
      I3 => ram_empty_fb_i_i_3_0(2),
      I4 => ram_empty_fb_i_i_3_0(4),
      I5 => \^q\(4),
      O => ram_empty_fb_i_i_5_n_0
    );
ram_full_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000FFF08080808"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \gwss.wsts/comp1\,
      I2 => E(0),
      I3 => \gwss.wsts/comp0\,
      I4 => ram_full_fb_i_reg_0,
      I5 => \out\,
      O => ram_full_comb
    );
ram_full_fb_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => wr_pntr_plus1(1),
      I1 => ram_empty_fb_i_i_3_0(1),
      I2 => wr_pntr_plus1(0),
      I3 => ram_empty_fb_i_i_3_0(0),
      I4 => ram_full_fb_i_i_3_n_0,
      O => \gwss.wsts/comp1\
    );
ram_full_fb_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_pntr_plus1(3),
      I1 => ram_empty_fb_i_i_3_0(3),
      I2 => wr_pntr_plus1(2),
      I3 => ram_empty_fb_i_i_3_0(2),
      I4 => ram_empty_fb_i_i_3_0(4),
      I5 => wr_pntr_plus1(4),
      O => ram_full_fb_i_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_wr_status_flags_ss is
  port (
    \out\ : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_comb : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC
  );
end design_1_auto_us_df_1_wr_status_flags_ss;

architecture STRUCTURE of design_1_auto_us_df_1_wr_status_flags_ss is
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  \out\ <= ram_full_fb_i;
\gcc0.gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => ram_full_fb_i,
      O => E(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_fb
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_full_comb,
      PRE => ram_full_i_reg_0,
      Q => ram_full_fb_i
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_full_comb,
      PRE => ram_full_i_reg_0,
      Q => ram_full_i
    );
s_axi_awready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => s_axi_awready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_a_upsizer is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_inv : out STD_LOGIC;
    cmd_push_block_reg_0 : out STD_LOGIC;
    s_axi_aresetn : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    cmd_push_block0 : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \USE_WRITE.wr_cmd_ready\ : in STD_LOGIC;
    s_ready_i_reg : in STD_LOGIC;
    \USE_WRITE.m_axi_awready_i\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_a_upsizer;

architecture STRUCTURE of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_a_upsizer is
  signal \NO_CMD_QUEUE.cmd_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \NO_CMD_QUEUE.cmd_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \NO_CMD_QUEUE.cmd_cnt_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal cmd_packed_wrap_i1_carry_n_1 : STD_LOGIC;
  signal cmd_packed_wrap_i1_carry_n_2 : STD_LOGIC;
  signal cmd_packed_wrap_i1_carry_n_3 : STD_LOGIC;
  signal cmd_push_block : STD_LOGIC;
  signal \gen_id_queue.id_queue_n_2\ : STD_LOGIC;
  signal \gen_id_queue.id_queue_n_3\ : STD_LOGIC;
  signal \gen_id_queue.id_queue_n_4\ : STD_LOGIC;
  signal \gen_id_queue.id_queue_n_5\ : STD_LOGIC;
  signal \gen_id_queue.id_queue_n_6\ : STD_LOGIC;
  signal m_valid_i_inv_i_3_n_0 : STD_LOGIC;
  signal NLW_cmd_packed_wrap_i1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \NO_CMD_QUEUE.cmd_cnt[4]_i_3\ : label is "soft_lutpair112";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of cmd_packed_wrap_i1_carry : label is 11;
  attribute SOFT_HLUTNM of m_valid_i_inv_i_3 : label is "soft_lutpair112";
begin
\NO_CMD_QUEUE.cmd_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NO_CMD_QUEUE.cmd_cnt_reg\(0),
      O => \NO_CMD_QUEUE.cmd_cnt[0]_i_1_n_0\
    );
\NO_CMD_QUEUE.cmd_cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \NO_CMD_QUEUE.cmd_cnt_reg\(3),
      I1 => \NO_CMD_QUEUE.cmd_cnt_reg\(2),
      O => \NO_CMD_QUEUE.cmd_cnt[4]_i_3_n_0\
    );
\NO_CMD_QUEUE.cmd_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \gen_id_queue.id_queue_n_6\,
      D => \NO_CMD_QUEUE.cmd_cnt[0]_i_1_n_0\,
      Q => \NO_CMD_QUEUE.cmd_cnt_reg\(0),
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\
    );
\NO_CMD_QUEUE.cmd_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \gen_id_queue.id_queue_n_6\,
      D => \gen_id_queue.id_queue_n_5\,
      Q => \NO_CMD_QUEUE.cmd_cnt_reg\(1),
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\
    );
\NO_CMD_QUEUE.cmd_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \gen_id_queue.id_queue_n_6\,
      D => \gen_id_queue.id_queue_n_4\,
      Q => \NO_CMD_QUEUE.cmd_cnt_reg\(2),
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\
    );
\NO_CMD_QUEUE.cmd_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \gen_id_queue.id_queue_n_6\,
      D => \gen_id_queue.id_queue_n_3\,
      Q => \NO_CMD_QUEUE.cmd_cnt_reg\(3),
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\
    );
\NO_CMD_QUEUE.cmd_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \gen_id_queue.id_queue_n_6\,
      D => \gen_id_queue.id_queue_n_2\,
      Q => \NO_CMD_QUEUE.cmd_cnt_reg\(4),
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\
    );
cmd_packed_wrap_i1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CO(0),
      CO(2) => cmd_packed_wrap_i1_carry_n_1,
      CO(1) => cmd_packed_wrap_i1_carry_n_2,
      CO(0) => cmd_packed_wrap_i1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_cmd_packed_wrap_i1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
cmd_push_block_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => cmd_push_block0,
      Q => cmd_push_block,
      R => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\
    );
\gen_id_queue.id_queue\: entity work.design_1_auto_us_df_1_generic_baseblocks_v2_1_0_command_fifo
     port map (
      D(3) => \gen_id_queue.id_queue_n_2\,
      D(2) => \gen_id_queue.id_queue_n_3\,
      D(1) => \gen_id_queue.id_queue_n_4\,
      D(0) => \gen_id_queue.id_queue_n_5\,
      E(0) => E(0),
      \NO_CMD_QUEUE.cmd_cnt_reg[4]\ => \NO_CMD_QUEUE.cmd_cnt[4]_i_3_n_0\,
      Q(4 downto 0) => \NO_CMD_QUEUE.cmd_cnt_reg\(4 downto 0),
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[3]_0\(3 downto 0) => Q(3 downto 0),
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\,
      \USE_WRITE.m_axi_awready_i\ => \USE_WRITE.m_axi_awready_i\,
      \USE_WRITE.wr_cmd_ready\ => \USE_WRITE.wr_cmd_ready\,
      cmd_push_block => cmd_push_block,
      cmd_push_block_reg => cmd_push_block_reg_0,
      cmd_ready_i_reg(0) => \gen_id_queue.id_queue_n_6\,
      m_axi_bvalid => m_axi_bvalid,
      m_valid_i_reg_inv => m_valid_i_reg_inv,
      m_valid_i_reg_inv_0 => m_valid_i_inv_i_3_n_0,
      \out\ => \out\,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_ready_i_reg => s_ready_i_reg
    );
m_valid_i_inv_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \NO_CMD_QUEUE.cmd_cnt_reg\(3),
      I1 => \NO_CMD_QUEUE.cmd_cnt_reg\(2),
      O => m_valid_i_inv_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_axi_register_slice_v2_1_21_axi_register_slice is
  port (
    \aresetn_d_reg[1]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_WREADY_i_reg : out STD_LOGIC;
    \FSM_sequential_si_state_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \si_ptr_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_WREADY_i_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \si_wrap_cnt_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_si_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_WREADY_i_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_push_block0 : out STD_LOGIC;
    s_ready_i_reg : out STD_LOGIC;
    \FSM_sequential_si_state_reg[0]\ : out STD_LOGIC;
    \si_be_reg[15]\ : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    s_axi_wlast_0 : out STD_LOGIC;
    s_axi_wlast_1 : out STD_LOGIC;
    \buf_cnt_reg[1]\ : out STD_LOGIC;
    \buf_cnt_reg[1]_0\ : out STD_LOGIC;
    \m_payload_i_reg[66]\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awsize : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \aresetn_d_reg[1]_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \si_buf_reg[1]\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    si_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_176_in : in STD_LOGIC;
    \FSM_sequential_si_state_reg[0]_0\ : in STD_LOGIC;
    si_wrap_word_next : in STD_LOGIC;
    \si_ptr_reg[0]\ : in STD_LOGIC;
    word : in STD_LOGIC;
    \m_payload_i_reg[61]\ : in STD_LOGIC_VECTOR ( 45 downto 0 );
    \si_be_reg[0]\ : in STD_LOGIC;
    \si_be_reg[0]_0\ : in STD_LOGIC;
    \si_be_reg[1]\ : in STD_LOGIC;
    \si_be_reg[1]_0\ : in STD_LOGIC;
    \si_be_reg[2]\ : in STD_LOGIC;
    \si_be_reg[2]_0\ : in STD_LOGIC;
    \si_be_reg[3]\ : in STD_LOGIC;
    \si_be_reg[3]_0\ : in STD_LOGIC;
    \si_be_reg[4]\ : in STD_LOGIC;
    \si_be_reg[4]_0\ : in STD_LOGIC;
    \si_be_reg[5]\ : in STD_LOGIC;
    \si_be_reg[5]_0\ : in STD_LOGIC;
    \si_be_reg[6]\ : in STD_LOGIC;
    \si_be_reg[6]_0\ : in STD_LOGIC;
    \si_be_reg[7]\ : in STD_LOGIC;
    \si_be_reg[7]_0\ : in STD_LOGIC;
    \si_be_reg[8]\ : in STD_LOGIC;
    \si_be_reg[8]_0\ : in STD_LOGIC;
    \si_be_reg[9]\ : in STD_LOGIC;
    \si_be_reg[9]_0\ : in STD_LOGIC;
    \si_be_reg[10]\ : in STD_LOGIC;
    \si_be_reg[10]_0\ : in STD_LOGIC;
    \si_be_reg[11]\ : in STD_LOGIC;
    \si_be_reg[11]_0\ : in STD_LOGIC;
    \si_be_reg[12]\ : in STD_LOGIC;
    \si_be_reg[12]_0\ : in STD_LOGIC;
    \si_be_reg[13]\ : in STD_LOGIC;
    \si_be_reg[13]_0\ : in STD_LOGIC;
    \si_be_reg[14]\ : in STD_LOGIC;
    \si_be_reg[14]_0\ : in STD_LOGIC;
    \si_be_reg[15]_0\ : in STD_LOGIC;
    \si_be_reg[15]_1\ : in STD_LOGIC;
    \si_be_reg[15]_2\ : in STD_LOGIC;
    \si_be_reg[15]_3\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \si_ptr_reg[1]\ : in STD_LOGIC;
    \si_ptr_reg[2]\ : in STD_LOGIC;
    \si_ptr_reg[6]\ : in STD_LOGIC;
    \si_wrap_cnt_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \si_wrap_cnt_reg[1]\ : in STD_LOGIC;
    \si_wrap_cnt_reg[2]\ : in STD_LOGIC;
    \si_wrap_cnt_reg[3]_1\ : in STD_LOGIC;
    \si_be_reg[0]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \si_ptr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    buf_cnt : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : in STD_LOGIC;
    \aresetn_d_reg[1]_1\ : in STD_LOGIC;
    m_valid_i_reg_inv : in STD_LOGIC;
    m_valid_i_reg_inv_0 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    aw_pop : in STD_LOGIC;
    \m_payload_i_reg[66]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \m_payload_i_reg[35]\ : in STD_LOGIC
  );
end design_1_auto_us_df_1_axi_register_slice_v2_1_21_axi_register_slice;

architecture STRUCTURE of design_1_auto_us_df_1_axi_register_slice_v2_1_21_axi_register_slice is
begin
\aw.aw_pipe\: entity work.design_1_auto_us_df_1_axi_register_slice_v2_1_21_axic_register_slice
     port map (
      D(15 downto 0) => D(15 downto 0),
      E(0) => E(0),
      \FSM_sequential_si_state_reg[0]\ => \FSM_sequential_si_state_reg[0]\,
      \FSM_sequential_si_state_reg[0]_0\ => \FSM_sequential_si_state_reg[0]_0\,
      \FSM_sequential_si_state_reg[1]\ => \FSM_sequential_si_state_reg[1]\,
      \FSM_sequential_si_state_reg[1]_0\(0) => \FSM_sequential_si_state_reg[1]_0\(0),
      Q(6 downto 0) => Q(6 downto 0),
      SR(0) => SR(0),
      S_AXI_WREADY_i_reg => S_AXI_WREADY_i_reg,
      S_AXI_WREADY_i_reg_0(0) => S_AXI_WREADY_i_reg_0(0),
      S_AXI_WREADY_i_reg_1(0) => S_AXI_WREADY_i_reg_1(0),
      \aresetn_d_reg[1]_0\ => \aresetn_d_reg[1]\,
      \aresetn_d_reg[1]_1\ => \aresetn_d_reg[1]_0\,
      \aresetn_d_reg[1]_2\ => \aresetn_d_reg[1]_1\,
      aw_pop => aw_pop,
      buf_cnt(1 downto 0) => buf_cnt(1 downto 0),
      \buf_cnt_reg[1]\ => \buf_cnt_reg[1]\,
      \buf_cnt_reg[1]_0\ => \buf_cnt_reg[1]_0\,
      cmd_push_block0 => cmd_push_block0,
      \m_payload_i_reg[35]_0\ => \m_payload_i_reg[35]\,
      \m_payload_i_reg[61]_0\(45 downto 0) => \m_payload_i_reg[61]\(45 downto 0),
      \m_payload_i_reg[66]_0\(63 downto 0) => \m_payload_i_reg[66]\(63 downto 0),
      \m_payload_i_reg[66]_1\(23 downto 0) => \m_payload_i_reg[66]_0\(23 downto 0),
      m_valid_i_reg_inv_0 => m_valid_i_reg_inv,
      m_valid_i_reg_inv_1 => m_valid_i_reg_inv_0,
      \out\ => \out\,
      p_176_in => p_176_in,
      s_axi_awready => s_axi_awready,
      s_axi_awsize(1 downto 0) => s_axi_awsize(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wlast => s_axi_wlast,
      s_axi_wlast_0 => s_axi_wlast_0,
      s_axi_wlast_1 => s_axi_wlast_1,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0(0) => s_axi_wvalid_0(0),
      s_ready_i_reg_0 => s_ready_i_reg,
      s_ready_i_reg_1 => s_ready_i_reg_0,
      \si_be_reg[0]\ => \si_be_reg[0]\,
      \si_be_reg[0]_0\ => \si_be_reg[0]_0\,
      \si_be_reg[0]_1\(1 downto 0) => \si_be_reg[0]_1\(1 downto 0),
      \si_be_reg[10]\ => \si_be_reg[10]\,
      \si_be_reg[10]_0\ => \si_be_reg[10]_0\,
      \si_be_reg[11]\ => \si_be_reg[11]\,
      \si_be_reg[11]_0\ => \si_be_reg[11]_0\,
      \si_be_reg[12]\ => \si_be_reg[12]\,
      \si_be_reg[12]_0\ => \si_be_reg[12]_0\,
      \si_be_reg[13]\ => \si_be_reg[13]\,
      \si_be_reg[13]_0\ => \si_be_reg[13]_0\,
      \si_be_reg[14]\ => \si_be_reg[14]\,
      \si_be_reg[14]_0\ => \si_be_reg[14]_0\,
      \si_be_reg[15]\ => \si_be_reg[15]\,
      \si_be_reg[15]_0\ => \si_be_reg[15]_0\,
      \si_be_reg[15]_1\ => \si_be_reg[15]_1\,
      \si_be_reg[15]_2\ => \si_be_reg[15]_2\,
      \si_be_reg[15]_3\ => \si_be_reg[15]_3\,
      \si_be_reg[1]\ => \si_be_reg[1]\,
      \si_be_reg[1]_0\ => \si_be_reg[1]_0\,
      \si_be_reg[2]\ => \si_be_reg[2]\,
      \si_be_reg[2]_0\ => \si_be_reg[2]_0\,
      \si_be_reg[3]\ => \si_be_reg[3]\,
      \si_be_reg[3]_0\ => \si_be_reg[3]_0\,
      \si_be_reg[4]\ => \si_be_reg[4]\,
      \si_be_reg[4]_0\ => \si_be_reg[4]_0\,
      \si_be_reg[5]\ => \si_be_reg[5]\,
      \si_be_reg[5]_0\ => \si_be_reg[5]_0\,
      \si_be_reg[6]\ => \si_be_reg[6]\,
      \si_be_reg[6]_0\ => \si_be_reg[6]_0\,
      \si_be_reg[7]\ => \si_be_reg[7]\,
      \si_be_reg[7]_0\ => \si_be_reg[7]_0\,
      \si_be_reg[8]\ => \si_be_reg[8]\,
      \si_be_reg[8]_0\ => \si_be_reg[8]_0\,
      \si_be_reg[9]\ => \si_be_reg[9]\,
      \si_be_reg[9]_0\ => \si_be_reg[9]_0\,
      \si_buf_reg[1]\ => \si_buf_reg[1]\,
      \si_ptr_reg[0]\ => \si_ptr_reg[0]\,
      \si_ptr_reg[0]_0\(0) => \si_ptr_reg[0]_0\(0),
      \si_ptr_reg[1]\ => \si_ptr_reg[1]\,
      \si_ptr_reg[2]\ => \si_ptr_reg[2]\,
      \si_ptr_reg[5]\(5 downto 0) => \si_ptr_reg[5]\(5 downto 0),
      \si_ptr_reg[6]\ => \si_ptr_reg[6]\,
      si_state(1 downto 0) => si_state(1 downto 0),
      \si_wrap_cnt_reg[1]\ => \si_wrap_cnt_reg[1]\,
      \si_wrap_cnt_reg[2]\ => \si_wrap_cnt_reg[2]\,
      \si_wrap_cnt_reg[3]\(2 downto 0) => \si_wrap_cnt_reg[3]\(2 downto 0),
      \si_wrap_cnt_reg[3]_0\(3 downto 0) => \si_wrap_cnt_reg[3]_0\(3 downto 0),
      \si_wrap_cnt_reg[3]_1\ => \si_wrap_cnt_reg[3]_1\,
      si_wrap_word_next => si_wrap_word_next,
      word => word
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_us_df_1_axi_register_slice_v2_1_21_axi_register_slice__parameterized0\ is
  port (
    \aresetn_d_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[39]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 50 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[41]\ : out STD_LOGIC;
    \m_payload_i_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \si_wrap_cnt_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[6]\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[3]\ : out STD_LOGIC;
    \m_payload_i_reg[3]_0\ : out STD_LOGIC;
    \m_payload_i_reg[2]\ : out STD_LOGIC;
    \m_payload_i_reg[2]_0\ : out STD_LOGIC;
    \m_payload_i_reg[2]_1\ : out STD_LOGIC;
    \m_payload_i_reg[0]\ : out STD_LOGIC;
    \m_payload_i_reg[0]_0\ : out STD_LOGIC;
    \m_payload_i_reg[0]_1\ : out STD_LOGIC;
    \m_payload_i_reg[0]_2\ : out STD_LOGIC;
    \m_payload_i_reg[0]_3\ : out STD_LOGIC;
    \m_payload_i_reg[0]_4\ : out STD_LOGIC;
    \m_payload_i_reg[37]\ : out STD_LOGIC;
    \m_payload_i_reg[35]\ : out STD_LOGIC;
    \m_payload_i_reg[37]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \m_payload_i_reg[1]\ : out STD_LOGIC;
    \m_payload_i_reg[1]_0\ : out STD_LOGIC;
    \m_payload_i_reg[3]_1\ : out STD_LOGIC;
    \m_payload_i_reg[2]_2\ : out STD_LOGIC;
    \m_payload_i_reg[36]\ : out STD_LOGIC;
    \m_payload_i_reg[45]\ : out STD_LOGIC;
    \m_payload_i_reg[46]\ : out STD_LOGIC;
    \m_payload_i_reg[7]\ : out STD_LOGIC;
    f_si_wrap_word_return : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    \aresetn_d_reg[0]_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_valid_i_reg_inv : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \si_ptr_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \si_wrap_cnt_reg[0]_0\ : in STD_LOGIC;
    \si_wrap_cnt_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 64 downto 0 );
    s_ready_i_reg : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_us_df_1_axi_register_slice_v2_1_21_axi_register_slice__parameterized0\ : entity is "axi_register_slice_v2_1_21_axi_register_slice";
end \design_1_auto_us_df_1_axi_register_slice_v2_1_21_axi_register_slice__parameterized0\;

architecture STRUCTURE of \design_1_auto_us_df_1_axi_register_slice_v2_1_21_axi_register_slice__parameterized0\ is
begin
\aw.aw_pipe\: entity work.\design_1_auto_us_df_1_axi_register_slice_v2_1_21_axic_register_slice__parameterized4\
     port map (
      CO(0) => CO(0),
      D(64 downto 0) => D(64 downto 0),
      DI(3 downto 0) => DI(3 downto 0),
      E(0) => E(0),
      Q(50 downto 0) => Q(50 downto 0),
      S(3 downto 0) => S(3 downto 0),
      \aresetn_d_reg[0]_0\ => \aresetn_d_reg[0]\,
      \aresetn_d_reg[0]_1\ => \aresetn_d_reg[0]_0\,
      f_si_wrap_word_return => f_si_wrap_word_return,
      \m_payload_i_reg[0]_0\ => \m_payload_i_reg[0]\,
      \m_payload_i_reg[0]_1\ => \m_payload_i_reg[0]_0\,
      \m_payload_i_reg[0]_2\ => \m_payload_i_reg[0]_1\,
      \m_payload_i_reg[0]_3\ => \m_payload_i_reg[0]_2\,
      \m_payload_i_reg[0]_4\ => \m_payload_i_reg[0]_3\,
      \m_payload_i_reg[0]_5\ => \m_payload_i_reg[0]_4\,
      \m_payload_i_reg[1]_0\ => \m_payload_i_reg[1]\,
      \m_payload_i_reg[1]_1\ => \m_payload_i_reg[1]_0\,
      \m_payload_i_reg[2]_0\ => \m_payload_i_reg[2]\,
      \m_payload_i_reg[2]_1\ => \m_payload_i_reg[2]_0\,
      \m_payload_i_reg[2]_2\ => \m_payload_i_reg[2]_1\,
      \m_payload_i_reg[2]_3\ => \m_payload_i_reg[2]_2\,
      \m_payload_i_reg[35]_0\ => \m_payload_i_reg[35]\,
      \m_payload_i_reg[36]_0\ => \m_payload_i_reg[36]\,
      \m_payload_i_reg[37]_0\ => \m_payload_i_reg[37]\,
      \m_payload_i_reg[37]_1\(14 downto 0) => \m_payload_i_reg[37]_0\(14 downto 0),
      \m_payload_i_reg[39]_0\(23 downto 0) => \m_payload_i_reg[39]\(23 downto 0),
      \m_payload_i_reg[3]_0\ => \m_payload_i_reg[3]\,
      \m_payload_i_reg[3]_1\ => \m_payload_i_reg[3]_0\,
      \m_payload_i_reg[3]_2\ => \m_payload_i_reg[3]_1\,
      \m_payload_i_reg[41]_0\ => \m_payload_i_reg[41]\,
      \m_payload_i_reg[45]_0\ => \m_payload_i_reg[45]\,
      \m_payload_i_reg[46]_0\ => \m_payload_i_reg[46]\,
      \m_payload_i_reg[5]_0\(0) => \m_payload_i_reg[5]\(0),
      \m_payload_i_reg[6]_0\ => \m_payload_i_reg[6]\,
      \m_payload_i_reg[7]_0\ => \m_payload_i_reg[7]\,
      m_valid_i_reg_inv_0 => m_valid_i_reg_inv,
      \out\ => \out\,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_ready_i_reg_0 => s_ready_i_reg,
      s_ready_i_reg_1 => s_ready_i_reg_0,
      \si_ptr_reg[0]\(0) => \si_ptr_reg[0]\(0),
      \si_wrap_cnt_reg[0]\(0) => \si_wrap_cnt_reg[0]\(0),
      \si_wrap_cnt_reg[0]_0\ => \si_wrap_cnt_reg[0]_0\,
      \si_wrap_cnt_reg[0]_1\(0) => \si_wrap_cnt_reg[0]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_blk_mem_gen_prim_width is
  port (
    doutb : out STD_LOGIC_VECTOR ( 71 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    ena : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end design_1_auto_us_df_1_blk_mem_gen_prim_width;

architecture STRUCTURE of design_1_auto_us_df_1_blk_mem_gen_prim_width is
begin
\prim_noinit.ram\: entity work.design_1_auto_us_df_1_blk_mem_gen_prim_wrapper
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clkb => clkb,
      dina(71 downto 0) => dina(71 downto 0),
      doutb(71 downto 0) => doutb(71 downto 0),
      ena => ena,
      enb => enb,
      wea(7 downto 0) => wea(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized0\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 71 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    ena : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_noinit.ram\: entity work.\design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized0\
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clkb => clkb,
      dina(71 downto 0) => dina(71 downto 0),
      doutb(71 downto 0) => doutb(71 downto 0),
      ena => ena,
      enb => enb,
      wea(7 downto 0) => wea(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized1\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 71 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    ena : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_noinit.ram\: entity work.\design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized1\
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clkb => clkb,
      dina(71 downto 0) => dina(71 downto 0),
      doutb(71 downto 0) => doutb(71 downto 0),
      ena => ena,
      enb => enb,
      wea(7 downto 0) => wea(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized2\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 71 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    ena : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 71 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_noinit.ram\: entity work.\design_1_auto_us_df_1_blk_mem_gen_prim_wrapper__parameterized2\
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clkb => clkb,
      dina(71 downto 0) => dina(71 downto 0),
      doutb(71 downto 0) => doutb(71 downto 0),
      ena => ena,
      enb => enb,
      wea(7 downto 0) => wea(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_memory is
  port (
    dout_i0_out : out STD_LOGIC_VECTOR ( 65 downto 0 );
    s_aclk : in STD_LOGIC;
    \goreg_dm.dout_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 65 downto 0 );
    \goreg_dm.dout_i_reg[1]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_auto_us_df_1_memory;

architecture STRUCTURE of design_1_auto_us_df_1_memory is
  signal \gdm.dm_gen.dm_n_0\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_1\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_10\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_11\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_12\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_13\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_14\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_15\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_16\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_17\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_18\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_19\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_2\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_20\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_21\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_22\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_23\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_24\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_25\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_26\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_27\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_28\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_29\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_3\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_30\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_31\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_32\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_33\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_34\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_35\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_36\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_37\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_38\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_39\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_4\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_40\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_41\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_42\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_43\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_44\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_45\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_46\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_47\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_48\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_49\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_5\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_50\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_51\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_52\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_53\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_54\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_55\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_56\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_57\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_58\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_59\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_6\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_60\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_61\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_62\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_63\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_64\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_65\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_7\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_8\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_9\ : STD_LOGIC;
begin
\gdm.dm_gen.dm\: entity work.design_1_auto_us_df_1_dmem
     port map (
      DI(65 downto 0) => DI(65 downto 0),
      Q(4 downto 0) => Q(4 downto 0),
      dout_i(65) => \gdm.dm_gen.dm_n_0\,
      dout_i(64) => \gdm.dm_gen.dm_n_1\,
      dout_i(63) => \gdm.dm_gen.dm_n_2\,
      dout_i(62) => \gdm.dm_gen.dm_n_3\,
      dout_i(61) => \gdm.dm_gen.dm_n_4\,
      dout_i(60) => \gdm.dm_gen.dm_n_5\,
      dout_i(59) => \gdm.dm_gen.dm_n_6\,
      dout_i(58) => \gdm.dm_gen.dm_n_7\,
      dout_i(57) => \gdm.dm_gen.dm_n_8\,
      dout_i(56) => \gdm.dm_gen.dm_n_9\,
      dout_i(55) => \gdm.dm_gen.dm_n_10\,
      dout_i(54) => \gdm.dm_gen.dm_n_11\,
      dout_i(53) => \gdm.dm_gen.dm_n_12\,
      dout_i(52) => \gdm.dm_gen.dm_n_13\,
      dout_i(51) => \gdm.dm_gen.dm_n_14\,
      dout_i(50) => \gdm.dm_gen.dm_n_15\,
      dout_i(49) => \gdm.dm_gen.dm_n_16\,
      dout_i(48) => \gdm.dm_gen.dm_n_17\,
      dout_i(47) => \gdm.dm_gen.dm_n_18\,
      dout_i(46) => \gdm.dm_gen.dm_n_19\,
      dout_i(45) => \gdm.dm_gen.dm_n_20\,
      dout_i(44) => \gdm.dm_gen.dm_n_21\,
      dout_i(43) => \gdm.dm_gen.dm_n_22\,
      dout_i(42) => \gdm.dm_gen.dm_n_23\,
      dout_i(41) => \gdm.dm_gen.dm_n_24\,
      dout_i(40) => \gdm.dm_gen.dm_n_25\,
      dout_i(39) => \gdm.dm_gen.dm_n_26\,
      dout_i(38) => \gdm.dm_gen.dm_n_27\,
      dout_i(37) => \gdm.dm_gen.dm_n_28\,
      dout_i(36) => \gdm.dm_gen.dm_n_29\,
      dout_i(35) => \gdm.dm_gen.dm_n_30\,
      dout_i(34) => \gdm.dm_gen.dm_n_31\,
      dout_i(33) => \gdm.dm_gen.dm_n_32\,
      dout_i(32) => \gdm.dm_gen.dm_n_33\,
      dout_i(31) => \gdm.dm_gen.dm_n_34\,
      dout_i(30) => \gdm.dm_gen.dm_n_35\,
      dout_i(29) => \gdm.dm_gen.dm_n_36\,
      dout_i(28) => \gdm.dm_gen.dm_n_37\,
      dout_i(27) => \gdm.dm_gen.dm_n_38\,
      dout_i(26) => \gdm.dm_gen.dm_n_39\,
      dout_i(25) => \gdm.dm_gen.dm_n_40\,
      dout_i(24) => \gdm.dm_gen.dm_n_41\,
      dout_i(23) => \gdm.dm_gen.dm_n_42\,
      dout_i(22) => \gdm.dm_gen.dm_n_43\,
      dout_i(21) => \gdm.dm_gen.dm_n_44\,
      dout_i(20) => \gdm.dm_gen.dm_n_45\,
      dout_i(19) => \gdm.dm_gen.dm_n_46\,
      dout_i(18) => \gdm.dm_gen.dm_n_47\,
      dout_i(17) => \gdm.dm_gen.dm_n_48\,
      dout_i(16) => \gdm.dm_gen.dm_n_49\,
      dout_i(15) => \gdm.dm_gen.dm_n_50\,
      dout_i(14) => \gdm.dm_gen.dm_n_51\,
      dout_i(13) => \gdm.dm_gen.dm_n_52\,
      dout_i(12) => \gdm.dm_gen.dm_n_53\,
      dout_i(11) => \gdm.dm_gen.dm_n_54\,
      dout_i(10) => \gdm.dm_gen.dm_n_55\,
      dout_i(9) => \gdm.dm_gen.dm_n_56\,
      dout_i(8) => \gdm.dm_gen.dm_n_57\,
      dout_i(7) => \gdm.dm_gen.dm_n_58\,
      dout_i(6) => \gdm.dm_gen.dm_n_59\,
      dout_i(5) => \gdm.dm_gen.dm_n_60\,
      dout_i(4) => \gdm.dm_gen.dm_n_61\,
      dout_i(3) => \gdm.dm_gen.dm_n_62\,
      dout_i(2) => \gdm.dm_gen.dm_n_63\,
      dout_i(1) => \gdm.dm_gen.dm_n_64\,
      dout_i(0) => \gdm.dm_gen.dm_n_65\,
      \goreg_dm.dout_i_reg[1]\(0) => \goreg_dm.dout_i_reg[1]_0\(0),
      \goreg_dm.dout_i_reg[1]_0\(4 downto 0) => \goreg_dm.dout_i_reg[1]_1\(4 downto 0),
      s_aclk => s_aclk
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_65\,
      Q => dout_i0_out(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_55\,
      Q => dout_i0_out(10),
      R => '0'
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_54\,
      Q => dout_i0_out(11),
      R => '0'
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_53\,
      Q => dout_i0_out(12),
      R => '0'
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_52\,
      Q => dout_i0_out(13),
      R => '0'
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_51\,
      Q => dout_i0_out(14),
      R => '0'
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_50\,
      Q => dout_i0_out(15),
      R => '0'
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_49\,
      Q => dout_i0_out(16),
      R => '0'
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_48\,
      Q => dout_i0_out(17),
      R => '0'
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_47\,
      Q => dout_i0_out(18),
      R => '0'
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_46\,
      Q => dout_i0_out(19),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_64\,
      Q => dout_i0_out(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_45\,
      Q => dout_i0_out(20),
      R => '0'
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_44\,
      Q => dout_i0_out(21),
      R => '0'
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_43\,
      Q => dout_i0_out(22),
      R => '0'
    );
\goreg_dm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_42\,
      Q => dout_i0_out(23),
      R => '0'
    );
\goreg_dm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_41\,
      Q => dout_i0_out(24),
      R => '0'
    );
\goreg_dm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_40\,
      Q => dout_i0_out(25),
      R => '0'
    );
\goreg_dm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_39\,
      Q => dout_i0_out(26),
      R => '0'
    );
\goreg_dm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_38\,
      Q => dout_i0_out(27),
      R => '0'
    );
\goreg_dm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_37\,
      Q => dout_i0_out(28),
      R => '0'
    );
\goreg_dm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_36\,
      Q => dout_i0_out(29),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_63\,
      Q => dout_i0_out(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_35\,
      Q => dout_i0_out(30),
      R => '0'
    );
\goreg_dm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_34\,
      Q => dout_i0_out(31),
      R => '0'
    );
\goreg_dm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_33\,
      Q => dout_i0_out(32),
      R => '0'
    );
\goreg_dm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_32\,
      Q => dout_i0_out(33),
      R => '0'
    );
\goreg_dm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_31\,
      Q => dout_i0_out(34),
      R => '0'
    );
\goreg_dm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_30\,
      Q => dout_i0_out(35),
      R => '0'
    );
\goreg_dm.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_29\,
      Q => dout_i0_out(36),
      R => '0'
    );
\goreg_dm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_28\,
      Q => dout_i0_out(37),
      R => '0'
    );
\goreg_dm.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_27\,
      Q => dout_i0_out(38),
      R => '0'
    );
\goreg_dm.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_26\,
      Q => dout_i0_out(39),
      R => '0'
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_62\,
      Q => dout_i0_out(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_25\,
      Q => dout_i0_out(40),
      R => '0'
    );
\goreg_dm.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_24\,
      Q => dout_i0_out(41),
      R => '0'
    );
\goreg_dm.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_23\,
      Q => dout_i0_out(42),
      R => '0'
    );
\goreg_dm.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_22\,
      Q => dout_i0_out(43),
      R => '0'
    );
\goreg_dm.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_21\,
      Q => dout_i0_out(44),
      R => '0'
    );
\goreg_dm.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_20\,
      Q => dout_i0_out(45),
      R => '0'
    );
\goreg_dm.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_19\,
      Q => dout_i0_out(46),
      R => '0'
    );
\goreg_dm.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_18\,
      Q => dout_i0_out(47),
      R => '0'
    );
\goreg_dm.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_17\,
      Q => dout_i0_out(48),
      R => '0'
    );
\goreg_dm.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_16\,
      Q => dout_i0_out(49),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_61\,
      Q => dout_i0_out(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_15\,
      Q => dout_i0_out(50),
      R => '0'
    );
\goreg_dm.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_14\,
      Q => dout_i0_out(51),
      R => '0'
    );
\goreg_dm.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_13\,
      Q => dout_i0_out(52),
      R => '0'
    );
\goreg_dm.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_12\,
      Q => dout_i0_out(53),
      R => '0'
    );
\goreg_dm.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_11\,
      Q => dout_i0_out(54),
      R => '0'
    );
\goreg_dm.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_10\,
      Q => dout_i0_out(55),
      R => '0'
    );
\goreg_dm.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_9\,
      Q => dout_i0_out(56),
      R => '0'
    );
\goreg_dm.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_8\,
      Q => dout_i0_out(57),
      R => '0'
    );
\goreg_dm.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_7\,
      Q => dout_i0_out(58),
      R => '0'
    );
\goreg_dm.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_6\,
      Q => dout_i0_out(59),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_60\,
      Q => dout_i0_out(5),
      R => '0'
    );
\goreg_dm.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_5\,
      Q => dout_i0_out(60),
      R => '0'
    );
\goreg_dm.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_4\,
      Q => dout_i0_out(61),
      R => '0'
    );
\goreg_dm.dout_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_3\,
      Q => dout_i0_out(62),
      R => '0'
    );
\goreg_dm.dout_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_2\,
      Q => dout_i0_out(63),
      R => '0'
    );
\goreg_dm.dout_i_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_1\,
      Q => dout_i0_out(64),
      R => '0'
    );
\goreg_dm.dout_i_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_0\,
      Q => dout_i0_out(65),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_59\,
      Q => dout_i0_out(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_58\,
      Q => dout_i0_out(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_57\,
      Q => dout_i0_out(8),
      R => '0'
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_56\,
      Q => dout_i0_out(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_rd_logic is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    \gpregsm2.curr_fwft_state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gc0.count_d1_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_empty_i_reg : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[4]_0\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC
  );
end design_1_auto_us_df_1_rd_logic;

architecture STRUCTURE of design_1_auto_us_df_1_rd_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^out\ : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  \out\ <= \^out\;
\gr1.gr1_int.rfwft\: entity work.design_1_auto_us_df_1_rd_fwft
     port map (
      E(0) => \^e\(0),
      \gpregsm2.curr_fwft_state_reg[0]_0\(0) => \gpregsm2.curr_fwft_state_reg[0]\(0),
      \gpregsm2.user_valid_reg_0\ => \gc0.count_d1_reg[4]_0\,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      \out\ => \^out\,
      s_aclk => s_aclk
    );
\grss.rsts\: entity work.design_1_auto_us_df_1_rd_status_flags_ss
     port map (
      \out\ => \^out\,
      ram_empty_i_reg_0 => ram_empty_i_reg,
      ram_empty_i_reg_1 => \gc0.count_d1_reg[4]_0\,
      s_aclk => s_aclk
    );
rpntr: entity work.design_1_auto_us_df_1_rd_bin_cntr
     port map (
      E(0) => \^e\(0),
      Q(4 downto 0) => Q(4 downto 0),
      \gc0.count_d1_reg[4]_0\(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      \gc0.count_d1_reg[4]_1\ => \gc0.count_d1_reg[4]_0\,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_reset_blk_ramfifo is
  port (
    \out\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC
  );
end design_1_auto_us_df_1_reset_blk_ramfifo;

architecture STRUCTURE of design_1_auto_us_df_1_reset_blk_ramfifo is
  signal \grstd1.grst_full.grst_f.rst_d1_i_1_n_0\ : STD_LOGIC;
  signal rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of rd_rst_reg : signal is std.standard.true;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_d30 : STD_LOGIC;
  signal rst_d4 : STD_LOGIC;
  attribute async_reg of rst_d4 : signal is "true";
  attribute msgon of rst_d4 : signal is "true";
  signal rst_d5 : STD_LOGIC;
  attribute async_reg of rst_d5 : signal is "true";
  attribute msgon of rst_d5 : signal is "true";
  signal rst_d6 : STD_LOGIC;
  attribute async_reg of rst_d6 : signal is "true";
  attribute msgon of rst_d6 : signal is "true";
  signal rst_d7 : STD_LOGIC;
  attribute async_reg of rst_d7 : signal is "true";
  attribute msgon of rst_d7 : signal is "true";
  signal rst_rd_reg1 : STD_LOGIC;
  attribute async_reg of rst_rd_reg1 : signal is "true";
  attribute msgon of rst_rd_reg1 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg1 : STD_LOGIC;
  attribute async_reg of rst_wr_reg1 : signal is "true";
  attribute msgon of rst_wr_reg1 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_wr_rst_cc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH of wr_rst_reg : signal is std.standard.true;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d4_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d4_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d4_reg\ : label is "true";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "true";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d3;
  \out\ <= rst_d2;
\gc0.count_d1[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sckt_wr_rst_cc(1),
      I1 => sckt_wr_rst_cc(0),
      I2 => rst_wr_reg2,
      O => AR(0)
    );
\grstd1.grst_full.grst_f.rst_d1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sckt_wr_rst_cc(2),
      I1 => sckt_wr_rst_cc(3),
      I2 => sckt_wr_rst_cc(0),
      I3 => sckt_wr_rst_cc(1),
      I4 => rst_wr_reg2,
      O => \grstd1.grst_full.grst_f.rst_d1_i_1_n_0\
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d1_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rst_d2,
      I1 => rst_wr_reg2,
      I2 => sckt_wr_rst_cc(0),
      I3 => sckt_wr_rst_cc(1),
      O => rst_d30
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d30,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\grstd1.grst_full.grst_f.rst_d4_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d3,
      PRE => rst_wr_reg2,
      Q => rst_d4
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => wr_rst_reg(2)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => wr_rst_reg(1)
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => rst_d6
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => rst_d7
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => wr_rst_reg(0)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => rd_rst_reg(2)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => rd_rst_reg(1)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => rd_rst_reg(0)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => rst_wr_reg1
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => rst_rd_reg1
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => rst_rd_reg2
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => rst_d5
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_wr_reg2,
      Q => sckt_wr_rst_cc(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => sckt_wr_rst_cc(0),
      Q => sckt_wr_rst_cc(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => sckt_wr_rst_cc(1),
      Q => sckt_wr_rst_cc(2),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => sckt_wr_rst_cc(2),
      Q => sckt_wr_rst_cc(3),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.design_1_auto_us_df_1_xpm_cdc_async_rst
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => s_aclk,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_wr_logic is
  port (
    s_axi_awready : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    ram_full_fb_i_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_fb_i_reg_1 : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC;
    ram_empty_fb_i_i_3 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_empty_fb_i_i_2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_auto_us_df_1_wr_logic;

architecture STRUCTURE of design_1_auto_us_df_1_wr_logic is
  signal \gwss.wsts_n_0\ : STD_LOGIC;
  signal ram_full_comb : STD_LOGIC;
  signal \^ram_full_fb_i_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  ram_full_fb_i_reg_0(0) <= \^ram_full_fb_i_reg_0\(0);
\gwss.wsts\: entity work.design_1_auto_us_df_1_wr_status_flags_ss
     port map (
      E(0) => \^ram_full_fb_i_reg_0\(0),
      \out\ => \gwss.wsts_n_0\,
      ram_full_comb => ram_full_comb,
      ram_full_i_reg_0 => \out\,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid
    );
wpntr: entity work.design_1_auto_us_df_1_wr_bin_cntr
     port map (
      AR(0) => AR(0),
      E(0) => E(0),
      Q(4 downto 0) => Q(4 downto 0),
      \gcc0.gc0.count_reg[4]_0\(0) => \^ram_full_fb_i_reg_0\(0),
      \out\ => \gwss.wsts_n_0\,
      ram_empty_fb_i_i_2_0(4 downto 0) => ram_empty_fb_i_i_2(4 downto 0),
      ram_empty_fb_i_i_3_0(4 downto 0) => ram_empty_fb_i_i_3(4 downto 0),
      ram_empty_i_reg => ram_empty_i_reg,
      ram_full_comb => ram_full_comb,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      ram_full_fb_i_reg_0 => ram_full_fb_i_reg_1,
      s_aclk => s_aclk,
      s_axi_awvalid => s_axi_awvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_blk_mem_gen_generic_cstr is
  port (
    doutb : out STD_LOGIC_VECTOR ( 287 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    ena : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 143 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end design_1_auto_us_df_1_blk_mem_gen_generic_cstr;

architecture STRUCTURE of design_1_auto_us_df_1_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.design_1_auto_us_df_1_blk_mem_gen_prim_width
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clkb => clkb,
      dina(71 downto 0) => dina(71 downto 0),
      doutb(71 downto 0) => doutb(71 downto 0),
      ena => ena,
      enb => enb,
      wea(7 downto 0) => wea(7 downto 0)
    );
\ramloop[1].ram.r\: entity work.\design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized0\
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clkb => clkb,
      dina(71 downto 0) => dina(143 downto 72),
      doutb(71 downto 0) => doutb(143 downto 72),
      ena => ena,
      enb => enb,
      wea(7 downto 0) => wea(15 downto 8)
    );
\ramloop[2].ram.r\: entity work.\design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized1\
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clkb => clkb,
      dina(71 downto 0) => dina(71 downto 0),
      doutb(71 downto 0) => doutb(215 downto 144),
      ena => ena,
      enb => enb,
      wea(7 downto 0) => wea(23 downto 16)
    );
\ramloop[3].ram.r\: entity work.\design_1_auto_us_df_1_blk_mem_gen_prim_width__parameterized2\
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clkb => clkb,
      dina(71 downto 0) => dina(143 downto 72),
      doutb(71 downto 0) => doutb(287 downto 216),
      ena => ena,
      enb => enb,
      wea(7 downto 0) => wea(31 downto 24)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_fifo_generator_ramfifo is
  port (
    s_axi_awready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    dout_i0_out : out STD_LOGIC_VECTOR ( 65 downto 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 65 downto 0 );
    s_axi_awvalid : in STD_LOGIC
  );
end design_1_auto_us_df_1_fifo_generator_ramfifo;

architecture STRUCTURE of design_1_auto_us_df_1_fifo_generator_ramfifo is
  signal dout_i0 : STD_LOGIC;
  signal empty_fb_i : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_1\ : STD_LOGIC;
  signal ram_wr_en : STD_LOGIC;
  signal rd_pntr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_2 : STD_LOGIC;
  signal wr_pntr : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
\gntv_or_sync_fifo.gl0.rd\: entity work.design_1_auto_us_df_1_rd_logic
     port map (
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_1\,
      Q(4 downto 0) => rd_pntr_plus1(4 downto 0),
      \gc0.count_d1_reg[4]\(4 downto 0) => rd_pntr(4 downto 0),
      \gc0.count_d1_reg[4]_0\ => rstblk_n_2,
      \gpregsm2.curr_fwft_state_reg[0]\(0) => dout_i0,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      \out\ => empty_fb_i,
      ram_empty_i_reg => \gntv_or_sync_fifo.gl0.wr_n_1\,
      s_aclk => s_aclk
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.design_1_auto_us_df_1_wr_logic
     port map (
      AR(0) => rstblk_n_2,
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_1\,
      Q(4 downto 0) => wr_pntr(4 downto 0),
      \out\ => rst_full_ff_i,
      ram_empty_fb_i_i_2(4 downto 0) => rd_pntr_plus1(4 downto 0),
      ram_empty_fb_i_i_3(4 downto 0) => rd_pntr(4 downto 0),
      ram_empty_i_reg => empty_fb_i,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_1\,
      ram_full_fb_i_reg_0(0) => ram_wr_en,
      ram_full_fb_i_reg_1 => rst_full_gen_i,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid
    );
\gntv_or_sync_fifo.mem\: entity work.design_1_auto_us_df_1_memory
     port map (
      DI(65 downto 0) => DI(65 downto 0),
      E(0) => dout_i0,
      Q(4 downto 0) => wr_pntr(4 downto 0),
      dout_i0_out(65 downto 0) => dout_i0_out(65 downto 0),
      \goreg_dm.dout_i_reg[1]_0\(0) => ram_wr_en,
      \goreg_dm.dout_i_reg[1]_1\(4 downto 0) => rd_pntr(4 downto 0),
      s_aclk => s_aclk
    );
rstblk: entity work.design_1_auto_us_df_1_reset_blk_ramfifo
     port map (
      AR(0) => rstblk_n_2,
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_gen_i,
      \out\ => rst_full_ff_i,
      s_aclk => s_aclk,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_blk_mem_gen_top is
  port (
    doutb : out STD_LOGIC_VECTOR ( 287 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    ena : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 143 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end design_1_auto_us_df_1_blk_mem_gen_top;

architecture STRUCTURE of design_1_auto_us_df_1_blk_mem_gen_top is
begin
\valid.cstr\: entity work.design_1_auto_us_df_1_blk_mem_gen_generic_cstr
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clkb => clkb,
      dina(143 downto 0) => dina(143 downto 0),
      doutb(287 downto 0) => doutb(287 downto 0),
      ena => ena,
      enb => enb,
      wea(31 downto 0) => wea(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_fifo_generator_top is
  port (
    s_axi_awready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    dout_i0_out : out STD_LOGIC_VECTOR ( 65 downto 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 65 downto 0 );
    s_axi_awvalid : in STD_LOGIC
  );
end design_1_auto_us_df_1_fifo_generator_top;

architecture STRUCTURE of design_1_auto_us_df_1_fifo_generator_top is
begin
\grf.rf\: entity work.design_1_auto_us_df_1_fifo_generator_ramfifo
     port map (
      DI(65 downto 0) => DI(65 downto 0),
      dout_i0_out(65 downto 0) => dout_i0_out(65 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_blk_mem_gen_v8_4_4_synth is
  port (
    doutb : out STD_LOGIC_VECTOR ( 287 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    ena : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 143 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end design_1_auto_us_df_1_blk_mem_gen_v8_4_4_synth;

architecture STRUCTURE of design_1_auto_us_df_1_blk_mem_gen_v8_4_4_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.design_1_auto_us_df_1_blk_mem_gen_top
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clkb => clkb,
      dina(143 downto 0) => dina(143 downto 0),
      doutb(287 downto 0) => doutb(287 downto 0),
      ena => ena,
      enb => enb,
      wea(31 downto 0) => wea(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_fifo_generator_v13_2_5_synth is
  port (
    dout_i0_out : out STD_LOGIC_VECTOR ( 65 downto 0 );
    s_axi_awready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 65 downto 0 );
    s_axi_awvalid : in STD_LOGIC
  );
end design_1_auto_us_df_1_fifo_generator_v13_2_5_synth;

architecture STRUCTURE of design_1_auto_us_df_1_fifo_generator_v13_2_5_synth is
  signal \inverted_reset__0\ : STD_LOGIC;
begin
\gaxi_full_lite.gwrite_ch.gwach2.axi_wach\: entity work.design_1_auto_us_df_1_fifo_generator_top
     port map (
      DI(65 downto 0) => DI(65 downto 0),
      dout_i0_out(65 downto 0) => dout_i0_out(65 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      src_arst => \inverted_reset__0\
    );
inverted_reset: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \inverted_reset__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_blk_mem_gen_v8_4_4 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 287 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 287 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 287 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 287 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 287 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 287 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 9;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 9;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "ECCHSIAO32-7";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "";
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "BlankString";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "BlankString";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 512;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 512;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 288;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 288;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "GENERATE_X_ONLY";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 32;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 32;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 512;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 512;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 288;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is 288;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "artix7";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 : entity is "yes";
end design_1_auto_us_df_1_blk_mem_gen_v8_4_4;

architecture STRUCTURE of design_1_auto_us_df_1_blk_mem_gen_v8_4_4 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  douta(287) <= \<const0>\;
  douta(286) <= \<const0>\;
  douta(285) <= \<const0>\;
  douta(284) <= \<const0>\;
  douta(283) <= \<const0>\;
  douta(282) <= \<const0>\;
  douta(281) <= \<const0>\;
  douta(280) <= \<const0>\;
  douta(279) <= \<const0>\;
  douta(278) <= \<const0>\;
  douta(277) <= \<const0>\;
  douta(276) <= \<const0>\;
  douta(275) <= \<const0>\;
  douta(274) <= \<const0>\;
  douta(273) <= \<const0>\;
  douta(272) <= \<const0>\;
  douta(271) <= \<const0>\;
  douta(270) <= \<const0>\;
  douta(269) <= \<const0>\;
  douta(268) <= \<const0>\;
  douta(267) <= \<const0>\;
  douta(266) <= \<const0>\;
  douta(265) <= \<const0>\;
  douta(264) <= \<const0>\;
  douta(263) <= \<const0>\;
  douta(262) <= \<const0>\;
  douta(261) <= \<const0>\;
  douta(260) <= \<const0>\;
  douta(259) <= \<const0>\;
  douta(258) <= \<const0>\;
  douta(257) <= \<const0>\;
  douta(256) <= \<const0>\;
  douta(255) <= \<const0>\;
  douta(254) <= \<const0>\;
  douta(253) <= \<const0>\;
  douta(252) <= \<const0>\;
  douta(251) <= \<const0>\;
  douta(250) <= \<const0>\;
  douta(249) <= \<const0>\;
  douta(248) <= \<const0>\;
  douta(247) <= \<const0>\;
  douta(246) <= \<const0>\;
  douta(245) <= \<const0>\;
  douta(244) <= \<const0>\;
  douta(243) <= \<const0>\;
  douta(242) <= \<const0>\;
  douta(241) <= \<const0>\;
  douta(240) <= \<const0>\;
  douta(239) <= \<const0>\;
  douta(238) <= \<const0>\;
  douta(237) <= \<const0>\;
  douta(236) <= \<const0>\;
  douta(235) <= \<const0>\;
  douta(234) <= \<const0>\;
  douta(233) <= \<const0>\;
  douta(232) <= \<const0>\;
  douta(231) <= \<const0>\;
  douta(230) <= \<const0>\;
  douta(229) <= \<const0>\;
  douta(228) <= \<const0>\;
  douta(227) <= \<const0>\;
  douta(226) <= \<const0>\;
  douta(225) <= \<const0>\;
  douta(224) <= \<const0>\;
  douta(223) <= \<const0>\;
  douta(222) <= \<const0>\;
  douta(221) <= \<const0>\;
  douta(220) <= \<const0>\;
  douta(219) <= \<const0>\;
  douta(218) <= \<const0>\;
  douta(217) <= \<const0>\;
  douta(216) <= \<const0>\;
  douta(215) <= \<const0>\;
  douta(214) <= \<const0>\;
  douta(213) <= \<const0>\;
  douta(212) <= \<const0>\;
  douta(211) <= \<const0>\;
  douta(210) <= \<const0>\;
  douta(209) <= \<const0>\;
  douta(208) <= \<const0>\;
  douta(207) <= \<const0>\;
  douta(206) <= \<const0>\;
  douta(205) <= \<const0>\;
  douta(204) <= \<const0>\;
  douta(203) <= \<const0>\;
  douta(202) <= \<const0>\;
  douta(201) <= \<const0>\;
  douta(200) <= \<const0>\;
  douta(199) <= \<const0>\;
  douta(198) <= \<const0>\;
  douta(197) <= \<const0>\;
  douta(196) <= \<const0>\;
  douta(195) <= \<const0>\;
  douta(194) <= \<const0>\;
  douta(193) <= \<const0>\;
  douta(192) <= \<const0>\;
  douta(191) <= \<const0>\;
  douta(190) <= \<const0>\;
  douta(189) <= \<const0>\;
  douta(188) <= \<const0>\;
  douta(187) <= \<const0>\;
  douta(186) <= \<const0>\;
  douta(185) <= \<const0>\;
  douta(184) <= \<const0>\;
  douta(183) <= \<const0>\;
  douta(182) <= \<const0>\;
  douta(181) <= \<const0>\;
  douta(180) <= \<const0>\;
  douta(179) <= \<const0>\;
  douta(178) <= \<const0>\;
  douta(177) <= \<const0>\;
  douta(176) <= \<const0>\;
  douta(175) <= \<const0>\;
  douta(174) <= \<const0>\;
  douta(173) <= \<const0>\;
  douta(172) <= \<const0>\;
  douta(171) <= \<const0>\;
  douta(170) <= \<const0>\;
  douta(169) <= \<const0>\;
  douta(168) <= \<const0>\;
  douta(167) <= \<const0>\;
  douta(166) <= \<const0>\;
  douta(165) <= \<const0>\;
  douta(164) <= \<const0>\;
  douta(163) <= \<const0>\;
  douta(162) <= \<const0>\;
  douta(161) <= \<const0>\;
  douta(160) <= \<const0>\;
  douta(159) <= \<const0>\;
  douta(158) <= \<const0>\;
  douta(157) <= \<const0>\;
  douta(156) <= \<const0>\;
  douta(155) <= \<const0>\;
  douta(154) <= \<const0>\;
  douta(153) <= \<const0>\;
  douta(152) <= \<const0>\;
  douta(151) <= \<const0>\;
  douta(150) <= \<const0>\;
  douta(149) <= \<const0>\;
  douta(148) <= \<const0>\;
  douta(147) <= \<const0>\;
  douta(146) <= \<const0>\;
  douta(145) <= \<const0>\;
  douta(144) <= \<const0>\;
  douta(143) <= \<const0>\;
  douta(142) <= \<const0>\;
  douta(141) <= \<const0>\;
  douta(140) <= \<const0>\;
  douta(139) <= \<const0>\;
  douta(138) <= \<const0>\;
  douta(137) <= \<const0>\;
  douta(136) <= \<const0>\;
  douta(135) <= \<const0>\;
  douta(134) <= \<const0>\;
  douta(133) <= \<const0>\;
  douta(132) <= \<const0>\;
  douta(131) <= \<const0>\;
  douta(130) <= \<const0>\;
  douta(129) <= \<const0>\;
  douta(128) <= \<const0>\;
  douta(127) <= \<const0>\;
  douta(126) <= \<const0>\;
  douta(125) <= \<const0>\;
  douta(124) <= \<const0>\;
  douta(123) <= \<const0>\;
  douta(122) <= \<const0>\;
  douta(121) <= \<const0>\;
  douta(120) <= \<const0>\;
  douta(119) <= \<const0>\;
  douta(118) <= \<const0>\;
  douta(117) <= \<const0>\;
  douta(116) <= \<const0>\;
  douta(115) <= \<const0>\;
  douta(114) <= \<const0>\;
  douta(113) <= \<const0>\;
  douta(112) <= \<const0>\;
  douta(111) <= \<const0>\;
  douta(110) <= \<const0>\;
  douta(109) <= \<const0>\;
  douta(108) <= \<const0>\;
  douta(107) <= \<const0>\;
  douta(106) <= \<const0>\;
  douta(105) <= \<const0>\;
  douta(104) <= \<const0>\;
  douta(103) <= \<const0>\;
  douta(102) <= \<const0>\;
  douta(101) <= \<const0>\;
  douta(100) <= \<const0>\;
  douta(99) <= \<const0>\;
  douta(98) <= \<const0>\;
  douta(97) <= \<const0>\;
  douta(96) <= \<const0>\;
  douta(95) <= \<const0>\;
  douta(94) <= \<const0>\;
  douta(93) <= \<const0>\;
  douta(92) <= \<const0>\;
  douta(91) <= \<const0>\;
  douta(90) <= \<const0>\;
  douta(89) <= \<const0>\;
  douta(88) <= \<const0>\;
  douta(87) <= \<const0>\;
  douta(86) <= \<const0>\;
  douta(85) <= \<const0>\;
  douta(84) <= \<const0>\;
  douta(83) <= \<const0>\;
  douta(82) <= \<const0>\;
  douta(81) <= \<const0>\;
  douta(80) <= \<const0>\;
  douta(79) <= \<const0>\;
  douta(78) <= \<const0>\;
  douta(77) <= \<const0>\;
  douta(76) <= \<const0>\;
  douta(75) <= \<const0>\;
  douta(74) <= \<const0>\;
  douta(73) <= \<const0>\;
  douta(72) <= \<const0>\;
  douta(71) <= \<const0>\;
  douta(70) <= \<const0>\;
  douta(69) <= \<const0>\;
  douta(68) <= \<const0>\;
  douta(67) <= \<const0>\;
  douta(66) <= \<const0>\;
  douta(65) <= \<const0>\;
  douta(64) <= \<const0>\;
  douta(63) <= \<const0>\;
  douta(62) <= \<const0>\;
  douta(61) <= \<const0>\;
  douta(60) <= \<const0>\;
  douta(59) <= \<const0>\;
  douta(58) <= \<const0>\;
  douta(57) <= \<const0>\;
  douta(56) <= \<const0>\;
  douta(55) <= \<const0>\;
  douta(54) <= \<const0>\;
  douta(53) <= \<const0>\;
  douta(52) <= \<const0>\;
  douta(51) <= \<const0>\;
  douta(50) <= \<const0>\;
  douta(49) <= \<const0>\;
  douta(48) <= \<const0>\;
  douta(47) <= \<const0>\;
  douta(46) <= \<const0>\;
  douta(45) <= \<const0>\;
  douta(44) <= \<const0>\;
  douta(43) <= \<const0>\;
  douta(42) <= \<const0>\;
  douta(41) <= \<const0>\;
  douta(40) <= \<const0>\;
  douta(39) <= \<const0>\;
  douta(38) <= \<const0>\;
  douta(37) <= \<const0>\;
  douta(36) <= \<const0>\;
  douta(35) <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(287) <= \<const0>\;
  s_axi_rdata(286) <= \<const0>\;
  s_axi_rdata(285) <= \<const0>\;
  s_axi_rdata(284) <= \<const0>\;
  s_axi_rdata(283) <= \<const0>\;
  s_axi_rdata(282) <= \<const0>\;
  s_axi_rdata(281) <= \<const0>\;
  s_axi_rdata(280) <= \<const0>\;
  s_axi_rdata(279) <= \<const0>\;
  s_axi_rdata(278) <= \<const0>\;
  s_axi_rdata(277) <= \<const0>\;
  s_axi_rdata(276) <= \<const0>\;
  s_axi_rdata(275) <= \<const0>\;
  s_axi_rdata(274) <= \<const0>\;
  s_axi_rdata(273) <= \<const0>\;
  s_axi_rdata(272) <= \<const0>\;
  s_axi_rdata(271) <= \<const0>\;
  s_axi_rdata(270) <= \<const0>\;
  s_axi_rdata(269) <= \<const0>\;
  s_axi_rdata(268) <= \<const0>\;
  s_axi_rdata(267) <= \<const0>\;
  s_axi_rdata(266) <= \<const0>\;
  s_axi_rdata(265) <= \<const0>\;
  s_axi_rdata(264) <= \<const0>\;
  s_axi_rdata(263) <= \<const0>\;
  s_axi_rdata(262) <= \<const0>\;
  s_axi_rdata(261) <= \<const0>\;
  s_axi_rdata(260) <= \<const0>\;
  s_axi_rdata(259) <= \<const0>\;
  s_axi_rdata(258) <= \<const0>\;
  s_axi_rdata(257) <= \<const0>\;
  s_axi_rdata(256) <= \<const0>\;
  s_axi_rdata(255) <= \<const0>\;
  s_axi_rdata(254) <= \<const0>\;
  s_axi_rdata(253) <= \<const0>\;
  s_axi_rdata(252) <= \<const0>\;
  s_axi_rdata(251) <= \<const0>\;
  s_axi_rdata(250) <= \<const0>\;
  s_axi_rdata(249) <= \<const0>\;
  s_axi_rdata(248) <= \<const0>\;
  s_axi_rdata(247) <= \<const0>\;
  s_axi_rdata(246) <= \<const0>\;
  s_axi_rdata(245) <= \<const0>\;
  s_axi_rdata(244) <= \<const0>\;
  s_axi_rdata(243) <= \<const0>\;
  s_axi_rdata(242) <= \<const0>\;
  s_axi_rdata(241) <= \<const0>\;
  s_axi_rdata(240) <= \<const0>\;
  s_axi_rdata(239) <= \<const0>\;
  s_axi_rdata(238) <= \<const0>\;
  s_axi_rdata(237) <= \<const0>\;
  s_axi_rdata(236) <= \<const0>\;
  s_axi_rdata(235) <= \<const0>\;
  s_axi_rdata(234) <= \<const0>\;
  s_axi_rdata(233) <= \<const0>\;
  s_axi_rdata(232) <= \<const0>\;
  s_axi_rdata(231) <= \<const0>\;
  s_axi_rdata(230) <= \<const0>\;
  s_axi_rdata(229) <= \<const0>\;
  s_axi_rdata(228) <= \<const0>\;
  s_axi_rdata(227) <= \<const0>\;
  s_axi_rdata(226) <= \<const0>\;
  s_axi_rdata(225) <= \<const0>\;
  s_axi_rdata(224) <= \<const0>\;
  s_axi_rdata(223) <= \<const0>\;
  s_axi_rdata(222) <= \<const0>\;
  s_axi_rdata(221) <= \<const0>\;
  s_axi_rdata(220) <= \<const0>\;
  s_axi_rdata(219) <= \<const0>\;
  s_axi_rdata(218) <= \<const0>\;
  s_axi_rdata(217) <= \<const0>\;
  s_axi_rdata(216) <= \<const0>\;
  s_axi_rdata(215) <= \<const0>\;
  s_axi_rdata(214) <= \<const0>\;
  s_axi_rdata(213) <= \<const0>\;
  s_axi_rdata(212) <= \<const0>\;
  s_axi_rdata(211) <= \<const0>\;
  s_axi_rdata(210) <= \<const0>\;
  s_axi_rdata(209) <= \<const0>\;
  s_axi_rdata(208) <= \<const0>\;
  s_axi_rdata(207) <= \<const0>\;
  s_axi_rdata(206) <= \<const0>\;
  s_axi_rdata(205) <= \<const0>\;
  s_axi_rdata(204) <= \<const0>\;
  s_axi_rdata(203) <= \<const0>\;
  s_axi_rdata(202) <= \<const0>\;
  s_axi_rdata(201) <= \<const0>\;
  s_axi_rdata(200) <= \<const0>\;
  s_axi_rdata(199) <= \<const0>\;
  s_axi_rdata(198) <= \<const0>\;
  s_axi_rdata(197) <= \<const0>\;
  s_axi_rdata(196) <= \<const0>\;
  s_axi_rdata(195) <= \<const0>\;
  s_axi_rdata(194) <= \<const0>\;
  s_axi_rdata(193) <= \<const0>\;
  s_axi_rdata(192) <= \<const0>\;
  s_axi_rdata(191) <= \<const0>\;
  s_axi_rdata(190) <= \<const0>\;
  s_axi_rdata(189) <= \<const0>\;
  s_axi_rdata(188) <= \<const0>\;
  s_axi_rdata(187) <= \<const0>\;
  s_axi_rdata(186) <= \<const0>\;
  s_axi_rdata(185) <= \<const0>\;
  s_axi_rdata(184) <= \<const0>\;
  s_axi_rdata(183) <= \<const0>\;
  s_axi_rdata(182) <= \<const0>\;
  s_axi_rdata(181) <= \<const0>\;
  s_axi_rdata(180) <= \<const0>\;
  s_axi_rdata(179) <= \<const0>\;
  s_axi_rdata(178) <= \<const0>\;
  s_axi_rdata(177) <= \<const0>\;
  s_axi_rdata(176) <= \<const0>\;
  s_axi_rdata(175) <= \<const0>\;
  s_axi_rdata(174) <= \<const0>\;
  s_axi_rdata(173) <= \<const0>\;
  s_axi_rdata(172) <= \<const0>\;
  s_axi_rdata(171) <= \<const0>\;
  s_axi_rdata(170) <= \<const0>\;
  s_axi_rdata(169) <= \<const0>\;
  s_axi_rdata(168) <= \<const0>\;
  s_axi_rdata(167) <= \<const0>\;
  s_axi_rdata(166) <= \<const0>\;
  s_axi_rdata(165) <= \<const0>\;
  s_axi_rdata(164) <= \<const0>\;
  s_axi_rdata(163) <= \<const0>\;
  s_axi_rdata(162) <= \<const0>\;
  s_axi_rdata(161) <= \<const0>\;
  s_axi_rdata(160) <= \<const0>\;
  s_axi_rdata(159) <= \<const0>\;
  s_axi_rdata(158) <= \<const0>\;
  s_axi_rdata(157) <= \<const0>\;
  s_axi_rdata(156) <= \<const0>\;
  s_axi_rdata(155) <= \<const0>\;
  s_axi_rdata(154) <= \<const0>\;
  s_axi_rdata(153) <= \<const0>\;
  s_axi_rdata(152) <= \<const0>\;
  s_axi_rdata(151) <= \<const0>\;
  s_axi_rdata(150) <= \<const0>\;
  s_axi_rdata(149) <= \<const0>\;
  s_axi_rdata(148) <= \<const0>\;
  s_axi_rdata(147) <= \<const0>\;
  s_axi_rdata(146) <= \<const0>\;
  s_axi_rdata(145) <= \<const0>\;
  s_axi_rdata(144) <= \<const0>\;
  s_axi_rdata(143) <= \<const0>\;
  s_axi_rdata(142) <= \<const0>\;
  s_axi_rdata(141) <= \<const0>\;
  s_axi_rdata(140) <= \<const0>\;
  s_axi_rdata(139) <= \<const0>\;
  s_axi_rdata(138) <= \<const0>\;
  s_axi_rdata(137) <= \<const0>\;
  s_axi_rdata(136) <= \<const0>\;
  s_axi_rdata(135) <= \<const0>\;
  s_axi_rdata(134) <= \<const0>\;
  s_axi_rdata(133) <= \<const0>\;
  s_axi_rdata(132) <= \<const0>\;
  s_axi_rdata(131) <= \<const0>\;
  s_axi_rdata(130) <= \<const0>\;
  s_axi_rdata(129) <= \<const0>\;
  s_axi_rdata(128) <= \<const0>\;
  s_axi_rdata(127) <= \<const0>\;
  s_axi_rdata(126) <= \<const0>\;
  s_axi_rdata(125) <= \<const0>\;
  s_axi_rdata(124) <= \<const0>\;
  s_axi_rdata(123) <= \<const0>\;
  s_axi_rdata(122) <= \<const0>\;
  s_axi_rdata(121) <= \<const0>\;
  s_axi_rdata(120) <= \<const0>\;
  s_axi_rdata(119) <= \<const0>\;
  s_axi_rdata(118) <= \<const0>\;
  s_axi_rdata(117) <= \<const0>\;
  s_axi_rdata(116) <= \<const0>\;
  s_axi_rdata(115) <= \<const0>\;
  s_axi_rdata(114) <= \<const0>\;
  s_axi_rdata(113) <= \<const0>\;
  s_axi_rdata(112) <= \<const0>\;
  s_axi_rdata(111) <= \<const0>\;
  s_axi_rdata(110) <= \<const0>\;
  s_axi_rdata(109) <= \<const0>\;
  s_axi_rdata(108) <= \<const0>\;
  s_axi_rdata(107) <= \<const0>\;
  s_axi_rdata(106) <= \<const0>\;
  s_axi_rdata(105) <= \<const0>\;
  s_axi_rdata(104) <= \<const0>\;
  s_axi_rdata(103) <= \<const0>\;
  s_axi_rdata(102) <= \<const0>\;
  s_axi_rdata(101) <= \<const0>\;
  s_axi_rdata(100) <= \<const0>\;
  s_axi_rdata(99) <= \<const0>\;
  s_axi_rdata(98) <= \<const0>\;
  s_axi_rdata(97) <= \<const0>\;
  s_axi_rdata(96) <= \<const0>\;
  s_axi_rdata(95) <= \<const0>\;
  s_axi_rdata(94) <= \<const0>\;
  s_axi_rdata(93) <= \<const0>\;
  s_axi_rdata(92) <= \<const0>\;
  s_axi_rdata(91) <= \<const0>\;
  s_axi_rdata(90) <= \<const0>\;
  s_axi_rdata(89) <= \<const0>\;
  s_axi_rdata(88) <= \<const0>\;
  s_axi_rdata(87) <= \<const0>\;
  s_axi_rdata(86) <= \<const0>\;
  s_axi_rdata(85) <= \<const0>\;
  s_axi_rdata(84) <= \<const0>\;
  s_axi_rdata(83) <= \<const0>\;
  s_axi_rdata(82) <= \<const0>\;
  s_axi_rdata(81) <= \<const0>\;
  s_axi_rdata(80) <= \<const0>\;
  s_axi_rdata(79) <= \<const0>\;
  s_axi_rdata(78) <= \<const0>\;
  s_axi_rdata(77) <= \<const0>\;
  s_axi_rdata(76) <= \<const0>\;
  s_axi_rdata(75) <= \<const0>\;
  s_axi_rdata(74) <= \<const0>\;
  s_axi_rdata(73) <= \<const0>\;
  s_axi_rdata(72) <= \<const0>\;
  s_axi_rdata(71) <= \<const0>\;
  s_axi_rdata(70) <= \<const0>\;
  s_axi_rdata(69) <= \<const0>\;
  s_axi_rdata(68) <= \<const0>\;
  s_axi_rdata(67) <= \<const0>\;
  s_axi_rdata(66) <= \<const0>\;
  s_axi_rdata(65) <= \<const0>\;
  s_axi_rdata(64) <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.design_1_auto_us_df_1_blk_mem_gen_v8_4_4_synth
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => addrb(8 downto 0),
      clkb => clkb,
      dina(143 downto 0) => dina(287 downto 144),
      doutb(287 downto 0) => doutb(287 downto 0),
      ena => ena,
      enb => enb,
      wea(31 downto 0) => wea(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_fifo_generator_v13_2_5 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 17 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 2;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 5;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 5;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 18;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 66;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 35;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 66;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 37;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 18;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 2;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 2;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 2;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 2;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is "4kx4";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 14;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 30;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 14;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 15;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 2;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 2;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 32;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 32;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 5;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 5;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of design_1_auto_us_df_1_fifo_generator_v13_2_5 : entity is 1;
end design_1_auto_us_df_1_fifo_generator_v13_2_5;

architecture STRUCTURE of design_1_auto_us_df_1_fifo_generator_v13_2_5 is
  signal \<const0>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(5) <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const0>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(5) <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(5) <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(5) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const0>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(5) <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(5) <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const0>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const0>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const0>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const0>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(9) <= \<const0>\;
  data_count(8) <= \<const0>\;
  data_count(7) <= \<const0>\;
  data_count(6) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  dout(17) <= \<const0>\;
  dout(16) <= \<const0>\;
  dout(15) <= \<const0>\;
  dout(14) <= \<const0>\;
  dout(13) <= \<const0>\;
  dout(12) <= \<const0>\;
  dout(11) <= \<const0>\;
  dout(10) <= \<const0>\;
  dout(9) <= \<const0>\;
  dout(8) <= \<const0>\;
  dout(7) <= \<const0>\;
  dout(6) <= \<const0>\;
  dout(5) <= \<const0>\;
  dout(4) <= \<const0>\;
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \<const0>\;
  empty <= \<const0>\;
  full <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(4) <= \<const0>\;
  m_axi_aruser(3) <= \<const0>\;
  m_axi_aruser(2) <= \<const0>\;
  m_axi_aruser(1) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(63) <= \<const0>\;
  m_axis_tdata(62) <= \<const0>\;
  m_axis_tdata(61) <= \<const0>\;
  m_axis_tdata(60) <= \<const0>\;
  m_axis_tdata(59) <= \<const0>\;
  m_axis_tdata(58) <= \<const0>\;
  m_axis_tdata(57) <= \<const0>\;
  m_axis_tdata(56) <= \<const0>\;
  m_axis_tdata(55) <= \<const0>\;
  m_axis_tdata(54) <= \<const0>\;
  m_axis_tdata(53) <= \<const0>\;
  m_axis_tdata(52) <= \<const0>\;
  m_axis_tdata(51) <= \<const0>\;
  m_axis_tdata(50) <= \<const0>\;
  m_axis_tdata(49) <= \<const0>\;
  m_axis_tdata(48) <= \<const0>\;
  m_axis_tdata(47) <= \<const0>\;
  m_axis_tdata(46) <= \<const0>\;
  m_axis_tdata(45) <= \<const0>\;
  m_axis_tdata(44) <= \<const0>\;
  m_axis_tdata(43) <= \<const0>\;
  m_axis_tdata(42) <= \<const0>\;
  m_axis_tdata(41) <= \<const0>\;
  m_axis_tdata(40) <= \<const0>\;
  m_axis_tdata(39) <= \<const0>\;
  m_axis_tdata(38) <= \<const0>\;
  m_axis_tdata(37) <= \<const0>\;
  m_axis_tdata(36) <= \<const0>\;
  m_axis_tdata(35) <= \<const0>\;
  m_axis_tdata(34) <= \<const0>\;
  m_axis_tdata(33) <= \<const0>\;
  m_axis_tdata(32) <= \<const0>\;
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27) <= \<const0>\;
  m_axis_tdata(26) <= \<const0>\;
  m_axis_tdata(25) <= \<const0>\;
  m_axis_tdata(24) <= \<const0>\;
  m_axis_tdata(23) <= \<const0>\;
  m_axis_tdata(22) <= \<const0>\;
  m_axis_tdata(21) <= \<const0>\;
  m_axis_tdata(20) <= \<const0>\;
  m_axis_tdata(19) <= \<const0>\;
  m_axis_tdata(18) <= \<const0>\;
  m_axis_tdata(17) <= \<const0>\;
  m_axis_tdata(16) <= \<const0>\;
  m_axis_tdata(15) <= \<const0>\;
  m_axis_tdata(14) <= \<const0>\;
  m_axis_tdata(13) <= \<const0>\;
  m_axis_tdata(12) <= \<const0>\;
  m_axis_tdata(11) <= \<const0>\;
  m_axis_tdata(10) <= \<const0>\;
  m_axis_tdata(9) <= \<const0>\;
  m_axis_tdata(8) <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(3) <= \<const0>\;
  m_axis_tdest(2) <= \<const0>\;
  m_axis_tdest(1) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(7) <= \<const0>\;
  m_axis_tid(6) <= \<const0>\;
  m_axis_tid(5) <= \<const0>\;
  m_axis_tid(4) <= \<const0>\;
  m_axis_tid(3) <= \<const0>\;
  m_axis_tid(2) <= \<const0>\;
  m_axis_tid(1) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_fifo_gen: entity work.design_1_auto_us_df_1_fifo_generator_v13_2_5_synth
     port map (
      DI(65 downto 34) => s_axi_awaddr(31 downto 0),
      DI(33 downto 26) => s_axi_awlen(7 downto 0),
      DI(25 downto 23) => s_axi_awsize(2 downto 0),
      DI(22 downto 21) => s_axi_awburst(1 downto 0),
      DI(20) => s_axi_awlock(0),
      DI(19 downto 16) => s_axi_awcache(3 downto 0),
      DI(15 downto 13) => s_axi_awprot(2 downto 0),
      DI(12 downto 9) => s_axi_awqos(3 downto 0),
      DI(8 downto 5) => s_axi_awregion(3 downto 0),
      DI(4 downto 0) => s_axi_awuser(4 downto 0),
      dout_i0_out(65 downto 34) => m_axi_awaddr(31 downto 0),
      dout_i0_out(33 downto 26) => m_axi_awlen(7 downto 0),
      dout_i0_out(25 downto 23) => m_axi_awsize(2 downto 0),
      dout_i0_out(22 downto 21) => m_axi_awburst(1 downto 0),
      dout_i0_out(20) => m_axi_awlock(0),
      dout_i0_out(19 downto 16) => m_axi_awcache(3 downto 0),
      dout_i0_out(15 downto 13) => m_axi_awprot(2 downto 0),
      dout_i0_out(12 downto 9) => m_axi_awqos(3 downto 0),
      dout_i0_out(8 downto 5) => m_axi_awregion(3 downto 0),
      dout_i0_out(4 downto 0) => m_axi_awuser(4 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_w_upsizer_pktfifo is
  port (
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \goreg_dm.dout_i_reg[25]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \goreg_dm.dout_i_reg[22]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \USE_WRITE.wr_cmd_ready\ : out STD_LOGIC;
    s_axi_aresetn : out STD_LOGIC;
    \aresetn_d_reg[1]\ : out STD_LOGIC;
    M_AXI_WVALID_i_reg_0 : out STD_LOGIC;
    M_AXI_WLAST_i_reg_0 : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    S_AXI_WREADY_i_reg_0 : out STD_LOGIC;
    \FSM_sequential_si_state_reg[1]_0\ : out STD_LOGIC;
    \si_wrap_cnt_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_push_block0 : out STD_LOGIC;
    \USE_WRITE.m_axi_awready_i\ : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_ready_i_reg : out STD_LOGIC;
    dina : in STD_LOGIC_VECTOR ( 143 downto 0 );
    \out\ : in STD_LOGIC;
    \aresetn_d_reg[1]_0\ : in STD_LOGIC;
    f_si_wrap_word_return : in STD_LOGIC;
    \m_payload_i_reg[61]\ : in STD_LOGIC_VECTOR ( 46 downto 0 );
    \aresetn_d_reg[1]_1\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    \FSM_sequential_si_state_reg[0]_0\ : in STD_LOGIC;
    \si_be_reg[0]_0\ : in STD_LOGIC;
    \si_be_reg[1]_0\ : in STD_LOGIC;
    \si_be_reg[2]_0\ : in STD_LOGIC;
    \si_be_reg[3]_0\ : in STD_LOGIC;
    \si_be_reg[4]_0\ : in STD_LOGIC;
    \si_be_reg[5]_0\ : in STD_LOGIC;
    \si_be_reg[6]_0\ : in STD_LOGIC;
    \si_be_reg[7]_0\ : in STD_LOGIC;
    \si_be_reg[8]_0\ : in STD_LOGIC;
    \si_be_reg[9]_0\ : in STD_LOGIC;
    \si_be_reg[10]_0\ : in STD_LOGIC;
    \si_be_reg[11]_0\ : in STD_LOGIC;
    \si_be_reg[12]_0\ : in STD_LOGIC;
    \si_be_reg[13]_0\ : in STD_LOGIC;
    \si_be_reg[14]_0\ : in STD_LOGIC;
    \si_be_reg[15]_0\ : in STD_LOGIC;
    \si_be_reg[15]_1\ : in STD_LOGIC;
    \si_ptr_reg[1]_0\ : in STD_LOGIC;
    \si_ptr_reg[2]_0\ : in STD_LOGIC;
    \si_wrap_cnt_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \si_wrap_cnt_reg[1]_0\ : in STD_LOGIC;
    \si_wrap_cnt_reg[2]_0\ : in STD_LOGIC;
    \si_wrap_cnt_reg[3]_0\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC;
    m_valid_i_reg_inv : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    \m_payload_i_reg[66]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \m_payload_i_reg[35]\ : in STD_LOGIC;
    \si_wrap_be_next_reg[14]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \si_ptr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_w_upsizer_pktfifo;

architecture STRUCTURE of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_w_upsizer_pktfifo is
  signal \^d\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \FSM_sequential_mi_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mi_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mi_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mi_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mi_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mi_state[2]_i_5_n_0\ : STD_LOGIC;
  signal M_AXI_AWVALID_i_i_1_n_0 : STD_LOGIC;
  signal M_AXI_WLAST_i_i_1_n_0 : STD_LOGIC;
  signal M_AXI_WLAST_i_i_2_n_0 : STD_LOGIC;
  signal \^m_axi_wlast_i_reg_0\ : STD_LOGIC;
  signal M_AXI_WVALID_i_i_1_n_0 : STD_LOGIC;
  signal \^m_axi_wvalid_i_reg_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_wready_i_reg_0\ : STD_LOGIC;
  signal addr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal aw_pop : STD_LOGIC;
  signal aw_ready : STD_LOGIC;
  signal be : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \be__0\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal buf_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal dw_fifogen_aw_i_4_n_0 : STD_LOGIC;
  signal f_si_we_return : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal first_load_mi_d1 : STD_LOGIC;
  signal first_load_mi_d1_i_1_n_0 : STD_LOGIC;
  signal \^goreg_dm.dout_i_reg[22]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^goreg_dm.dout_i_reg[25]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal index : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal load_mi_d1 : STD_LOGIC;
  signal load_mi_d2 : STD_LOGIC;
  signal load_mi_next : STD_LOGIC;
  signal load_mi_ptr : STD_LOGIC;
  signal load_si_ptr : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \mi_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mi_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mi_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \mi_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \mi_addr[4]_i_2_n_0\ : STD_LOGIC;
  signal \mi_addr_d1[4]_i_1_n_0\ : STD_LOGIC;
  signal \mi_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mi_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \mi_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \mi_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \mi_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal mi_awvalid : STD_LOGIC;
  signal \mi_be[0]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[0]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[0]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[0]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[0]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[10]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[10]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[10]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[10]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[10]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[11]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[11]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[11]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[11]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[11]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[11]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[12]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[12]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be[12]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[12]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[12]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[13]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[13]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[13]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be[13]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[13]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[13]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[13]_i_8_n_0\ : STD_LOGIC;
  signal \mi_be[13]_i_9_n_0\ : STD_LOGIC;
  signal \mi_be[14]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[14]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be[14]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[14]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[14]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[15]_i_10_n_0\ : STD_LOGIC;
  signal \mi_be[15]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[15]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[15]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be[15]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[15]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[15]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[15]_i_8_n_0\ : STD_LOGIC;
  signal \mi_be[15]_i_9_n_0\ : STD_LOGIC;
  signal \mi_be[16]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[16]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[16]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be[16]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[16]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[16]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[16]_i_8_n_0\ : STD_LOGIC;
  signal \mi_be[16]_i_9_n_0\ : STD_LOGIC;
  signal \mi_be[17]_i_10_n_0\ : STD_LOGIC;
  signal \mi_be[17]_i_11_n_0\ : STD_LOGIC;
  signal \mi_be[17]_i_12_n_0\ : STD_LOGIC;
  signal \mi_be[17]_i_13_n_0\ : STD_LOGIC;
  signal \mi_be[17]_i_14_n_0\ : STD_LOGIC;
  signal \mi_be[17]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[17]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[17]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be[17]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[17]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[17]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[17]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[17]_i_8_n_0\ : STD_LOGIC;
  signal \mi_be[17]_i_9_n_0\ : STD_LOGIC;
  signal \mi_be[18]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[18]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[18]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[18]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[18]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[19]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[19]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[19]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[19]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[19]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[1]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[1]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[1]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be[1]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[1]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[1]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[1]_i_8_n_0\ : STD_LOGIC;
  signal \mi_be[20]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[20]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[20]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[20]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[20]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[21]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[21]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[21]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be[21]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[21]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[21]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[21]_i_8_n_0\ : STD_LOGIC;
  signal \mi_be[22]_i_10_n_0\ : STD_LOGIC;
  signal \mi_be[22]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[22]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[22]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be[22]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[22]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[22]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[22]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[22]_i_8_n_0\ : STD_LOGIC;
  signal \mi_be[22]_i_9_n_0\ : STD_LOGIC;
  signal \mi_be[23]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[23]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[23]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[23]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[23]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[23]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[23]_i_8_n_0\ : STD_LOGIC;
  signal \mi_be[24]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[24]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[24]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[24]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[24]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[25]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[25]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[25]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[25]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[25]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[25]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[26]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[26]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[26]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[26]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[26]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[27]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[27]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[27]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[27]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[27]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[27]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[27]_i_8_n_0\ : STD_LOGIC;
  signal \mi_be[28]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[28]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[28]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[28]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[28]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[29]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[29]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[29]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be[29]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[29]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[29]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[29]_i_8_n_0\ : STD_LOGIC;
  signal \mi_be[2]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[2]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[2]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[2]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[2]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[30]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[30]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[30]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[30]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[30]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[30]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[30]_i_8_n_0\ : STD_LOGIC;
  signal \mi_be[31]_i_10_n_0\ : STD_LOGIC;
  signal \mi_be[31]_i_11_n_0\ : STD_LOGIC;
  signal \mi_be[31]_i_12_n_0\ : STD_LOGIC;
  signal \mi_be[31]_i_13_n_0\ : STD_LOGIC;
  signal \mi_be[31]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[31]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[31]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be[31]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[31]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[31]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[31]_i_8_n_0\ : STD_LOGIC;
  signal \mi_be[31]_i_9_n_0\ : STD_LOGIC;
  signal \mi_be[3]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[3]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[3]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[3]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[3]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[3]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[4]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[4]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[4]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[4]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[4]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[5]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[5]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[5]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[5]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[5]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[5]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[5]_i_8_n_0\ : STD_LOGIC;
  signal \mi_be[6]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[6]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[6]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be[6]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[6]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[6]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[6]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[6]_i_8_n_0\ : STD_LOGIC;
  signal \mi_be[6]_i_9_n_0\ : STD_LOGIC;
  signal \mi_be[7]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[7]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[7]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[7]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[7]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[8]_i_10_n_0\ : STD_LOGIC;
  signal \mi_be[8]_i_11_n_0\ : STD_LOGIC;
  signal \mi_be[8]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[8]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[8]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be[8]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[8]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[8]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be[8]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be[8]_i_8_n_0\ : STD_LOGIC;
  signal \mi_be[8]_i_9_n_0\ : STD_LOGIC;
  signal \mi_be[9]_i_1_n_0\ : STD_LOGIC;
  signal \mi_be[9]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be[9]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be[9]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be[9]_i_6_n_0\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[0]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[10]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[11]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[12]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[13]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[14]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[15]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[16]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[17]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[18]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[19]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[1]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[20]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[21]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[22]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[23]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[24]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[25]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[26]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[27]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[28]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[29]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[2]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[30]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[31]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[3]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[4]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[5]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[6]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[7]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[8]\ : STD_LOGIC;
  signal \mi_be_d1_reg_n_0_[9]\ : STD_LOGIC;
  signal \mi_be_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be_reg[13]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \mi_be_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be_reg[16]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be_reg[18]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \mi_be_reg[20]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[21]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[24]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[25]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[26]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[28]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[29]_i_4_n_0\ : STD_LOGIC;
  signal \mi_be_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[30]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \mi_be_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \mi_be_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal mi_buf0 : STD_LOGIC;
  signal \mi_buf[0]_i_1_n_0\ : STD_LOGIC;
  signal \mi_buf[1]_i_2_n_0\ : STD_LOGIC;
  signal mi_buf_addr : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mi_buf_en : STD_LOGIC;
  signal \mi_burst[0]_i_1_n_0\ : STD_LOGIC;
  signal \mi_burst[1]_i_2_n_0\ : STD_LOGIC;
  signal \mi_burst_reg_n_0_[0]\ : STD_LOGIC;
  signal \mi_burst_reg_n_0_[1]\ : STD_LOGIC;
  signal mi_first : STD_LOGIC;
  signal mi_first_d1 : STD_LOGIC;
  signal mi_first_i_1_n_0 : STD_LOGIC;
  signal mi_last : STD_LOGIC;
  signal mi_last_d1_i_1_n_0 : STD_LOGIC;
  signal mi_last_d1_reg_n_0 : STD_LOGIC;
  signal mi_last_i_1_n_0 : STD_LOGIC;
  signal mi_last_i_2_n_0 : STD_LOGIC;
  signal mi_last_i_3_n_0 : STD_LOGIC;
  signal mi_last_i_4_n_0 : STD_LOGIC;
  signal mi_last_i_5_n_0 : STD_LOGIC;
  signal mi_last_i_6_n_0 : STD_LOGIC;
  signal mi_last_i_7_n_0 : STD_LOGIC;
  signal mi_last_index_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mi_last_index_reg_d0 : STD_LOGIC;
  signal \mi_last_index_reg_d0[0]_i_1_n_0\ : STD_LOGIC;
  signal \mi_last_index_reg_d0[1]_i_1_n_0\ : STD_LOGIC;
  signal \mi_last_index_reg_d0[2]_i_1_n_0\ : STD_LOGIC;
  signal \mi_last_index_reg_d0[3]_i_1_n_0\ : STD_LOGIC;
  signal \mi_last_index_reg_d0[4]_i_1_n_0\ : STD_LOGIC;
  signal \mi_last_index_reg_d0_reg_n_0_[0]\ : STD_LOGIC;
  signal \mi_last_index_reg_d0_reg_n_0_[1]\ : STD_LOGIC;
  signal \mi_last_index_reg_d0_reg_n_0_[2]\ : STD_LOGIC;
  signal \mi_last_index_reg_d0_reg_n_0_[3]\ : STD_LOGIC;
  signal \mi_last_index_reg_d0_reg_n_0_[4]\ : STD_LOGIC;
  signal \mi_ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mi_ptr[0]_i_2_n_0\ : STD_LOGIC;
  signal \mi_ptr[0]_i_3_n_0\ : STD_LOGIC;
  signal \mi_ptr[0]_i_4_n_0\ : STD_LOGIC;
  signal \mi_ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mi_ptr[1]_i_2_n_0\ : STD_LOGIC;
  signal \mi_ptr[1]_i_3_n_0\ : STD_LOGIC;
  signal \mi_ptr[1]_i_4_n_0\ : STD_LOGIC;
  signal \mi_ptr[2]_i_2_n_0\ : STD_LOGIC;
  signal \mi_ptr[2]_i_3_n_0\ : STD_LOGIC;
  signal \mi_ptr[2]_i_4_n_0\ : STD_LOGIC;
  signal \mi_ptr[3]_i_1_n_0\ : STD_LOGIC;
  signal \mi_ptr[4]_i_1_n_0\ : STD_LOGIC;
  signal \mi_ptr[4]_i_2_n_0\ : STD_LOGIC;
  signal \mi_ptr[5]_i_1_n_0\ : STD_LOGIC;
  signal \mi_ptr[6]_i_1_n_0\ : STD_LOGIC;
  signal \mi_ptr[6]_i_2_n_0\ : STD_LOGIC;
  signal \mi_ptr[6]_i_3_n_0\ : STD_LOGIC;
  signal \mi_ptr[6]_i_4_n_0\ : STD_LOGIC;
  signal \mi_ptr[6]_i_5_n_0\ : STD_LOGIC;
  signal \mi_ptr_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \mi_size[0]_i_1_n_0\ : STD_LOGIC;
  signal \mi_size[1]_i_1_n_0\ : STD_LOGIC;
  signal \mi_size[2]_i_1_n_0\ : STD_LOGIC;
  signal mi_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \mi_state_ns__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \mi_wcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wcnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wcnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wcnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wcnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wcnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wcnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wcnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wcnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wcnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wcnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wcnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wcnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wcnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wcnt__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mi_wpayload : STD_LOGIC_VECTOR ( 287 downto 8 );
  signal mi_wrap_be_next : STD_LOGIC;
  signal \mi_wrap_be_next[0]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[0]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[0]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[0]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[0]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[10]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[10]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[10]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[10]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[10]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[11]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[11]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[11]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[12]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[12]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[12]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[12]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[13]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[13]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[13]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[13]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[13]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[14]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[14]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[14]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[14]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[16]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[16]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[16]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[16]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[16]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[17]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[17]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[17]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[17]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[17]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[17]_i_6_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[18]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[18]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[18]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[18]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[18]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[18]_i_6_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[18]_i_7_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[19]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[19]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[19]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[1]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[1]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[1]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[20]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[20]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[20]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[20]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[20]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[20]_i_6_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[20]_i_7_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[21]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[21]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[21]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[22]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[22]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[22]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[22]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[22]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[23]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[23]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[24]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[24]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[24]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[25]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[25]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[25]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[25]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[26]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[26]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[26]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[26]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[26]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[26]_i_6_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[27]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[27]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[27]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[28]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[28]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[28]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[28]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[29]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[29]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[29]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[29]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[29]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[2]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[2]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[2]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[30]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[30]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[30]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[30]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[30]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[30]_i_6_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[30]_i_7_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[30]_i_8_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[31]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[31]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[3]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[3]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[3]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[3]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[3]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[4]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[4]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[4]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[5]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[5]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[5]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[5]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[6]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[6]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[6]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[7]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[7]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[7]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[8]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[8]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[8]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[9]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[9]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[9]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[9]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next[9]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[0]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[10]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[11]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[12]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[13]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[14]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[16]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[17]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[18]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[19]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[1]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[20]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[21]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[22]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[23]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[24]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[25]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[26]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[27]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[28]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[29]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[2]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[30]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[31]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[3]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[4]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[5]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[6]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[7]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[8]\ : STD_LOGIC;
  signal \mi_wrap_be_next_reg_n_0_[9]\ : STD_LOGIC;
  signal mi_wrap_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mi_wrap_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[1]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[1]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[1]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[1]_i_6_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[2]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[2]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[2]_i_6_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[2]_i_7_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[3]_i_5_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[3]_i_6_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[3]_i_7_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[3]_i_8_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt[3]_i_9_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \mi_wrap_cnt_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal mi_wstrb_mask_d2 : STD_LOGIC;
  signal mi_wstrb_mask_d20 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \mi_wstrb_mask_d2[10]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[11]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[13]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[13]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[14]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[14]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[15]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[18]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[19]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[1]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[1]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[20]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[21]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[21]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[22]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[23]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[23]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[25]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[25]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[26]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[26]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[26]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[27]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[28]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[28]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[29]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[29]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[29]_i_4_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[2]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[30]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[30]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[31]_i_3_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[3]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[7]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[8]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2[9]_i_2_n_0\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[0]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[10]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[11]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[12]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[13]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[14]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[15]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[16]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[17]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[18]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[19]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[1]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[20]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[21]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[22]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[23]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[24]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[25]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[26]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[27]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[28]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[29]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[2]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[30]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[31]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[3]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[4]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[5]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[6]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[7]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[8]\ : STD_LOGIC;
  signal \mi_wstrb_mask_d2_reg_n_0_[9]\ : STD_LOGIC;
  signal \next_mi_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_mi_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_mi_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \next_mi_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \next_mi_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \next_mi_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \next_mi_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \next_mi_addr_reg_n_0_[7]\ : STD_LOGIC;
  signal next_mi_burst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal next_mi_last_index_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \next_mi_len[7]_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_len_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_mi_len_reg_n_0_[4]\ : STD_LOGIC;
  signal \next_mi_len_reg_n_0_[5]\ : STD_LOGIC;
  signal \next_mi_len_reg_n_0_[6]\ : STD_LOGIC;
  signal \next_mi_len_reg_n_0_[7]\ : STD_LOGIC;
  signal \next_mi_size_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_mi_size_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_mi_size_reg_n_0_[2]\ : STD_LOGIC;
  signal next_valid : STD_LOGIC;
  signal next_valid_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_176_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal s_aw_reg_n_10 : STD_LOGIC;
  signal s_aw_reg_n_11 : STD_LOGIC;
  signal s_aw_reg_n_12 : STD_LOGIC;
  signal s_aw_reg_n_13 : STD_LOGIC;
  signal s_aw_reg_n_14 : STD_LOGIC;
  signal s_aw_reg_n_15 : STD_LOGIC;
  signal s_aw_reg_n_16 : STD_LOGIC;
  signal s_aw_reg_n_17 : STD_LOGIC;
  signal s_aw_reg_n_18 : STD_LOGIC;
  signal s_aw_reg_n_19 : STD_LOGIC;
  signal s_aw_reg_n_2 : STD_LOGIC;
  signal s_aw_reg_n_20 : STD_LOGIC;
  signal s_aw_reg_n_21 : STD_LOGIC;
  signal s_aw_reg_n_22 : STD_LOGIC;
  signal s_aw_reg_n_23 : STD_LOGIC;
  signal s_aw_reg_n_24 : STD_LOGIC;
  signal s_aw_reg_n_25 : STD_LOGIC;
  signal s_aw_reg_n_26 : STD_LOGIC;
  signal s_aw_reg_n_30 : STD_LOGIC;
  signal s_aw_reg_n_31 : STD_LOGIC;
  signal s_aw_reg_n_33 : STD_LOGIC;
  signal s_aw_reg_n_36 : STD_LOGIC;
  signal s_aw_reg_n_37 : STD_LOGIC;
  signal s_aw_reg_n_39 : STD_LOGIC;
  signal s_aw_reg_n_4 : STD_LOGIC;
  signal s_aw_reg_n_40 : STD_LOGIC;
  signal s_aw_reg_n_41 : STD_LOGIC;
  signal s_aw_reg_n_42 : STD_LOGIC;
  signal s_aw_reg_n_5 : STD_LOGIC;
  signal s_aw_reg_n_6 : STD_LOGIC;
  signal s_aw_reg_n_7 : STD_LOGIC;
  signal s_aw_reg_n_8 : STD_LOGIC;
  signal s_aw_reg_n_9 : STD_LOGIC;
  signal s_awaddr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_awburst_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_awcache_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_awlen_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_awlock_reg : STD_LOGIC;
  signal s_awprot_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_awqos_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_awregion_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_awsize_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_aresetn\ : STD_LOGIC;
  signal \si_be[0]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[0]_i_4_n_0\ : STD_LOGIC;
  signal \si_be[10]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[10]_i_4_n_0\ : STD_LOGIC;
  signal \si_be[10]_i_5_n_0\ : STD_LOGIC;
  signal \si_be[11]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[11]_i_5_n_0\ : STD_LOGIC;
  signal \si_be[12]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[12]_i_4_n_0\ : STD_LOGIC;
  signal \si_be[12]_i_5_n_0\ : STD_LOGIC;
  signal \si_be[13]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[13]_i_5_n_0\ : STD_LOGIC;
  signal \si_be[13]_i_6_n_0\ : STD_LOGIC;
  signal \si_be[14]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[14]_i_4_n_0\ : STD_LOGIC;
  signal \si_be[14]_i_5_n_0\ : STD_LOGIC;
  signal \si_be[15]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[15]_i_4_n_0\ : STD_LOGIC;
  signal \si_be[1]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[1]_i_5_n_0\ : STD_LOGIC;
  signal \si_be[2]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[2]_i_4_n_0\ : STD_LOGIC;
  signal \si_be[3]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[3]_i_5_n_0\ : STD_LOGIC;
  signal \si_be[4]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[4]_i_4_n_0\ : STD_LOGIC;
  signal \si_be[5]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[5]_i_5_n_0\ : STD_LOGIC;
  signal \si_be[6]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[6]_i_4_n_0\ : STD_LOGIC;
  signal \si_be[7]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[7]_i_5_n_0\ : STD_LOGIC;
  signal \si_be[8]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[8]_i_4_n_0\ : STD_LOGIC;
  signal \si_be[9]_i_3_n_0\ : STD_LOGIC;
  signal \si_be[9]_i_5_n_0\ : STD_LOGIC;
  signal \si_be_reg_n_0_[0]\ : STD_LOGIC;
  signal \si_be_reg_n_0_[10]\ : STD_LOGIC;
  signal \si_be_reg_n_0_[11]\ : STD_LOGIC;
  signal \si_be_reg_n_0_[12]\ : STD_LOGIC;
  signal \si_be_reg_n_0_[13]\ : STD_LOGIC;
  signal \si_be_reg_n_0_[14]\ : STD_LOGIC;
  signal \si_be_reg_n_0_[1]\ : STD_LOGIC;
  signal \si_be_reg_n_0_[2]\ : STD_LOGIC;
  signal \si_be_reg_n_0_[3]\ : STD_LOGIC;
  signal \si_be_reg_n_0_[4]\ : STD_LOGIC;
  signal \si_be_reg_n_0_[5]\ : STD_LOGIC;
  signal \si_be_reg_n_0_[6]\ : STD_LOGIC;
  signal \si_be_reg_n_0_[7]\ : STD_LOGIC;
  signal \si_be_reg_n_0_[8]\ : STD_LOGIC;
  signal \si_be_reg_n_0_[9]\ : STD_LOGIC;
  signal \si_buf[0]_i_1_n_0\ : STD_LOGIC;
  signal \si_buf[1]_i_1_n_0\ : STD_LOGIC;
  signal si_buf_addr : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal si_burst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal si_last_index_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \si_ptr[6]_i_4_n_0\ : STD_LOGIC;
  signal \si_size_reg_n_0_[0]\ : STD_LOGIC;
  signal \si_size_reg_n_0_[1]\ : STD_LOGIC;
  signal \si_size_reg_n_0_[2]\ : STD_LOGIC;
  signal si_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal si_wrap_be_next : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal si_wrap_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^si_wrap_cnt_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal si_wrap_word_next : STD_LOGIC;
  signal size : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal word : STD_LOGIC;
  signal NLW_dw_fifogen_aw_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_full_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_dw_fifogen_aw_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_dw_fifogen_aw_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_dw_fifogen_aw_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_dw_fifogen_aw_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_dw_fifogen_aw_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_dw_fifogen_aw_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_dw_fifogen_aw_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_dw_fifogen_aw_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_dw_fifogen_aw_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_dw_fifogen_aw_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_dw_fifogen_aw_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_dw_fifogen_aw_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_dw_fifogen_aw_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_dw_fifogen_aw_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_dw_fifogen_aw_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_dw_fifogen_aw_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_dw_fifogen_aw_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_dw_fifogen_aw_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_dw_fifogen_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_dw_fifogen_aw_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_dw_fifogen_aw_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_dw_fifogen_aw_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_dw_fifogen_aw_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dw_fifogen_aw_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_dw_fifogen_aw_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_dw_fifogen_aw_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_dw_fifogen_aw_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_dw_fifogen_aw_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dw_fifogen_aw_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dw_fifogen_aw_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_dw_fifogen_aw_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_dw_fifogen_aw_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_dw_fifogen_aw_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_dw_fifogen_aw_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_dw_fifogen_aw_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dw_fifogen_aw_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_dw_fifogen_aw_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_dw_fifogen_aw_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dw_fifogen_aw_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_dw_fifogen_aw_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dw_fifogen_aw_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dw_fifogen_aw_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dw_fifogen_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_dw_fifogen_aw_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_dw_fifogen_aw_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_dw_fifogen_aw_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_dw_fifogen_aw_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_dw_fifogen_aw_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_dw_fifogen_aw_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_dw_fifogen_aw_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_dw_fifogen_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_w_buffer_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_w_buffer_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_w_buffer_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_w_buffer_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_w_buffer_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_w_buffer_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_w_buffer_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_w_buffer_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_w_buffer_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_w_buffer_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_w_buffer_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_w_buffer_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_w_buffer_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 287 downto 0 );
  signal NLW_w_buffer_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_w_buffer_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_w_buffer_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_w_buffer_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_w_buffer_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 287 downto 0 );
  signal NLW_w_buffer_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_w_buffer_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_mi_state[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \FSM_sequential_mi_state[2]_i_1\ : label is "soft_lutpair61";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_mi_state_reg[0]\ : label is "M_AW_STALL:111,M_IDLE:000,M_ISSUE2:100,M_WRITING2:101,M_ISSUE1:001,M_WRITING1:010,M_AW_DONE2:110,M_AW_DONE1:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mi_state_reg[1]\ : label is "M_AW_STALL:111,M_IDLE:000,M_ISSUE2:100,M_WRITING2:101,M_ISSUE1:001,M_WRITING1:010,M_AW_DONE2:110,M_AW_DONE1:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mi_state_reg[2]\ : label is "M_AW_STALL:111,M_IDLE:000,M_ISSUE2:100,M_WRITING2:101,M_ISSUE1:001,M_WRITING1:010,M_AW_DONE2:110,M_AW_DONE1:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_si_state_reg[0]\ : label is "S_AWFULL:10,S_IDLE:00,S_WRITING:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_si_state_reg[1]\ : label is "S_AWFULL:10,S_IDLE:00,S_WRITING:01";
  attribute SOFT_HLUTNM of M_AXI_WLAST_i_i_2 : label is "soft_lutpair38";
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of dw_fifogen_aw : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of dw_fifogen_aw : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of dw_fifogen_aw : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of dw_fifogen_aw : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of dw_fifogen_aw : label is 2;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of dw_fifogen_aw : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of dw_fifogen_aw : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of dw_fifogen_aw : label is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of dw_fifogen_aw : label is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of dw_fifogen_aw : label is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of dw_fifogen_aw : label is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of dw_fifogen_aw : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of dw_fifogen_aw : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of dw_fifogen_aw : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of dw_fifogen_aw : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of dw_fifogen_aw : label is 5;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of dw_fifogen_aw : label is 5;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of dw_fifogen_aw : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of dw_fifogen_aw : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of dw_fifogen_aw : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of dw_fifogen_aw : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of dw_fifogen_aw : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of dw_fifogen_aw : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of dw_fifogen_aw : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of dw_fifogen_aw : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of dw_fifogen_aw : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of dw_fifogen_aw : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of dw_fifogen_aw : label is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of dw_fifogen_aw : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of dw_fifogen_aw : label is 18;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of dw_fifogen_aw : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of dw_fifogen_aw : label is 66;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of dw_fifogen_aw : label is 35;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of dw_fifogen_aw : label is 66;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of dw_fifogen_aw : label is 37;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of dw_fifogen_aw : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of dw_fifogen_aw : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of dw_fifogen_aw : label is 18;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of dw_fifogen_aw : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of dw_fifogen_aw : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of dw_fifogen_aw : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of dw_fifogen_aw : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of dw_fifogen_aw : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of dw_fifogen_aw : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of dw_fifogen_aw : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of dw_fifogen_aw : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of dw_fifogen_aw : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of dw_fifogen_aw : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of dw_fifogen_aw : label is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of dw_fifogen_aw : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of dw_fifogen_aw : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of dw_fifogen_aw : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of dw_fifogen_aw : label is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of dw_fifogen_aw : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of dw_fifogen_aw : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of dw_fifogen_aw : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of dw_fifogen_aw : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of dw_fifogen_aw : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of dw_fifogen_aw : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of dw_fifogen_aw : label is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of dw_fifogen_aw : label is 1;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of dw_fifogen_aw : label is 1;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of dw_fifogen_aw : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of dw_fifogen_aw : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of dw_fifogen_aw : label is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of dw_fifogen_aw : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of dw_fifogen_aw : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of dw_fifogen_aw : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of dw_fifogen_aw : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of dw_fifogen_aw : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of dw_fifogen_aw : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of dw_fifogen_aw : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of dw_fifogen_aw : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of dw_fifogen_aw : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of dw_fifogen_aw : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of dw_fifogen_aw : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of dw_fifogen_aw : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of dw_fifogen_aw : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of dw_fifogen_aw : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of dw_fifogen_aw : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of dw_fifogen_aw : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of dw_fifogen_aw : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of dw_fifogen_aw : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of dw_fifogen_aw : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of dw_fifogen_aw : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of dw_fifogen_aw : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of dw_fifogen_aw : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of dw_fifogen_aw : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of dw_fifogen_aw : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of dw_fifogen_aw : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of dw_fifogen_aw : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of dw_fifogen_aw : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of dw_fifogen_aw : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of dw_fifogen_aw : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of dw_fifogen_aw : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of dw_fifogen_aw : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of dw_fifogen_aw : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of dw_fifogen_aw : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of dw_fifogen_aw : label is 2;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of dw_fifogen_aw : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of dw_fifogen_aw : label is 2;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of dw_fifogen_aw : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of dw_fifogen_aw : label is 2;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of dw_fifogen_aw : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of dw_fifogen_aw : label is 2;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of dw_fifogen_aw : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of dw_fifogen_aw : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of dw_fifogen_aw : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of dw_fifogen_aw : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of dw_fifogen_aw : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of dw_fifogen_aw : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of dw_fifogen_aw : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of dw_fifogen_aw : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of dw_fifogen_aw : label is "4kx4";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of dw_fifogen_aw : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of dw_fifogen_aw : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of dw_fifogen_aw : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of dw_fifogen_aw : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of dw_fifogen_aw : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of dw_fifogen_aw : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of dw_fifogen_aw : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of dw_fifogen_aw : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of dw_fifogen_aw : label is 14;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of dw_fifogen_aw : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of dw_fifogen_aw : label is 30;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of dw_fifogen_aw : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of dw_fifogen_aw : label is 14;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of dw_fifogen_aw : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of dw_fifogen_aw : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of dw_fifogen_aw : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of dw_fifogen_aw : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of dw_fifogen_aw : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of dw_fifogen_aw : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of dw_fifogen_aw : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of dw_fifogen_aw : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of dw_fifogen_aw : label is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of dw_fifogen_aw : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of dw_fifogen_aw : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of dw_fifogen_aw : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of dw_fifogen_aw : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of dw_fifogen_aw : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of dw_fifogen_aw : label is 15;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of dw_fifogen_aw : label is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of dw_fifogen_aw : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of dw_fifogen_aw : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of dw_fifogen_aw : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of dw_fifogen_aw : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of dw_fifogen_aw : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of dw_fifogen_aw : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of dw_fifogen_aw : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of dw_fifogen_aw : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of dw_fifogen_aw : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of dw_fifogen_aw : label is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of dw_fifogen_aw : label is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of dw_fifogen_aw : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of dw_fifogen_aw : label is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of dw_fifogen_aw : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of dw_fifogen_aw : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of dw_fifogen_aw : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of dw_fifogen_aw : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of dw_fifogen_aw : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of dw_fifogen_aw : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of dw_fifogen_aw : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of dw_fifogen_aw : label is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of dw_fifogen_aw : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of dw_fifogen_aw : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of dw_fifogen_aw : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of dw_fifogen_aw : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of dw_fifogen_aw : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of dw_fifogen_aw : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of dw_fifogen_aw : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of dw_fifogen_aw : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of dw_fifogen_aw : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of dw_fifogen_aw : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of dw_fifogen_aw : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of dw_fifogen_aw : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of dw_fifogen_aw : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of dw_fifogen_aw : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of dw_fifogen_aw : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of dw_fifogen_aw : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of dw_fifogen_aw : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of dw_fifogen_aw : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of dw_fifogen_aw : label is 2;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of dw_fifogen_aw : label is 2;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of dw_fifogen_aw : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of dw_fifogen_aw : label is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of dw_fifogen_aw : label is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of dw_fifogen_aw : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of dw_fifogen_aw : label is 32;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of dw_fifogen_aw : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of dw_fifogen_aw : label is 32;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of dw_fifogen_aw : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of dw_fifogen_aw : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of dw_fifogen_aw : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of dw_fifogen_aw : label is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of dw_fifogen_aw : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of dw_fifogen_aw : label is 5;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of dw_fifogen_aw : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of dw_fifogen_aw : label is 5;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of dw_fifogen_aw : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of dw_fifogen_aw : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of dw_fifogen_aw : label is 1;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dw_fifogen_aw : label is "soft";
  attribute SOFT_HLUTNM of dw_fifogen_aw_i_4 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_axi_wstrb[0]_INST_0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \m_axi_wstrb[10]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_axi_wstrb[11]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_axi_wstrb[12]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_axi_wstrb[13]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_axi_wstrb[14]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_axi_wstrb[15]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_axi_wstrb[16]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_axi_wstrb[17]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_axi_wstrb[18]_INST_0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_axi_wstrb[19]_INST_0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_axi_wstrb[1]_INST_0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \m_axi_wstrb[20]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_axi_wstrb[21]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_axi_wstrb[22]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_axi_wstrb[23]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_axi_wstrb[24]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_axi_wstrb[25]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_axi_wstrb[26]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_axi_wstrb[27]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_axi_wstrb[28]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_axi_wstrb[29]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_axi_wstrb[2]_INST_0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \m_axi_wstrb[30]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_axi_wstrb[31]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_axi_wstrb[3]_INST_0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \m_axi_wstrb[4]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \m_axi_wstrb[5]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \m_axi_wstrb[6]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \m_axi_wstrb[7]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \m_axi_wstrb[8]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \m_axi_wstrb[9]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \mi_addr[0]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \mi_addr[1]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \mi_addr[2]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \mi_addr[3]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \mi_addr[4]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \mi_be[12]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mi_be[13]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \mi_be[13]_i_3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \mi_be[13]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mi_be[13]_i_9\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mi_be[15]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mi_be[15]_i_4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \mi_be[15]_i_9\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \mi_be[16]_i_9\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mi_be[17]_i_10\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mi_be[17]_i_11\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \mi_be[17]_i_12\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \mi_be[17]_i_13\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \mi_be[17]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mi_be[17]_i_8\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mi_be[1]_i_2\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \mi_be[21]_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mi_be[22]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \mi_be[22]_i_8\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \mi_be[25]_i_7\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \mi_be[29]_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mi_be[30]_i_4\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \mi_be[31]_i_11\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \mi_be[31]_i_13\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \mi_be[31]_i_3\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \mi_be[31]_i_4\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \mi_be[5]_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mi_be[6]_i_7\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mi_be[6]_i_8\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \mi_be[8]_i_10\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \mi_be[8]_i_7\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \mi_be[8]_i_8\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \mi_be[8]_i_9\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \mi_buf[0]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \mi_buf[1]_i_2\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \mi_burst[0]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \mi_burst[1]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of mi_first_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of mi_last_d1_i_1 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of mi_last_i_2 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \mi_last_index_reg_d0[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \mi_last_index_reg_d0[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \mi_last_index_reg_d0[2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \mi_last_index_reg_d0[3]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \mi_last_index_reg_d0[4]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \mi_ptr[0]_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \mi_ptr[4]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mi_ptr[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mi_ptr[6]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mi_size[0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \mi_size[1]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \mi_size[2]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \mi_wcnt[2]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \mi_wcnt[3]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \mi_wcnt[4]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \mi_wcnt[5]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[0]_i_4\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[0]_i_5\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[10]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[10]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[10]_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[10]_i_5\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[11]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[13]_i_2\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[13]_i_3\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[13]_i_4\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[14]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[14]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[16]_i_4\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[16]_i_5\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[17]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[17]_i_5\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[17]_i_6\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[18]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[18]_i_3\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[18]_i_4\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[18]_i_6\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[18]_i_7\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[20]_i_3\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[20]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[20]_i_5\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[20]_i_6\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[20]_i_7\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[21]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[22]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[22]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[25]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[26]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[26]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[28]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[28]_i_5\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[29]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[29]_i_5\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[2]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[2]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[30]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[30]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[30]_i_4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[30]_i_5\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[30]_i_7\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[30]_i_8\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[31]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[3]_i_4\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[3]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[4]_i_2\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[5]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[6]_i_2\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[9]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[9]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \mi_wrap_be_next[9]_i_5\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \mi_wrap_cnt[0]_i_6\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \mi_wrap_cnt[0]_i_8\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mi_wrap_cnt[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mi_wrap_cnt[2]_i_7\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \mi_wrap_cnt[3]_i_7\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \mi_wrap_cnt[3]_i_9\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[10]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[13]_i_2\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[13]_i_3\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[14]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[14]_i_3\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[18]_i_2\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[1]_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[1]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[20]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[21]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[21]_i_3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[22]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[23]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[25]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[26]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[26]_i_3\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[26]_i_4\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[28]_i_2\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[28]_i_3\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[29]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[29]_i_3\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[29]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[2]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[30]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[30]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[30]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[31]_i_3\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[3]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[7]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[8]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \mi_wstrb_mask_d2[9]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \si_be[10]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \si_be[12]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \si_be[13]_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \si_be[14]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \si_be[2]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \si_be[3]_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \si_be[4]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \si_be[5]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \si_buf[0]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \si_buf[1]_i_1\ : label is "soft_lutpair106";
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of w_buffer : label is 9;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of w_buffer : label is 9;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of w_buffer : label is 1;
  attribute C_AXI_ID_WIDTH of w_buffer : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of w_buffer : label is 0;
  attribute C_AXI_TYPE of w_buffer : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of w_buffer : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of w_buffer : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of w_buffer : label is "";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of w_buffer : label is "";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of w_buffer : label is "ECCHSIAO32-7";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of w_buffer : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of w_buffer : label is 1;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of w_buffer : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of w_buffer : label is "";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of w_buffer : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of w_buffer : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of w_buffer : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of w_buffer : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of w_buffer : label is 0;
  attribute C_EN_SAFETY_CKT of w_buffer : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of w_buffer : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of w_buffer : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of w_buffer : label is "";
  attribute C_FAMILY of w_buffer : label is "artix7";
  attribute C_HAS_AXI_ID of w_buffer : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of w_buffer : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of w_buffer : label is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of w_buffer : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of w_buffer : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of w_buffer : label is 1;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of w_buffer : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of w_buffer : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of w_buffer : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of w_buffer : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of w_buffer : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of w_buffer : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of w_buffer : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of w_buffer : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of w_buffer : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of w_buffer : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of w_buffer : label is "BlankString";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of w_buffer : label is "BlankString";
  attribute C_INTERFACE_TYPE of w_buffer : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of w_buffer : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of w_buffer : label is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of w_buffer : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of w_buffer : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of w_buffer : label is 512;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of w_buffer : label is 512;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of w_buffer : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of w_buffer : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of w_buffer : label is 288;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of w_buffer : label is 288;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of w_buffer : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of w_buffer : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of w_buffer : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of w_buffer : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of w_buffer : label is "GENERATE_X_ONLY";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of w_buffer : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of w_buffer : label is 1;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of w_buffer : label is 1;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of w_buffer : label is 0;
  attribute C_USE_ECC of w_buffer : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of w_buffer : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of w_buffer : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of w_buffer : label is 32;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of w_buffer : label is 32;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of w_buffer : label is 512;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of w_buffer : label is 512;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of w_buffer : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of w_buffer : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of w_buffer : label is 288;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of w_buffer : label is 288;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of w_buffer : label is "artix7";
  attribute KEEP_HIERARCHY of w_buffer : label is "soft";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of w_buffer : label is "yes";
begin
  D(7 downto 0) <= \^d\(7 downto 0);
  M_AXI_WLAST_i_reg_0 <= \^m_axi_wlast_i_reg_0\;
  M_AXI_WVALID_i_reg_0 <= \^m_axi_wvalid_i_reg_0\;
  Q(0) <= \^q\(0);
  S_AXI_WREADY_i_reg_0 <= \^s_axi_wready_i_reg_0\;
  \goreg_dm.dout_i_reg[22]\(1 downto 0) <= \^goreg_dm.dout_i_reg[22]\(1 downto 0);
  \goreg_dm.dout_i_reg[25]\(2 downto 0) <= \^goreg_dm.dout_i_reg[25]\(2 downto 0);
  m_axi_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  m_axi_awvalid <= \^m_axi_awvalid\;
  s_axi_aresetn <= \^s_axi_aresetn\;
  \si_wrap_cnt_reg[0]_0\(0) <= \^si_wrap_cnt_reg[0]_0\(0);
\FSM_sequential_mi_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mi_state_ns__0\(0),
      I1 => \FSM_sequential_mi_state[2]_i_3_n_0\,
      I2 => mi_state(0),
      O => \FSM_sequential_mi_state[0]_i_1_n_0\
    );
\FSM_sequential_mi_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3080DFFF0080DFFF"
    )
        port map (
      I0 => m_axi_awready,
      I1 => mi_state(2),
      I2 => dw_fifogen_aw_i_4_n_0,
      I3 => mi_state(1),
      I4 => mi_state(0),
      I5 => mi_awvalid,
      O => \mi_state_ns__0\(0)
    );
\FSM_sequential_mi_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BFFFFFFF000000"
    )
        port map (
      I0 => mi_state(2),
      I1 => m_axi_awready,
      I2 => dw_fifogen_aw_i_4_n_0,
      I3 => mi_state(0),
      I4 => \FSM_sequential_mi_state[2]_i_3_n_0\,
      I5 => mi_state(1),
      O => \FSM_sequential_mi_state[1]_i_1_n_0\
    );
\FSM_sequential_mi_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mi_state_ns__0\(2),
      I1 => \FSM_sequential_mi_state[2]_i_3_n_0\,
      I2 => mi_state(2),
      O => \FSM_sequential_mi_state[2]_i_1_n_0\
    );
\FSM_sequential_mi_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAEEABAE"
    )
        port map (
      I0 => load_mi_next,
      I1 => mi_state(2),
      I2 => mi_state(0),
      I3 => mi_state(1),
      I4 => m_axi_awready,
      I5 => dw_fifogen_aw_i_4_n_0,
      O => \mi_state_ns__0\(2)
    );
\FSM_sequential_mi_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFAAAABFABAAAA"
    )
        port map (
      I0 => \FSM_sequential_mi_state[2]_i_4_n_0\,
      I1 => mi_state(0),
      I2 => mi_state(1),
      I3 => dw_fifogen_aw_i_4_n_0,
      I4 => mi_state(2),
      I5 => m_axi_awready,
      O => \FSM_sequential_mi_state[2]_i_3_n_0\
    );
\FSM_sequential_mi_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEEEEE0"
    )
        port map (
      I0 => \FSM_sequential_mi_state[2]_i_5_n_0\,
      I1 => \next_mi_len[7]_i_2_n_0\,
      I2 => mi_state(0),
      I3 => mi_state(1),
      I4 => mi_awvalid,
      I5 => mi_state(2),
      O => \FSM_sequential_mi_state[2]_i_4_n_0\
    );
\FSM_sequential_mi_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF80FFFFFF80FF"
    )
        port map (
      I0 => \^m_axi_wvalid_i_reg_0\,
      I1 => m_axi_wready,
      I2 => \^m_axi_wlast_i_reg_0\,
      I3 => mi_state(1),
      I4 => m_axi_awready,
      I5 => mi_state(0),
      O => \FSM_sequential_mi_state[2]_i_5_n_0\
    );
\FSM_sequential_mi_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \FSM_sequential_mi_state[0]_i_1_n_0\,
      Q => mi_state(0),
      R => \^s_axi_aresetn\
    );
\FSM_sequential_mi_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \FSM_sequential_mi_state[1]_i_1_n_0\,
      Q => mi_state(1),
      R => \^s_axi_aresetn\
    );
\FSM_sequential_mi_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \FSM_sequential_mi_state[2]_i_1_n_0\,
      Q => mi_state(2),
      R => \^s_axi_aresetn\
    );
\FSM_sequential_si_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => s_aw_reg_n_39,
      Q => si_state(0),
      R => \^s_axi_aresetn\
    );
\FSM_sequential_si_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => s_aw_reg_n_40,
      Q => si_state(1),
      R => \^s_axi_aresetn\
    );
M_AXI_AWVALID_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7D7C003C"
    )
        port map (
      I0 => m_axi_awready,
      I1 => mi_state(0),
      I2 => mi_state(2),
      I3 => mi_state(1),
      I4 => \^m_axi_awvalid\,
      O => M_AXI_AWVALID_i_i_1_n_0
    );
M_AXI_AWVALID_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => M_AXI_AWVALID_i_i_1_n_0,
      Q => \^m_axi_awvalid\,
      R => \^s_axi_aresetn\
    );
M_AXI_WLAST_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \^m_axi_wlast_i_reg_0\,
      I1 => M_AXI_WLAST_i_i_2_n_0,
      I2 => mi_last_d1_reg_n_0,
      I3 => \aresetn_d_reg[1]_0\,
      I4 => load_mi_ptr,
      O => M_AXI_WLAST_i_i_1_n_0
    );
M_AXI_WLAST_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => m_axi_wready,
      I1 => \^m_axi_wvalid_i_reg_0\,
      I2 => load_mi_d1,
      I3 => load_mi_d2,
      O => M_AXI_WLAST_i_i_2_n_0
    );
M_AXI_WLAST_i_reg: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => M_AXI_WLAST_i_i_1_n_0,
      Q => \^m_axi_wlast_i_reg_0\,
      R => '0'
    );
M_AXI_WVALID_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFEFEFE10101010"
    )
        port map (
      I0 => mi_state(0),
      I1 => mi_state(2),
      I2 => mi_state(1),
      I3 => \^m_axi_wlast_i_reg_0\,
      I4 => m_axi_wready,
      I5 => \^m_axi_wvalid_i_reg_0\,
      O => M_AXI_WVALID_i_i_1_n_0
    );
M_AXI_WVALID_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => M_AXI_WVALID_i_i_1_n_0,
      Q => \^m_axi_wvalid_i_reg_0\,
      R => \^s_axi_aresetn\
    );
S_AXI_WREADY_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => s_aw_reg_n_36,
      Q => \^s_axi_wready_i_reg_0\,
      R => \^s_axi_aresetn\
    );
\buf_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => s_aw_reg_n_42,
      Q => buf_cnt(0),
      R => \^s_axi_aresetn\
    );
\buf_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => s_aw_reg_n_41,
      Q => buf_cnt(1),
      R => \^s_axi_aresetn\
    );
cmd_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => aw_pop,
      Q => \USE_WRITE.wr_cmd_ready\,
      R => \^s_axi_aresetn\
    );
dw_fifogen_aw: entity work.design_1_auto_us_df_1_fifo_generator_v13_2_5
     port map (
      almost_empty => NLW_dw_fifogen_aw_almost_empty_UNCONNECTED,
      almost_full => NLW_dw_fifogen_aw_almost_full_UNCONNECTED,
      axi_ar_data_count(5 downto 0) => NLW_dw_fifogen_aw_axi_ar_data_count_UNCONNECTED(5 downto 0),
      axi_ar_dbiterr => NLW_dw_fifogen_aw_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_dw_fifogen_aw_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_dw_fifogen_aw_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(4 downto 0) => B"00000",
      axi_ar_prog_full => NLW_dw_fifogen_aw_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(4 downto 0) => B"00000",
      axi_ar_rd_data_count(5 downto 0) => NLW_dw_fifogen_aw_axi_ar_rd_data_count_UNCONNECTED(5 downto 0),
      axi_ar_sbiterr => NLW_dw_fifogen_aw_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_dw_fifogen_aw_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(5 downto 0) => NLW_dw_fifogen_aw_axi_ar_wr_data_count_UNCONNECTED(5 downto 0),
      axi_aw_data_count(5 downto 0) => NLW_dw_fifogen_aw_axi_aw_data_count_UNCONNECTED(5 downto 0),
      axi_aw_dbiterr => NLW_dw_fifogen_aw_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_dw_fifogen_aw_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_dw_fifogen_aw_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(4 downto 0) => B"00000",
      axi_aw_prog_full => NLW_dw_fifogen_aw_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(4 downto 0) => B"00000",
      axi_aw_rd_data_count(5 downto 0) => NLW_dw_fifogen_aw_axi_aw_rd_data_count_UNCONNECTED(5 downto 0),
      axi_aw_sbiterr => NLW_dw_fifogen_aw_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_dw_fifogen_aw_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(5 downto 0) => NLW_dw_fifogen_aw_axi_aw_wr_data_count_UNCONNECTED(5 downto 0),
      axi_b_data_count(4 downto 0) => NLW_dw_fifogen_aw_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_dw_fifogen_aw_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_dw_fifogen_aw_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_dw_fifogen_aw_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_dw_fifogen_aw_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_dw_fifogen_aw_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_dw_fifogen_aw_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_dw_fifogen_aw_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_dw_fifogen_aw_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_dw_fifogen_aw_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_dw_fifogen_aw_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_dw_fifogen_aw_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_dw_fifogen_aw_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_dw_fifogen_aw_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_dw_fifogen_aw_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_dw_fifogen_aw_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_dw_fifogen_aw_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_dw_fifogen_aw_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_dw_fifogen_aw_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_dw_fifogen_aw_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_dw_fifogen_aw_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_dw_fifogen_aw_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_dw_fifogen_aw_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_dw_fifogen_aw_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_dw_fifogen_aw_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_dw_fifogen_aw_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_dw_fifogen_aw_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_dw_fifogen_aw_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_dw_fifogen_aw_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_dw_fifogen_aw_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_dw_fifogen_aw_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_dw_fifogen_aw_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_dw_fifogen_aw_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_dw_fifogen_aw_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_dw_fifogen_aw_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_dw_fifogen_aw_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(9 downto 0) => NLW_dw_fifogen_aw_data_count_UNCONNECTED(9 downto 0),
      dbiterr => NLW_dw_fifogen_aw_dbiterr_UNCONNECTED,
      din(17 downto 0) => B"000000000000000000",
      dout(17 downto 0) => NLW_dw_fifogen_aw_dout_UNCONNECTED(17 downto 0),
      empty => NLW_dw_fifogen_aw_empty_UNCONNECTED,
      full => NLW_dw_fifogen_aw_full_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_dw_fifogen_aw_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_dw_fifogen_aw_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_dw_fifogen_aw_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_dw_fifogen_aw_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_dw_fifogen_aw_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_dw_fifogen_aw_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_dw_fifogen_aw_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_dw_fifogen_aw_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_dw_fifogen_aw_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_dw_fifogen_aw_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(4 downto 0) => NLW_dw_fifogen_aw_m_axi_aruser_UNCONNECTED(4 downto 0),
      m_axi_arvalid => NLW_dw_fifogen_aw_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => \^m_axi_awaddr\(31 downto 0),
      m_axi_awburst(1 downto 0) => \^goreg_dm.dout_i_reg[22]\(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(0) => NLW_dw_fifogen_aw_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => \^d\(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => aw_pop,
      m_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      m_axi_awsize(2 downto 0) => \^goreg_dm.dout_i_reg[25]\(2 downto 0),
      m_axi_awuser(4 downto 0) => mi_last_index_reg(4 downto 0),
      m_axi_awvalid => mi_awvalid,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_dw_fifogen_aw_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(31 downto 0) => B"00000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_dw_fifogen_aw_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(31 downto 0) => NLW_dw_fifogen_aw_m_axi_wdata_UNCONNECTED(31 downto 0),
      m_axi_wid(0) => NLW_dw_fifogen_aw_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_dw_fifogen_aw_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(3 downto 0) => NLW_dw_fifogen_aw_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wuser(0) => NLW_dw_fifogen_aw_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_dw_fifogen_aw_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(63 downto 0) => NLW_dw_fifogen_aw_m_axis_tdata_UNCONNECTED(63 downto 0),
      m_axis_tdest(3 downto 0) => NLW_dw_fifogen_aw_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(7 downto 0) => NLW_dw_fifogen_aw_m_axis_tid_UNCONNECTED(7 downto 0),
      m_axis_tkeep(3 downto 0) => NLW_dw_fifogen_aw_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast => NLW_dw_fifogen_aw_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(3 downto 0) => NLW_dw_fifogen_aw_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(3 downto 0) => NLW_dw_fifogen_aw_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_dw_fifogen_aw_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_dw_fifogen_aw_overflow_UNCONNECTED,
      prog_empty => NLW_dw_fifogen_aw_prog_empty_UNCONNECTED,
      prog_empty_thresh(9 downto 0) => B"0000000000",
      prog_empty_thresh_assert(9 downto 0) => B"0000000000",
      prog_empty_thresh_negate(9 downto 0) => B"0000000000",
      prog_full => NLW_dw_fifogen_aw_prog_full_UNCONNECTED,
      prog_full_thresh(9 downto 0) => B"0000000000",
      prog_full_thresh_assert(9 downto 0) => B"0000000000",
      prog_full_thresh_negate(9 downto 0) => B"0000000000",
      rd_clk => '0',
      rd_data_count(9 downto 0) => NLW_dw_fifogen_aw_rd_data_count_UNCONNECTED(9 downto 0),
      rd_en => '0',
      rd_rst => '0',
      rd_rst_busy => NLW_dw_fifogen_aw_rd_rst_busy_UNCONNECTED,
      rst => '0',
      s_aclk => \out\,
      s_aclk_en => '0',
      s_aresetn => \aresetn_d_reg[1]_0\,
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_dw_fifogen_aw_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(4 downto 0) => B"00000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => s_awaddr_reg(31 downto 0),
      s_axi_awburst(1 downto 0) => s_awburst_reg(1 downto 0),
      s_axi_awcache(3 downto 0) => s_awcache_reg(3 downto 0),
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => s_awlen_reg(7 downto 0),
      s_axi_awlock(0) => s_awlock_reg,
      s_axi_awprot(2 downto 0) => s_awprot_reg(2 downto 0),
      s_axi_awqos(3 downto 0) => s_awqos_reg(3 downto 0),
      s_axi_awready => aw_ready,
      s_axi_awregion(3 downto 0) => s_awregion_reg(3 downto 0),
      s_axi_awsize(2 downto 0) => s_awsize_reg(2 downto 0),
      s_axi_awuser(4 downto 0) => si_last_index_reg(4 downto 0),
      s_axi_awvalid => s_aw_reg_n_2,
      s_axi_bid(0) => NLW_dw_fifogen_aw_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_dw_fifogen_aw_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_dw_fifogen_aw_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_dw_fifogen_aw_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_dw_fifogen_aw_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rid(0) => NLW_dw_fifogen_aw_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_dw_fifogen_aw_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_dw_fifogen_aw_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_dw_fifogen_aw_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_dw_fifogen_aw_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_dw_fifogen_aw_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_tdest(3 downto 0) => B"0000",
      s_axis_tid(7 downto 0) => B"00000000",
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => '0',
      s_axis_tready => NLW_dw_fifogen_aw_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(3 downto 0) => B"0000",
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_dw_fifogen_aw_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_dw_fifogen_aw_underflow_UNCONNECTED,
      valid => NLW_dw_fifogen_aw_valid_UNCONNECTED,
      wr_ack => NLW_dw_fifogen_aw_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(9 downto 0) => NLW_dw_fifogen_aw_wr_data_count_UNCONNECTED(9 downto 0),
      wr_en => '0',
      wr_rst => '0',
      wr_rst_busy => NLW_dw_fifogen_aw_wr_rst_busy_UNCONNECTED
    );
dw_fifogen_aw_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8E808200"
    )
        port map (
      I0 => m_axi_awready,
      I1 => mi_state(2),
      I2 => mi_state(0),
      I3 => mi_state(1),
      I4 => dw_fifogen_aw_i_4_n_0,
      O => aw_pop
    );
dw_fifogen_aw_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m_axi_wlast_i_reg_0\,
      I1 => m_axi_wready,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => dw_fifogen_aw_i_4_n_0
    );
first_load_mi_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load_mi_d1,
      I1 => first_load_mi_d1,
      O => first_load_mi_d1_i_1_n_0
    );
first_load_mi_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => first_load_mi_d1_i_1_n_0,
      Q => first_load_mi_d1,
      R => \^s_axi_aresetn\
    );
load_mi_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10911000"
    )
        port map (
      I0 => mi_state(1),
      I1 => mi_state(0),
      I2 => dw_fifogen_aw_i_4_n_0,
      I3 => mi_state(2),
      I4 => mi_awvalid,
      O => load_mi_ptr
    );
load_mi_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => load_mi_ptr,
      Q => load_mi_d1,
      R => '0'
    );
load_mi_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => load_mi_d1,
      Q => load_mi_d2,
      R => '0'
    );
\m_axi_wstrb[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(8),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[0]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(0)
    );
\m_axi_wstrb[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(98),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[10]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(10)
    );
\m_axi_wstrb[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(107),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[11]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(11)
    );
\m_axi_wstrb[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(116),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[12]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(12)
    );
\m_axi_wstrb[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(125),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[13]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(13)
    );
\m_axi_wstrb[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(134),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[14]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(14)
    );
\m_axi_wstrb[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(143),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[15]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(15)
    );
\m_axi_wstrb[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(152),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[16]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(16)
    );
\m_axi_wstrb[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(161),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[17]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(17)
    );
\m_axi_wstrb[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(170),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[18]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(18)
    );
\m_axi_wstrb[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(179),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[19]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(19)
    );
\m_axi_wstrb[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(17),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[1]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(1)
    );
\m_axi_wstrb[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(188),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[20]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(20)
    );
\m_axi_wstrb[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(197),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[21]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(21)
    );
\m_axi_wstrb[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(206),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[22]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(22)
    );
\m_axi_wstrb[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(215),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[23]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(23)
    );
\m_axi_wstrb[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(224),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[24]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(24)
    );
\m_axi_wstrb[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(233),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[25]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(25)
    );
\m_axi_wstrb[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(242),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[26]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(26)
    );
\m_axi_wstrb[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(251),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[27]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(27)
    );
\m_axi_wstrb[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(260),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[28]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(28)
    );
\m_axi_wstrb[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(269),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[29]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(29)
    );
\m_axi_wstrb[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(26),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[2]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(2)
    );
\m_axi_wstrb[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(278),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[30]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(30)
    );
\m_axi_wstrb[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(287),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[31]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(31)
    );
\m_axi_wstrb[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(35),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[3]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(3)
    );
\m_axi_wstrb[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(44),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[4]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(4)
    );
\m_axi_wstrb[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(53),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[5]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(5)
    );
\m_axi_wstrb[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(62),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[6]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(6)
    );
\m_axi_wstrb[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(71),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[7]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(7)
    );
\m_axi_wstrb[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(80),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[8]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(8)
    );
\m_axi_wstrb[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mi_wpayload(89),
      I1 => \mi_wstrb_mask_d2_reg_n_0_[9]\,
      I2 => \^m_axi_wvalid_i_reg_0\,
      O => m_axi_wstrb(9)
    );
\mi_addr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_axi_awaddr\(0),
      I1 => load_mi_ptr,
      I2 => \next_mi_addr_reg_n_0_[0]\,
      O => \mi_addr[0]_i_1_n_0\
    );
\mi_addr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_axi_awaddr\(1),
      I1 => load_mi_ptr,
      I2 => \next_mi_addr_reg_n_0_[1]\,
      O => \mi_addr[1]_i_1_n_0\
    );
\mi_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_axi_awaddr\(2),
      I1 => load_mi_ptr,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      O => \mi_addr[2]_i_1_n_0\
    );
\mi_addr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_axi_awaddr\(3),
      I1 => load_mi_ptr,
      I2 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_addr[3]_i_1_n_0\
    );
\mi_addr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => next_valid,
      I2 => mi_wrap_be_next,
      O => mi_last_index_reg_d0
    );
\mi_addr[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_axi_awaddr\(4),
      I1 => load_mi_ptr,
      I2 => \next_mi_addr_reg_n_0_[4]\,
      O => \mi_addr[4]_i_2_n_0\
    );
\mi_addr_d1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FEEE"
    )
        port map (
      I0 => load_mi_d2,
      I1 => load_mi_d1,
      I2 => \^m_axi_wvalid_i_reg_0\,
      I3 => m_axi_wready,
      I4 => load_mi_ptr,
      O => \mi_addr_d1[4]_i_1_n_0\
    );
\mi_addr_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \mi_addr_reg_n_0_[0]\,
      Q => addr(0),
      R => '0'
    );
\mi_addr_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \mi_addr_reg_n_0_[1]\,
      Q => addr(1),
      R => '0'
    );
\mi_addr_d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \mi_addr_reg_n_0_[2]\,
      Q => addr(2),
      R => '0'
    );
\mi_addr_d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \mi_addr_reg_n_0_[3]\,
      Q => addr(3),
      R => '0'
    );
\mi_addr_d1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \mi_addr_reg_n_0_[4]\,
      Q => addr(4),
      R => '0'
    );
\mi_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_last_index_reg_d0,
      D => \mi_addr[0]_i_1_n_0\,
      Q => \mi_addr_reg_n_0_[0]\,
      R => '0'
    );
\mi_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_last_index_reg_d0,
      D => \mi_addr[1]_i_1_n_0\,
      Q => \mi_addr_reg_n_0_[1]\,
      R => '0'
    );
\mi_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_last_index_reg_d0,
      D => \mi_addr[2]_i_1_n_0\,
      Q => \mi_addr_reg_n_0_[2]\,
      R => '0'
    );
\mi_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_last_index_reg_d0,
      D => \mi_addr[3]_i_1_n_0\,
      Q => \mi_addr_reg_n_0_[3]\,
      R => '0'
    );
\mi_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_last_index_reg_d0,
      D => \mi_addr[4]_i_2_n_0\,
      Q => \mi_addr_reg_n_0_[4]\,
      R => '0'
    );
\mi_be[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFFBFB00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[0]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[0]_i_3_n_0\,
      O => \mi_be[0]_i_1_n_0\
    );
\mi_be[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAE"
    )
        port map (
      I0 => \mi_be[1]_i_3_n_0\,
      I1 => \mi_be[12]_i_3_n_0\,
      I2 => \^m_axi_awaddr\(1),
      I3 => \^m_axi_awaddr\(2),
      I4 => \^m_axi_awaddr\(3),
      I5 => \^m_axi_awaddr\(4),
      O => \mi_be[0]_i_2_n_0\
    );
\mi_be[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[0]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(16),
      I4 => \mi_be[0]_i_6_n_0\,
      I5 => size(2),
      O => \mi_be[0]_i_4_n_0\
    );
\mi_be[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8FCFCB8B8FCFF"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[3]_i_7_n_0\,
      I3 => \mi_be[16]_i_9_n_0\,
      I4 => \next_mi_addr_reg_n_0_[4]\,
      I5 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_be[0]_i_5_n_0\
    );
\mi_be[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(24),
      I1 => \be__0\(28),
      I2 => size(1),
      I3 => \be__0\(30),
      I4 => size(0),
      I5 => be(31),
      O => \mi_be[0]_i_6_n_0\
    );
\mi_be[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFFBFB00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[10]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[10]_i_3_n_0\,
      O => \mi_be[10]_i_1_n_0\
    );
\mi_be[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAEAAAAAA"
    )
        port map (
      I0 => \mi_be[11]_i_4_n_0\,
      I1 => \mi_be[12]_i_3_n_0\,
      I2 => \^m_axi_awaddr\(4),
      I3 => \^m_axi_awaddr\(3),
      I4 => \^m_axi_awaddr\(1),
      I5 => \^m_axi_awaddr\(2),
      O => \mi_be[10]_i_2_n_0\
    );
\mi_be[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[10]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(26),
      I4 => \mi_be[10]_i_6_n_0\,
      I5 => size(2),
      O => \mi_be[10]_i_4_n_0\
    );
\mi_be[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFB0BFB0BFB0"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \next_mi_addr_reg_n_0_[4]\,
      I2 => \mi_wrap_cnt[0]_i_7_n_0\,
      I3 => \mi_be[8]_i_6_n_0\,
      I4 => \mi_be[8]_i_8_n_0\,
      I5 => \mi_wrap_be_next[10]_i_3_n_0\,
      O => \mi_be[10]_i_5_n_0\
    );
\mi_be[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(2),
      I1 => \be__0\(6),
      I2 => size(1),
      I3 => \be__0\(8),
      I4 => size(0),
      I5 => \be__0\(9),
      O => \mi_be[10]_i_6_n_0\
    );
\mi_be[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFFBFB00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[11]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[11]_i_3_n_0\,
      O => \mi_be[11]_i_1_n_0\
    );
\mi_be[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => \^m_axi_awaddr\(4),
      I1 => \^m_axi_awaddr\(3),
      I2 => \^m_axi_awaddr\(1),
      I3 => \^m_axi_awaddr\(2),
      I4 => \mi_be[13]_i_3_n_0\,
      I5 => \mi_be[11]_i_4_n_0\,
      O => \mi_be[11]_i_2_n_0\
    );
\mi_be[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C888C88AAAAAEAA"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      I2 => \^m_axi_awaddr\(4),
      I3 => \^m_axi_awaddr\(3),
      I4 => \^m_axi_awaddr\(2),
      I5 => \^goreg_dm.dout_i_reg[25]\(0),
      O => \mi_be[11]_i_4_n_0\
    );
\mi_be[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[11]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(27),
      I4 => \mi_be[11]_i_7_n_0\,
      I5 => size(2),
      O => \mi_be[11]_i_5_n_0\
    );
\mi_be[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFB0BFB0BFB0"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \next_mi_addr_reg_n_0_[4]\,
      I2 => \mi_wrap_cnt[0]_i_7_n_0\,
      I3 => \mi_be[8]_i_6_n_0\,
      I4 => \mi_be[31]_i_13_n_0\,
      I5 => \mi_wrap_be_next[10]_i_3_n_0\,
      O => \mi_be[11]_i_6_n_0\
    );
\mi_be[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(3),
      I1 => \be__0\(7),
      I2 => size(1),
      I3 => \be__0\(9),
      I4 => size(0),
      I5 => \be__0\(10),
      O => \mi_be[11]_i_7_n_0\
    );
\mi_be[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4F444444444"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => \mi_be_reg[12]_i_2_n_0\,
      I2 => \mi_be[15]_i_3_n_0\,
      I3 => \mi_be[13]_i_2_n_0\,
      I4 => \mi_be[12]_i_3_n_0\,
      I5 => \mi_be[13]_i_4_n_0\,
      O => \mi_be[12]_i_1_n_0\
    );
\mi_be[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(0),
      I2 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_be[12]_i_3_n_0\
    );
\mi_be[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[12]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(28),
      I4 => \mi_be[12]_i_6_n_0\,
      I5 => size(2),
      O => \mi_be[12]_i_4_n_0\
    );
\mi_be[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8BBB8B8B8B8"
    )
        port map (
      I0 => \mi_be[15]_i_9_n_0\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[15]_i_10_n_0\,
      I3 => \next_mi_addr_reg_n_0_[1]\,
      I4 => \mi_be[13]_i_9_n_0\,
      I5 => \mi_be[8]_i_8_n_0\,
      O => \mi_be[12]_i_5_n_0\
    );
\mi_be[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(4),
      I1 => \be__0\(8),
      I2 => size(1),
      I3 => \be__0\(10),
      I4 => size(0),
      I5 => \be__0\(11),
      O => \mi_be[12]_i_6_n_0\
    );
\mi_be[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA00FFFFBA00BA00"
    )
        port map (
      I0 => \mi_be[15]_i_3_n_0\,
      I1 => \mi_be[13]_i_2_n_0\,
      I2 => \mi_be[13]_i_3_n_0\,
      I3 => \mi_be[13]_i_4_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[13]_i_5_n_0\,
      O => \mi_be[13]_i_1_n_0\
    );
\mi_be[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \^m_axi_awaddr\(2),
      I1 => \^m_axi_awaddr\(1),
      I2 => \^m_axi_awaddr\(4),
      I3 => \^m_axi_awaddr\(3),
      O => \mi_be[13]_i_2_n_0\
    );
\mi_be[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      I2 => \^m_axi_awaddr\(0),
      O => \mi_be[13]_i_3_n_0\
    );
\mi_be[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA2AA"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => \^m_axi_awaddr\(4),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^goreg_dm.dout_i_reg[25]\(2),
      I4 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_be[13]_i_4_n_0\
    );
\mi_be[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[13]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(29),
      I4 => \mi_be[13]_i_8_n_0\,
      I5 => size(2),
      O => \mi_be[13]_i_6_n_0\
    );
\mi_be[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8BBB8B8B8B8"
    )
        port map (
      I0 => \mi_be[15]_i_9_n_0\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[15]_i_10_n_0\,
      I3 => \next_mi_addr_reg_n_0_[1]\,
      I4 => \mi_be[13]_i_9_n_0\,
      I5 => \mi_be[31]_i_13_n_0\,
      O => \mi_be[13]_i_7_n_0\
    );
\mi_be[13]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(5),
      I1 => \be__0\(9),
      I2 => size(1),
      I3 => \be__0\(11),
      I4 => size(0),
      I5 => \be__0\(12),
      O => \mi_be[13]_i_8_n_0\
    );
\mi_be[13]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[3]\,
      I1 => \next_mi_addr_reg_n_0_[4]\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      O => \mi_be[13]_i_9_n_0\
    );
\mi_be[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACA0ACACACACACA"
    )
        port map (
      I0 => \mi_be_reg[14]_i_2_n_0\,
      I1 => \mi_be[14]_i_3_n_0\,
      I2 => load_mi_ptr,
      I3 => \^m_axi_awaddr\(4),
      I4 => \^goreg_dm.dout_i_reg[25]\(0),
      I5 => \mi_be[31]_i_4_n_0\,
      O => \mi_be[14]_i_1_n_0\
    );
\mi_be[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAAAAAAAAAAA"
    )
        port map (
      I0 => \mi_be[15]_i_3_n_0\,
      I1 => \^m_axi_awaddr\(1),
      I2 => \^m_axi_awaddr\(2),
      I3 => \^m_axi_awaddr\(4),
      I4 => \^m_axi_awaddr\(3),
      I5 => \mi_be[12]_i_3_n_0\,
      O => \mi_be[14]_i_3_n_0\
    );
\mi_be[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[14]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(30),
      I4 => \mi_be[14]_i_6_n_0\,
      I5 => size(2),
      O => \mi_be[14]_i_4_n_0\
    );
\mi_be[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8BBB8B8B8B8"
    )
        port map (
      I0 => \mi_be[15]_i_9_n_0\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[15]_i_10_n_0\,
      I3 => \mi_wrap_be_next[30]_i_8_n_0\,
      I4 => \mi_wrap_be_next[9]_i_5_n_0\,
      I5 => \mi_be[8]_i_8_n_0\,
      O => \mi_be[14]_i_5_n_0\
    );
\mi_be[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(6),
      I1 => \be__0\(10),
      I2 => size(1),
      I3 => \be__0\(12),
      I4 => size(0),
      I5 => \be__0\(13),
      O => \mi_be[14]_i_6_n_0\
    );
\mi_be[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F2FFFF00F20000"
    )
        port map (
      I0 => \mi_wrap_be_next[13]_i_2_n_0\,
      I1 => \mi_be[15]_i_2_n_0\,
      I2 => \mi_be[15]_i_3_n_0\,
      I3 => \mi_be[15]_i_4_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[15]_i_5_n_0\,
      O => \mi_be[15]_i_1_n_0\
    );
\mi_be[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE00AEAAAE00AAAA"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[2]\,
      I1 => \next_mi_addr_reg_n_0_[3]\,
      I2 => \next_mi_addr_reg_n_0_[4]\,
      I3 => \next_mi_size_reg_n_0_[1]\,
      I4 => \next_mi_size_reg_n_0_[0]\,
      I5 => \next_mi_addr_reg_n_0_[2]\,
      O => \mi_be[15]_i_10_n_0\
    );
\mi_be[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF57FF"
    )
        port map (
      I0 => \^m_axi_awaddr\(1),
      I1 => \^m_axi_awaddr\(0),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^m_axi_awaddr\(2),
      I4 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_be[15]_i_2_n_0\
    );
\mi_be[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAEAAAEAAAAAA"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      I2 => \^m_axi_awaddr\(4),
      I3 => \^m_axi_awaddr\(3),
      I4 => \^goreg_dm.dout_i_reg[25]\(0),
      I5 => \^m_axi_awaddr\(2),
      O => \mi_be[15]_i_3_n_0\
    );
\mi_be[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(1),
      I1 => \^goreg_dm.dout_i_reg[25]\(2),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^m_axi_awaddr\(4),
      O => \mi_be[15]_i_4_n_0\
    );
\mi_be[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1111FFFC1111"
    )
        port map (
      I0 => \mi_be[15]_i_8_n_0\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => be(31),
      I3 => size(0),
      I4 => size(2),
      I5 => size(1),
      O => \mi_be[15]_i_6_n_0\
    );
\mi_be[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB888B8888"
    )
        port map (
      I0 => \mi_be[15]_i_9_n_0\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_wrap_be_next[30]_i_8_n_0\,
      I3 => \mi_wrap_be_next[9]_i_5_n_0\,
      I4 => \mi_be[31]_i_13_n_0\,
      I5 => \mi_be[15]_i_10_n_0\,
      O => \mi_be[15]_i_7_n_0\
    );
\mi_be[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \be__0\(7),
      I1 => \be__0\(11),
      I2 => size(1),
      I3 => \be__0\(13),
      I4 => size(0),
      I5 => \be__0\(14),
      O => \mi_be[15]_i_8_n_0\
    );
\mi_be[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \next_mi_addr_reg_n_0_[4]\,
      O => \mi_be[15]_i_9_n_0\
    );
\mi_be[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8FFFFBBB80000"
    )
        port map (
      I0 => \mi_be[31]_i_3_n_0\,
      I1 => \mi_be[31]_i_4_n_0\,
      I2 => \mi_be[16]_i_2_n_0\,
      I3 => \mi_be[16]_i_3_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[16]_i_4_n_0\,
      O => \mi_be[16]_i_1_n_0\
    );
\mi_be[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA22AA22EF22AA22"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      I2 => \^m_axi_awaddr\(2),
      I3 => \^goreg_dm.dout_i_reg[25]\(1),
      I4 => \^m_axi_awaddr\(4),
      I5 => \^m_axi_awaddr\(3),
      O => \mi_be[16]_i_2_n_0\
    );
\mi_be[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAEA"
    )
        port map (
      I0 => \mi_be[16]_i_5_n_0\,
      I1 => \mi_wrap_be_next[0]_i_4_n_0\,
      I2 => \mi_wrap_be_next[20]_i_6_n_0\,
      I3 => \^m_axi_awaddr\(2),
      I4 => \^m_axi_awaddr\(0),
      I5 => \^m_axi_awaddr\(1),
      O => \mi_be[16]_i_3_n_0\
    );
\mi_be[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \^m_axi_awaddr\(3),
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      I2 => \^m_axi_awaddr\(4),
      I3 => \^goreg_dm.dout_i_reg[25]\(1),
      I4 => \^m_axi_awaddr\(2),
      I5 => \^m_axi_awaddr\(1),
      O => \mi_be[16]_i_5_n_0\
    );
\mi_be[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[16]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(0),
      I4 => \mi_be[16]_i_8_n_0\,
      I5 => size(2),
      O => \mi_be[16]_i_6_n_0\
    );
\mi_be[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCB8B8FCFFB8B8"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[17]_i_9_n_0\,
      I3 => \mi_be[16]_i_9_n_0\,
      I4 => \next_mi_addr_reg_n_0_[4]\,
      I5 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_be[16]_i_7_n_0\
    );
\mi_be[16]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(8),
      I1 => \be__0\(12),
      I2 => size(1),
      I3 => \be__0\(14),
      I4 => size(0),
      I5 => \be__0\(15),
      O => \mi_be[16]_i_8_n_0\
    );
\mi_be[16]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEFE"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[1]\,
      I1 => \next_mi_addr_reg_n_0_[2]\,
      I2 => \next_mi_addr_reg_n_0_[0]\,
      I3 => \next_mi_size_reg_n_0_[0]\,
      I4 => \next_mi_size_reg_n_0_[1]\,
      O => \mi_be[16]_i_9_n_0\
    );
\mi_be[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F8F0FFF0F8"
    )
        port map (
      I0 => \mi_be[22]_i_4_n_0\,
      I1 => \mi_wrap_be_next_reg_n_0_[17]\,
      I2 => \mi_be[17]_i_2_n_0\,
      I3 => load_mi_ptr,
      I4 => mi_last,
      I5 => \mi_be[17]_i_3_n_0\,
      O => \mi_be[17]_i_1_n_0\
    );
\mi_be[17]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEEF"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[1]\,
      I1 => \next_mi_addr_reg_n_0_[2]\,
      I2 => \next_mi_size_reg_n_0_[0]\,
      I3 => \next_mi_addr_reg_n_0_[0]\,
      I4 => \next_mi_size_reg_n_0_[1]\,
      O => \mi_be[17]_i_10_n_0\
    );
\mi_be[17]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40400040"
    )
        port map (
      I0 => \^m_axi_awaddr\(3),
      I1 => \^m_axi_awaddr\(4),
      I2 => \^goreg_dm.dout_i_reg[25]\(1),
      I3 => \^m_axi_awaddr\(2),
      I4 => \^goreg_dm.dout_i_reg[25]\(0),
      O => \mi_be[17]_i_11_n_0\
    );
\mi_be[17]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^m_axi_awaddr\(3),
      I1 => \^m_axi_awaddr\(4),
      I2 => \^m_axi_awaddr\(0),
      I3 => \^m_axi_awaddr\(1),
      O => \mi_be[17]_i_12_n_0\
    );
\mi_be[17]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(2),
      O => \mi_be[17]_i_13_n_0\
    );
\mi_be[17]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => size(2),
      I1 => size(1),
      I2 => \be__0\(9),
      I3 => size(0),
      I4 => \be__0\(13),
      O => \mi_be[17]_i_14_n_0\
    );
\mi_be[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444FFF444444444"
    )
        port map (
      I0 => \mi_be[17]_i_4_n_0\,
      I1 => \mi_be[17]_i_5_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(1),
      I4 => \mi_be[17]_i_7_n_0\,
      I5 => \mi_be[17]_i_8_n_0\,
      O => \mi_be[17]_i_2_n_0\
    );
\mi_be[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303474703004747"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[17]_i_9_n_0\,
      I3 => \mi_be[17]_i_10_n_0\,
      I4 => \next_mi_addr_reg_n_0_[4]\,
      I5 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_be[17]_i_3_n_0\
    );
\mi_be[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011110111"
    )
        port map (
      I0 => \mi_be[17]_i_11_n_0\,
      I1 => \^goreg_dm.dout_i_reg[25]\(2),
      I2 => \mi_be[17]_i_12_n_0\,
      I3 => \mi_be[17]_i_13_n_0\,
      I4 => \^goreg_dm.dout_i_reg[25]\(1),
      I5 => \mi_be[16]_i_5_n_0\,
      O => \mi_be[17]_i_4_n_0\
    );
\mi_be[17]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      I2 => \^m_axi_awaddr\(4),
      I3 => \^goreg_dm.dout_i_reg[25]\(2),
      I4 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_be[17]_i_5_n_0\
    );
\mi_be[17]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => size(1),
      I1 => size(2),
      I2 => size(0),
      O => \mi_be[17]_i_6_n_0\
    );
\mi_be[17]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF47"
    )
        port map (
      I0 => \be__0\(15),
      I1 => size(0),
      I2 => \be__0\(16),
      I3 => size(1),
      I4 => \mi_be[17]_i_14_n_0\,
      O => \mi_be[17]_i_7_n_0\
    );
\mi_be[17]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \mi_be[22]_i_4_n_0\,
      I1 => mi_last,
      I2 => load_mi_ptr,
      O => \mi_be[17]_i_8_n_0\
    );
\mi_be[17]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA22AA22EF22AA22"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[2]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      I3 => \next_mi_size_reg_n_0_[1]\,
      I4 => \next_mi_addr_reg_n_0_[4]\,
      I5 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_be[17]_i_9_n_0\
    );
\mi_be[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFFEFE00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[18]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[18]_i_3_n_0\,
      O => \mi_be[18]_i_1_n_0\
    );
\mi_be[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAEAAAAAA"
    )
        port map (
      I0 => \mi_be[16]_i_2_n_0\,
      I1 => \mi_be[12]_i_3_n_0\,
      I2 => \^m_axi_awaddr\(3),
      I3 => \^m_axi_awaddr\(4),
      I4 => \^m_axi_awaddr\(1),
      I5 => \^m_axi_awaddr\(2),
      O => \mi_be[18]_i_2_n_0\
    );
\mi_be[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[18]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(2),
      I4 => \mi_be[18]_i_6_n_0\,
      I5 => size(2),
      O => \mi_be[18]_i_4_n_0\
    );
\mi_be[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFE0EFE0EFE0"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \mi_wrap_cnt[0]_i_7_n_0\,
      I3 => \mi_be[17]_i_9_n_0\,
      I4 => \mi_be[8]_i_8_n_0\,
      I5 => \mi_wrap_be_next[18]_i_7_n_0\,
      O => \mi_be[18]_i_5_n_0\
    );
\mi_be[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(10),
      I1 => \be__0\(14),
      I2 => size(1),
      I3 => \be__0\(16),
      I4 => size(0),
      I5 => \be__0\(17),
      O => \mi_be[18]_i_6_n_0\
    );
\mi_be[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFFEFE00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[19]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[19]_i_3_n_0\,
      O => \mi_be[19]_i_1_n_0\
    );
\mi_be[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => \^m_axi_awaddr\(3),
      I1 => \^m_axi_awaddr\(4),
      I2 => \^m_axi_awaddr\(1),
      I3 => \^m_axi_awaddr\(2),
      I4 => \mi_be[13]_i_3_n_0\,
      I5 => \mi_be[16]_i_2_n_0\,
      O => \mi_be[19]_i_2_n_0\
    );
\mi_be[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[19]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(3),
      I4 => \mi_be[19]_i_6_n_0\,
      I5 => size(2),
      O => \mi_be[19]_i_4_n_0\
    );
\mi_be[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFE0EFE0EFE0"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \mi_wrap_cnt[0]_i_7_n_0\,
      I3 => \mi_be[17]_i_9_n_0\,
      I4 => \mi_be[31]_i_13_n_0\,
      I5 => \mi_wrap_be_next[18]_i_7_n_0\,
      O => \mi_be[19]_i_5_n_0\
    );
\mi_be[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(11),
      I1 => \be__0\(15),
      I2 => size(1),
      I3 => \be__0\(17),
      I4 => size(0),
      I5 => \be__0\(18),
      O => \mi_be[19]_i_6_n_0\
    );
\mi_be[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8FFFFBBB80000"
    )
        port map (
      I0 => \mi_be[1]_i_2_n_0\,
      I1 => \mi_be[31]_i_4_n_0\,
      I2 => \mi_be[1]_i_3_n_0\,
      I3 => \mi_be[1]_i_4_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[1]_i_5_n_0\,
      O => \mi_be[1]_i_1_n_0\
    );
\mi_be[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      O => \mi_be[1]_i_2_n_0\
    );
\mi_be[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA22AA22AA22EF22"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      I2 => \^m_axi_awaddr\(2),
      I3 => \^goreg_dm.dout_i_reg[25]\(1),
      I4 => \^m_axi_awaddr\(4),
      I5 => \^m_axi_awaddr\(3),
      O => \mi_be[1]_i_3_n_0\
    );
\mi_be[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011100000"
    )
        port map (
      I0 => \^m_axi_awaddr\(1),
      I1 => \^m_axi_awaddr\(2),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^m_axi_awaddr\(0),
      I4 => \mi_wrap_be_next[4]_i_2_n_0\,
      I5 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_be[1]_i_4_n_0\
    );
\mi_be[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[1]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(17),
      I4 => \mi_be[1]_i_8_n_0\,
      I5 => size(2),
      O => \mi_be[1]_i_6_n_0\
    );
\mi_be[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8FCFCB8B8FCFF"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[3]_i_7_n_0\,
      I3 => \mi_be[17]_i_10_n_0\,
      I4 => \next_mi_addr_reg_n_0_[4]\,
      I5 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_be[1]_i_7_n_0\
    );
\mi_be[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(25),
      I1 => \be__0\(29),
      I2 => size(1),
      I3 => be(31),
      I4 => size(0),
      I5 => \be__0\(0),
      O => \mi_be[1]_i_8_n_0\
    );
\mi_be[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFFEFE00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[20]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[20]_i_3_n_0\,
      O => \mi_be[20]_i_1_n_0\
    );
\mi_be[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555D555555555"
    )
        port map (
      I0 => \mi_be[21]_i_2_n_0\,
      I1 => \mi_be[12]_i_3_n_0\,
      I2 => \^m_axi_awaddr\(2),
      I3 => \^m_axi_awaddr\(1),
      I4 => \^m_axi_awaddr\(3),
      I5 => \^m_axi_awaddr\(4),
      O => \mi_be[20]_i_2_n_0\
    );
\mi_be[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[20]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(4),
      I4 => \mi_be[20]_i_6_n_0\,
      I5 => size(2),
      O => \mi_be[20]_i_4_n_0\
    );
\mi_be[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCF888BFFFFBBBB"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[21]_i_8_n_0\,
      I3 => \next_mi_addr_reg_n_0_[0]\,
      I4 => \next_mi_size_reg_n_0_[0]\,
      I5 => \mi_be[23]_i_8_n_0\,
      O => \mi_be[20]_i_5_n_0\
    );
\mi_be[20]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(12),
      I1 => \be__0\(16),
      I2 => size(1),
      I3 => \be__0\(18),
      I4 => size(0),
      I5 => \be__0\(19),
      O => \mi_be[20]_i_6_n_0\
    );
\mi_be[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBFFFF8BBB0000"
    )
        port map (
      I0 => \mi_be[31]_i_3_n_0\,
      I1 => \mi_be[31]_i_4_n_0\,
      I2 => \mi_be[21]_i_2_n_0\,
      I3 => \mi_be[21]_i_3_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[21]_i_4_n_0\,
      O => \mi_be[21]_i_1_n_0\
    );
\mi_be[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55F555F501F555F5"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => \^m_axi_awaddr\(2),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^goreg_dm.dout_i_reg[25]\(1),
      I4 => \^m_axi_awaddr\(4),
      I5 => \^m_axi_awaddr\(3),
      O => \mi_be[21]_i_2_n_0\
    );
\mi_be[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF5F7FFFF"
    )
        port map (
      I0 => \mi_wrap_be_next[20]_i_6_n_0\,
      I1 => \^m_axi_awaddr\(0),
      I2 => \^m_axi_awaddr\(1),
      I3 => \^goreg_dm.dout_i_reg[25]\(0),
      I4 => \^m_axi_awaddr\(2),
      I5 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_be[21]_i_3_n_0\
    );
\mi_be[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[21]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(5),
      I4 => \mi_be[21]_i_7_n_0\,
      I5 => size(2),
      O => \mi_be[21]_i_5_n_0\
    );
\mi_be[21]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFF8BBBCFFF8B8B"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[23]_i_8_n_0\,
      I3 => \mi_be[21]_i_8_n_0\,
      I4 => \next_mi_size_reg_n_0_[0]\,
      I5 => \next_mi_addr_reg_n_0_[0]\,
      O => \mi_be[21]_i_6_n_0\
    );
\mi_be[21]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(13),
      I1 => \be__0\(17),
      I2 => size(1),
      I3 => \be__0\(19),
      I4 => size(0),
      I5 => \be__0\(20),
      O => \mi_be[21]_i_7_n_0\
    );
\mi_be[21]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_addr_reg_n_0_[3]\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      I3 => \next_mi_addr_reg_n_0_[1]\,
      I4 => \next_mi_size_reg_n_0_[1]\,
      O => \mi_be[21]_i_8_n_0\
    );
\mi_be[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCDDDDFCCC"
    )
        port map (
      I0 => \mi_be[22]_i_2_n_0\,
      I1 => \mi_be[22]_i_3_n_0\,
      I2 => \mi_wrap_be_next_reg_n_0_[22]\,
      I3 => \mi_be[22]_i_4_n_0\,
      I4 => mi_last,
      I5 => load_mi_ptr,
      O => \mi_be[22]_i_1_n_0\
    );
\mi_be[22]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => size(2),
      I1 => size(1),
      I2 => \be__0\(20),
      I3 => size(0),
      I4 => \be__0\(21),
      O => \mi_be[22]_i_10_n_0\
    );
\mi_be[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F110F"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \next_mi_addr_reg_n_0_[4]\,
      I2 => \mi_be[22]_i_5_n_0\,
      I3 => \next_mi_size_reg_n_0_[2]\,
      I4 => \next_mi_size_reg_n_0_[1]\,
      O => \mi_be[22]_i_2_n_0\
    );
\mi_be[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE0E0E040"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => \mi_be[22]_i_6_n_0\,
      I2 => load_mi_ptr,
      I3 => \mi_be[31]_i_3_n_0\,
      I4 => \^goreg_dm.dout_i_reg[25]\(1),
      I5 => \mi_be[22]_i_7_n_0\,
      O => \mi_be[22]_i_3_n_0\
    );
\mi_be[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => mi_wrap_cnt(3),
      I1 => mi_wrap_cnt(0),
      I2 => mi_wrap_cnt(1),
      I3 => mi_wrap_cnt(2),
      I4 => \mi_burst_reg_n_0_[1]\,
      I5 => \mi_burst_reg_n_0_[0]\,
      O => \mi_be[22]_i_4_n_0\
    );
\mi_be[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF00AA0088008800"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[1]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \next_mi_addr_reg_n_0_[0]\,
      I3 => \mi_be[22]_i_8_n_0\,
      I4 => \next_mi_addr_reg_n_0_[1]\,
      I5 => \next_mi_addr_reg_n_0_[2]\,
      O => \mi_be[22]_i_5_n_0\
    );
\mi_be[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF0A0A000000000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(0),
      I2 => \^goreg_dm.dout_i_reg[25]\(1),
      I3 => \^m_axi_awaddr\(1),
      I4 => \^m_axi_awaddr\(2),
      I5 => \mi_wrap_be_next[20]_i_6_n_0\,
      O => \mi_be[22]_i_6_n_0\
    );
\mi_be[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100010000"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => mi_last,
      I2 => \mi_be[22]_i_4_n_0\,
      I3 => \mi_be[22]_i_9_n_0\,
      I4 => \be__0\(6),
      I5 => \mi_be[17]_i_6_n_0\,
      O => \mi_be[22]_i_7_n_0\
    );
\mi_be[22]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_be[22]_i_8_n_0\
    );
\mi_be[22]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000047FF"
    )
        port map (
      I0 => \be__0\(14),
      I1 => size(0),
      I2 => \be__0\(18),
      I3 => size(1),
      I4 => \mi_be[22]_i_10_n_0\,
      O => \mi_be[22]_i_9_n_0\
    );
\mi_be[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFFEFE00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[23]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[23]_i_3_n_0\,
      O => \mi_be[23]_i_1_n_0\
    );
\mi_be[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBA8BB00FFFFBB00"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(1),
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      I2 => \^m_axi_awaddr\(2),
      I3 => \^goreg_dm.dout_i_reg[25]\(2),
      I4 => \mi_wrap_be_next[20]_i_6_n_0\,
      I5 => \mi_be[15]_i_2_n_0\,
      O => \mi_be[23]_i_2_n_0\
    );
\mi_be[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF3AAF3AAF3AA00"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[23]\,
      I1 => \mi_be[23]_i_6_n_0\,
      I2 => \mi_be[23]_i_7_n_0\,
      I3 => \mi_be[22]_i_4_n_0\,
      I4 => \mi_be[17]_i_6_n_0\,
      I5 => \be__0\(7),
      O => \mi_be[23]_i_4_n_0\
    );
\mi_be[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0E0E0EFEFEFEF"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \mi_wrap_cnt[0]_i_7_n_0\,
      I3 => \mi_be[31]_i_13_n_0\,
      I4 => \mi_wrap_be_next[22]_i_2_n_0\,
      I5 => \mi_be[23]_i_8_n_0\,
      O => \mi_be[23]_i_5_n_0\
    );
\mi_be[23]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => size(1),
      I1 => \be__0\(22),
      I2 => size(0),
      I3 => \be__0\(21),
      O => \mi_be[23]_i_6_n_0\
    );
\mi_be[23]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => size(2),
      I1 => size(1),
      I2 => \be__0\(15),
      I3 => size(0),
      I4 => \be__0\(19),
      O => \mi_be[23]_i_7_n_0\
    );
\mi_be[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55F555F501F555F5"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[2]\,
      I1 => \next_mi_addr_reg_n_0_[2]\,
      I2 => \next_mi_size_reg_n_0_[0]\,
      I3 => \next_mi_size_reg_n_0_[1]\,
      I4 => \next_mi_addr_reg_n_0_[4]\,
      I5 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_be[23]_i_8_n_0\
    );
\mi_be[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFFEFE00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[24]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[24]_i_3_n_0\,
      O => \mi_be[24]_i_1_n_0\
    );
\mi_be[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080000FFFFFFFF"
    )
        port map (
      I0 => \^m_axi_awaddr\(3),
      I1 => \^m_axi_awaddr\(4),
      I2 => \^m_axi_awaddr\(1),
      I3 => \^m_axi_awaddr\(2),
      I4 => \mi_be[12]_i_3_n_0\,
      I5 => \mi_be[27]_i_4_n_0\,
      O => \mi_be[24]_i_2_n_0\
    );
\mi_be[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[24]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(8),
      I4 => \mi_be[24]_i_6_n_0\,
      I5 => size(2),
      O => \mi_be[24]_i_4_n_0\
    );
\mi_be[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B8B8B8B8"
    )
        port map (
      I0 => \mi_be[31]_i_11_n_0\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[27]_i_8_n_0\,
      I3 => \mi_be[25]_i_7_n_0\,
      I4 => \mi_wrap_be_next[29]_i_5_n_0\,
      I5 => \mi_be[8]_i_8_n_0\,
      O => \mi_be[24]_i_5_n_0\
    );
\mi_be[24]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(16),
      I1 => \be__0\(20),
      I2 => size(1),
      I3 => \be__0\(22),
      I4 => size(0),
      I5 => \be__0\(23),
      O => \mi_be[24]_i_6_n_0\
    );
\mi_be[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFFEFE00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[25]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[25]_i_3_n_0\,
      O => \mi_be[25]_i_1_n_0\
    );
\mi_be[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080000FFFFFFFF"
    )
        port map (
      I0 => \^m_axi_awaddr\(3),
      I1 => \^m_axi_awaddr\(4),
      I2 => \^m_axi_awaddr\(1),
      I3 => \^m_axi_awaddr\(2),
      I4 => \mi_be[13]_i_3_n_0\,
      I5 => \mi_be[27]_i_4_n_0\,
      O => \mi_be[25]_i_2_n_0\
    );
\mi_be[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[25]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(9),
      I4 => \mi_be[25]_i_6_n_0\,
      I5 => size(2),
      O => \mi_be[25]_i_4_n_0\
    );
\mi_be[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B8B8B8B8"
    )
        port map (
      I0 => \mi_be[31]_i_11_n_0\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[27]_i_8_n_0\,
      I3 => \mi_be[25]_i_7_n_0\,
      I4 => \mi_wrap_be_next[29]_i_5_n_0\,
      I5 => \mi_be[31]_i_13_n_0\,
      O => \mi_be[25]_i_5_n_0\
    );
\mi_be[25]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(17),
      I1 => \be__0\(21),
      I2 => size(1),
      I3 => \be__0\(23),
      I4 => size(0),
      I5 => \be__0\(24),
      O => \mi_be[25]_i_6_n_0\
    );
\mi_be[25]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[2]\,
      I1 => \next_mi_addr_reg_n_0_[1]\,
      O => \mi_be[25]_i_7_n_0\
    );
\mi_be[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFFEFE00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[26]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[26]_i_3_n_0\,
      O => \mi_be[26]_i_1_n_0\
    );
\mi_be[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555D5555555"
    )
        port map (
      I0 => \mi_be[27]_i_4_n_0\,
      I1 => \mi_be[12]_i_3_n_0\,
      I2 => \^m_axi_awaddr\(3),
      I3 => \^m_axi_awaddr\(4),
      I4 => \^m_axi_awaddr\(1),
      I5 => \^m_axi_awaddr\(2),
      O => \mi_be[26]_i_2_n_0\
    );
\mi_be[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[26]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(10),
      I4 => \mi_be[26]_i_6_n_0\,
      I5 => size(2),
      O => \mi_be[26]_i_4_n_0\
    );
\mi_be[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFE0EFE0EFE0"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \mi_wrap_cnt[0]_i_7_n_0\,
      I3 => \mi_be[27]_i_8_n_0\,
      I4 => \mi_be[8]_i_8_n_0\,
      I5 => \mi_wrap_be_next[26]_i_3_n_0\,
      O => \mi_be[26]_i_5_n_0\
    );
\mi_be[26]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(18),
      I1 => \be__0\(22),
      I2 => size(1),
      I3 => \be__0\(24),
      I4 => size(0),
      I5 => \be__0\(25),
      O => \mi_be[26]_i_6_n_0\
    );
\mi_be[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFFEFE00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[27]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[27]_i_3_n_0\,
      O => \mi_be[27]_i_1_n_0\
    );
\mi_be[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00800000FFFFFFFF"
    )
        port map (
      I0 => \^m_axi_awaddr\(3),
      I1 => \^m_axi_awaddr\(4),
      I2 => \^m_axi_awaddr\(1),
      I3 => \^m_axi_awaddr\(2),
      I4 => \mi_be[13]_i_3_n_0\,
      I5 => \mi_be[27]_i_4_n_0\,
      O => \mi_be[27]_i_2_n_0\
    );
\mi_be[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10DD55DD55DD55DD"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      I2 => \^m_axi_awaddr\(2),
      I3 => \^goreg_dm.dout_i_reg[25]\(1),
      I4 => \^m_axi_awaddr\(4),
      I5 => \^m_axi_awaddr\(3),
      O => \mi_be[27]_i_4_n_0\
    );
\mi_be[27]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[27]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(11),
      I4 => \mi_be[27]_i_7_n_0\,
      I5 => size(2),
      O => \mi_be[27]_i_5_n_0\
    );
\mi_be[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFE0EFE0EFE0"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \mi_wrap_cnt[0]_i_7_n_0\,
      I3 => \mi_be[27]_i_8_n_0\,
      I4 => \mi_be[31]_i_13_n_0\,
      I5 => \mi_wrap_be_next[26]_i_3_n_0\,
      O => \mi_be[27]_i_6_n_0\
    );
\mi_be[27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFA0A0CFC0CFC0"
    )
        port map (
      I0 => \be__0\(19),
      I1 => \be__0\(23),
      I2 => size(1),
      I3 => \be__0\(26),
      I4 => \be__0\(25),
      I5 => size(0),
      O => \mi_be[27]_i_7_n_0\
    );
\mi_be[27]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF22AA22AA22AA22"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[2]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      I3 => \next_mi_size_reg_n_0_[1]\,
      I4 => \next_mi_addr_reg_n_0_[4]\,
      I5 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_be[27]_i_8_n_0\
    );
\mi_be[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => \mi_be[31]_i_3_n_0\,
      I1 => \mi_be[31]_i_4_n_0\,
      I2 => \mi_be[28]_i_2_n_0\,
      I3 => \mi_be[29]_i_3_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[28]_i_3_n_0\,
      O => \mi_be[28]_i_1_n_0\
    );
\mi_be[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000005000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(1),
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      I2 => \mi_wrap_be_next[30]_i_5_n_0\,
      I3 => \^m_axi_awaddr\(2),
      I4 => \^m_axi_awaddr\(1),
      I5 => \^m_axi_awaddr\(0),
      O => \mi_be[28]_i_2_n_0\
    );
\mi_be[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[28]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[28]_i_6_n_0\,
      I3 => size(2),
      I4 => \mi_be[17]_i_6_n_0\,
      I5 => \be__0\(12),
      O => \mi_be[28]_i_4_n_0\
    );
\mi_be[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFCFFB8B8B8BB"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[31]_i_12_n_0\,
      I3 => \mi_be[29]_i_8_n_0\,
      I4 => \next_mi_addr_reg_n_0_[0]\,
      I5 => \next_mi_size_reg_n_0_[0]\,
      O => \mi_be[28]_i_5_n_0\
    );
\mi_be[28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(20),
      I1 => \be__0\(24),
      I2 => size(1),
      I3 => \be__0\(26),
      I4 => size(0),
      I5 => \be__0\(27),
      O => \mi_be[28]_i_6_n_0\
    );
\mi_be[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => \mi_be[31]_i_3_n_0\,
      I1 => \mi_be[31]_i_4_n_0\,
      I2 => \mi_be[29]_i_2_n_0\,
      I3 => \mi_be[29]_i_3_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[29]_i_4_n_0\,
      O => \mi_be[29]_i_1_n_0\
    );
\mi_be[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000500000004000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(1),
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      I2 => \mi_wrap_be_next[30]_i_5_n_0\,
      I3 => \^m_axi_awaddr\(2),
      I4 => \^m_axi_awaddr\(1),
      I5 => \^m_axi_awaddr\(0),
      O => \mi_be[29]_i_2_n_0\
    );
\mi_be[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01F555F555F555F5"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => \^m_axi_awaddr\(2),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^goreg_dm.dout_i_reg[25]\(1),
      I4 => \^m_axi_awaddr\(4),
      I5 => \^m_axi_awaddr\(3),
      O => \mi_be[29]_i_3_n_0\
    );
\mi_be[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[29]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(13),
      I4 => \mi_be[29]_i_7_n_0\,
      I5 => size(2),
      O => \mi_be[29]_i_5_n_0\
    );
\mi_be[29]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFB8BBFCFFB8B8"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[31]_i_12_n_0\,
      I3 => \mi_be[29]_i_8_n_0\,
      I4 => \next_mi_size_reg_n_0_[0]\,
      I5 => \next_mi_addr_reg_n_0_[0]\,
      O => \mi_be[29]_i_6_n_0\
    );
\mi_be[29]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(21),
      I1 => \be__0\(25),
      I2 => size(1),
      I3 => \be__0\(27),
      I4 => size(0),
      I5 => \be__0\(28),
      O => \mi_be[29]_i_7_n_0\
    );
\mi_be[29]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[1]\,
      I1 => \next_mi_size_reg_n_0_[1]\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      I3 => \next_mi_addr_reg_n_0_[4]\,
      I4 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_be[29]_i_8_n_0\
    );
\mi_be[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFFBFB00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[2]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[2]_i_3_n_0\,
      O => \mi_be[2]_i_1_n_0\
    );
\mi_be[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => \mi_be[1]_i_3_n_0\,
      I1 => \mi_be[12]_i_3_n_0\,
      I2 => \^m_axi_awaddr\(3),
      I3 => \^m_axi_awaddr\(4),
      I4 => \^m_axi_awaddr\(1),
      I5 => \^m_axi_awaddr\(2),
      O => \mi_be[2]_i_2_n_0\
    );
\mi_be[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[2]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(18),
      I4 => \mi_be[2]_i_6_n_0\,
      I5 => size(2),
      O => \mi_be[2]_i_4_n_0\
    );
\mi_be[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFB0BFB0BFB0"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \next_mi_addr_reg_n_0_[4]\,
      I2 => \mi_wrap_cnt[0]_i_7_n_0\,
      I3 => \mi_be[3]_i_7_n_0\,
      I4 => \mi_be[8]_i_8_n_0\,
      I5 => \mi_wrap_be_next[2]_i_3_n_0\,
      O => \mi_be[2]_i_5_n_0\
    );
\mi_be[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(26),
      I1 => \be__0\(30),
      I2 => size(1),
      I3 => \be__0\(0),
      I4 => size(0),
      I5 => \be__0\(1),
      O => \mi_be[2]_i_6_n_0\
    );
\mi_be[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8FFFFBBB80000"
    )
        port map (
      I0 => \mi_be[31]_i_3_n_0\,
      I1 => \mi_be[31]_i_4_n_0\,
      I2 => \mi_be[31]_i_5_n_0\,
      I3 => \mi_be[30]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[30]_i_3_n_0\,
      O => \mi_be[30]_i_1_n_0\
    );
\mi_be[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \^m_axi_awaddr\(3),
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      I2 => \^m_axi_awaddr\(0),
      I3 => \mi_be[30]_i_4_n_0\,
      I4 => \^m_axi_awaddr\(4),
      I5 => \^goreg_dm.dout_i_reg[25]\(0),
      O => \mi_be[30]_i_2_n_0\
    );
\mi_be[30]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awaddr\(2),
      I1 => \^m_axi_awaddr\(1),
      O => \mi_be[30]_i_4_n_0\
    );
\mi_be[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[30]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(14),
      I4 => \mi_be[30]_i_7_n_0\,
      I5 => size(2),
      O => \mi_be[30]_i_5_n_0\
    );
\mi_be[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFEFFFEF00E0"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \next_mi_size_reg_n_0_[2]\,
      I3 => \next_mi_size_reg_n_0_[1]\,
      I4 => \mi_be[31]_i_12_n_0\,
      I5 => \mi_be[30]_i_8_n_0\,
      O => \mi_be[30]_i_6_n_0\
    );
\mi_be[30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \be__0\(26),
      I1 => \be__0\(22),
      I2 => size(1),
      I3 => \be__0\(28),
      I4 => size(0),
      I5 => \be__0\(29),
      O => \mi_be[30]_i_7_n_0\
    );
\mi_be[30]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A2000000000000"
    )
        port map (
      I0 => \mi_wrap_be_next[29]_i_5_n_0\,
      I1 => \next_mi_addr_reg_n_0_[0]\,
      I2 => \next_mi_size_reg_n_0_[0]\,
      I3 => \next_mi_size_reg_n_0_[1]\,
      I4 => \next_mi_addr_reg_n_0_[1]\,
      I5 => \next_mi_addr_reg_n_0_[2]\,
      O => \mi_be[30]_i_8_n_0\
    );
\mi_be[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5554"
    )
        port map (
      I0 => M_AXI_WLAST_i_i_2_n_0,
      I1 => \mi_burst_reg_n_0_[1]\,
      I2 => \mi_burst_reg_n_0_[0]\,
      I3 => mi_last,
      I4 => load_mi_ptr,
      O => \mi_be[31]_i_1_n_0\
    );
\mi_be[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(23),
      I1 => \be__0\(27),
      I2 => size(1),
      I3 => \be__0\(29),
      I4 => size(0),
      I5 => \be__0\(30),
      O => \mi_be[31]_i_10_n_0\
    );
\mi_be[31]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      O => \mi_be[31]_i_11_n_0\
    );
\mi_be[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE0AAA0AAA0AAA0A"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[2]\,
      I1 => \next_mi_addr_reg_n_0_[2]\,
      I2 => \next_mi_size_reg_n_0_[0]\,
      I3 => \next_mi_size_reg_n_0_[1]\,
      I4 => \next_mi_addr_reg_n_0_[4]\,
      I5 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_be[31]_i_12_n_0\
    );
\mi_be[31]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[1]\,
      I1 => \next_mi_addr_reg_n_0_[0]\,
      I2 => \next_mi_size_reg_n_0_[0]\,
      O => \mi_be[31]_i_13_n_0\
    );
\mi_be[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8FFFFBBB80000"
    )
        port map (
      I0 => \mi_be[31]_i_3_n_0\,
      I1 => \mi_be[31]_i_4_n_0\,
      I2 => \mi_be[31]_i_5_n_0\,
      I3 => \mi_be[31]_i_6_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[31]_i_7_n_0\,
      O => \mi_be[31]_i_2_n_0\
    );
\mi_be[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      O => \mi_be[31]_i_3_n_0\
    );
\mi_be[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_be[31]_i_4_n_0\
    );
\mi_be[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECEAE0EAE0AAE0AA"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => \mi_wrap_be_next[30]_i_5_n_0\,
      I2 => \^goreg_dm.dout_i_reg[25]\(1),
      I3 => \^goreg_dm.dout_i_reg[25]\(0),
      I4 => \^m_axi_awaddr\(1),
      I5 => \^m_axi_awaddr\(2),
      O => \mi_be[31]_i_5_n_0\
    );
\mi_be[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \^m_axi_awaddr\(1),
      I1 => \^m_axi_awaddr\(0),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^m_axi_awaddr\(2),
      I4 => \^goreg_dm.dout_i_reg[25]\(1),
      I5 => \mi_wrap_be_next[30]_i_5_n_0\,
      O => \mi_be[31]_i_6_n_0\
    );
\mi_be[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[31]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(15),
      I4 => \mi_be[31]_i_10_n_0\,
      I5 => size(2),
      O => \mi_be[31]_i_8_n_0\
    );
\mi_be[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B8B8B8B8"
    )
        port map (
      I0 => \mi_be[31]_i_11_n_0\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[31]_i_12_n_0\,
      I3 => \mi_wrap_be_next[30]_i_8_n_0\,
      I4 => \mi_wrap_be_next[29]_i_5_n_0\,
      I5 => \mi_be[31]_i_13_n_0\,
      O => \mi_be[31]_i_9_n_0\
    );
\mi_be[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFFBFB00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[3]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[3]_i_3_n_0\,
      O => \mi_be[3]_i_1_n_0\
    );
\mi_be[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => \^m_axi_awaddr\(3),
      I1 => \^m_axi_awaddr\(4),
      I2 => \^m_axi_awaddr\(1),
      I3 => \^m_axi_awaddr\(2),
      I4 => \mi_be[13]_i_3_n_0\,
      I5 => \mi_be[1]_i_3_n_0\,
      O => \mi_be[3]_i_2_n_0\
    );
\mi_be[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[3]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(19),
      I4 => \mi_be[3]_i_6_n_0\,
      I5 => size(2),
      O => \mi_be[3]_i_4_n_0\
    );
\mi_be[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFB0BFB0BFB0"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \next_mi_addr_reg_n_0_[4]\,
      I2 => \mi_wrap_cnt[0]_i_7_n_0\,
      I3 => \mi_be[3]_i_7_n_0\,
      I4 => \mi_be[31]_i_13_n_0\,
      I5 => \mi_wrap_be_next[2]_i_3_n_0\,
      O => \mi_be[3]_i_5_n_0\
    );
\mi_be[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(27),
      I1 => be(31),
      I2 => size(1),
      I3 => \be__0\(1),
      I4 => size(0),
      I5 => \be__0\(2),
      O => \mi_be[3]_i_6_n_0\
    );
\mi_be[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA22AA22AA22EF22"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[2]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      I3 => \next_mi_size_reg_n_0_[1]\,
      I4 => \next_mi_addr_reg_n_0_[4]\,
      I5 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_be[3]_i_7_n_0\
    );
\mi_be[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFFBFB00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[4]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[4]_i_3_n_0\,
      O => \mi_be[4]_i_1_n_0\
    );
\mi_be[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEAAAAAAAA"
    )
        port map (
      I0 => \mi_be[5]_i_4_n_0\,
      I1 => \^m_axi_awaddr\(2),
      I2 => \^m_axi_awaddr\(1),
      I3 => \^m_axi_awaddr\(3),
      I4 => \^m_axi_awaddr\(4),
      I5 => \mi_be[12]_i_3_n_0\,
      O => \mi_be[4]_i_2_n_0\
    );
\mi_be[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[4]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(20),
      I4 => \mi_be[4]_i_6_n_0\,
      I5 => size(2),
      O => \mi_be[4]_i_4_n_0\
    );
\mi_be[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFCFF74747477"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[6]_i_6_n_0\,
      I3 => \mi_be[5]_i_8_n_0\,
      I4 => \next_mi_addr_reg_n_0_[0]\,
      I5 => \next_mi_size_reg_n_0_[0]\,
      O => \mi_be[4]_i_5_n_0\
    );
\mi_be[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(28),
      I1 => \be__0\(0),
      I2 => size(1),
      I3 => \be__0\(2),
      I4 => size(0),
      I5 => \be__0\(3),
      O => \mi_be[4]_i_6_n_0\
    );
\mi_be[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFFBFB00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[5]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[5]_i_3_n_0\,
      O => \mi_be[5]_i_1_n_0\
    );
\mi_be[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEAAAAAAAA"
    )
        port map (
      I0 => \mi_be[5]_i_4_n_0\,
      I1 => \^m_axi_awaddr\(2),
      I2 => \^m_axi_awaddr\(1),
      I3 => \^m_axi_awaddr\(3),
      I4 => \^m_axi_awaddr\(4),
      I5 => \mi_be[13]_i_3_n_0\,
      O => \mi_be[5]_i_2_n_0\
    );
\mi_be[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0AAA0AAA0AFE0A"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => \^m_axi_awaddr\(2),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^goreg_dm.dout_i_reg[25]\(1),
      I4 => \^m_axi_awaddr\(4),
      I5 => \^m_axi_awaddr\(3),
      O => \mi_be[5]_i_4_n_0\
    );
\mi_be[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[5]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(21),
      I4 => \mi_be[5]_i_7_n_0\,
      I5 => size(2),
      O => \mi_be[5]_i_5_n_0\
    );
\mi_be[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFF7477FCFF7474"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[6]_i_6_n_0\,
      I3 => \mi_be[5]_i_8_n_0\,
      I4 => \next_mi_size_reg_n_0_[0]\,
      I5 => \next_mi_addr_reg_n_0_[0]\,
      O => \mi_be[5]_i_6_n_0\
    );
\mi_be[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(29),
      I1 => \be__0\(1),
      I2 => size(1),
      I3 => \be__0\(3),
      I4 => size(0),
      I5 => \be__0\(4),
      O => \mi_be[5]_i_7_n_0\
    );
\mi_be[5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_addr_reg_n_0_[3]\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      I3 => \next_mi_addr_reg_n_0_[1]\,
      I4 => \next_mi_size_reg_n_0_[1]\,
      O => \mi_be[5]_i_8_n_0\
    );
\mi_be[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F8F0FFF0F8"
    )
        port map (
      I0 => \mi_be[22]_i_4_n_0\,
      I1 => \mi_wrap_be_next_reg_n_0_[6]\,
      I2 => \mi_be[6]_i_2_n_0\,
      I3 => load_mi_ptr,
      I4 => mi_last,
      I5 => \mi_be[6]_i_3_n_0\,
      O => \mi_be[6]_i_1_n_0\
    );
\mi_be[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444FFF444444444"
    )
        port map (
      I0 => \mi_be[6]_i_4_n_0\,
      I1 => \mi_be[13]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(22),
      I4 => \mi_be[6]_i_5_n_0\,
      I5 => \mi_be[17]_i_8_n_0\,
      O => \mi_be[6]_i_2_n_0\
    );
\mi_be[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202F202F202F"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \mi_wrap_cnt[0]_i_7_n_0\,
      I3 => \mi_be[6]_i_6_n_0\,
      I4 => \mi_be[8]_i_8_n_0\,
      I5 => \mi_be[6]_i_7_n_0\,
      O => \mi_be[6]_i_3_n_0\
    );
\mi_be[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222333322223333"
    )
        port map (
      I0 => \mi_be[6]_i_8_n_0\,
      I1 => \^goreg_dm.dout_i_reg[25]\(2),
      I2 => \^m_axi_awaddr\(1),
      I3 => \^m_axi_awaddr\(2),
      I4 => \mi_wrap_be_next[4]_i_2_n_0\,
      I5 => \mi_be[12]_i_3_n_0\,
      O => \mi_be[6]_i_4_n_0\
    );
\mi_be[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF47"
    )
        port map (
      I0 => \be__0\(4),
      I1 => size(0),
      I2 => \be__0\(5),
      I3 => size(1),
      I4 => \mi_be[6]_i_9_n_0\,
      O => \mi_be[6]_i_5_n_0\
    );
\mi_be[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0AAA0AAA0AFE0A"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[2]\,
      I1 => \next_mi_addr_reg_n_0_[2]\,
      I2 => \next_mi_size_reg_n_0_[0]\,
      I3 => \next_mi_size_reg_n_0_[1]\,
      I4 => \next_mi_addr_reg_n_0_[4]\,
      I5 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_be[6]_i_6_n_0\
    );
\mi_be[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[3]\,
      I1 => \next_mi_addr_reg_n_0_[4]\,
      I2 => \next_mi_addr_reg_n_0_[1]\,
      I3 => \next_mi_addr_reg_n_0_[2]\,
      O => \mi_be[6]_i_7_n_0\
    );
\mi_be[6]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^m_axi_awaddr\(2),
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      I2 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_be[6]_i_8_n_0\
    );
\mi_be[6]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => size(2),
      I1 => size(1),
      I2 => \be__0\(30),
      I3 => size(0),
      I4 => \be__0\(2),
      O => \mi_be[6]_i_9_n_0\
    );
\mi_be[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFFBFB00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[7]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[7]_i_3_n_0\,
      O => \mi_be[7]_i_1_n_0\
    );
\mi_be[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4FFC4C4C444"
    )
        port map (
      I0 => \mi_be[15]_i_2_n_0\,
      I1 => \mi_wrap_be_next[4]_i_2_n_0\,
      I2 => \^goreg_dm.dout_i_reg[25]\(1),
      I3 => \^goreg_dm.dout_i_reg[25]\(0),
      I4 => \^m_axi_awaddr\(2),
      I5 => \^goreg_dm.dout_i_reg[25]\(2),
      O => \mi_be[7]_i_2_n_0\
    );
\mi_be[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[7]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(23),
      I4 => \mi_be[7]_i_6_n_0\,
      I5 => size(2),
      O => \mi_be[7]_i_4_n_0\
    );
\mi_be[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFB0BFB0BFB0"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \next_mi_addr_reg_n_0_[4]\,
      I2 => \mi_wrap_cnt[0]_i_7_n_0\,
      I3 => \mi_be[6]_i_6_n_0\,
      I4 => \mi_be[31]_i_13_n_0\,
      I5 => \mi_be[6]_i_7_n_0\,
      O => \mi_be[7]_i_5_n_0\
    );
\mi_be[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => be(31),
      I1 => \be__0\(3),
      I2 => size(1),
      I3 => \be__0\(5),
      I4 => size(0),
      I5 => \be__0\(6),
      O => \mi_be[7]_i_6_n_0\
    );
\mi_be[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F8F0FFF0F8"
    )
        port map (
      I0 => \mi_be[22]_i_4_n_0\,
      I1 => \mi_wrap_be_next_reg_n_0_[8]\,
      I2 => \mi_be[8]_i_2_n_0\,
      I3 => load_mi_ptr,
      I4 => mi_last,
      I5 => \mi_be[8]_i_3_n_0\,
      O => \mi_be[8]_i_1_n_0\
    );
\mi_be[8]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_axi_awaddr\(2),
      I1 => \^m_axi_awaddr\(1),
      O => \mi_be[8]_i_10_n_0\
    );
\mi_be[8]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => size(2),
      I1 => size(1),
      I2 => \be__0\(0),
      I3 => size(0),
      I4 => \be__0\(4),
      O => \mi_be[8]_i_11_n_0\
    );
\mi_be[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444FFF444444444"
    )
        port map (
      I0 => \mi_be[8]_i_4_n_0\,
      I1 => \mi_be[13]_i_4_n_0\,
      I2 => \mi_be[17]_i_6_n_0\,
      I3 => \be__0\(24),
      I4 => \mi_be[8]_i_5_n_0\,
      I5 => \mi_be[17]_i_8_n_0\,
      O => \mi_be[8]_i_2_n_0\
    );
\mi_be[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202F2020202F202F"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \mi_wrap_cnt[0]_i_7_n_0\,
      I3 => \mi_be[8]_i_6_n_0\,
      I4 => \mi_be[8]_i_7_n_0\,
      I5 => \mi_be[8]_i_8_n_0\,
      O => \mi_be[8]_i_3_n_0\
    );
\mi_be[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B0F0F0B0B0F0F"
    )
        port map (
      I0 => \mi_be[8]_i_9_n_0\,
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      I2 => \^goreg_dm.dout_i_reg[25]\(2),
      I3 => \mi_be[8]_i_10_n_0\,
      I4 => \mi_wrap_be_next[13]_i_2_n_0\,
      I5 => \mi_be[12]_i_3_n_0\,
      O => \mi_be[8]_i_4_n_0\
    );
\mi_be[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF47"
    )
        port map (
      I0 => \be__0\(6),
      I1 => size(0),
      I2 => \be__0\(7),
      I3 => size(1),
      I4 => \mi_be[8]_i_11_n_0\,
      O => \mi_be[8]_i_5_n_0\
    );
\mi_be[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE00AE00AAAAAEAA"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[2]\,
      I1 => \next_mi_addr_reg_n_0_[3]\,
      I2 => \next_mi_addr_reg_n_0_[4]\,
      I3 => \next_mi_size_reg_n_0_[1]\,
      I4 => \next_mi_addr_reg_n_0_[2]\,
      I5 => \next_mi_size_reg_n_0_[0]\,
      O => \mi_be[8]_i_6_n_0\
    );
\mi_be[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[1]\,
      I1 => \next_mi_addr_reg_n_0_[2]\,
      I2 => \next_mi_addr_reg_n_0_[3]\,
      I3 => \next_mi_addr_reg_n_0_[4]\,
      O => \mi_be[8]_i_7_n_0\
    );
\mi_be[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[1]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \next_mi_addr_reg_n_0_[0]\,
      O => \mi_be[8]_i_8_n_0\
    );
\mi_be[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_axi_awaddr\(2),
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      O => \mi_be[8]_i_9_n_0\
    );
\mi_be[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0FFFFBFB00000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \mi_be[31]_i_4_n_0\,
      I3 => \mi_be[9]_i_2_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_be_reg[9]_i_3_n_0\,
      O => \mi_be[9]_i_1_n_0\
    );
\mi_be[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAAAAAAAAA"
    )
        port map (
      I0 => \mi_be[11]_i_4_n_0\,
      I1 => \^m_axi_awaddr\(1),
      I2 => \^m_axi_awaddr\(2),
      I3 => \^m_axi_awaddr\(4),
      I4 => \^m_axi_awaddr\(3),
      I5 => \mi_be[13]_i_3_n_0\,
      O => \mi_be[9]_i_2_n_0\
    );
\mi_be[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB88888"
    )
        port map (
      I0 => \mi_wrap_be_next_reg_n_0_[9]\,
      I1 => \mi_be[22]_i_4_n_0\,
      I2 => \mi_be[9]_i_6_n_0\,
      I3 => size(2),
      I4 => \mi_be[17]_i_6_n_0\,
      I5 => \be__0\(25),
      O => \mi_be[9]_i_4_n_0\
    );
\mi_be[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8BBB8B8B8B8"
    )
        port map (
      I0 => \mi_be[15]_i_9_n_0\,
      I1 => \mi_wrap_cnt[0]_i_7_n_0\,
      I2 => \mi_be[8]_i_6_n_0\,
      I3 => \mi_be[25]_i_7_n_0\,
      I4 => \mi_wrap_be_next[9]_i_5_n_0\,
      I5 => \mi_be[31]_i_13_n_0\,
      O => \mi_be[9]_i_5_n_0\
    );
\mi_be[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \be__0\(1),
      I1 => \be__0\(5),
      I2 => size(1),
      I3 => \be__0\(7),
      I4 => size(0),
      I5 => \be__0\(8),
      O => \mi_be[9]_i_6_n_0\
    );
\mi_be_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(0),
      Q => \mi_be_d1_reg_n_0_[0]\,
      R => '0'
    );
\mi_be_d1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(10),
      Q => \mi_be_d1_reg_n_0_[10]\,
      R => '0'
    );
\mi_be_d1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(11),
      Q => \mi_be_d1_reg_n_0_[11]\,
      R => '0'
    );
\mi_be_d1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(12),
      Q => \mi_be_d1_reg_n_0_[12]\,
      R => '0'
    );
\mi_be_d1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(13),
      Q => \mi_be_d1_reg_n_0_[13]\,
      R => '0'
    );
\mi_be_d1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(14),
      Q => \mi_be_d1_reg_n_0_[14]\,
      R => '0'
    );
\mi_be_d1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(15),
      Q => \mi_be_d1_reg_n_0_[15]\,
      R => '0'
    );
\mi_be_d1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(16),
      Q => \mi_be_d1_reg_n_0_[16]\,
      R => '0'
    );
\mi_be_d1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(17),
      Q => \mi_be_d1_reg_n_0_[17]\,
      R => '0'
    );
\mi_be_d1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(18),
      Q => \mi_be_d1_reg_n_0_[18]\,
      R => '0'
    );
\mi_be_d1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(19),
      Q => \mi_be_d1_reg_n_0_[19]\,
      R => '0'
    );
\mi_be_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(1),
      Q => \mi_be_d1_reg_n_0_[1]\,
      R => '0'
    );
\mi_be_d1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(20),
      Q => \mi_be_d1_reg_n_0_[20]\,
      R => '0'
    );
\mi_be_d1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(21),
      Q => \mi_be_d1_reg_n_0_[21]\,
      R => '0'
    );
\mi_be_d1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(22),
      Q => \mi_be_d1_reg_n_0_[22]\,
      R => '0'
    );
\mi_be_d1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(23),
      Q => \mi_be_d1_reg_n_0_[23]\,
      R => '0'
    );
\mi_be_d1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(24),
      Q => \mi_be_d1_reg_n_0_[24]\,
      R => '0'
    );
\mi_be_d1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(25),
      Q => \mi_be_d1_reg_n_0_[25]\,
      R => '0'
    );
\mi_be_d1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(26),
      Q => \mi_be_d1_reg_n_0_[26]\,
      R => '0'
    );
\mi_be_d1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(27),
      Q => \mi_be_d1_reg_n_0_[27]\,
      R => '0'
    );
\mi_be_d1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(28),
      Q => \mi_be_d1_reg_n_0_[28]\,
      R => '0'
    );
\mi_be_d1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(29),
      Q => \mi_be_d1_reg_n_0_[29]\,
      R => '0'
    );
\mi_be_d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(2),
      Q => \mi_be_d1_reg_n_0_[2]\,
      R => '0'
    );
\mi_be_d1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(30),
      Q => \mi_be_d1_reg_n_0_[30]\,
      R => '0'
    );
\mi_be_d1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => be(31),
      Q => \mi_be_d1_reg_n_0_[31]\,
      R => '0'
    );
\mi_be_d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(3),
      Q => \mi_be_d1_reg_n_0_[3]\,
      R => '0'
    );
\mi_be_d1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(4),
      Q => \mi_be_d1_reg_n_0_[4]\,
      R => '0'
    );
\mi_be_d1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(5),
      Q => \mi_be_d1_reg_n_0_[5]\,
      R => '0'
    );
\mi_be_d1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(6),
      Q => \mi_be_d1_reg_n_0_[6]\,
      R => '0'
    );
\mi_be_d1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(7),
      Q => \mi_be_d1_reg_n_0_[7]\,
      R => '0'
    );
\mi_be_d1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(8),
      Q => \mi_be_d1_reg_n_0_[8]\,
      R => '0'
    );
\mi_be_d1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \be__0\(9),
      Q => \mi_be_d1_reg_n_0_[9]\,
      R => '0'
    );
\mi_be_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[0]_i_1_n_0\,
      Q => \be__0\(0),
      R => '0'
    );
\mi_be_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[0]_i_4_n_0\,
      I1 => \mi_be[0]_i_5_n_0\,
      O => \mi_be_reg[0]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[10]_i_1_n_0\,
      Q => \be__0\(10),
      R => '0'
    );
\mi_be_reg[10]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[10]_i_4_n_0\,
      I1 => \mi_be[10]_i_5_n_0\,
      O => \mi_be_reg[10]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[11]_i_1_n_0\,
      Q => \be__0\(11),
      R => '0'
    );
\mi_be_reg[11]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[11]_i_5_n_0\,
      I1 => \mi_be[11]_i_6_n_0\,
      O => \mi_be_reg[11]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[12]_i_1_n_0\,
      Q => \be__0\(12),
      R => '0'
    );
\mi_be_reg[12]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[12]_i_4_n_0\,
      I1 => \mi_be[12]_i_5_n_0\,
      O => \mi_be_reg[12]_i_2_n_0\,
      S => mi_last
    );
\mi_be_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[13]_i_1_n_0\,
      Q => \be__0\(13),
      R => '0'
    );
\mi_be_reg[13]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[13]_i_6_n_0\,
      I1 => \mi_be[13]_i_7_n_0\,
      O => \mi_be_reg[13]_i_5_n_0\,
      S => mi_last
    );
\mi_be_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[14]_i_1_n_0\,
      Q => \be__0\(14),
      R => '0'
    );
\mi_be_reg[14]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[14]_i_4_n_0\,
      I1 => \mi_be[14]_i_5_n_0\,
      O => \mi_be_reg[14]_i_2_n_0\,
      S => mi_last
    );
\mi_be_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[15]_i_1_n_0\,
      Q => \be__0\(15),
      R => '0'
    );
\mi_be_reg[15]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[15]_i_6_n_0\,
      I1 => \mi_be[15]_i_7_n_0\,
      O => \mi_be_reg[15]_i_5_n_0\,
      S => mi_last
    );
\mi_be_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[16]_i_1_n_0\,
      Q => \be__0\(16),
      R => '0'
    );
\mi_be_reg[16]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[16]_i_6_n_0\,
      I1 => \mi_be[16]_i_7_n_0\,
      O => \mi_be_reg[16]_i_4_n_0\,
      S => mi_last
    );
\mi_be_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[17]_i_1_n_0\,
      Q => \be__0\(17),
      R => '0'
    );
\mi_be_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[18]_i_1_n_0\,
      Q => \be__0\(18),
      R => '0'
    );
\mi_be_reg[18]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[18]_i_4_n_0\,
      I1 => \mi_be[18]_i_5_n_0\,
      O => \mi_be_reg[18]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[19]_i_1_n_0\,
      Q => \be__0\(19),
      R => '0'
    );
\mi_be_reg[19]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[19]_i_4_n_0\,
      I1 => \mi_be[19]_i_5_n_0\,
      O => \mi_be_reg[19]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[1]_i_1_n_0\,
      Q => \be__0\(1),
      R => '0'
    );
\mi_be_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[1]_i_6_n_0\,
      I1 => \mi_be[1]_i_7_n_0\,
      O => \mi_be_reg[1]_i_5_n_0\,
      S => mi_last
    );
\mi_be_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[20]_i_1_n_0\,
      Q => \be__0\(20),
      R => '0'
    );
\mi_be_reg[20]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[20]_i_4_n_0\,
      I1 => \mi_be[20]_i_5_n_0\,
      O => \mi_be_reg[20]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[21]_i_1_n_0\,
      Q => \be__0\(21),
      R => '0'
    );
\mi_be_reg[21]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[21]_i_5_n_0\,
      I1 => \mi_be[21]_i_6_n_0\,
      O => \mi_be_reg[21]_i_4_n_0\,
      S => mi_last
    );
\mi_be_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[22]_i_1_n_0\,
      Q => \be__0\(22),
      R => '0'
    );
\mi_be_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[23]_i_1_n_0\,
      Q => \be__0\(23),
      R => '0'
    );
\mi_be_reg[23]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[23]_i_4_n_0\,
      I1 => \mi_be[23]_i_5_n_0\,
      O => \mi_be_reg[23]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[24]_i_1_n_0\,
      Q => \be__0\(24),
      R => '0'
    );
\mi_be_reg[24]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[24]_i_4_n_0\,
      I1 => \mi_be[24]_i_5_n_0\,
      O => \mi_be_reg[24]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[25]_i_1_n_0\,
      Q => \be__0\(25),
      R => '0'
    );
\mi_be_reg[25]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[25]_i_4_n_0\,
      I1 => \mi_be[25]_i_5_n_0\,
      O => \mi_be_reg[25]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[26]_i_1_n_0\,
      Q => \be__0\(26),
      R => '0'
    );
\mi_be_reg[26]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[26]_i_4_n_0\,
      I1 => \mi_be[26]_i_5_n_0\,
      O => \mi_be_reg[26]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[27]_i_1_n_0\,
      Q => \be__0\(27),
      R => '0'
    );
\mi_be_reg[27]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[27]_i_5_n_0\,
      I1 => \mi_be[27]_i_6_n_0\,
      O => \mi_be_reg[27]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[28]_i_1_n_0\,
      Q => \be__0\(28),
      R => '0'
    );
\mi_be_reg[28]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[28]_i_4_n_0\,
      I1 => \mi_be[28]_i_5_n_0\,
      O => \mi_be_reg[28]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[29]_i_1_n_0\,
      Q => \be__0\(29),
      R => '0'
    );
\mi_be_reg[29]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[29]_i_5_n_0\,
      I1 => \mi_be[29]_i_6_n_0\,
      O => \mi_be_reg[29]_i_4_n_0\,
      S => mi_last
    );
\mi_be_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[2]_i_1_n_0\,
      Q => \be__0\(2),
      R => '0'
    );
\mi_be_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[2]_i_4_n_0\,
      I1 => \mi_be[2]_i_5_n_0\,
      O => \mi_be_reg[2]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[30]_i_1_n_0\,
      Q => \be__0\(30),
      R => '0'
    );
\mi_be_reg[30]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[30]_i_5_n_0\,
      I1 => \mi_be[30]_i_6_n_0\,
      O => \mi_be_reg[30]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[31]_i_2_n_0\,
      Q => be(31),
      R => '0'
    );
\mi_be_reg[31]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[31]_i_8_n_0\,
      I1 => \mi_be[31]_i_9_n_0\,
      O => \mi_be_reg[31]_i_7_n_0\,
      S => mi_last
    );
\mi_be_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[3]_i_1_n_0\,
      Q => \be__0\(3),
      R => '0'
    );
\mi_be_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[3]_i_4_n_0\,
      I1 => \mi_be[3]_i_5_n_0\,
      O => \mi_be_reg[3]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[4]_i_1_n_0\,
      Q => \be__0\(4),
      R => '0'
    );
\mi_be_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[4]_i_4_n_0\,
      I1 => \mi_be[4]_i_5_n_0\,
      O => \mi_be_reg[4]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[5]_i_1_n_0\,
      Q => \be__0\(5),
      R => '0'
    );
\mi_be_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[5]_i_5_n_0\,
      I1 => \mi_be[5]_i_6_n_0\,
      O => \mi_be_reg[5]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[6]_i_1_n_0\,
      Q => \be__0\(6),
      R => '0'
    );
\mi_be_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[7]_i_1_n_0\,
      Q => \be__0\(7),
      R => '0'
    );
\mi_be_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[7]_i_4_n_0\,
      I1 => \mi_be[7]_i_5_n_0\,
      O => \mi_be_reg[7]_i_3_n_0\,
      S => mi_last
    );
\mi_be_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[8]_i_1_n_0\,
      Q => \be__0\(8),
      R => '0'
    );
\mi_be_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_be[31]_i_1_n_0\,
      D => \mi_be[9]_i_1_n_0\,
      Q => \be__0\(9),
      R => '0'
    );
\mi_be_reg[9]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_be[9]_i_4_n_0\,
      I1 => \mi_be[9]_i_5_n_0\,
      O => \mi_be_reg[9]_i_3_n_0\,
      S => mi_last
    );
\mi_buf[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mi_buf_addr(7),
      O => \mi_buf[0]_i_1_n_0\
    );
\mi_buf[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A8A8"
    )
        port map (
      I0 => mi_last,
      I1 => load_mi_d2,
      I2 => load_mi_d1,
      I3 => \^m_axi_wvalid_i_reg_0\,
      I4 => m_axi_wready,
      O => mi_buf0
    );
\mi_buf[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mi_buf_addr(7),
      I1 => mi_buf_addr(8),
      O => \mi_buf[1]_i_2_n_0\
    );
\mi_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_buf0,
      D => \mi_buf[0]_i_1_n_0\,
      Q => mi_buf_addr(7),
      R => \^s_axi_aresetn\
    );
\mi_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_buf0,
      D => \mi_buf[1]_i_2_n_0\,
      Q => mi_buf_addr(8),
      R => \^s_axi_aresetn\
    );
\mi_burst[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[22]\(0),
      I1 => load_mi_ptr,
      I2 => next_mi_burst(0),
      O => \mi_burst[0]_i_1_n_0\
    );
\mi_burst[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAAAAAAAAA"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => m_axi_wready,
      I2 => \^m_axi_wvalid_i_reg_0\,
      I3 => load_mi_d1,
      I4 => load_mi_d2,
      I5 => mi_last,
      O => mi_wrap_be_next
    );
\mi_burst[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[22]\(1),
      I1 => load_mi_ptr,
      I2 => next_mi_burst(1),
      O => \mi_burst[1]_i_2_n_0\
    );
\mi_burst_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_burst[0]_i_1_n_0\,
      Q => \mi_burst_reg_n_0_[0]\,
      R => '0'
    );
\mi_burst_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_burst[1]_i_2_n_0\,
      Q => \mi_burst_reg_n_0_[1]\,
      R => '0'
    );
mi_first_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => mi_first,
      Q => mi_first_d1,
      R => '0'
    );
mi_first_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB8"
    )
        port map (
      I0 => mi_first,
      I1 => M_AXI_WLAST_i_i_2_n_0,
      I2 => mi_last,
      I3 => load_mi_ptr,
      O => mi_first_i_1_n_0
    );
mi_first_reg: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => mi_first_i_1_n_0,
      Q => mi_first,
      R => '0'
    );
mi_last_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mi_last,
      I1 => \mi_addr_d1[4]_i_1_n_0\,
      I2 => mi_last_d1_reg_n_0,
      O => mi_last_d1_i_1_n_0
    );
mi_last_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => mi_last_d1_i_1_n_0,
      Q => mi_last_d1_reg_n_0,
      R => \^s_axi_aresetn\
    );
mi_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAFCAA00AAFC"
    )
        port map (
      I0 => mi_last_i_2_n_0,
      I1 => mi_last_i_3_n_0,
      I2 => mi_last_i_4_n_0,
      I3 => load_mi_ptr,
      I4 => M_AXI_WLAST_i_i_2_n_0,
      I5 => mi_last,
      O => mi_last_i_1_n_0
    );
mi_last_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^d\(2),
      I2 => \^d\(3),
      I3 => mi_last_i_5_n_0,
      O => mi_last_i_2_n_0
    );
mi_last_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \mi_wrap_be_next[29]_i_4_n_0\,
      I1 => mi_last_i_6_n_0,
      I2 => \next_mi_len_reg_n_0_[0]\,
      I3 => next_valid,
      I4 => \next_mi_len_reg_n_0_[6]\,
      O => mi_last_i_3_n_0
    );
mi_last_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \mi_wcnt__0\(7),
      I1 => \mi_wcnt__0\(5),
      I2 => \mi_wcnt__0\(2),
      I3 => mi_last_i_7_n_0,
      O => mi_last_i_4_n_0
    );
mi_last_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^d\(6),
      I1 => \^d\(7),
      I2 => \^d\(5),
      I3 => \^d\(0),
      I4 => \^d\(4),
      O => mi_last_i_5_n_0
    );
mi_last_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => mi_last,
      I1 => \next_mi_len_reg_n_0_[4]\,
      I2 => \next_mi_len_reg_n_0_[7]\,
      I3 => \next_mi_len_reg_n_0_[5]\,
      O => mi_last_i_6_n_0
    );
mi_last_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \mi_wcnt__0\(4),
      I1 => \mi_wcnt__0\(3),
      I2 => \mi_wcnt__0\(1),
      I3 => \mi_wcnt__0\(6),
      I4 => mi_last,
      I5 => \mi_wcnt__0\(0),
      O => mi_last_i_7_n_0
    );
\mi_last_index_reg_d0[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mi_last_index_reg(0),
      I1 => load_mi_ptr,
      I2 => next_mi_last_index_reg(0),
      O => \mi_last_index_reg_d0[0]_i_1_n_0\
    );
\mi_last_index_reg_d0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mi_last_index_reg(1),
      I1 => load_mi_ptr,
      I2 => next_mi_last_index_reg(1),
      O => \mi_last_index_reg_d0[1]_i_1_n_0\
    );
\mi_last_index_reg_d0[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mi_last_index_reg(2),
      I1 => load_mi_ptr,
      I2 => next_mi_last_index_reg(2),
      O => \mi_last_index_reg_d0[2]_i_1_n_0\
    );
\mi_last_index_reg_d0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mi_last_index_reg(3),
      I1 => load_mi_ptr,
      I2 => next_mi_last_index_reg(3),
      O => \mi_last_index_reg_d0[3]_i_1_n_0\
    );
\mi_last_index_reg_d0[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mi_last_index_reg(4),
      I1 => load_mi_ptr,
      I2 => next_mi_last_index_reg(4),
      O => \mi_last_index_reg_d0[4]_i_1_n_0\
    );
\mi_last_index_reg_d0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_last_index_reg_d0,
      D => \mi_last_index_reg_d0[0]_i_1_n_0\,
      Q => \mi_last_index_reg_d0_reg_n_0_[0]\,
      R => '0'
    );
\mi_last_index_reg_d0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_last_index_reg_d0,
      D => \mi_last_index_reg_d0[1]_i_1_n_0\,
      Q => \mi_last_index_reg_d0_reg_n_0_[1]\,
      R => '0'
    );
\mi_last_index_reg_d0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_last_index_reg_d0,
      D => \mi_last_index_reg_d0[2]_i_1_n_0\,
      Q => \mi_last_index_reg_d0_reg_n_0_[2]\,
      R => '0'
    );
\mi_last_index_reg_d0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_last_index_reg_d0,
      D => \mi_last_index_reg_d0[3]_i_1_n_0\,
      Q => \mi_last_index_reg_d0_reg_n_0_[3]\,
      R => '0'
    );
\mi_last_index_reg_d0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_last_index_reg_d0,
      D => \mi_last_index_reg_d0[4]_i_1_n_0\,
      Q => \mi_last_index_reg_d0_reg_n_0_[4]\,
      R => '0'
    );
\mi_last_index_reg_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \mi_last_index_reg_d0_reg_n_0_[0]\,
      Q => index(0),
      R => '0'
    );
\mi_last_index_reg_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \mi_last_index_reg_d0_reg_n_0_[1]\,
      Q => index(1),
      R => '0'
    );
\mi_last_index_reg_d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \mi_last_index_reg_d0_reg_n_0_[2]\,
      Q => index(2),
      R => '0'
    );
\mi_last_index_reg_d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \mi_last_index_reg_d0_reg_n_0_[3]\,
      Q => index(3),
      R => '0'
    );
\mi_last_index_reg_d1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_addr_d1[4]_i_1_n_0\,
      D => \mi_last_index_reg_d0_reg_n_0_[4]\,
      Q => index(4),
      R => '0'
    );
mi_last_reg: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => mi_last_i_1_n_0,
      Q => mi_last,
      R => \^s_axi_aresetn\
    );
\mi_ptr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8888888BBBB"
    )
        port map (
      I0 => \mi_ptr[0]_i_2_n_0\,
      I1 => load_mi_ptr,
      I2 => \next_mi_addr_reg_n_0_[5]\,
      I3 => \mi_ptr[0]_i_3_n_0\,
      I4 => mi_buf_addr(0),
      I5 => mi_last,
      O => \mi_ptr[0]_i_1_n_0\
    );
\mi_ptr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2828280820202000"
    )
        port map (
      I0 => \^m_axi_awaddr\(5),
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      I2 => \^goreg_dm.dout_i_reg[25]\(2),
      I3 => \^d\(1),
      I4 => \^goreg_dm.dout_i_reg[25]\(0),
      I5 => \mi_ptr[0]_i_4_n_0\,
      O => \mi_ptr[0]_i_2_n_0\
    );
\mi_ptr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C0C38383C0C0808"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => \next_mi_size_reg_n_0_[2]\,
      I2 => \next_mi_size_reg_n_0_[1]\,
      I3 => p_0_in_0(1),
      I4 => \next_mi_size_reg_n_0_[0]\,
      I5 => p_0_in_0(2),
      O => \mi_ptr[0]_i_3_n_0\
    );
\mi_ptr[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      I2 => \^d\(3),
      O => \mi_ptr[0]_i_4_n_0\
    );
\mi_ptr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \^m_axi_awaddr\(6),
      I1 => \mi_ptr[1]_i_2_n_0\,
      I2 => load_mi_ptr,
      I3 => \mi_ptr[1]_i_3_n_0\,
      O => \mi_ptr[1]_i_1_n_0\
    );
\mi_ptr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF3F3F5F5F"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^d\(1),
      I2 => \^goreg_dm.dout_i_reg[25]\(2),
      I3 => \^d\(3),
      I4 => \^goreg_dm.dout_i_reg[25]\(0),
      I5 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_ptr[1]_i_2_n_0\
    );
\mi_ptr[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8F80"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[6]\,
      I1 => \mi_ptr[1]_i_4_n_0\,
      I2 => mi_last,
      I3 => mi_buf_addr(1),
      I4 => mi_buf_addr(0),
      O => \mi_ptr[1]_i_3_n_0\
    );
\mi_ptr[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00C0A00000C0A0"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      I2 => \next_mi_size_reg_n_0_[2]\,
      I3 => \next_mi_size_reg_n_0_[0]\,
      I4 => \next_mi_size_reg_n_0_[1]\,
      I5 => p_0_in_0(2),
      O => \mi_ptr[1]_i_4_n_0\
    );
\mi_ptr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \mi_ptr[2]_i_4_n_0\,
      I1 => mi_last,
      I2 => mi_buf_addr(2),
      I3 => mi_buf_addr(0),
      I4 => mi_buf_addr(1),
      O => \mi_ptr[2]_i_2_n_0\
    );
\mi_ptr[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E20000000000"
    )
        port map (
      I0 => \^d\(3),
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      I2 => \^d\(2),
      I3 => \^goreg_dm.dout_i_reg[25]\(2),
      I4 => \^goreg_dm.dout_i_reg[25]\(1),
      I5 => \^m_axi_awaddr\(7),
      O => \mi_ptr[2]_i_3_n_0\
    );
\mi_ptr[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E20000000000"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => p_0_in_0(1),
      I3 => \next_mi_size_reg_n_0_[2]\,
      I4 => \next_mi_size_reg_n_0_[1]\,
      I5 => \next_mi_addr_reg_n_0_[7]\,
      O => \mi_ptr[2]_i_4_n_0\
    );
\mi_ptr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111111110000000"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => mi_last,
      I2 => mi_buf_addr(2),
      I3 => mi_buf_addr(0),
      I4 => mi_buf_addr(1),
      I5 => mi_buf_addr(3),
      O => \mi_ptr[3]_i_1_n_0\
    );
\mi_ptr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \mi_ptr[4]_i_2_n_0\,
      I1 => mi_buf_addr(1),
      I2 => mi_buf_addr(0),
      I3 => mi_buf_addr(2),
      I4 => mi_buf_addr(3),
      I5 => mi_buf_addr(4),
      O => \mi_ptr[4]_i_1_n_0\
    );
\mi_ptr[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mi_last,
      I1 => load_mi_ptr,
      O => \mi_ptr[4]_i_2_n_0\
    );
\mi_ptr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0110"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => mi_last,
      I2 => \mi_ptr[6]_i_5_n_0\,
      I3 => mi_buf_addr(5),
      O => \mi_ptr[5]_i_1_n_0\
    );
\mi_ptr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDF0"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[22]\(1),
      I1 => \^goreg_dm.dout_i_reg[22]\(0),
      I2 => \mi_ptr[6]_i_4_n_0\,
      I3 => load_mi_ptr,
      O => \mi_ptr[6]_i_1_n_0\
    );
\mi_ptr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55554445"
    )
        port map (
      I0 => M_AXI_WLAST_i_i_2_n_0,
      I1 => be(31),
      I2 => \mi_burst_reg_n_0_[0]\,
      I3 => \mi_burst_reg_n_0_[1]\,
      I4 => mi_last,
      I5 => load_mi_ptr,
      O => \mi_ptr[6]_i_2_n_0\
    );
\mi_ptr[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01111000"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => mi_last,
      I2 => mi_buf_addr(5),
      I3 => \mi_ptr[6]_i_5_n_0\,
      I4 => mi_buf_addr(6),
      O => \mi_ptr[6]_i_3_n_0\
    );
\mi_ptr[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0D0D0F00"
    )
        port map (
      I0 => next_mi_burst(1),
      I1 => next_mi_burst(0),
      I2 => M_AXI_WLAST_i_i_2_n_0,
      I3 => \mi_be[22]_i_4_n_0\,
      I4 => mi_last,
      O => \mi_ptr[6]_i_4_n_0\
    );
\mi_ptr[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => mi_buf_addr(3),
      I1 => mi_buf_addr(2),
      I2 => mi_buf_addr(0),
      I3 => mi_buf_addr(1),
      I4 => mi_buf_addr(4),
      O => \mi_ptr[6]_i_5_n_0\
    );
\mi_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_ptr[6]_i_2_n_0\,
      D => \mi_ptr[0]_i_1_n_0\,
      Q => mi_buf_addr(0),
      R => \mi_ptr[6]_i_1_n_0\
    );
\mi_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_ptr[6]_i_2_n_0\,
      D => \mi_ptr[1]_i_1_n_0\,
      Q => mi_buf_addr(1),
      R => \mi_ptr[6]_i_1_n_0\
    );
\mi_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_ptr[6]_i_2_n_0\,
      D => \mi_ptr_reg[2]_i_1_n_0\,
      Q => mi_buf_addr(2),
      R => \mi_ptr[6]_i_1_n_0\
    );
\mi_ptr_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_ptr[2]_i_2_n_0\,
      I1 => \mi_ptr[2]_i_3_n_0\,
      O => \mi_ptr_reg[2]_i_1_n_0\,
      S => load_mi_ptr
    );
\mi_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_ptr[6]_i_2_n_0\,
      D => \mi_ptr[3]_i_1_n_0\,
      Q => mi_buf_addr(3),
      R => \mi_ptr[6]_i_1_n_0\
    );
\mi_ptr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_ptr[6]_i_2_n_0\,
      D => \mi_ptr[4]_i_1_n_0\,
      Q => mi_buf_addr(4),
      R => \mi_ptr[6]_i_1_n_0\
    );
\mi_ptr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_ptr[6]_i_2_n_0\,
      D => \mi_ptr[5]_i_1_n_0\,
      Q => mi_buf_addr(5),
      R => \mi_ptr[6]_i_1_n_0\
    );
\mi_ptr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_ptr[6]_i_2_n_0\,
      D => \mi_ptr[6]_i_3_n_0\,
      Q => mi_buf_addr(6),
      R => \mi_ptr[6]_i_1_n_0\
    );
\mi_size[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => load_mi_ptr,
      I2 => \next_mi_size_reg_n_0_[0]\,
      O => \mi_size[0]_i_1_n_0\
    );
\mi_size[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[1]\,
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      I2 => load_mi_ptr,
      O => \mi_size[1]_i_1_n_0\
    );
\mi_size[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[2]\,
      I1 => \^goreg_dm.dout_i_reg[25]\(2),
      I2 => load_mi_ptr,
      O => \mi_size[2]_i_1_n_0\
    );
\mi_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_size[0]_i_1_n_0\,
      Q => size(0),
      R => '0'
    );
\mi_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_size[1]_i_1_n_0\,
      Q => size(1),
      R => '0'
    );
\mi_size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_size[2]_i_1_n_0\,
      Q => size(2),
      R => '0'
    );
\mi_wcnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B888B8BB"
    )
        port map (
      I0 => \^d\(0),
      I1 => load_mi_ptr,
      I2 => \next_mi_len_reg_n_0_[0]\,
      I3 => mi_last,
      I4 => \mi_wcnt__0\(0),
      O => \mi_wcnt[0]_i_1_n_0\
    );
\mi_wcnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \^d\(1),
      I1 => load_mi_ptr,
      I2 => p_0_in_0(0),
      I3 => mi_last,
      I4 => \mi_wcnt__0\(1),
      I5 => \mi_wcnt__0\(0),
      O => \mi_wcnt[1]_i_1_n_0\
    );
\mi_wcnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => \^d\(2),
      I1 => load_mi_ptr,
      I2 => p_0_in_0(1),
      I3 => mi_last,
      I4 => \mi_wcnt__0\(2),
      I5 => \mi_wcnt[2]_i_2_n_0\,
      O => \mi_wcnt[2]_i_1_n_0\
    );
\mi_wcnt[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mi_wcnt__0\(1),
      I1 => \mi_wcnt__0\(0),
      O => \mi_wcnt[2]_i_2_n_0\
    );
\mi_wcnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => \^d\(3),
      I1 => load_mi_ptr,
      I2 => p_0_in_0(2),
      I3 => mi_last,
      I4 => \mi_wcnt__0\(3),
      I5 => \mi_wcnt[3]_i_2_n_0\,
      O => \mi_wcnt[3]_i_1_n_0\
    );
\mi_wcnt[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \mi_wcnt__0\(0),
      I1 => \mi_wcnt__0\(1),
      I2 => \mi_wcnt__0\(2),
      O => \mi_wcnt[3]_i_2_n_0\
    );
\mi_wcnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^d\(4),
      I1 => load_mi_ptr,
      I2 => \next_mi_len_reg_n_0_[4]\,
      I3 => mi_last,
      I4 => \mi_wcnt[4]_i_2_n_0\,
      O => \mi_wcnt[4]_i_1_n_0\
    );
\mi_wcnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \mi_wcnt__0\(4),
      I1 => \mi_wcnt__0\(3),
      I2 => \mi_wcnt__0\(0),
      I3 => \mi_wcnt__0\(1),
      I4 => \mi_wcnt__0\(2),
      O => \mi_wcnt[4]_i_2_n_0\
    );
\mi_wcnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B8BB"
    )
        port map (
      I0 => \^d\(5),
      I1 => load_mi_ptr,
      I2 => \next_mi_len_reg_n_0_[5]\,
      I3 => mi_last,
      I4 => \mi_wcnt__0\(5),
      I5 => \mi_wcnt[5]_i_2_n_0\,
      O => \mi_wcnt[5]_i_1_n_0\
    );
\mi_wcnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \mi_wcnt__0\(4),
      I1 => \mi_wcnt__0\(3),
      I2 => \mi_wcnt__0\(2),
      I3 => \mi_wcnt__0\(1),
      I4 => \mi_wcnt__0\(0),
      O => \mi_wcnt[5]_i_2_n_0\
    );
\mi_wcnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8BBB8BBB888"
    )
        port map (
      I0 => \^d\(6),
      I1 => load_mi_ptr,
      I2 => \next_mi_len_reg_n_0_[6]\,
      I3 => mi_last,
      I4 => \mi_wcnt__0\(6),
      I5 => \mi_wcnt[6]_i_2_n_0\,
      O => \mi_wcnt[6]_i_1_n_0\
    );
\mi_wcnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \mi_wcnt__0\(5),
      I1 => \mi_wcnt__0\(0),
      I2 => \mi_wcnt__0\(1),
      I3 => \mi_wcnt__0\(2),
      I4 => \mi_wcnt__0\(3),
      I5 => \mi_wcnt__0\(4),
      O => \mi_wcnt[6]_i_2_n_0\
    );
\mi_wcnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F5"
    )
        port map (
      I0 => M_AXI_WLAST_i_i_2_n_0,
      I1 => next_valid,
      I2 => load_mi_ptr,
      I3 => mi_last,
      O => \mi_wcnt[7]_i_1_n_0\
    );
\mi_wcnt[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^d\(7),
      I1 => load_mi_ptr,
      I2 => \next_mi_len_reg_n_0_[7]\,
      I3 => mi_last,
      I4 => \mi_wcnt[7]_i_3_n_0\,
      O => \mi_wcnt[7]_i_2_n_0\
    );
\mi_wcnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA9AA"
    )
        port map (
      I0 => \mi_wcnt__0\(7),
      I1 => \mi_wcnt__0\(6),
      I2 => \mi_wcnt__0\(5),
      I3 => \mi_wcnt[3]_i_2_n_0\,
      I4 => \mi_wcnt__0\(3),
      I5 => \mi_wcnt__0\(4),
      O => \mi_wcnt[7]_i_3_n_0\
    );
\mi_wcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_wcnt[7]_i_1_n_0\,
      D => \mi_wcnt[0]_i_1_n_0\,
      Q => \mi_wcnt__0\(0),
      R => '0'
    );
\mi_wcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_wcnt[7]_i_1_n_0\,
      D => \mi_wcnt[1]_i_1_n_0\,
      Q => \mi_wcnt__0\(1),
      R => '0'
    );
\mi_wcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_wcnt[7]_i_1_n_0\,
      D => \mi_wcnt[2]_i_1_n_0\,
      Q => \mi_wcnt__0\(2),
      R => '0'
    );
\mi_wcnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_wcnt[7]_i_1_n_0\,
      D => \mi_wcnt[3]_i_1_n_0\,
      Q => \mi_wcnt__0\(3),
      R => '0'
    );
\mi_wcnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_wcnt[7]_i_1_n_0\,
      D => \mi_wcnt[4]_i_1_n_0\,
      Q => \mi_wcnt__0\(4),
      R => '0'
    );
\mi_wcnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_wcnt[7]_i_1_n_0\,
      D => \mi_wcnt[5]_i_1_n_0\,
      Q => \mi_wcnt__0\(5),
      R => '0'
    );
\mi_wcnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_wcnt[7]_i_1_n_0\,
      D => \mi_wcnt[6]_i_1_n_0\,
      Q => \mi_wcnt__0\(6),
      R => '0'
    );
\mi_wcnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_wcnt[7]_i_1_n_0\,
      D => \mi_wcnt[7]_i_2_n_0\,
      Q => \mi_wcnt__0\(7),
      R => '0'
    );
\mi_wrap_be_next[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E000EEEEEEEE"
    )
        port map (
      I0 => \mi_wrap_be_next[0]_i_2_n_0\,
      I1 => \mi_wrap_be_next[1]_i_2_n_0\,
      I2 => \mi_wrap_be_next[0]_i_3_n_0\,
      I3 => \mi_wrap_be_next[0]_i_4_n_0\,
      I4 => \mi_wrap_be_next[0]_i_5_n_0\,
      I5 => \mi_wrap_be_next[1]_i_3_n_0\,
      O => \mi_wrap_be_next[0]_i_1_n_0\
    );
\mi_wrap_be_next[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000F0001"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[3]\,
      I1 => \mi_wrap_be_next[16]_i_5_n_0\,
      I2 => \next_mi_size_reg_n_0_[1]\,
      I3 => \next_mi_size_reg_n_0_[0]\,
      I4 => p_0_in_0(2),
      I5 => \next_mi_addr_reg_n_0_[4]\,
      O => \mi_wrap_be_next[0]_i_2_n_0\
    );
\mi_wrap_be_next[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC0E0C0F0"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^d\(2),
      I2 => \mi_wrap_be_next[4]_i_2_n_0\,
      I3 => \^m_axi_awaddr\(2),
      I4 => \^m_axi_awaddr\(1),
      I5 => \^d\(3),
      O => \mi_wrap_be_next[0]_i_3_n_0\
    );
\mi_wrap_be_next[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(1),
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      O => \mi_wrap_be_next[0]_i_4_n_0\
    );
\mi_wrap_be_next[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(3),
      I1 => \^m_axi_awaddr\(4),
      O => \mi_wrap_be_next[0]_i_5_n_0\
    );
\mi_wrap_be_next[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F0000008F8F8F8F"
    )
        port map (
      I0 => \mi_wrap_be_next[10]_i_2_n_0\,
      I1 => \mi_wrap_be_next[10]_i_3_n_0\,
      I2 => \mi_wrap_be_next[11]_i_3_n_0\,
      I3 => \mi_wrap_be_next[10]_i_4_n_0\,
      I4 => \mi_wrap_be_next[10]_i_5_n_0\,
      I5 => \mi_wrap_be_next[11]_i_2_n_0\,
      O => \mi_wrap_be_next[10]_i_1_n_0\
    );
\mi_wrap_be_next[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => \next_mi_size_reg_n_0_[0]\,
      I4 => \next_mi_size_reg_n_0_[1]\,
      O => \mi_wrap_be_next[10]_i_2_n_0\
    );
\mi_wrap_be_next[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[2]\,
      I1 => \next_mi_addr_reg_n_0_[1]\,
      I2 => \next_mi_addr_reg_n_0_[3]\,
      I3 => \next_mi_addr_reg_n_0_[4]\,
      O => \mi_wrap_be_next[10]_i_3_n_0\
    );
\mi_wrap_be_next[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^d\(2),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^d\(3),
      I4 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_wrap_be_next[10]_i_4_n_0\
    );
\mi_wrap_be_next[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^m_axi_awaddr\(4),
      I1 => \^m_axi_awaddr\(3),
      I2 => \^m_axi_awaddr\(1),
      I3 => \^m_axi_awaddr\(2),
      O => \mi_wrap_be_next[10]_i_5_n_0\
    );
\mi_wrap_be_next[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mi_wrap_be_next[11]_i_2_n_0\,
      I1 => \mi_wrap_be_next[11]_i_3_n_0\,
      O => \mi_wrap_be_next[11]_i_1_n_0\
    );
\mi_wrap_be_next[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444404444444"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => load_mi_ptr,
      I2 => \mi_wrap_be_next[30]_i_4_n_0\,
      I3 => \mi_wrap_be_next[13]_i_2_n_0\,
      I4 => \^goreg_dm.dout_i_reg[25]\(1),
      I5 => \^goreg_dm.dout_i_reg[25]\(0),
      O => \mi_wrap_be_next[11]_i_2_n_0\
    );
\mi_wrap_be_next[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111011"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => \next_mi_size_reg_n_0_[2]\,
      I2 => \mi_wrap_be_next[14]_i_4_n_0\,
      I3 => \next_mi_size_reg_n_0_[1]\,
      I4 => \next_mi_size_reg_n_0_[0]\,
      O => \mi_wrap_be_next[11]_i_3_n_0\
    );
\mi_wrap_be_next[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888A88"
    )
        port map (
      I0 => \mi_wrap_be_next[12]_i_2_n_0\,
      I1 => \mi_wrap_be_next[12]_i_3_n_0\,
      I2 => \mi_wrap_be_next[12]_i_4_n_0\,
      I3 => \^m_axi_awaddr\(3),
      I4 => \^m_axi_awaddr\(4),
      I5 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_wrap_be_next[12]_i_1_n_0\
    );
\mi_wrap_be_next[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555755555"
    )
        port map (
      I0 => \mi_wrap_be_next[13]_i_5_n_0\,
      I1 => \next_mi_size_reg_n_0_[1]\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      I3 => \next_mi_addr_reg_n_0_[4]\,
      I4 => \next_mi_addr_reg_n_0_[3]\,
      I5 => \mi_wrap_be_next[28]_i_4_n_0\,
      O => \mi_wrap_be_next[12]_i_2_n_0\
    );
\mi_wrap_be_next[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFBBBBBBBBBBBBB"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => load_mi_ptr,
      I2 => \mi_wrap_be_next[13]_i_4_n_0\,
      I3 => \^goreg_dm.dout_i_reg[25]\(1),
      I4 => \^goreg_dm.dout_i_reg[25]\(0),
      I5 => \mi_wrap_be_next[13]_i_2_n_0\,
      O => \mi_wrap_be_next[12]_i_3_n_0\
    );
\mi_wrap_be_next[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF4FFFFFFFF"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^m_axi_awaddr\(1),
      I2 => \^d\(2),
      I3 => \^d\(3),
      I4 => \^goreg_dm.dout_i_reg[25]\(0),
      I5 => \^m_axi_awaddr\(2),
      O => \mi_wrap_be_next[12]_i_4_n_0\
    );
\mi_wrap_be_next[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF80FF"
    )
        port map (
      I0 => \mi_wrap_be_next[13]_i_2_n_0\,
      I1 => \mi_wrap_be_next[13]_i_3_n_0\,
      I2 => \mi_wrap_be_next[13]_i_4_n_0\,
      I3 => load_mi_ptr,
      I4 => \^goreg_dm.dout_i_reg[25]\(2),
      I5 => \mi_wrap_be_next[13]_i_5_n_0\,
      O => \mi_wrap_be_next[13]_i_1_n_0\
    );
\mi_wrap_be_next[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_axi_awaddr\(3),
      I1 => \^m_axi_awaddr\(4),
      O => \mi_wrap_be_next[13]_i_2_n_0\
    );
\mi_wrap_be_next[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_wrap_be_next[13]_i_3_n_0\
    );
\mi_wrap_be_next[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^d\(3),
      I1 => \^d\(2),
      I2 => \^d\(1),
      I3 => \^m_axi_awaddr\(2),
      O => \mi_wrap_be_next[13]_i_4_n_0\
    );
\mi_wrap_be_next[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1101111111111111"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => \next_mi_size_reg_n_0_[2]\,
      I2 => \next_mi_addr_reg_n_0_[3]\,
      I3 => \next_mi_addr_reg_n_0_[4]\,
      I4 => \next_mi_addr_reg_n_0_[2]\,
      I5 => \mi_wrap_be_next[21]_i_2_n_0\,
      O => \mi_wrap_be_next[13]_i_5_n_0\
    );
\mi_wrap_be_next[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4FFFFFF00"
    )
        port map (
      I0 => \mi_wrap_be_next[14]_i_2_n_0\,
      I1 => \mi_wrap_be_next[30]_i_3_n_0\,
      I2 => \^goreg_dm.dout_i_reg[25]\(2),
      I3 => \mi_wrap_be_next[14]_i_3_n_0\,
      I4 => \next_mi_size_reg_n_0_[2]\,
      I5 => load_mi_ptr,
      O => \mi_wrap_be_next[14]_i_1_n_0\
    );
\mi_wrap_be_next[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^d\(2),
      I2 => \^m_axi_awaddr\(4),
      I3 => \^m_axi_awaddr\(3),
      O => \mi_wrap_be_next[14]_i_2_n_0\
    );
\mi_wrap_be_next[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \next_mi_size_reg_n_0_[1]\,
      I2 => p_0_in_0(2),
      I3 => \next_mi_addr_reg_n_0_[1]\,
      I4 => \next_mi_addr_reg_n_0_[2]\,
      I5 => \mi_wrap_be_next[14]_i_4_n_0\,
      O => \mi_wrap_be_next[14]_i_3_n_0\
    );
\mi_wrap_be_next[14]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_addr_reg_n_0_[3]\,
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => \mi_wrap_be_next[14]_i_4_n_0\
    );
\mi_wrap_be_next[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1010101F"
    )
        port map (
      I0 => \mi_wrap_be_next[16]_i_2_n_0\,
      I1 => \^goreg_dm.dout_i_reg[25]\(2),
      I2 => load_mi_ptr,
      I3 => \next_mi_size_reg_n_0_[2]\,
      I4 => \mi_wrap_be_next[16]_i_3_n_0\,
      I5 => \mi_wrap_be_next[31]_i_1_n_0\,
      O => \mi_wrap_be_next[16]_i_1_n_0\
    );
\mi_wrap_be_next[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000051FF"
    )
        port map (
      I0 => \mi_wrap_be_next[0]_i_5_n_0\,
      I1 => \mi_wrap_be_next[20]_i_6_n_0\,
      I2 => \mi_wrap_be_next[16]_i_4_n_0\,
      I3 => \mi_wrap_be_next[0]_i_4_n_0\,
      I4 => \mi_wrap_be_next[17]_i_3_n_0\,
      I5 => \mi_wrap_be_next[19]_i_3_n_0\,
      O => \mi_wrap_be_next[16]_i_2_n_0\
    );
\mi_wrap_be_next[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22AA20AAAAAAAAAA"
    )
        port map (
      I0 => \mi_wrap_be_next[17]_i_2_n_0\,
      I1 => p_0_in_0(2),
      I2 => \mi_wrap_be_next[16]_i_5_n_0\,
      I3 => \next_mi_addr_reg_n_0_[4]\,
      I4 => \next_mi_addr_reg_n_0_[3]\,
      I5 => \mi_wrap_be_next[31]_i_2_n_0\,
      O => \mi_wrap_be_next[16]_i_3_n_0\
    );
\mi_wrap_be_next[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3302"
    )
        port map (
      I0 => \^m_axi_awaddr\(1),
      I1 => \^d\(2),
      I2 => \^d\(1),
      I3 => \^m_axi_awaddr\(2),
      O => \mi_wrap_be_next[16]_i_4_n_0\
    );
\mi_wrap_be_next[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5504"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => \next_mi_addr_reg_n_0_[1]\,
      I2 => p_0_in_0(0),
      I3 => \next_mi_addr_reg_n_0_[2]\,
      O => \mi_wrap_be_next[16]_i_5_n_0\
    );
\mi_wrap_be_next[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD0DDD0DDD0DD"
    )
        port map (
      I0 => \mi_wrap_be_next[17]_i_2_n_0\,
      I1 => \mi_wrap_be_next[26]_i_4_n_0\,
      I2 => \mi_wrap_be_next[17]_i_3_n_0\,
      I3 => \mi_wrap_be_next[22]_i_5_n_0\,
      I4 => \mi_wrap_be_next[17]_i_4_n_0\,
      I5 => load_mi_ptr,
      O => \mi_wrap_be_next[17]_i_1_n_0\
    );
\mi_wrap_be_next[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555554555"
    )
        port map (
      I0 => \mi_wrap_be_next[19]_i_2_n_0\,
      I1 => \mi_wrap_be_next[17]_i_5_n_0\,
      I2 => \next_mi_addr_reg_n_0_[4]\,
      I3 => \next_mi_size_reg_n_0_[0]\,
      I4 => p_0_in_0(2),
      I5 => \next_mi_size_reg_n_0_[1]\,
      O => \mi_wrap_be_next[17]_i_2_n_0\
    );
\mi_wrap_be_next[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(1),
      I1 => \^d\(3),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^m_axi_awaddr\(4),
      I4 => \mi_wrap_be_next[17]_i_6_n_0\,
      O => \mi_wrap_be_next[17]_i_3_n_0\
    );
\mi_wrap_be_next[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040440000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      I2 => \^d\(1),
      I3 => \^m_axi_awaddr\(3),
      I4 => \^m_axi_awaddr\(4),
      I5 => \^d\(2),
      O => \mi_wrap_be_next[17]_i_4_n_0\
    );
\mi_wrap_be_next[17]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5504"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => \next_mi_addr_reg_n_0_[2]\,
      I2 => p_0_in_0(0),
      I3 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_wrap_be_next[17]_i_5_n_0\
    );
\mi_wrap_be_next[17]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5504"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^m_axi_awaddr\(2),
      I2 => \^d\(1),
      I3 => \^m_axi_awaddr\(3),
      O => \mi_wrap_be_next[17]_i_6_n_0\
    );
\mi_wrap_be_next[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF575757"
    )
        port map (
      I0 => \mi_wrap_be_next[22]_i_5_n_0\,
      I1 => \mi_wrap_be_next[18]_i_2_n_0\,
      I2 => \mi_wrap_be_next[18]_i_3_n_0\,
      I3 => \mi_wrap_be_next[18]_i_4_n_0\,
      I4 => \mi_wrap_be_next[22]_i_3_n_0\,
      I5 => \mi_wrap_be_next[18]_i_5_n_0\,
      O => \mi_wrap_be_next[18]_i_1_n_0\
    );
\mi_wrap_be_next[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBFB"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^m_axi_awaddr\(4),
      I2 => \^m_axi_awaddr\(3),
      I3 => \^d\(1),
      O => \mi_wrap_be_next[18]_i_2_n_0\
    );
\mi_wrap_be_next[18]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^goreg_dm.dout_i_reg[25]\(2),
      I2 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_wrap_be_next[18]_i_3_n_0\
    );
\mi_wrap_be_next[18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^m_axi_awaddr\(3),
      I1 => \^m_axi_awaddr\(4),
      I2 => \^m_axi_awaddr\(1),
      I3 => \^m_axi_awaddr\(2),
      O => \mi_wrap_be_next[18]_i_4_n_0\
    );
\mi_wrap_be_next[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA8AAA8AAA8"
    )
        port map (
      I0 => \mi_wrap_be_next[23]_i_2_n_0\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \next_mi_size_reg_n_0_[2]\,
      I3 => \mi_wrap_be_next[18]_i_6_n_0\,
      I4 => \mi_wrap_be_next[26]_i_2_n_0\,
      I5 => \mi_wrap_be_next[18]_i_7_n_0\,
      O => \mi_wrap_be_next[18]_i_5_n_0\
    );
\mi_wrap_be_next[18]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBFBFFFF"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => \next_mi_addr_reg_n_0_[4]\,
      I2 => \next_mi_addr_reg_n_0_[3]\,
      I3 => p_0_in_0(0),
      I4 => \next_mi_size_reg_n_0_[1]\,
      O => \mi_wrap_be_next[18]_i_6_n_0\
    );
\mi_wrap_be_next[18]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[2]\,
      I1 => \next_mi_addr_reg_n_0_[1]\,
      I2 => \next_mi_addr_reg_n_0_[3]\,
      I3 => \next_mi_addr_reg_n_0_[4]\,
      O => \mi_wrap_be_next[18]_i_7_n_0\
    );
\mi_wrap_be_next[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEE0000EFEEEFEE"
    )
        port map (
      I0 => \mi_wrap_be_next[19]_i_2_n_0\,
      I1 => load_mi_ptr,
      I2 => \mi_wrap_be_next[31]_i_2_n_0\,
      I3 => \next_mi_size_reg_n_0_[2]\,
      I4 => \mi_wrap_be_next[19]_i_3_n_0\,
      I5 => \mi_wrap_be_next[30]_i_2_n_0\,
      O => \mi_wrap_be_next[19]_i_1_n_0\
    );
\mi_wrap_be_next[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC000044040000"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => \next_mi_addr_reg_n_0_[4]\,
      I2 => \next_mi_addr_reg_n_0_[3]\,
      I3 => p_0_in_0(0),
      I4 => \next_mi_size_reg_n_0_[1]\,
      I5 => \next_mi_size_reg_n_0_[0]\,
      O => \mi_wrap_be_next[19]_i_2_n_0\
    );
\mi_wrap_be_next[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC000044040000"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^m_axi_awaddr\(4),
      I2 => \^m_axi_awaddr\(3),
      I3 => \^d\(1),
      I4 => \^goreg_dm.dout_i_reg[25]\(1),
      I5 => \^goreg_dm.dout_i_reg[25]\(0),
      O => \mi_wrap_be_next[19]_i_3_n_0\
    );
\mi_wrap_be_next[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mi_wrap_be_next[1]_i_2_n_0\,
      I1 => \mi_wrap_be_next[1]_i_3_n_0\,
      O => \mi_wrap_be_next[1]_i_1_n_0\
    );
\mi_wrap_be_next[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D555D555D555D5D"
    )
        port map (
      I0 => \mi_wrap_be_next[3]_i_2_n_0\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \next_mi_size_reg_n_0_[1]\,
      I3 => p_0_in_0(2),
      I4 => \mi_wrap_be_next[17]_i_5_n_0\,
      I5 => \next_mi_addr_reg_n_0_[4]\,
      O => \mi_wrap_be_next[1]_i_2_n_0\
    );
\mi_wrap_be_next[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00A8AAAA"
    )
        port map (
      I0 => \mi_wrap_be_next[3]_i_3_n_0\,
      I1 => \mi_wrap_be_next[17]_i_6_n_0\,
      I2 => \^m_axi_awaddr\(4),
      I3 => \^d\(3),
      I4 => \^goreg_dm.dout_i_reg[25]\(0),
      I5 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_wrap_be_next[1]_i_3_n_0\
    );
\mi_wrap_be_next[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2000000F2F2F2F2"
    )
        port map (
      I0 => \mi_wrap_be_next[20]_i_2_n_0\,
      I1 => \mi_wrap_be_next[20]_i_3_n_0\,
      I2 => \mi_wrap_be_next[20]_i_4_n_0\,
      I3 => \mi_wrap_be_next[20]_i_5_n_0\,
      I4 => \mi_wrap_be_next[20]_i_6_n_0\,
      I5 => \mi_wrap_be_next[21]_i_3_n_0\,
      O => \mi_wrap_be_next[20]_i_1_n_0\
    );
\mi_wrap_be_next[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000202"
    )
        port map (
      I0 => \mi_wrap_be_next[20]_i_7_n_0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => \next_mi_addr_reg_n_0_[1]\,
      I5 => \next_mi_size_reg_n_0_[0]\,
      O => \mi_wrap_be_next[20]_i_2_n_0\
    );
\mi_wrap_be_next[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[2]\,
      I1 => \next_mi_addr_reg_n_0_[3]\,
      I2 => \next_mi_addr_reg_n_0_[4]\,
      O => \mi_wrap_be_next[20]_i_3_n_0\
    );
\mi_wrap_be_next[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55D55555"
    )
        port map (
      I0 => \mi_wrap_be_next[23]_i_2_n_0\,
      I1 => \mi_wrap_be_next[21]_i_2_n_0\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      I3 => \next_mi_addr_reg_n_0_[3]\,
      I4 => \next_mi_addr_reg_n_0_[4]\,
      O => \mi_wrap_be_next[20]_i_4_n_0\
    );
\mi_wrap_be_next[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(1),
      I1 => \^goreg_dm.dout_i_reg[25]\(2),
      I2 => \mi_wrap_be_next[12]_i_4_n_0\,
      O => \mi_wrap_be_next[20]_i_5_n_0\
    );
\mi_wrap_be_next[20]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_axi_awaddr\(4),
      I1 => \^m_axi_awaddr\(3),
      O => \mi_wrap_be_next[20]_i_6_n_0\
    );
\mi_wrap_be_next[20]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[2]\,
      I1 => \next_mi_size_reg_n_0_[1]\,
      O => \mi_wrap_be_next[20]_i_7_n_0\
    );
\mi_wrap_be_next[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002000FFFF"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_addr_reg_n_0_[3]\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      I3 => \mi_wrap_be_next[21]_i_2_n_0\,
      I4 => \mi_wrap_be_next[23]_i_2_n_0\,
      I5 => \mi_wrap_be_next[21]_i_3_n_0\,
      O => \mi_wrap_be_next[21]_i_1_n_0\
    );
\mi_wrap_be_next[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => \next_mi_size_reg_n_0_[1]\,
      I4 => \next_mi_size_reg_n_0_[0]\,
      O => \mi_wrap_be_next[21]_i_2_n_0\
    );
\mi_wrap_be_next[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAAAAAAAAAAAA"
    )
        port map (
      I0 => \mi_wrap_be_next[22]_i_5_n_0\,
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^m_axi_awaddr\(3),
      I4 => \^m_axi_awaddr\(4),
      I5 => \mi_wrap_be_next[13]_i_4_n_0\,
      O => \mi_wrap_be_next[21]_i_3_n_0\
    );
\mi_wrap_be_next[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F0000008F8F8F8F"
    )
        port map (
      I0 => \mi_wrap_be_next[26]_i_2_n_0\,
      I1 => \mi_wrap_be_next[22]_i_2_n_0\,
      I2 => \mi_wrap_be_next[23]_i_2_n_0\,
      I3 => \mi_wrap_be_next[22]_i_3_n_0\,
      I4 => \mi_wrap_be_next[22]_i_4_n_0\,
      I5 => \mi_wrap_be_next[22]_i_5_n_0\,
      O => \mi_wrap_be_next[22]_i_1_n_0\
    );
\mi_wrap_be_next[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[3]\,
      I1 => \next_mi_addr_reg_n_0_[4]\,
      I2 => \next_mi_addr_reg_n_0_[1]\,
      I3 => \next_mi_addr_reg_n_0_[2]\,
      O => \mi_wrap_be_next[22]_i_2_n_0\
    );
\mi_wrap_be_next[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(1),
      I1 => \^d\(3),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^d\(2),
      I4 => \^d\(1),
      I5 => \^goreg_dm.dout_i_reg[25]\(2),
      O => \mi_wrap_be_next[22]_i_3_n_0\
    );
\mi_wrap_be_next[22]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^m_axi_awaddr\(1),
      I1 => \^m_axi_awaddr\(2),
      I2 => \^m_axi_awaddr\(3),
      I3 => \^m_axi_awaddr\(4),
      O => \mi_wrap_be_next[22]_i_4_n_0\
    );
\mi_wrap_be_next[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444C444C044C444C"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => load_mi_ptr,
      I2 => \^goreg_dm.dout_i_reg[25]\(1),
      I3 => \^goreg_dm.dout_i_reg[25]\(0),
      I4 => \^m_axi_awaddr\(4),
      I5 => \^d\(1),
      O => \mi_wrap_be_next[22]_i_5_n_0\
    );
\mi_wrap_be_next[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000055555555"
    )
        port map (
      I0 => \mi_wrap_be_next[23]_i_2_n_0\,
      I1 => \^d\(1),
      I2 => \^m_axi_awaddr\(4),
      I3 => \^goreg_dm.dout_i_reg[25]\(0),
      I4 => \^goreg_dm.dout_i_reg[25]\(1),
      I5 => \mi_wrap_be_next[30]_i_2_n_0\,
      O => \mi_wrap_be_next[23]_i_1_n_0\
    );
\mi_wrap_be_next[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010155551555"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \next_mi_size_reg_n_0_[1]\,
      I3 => \next_mi_addr_reg_n_0_[4]\,
      I4 => p_0_in_0(0),
      I5 => \next_mi_size_reg_n_0_[2]\,
      O => \mi_wrap_be_next[23]_i_2_n_0\
    );
\mi_wrap_be_next[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAEA"
    )
        port map (
      I0 => \mi_wrap_be_next[25]_i_3_n_0\,
      I1 => \next_mi_addr_reg_n_0_[3]\,
      I2 => \next_mi_addr_reg_n_0_[4]\,
      I3 => \next_mi_size_reg_n_0_[0]\,
      I4 => \next_mi_size_reg_n_0_[2]\,
      I5 => \mi_wrap_be_next[8]_i_3_n_0\,
      O => \mi_wrap_be_next[24]_i_2_n_0\
    );
\mi_wrap_be_next[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBFBBB"
    )
        port map (
      I0 => \mi_wrap_be_next[25]_i_4_n_0\,
      I1 => \mi_wrap_be_next[24]_i_4_n_0\,
      I2 => \mi_wrap_be_next[25]_i_2_n_0\,
      I3 => \^goreg_dm.dout_i_reg[25]\(1),
      I4 => \^goreg_dm.dout_i_reg[25]\(2),
      I5 => \^goreg_dm.dout_i_reg[25]\(0),
      O => \mi_wrap_be_next[24]_i_3_n_0\
    );
\mi_wrap_be_next[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \mi_wrap_be_next[16]_i_4_n_0\,
      I1 => \^d\(3),
      I2 => \^goreg_dm.dout_i_reg[25]\(1),
      I3 => \mi_wrap_be_next[30]_i_5_n_0\,
      I4 => \^goreg_dm.dout_i_reg[25]\(2),
      I5 => \^goreg_dm.dout_i_reg[25]\(0),
      O => \mi_wrap_be_next[24]_i_4_n_0\
    );
\mi_wrap_be_next[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF000808FF00"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(1),
      I1 => \mi_wrap_be_next[25]_i_2_n_0\,
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \mi_wrap_be_next[25]_i_3_n_0\,
      I4 => load_mi_ptr,
      I5 => \mi_wrap_be_next[25]_i_4_n_0\,
      O => \mi_wrap_be_next[25]_i_1_n_0\
    );
\mi_wrap_be_next[25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^d\(2),
      I2 => \^m_axi_awaddr\(3),
      I3 => \^m_axi_awaddr\(4),
      O => \mi_wrap_be_next[25]_i_2_n_0\
    );
\mi_wrap_be_next[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEAEAEAEAEAEAE"
    )
        port map (
      I0 => \mi_wrap_be_next[27]_i_3_n_0\,
      I1 => \next_mi_size_reg_n_0_[2]\,
      I2 => \mi_wrap_be_next[31]_i_2_n_0\,
      I3 => \mi_wrap_be_next[9]_i_4_n_0\,
      I4 => \next_mi_addr_reg_n_0_[4]\,
      I5 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_wrap_be_next[25]_i_3_n_0\
    );
\mi_wrap_be_next[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8A8A8A8A8A8A8A8"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^m_axi_awaddr\(4),
      I4 => \^m_axi_awaddr\(3),
      I5 => \mi_wrap_be_next[9]_i_2_n_0\,
      O => \mi_wrap_be_next[25]_i_4_n_0\
    );
\mi_wrap_be_next[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFF444"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[2]\,
      I1 => \mi_wrap_be_next[27]_i_3_n_0\,
      I2 => \mi_wrap_be_next[26]_i_2_n_0\,
      I3 => \mi_wrap_be_next[26]_i_3_n_0\,
      I4 => \mi_wrap_be_next[26]_i_4_n_0\,
      I5 => \mi_wrap_be_next[26]_i_5_n_0\,
      O => \mi_wrap_be_next[26]_i_1_n_0\
    );
\mi_wrap_be_next[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \next_mi_size_reg_n_0_[2]\,
      I2 => \next_mi_size_reg_n_0_[1]\,
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      I5 => p_0_in_0(1),
      O => \mi_wrap_be_next[26]_i_2_n_0\
    );
\mi_wrap_be_next[26]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[3]\,
      I1 => \next_mi_addr_reg_n_0_[4]\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      I3 => \next_mi_addr_reg_n_0_[1]\,
      O => \mi_wrap_be_next[26]_i_3_n_0\
    );
\mi_wrap_be_next[26]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => \next_mi_size_reg_n_0_[1]\,
      I2 => \next_mi_size_reg_n_0_[0]\,
      I3 => \next_mi_size_reg_n_0_[2]\,
      O => \mi_wrap_be_next[26]_i_4_n_0\
    );
\mi_wrap_be_next[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A2AAAAAA"
    )
        port map (
      I0 => \mi_wrap_be_next[30]_i_2_n_0\,
      I1 => \mi_wrap_be_next[22]_i_3_n_0\,
      I2 => \^m_axi_awaddr\(2),
      I3 => \^m_axi_awaddr\(1),
      I4 => \mi_wrap_be_next[30]_i_5_n_0\,
      I5 => \mi_wrap_be_next[26]_i_6_n_0\,
      O => \mi_wrap_be_next[26]_i_5_n_0\
    );
\mi_wrap_be_next[26]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \mi_wrap_be_next[30]_i_5_n_0\,
      I1 => \^d\(2),
      I2 => \^d\(1),
      I3 => \^goreg_dm.dout_i_reg[25]\(1),
      I4 => \^goreg_dm.dout_i_reg[25]\(2),
      I5 => \^goreg_dm.dout_i_reg[25]\(0),
      O => \mi_wrap_be_next[26]_i_6_n_0\
    );
\mi_wrap_be_next[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAFAFAEAEAFAE"
    )
        port map (
      I0 => \mi_wrap_be_next[27]_i_2_n_0\,
      I1 => \mi_wrap_be_next[27]_i_3_n_0\,
      I2 => \mi_wrap_be_next[30]_i_2_n_0\,
      I3 => \next_mi_size_reg_n_0_[2]\,
      I4 => \mi_wrap_be_next[31]_i_2_n_0\,
      I5 => load_mi_ptr,
      O => \mi_wrap_be_next[27]_i_1_n_0\
    );
\mi_wrap_be_next[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => load_mi_ptr,
      I2 => \^d\(1),
      I3 => \^d\(2),
      I4 => \mi_wrap_be_next[30]_i_5_n_0\,
      I5 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_wrap_be_next[27]_i_2_n_0\
    );
\mi_wrap_be_next[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => p_0_in_0(1),
      I2 => \next_mi_addr_reg_n_0_[3]\,
      I3 => p_0_in_0(0),
      I4 => \next_mi_size_reg_n_0_[0]\,
      I5 => \next_mi_size_reg_n_0_[1]\,
      O => \mi_wrap_be_next[27]_i_3_n_0\
    );
\mi_wrap_be_next[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA08FA0FFA00FA00"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \mi_wrap_be_next[29]_i_4_n_0\,
      I2 => \next_mi_size_reg_n_0_[1]\,
      I3 => \next_mi_size_reg_n_0_[2]\,
      I4 => \mi_wrap_be_next[28]_i_4_n_0\,
      I5 => \mi_wrap_be_next[28]_i_5_n_0\,
      O => \mi_wrap_be_next[28]_i_2_n_0\
    );
\mi_wrap_be_next[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCC0080FFCC00F0"
    )
        port map (
      I0 => \mi_wrap_be_next[13]_i_4_n_0\,
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      I2 => \mi_wrap_be_next[30]_i_5_n_0\,
      I3 => \^goreg_dm.dout_i_reg[25]\(1),
      I4 => \^goreg_dm.dout_i_reg[25]\(2),
      I5 => \mi_wrap_be_next[12]_i_4_n_0\,
      O => \mi_wrap_be_next[28]_i_3_n_0\
    );
\mi_wrap_be_next[28]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFAE"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \next_mi_addr_reg_n_0_[1]\,
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(2),
      O => \mi_wrap_be_next[28]_i_4_n_0\
    );
\mi_wrap_be_next[28]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[3]\,
      I1 => \next_mi_addr_reg_n_0_[4]\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      O => \mi_wrap_be_next[28]_i_5_n_0\
    );
\mi_wrap_be_next[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mi_wrap_be_next[29]_i_2_n_0\,
      I1 => load_mi_ptr,
      I2 => \mi_wrap_be_next[29]_i_3_n_0\,
      O => \mi_wrap_be_next[29]_i_1_n_0\
    );
\mi_wrap_be_next[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAAA8000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(0),
      I1 => \^m_axi_awaddr\(4),
      I2 => \^m_axi_awaddr\(3),
      I3 => \mi_wrap_be_next[13]_i_4_n_0\,
      I4 => \^goreg_dm.dout_i_reg[25]\(2),
      I5 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_wrap_be_next[29]_i_2_n_0\
    );
\mi_wrap_be_next[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F0F0F0C0C0C0C0"
    )
        port map (
      I0 => \mi_wrap_be_next[29]_i_4_n_0\,
      I1 => \next_mi_size_reg_n_0_[1]\,
      I2 => \next_mi_size_reg_n_0_[2]\,
      I3 => \next_mi_addr_reg_n_0_[2]\,
      I4 => \mi_wrap_be_next[29]_i_5_n_0\,
      I5 => \next_mi_size_reg_n_0_[0]\,
      O => \mi_wrap_be_next[29]_i_3_n_0\
    );
\mi_wrap_be_next[29]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      O => \mi_wrap_be_next[29]_i_4_n_0\
    );
\mi_wrap_be_next[29]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_wrap_be_next[29]_i_5_n_0\
    );
\mi_wrap_be_next[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F0000008F8F8F8F"
    )
        port map (
      I0 => \mi_wrap_be_next[10]_i_4_n_0\,
      I1 => \mi_wrap_be_next[2]_i_2_n_0\,
      I2 => \mi_wrap_be_next[3]_i_3_n_0\,
      I3 => \mi_wrap_be_next[10]_i_2_n_0\,
      I4 => \mi_wrap_be_next[2]_i_3_n_0\,
      I5 => \mi_wrap_be_next[3]_i_2_n_0\,
      O => \mi_wrap_be_next[2]_i_1_n_0\
    );
\mi_wrap_be_next[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^m_axi_awaddr\(3),
      I1 => \^m_axi_awaddr\(4),
      I2 => \^m_axi_awaddr\(1),
      I3 => \^m_axi_awaddr\(2),
      O => \mi_wrap_be_next[2]_i_2_n_0\
    );
\mi_wrap_be_next[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[2]\,
      I1 => \next_mi_addr_reg_n_0_[1]\,
      I2 => \next_mi_addr_reg_n_0_[3]\,
      I3 => \next_mi_addr_reg_n_0_[4]\,
      O => \mi_wrap_be_next[2]_i_3_n_0\
    );
\mi_wrap_be_next[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555D555"
    )
        port map (
      I0 => \mi_wrap_be_next[30]_i_2_n_0\,
      I1 => \mi_wrap_be_next[30]_i_3_n_0\,
      I2 => \mi_wrap_be_next[30]_i_4_n_0\,
      I3 => \mi_wrap_be_next[30]_i_5_n_0\,
      I4 => \^goreg_dm.dout_i_reg[25]\(2),
      I5 => \mi_wrap_be_next[30]_i_6_n_0\,
      O => \mi_wrap_be_next[30]_i_1_n_0\
    );
\mi_wrap_be_next[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AA"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^goreg_dm.dout_i_reg[25]\(2),
      O => \mi_wrap_be_next[30]_i_2_n_0\
    );
\mi_wrap_be_next[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^m_axi_awaddr\(1),
      I1 => \^m_axi_awaddr\(2),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^d\(3),
      I4 => \^goreg_dm.dout_i_reg[25]\(1),
      O => \mi_wrap_be_next[30]_i_3_n_0\
    );
\mi_wrap_be_next[30]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^d\(1),
      O => \mi_wrap_be_next[30]_i_4_n_0\
    );
\mi_wrap_be_next[30]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axi_awaddr\(4),
      I1 => \^m_axi_awaddr\(3),
      O => \mi_wrap_be_next[30]_i_5_n_0\
    );
\mi_wrap_be_next[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFD00FF"
    )
        port map (
      I0 => \mi_wrap_be_next[30]_i_7_n_0\,
      I1 => p_0_in_0(2),
      I2 => \mi_wrap_be_next[30]_i_8_n_0\,
      I3 => \next_mi_size_reg_n_0_[2]\,
      I4 => \mi_wrap_be_next[31]_i_2_n_0\,
      I5 => load_mi_ptr,
      O => \mi_wrap_be_next[30]_i_6_n_0\
    );
\mi_wrap_be_next[30]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => \next_mi_addr_reg_n_0_[3]\,
      I2 => p_0_in_0(1),
      I3 => \next_mi_addr_reg_n_0_[4]\,
      O => \mi_wrap_be_next[30]_i_7_n_0\
    );
\mi_wrap_be_next[30]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[2]\,
      I1 => \next_mi_addr_reg_n_0_[1]\,
      O => \mi_wrap_be_next[30]_i_8_n_0\
    );
\mi_wrap_be_next[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F00022222222"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[2]\,
      I1 => \mi_wrap_be_next[31]_i_2_n_0\,
      I2 => \^goreg_dm.dout_i_reg[25]\(2),
      I3 => \^goreg_dm.dout_i_reg[25]\(0),
      I4 => \^goreg_dm.dout_i_reg[25]\(1),
      I5 => load_mi_ptr,
      O => \mi_wrap_be_next[31]_i_1_n_0\
    );
\mi_wrap_be_next[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[1]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      O => \mi_wrap_be_next[31]_i_2_n_0\
    );
\mi_wrap_be_next[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mi_wrap_be_next[3]_i_2_n_0\,
      I1 => \mi_wrap_be_next[3]_i_3_n_0\,
      O => \mi_wrap_be_next[3]_i_1_n_0\
    );
\mi_wrap_be_next[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1055115510551055"
    )
        port map (
      I0 => \mi_wrap_be_next[7]_i_2_n_0\,
      I1 => p_0_in_0(1),
      I2 => \next_mi_addr_reg_n_0_[4]\,
      I3 => \mi_wrap_be_next[3]_i_4_n_0\,
      I4 => p_0_in_0(0),
      I5 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_wrap_be_next[3]_i_2_n_0\
    );
\mi_wrap_be_next[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA20AA22AA20AA"
    )
        port map (
      I0 => \mi_wrap_be_next[7]_i_3_n_0\,
      I1 => \^d\(2),
      I2 => \^m_axi_awaddr\(4),
      I3 => \mi_wrap_be_next[3]_i_5_n_0\,
      I4 => \^m_axi_awaddr\(3),
      I5 => \^d\(1),
      O => \mi_wrap_be_next[3]_i_3_n_0\
    );
\mi_wrap_be_next[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[1]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      O => \mi_wrap_be_next[3]_i_4_n_0\
    );
\mi_wrap_be_next[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(1),
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      O => \mi_wrap_be_next[3]_i_5_n_0\
    );
\mi_wrap_be_next[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAABAAA"
    )
        port map (
      I0 => \mi_wrap_be_next_reg[5]_i_1_n_0\,
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      I2 => load_mi_ptr,
      I3 => \mi_wrap_be_next[4]_i_2_n_0\,
      I4 => \mi_wrap_be_next[12]_i_4_n_0\,
      I5 => \mi_wrap_be_next[4]_i_3_n_0\,
      O => \mi_wrap_be_next[4]_i_1_n_0\
    );
\mi_wrap_be_next[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_axi_awaddr\(4),
      I1 => \^m_axi_awaddr\(3),
      O => \mi_wrap_be_next[4]_i_2_n_0\
    );
\mi_wrap_be_next[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => \next_mi_size_reg_n_0_[1]\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      I3 => \next_mi_addr_reg_n_0_[3]\,
      I4 => \next_mi_addr_reg_n_0_[4]\,
      I5 => \mi_wrap_be_next[28]_i_4_n_0\,
      O => \mi_wrap_be_next[4]_i_3_n_0\
    );
\mi_wrap_be_next[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAEAAAA"
    )
        port map (
      I0 => \mi_wrap_be_next[5]_i_4_n_0\,
      I1 => \next_mi_addr_reg_n_0_[2]\,
      I2 => \next_mi_addr_reg_n_0_[3]\,
      I3 => \next_mi_addr_reg_n_0_[4]\,
      I4 => \mi_wrap_be_next[21]_i_2_n_0\,
      O => \mi_wrap_be_next[5]_i_2_n_0\
    );
\mi_wrap_be_next[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECCCECCFECCFECC"
    )
        port map (
      I0 => \mi_wrap_be_next[5]_i_5_n_0\,
      I1 => \^goreg_dm.dout_i_reg[25]\(2),
      I2 => \^goreg_dm.dout_i_reg[25]\(1),
      I3 => \^goreg_dm.dout_i_reg[25]\(0),
      I4 => \^d\(1),
      I5 => \^m_axi_awaddr\(4),
      O => \mi_wrap_be_next[5]_i_3_n_0\
    );
\mi_wrap_be_next[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8088"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \next_mi_size_reg_n_0_[1]\,
      I2 => p_0_in_0(0),
      I3 => \next_mi_addr_reg_n_0_[4]\,
      I4 => \next_mi_size_reg_n_0_[2]\,
      O => \mi_wrap_be_next[5]_i_4_n_0\
    );
\mi_wrap_be_next[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \^m_axi_awaddr\(2),
      I1 => \^d\(1),
      I2 => \^d\(2),
      I3 => \^d\(3),
      I4 => \^m_axi_awaddr\(3),
      I5 => \^m_axi_awaddr\(4),
      O => \mi_wrap_be_next[5]_i_5_n_0\
    );
\mi_wrap_be_next[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
        port map (
      I0 => \mi_wrap_be_next[10]_i_2_n_0\,
      I1 => \next_mi_addr_reg_n_0_[2]\,
      I2 => \next_mi_addr_reg_n_0_[1]\,
      I3 => \mi_wrap_be_next[6]_i_2_n_0\,
      I4 => \mi_wrap_be_next[7]_i_2_n_0\,
      I5 => \mi_wrap_be_next[6]_i_3_n_0\,
      O => \mi_wrap_be_next[6]_i_1_n_0\
    );
\mi_wrap_be_next[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_wrap_be_next[6]_i_2_n_0\
    );
\mi_wrap_be_next[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2AAAAAAAAAAAA"
    )
        port map (
      I0 => \mi_wrap_be_next[7]_i_3_n_0\,
      I1 => \^m_axi_awaddr\(1),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^goreg_dm.dout_i_reg[25]\(1),
      I4 => \mi_wrap_be_next[13]_i_4_n_0\,
      I5 => \mi_wrap_be_next[4]_i_2_n_0\,
      O => \mi_wrap_be_next[6]_i_3_n_0\
    );
\mi_wrap_be_next[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mi_wrap_be_next[7]_i_2_n_0\,
      I1 => \mi_wrap_be_next[7]_i_3_n_0\,
      O => \mi_wrap_be_next[7]_i_1_n_0\
    );
\mi_wrap_be_next[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEEEEEEEEEEEE"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => \next_mi_size_reg_n_0_[2]\,
      I2 => \next_mi_addr_reg_n_0_[4]\,
      I3 => p_0_in_0(0),
      I4 => \next_mi_size_reg_n_0_[1]\,
      I5 => \next_mi_size_reg_n_0_[0]\,
      O => \mi_wrap_be_next[7]_i_2_n_0\
    );
\mi_wrap_be_next[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002A2AAA2A"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^m_axi_awaddr\(4),
      I4 => \^d\(1),
      I5 => \^goreg_dm.dout_i_reg[25]\(2),
      O => \mi_wrap_be_next[7]_i_3_n_0\
    );
\mi_wrap_be_next[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEAEAEAEBF"
    )
        port map (
      I0 => \mi_wrap_be_next[9]_i_1_n_0\,
      I1 => load_mi_ptr,
      I2 => \mi_wrap_be_next[8]_i_2_n_0\,
      I3 => \next_mi_size_reg_n_0_[0]\,
      I4 => \mi_wrap_be_next[9]_i_5_n_0\,
      I5 => \mi_wrap_be_next[8]_i_3_n_0\,
      O => \mi_wrap_be_next[8]_i_1_n_0\
    );
\mi_wrap_be_next[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \mi_wrap_be_next[16]_i_4_n_0\,
      I1 => \^m_axi_awaddr\(3),
      I2 => \^m_axi_awaddr\(4),
      I3 => \^goreg_dm.dout_i_reg[25]\(1),
      I4 => \^d\(3),
      I5 => \^goreg_dm.dout_i_reg[25]\(0),
      O => \mi_wrap_be_next[8]_i_2_n_0\
    );
\mi_wrap_be_next[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFEFFFEFE"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => \next_mi_size_reg_n_0_[1]\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      I3 => p_0_in_0(0),
      I4 => \next_mi_addr_reg_n_0_[1]\,
      I5 => p_0_in_0(1),
      O => \mi_wrap_be_next[8]_i_3_n_0\
    );
\mi_wrap_be_next[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005D005D5D5D5D"
    )
        port map (
      I0 => \mi_wrap_be_next[11]_i_2_n_0\,
      I1 => \mi_wrap_be_next[9]_i_2_n_0\,
      I2 => \mi_wrap_be_next[9]_i_3_n_0\,
      I3 => \mi_wrap_be_next[9]_i_4_n_0\,
      I4 => \mi_wrap_be_next[9]_i_5_n_0\,
      I5 => \mi_wrap_be_next[11]_i_3_n_0\,
      O => \mi_wrap_be_next[9]_i_1_n_0\
    );
\mi_wrap_be_next[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => \^d\(3),
      I1 => \^d\(2),
      I2 => \^d\(1),
      I3 => \^m_axi_awaddr\(2),
      O => \mi_wrap_be_next[9]_i_2_n_0\
    );
\mi_wrap_be_next[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(1),
      I1 => \^goreg_dm.dout_i_reg[25]\(0),
      I2 => \^m_axi_awaddr\(4),
      I3 => \^m_axi_awaddr\(3),
      O => \mi_wrap_be_next[9]_i_3_n_0\
    );
\mi_wrap_be_next[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004404"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[1]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(2),
      O => \mi_wrap_be_next[9]_i_4_n_0\
    );
\mi_wrap_be_next[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_wrap_be_next[9]_i_5_n_0\
    );
\mi_wrap_be_next_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[0]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[0]\,
      R => '0'
    );
\mi_wrap_be_next_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[10]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[10]\,
      R => '0'
    );
\mi_wrap_be_next_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[11]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[11]\,
      R => '0'
    );
\mi_wrap_be_next_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[12]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[12]\,
      R => '0'
    );
\mi_wrap_be_next_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[13]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[13]\,
      R => '0'
    );
\mi_wrap_be_next_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[14]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[14]\,
      R => '0'
    );
\mi_wrap_be_next_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[16]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[16]\,
      R => '0'
    );
\mi_wrap_be_next_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[17]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[17]\,
      R => '0'
    );
\mi_wrap_be_next_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[18]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[18]\,
      R => '0'
    );
\mi_wrap_be_next_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[19]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[19]\,
      R => '0'
    );
\mi_wrap_be_next_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[1]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[1]\,
      R => '0'
    );
\mi_wrap_be_next_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[20]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[20]\,
      R => '0'
    );
\mi_wrap_be_next_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[21]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[21]\,
      R => '0'
    );
\mi_wrap_be_next_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[22]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[22]\,
      R => '0'
    );
\mi_wrap_be_next_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[23]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[23]\,
      R => '0'
    );
\mi_wrap_be_next_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next_reg[24]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[24]\,
      R => '0'
    );
\mi_wrap_be_next_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_wrap_be_next[24]_i_2_n_0\,
      I1 => \mi_wrap_be_next[24]_i_3_n_0\,
      O => \mi_wrap_be_next_reg[24]_i_1_n_0\,
      S => load_mi_ptr
    );
\mi_wrap_be_next_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[25]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[25]\,
      R => '0'
    );
\mi_wrap_be_next_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[26]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[26]\,
      R => '0'
    );
\mi_wrap_be_next_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[27]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[27]\,
      R => '0'
    );
\mi_wrap_be_next_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next_reg[28]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[28]\,
      R => '0'
    );
\mi_wrap_be_next_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_wrap_be_next[28]_i_2_n_0\,
      I1 => \mi_wrap_be_next[28]_i_3_n_0\,
      O => \mi_wrap_be_next_reg[28]_i_1_n_0\,
      S => load_mi_ptr
    );
\mi_wrap_be_next_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[29]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[29]\,
      R => '0'
    );
\mi_wrap_be_next_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[2]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[2]\,
      R => '0'
    );
\mi_wrap_be_next_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[30]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[30]\,
      R => '0'
    );
\mi_wrap_be_next_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[31]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[31]\,
      R => '0'
    );
\mi_wrap_be_next_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[3]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[3]\,
      R => '0'
    );
\mi_wrap_be_next_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[4]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[4]\,
      R => '0'
    );
\mi_wrap_be_next_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next_reg[5]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[5]\,
      R => '0'
    );
\mi_wrap_be_next_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_wrap_be_next[5]_i_2_n_0\,
      I1 => \mi_wrap_be_next[5]_i_3_n_0\,
      O => \mi_wrap_be_next_reg[5]_i_1_n_0\,
      S => load_mi_ptr
    );
\mi_wrap_be_next_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[6]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[6]\,
      R => '0'
    );
\mi_wrap_be_next_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[7]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[7]\,
      R => '0'
    );
\mi_wrap_be_next_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[8]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[8]\,
      R => '0'
    );
\mi_wrap_be_next_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => mi_wrap_be_next,
      D => \mi_wrap_be_next[9]_i_1_n_0\,
      Q => \mi_wrap_be_next_reg_n_0_[9]\,
      R => '0'
    );
\mi_wrap_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B8BB"
    )
        port map (
      I0 => \mi_wrap_cnt[0]_i_2_n_0\,
      I1 => load_mi_ptr,
      I2 => \mi_wrap_cnt[0]_i_3_n_0\,
      I3 => mi_wrap_cnt(0),
      I4 => mi_last,
      O => \mi_wrap_cnt[0]_i_1_n_0\
    );
\mi_wrap_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33305555333F5555"
    )
        port map (
      I0 => \mi_wrap_cnt[0]_i_4_n_0\,
      I1 => \^m_axi_awaddr\(5),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      I3 => \^goreg_dm.dout_i_reg[25]\(1),
      I4 => \^goreg_dm.dout_i_reg[25]\(2),
      I5 => \^m_axi_awaddr\(4),
      O => \mi_wrap_cnt[0]_i_2_n_0\
    );
\mi_wrap_cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C044C0CCCC44"
    )
        port map (
      I0 => \mi_wrap_cnt[0]_i_5_n_0\,
      I1 => mi_last,
      I2 => \mi_wrap_cnt[0]_i_6_n_0\,
      I3 => \mi_wrap_cnt[0]_i_7_n_0\,
      I4 => \mi_wrap_cnt[0]_i_8_n_0\,
      I5 => \next_mi_addr_reg_n_0_[5]\,
      O => \mi_wrap_cnt[0]_i_3_n_0\
    );
\mi_wrap_cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^m_axi_awaddr\(2),
      I1 => \^m_axi_awaddr\(3),
      I2 => \^goreg_dm.dout_i_reg[25]\(1),
      I3 => \^m_axi_awaddr\(1),
      I4 => \^goreg_dm.dout_i_reg[25]\(0),
      I5 => \^m_axi_awaddr\(0),
      O => \mi_wrap_cnt[0]_i_4_n_0\
    );
\mi_wrap_cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[3]\,
      I1 => \next_mi_addr_reg_n_0_[2]\,
      I2 => \next_mi_size_reg_n_0_[1]\,
      I3 => \next_mi_addr_reg_n_0_[1]\,
      I4 => \next_mi_size_reg_n_0_[0]\,
      I5 => \next_mi_addr_reg_n_0_[0]\,
      O => \mi_wrap_cnt[0]_i_5_n_0\
    );
\mi_wrap_cnt[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \next_mi_addr_reg_n_0_[4]\,
      O => \mi_wrap_cnt[0]_i_6_n_0\
    );
\mi_wrap_cnt[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[2]\,
      I1 => \next_mi_size_reg_n_0_[1]\,
      O => \mi_wrap_cnt[0]_i_7_n_0\
    );
\mi_wrap_cnt[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[2]\,
      I1 => \next_mi_size_reg_n_0_[1]\,
      I2 => \next_mi_size_reg_n_0_[0]\,
      O => \mi_wrap_cnt[0]_i_8_n_0\
    );
\mi_wrap_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => \mi_wrap_cnt[1]_i_2_n_0\,
      I1 => p_0_in_0(0),
      I2 => mi_last,
      I3 => load_mi_ptr,
      I4 => \mi_wrap_cnt[1]_i_3_n_0\,
      O => \mi_wrap_cnt[1]_i_1_n_0\
    );
\mi_wrap_cnt[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FB3BCC00C808"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[5]\,
      I1 => \next_mi_size_reg_n_0_[2]\,
      I2 => \next_mi_size_reg_n_0_[1]\,
      I3 => \next_mi_addr_reg_n_0_[6]\,
      I4 => \next_mi_size_reg_n_0_[0]\,
      I5 => \mi_wrap_cnt[1]_i_4_n_0\,
      O => \mi_wrap_cnt[1]_i_2_n_0\
    );
\mi_wrap_cnt[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444440000F00F"
    )
        port map (
      I0 => \mi_wrap_cnt[1]_i_5_n_0\,
      I1 => \^d\(1),
      I2 => mi_wrap_cnt(1),
      I3 => mi_wrap_cnt(0),
      I4 => mi_last,
      I5 => load_mi_ptr,
      O => \mi_wrap_cnt[1]_i_3_n_0\
    );
\mi_wrap_cnt[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_addr_reg_n_0_[3]\,
      I2 => \next_mi_size_reg_n_0_[1]\,
      I3 => \next_mi_addr_reg_n_0_[2]\,
      I4 => \next_mi_size_reg_n_0_[0]\,
      I5 => \next_mi_addr_reg_n_0_[1]\,
      O => \mi_wrap_cnt[1]_i_4_n_0\
    );
\mi_wrap_cnt[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FB3BCC00C808"
    )
        port map (
      I0 => \^m_axi_awaddr\(5),
      I1 => \^goreg_dm.dout_i_reg[25]\(2),
      I2 => \^goreg_dm.dout_i_reg[25]\(1),
      I3 => \^m_axi_awaddr\(6),
      I4 => \^goreg_dm.dout_i_reg[25]\(0),
      I5 => \mi_wrap_cnt[1]_i_6_n_0\,
      O => \mi_wrap_cnt[1]_i_5_n_0\
    );
\mi_wrap_cnt[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^m_axi_awaddr\(4),
      I1 => \^m_axi_awaddr\(3),
      I2 => \^goreg_dm.dout_i_reg[25]\(1),
      I3 => \^m_axi_awaddr\(2),
      I4 => \^goreg_dm.dout_i_reg[25]\(0),
      I5 => \^m_axi_awaddr\(1),
      O => \mi_wrap_cnt[1]_i_6_n_0\
    );
\mi_wrap_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F202F20202F"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => \mi_wrap_cnt[2]_i_4_n_0\,
      I2 => mi_last,
      I3 => mi_wrap_cnt(2),
      I4 => mi_wrap_cnt(0),
      I5 => mi_wrap_cnt(1),
      O => \mi_wrap_cnt[2]_i_2_n_0\
    );
\mi_wrap_cnt[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A02A2A0AA02A2"
    )
        port map (
      I0 => \^d\(2),
      I1 => \mi_wrap_cnt[2]_i_5_n_0\,
      I2 => \mi_wrap_cnt[3]_i_7_n_0\,
      I3 => \^m_axi_awaddr\(7),
      I4 => \mi_be[31]_i_4_n_0\,
      I5 => \^m_axi_awaddr\(6),
      O => \mi_wrap_cnt[2]_i_3_n_0\
    );
\mi_wrap_cnt[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE000200"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[6]\,
      I1 => \next_mi_size_reg_n_0_[1]\,
      I2 => \next_mi_size_reg_n_0_[0]\,
      I3 => \next_mi_size_reg_n_0_[2]\,
      I4 => \next_mi_addr_reg_n_0_[7]\,
      I5 => \mi_wrap_cnt[2]_i_6_n_0\,
      O => \mi_wrap_cnt[2]_i_4_n_0\
    );
\mi_wrap_cnt[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFA0A0CFC0CFC0"
    )
        port map (
      I0 => \^m_axi_awaddr\(5),
      I1 => \^m_axi_awaddr\(4),
      I2 => \^goreg_dm.dout_i_reg[25]\(1),
      I3 => \^m_axi_awaddr\(2),
      I4 => \^m_axi_awaddr\(3),
      I5 => \^goreg_dm.dout_i_reg[25]\(0),
      O => \mi_wrap_cnt[2]_i_5_n_0\
    );
\mi_wrap_cnt[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3202323232020202"
    )
        port map (
      I0 => \mi_wrap_cnt[2]_i_7_n_0\,
      I1 => \next_mi_size_reg_n_0_[2]\,
      I2 => \next_mi_size_reg_n_0_[1]\,
      I3 => \next_mi_addr_reg_n_0_[5]\,
      I4 => \next_mi_size_reg_n_0_[0]\,
      I5 => \next_mi_addr_reg_n_0_[4]\,
      O => \mi_wrap_cnt[2]_i_6_n_0\
    );
\mi_wrap_cnt[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[3]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \next_mi_addr_reg_n_0_[2]\,
      O => \mi_wrap_cnt[2]_i_7_n_0\
    );
\mi_wrap_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => load_mi_ptr,
      I1 => m_axi_wready,
      I2 => \^m_axi_wvalid_i_reg_0\,
      I3 => load_mi_d1,
      I4 => load_mi_d2,
      O => \mi_wrap_cnt[3]_i_1_n_0\
    );
\mi_wrap_cnt[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => \mi_wrap_cnt[3]_i_5_n_0\,
      I1 => mi_last,
      I2 => mi_wrap_cnt(3),
      I3 => mi_wrap_cnt(2),
      I4 => mi_wrap_cnt(1),
      I5 => mi_wrap_cnt(0),
      O => \mi_wrap_cnt[3]_i_3_n_0\
    );
\mi_wrap_cnt[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A02A2A0AA02A2"
    )
        port map (
      I0 => \^d\(3),
      I1 => \mi_wrap_cnt[3]_i_6_n_0\,
      I2 => \mi_wrap_cnt[3]_i_7_n_0\,
      I3 => \^m_axi_awaddr\(8),
      I4 => \mi_be[31]_i_4_n_0\,
      I5 => \^m_axi_awaddr\(7),
      O => \mi_wrap_cnt[3]_i_4_n_0\
    );
\mi_wrap_cnt[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888AA888A888A88"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => \mi_wrap_cnt[3]_i_8_n_0\,
      I2 => data5(3),
      I3 => \next_mi_size_reg_n_0_[2]\,
      I4 => \next_mi_addr_reg_n_0_[7]\,
      I5 => \mi_wrap_be_next[31]_i_2_n_0\,
      O => \mi_wrap_cnt[3]_i_5_n_0\
    );
\mi_wrap_cnt[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^m_axi_awaddr\(6),
      I1 => \^m_axi_awaddr\(5),
      I2 => \^goreg_dm.dout_i_reg[25]\(1),
      I3 => \^m_axi_awaddr\(4),
      I4 => \^goreg_dm.dout_i_reg[25]\(0),
      I5 => \^m_axi_awaddr\(3),
      O => \mi_wrap_cnt[3]_i_6_n_0\
    );
\mi_wrap_cnt[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[25]\(2),
      I1 => \^goreg_dm.dout_i_reg[25]\(1),
      I2 => \^goreg_dm.dout_i_reg[25]\(0),
      O => \mi_wrap_cnt[3]_i_7_n_0\
    );
\mi_wrap_cnt[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001B1B000000FF"
    )
        port map (
      I0 => \next_mi_size_reg_n_0_[0]\,
      I1 => \next_mi_addr_reg_n_0_[5]\,
      I2 => \next_mi_addr_reg_n_0_[6]\,
      I3 => \mi_wrap_cnt[3]_i_9_n_0\,
      I4 => \next_mi_size_reg_n_0_[2]\,
      I5 => \next_mi_size_reg_n_0_[1]\,
      O => \mi_wrap_cnt[3]_i_8_n_0\
    );
\mi_wrap_cnt[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \next_mi_addr_reg_n_0_[4]\,
      I1 => \next_mi_size_reg_n_0_[0]\,
      I2 => \next_mi_addr_reg_n_0_[3]\,
      O => \mi_wrap_cnt[3]_i_9_n_0\
    );
\mi_wrap_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_wrap_cnt[3]_i_1_n_0\,
      D => \mi_wrap_cnt[0]_i_1_n_0\,
      Q => mi_wrap_cnt(0),
      R => '0'
    );
\mi_wrap_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_wrap_cnt[3]_i_1_n_0\,
      D => \mi_wrap_cnt[1]_i_1_n_0\,
      Q => mi_wrap_cnt(1),
      R => '0'
    );
\mi_wrap_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_wrap_cnt[3]_i_1_n_0\,
      D => \mi_wrap_cnt_reg[2]_i_1_n_0\,
      Q => mi_wrap_cnt(2),
      R => '0'
    );
\mi_wrap_cnt_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_wrap_cnt[2]_i_2_n_0\,
      I1 => \mi_wrap_cnt[2]_i_3_n_0\,
      O => \mi_wrap_cnt_reg[2]_i_1_n_0\,
      S => load_mi_ptr
    );
\mi_wrap_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => \mi_wrap_cnt[3]_i_1_n_0\,
      D => \mi_wrap_cnt_reg[3]_i_2_n_0\,
      Q => mi_wrap_cnt(3),
      R => '0'
    );
\mi_wrap_cnt_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mi_wrap_cnt[3]_i_3_n_0\,
      I1 => \mi_wrap_cnt[3]_i_4_n_0\,
      O => \mi_wrap_cnt_reg[3]_i_2_n_0\,
      S => load_mi_ptr
    );
\mi_wstrb_mask_d2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000040CCCCCCCC"
    )
        port map (
      I0 => addr(0),
      I1 => \mi_be_d1_reg_n_0_[0]\,
      I2 => \mi_wstrb_mask_d2[25]_i_3_n_0\,
      I3 => addr(3),
      I4 => addr(4),
      I5 => mi_first_d1,
      O => mi_wstrb_mask_d20(0)
    );
\mi_wstrb_mask_d2[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000200020"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[26]_i_2_n_0\,
      I1 => \mi_wstrb_mask_d2[10]_i_2_n_0\,
      I2 => \mi_be_d1_reg_n_0_[10]\,
      I3 => \mi_wstrb_mask_d2[28]_i_3_n_0\,
      I4 => \mi_wstrb_mask_d2[14]_i_2_n_0\,
      I5 => \mi_wstrb_mask_d2[26]_i_3_n_0\,
      O => mi_wstrb_mask_d20(10)
    );
\mi_wstrb_mask_d2[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => index(3),
      I1 => mi_last_d1_reg_n_0,
      I2 => index(4),
      O => \mi_wstrb_mask_d2[10]_i_2_n_0\
    );
\mi_wstrb_mask_d2[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A002A002A002A00"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[11]_i_2_n_0\,
      I1 => addr(4),
      I2 => mi_first_d1,
      I3 => \mi_be_d1_reg_n_0_[11]\,
      I4 => addr(3),
      I5 => addr(2),
      O => mi_wstrb_mask_d20(11)
    );
\mi_wstrb_mask_d2[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF800FFFF"
    )
        port map (
      I0 => index(1),
      I1 => index(0),
      I2 => index(2),
      I3 => index(3),
      I4 => mi_last_d1_reg_n_0,
      I5 => index(4),
      O => \mi_wstrb_mask_d2[11]_i_2_n_0\
    );
\mi_wstrb_mask_d2[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA00000000"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[15]_i_2_n_0\,
      I1 => \mi_wstrb_mask_d2[28]_i_2_n_0\,
      I2 => mi_first_d1,
      I3 => addr(2),
      I4 => addr(3),
      I5 => \mi_be_d1_reg_n_0_[12]\,
      O => mi_wstrb_mask_d20(12)
    );
\mi_wstrb_mask_d2[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00000000000000"
    )
        port map (
      I0 => addr(3),
      I1 => \mi_wstrb_mask_d2[13]_i_2_n_0\,
      I2 => addr(1),
      I3 => \mi_be_d1_reg_n_0_[13]\,
      I4 => \mi_wstrb_mask_d2[13]_i_3_n_0\,
      I5 => \mi_wstrb_mask_d2[15]_i_2_n_0\,
      O => mi_wstrb_mask_d20(13)
    );
\mi_wstrb_mask_d2[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mi_first_d1,
      I1 => addr(2),
      O => \mi_wstrb_mask_d2[13]_i_2_n_0\
    );
\mi_wstrb_mask_d2[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => index(4),
      I1 => mi_last_d1_reg_n_0,
      I2 => index(0),
      I3 => index(1),
      O => \mi_wstrb_mask_d2[13]_i_3_n_0\
    );
\mi_wstrb_mask_d2[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700070000000700"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[30]_i_2_n_0\,
      I1 => addr(3),
      I2 => \mi_wstrb_mask_d2[28]_i_3_n_0\,
      I3 => \mi_be_d1_reg_n_0_[14]\,
      I4 => \mi_wstrb_mask_d2[14]_i_2_n_0\,
      I5 => \mi_wstrb_mask_d2[14]_i_3_n_0\,
      O => mi_wstrb_mask_d20(14)
    );
\mi_wstrb_mask_d2[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mi_last_d1_reg_n_0,
      I1 => index(4),
      O => \mi_wstrb_mask_d2[14]_i_2_n_0\
    );
\mi_wstrb_mask_d2[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => index(3),
      I1 => index(2),
      I2 => index(1),
      O => \mi_wstrb_mask_d2[14]_i_3_n_0\
    );
\mi_wstrb_mask_d2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888808880888088"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[15]_i_2_n_0\,
      I1 => \mi_be_d1_reg_n_0_[15]\,
      I2 => index(4),
      I3 => mi_last_d1_reg_n_0,
      I4 => index(0),
      I5 => index(1),
      O => mi_wstrb_mask_d20(15)
    );
\mi_wstrb_mask_d2[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777770007777"
    )
        port map (
      I0 => addr(4),
      I1 => mi_first_d1,
      I2 => index(2),
      I3 => index(3),
      I4 => mi_last_d1_reg_n_0,
      I5 => index(4),
      O => \mi_wstrb_mask_d2[15]_i_2_n_0\
    );
\mi_wstrb_mask_d2[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C000C000C040C0"
    )
        port map (
      I0 => addr(2),
      I1 => \mi_wstrb_mask_d2[23]_i_3_n_0\,
      I2 => \mi_be_d1_reg_n_0_[16]\,
      I3 => \mi_wstrb_mask_d2[28]_i_3_n_0\,
      I4 => addr(0),
      I5 => addr(1),
      O => mi_wstrb_mask_d20(16)
    );
\mi_wstrb_mask_d2[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E000E000000000"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[25]_i_2_n_0\,
      I1 => index(3),
      I2 => \mi_be_d1_reg_n_0_[17]\,
      I3 => \mi_wstrb_mask_d2[28]_i_3_n_0\,
      I4 => \mi_wstrb_mask_d2[25]_i_3_n_0\,
      I5 => \mi_wstrb_mask_d2[23]_i_3_n_0\,
      O => mi_wstrb_mask_d20(17)
    );
\mi_wstrb_mask_d2[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000088808880888"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[19]_i_2_n_0\,
      I1 => \mi_be_d1_reg_n_0_[18]\,
      I2 => \mi_wstrb_mask_d2[28]_i_3_n_0\,
      I3 => \mi_wstrb_mask_d2[18]_i_2_n_0\,
      I4 => \mi_wstrb_mask_d2[26]_i_3_n_0\,
      I5 => \mi_wstrb_mask_d2[23]_i_2_n_0\,
      O => mi_wstrb_mask_d20(18)
    );
\mi_wstrb_mask_d2[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => addr(1),
      I1 => addr(0),
      O => \mi_wstrb_mask_d2[18]_i_2_n_0\
    );
\mi_wstrb_mask_d2[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888808880888088"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[19]_i_2_n_0\,
      I1 => \mi_be_d1_reg_n_0_[19]\,
      I2 => index(2),
      I3 => \mi_wstrb_mask_d2[23]_i_2_n_0\,
      I4 => index(0),
      I5 => index(1),
      O => mi_wstrb_mask_d20(19)
    );
\mi_wstrb_mask_d2[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F3F3F351F3F3F3"
    )
        port map (
      I0 => addr(3),
      I1 => mi_last_d1_reg_n_0,
      I2 => index(4),
      I3 => mi_first_d1,
      I4 => addr(4),
      I5 => addr(2),
      O => \mi_wstrb_mask_d2[19]_i_2_n_0\
    );
\mi_wstrb_mask_d2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFD0000"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[14]_i_2_n_0\,
      I1 => index(0),
      I2 => index(1),
      I3 => \mi_wstrb_mask_d2[1]_i_2_n_0\,
      I4 => \mi_be_d1_reg_n_0_[1]\,
      I5 => \mi_wstrb_mask_d2[1]_i_3_n_0\,
      O => mi_wstrb_mask_d20(1)
    );
\mi_wstrb_mask_d2[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => index(2),
      I1 => index(3),
      O => \mi_wstrb_mask_d2[1]_i_2_n_0\
    );
\mi_wstrb_mask_d2[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => mi_first_d1,
      I1 => addr(4),
      I2 => addr(3),
      I3 => addr(2),
      I4 => addr(1),
      O => \mi_wstrb_mask_d2[1]_i_3_n_0\
    );
\mi_wstrb_mask_d2[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008A008A008A00"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[23]_i_3_n_0\,
      I1 => index(2),
      I2 => \mi_wstrb_mask_d2[23]_i_2_n_0\,
      I3 => \mi_be_d1_reg_n_0_[20]\,
      I4 => \mi_wstrb_mask_d2[20]_i_2_n_0\,
      I5 => addr(4),
      O => mi_wstrb_mask_d20(20)
    );
\mi_wstrb_mask_d2[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => addr(2),
      I1 => mi_first_d1,
      I2 => addr(0),
      I3 => addr(1),
      O => \mi_wstrb_mask_d2[20]_i_2_n_0\
    );
\mi_wstrb_mask_d2[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000D000D000D000"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[23]_i_2_n_0\,
      I1 => \mi_wstrb_mask_d2[21]_i_2_n_0\,
      I2 => \mi_be_d1_reg_n_0_[21]\,
      I3 => \mi_wstrb_mask_d2[23]_i_3_n_0\,
      I4 => \mi_wstrb_mask_d2[21]_i_3_n_0\,
      I5 => addr(4),
      O => mi_wstrb_mask_d20(21)
    );
\mi_wstrb_mask_d2[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => index(2),
      I1 => index(0),
      I2 => index(1),
      O => \mi_wstrb_mask_d2[21]_i_2_n_0\
    );
\mi_wstrb_mask_d2[21]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(1),
      I1 => addr(2),
      I2 => mi_first_d1,
      O => \mi_wstrb_mask_d2[21]_i_3_n_0\
    );
\mi_wstrb_mask_d2[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080808"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[23]_i_3_n_0\,
      I1 => \mi_be_d1_reg_n_0_[22]\,
      I2 => \mi_wstrb_mask_d2[22]_i_2_n_0\,
      I3 => \mi_wstrb_mask_d2[30]_i_2_n_0\,
      I4 => addr(4),
      O => mi_wstrb_mask_d20(22)
    );
\mi_wstrb_mask_d2[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => index(3),
      I1 => mi_last_d1_reg_n_0,
      I2 => index(1),
      I3 => index(2),
      O => \mi_wstrb_mask_d2[22]_i_2_n_0\
    );
\mi_wstrb_mask_d2[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D555000000000000"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[23]_i_2_n_0\,
      I1 => index(2),
      I2 => index(0),
      I3 => index(1),
      I4 => \mi_wstrb_mask_d2[23]_i_3_n_0\,
      I5 => \mi_be_d1_reg_n_0_[23]\,
      O => mi_wstrb_mask_d20(23)
    );
\mi_wstrb_mask_d2[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mi_last_d1_reg_n_0,
      I1 => index(3),
      O => \mi_wstrb_mask_d2[23]_i_2_n_0\
    );
\mi_wstrb_mask_d2[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0BBBBBBB"
    )
        port map (
      I0 => index(4),
      I1 => mi_last_d1_reg_n_0,
      I2 => mi_first_d1,
      I3 => addr(4),
      I4 => addr(3),
      O => \mi_wstrb_mask_d2[23]_i_3_n_0\
    );
\mi_wstrb_mask_d2[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040444444444444"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[26]_i_4_n_0\,
      I1 => \mi_be_d1_reg_n_0_[24]\,
      I2 => \mi_wstrb_mask_d2[25]_i_3_n_0\,
      I3 => addr(0),
      I4 => addr(3),
      I5 => \mi_wstrb_mask_d2[28]_i_3_n_0\,
      O => mi_wstrb_mask_d20(24)
    );
\mi_wstrb_mask_d2[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA2A00000000"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[25]_i_2_n_0\,
      I1 => \mi_wstrb_mask_d2[28]_i_3_n_0\,
      I2 => addr(3),
      I3 => \mi_wstrb_mask_d2[25]_i_3_n_0\,
      I4 => \mi_wstrb_mask_d2[26]_i_4_n_0\,
      I5 => \mi_be_d1_reg_n_0_[25]\,
      O => mi_wstrb_mask_d20(25)
    );
\mi_wstrb_mask_d2[25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => index(0),
      I1 => mi_last_d1_reg_n_0,
      I2 => index(1),
      I3 => index(2),
      O => \mi_wstrb_mask_d2[25]_i_2_n_0\
    );
\mi_wstrb_mask_d2[25]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr(2),
      I1 => addr(1),
      O => \mi_wstrb_mask_d2[25]_i_3_n_0\
    );
\mi_wstrb_mask_d2[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000D0D0D0"
    )
        port map (
      I0 => addr(4),
      I1 => \mi_wstrb_mask_d2[26]_i_2_n_0\,
      I2 => \mi_be_d1_reg_n_0_[26]\,
      I3 => \mi_wstrb_mask_d2[26]_i_3_n_0\,
      I4 => mi_last_d1_reg_n_0,
      I5 => \mi_wstrb_mask_d2[26]_i_4_n_0\,
      O => mi_wstrb_mask_d20(26)
    );
\mi_wstrb_mask_d2[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5777FFFF"
    )
        port map (
      I0 => mi_first_d1,
      I1 => addr(2),
      I2 => addr(0),
      I3 => addr(1),
      I4 => addr(3),
      O => \mi_wstrb_mask_d2[26]_i_2_n_0\
    );
\mi_wstrb_mask_d2[26]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => index(2),
      I1 => index(1),
      O => \mi_wstrb_mask_d2[26]_i_3_n_0\
    );
\mi_wstrb_mask_d2[26]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => index(4),
      I1 => index(3),
      I2 => mi_last_d1_reg_n_0,
      O => \mi_wstrb_mask_d2[26]_i_4_n_0\
    );
\mi_wstrb_mask_d2[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DDD5D5D5"
    )
        port map (
      I0 => mi_last_d1_reg_n_0,
      I1 => index(3),
      I2 => index(2),
      I3 => index(0),
      I4 => index(1),
      I5 => \mi_wstrb_mask_d2[27]_i_2_n_0\,
      O => mi_wstrb_mask_d20(27)
    );
\mi_wstrb_mask_d2[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8000FFFF"
    )
        port map (
      I0 => mi_first_d1,
      I1 => addr(4),
      I2 => addr(2),
      I3 => addr(3),
      I4 => \mi_be_d1_reg_n_0_[27]\,
      I5 => \mi_wstrb_mask_d2[14]_i_2_n_0\,
      O => \mi_wstrb_mask_d2[27]_i_2_n_0\
    );
\mi_wstrb_mask_d2[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA00000000"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[29]_i_4_n_0\,
      I1 => \mi_wstrb_mask_d2[28]_i_2_n_0\,
      I2 => \mi_wstrb_mask_d2[28]_i_3_n_0\,
      I3 => addr(2),
      I4 => addr(3),
      I5 => \mi_be_d1_reg_n_0_[28]\,
      O => mi_wstrb_mask_d20(28)
    );
\mi_wstrb_mask_d2[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr(1),
      I1 => addr(0),
      O => \mi_wstrb_mask_d2[28]_i_2_n_0\
    );
\mi_wstrb_mask_d2[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mi_first_d1,
      I1 => addr(4),
      O => \mi_wstrb_mask_d2[28]_i_3_n_0\
    );
\mi_wstrb_mask_d2[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7070007000000000"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[29]_i_2_n_0\,
      I1 => addr(3),
      I2 => \mi_be_d1_reg_n_0_[29]\,
      I3 => \mi_wstrb_mask_d2[29]_i_3_n_0\,
      I4 => index(1),
      I5 => \mi_wstrb_mask_d2[29]_i_4_n_0\,
      O => mi_wstrb_mask_d20(29)
    );
\mi_wstrb_mask_d2[29]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => mi_first_d1,
      I1 => addr(2),
      I2 => addr(1),
      I3 => addr(4),
      O => \mi_wstrb_mask_d2[29]_i_2_n_0\
    );
\mi_wstrb_mask_d2[29]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mi_last_d1_reg_n_0,
      I1 => index(0),
      O => \mi_wstrb_mask_d2[29]_i_3_n_0\
    );
\mi_wstrb_mask_d2[29]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => index(4),
      I1 => index(2),
      I2 => index(3),
      I3 => mi_last_d1_reg_n_0,
      O => \mi_wstrb_mask_d2[29]_i_4_n_0\
    );
\mi_wstrb_mask_d2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200020202020"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[2]_i_2_n_0\,
      I1 => \mi_wstrb_mask_d2[7]_i_2_n_0\,
      I2 => \mi_be_d1_reg_n_0_[2]\,
      I3 => index(1),
      I4 => index(2),
      I5 => \mi_wstrb_mask_d2[10]_i_2_n_0\,
      O => mi_wstrb_mask_d20(2)
    );
\mi_wstrb_mask_d2[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07FF"
    )
        port map (
      I0 => addr(1),
      I1 => addr(0),
      I2 => addr(2),
      I3 => mi_first_d1,
      O => \mi_wstrb_mask_d2[2]_i_2_n_0\
    );
\mi_wstrb_mask_d2[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F000000"
    )
        port map (
      I0 => addr(4),
      I1 => addr(3),
      I2 => \mi_wstrb_mask_d2[30]_i_2_n_0\,
      I3 => \mi_wstrb_mask_d2[30]_i_3_n_0\,
      I4 => \mi_be_d1_reg_n_0_[30]\,
      O => mi_wstrb_mask_d20(30)
    );
\mi_wstrb_mask_d2[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addr(2),
      I1 => mi_first_d1,
      I2 => addr(0),
      I3 => addr(1),
      O => \mi_wstrb_mask_d2[30]_i_2_n_0\
    );
\mi_wstrb_mask_d2[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => index(4),
      I1 => index(3),
      I2 => index(2),
      I3 => index(1),
      I4 => mi_last_d1_reg_n_0,
      O => \mi_wstrb_mask_d2[30]_i_3_n_0\
    );
\mi_wstrb_mask_d2[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222222222000"
    )
        port map (
      I0 => first_load_mi_d1,
      I1 => load_mi_ptr,
      I2 => m_axi_wready,
      I3 => \^m_axi_wvalid_i_reg_0\,
      I4 => load_mi_d1,
      I5 => load_mi_d2,
      O => mi_wstrb_mask_d2
    );
\mi_wstrb_mask_d2[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FF000000FF00"
    )
        port map (
      I0 => index(1),
      I1 => \mi_wstrb_mask_d2[31]_i_3_n_0\,
      I2 => index(4),
      I3 => \mi_be_d1_reg_n_0_[31]\,
      I4 => mi_last_d1_reg_n_0,
      I5 => index(0),
      O => mi_wstrb_mask_d20(31)
    );
\mi_wstrb_mask_d2[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => index(2),
      I1 => index(3),
      O => \mi_wstrb_mask_d2[31]_i_3_n_0\
    );
\mi_wstrb_mask_d2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FD0000"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[3]_i_2_n_0\,
      I1 => index(2),
      I2 => index(3),
      I3 => \mi_wstrb_mask_d2[13]_i_2_n_0\,
      I4 => \mi_be_d1_reg_n_0_[3]\,
      I5 => \mi_wstrb_mask_d2[7]_i_2_n_0\,
      O => mi_wstrb_mask_d20(3)
    );
\mi_wstrb_mask_d2[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => index(4),
      I1 => mi_last_d1_reg_n_0,
      I2 => index(0),
      I3 => index(1),
      O => \mi_wstrb_mask_d2[3]_i_2_n_0\
    );
\mi_wstrb_mask_d2[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FD00"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[14]_i_2_n_0\,
      I1 => index(3),
      I2 => index(2),
      I3 => \mi_be_d1_reg_n_0_[4]\,
      I4 => \mi_wstrb_mask_d2[7]_i_2_n_0\,
      I5 => \mi_wstrb_mask_d2[20]_i_2_n_0\,
      O => mi_wstrb_mask_d20(4)
    );
\mi_wstrb_mask_d2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000D000D000D00"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[10]_i_2_n_0\,
      I1 => \mi_wstrb_mask_d2[21]_i_2_n_0\,
      I2 => \mi_wstrb_mask_d2[7]_i_2_n_0\,
      I3 => \mi_be_d1_reg_n_0_[5]\,
      I4 => addr(1),
      I5 => \mi_wstrb_mask_d2[13]_i_2_n_0\,
      O => mi_wstrb_mask_d20(5)
    );
\mi_wstrb_mask_d2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000D00"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[22]_i_2_n_0\,
      I1 => index(4),
      I2 => \mi_wstrb_mask_d2[7]_i_2_n_0\,
      I3 => \mi_be_d1_reg_n_0_[6]\,
      I4 => \mi_wstrb_mask_d2[30]_i_2_n_0\,
      O => mi_wstrb_mask_d20(6)
    );
\mi_wstrb_mask_d2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D5550000"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[10]_i_2_n_0\,
      I1 => index(2),
      I2 => index(0),
      I3 => index(1),
      I4 => \mi_be_d1_reg_n_0_[7]\,
      I5 => \mi_wstrb_mask_d2[7]_i_2_n_0\,
      O => mi_wstrb_mask_d20(7)
    );
\mi_wstrb_mask_d2[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => mi_first_d1,
      I1 => addr(3),
      I2 => addr(4),
      O => \mi_wstrb_mask_d2[7]_i_2_n_0\
    );
\mi_wstrb_mask_d2[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AA2A"
    )
        port map (
      I0 => \mi_be_d1_reg_n_0_[8]\,
      I1 => mi_first_d1,
      I2 => addr(0),
      I3 => \mi_wstrb_mask_d2[8]_i_2_n_0\,
      I4 => \mi_wstrb_mask_d2[10]_i_2_n_0\,
      I5 => \mi_wstrb_mask_d2[9]_i_2_n_0\,
      O => mi_wstrb_mask_d20(8)
    );
\mi_wstrb_mask_d2[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr(4),
      I1 => addr(3),
      O => \mi_wstrb_mask_d2[8]_i_2_n_0\
    );
\mi_wstrb_mask_d2[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232303200000000"
    )
        port map (
      I0 => \mi_wstrb_mask_d2[25]_i_2_n_0\,
      I1 => \mi_wstrb_mask_d2[9]_i_2_n_0\,
      I2 => index(4),
      I3 => mi_last_d1_reg_n_0,
      I4 => index(3),
      I5 => \mi_be_d1_reg_n_0_[9]\,
      O => mi_wstrb_mask_d20(9)
    );
\mi_wstrb_mask_d2[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8C8C8C0"
    )
        port map (
      I0 => addr(3),
      I1 => mi_first_d1,
      I2 => addr(4),
      I3 => addr(2),
      I4 => addr(1),
      O => \mi_wstrb_mask_d2[9]_i_2_n_0\
    );
\mi_wstrb_mask_d2_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(0),
      Q => \mi_wstrb_mask_d2_reg_n_0_[0]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(10),
      Q => \mi_wstrb_mask_d2_reg_n_0_[10]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(11),
      Q => \mi_wstrb_mask_d2_reg_n_0_[11]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(12),
      Q => \mi_wstrb_mask_d2_reg_n_0_[12]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(13),
      Q => \mi_wstrb_mask_d2_reg_n_0_[13]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(14),
      Q => \mi_wstrb_mask_d2_reg_n_0_[14]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(15),
      Q => \mi_wstrb_mask_d2_reg_n_0_[15]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(16),
      Q => \mi_wstrb_mask_d2_reg_n_0_[16]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(17),
      Q => \mi_wstrb_mask_d2_reg_n_0_[17]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(18),
      Q => \mi_wstrb_mask_d2_reg_n_0_[18]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(19),
      Q => \mi_wstrb_mask_d2_reg_n_0_[19]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(1),
      Q => \mi_wstrb_mask_d2_reg_n_0_[1]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(20),
      Q => \mi_wstrb_mask_d2_reg_n_0_[20]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(21),
      Q => \mi_wstrb_mask_d2_reg_n_0_[21]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(22),
      Q => \mi_wstrb_mask_d2_reg_n_0_[22]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(23),
      Q => \mi_wstrb_mask_d2_reg_n_0_[23]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(24),
      Q => \mi_wstrb_mask_d2_reg_n_0_[24]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(25),
      Q => \mi_wstrb_mask_d2_reg_n_0_[25]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(26),
      Q => \mi_wstrb_mask_d2_reg_n_0_[26]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(27),
      Q => \mi_wstrb_mask_d2_reg_n_0_[27]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(28),
      Q => \mi_wstrb_mask_d2_reg_n_0_[28]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[29]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(29),
      Q => \mi_wstrb_mask_d2_reg_n_0_[29]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(2),
      Q => \mi_wstrb_mask_d2_reg_n_0_[2]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(30),
      Q => \mi_wstrb_mask_d2_reg_n_0_[30]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(31),
      Q => \mi_wstrb_mask_d2_reg_n_0_[31]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(3),
      Q => \mi_wstrb_mask_d2_reg_n_0_[3]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(4),
      Q => \mi_wstrb_mask_d2_reg_n_0_[4]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(5),
      Q => \mi_wstrb_mask_d2_reg_n_0_[5]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(6),
      Q => \mi_wstrb_mask_d2_reg_n_0_[6]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(7),
      Q => \mi_wstrb_mask_d2_reg_n_0_[7]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(8),
      Q => \mi_wstrb_mask_d2_reg_n_0_[8]\,
      S => \^s_axi_aresetn\
    );
\mi_wstrb_mask_d2_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => \out\,
      CE => mi_wstrb_mask_d2,
      D => mi_wstrb_mask_d20(9),
      Q => \mi_wstrb_mask_d2_reg_n_0_[9]\,
      S => \^s_axi_aresetn\
    );
\next_mi_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^m_axi_awaddr\(0),
      Q => \next_mi_addr_reg_n_0_[0]\,
      R => '0'
    );
\next_mi_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^m_axi_awaddr\(1),
      Q => \next_mi_addr_reg_n_0_[1]\,
      R => '0'
    );
\next_mi_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^m_axi_awaddr\(2),
      Q => \next_mi_addr_reg_n_0_[2]\,
      R => '0'
    );
\next_mi_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^m_axi_awaddr\(3),
      Q => \next_mi_addr_reg_n_0_[3]\,
      R => '0'
    );
\next_mi_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^m_axi_awaddr\(4),
      Q => \next_mi_addr_reg_n_0_[4]\,
      R => '0'
    );
\next_mi_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^m_axi_awaddr\(5),
      Q => \next_mi_addr_reg_n_0_[5]\,
      R => '0'
    );
\next_mi_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^m_axi_awaddr\(6),
      Q => \next_mi_addr_reg_n_0_[6]\,
      R => '0'
    );
\next_mi_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^m_axi_awaddr\(7),
      Q => \next_mi_addr_reg_n_0_[7]\,
      R => '0'
    );
\next_mi_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^m_axi_awaddr\(8),
      Q => data5(3),
      R => '0'
    );
\next_mi_burst_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^goreg_dm.dout_i_reg[22]\(0),
      Q => next_mi_burst(0),
      R => '0'
    );
\next_mi_burst_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^goreg_dm.dout_i_reg[22]\(1),
      Q => next_mi_burst(1),
      R => '0'
    );
\next_mi_last_index_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => mi_last_index_reg(0),
      Q => next_mi_last_index_reg(0),
      R => '0'
    );
\next_mi_last_index_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => mi_last_index_reg(1),
      Q => next_mi_last_index_reg(1),
      R => '0'
    );
\next_mi_last_index_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => mi_last_index_reg(2),
      Q => next_mi_last_index_reg(2),
      R => '0'
    );
\next_mi_last_index_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => mi_last_index_reg(3),
      Q => next_mi_last_index_reg(3),
      R => '0'
    );
\next_mi_last_index_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => mi_last_index_reg(4),
      Q => next_mi_last_index_reg(4),
      R => '0'
    );
\next_mi_len[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mi_state(2),
      I1 => mi_state(1),
      I2 => \next_mi_len[7]_i_2_n_0\,
      O => load_mi_next
    );
\next_mi_len[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => mi_awvalid,
      I1 => mi_state(0),
      I2 => \^m_axi_wlast_i_reg_0\,
      I3 => mi_last,
      I4 => mi_last_d1_reg_n_0,
      O => \next_mi_len[7]_i_2_n_0\
    );
\next_mi_len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^d\(0),
      Q => \next_mi_len_reg_n_0_[0]\,
      R => '0'
    );
\next_mi_len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^d\(1),
      Q => p_0_in_0(0),
      R => '0'
    );
\next_mi_len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^d\(2),
      Q => p_0_in_0(1),
      R => '0'
    );
\next_mi_len_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^d\(3),
      Q => p_0_in_0(2),
      R => '0'
    );
\next_mi_len_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^d\(4),
      Q => \next_mi_len_reg_n_0_[4]\,
      R => '0'
    );
\next_mi_len_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^d\(5),
      Q => \next_mi_len_reg_n_0_[5]\,
      R => '0'
    );
\next_mi_len_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^d\(6),
      Q => \next_mi_len_reg_n_0_[6]\,
      R => '0'
    );
\next_mi_len_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^d\(7),
      Q => \next_mi_len_reg_n_0_[7]\,
      R => '0'
    );
\next_mi_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^goreg_dm.dout_i_reg[25]\(0),
      Q => \next_mi_size_reg_n_0_[0]\,
      R => '0'
    );
\next_mi_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^goreg_dm.dout_i_reg[25]\(1),
      Q => \next_mi_size_reg_n_0_[1]\,
      R => '0'
    );
\next_mi_size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_mi_next,
      D => \^goreg_dm.dout_i_reg[25]\(2),
      Q => \next_mi_size_reg_n_0_[2]\,
      R => '0'
    );
next_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E000E0E0"
    )
        port map (
      I0 => load_mi_next,
      I1 => next_valid,
      I2 => \aresetn_d_reg[1]_0\,
      I3 => M_AXI_WLAST_i_i_2_n_0,
      I4 => mi_last,
      O => next_valid_i_1_n_0
    );
next_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => next_valid_i_1_n_0,
      Q => next_valid,
      R => '0'
    );
s_aw_reg: entity work.design_1_auto_us_df_1_axi_register_slice_v2_1_21_axi_register_slice
     port map (
      D(15) => s_aw_reg_n_4,
      D(14) => s_aw_reg_n_5,
      D(13) => s_aw_reg_n_6,
      D(12) => s_aw_reg_n_7,
      D(11) => s_aw_reg_n_8,
      D(10) => s_aw_reg_n_9,
      D(9) => s_aw_reg_n_10,
      D(8) => s_aw_reg_n_11,
      D(7) => s_aw_reg_n_12,
      D(6) => s_aw_reg_n_13,
      D(5) => s_aw_reg_n_14,
      D(4) => s_aw_reg_n_15,
      D(3) => s_aw_reg_n_16,
      D(2) => s_aw_reg_n_17,
      D(1) => s_aw_reg_n_18,
      D(0) => s_aw_reg_n_19,
      E(0) => s_aw_reg_n_30,
      \FSM_sequential_si_state_reg[0]\ => s_aw_reg_n_36,
      \FSM_sequential_si_state_reg[0]_0\ => \FSM_sequential_si_state_reg[0]_0\,
      \FSM_sequential_si_state_reg[1]\ => \FSM_sequential_si_state_reg[1]_0\,
      \FSM_sequential_si_state_reg[1]_0\(0) => load_si_ptr,
      Q(6 downto 1) => si_buf_addr(6 downto 1),
      Q(0) => \^q\(0),
      SR(0) => \^s_axi_aresetn\,
      S_AXI_WREADY_i_reg => s_aw_reg_n_2,
      S_AXI_WREADY_i_reg_0(0) => s_aw_reg_n_26,
      S_AXI_WREADY_i_reg_1(0) => s_aw_reg_n_33,
      \aresetn_d_reg[1]\ => \aresetn_d_reg[1]\,
      \aresetn_d_reg[1]_0\ => \aresetn_d_reg[1]_1\,
      \aresetn_d_reg[1]_1\ => \aresetn_d_reg[1]_0\,
      aw_pop => aw_pop,
      buf_cnt(1 downto 0) => buf_cnt(1 downto 0),
      \buf_cnt_reg[1]\ => s_aw_reg_n_41,
      \buf_cnt_reg[1]_0\ => s_aw_reg_n_42,
      cmd_push_block0 => cmd_push_block0,
      \m_payload_i_reg[35]\ => \m_payload_i_reg[35]\,
      \m_payload_i_reg[61]\(45 downto 30) => \m_payload_i_reg[61]\(46 downto 31),
      \m_payload_i_reg[61]\(29 downto 0) => \m_payload_i_reg[61]\(29 downto 0),
      \m_payload_i_reg[66]\(63 downto 59) => si_last_index_reg(4 downto 0),
      \m_payload_i_reg[66]\(58 downto 55) => s_awregion_reg(3 downto 0),
      \m_payload_i_reg[66]\(54 downto 51) => s_awqos_reg(3 downto 0),
      \m_payload_i_reg[66]\(50) => s_awlock_reg,
      \m_payload_i_reg[66]\(49 downto 42) => s_awlen_reg(7 downto 0),
      \m_payload_i_reg[66]\(41 downto 38) => s_awcache_reg(3 downto 0),
      \m_payload_i_reg[66]\(37 downto 36) => s_awburst_reg(1 downto 0),
      \m_payload_i_reg[66]\(35) => s_awsize_reg(1),
      \m_payload_i_reg[66]\(34 downto 32) => s_awprot_reg(2 downto 0),
      \m_payload_i_reg[66]\(31 downto 0) => s_awaddr_reg(31 downto 0),
      \m_payload_i_reg[66]_0\(23 downto 0) => \m_payload_i_reg[66]\(23 downto 0),
      m_valid_i_reg_inv => s_axi_awready,
      m_valid_i_reg_inv_0 => m_valid_i_reg_inv,
      \out\ => \out\,
      p_176_in => p_176_in,
      s_axi_awready => aw_ready,
      s_axi_awsize(1) => s_awsize_reg(2),
      s_axi_awsize(0) => s_awsize_reg(0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wlast => s_axi_wlast,
      s_axi_wlast_0 => s_aw_reg_n_39,
      s_axi_wlast_1 => s_aw_reg_n_40,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0(0) => s_aw_reg_n_31,
      s_ready_i_reg => \USE_WRITE.m_axi_awready_i\,
      s_ready_i_reg_0 => s_ready_i_reg,
      \si_be_reg[0]\ => \si_be_reg[0]_0\,
      \si_be_reg[0]_0\ => \si_be[0]_i_3_n_0\,
      \si_be_reg[0]_1\(1 downto 0) => si_burst(1 downto 0),
      \si_be_reg[10]\ => \si_be_reg[10]_0\,
      \si_be_reg[10]_0\ => \si_be[10]_i_3_n_0\,
      \si_be_reg[11]\ => \si_be_reg[11]_0\,
      \si_be_reg[11]_0\ => \si_be[11]_i_3_n_0\,
      \si_be_reg[12]\ => \si_be_reg[12]_0\,
      \si_be_reg[12]_0\ => \si_be[12]_i_3_n_0\,
      \si_be_reg[13]\ => \si_be_reg[13]_0\,
      \si_be_reg[13]_0\ => \si_be[13]_i_3_n_0\,
      \si_be_reg[14]\ => \si_be_reg[14]_0\,
      \si_be_reg[14]_0\ => \si_be[14]_i_3_n_0\,
      \si_be_reg[15]\ => s_aw_reg_n_37,
      \si_be_reg[15]_0\ => \si_size_reg_n_0_[2]\,
      \si_be_reg[15]_1\ => \si_be[15]_i_4_n_0\,
      \si_be_reg[15]_2\ => \si_be_reg[15]_0\,
      \si_be_reg[15]_3\ => \si_be_reg[15]_1\,
      \si_be_reg[1]\ => \si_be_reg[1]_0\,
      \si_be_reg[1]_0\ => \si_be[1]_i_3_n_0\,
      \si_be_reg[2]\ => \si_be_reg[2]_0\,
      \si_be_reg[2]_0\ => \si_be[2]_i_3_n_0\,
      \si_be_reg[3]\ => \si_be_reg[3]_0\,
      \si_be_reg[3]_0\ => \si_be[3]_i_3_n_0\,
      \si_be_reg[4]\ => \si_be_reg[4]_0\,
      \si_be_reg[4]_0\ => \si_be[4]_i_3_n_0\,
      \si_be_reg[5]\ => \si_be_reg[5]_0\,
      \si_be_reg[5]_0\ => \si_be[5]_i_3_n_0\,
      \si_be_reg[6]\ => \si_be_reg[6]_0\,
      \si_be_reg[6]_0\ => \si_be[6]_i_3_n_0\,
      \si_be_reg[7]\ => \si_be_reg[7]_0\,
      \si_be_reg[7]_0\ => \si_be[7]_i_3_n_0\,
      \si_be_reg[8]\ => \si_be_reg[8]_0\,
      \si_be_reg[8]_0\ => \si_be[8]_i_3_n_0\,
      \si_be_reg[9]\ => \si_be_reg[9]_0\,
      \si_be_reg[9]_0\ => \si_be[9]_i_3_n_0\,
      \si_buf_reg[1]\ => \^s_axi_wready_i_reg_0\,
      \si_ptr_reg[0]\ => \si_be[15]_i_3_n_0\,
      \si_ptr_reg[0]_0\(0) => p_1_in,
      \si_ptr_reg[1]\ => \si_ptr_reg[1]_0\,
      \si_ptr_reg[2]\ => \si_ptr_reg[2]_0\,
      \si_ptr_reg[5]\(5) => s_aw_reg_n_20,
      \si_ptr_reg[5]\(4) => s_aw_reg_n_21,
      \si_ptr_reg[5]\(3) => s_aw_reg_n_22,
      \si_ptr_reg[5]\(2) => s_aw_reg_n_23,
      \si_ptr_reg[5]\(1) => s_aw_reg_n_24,
      \si_ptr_reg[5]\(0) => s_aw_reg_n_25,
      \si_ptr_reg[6]\ => \si_ptr[6]_i_4_n_0\,
      si_state(1 downto 0) => si_state(1 downto 0),
      \si_wrap_cnt_reg[1]\ => \si_wrap_cnt_reg[1]_0\,
      \si_wrap_cnt_reg[2]\ => \si_wrap_cnt_reg[2]_0\,
      \si_wrap_cnt_reg[3]\(2 downto 0) => p_0_in(3 downto 1),
      \si_wrap_cnt_reg[3]_0\(3 downto 1) => si_wrap_cnt_reg(3 downto 1),
      \si_wrap_cnt_reg[3]_0\(0) => \^si_wrap_cnt_reg[0]_0\(0),
      \si_wrap_cnt_reg[3]_1\ => \si_wrap_cnt_reg[3]_0\,
      si_wrap_word_next => si_wrap_word_next,
      word => word
    );
\si_be[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB88B8"
    )
        port map (
      I0 => si_wrap_be_next(0),
      I1 => \si_be[15]_i_3_n_0\,
      I2 => \si_be_reg_n_0_[8]\,
      I3 => \si_be[14]_i_4_n_0\,
      I4 => \si_size_reg_n_0_[2]\,
      I5 => \si_be[0]_i_4_n_0\,
      O => \si_be[0]_i_3_n_0\
    );
\si_be[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0ACF0AC0"
    )
        port map (
      I0 => \si_be_reg_n_0_[14]\,
      I1 => \si_be_reg_n_0_[12]\,
      I2 => \si_size_reg_n_0_[1]\,
      I3 => \si_size_reg_n_0_[0]\,
      I4 => p_1_in,
      O => \si_be[0]_i_4_n_0\
    );
\si_be[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB88B8"
    )
        port map (
      I0 => si_wrap_be_next(10),
      I1 => \si_be[15]_i_3_n_0\,
      I2 => \si_be_reg_n_0_[6]\,
      I3 => \si_be[10]_i_4_n_0\,
      I4 => \si_size_reg_n_0_[2]\,
      I5 => \si_be[10]_i_5_n_0\,
      O => \si_be[10]_i_3_n_0\
    );
\si_be[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \si_size_reg_n_0_[0]\,
      I1 => \si_size_reg_n_0_[1]\,
      O => \si_be[10]_i_4_n_0\
    );
\si_be[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA0C0A0C"
    )
        port map (
      I0 => \si_be_reg_n_0_[8]\,
      I1 => \si_be_reg_n_0_[9]\,
      I2 => \si_size_reg_n_0_[1]\,
      I3 => \si_size_reg_n_0_[0]\,
      I4 => \si_be_reg_n_0_[2]\,
      O => \si_be[10]_i_5_n_0\
    );
\si_be[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB88B8"
    )
        port map (
      I0 => si_wrap_be_next(11),
      I1 => \si_be[15]_i_3_n_0\,
      I2 => \si_be_reg_n_0_[3]\,
      I3 => \si_be[14]_i_4_n_0\,
      I4 => \si_size_reg_n_0_[2]\,
      I5 => \si_be[11]_i_5_n_0\,
      O => \si_be[11]_i_3_n_0\
    );
\si_be[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCA00CA"
    )
        port map (
      I0 => \si_be_reg_n_0_[10]\,
      I1 => \si_be_reg_n_0_[9]\,
      I2 => \si_size_reg_n_0_[0]\,
      I3 => \si_size_reg_n_0_[1]\,
      I4 => \si_be_reg_n_0_[7]\,
      O => \si_be[11]_i_5_n_0\
    );
\si_be[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB88B8"
    )
        port map (
      I0 => si_wrap_be_next(12),
      I1 => \si_be[15]_i_3_n_0\,
      I2 => \si_be_reg_n_0_[11]\,
      I3 => \si_be[12]_i_4_n_0\,
      I4 => \si_size_reg_n_0_[2]\,
      I5 => \si_be[12]_i_5_n_0\,
      O => \si_be[12]_i_3_n_0\
    );
\si_be[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \si_size_reg_n_0_[0]\,
      I1 => \si_size_reg_n_0_[1]\,
      O => \si_be[12]_i_4_n_0\
    );
\si_be[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAC00AC0"
    )
        port map (
      I0 => \si_be_reg_n_0_[8]\,
      I1 => \si_be_reg_n_0_[10]\,
      I2 => \si_size_reg_n_0_[0]\,
      I3 => \si_size_reg_n_0_[1]\,
      I4 => \si_be_reg_n_0_[4]\,
      O => \si_be[12]_i_5_n_0\
    );
\si_be[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB88B8"
    )
        port map (
      I0 => si_wrap_be_next(13),
      I1 => \si_be[15]_i_3_n_0\,
      I2 => \si_be_reg_n_0_[11]\,
      I3 => \si_be[13]_i_5_n_0\,
      I4 => \si_size_reg_n_0_[2]\,
      I5 => \si_be[13]_i_6_n_0\,
      O => \si_be[13]_i_3_n_0\
    );
\si_be[13]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \si_size_reg_n_0_[1]\,
      I1 => \si_size_reg_n_0_[0]\,
      O => \si_be[13]_i_5_n_0\
    );
\si_be[13]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \si_be_reg_n_0_[5]\,
      I1 => \si_be_reg_n_0_[9]\,
      I2 => \si_size_reg_n_0_[1]\,
      I3 => \si_size_reg_n_0_[0]\,
      I4 => \si_be_reg_n_0_[12]\,
      O => \si_be[13]_i_6_n_0\
    );
\si_be[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB88B8"
    )
        port map (
      I0 => si_wrap_be_next(14),
      I1 => \si_be[15]_i_3_n_0\,
      I2 => \si_be_reg_n_0_[6]\,
      I3 => \si_be[14]_i_4_n_0\,
      I4 => \si_size_reg_n_0_[2]\,
      I5 => \si_be[14]_i_5_n_0\,
      O => \si_be[14]_i_3_n_0\
    );
\si_be[14]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \si_size_reg_n_0_[0]\,
      I1 => \si_size_reg_n_0_[1]\,
      O => \si_be[14]_i_4_n_0\
    );
\si_be[14]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FAC00AC"
    )
        port map (
      I0 => \si_be_reg_n_0_[12]\,
      I1 => \si_be_reg_n_0_[13]\,
      I2 => \si_size_reg_n_0_[0]\,
      I3 => \si_size_reg_n_0_[1]\,
      I4 => \si_be_reg_n_0_[10]\,
      O => \si_be[14]_i_5_n_0\
    );
\si_be[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => si_wrap_cnt_reg(3),
      I1 => \^si_wrap_cnt_reg[0]_0\(0),
      I2 => si_wrap_cnt_reg(1),
      I3 => si_wrap_cnt_reg(2),
      I4 => si_burst(1),
      I5 => si_burst(0),
      O => \si_be[15]_i_3_n_0\
    );
\si_be[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \si_be_reg_n_0_[11]\,
      I1 => \si_be_reg_n_0_[14]\,
      I2 => \si_be_reg_n_0_[7]\,
      I3 => \si_size_reg_n_0_[1]\,
      I4 => \si_size_reg_n_0_[0]\,
      I5 => \si_be_reg_n_0_[13]\,
      O => \si_be[15]_i_4_n_0\
    );
\si_be[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB88B8"
    )
        port map (
      I0 => si_wrap_be_next(1),
      I1 => \si_be[15]_i_3_n_0\,
      I2 => \si_be_reg_n_0_[9]\,
      I3 => \si_be[14]_i_4_n_0\,
      I4 => \si_size_reg_n_0_[2]\,
      I5 => \si_be[1]_i_5_n_0\,
      O => \si_be[1]_i_3_n_0\
    );
\si_be[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FAC00AC"
    )
        port map (
      I0 => \si_be_reg_n_0_[13]\,
      I1 => \si_be_reg_n_0_[0]\,
      I2 => \si_size_reg_n_0_[1]\,
      I3 => \si_size_reg_n_0_[0]\,
      I4 => p_1_in,
      O => \si_be[1]_i_5_n_0\
    );
\si_be[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB88B8"
    )
        port map (
      I0 => si_wrap_be_next(2),
      I1 => \si_be[15]_i_3_n_0\,
      I2 => \si_be_reg_n_0_[14]\,
      I3 => \si_be[10]_i_4_n_0\,
      I4 => \si_size_reg_n_0_[2]\,
      I5 => \si_be[2]_i_4_n_0\,
      O => \si_be[2]_i_3_n_0\
    );
\si_be[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \si_be_reg_n_0_[10]\,
      I1 => \si_be_reg_n_0_[0]\,
      I2 => \si_size_reg_n_0_[0]\,
      I3 => \si_size_reg_n_0_[1]\,
      I4 => \si_be_reg_n_0_[1]\,
      O => \si_be[2]_i_4_n_0\
    );
\si_be[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB88B8"
    )
        port map (
      I0 => si_wrap_be_next(3),
      I1 => \si_be[15]_i_3_n_0\,
      I2 => \si_be_reg_n_0_[1]\,
      I3 => \si_be[13]_i_5_n_0\,
      I4 => \si_size_reg_n_0_[2]\,
      I5 => \si_be[3]_i_5_n_0\,
      O => \si_be[3]_i_3_n_0\
    );
\si_be[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0FCA00C"
    )
        port map (
      I0 => \si_be_reg_n_0_[11]\,
      I1 => \si_be_reg_n_0_[2]\,
      I2 => \si_size_reg_n_0_[1]\,
      I3 => \si_size_reg_n_0_[0]\,
      I4 => p_1_in,
      O => \si_be[3]_i_5_n_0\
    );
\si_be[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB88B8"
    )
        port map (
      I0 => si_wrap_be_next(4),
      I1 => \si_be[15]_i_3_n_0\,
      I2 => \si_be_reg_n_0_[0]\,
      I3 => \si_be[10]_i_4_n_0\,
      I4 => \si_size_reg_n_0_[2]\,
      I5 => \si_be[4]_i_4_n_0\,
      O => \si_be[4]_i_3_n_0\
    );
\si_be[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \si_be_reg_n_0_[12]\,
      I1 => \si_be_reg_n_0_[2]\,
      I2 => \si_size_reg_n_0_[0]\,
      I3 => \si_size_reg_n_0_[1]\,
      I4 => \si_be_reg_n_0_[3]\,
      O => \si_be[4]_i_4_n_0\
    );
\si_be[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB88B8"
    )
        port map (
      I0 => si_wrap_be_next(5),
      I1 => \si_be[15]_i_3_n_0\,
      I2 => \si_be_reg_n_0_[3]\,
      I3 => \si_be[13]_i_5_n_0\,
      I4 => \si_size_reg_n_0_[2]\,
      I5 => \si_be[5]_i_5_n_0\,
      O => \si_be[5]_i_3_n_0\
    );
\si_be[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0FAC00A"
    )
        port map (
      I0 => \si_be_reg_n_0_[4]\,
      I1 => \si_be_reg_n_0_[13]\,
      I2 => \si_size_reg_n_0_[1]\,
      I3 => \si_size_reg_n_0_[0]\,
      I4 => \si_be_reg_n_0_[1]\,
      O => \si_be[5]_i_5_n_0\
    );
\si_be[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB88B8"
    )
        port map (
      I0 => si_wrap_be_next(6),
      I1 => \si_be[15]_i_3_n_0\,
      I2 => \si_be_reg_n_0_[14]\,
      I3 => \si_be[14]_i_4_n_0\,
      I4 => \si_size_reg_n_0_[2]\,
      I5 => \si_be[6]_i_4_n_0\,
      O => \si_be[6]_i_3_n_0\
    );
\si_be[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0ACF0AC0"
    )
        port map (
      I0 => \si_be_reg_n_0_[2]\,
      I1 => \si_be_reg_n_0_[4]\,
      I2 => \si_size_reg_n_0_[0]\,
      I3 => \si_size_reg_n_0_[1]\,
      I4 => \si_be_reg_n_0_[5]\,
      O => \si_be[6]_i_4_n_0\
    );
\si_be[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB88B8"
    )
        port map (
      I0 => si_wrap_be_next(7),
      I1 => \si_be[15]_i_3_n_0\,
      I2 => \si_be_reg_n_0_[5]\,
      I3 => \si_be[13]_i_5_n_0\,
      I4 => \si_size_reg_n_0_[2]\,
      I5 => \si_be[7]_i_5_n_0\,
      O => \si_be[7]_i_3_n_0\
    );
\si_be[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => \si_be_reg_n_0_[3]\,
      I1 => \si_be_reg_n_0_[6]\,
      I2 => \si_size_reg_n_0_[1]\,
      I3 => \si_size_reg_n_0_[0]\,
      I4 => p_1_in,
      O => \si_be[7]_i_5_n_0\
    );
\si_be[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB88B8"
    )
        port map (
      I0 => si_wrap_be_next(8),
      I1 => \si_be[15]_i_3_n_0\,
      I2 => \si_be_reg_n_0_[0]\,
      I3 => \si_be[14]_i_4_n_0\,
      I4 => \si_size_reg_n_0_[2]\,
      I5 => \si_be[8]_i_4_n_0\,
      O => \si_be[8]_i_3_n_0\
    );
\si_be[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FAC00AC"
    )
        port map (
      I0 => \si_be_reg_n_0_[4]\,
      I1 => \si_be_reg_n_0_[7]\,
      I2 => \si_size_reg_n_0_[1]\,
      I3 => \si_size_reg_n_0_[0]\,
      I4 => \si_be_reg_n_0_[6]\,
      O => \si_be[8]_i_4_n_0\
    );
\si_be[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBB88B8"
    )
        port map (
      I0 => si_wrap_be_next(9),
      I1 => \si_be[15]_i_3_n_0\,
      I2 => \si_be_reg_n_0_[5]\,
      I3 => \si_be[10]_i_4_n_0\,
      I4 => \si_size_reg_n_0_[2]\,
      I5 => \si_be[9]_i_5_n_0\,
      O => \si_be[9]_i_3_n_0\
    );
\si_be[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0CFA0C0"
    )
        port map (
      I0 => \si_be_reg_n_0_[1]\,
      I1 => \si_be_reg_n_0_[7]\,
      I2 => \si_size_reg_n_0_[0]\,
      I3 => \si_size_reg_n_0_[1]\,
      I4 => \si_be_reg_n_0_[8]\,
      O => \si_be[9]_i_5_n_0\
    );
\si_be_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_19,
      Q => \si_be_reg_n_0_[0]\,
      R => '0'
    );
\si_be_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_9,
      Q => \si_be_reg_n_0_[10]\,
      R => '0'
    );
\si_be_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_8,
      Q => \si_be_reg_n_0_[11]\,
      R => '0'
    );
\si_be_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_7,
      Q => \si_be_reg_n_0_[12]\,
      R => '0'
    );
\si_be_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_6,
      Q => \si_be_reg_n_0_[13]\,
      R => '0'
    );
\si_be_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_5,
      Q => \si_be_reg_n_0_[14]\,
      R => '0'
    );
\si_be_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_4,
      Q => p_1_in,
      R => '0'
    );
\si_be_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_18,
      Q => \si_be_reg_n_0_[1]\,
      R => '0'
    );
\si_be_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_17,
      Q => \si_be_reg_n_0_[2]\,
      R => '0'
    );
\si_be_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_16,
      Q => \si_be_reg_n_0_[3]\,
      R => '0'
    );
\si_be_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_15,
      Q => \si_be_reg_n_0_[4]\,
      R => '0'
    );
\si_be_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_14,
      Q => \si_be_reg_n_0_[5]\,
      R => '0'
    );
\si_be_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_13,
      Q => \si_be_reg_n_0_[6]\,
      R => '0'
    );
\si_be_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_12,
      Q => \si_be_reg_n_0_[7]\,
      R => '0'
    );
\si_be_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_11,
      Q => \si_be_reg_n_0_[8]\,
      R => '0'
    );
\si_be_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_31,
      D => s_aw_reg_n_10,
      Q => \si_be_reg_n_0_[9]\,
      R => '0'
    );
\si_buf[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => si_buf_addr(7),
      O => \si_buf[0]_i_1_n_0\
    );
\si_buf[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => si_buf_addr(7),
      I1 => si_buf_addr(8),
      O => \si_buf[1]_i_1_n_0\
    );
\si_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_2,
      D => \si_buf[0]_i_1_n_0\,
      Q => si_buf_addr(7),
      R => \^s_axi_aresetn\
    );
\si_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_2,
      D => \si_buf[1]_i_1_n_0\,
      Q => si_buf_addr(8),
      R => \^s_axi_aresetn\
    );
\si_burst_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \m_payload_i_reg[61]\(32),
      Q => si_burst(0),
      R => '0'
    );
\si_burst_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \m_payload_i_reg[61]\(33),
      Q => si_burst(1),
      R => '0'
    );
\si_ptr[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => si_buf_addr(3),
      I1 => si_buf_addr(2),
      I2 => \^q\(0),
      I3 => si_buf_addr(1),
      I4 => si_buf_addr(4),
      O => \si_ptr[6]_i_4_n_0\
    );
\si_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_30,
      D => \si_ptr_reg[0]_0\(0),
      Q => \^q\(0),
      R => s_aw_reg_n_26
    );
\si_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_30,
      D => s_aw_reg_n_25,
      Q => si_buf_addr(1),
      R => s_aw_reg_n_26
    );
\si_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_30,
      D => s_aw_reg_n_24,
      Q => si_buf_addr(2),
      R => s_aw_reg_n_26
    );
\si_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_30,
      D => s_aw_reg_n_23,
      Q => si_buf_addr(3),
      R => s_aw_reg_n_26
    );
\si_ptr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_30,
      D => s_aw_reg_n_22,
      Q => si_buf_addr(4),
      R => s_aw_reg_n_26
    );
\si_ptr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_30,
      D => s_aw_reg_n_21,
      Q => si_buf_addr(5),
      R => s_aw_reg_n_26
    );
\si_ptr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_30,
      D => s_aw_reg_n_20,
      Q => si_buf_addr(6),
      R => s_aw_reg_n_26
    );
\si_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \m_payload_i_reg[61]\(29),
      Q => \si_size_reg_n_0_[0]\,
      R => '0'
    );
\si_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \m_payload_i_reg[61]\(30),
      Q => \si_size_reg_n_0_[1]\,
      R => '0'
    );
\si_size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \m_payload_i_reg[61]\(31),
      Q => \si_size_reg_n_0_[2]\,
      R => '0'
    );
\si_word_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => s_aw_reg_n_37,
      Q => word,
      R => '0'
    );
\si_wrap_be_next_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \si_wrap_be_next_reg[14]_0\(0),
      Q => si_wrap_be_next(0),
      R => '0'
    );
\si_wrap_be_next_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \si_wrap_be_next_reg[14]_0\(10),
      Q => si_wrap_be_next(10),
      R => '0'
    );
\si_wrap_be_next_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \si_wrap_be_next_reg[14]_0\(11),
      Q => si_wrap_be_next(11),
      R => '0'
    );
\si_wrap_be_next_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \si_wrap_be_next_reg[14]_0\(12),
      Q => si_wrap_be_next(12),
      R => '0'
    );
\si_wrap_be_next_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \si_wrap_be_next_reg[14]_0\(13),
      Q => si_wrap_be_next(13),
      R => '0'
    );
\si_wrap_be_next_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \si_wrap_be_next_reg[14]_0\(14),
      Q => si_wrap_be_next(14),
      R => '0'
    );
\si_wrap_be_next_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \si_wrap_be_next_reg[14]_0\(1),
      Q => si_wrap_be_next(1),
      R => '0'
    );
\si_wrap_be_next_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \si_wrap_be_next_reg[14]_0\(2),
      Q => si_wrap_be_next(2),
      R => '0'
    );
\si_wrap_be_next_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \si_wrap_be_next_reg[14]_0\(3),
      Q => si_wrap_be_next(3),
      R => '0'
    );
\si_wrap_be_next_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \si_wrap_be_next_reg[14]_0\(4),
      Q => si_wrap_be_next(4),
      R => '0'
    );
\si_wrap_be_next_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \si_wrap_be_next_reg[14]_0\(5),
      Q => si_wrap_be_next(5),
      R => '0'
    );
\si_wrap_be_next_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \si_wrap_be_next_reg[14]_0\(6),
      Q => si_wrap_be_next(6),
      R => '0'
    );
\si_wrap_be_next_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \si_wrap_be_next_reg[14]_0\(7),
      Q => si_wrap_be_next(7),
      R => '0'
    );
\si_wrap_be_next_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \si_wrap_be_next_reg[14]_0\(8),
      Q => si_wrap_be_next(8),
      R => '0'
    );
\si_wrap_be_next_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => \si_wrap_be_next_reg[14]_0\(9),
      Q => si_wrap_be_next(9),
      R => '0'
    );
\si_wrap_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_33,
      D => \si_wrap_cnt_reg[0]_1\(0),
      Q => \^si_wrap_cnt_reg[0]_0\(0),
      R => '0'
    );
\si_wrap_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_33,
      D => p_0_in(1),
      Q => si_wrap_cnt_reg(1),
      R => '0'
    );
\si_wrap_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_33,
      D => p_0_in(2),
      Q => si_wrap_cnt_reg(2),
      R => '0'
    );
\si_wrap_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => s_aw_reg_n_33,
      D => p_0_in(3),
      Q => si_wrap_cnt_reg(3),
      R => '0'
    );
\si_wrap_word_next_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => load_si_ptr,
      D => f_si_wrap_word_return,
      Q => si_wrap_word_next,
      R => '0'
    );
w_buffer: entity work.design_1_auto_us_df_1_blk_mem_gen_v8_4_4
     port map (
      addra(8 downto 1) => si_buf_addr(8 downto 1),
      addra(0) => \^q\(0),
      addrb(8 downto 0) => mi_buf_addr(8 downto 0),
      clka => '0',
      clkb => \out\,
      dbiterr => NLW_w_buffer_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(287 downto 144) => dina(143 downto 0),
      dina(143 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      dinb(287 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      douta(287 downto 0) => NLW_w_buffer_douta_UNCONNECTED(287 downto 0),
      doutb(287) => mi_wpayload(287),
      doutb(286 downto 279) => m_axi_wdata(255 downto 248),
      doutb(278) => mi_wpayload(278),
      doutb(277 downto 270) => m_axi_wdata(247 downto 240),
      doutb(269) => mi_wpayload(269),
      doutb(268 downto 261) => m_axi_wdata(239 downto 232),
      doutb(260) => mi_wpayload(260),
      doutb(259 downto 252) => m_axi_wdata(231 downto 224),
      doutb(251) => mi_wpayload(251),
      doutb(250 downto 243) => m_axi_wdata(223 downto 216),
      doutb(242) => mi_wpayload(242),
      doutb(241 downto 234) => m_axi_wdata(215 downto 208),
      doutb(233) => mi_wpayload(233),
      doutb(232 downto 225) => m_axi_wdata(207 downto 200),
      doutb(224) => mi_wpayload(224),
      doutb(223 downto 216) => m_axi_wdata(199 downto 192),
      doutb(215) => mi_wpayload(215),
      doutb(214 downto 207) => m_axi_wdata(191 downto 184),
      doutb(206) => mi_wpayload(206),
      doutb(205 downto 198) => m_axi_wdata(183 downto 176),
      doutb(197) => mi_wpayload(197),
      doutb(196 downto 189) => m_axi_wdata(175 downto 168),
      doutb(188) => mi_wpayload(188),
      doutb(187 downto 180) => m_axi_wdata(167 downto 160),
      doutb(179) => mi_wpayload(179),
      doutb(178 downto 171) => m_axi_wdata(159 downto 152),
      doutb(170) => mi_wpayload(170),
      doutb(169 downto 162) => m_axi_wdata(151 downto 144),
      doutb(161) => mi_wpayload(161),
      doutb(160 downto 153) => m_axi_wdata(143 downto 136),
      doutb(152) => mi_wpayload(152),
      doutb(151 downto 144) => m_axi_wdata(135 downto 128),
      doutb(143) => mi_wpayload(143),
      doutb(142 downto 135) => m_axi_wdata(127 downto 120),
      doutb(134) => mi_wpayload(134),
      doutb(133 downto 126) => m_axi_wdata(119 downto 112),
      doutb(125) => mi_wpayload(125),
      doutb(124 downto 117) => m_axi_wdata(111 downto 104),
      doutb(116) => mi_wpayload(116),
      doutb(115 downto 108) => m_axi_wdata(103 downto 96),
      doutb(107) => mi_wpayload(107),
      doutb(106 downto 99) => m_axi_wdata(95 downto 88),
      doutb(98) => mi_wpayload(98),
      doutb(97 downto 90) => m_axi_wdata(87 downto 80),
      doutb(89) => mi_wpayload(89),
      doutb(88 downto 81) => m_axi_wdata(79 downto 72),
      doutb(80) => mi_wpayload(80),
      doutb(79 downto 72) => m_axi_wdata(71 downto 64),
      doutb(71) => mi_wpayload(71),
      doutb(70 downto 63) => m_axi_wdata(63 downto 56),
      doutb(62) => mi_wpayload(62),
      doutb(61 downto 54) => m_axi_wdata(55 downto 48),
      doutb(53) => mi_wpayload(53),
      doutb(52 downto 45) => m_axi_wdata(47 downto 40),
      doutb(44) => mi_wpayload(44),
      doutb(43 downto 36) => m_axi_wdata(39 downto 32),
      doutb(35) => mi_wpayload(35),
      doutb(34 downto 27) => m_axi_wdata(31 downto 24),
      doutb(26) => mi_wpayload(26),
      doutb(25 downto 18) => m_axi_wdata(23 downto 16),
      doutb(17) => mi_wpayload(17),
      doutb(16 downto 9) => m_axi_wdata(15 downto 8),
      doutb(8) => mi_wpayload(8),
      doutb(7 downto 0) => m_axi_wdata(7 downto 0),
      eccpipece => '0',
      ena => p_176_in,
      enb => mi_buf_en,
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(8 downto 0) => NLW_w_buffer_rdaddrecc_UNCONNECTED(8 downto 0),
      regcea => '1',
      regceb => '1',
      rsta => '0',
      rsta_busy => NLW_w_buffer_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_w_buffer_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_w_buffer_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_w_buffer_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_w_buffer_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_w_buffer_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_w_buffer_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_w_buffer_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(8 downto 0) => NLW_w_buffer_s_axi_rdaddrecc_UNCONNECTED(8 downto 0),
      s_axi_rdata(287 downto 0) => NLW_w_buffer_s_axi_rdata_UNCONNECTED(287 downto 0),
      s_axi_rid(3 downto 0) => NLW_w_buffer_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_w_buffer_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_w_buffer_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_w_buffer_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_w_buffer_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(287 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_w_buffer_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wvalid => '0',
      sbiterr => NLW_w_buffer_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(31 downto 0) => f_si_we_return(31 downto 0),
      web(31 downto 0) => B"00000000000000000000000000000000"
    );
w_buffer_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^s_axi_wready_i_reg_0\,
      O => p_176_in
    );
w_buffer_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word,
      I1 => \si_be_reg_n_0_[7]\,
      O => f_si_we_return(23)
    );
w_buffer_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word,
      I1 => \si_be_reg_n_0_[6]\,
      O => f_si_we_return(22)
    );
w_buffer_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word,
      I1 => \si_be_reg_n_0_[5]\,
      O => f_si_we_return(21)
    );
w_buffer_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word,
      I1 => \si_be_reg_n_0_[4]\,
      O => f_si_we_return(20)
    );
w_buffer_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word,
      I1 => \si_be_reg_n_0_[3]\,
      O => f_si_we_return(19)
    );
w_buffer_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word,
      I1 => \si_be_reg_n_0_[2]\,
      O => f_si_we_return(18)
    );
w_buffer_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word,
      I1 => \si_be_reg_n_0_[1]\,
      O => f_si_we_return(17)
    );
w_buffer_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word,
      I1 => \si_be_reg_n_0_[0]\,
      O => f_si_we_return(16)
    );
w_buffer_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in,
      I1 => word,
      O => f_si_we_return(15)
    );
w_buffer_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \si_be_reg_n_0_[14]\,
      I1 => word,
      O => f_si_we_return(14)
    );
w_buffer_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in,
      I1 => word,
      O => f_si_we_return(31)
    );
w_buffer_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \si_be_reg_n_0_[13]\,
      I1 => word,
      O => f_si_we_return(13)
    );
w_buffer_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \si_be_reg_n_0_[12]\,
      I1 => word,
      O => f_si_we_return(12)
    );
w_buffer_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \si_be_reg_n_0_[11]\,
      I1 => word,
      O => f_si_we_return(11)
    );
w_buffer_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \si_be_reg_n_0_[10]\,
      I1 => word,
      O => f_si_we_return(10)
    );
w_buffer_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \si_be_reg_n_0_[9]\,
      I1 => word,
      O => f_si_we_return(9)
    );
w_buffer_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \si_be_reg_n_0_[8]\,
      I1 => word,
      O => f_si_we_return(8)
    );
w_buffer_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \si_be_reg_n_0_[7]\,
      I1 => word,
      O => f_si_we_return(7)
    );
w_buffer_i_27: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \si_be_reg_n_0_[6]\,
      I1 => word,
      O => f_si_we_return(6)
    );
w_buffer_i_28: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \si_be_reg_n_0_[5]\,
      I1 => word,
      O => f_si_we_return(5)
    );
w_buffer_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \si_be_reg_n_0_[4]\,
      I1 => word,
      O => f_si_we_return(4)
    );
w_buffer_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word,
      I1 => \si_be_reg_n_0_[14]\,
      O => f_si_we_return(30)
    );
w_buffer_i_30: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \si_be_reg_n_0_[3]\,
      I1 => word,
      O => f_si_we_return(3)
    );
w_buffer_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \si_be_reg_n_0_[2]\,
      I1 => word,
      O => f_si_we_return(2)
    );
w_buffer_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \si_be_reg_n_0_[1]\,
      I1 => word,
      O => f_si_we_return(1)
    );
w_buffer_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \si_be_reg_n_0_[0]\,
      I1 => word,
      O => f_si_we_return(0)
    );
w_buffer_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => load_mi_d2,
      I1 => load_mi_d1,
      I2 => \^m_axi_wvalid_i_reg_0\,
      I3 => m_axi_wready,
      O => mi_buf_en
    );
w_buffer_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word,
      I1 => \si_be_reg_n_0_[13]\,
      O => f_si_we_return(29)
    );
w_buffer_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word,
      I1 => \si_be_reg_n_0_[12]\,
      O => f_si_we_return(28)
    );
w_buffer_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word,
      I1 => \si_be_reg_n_0_[11]\,
      O => f_si_we_return(27)
    );
w_buffer_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word,
      I1 => \si_be_reg_n_0_[10]\,
      O => f_si_we_return(26)
    );
w_buffer_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word,
      I1 => \si_be_reg_n_0_[9]\,
      O => f_si_we_return(25)
    );
w_buffer_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => word,
      I1 => \si_be_reg_n_0_[8]\,
      O => f_si_we_return(24)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_axi_upsizer is
  port (
    S_AXI_WREADY_i_reg : out STD_LOGIC;
    M_AXI_WVALID_i_reg : out STD_LOGIC;
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready : out STD_LOGIC;
    M_AXI_WLAST_i_reg : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    dina : in STD_LOGIC_VECTOR ( 143 downto 0 );
    \out\ : in STD_LOGIC;
    \aresetn_d_reg[1]\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 64 downto 0 );
    s_axi_awvalid : in STD_LOGIC
  );
end design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_axi_upsizer;

architecture STRUCTURE of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_axi_upsizer is
  signal \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_319\ : STD_LOGIC;
  signal \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_320\ : STD_LOGIC;
  signal \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_325\ : STD_LOGIC;
  signal \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_361\ : STD_LOGIC;
  signal \USE_WRITE.m_axi_awaddr_i\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \USE_WRITE.m_axi_awburst_i\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \USE_WRITE.m_axi_awlen_i\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \USE_WRITE.m_axi_awready_i\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_ready\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_1\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_2\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_3\ : STD_LOGIC;
  signal cmd_packed_wrap_i1 : STD_LOGIC;
  signal cmd_push_block0 : STD_LOGIC;
  signal f_mi_be_last_index_return : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal f_si_wrap_be_return : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal f_si_wrap_word_return : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_awlock_ii : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal si_buf_addr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal si_register_slice_inst_n_0 : STD_LOGIC;
  signal si_register_slice_inst_n_100 : STD_LOGIC;
  signal si_register_slice_inst_n_101 : STD_LOGIC;
  signal si_register_slice_inst_n_117 : STD_LOGIC;
  signal si_register_slice_inst_n_118 : STD_LOGIC;
  signal si_register_slice_inst_n_119 : STD_LOGIC;
  signal si_register_slice_inst_n_120 : STD_LOGIC;
  signal si_register_slice_inst_n_121 : STD_LOGIC;
  signal si_register_slice_inst_n_122 : STD_LOGIC;
  signal si_register_slice_inst_n_123 : STD_LOGIC;
  signal si_register_slice_inst_n_124 : STD_LOGIC;
  signal si_register_slice_inst_n_13 : STD_LOGIC;
  signal si_register_slice_inst_n_17 : STD_LOGIC;
  signal si_register_slice_inst_n_77 : STD_LOGIC;
  signal si_register_slice_inst_n_78 : STD_LOGIC;
  signal si_register_slice_inst_n_79 : STD_LOGIC;
  signal si_register_slice_inst_n_80 : STD_LOGIC;
  signal si_register_slice_inst_n_81 : STD_LOGIC;
  signal si_register_slice_inst_n_82 : STD_LOGIC;
  signal si_register_slice_inst_n_84 : STD_LOGIC;
  signal si_register_slice_inst_n_85 : STD_LOGIC;
  signal si_register_slice_inst_n_86 : STD_LOGIC;
  signal si_register_slice_inst_n_87 : STD_LOGIC;
  signal si_register_slice_inst_n_88 : STD_LOGIC;
  signal si_register_slice_inst_n_89 : STD_LOGIC;
  signal si_register_slice_inst_n_9 : STD_LOGIC;
  signal si_register_slice_inst_n_90 : STD_LOGIC;
  signal si_register_slice_inst_n_91 : STD_LOGIC;
  signal si_register_slice_inst_n_92 : STD_LOGIC;
  signal si_register_slice_inst_n_93 : STD_LOGIC;
  signal si_register_slice_inst_n_94 : STD_LOGIC;
  signal si_register_slice_inst_n_95 : STD_LOGIC;
  signal si_register_slice_inst_n_96 : STD_LOGIC;
  signal si_register_slice_inst_n_97 : STD_LOGIC;
  signal si_register_slice_inst_n_98 : STD_LOGIC;
  signal si_register_slice_inst_n_99 : STD_LOGIC;
  signal si_wrap_cnt_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sr_awaddr : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal sr_awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sr_awcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sr_awid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sr_awprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sr_awqos : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sr_awregion : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sr_awsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sr_awvalid : STD_LOGIC;
begin
  s_axi_awready <= \^s_axi_awready\;
\USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst\: entity work.design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_w_upsizer_pktfifo
     port map (
      D(7 downto 0) => m_axi_awlen(7 downto 0),
      \FSM_sequential_si_state_reg[0]_0\ => \USE_WRITE.write_addr_inst_n_1\,
      \FSM_sequential_si_state_reg[1]_0\ => \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_325\,
      M_AXI_WLAST_i_reg_0 => M_AXI_WLAST_i_reg,
      M_AXI_WVALID_i_reg_0 => M_AXI_WVALID_i_reg,
      Q(0) => si_buf_addr(0),
      S_AXI_WREADY_i_reg_0 => S_AXI_WREADY_i_reg,
      \USE_WRITE.m_axi_awready_i\ => \USE_WRITE.m_axi_awready_i\,
      \USE_WRITE.wr_cmd_ready\ => \USE_WRITE.wr_cmd_ready\,
      \aresetn_d_reg[1]\ => \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_320\,
      \aresetn_d_reg[1]_0\ => \aresetn_d_reg[1]\,
      \aresetn_d_reg[1]_1\ => si_register_slice_inst_n_0,
      cmd_push_block0 => cmd_push_block0,
      dina(143 downto 0) => dina(143 downto 0),
      f_si_wrap_word_return => f_si_wrap_word_return,
      \goreg_dm.dout_i_reg[22]\(1 downto 0) => m_axi_awburst(1 downto 0),
      \goreg_dm.dout_i_reg[25]\(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_wdata(255 downto 0) => m_axi_wdata(255 downto 0),
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(31 downto 0) => m_axi_wstrb(31 downto 0),
      \m_payload_i_reg[35]\ => si_register_slice_inst_n_81,
      \m_payload_i_reg[61]\(46 downto 43) => sr_awregion(3 downto 0),
      \m_payload_i_reg[61]\(42 downto 39) => sr_awqos(3 downto 0),
      \m_payload_i_reg[61]\(38) => s_axi_awlock_ii,
      \m_payload_i_reg[61]\(37 downto 34) => sr_awcache(3 downto 0),
      \m_payload_i_reg[61]\(33 downto 32) => sr_awburst(1 downto 0),
      \m_payload_i_reg[61]\(31 downto 29) => sr_awsize(2 downto 0),
      \m_payload_i_reg[61]\(28 downto 26) => sr_awprot(2 downto 0),
      \m_payload_i_reg[61]\(25 downto 1) => sr_awaddr(31 downto 7),
      \m_payload_i_reg[61]\(0) => sr_awaddr(4),
      \m_payload_i_reg[66]\(23 downto 19) => f_mi_be_last_index_return(4 downto 0),
      \m_payload_i_reg[66]\(18 downto 17) => \USE_WRITE.m_axi_awlen_i\(7 downto 6),
      \m_payload_i_reg[66]\(16) => si_register_slice_inst_n_9,
      \m_payload_i_reg[66]\(15 downto 13) => \USE_WRITE.m_axi_awlen_i\(4 downto 2),
      \m_payload_i_reg[66]\(12) => si_register_slice_inst_n_13,
      \m_payload_i_reg[66]\(11) => \USE_WRITE.m_axi_awlen_i\(0),
      \m_payload_i_reg[66]\(10 downto 9) => \USE_WRITE.m_axi_awburst_i\(1 downto 0),
      \m_payload_i_reg[66]\(8) => si_register_slice_inst_n_17,
      \m_payload_i_reg[66]\(7 downto 0) => \USE_WRITE.m_axi_awaddr_i\(7 downto 0),
      m_valid_i_reg_inv => \USE_WRITE.write_addr_inst_n_2\,
      \out\ => \out\,
      s_axi_aresetn => \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_319\,
      s_axi_awready => \^s_axi_awready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid,
      s_ready_i_reg => \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_361\,
      \si_be_reg[0]_0\ => si_register_slice_inst_n_95,
      \si_be_reg[10]_0\ => si_register_slice_inst_n_98,
      \si_be_reg[11]_0\ => si_register_slice_inst_n_120,
      \si_be_reg[12]_0\ => si_register_slice_inst_n_93,
      \si_be_reg[13]_0\ => si_register_slice_inst_n_94,
      \si_be_reg[14]_0\ => si_register_slice_inst_n_99,
      \si_be_reg[15]_0\ => si_register_slice_inst_n_100,
      \si_be_reg[15]_1\ => si_register_slice_inst_n_121,
      \si_be_reg[1]_0\ => si_register_slice_inst_n_117,
      \si_be_reg[2]_0\ => si_register_slice_inst_n_96,
      \si_be_reg[3]_0\ => si_register_slice_inst_n_118,
      \si_be_reg[4]_0\ => si_register_slice_inst_n_89,
      \si_be_reg[5]_0\ => si_register_slice_inst_n_90,
      \si_be_reg[6]_0\ => si_register_slice_inst_n_97,
      \si_be_reg[7]_0\ => si_register_slice_inst_n_119,
      \si_be_reg[8]_0\ => si_register_slice_inst_n_91,
      \si_be_reg[9]_0\ => si_register_slice_inst_n_92,
      \si_ptr_reg[0]_0\(0) => si_register_slice_inst_n_82,
      \si_ptr_reg[1]_0\ => si_register_slice_inst_n_84,
      \si_ptr_reg[2]_0\ => si_register_slice_inst_n_101,
      \si_wrap_be_next_reg[14]_0\(14 downto 0) => f_si_wrap_be_return(14 downto 0),
      \si_wrap_cnt_reg[0]_0\(0) => si_wrap_cnt_reg(0),
      \si_wrap_cnt_reg[0]_1\(0) => p_0_in(0),
      \si_wrap_cnt_reg[1]_0\ => si_register_slice_inst_n_122,
      \si_wrap_cnt_reg[2]_0\ => si_register_slice_inst_n_123,
      \si_wrap_cnt_reg[3]_0\ => si_register_slice_inst_n_124
    );
\USE_WRITE.write_addr_inst\: entity work.design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_a_upsizer
     port map (
      CO(0) => cmd_packed_wrap_i1,
      DI(3) => si_register_slice_inst_n_85,
      DI(2) => si_register_slice_inst_n_86,
      DI(1) => si_register_slice_inst_n_87,
      DI(0) => si_register_slice_inst_n_88,
      E(0) => sr_awvalid,
      Q(3 downto 0) => sr_awid(3 downto 0),
      S(3) => si_register_slice_inst_n_77,
      S(2) => si_register_slice_inst_n_78,
      S(1) => si_register_slice_inst_n_79,
      S(0) => si_register_slice_inst_n_80,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\ => \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_319\,
      \USE_WRITE.m_axi_awready_i\ => \USE_WRITE.m_axi_awready_i\,
      \USE_WRITE.wr_cmd_ready\ => \USE_WRITE.wr_cmd_ready\,
      cmd_push_block0 => cmd_push_block0,
      cmd_push_block_reg_0 => \USE_WRITE.write_addr_inst_n_2\,
      m_axi_bvalid => m_axi_bvalid,
      m_valid_i_reg_inv => \USE_WRITE.write_addr_inst_n_1\,
      \out\ => \out\,
      s_axi_aresetn => \USE_WRITE.write_addr_inst_n_3\,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_ready_i_reg => \aresetn_d_reg[1]\
    );
si_register_slice_inst: entity work.\design_1_auto_us_df_1_axi_register_slice_v2_1_21_axi_register_slice__parameterized0\
     port map (
      CO(0) => cmd_packed_wrap_i1,
      D(64 downto 0) => D(64 downto 0),
      DI(3) => si_register_slice_inst_n_85,
      DI(2) => si_register_slice_inst_n_86,
      DI(1) => si_register_slice_inst_n_87,
      DI(0) => si_register_slice_inst_n_88,
      E(0) => sr_awvalid,
      Q(50 downto 47) => sr_awregion(3 downto 0),
      Q(46 downto 43) => sr_awqos(3 downto 0),
      Q(42 downto 39) => sr_awid(3 downto 0),
      Q(38) => s_axi_awlock_ii,
      Q(37 downto 34) => sr_awcache(3 downto 0),
      Q(33 downto 32) => sr_awburst(1 downto 0),
      Q(31 downto 29) => sr_awsize(2 downto 0),
      Q(28 downto 26) => sr_awprot(2 downto 0),
      Q(25 downto 1) => sr_awaddr(31 downto 7),
      Q(0) => sr_awaddr(4),
      S(3) => si_register_slice_inst_n_77,
      S(2) => si_register_slice_inst_n_78,
      S(1) => si_register_slice_inst_n_79,
      S(0) => si_register_slice_inst_n_80,
      \aresetn_d_reg[0]\ => si_register_slice_inst_n_0,
      \aresetn_d_reg[0]_0\ => \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_319\,
      f_si_wrap_word_return => f_si_wrap_word_return,
      \m_payload_i_reg[0]\ => si_register_slice_inst_n_94,
      \m_payload_i_reg[0]_0\ => si_register_slice_inst_n_95,
      \m_payload_i_reg[0]_1\ => si_register_slice_inst_n_96,
      \m_payload_i_reg[0]_2\ => si_register_slice_inst_n_97,
      \m_payload_i_reg[0]_3\ => si_register_slice_inst_n_98,
      \m_payload_i_reg[0]_4\ => si_register_slice_inst_n_99,
      \m_payload_i_reg[1]\ => si_register_slice_inst_n_117,
      \m_payload_i_reg[1]_0\ => si_register_slice_inst_n_118,
      \m_payload_i_reg[2]\ => si_register_slice_inst_n_91,
      \m_payload_i_reg[2]_0\ => si_register_slice_inst_n_92,
      \m_payload_i_reg[2]_1\ => si_register_slice_inst_n_93,
      \m_payload_i_reg[2]_2\ => si_register_slice_inst_n_120,
      \m_payload_i_reg[35]\ => si_register_slice_inst_n_101,
      \m_payload_i_reg[36]\ => si_register_slice_inst_n_121,
      \m_payload_i_reg[37]\ => si_register_slice_inst_n_100,
      \m_payload_i_reg[37]_0\(14 downto 0) => f_si_wrap_be_return(14 downto 0),
      \m_payload_i_reg[39]\(23 downto 19) => f_mi_be_last_index_return(4 downto 0),
      \m_payload_i_reg[39]\(18 downto 17) => \USE_WRITE.m_axi_awlen_i\(7 downto 6),
      \m_payload_i_reg[39]\(16) => si_register_slice_inst_n_9,
      \m_payload_i_reg[39]\(15 downto 13) => \USE_WRITE.m_axi_awlen_i\(4 downto 2),
      \m_payload_i_reg[39]\(12) => si_register_slice_inst_n_13,
      \m_payload_i_reg[39]\(11) => \USE_WRITE.m_axi_awlen_i\(0),
      \m_payload_i_reg[39]\(10 downto 9) => \USE_WRITE.m_axi_awburst_i\(1 downto 0),
      \m_payload_i_reg[39]\(8) => si_register_slice_inst_n_17,
      \m_payload_i_reg[39]\(7 downto 0) => \USE_WRITE.m_axi_awaddr_i\(7 downto 0),
      \m_payload_i_reg[3]\ => si_register_slice_inst_n_89,
      \m_payload_i_reg[3]_0\ => si_register_slice_inst_n_90,
      \m_payload_i_reg[3]_1\ => si_register_slice_inst_n_119,
      \m_payload_i_reg[41]\ => si_register_slice_inst_n_81,
      \m_payload_i_reg[45]\ => si_register_slice_inst_n_122,
      \m_payload_i_reg[46]\ => si_register_slice_inst_n_123,
      \m_payload_i_reg[5]\(0) => si_register_slice_inst_n_82,
      \m_payload_i_reg[6]\ => si_register_slice_inst_n_84,
      \m_payload_i_reg[7]\ => si_register_slice_inst_n_124,
      m_valid_i_reg_inv => \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_361\,
      \out\ => \out\,
      s_axi_awready => \^s_axi_awready\,
      s_axi_awvalid => s_axi_awvalid,
      s_ready_i_reg => \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_320\,
      s_ready_i_reg_0 => \USE_WRITE.write_addr_inst_n_3\,
      \si_ptr_reg[0]\(0) => si_buf_addr(0),
      \si_wrap_cnt_reg[0]\(0) => p_0_in(0),
      \si_wrap_cnt_reg[0]_0\ => \USE_WRITE.gen_pktfifo_w_upsizer.pktfifo_write_data_inst_n_325\,
      \si_wrap_cnt_reg[0]_1\(0) => si_wrap_cnt_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 32;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 0;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 0;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is "artix7";
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 1;
  attribute C_MAX_SPLIT_BEATS : integer;
  attribute C_MAX_SPLIT_BEATS of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 16;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 2;
  attribute C_M_AXI_BYTES_LOG : integer;
  attribute C_M_AXI_BYTES_LOG of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 5;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 256;
  attribute C_PACKING_LEVEL : integer;
  attribute C_PACKING_LEVEL of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 1;
  attribute C_RATIO : integer;
  attribute C_RATIO of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 0;
  attribute C_RATIO_LOG : integer;
  attribute C_RATIO_LOG of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 0;
  attribute C_SUPPORTS_ID : integer;
  attribute C_SUPPORTS_ID of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 1;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 1;
  attribute C_S_AXI_BYTES_LOG : integer;
  attribute C_S_AXI_BYTES_LOG of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 128;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 2;
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 2;
  attribute P_MAX_SPLIT_BEATS : integer;
  attribute P_MAX_SPLIT_BEATS of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top : entity is 16;
end design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top;

architecture STRUCTURE of design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_bready\ : STD_LOGIC;
  attribute keep : string;
  attribute keep of m_axi_aclk : signal is "true";
  attribute keep of m_axi_aresetn : signal is "true";
  attribute keep of s_axi_aclk : signal is "true";
  attribute keep of s_axi_aresetn : signal is "true";
begin
  \^m_axi_bresp\(1 downto 0) <= m_axi_bresp(1 downto 0);
  \^m_axi_bvalid\ <= m_axi_bvalid;
  \^s_axi_bready\ <= s_axi_bready;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_bready <= \^s_axi_bready\;
  m_axi_rready <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_bresp(1 downto 0) <= \^m_axi_bresp\(1 downto 0);
  s_axi_bvalid <= \^m_axi_bvalid\;
  s_axi_rdata(127) <= \<const0>\;
  s_axi_rdata(126) <= \<const0>\;
  s_axi_rdata(125) <= \<const0>\;
  s_axi_rdata(124) <= \<const0>\;
  s_axi_rdata(123) <= \<const0>\;
  s_axi_rdata(122) <= \<const0>\;
  s_axi_rdata(121) <= \<const0>\;
  s_axi_rdata(120) <= \<const0>\;
  s_axi_rdata(119) <= \<const0>\;
  s_axi_rdata(118) <= \<const0>\;
  s_axi_rdata(117) <= \<const0>\;
  s_axi_rdata(116) <= \<const0>\;
  s_axi_rdata(115) <= \<const0>\;
  s_axi_rdata(114) <= \<const0>\;
  s_axi_rdata(113) <= \<const0>\;
  s_axi_rdata(112) <= \<const0>\;
  s_axi_rdata(111) <= \<const0>\;
  s_axi_rdata(110) <= \<const0>\;
  s_axi_rdata(109) <= \<const0>\;
  s_axi_rdata(108) <= \<const0>\;
  s_axi_rdata(107) <= \<const0>\;
  s_axi_rdata(106) <= \<const0>\;
  s_axi_rdata(105) <= \<const0>\;
  s_axi_rdata(104) <= \<const0>\;
  s_axi_rdata(103) <= \<const0>\;
  s_axi_rdata(102) <= \<const0>\;
  s_axi_rdata(101) <= \<const0>\;
  s_axi_rdata(100) <= \<const0>\;
  s_axi_rdata(99) <= \<const0>\;
  s_axi_rdata(98) <= \<const0>\;
  s_axi_rdata(97) <= \<const0>\;
  s_axi_rdata(96) <= \<const0>\;
  s_axi_rdata(95) <= \<const0>\;
  s_axi_rdata(94) <= \<const0>\;
  s_axi_rdata(93) <= \<const0>\;
  s_axi_rdata(92) <= \<const0>\;
  s_axi_rdata(91) <= \<const0>\;
  s_axi_rdata(90) <= \<const0>\;
  s_axi_rdata(89) <= \<const0>\;
  s_axi_rdata(88) <= \<const0>\;
  s_axi_rdata(87) <= \<const0>\;
  s_axi_rdata(86) <= \<const0>\;
  s_axi_rdata(85) <= \<const0>\;
  s_axi_rdata(84) <= \<const0>\;
  s_axi_rdata(83) <= \<const0>\;
  s_axi_rdata(82) <= \<const0>\;
  s_axi_rdata(81) <= \<const0>\;
  s_axi_rdata(80) <= \<const0>\;
  s_axi_rdata(79) <= \<const0>\;
  s_axi_rdata(78) <= \<const0>\;
  s_axi_rdata(77) <= \<const0>\;
  s_axi_rdata(76) <= \<const0>\;
  s_axi_rdata(75) <= \<const0>\;
  s_axi_rdata(74) <= \<const0>\;
  s_axi_rdata(73) <= \<const0>\;
  s_axi_rdata(72) <= \<const0>\;
  s_axi_rdata(71) <= \<const0>\;
  s_axi_rdata(70) <= \<const0>\;
  s_axi_rdata(69) <= \<const0>\;
  s_axi_rdata(68) <= \<const0>\;
  s_axi_rdata(67) <= \<const0>\;
  s_axi_rdata(66) <= \<const0>\;
  s_axi_rdata(65) <= \<const0>\;
  s_axi_rdata(64) <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_upsizer.gen_full_upsizer.axi_upsizer_inst\: entity work.design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_axi_upsizer
     port map (
      D(64 downto 61) => s_axi_awregion(3 downto 0),
      D(60 downto 57) => s_axi_awqos(3 downto 0),
      D(56 downto 53) => s_axi_awid(3 downto 0),
      D(52) => s_axi_awlock(0),
      D(51 downto 44) => s_axi_awlen(7 downto 0),
      D(43 downto 40) => s_axi_awcache(3 downto 0),
      D(39 downto 38) => s_axi_awburst(1 downto 0),
      D(37 downto 35) => s_axi_awsize(2 downto 0),
      D(34 downto 32) => s_axi_awprot(2 downto 0),
      D(31 downto 0) => s_axi_awaddr(31 downto 0),
      M_AXI_WLAST_i_reg => m_axi_wlast,
      M_AXI_WVALID_i_reg => m_axi_wvalid,
      S_AXI_WREADY_i_reg => s_axi_wready,
      \aresetn_d_reg[1]\ => s_axi_aresetn,
      dina(143) => s_axi_wstrb(15),
      dina(142 downto 135) => s_axi_wdata(127 downto 120),
      dina(134) => s_axi_wstrb(14),
      dina(133 downto 126) => s_axi_wdata(119 downto 112),
      dina(125) => s_axi_wstrb(13),
      dina(124 downto 117) => s_axi_wdata(111 downto 104),
      dina(116) => s_axi_wstrb(12),
      dina(115 downto 108) => s_axi_wdata(103 downto 96),
      dina(107) => s_axi_wstrb(11),
      dina(106 downto 99) => s_axi_wdata(95 downto 88),
      dina(98) => s_axi_wstrb(10),
      dina(97 downto 90) => s_axi_wdata(87 downto 80),
      dina(89) => s_axi_wstrb(9),
      dina(88 downto 81) => s_axi_wdata(79 downto 72),
      dina(80) => s_axi_wstrb(8),
      dina(79 downto 72) => s_axi_wdata(71 downto 64),
      dina(71) => s_axi_wstrb(7),
      dina(70 downto 63) => s_axi_wdata(63 downto 56),
      dina(62) => s_axi_wstrb(6),
      dina(61 downto 54) => s_axi_wdata(55 downto 48),
      dina(53) => s_axi_wstrb(5),
      dina(52 downto 45) => s_axi_wdata(47 downto 40),
      dina(44) => s_axi_wstrb(4),
      dina(43 downto 36) => s_axi_wdata(39 downto 32),
      dina(35) => s_axi_wstrb(3),
      dina(34 downto 27) => s_axi_wdata(31 downto 24),
      dina(26) => s_axi_wstrb(2),
      dina(25 downto 18) => s_axi_wdata(23 downto 16),
      dina(17) => s_axi_wstrb(1),
      dina(16 downto 9) => s_axi_wdata(15 downto 8),
      dina(8) => s_axi_wstrb(0),
      dina(7 downto 0) => s_axi_wdata(7 downto 0),
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bvalid => \^m_axi_bvalid\,
      m_axi_wdata(255 downto 0) => m_axi_wdata(255 downto 0),
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(31 downto 0) => m_axi_wstrb(31 downto 0),
      \out\ => s_axi_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => \^s_axi_bready\,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_us_df_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_auto_us_df_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_auto_us_df_1 : entity is "design_1_auto_us_df_1,axi_dwidth_converter_v2_1_21_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_auto_us_df_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_auto_us_df_1 : entity is "axi_dwidth_converter_v2_1_21_top,Vivado 2020.1";
end design_1_auto_us_df_1;

architecture STRUCTURE of design_1_auto_us_df_1 is
  signal NLW_inst_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of inst : label is 0;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of inst : label is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "artix7";
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of inst : label is 1;
  attribute C_MAX_SPLIT_BEATS : integer;
  attribute C_MAX_SPLIT_BEATS of inst : label is 16;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of inst : label is 2;
  attribute C_M_AXI_BYTES_LOG : integer;
  attribute C_M_AXI_BYTES_LOG of inst : label is 5;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of inst : label is 256;
  attribute C_PACKING_LEVEL : integer;
  attribute C_PACKING_LEVEL of inst : label is 1;
  attribute C_RATIO : integer;
  attribute C_RATIO of inst : label is 0;
  attribute C_RATIO_LOG : integer;
  attribute C_RATIO_LOG of inst : label is 0;
  attribute C_SUPPORTS_ID : integer;
  attribute C_SUPPORTS_ID of inst : label is 1;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of inst : label is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of inst : label is 1;
  attribute C_S_AXI_BYTES_LOG : integer;
  attribute C_S_AXI_BYTES_LOG of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 128;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of inst : label is 4;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of inst : label is 2;
  attribute P_MAX_SPLIT_BEATS : integer;
  attribute P_MAX_SPLIT_BEATS of inst : label is 16;
  attribute downgradeipidentifiedwarnings of inst : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axi_bready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 128, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 SI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME SI_CLK, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET S_AXI_ARESETN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 SI_RST RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_bready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_xdma_0_0_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREGION";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREGION";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.design_1_auto_us_df_1_axi_dwidth_converter_v2_1_21_top
     port map (
      m_axi_aclk => '0',
      m_axi_araddr(31 downto 0) => NLW_inst_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_aresetn => '0',
      m_axi_arlen(7 downto 0) => NLW_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_inst_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_arvalid => NLW_inst_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(255 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rlast => '1',
      m_axi_rready => NLW_inst_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_rvalid => '0',
      m_axi_wdata(255 downto 0) => m_axi_wdata(255 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(31 downto 0) => m_axi_wstrb(31 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"01",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_inst_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => s_axi_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(127 downto 0) => NLW_inst_s_axi_rdata_UNCONNECTED(127 downto 0),
      s_axi_rid(3 downto 0) => NLW_inst_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_inst_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
