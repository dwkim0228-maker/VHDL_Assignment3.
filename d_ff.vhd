library ieee;
use ieee.std_logic_1164.all;

entity d_ff is
    port (
        d     : in  std_logic;
        clk   : in  std_logic;
        q     : out std_logic;
        q_bar : out std_logic
    );
end entity d_ff;

architecture behavioral of d_ff is
    signal q_int : std_logic := '0';
begin
    process (clk)
    begin
        if rising_edge(clk) then
            q_int <= d;
        end if;
    end process;

    q     <= q_int;
    q_bar <= not q_int;
end architecture behavioral;
