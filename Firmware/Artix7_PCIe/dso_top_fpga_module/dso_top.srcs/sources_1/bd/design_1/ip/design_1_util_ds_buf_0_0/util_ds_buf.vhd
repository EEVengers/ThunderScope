
-------------------------------------------------------------------------------
-- util_ds_buf.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
--  ***************************************************************************
--  **  Copyright(C) 2007 by Xilinx, Inc. All rights reserved.               **
--  **                                                                       **
--  **  This text contains proprietary, confidential                         **
--  **  information of Xilinx, Inc. , is distributed by                      **
--  **  under license from Xilinx, Inc., and may be used,                    **
--  **  copied and/or disclosed only pursuant to the terms                   **
--  **  of a valid license agreement with Xilinx, Inc.                       **
--  **                                                                       **
--  **  Unmodified source code is guaranteed to place and route,             **
--  **  function and run at speed according to the datasheet                 **
--  **  specification. Source code is provided "as-is", with no              **
--  **  obligation on the part of Xilinx to provide support.                 **
--  **                                                                       **
--  **  Xilinx Hotline support of source code IP shall only include          **
--  **  standard level Xilinx Hotline support, and will only address         **
--  **  issues and questions related to the standard released Netlist        **
--  **  version of the core (and thus indirectly, the original core source). **
--  **                                                                       **
--  **  The Xilinx Support Hotline does not have access to source            **
--  **  code and therefore cannot answer specific questions related          **
--  **  to source HDL. The Xilinx Support Hotline will only be able          **
--  **  to confirm the problem in the Netlist version of the core.           **
--  **                                                                       **
--  **  This copyright and support notice must be retained as part           **
--  **  of this text at all times.                                           **
--  ***************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        util_ds_buf.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              util_ds_buf.vhd
--
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library UNISIM;
use UNISIM.VComponents.all;

