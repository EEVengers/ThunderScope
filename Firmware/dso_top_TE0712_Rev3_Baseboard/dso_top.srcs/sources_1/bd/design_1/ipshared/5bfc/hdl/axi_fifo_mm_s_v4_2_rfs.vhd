-------------------------------------------------------------------------------
--
-- AXI4-AXI4 Stream FIFO Core - AXI4-AXI4 Stream FIFO Package
--
-------------------------------------------------------------------------------
-- (c) Copyright 2006 - 2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
--
-- Filename: axi_fifo_mm_s_pkg.vhd
--
-- Author: Xilinx
--
-- Description:
--   This file is the package file of the AXI4-AXI4 Stream FIFO Core. It
--   contains all function declarations and bodies that are used in all
--   AXI4-AXI4 Stream FIFO Core modules and submodules.
--
-------------------------------------------------------------------------------
-- Structure:
--     axi_fifo_mm_s_pkg
--
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- LIBRARY DECLARATIONS
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

PACKAGE axi_fifo_mm_s_pkg IS

  CONSTANT ZERO                 : std_logic := '0';
  CONSTANT FLOP_DELAY           : time := 100 PS;
  CONSTANT TDFD_OFFSET          : std_logic_vector(31 downto 0) := X"00000000";
  CONSTANT RDFD_OFFSET          : std_logic_vector(31 downto 0) := X"00001000";

  -----------------------------------------------------------------------------
  -- FUNCTION DECLARATIONS
  -----------------------------------------------------------------------------

  FUNCTION if_then_else (
    condition : BOOLEAN;
    true_case : INTEGER;
    false_case : INTEGER)
    RETURN INTEGER;

  FUNCTION if_then_else (
    condition : BOOLEAN;
    true_case : string;
    false_case : string)
    RETURN string;


  FUNCTION divroundup (
    data_value : INTEGER;
    divisor : INTEGER)
    RETURN INTEGER;

  FUNCTION log2roundup (
    data_value : INTEGER)
    RETURN INTEGER;

  FUNCTION count_ones (
      indata  : std_logic_vector;
      indata_size : integer)
    RETURN integer;

END axi_fifo_mm_s_pkg;

-------------------------------------------------------------------------------
-- PACKAGE BODY
-------------------------------------------------------------------------------
PACKAGE BODY axi_fifo_mm_s_pkg IS

  ------------------------------------------------------------------------------
  -- FUNCTION: if_then_else
  -- This function is used to implement an IF..THEN when such a statement is not
  --  allowed.
  ------------------------------------------------------------------------------
  FUNCTION if_then_else (
    condition : BOOLEAN;
    true_case : INTEGER;
    false_case : INTEGER)
  RETURN INTEGER IS
    VARIABLE retval : INTEGER := 0;
  BEGIN
    IF NOT condition THEN
      retval:=false_case;
    ELSE
      retval:=true_case;
    END IF;
    RETURN retval;
  END if_then_else;

  FUNCTION if_then_else (
    condition : BOOLEAN;
    true_case : string;
    false_case : string)
  RETURN string IS
  BEGIN
    IF NOT condition THEN
      return false_case;
    ELSE
      return true_case;
    END IF;
  END if_then_else;


 -----------------------------------------------------------------------------
  -- FUNCTION : divroundup
  -- Returns the ceiling value of the division
  -- Data_value - the quantity to be divided, dividend
  -- Divisor - the value to divide the data_value by
  -----------------------------------------------------------------------------
  FUNCTION divroundup (
    data_value : INTEGER;
    divisor : INTEGER)
  RETURN INTEGER IS
    VARIABLE div                   : INTEGER;
  BEGIN
    div   := data_value/divisor;
    IF ( (data_value MOD divisor) /= 0) THEN
      div := div+1;
    END IF;
    RETURN div;
  END divroundup;

  -----------------------------------------------------------------------------
  -- FUNCTION : log2roundup
  -----------------------------------------------------------------------------
  FUNCTION log2roundup (
    data_value : INTEGER)
  RETURN INTEGER IS

    VARIABLE width       : INTEGER := 0;
    VARIABLE cnt         : INTEGER := 1;
    CONSTANT lower_limit : INTEGER := 1;
    CONSTANT upper_limit : INTEGER := 8;

  BEGIN
    IF (data_value <= 1) THEN
      width   := 0;
    ELSE
      WHILE (cnt < data_value) LOOP
        width := width + 1;
        cnt   := cnt *2;
      END LOOP;
    END IF;

    RETURN width;
  END log2roundup;

  --------------------------------------------------------
  -- FUNCION : count_ones_nbit
  -- Returns the binary encoded value of number of ones
  --------------------------------------------------------
  FUNCTION count_ones (
      indata  : std_logic_vector;
      indata_size : integer)
    RETURN integer IS
      VARIABLE tmp : integer := 0;
    BEGIN
       FOR i IN indata_size-1 DOWNTO 0 LOOP
         IF indata(i) = '0' THEN 
	   EXIT; 
	 END IF;
	 tmp := tmp + 1;
       end loop;
      RETURN tmp;
    END count_ones; 
END axi_fifo_mm_s_pkg;



-------------------------------------------------------------------------------
--
--  AXI4-AXI4 Stream FIFO Core - AXI WRITE FSM File
--
-------------------------------------------------------------------------------
-- (c) Copyright 2006 - 2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
--
-- Filename: axi_write_fsm.vhd
--
-- Author: Xilinx
--
-- Description: AXI Write State Machine. 
-- This file is used by the AXI4-AXI4 Stream FIFO core.
--   
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.all;

library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.axi_fifo_mm_s_pkg.all;

ENTITY axi_write_fsm IS
GENERIC (
    -- AXI Interface related parameters start here
    C_AXI_TYPE                 : integer := 0 -- 0: AXI Lite; 1: AXI Full;
    );
  PORT (
    -- AXI Global Signals
    S_ACLK                     : IN  std_logic;
    S_ARESETN                  : IN  std_logic; 

    -- AXI Full/Lite Slave Write Channel (write side)
    S_AXI_AWVALID              : IN  std_logic := '0';
    aw_ready_r                 : OUT std_logic := '0';
    S_AXI_WVALID               : IN  std_logic := '0';
    S_AXI_WREADY               : OUT std_logic := '0';
    S_AXI_BVALID               : OUT std_logic := '0';
    S_AXI_BREADY               : IN  std_logic := '0';

    -- Signals for BMG interface
    S_AXI_WR_EN                : OUT std_logic:= '0';

    -- Signals from FSM WRAPPER
    w_last_c                   : IN std_logic := '0';
    bready_timeout_c           : IN std_logic := '0';
  
    -- Signals to FSM WRAPPER
    addr_en_c                  : OUT std_logic := '0';
    incr_addr_c                : OUT std_logic := '0';
    bvalid_c                   : OUT std_logic := '0'
    );
END axi_write_fsm;


ARCHITECTURE axi_write_fsm_arch OF axi_write_fsm IS

  --TYPE state_type is (S0 => WAIT_WRADDR,S1 => REG_WRADDR,S2 => WR_MEM);
  CONSTANT WAIT_WRADDR            : std_logic_vector (1 DOWNTO 0) := "00";
  CONSTANT REG_WRADDR             : std_logic_vector (1 DOWNTO 0) := "01";
  CONSTANT OS_WR                  : std_logic_vector (1 DOWNTO 0) := "10";
  CONSTANT WR_MEM                 : std_logic_vector (1 DOWNTO 0) := "11";

  SIGNAL present_state            : std_logic_vector (1 DOWNTO 0) := WAIT_WRADDR; 
  SIGNAL next_state               : std_logic_vector (1 DOWNTO 0) := WAIT_WRADDR;

   --Combinatorial signals used in the design have "_c" at the end of signal names
  SIGNAL aw_ready_c               : std_logic := '0';
  SIGNAL w_ready_c                : std_logic := '0';
  SIGNAL wr_en_c                  : std_logic := '0';

  --Registered signals used in the design have "_r" at the end of signal names
  SIGNAL w_ready_r                : std_logic := '0';
  
  BEGIN
  ---------------------------------------------------------------------------
  -- AXI LITE   
  ---------------------------------------------------------------------------
  gaxi_lite_sm: IF (C_AXI_TYPE = 0) GENERATE
  BEGIN
    ---------------------------------------------------------------------------
    -- AXI LITE WRITE FSM  
    ---------------------------------------------------------------------------
    P_write_fsm: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, S_AXI_BREADY, bready_timeout_c)
    BEGIN

      CASE present_state IS
        -- State WAIT_FOR_WRITE_ADDRESS (WAIT_WRADDR)
        WHEN WAIT_WRADDR =>   
            IF (S_AXI_AWVALID = '1' AND S_AXI_WVALID = '1') THEN 
              next_state               <= REG_WRADDR;   	
	    ELSIF (S_AXI_AWVALID = '1' AND S_AXI_WVALID = '0') THEN
              next_state               <= OS_WR;
	    ELSE	      
              next_state               <= WAIT_WRADDR;
            END IF; 
        
        -- State REGISTER_WRITE_ADDRESS (REG_WRADDR)
        WHEN REG_WRADDR => 
	    IF ( S_AXI_AWVALID = '1' AND S_AXI_WVALID = '0') THEN 
              next_state               <= OS_WR;   	
	    ELSIF ( S_AXI_WVALID = '0' OR (bready_timeout_c = '0' AND S_AXI_AWVALID = '0')) THEN 
              next_state               <= WAIT_WRADDR;   	
	    ELSIF (bready_timeout_c = '1' AND S_AXI_WVALID = '1') THEN 
              next_state               <= WR_MEM;   	
	    ELSE
              next_state               <= REG_WRADDR;
            END IF;
       
       	-- State OUTSTANDING WRITE (OS_WR)
        WHEN OS_WR => 
            IF (S_AXI_WVALID = '1'  AND bready_timeout_c = '0') THEN
              next_state               <= WAIT_WRADDR;
	    ELSIF (S_AXI_WVALID = '1'  AND bready_timeout_c = '1') THEN
              next_state               <= WR_MEM;
	    ELSE
              next_state               <= OS_WR;
            END IF;
        
        -- State WRITES TO MEMORY (WR_MEM)
        WHEN WR_MEM => 
            IF (S_AXI_BREADY = '1') THEN
              next_state               <= WAIT_WRADDR;
            ELSE 
              next_state               <= WR_MEM;
            END IF;
        		   
        WHEN OTHERS => 
              next_state               <= WAIT_WRADDR;
      END CASE;
    END PROCESS P_write_fsm ;
 
    ---------------------------------------------------------------------------
    -- FSM state register 
    ---------------------------------------------------------------------------
    P_State_Register: PROCESS (S_ACLK)       
    BEGIN
      IF (S_ACLK'event AND S_ACLK = '1') THEN
        IF (S_ARESETN = '1') THEN
          present_state                 <=  WAIT_WRADDR;
        ELSE
          present_state                 <=  next_state AFTER FLOP_DELAY;
        END IF; 
      END IF; 
    END PROCESS P_State_Register;
 
    ---------------------------------------------------------------------------
    -- Registering the signals (some of these signals are used as latches)
    ---------------------------------------------------------------------------
    P_register_r: PROCESS (S_ACLK)       
    BEGIN
      IF (S_ACLK'event AND S_ACLK = '1') THEN
        IF (S_ARESETN = '1') THEN
          aw_ready_r                   <=  '0';
          w_ready_r                    <=  '0';
        ELSE
          aw_ready_r                   <=  aw_ready_c AFTER FLOP_DELAY;
          w_ready_r     		     <=  w_ready_c AFTER FLOP_DELAY;
        END IF; 
      END IF; 
    END PROCESS P_register_r;
    
    ---------------------------------------------------------------------------
    -- Generation of address enable signal
    ---------------------------------------------------------------------------
    P_addr_en_c: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c)
    BEGIN
      CASE present_state IS
        WHEN WAIT_WRADDR =>   
                addr_en_c           <=  S_AXI_AWVALID;
	--ad_en high only in full throughput condition in state REG_WRADDR
        WHEN REG_WRADDR  => 
               addr_en_c            <=  NOT bready_timeout_c AND  S_AXI_AWVALID AND S_AXI_WVALID;  
        WHEN OTHERS => 
               addr_en_c            <=  '0';  
      END CASE;
    END PROCESS P_addr_en_c ;


    ---------------------------------------------------------------------------
    -- Generation of internal awready signal
    ---------------------------------------------------------------------------
    P_aw_ready_c: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c, S_AXI_BREADY)
    BEGIN
      CASE present_state IS
        WHEN WAIT_WRADDR       =>   
               aw_ready_c           <=  NOT S_AXI_AWVALID;
        WHEN REG_WRADDR        =>
               aw_ready_c           <=  (NOT bready_timeout_c AND S_AXI_WVALID) OR ((NOT S_AXI_WVALID) AND (NOT S_AXI_AWVALID));
        WHEN OS_WR             =>    
               aw_ready_c           <=  NOT bready_timeout_c AND S_AXI_WVALID;
        WHEN WR_MEM            =>    
               aw_ready_c           <=  S_AXI_BREADY;
        WHEN OTHERS =>
               aw_ready_c           <=  '0';
      END CASE;
    END PROCESS P_aw_ready_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal write enable signal
    ---------------------------------------------------------------------------
    P_wr_en_c: PROCESS (present_state, S_AXI_WVALID)
    BEGIN
      CASE present_state IS
        WHEN REG_WRADDR|OS_WR  =>    
               wr_en_c             <=  S_AXI_WVALID; 
        WHEN OTHERS            =>
               wr_en_c             <=  '0'; 
      END CASE;
    END PROCESS P_wr_en_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal wready signal
    ---------------------------------------------------------------------------
    P_w_ready_c: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c)
    BEGIN
      CASE present_state IS
        WHEN WAIT_WRADDR =>   
               w_ready_c           <=  S_AXI_AWVALID;
        WHEN REG_WRADDR  =>    
               w_ready_c           <=  (NOT bready_timeout_c AND S_AXI_AWVALID) OR (NOT S_AXI_WVALID AND S_AXI_AWVALID); 
        WHEN OS_WR       =>    
               w_ready_c           <=  NOT S_AXI_WVALID; 
        WHEN OTHERS      =>
              w_ready_c            <=  '0';
      END CASE;
    END PROCESS P_w_ready_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal bvalid signal
    ---------------------------------------------------------------------------
    P_b_valid_c: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c)
    BEGIN
      CASE present_state IS
        WHEN REG_WRADDR|OS_WR =>         
	       bvalid_c            <=  S_AXI_WVALID;     
        WHEN OTHERS => 
               bvalid_c            <= '0';
      END CASE;
    END PROCESS P_b_valid_c ;    
    
  END GENERATE gaxi_lite_sm;

  ---------------------------------------------------------------------------
  -- AXI FULL 
  ---------------------------------------------------------------------------
  gaxi_full_sm: IF (C_AXI_TYPE = 1) GENERATE
  BEGIN
    ---------------------------------------------------------------------------
    -- AXI FULL WRITE FSM  
    ---------------------------------------------------------------------------
    P_write_fsm: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c, w_last_c, S_AXI_BREADY)
    BEGIN

      CASE present_state IS
  
  	-- State WAIT_FOR_WRITE_ADDRESS (WAIT_WRADDR)
        WHEN WAIT_WRADDR =>
	  IF (S_AXI_AWVALID = '1' AND S_AXI_WVALID = '1') THEN
	    next_state          <=  REG_WRADDR;
	  ELSIF (S_AXI_AWVALID = '1' AND S_AXI_WVALID = '0') THEN
	    next_state          <=  OS_WR;
	  ELSE
	    next_state          <=  WAIT_WRADDR;
	  END IF;

        -- State REGISTER_WRITE_ADDRESS (REG_WRADDR)
        WHEN REG_WRADDR =>
	  IF (bready_timeout_c = '1' AND S_AXI_WVALID = '1' AND w_last_c = '1') THEN
	    next_state          <=  WR_MEM;
	  ELSIF (bready_timeout_c = '0' AND S_AXI_AWVALID = '0' AND S_AXI_WVALID = '1' AND w_last_c = '1') THEN
	    next_state          <=  WAIT_WRADDR;
	  ELSE
	    next_state          <=  REG_WRADDR;
	  END IF;

        -- State OUTSTANDING WRITE (OS_WR)
        WHEN OS_WR => 
	  IF (S_AXI_WVALID = '1' AND w_last_c = '1' AND bready_timeout_c = '0') THEN
	    next_state         <=  WAIT_WRADDR;
	  ELSIF (S_AXI_WVALID = '1' AND w_last_c = '1' AND bready_timeout_c = '1') THEN
	    next_state         <=  WR_MEM;
	  ELSIF (S_AXI_WVALID = '1' AND w_last_c = '0') THEN
	    next_state         <=  REG_WRADDR;
	  ELSE
	    next_state         <=  OS_WR;
	  END IF;             		 

        -- State WRITES TO MEMORY (WR_MEM)
        WHEN WR_MEM => 
	  IF (S_AXI_BREADY = '1') THEN
	    next_state         <=  WAIT_WRADDR;
	  ELSE
	    next_state         <=  WR_MEM;
	  END IF;             		  

        WHEN OTHERS =>
	  next_state           <=  WAIT_WRADDR;   	
      END CASE; 

    END PROCESS P_write_fsm;
 
    ---------------------------------------------------------------------------
    -- FSM state register 
    ---------------------------------------------------------------------------
    P_State_Register: PROCESS (S_ACLK)       
    BEGIN
      IF (S_ACLK'event AND S_ACLK = '1') THEN
        IF (S_ARESETN = '1') THEN
          present_state        <=  WAIT_WRADDR;
        ELSE
          present_state        <=  next_state AFTER FLOP_DELAY;
        END IF; 
      END IF; 
    END PROCESS P_State_Register;
 
    ---------------------------------------------------------------------------
    -- Registering the signals (some of these signals are used as latches)
    ---------------------------------------------------------------------------
    P_register_r: PROCESS (S_ACLK)       
    BEGIN
      IF (S_ACLK'event AND S_ACLK = '1') THEN
        IF (S_ARESETN = '1') THEN
          aw_ready_r          <=  '0';
	       w_ready_r           <=  '0';
        ELSE
          aw_ready_r          <=  aw_ready_c AFTER FLOP_DELAY;
	       w_ready_r           <=  w_ready_c AFTER FLOP_DELAY;
        END IF; 
      END IF; 
    END PROCESS P_register_r;
    
    ---------------------------------------------------------------------------
    -- Generation of write enable signal
    ---------------------------------------------------------------------------
    P_wr_en_c: PROCESS (present_state, S_AXI_WVALID)
    BEGIN
      CASE present_state IS
        WHEN REG_WRADDR|OS_WR => 
               wr_en_c              <= S_AXI_WVALID;
        WHEN OTHERS => 
               wr_en_c              <= '0';  
      END CASE;
    END PROCESS P_wr_en_c ;

    ---------------------------------------------------------------------------
    -- Generation of awready signal
    ---------------------------------------------------------------------------
    P_aw_ready_c: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c, w_last_c, S_AXI_BREADY)
    BEGIN
      CASE present_state IS
        WHEN WAIT_WRADDR =>   
               aw_ready_c           <=  NOT S_AXI_AWVALID;
        WHEN REG_WRADDR =>  
	       aw_ready_c           <=  (NOT bready_timeout_c AND S_AXI_WVALID AND w_last_c);
        WHEN OS_WR      =>    
               aw_ready_c           <=  S_AXI_WVALID AND w_last_c AND (NOT bready_timeout_c);
        WHEN WR_MEM     =>    
               aw_ready_c           <=  S_AXI_BREADY;
        WHEN OTHERS     =>
               aw_ready_c           <= '0';
      END CASE;
    END PROCESS P_aw_ready_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal address enable signal
    ---------------------------------------------------------------------------
    P_addr_en_c: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c, w_last_c)
    BEGIN
      CASE present_state IS
        WHEN WAIT_WRADDR =>   
               addr_en_c            <=  S_AXI_AWVALID;
        WHEN REG_WRADDR =>    
               addr_en_c            <=  (NOT bready_timeout_c) AND S_AXI_AWVALID AND S_AXI_WVALID AND w_last_c;
        WHEN OTHERS =>
               addr_en_c            <=  '0';
      END CASE;
    END PROCESS P_addr_en_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal wready signal
    ---------------------------------------------------------------------------
    P_w_ready_c: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c, w_last_c)
    BEGIN
      CASE present_state IS
        WHEN WAIT_WRADDR =>
               w_ready_c          <=   S_AXI_AWVALID; 	  
        WHEN REG_WRADDR =>    
               w_ready_c          <=     (NOT S_AXI_WVALID) OR (NOT w_last_c) OR 
					 (NOT bready_timeout_c AND S_AXI_AWVALID AND S_AXI_WVALID and w_last_c); 	  
        WHEN OS_WR =>
               w_ready_c          <=   (NOT S_AXI_WVALID) OR (NOT w_last_c);	  
        WHEN OTHERS =>
               w_ready_c          <=   '0'; 	  
      END CASE;
    END PROCESS P_w_ready_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal increment address signal
    ---------------------------------------------------------------------------
    P_incr_addr: PROCESS (present_state, S_AXI_WVALID,  w_last_c)
    BEGIN
      CASE present_state IS
        WHEN REG_WRADDR|OS_WR =>    
               incr_addr_c  <= S_AXI_WVALID AND NOT w_last_c;
        WHEN OTHERS => 
               incr_addr_c  <= '0';
      END CASE;
    END PROCESS P_incr_addr ;

      
    ---------------------------------------------------------------------------
    -- Generation of internal bvalid signal
    ---------------------------------------------------------------------------
    P_b_valid_c: PROCESS (present_state, S_AXI_WVALID, w_last_c)
    BEGIN
      CASE present_state IS
        WHEN REG_WRADDR|OS_WR =>         
	       bvalid_c            <=  S_AXI_WVALID AND w_last_c;   
        WHEN OTHERS => 
               bvalid_c            <= '0';
      END CASE;
    END PROCESS P_b_valid_c ;   

   END GENERATE gaxi_full_sm;
   -- END OF AXI FULL FSM

    -----------------------------------------------------------------------------
    -- Assign output signals
    -----------------------------------------------------------------------------
    S_AXI_WREADY  	        <=  w_ready_r;
    S_AXI_WR_EN                 <=  wr_en_c;


END axi_write_fsm_arch;


-------------------------------------------------------------------------------
--
--  AXI4-AXI4 Stream FIFO Core - AXI WRITE FSM File
--
-------------------------------------------------------------------------------
-- (c) Copyright 2006 - 2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
--
-- Filename: axi_write_wrapper.vhd
--
-- Author: Xilinx
--
-- Description: AXI Write State Machine Wrapper. 
-- This file is used by the AXI4-AXI4 Stream FIFO core.
--   
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.all;

library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.axi_fifo_mm_s_pkg.all;

