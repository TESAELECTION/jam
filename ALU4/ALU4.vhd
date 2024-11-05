----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:45:34 07/08/2024 
-- Design Name: 
-- Module Name:    ALU4 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU4 is
    Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
           B : in  STD_LOGIC_VECTOR(3 downto 0);
           C_B : out  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR(3 downto 0);
           F : in  STD_LOGIC_VECTOR(2 downto 0)
			  );
end ALU4;

architecture Behavioral of ALU4 is
signal result : STD_LOGIC_VECTOR (4 downto 0) := "00000";
begin
	process(A, B, F)
		begin
			case F is
				when "000" => result <= '0' & (A AND B);
				when "001" => result <= '0' & (A NAND B);
				when "010" => result <= '0' & (A OR B);
				when "011" => result <= '0' & (A NOR B);
				when "100" => result <= '0' & (A XOR B);
				when "101" => result <= '0' & (A XNOR B);
				when "110" => result <= ('0' & A)+('0' & B);
				when others => 
					if(A < B) then
						result <= '0' & (not B);
						result <= result + 1;
						result <= (NOT(('0' & A) + ('0' & (not B)) + 1)) + 1;
					else result <= ('0' & A) - ('0' & B);
					end if;
			end case;
	end process;
	Y <= result(3 downto 0);
	C_B <= result(4);
end Behavioral;

