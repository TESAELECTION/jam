library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LCD_FSM is
    Port (
        rst      : in std_logic;              -- Reset signal
        clk_12Mhz: in std_logic;              -- High frequency clock (12 MHz)
        lcd_rs   : out std_logic;             -- LCD RS control
        lcd_en   : out std_logic;             -- LCD Enable
        lcd_data : out std_logic_vector(7 downto 0)  -- LCD Data port
    );
end LCD_FSM;

architecture Behavioral of LCD_FSM is
    signal div       : std_logic_vector(15 downto 0);  -- Delay timer
    signal clk_fsm   : std_logic;
    signal lcd_rs_s  : std_logic;
    
    -- LCD controller FSM states
    type state is (reset, func, mode, cur, clear, d0, d1, d2, d3, d4, hold);
    signal ps1, nx   : state;
    signal dataout_s : std_logic_vector(7 downto 0);  -- Internal data command multiplexer
begin

    -- Clock divider process
    clk_divider: process(rst, clk_12Mhz)
    begin
        if (rst = '1') then
            div <= (others => '0');
        elsif (clk_12Mhz'event and clk_12Mhz = '1') then
            div <= div + 1;
        end if;
    end process;

    clk_fsm <= div(15);

    -- Present state register process
    process(rst, clk_fsm)
    begin
        if (rst = '1') then
            ps1 <= reset;
        elsif (rising_edge(clk_fsm)) then
            ps1 <= nx;
        end if;
    end process;

    -- State and output decoding process
    process(ps1)
    begin
        case ps1 is
            when reset =>
                nx        <= func;
                lcd_rs_s  <= '0';
                dataout_s <= "00111000";  -- 38h (Function Set)
            
            when func =>
                nx        <= mode;
                lcd_rs_s  <= '0';
                dataout_s <= "00111000";  -- 38h (Function Set)
            
            when mode =>
                nx        <= cur;
                lcd_rs_s  <= '0';
                dataout_s <= "00000110";  -- 06h (Entry Mode Set)
            
            when cur =>
                nx        <= clear;
                lcd_rs_s  <= '0';
                dataout_s <= "00001100";  -- 0Ch (Display ON, Cursor OFF)
            
            when clear =>
                nx        <= d0;
                lcd_rs_s  <= '0';
                dataout_s <= "00000001";  -- 01h (Clear Display)
            
            when d0 =>
                lcd_rs_s  <= '1';
                dataout_s <= "01010000";  -- 'P' (Decimal = 80, HEX = 50)
                nx        <= d1;
            
            when d1 =>
                lcd_rs_s  <= '1';
                dataout_s <= "01001001";  -- 'I' (Decimal = 73, HEX = 49)
                nx        <= d2;
            
            when d2 =>
                lcd_rs_s  <= '1';
                dataout_s <= "01000011";  -- 'C' (Decimal = 67, HEX = 43)
                nx        <= d3;
            
            when d3 =>
                lcd_rs_s  <= '1';
                dataout_s <= "01010100";  -- 'T' (Decimal = 84, HEX = 54)
                nx        <= d4;
            
            when d4 =>
                lcd_rs_s  <= '1';
                dataout_s <= "00100000";  -- Space (Decimal = 32, HEX = 20)
                nx        <= hold;
            
            when hold =>
                lcd_rs_s  <= '0';
                dataout_s <= "00000000";  -- Hold (Decimal = 0, HEX = 00)
                nx        <= hold;

            when others =>
                -- Default case (if any)
                null;
        end case;
    end process;

    -- Output assignments
    lcd_en   <= clk_fsm;
    lcd_rs   <= lcd_rs_s;
    lcd_data <= dataout_s;

end Behavioral;
