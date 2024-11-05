--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:40:50 07/15/2024
-- Design Name:   
-- Module Name:   D:/BE42359/ALU4/alutest.vhd
-- Project Name:  ALU4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU4
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY alutest IS
END alutest;
 
ARCHITECTURE behavior OF alutest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU4
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C_B : OUT  std_logic;
         Y : OUT  std_logic_vector(3 downto 0);
         F : IN  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := ("1001");
   signal B : std_logic_vector(3 downto 0) := ("1010");
   signal F : std_logic_vector(2 downto 0) := ("111");

 	--Outputs
   signal C_B : std_logic;
   signal Y : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU4 PORT MAP (
          A => A,
          B => B,
          C_B => C_B,
          Y => Y,
          F => F
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      F <= F+1;
		wait for 100 ns;
   end process;

END;
