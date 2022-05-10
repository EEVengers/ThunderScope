-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun Feb 13 02:04:58 2022
-- Host        : DESKTOP-J72MK93 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Aleksa/Documents/FPGA_Dev/Artix7_PCIe/dso_top_CSG325/dso_top_CSG325.srcs/sources_1/bd/design_1/ip/design_1_util_ds_buf_0_1/design_1_util_ds_buf_0_1_sim_netlist.vhdl
-- Design      : design_1_util_ds_buf_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg325-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_util_ds_buf_0_1_util_ds_buf is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_CEB : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_DS_P : inout STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_DS_N : inout STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_T : in STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_IO : inout STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_CLR : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFH_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFH_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFHCE_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFHCE_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFHCE_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_FABRIC_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_FABRIC_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE5_CEB : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE5_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE5_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE5_OB : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE5_ADV_CEB : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE5_ADV_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    OBUFDS_GTE5_ADV_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE5_ADV_OB : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE3_CEB : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE3_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE3_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE3_OB : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE3_ADV_CEB : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE3_ADV_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    OBUFDS_GTE3_ADV_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE3_ADV_OB : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXRECCLK_SEL_GTE3_ADV : in STD_LOGIC_VECTOR ( 1 downto 0 );
    OBUFDS_GTE4_CEB : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE4_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE4_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE4_OB : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE4_ADV_CEB : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE4_ADV_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    OBUFDS_GTE4_ADV_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTE4_ADV_OB : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXRECCLK_SEL_GTE4_ADV : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IBUFDS_GTM_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUFDS_GTM_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUFDS_GTM_CEB : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUFDS_GTM_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUFDS_GTM_IB : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTM_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTM_OB : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTM_CEB : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTM_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTM_ADV_CEB : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTM_ADV_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    OBUFDS_GTM_ADV_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTM_ADV_OB : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUFDS_GTME5_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUFDS_GTME5_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUFDS_GTME5_CEB : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUFDS_GTME5_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUFDS_GTME5_IB : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTME5_CEB : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTME5_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTME5_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTME5_OB : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTME5_ADV_CEB : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTME5_ADV_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    OBUFDS_GTME5_ADV_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUFDS_GTME5_ADV_OB : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CEMASK : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CLR : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CLRMASK : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_DIV : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BUFG_GT_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_BUFGCE_DIV : integer;
  attribute C_BUFGCE_DIV of design_1_util_ds_buf_0_1_util_ds_buf : entity is 1;
  attribute C_BUFG_GT_SYNC : integer;
  attribute C_BUFG_GT_SYNC of design_1_util_ds_buf_0_1_util_ds_buf : entity is 0;
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of design_1_util_ds_buf_0_1_util_ds_buf : entity is "BUFG";
  attribute C_OBUFDS_GTE5_ADV : string;
  attribute C_OBUFDS_GTE5_ADV of design_1_util_ds_buf_0_1_util_ds_buf : entity is "2'b00";
  attribute C_REFCLK_ICNTL_TX : string;
  attribute C_REFCLK_ICNTL_TX of design_1_util_ds_buf_0_1_util_ds_buf : entity is "5'b00000";
  attribute C_SIM_DEVICE : string;
  attribute C_SIM_DEVICE of design_1_util_ds_buf_0_1_util_ds_buf : entity is "VERSAL_AI_CORE_ES1";
  attribute C_SIZE : integer;
  attribute C_SIZE of design_1_util_ds_buf_0_1_util_ds_buf : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_util_ds_buf_0_1_util_ds_buf : entity is "util_ds_buf";
end design_1_util_ds_buf_0_1_util_ds_buf;

architecture STRUCTURE of design_1_util_ds_buf_0_1_util_ds_buf is
  signal \<const0>\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \USE_BUFG.GEN_BUFG[0].BUFG_U\ : label is "PRIMITIVE";
