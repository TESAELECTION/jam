--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:57:12 07/29/2024
-- Design Name:   
-- Module Name:   D:/BE42359/USR/usr_tb.vhd
-- Project Name:  USR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: usr
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY usr_tb IS
END usr_tb;
 
ARCHITECTURE behavior OF usr_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT usr
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         mode : IN  std_logic_vector(1 downto 0);
         sin : IN  std_logic;
         pin : IN  std_logic_vector(3 downto 0);
         sout : OUT  std_logic;
         pout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '1';
   signal mode : std_logic_vector(1 downto 0) := (others => '0');
   signal sin : std_logic := '0';
   signal pin : std_logic_vector(3 downto 0) := "0000";

 	--Outputs
   signal sout : std_logic;
   signal pout : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: usr PORT MAP (
          rst => rst,
          clk => clk,
          mode => mode,
          sin => sin,
          pin => pin,
          sout => sout,
          pout => pout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	rstproc : process
	begin
		wait for 162.5 ns;
		rst <= '1';
		wait for 20 ns;
		rst <= '0';
		wait;
	end process;

   mode_proc: process
   begin	
		wait for 80 ns;
		mode <= "00";
		wait for 50 ns;
		mode <= "01";
		wait for 50 ns;
		mode <= "10";
		wait for 20 ns;
		mode <= "11";
		wait;
   end process;
	
	sin_proc: process
   begin	
		wait for 10 ns;
		sin <= '0';
		wait for 10 ns;
		sin <= '1';
		wait for 10 ns;
		sin <= '1';
		wait for 10 ns;
		sin <= '0';
		wait for 50 ns;
		sin <= '1';
		wait for 10 ns;
		sin <= '1';
		wait for 10 ns;
		sin <= '0';
		wait for 10 ns;
		sin <= '1';
		wait;		
   end process;

END;