entity util_ds_buf is
   generic (
         C_BUF_TYPE          : string  := "IBUFDS";
         C_SIZE              : integer := 1;
         C_BUFGCE_DIV        : integer := 2;
         C_BUFG_GT_SYNC      : integer := 0;
         C_SIM_DEVICE        : string  := "VERSAL_AI_CORE_ES1";
         C_OBUFDS_GTE5_ADV   : std_logic_vector(1 downto 0) := "00";
         C_REFCLK_ICNTL_TX   : std_logic_vector(4 downto 0) := "00000"   
      );

   port (
    -- ports for differential signaling input buffer
           IBUF_DS_P       : in    std_logic_vector(C_SIZE-1 downto 0);
           IBUF_DS_N       : in    std_logic_vector(C_SIZE-1 downto 0);
           IBUF_OUT        : out   std_logic_vector(C_SIZE-1 downto 0);
           IBUF_DS_ODIV2   : out   std_logic_vector(C_SIZE-1 downto 0);
           IBUF_DS_CEB     : in    std_logic_vector(C_SIZE-1 downto 0);

    -- ports for differential signaling output buffer
           OBUF_IN         : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUF_DS_P       : out   std_logic_vector(C_SIZE-1 downto 0);
           OBUF_DS_N       : out   std_logic_vector(C_SIZE-1 downto 0);

    -- ports for tri-state differential signaling io buffer
           IOBUF_DS_P      : inout std_logic_vector(C_SIZE-1 downto 0);
           IOBUF_DS_N      : inout std_logic_vector(C_SIZE-1 downto 0);
           IOBUF_IO_T      : in    std_logic_vector(C_SIZE-1 downto 0);
           IOBUF_IO_I      : in    std_logic_vector(C_SIZE-1 downto 0);
           IOBUF_IO_O      : out   std_logic_vector(C_SIZE-1 downto 0);

    -- ports specific to io buffer inout 
           IOBUF_IO_IO      : inout   std_logic_vector(C_SIZE-1 downto 0);

    -- ports for BUFG
           BUFG_I          : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFG_O          : out   std_logic_vector(C_SIZE-1 downto 0);

    -- ports for BUFGCE
           BUFGCE_I        : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFGCE_CE       : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFGCE_O        : out   std_logic_vector(C_SIZE-1 downto 0);
           BUFGCE_CLR      : in    std_logic_vector(C_SIZE-1 downto 0);

    -- ports for BUFH
           BUFH_I          : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFH_O          : out   std_logic_vector(C_SIZE-1 downto 0);

    -- ports for BUFHCE
           BUFHCE_I        : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFHCE_CE       : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFHCE_O        : out   std_logic_vector(C_SIZE-1 downto 0);

    -- port for BUFG_FABRIC 
           BUFG_FABRIC_I   : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFG_FABRIC_O   : out   std_logic_vector(C_SIZE-1 downto 0);

    -- port for OBUFDS_GTE5 
           OBUFDS_GTE5_CEB : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTE5_I   : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTE5_O   : out   std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTE5_OB  : out   std_logic_vector(C_SIZE-1 downto 0);

    -- port for OBUFDS_GTE5_ADV 
           OBUFDS_GTE5_ADV_CEB : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTE5_ADV_I   : in    std_logic_vector((4 * C_SIZE) - 1 downto 0);
           OBUFDS_GTE5_ADV_O   : out   std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTE5_ADV_OB  : out   std_logic_vector(C_SIZE-1 downto 0);

    -- port for OBUFDS_GTE3 
           OBUFDS_GTE3_CEB : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTE3_I   : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTE3_O   : out   std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTE3_OB  : out   std_logic_vector(C_SIZE-1 downto 0);

    -- port for OBUFDS_GTE3_ADV 
           OBUFDS_GTE3_ADV_CEB   : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTE3_ADV_I     : in    std_logic_vector((4 * C_SIZE) -1 downto 0);
           OBUFDS_GTE3_ADV_O     : out   std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTE3_ADV_OB    : out   std_logic_vector(C_SIZE-1 downto 0);
           RXRECCLK_SEL_GTE3_ADV : in    std_logic_vector((2 * C_SIZE) -1 downto 0);

    -- port for OBUFDS_GTE4 
           OBUFDS_GTE4_CEB       : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTE4_I         : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTE4_O         : out   std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTE4_OB        : out   std_logic_vector(C_SIZE-1 downto 0);

    -- port for OBUFDS_GTE4_ADV 
           OBUFDS_GTE4_ADV_CEB   : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTE4_ADV_I     : in    std_logic_vector((4 * C_SIZE) -1 downto 0);
           OBUFDS_GTE4_ADV_O     : out   std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTE4_ADV_OB    : out   std_logic_vector(C_SIZE-1 downto 0);
           RXRECCLK_SEL_GTE4_ADV : in    std_logic_vector((2 * C_SIZE) -1 downto 0);

    -- port for IBUFDS_GTM 
           IBUFDS_GTM_O           : out   std_logic_vector(C_SIZE-1 downto 0);
           IBUFDS_GTM_ODIV2       : out   std_logic_vector(C_SIZE-1 downto 0);
           IBUFDS_GTM_CEB         : in    std_logic_vector(C_SIZE-1 downto 0);
           IBUFDS_GTM_I           : in    std_logic_vector(C_SIZE-1 downto 0);
           IBUFDS_GTM_IB          : in    std_logic_vector(C_SIZE-1 downto 0);

    -- port for OBUFDS_GTM 
           OBUFDS_GTM_O           : out   std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTM_OB          : out   std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTM_CEB         : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTM_I           : in    std_logic_vector(C_SIZE-1 downto 0);

    -- port for OBUFDS_GTM_ADV 
           OBUFDS_GTM_ADV_CEB     : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTM_ADV_I       : in    std_logic_vector((4 * C_SIZE) -1 downto 0);
           OBUFDS_GTM_ADV_O       : out   std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTM_ADV_OB      : out   std_logic_vector(C_SIZE-1 downto 0);

    -- port for IBUFDS_GTME5
           IBUFDS_GTME5_O        : out   std_logic_vector(C_SIZE-1 downto 0);
           IBUFDS_GTME5_ODIV2    : out   std_logic_vector(C_SIZE-1 downto 0);  
           IBUFDS_GTME5_CEB      : in    std_logic_vector(C_SIZE-1 downto 0);
           IBUFDS_GTME5_I        : in    std_logic_vector(C_SIZE-1 downto 0);
           IBUFDS_GTME5_IB       : in    std_logic_vector(C_SIZE-1 downto 0);

    -- port for OBUFDS_GTME5 
           OBUFDS_GTME5_CEB       : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTME5_I         : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTME5_O         : out   std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTME5_OB        : out   std_logic_vector(C_SIZE-1 downto 0);


    -- port for OBUFDS_GTME5_ADV 
           OBUFDS_GTME5_ADV_CEB   : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTME5_ADV_I     : in    std_logic_vector((4 * C_SIZE) -1 downto 0);
           OBUFDS_GTME5_ADV_O     : out   std_logic_vector(C_SIZE-1 downto 0);
           OBUFDS_GTME5_ADV_OB    : out   std_logic_vector(C_SIZE-1 downto 0);

    -- ports for BUFG_GT
           BUFG_GT_I              : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFG_GT_CE             : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFG_GT_CEMASK         : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFG_GT_CLR            : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFG_GT_CLRMASK        : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFG_GT_DIV            : in    std_logic_vector((3 * C_SIZE) - 1 downto 0);
           BUFG_GT_O              : out   std_logic_vector(C_SIZE-1 downto 0)
     );