begin
  BUFGCE_O(0) <= \<const0>\;
  BUFG_FABRIC_O(0) <= \<const0>\;
  BUFG_GT_O(0) <= \<const0>\;
  BUFHCE_O(0) <= \<const0>\;
  BUFH_O(0) <= \<const0>\;
  IBUFDS_GTME5_O(0) <= \<const0>\;
  IBUFDS_GTME5_ODIV2(0) <= \<const0>\;
  IBUFDS_GTM_O(0) <= \<const0>\;
  IBUFDS_GTM_ODIV2(0) <= \<const0>\;
  IBUF_DS_ODIV2(0) <= \<const0>\;
  IBUF_OUT(0) <= \<const0>\;
  IOBUF_IO_O(0) <= \<const0>\;
  OBUFDS_GTE3_ADV_O(0) <= \<const0>\;
  OBUFDS_GTE3_ADV_OB(0) <= \<const0>\;
  OBUFDS_GTE3_O(0) <= \<const0>\;
  OBUFDS_GTE3_OB(0) <= \<const0>\;
  OBUFDS_GTE4_ADV_O(0) <= \<const0>\;
  OBUFDS_GTE4_ADV_OB(0) <= \<const0>\;
  OBUFDS_GTE4_O(0) <= \<const0>\;
  OBUFDS_GTE4_OB(0) <= \<const0>\;
  OBUFDS_GTE5_ADV_O(0) <= \<const0>\;
  OBUFDS_GTE5_ADV_OB(0) <= \<const0>\;
  OBUFDS_GTE5_O(0) <= \<const0>\;
  OBUFDS_GTE5_OB(0) <= \<const0>\;
  OBUFDS_GTME5_ADV_O(0) <= \<const0>\;
  OBUFDS_GTME5_ADV_OB(0) <= \<const0>\;
  OBUFDS_GTME5_O(0) <= \<const0>\;
  OBUFDS_GTME5_OB(0) <= \<const0>\;
  OBUFDS_GTM_ADV_O(0) <= \<const0>\;
  OBUFDS_GTM_ADV_OB(0) <= \<const0>\;
  OBUFDS_GTM_O(0) <= \<const0>\;
  OBUFDS_GTM_OB(0) <= \<const0>\;
  OBUF_DS_N(0) <= \<const0>\;
  OBUF_DS_P(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\USE_BUFG.GEN_BUFG[0].BUFG_U\: unisim.vcomponents.BUFG
     port map (
      I => BUFG_I(0),
      O => BUFG_O(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_util_ds_buf_0_1 is
  port (
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_util_ds_buf_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_util_ds_buf_0_1 : entity is "design_1_util_ds_buf_0_1,util_ds_buf,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_util_ds_buf_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_util_ds_buf_0_1 : entity is "util_ds_buf,Vivado 2020.1";
end design_1_util_ds_buf_0_1;

architecture STRUCTURE of design_1_util_ds_buf_0_1 is
  signal NLW_U0_BUFGCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_BUFG_FABRIC_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_BUFG_GT_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_BUFHCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_BUFH_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IBUFDS_GTME5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IBUFDS_GTME5_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IBUFDS_GTM_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IBUFDS_GTM_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IBUF_DS_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IBUF_OUT_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IOBUF_DS_N_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IOBUF_DS_P_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IOBUF_IO_IO_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IOBUF_IO_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTE3_ADV_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTE3_ADV_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTE3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTE3_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTE4_ADV_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTE4_ADV_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTE4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTE4_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTE5_ADV_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTE5_ADV_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTE5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTE5_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTME5_ADV_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTME5_ADV_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTME5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTME5_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTM_ADV_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTM_ADV_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTM_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUFDS_GTM_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUF_DS_N_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUF_DS_P_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_BUFGCE_DIV : integer;
  attribute C_BUFGCE_DIV of U0 : label is 1;
  attribute C_BUFG_GT_SYNC : integer;
  attribute C_BUFG_GT_SYNC of U0 : label is 0;
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of U0 : label is "BUFG";
  attribute C_OBUFDS_GTE5_ADV : string;
  attribute C_OBUFDS_GTE5_ADV of U0 : label is "2'b00";
  attribute C_REFCLK_ICNTL_TX : string;
  attribute C_REFCLK_ICNTL_TX of U0 : label is "5'b00000";
  attribute C_SIM_DEVICE : string;
  attribute C_SIM_DEVICE of U0 : label is "VERSAL_AI_CORE_ES1";
  attribute C_SIZE : integer;
  attribute C_SIZE of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of BUFG_I : signal is "xilinx.com:signal:clock:1.0 BUFG_I CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of BUFG_I : signal is "XIL_INTERFACENAME BUFG_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of BUFG_O : signal is "xilinx.com:signal:clock:1.0 BUFG_O CLK";
  attribute x_interface_parameter of BUFG_O : signal is "XIL_INTERFACENAME BUFG_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_util_ds_buf_0_1_BUFG_O, INSERT_VIP 0";
begin
U0: entity work.design_1_util_ds_buf_0_1_util_ds_buf
     port map (
      BUFGCE_CE(0) => '0',
      BUFGCE_CLR(0) => '0',
      BUFGCE_I(0) => '0',
      BUFGCE_O(0) => NLW_U0_BUFGCE_O_UNCONNECTED(0),
      BUFG_FABRIC_I(0) => '0',
      BUFG_FABRIC_O(0) => NLW_U0_BUFG_FABRIC_O_UNCONNECTED(0),
      BUFG_GT_CE(0) => '0',
      BUFG_GT_CEMASK(0) => '0',
      BUFG_GT_CLR(0) => '0',
      BUFG_GT_CLRMASK(0) => '0',
      BUFG_GT_DIV(2 downto 0) => B"000",
      BUFG_GT_I(0) => '0',
      BUFG_GT_O(0) => NLW_U0_BUFG_GT_O_UNCONNECTED(0),
      BUFG_I(0) => BUFG_I(0),
      BUFG_O(0) => BUFG_O(0),
      BUFHCE_CE(0) => '0',
      BUFHCE_I(0) => '0',
      BUFHCE_O(0) => NLW_U0_BUFHCE_O_UNCONNECTED(0),
      BUFH_I(0) => '0',
      BUFH_O(0) => NLW_U0_BUFH_O_UNCONNECTED(0),
      IBUFDS_GTME5_CEB(0) => '0',
      IBUFDS_GTME5_I(0) => '0',
      IBUFDS_GTME5_IB(0) => '0',
      IBUFDS_GTME5_O(0) => NLW_U0_IBUFDS_GTME5_O_UNCONNECTED(0),
      IBUFDS_GTME5_ODIV2(0) => NLW_U0_IBUFDS_GTME5_ODIV2_UNCONNECTED(0),
      IBUFDS_GTM_CEB(0) => '0',
      IBUFDS_GTM_I(0) => '0',
      IBUFDS_GTM_IB(0) => '0',
      IBUFDS_GTM_O(0) => NLW_U0_IBUFDS_GTM_O_UNCONNECTED(0),
      IBUFDS_GTM_ODIV2(0) => NLW_U0_IBUFDS_GTM_ODIV2_UNCONNECTED(0),
      IBUF_DS_CEB(0) => '0',
      IBUF_DS_N(0) => '0',
      IBUF_DS_ODIV2(0) => NLW_U0_IBUF_DS_ODIV2_UNCONNECTED(0),
      IBUF_DS_P(0) => '0',
      IBUF_OUT(0) => NLW_U0_IBUF_OUT_UNCONNECTED(0),
      IOBUF_DS_N(0) => NLW_U0_IOBUF_DS_N_UNCONNECTED(0),
      IOBUF_DS_P(0) => NLW_U0_IOBUF_DS_P_UNCONNECTED(0),
      IOBUF_IO_I(0) => '0',
      IOBUF_IO_IO(0) => NLW_U0_IOBUF_IO_IO_UNCONNECTED(0),
      IOBUF_IO_O(0) => NLW_U0_IOBUF_IO_O_UNCONNECTED(0),
      IOBUF_IO_T(0) => '0',
      OBUFDS_GTE3_ADV_CEB(0) => '0',
      OBUFDS_GTE3_ADV_I(3 downto 0) => B"0000",
      OBUFDS_GTE3_ADV_O(0) => NLW_U0_OBUFDS_GTE3_ADV_O_UNCONNECTED(0),
      OBUFDS_GTE3_ADV_OB(0) => NLW_U0_OBUFDS_GTE3_ADV_OB_UNCONNECTED(0),
      OBUFDS_GTE3_CEB(0) => '0',
      OBUFDS_GTE3_I(0) => '0',
      OBUFDS_GTE3_O(0) => NLW_U0_OBUFDS_GTE3_O_UNCONNECTED(0),
      OBUFDS_GTE3_OB(0) => NLW_U0_OBUFDS_GTE3_OB_UNCONNECTED(0),
      OBUFDS_GTE4_ADV_CEB(0) => '0',
      OBUFDS_GTE4_ADV_I(3 downto 0) => B"0000",
      OBUFDS_GTE4_ADV_O(0) => NLW_U0_OBUFDS_GTE4_ADV_O_UNCONNECTED(0),
      OBUFDS_GTE4_ADV_OB(0) => NLW_U0_OBUFDS_GTE4_ADV_OB_UNCONNECTED(0),
      OBUFDS_GTE4_CEB(0) => '0',
      OBUFDS_GTE4_I(0) => '0',
      OBUFDS_GTE4_O(0) => NLW_U0_OBUFDS_GTE4_O_UNCONNECTED(0),
      OBUFDS_GTE4_OB(0) => NLW_U0_OBUFDS_GTE4_OB_UNCONNECTED(0),
      OBUFDS_GTE5_ADV_CEB(0) => '0',
      OBUFDS_GTE5_ADV_I(3 downto 0) => B"0000",
      OBUFDS_GTE5_ADV_O(0) => NLW_U0_OBUFDS_GTE5_ADV_O_UNCONNECTED(0),
      OBUFDS_GTE5_ADV_OB(0) => NLW_U0_OBUFDS_GTE5_ADV_OB_UNCONNECTED(0),
      OBUFDS_GTE5_CEB(0) => '0',
      OBUFDS_GTE5_I(0) => '0',
      OBUFDS_GTE5_O(0) => NLW_U0_OBUFDS_GTE5_O_UNCONNECTED(0),
      OBUFDS_GTE5_OB(0) => NLW_U0_OBUFDS_GTE5_OB_UNCONNECTED(0),
      OBUFDS_GTME5_ADV_CEB(0) => '0',
      OBUFDS_GTME5_ADV_I(3 downto 0) => B"0000",
      OBUFDS_GTME5_ADV_O(0) => NLW_U0_OBUFDS_GTME5_ADV_O_UNCONNECTED(0),
      OBUFDS_GTME5_ADV_OB(0) => NLW_U0_OBUFDS_GTME5_ADV_OB_UNCONNECTED(0),
      OBUFDS_GTME5_CEB(0) => '0',
      OBUFDS_GTME5_I(0) => '0',
      OBUFDS_GTME5_O(0) => NLW_U0_OBUFDS_GTME5_O_UNCONNECTED(0),
      OBUFDS_GTME5_OB(0) => NLW_U0_OBUFDS_GTME5_OB_UNCONNECTED(0),
      OBUFDS_GTM_ADV_CEB(0) => '0',
      OBUFDS_GTM_ADV_I(3 downto 0) => B"0000",
      OBUFDS_GTM_ADV_O(0) => NLW_U0_OBUFDS_GTM_ADV_O_UNCONNECTED(0),
      OBUFDS_GTM_ADV_OB(0) => NLW_U0_OBUFDS_GTM_ADV_OB_UNCONNECTED(0),
      OBUFDS_GTM_CEB(0) => '0',
      OBUFDS_GTM_I(0) => '0',
      OBUFDS_GTM_O(0) => NLW_U0_OBUFDS_GTM_O_UNCONNECTED(0),
      OBUFDS_GTM_OB(0) => NLW_U0_OBUFDS_GTM_OB_UNCONNECTED(0),
      OBUF_DS_N(0) => NLW_U0_OBUF_DS_N_UNCONNECTED(0),
      OBUF_DS_P(0) => NLW_U0_OBUF_DS_P_UNCONNECTED(0),
      OBUF_IN(0) => '0',
      RXRECCLK_SEL_GTE3_ADV(1 downto 0) => B"00",
      RXRECCLK_SEL_GTE4_ADV(1 downto 0) => B"00"
    );
end STRUCTURE;
