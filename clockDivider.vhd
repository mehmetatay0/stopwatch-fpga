library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clockDivider is
    port (
            clk : in std_logic := '0';
            clk_refresh, clk_dig : out std_logic := '0'
        );
end clockDivider;

architecture Behavioral of clockDivider is

signal temp_1    : std_logic    := '0';
signal counter_1 : integer      := 0;
signal temp_2    : std_logic    := '0';
signal counter_2 : integer      := 0;

begin

process (clk)
begin
    if clk'event and clk = '1' then
        counter_1 <= counter_1 + 1;
        if counter_1 = 1000000 then
            temp_1 <= not temp_1;
            counter_1 <= 0;
        end if;
    end if;
end process;

process (clk)
begin
    if clk'event and clk = '1' then
        counter_2 <= counter_2 + 1;
        if counter_2 = 100000000 then
            temp_2 <= not temp_2;
            counter_2 <= 0;
        end if;
    end if;
end process;

clk_dig     <= temp_1;
clk_refresh <= temp_2;
end Behavioral;