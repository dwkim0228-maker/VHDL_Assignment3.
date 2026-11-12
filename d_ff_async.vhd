library ieee;
use ieee.std_logic_1164.all;

entity d_ff_async is
    port (
        d     : in  std_logic;
        clk   : in  std_logic;
        set   : in  std_logic;
        clr   : in  std_logic;
        q     : out std_logic;
        q_bar : out std_logic
    );
end entity d_ff_async;

architecture behavioral of d_ff_async is
    signal q_int : std_logic := '0';
begin
    process (clk, set, clr)
    begin
        if clr = '1' then
            q_int <= '0';                -- Clear has highest priority
        elsif set = '1' then
            q_int <= '1';                -- Asynchronous Set
        elsif rising_edge(clk) then
            q_int <= d;                  -- Normal positive-edge D Flip-Flop
        end if;
    end process;

    q     <= q_int;
    q_bar <= not q_int;
end architecture behavioral;
