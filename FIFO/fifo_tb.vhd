LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY fifo_tb IS
END fifo_tb;

ARCHITECTURE behavior OF fifo_tb IS
    -- Inputs and outputs
    signal Clk, reset, enr, enw : std_logic := '0';
    signal empty, full          : std_logic;
    signal data_in, data_out    : std_logic_vector(7 downto 0) := (others => '0');

    -- Temporary signals
    signal i : integer := 0;

    -- Clock period definition
    constant Clk_period : time := 10 ns;
    constant depth      : integer := 16;  -- Specify depth of FIFO here.

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.fifo
        generic map (depth => depth)
        port map (
            Clk        => Clk,
            reset      => reset,
            enr        => enr,
            enw        => enw,
            data_in    => data_in,
            data_out   => data_out,
            fifo_empty => empty,
            fifo_full  => full
        );

    -- Clock process definition
    Clk_process : process
    begin
        Clk <= '0';
        wait for Clk_period / 2;
        Clk <= '1';
        wait for Clk_period / 2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Apply reset for one clock cycle
        reset <= '1';
        wait for Clk_period;
        reset <= '0';

        -- Wait for 3 clock periods
        wait for Clk_period * 3;

        -- Write 10 values to FIFO
        enw <= '1';
        enr <= '0';
        for i in 1 to 10 loop
            data_in <= std_logic_vector(to_unsigned(i, 8));  -- Use to_unsigned for conversion
            wait for Clk_period;
        end loop;

        -- Stop writing, start reading 4 values from FIFO
        enw <= '0';
        enr <= '1';
        wait for Clk_period * 4;

        -- Stop read, wait
        enw <= '0';
        enr <= '0';
        wait for Clk_period * 10;

        -- Write 10 more values to FIFO
        enw <= '1';
        enr <= '0';
        for i in 11 to 20 loop
            data_in <= std_logic_vector(to_unsigned(i, 8));
            wait for Clk_period;
        end loop;

        -- Wait and read a few values
        enw <= '0';
        enr <= '1';
        wait for Clk_period * 4;

        -- Read additional values
        enw <= '0';
        enr <= '1';
        wait for Clk_period * 8;

        -- Read the remaining values
        enw <= '0';
        enr <= '1';
        wait for Clk_period * 4;

        -- Stop everything
        enw <= '0';
        enr <= '0';
        wait;
    end process;

END behavior;
