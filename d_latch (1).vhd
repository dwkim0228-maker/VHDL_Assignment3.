library ieee;
use ieee.std_logic_1164.all;

entity d_latch is
    port (
        d     : in  std_logic;
        en    : in  std_logic;
        q     : out std_logic;
        q_bar : out std_logic
    );
end entity d_latch;

architecture behavioral of d_latch is
    signal q_int : std_logic := '0';
begin
    process (d, en)
    begin
        if en = '1' then
            q_int <= d;
        end if;
    end process;

    q     <= q_int;
    q_bar <= not q_int;
end architecture behavioral;
