library ieee;
use ieee.std_logic_1164.all;

entity rs_latch is
    port (
        r      : in  std_logic;
        s      : in  std_logic;
        q      : out std_logic;
        q_bar  : out std_logic
    );
end entity rs_latch;

architecture behavioral of rs_latch is
    signal q_int     : std_logic := '0';
    signal q_bar_int : std_logic := '1';
begin
    q_int     <= r nor q_bar_int;
    q_bar_int <= s nor q_int;

    q     <= q_int;
    q_bar <= q_bar_int;
end architecture behavioral;
