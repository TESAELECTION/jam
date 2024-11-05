--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:07:35 08/12/2024
-- Design Name:   
-- Module Name:   D:/BE42359/MOD_N_COUNTER/modNcounterTB.vhd
-- Project Name:  MOD_N_COUNTER
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MOD_N_COUNTER
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY modNcounterTB IS
END modNcounterTB;
 
ARCHITECTURE behavior OF modNcounterTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MOD_N_COUNTER
    PORT(
         rst : IN  std_logic;
         pr : IN  std_logic;
         dir : IN  std_logic;
         clk : IN  std_logic;
         Q : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal pr : std_logic := '0';
   signal dir : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MOD_N_COUNTER PORT MAP (
          rst => rst,
          pr => pr,
          dir => dir,
          clk => clk,
          Q => Q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   rst_process: process
   begin		
		wait for 212.5 ns;
		rst<='1';
		wait for 10 ns;
		rst<='0';
	end process;
	
	dir_process :process
	begin
		wait for 250 ns;
		dir<='1';
		wait for 250 ns;
		dir<='0';
	end process;
	
	pr_process :process
	begin
		wait for 282.5 ns;
		pr<='1';
		wait for 10 ns;
		pr<='0';
	end process;
	
END;
