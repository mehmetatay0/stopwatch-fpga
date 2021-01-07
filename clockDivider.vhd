library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clockDivider is
    port (
            clk : in std_logic := '0';
            clk_refresh, clk_dig : out std_logic := '0'
        );
end clockDivider;

architecture Behavioral of clockDivider is

begin


end Behavioral;
