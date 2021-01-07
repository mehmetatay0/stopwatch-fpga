library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is

    port (
        clk             : in    std_logic := '0';
        push_buttons    : in    std_logic_vector(3 downto 0) := (others => '0') ;
        anode           : out   std_logic_vector(3 downto 0) := (others => '1');
        cathode         : out   std_logic_vector(6 downto 0) := (others => '1')
    );
end top;

architecture Behavioral of top is

    component clockDivider is
        --clk_refresh, clk_dig : out std_logic := '0'
        port (
        clk : in std_logic := '0'
        );
    end component;

    component display is
        port (
            push_buttons    : in    std_logic_vector(3 downto 0) := (others => '0') ;
            clk_refresh     : in std_logic := '0'; 
            --clk_dig         : in std_logic := '0';
            anode           : out   std_logic_vector(3 downto 0) := (others => '1');
            cathode         : out   std_logic_vector(6 downto 0) := (others => '1')
        );
    end component;

begin

    part0: clockDivider
        port map (
            clk         => clk
            --clk_refresh => clk_refresh,
            --clk_dig     => clk_dig
        );
    
    part1: display
        port map (
            push_buttons    => push_buttons,  
            clk_refresh     => clk,  --clk_refresh
            --clk_dig         => clk_dig,
            anode           => anode,
            cathode         => cathode
        );

end Behavioral;
