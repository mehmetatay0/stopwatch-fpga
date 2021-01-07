library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity test is
port (
    clk     : in std_logic := '0';
    sw_i    : in std_logic := '0';
    an      : out std_logic_vector(3 downto 0) := (others => '1');
    seg     : out std_logic_vector(6 downto 0) := (others => '1')
    
);

end test;

architecture Behavioral of test is

signal counter : integer := 0;
begin

process (clk)
begin
    if clk'event and clk = '1' then
        
        if sw_i = '1' then
        
            an(0)   <= '0';
            seg     <= (others => '0' );
        
        end if;

    end if;
end process;



end Behavioral;