end util_ds_buf;

architecture IMP of util_ds_buf is

  -- function to return lower case character
   function LowerCase_Char(char : character) return character is
   begin
    -- If char is not an upper case letter then return char
      if char < 'A' or char > 'Z' then
         return char;
      end if;
    -- Otherwise map char to its corresponding lower case character and
    -- return that
      case char is
         when 'A'    => return 'a'; when 'B' => return 'b'; when 'C' => return 'c'; when 'D' => return 'd';
         when 'E'    => return 'e'; when 'F' => return 'f'; when 'G' => return 'g'; when 'H' => return 'h';
         when 'I'    => return 'i'; when 'J' => return 'j'; when 'K' => return 'k'; when 'L' => return 'l';
         when 'M'    => return 'm'; when 'N' => return 'n'; when 'O' => return 'o'; when 'P' => return 'p';
         when 'Q'    => return 'q'; when 'R' => return 'r'; when 'S' => return 's'; when 'T' => return 't';
         when 'U'    => return 'u'; when 'V' => return 'v'; when 'W' => return 'w'; when 'X' => return 'x';
         when 'Y'    => return 'y'; when 'Z' => return 'z';
         when others => return char;
      end case;
   end LowerCase_Char;

  -- function to return lower case string
   function LowerCase_String (s : string) return string is
      variable res : string(s'range);
   begin
      for I in s'range loop
         res(I) := LowerCase_Char(s(I));
      end loop;
      return res;
   end function LowerCase_String;

   constant BUFFER_TYPE : string := LowerCase_String(C_BUF_TYPE);
   constant BIT1       : bit := '0';
   constant BIT2       : std_logic_vector (1 downto 0) := "00";
   constant BIT3       : std_logic_vector (2 downto 0) := "010";


begin

  -- instantiate IBUFDS_GTE2
   USE_IBUFDS_GTE2 : if (BUFFER_TYPE = "ibufdsgte2") generate
      signal IBUF_OUT_P : std_logic_vector(C_SIZE-1 downto 0);
      signal IBUF_OUT_N : std_logic_vector(C_SIZE-1 downto 0);
   begin
      GEN_IBUFDS_GTE2 : for i in 0 to C_SIZE-1 generate

         IBUF_P_I : IBUF
         port map (O => IBUF_OUT_P(i), I => IBUF_DS_P(i));
         IBUF_N_I : IBUF
         port map (O => IBUF_OUT_N(i), I => IBUF_DS_N(i));
         IBUFDS_GTE2_I : IBUFDS_GTE2
         port map (O => IBUF_OUT(i), ODIV2 => IBUF_DS_ODIV2(i), I => IBUF_OUT_P(i), IB => IBUF_OUT_N(i), CEB => '0');

      end generate GEN_IBUFDS_GTE2;

     -- tie-off other non-used outputs
      OBUF_DS_P  <= (others => '0');
      OBUF_DS_N  <= (others => '0');
      IOBUF_IO_O <= (others => '0');
      IOBUF_DS_P <= (others => '0');
      IOBUF_DS_N <= (others => '0');

   end generate USE_IBUFDS_GTE2;

  -- instantiate IBUFDS_GTE3
   USE_IBUFDS_GTE3 : if (BUFFER_TYPE = "ibufdsgte3") generate

      GEN_IBUFDS_GTE3 : for i in 0 to C_SIZE-1 generate

         IBUFDS_GTE3_I : IBUFDS_GTE3
         port map (O => IBUF_OUT(i), ODIV2 => IBUF_DS_ODIV2(i), I => IBUF_DS_P(i), IB => IBUF_DS_N(i), CEB => '0');

      end generate GEN_IBUFDS_GTE3;

     -- tie-off other non-used outputs
      OBUF_DS_P  <= (others => '0');
      OBUF_DS_N  <= (others => '0');
      IOBUF_IO_O <= (others => '0');
      IOBUF_DS_P <= (others => '0');
      IOBUF_DS_N <= (others => '0');

   end generate USE_IBUFDS_GTE3;

  -- instantiate IBUFDS_GTE4
   USE_IBUFDS_GTE4 : if (BUFFER_TYPE = "ibufdsgte4") generate

      GEN_IBUFDS_GTE4 : for i in 0 to C_SIZE-1 generate

         IBUFDS_GTE4_I : IBUFDS_GTE4
         port map (O => IBUF_OUT(i), ODIV2 => IBUF_DS_ODIV2(i), I => IBUF_DS_P(i), IB => IBUF_DS_N(i), CEB => '0');

      end generate GEN_IBUFDS_GTE4;

     -- tie-off other non-used outputs
      OBUF_DS_P  <= (others => '0');
      OBUF_DS_N  <= (others => '0');
      IOBUF_IO_O <= (others => '0');
      IOBUF_DS_P <= (others => '0');
      IOBUF_DS_N <= (others => '0');

   end generate USE_IBUFDS_GTE4;


  -- instantiate IBUFDS
   USE_IBUFDS : if (BUFFER_TYPE = "ibufds") generate

      GEN_IBUFDS : for i in 0 to C_SIZE-1 generate

         IBUFDS_I : IBUFDS
         port map (O => IBUF_OUT(i), I => IBUF_DS_P(i), IB => IBUF_DS_N(i));

      end generate GEN_IBUFDS;

    -- tie-off other non-used outputs
      IBUF_DS_ODIV2  <= (others => '0');
      OBUF_DS_P      <= (others => '0');
      OBUF_DS_N      <= (others => '0');
      IOBUF_IO_O     <= (others => '0');
      IOBUF_DS_P     <= (others => '0');
      IOBUF_DS_N     <= (others => '0');

   end generate USE_IBUFDS;

  -- instantiate OBUFDS
   USE_OBUFDS : if (BUFFER_TYPE = "obufds") generate

      GEN_OBUFDS : for i in 0 to C_SIZE-1 generate

         OBUFDS_I : OBUFDS
         port map (O => OBUF_DS_P(i), OB => OBUF_DS_N(i), I => OBUF_IN(i));

      end generate GEN_OBUFDS;

    -- tie-off other non-used outputs
      IBUF_OUT       <= (others => '0');
      IBUF_DS_ODIV2  <= (others => '0');
      IOBUF_IO_O     <= (others => '0');
      IOBUF_DS_P     <= (others => '0');
      IOBUF_DS_N     <= (others => '0');

   end generate USE_OBUFDS;

  -- instantiate IOBUFDS
   USE_IOBUFDS : if (BUFFER_TYPE = "iobufds") generate

      GEN_IOBUFDS : for i in 0 to C_SIZE-1 generate

         IOBUFDS_I : IOBUFDS
         port map (
                O   => IOBUF_IO_O(i),
                IO  => IOBUF_DS_P(i),
                IOB => IOBUF_DS_N(i),
                I   => IOBUF_IO_I(i),
                T   => IOBUF_IO_T(i)
             );

      end generate GEN_IOBUFDS;

    -- tie-off other non-used outputs
      IBUF_OUT       <= (others => '0');
      IBUF_DS_ODIV2  <= (others => '0');
      OBUF_DS_P      <= (others => '0');
      OBUF_DS_N      <= (others => '0');

   end generate USE_IOBUFDS;


  -- instantiate BUFG
   USE_BUFG : if (BUFFER_TYPE = "bufg") generate

      GEN_BUFG : for i in 0 to C_SIZE-1 generate

         BUFG_U : BUFG
         port map (
                O   => BUFG_O(i),
                I   => BUFG_I(i)
             );

      end generate GEN_BUFG;

   end generate USE_BUFG;

  -- instantiate BUFGCE
   USE_BUFGCE : if (BUFFER_TYPE = "bufgce") generate

      GEN_BUFGCE : for i in 0 to C_SIZE-1 generate

         BUFGCE_U : BUFGCE
         port map (
                O   => BUFGCE_O(i),
                I   => BUFGCE_I(i),
                CE   => BUFGCE_CE(i)
             );

      end generate GEN_BUFGCE;

   end generate USE_BUFGCE;


  -- instantiate BUFH
   USE_BUFH : if (BUFFER_TYPE = "bufh") generate

      GEN_BUFH : for i in 0 to C_SIZE-1 generate

         BUFH_U : BUFH
         port map (
                O   => BUFH_O(i),
                I   => BUFH_I(i)
             );

      end generate GEN_BUFH;

   end generate USE_BUFH;

  -- instantiate BUFHCE
   USE_BUFHCE : if (BUFFER_TYPE = "bufhce") generate

      GEN_BUFHCE : for i in 0 to C_SIZE-1 generate

         BUFHCE_U : BUFHCE
         port map (
                O   => BUFHCE_O(i),
                I   => BUFHCE_I(i),
                CE   => BUFHCE_CE(i)
             );

      end generate GEN_BUFHCE;

   end generate USE_BUFHCE;


 -- instantiate BUFG
   USE_BUFG_GT_WITH_SYNC : if (BUFFER_TYPE = "bufg_gt" and C_BUFG_GT_SYNC = 1) generate
        signal BUFG_GT_CESYNC : std_logic_vector(C_SIZE-1 downto 0);
        signal BUFG_GT_CLRSYNC  : std_logic_vector(C_SIZE-1 downto 0);
   begin
       GEN_BUFG_GT_SYNC : for i in 0 to C_SIZE-1 generate
            BUFG_GT_SYNC_U : BUFG_GT_SYNC
             port map (
                  CE         => BUFG_GT_CE(i),
                  CESYNC     => BUFG_GT_CESYNC(i),
                  CLR        => BUFG_GT_CLR(i),
                  CLRSYNC    => BUFG_GT_CLRSYNC(i),
                  CLK        => BUFG_GT_I(i)
              );
          
        end generate GEN_BUFG_GT_SYNC;
        
        GEN_BUFG_GT : for i in 0 to C_SIZE-1 generate

          BUFG_GT_U : BUFG_GT
           port map (
                  O          => BUFG_GT_O(i),
                  CE         => BUFG_GT_CESYNC(i),
                  CEMASK     => BUFG_GT_CEMASK(i),
                  CLR        => BUFG_GT_CLRSYNC(i),
                  CLRMASK    => BUFG_GT_CLRMASK(i),
                  DIV        => BUFG_GT_DIV((3*i)+2 downto 3*i),
                  I          => BUFG_GT_I(i)
               );

        end generate GEN_BUFG_GT;
        
  end generate USE_BUFG_GT_WITH_SYNC;

  USE_BUFG_GT : if (BUFFER_TYPE = "bufg_gt" and C_BUFG_GT_SYNC = 0) generate
      GEN_BUFG_GT : for i in 0 to C_SIZE-1 generate

          BUFG_GT_U : BUFG_GT
           port map (
                  O          => BUFG_GT_O(i),
                  CE         => BUFG_GT_CE(i),
                  CEMASK     => BUFG_GT_CEMASK(i),
                  CLR        => BUFG_GT_CLR(i),
                  CLRMASK    => BUFG_GT_CLRMASK(i),
                  DIV        => BUFG_GT_DIV((3*i)+2 downto 3*i),
                  I          => BUFG_GT_I(i)
               );

        end generate GEN_BUFG_GT;
   end generate USE_BUFG_GT;


  -- OBUFDS_GTE3: Gigabit Transceiver Buffer
  -- UltraScale
  
  USE_OBUFDS_GTE3 : if (BUFFER_TYPE = "obufds_gte3") generate
    
      GEN_OBUFDS_GTE3  : for i in 0 to C_SIZE-1 generate
         OBUFDS_GTE3_U :  OBUFDS_GTE3

        generic map (
          REFCLK_EN_TX_PATH => BIT1, --'0', 
          REFCLK_ICNTL_TX   => C_REFCLK_ICNTL_TX
        )
        port map (
          O   => OBUFDS_GTE3_O(i), 
          OB  => OBUFDS_GTE3_OB(i), 
          CEB => OBUFDS_GTE3_CEB(i), 
          I   => OBUFDS_GTE3_I(i) 
        );

         end generate GEN_OBUFDS_GTE3;
       end generate USE_OBUFDS_GTE3;



  -- End of OBUFDS_GTE3_inst instantiation


  -- OBUFDS_GTE3_ADV: Gigabit Transceiver Buffer
  -- UltraScale
  
  USE_OBUFDS_GTE3_ADV : if (BUFFER_TYPE = "obufds_gte3_adv") generate
    
      GEN_OBUFDS_GTE3_ADV : for i in 0 to C_SIZE-1 generate
        OBUFDS_GTE3_U_ADV :  OBUFDS_GTE3_ADV

        generic map (
          REFCLK_EN_TX_PATH => BIT1, --'0', 
          REFCLK_ICNTL_TX   => C_REFCLK_ICNTL_TX
        )
        port map (
          O            => OBUFDS_GTE3_ADV_O(i), 
          OB           => OBUFDS_GTE3_ADV_OB(i), 
          CEB          => OBUFDS_GTE3_ADV_CEB(i), 
          I            => OBUFDS_GTE3_ADV_I((4*i)+3 downto (4*i)),
          RXRECCLK_SEL => RXRECCLK_SEL_GTE3_ADV((2*i)+1 downto (2*i)) 
        );


         end generate GEN_OBUFDS_GTE3_ADV;
       end generate USE_OBUFDS_GTE3_ADV;


  -- End of OBUFDS_GTE3_ADV_inst instantiation


  -- OBUFDS_GTE4: Gigabit Transceiver Buffer
  -- UltraScale
  
  USE_OBUFDS_GTE4 : if (BUFFER_TYPE = "obufds_gte4") generate
    
      GEN_OBUFDS_GTE4  : for i in 0 to C_SIZE-1 generate
         OBUFDS_GTE4_U :  OBUFDS_GTE4

        generic map (
          REFCLK_EN_TX_PATH => BIT1, --'0', 
          REFCLK_ICNTL_TX   => C_REFCLK_ICNTL_TX
        )
        port map (
          O   => OBUFDS_GTE4_O(i), 
          OB  => OBUFDS_GTE4_OB(i), 
          CEB => OBUFDS_GTE4_CEB(i), 
          I   => OBUFDS_GTE4_I(i) 
        );

         end generate GEN_OBUFDS_GTE4;
       end generate USE_OBUFDS_GTE4;

  -- End of OBUFDS_GTE4_inst instantiation

  -- OBUFDS_GTE4_ADV: Gigabit Transceiver Buffer
  -- UltraScale
  
  USE_OBUFDS_GTE4_ADV : if (BUFFER_TYPE = "obufds_gte4_adv") generate
    
      GEN_OBUFDS_GTE4_ADV  : for i in 0 to C_SIZE-1 generate
         OBUFDS_GTE4_ADV_U :  OBUFDS_GTE4_ADV

        generic map (
          REFCLK_EN_TX_PATH => BIT1, --'0', 
          REFCLK_ICNTL_TX   => C_REFCLK_ICNTL_TX
        )
        port map (
          O            => OBUFDS_GTE4_ADV_O(i), 
          OB           => OBUFDS_GTE4_ADV_OB(i), 
          CEB          => OBUFDS_GTE4_ADV_CEB(i), 
          I            => OBUFDS_GTE4_ADV_I((4*i)+3 downto (4*i)),
          RXRECCLK_SEL => RXRECCLK_SEL_GTE4_ADV((2*i)+1 downto 2*i) 
        );

         end generate GEN_OBUFDS_GTE4_ADV;
       end generate USE_OBUFDS_GTE4_ADV;

  -- End of OBUFDS_GTE4_ADV_inst inOBUFDS_GTEstantiation



  -- IBUFDS_GTME5: Gigabit Transceiver Buffer
  -- UltraScale
  
  USE_IBUFDS_GTME5 : if (BUFFER_TYPE = "ibufds_gtme5") generate
    
      GEN_IBUFDS_GTME5  : for i in 0 to C_SIZE-1 generate
         IBUFDS_GTME5_U :  IBUFDS_GTME5

        generic map (
          REFCLK_CTL_DRV_SWING => BIT3, --"010",
          REFCLK_EN_DRV        => BIT1, --'0',
          REFCLK_EN_TX_PATH    => BIT1, --'0',
          REFCLK_HROW_CK_SEL   => 0,
          REFCLK_ICNTL_RX      => 0
        )
        port map (
          O            => IBUFDS_GTME5_O(i), 
          ODIV2        => IBUFDS_GTME5_ODIV2(i), 
          IB           => IBUFDS_GTME5_IB(i), 
          CEB          => IBUFDS_GTME5_CEB(i), 
          I            => IBUFDS_GTME5_I(i)
        );

         end generate GEN_IBUFDS_GTME5;
       end generate USE_IBUFDS_GTME5;

  -- End of IBUFDS_GTME5_inst instantiation

  -- IBUFDS_GTM: Gigabit Transceiver Buffer
  -- UltraScale
  
  USE_IBUFDS_GTM : if (BUFFER_TYPE = "ibufds_gtm") generate
    
      GEN_IBUFDS_GTM  : for i in 0 to C_SIZE-1 generate
         IBUFDS_GTM_U :  IBUFDS_GTM

        generic map (
          REFCLK_EN_TX_PATH  => BIT1, --'0',
          REFCLK_HROW_CK_SEL => 0,
          REFCLK_ICNTL_RX    => 0
        )
        port map (
          O            => IBUFDS_GTM_O(i), 
          ODIV2        => IBUFDS_GTM_ODIV2(i), 
          IB           => IBUFDS_GTM_IB(i), 
          CEB          => IBUFDS_GTM_CEB(i), 
          I            => IBUFDS_GTM_I(i)
        );

         end generate GEN_IBUFDS_GTM;
       end generate USE_IBUFDS_GTM;

  -- End of IBUFDS_GTM_inst instantiation


  -- OBUFDS_GTM: Gigabit Transceiver Buffer
  -- UltraScale
  
  USE_OBUFDS_GTM : if (BUFFER_TYPE = "obufds_gtm") generate
    
      GEN_OBUFDS_GTM  : for i in 0 to C_SIZE-1 generate
         OBUFDS_GTM_U :  OBUFDS_GTM

        generic map (
          REFCLK_EN_TX_PATH  => BIT1 --'0'
                 )
        port map (
          O            => OBUFDS_GTM_O(i), 
          OB           => OBUFDS_GTM_OB(i), 
          CEB          => OBUFDS_GTM_CEB(i), 
          I            => OBUFDS_GTM_I(i)
        );

         end generate GEN_OBUFDS_GTM;
       end generate USE_OBUFDS_GTM;


  -- End of IBUFDS_GTM_inst instantiation

  -- OBUFDS_GTM_ADV: Gigabit Transceiver Buffer
  -- UltraScale
  
  USE_OBUFDS_GTM_ADV : if (BUFFER_TYPE = "obufds_gtm_adv") generate
    
      GEN_OBUFDS_GTM_ADV  : for i in 0 to C_SIZE-1 generate
         OBUFDS_GTM_ADV_U :  OBUFDS_GTM_ADV

        generic map (
          REFCLK_EN_TX_PATH  => BIT1, --'0',
          REFCLK_ICNTL_TX    => 0,
          RXRECCLK_SEL       => BIT2  --"00"
        )
        port map (
          O            => OBUFDS_GTM_ADV_O(i), 
          OB           => OBUFDS_GTM_ADV_OB(i), 
          CEB          => OBUFDS_GTM_ADV_CEB(i), 
          I            => OBUFDS_GTM_ADV_I((4*i)+3 downto (4*i))
        );

         end generate GEN_OBUFDS_GTM_ADV;
       end generate USE_OBUFDS_GTM_ADV;


  -- End of OBUFDS_GTM_inst instantiation


  -- OBUFDS_GTME5: Gigabit Transceiver Buffer
  -- UltraScale
  
  USE_OBUFDS_GTME5 : if (BUFFER_TYPE = "obufds_gtme5") generate
    
      GEN_OBUFDS_GTME5  : for i in 0 to C_SIZE-1 generate
         OBUFDS_GTME5_U :  OBUFDS_GTME5

        generic map (
          REFCLK_EN_TX_PATH  => BIT1 --'0'
        )
        port map (
          O            => OBUFDS_GTME5_O(i), 
          OB           => OBUFDS_GTME5_OB(i), 
          CEB          => OBUFDS_GTME5_CEB(i), 
          I            => OBUFDS_GTME5_I(i)
        );

         end generate GEN_OBUFDS_GTME5;
       end generate USE_OBUFDS_GTME5;


  -- End of OBUFDS_GTM_inst instantiation


  -- OBUFDS_GTME5_ADV: Gigabit Transceiver Buffer
  -- UltraScale
  
  USE_OBUFDS_GTME5_ADV : if (BUFFER_TYPE = "obufds_gtme5_adv") generate
    
      GEN_OBUFDS_GTME5_ADV  : for i in 0 to C_SIZE-1 generate
         OBUFDS_GTME5_ADV_U : OBUFDS_GTME5_ADV

        generic map (
          REFCLK_EN_TX_PATH  => BIT1, --'0',
          RXRECCLK_SEL       => BIT2  -- "00"   -- integer
        )
        port map (
          O            => OBUFDS_GTME5_ADV_O(i), 
          OB           => OBUFDS_GTME5_ADV_OB(i), 
          CEB          => OBUFDS_GTME5_ADV_CEB(i), 
          I            => OBUFDS_GTME5_ADV_I((4*i)+3 downto (4*i))
        );

         end generate GEN_OBUFDS_GTME5_ADV;
       end generate USE_OBUFDS_GTME5_ADV;


  -- End of OBUFDS_GTM_inst instantiation

end IMP;
