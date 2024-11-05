--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: usr_synthesis.vhd
-- /___/   /\     Timestamp: Fri Oct 18 17:08:50 2024
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm usr -w -dir netgen/synthesis -ofmt vhdl -sim usr.ngc usr_synthesis.vhd 
-- Device	: xc3s250e-4-pq208
-- Input file	: usr.ngc
-- Output file	: E:\VLSI A\USR\netgen\synthesis\usr_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: usr
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity usr is
  port (
    clk : in STD_LOGIC := 'X'; 
    sin : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    sout : out STD_LOGIC; 
    pout : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    mode : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    pin : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end usr;

architecture Structure of usr is
  signal clk_BUFGP_1 : STD_LOGIC; 
  signal mode_0_IBUF_4 : STD_LOGIC; 
  signal mode_1_IBUF_5 : STD_LOGIC; 
  signal pin_0_IBUF_10 : STD_LOGIC; 
  signal pin_1_IBUF_11 : STD_LOGIC; 
  signal pin_2_IBUF_12 : STD_LOGIC; 
  signal pin_3_IBUF_13 : STD_LOGIC; 
  signal pout_0_18 : STD_LOGIC; 
  signal pout_1_19 : STD_LOGIC; 
  signal pout_2_20 : STD_LOGIC; 
  signal pout_3_21 : STD_LOGIC; 
  signal rst_IBUF_27 : STD_LOGIC; 
  signal rst_inv : STD_LOGIC; 
  signal sin_IBUF_30 : STD_LOGIC; 
  signal sout_OBUF_32 : STD_LOGIC; 
  signal sout_mux0000 : STD_LOGIC; 
  signal temp_0_mux0001 : STD_LOGIC; 
  signal temp_1_mux0001 : STD_LOGIC; 
  signal temp_2_mux0001 : STD_LOGIC; 
  signal temp_3_mux0001 : STD_LOGIC; 
  signal pout_mux0001 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal temp : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  temp_0 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => rst_inv,
      D => temp_0_mux0001,
      Q => temp(0)
    );
  pout_0 : FDC_1
    port map (
      C => clk_BUFGP_1,
      CLR => rst_IBUF_27,
      D => pout_mux0001(3),
      Q => pout_0_18
    );
  pout_1 : FDC_1
    port map (
      C => clk_BUFGP_1,
      CLR => rst_IBUF_27,
      D => pout_mux0001(2),
      Q => pout_1_19
    );
  pout_2 : FDC_1
    port map (
      C => clk_BUFGP_1,
      CLR => rst_IBUF_27,
      D => pout_mux0001(1),
      Q => pout_2_20
    );
  pout_3 : FDC_1
    port map (
      C => clk_BUFGP_1,
      CLR => rst_IBUF_27,
      D => pout_mux0001(0),
      Q => pout_3_21
    );
  temp_1 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => rst_inv,
      D => temp_1_mux0001,
      Q => temp(1)
    );
  temp_2 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => rst_inv,
      D => temp_2_mux0001,
      Q => temp(2)
    );
  temp_3 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1,
      CE => rst_inv,
      D => temp_3_mux0001,
      Q => temp(3)
    );
  sout_9 : FDC_1
    port map (
      C => clk_BUFGP_1,
      CLR => rst_IBUF_27,
      D => sout_mux0000,
      Q => sout_OBUF_32
    );
  temp_0_mux00011 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => mode_1_IBUF_5,
      I1 => sin_IBUF_30,
      I2 => pin_0_IBUF_10,
      O => temp_0_mux0001
    );
  pout_mux0001_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => mode_0_IBUF_4,
      I1 => temp(0),
      O => pout_mux0001(3)
    );
  pout_mux0001_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => mode_0_IBUF_4,
      I1 => temp(1),
      O => pout_mux0001(2)
    );
  pout_mux0001_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => mode_0_IBUF_4,
      I1 => temp(2),
      O => pout_mux0001(1)
    );
  pout_mux0001_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => mode_0_IBUF_4,
      I1 => temp(3),
      O => pout_mux0001(0)
    );
  Mmux_sout_mux000021 : LUT4
    generic map(
      INIT => X"B380"
    )
    port map (
      I0 => mode_1_IBUF_5,
      I1 => mode_0_IBUF_4,
      I2 => sout_OBUF_32,
      I3 => temp(3),
      O => sout_mux0000
    );
  Mmux_temp_3_mux000121 : LUT4
    generic map(
      INIT => X"BF80"
    )
    port map (
      I0 => pin_3_IBUF_13,
      I1 => mode_1_IBUF_5,
      I2 => mode_0_IBUF_4,
      I3 => temp(2),
      O => temp_3_mux0001
    );
  Mmux_temp_2_mux000121 : LUT4
    generic map(
      INIT => X"BF80"
    )
    port map (
      I0 => pin_2_IBUF_12,
      I1 => mode_1_IBUF_5,
      I2 => mode_0_IBUF_4,
      I3 => temp(1),
      O => temp_2_mux0001
    );
  Mmux_temp_1_mux000121 : LUT4
    generic map(
      INIT => X"BF80"
    )
    port map (
      I0 => pin_1_IBUF_11,
      I1 => mode_1_IBUF_5,
      I2 => mode_0_IBUF_4,
      I3 => temp(0),
      O => temp_1_mux0001
    );
  sin_IBUF : IBUF
    port map (
      I => sin,
      O => sin_IBUF_30
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_27
    );
  mode_1_IBUF : IBUF
    port map (
      I => mode(1),
      O => mode_1_IBUF_5
    );
  mode_0_IBUF : IBUF
    port map (
      I => mode(0),
      O => mode_0_IBUF_4
    );
  pin_3_IBUF : IBUF
    port map (
      I => pin(3),
      O => pin_3_IBUF_13
    );
  pin_2_IBUF : IBUF
    port map (
      I => pin(2),
      O => pin_2_IBUF_12
    );
  pin_1_IBUF : IBUF
    port map (
      I => pin(1),
      O => pin_1_IBUF_11
    );
  pin_0_IBUF : IBUF
    port map (
      I => pin(0),
      O => pin_0_IBUF_10
    );
  sout_OBUF : OBUF
    port map (
      I => sout_OBUF_32,
      O => sout
    );
  pout_3_OBUF : OBUF
    port map (
      I => pout_3_21,
      O => pout(3)
    );
  pout_2_OBUF : OBUF
    port map (
      I => pout_2_20,
      O => pout(2)
    );
  pout_1_OBUF : OBUF
    port map (
      I => pout_1_19,
      O => pout(1)
    );
  pout_0_OBUF : OBUF
    port map (
      I => pout_0_18,
      O => pout(0)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_1
    );
  rst_inv1_INV_0 : INV
    port map (
      I => rst_IBUF_27,
      O => rst_inv
    );

end Structure;

