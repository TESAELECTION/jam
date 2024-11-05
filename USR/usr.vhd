----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:28:46 07/29/2024 
-- Design Name: 
-- Module Name:    usr - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity usr is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           mode : in  STD_LOGIC_VECTOR(1 downto 0);
           sin : in  STD_LOGIC;
           pin : in  STD_LOGIC_VECTOR(3 downto 0);
           sout : out  STD_LOGIC;
           pout : out  STD_LOGIC_VECTOR(3 downto 0));
end usr;

architecture Behavioral of usr is
SIGNAL temp : STD_LOGIC_VECTOR(3 downto 0) := "0000";
begin
		PROCESS(rst, clk, mode, sin, pin)
		BEGIN
				if rst = '1' then
						pout<="0000";
						sout<='0';
				ELSIF FALLING_EDGE(clk) THEN
					CASE mode IS
							WHEN "00" =>
									temp(3 downto 1) <= temp(2 downto 0);
									temp(0) <= sin;
									sout <= temp(3);
									pout <= "0000";
							WHEN "01" =>
									temp(3 downto 1) <= temp(2 downto 0);
									temp(0) <= sin;
									pout <= temp;
									sout <= '0';
							WHEN "10" =>
									temp <= pin;
									sout <= temp(3);
									temp(3 downto 1) <= temp(2 downto 0);
									pout <= "0000";
							WHEN OTHERS =>
									temp <= pin;
									pout <= temp;
									
					END CASE;
				END IF;
		END PROCESS;
end Behavioral;

