library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fifo is
    generic (depth : integer := 16);  -- depth of FIFO
    port (
        clk        : in  std_logic;
        reset      : in  std_logic;
        enr        : in  std_logic;  -- enable read
        enw        : in  std_logic;  -- enable write
        data_in    : in  std_logic_vector(7 downto 0);  -- input data
        data_out   : out std_logic_vector(7 downto 0);  -- output data
        fifo_empty : out std_logic;  -- '1' when FIFO is empty
        fifo_full  : out std_logic   -- '1' when FIFO is full
    );
end fifo;

architecture fifo_arch of fifo is
    type memory_type is array (0 to depth-1) of std_logic_vector(7 downto 0);
    signal memory : memory_type := (others => (others => '0'));  -- memory for queue
    signal readptr, writeptr : integer := 0;  -- read and write pointers
    signal empty, full : std_logic := '0';  -- FIFO status flags
begin
    fifo_empty <= empty;
    fifo_full  <= full;

    process (clk, reset)
        variable num_elem : integer := 0;  -- number of elements in FIFO
    begin
        if (reset = '1') then
            memory <= (others => (others => '0'));
            data_out <= (others => '0');
            empty <= '1';
            full <= '0';
            readptr <= 0;
            writeptr <= 0;
            num_elem := 0;
        elsif (rising_edge(clk)) then
            -- Reading from FIFO
            if (enr = '1' and empty = '0') then
                data_out <= memory(readptr);
                readptr <= (readptr + 1) mod depth;
                num_elem := num_elem - 1;
            end if;

            -- Writing to FIFO
            if (enw = '1' and full = '0') then
                memory(writeptr) <= data_in;
                writeptr <= (writeptr + 1) mod depth;
                num_elem := num_elem + 1;
            end if;

            -- Set empty and full flags
            if (num_elem = 0) then
                empty <= '1';
            else
                empty <= '0';
            end if;

            if (num_elem = depth) then
                full <= '1';
            else
                full <= '0';
            end if;
        end if;
    end process;
end fifo_arch;