ENTITY axi_write_wrapper IS
GENERIC (
    -- AXI Interface related parameters start here
    C_AXI_TYPE                 : integer := 1; -- 0: AXI Lite; 1: AXI Full;
    C_AXI_SLAVE_TYPE           : integer := 0; -- 0: MEMORY SLAVE; 1: PERIPHERAL SLAVE;
    
    C_AXI_AWADDR_WIDTH         : integer := 32;
    C_ADDRA_WIDTH 	       : integer := 12;
    C_AXI_WDATA_WIDTH          : integer := 32;
    C_HAS_AXI_ID               : integer := 0;
    C_AXI_ID_WIDTH             : integer := 4;
   
    -- AXI OUTSTANDING WRITES
    C_AXI_OS_WR                : integer := 2
    );
  PORT (
    -- AXI Global Signals
    S_ACLK                     : IN  std_logic;
    S_ARESETN                  : IN  std_logic; 

    -- AXI Full/Lite Slave Write Channel (write side)
    S_AXI_AWID                 : IN  std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');  
    S_AXI_AWADDR               : IN  std_logic_vector(C_AXI_AWADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');  
    S_AXI_AWLEN                : IN  std_logic_vector(8-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWSIZE               : IN  STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWBURST              : IN  STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWVALID              : IN  std_logic := '0';
    S_AXI_AWREADY              : OUT std_logic := '0';
    S_AXI_WVALID               : IN  std_logic := '0';
    S_AXI_WREADY               : OUT std_logic := '0';
    S_AXI_BID                  : OUT std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');  
    S_AXI_BVALID               : OUT std_logic := '0';
    S_AXI_BREADY               : IN  std_logic := '0';
    -- Signals for BMG interface
    S_AXI_AWADDR_OUT           : OUT std_logic_vector(C_ADDRA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_WR_EN                : OUT std_logic:= '0'

    );
END axi_write_wrapper;

ARCHITECTURE axi_write_wrap_arch OF axi_write_wrapper IS

  ATTRIBUTE DowngradeIPIdentifiedWarnings: STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF axi_write_wrap_arch : ARCHITECTURE IS "yes";

  SIGNAL bvalid_c                 : std_logic := '0';
  SIGNAL bready_timeout_c         : std_logic := '0';
  SIGNAL bvalid_rd_cnt_c          : std_logic_vector(1 DOWNTO 0) := (OTHERS => '0');
  
  SIGNAL bvalid_r         	  : std_logic := '0';
  SIGNAL bvalid_count_r        	  : std_logic_vector(2 DOWNTO 0) := (OTHERS => '0');
  
  SIGNAL awaddr_reg               : std_logic_vector(C_ADDRA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
  
  SIGNAL bvalid_wr_cnt_r          : std_logic_vector(1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL bvalid_rd_cnt_r          : std_logic_vector(1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL w_last_c                 : std_logic := '0';
  SIGNAL addr_en_c                : std_logic := '0';
  SIGNAL incr_addr_c              : std_logic := '0';
  SIGNAL aw_ready_r 	          : std_logic := '0';
 
  -- Array to store BIDs
  TYPE id_array IS ARRAY (3 DOWNTO 0) OF std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0);
  SIGNAL axi_bid_array 		  : id_array := (others => (others => '0'));
  attribute ram_style : string;
  ATTRIBUTE ram_style OF axi_bid_array : SIGNAL IS "pipe_distributed";

BEGIN
 -- AXI WRITE FSM COMPONENT INSTANTIATION
 axi_wr_fsm : entity axi_fifo_mm_s_v4_2_3.axi_write_fsm
   GENERIC MAP (
     C_AXI_TYPE => C_AXI_TYPE
   )
   PORT MAP (
     S_ACLK  	      => S_ACLK,
     S_ARESETN        => S_ARESETN,
     S_AXI_AWVALID    => S_AXI_AWVALID,
     aw_ready_r       => aw_ready_r,
     S_AXI_WVALID     => S_AXI_WVALID,
     S_AXI_WREADY     => S_AXI_WREADY,
     S_AXI_BREADY     => S_AXI_BREADY,
     S_AXI_WR_EN      => S_AXI_WR_EN,
     w_last_c         => w_last_c,
     bready_timeout_c => bready_timeout_c,
     addr_en_c        => addr_en_c,
     incr_addr_c      => incr_addr_c,
     bvalid_c         => bvalid_c
   );   
   
   ---------------------------------------------------------------------------
   -- Address registering for axi lite
   ---------------------------------------------------------------------------
   gaxi_lite_addr_gen: IF (C_AXI_TYPE = 0) GENERATE
     P_addr_reg: PROCESS (S_ACLK)
         BEGIN
           IF (S_ACLK'event AND S_ACLK = '1') THEN
             IF (S_ARESETN = '1') THEN
                  S_AXI_AWADDR_OUT <= (OTHERS => '0');
             ELSE
               IF (addr_en_c = '1') THEN
                  S_AXI_AWADDR_OUT <= S_AXI_AWADDR AFTER FLOP_DELAY;
               END IF;
             END IF;
           END IF;
     END PROCESS P_addr_reg;
   END GENERATE gaxi_lite_addr_gen;

    ----------------------------------------------------------------------------
    -- AXI-Full Memory Slave Unaligned address 
    -- with Fixed and INCR Burst Type Support - AXI FULL FSM
    -----------------------------------------------------------------------------
    gaxif_ms_addr_gen: IF (C_AXI_TYPE = 1 AND C_AXI_SLAVE_TYPE = 0) GENERATE

     CONSTANT C_RANGE : INTEGER := log2roundup(divroundup(C_AXI_WDATA_WIDTH,8));

     CONSTANT WRAP_SIZE : INTEGER := C_RANGE+4;
      
      SIGNAL num_of_bytes_c           : STD_LOGIC_VECTOR(6 DOWNTO 0):= (OTHERS => '0');
      SIGNAL wrap_bytes_c             : STD_LOGIC_VECTOR(6 DOWNTO 0):= (OTHERS => '0');
      SIGNAL bmg_address_c            : STD_LOGIC_VECTOR(C_AXI_AWADDR_WIDTH-1 DOWNTO 0):= (OTHERS => '0');
      SIGNAL axi_addr_full_c          : STD_LOGIC_VECTOR(C_AXI_AWADDR_WIDTH-1 DOWNTO 0):= (OTHERS => '0');


      SIGNAL next_address_r           : STD_LOGIC_VECTOR(C_RANGE DOWNTO 0):= (OTHERS => '0');
      SIGNAL bmg_address_r            : STD_LOGIC_VECTOR(C_AXI_AWADDR_WIDTH-1 DOWNTO C_RANGE):= (OTHERS => '0');
      SIGNAL bmg_address_inc_c        : STD_LOGIC_VECTOR(C_AXI_AWADDR_WIDTH-1 DOWNTO C_RANGE):= (OTHERS => '0');
      SIGNAL num_of_bytes_r           : STD_LOGIC_VECTOR(6 DOWNTO 0):= (OTHERS => '0');
      SIGNAL axi_addr_full_r          : STD_LOGIC_VECTOR(C_AXI_AWADDR_WIDTH-1 DOWNTO 0):= (OTHERS => '0');
      SIGNAL addr_cnt_enb             : STD_LOGIC_VECTOR(C_AXI_AWADDR_WIDTH-1 DOWNTO 0):= (OTHERS => '0');
      SIGNAL wrap_addr_range_c        : STD_LOGIC_VECTOR(WRAP_SIZE DOWNTO 0):= (OTHERS => '0');

      SIGNAL incr_en_r                : std_logic := '0';

    BEGIN

      ---------------------------------------------------------------------------
      -- Generation of num_of_bytes_c based on AXI Size - AXI FULL FSM
      ---------------------------------------------------------------------------
      P_num_bytes: PROCESS (S_AXI_AWSIZE)
      BEGIN
        CASE S_AXI_AWSIZE is
          WHEN "000"  =>    num_of_bytes_c <= "0000001";
          WHEN "001"  =>    num_of_bytes_c <= "0000010";
          WHEN "010"  =>    num_of_bytes_c <= "0000100";
          WHEN "011"  =>    num_of_bytes_c <= "0001000";
          WHEN "100"  =>    num_of_bytes_c <= "0010000";
          WHEN "101"  =>    num_of_bytes_c <= "0100000";
          WHEN OTHERS =>    num_of_bytes_c <= "0000000";
        END CASE;
      END PROCESS P_num_bytes;      

      ---------------------------------------------------------------------------
      -- Generation of wrap_bytes_c for wrap address generation
      ---------------------------------------------------------------------------
      P_wrap_bytes: PROCESS (S_AXI_AWSIZE)
      BEGIN
        CASE S_AXI_AWSIZE is
          WHEN "000"  =>    wrap_bytes_c <= "1111111";
          WHEN "001"  =>    wrap_bytes_c <= "1111110";
          WHEN "010"  =>    wrap_bytes_c <= "1111100";
          WHEN "011"  =>    wrap_bytes_c <= "1111000";
          WHEN "100"  =>    wrap_bytes_c <= "1110000";
          WHEN OTHERS =>    wrap_bytes_c <= "1100000";
        END CASE;
      END PROCESS P_wrap_bytes;

      ---------------------------------------------------------------------------
      -- Generation of next_address_r for unaligned transfers 
      ---------------------------------------------------------------------------
      P_next_addr_reg: PROCESS (S_ACLK)
      BEGIN
        IF (S_ACLK'event AND S_ACLK='1') THEN
          IF (S_ARESETN='1') THEN
              next_address_r 		     <= (OTHERS => '0');
              num_of_bytes_r 		     <= (OTHERS => '0');
              incr_en_r                        <= '0';
          ELSE
            IF (addr_en_c = '1') THEN
              next_address_r(C_RANGE DOWNTO 0) <= ('0' & S_AXI_AWADDR(C_RANGE-1 DOWNTO 0));
              incr_en_r   		     <= S_AXI_AWBURST(0) OR S_AXI_AWBURST(1);
              num_of_bytes_r 		     <= num_of_bytes_c;
            ELSIF (incr_addr_c = '1') THEN
              next_address_r(C_RANGE DOWNTO 0) <= ('0' & bmg_address_c(C_RANGE-1 DOWNTO 0)) + num_of_bytes_r(C_RANGE DOWNTO 0);
            END IF;
          END IF;
        END IF;
      END PROCESS P_next_addr_reg;
      
      ---------------------------------------------------------------------------
      -- Generation of registered address 
      ---------------------------------------------------------------------------
      P_bmg_addr_reg: PROCESS (S_ACLK)
      BEGIN
        IF (S_ACLK'event AND S_ACLK='1') THEN
          IF (S_ARESETN='1') THEN
              bmg_address_r <= (OTHERS => '0');
          ELSE
            IF (addr_en_c = '1') THEN
              bmg_address_r <= S_AXI_AWADDR(C_AXI_AWADDR_WIDTH-1 DOWNTO C_RANGE);
            ELSIF (incr_addr_c = '1') THEN
              bmg_address_r <= bmg_address_c(C_AXI_AWADDR_WIDTH-1 DOWNTO C_RANGE);
            END IF;
          END IF;
        END IF;
      END PROCESS P_bmg_addr_reg;
      
      ---------------------------------------------------------------------------
      -- Address increment logic for unaligned/aligned transfer
      ---------------------------------------------------------------------------
      P_unalign_awaddr_mux: PROCESS (next_address_r,incr_en_r,bmg_address_r)
      BEGIN
        IF (next_address_r(C_RANGE) = '1' AND incr_en_r = '1') THEN
	    bmg_address_inc_c   <= bmg_address_r + "1";
        ELSE
	    bmg_address_inc_c   <= bmg_address_r;
        END IF;
      END PROCESS P_unalign_awaddr_mux;

      ---------------------------------------------------------------------------
      -- Wrap address range calculation for WRAP BURST
      ---------------------------------------------------------------------------
      P_wrap_addr_range: PROCESS (S_AXI_AWLEN,wrap_bytes_c)
      BEGIN
	CASE (S_AXI_AWLEN) IS
	  WHEN "00000001" =>  
	    wrap_addr_range_c              <= "111" & wrap_bytes_c(C_RANGE DOWNTO 0) & "0";
	  WHEN "00000011" =>  
	    wrap_addr_range_c              <= "11" & wrap_bytes_c(C_RANGE DOWNTO 0) & "00";
	  WHEN "00000111" =>   
	    wrap_addr_range_c              <= "1" & wrap_bytes_c(C_RANGE DOWNTO 0) & "000";
	  WHEN OTHERS =>  
	    wrap_addr_range_c              <= wrap_bytes_c(C_RANGE DOWNTO 0) & "0000";
        END CASE;
      END PROCESS P_wrap_addr_range;
   
      ---------------------------------------------------------------------------
      -- Registered wrap address range
      ---------------------------------------------------------------------------
      P_addr_cnt_enb_reg: PROCESS (S_ACLK)
      BEGIN
        IF (S_ACLK'event AND S_ACLK='1') THEN
          IF (S_ARESETN='1') THEN
              addr_cnt_enb <= (OTHERS => '0');
          ELSE
	         IF(addr_en_c = '1' AND S_AXI_AWBURST = "10") THEN
	           addr_cnt_enb(C_AXI_AWADDR_WIDTH-1 downto WRAP_SIZE+1) <= (OTHERS => '1');
	           addr_cnt_enb(WRAP_SIZE downto 0) <= wrap_addr_range_c;
	         ELSIF (w_last_c = '1') THEN
	           addr_cnt_enb <= (OTHERS => '0');
	         END IF;
	       END IF;
	     END IF;
      END PROCESS P_addr_cnt_enb_reg;

      axi_addr_full_r <= bmg_address_r & next_address_r(C_RANGE-1 DOWNTO 0);
      
      axi_addr_full_c <= bmg_address_inc_c & next_address_r(C_RANGE-1 DOWNTO 0);
      
      ---------------------------------------------------------------------------
      -- Wrap address generation
      ---------------------------------------------------------------------------
      P_addr_wrap_gen: PROCESS (axi_addr_full_r,axi_addr_full_c,addr_cnt_enb)
      BEGIN
	FOR i IN C_AXI_AWADDR_WIDTH-1 DOWNTO 0 LOOP
	  IF (addr_cnt_enb(i) = '1') THEN
	    bmg_address_c(i)  <= axi_addr_full_r(i);
	  ELSE 
	    bmg_address_c(i)  <= axi_addr_full_c(i);
	  END IF;
	END LOOP;
      END PROCESS P_addr_wrap_gen;
	
      S_AXI_AWADDR_OUT            <=  bmg_address_c(C_AXI_AWADDR_WIDTH-1 DOWNTO C_RANGE);

  END GENERATE gaxif_ms_addr_gen;

  ---------------------------------------------------------------------------
  -- AXI FULL wlast generation
  ---------------------------------------------------------------------------
  gaxif_wlast_gen: IF (C_AXI_TYPE = 1) GENERATE
    CONSTANT ONE                    : std_logic_vector(7 DOWNTO 0) := ("00000001");
    --Combinatorial signals used in the design have "_c" at the end of signal names
    SIGNAL dec_alen_c               : std_logic := '0';
    --Registered signals used in the design have "_r" at the end of signal names
    SIGNAL awlen_cntr_r               : std_logic_vector(7 DOWNTO 0) := (OTHERS => '1');
  BEGIN

    -----------------------------------------------------------------------------
    -- Counter to generate w_last from registered AWLEN
    -----------------------------------------------------------------------------
    P_addr_cnt: PROCESS (S_ACLK)
      BEGIN
        IF (S_ACLK'event AND S_ACLK = '1') THEN
          IF (S_ARESETN = '1') THEN
            awlen_cntr_r      <= (OTHERS => '1');
          ELSE
            IF (addr_en_c = '1') THEN
              awlen_cntr_r      <= S_AXI_AWLEN AFTER FLOP_DELAY;
            ELSIF (dec_alen_c = '1') THEN
              awlen_cntr_r      <= awlen_cntr_r - ONE AFTER FLOP_DELAY;
            END IF;
          END IF;
        END IF;
    END PROCESS P_addr_cnt;

    w_last_c          <= '1' WHEN (awlen_cntr_r = "00000000" AND S_AXI_WVALID = '1') ELSE '0';
    
    dec_alen_c        <=  (incr_addr_c OR w_last_c);

  END GENERATE gaxif_wlast_gen;

   ---------------------------------------------------------------------------
   -- Generation of bvalid counter for outstanding transactions  
   ---------------------------------------------------------------------------

    P_b_valid_os_r: PROCESS (S_ACLK)
    BEGIN
      IF (S_ACLK'event AND S_ACLK='1') THEN
        IF (S_ARESETN = '1') THEN
	       bvalid_count_r             <= (OTHERS => '0');
        ELSE
	       -- bvalid_count_r generation
	       IF (bvalid_c = '1' AND bvalid_r = '1' AND S_AXI_BREADY = '1') THEN
	         bvalid_count_r          <=   bvalid_count_r AFTER FLOP_DELAY;
	       ELSIF (bvalid_c = '1') THEN  
	         bvalid_count_r          <=   bvalid_count_r + "01" AFTER FLOP_DELAY;
	       ELSIF (bvalid_r = '1' AND S_AXI_BREADY = '1' AND bvalid_count_r /= "0") THEN
	         bvalid_count_r          <=   bvalid_count_r - "01" AFTER FLOP_DELAY;
	       END IF;
        END IF;
      END IF;
    END PROCESS P_b_valid_os_r ;

    ---------------------------------------------------------------------------
    -- Generation of bvalid when BID is used 
    ---------------------------------------------------------------------------

    gaxi_bvalid_id_r:IF (C_HAS_AXI_ID = 1) GENERATE
      SIGNAL bvalid_d1_c    : std_logic := '0';
    BEGIN
      P_b_valid_r: PROCESS (S_ACLK)
      BEGIN
        IF (S_ACLK'event AND S_ACLK='1') THEN
          IF (S_ARESETN = '1') THEN
            bvalid_r                   <=  '0';
	         bvalid_d1_c                <=  '0';
          ELSE
           -- Delay the generation o bvalid_r for generation for BID 
           bvalid_d1_c  <= bvalid_c;
           
           --external bvalid signal generation
           IF (bvalid_d1_c = '1') THEN
             bvalid_r                <=   '1' AFTER FLOP_DELAY;
           ELSIF (conv_integer(bvalid_count_r) <= 1 AND S_AXI_BREADY = '1') THEN
             bvalid_r                <=   '0' AFTER FLOP_DELAY;
           END IF;
          END IF;
        END IF;
      END PROCESS P_b_valid_r ;
    END GENERATE gaxi_bvalid_id_r;
      
   ---------------------------------------------------------------------------
   -- Generation of bvalid when BID is not used 
   ---------------------------------------------------------------------------

   gaxi_bvalid_noid_r:IF (C_HAS_AXI_ID = 0) GENERATE
    P_b_valid_r: PROCESS (S_ACLK)
      BEGIN
        IF (S_ACLK'event AND S_ACLK='1') THEN
          IF (S_ARESETN = '1') THEN
            bvalid_r                   <=  '0';
          ELSE
           --external bvalid signal generation
           IF (bvalid_c = '1') THEN
             bvalid_r                <=   '1' AFTER FLOP_DELAY;
           ELSIF (conv_integer(bvalid_count_r) <= 1 AND S_AXI_BREADY = '1') THEN
             bvalid_r                <=   '0' AFTER FLOP_DELAY;
           END IF;
          END IF;
        END IF;
      END PROCESS P_b_valid_r ;
    END GENERATE gaxi_bvalid_noid_r;
    
    ---------------------------------------------------------------------------
    -- Generation of Bready timeout
    ---------------------------------------------------------------------------
    P_brdy_tout_c: PROCESS (bvalid_count_r)
    BEGIN
    	-- bready_timeout_c generation
	IF(conv_integer(bvalid_count_r) = C_AXI_OS_WR-1) THEN
	  bready_timeout_c        <=   '1';
	ELSE
	  bready_timeout_c        <=   '0';
	END IF;
    END PROCESS P_brdy_tout_c;
    
    
    ---------------------------------------------------------------------------
    -- Generation of BID 
    ---------------------------------------------------------------------------
    gaxi_bid_gen:IF (C_HAS_AXI_ID = 1) GENERATE

     P_bid_gen: PROCESS (S_ACLK)
     BEGIN
        IF (S_ACLK'event AND S_ACLK='1') THEN
        IF (S_ARESETN='1') THEN
            bvalid_wr_cnt_r   <= (OTHERS => '0');
            bvalid_rd_cnt_r   <= (OTHERS => '0');
        ELSE
          -- STORE AWID IN AN ARRAY
          IF(bvalid_c = '1') THEN
            bvalid_wr_cnt_r  <= bvalid_wr_cnt_r + "01";
          END IF;
           
	  -- GENERATE BID FROM AWID ARRAY
	  bvalid_rd_cnt_r <= bvalid_rd_cnt_c AFTER FLOP_DELAY;
	  S_AXI_BID       <= axi_bid_array(conv_integer(bvalid_rd_cnt_c));

        END IF;       
        END IF;       
     END PROCESS P_bid_gen;

     P_awid_reg:PROCESS (S_ACLK)
     BEGIN
        IF (S_ACLK'event AND S_ACLK='1') THEN
          IF(aw_ready_r = '1' AND S_AXI_AWVALID = '1') THEN
	    axi_bid_array(conv_integer(bvalid_wr_cnt_r)) <= S_AXI_AWID;
	  END IF;
	END IF;
     END PROCESS P_awid_reg;
    
    bvalid_rd_cnt_c <= bvalid_rd_cnt_r + "01" WHEN (bvalid_r = '1' AND S_AXI_BREADY = '1') ELSE bvalid_rd_cnt_r;

  END GENERATE gaxi_bid_gen;

  S_AXI_BVALID   <=  bvalid_r;
  S_AXI_AWREADY  <=  aw_ready_r;

END axi_write_wrap_arch;


-------------------------------------------------------------------------------
--
--  AXI4-AXI4 Stream FIFO Core - AXI READ FSM File
--
-------------------------------------------------------------------------------
-- (c) Copyright 2006 - 2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
--
-- Filename: axi_read_fsm.vhd
--
-- Author: Xilinx
--
-- Description: AXI READ State Macine. 
-- This file is used by the AXI4-AXI4 Stream FIFO core.
--   
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all; --for and_reduce function

library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.all;

library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.axi_fifo_mm_s_pkg.all;

ENTITY axi_read_fsm is
GENERIC (
    -- AXI Interface related parameters start here
    C_AXI_TYPE                 : integer := 1;
    C_ADDRB_WIDTH              : integer := 12
    );
  port (
    S_AXI_INCR_ADDR            : OUT std_logic := '0';
    S_AXI_ADDR_EN              : OUT std_logic := '0';
    S_AXI_SINGLE_TRANS         : OUT std_logic := '0';
    S_AXI_MUX_SEL              : OUT std_logic := '0';
    S_AXI_R_LAST               : OUT std_logic := '0';
    S_AXI_R_LAST_INT           : IN  std_logic := '0';

    -- AXI Global Signals
    S_ACLK                     : IN  std_logic;
    S_ARESETN                  : IN  std_logic; 
    -- AXI Full/Lite Slave Read (Read side)
    S_AXI_ARLEN                : IN  std_logic_vector(7 downto 0) := (OTHERS => '0');
    S_AXI_ARVALID              : IN  std_logic := '0';
    S_AXI_ARVALID_int              : IN  std_logic := '0';
    S_AXI_ARREADY              : OUT std_logic := '0';
    S_AXI_ARREADY_int              : OUT std_logic := '0';
    S_AXI_RLAST                : OUT std_logic := '0';
    S_AXI_RVALID               : OUT std_logic := '0';
    S_AXI_RVALID_int               : OUT std_logic := '0';
    S_AXI_RREADY               : IN  std_logic := '0';
    -- AXI Full/Lite Read Address Signals to BRAM
    S_AXI_RD_EN                : OUT std_logic := '0'
    );
END axi_read_fsm;

architecture axi_read_fsm_arch of axi_read_fsm is

  --TYPE state_type is (So => WAIT_RDADDR,S1 => REG_RDADDR,S2 => OS_RD);
  CONSTANT WAIT_RDADDR            : std_logic_vector (1 downto 0) := "00";
  CONSTANT REG_RDADDR             : std_logic_vector (1 downto 0) := "01";
  CONSTANT OS_RD                  : std_logic_vector (1 downto 0) := "10";
  CONSTANT RD_MEM                 : std_logic_vector (1 downto 0) := "11";

  SIGNAL present_state            : std_logic_vector (1 downto 0) := WAIT_RDADDR; 
  SIGNAL next_state               : std_logic_vector (1 downto 0) := WAIT_RDADDR;
  SIGNAL addr_en_c                : std_logic := '0';
  SIGNAL rd_en_c                  : std_logic := '0';
  SIGNAL incr_addr_c              : std_logic := '0';
  SIGNAL single_trans_c           : std_logic := '0';
  SIGNAL mux_sel_c                : std_logic := '0';
  SIGNAL r_last_c                 : std_logic := '0';
  SIGNAL r_last_int_c             : std_logic := '0';
  signal arready_int             : std_logic := '0';
  attribute max_fanout : integer;
  attribute max_fanout of arready_int : signal is 10;

BEGIN
    ---------------------------------------------------------------------------
    -- AXI LITE   
    ---------------------------------------------------------------------------
  gaxi_lite_sm: IF (C_AXI_TYPE = 0 ) GENERATE
    --Combinatorial signals used in the design have "_c" at the end of signal names
    SIGNAL ar_ready_c               : std_logic := '0';
    SIGNAL r_valid_c                : std_logic := '0';

    --Registered signals used in the design have "_r" at the end of signal names
    SIGNAL r_valid_r                : std_logic := '0';
    SIGNAL ar_ready_r               : std_logic := '0';

  BEGIN

    ---------------------------------------------------------------------------
    -- AXI LITE READ FSM  
    ---------------------------------------------------------------------------
    P_read_fsm: PROCESS (present_state, S_AXI_ARVALID, S_AXI_RREADY, r_valid_r)
    BEGIN
      CASE present_state is
        -- State WAIT_FOR_READ_ADDRESS (WAIT_RDADDR)
        WHEN WAIT_RDADDR =>   
          IF (S_AXI_ARVALID = '1') THEN 
            next_state         <= REG_RDADDR;   	
          ELSE
            next_state         <= WAIT_RDADDR;   	
          END IF; 
        
        -- State REGISTER_READ_ADDRESS (REG_RDADDR)
        WHEN REG_RDADDR => 
          IF (r_valid_r = '1' AND S_AXI_RREADY = '1') THEN
            next_state         <= WAIT_RDADDR;
          ELSE
            next_state         <= REG_RDADDR;
          END IF;
        WHEN OTHERS => 
            next_state         <= WAIT_RDADDR;
      END CASE;
    END PROCESS P_read_fsm ;
 
    ---------------------------------------------------------------------------
    -- State register - AXI LITE FSM
    ---------------------------------------------------------------------------
    P_State_Register: PROCESS (S_ACLK)       
    BEGIN
      IF (S_ACLK'event AND S_ACLK='1') THEN
        IF (S_ARESETN='1') THEN
          present_state  <= WAIT_RDADDR;
        ELSE
          present_state  <= next_state AFTER FLOP_DELAY;
        END IF; 
      END IF; 
    END PROCESS P_State_Register;
 
    ---------------------------------------------------------------------------
    -- Registering the signals - AXI LITE FSM
    ---------------------------------------------------------------------------
    P_register_r: PROCESS (S_ACLK)       
    BEGIN
      IF (S_ACLK'event AND S_ACLK='1') THEN
        IF (S_ARESETN='1') THEN
          r_valid_r           <= '0';
          ar_ready_r          <= '0';
        ELSE
          r_valid_r           <= r_valid_c AFTER FLOP_DELAY;
          ar_ready_r          <= ar_ready_c AFTER FLOP_DELAY;
        END IF; 
      END IF; 
    END PROCESS P_register_r;
    
    ---------------------------------------------------------------------------
    -- Generation of read enable signal - AXI LITE FSM
    ---------------------------------------------------------------------------
    P_rd_en_c: PROCESS (present_state, S_AXI_ARVALID)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
            rd_en_c              <= S_AXI_ARVALID;
        WHEN REG_RDADDR => 
            rd_en_c              <= '0';  
        WHEN OTHERS => 
            rd_en_c              <= '0';  
      END CASE;
    END PROCESS P_rd_en_c ;

    ---------------------------------------------------------------------------
    -- Generation of arready signal - AXI LITE FSM
    ---------------------------------------------------------------------------
    P_ar_ready_c: PROCESS (present_state, S_AXI_ARVALID, S_AXI_RREADY, r_valid_r)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
             ar_ready_c           <= NOT S_AXI_ARVALID;
        WHEN REG_RDADDR =>    
             ar_ready_c           <= S_AXI_RREADY AND r_valid_r;
        WHEN OTHERS =>
             ar_ready_c           <= '0';
      END CASE;
    END PROCESS P_ar_ready_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal r_valid signal - AXI LITE FSM
    ---------------------------------------------------------------------------
    P_r_valid_c: PROCESS (present_state, S_AXI_ARVALID, S_AXI_RREADY, r_valid_r)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
             r_valid_c            <= S_AXI_ARVALID;
        WHEN REG_RDADDR =>    
          IF (S_AXI_RREADY = '1' AND r_valid_r = '1') THEN
             r_valid_c            <= '0';    
          ELSE
             r_valid_c            <= r_valid_r;    
          END IF;
        WHEN OTHERS =>
             r_valid_c            <= '0';    
      END CASE;
    END PROCESS P_r_valid_c ;

    ----------------------------------------------------------------------------
    -- Assign output signals - AXI LITE FSM
    -----------------------------------------------------------------------------
    S_AXI_RVALID  <= r_valid_r;
    S_AXI_ARREADY <= ar_ready_r;
    S_AXI_RD_EN   <= rd_en_c;

  END GENERATE gaxi_lite_sm;
  ---------------------------------------------------------------------------
  -- AXI FULL 
  ---------------------------------------------------------------------------
  gaxi_full_sm: IF (C_AXI_TYPE = 1 ) GENERATE

    CONSTANT ONE                    : std_logic_vector(7 DOWNTO 0) := ("00000001");
    -- Inputs concatenate
    SIGNAL str_wait_rdaddr_c        : std_logic_vector (2 downto 0) := (OTHERS =>'0');
    SIGNAL str_reg_rdaddr_c         : std_logic_vector (2 downto 0) := (OTHERS =>'0');
    --Combinatorial signals used in the design have "_c" at the end of signal names
    SIGNAL ar_ready_c               : std_logic := '0';
    SIGNAL r_valid_c                : std_logic := '0';
    SIGNAL outstanding_read_c       : std_logic := '0';
    SIGNAL pipeline_full_c          : std_logic := '0';

    --Registered signals used in the design have "_r" at the end of signal names
    SIGNAL ar_ready_r               : std_logic := '0';
    SIGNAL r_valid_r                : std_logic := '0';
    SIGNAL r_valid_r1                : std_logic := '0';
    SIGNAL r_last_r                 : std_logic := '0';
    SIGNAL outstanding_read_r       : std_logic := '0';
    SIGNAL pipeline_full_r          : std_logic := '0';
    signal allowed : std_logic := '0';
  ATTRIBUTE dont_touch                  : STRING;
  ATTRIBUTE dont_touch OF r_valid_r1    : SIGNAL IS "yes";

  BEGIN

    pipeline_full_c   <= r_valid_r AND (NOT S_AXI_RREADY);
    single_trans_c    <= S_AXI_ARVALID  WHEN (S_AXI_ARLEN = "00000000") ELSE '0';
    str_wait_rdaddr_c <= S_AXI_ARVALID & S_AXI_RREADY & single_trans_c;
    str_reg_rdaddr_c  <= S_AXI_ARVALID & pipeline_full_c & single_trans_c;

    ---------------------------------------------------------------------------
    -- AXI FULL READ FSM  
    ---------------------------------------------------------------------------
    P_read_fsm: PROCESS (present_state, str_wait_rdaddr_c, str_reg_rdaddr_c, outstanding_read_r, pipeline_full_c, r_last_int_c)
    BEGIN
      CASE present_state is
        -- State WAIT_FOR_READ_ADDRESS (WAIT_RDADDR)
        WHEN WAIT_RDADDR =>   
          CASE str_wait_rdaddr_c  is
            WHEN "111"  =>
              next_state            <= REG_RDADDR;
            WHEN "101"  =>
              next_state            <= OS_RD;   	
            WHEN "110"|"100" =>
              next_state            <= RD_MEM;
            WHEN OTHERS =>
              next_state            <= WAIT_RDADDR;   	
            END CASE; 
        
        -- State REGISTER_READ_ADDRESS (REG_RDADDR)
        WHEN REG_RDADDR => 
          CASE str_reg_rdaddr_c  is
            WHEN "101" =>
              next_state            <= REG_RDADDR;
            WHEN "111"|"010"|"011" =>
              next_state            <= OS_RD;
            WHEN "100" | "110" =>   
              next_state            <= RD_MEM;   	
            WHEN OTHERS  =>
              next_state            <= WAIT_RDADDR;   	
            END CASE; 
        
        -- State OUTSTANDING_READ_ADDRESS (OS_RD)
        WHEN OS_RD => 
          IF (outstanding_read_r = '1' OR pipeline_full_c = '1') THEN
            next_state         <= OS_RD;
          ELSE 
            next_state         <= WAIT_RDADDR;
          END IF;
        		   
        -- State READ_MEMORY (RD_MEM)
        WHEN RD_MEM => 
          IF (pipeline_full_c = '0' AND r_last_int_c = '1') THEN
            next_state         <= REG_RDADDR;
          ELSE 
            next_state         <= RD_MEM;
          END IF;
        		   
        WHEN OTHERS =>
            next_state            <= WAIT_RDADDR;   	
        END CASE; 

    END PROCESS P_read_fsm ;
 
    ---------------------------------------------------------------------------
    -- State register - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_State_Register: PROCESS (S_ACLK)       
    BEGIN
      IF (S_ACLK'event AND S_ACLK='1') THEN
        IF (S_ARESETN='1') THEN
          present_state  <= WAIT_RDADDR;
        ELSE
          present_state  <= next_state AFTER FLOP_DELAY;
        END IF; 
      END IF; 
    END PROCESS P_State_Register;
 
    ---------------------------------------------------------------------------
    -- Registering the signals  - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_register_r: PROCESS (S_ACLK)       
    BEGIN
      IF (S_ACLK'event AND S_ACLK='1') THEN
        IF (S_ARESETN='1') THEN
          outstanding_read_r  <= '0';
          pipeline_full_r     <= '0';
          ar_ready_r          <= '0';
        ELSE
          outstanding_read_r  <= outstanding_read_c AFTER FLOP_DELAY;
          pipeline_full_r     <= pipeline_full_c AFTER FLOP_DELAY;
          ar_ready_r          <= ar_ready_c AFTER FLOP_DELAY;
        END IF; 
      END IF; 
    END PROCESS P_register_r;
    
    P_rlast_r: PROCESS (S_ACLK)
    BEGIN
      IF (S_ACLK'event AND S_ACLK='1') THEN
        IF (S_ARESETN='1') THEN
            r_last_r    <= '0';
            r_valid_r   <= '0';
        ELSE
          IF (S_AXI_RREADY = '1' OR r_valid_r = '0') THEN
            r_last_r          <= r_last_c AFTER FLOP_DELAY;
            r_valid_r         <= r_valid_c AFTER FLOP_DELAY;
          END IF;
        END IF;
      END IF;
    END PROCESS P_rlast_r;
    P_rlast_r1: PROCESS (S_ACLK)
    BEGIN
      IF (S_ACLK'event AND S_ACLK='1') THEN
        IF (S_ARESETN='1') THEN
            r_valid_r1   <= '0';
        ELSE
          IF (S_AXI_RREADY = '1' OR r_valid_r = '0') THEN
            r_valid_r1         <= r_valid_c AFTER FLOP_DELAY;
          END IF;
        END IF;
      END IF;
    END PROCESS P_rlast_r1;

    ---------------------------------------------------------------------------
    -- Generation of read enable signal  - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_rd_en_c: PROCESS (present_state, S_AXI_ARVALID, pipeline_full_c, outstanding_read_r)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
            rd_en_c              <= S_AXI_ARVALID;
        WHEN REG_RDADDR => 
          IF (pipeline_full_c = '0') THEN
            rd_en_c              <= S_AXI_ARVALID;
          ELSE
            rd_en_c              <= '0';  
          END IF;
        WHEN OS_RD => 
             --rd_en_c is asserted when either outstanding_read or pipeline_full is asserted
             --rd_en_c is de-asserted when both are asserted or both are de-asserted
          IF (pipeline_full_c = '0') THEN
            rd_en_c              <= outstanding_read_r;
          ELSE
            rd_en_c              <= '0';  
          END IF;
        WHEN RD_MEM => 
            rd_en_c              <= NOT pipeline_full_c;  
        WHEN OTHERS => 
            rd_en_c              <= '0';  
      END CASE;
    END PROCESS P_rd_en_c ;

    ---------------------------------------------------------------------------
    -- Generation of mux select signal  - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_mux_sel_c: PROCESS (present_state, pipeline_full_c, outstanding_read_r)
    BEGIN
      CASE present_state is
        WHEN OS_RD =>  
          --mux_sel_c is asserted when both outstanding_read and pipeline_full or either one is asserted
          --mux_sel_c is de-asserted when both are de-asserted
          mux_sel_c            <= outstanding_read_r OR pipeline_full_c;
        WHEN RD_MEM =>  
          mux_sel_c            <= '1';  
        WHEN OTHERS =>
          mux_sel_c            <= '0';  
      END CASE;
    END PROCESS P_mux_sel_c ;

    ---------------------------------------------------------------------------
    -- Generation of arready signal  - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_ar_ready_c: PROCESS (present_state,S_AXI_ARVALID, S_AXI_RREADY, pipeline_full_c, single_trans_c, outstanding_read_r, r_last_int_c)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
          IF (S_AXI_ARVALID = '0') THEN
             ar_ready_c           <= '1';
          ELSE
             ar_ready_c           <= S_AXI_RREADY AND single_trans_c;
          END IF;
        WHEN REG_RDADDR =>    
          IF (S_AXI_ARVALID= '0') THEN
             ar_ready_c           <= NOT pipeline_full_c;
          ELSE
             ar_ready_c           <= NOT pipeline_full_c AND single_trans_c;
          END IF;
        WHEN OS_RD =>    
             --ar_ready_c should be '1' only when both outstanding_read and pipeline_full are '0' 
             ar_ready_c           <= outstanding_read_r NOR pipeline_full_c;
        WHEN RD_MEM =>    
             --ar_ready_c should be '1' only when pipeline is not full and current trasaction is the last
             ar_ready_c           <= NOT pipeline_full_c AND r_last_int_c;
        WHEN OTHERS =>
             ar_ready_c           <= '0';
      END CASE;
    END PROCESS P_ar_ready_c ;


    process (S_ACLK)
    begin
      IF (S_ACLK'event AND S_ACLK='1') THEN
       if (S_ARESETN = '1') then
          allowed <= '1';
       ELSE
          if (arready_int = '1') then
            allowed <= '0';
          elsif (r_last_r = '1' and r_valid_r = '1' and S_AXI_RREADY = '1') then
            allowed <= '1';
          end if;
       end if;
     end if;
   end process;


    arrdy_int: PROCESS (S_ACLK)
    BEGIN
      IF (S_ACLK'event AND S_ACLK='1') THEN
        IF (S_ARESETN='1') THEN
            arready_int <= '0';
        ELSE
            if (S_AXI_ARVALID_int = '1' and arready_int = '1') then
               arready_int <= '0';
            elsif (S_AXI_ARVALID_int = '1' and allowed = '1') then
               arready_int <= '1';
            else
               arready_int <= '0';
            end if;
        END IF;
      END IF;
    END PROCESS arrdy_int;

    ---------------------------------------------------------------------------
    -- Generation of internal address enable signal - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_addr_en_c: PROCESS (present_state, S_AXI_ARVALID)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
          addr_en_c            <= S_AXI_ARVALID;
        WHEN REG_RDADDR =>    
          addr_en_c            <= S_AXI_ARVALID; 
        WHEN OTHERS =>
          addr_en_c            <= '0'; 
      END CASE;
    END PROCESS P_addr_en_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal r_valid signal - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_r_valid_c: PROCESS (present_state, S_AXI_ARVALID, pipeline_full_c, outstanding_read_r, single_trans_c)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
            r_valid_c            <= S_AXI_ARVALID;
        WHEN REG_RDADDR =>    
          IF (S_AXI_ARVALID = '0') THEN
            r_valid_c            <= '0';    
          ELSIF (pipeline_full_c = '0') THEN
            r_valid_c            <= '1'; 
          ELSE
          -- Keep the previous r_valid value, assigning single_trans_c is equivalent
          -- of holding the previous from the state table
            r_valid_c            <= single_trans_c; 
          END IF;
        WHEN OS_RD =>         
          IF (outstanding_read_r = '0') THEN
            r_valid_c            <= '0';
          ELSE
            r_valid_c            <= NOT pipeline_full_c;    
          END IF;
        WHEN RD_MEM =>         
            r_valid_c            <= NOT pipeline_full_c;
        WHEN OTHERS =>
            r_valid_c            <= '0';    
      END CASE;
    END PROCESS P_r_valid_c ;
 
    ---------------------------------------------------------------------------
    -- Generation of internal outstanding read signal - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_os_read: PROCESS (present_state, S_AXI_ARVALID, pipeline_full_c, outstanding_read_r, single_trans_c)
    BEGIN
      CASE present_state is
        WHEN REG_RDADDR =>    
            outstanding_read_c   <= S_AXI_ARVALID AND pipeline_full_c AND single_trans_c;
        WHEN OS_RD =>         
          IF (outstanding_read_r = '1' AND pipeline_full_c = '0') THEN
            outstanding_read_c   <= '0';
          ELSE
          --Keep the previous outstanding_read value
            outstanding_read_c   <= outstanding_read_r;
          END IF;
        WHEN OTHERS => 
            outstanding_read_c   <= '0';
      END CASE;
    END PROCESS P_os_read ;

    ---------------------------------------------------------------------------
    -- Generation of internal increment address signal - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_incr_addr: PROCESS (present_state, S_AXI_ARVALID, pipeline_full_c, single_trans_c, r_last_int_c)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>    
            incr_addr_c  <= S_AXI_ARVALID AND (NOT single_trans_c);
        WHEN REG_RDADDR =>    
          IF (pipeline_full_c = '0' AND single_trans_c = '0') THEN
            incr_addr_c  <= S_AXI_ARVALID;
          ELSE
            incr_addr_c  <= '0';
          END IF;
        WHEN RD_MEM =>         
            incr_addr_c  <= pipeline_full_c NOR r_last_int_c;
        WHEN OTHERS => 
            incr_addr_c  <= '0';
      END CASE;
    END PROCESS P_incr_addr ;

    ---------------------------------------------------------------------------
    -- Generation of internal r_last_c signal
    ---------------------------------------------------------------------------
    P_r_last_c: PROCESS (present_state, S_AXI_ARVALID, pipeline_full_c, outstanding_read_r, single_trans_c, r_last_int_c)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
          IF (S_AXI_ARVALID= '0') THEN
            r_last_c             <= '0';    
          ELSE
            r_last_c             <= single_trans_c; 
          END IF;
        WHEN REG_RDADDR =>    
          IF (S_AXI_ARVALID= '0') THEN
            r_last_c             <= '0';    
          ELSE
            r_last_c             <= single_trans_c AND (NOT pipeline_full_c);
          END IF;
        WHEN OS_RD =>         
          IF (outstanding_read_r = '0') THEN
            r_last_c             <= '0';    
          ELSE
            r_last_c             <= NOT pipeline_full_c;
          END IF;
        WHEN RD_MEM =>         
          IF (pipeline_full_c = '0') THEN
            r_last_c             <= r_last_int_c;    
          ELSE
            r_last_c             <= '0';
          END IF;
        WHEN OTHERS =>
            r_last_c             <= '0';    
      END CASE;
    END PROCESS P_r_last_c ;

    ----------------------------------------------------------------------------
    -- Assign output signals  - AXI FULL FSM
    -----------------------------------------------------------------------------
    S_AXI_RVALID  <= r_valid_r;
    S_AXI_RVALID_int  <= r_valid_r1;
    S_AXI_RLAST   <= r_last_r;
    S_AXI_ARREADY <= ar_ready_r;
      S_AXI_ARREADY_int <= arready_int;
    S_AXI_RD_EN   <= rd_en_c;
 
    S_AXI_INCR_ADDR <= incr_addr_c;
    S_AXI_SINGLE_TRANS <= single_trans_c;
    S_AXI_R_LAST   <= r_last_c;
    r_last_int_c   <= S_AXI_R_LAST_INT;

  END GENERATE gaxi_full_sm;

    S_AXI_ADDR_EN   <= addr_en_c;
    S_AXI_MUX_SEL  <= mux_sel_c;

END axi_read_fsm_arch;


-------------------------------------------------------------------------------
--
--  AXI4-AXI4 Stream FIFO Core - AXI READ WRAPPER File
--
-------------------------------------------------------------------------------
-- (c) Copyright 2006 - 2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
--
-- Filename: axi_read_wrapper.vhd
--
-- Author: Xilinx
--
-- Description: AXI READ State Macine. 
-- This file is used by the AXI4-AXI4 Stream FIFO core.
--   
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_MISC.ALL; --For AND_REDUCE function

library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.all;

library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.axi_fifo_mm_s_pkg.all;

ENTITY axi_read_wrapper is
GENERIC (
    -- AXI Interface related parameters start here
    C_AXI_TYPE                 : integer := 1;
    C_AXI_SLAVE_TYPE           : integer := 0;
    C_WRITE_WIDTH_A            : integer := 4;
    C_ADDRA_WIDTH              : integer := 12;
    C_AXI_PIPELINE_STAGES      : integer := 0;
    C_AXI_ARADDR_WIDTH         : integer := 12;
    C_HAS_AXI_ID               : integer := 0;
    C_AXI_ID_WIDTH             : integer := 4;
    C_ADDRB_WIDTH              : integer := 12
    );
  port (

    -- AXI Global Signals
    S_ACLK                     : IN  std_logic;
    S_ARESETN                  : IN  std_logic; 
    -- AXI Full/Lite Slave Read (Read side)
    S_AXI_ARADDR               : IN  std_logic_vector(C_AXI_ARADDR_WIDTH-1 downto 0) := (OTHERS => '0');
    S_AXI_ARLEN                : IN  std_logic_vector(7 downto 0) := (OTHERS => '0');
    S_AXI_ARSIZE               : IN  STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARBURST              : IN  STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARVALID              : IN  std_logic := '0';
    S_AXI_ARVALID_int              : IN  std_logic := '0';
    S_AXI_ARREADY              : OUT std_logic := '0';
    S_AXI_ARREADY_int              : OUT std_logic := '0';
    S_AXI_RLAST                : OUT std_logic := '0';
    S_AXI_RVALID               : OUT std_logic := '0';
    S_AXI_RVALID_int               : OUT std_logic := '0';
    S_AXI_RREADY               : IN  std_logic := '0';
    S_AXI_ARID                 : IN  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0) := (OTHERS => '0');
    S_AXI_RID                  : OUT std_logic_vector(C_AXI_ID_WIDTH-1 downto 0) := (OTHERS => '0');
    -- AXI Full/Lite Read Address Signals to BRAM
    S_AXI_ARADDR_OUT           : OUT std_logic_vector(C_ADDRB_WIDTH-1 downto 0) := (OTHERS => '0');
    S_AXI_RD_EN                : OUT std_logic := '0'
    );
END axi_read_wrapper;

architecture axi_read_wrapper_arch of axi_read_wrapper is

  ATTRIBUTE DowngradeIPIdentifiedWarnings: STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF axi_read_wrapper_arch : ARCHITECTURE IS "yes";

  --TYPE state_type is (So => WAIT_RDADDR,S1 => REG_RDADDR,S2 => OS_RD);
  CONSTANT WAIT_RDADDR            : std_logic_vector (1 downto 0) := "00";
  CONSTANT REG_RDADDR             : std_logic_vector (1 downto 0) := "01";
  CONSTANT OS_RD                  : std_logic_vector (1 downto 0) := "10";
  CONSTANT RD_MEM                 : std_logic_vector (1 downto 0) := "11";

  SIGNAL present_state            : std_logic_vector (1 downto 0) := WAIT_RDADDR; 
  SIGNAL next_state               : std_logic_vector (1 downto 0) := WAIT_RDADDR;
  SIGNAL ar_id_r                  : STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 downto 0) := (OTHERS => '0');
  SIGNAL addr_en_c                : std_logic := '0';
  SIGNAL rd_en_c                  : std_logic := '0';
  SIGNAL incr_addr_c              : std_logic := '0';
  SIGNAL single_trans_c           : std_logic := '0';
  SIGNAL dec_alen_c               : std_logic := '0';
  SIGNAL mux_sel_c                : std_logic := '0';
  SIGNAL r_last_c                 : std_logic := '0';
  SIGNAL r_last_int_c             : std_logic := '0';

BEGIN
  axi_read_fsm : ENTITY axi_fifo_mm_s_v4_2_3.axi_read_fsm 
  GENERIC MAP(
      C_AXI_TYPE                 => C_AXI_TYPE,
      C_ADDRB_WIDTH              => C_ADDRB_WIDTH
      )
  PORT MAP(
    S_AXI_INCR_ADDR            => incr_addr_c,
    S_AXI_ADDR_EN              => addr_en_c,
    S_AXI_SINGLE_TRANS         => single_trans_c,
    S_AXI_MUX_SEL              => mux_sel_c,
    S_AXI_R_LAST               => r_last_c,
    S_AXI_R_LAST_INT           => r_last_int_c,

    -- AXI Global Signals
    S_ACLK                     => S_ACLK,
    S_ARESETN                  => S_ARESETN,
    -- AXI Full/Lite Slave Read (Read side)
    S_AXI_ARLEN                => S_AXI_ARLEN,
    S_AXI_ARVALID              => S_AXI_ARVALID,
    S_AXI_ARVALID_int              => S_AXI_ARVALID_int,
    S_AXI_ARREADY              => S_AXI_ARREADY,
    S_AXI_ARREADY_int              => S_AXI_ARREADY_int,
    S_AXI_RLAST                => S_AXI_RLAST,
    S_AXI_RVALID               => S_AXI_RVALID,
    S_AXI_RVALID_int               => S_AXI_RVALID_int,
    S_AXI_RREADY               => S_AXI_RREADY,
    -- AXI Full/Lite Read Address Signals to BRAM
    S_AXI_RD_EN                => rd_en_c
      );
    --------------------------------------------------------------------------
    -- AXI LITE   
    --------------------------------------------------------------------------
  gaxi_lite_sm: IF (C_AXI_TYPE = 0 ) GENERATE
    --Combinatorial signals used in the design have "_c" at the end of signal names

  SIGNAL araddr_reg : std_logic_vector(C_ADDRB_WIDTH-1 downto 0) := (OTHERS => '0');
  BEGIN

    --------------------------------------------------------------------------
    -- AXI LITE FSM
    -- Mux Selection of ARADDR
    -- ARADDR is driven out from the read fsm based on the mux_sel_c
    -- Based on mux_sel either ARADDR is given out or the latched ARADDR is
    -- given out to BRAM
    --------------------------------------------------------------------------
    P_araddr_mux: PROCESS (mux_sel_c,S_AXI_ARADDR,araddr_reg)
    BEGIN
      IF (mux_sel_c = '0') THEN
        S_AXI_ARADDR_OUT   <= S_AXI_ARADDR;
      ELSE
        S_AXI_ARADDR_OUT   <= araddr_reg;
      END IF;
    END PROCESS P_araddr_mux;
 
    P_addr_reg: PROCESS (S_ACLK)
    BEGIN
      IF (S_ARESETN='1') THEN
           araddr_reg <= (OTHERS => '0');
      ELSIF (S_ACLK'event AND S_ACLK='1') THEN
        IF (addr_en_c = '1') THEN
           araddr_reg <= S_AXI_ARADDR AFTER FLOP_DELAY;
        END IF;
      END IF;
    END PROCESS P_addr_reg;

    --------------------------------------------------------------------------
    -- Assign output signals - AXI LITE FSM
    --------------------------------------------------------------------------
   S_AXI_RD_EN   <= rd_en_c;

  END GENERATE gaxi_lite_sm;
  ---------------------------------------------------------------------------
  -- AXI FULL 
  ---------------------------------------------------------------------------
  gaxi_full_sm: IF (C_AXI_TYPE = 1 ) GENERATE

    CONSTANT ONE                    : std_logic_vector(7 DOWNTO 0) := ("00000001");
    -- Inputs concatenate
    SIGNAL str_wait_rdaddr_c        : std_logic_vector (2 downto 0) := (OTHERS =>'0');
    SIGNAL str_reg_rdaddr_c         : std_logic_vector (2 downto 0) := (OTHERS =>'0');
    --Combinatorial signals used in the design have "_c" at the end of signal names

    SIGNAL araddr_reg               : std_logic_vector(C_AXI_ARADDR_WIDTH-1 downto 0):= (OTHERS => '0');
    SIGNAL arlen_cntr               : std_logic_vector(7 DOWNTO 0) := ONE;

  BEGIN

   dec_alen_c        <= incr_addr_c OR r_last_int_c;

    --------------------------------------------------------------------------
    -- Latch the registered ARADDR - AXI FULL FSM
    --------------------------------------------------------------------------
    P_addr_reg: PROCESS (S_ACLK)
    BEGIN
      IF (S_ACLK'event AND S_ACLK='1') THEN
        IF (S_ARESETN='1') THEN
          araddr_reg <= (OTHERS => '0');
        ELSE
          IF (incr_addr_c = '1' AND addr_en_c = '1' AND single_trans_c = '0') THEN
              araddr_reg <= S_AXI_ARADDR + 1 AFTER FLOP_DELAY ;
          ELSIF (addr_en_c = '1') THEN
            araddr_reg <= S_AXI_ARADDR AFTER FLOP_DELAY;
          ELSIF (incr_addr_c = '1') THEN
              araddr_reg <= araddr_reg + 1 AFTER FLOP_DELAY ;
          END IF;
        END IF;
      END IF;
    END PROCESS P_addr_reg;

    --------------------------------------------------------------------------
    -- Counter to generate r_last_int_c from registered ARLEN  - AXI FULL FSM
    --------------------------------------------------------------------------
    P_addr_cnt: PROCESS (S_ACLK)
    BEGIN
      IF S_ACLK'event AND S_ACLK = '1' THEN
        IF S_ARESETN = '1' THEN
            arlen_cntr      <= ONE;
        ELSE
          IF (addr_en_c = '1' AND dec_alen_c = '1' AND single_trans_c = '0') THEN
            arlen_cntr      <= S_AXI_ARLEN - ONE AFTER FLOP_DELAY;
          ELSIF addr_en_c = '1' THEN
            arlen_cntr      <= S_AXI_ARLEN AFTER FLOP_DELAY;
          ELSIF dec_alen_c = '1' THEN
            arlen_cntr      <= arlen_cntr - ONE AFTER FLOP_DELAY;
          ELSE
            arlen_cntr      <= arlen_cntr AFTER FLOP_DELAY;
          END IF;
        END IF;
      END IF;
    END PROCESS P_addr_cnt;

    r_last_int_c          <= '1' WHEN (arlen_cntr = "00000000" AND S_AXI_RREADY = '1') ELSE '0' ;

    --------------------------------------------------------------------------
    -- AXI FULL FSM
    -- Mux Selection of ARADDR
    -- ARADDR is driven out from the read fsm based on the mux_sel_c
    -- Based on mux_sel either ARADDR is given out or the latched ARADDR is
    -- given out to BRAM
    --------------------------------------------------------------------------
   gaxifull_notmem_slave: IF (C_AXI_TYPE = 1 AND C_AXI_SLAVE_TYPE /= 0) GENERATE
    P_araddr_mux: PROCESS (mux_sel_c,S_AXI_ARADDR,araddr_reg)
    BEGIN
      IF (mux_sel_c = '0') THEN
        S_AXI_ARADDR_OUT   <= S_AXI_ARADDR;
      ELSE
        S_AXI_ARADDR_OUT   <= araddr_reg;
      END IF;
    END PROCESS P_araddr_mux;
   END GENERATE gaxifull_notmem_slave;

    ----------------------------------------------------------------------------
    -- AXI-Full Memory Slave Unaligned address 
    -- with Fixed and INCR Burst Type Support - AXI FULL FSM
    -----------------------------------------------------------------------------
   gaxifull_mem_slave: IF (C_AXI_TYPE = 1 AND C_AXI_SLAVE_TYPE = 0) GENERATE
  
     CONSTANT C_RANGE : INTEGER := log2roundup(divroundup(C_WRITE_WIDTH_A,8));

     CONSTANT C_WRAP_SIZE : INTEGER := C_RANGE + 4;

     SIGNAL next_address_r      : STD_LOGIC_VECTOR(C_RANGE downto 0) := (OTHERS => '0');
     SIGNAL bmg_address_r       : STD_LOGIC_VECTOR(C_AXI_ARADDR_WIDTH-1 DOWNTO C_RANGE):= (OTHERS => '0');
     SIGNAL bmg_address_c       : STD_LOGIC_VECTOR(C_AXI_ARADDR_WIDTH-1 DOWNTO 0):= (OTHERS => '0');
     SIGNAL bmg_address_inc_c   : STD_LOGIC_VECTOR(C_AXI_ARADDR_WIDTH-1 DOWNTO C_RANGE):= (OTHERS => '0');
     SIGNAL axis_address_full_r : STD_LOGIC_VECTOR(C_AXI_ARADDR_WIDTH-1 downto 0)      := (OTHERS => '0');
     SIGNAL axis_address_full_c : STD_LOGIC_VECTOR(C_AXI_ARADDR_WIDTH-1 downto 0)      := (OTHERS => '0');
     SIGNAL num_of_bytes_r      : STD_LOGIC_VECTOR(6 downto 0)                    := (OTHERS => '0');
     SIGNAL num_of_bytes_c      : STD_LOGIC_VECTOR(6 downto 0)                    := (OTHERS => '0');
     SIGNAL wrap_addr_range_c   : STD_LOGIC_VECTOR(C_WRAP_SIZE downto 0)                    := (OTHERS => '0');
     SIGNAL wrap_bytes_c        : STD_LOGIC_VECTOR(6 DOWNTO 0):= (OTHERS => '0');
     SIGNAL addr_cnt_enb_r      : STD_LOGIC_VECTOR(C_AXI_ARADDR_WIDTH-1 downto 0)                    := (OTHERS => '0');
     SIGNAL incr_en_r           : STD_LOGIC := '0';

   BEGIN
     ---------------------------------------------------------------------------
     -- Generation of num_of_bytes_c based on AXI Size - AXI FULL  Memory Slave
     ---------------------------------------------------------------------------
     P_num_bytes: PROCESS (S_AXI_ARSIZE)
     BEGIN
       CASE S_AXI_ARSIZE is
         WHEN "000"  =>    num_of_bytes_c <= "0000001";
         WHEN "001"  =>    num_of_bytes_c <= "0000010";
         WHEN "010"  =>    num_of_bytes_c <= "0000100";
         WHEN "011"  =>    num_of_bytes_c <= "0001000";
         WHEN "100"  =>    num_of_bytes_c <= "0010000";
         WHEN "101"  =>    num_of_bytes_c <= "0100000";
         WHEN OTHERS =>    num_of_bytes_c <= "0000000";
       END CASE;
     END PROCESS P_num_bytes;

      ---------------------------------------------------------------------------
      -- Generation of wrap_bytes_c for wrap address generation
      ---------------------------------------------------------------------------
      P_wrap_bytes: PROCESS (S_AXI_ARSIZE)
      BEGIN
        CASE S_AXI_ARSIZE is
          WHEN "000"  =>    wrap_bytes_c <= "1111111";
          WHEN "001"  =>    wrap_bytes_c <= "1111110";
          WHEN "010"  =>    wrap_bytes_c <= "1111100";
          WHEN "011"  =>    wrap_bytes_c <= "1111000";
          WHEN "100"  =>    wrap_bytes_c <= "1110000";
          WHEN OTHERS =>    wrap_bytes_c <= "1100000";
        END CASE;
      END PROCESS P_wrap_bytes;

      ---------------------------------------------------------------------------
      -- Wrap address range calculation for WRAP BURST
      ---------------------------------------------------------------------------
      P_wrap_addr_range: PROCESS (S_AXI_ARLEN,wrap_bytes_c)
      BEGIN
	CASE (S_AXI_ARLEN) IS
	  WHEN "00000001" =>  
	    wrap_addr_range_c              <= "111" & wrap_bytes_c(C_RANGE DOWNTO 0) & "0";
	  WHEN "00000011" =>  
	    wrap_addr_range_c              <= "11" & wrap_bytes_c(C_RANGE DOWNTO 0) & "00";
	  WHEN "00000111" =>   
	    wrap_addr_range_c              <= "1" & wrap_bytes_c(C_RANGE DOWNTO 0) & "000";
	  WHEN OTHERS =>  
	    wrap_addr_range_c              <= wrap_bytes_c(C_RANGE DOWNTO 0) & "0000";
        END CASE;
      END PROCESS P_wrap_addr_range;

     P_addr_cnt_enb_reg: PROCESS (S_ACLK)
     BEGIN
       IF (S_ACLK'event AND S_ACLK='1') THEN
         IF (S_ARESETN='1') THEN
             addr_cnt_enb_r <= (OTHERS => '0');
         ELSE
           IF (addr_en_c = '1' AND S_AXI_ARBURST = "10" AND single_trans_c = '0') THEN
	          addr_cnt_enb_r(C_AXI_ARADDR_WIDTH-1 downto C_WRAP_SIZE+1) <= (OTHERS => '1');
	          addr_cnt_enb_r(C_WRAP_SIZE downto 0) <= wrap_addr_range_c;
           ELSIF (r_last_c = '1') THEN
             addr_cnt_enb_r <= (OTHERS => '0');
           END IF;
         END IF;
       END IF;
     END PROCESS P_addr_cnt_enb_reg;

     P_next_addr_reg: PROCESS (S_ACLK)
     BEGIN
       IF (S_ACLK'event AND S_ACLK='1') THEN
         IF (S_ARESETN='1') THEN
             next_address_r <= (OTHERS => '0');
             num_of_bytes_r <= (OTHERS => '0');
             incr_en_r      <= '0';
         ELSE
          IF (incr_addr_c = '1' AND addr_en_c = '1' AND single_trans_c = '0') THEN
             next_address_r(C_RANGE DOWNTO 0) <= ('0' & S_AXI_ARADDR(C_RANGE-1 DOWNTO 0)) + num_of_bytes_c(C_RANGE DOWNTO 0);
             incr_en_r   <= S_AXI_ARBURST(0) OR S_AXI_ARBURST(1);
             num_of_bytes_r <= num_of_bytes_c;
           ELSIF (addr_en_c = '1') THEN
             next_address_r(C_RANGE DOWNTO 0) <= ('0' & S_AXI_ARADDR(C_RANGE-1 DOWNTO 0));
             incr_en_r   <= S_AXI_ARBURST(0) OR S_AXI_ARBURST(1);
             num_of_bytes_r <= num_of_bytes_c;
           ELSIF (incr_addr_c = '1') THEN
             next_address_r(C_RANGE DOWNTO 0) <= ('0' & bmg_address_c(C_RANGE-1 DOWNTO 0)) + num_of_bytes_r(C_RANGE DOWNTO 0);
           END IF;
         END IF;
       END IF;
     END PROCESS P_next_addr_reg;

     P_bmg_addr_reg: PROCESS (S_ACLK)
     BEGIN
       IF (S_ACLK'event AND S_ACLK='1') THEN
         IF (S_ARESETN='1') THEN
             bmg_address_r <= (OTHERS => '0');
         ELSE
           IF (addr_en_c = '1') THEN
             bmg_address_r <= S_AXI_ARADDR(C_AXI_ARADDR_WIDTH-1 DOWNTO C_RANGE);
           ELSIF (incr_addr_c = '1') THEN
             bmg_address_r <= bmg_address_c(C_AXI_ARADDR_WIDTH-1 DOWNTO C_RANGE);
           END IF;
         END IF;
       END IF;
     END PROCESS P_bmg_addr_reg;

     P_unalign_araddr_mux: PROCESS (next_address_r,incr_en_r,bmg_address_r)
     BEGIN
       IF (next_address_r(C_RANGE) = '1' AND incr_en_r = '1') THEN
         bmg_address_inc_c   <= bmg_address_r + 1;
       ELSE
         bmg_address_inc_c   <= bmg_address_r;
       END IF;
     END PROCESS P_unalign_araddr_mux;

     axis_address_full_r <= bmg_address_r & next_address_r(C_RANGE-1 DOWNTO 0);
     axis_address_full_c <= S_AXI_ARADDR WHEN (mux_sel_c = '0') ELSE bmg_address_inc_c & next_address_r(C_RANGE-1 DOWNTO 0) ;

     P_addr_cnt_enb: PROCESS (addr_cnt_enb_r,axis_address_full_r,axis_address_full_c)
       BEGIN
         FOR i IN C_AXI_ARADDR_WIDTH-1 DOWNTO 0 LOOP
           IF (addr_cnt_enb_r(i) = '1') THEN
             bmg_address_c(i) <= axis_address_full_r(i);
           ELSE
             bmg_address_c(i) <= axis_address_full_c(i);
           END IF;
         END LOOP;
     END PROCESS P_addr_cnt_enb;


     S_AXI_ARADDR_OUT <=  bmg_address_c(C_AXI_ARADDR_WIDTH-1 DOWNTO C_RANGE);
   END GENERATE gaxifull_mem_slave;

    ----------------------------------------------------------------------------
    -- Assign output signals  - AXI FULL FSM
    -----------------------------------------------------------------------------
    S_AXI_RD_EN   <= rd_en_c;

  END GENERATE gaxi_full_sm;

  grid: IF (C_HAS_AXI_ID = 1) GENERATE
   P_rid_gen: PROCESS (S_ACLK)
    BEGIN
      IF (S_ACLK'event AND S_ACLK='1') THEN
        IF (S_ARESETN='1') THEN
            S_AXI_RID <= (OTHERS => '0');
            ar_id_r <= (OTHERS => '0');
        ELSE
          IF (S_AXI_ARVALID = '1') THEN
            S_AXI_RID <= S_AXI_ARID;
          END IF;
        END IF;
      END IF;
    END PROCESS P_rid_gen;

  END GENERATE grid; 

END axi_read_wrapper_arch;


-------------------------------------------------------------------------------
--
-- AXI4-AXI4 Stream FIFO Core - Top Level XCC Wrapper File
--
-------------------------------------------------------------------------------
-- (c) Copyright 2006 - 2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--
-- Filename: axi_wrapper.vhd
--
-- Author: Xilinx
--
-- Description: Top level wrapper file. This file is used by other CoreGen 
-- cores calling the AXI4-AXI4 Stream FIFO core.
--   
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY STD;
USE STD.TEXTIO.ALL;

library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.all;

library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.axi_fifo_mm_s_pkg.all;

ENTITY axi_wrapper IS
  GENERIC (
  ----------------------------------------------------------------------------
  -- Generic Declarations
  ----------------------------------------------------------------------------
    C_AXI_TYPE                  : INTEGER := 0; -- 0: AXI Lite; 1: AXI Full
    C_AXI_SLAVE_TYPE            : INTEGER := 0; -- 0: MEMORY SLAVE; 1: PERIPHERAL SLAVE;
    C_HAS_AXI_ID                : INTEGER := 1; 
    C_AXI_ID_WIDTH              : INTEGER := 4;
    C_AXI_ADDR_WIDTH            : INTEGER := 12;
    C_AXI_WDATA_WIDTH           : INTEGER := 4;
    C_TX_FIFO_DEPTH             : INTEGER := 512;
    C_RX_FIFO_DEPTH             : INTEGER := 512
  );
  PORT (
  ----------------------------------------------------------------------------
  -- Input and Output Declarations
  ----------------------------------------------------------------------------

    -- AXI Global Signals
    S_AClk                         : IN  STD_LOGIC := '0';
    S_ARESETN                      : IN  STD_LOGIC := '0'; 

    -- AXI Full/Lite Slave Write (write side)
    S_AXI_AWID                     : IN  STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWADDR                   : IN  STD_LOGIC_VECTOR(C_AXI_ADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWLEN                    : IN  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWSIZE                   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWBURST                  : IN  STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWVALID                  : IN  STD_LOGIC := '0';
    S_AXI_AWREADY                  : OUT STD_LOGIC := '0';
    S_AXI_WDATA                    : IN  STD_LOGIC_VECTOR(C_AXI_WDATA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_WSTRB                    : IN  STD_LOGIC_VECTOR(C_AXI_WDATA_WIDTH/8-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_WLAST                    : IN  STD_LOGIC := '0';
    S_AXI_WVALID                   : IN  STD_LOGIC := '0';
    S_AXI_WREADY                   : OUT STD_LOGIC := '0';
    S_AXI_BID                      : OUT STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_BRESP                    : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_BVALID                   : OUT STD_LOGIC := '0';
    S_AXI_BREADY                   : IN  STD_LOGIC := '0';

    -- AXI Full/Lite Slave Read (Write side)
    S_AXI_ARID                     : IN  STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARADDR                   : IN  STD_LOGIC_VECTOR(C_AXI_ADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARLEN                    : IN  STD_LOGIC_VECTOR(8-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARSIZE                   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARBURST                  : IN  STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARVALID                  : IN  STD_LOGIC := '0';
    S_AXI_ARVALID_int                  : IN  STD_LOGIC := '0';
    S_AXI_ARREADY                  : OUT STD_LOGIC := '0';
    S_AXI_ARREADY_int                  : OUT STD_LOGIC := '0';
    S_AXI_RID                      : OUT STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_RDATA                    : OUT STD_LOGIC_VECTOR(C_AXI_WDATA_WIDTH-1 DOWNTO 0); 
    S_AXI_RRESP                    : OUT STD_LOGIC_VECTOR(2-1 DOWNTO 0);
    S_AXI_RLAST                    : OUT STD_LOGIC := '0';
    S_AXI_RVALID                   : OUT STD_LOGIC := '0';
    S_AXI_RVALID_int                   : OUT STD_LOGIC := '0';
    S_AXI_RREADY                   : IN  STD_LOGIC := '0';

    -- AXI Full/Lite Sideband Signals
    S_AXI_AWADDR_OUT               : OUT STD_LOGIC_VECTOR(C_AXI_ADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_WR_EN                    : OUT STD_LOGIC := '0';
    S_AXI_ARADDR_OUT               : OUT STD_LOGIC_VECTOR(C_AXI_ADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_RD_EN                    : OUT STD_LOGIC := '0'

  );
  
END axi_wrapper;

ARCHITECTURE xilinx OF axi_wrapper IS

  SIGNAL s_aresetn_a_c           : STD_LOGIC := '0';

  SIGNAL s_axi_rid_c             :  STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL s_axi_rdata_c           :  STD_LOGIC_VECTOR(C_AXI_WDATA_WIDTH-1 DOWNTO 0) := (OTHERS => '0'); 
  SIGNAL s_axi_rresp_c           :  STD_LOGIC_VECTOR(2-1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL s_axi_rlast_c           :  STD_LOGIC := '0';
  SIGNAL s_axi_rvalid_c          :  STD_LOGIC := '0';
  SIGNAL s_axi_rready_c          :  STD_LOGIC := '0';
  SIGNAL regceb_c                :  STD_LOGIC := '0'; 

  CONSTANT C_ACTUAL_WADDR_WIDTH  : integer := log2roundup(C_TX_FIFO_DEPTH);
  CONSTANT C_ACTUAL_RADDR_WIDTH  : integer := log2roundup(C_RX_FIFO_DEPTH);
  CONSTANT AXI_FULL_MEMORY_SLAVE : integer := if_then_else((C_AXI_SLAVE_TYPE = 0 AND C_AXI_TYPE = 1),1,0);
  CONSTANT C_AXI_WADDR_WIDTH_MSB : integer := C_ACTUAL_WADDR_WIDTH+log2roundup(C_AXI_WDATA_WIDTH/8);
  CONSTANT C_AXI_RADDR_WIDTH_MSB : integer := C_ACTUAL_RADDR_WIDTH+log2roundup(C_AXI_WDATA_WIDTH/8);

  -- Data Width        Number of LSB address bits to be discarded
  --  1 to 16                      1
  --  17 to 32                     2
  --  33 to 64                     3
  --  65 to 128                    4
  --  129 to 256                   5
  --  257 to 512                   6
  --  513 to 1024                  7
  -- The following two constants determine this.

  CONSTANT LOWER_BOUND_VAL      : integer := if_then_else((log2roundup(divroundup(C_AXI_WDATA_WIDTH,8))) = 0, 0,
                                             log2roundup(divroundup(C_AXI_WDATA_WIDTH,8)));
  CONSTANT C_AXI_ADDR_WIDTH_LSB : integer := if_then_else((AXI_FULL_MEMORY_SLAVE = 1),0,LOWER_BOUND_VAL);

  SIGNAL sig_axi_waddr_out      :  STD_LOGIC_VECTOR(C_ACTUAL_WADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0'); 
  SIGNAL sig_axi_raddr_out      :  STD_LOGIC_VECTOR(C_ACTUAL_RADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0'); 

BEGIN
    s_aresetn_a_c <= NOT S_ARESETN;
    S_AXI_BRESP <= (OTHERS => '0');
    s_axi_rresp_c <= (OTHERS => '0');
  
    S_AXI_RDATA    <= s_axi_rdata_c;
    S_AXI_RLAST    <= s_axi_rlast_c;
    S_AXI_RVALID   <= s_axi_rvalid_c;
    S_AXI_RID      <= s_axi_rid_c;
    S_AXI_RRESP    <= s_axi_rresp_c;
    s_axi_rready_c <= S_AXI_RREADY;

    S_AXI_AWADDR_OUT <= S_AXI_AWADDR(C_AXI_ADDR_WIDTH-1 downto C_ACTUAL_WADDR_WIDTH) & sig_axi_waddr_out;
    S_AXI_ARADDR_OUT <= S_AXI_ARADDR(C_AXI_ADDR_WIDTH-1 downto C_ACTUAL_RADDR_WIDTH) & sig_axi_raddr_out;
  
    axi_wr_fsm : ENTITY axi_fifo_mm_s_v4_2_3.axi_write_wrapper
    GENERIC MAP(
        -- AXI Interface related parameters start here
        C_AXI_TYPE                 => C_AXI_TYPE,
        C_AXI_SLAVE_TYPE           => C_AXI_SLAVE_TYPE,
        C_AXI_AWADDR_WIDTH         => if_then_else((AXI_FULL_MEMORY_SLAVE = 1),C_AXI_WADDR_WIDTH_MSB,C_AXI_WADDR_WIDTH_MSB-C_AXI_ADDR_WIDTH_LSB),
        C_HAS_AXI_ID               => C_HAS_AXI_ID,
        C_AXI_ID_WIDTH             => C_AXI_ID_WIDTH,
        C_ADDRA_WIDTH              => C_ACTUAL_WADDR_WIDTH,
        C_AXI_WDATA_WIDTH          => C_AXI_WDATA_WIDTH,
        C_AXI_OS_WR                => 2
        )
    PORT MAP(
        -- AXI Global Signals
        S_ACLK                     => S_ACLK,
        S_ARESETN                  => s_aresetn_a_c,
        -- AXI Full/Lite Slave Write Interface
        S_AXI_AWADDR               => S_AXI_AWADDR(C_AXI_WADDR_WIDTH_MSB-1 DOWNTO C_AXI_ADDR_WIDTH_LSB),
        S_AXI_AWLEN                => S_AXI_AWLEN,
        S_AXI_AWID                 => S_AXI_AWID,
        S_AXI_AWSIZE               => S_AXI_AWSIZE,
        S_AXI_AWBURST              => S_AXI_AWBURST,
        S_AXI_AWVALID              => S_AXI_AWVALID,
        S_AXI_AWREADY              => S_AXI_AWREADY,
        S_AXI_WVALID               => S_AXI_WVALID,
        S_AXI_WREADY               => S_AXI_WREADY,
        S_AXI_BVALID               => S_AXI_BVALID,
        S_AXI_BREADY               => S_AXI_BREADY,
        S_AXI_BID                  => S_AXI_BID,
        -- Signals for BRAM interface
        S_AXI_AWADDR_OUT           => sig_axi_waddr_out,
        S_AXI_WR_EN                => S_AXI_WR_EN
        );
  
    axi_rd_sm : ENTITY axi_fifo_mm_s_v4_2_3.axi_read_wrapper
    GENERIC MAP (
      -- AXI Interface related parameters start here
      C_AXI_TYPE             =>  C_AXI_TYPE,
      C_AXI_SLAVE_TYPE       =>  C_AXI_SLAVE_TYPE,
      C_WRITE_WIDTH_A        =>  C_AXI_WDATA_WIDTH,
      C_ADDRA_WIDTH          =>  C_AXI_WDATA_WIDTH,
      C_AXI_PIPELINE_STAGES  =>  1,
      C_AXI_ARADDR_WIDTH     =>  if_then_else((AXI_FULL_MEMORY_SLAVE = 1),C_AXI_RADDR_WIDTH_MSB,C_AXI_RADDR_WIDTH_MSB-C_AXI_ADDR_WIDTH_LSB),
      C_HAS_AXI_ID           =>  C_HAS_AXI_ID,
      C_AXI_ID_WIDTH         =>  C_AXI_ID_WIDTH,
      C_ADDRB_WIDTH          =>  C_ACTUAL_RADDR_WIDTH
      )
    PORT MAP(
      -- AXI Global Signals
      S_ACLK                     => S_AClk, 
      S_ARESETN                  => s_aresetn_a_c,
      
      -- AXI Full/Lite Read Side
      S_AXI_ARADDR               => S_AXI_ARADDR(C_AXI_RADDR_WIDTH_MSB-1 DOWNTO C_AXI_ADDR_WIDTH_LSB),
      S_AXI_ARLEN                => S_AXI_ARLEN,
      S_AXI_ARSIZE               => S_AXI_ARSIZE,
      S_AXI_ARBURST              => S_AXI_ARBURST,
      S_AXI_ARVALID              => S_AXI_ARVALID,
      S_AXI_ARVALID_int             => S_AXI_ARVALID_int,
      S_AXI_ARREADY              => S_AXI_ARREADY,
      S_AXI_ARREADY_int              => S_AXI_ARREADY_int,
      S_AXI_RLAST                => s_axi_rlast_c,
      S_AXI_RVALID               => s_axi_rvalid_c,
      S_AXI_RVALID_int               => S_AXI_RVALID_int,
      S_AXI_RREADY               => s_axi_rready_c,
      S_AXI_ARID                 => S_AXI_ARID,
      S_AXI_RID                  => s_axi_rid_c,
      -- AXI Full/Lite Read FSM Outputs
      S_AXI_ARADDR_OUT           => sig_axi_raddr_out,
      S_AXI_RD_EN                => S_AXI_RD_EN
    );

END xilinx;



-------------------------------------------------------------------------------
--
--  AXI4-AXI4 Stream FIFO Core - AXIS FG module
--
-------------------------------------------------------------------------------
-- (c) Copyright 2006 - 2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        axis_fg.vhd
-- Version:         v4_2
-- Description:     AXIS FG module providing Register slice and packet FIFO interface
--                  from FIFO Generator Core
--
------------------------------------------------------------------------------
-- Structure:   
--                axi_fifo_mm_s.vhd
--                   axi_fifo_mm_s_pkg.vhd
--                   axi_lite_ipif.vhd
--                   axi_wrapper.vhd
--                      axi_read_fsm.vhd
--                      axi_read_wrapper.vhd
--                      axi_write_fsm.vhd
--                      axi_write_wrapper.vhd
--                   ipic2axi_s.vhd
--                      fifo.vhd
--                         axis_fg.vhd
------------------------------------------------------------------------------
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_arith.conv_std_logic_vector;
use ieee.numeric_std.all;    
use ieee.std_logic_misc.all;


library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.axi_fifo_mm_s_pkg.all;

--library fifo_generator_v13_2_5;
--use fifo_generator_v13_2_5.all;

Library xpm;
use xpm.vcomponents.all;


-- synopsys translate_off
library unisim;
use     unisim.vcomponents.all; -- Component declarations for unisim.
use     unisim.all; -- Makes unisim entities available for default binding.
-- synopsys translate_on

entity axis_fg is
  generic(
    C_FAMILY		    :  string := "virtex7";
--    C_SELECT_XPM            :  integer := 1;
    C_DEPTH                 :  integer := 512;
    C_CASCADE_HEIGHT        :  integer := 0;
    C_PF_THRESHOLD          :  integer := 500;
    C_PE_THRESHOLD          :  integer := 16;
    C_FIFO_GEN_TYPE         :  integer := 0; -- 0: Data FIFO; 1: Packet FIFO; 2: One stage Register Slice
    C_DATA_COUNT_WIDTH      :  integer := 9;

    C_HAS_AXIS_TID          : integer := 0;
    C_HAS_AXIS_TDEST        : integer := 1;
    C_HAS_AXIS_TUSER        : integer := 0;
    C_HAS_AXIS_TLAST        : integer := 1;
    C_HAS_AXIS_TSTRB        : integer := 1;
    C_HAS_AXIS_TKEEP        : integer := 0;

    C_AXIS_TDATA_WIDTH      :  integer := 32;
    C_AXIS_TID_WIDTH        :  integer := 1;
    C_AXIS_TDEST_WIDTH      :  integer := 4;
    C_AXIS_TUSER_WIDTH      :  integer := 1
  );
  port(
    aclk                    : in  std_logic;
    aresetn                 : in  std_logic;

    -- AXI Streaming Slave Signals (Write side)
    s_axis_tvalid           : in  std_logic := '0';
    s_axis_tready           : out std_logic := '0';
    s_axis_tdata            : in  std_logic_vector(C_AXIS_TDATA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    s_axis_tstrb            : in  std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 DOWNTO 0) := (OTHERS => '0');
    s_axis_tkeep            : in  std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 DOWNTO 0) := (OTHERS => '0');
    s_axis_tlast            : in  std_logic := '0';
    s_axis_tid              : in  std_logic_vector(C_AXIS_TID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    s_axis_tdest            : in  std_logic_vector(C_AXIS_TDEST_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    s_axis_tuser            : in  std_logic_vector(C_AXIS_TUSER_WIDTH-1 DOWNTO 0) := (OTHERS => '0');

    -- AXI Streaming Master Signals (Read side)
    m_axis_tvalid           : out std_logic := '0';
    m_axis_tready           : in  std_logic := '0';
    m_axis_tdata            : out std_logic_vector(C_AXIS_TDATA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    m_axis_tstrb            : out std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 DOWNTO 0) := (OTHERS => '0');
    m_axis_tkeep            : out std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 DOWNTO 0) := (OTHERS => '0');
    m_axis_tlast            : out std_logic := '0';
    m_axis_tid              : out std_logic_vector(C_AXIS_TID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    m_axis_tdest            : out std_logic_vector(C_AXIS_TDEST_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    m_axis_tuser            : out std_logic_vector(C_AXIS_TUSER_WIDTH-1 DOWNTO 0) := (OTHERS => '0');

    axis_prog_full          : out std_logic := '0';
    axis_prog_empty         : out std_logic := '0';
    axis_data_count         : out std_logic_vector(C_DATA_COUNT_WIDTH DOWNTO 0) := (OTHERS => '0')
  );
end axis_fg;

architecture structure of axis_fg is

  CONSTANT ALL_ZERO_64                     : std_logic_vector(63 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_32                     : std_logic_vector(31 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_8                      : std_logic_vector(7 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_4                      : std_logic_vector(3 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_3                      : std_logic_vector(2 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_2                      : std_logic_vector(1 DOWNTO 0) := (OTHERS => '0');
  CONSTANT AXI4_USR_WIDTH_ZERO             : std_logic_vector(0 DOWNTO 0) := (OTHERS => '0');
  CONSTANT GND                             : std_logic := '0';
  CONSTANT PROG_FLAG_WIDTH                 : std_logic_vector(9 DOWNTO 0) := (OTHERS => '0');
  CONSTANT C_DIN_WIDTH_AXIS                : integer := C_AXIS_TDATA_WIDTH + C_AXIS_TDATA_WIDTH/8 + C_AXIS_TDEST_WIDTH + 
                                                        if_then_else(C_HAS_AXIS_TID = 1, C_AXIS_TID_WIDTH, 0) +
                                                        if_then_else(C_HAS_AXIS_TUSER = 1, C_AXIS_TUSER_WIDTH, 0) + 1;
  CONSTANT TKEEP_WIDTH                     : integer := C_AXIS_TDATA_WIDTH/8;
  CONSTANT AXIS_TYPE                       : integer := if_then_else(C_FIFO_GEN_TYPE = 2, 1, 0);
  CONSTANT LOG2DEPTH                       : integer := log2roundup(C_DEPTH)+1;
  CONSTANT REG_SLICE_MODE_AXIS             : integer := if_then_else(C_FIFO_GEN_TYPE = 2, 1, 0);
  CONSTANT C_PACKET_FIFO_AXIS              : string := if_then_else(C_FIFO_GEN_TYPE = 1, "true", "false");


  SIGNAL dout_axi_fifo			   : std_logic_vector(C_AXIS_TDATA_WIDTH-1 downto 0);
  SIGNAL full_axi_fifo          	   : std_logic;
  SIGNAL almost_full_axi_fifo   	   : std_logic;
  SIGNAL wr_ack_axi_fifo        	   : std_logic;
  SIGNAL overflow_axi_fifo      	   : std_logic;
  SIGNAL empty_axi_fifo         	   : std_logic;
  SIGNAL almost_empty_axi_fifo  	   : std_logic;
  SIGNAL valid_axi_fifo         	   : std_logic;
  SIGNAL underflow_axi_fifo     	   : std_logic;
  SIGNAL data_count_axi_fifo    	   : std_logic_vector((log2roundup(C_DEPTH))-1 downto 0);
  SIGNAL rd_data_count_axi_fifo 	   : std_logic_vector((log2roundup(C_DEPTH))-1 downto 0);
  SIGNAL wr_data_count_axi_fifo 	   : std_logic_vector((log2roundup(C_DEPTH))-1 downto 0);
  SIGNAL prog_full_axi_fifo     	   : std_logic;
  SIGNAL prog_empty_axi_fifo    	   : std_logic;
  SIGNAL sbiterr_axi_fifo       	   : std_logic;
  SIGNAL dbiterr_axi_fifo       	   : std_logic;
  SIGNAL wr_rst_busy_i          	   : std_logic;
  SIGNAL rd_rst_busy_i          	   : std_logic;
  SIGNAL m_axi_awid_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_awaddr_axi_fifo		   : std_logic_vector(32-1 downto 0);
  SIGNAL m_axi_awlen_axi_fifo		   : std_logic_vector(8-1 downto 0);
  SIGNAL m_axi_awsize_axi_fifo		   : std_logic_vector(3-1 downto 0);
  SIGNAL m_axi_awburst_axi_fifo		   : std_logic_vector(2-1 downto 0);
  SIGNAL m_axi_awlock_axi_fifo		   : std_logic_vector(2-1 downto 0);
  SIGNAL m_axi_awcache_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_awprot_axi_fifo		   : std_logic_vector(3-1 downto 0);
  SIGNAL m_axi_awqos_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_awregion_axi_fifo	   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_awuser_axi_fifo		   : std_logic_vector(1-1 downto 0);
  SIGNAL m_axi_awvalid_axi_fifo		   : std_logic;
  SIGNAL m_axi_wid_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_wdata_axi_fifo		   : std_logic_vector(64-1 downto 0);
  SIGNAL m_axi_wstrb_axi_fifo		   : std_logic_vector(8-1 downto 0);
  SIGNAL m_axi_wlast_axi_fifo		   : std_logic;
  SIGNAL m_axi_wuser_axi_fifo		   : std_logic_vector(1-1 downto 0);
  SIGNAL m_axi_wvalid_axi_fifo		   : std_logic;
  SIGNAL m_axi_bready_axi_fifo		   : std_logic;
  SIGNAL s_axi_awready_axi_fifo		   : std_logic;
  SIGNAL s_axi_wready_axi_fifo		   : std_logic;
  SIGNAL s_axi_bid_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL s_axi_bresp_axi_fifo		   : std_logic_vector(2-1 downto 0);
  SIGNAL s_axi_buser_axi_fifo		   : std_logic_vector(1-1 downto 0);
  SIGNAL s_axi_bvalid_axi_fifo		   : std_logic;
  SIGNAL m_axi_arid_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_araddr_axi_fifo		   : std_logic_vector(32-1 downto 0);
  SIGNAL m_axi_arlen_axi_fifo		   : std_logic_vector(8-1 downto 0);
  SIGNAL m_axi_arsize_axi_fifo		   : std_logic_vector(3-1 downto 0);
  SIGNAL m_axi_arburst_axi_fifo		   : std_logic_vector(2-1 downto 0);
  SIGNAL m_axi_arlock_axi_fifo		   : std_logic_vector(2-1 downto 0);
  SIGNAL m_axi_arcache_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_arprot_axi_fifo		   : std_logic_vector(3-1 downto 0);
  SIGNAL m_axi_arqos_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_arregion_axi_fifo	   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_aruser_axi_fifo		   : std_logic_vector(1-1 downto 0);
  SIGNAL m_axi_arvalid_axi_fifo		   : std_logic;
  SIGNAL m_axi_rready_axi_fifo		   : std_logic;
  SIGNAL s_axi_arready_axi_fifo		   : std_logic;
  SIGNAL s_axi_rid_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL s_axi_rdata_axi_fifo		   : std_logic_vector(64-1 downto 0);
  SIGNAL s_axi_rresp_axi_fifo		   : std_logic_vector(2-1 downto 0);
  SIGNAL s_axi_rlast_axi_fifo		   : std_logic;
  SIGNAL s_axi_ruser_axi_fifo		   : std_logic_vector(1-1 downto 0);
  SIGNAL s_axi_rvalid_axi_fifo		   : std_logic;

  SIGNAL axi_aw_prog_full_thresh_axi_fifo  : std_logic_vector(4-1 downto 0);
  SIGNAL axi_aw_prog_empty_thresh_axi_fifo : std_logic_vector(4-1 downto 0);
  SIGNAL axi_aw_data_count_axi_fifo        : std_logic_vector(4 downto 0);
  SIGNAL axi_aw_wr_data_count_axi_fifo     : std_logic_vector(4 downto 0);
  SIGNAL axi_aw_rd_data_count_axi_fifo     : std_logic_vector(4 downto 0);
  SIGNAL axi_aw_sbiterr_axi_fifo 	   : std_logic;
  SIGNAL axi_aw_dbiterr_axi_fifo           : std_logic;
  SIGNAL axi_aw_overflow_axi_fifo          : std_logic;
  SIGNAL axi_aw_underflow_axi_fifo         : std_logic;
  SIGNAL axi_aw_prog_full                  : std_logic;
  SIGNAL axi_aw_prog_empty                 : std_logic;
  SIGNAL axi_w_prog_full_thresh_axi_fifo   : std_logic_vector(10-1 downto 0);
  SIGNAL axi_w_prog_empty_thresh_axi_fifo  : std_logic_vector(10-1 downto 0);
  SIGNAL axi_w_data_count_axi_fifo         : std_logic_vector(10 downto 0);
  SIGNAL axi_w_wr_data_count_axi_fifo      : std_logic_vector(10 downto 0);
  SIGNAL axi_w_rd_data_count_axi_fifo      : std_logic_vector(10 downto 0);
  SIGNAL axi_w_sbiterr_axi_fifo            : std_logic;
  SIGNAL axi_w_dbiterr_axi_fifo            : std_logic;
  SIGNAL axi_w_overflow_axi_fifo           : std_logic;
  SIGNAL axi_w_underflow_axi_fifo          : std_logic;
  SIGNAL axi_w_prog_full                   : std_logic;
  SIGNAL axi_w_prog_empty                  : std_logic;
  SIGNAL axi_b_prog_full_thresh_axi_fifo   : std_logic_vector(4-1 downto 0);
  SIGNAL axi_b_prog_empty_thresh_axi_fifo  : std_logic_vector(4-1 downto 0);
  SIGNAL axi_b_data_count_axi_fifo         : std_logic_vector(4 downto 0);
  SIGNAL axi_b_wr_data_count_axi_fifo      : std_logic_vector(4 downto 0);
  SIGNAL axi_b_rd_data_count_axi_fifo      : std_logic_vector(4 downto 0);
  SIGNAL axi_b_sbiterr_axi_fifo            : std_logic;
  SIGNAL axi_b_dbiterr_axi_fifo            : std_logic;
  SIGNAL axi_b_overflow_axi_fifo           : std_logic;
  SIGNAL axi_b_underflow_axi_fifo          : std_logic;
  SIGNAL axi_b_prog_full                   : std_logic;
  SIGNAL axi_b_prog_empty                  : std_logic;
  SIGNAL axi_ar_prog_full_thresh_axi_fifo  : std_logic_vector(4-1 downto 0);
  SIGNAL axi_ar_prog_empty_thresh_axi_fifo : std_logic_vector(4-1 downto 0);
  SIGNAL axi_ar_data_count_axi_fifo        : std_logic_vector(4 downto 0);
  SIGNAL axi_ar_wr_data_count_axi_fifo     : std_logic_vector(4 downto 0);
  SIGNAL axi_ar_rd_data_count_axi_fifo     : std_logic_vector(4 downto 0);
  SIGNAL axi_ar_sbiterr_axi_fifo           : std_logic;
  SIGNAL axi_ar_dbiterr_axi_fifo           : std_logic;
  SIGNAL axi_ar_overflow_axi_fifo          : std_logic;
  SIGNAL axi_ar_underflow_axi_fifo         : std_logic;
  SIGNAL axi_ar_prog_full                  : std_logic;
  SIGNAL axi_ar_prog_empty                 : std_logic;
  SIGNAL axi_r_prog_full_thresh_axi_fifo   : std_logic_vector(10-1 downto 0);
  SIGNAL axi_r_prog_empty_thresh_axi_fifo  : std_logic_vector(10-1 downto 0);
  SIGNAL axi_r_data_count_axi_fifo         : std_logic_vector(10 downto 0);
  SIGNAL axi_r_wr_data_count_axi_fifo      : std_logic_vector(10 downto 0);
  SIGNAL axi_r_rd_data_count_axi_fifo      : std_logic_vector(10 downto 0);
  SIGNAL axi_r_sbiterr_axi_fifo            : std_logic;
  SIGNAL axi_r_dbiterr_axi_fifo            : std_logic;
  SIGNAL axi_r_overflow_axi_fifo           : std_logic;
  SIGNAL axi_r_underflow_axi_fifo          : std_logic;
  SIGNAL axi_r_prog_full                   : std_logic;
  SIGNAL axi_r_prog_empty                  : std_logic;
  SIGNAL axis_wr_data_count_axi_fifo       : std_logic_vector(log2roundup(C_DEPTH) downto 0);
  SIGNAL axis_rd_data_count_axi_fifo       : std_logic_vector(log2roundup(C_DEPTH) downto 0);
  SIGNAL axis_sbiterr_axi_fifo             : std_logic;
  SIGNAL axis_dbiterr_axi_fifo             : std_logic;
  SIGNAL axis_overflow_axi_fifo            : std_logic;
  SIGNAL axis_underflow_axi_fifo           : std_logic;
  SIGNAL axis_prog_full_thresh             : std_logic_vector((log2roundup(C_DEPTH))-1 downto 0);
  SIGNAL axis_prog_empty_thresh            : std_logic_vector((log2roundup(C_DEPTH))-1 downto 0);
  SIGNAL sync_areset_n                     : std_logic;
  SIGNAL s_axis_tready_i                   : std_logic := '0';
  Constant C_DEFAULT_VALUE           : String  := "Blankstring";  -- new for FIFO Gen
  Constant C_PRIM_FIFO_TYPE           : String  := "4KX4";  -- new for FIFO Gen
  Constant RST_VAL                   : String  := "0";

  begin

  s_axis_tready <= '0' when sync_areset_n = '1' else s_axis_tready_i;

   synch_block: process (aclk) 
     begin
       if (aclk'event and aclk = '1') then
	 if (aresetn = '0') then
  	   sync_areset_n <= '1';
	 elsif (s_axis_tready_i = '0') then
  	   sync_areset_n <= '0';
	 end if;
       end if;
   end process synch_block;

   axis_data_count <= axis_wr_data_count_axi_fifo;

      COMP_FIFO : xpm_fifo_axis 
      generic map (
        CLOCKING_MODE       => "COMMON"            ,
        FIFO_MEMORY_TYPE    => "BRAM",
        PACKET_FIFO         => C_PACKET_FIFO_AXIS,
        ECC_MODE            => "NO_ECC",
        RELATED_CLOCKS      => 0,
        USE_ADV_FEATURES    => "1606",
        WR_DATA_COUNT_WIDTH => LOG2DEPTH,
        RD_DATA_COUNT_WIDTH => LOG2DEPTH,

        FIFO_DEPTH          => C_DEPTH,
        CASCADE_HEIGHT      => C_CASCADE_HEIGHT,
        TDATA_WIDTH         => C_AXIS_TDATA_WIDTH,
        TID_WIDTH           => C_AXIS_TID_WIDTH,
        TDEST_WIDTH         => C_AXIS_TDEST_WIDTH,
        TUSER_WIDTH         => C_AXIS_TUSER_WIDTH,
        PROG_FULL_THRESH    => C_PF_THRESHOLD,
        PROG_EMPTY_THRESH   => C_PE_THRESHOLD,
        CDC_SYNC_STAGES     => 2

      )
     port map (
        s_aresetn            => aresetn,
        s_aclk               => aclk,
        m_aclk               => aclk,
        
        s_axis_tvalid        => s_axis_tvalid,
        s_axis_tready        => s_axis_tready_i,
        s_axis_tdata         => s_axis_tdata,
        s_axis_tstrb         => s_axis_tstrb,
        s_axis_tkeep         => s_axis_tkeep,
        s_axis_tlast         => s_axis_tlast,
        s_axis_tid           => s_axis_tid,
        s_axis_tdest         => s_axis_tdest,
        s_axis_tuser         => s_axis_tuser,
        
        m_axis_tvalid        => m_axis_tvalid,
        m_axis_tready        => m_axis_tready,
        m_axis_tdata         => m_axis_tdata,
        m_axis_tstrb         => m_axis_tstrb,
        m_axis_tkeep         => m_axis_tkeep,
        m_axis_tlast         => m_axis_tlast,
        m_axis_tid           => m_axis_tid,
        m_axis_tdest         => m_axis_tdest,
        m_axis_tuser         => m_axis_tuser,
        
        prog_full_axis       => axis_prog_full,
        wr_data_count_axis   => axis_wr_data_count_axi_fifo,
        almost_full_axis     => almost_full_axi_fifo,
        prog_empty_axis      => axis_prog_empty,
        rd_data_count_axis   => axis_rd_data_count_axi_fifo,
        almost_empty_axis    => almost_empty_axi_fifo,

  -- ECC Related ports
       injectsbiterr_axis  =>   GND,
       injectdbiterr_axis  =>   GND,
       sbiterr_axis        =>   axis_sbiterr_axi_fifo,
       dbiterr_axis        =>   axis_dbiterr_axi_fifo
      );



end architecture;


-------------------------------------------------------------------------------
--
--  AXI4-AXI4 Stream FIFO Core - FIFO module
--
-------------------------------------------------------------------------------
-- (c) Copyright 2006 - 2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        fifo.vhd
-- Version:         v4_2
-- Description:     FIFO module providing FIFO interface for AXI4-AXI4 Stream
--                  FIFO Core
--
------------------------------------------------------------------------------
-- Structure:   
--                axi_fifo_mm_s.vhd
--                   axi_fifo_mm_s_pkg.vhd
--                   axi_lite_ipif.vhd
--                   axi_wrapper.vhd
--                      axi_read_fsm.vhd
--                      axi_read_wrapper.vhd
--                      axi_write_fsm.vhd
--                      axi_write_wrapper.vhd
--                   ipic2axi_s.vhd
--                      fifo.vhd
------------------------------------------------------------------------------
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_arith.conv_std_logic_vector;
use ieee.numeric_std.all;    
use ieee.std_logic_misc.all;

library axi_lite_ipif_v3_0_4;
library lib_pkg_v1_0_2;
--use proc_common_v4_1.coregen_comp_defs.all;
use lib_pkg_v1_0_2.lib_pkg.log2;
--use proc_common_v4_1.all;

use axi_lite_ipif_v3_0_4.ipif_pkg.all;
use lib_pkg_v1_0_2.lib_pkg.all;

library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.axi_fifo_mm_s_pkg.all;

-- synopsys translate_off
library unisim;
use     unisim.vcomponents.all; -- Component declarations for unisim.
use     unisim.all; -- Makes unisim entities available for default binding.
-- synopsys translate_on

entity fifo is
  generic(
    C_FAMILY		    : string := "virtex7";
--    C_SELECT_XPM            : integer := 1;
    C_USE_FIFO_GEN          : integer := 1;
    C_IPIF_DWIDTH           : integer;
    C_OFFSET                : integer;
    C_DEPTH                 : integer;
    C_CASCADE_HEIGHT        :  integer := 0;
    C_PF_THRESHOLD          : integer;
    C_PE_THRESHOLD          : integer;
    C_DATA_FLOW_DIR         : string := "MM2S";
    C_DATA_INTERFACE_TYPE   : integer := 0;
    C_USE_TX_CUT_THROUGH    : integer := 0;

    C_HAS_AXIS_TID          : integer := 0;
    C_HAS_AXIS_TDEST        : integer := 1;
    C_HAS_AXIS_TUSER        : integer := 0;
    C_HAS_AXIS_TLAST        : integer := 1;
    C_HAS_AXIS_TSTRB        : integer := 1;
    C_HAS_AXIS_TKEEP        : integer := 0;

    C_AXIS_TDATA_WIDTH      : integer := 32;
    C_AXIS_TID_WIDTH        : integer := 1;
    C_AXIS_TDEST_WIDTH      : integer := 4;
    C_AXIS_TUSER_WIDTH      : integer := 1
  );
  port(
    Bus2IP_Clk              : in  std_logic := '0';
    Bus2IP_Reset            : in  std_logic := '0';
    sb_wr_en                : in  std_logic := '0';
    wr_en                   : in  std_logic := '0';
    rd_en                   : in  std_logic := '0';
    rd_data                 : out std_logic_vector(0 to C_OFFSET+C_AXIS_TDATA_WIDTH-1) := (others => '0');
    wr_data                 : in  std_logic_vector(0 to C_OFFSET+C_AXIS_TDATA_WIDTH-1) := (others => '0');
    empty                   : out std_logic := '0';
    a_empty                 : out std_logic := '0';
    prog_empty              : out std_logic := '0';
    full                    : out std_logic := '0';
    a_full                  : out std_logic := '0';
    prog_full               : out std_logic := '0';
    vacancy                 : out std_logic_vector(31 downto 0) := (others => '0');
    occupancy               : out std_logic_vector(31 downto 0) := (others => '0');

    mm2s_tstrb              : in  std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 downto 0) := (others => '0');
    mm2s_tdest              : in  std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
    s2mm_tstrb              : in  std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 downto 0) := (others => '0');
    s2mm_tdest              : in  std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');

    -- AXI Streaming Slave Signals (Write side)
    axis_tvalid             : out std_logic := '0';
    axis_tready             : in  std_logic := '0';
    axis_tdata              : out std_logic_vector(C_AXIS_TDATA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    axis_tstrb              : out std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 DOWNTO 0) := (OTHERS => '0');
    axis_tkeep              : out std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 DOWNTO 0) := (OTHERS => '0');
    axis_tlast              : out std_logic := '0';
    axis_tid                : out std_logic_vector(C_AXIS_TID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    axis_tdest              : out std_logic_vector(C_AXIS_TDEST_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    axis_tuser              : out std_logic_vector(C_AXIS_TUSER_WIDTH-1 DOWNTO 0) := (OTHERS => '0')
  );
end fifo;

architecture structure of fifo is

  CONSTANT ALL_ZERO_64        : std_logic_vector(63 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_32        : std_logic_vector(31 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_8         : std_logic_vector(7 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_4         : std_logic_vector(3 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_3         : std_logic_vector(2 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_2         : std_logic_vector(1 DOWNTO 0) := (OTHERS => '0');
  CONSTANT GND                : std_logic := '0';
  CONSTANT PROG_FLAG_WIDTH    : std_logic_vector(log2roundup(C_DEPTH)-1 DOWNTO 0) := (OTHERS => '0');

  signal sig_fifo_rdptr       : integer range 0 to C_DEPTH-1:=0;
  signal sig_fifo_wrptr       : integer range 0 to C_DEPTH-1:=0;
  signal sig_fifo_full        : std_logic := '0';
  signal sig_fifo_empty       : std_logic := '0';
  signal sig_fifo_afull       : std_logic := '0';
  signal sig_fifo_pfull       : std_logic := '0';
  signal sig_fifo_pfull_d1    : std_logic := '0';
  signal sig_fifo_aempty      : std_logic := '0';
  signal sig_fifo_pempty      : std_logic := '0';
  signal sig_fifo_pempty_d1   : std_logic := '0';
  signal sig_mark_ptr         : integer range 0 to C_DEPTH-1:=0;
  signal sig_mark_level       : integer range 0 to C_DEPTH-1:=0;
  signal sig_sb_wr_en_d1      : std_logic := '0';
  signal sig_sb_wr_en_rst     : std_logic := '0';
  signal sig_sb_wr_en_pending : std_logic := '0';
  signal sig_bram_wr_en       : std_logic_Vector(3 downto 0) := (others => '0');

  signal sig_fifo_wr_en       : std_logic_vector(0 downto 0) := (others => '0');
  signal sig_fifo_rd_en       : std_logic := '0';
  signal sig_fifo_wr_en_i     : std_logic := '0';
  signal sig_fifo_rd_en_i     : std_logic := '0';
  signal sig_fifo_wr_addr     : std_logic_vector(log2roundup(C_DEPTH)-1 downto 0) := (others => '0');
  signal sig_fifo_rd_addr     : std_logic_vector(log2roundup(C_DEPTH)-1 downto 0) := (others => '0');
  signal sig_fifo_wr_parity   : std_logic := '0';
  signal sig_fifo_rd_parity   : std_logic := '0';
  signal sig_fifo_wr_data     : std_logic_vector(31 downto 0) := (others => '0');
  
  signal sig_fifo_rd_data     : std_logic_vector(32 downto 0) := (others => '0');

  signal sig_fifo_wr_data_and_parity : std_logic_vector(32 downto 0) := (others => '0');
  signal Data_count           : std_logic_vector(31 downto 0) := (others => '0');

  begin

  gfifo_gen: if (C_USE_FIFO_GEN = 1) generate
    signal output_tvalid   : std_logic := '0';
    signal output_tready   : std_logic := '0';
    signal output_tlast    : std_logic := '0';
    signal output_tdata    : std_logic_vector(C_AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
    signal output_tstrb    : std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 downto 0) := (others => '0');
    signal output_tkeep    : std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 downto 0) := (others => '0');
    signal output_tid      : std_logic_vector(C_AXIS_TID_WIDTH-1 downto 0) := (others => '0');
    signal output_tdest    : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
    signal output_tuser    : std_logic_vector(C_AXIS_TUSER_WIDTH-1 downto 0) := (others => '0');
    signal input_tvalid    : std_logic := '0';
    signal input_tready    : std_logic := '0';
    signal input_tlast     : std_logic := '0';
    signal input_tdata     : std_logic_vector(C_AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
    signal input_tstrb     : std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 downto 0) := (others => '0');
    signal input_tkeep     : std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 downto 0) := (others => '0');
    signal input_tid       : std_logic_vector(C_AXIS_TID_WIDTH-1 downto 0) := (others => '0');
    signal input_tdest     : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
    signal input_tuser     : std_logic_vector(C_AXIS_TUSER_WIDTH-1 downto 0) := (others => '0');
    signal axis_data_count : std_logic_vector(log2roundup(C_DEPTH) downto 0) := (others => '0');
    signal s_aresetn       : std_logic := '0';
    signal start_wr        : std_logic := '0';
    signal wr_data_int     : std_logic_vector(C_AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
    signal ArgD            : std_logic_vector(log2roundup(C_DEPTH) downto 0) := (others => '0');
    signal vacancy_i       : std_logic_vector(log2roundup(C_DEPTH) downto 0) := (others => '0');
  begin
    gmm2s: if (C_DATA_FLOW_DIR = "MM2S") generate

      axis_tvalid  <= output_tvalid;
      output_tready  <= axis_tready;
      axis_tdata   <= output_tdata ;
      axis_tstrb   <= output_tstrb ;
      axis_tkeep   <= output_tkeep ;
      axis_tlast   <= output_tlast ;
      axis_tid     <= output_tid   ;
      axis_tdest   <= output_tdest ;
      axis_tuser   <= output_tuser ;
  
      input_tvalid <= (wr_en or sb_wr_en) and start_wr;
      input_tdata  <= wr_data_int;
      input_tlast  <= sb_wr_en;
      input_tdest  <= mm2s_tdest;
  
      vacancy(31 downto log2roundup(C_DEPTH)+1) <= (others => '0');
      vacancy(log2roundup(C_DEPTH) downto 1) <= vacancy_i(log2roundup(C_DEPTH) downto 1);
      vacancy(0) <= '0';
      ArgD <= conv_std_logic_vector(C_DEPTH-3,log2roundup(C_DEPTH)+1);

   --   COMP_AddSub : entity axi_fifo_mm_s_v4_2_3.addsub
   --     generic map(
   --        C_WIDTH       => log2roundup(C_DEPTH)+1,
   --        C_REGISTERED  => true
   --        )
   --     port map (
   --        Clk           => Bus2IP_Clk,
   --        Rst           => Bus2IP_Reset,
   --        CE            => '1',
   --        ArgD          => ArgD,
   --        ArgA          => axis_data_count,
   --        ArgS          => axis_data_count,
   --        Sub           => '1',
   --        Cry_BrwN      => open,
   --        Result        => vacancy_i
   --    );
  
      process(Bus2IP_Clk)
      begin
        if(rising_edge(Bus2IP_Clk)) then
          if (Bus2IP_Reset = '1') then
            vacancy_i          <= (others => '0');
          else
            vacancy_i          <= ArgD - axis_data_count;
          end if;
        end if;
     end process;

      occupancy(31 downto log2roundup(C_DEPTH)+1) <= (others => '0');
      occupancy(log2roundup(C_DEPTH) downto 0) <= axis_data_count;
      full <= not input_tready;
      empty <= not output_tvalid;
      a_empty <= '0';
      a_full <= '0';
      s_aresetn <= not Bus2IP_Reset;
  
      process(Bus2IP_Clk)
      begin
        if(rising_edge(Bus2IP_Clk)) then
          if (Bus2IP_Reset = '1') then
            start_wr <= '0';
            wr_data_int          <= (others => '0');
          elsif (wr_en = '1') then
            wr_data_int          <= wr_data(1 to C_AXIS_TDATA_WIDTH);
            start_wr <= '1';
          elsif (sb_wr_en = '1') then
            start_wr <= '0';
          end if;
        end if;
     end process;

      gaxil_strb: if (C_DATA_INTERFACE_TYPE = 0) generate
        process(wr_data,sb_wr_en)
        begin
          if (sb_wr_en = '1') then
            case wr_data(31 to 32) is
              when "01" =>
                input_tstrb        <= x"1";
              when "10" =>
                input_tstrb        <= x"3";
              when "11" =>
                input_tstrb        <= x"7";
              when others =>
                input_tstrb        <= x"f";
            end case;
          else
            input_tstrb        <= x"f";
          end if;
        end process;
      end generate gaxil_strb;

      gaxi4_strb: if (C_DATA_INTERFACE_TYPE = 1) generate

        process(Bus2IP_Clk)
        begin
          if(rising_edge(Bus2IP_Clk)) then
            if (Bus2IP_Reset = '1') then
              input_tstrb <= (others => '1');
            elsif (wr_en = '1') then
              input_tstrb <= mm2s_tstrb;
            elsif (sb_wr_en = '1') then
              input_tstrb <= (others => '1');
            end if;
          end if;
       end process;
      end generate gaxi4_strb;

    end generate gmm2s;

    gs2mm: if (C_DATA_FLOW_DIR = "S2MM") generate
      axis_tvalid   <= not output_tvalid;
      output_tready <= axis_tready;
      axis_tdata    <= output_tdata ;
      axis_tstrb    <= output_tstrb ;
      axis_tkeep    <= output_tkeep ;
      axis_tlast    <= output_tlast ;
      axis_tid      <= output_tid   ;
      axis_tdest    <= output_tdest ;
      axis_tuser    <= output_tuser ;
  
      input_tvalid  <= wr_en;
      input_tdata   <= wr_data(0 to C_AXIS_TDATA_WIDTH-1);
      input_tstrb   <= s2mm_tstrb;
      input_tlast   <= sb_wr_en;
      input_tdest   <= s2mm_tdest;

      vacancy <= (others => '0');
      occupancy(31 downto log2roundup(C_DEPTH)+1) <= (others => '0');
      occupancy(log2roundup(C_DEPTH) downto 0) <= axis_data_count;

      full <= not input_tready;
      s_aresetn <= not Bus2IP_Reset;
    end generate gs2mm;

    COMP_AXIS_FG_FIFO: entity axi_fifo_mm_s_v4_2_3.axis_fg
      generic map(
        C_FAMILY                => C_FAMILY,
--        C_SELECT_XPM            => C_SELECT_XPM,
        C_DEPTH                 => C_DEPTH,
        C_CASCADE_HEIGHT        => C_CASCADE_HEIGHT,
        C_PF_THRESHOLD          => C_PF_THRESHOLD,
        C_PE_THRESHOLD          => C_PE_THRESHOLD,
        C_DATA_COUNT_WIDTH      => log2roundup(C_DEPTH),
        -- 0: Data FIFO; 1: Packet FIFO; 2: One stage Register Slice
        C_FIFO_GEN_TYPE         => if_then_else(C_DATA_FLOW_DIR = "S2MM", 0,
                                   if_then_else(C_USE_TX_CUT_THROUGH = 1, 0, 1)),
        C_HAS_AXIS_TID          => 0,
        C_HAS_AXIS_TDEST        => 1,
        C_HAS_AXIS_TUSER        => 0,
        C_HAS_AXIS_TLAST        => 1,
        C_HAS_AXIS_TSTRB        => 1,
        C_HAS_AXIS_TKEEP        => 0,
        C_AXIS_TDATA_WIDTH      => C_AXIS_TDATA_WIDTH,
        C_AXIS_TID_WIDTH        => C_AXIS_TID_WIDTH,
        C_AXIS_TDEST_WIDTH      => C_AXIS_TDEST_WIDTH,
        C_AXIS_TUSER_WIDTH      => C_AXIS_TUSER_WIDTH
      )
      port map(
        aclk                    => Bus2IP_Clk,
        aresetn                 => s_aresetn,

        s_axis_tvalid           => input_tvalid,
        s_axis_tready           => input_tready,
        s_axis_tdata            => input_tdata ,
        s_axis_tstrb            => input_tstrb ,
        s_axis_tkeep            => input_tkeep ,
        s_axis_tlast            => input_tlast ,
        s_axis_tid              => input_tid   ,
        s_axis_tdest            => input_tdest ,
        s_axis_tuser            => input_tuser ,

        m_axis_tvalid           => output_tvalid,
        m_axis_tready           => output_tready,
        m_axis_tdata            => output_tdata ,
        m_axis_tstrb            => output_tstrb ,
        m_axis_tkeep            => output_tkeep ,
        m_axis_tlast            => output_tlast ,
        m_axis_tid              => output_tid   ,
        m_axis_tdest            => output_tdest ,
        m_axis_tuser            => output_tuser ,

        axis_prog_full          => prog_full,
        axis_prog_empty         => prog_empty,
        axis_data_count         => axis_data_count
      );

  end generate gfifo_gen;

end architecture;


-------------------------------------------------------------------------------
--
-- AXI4-AXI4 Stream FIFO Core - AXI4-AXI4 Stream FIFO Top File
--
-------------------------------------------------------------------------------
-- (c) Copyright 2006 - 2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        ipic2llink.vhd
-- Version:         v4_2
-- Description:     sub-level module providing AXI slave and IPIC interface
--
------------------------------------------------------------------------------
-- Structure:   
-- Structure:   
--                axi_fifo_mm_s.vhd
--                   axi_fifo_mm_s_pkg.vhd
--                   axi_lite_ipif.vhd
--                   axi_wrapper.vhd
--                      axi_read_fsm.vhd
--                      axi_read_wrapper.vhd
--                      axi_write_fsm.vhd
--                      axi_write_wrapper.vhd
--                   ipic2axi_s.vhd
--                      fifo.vhd
------------------------------------------------------------------------------
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.conv_integer;
use ieee.std_logic_arith.conv_std_logic_vector;
use ieee.numeric_std.all;    
use ieee.std_logic_misc.all;

library unisim;
use unisim.vcomponents.all;

Library xpm;
use xpm.vcomponents.all;

library axi_lite_ipif_v3_0_4;
library lib_pkg_v1_0_2;
--library lib_fifo_v1_0_14;
use lib_pkg_v1_0_2.lib_pkg.all;
--use lib_fifo_v1_0_14.all;
use lib_pkg_v1_0_2.lib_pkg.log2;
use lib_pkg_v1_0_2.lib_pkg.max2;
use axi_lite_ipif_v3_0_4.ipif_pkg.all; 

library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.all;

library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.axi_fifo_mm_s_pkg.all;

entity ipic2axi_s is

  generic (
    C_FAMILY                : string;
--    C_SELECT_XPM            : integer := 1;
    C_DEST_WIDTH            : integer := 4;
    C_DATA_WIDTH            : integer := 32;
    C_AXI4_DATA_WIDTH       : integer := 32;
    C_TX_FIFO_DEPTH         : integer := 2048;
    C_RX_FIFO_DEPTH         : integer := 2048;
    C_TX_CASCADE_HEIGHT     : integer := 0;
    C_RX_CASCADE_HEIGHT     : integer := 0;
    C_TX_FIFO_PF_THRESHOLD  : integer := 10;
    C_TX_FIFO_PE_THRESHOLD  : integer := 7;
    C_RX_FIFO_PF_THRESHOLD  : integer := 10;
    C_RX_FIFO_PE_THRESHOLD  : integer := 7;
    C_USE_TX_CUT_THROUGH    : integer := 0;
    C_USE_RX_CUT_THROUGH    : integer := 0;
    C_TOTAL_NO_OF_INTR      : integer := 13;
    C_TOTAL_NO_OF_REG       : integer := 13;
    C_DATA_INTERFACE_TYPE   : integer := 0;
    C_HAS_AXIS_TKEEP        : integer := 0;
    C_HAS_AXIS_TSTRB        : integer := 0;
    C_HAS_AXIS_TDEST        : integer := 0;
    C_HAS_AXIS_TUSER        : integer := 0;
    C_HAS_AXIS_TID          : integer := 0;
    C_AXIS_TDEST_WIDTH      : integer := 0;
    C_AXIS_TUSER_WIDTH      : integer := 0;
    C_AXIS_TID_WIDTH        : integer := 0;
    C_USE_TX_DATA           : integer := 1;
    C_USE_RX_DATA           : integer := 1;
    C_USE_TX_CTRL           : integer := 1
    );
  port (
    Bus2IP_Clk              : in  std_logic := '0';
    Bus2IP_Reset            : in  std_logic := '0';
    IP2Bus_Data             : out std_logic_vector(0 to C_DATA_WIDTH-1) := (others => '0');
    IP2Bus_WrAck            : out std_logic := '0';
    IP2Bus_RdAck            : out std_logic := '0';
    IP2Bus_Error            : out std_logic := '0';
    Bus2IP_Data             : in  std_logic_vector(0 to C_DATA_WIDTH-1) := (others => '0');
    Bus2IP_RNW              : in  std_logic := '0';
    Bus2IP_BE               : in  std_logic_vector(0 to C_DATA_WIDTH/8-1) := (others => '0');
    Bus2IP_CS               : in  std_logic := '0';
    Bus2IP_RdCE             : in  std_logic_vector(0 to 12) := (others => '0');
    Bus2IP_WrCE             : in  std_logic_vector(0 to 12) := (others => '0');
    axil_rdata_ack          : in  std_logic := '0';
    axi4_tdfd_en            : in  std_logic := '0';
    axi4_rdfd_en            : in  std_logic := '0';

    axi4_fifo_wr_en         : in  std_logic := '0';
    S_AXI4_WDATA            : in  std_logic_vector(0 to C_AXI4_DATA_WIDTH-1) := (others => '0');
    S_AXI4_WSTRB            : in  std_logic_vector(0 to C_AXI4_DATA_WIDTH/8-1) := (others => '0');
    axi4_fifo_rd_en         : in  std_logic := '0';
    S_AXI4_RDATA            : out std_logic_vector(0 to C_AXI4_DATA_WIDTH-1) := (others => '0');
    axi4_rdata_ack          : in  std_logic := '0';
    axi4_fifo_readyn        : out std_logic := '0';
    
    -- TX AXI_S
    tx_str_AReset           : out std_logic := '0';
    tx_str_valid            : out std_logic := '0';
    tx_str_ready            : in  std_logic := '0';
    tx_str_last             : out std_logic := '0';
    tx_str_strb             : out std_logic_vector(0 to C_AXI4_DATA_WIDTH/8-1) := (others => '0');
    tx_str_dest             : out std_logic_vector(0 to C_AXIS_TDEST_WIDTH-1) := (others => '0');
    tx_str_din              : out std_logic_vector(0 to C_AXI4_DATA_WIDTH-1) := (others => '0');

    -- TX Control AXI_S
    txc_str_AReset          : out std_logic := '0';
    txc_str_Valid           : out std_logic := '0';
    txc_str_Ready           : in  std_logic := '0';
    txc_str_Last            : out std_logic := '0';
    txc_str_Strb            : out std_logic_vector(0 to C_AXI4_DATA_WIDTH/8-1) := (others => '0');
    txc_str_Din             : out std_logic_vector(0 to C_AXI4_DATA_WIDTH-1) := (others => '0');


    -- RX AXI_S
    rx_str_AReset           : out std_logic := '0';
    rx_str_valid            : in  std_logic := '0';
    rx_str_ready            : out std_logic := '0';
    rx_str_last             : in  std_logic := '0';
    rx_str_strb             : in  std_logic_vector(0 to C_AXI4_DATA_WIDTH/8-1) := (others => '0');
    rx_str_dest             : in  std_logic_vector(0 to C_AXIS_TDEST_WIDTH-1) := (others => '0');
    rx_str_din              : in  std_logic_vector(0 to C_AXI4_DATA_WIDTH-1) := (others => '0');


    --interrupt
    Interrupt               : out std_logic := '0'
    
  );     
end entity;

architecture beh of ipic2axi_s is

  ATTRIBUTE DowngradeIPIdentifiedWarnings: STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF beh : ARCHITECTURE IS "yes";

  -----------------------------------------------------------------------------
  -- Register Name
  -----------------------------------------------------------------------------
  constant REG_ISR           : std_logic_vector(4 downto 0) := "00000";   --0x00
  constant REG_IER           : std_logic_vector(4 downto 0) := "00001";   --0x04
  constant REG_TDFR          : std_logic_vector(4 downto 0) := "00010";   --0x08
  constant REG_TDFV          : std_logic_vector(4 downto 0) := "00011";   --0x0c
  constant REG_TDFD          : std_logic_vector(4 downto 0) := "00100";   --0x10
  constant REG_TLF           : std_logic_vector(4 downto 0) := "00101";   --0x14
  constant REG_RDFR          : std_logic_vector(4 downto 0) := "00110";   --0x18
  constant REG_RDFO          : std_logic_vector(4 downto 0) := "00111";   --0x1c
  constant REG_RDFD          : std_logic_vector(4 downto 0) := "01000";   --0x20
  constant REG_RLF           : std_logic_vector(4 downto 0) := "01001";   --0x24
  constant REG_SRR           : std_logic_vector(4 downto 0) := "01010";   --0x28
  constant REG_TDR           : std_logic_vector(4 downto 0) := "01011";   --0x2c
  constant REG_RDR           : std_logic_vector(4 downto 0) := "01100";   --0x30
  constant REG_TID           : std_logic_vector(4 downto 0) := "01101";   --0x3c
  constant REG_TUSER         : std_logic_vector(4 downto 0) := "01110";   --0x38
  constant REG_RID           : std_logic_vector(4 downto 0) := "01111";   --0x3c
  constant REG_RUSER         : std_logic_vector(4 downto 0) := "10000";   --0x40

  -----------------------------------------------------------------------------
  -- Bit slice of data in fifo
  -----------------------------------------------------------------------------
  constant C_FLAG : integer := if_then_else(C_DATA_INTERFACE_TYPE = 0, C_DATA_WIDTH, C_AXI4_DATA_WIDTH);
  -----------------------------------------------------------------------------
  -- Register Bits
  -----------------------------------------------------------------------------
  constant C_DISR            : integer := 0;      -- (31)   --0x00
  constant C_DIER            : integer := 1;      -- (30)   --0x04
  constant C_TRR             : integer := 2;      -- (29)   --0x08
  constant C_TDFV            : integer := 3;      -- (28)   --0x0c
  constant C_TDF             : integer := 4;      -- (27)   --0x10
  constant C_TLR             : integer := 5;      -- (26)   --0x14
  constant C_RRR             : integer := 6;      -- (25)   --0x18
  constant C_RDFO            : integer := 7;      -- (24)   --0x1c
  constant C_RDF             : integer := 8;      -- (23)   --0x20
  constant C_RLR             : integer := 9;      -- (22)   --0x24
  constant C_LL_RST          : integer := 10;     -- (21)   --0x28
  constant C_TDEST           : integer := 11;     -- (20)   --0x2c
  constant C_RDEST           : integer := 12;     -- (19)   --0x30
  -----------------------------------------------------------------------------
  -- Register CEs
  -----------------------------------------------------------------------------
  constant C_DISR_CE         : std_logic_vector(0 to 12) := ( 0=>'1', others => '0');
  constant C_DIER_CE         : std_logic_vector(0 to 12) := ( 1=>'1', others => '0');
  constant C_TRR_CE          : std_logic_vector(0 to 12) := ( 2=>'1', others => '0');
  constant C_TDFV_CE         : std_logic_vector(0 to 12) := ( 3=>'1', others => '0');
  constant C_TDF_CE          : std_logic_vector(0 to 12) := ( 4=>'1', others => '0');
  constant C_TLR_CE          : std_logic_vector(0 to 12) := ( 5=>'1', others => '0');
  constant C_RRR_CE          : std_logic_vector(0 to 12) := ( 6=>'1', others => '0');
  constant C_RDFO_CE         : std_logic_vector(0 to 12) := ( 7=>'1', others => '0');
  constant C_RDF_CE          : std_logic_vector(0 to 12) := ( 8=>'1', others => '0');
  constant C_RLR_CE          : std_logic_vector(0 to 12) := ( 9=>'1', others => '0');
  constant C_LL_RST_CE       : std_logic_vector(0 to 12) := (10=>'1', others => '0');
  constant C_TDEST_CE        : std_logic_vector(0 to 12) := (11=>'1', others => '0');
  constant C_RDEST_CE        : std_logic_vector(0 to 12) := (12=>'1', others => '0');
  -----------------------------------------------------------------------------
  -----------------------------------------------------------------------------
  -- Interrupt bits
  -----------------------------------------------------------------------------
  constant C_RPURE           : integer := 0;
  constant C_RPORE           : integer := 1;
  constant C_RURE            : integer := 2;
  constant C_TORE            : integer := 3;
  constant C_TC              : integer := 4;
  constant C_RC              : integer := 5;
  constant C_TMSE            : integer := 6;
  constant C_TRC             : integer := 7;
  constant C_RRC             : integer := 8;
  constant C_TFPF            : integer := 9;  -- TX FIFO Programmable FULL
  constant C_TFPE            : integer := 10; -- TX FIFO Programmable EMPTY
  constant C_RFPF            : integer := 11; -- RX FIFO Programmable FULL
  constant C_RFPE            : integer := 12; -- RX FIFO Programmable EMPTY
  constant NUM_INTS          : integer := C_TOTAL_NO_OF_INTR;
  -----------------------------------------------------------------------------
  -- reset vector
  -----------------------------------------------------------------------------
  constant C_RESET_VECTOR    : std_logic_vector(C_DATA_WIDTH-8 to C_DATA_WIDTH-1):=x"a5";
  constant NUM_BYTE          : integer := log2roundup(C_AXI4_DATA_WIDTH/8);
  constant C_AXI4_FIFO_WIDTH : integer := if_then_else(C_DATA_INTERFACE_TYPE = 0, C_DATA_WIDTH,C_AXI4_DATA_WIDTH);
  constant RLR_APPEND_1_BITS : integer := 32-1-15-NUM_BYTE;
  constant RLR_APPEND_2_BITS : integer := if_then_else(C_AXI4_DATA_WIDTH = 64, 3, 2);
  constant RLR_APPEND_2      : std_logic_vector(NUM_BYTE-1 downto 0):= (others => '0');
  
  constant IS_BYTE_ALIGNED   : std_logic_vector(NUM_BYTE-1 downto 0):= (others => '0');
  constant TX_MAX_PKT_SIZE   : integer := if_then_else (C_USE_TX_CUT_THROUGH = 0, NUM_BYTE + 20, 23);
  constant RX_MAX_PKT_SIZE   : integer := if_then_else (C_USE_RX_CUT_THROUGH = 0, NUM_BYTE + 20, 23);
  
  type slv_array is array (C_DISR to C_DIER) of std_logic_vector(0 to NUM_INTS-1);
  signal sig_register_array : slv_array;

  type IPIC_STATES is (IDLE, DONE);
  signal IPIC_STATE : IPIC_STATES;                   


  type TX_STATES is (IDLE, PRIME, DLY, TX, LAST);
  signal TX_STATE : TX_STATES;
  
  type TXC_STATES is (IDLE, TRASMITCBEGIN, TRASMITCEND);
  signal TXC_STATE : TXC_STATES;
  
  type RX_STATES is (IDLE, RX, LAST);
  signal RX_STATE : RX_STATES;

  signal sig_txd_rd_a_empty      : std_logic := '0';
  signal sig_txd_wr_en           : std_logic := '0';
  signal txd_wr_en               : std_logic := '0';
  signal sig_txd_sb_wr_en        : std_logic := '0';
  signal sig_txd_rd_en_combined  : std_logic := '0';
  signal sig_txd_wr_data         : std_logic_vector(C_AXI4_DATA_WIDTH downto 0) := (others => '0');
  signal txd_wr_data             : std_logic_vector(C_AXI4_DATA_WIDTH downto 0) := (others => '0');
  signal sig_txd_wr_a_full       : std_logic := '0';
  signal sig_txd_pf_event        : std_logic := '0';
  signal sig_txd_prog_full       : std_logic := '0';
  signal sig_txd_prog_full_d1    : std_logic := '0';
  signal sig_txd_pe_event        : std_logic := '0';
  signal sig_txd_prog_empty_d1   : std_logic := '0';
  signal sig_txd_reset           : std_logic := '0';
  signal sig_txd_vacancy         : std_logic_vector(31 downto 0) := (others => '0');
  signal sig_tx_channel_reset    : std_logic := '0';
  signal sig_txd_packet_size     : integer;
  signal sig_txd_dest            : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
  signal sig_txd_dest_fifo       : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
  
  signal rx_str_valid_int        : std_logic := '0';
  
  signal sig_rxd_wr_en           : std_logic := '0';
  signal sig_rxd_sb_wr_en        : std_logic := '0';
  signal sig_rxd_rd_en           : std_logic := '0';
  signal sig_rxd_rd_data         : std_logic_vector(C_AXI4_DATA_WIDTH downto 0) := (others => '0');
  signal sig_rxd_wr_data         : std_logic_vector(C_AXI4_DATA_WIDTH downto 0) := (others => '0');
  signal sig_rxd_rd_empty        : std_logic := '0';
  signal sig_rxd_wr_full         : std_logic := '0';
  signal sig_rxd_wr_a_full       : std_logic := '0';
  signal sig_rxd_pf_event        : std_logic := '0';
  signal sig_rxd_prog_full_d1    : std_logic := '0';
  signal sig_rxd_prog_full       : std_logic := '0';
  signal sig_rxd_pe_event        : std_logic := '0';
  signal sig_rxd_prog_empty_d1   : std_logic := '0';
  signal sig_rxd_prog_empty      : std_logic := '0';
  signal rx_fg_len_empty_d1      : std_logic := '0';
  signal rx_fg_len_empty_fe      : std_logic := '0';
  signal rx_complete             : std_logic := '0';
  signal sig_rxd_reset           : std_logic := '0';
  signal sig_rxd_occupancy       : std_logic_vector(31 downto 0) := (others => '0');
  signal sig_rx_channel_reset    : std_logic := '0';
  signal sig_rxd_wr_length       : integer := 0;
  signal sig_rxd_rd_length       : std_logic_vector(RX_MAX_PKT_SIZE-1 downto 0) := (others => '0');
  signal sig_rxd_dest            : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
  signal sig_rxd_dest_fifo       : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');

  signal sig_ip2bus_ipr          : std_logic_vector(0 to NUM_INTS-1) := (others => '0');
  signal sig_ip2bus_data         : std_logic_vector(0 to C_DATA_WIDTH-1) := (others => '0');
  signal sig_ip2bus_data_mux     : std_logic := '0';
  signal sig_Bus2IP_RdCE         : std_logic_vector(0 to 12) := (others => '0');
  signal sig_Bus2IP_WrCE         : std_logic_vector(0 to 12) := (others => '0');

  signal sig_str_rst             : std_logic := '0';
  signal sig_rx_str_ready        : std_logic := '0';
  signal sig_rd_decode           : std_logic := '0';
  signal sig_rd_rlen             : std_logic := '0';
  signal tx_str_valid_i          : std_logic := '0';
  signal tx_str_last_i           : std_logic := '0';
  signal rx_str_ready_i          : std_logic := '0';
  signal rx_len_wr_en            : std_logic := '0';
  signal axi4_rlast              : std_logic := '0';
  signal rx_fg_len_empty         : std_logic := '0';
  signal tx_fifo_or              : std_logic := '0';
  signal fg_rxd_wr_length        : std_logic_vector(RX_MAX_PKT_SIZE-1 downto 0) := (others => '0');
  signal active_addr             : std_logic_vector(4 downto 0) := (others => '0');
  signal rx_partial_pkt          : std_logic := '0';
  
  begin

  sig_Bus2IP_WrCE  <= Bus2IP_WrCE;
  sig_Bus2IP_RdCE  <= Bus2IP_RdCE;
  tx_str_AReset    <= sig_txd_reset or sig_str_rst;
  rx_str_AReset    <= sig_rxd_reset or sig_str_rst;
  rx_str_valid_int <= rx_str_valid ;

  -------------------------------------------------------------------------------------------------
  --  Transmit Data Path
  -------------------------------------------------------------------------------------------------
  gtxd: if (C_USE_TX_DATA = 1) generate
    signal sig_txd_prog_empty      : std_logic := '0';
    signal sig_txd_occupancy       : std_logic_vector(31 downto 0) := (others => '0');
    signal sig_txd_wr_full         : std_logic := '0';
  begin
    COMP_TXD_FIFO : entity axi_fifo_mm_s_v4_2_3.fifo
      generic map(
        C_FAMILY                => C_FAMILY,
--        C_SELECT_XPM            => C_SELECT_XPM,
        C_USE_FIFO_GEN          => 1,
        C_IPIF_DWIDTH           => C_AXI4_DATA_WIDTH,
        C_OFFSET                => 1,
        C_DEPTH                 => C_TX_FIFO_DEPTH,
        C_CASCADE_HEIGHT        => C_TX_CASCADE_HEIGHT,
        C_PF_THRESHOLD          => C_TX_FIFO_PF_THRESHOLD,
        C_PE_THRESHOLD          => C_TX_FIFO_PE_THRESHOLD,
        C_DATA_FLOW_DIR         => "MM2S",
        C_DATA_INTERFACE_TYPE   => C_DATA_INTERFACE_TYPE,
        C_USE_TX_CUT_THROUGH    => C_USE_TX_CUT_THROUGH,
        C_HAS_AXIS_TID          => C_HAS_AXIS_TID,
        C_HAS_AXIS_TDEST        => C_HAS_AXIS_TDEST,
        C_HAS_AXIS_TUSER        => C_HAS_AXIS_TUSER,
        C_HAS_AXIS_TLAST        => 1,
        C_HAS_AXIS_TSTRB        => C_HAS_AXIS_TSTRB,
        C_HAS_AXIS_TKEEP        => C_HAS_AXIS_TKEEP,
        C_AXIS_TDATA_WIDTH      => C_AXI4_DATA_WIDTH,
        C_AXIS_TID_WIDTH        => C_AXIS_TID_WIDTH,
        C_AXIS_TDEST_WIDTH      => C_AXIS_TDEST_WIDTH,
        C_AXIS_TUSER_WIDTH      => C_AXIS_TUSER_WIDTH
      )
      port map(
        Bus2IP_Clk              => Bus2IP_Clk,
        Bus2IP_Reset            => sig_txd_reset,
        sb_wr_en                => sig_txd_sb_wr_en,
        wr_en                   => txd_wr_en,
        rd_en                   => sig_txd_rd_en_combined, 
        rd_data                 => open, 
        wr_data                 => txd_wr_data, 
        empty                   => open,
        a_empty                 => sig_txd_rd_a_empty,
        full                    => sig_txd_wr_full, 
        a_full                  => sig_txd_wr_a_full,
        prog_full               => sig_txd_prog_full,
        prog_empty              => sig_txd_prog_empty,
        vacancy                 => sig_txd_vacancy,
        occupancy               => sig_txd_occupancy,
  
        mm2s_tstrb              => S_AXI4_WSTRB,
        mm2s_tdest              => sig_txd_dest,
        s2mm_tstrb              => (others => '0'),
        s2mm_tdest              => (others => '0'),
  
        axis_tvalid             => tx_str_valid_i,
        axis_tready             => tx_str_ready,
        axis_tdata              => tx_str_din,
        axis_tstrb              => tx_str_strb,
        axis_tkeep              => open,
        axis_tlast              => tx_str_last_i,
        axis_tid                => open,
        axis_tdest              => tx_str_dest,
        axis_tuser              => open
      );
    tx_str_valid <= tx_str_valid_i;
    tx_str_last  <= tx_str_last_i;
    axi4_fifo_readyn <= not sig_txd_wr_full;
  
    sig_txd_rd_en_combined <= (tx_str_ready and (not sig_txd_rd_a_empty));
  
    gaxi4_wdata: if (C_DATA_INTERFACE_TYPE = 1) generate
      txd_wr_data <= sig_txd_wr_data when (sig_txd_sb_wr_en = '1') else '0' & S_AXI4_WDATA;
      txd_wr_en   <= sig_txd_wr_en when (sig_txd_sb_wr_en = '1') else axi4_fifo_wr_en;
    end generate gaxi4_wdata;
  
    gaxil_wdata: if (C_DATA_INTERFACE_TYPE = 0) generate
      txd_wr_data <= sig_txd_wr_data;
      txd_wr_en   <= sig_txd_wr_en;
    end generate gaxil_wdata;

    -----------------------------------------------------------------------------
    -- This is the MM to TX side Packet size counter logic
    -----------------------------------------------------------------------------
    process(Bus2IP_Clk)
    begin
      if(rising_edge(Bus2IP_Clk)) then
        if(sig_txd_reset = '1') then
          sig_txd_packet_size <= 0;
        elsif(sig_tx_channel_reset = '1' or sig_txd_sb_wr_en = '1') then
          sig_txd_packet_size <= 0;
        elsif((sig_txd_wr_en = '1' and C_DATA_INTERFACE_TYPE = 0) or (axi4_fifo_wr_en = '1' and C_DATA_INTERFACE_TYPE = 1)) then
          sig_txd_packet_size <= sig_txd_packet_size + 1;
        end if;
      end if;
    end process;

    tx_fifo_or       <= '1' when ((conv_integer(sig_txd_occupancy)) > C_TX_FIFO_DEPTH-3) else '0';
    sig_txd_pe_event <= (not sig_txd_prog_empty_d1) and sig_txd_prog_empty;
    sig_txd_pf_event <= sig_txd_prog_full and (not sig_txd_prog_full_d1);
    sig_txd_reset    <= Bus2IP_Reset or sig_str_rst or sig_tx_channel_reset;

    process(Bus2IP_Clk)
    begin
      if(rising_edge(Bus2IP_Clk)) then
        if(Bus2IP_Reset = '1') then 
          sig_txd_prog_empty_d1   <= '1';
          sig_txd_prog_full_d1    <= '0';
        else
          sig_txd_prog_empty_d1 <= sig_txd_prog_empty;
          sig_txd_prog_full_d1  <= sig_txd_prog_full;
        end if;
      end if;
    end process;

  end generate gtxd;
 
  -------------------------------------------------------------------------------------------------
  -- This is the TX Control Streaming state machine
  -------------------------------------------------------------------------------------------------
  gtxc: if (C_USE_TX_CTRL = 1) generate
    signal txc_str_Lastsig         : std_logic := '0';
    signal txc_cntr                : std_logic_vector(2 downto 0) := (others => '0');
  begin

    txc_str_AReset   <= Bus2IP_Reset or sig_str_rst;  
    txc_str_Din      <= (others =>'1');
    txc_str_Strb     <= (others =>'1');
    txc_str_Last     <= txc_str_Lastsig;

    process(Bus2IP_Clk)
      begin
        if(rising_edge(Bus2IP_Clk)) then
          if(Bus2IP_Reset='1' or sig_str_rst='1') then
            txc_str_Valid   <= '0';
            txc_str_Lastsig <= '0';
            txc_cntr        <= "000";
            TXC_STATE       <= IDLE;
          else
            case TXC_STATE is
              when IDLE =>
                if tx_str_valid_i = '1' then
                  TXC_STATE <= TRASMITCBEGIN;
                  txc_str_Valid <= '1';
                end if;
              when TRASMITCBEGIN =>
                if txc_str_Ready = '1' then
                  txc_cntr <= txc_cntr+1;
                  if txc_cntr = "100" then
                    txc_str_Lastsig <= '1';
                    TXC_STATE       <= TRASMITCEND;
                  end if;
                end if;
              when TRASMITCEND =>
                if txc_str_Ready = '1' then
                  txc_str_Valid   <= '0';
                  txc_str_Lastsig <= '0';
                  txc_cntr        <= "000";
                end if;
                if tx_str_ready = '1' and tx_str_last_i = '1' and txc_str_Lastsig = '0' then
                  TXC_STATE <= IDLE;
                end if;
              when others =>
                TXC_STATE <= IDLE;
            end case;
          end if;
        end if;
    end process;
  end generate gtxc;

  -------------------------------------------------------------------------------------------------
  -- Interrupt Register
  -------------------------------------------------------------------------------------------------
  sig_ip2bus_ipr <= sig_register_array(C_DISR) and sig_register_array(C_DIER);
  process(sig_ip2bus_ipr)
    begin
      Interrupt     <= '0';
      for i in 0 to NUM_INTS-1 loop
        if(sig_ip2bus_ipr(i)='1') then
          Interrupt <= '1';
        end if;
      end loop;
  end process;

  -------------------------------------------------------------------------------------------------
  -- IPIC interface and registers
  -------------------------------------------------------------------------------------------------
  process(Bus2IP_Clk)
    begin
      if(rising_edge(Bus2IP_Clk)) then
        if(Bus2IP_Reset='1') then 
          sig_tx_channel_reset    <= '0';
          sig_rx_channel_reset    <= '0';
          sig_txd_wr_data         <= (others => '0');
          sig_txd_sb_wr_en        <= '0';
          sig_txd_wr_en           <= '0';
          sig_rxd_rd_en           <= '0';
          IP2Bus_RdAck            <= '0';
          IP2Bus_WrAck            <= '0';
          sig_ip2bus_data         <= (others => '0');
          sig_ip2bus_data_mux     <= '0';
          sig_register_array      <= (others => (others => '0'));
          sig_str_rst             <= '1';
          sig_rd_decode           <= '0';
          sig_rd_rlen             <= '0';
          IPIC_STATE              <= IDLE;
          sig_txd_dest            <= (others => '0');
        else
          sig_str_rst           <= '0';
          sig_rd_rlen           <= '0';

          if(sig_txd_reset = '1' and C_USE_TX_DATA = 1) then
            sig_tx_channel_reset  <= '0';
            sig_register_array(C_DISR)(C_TRC) <= '1';
          end if;
          
          if(sig_rxd_reset = '1' and C_USE_RX_DATA = 1) then
            sig_rx_channel_reset  <= '0';
            sig_register_array(C_DISR)(C_RRC) <= '1';
          end if;
          
          if(tx_str_last_i = '1' and tx_str_valid_i = '1' and C_USE_TX_DATA = 1) then
            sig_register_array(C_DISR)(C_TC) <= tx_str_ready;
          end if;

          if (rx_fg_len_empty = '0' and rx_complete = '1' and C_USE_RX_DATA = 1) then
            sig_register_array(C_DISR)(C_RC) <= rx_complete;
          elsif (rx_fg_len_empty_fe = '1') then
            sig_register_array(C_DISR)(C_RC) <= rx_fg_len_empty_fe;
          end if;

          if(sig_txd_pf_event = '1' and C_USE_TX_DATA = 1) then
            sig_register_array(C_DISR)(C_TFPF) <= '1';
          end if;

          if(sig_txd_pe_event = '1' and C_USE_TX_DATA = 1) then
            sig_register_array(C_DISR)(C_TFPE) <= '1';
          end if;

          if (sig_rxd_pf_event = '1' and C_USE_RX_DATA = 1) then
            sig_register_array(C_DISR)(C_RFPF) <= '1';
          end if;

          if (sig_rxd_pe_event = '1' and C_USE_RX_DATA = 1) then
            sig_register_array(C_DISR)(C_RFPE) <= '1';
          end if;

          if(tx_fifo_or = '1' and C_USE_TX_DATA = 1) then
            sig_register_array(C_DISR)(C_TORE)  <= '1';
          end if;

          if (C_DATA_INTERFACE_TYPE = 1 and axi4_fifo_rd_en = '1' and C_USE_RX_DATA = 1) then
            if(sig_rx_channel_reset = '0') then
              if(conv_integer(sig_rxd_occupancy)/=0) then
                if(sig_rxd_rd_data(C_FLAG)='0' and C_USE_RX_CUT_THROUGH = 0) then
                  sig_register_array(C_DISR)(C_RPORE)<='1';
                end if;
              else              --read from empty fifo
                sig_register_array(C_DISR)(C_RURE)   <= '1';
              end if;
            end if;
          end if;

          IP2Bus_WrAck            <= '0';
          IP2Bus_RdAck            <= '0';
          IP2Bus_Error            <= '0';
          sig_txd_wr_en           <= '0';
          sig_txd_sb_wr_en        <= '0';
          sig_rd_decode           <= '0';
          sig_ip2bus_data         <= (others => '0');

          case IPIC_STATE is
            when IDLE =>
                if(Bus2IP_CS = '1') then
                  IPIC_STATE                                    <= DONE;
                  IP2Bus_RdAck                                  <= Bus2IP_RNW;
                  IP2Bus_WrAck                                  <= not Bus2IP_RNW;
                  
         --------------------- case of read -----------------------
                  case sig_Bus2IP_RdCE is
                    --interrupt status register
                    when "1000000000000" => --C_DISR_CE
                        sig_rd_decode                           <= Bus2IP_RNW;
                        sig_ip2bus_data(NUM_INTS to 31)         <= (others => '0');
                        sig_ip2bus_data(0 to NUM_INTS-1)        <= sig_register_array(C_DISR);
                      --interrupt enable register
                    when "0100000000000" => --C_DIER_CE
                        sig_rd_decode                           <= Bus2IP_RNW;
                        sig_ip2bus_data(NUM_INTS to 31)         <= (others => '0');
                        sig_ip2bus_data(0 to NUM_INTS-1)        <= sig_register_array(C_DIER);
                      --Tx Data Fifo Vacancy
                    when "0001000000000" => --C_TDFV_CE     --read only
                        if (C_USE_TX_DATA = 1) then
                          sig_rd_decode                           <= Bus2IP_RNW;
                          sig_ip2bus_data                         <= sig_txd_vacancy;
                        end if;
                      --Rx Data Fifo Occupancy
                    when "0000000100000" => --C_RDFO_CE => --X"128" =>     --read only
                        if (C_USE_RX_DATA = 1) then
                          sig_rd_decode                           <= Bus2IP_RNW;
                          if(rx_fg_len_empty = '1') then
                            sig_ip2bus_data                       <= (others => '0');
                          else
                            sig_ip2bus_data                       <= sig_rxd_occupancy;
                          end if;
                        end if;
                      --Rx Data Fifo Keyhole
                    when "0000000010000" => --C_RDF_CE     --read only
                        if (C_USE_RX_DATA = 1) then
                          if (C_DATA_INTERFACE_TYPE = 1) then
                            IPIC_STATE                            <= DONE;
                          else
                            sig_ip2bus_data_mux                   <= '1';
                            if(sig_rx_channel_reset='0') then
                              IPIC_STATE                            <= DONE;
                              sig_rd_decode                         <= Bus2IP_RNW;
                              if(conv_integer(sig_rxd_occupancy)/=0) then
                                sig_rxd_rd_en                      <= '1';
                                sig_ip2bus_data                    <= sig_rxd_rd_data(C_DATA_WIDTH-1 downto 0);
			        if(sig_rxd_rd_data(C_FLAG) = '0' and C_USE_RX_CUT_THROUGH = 0) then
                                  sig_register_array(C_DISR)(C_RPORE)<='1';
			        end if;
                              else              --read from empty fifo
                                sig_register_array(C_DISR)(C_RURE)   <= '1';
                                IP2Bus_Error                         <= '1';
                              end if;
                            end if;
                          end if;
                        end if;
                      --Rx Length Register
                    when "0000000001000" => --C_RLR_CE     --read only
                      if (C_USE_RX_DATA = 1) then
                        sig_ip2bus_data_mux                        <= '1';
                        if(sig_rx_channel_reset='0') then
                          IPIC_STATE                             <= DONE;
                          sig_rd_decode                          <= Bus2IP_RNW;
                          sig_rd_rlen                            <= not rx_fg_len_empty;
                          if ((rx_fg_len_empty='0')) then
                              sig_ip2bus_data(31-sig_rxd_rd_length'high to 31) <= sig_rxd_rd_length;
                              sig_ip2bus_data(0 to 31-sig_rxd_rd_length'high-1)     <= (others => '0');
                              sig_rxd_rd_en                      <= '0';
                          else              --read from empty fifo
                            if (C_USE_RX_CUT_THROUGH = 1) then
                              if (rx_partial_pkt = '1' and rx_complete = '0') then
                                sig_ip2bus_data           <= '1' & sig_rxd_occupancy(RLR_APPEND_1_BITS+14 downto 0) & RLR_APPEND_2;
                              else
                                sig_ip2bus_data           <= '1' & (sig_rxd_occupancy(RLR_APPEND_1_BITS+14 downto 0) - conv_std_logic_vector(4,(RLR_APPEND_1_BITS+15))) & RLR_APPEND_2;
                              end if;
                            else
                              sig_ip2bus_data           <= '0' & sig_rxd_occupancy(RLR_APPEND_1_BITS+14 downto 0) & RLR_APPEND_2;
                              sig_register_array(C_DISR)(C_RPURE)  <= '1';
                              IP2Bus_Error                         <= '1';
                            end if;
                          end if;
                        end if;
                      end if;
                      --Rx Destination
                    when "0000000000001" => --C_RDEST_CE => --X"4096"" =>     --read only
                      if (C_USE_RX_DATA = 1 and C_HAS_AXIS_TDEST = 1) then
                        sig_rd_decode                            <= Bus2IP_RNW;
                        sig_ip2bus_data(0 to C_DATA_WIDTH-C_AXIS_TDEST_WIDTH-1)       <= (others => '0');
                        sig_ip2bus_data(C_DATA_WIDTH-C_AXIS_TDEST_WIDTH to C_DATA_WIDTH-1) <= sig_rxd_dest_fifo;
                      else
                        sig_rd_decode         <= Bus2IP_RNW;
                        sig_ip2bus_data       <= (others => '0');
                      end if;
                    -- coverage off   
                    when others => null;
                    -- coverage on                  
                  end case;
         --------------------- case of write -----------------------

                  case sig_Bus2IP_WrCE is
                    --interrupt status register
                    when "1000000000000" => --C_DISR_CE
                        for i in 0 to C_TOTAL_NO_OF_INTR-1 loop
                          if(Bus2IP_Data(i)='1') then
                            sig_register_array(C_DISR)(i)       <= '0';
                          end if;
                        end loop;
                      --interrupt enable register
                    when "0100000000000" => --C_DIER_CE
                        sig_register_array(C_DIER)(0 to NUM_INTS-1) <= Bus2IP_Data(0 to NUM_INTS-1);
                      --Tx Reset Register
                    when "0010000000000" => --C_TRR_CE     --write only
                        if ((Bus2IP_Data(C_DATA_WIDTH-8 to C_DATA_WIDTH-1) = C_RESET_VECTOR) and C_USE_TX_DATA = 1) then
                          sig_tx_channel_reset                  <= '1';
                        end if;
                      --Tx Data Fifo Keyhole
                    when "0000100000000" => --C_TDF_CE     --write only
                        if(sig_tx_channel_reset = '0' and C_USE_TX_DATA = 1) then
                          if (C_DATA_INTERFACE_TYPE = 1) then
                            IPIC_STATE                            <= DONE;
                          else
                            if(tx_fifo_or = '0') then
                                sig_txd_wr_data(C_DATA_WIDTH-1 downto 0)      <= Bus2IP_Data;
                                sig_txd_wr_data(C_FLAG)           <= '0';
                                sig_txd_wr_en                     <= '1';
                                IPIC_STATE                        <= DONE;
                            else              --write to full fifo
                              IP2Bus_Error                        <= '1';
                            end if;
                          end if;
                        end if;
                      --Tx Data Length Register
                    when "0000010000000" => --C_TLR_CE     --write only
                      if(sig_tx_channel_reset = '0' and C_USE_TX_DATA = 1) then
                          IPIC_STATE                            <= DONE;
                            if(Bus2IP_Data(31-NUM_BYTE+1 to 31) = IS_BYTE_ALIGNED) then
                              if(Bus2IP_Data(0 to 31-NUM_BYTE) = sig_txd_packet_size) then 
                                sig_txd_wr_data(C_FLAG)             <= '1';
                                sig_txd_sb_wr_en                    <= '1';
                                sig_txd_wr_data(C_DATA_WIDTH-1 downto 0)        <= Bus2IP_Data;
                              else
                                sig_register_array(C_DISR)(C_TMSE)  <= '1';
                              end if;  
                            else
                              if(Bus2IP_Data(0 to 31-NUM_BYTE) = sig_txd_packet_size-1) then
                                sig_txd_wr_data(C_FLAG)             <= '1';
                                sig_txd_sb_wr_en                    <= '1';
                                sig_txd_wr_data(C_DATA_WIDTH-1 downto 0)        <= Bus2IP_Data;
                              else
                                sig_register_array(C_DISR)(C_TMSE)  <= '1';
                              end if;
                            end if;
                      end if;
                      --Rx Reset Register
                    when "0000001000000" => --C_RRR_CE =>     --write only
                        if ((Bus2IP_Data(C_DATA_WIDTH-8 to C_DATA_WIDTH-1) = C_RESET_VECTOR) and C_USE_RX_DATA = 1) then
                          sig_rx_channel_reset                  <= '1';
                        end if;

                    when "0000000000100" => --C_LL_RST_CE => --X"1024" =>
                      if(Bus2IP_Data(C_DATA_WIDTH-8 to C_DATA_WIDTH-1) = C_RESET_VECTOR) then
                        sig_str_rst                     <= '1';
                        sig_register_array                <= (others => (others => '0'));
                        sig_register_array(C_DISR)(C_TRC) <= '1';
                        sig_register_array(C_DISR)(C_RRC)  <= '1';
                      end if;
                      --Tx Destination
                    when "0000000000010" => --C_TDEST_CE => --X"2048"  =>     --write only
                      if(sig_tx_channel_reset = '0' and C_USE_TX_DATA = 1 and C_HAS_AXIS_TDEST = 1) then
                         sig_txd_dest      <= Bus2IP_Data(C_DATA_WIDTH-C_AXIS_TDEST_WIDTH to C_DATA_WIDTH-1);
                         IPIC_STATE        <= DONE;
                      end if;
                    -- coverage off   
                    when others => null;
                    -- coverage on                  
                  end case;                  
                end if;

            when DONE =>
              sig_ip2bus_data_mux                             <= '0';
              sig_rxd_rd_en                                   <= '0';
              if(Bus2IP_CS = '0') then
                IPIC_STATE                              <= IDLE;
              end if;
          end case;

        end if;
      end if;
  end process;

    IP2Bus_Data         <= sig_ip2bus_data;

  -------------------------------------------------------------------------------------------------
  --  Receive Data Path
  -------------------------------------------------------------------------------------------------
  grxd: if (C_USE_RX_DATA = 1) generate
    signal rx_str_wr_en            : std_logic := '0';
    signal rx_len_rd_en            : std_logic := '0';
    signal rx_fifo_rd_en           : std_logic := '0';
  begin

    process(Bus2IP_Clk)
    begin
      if(rising_edge(Bus2IP_Clk)) then
        if(Bus2IP_Reset = '1') then 
          sig_rxd_prog_empty_d1   <= '1';
          rx_fg_len_empty_d1      <= '1';
          sig_rxd_prog_full_d1    <= '0';
        else
          sig_rxd_prog_empty_d1 <= sig_rxd_prog_empty;
          sig_rxd_prog_full_d1  <= sig_rxd_prog_full;
          rx_fg_len_empty_d1    <= rx_fg_len_empty;
        end if;
      end if;
    end process;

    rx_str_wr_en        <= rx_str_ready_i and rx_str_valid;

    sig_rxd_pe_event    <= (not sig_rxd_prog_empty_d1) and sig_rxd_prog_empty;
    rx_fg_len_empty_fe  <= (not rx_fg_len_empty) and rx_fg_len_empty_d1;
    rx_complete         <= rx_str_valid and rx_str_ready_i and rx_str_last;

    grx_sf: if (C_USE_RX_CUT_THROUGH = 0) generate
      sig_rxd_pf_event  <= sig_rxd_prog_full and (not sig_rxd_prog_full_d1);
    end generate grx_sf;

    grx_ct: if (C_USE_RX_CUT_THROUGH = 1) generate
      sig_rxd_pf_event  <= sig_rxd_prog_full;
    end generate grx_ct;

    gaxil_re: if (C_DATA_INTERFACE_TYPE = 0) generate
      rx_fifo_rd_en     <= sig_rxd_rd_en;
    end generate gaxil_re;

    gaxi4_re: if (C_DATA_INTERFACE_TYPE = 1) generate
      rx_fifo_rd_en     <= axi4_fifo_rd_en;
      S_AXI4_RDATA      <= sig_rxd_rd_data(C_AXI4_DATA_WIDTH-1 downto 0);
    end generate gaxi4_re;

    COMP_RX_FIFO : entity axi_fifo_mm_s_v4_2_3.fifo
      generic map(
        C_FAMILY                => C_FAMILY,
--        C_SELECT_XPM            => C_SELECT_XPM,
        C_USE_FIFO_GEN          => 1,
        C_IPIF_DWIDTH           => C_AXI4_DATA_WIDTH,
        C_OFFSET                => 0,
        C_DEPTH                 => C_RX_FIFO_DEPTH,
        C_CASCADE_HEIGHT        => C_RX_CASCADE_HEIGHT,
        C_PF_THRESHOLD          => C_RX_FIFO_PF_THRESHOLD,
        C_PE_THRESHOLD          => C_RX_FIFO_PE_THRESHOLD,
        C_DATA_FLOW_DIR         => "S2MM",
        C_DATA_INTERFACE_TYPE   => C_DATA_INTERFACE_TYPE,
        C_USE_TX_CUT_THROUGH    => C_USE_RX_CUT_THROUGH,
        C_HAS_AXIS_TID          => C_HAS_AXIS_TID,
        C_HAS_AXIS_TDEST        => C_HAS_AXIS_TDEST,
        C_HAS_AXIS_TUSER        => C_HAS_AXIS_TUSER,
        C_HAS_AXIS_TLAST        => 1,
        C_HAS_AXIS_TSTRB        => C_HAS_AXIS_TSTRB,
        C_HAS_AXIS_TKEEP        => C_HAS_AXIS_TKEEP,
        C_AXIS_TDATA_WIDTH      => C_AXI4_DATA_WIDTH,
        C_AXIS_TID_WIDTH        => C_AXIS_TID_WIDTH,
        C_AXIS_TDEST_WIDTH      => C_AXIS_TDEST_WIDTH,
        C_AXIS_TUSER_WIDTH      => C_AXIS_TUSER_WIDTH
      )
      port map(
        Bus2IP_Clk              => Bus2IP_Clk,
        Bus2IP_Reset            => sig_rxd_reset,
        sb_wr_en                => rx_str_last,
        wr_en                   => rx_str_wr_en,
        wr_data                 => rx_str_din, 
        rd_en                   => '0', 
        rd_data                 => open, 
        empty                   => open,
        a_empty                 => open,
        full                    => sig_rxd_wr_full,
        a_full                  => open,
        prog_full               => sig_rxd_prog_full,
        prog_empty              => sig_rxd_prog_empty,
        vacancy                 => open,
        occupancy               => sig_rxd_occupancy,
  
        mm2s_tstrb              => (others => '0'),
        mm2s_tdest              => (others => '0'),
        s2mm_tstrb              => rx_str_strb,
        s2mm_tdest              => rx_str_dest,
  
        axis_tvalid             => sig_rxd_rd_empty,
        axis_tready             => rx_fifo_rd_en,
        axis_tdata              => sig_rxd_rd_data(C_AXI4_DATA_WIDTH-1 downto 0),
        axis_tstrb              => open,
        axis_tkeep              => open,
        axis_tlast              => axi4_rlast,
        axis_tid                => open,
        axis_tdest              => sig_rxd_dest_fifo,
        axis_tuser              => open
      );

    sig_rxd_reset <= Bus2IP_Reset or sig_str_rst or sig_rx_channel_reset;

    process(Bus2IP_Clk)
    begin
      if(rising_edge(Bus2IP_Clk)) then
        if(Bus2IP_Reset = '1' or sig_str_rst = '1') then
          fg_rxd_wr_length         <= (others => '0');
          rx_len_wr_en             <= '0';
          sig_rxd_rd_data(C_FLAG)  <= '0';
        else
          if (C_USE_RX_CUT_THROUGH = 1 and rx_len_wr_en = '1') then
            sig_rxd_rd_data(C_FLAG)  <= '1';
          elsif (sig_rd_rlen = '1') then
            sig_rxd_rd_data(C_FLAG)  <= '1';
          elsif (sig_rxd_rd_data(C_FLAG) = '1' and axi4_rlast = '1' and rx_fifo_rd_en = '1') then
            sig_rxd_rd_data(C_FLAG)  <= '0';
          end if;
          rx_len_wr_en   <= rx_complete;
          if ((rx_str_ready_i = '1') and (rx_str_valid = '1')) then
            if (rx_str_last = '1') then
                fg_rxd_wr_length <= conv_std_logic_vector(conv_integer(fg_rxd_wr_length) + count_ones(rx_str_strb, C_AXI4_DATA_WIDTH/8),fg_rxd_wr_length'high+1);
            else
	      if(rx_len_wr_en = '1') then
  		fg_rxd_wr_length <= conv_std_logic_vector(C_AXI4_DATA_WIDTH/8,fg_rxd_wr_length'high+1);
	      else
  		fg_rxd_wr_length <= fg_rxd_wr_length + conv_std_logic_vector(C_AXI4_DATA_WIDTH/8,fg_rxd_wr_length'high+1);
	      end if;
            end if;
	  else
	    if(rx_len_wr_en = '1') then
  		fg_rxd_wr_length <= conv_std_logic_vector(0,fg_rxd_wr_length'high+1);
	    end if;
          end if;
        end if;
      end if;
    end process;
  
    process(Bus2IP_Clk)
    begin
      if(rising_edge(Bus2IP_Clk)) then
        if(sig_rxd_reset = '1') then
	  rx_partial_pkt <= '1';
        elsif(rx_complete = '1') then
	  rx_partial_pkt <= '0';
	elsif(rx_len_rd_en = '1') then
  	  rx_partial_pkt <= '1';
        end if;
      end if;
    end process;
    
    rx_len_rd_en <= sig_rd_rlen;
   
   -- This FIFO is to store the RX packet length in bytes
--   COMP_rx_len_fifo: entity lib_fifo_v1_0_14.sync_fifo_fg
--        generic map (
--          C_FAMILY             => C_FAMILY,
--          C_DCOUNT_WIDTH       => 4 ,
--          C_ENABLE_RLOCS       => 0 , -- not supported in sync fifo
--          C_HAS_DCOUNT         => 1 ,
--          C_HAS_RD_ACK         => 0 ,
--          C_HAS_RD_ERR         => 0 ,
--          C_HAS_WR_ACK         => 0 ,
--          C_HAS_WR_ERR         => 0 ,
--          C_HAS_ALMOST_FULL    => 0 ,
--          C_MEMORY_TYPE        => 0 ,  -- 0 = distributed RAM, 1 = BRAM
--          C_PORTS_DIFFER       => 0 ,  
--          C_RD_ACK_LOW         => 0 ,
--          C_USE_EMBEDDED_REG   => 0 ,
--          C_READ_DATA_WIDTH    => RX_MAX_PKT_SIZE,
--          C_READ_DEPTH         => C_RX_FIFO_DEPTH/4,
--          C_RD_ERR_LOW         => 0 ,
--          C_WR_ACK_LOW         => 0 ,
--          C_WR_ERR_LOW         => 0 ,
--          C_PRELOAD_REGS       => 1 ,  -- 1 = first word fall through
--          C_PRELOAD_LATENCY    => 0 ,  -- 0 = first word fall through
--          C_WRITE_DATA_WIDTH   => RX_MAX_PKT_SIZE,
--          C_WRITE_DEPTH        => C_RX_FIFO_DEPTH/4
--          )
--        port map (
--          Clk                  => Bus2IP_Clk,
--          Sinit                => sig_rxd_reset,
--          Din                  => fg_rxd_wr_length,
--          Wr_en                => rx_len_wr_en,
--          Rd_en                => rx_len_rd_en,
--          Dout                 => sig_rxd_rd_length,
--          Almost_full          => open,
--          Full                 => open,
--          Empty                => rx_fg_len_empty,
--          Rd_ack               => open,
--          Wr_ack               => open,
--          Rd_err               => open,
--          Wr_err               => open,
--          Data_count           => open
--          );


   COMP_rx_len_fifo : xpm_fifo_sync
   generic map (
      DOUT_RESET_VALUE => "0", 
      ECC_MODE => "no_ecc",       
      FIFO_MEMORY_TYPE => "distributed", 
      FIFO_READ_LATENCY => 1,      
      FIFO_WRITE_DEPTH => C_RX_FIFO_DEPTH/4, 
      FULL_RESET_VALUE => 0,       
      PROG_EMPTY_THRESH => 10,     
      PROG_FULL_THRESH => 10,      
      RD_DATA_COUNT_WIDTH => 1,    
      READ_DATA_WIDTH => RX_MAX_PKT_SIZE,       
      READ_MODE => "fwft",         
      USE_ADV_FEATURES => "0", 
      WAKEUP_TIME => 0,            
      WRITE_DATA_WIDTH => RX_MAX_PKT_SIZE,    
      WR_DATA_COUNT_WIDTH => 1    
   )
   port map (
      almost_empty => open,  
      almost_full => open,      
      data_valid => open,       
      dbiterr => open,             
      dout => sig_rxd_rd_length,            
      empty => rx_fg_len_empty,                
      full => open,                   
      overflow => open,          
      prog_empty => open,       
      prog_full => open,        
      rd_data_count => open, 
      rd_rst_busy => open,      
      sbiterr => open,             
      underflow => open,         
      wr_ack => open,          
      wr_data_count => open,  
      wr_rst_busy => open,      
      din => fg_rxd_wr_length,                
      injectdbiterr => '0',  
      injectsbiterr => '0', 
      rd_en => rx_len_rd_en,                 
      rst => sig_rxd_reset,                    
      sleep => '0',                   
      wr_clk => Bus2IP_Clk,     
      wr_en => rx_len_wr_en           
   );
    rx_str_ready_i   <=  not (sig_rxd_wr_full);
    rx_str_ready     <= rx_str_ready_i;
  end generate grxd;

end beh;


-------------------------------------------------------------------------------
--
-- AXI4-AXI4 Stream FIFO Core - AXI4-AXI4 Stream FIFO Top File
--
-------------------------------------------------------------------------------
-- (c) Copyright 2006 - 2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        axi_fifo_mm_s.vhd
-- Version:         v4_2
-- Description:     top level of axi_fifo_mm_s
--
-------------------------------------------------------------------------------
-- Structure:   
--                axi_fifo_mm_s.vhd
--                   axi_fifo_mm_s_pkg.vhd
--                   axi_lite_ipif.vhd
--                   axi_wrapper.vhd
--                      axi_read_fsm.vhd
--                      axi_read_wrapper.vhd
--                      axi_write_fsm.vhd
--                      axi_write_wrapper.vhd
--                   ipic2axi_s.vhd
--                      async_fg.vhd
--                      fifo.vhd
--                         axis_fg.vhd
--
------------------------------------------------------------------------------
-- Author: Xilinx
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
------------------------------------------------------------------------------
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;    
use ieee.std_logic_misc.all;

library unisim;
use unisim.vcomponents.all;

library axi_lite_ipif_v3_0_4;
library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.all;
use lib_pkg_v1_0_2.lib_pkg.log2;
use lib_pkg_v1_0_2.lib_pkg.max2;
use axi_lite_ipif_v3_0_4.ipif_pkg.all;

library axi_lite_ipif_v3_0_4;
use axi_lite_ipif_v3_0_4.all;

library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.all;

library axi_fifo_mm_s_v4_2_3;
use axi_fifo_mm_s_v4_2_3.axi_fifo_mm_s_pkg.all;

entity axi_fifo_mm_s is
      generic (
        C_FAMILY                  : string  := "virtex7";
--        C_SELECT_XPM              : integer := 1;
        C_S_AXI_ID_WIDTH          : integer := 4;
        C_S_AXI_ADDR_WIDTH        : integer := 32;
        C_S_AXI_DATA_WIDTH        : integer := 32;
        C_S_AXI4_DATA_WIDTH       : integer := 32;
        C_TX_FIFO_DEPTH           : integer := 512;
        C_RX_FIFO_DEPTH           : integer := 512;
        C_TX_CASCADE_HEIGHT       : integer := 0;
        C_RX_CASCADE_HEIGHT       : integer := 0;
        C_TX_FIFO_PF_THRESHOLD    : integer := 10;
        C_TX_FIFO_PE_THRESHOLD    : integer := 7;
        C_RX_FIFO_PF_THRESHOLD    : integer := 10;
        C_RX_FIFO_PE_THRESHOLD    : integer := 7;
        C_USE_TX_CUT_THROUGH      : integer := 0;
        C_DATA_INTERFACE_TYPE     : integer := 0;
        C_BASEADDR                : std_logic_vector(31 downto 0);
        C_HIGHADDR                : std_logic_vector(31 downto 0);
        C_AXI4_BASEADDR           : std_logic_vector(31 downto 0);
        C_AXI4_HIGHADDR           : std_logic_vector(31 downto 0);

        C_HAS_AXIS_TID            : integer := 0;
        C_HAS_AXIS_TDEST          : integer := 0;
        C_HAS_AXIS_TUSER          : integer := 0;
        C_HAS_AXIS_TSTRB          : integer := 0;
        C_HAS_AXIS_TKEEP          : integer := 0;
        C_AXIS_TID_WIDTH          : integer := 4;
        C_AXIS_TDEST_WIDTH        : integer := 4;
        C_AXIS_TUSER_WIDTH        : integer := 4;
        C_USE_RX_CUT_THROUGH      : integer := 0;
        C_USE_TX_DATA             : integer := 1;
        C_USE_TX_CTRL             : integer := 1;
        C_USE_RX_DATA             : integer := 1

      );  
      port (

        -- system signals ---------------------------------------------------------
        interrupt                 : out std_logic := '0';

        s_axi_aclk                : in  std_logic := '0';
        s_axi_aresetn             : in  std_logic := '0';

        -- axi4-lite signals
        -- aw channel
        s_axi_awaddr              : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
        s_axi_awvalid             : in  std_logic := '0';
        s_axi_awready             : out std_logic := '0';

        -- w channel
        s_axi_wdata               : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
        s_axi_wstrb               : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8 - 1) downto 0) := (others => '0');
        s_axi_wvalid              : in  std_logic := '0';
        s_axi_wready              : out std_logic := '0';

        -- b channel
        s_axi_bresp               : out std_logic_vector(1 downto 0) := (others => '0');
        s_axi_bvalid              : out std_logic := '0';
        s_axi_bready              : in  std_logic := '0';

        -- ar channel
        s_axi_araddr              : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
        s_axi_arvalid             : in  std_logic := '0';
        s_axi_arready             : out std_logic := '0';

        -- r channel
        s_axi_rdata               : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
        s_axi_rresp               : out std_logic_vector(1 downto 0) := (others => '0');
        s_axi_rvalid              : out std_logic := '0';
        s_axi_rready              : in  std_logic := '0';

        -- axi4 signals
        -- aw channel
        s_axi4_awid               : in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0) := (others => '0');
        s_axi4_awaddr             : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
        s_axi4_awlen              : in  std_logic_vector(7 downto 0) := (others => '0');
        s_axi4_awsize             : in  std_logic_vector(2 downto 0) := (others => '0');
        s_axi4_awburst            : in  std_logic_vector(1 downto 0) := (others => '0');
        s_axi4_awlock             : in  std_logic := '0';                               -- not supported in design
        s_axi4_awcache            : in  std_logic_vector(3 downto 0) := (others => '0');-- not supported in design
        s_axi4_awprot             : in  std_logic_vector(2 downto 0) := (others => '0');-- not supported in design
        s_axi4_awvalid            : in  std_logic := '0';
        s_axi4_awready            : out std_logic := '0';

        -- w channel
        s_axi4_wdata              : in  std_logic_vector(C_S_AXI4_DATA_WIDTH-1 downto 0) := (others => '0');
        s_axi4_wstrb              : in  std_logic_vector((C_S_AXI4_DATA_WIDTH/8 - 1) downto 0) := (others => '0');
        s_axi4_wlast              : in  std_logic := '0';
        s_axi4_wvalid             : in  std_logic := '0';
        s_axi4_wready             : out std_logic := '0';

        -- b channel
        s_axi4_bid                : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0) := (others => '0');
        s_axi4_bresp              : out std_logic_vector(1 downto 0) := (others => '0');
        s_axi4_bvalid             : out std_logic := '0';
        s_axi4_bready             : in  std_logic := '0';

        -- ar channel
        s_axi4_arid               : in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0) := (others => '0');
        s_axi4_araddr             : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
        s_axi4_arlen              : in  std_logic_vector(7 downto 0) := (others => '0');
        s_axi4_arsize             : in  std_logic_vector(2 downto 0) := (others => '0');
        s_axi4_arburst            : in  std_logic_vector(1 downto 0) := (others => '0');
        s_axi4_arlock             : in  std_logic := '0';                               -- not supported in design
        s_axi4_arcache            : in  std_logic_vector(3 downto 0) := (others => '0');-- not supported in design
        s_axi4_arprot             : in  std_logic_vector(2 downto 0) := (others => '0');-- not supported in design
        s_axi4_arvalid            : in  std_logic := '0';
        s_axi4_arready            : out std_logic := '0';

        -- r channel
        s_axi4_rid                : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0) := (others => '0');
        s_axi4_rdata              : out std_logic_vector(C_S_AXI4_DATA_WIDTH-1 downto 0) := (others => '0');
        s_axi4_rresp              : out std_logic_vector(1 downto 0) := (others => '0');
        s_axi4_rlast              : out std_logic := '0';
        s_axi4_rvalid             : out std_logic := '0';
        s_axi4_rready             : in  std_logic := '0';


        -- tx axi streaming
        mm2s_prmry_reset_out_n    : out std_logic := '0';
        axi_str_txd_tvalid        : out std_logic := '0';
        axi_str_txd_tready        : in  std_logic := '0';
        axi_str_txd_tlast         : out std_logic := '0';
        axi_str_txd_tkeep         : out std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
        axi_str_txd_tdata         : out std_logic_vector(C_S_AXI4_DATA_WIDTH-1 downto 0) := (others => '0');
        axi_str_txd_tstrb         : out std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
        axi_str_txd_tdest         : out std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
        axi_str_txd_tid           : out std_logic_vector(C_AXIS_TID_WIDTH-1 downto 0) := (others => '0');
        axi_str_txd_tuser         : out std_logic_vector(C_AXIS_TUSER_WIDTH-1 downto 0) := (others => '0');

        -- tx axi control streaming
        mm2s_cntrl_reset_out_n    : out std_logic := '0';
        axi_str_txc_tvalid        : out std_logic := '0';
        axi_str_txc_tready        : in  std_logic := '0';
        axi_str_txc_tlast         : out std_logic := '0';
        axi_str_txc_tkeep         : out std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
        axi_str_txc_tdata         : out std_logic_vector(C_S_AXI4_DATA_WIDTH-1 downto 0) := (others => '0');
        axi_str_txc_tstrb         : out std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
        axi_str_txc_tdest         : out std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
        axi_str_txc_tid           : out std_logic_vector(C_AXIS_TID_WIDTH-1 downto 0) := (others => '0');
        axi_str_txc_tuser         : out std_logic_vector(C_AXIS_TUSER_WIDTH-1 downto 0) := (others => '0');

        -- rx axi streaming
        s2mm_prmry_reset_out_n    : out std_logic := '0';
        axi_str_rxd_tvalid        : in  std_logic := '0';
        axi_str_rxd_tready        : out std_logic := '0';
        axi_str_rxd_tlast         : in  std_logic := '0';
        axi_str_rxd_tkeep         : in  std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
        axi_str_rxd_tdata         : in  std_logic_vector(C_S_AXI4_DATA_WIDTH-1 downto 0) := (others => '0');
        axi_str_rxd_tstrb         : in  std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
        axi_str_rxd_tdest         : in  std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
        axi_str_rxd_tid           : in  std_logic_vector(C_AXIS_TID_WIDTH-1 downto 0) := (others => '0');
        axi_str_rxd_tuser         : in  std_logic_vector(C_AXIS_TUSER_WIDTH-1 downto 0) := (others => '0')

      );     

end entity;

architecture structure of axi_fifo_mm_s is

 
  -----------------------------------------------------------------------------
  -- Slave Burst Parameters
  -----------------------------------------------------------------------------
  constant  C_MAX_REG_NO     : integer := 13; -- Maximum number of user registers
  constant  C_MAX_INTR_NO    : integer := 13; -- Maximum number of interrupts
  constant  C_MAX_DEST_WIDTH : integer := 4;  -- Maximum recommended width

  constant  C_ARD_ADDR_RANGE_ARRAY      : SLV64_ARRAY_TYPE :=
                -- Base address and high address pairs.
                (
                 x"0000_0000_0000_0000" + C_BASEADDR, -- IP user0 base address
                 x"0000_0000_0000_0000" + C_HIGHADDR  -- IP user0 high address
                );

  constant  C_ARD_NUM_CE_ARRAY          : INTEGER_ARRAY_TYPE :=
                -- This array spcifies the number of Chip Enables (CE) that is
                -- required by the cooresponding baseaddr pair.
                (
                 0 => C_MAX_REG_NO          -- User0 CE Number
                );
          
  constant  C_S_AXI_MIN_SIZE    : std_logic_vector(31 downto 0):= X"0000003F";
                  -- Minimum address range of the IP
  constant  C_USE_WSTRB         : integer := 0;
                  -- Use write strobs or not
  constant  C_DPHASE_TIMEOUT    : integer:= 0;
                  -- Data phase time out counter
  constant  C_MAX_CE            : integer := calc_num_ce(C_ARD_NUM_CE_ARRAY);

  signal  Axi_Str_RxD_AReset          : std_logic := '0';
  signal  Axi_Str_TxD_AReset          : std_logic := '0';
                  
  signal  sig_Bus2IP_Clk              : std_logic := '0';
  signal  sig_Bus2IP_Reset            : std_logic := '0';
  signal  sig_Bus2IP_Resetn           : std_logic := '0';
  signal  sig_IP2Bus_Data             : std_logic_vector(0 to C_S_AXI_DATA_WIDTH-1) := (others => '0');
  signal  sig_IP2Bus_WrAck            : std_logic := '0';
  signal  sig_IP2Bus_RdAck            : std_logic := '0';
  signal  sig_IP2Bus_Error            : std_logic := '0';
  signal  sig_Bus2IP_Addr             : std_logic_vector(0 to C_S_AXI_ADDR_WIDTH-1) := (others => '0');
  signal  sig_Bus2IP_Data             : std_logic_vector(0 to C_S_AXI_DATA_WIDTH-1) := (others => '0');
  signal  sig_Bus2IP_RNW              : std_logic := '0';
  signal  sig_Bus2IP_BE               : std_logic_vector(0 to (C_S_AXI_DATA_WIDTH/8)-1) := (others => '0');
  signal  sig_Bus2IP_CS               : std_logic_vector(0 to ((C_ARD_ADDR_RANGE_ARRAY'LENGTH)/2)-1) := (others => '0');
  signal  sig_Bus2IP_RdCE             : std_logic_vector(0 to C_MAX_CE-1) := (others => '0');
  signal  sig_Bus2IP_WrCE             : std_logic_vector(0 to C_MAX_CE-1) := (others => '0');
  
  signal Axi_Str_TxC_AReset    : std_logic := '0';
  signal sig_axi_wr_en         : std_logic := '0';
  signal sig_axi_rd_en         : std_logic := '0';
  signal sig_axi_awaddr_out    : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_axi_araddr_out    : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal axi4_fifo_wr_en_i     : std_logic := '0';
  signal axi4_fifo_rd_en_i     : std_logic := '0';
  signal axil_rdata_ack_i      : std_logic := '0';
  signal s_axi_rvalid_i        : std_logic := '0';
  signal axi4_rdata_ack_i      : std_logic := '0';
  signal axi4_fifo_readyn      : std_logic := '0';
  signal axi4_tdfd_en          : std_logic := '0';
  signal axi4_rdfd_en          : std_logic := '0';
  
  signal axi_str_txd_tdest_i   : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
  signal axi_str_rxd_tdest_i   : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
  signal axi_str_txd_tkeep_i   : std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
  signal axi_str_txc_tkeep_i   : std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
  signal axi_str_rxd_tkeep_i   : std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
  begin
 
-------------------------------------------------------------------------------

    COMP_IPIF : entity axi_lite_ipif_v3_0_4.axi_lite_ipif
      generic map(
        C_S_AXI_DATA_WIDTH      =>    C_S_AXI_DATA_WIDTH      ,
        C_S_AXI_ADDR_WIDTH      =>    C_S_AXI_ADDR_WIDTH      ,
        C_S_AXI_MIN_SIZE        =>    C_S_AXI_MIN_SIZE        ,
        C_USE_WSTRB             =>    C_USE_WSTRB             ,
        C_DPHASE_TIMEOUT        =>    C_DPHASE_TIMEOUT        ,
        C_ARD_ADDR_RANGE_ARRAY  =>    C_ARD_ADDR_RANGE_ARRAY  ,
        C_ARD_NUM_CE_ARRAY      =>    C_ARD_NUM_CE_ARRAY      ,
        C_FAMILY                =>    C_FAMILY
           )
    port map (
      
        -- AXI lite signals
        S_AXI_ACLK            =>      S_AXI_ACLK              ,
        S_AXI_ARESETN         =>      S_AXI_ARESETN           ,
        S_AXI_AWADDR          =>      S_AXI_AWADDR            ,
        S_AXI_AWVALID         =>      S_AXI_AWVALID           ,
        S_AXI_AWREADY         =>      S_AXI_AWREADY           ,
        S_AXI_WDATA           =>      S_AXI_WDATA             ,
        S_AXI_WSTRB           =>      S_AXI_WSTRB             ,
        S_AXI_WVALID          =>      S_AXI_WVALID            ,
        S_AXI_WREADY          =>      S_AXI_WREADY            ,
        S_AXI_BRESP           =>      S_AXI_BRESP             ,
        S_AXI_BVALID          =>      S_AXI_BVALID            ,
        S_AXI_BREADY          =>      S_AXI_BREADY            ,
        S_AXI_ARADDR          =>      S_AXI_ARADDR            ,
        S_AXI_ARVALID         =>      S_AXI_ARVALID           ,
        S_AXI_ARREADY         =>      S_AXI_ARREADY           ,
        S_AXI_RDATA           =>      S_AXI_RDATA             ,
        S_AXI_RRESP           =>      S_AXI_RRESP             ,
        S_AXI_RVALID          =>      s_axi_rvalid_i          ,
        S_AXI_RREADY          =>      S_AXI_RREADY            ,
        -- IPIC signals                                       
        Bus2IP_Clk            =>      sig_Bus2IP_Clk          ,
        Bus2IP_Resetn         =>      sig_Bus2IP_Resetn       ,
        Bus2IP_Addr           =>      sig_Bus2IP_Addr         ,
        Bus2IP_RNW            =>      sig_Bus2IP_RNW          ,
        Bus2IP_BE             =>      sig_Bus2IP_BE           ,
        Bus2IP_CS             =>      sig_Bus2IP_CS           ,
        Bus2IP_RdCE           =>      sig_Bus2IP_RdCE         ,
        Bus2IP_WrCE           =>      sig_Bus2IP_WrCE         ,
        Bus2IP_Data           =>      sig_Bus2IP_Data         ,
        IP2Bus_Data           =>      sig_IP2Bus_Data         ,
        IP2Bus_WrAck          =>      sig_IP2Bus_WrAck        ,
        IP2Bus_RdAck          =>      sig_IP2Bus_RdAck        ,
        IP2Bus_Error          =>      sig_IP2Bus_Error        
    );                                                         
    S_AXI_RVALID <= s_axi_rvalid_i;
    axil_rdata_ack_i <= s_axi_rvalid_i and S_AXI_RREADY;

    gaxif: if (C_DATA_INTERFACE_TYPE = 1) generate
      constant AXI4_TDFD_ADDR : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := C_AXI4_BASEADDR + TDFD_OFFSET;
      constant AXI4_RDFD_ADDR : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := C_AXI4_BASEADDR + RDFD_OFFSET;

      signal axi4_wr_select      : std_logic := '0';
      signal axi4_rd_select      : std_logic := '0';
      signal axi4_awready        : std_logic := '0';
      signal axi4_arready        : std_logic := '0';
      signal axi4_rvalid         : std_logic := '0';
      signal axi4_rvalid_int         : std_logic := '0';
      signal axi4_rlast          : std_logic := '0';
      signal axi4_rst            : std_logic := '1';
      signal axi4_arvalid_int    : std_logic := '0';
      signal axi4_arready_int : std_logic := '0';
      signal axi4_rdfd_en_late : std_logic := '0';
    begin
 
      --axi4_fifo_rd_en_i  <= (sig_axi_rd_en or axi4_rlast) and axi4_rdata_ack_i;
      axi4_fifo_rd_en_i  <= axi4_rdata_ack_i;
      axi4_fifo_wr_en_i  <= sig_axi_wr_en;
      axi4_rdata_ack_i   <= S_AXI4_RREADY and axi4_rvalid_int;
      S_AXI4_RVALID      <= axi4_rvalid;
      S_AXI4_RLAST       <= axi4_rlast;
      S_AXI4_AWREADY     <= axi4_awready;
      S_AXI4_ARREADY     <= axi4_arready_int; --axi4_arready;
      axi4_tdfd_en       <= (S_AXI4_AWVALID and axi4_awready) when (S_AXI4_AWADDR = AXI4_TDFD_ADDR) else '0';
      axi4_rdfd_en       <= axi4_arready_int; --(S_AXI4_ARVALID and axi4_arready_int) when (S_AXI4_ARADDR = AXI4_RDFD_ADDR) else '0';
      axi4_rdfd_en_late       <= (S_AXI4_ARVALID and axi4_arready_int) when (S_AXI4_ARADDR = AXI4_RDFD_ADDR) else '0';
      
      axi4_arvalid_int <= (S_AXI4_ARVALID) when (S_AXI4_ARADDR = AXI4_RDFD_ADDR) else '0';

      grst1: if (C_USE_TX_DATA = 1) generate
        axi4_rst <= axi4_fifo_readyn;
      end generate grst1;

      grst2: if (C_USE_TX_DATA = 0) generate
        axi4_rst <= S_AXI_ARESETN;
      end generate grst2;

      COMP_AXI4: entity axi_fifo_mm_s_v4_2_3.axi_wrapper
        generic map(
          C_AXI_TYPE         => 1,
          C_HAS_AXI_ID       => 1,
          C_AXI_ID_WIDTH     => C_S_AXI_ID_WIDTH,
          C_AXI_ADDR_WIDTH   => C_S_AXI_ADDR_WIDTH,
          C_AXI_WDATA_WIDTH  => C_S_AXI4_DATA_WIDTH,
          C_TX_FIFO_DEPTH    => C_TX_FIFO_DEPTH,
          C_RX_FIFO_DEPTH    => C_RX_FIFO_DEPTH
        )
        port map(
          S_ACLK             => S_AXI_ACLK       ,
          S_ARESETN          => axi4_rst,
          S_AXI_AWID         => S_AXI4_AWID   ,
          S_AXI_AWADDR       => S_AXI4_AWADDR ,
          S_AXI_AWLEN        => S_AXI4_AWLEN  ,
          S_AXI_AWSIZE       => S_AXI4_AWSIZE ,
          S_AXI_AWBURST      => S_AXI4_AWBURST,
          S_AXI_AWVALID      => axi4_tdfd_en,
          S_AXI_AWREADY      => axi4_awready,
          S_AXI_WDATA        => S_AXI4_WDATA  ,
          S_AXI_WSTRB        => S_AXI4_WSTRB  ,
          S_AXI_WLAST        => S_AXI4_WLAST  ,
          S_AXI_WVALID       => S_AXI4_WVALID ,
          S_AXI_WREADY       => S_AXI4_WREADY ,
          S_AXI_BID          => S_AXI4_BID    ,
          S_AXI_BRESP        => S_AXI4_BRESP  ,
          S_AXI_BVALID       => S_AXI4_BVALID ,
          S_AXI_BREADY       => S_AXI4_BREADY ,
          S_AXI_ARID         => S_AXI4_ARID   ,
          S_AXI_ARADDR       => S_AXI4_ARADDR ,
          S_AXI_ARLEN        => S_AXI4_ARLEN  ,
          S_AXI_ARSIZE       => S_AXI4_ARSIZE ,
          S_AXI_ARBURST      => S_AXI4_ARBURST,
          S_AXI_ARVALID      => axi4_rdfd_en,
          S_AXI_ARVALID_int      => axi4_arvalid_int,
          S_AXI_ARREADY      => axi4_arready,
          S_AXI_ARREADY_int      => axi4_arready_int,
          S_AXI_RID          => S_AXI4_RID    ,
          S_AXI_RDATA        => open,
          S_AXI_RRESP        => S_AXI4_RRESP  ,
          S_AXI_RLAST        => axi4_rlast  ,
          S_AXI_RVALID       => axi4_rvalid,
          S_AXI_RVALID_int       => axi4_rvalid_int,
          S_AXI_RREADY       => S_AXI4_RREADY ,
          S_AXI_AWADDR_OUT   => sig_axi_awaddr_out,
          S_AXI_WR_EN        => sig_axi_wr_en,
          S_AXI_ARADDR_OUT   => sig_axi_araddr_out,
          S_AXI_RD_EN        => sig_axi_rd_en
      
        );
    end generate gaxif;

    COMP_IPIC2AXI_S : entity axi_fifo_mm_s_v4_2_3.ipic2axi_s
      generic map(
        C_FAMILY                => C_FAMILY,
--        C_SELECT_XPM            => C_SELECT_XPM,
        C_DATA_WIDTH            => C_S_AXI_DATA_WIDTH,
        C_AXI4_DATA_WIDTH       => if_then_else(C_DATA_INTERFACE_TYPE = 0, C_S_AXI_DATA_WIDTH,C_S_AXI4_DATA_WIDTH),
        C_DEST_WIDTH            => C_MAX_DEST_WIDTH,
        C_TX_FIFO_DEPTH         => C_TX_FIFO_DEPTH,
        C_RX_FIFO_DEPTH         => C_RX_FIFO_DEPTH,
        C_TX_CASCADE_HEIGHT     => C_TX_CASCADE_HEIGHT,
        C_RX_CASCADE_HEIGHT     => C_RX_CASCADE_HEIGHT,
        C_TX_FIFO_PF_THRESHOLD  => C_TX_FIFO_PF_THRESHOLD,
        C_TX_FIFO_PE_THRESHOLD  => C_TX_FIFO_PE_THRESHOLD,
        C_RX_FIFO_PF_THRESHOLD  => C_RX_FIFO_PF_THRESHOLD,
        C_RX_FIFO_PE_THRESHOLD  => C_RX_FIFO_PE_THRESHOLD,
        C_USE_TX_CUT_THROUGH    => C_USE_TX_CUT_THROUGH,
        C_USE_RX_CUT_THROUGH    => C_USE_RX_CUT_THROUGH,
        C_TOTAL_NO_OF_INTR      => C_MAX_INTR_NO,
        C_TOTAL_NO_OF_REG       => C_MAX_REG_NO,
        C_DATA_INTERFACE_TYPE   => C_DATA_INTERFACE_TYPE,
        C_HAS_AXIS_TKEEP        => C_HAS_AXIS_TKEEP,
        C_HAS_AXIS_TSTRB        => C_HAS_AXIS_TSTRB,
        C_HAS_AXIS_TDEST        => C_HAS_AXIS_TDEST,
        C_HAS_AXIS_TUSER        => C_HAS_AXIS_TUSER,
        C_HAS_AXIS_TID          => C_HAS_AXIS_TID,
        C_AXIS_TDEST_WIDTH      => C_AXIS_TDEST_WIDTH,
        C_AXIS_TUSER_WIDTH      => C_AXIS_TUSER_WIDTH,
        C_AXIS_TID_WIDTH        => C_AXIS_TID_WIDTH,
        C_USE_TX_DATA           => C_USE_TX_DATA,
        C_USE_RX_DATA           => C_USE_RX_DATA,
        C_USE_TX_CTRL           => C_USE_TX_CTRL
	)
      port map (
        -- Register access signals 
        Bus2IP_Clk              => S_AXI_ACLK,
        Bus2IP_Reset            => sig_Bus2IP_Reset,
        IP2Bus_Data             => sig_IP2Bus_Data,
        IP2Bus_WrAck            => sig_IP2Bus_WrAck,
        IP2Bus_RdAck            => sig_IP2Bus_RdAck,
        IP2Bus_Error            => sig_IP2Bus_Error,
        Bus2IP_Data             => sig_Bus2IP_Data,
        Bus2IP_RNW              => sig_Bus2IP_RNW,
        Bus2IP_BE               => sig_Bus2IP_BE,
        Bus2IP_CS               => sig_Bus2IP_CS(0),
        Bus2IP_RdCE             => sig_Bus2IP_RdCE,
        Bus2IP_WrCE             => sig_Bus2IP_WrCE,
        axil_rdata_ack          => axil_rdata_ack_i,         
        axi4_tdfd_en            => axi4_tdfd_en,         
        axi4_rdfd_en            => axi4_rdfd_en,         

        -- Data path signals for AXI4
        axi4_fifo_wr_en         => axi4_fifo_wr_en_i,         
        S_AXI4_WDATA            => S_AXI4_WDATA,         
        S_AXI4_WSTRB            => S_AXI4_WSTRB,         
        axi4_fifo_rd_en         => axi4_fifo_rd_en_i,         
        S_AXI4_RDATA            => S_AXI4_RDATA,         
        axi4_rdata_ack          => axi4_rdata_ack_i,         
        axi4_fifo_readyn        => axi4_fifo_readyn,         

        tx_str_AReset           => Axi_Str_TxD_AReset,
        tx_str_Valid            => AXI_STR_TXD_TVALID,
        tx_str_Ready            => AXI_STR_TXD_TREADY,
        tx_str_Last             => AXI_STR_TXD_TLAST,
        tx_str_Strb             => axi_str_txd_tkeep_i,
        tx_str_Dest             => axi_str_txd_tdest_i,
        tx_str_Din              => AXI_STR_TXD_TDATA,

        txc_str_AReset          => Axi_Str_TxC_AReset,
        txc_str_Valid           => AXI_STR_TXC_TVALID,
        txc_str_Ready           => AXI_STR_TXC_TREADY,
        txc_str_Last            => AXI_STR_TXC_TLAST,
        txc_str_Strb            => axi_str_txc_tkeep_i,
        txc_str_Din             => AXI_STR_TXC_TDATA,

        rx_str_AReset           => Axi_Str_RxD_AReset,
        rx_str_Valid            => AXI_STR_RXD_TVALID,
        rx_str_Ready            => AXI_STR_RXD_TREADY,
        rx_str_Last             => AXI_STR_RXD_TLAST,
        rx_str_Strb             => axi_str_rxd_tkeep_i,
        rx_str_Dest             => axi_str_rxd_tdest_i,
        rx_str_Din              => AXI_STR_RXD_TDATA,

        Interrupt               => Interrupt
      );

    s2mm_prmry_reset_out_n <=  not Axi_Str_RxD_AReset;
    mm2s_prmry_reset_out_n <=  not Axi_Str_TxD_AReset;
    mm2s_cntrl_reset_out_n <=  not Axi_Str_TxC_AReset;
    sig_Bus2IP_Reset       <=  not sig_Bus2IP_Resetn;

    gtxd_tdest: if (C_HAS_AXIS_TDEST = 1) generate
      axi_str_txd_tdest      <= axi_str_txd_tdest_i;
      axi_str_txc_tdest      <= axi_str_txd_tdest_i;
      axi_str_rxd_tdest_i    <= axi_str_rxd_tdest;
    end generate gtxd_tdest;

    gntxd_tdest: if (C_HAS_AXIS_TDEST = 0) generate
      axi_str_txd_tdest      <= (others => '0');
      axi_str_txc_tdest      <= (others => '0');
      axi_str_rxd_tdest_i    <= (others => '0');
    end generate gntxd_tdest;

    gtxd_tkeep: if (C_HAS_AXIS_TKEEP = 1) generate
      axi_str_txd_tkeep      <= axi_str_txd_tkeep_i;
      axi_str_txc_tkeep      <= axi_str_txc_tkeep_i;
      axi_str_rxd_tkeep_i    <= axi_str_rxd_tkeep;
    end generate gtxd_tkeep;

    gntxd_tkeep: if (C_HAS_AXIS_TKEEP = 0) generate
      axi_str_txd_tkeep      <= (others => '1');
      axi_str_txc_tkeep      <= (others => '1');
      axi_str_rxd_tkeep_i    <= (others => '1');
    end generate gntxd_tkeep;

end structure;


