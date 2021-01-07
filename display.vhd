library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity display is
port(
    push_buttons    : in    std_logic_vector(3 downto 0) := ((others => '0') );
    clk_refresh     : in    std_logic := '0'; 
    clk_dig         : in    std_logic := '0';
    anode           : out   std_logic_vector(3 downto 0) := (others => '1');
    cathode         : out   std_logic_vector(6 downto 0) := (others => '1')
);

end display;

architecture Behavioral of display is

signal use_digit_1, use_digit_2, use_digit_3, use_digit_4 : integer := 1;

begin


process (clk_refresh)
variable digit : std_logic_vector(1 downto 0) := (others => '0') ;
begin
    if clk_refresh'event and clk_refresh = '1' then
        case( digit ) is
        
            when "00" =>
                case( use_digit_1 ) is
                    
                    when 0  =>
                        anode   <=  "1110";
                        cathode <=  "0000001";
                    when  1 =>
                        anode   <=  "1110";
                        cathode <=  "1001111";
                    when  2 =>
                        anode   <=  "1110";
                        cathode <=  "0010010";    
                    when  3 =>
                        anode   <=  "1110";
                        cathode <=  "0000110";    
                    when  4 =>
                        anode   <=  "1110";
                        cathode <=  "1001100";
                    when  5 =>
                        anode   <=  "1110";
                        cathode <=  "0100100";
                    when  6 =>
                        anode   <=  "1110";
                        cathode <=  "0100000";
                    when  7 =>
                        anode   <=  "1110";
                        cathode <=  "0001111";
                    when  8 =>
                        anode   <=  "1110";
                        cathode <=  "0000000";
                    when  9 =>
                        anode   <=  "1110";
                        cathode <=  "0000100";
                    
                    when others =>

                end case;
            
            when "01" =>

                case ( use_digit_2 ) is
                
                    when 0  =>
                        anode   <=  "1101";
                        cathode <=  "0000001";
                    when  1 =>
                        anode   <=  "1101";
                        cathode <=  "1001111";
                    when  2 =>
                        anode   <=  "1101";
                        cathode <=  "0010010";    
                    when  3 =>
                        anode   <=  "1101";
                        cathode <=  "0000110";    
                    when  4 =>
                        anode   <=  "1101";
                        cathode <=  "1001100";
                    when  5 =>
                        anode   <=  "1101";
                        cathode <=  "0100100";
                    when  6 =>
                        anode   <=  "1101";
                        cathode <=  "0100000";
                    when  7 =>
                        anode   <=  "1101";
                        cathode <=  "0001111";
                    when  8 =>
                        anode   <=  "1101";
                        cathode <=  "0000000";
                    when  9 =>
                        anode   <=  "1101";
                        cathode <=  "0000100";
                    
                    when others =>

                end case;
            
            when "10" =>

                case ( use_digit_3 ) is
                
                    when 0  =>
                        anode   <=  "1011";
                        cathode <=  "0000001";
                    when  1 =>
                        anode   <=  "1011";
                        cathode <=  "1001111";
                    when  2 =>
                        anode   <=  "1011";
                        cathode <=  "0010010";    
                    when  3 =>
                        anode   <=  "1011";
                        cathode <=  "0000110";    
                    when  4 =>
                        anode   <=  "1011";
                        cathode <=  "1001100";
                    when  5 =>
                        anode   <=  "1011";
                        cathode <=  "0100100";
                    when  6 =>
                        anode   <=  "1011";
                        cathode <=  "0100000";
                    when  7 =>
                        anode   <=  "1011";
                        cathode <=  "0001111";
                    when  8 =>
                        anode   <=  "1011";
                        cathode <=  "0000000";
                    when  9 =>
                        anode   <=  "1011";
                        cathode <=  "0000100";
                    
                    when others =>

                end case;

            when "11" =>
                case( use_digit_4 ) is

                    when 0  =>
                        anode   <=  "0111";
                        cathode <=  "0000001";
                    when  1 =>
                        anode   <=  "0111";
                        cathode <=  "1001111";
                    when  2 =>
                        anode   <=  "0111";
                        cathode <=  "0010010";    
                    when  3 =>
                        anode   <=  "0111";
                        cathode <=  "0000110";    
                    when  4 =>
                        anode   <=  "0111";
                        cathode <=  "1001100";
                    when  5 =>
                        anode   <=  "0111";
                        cathode <=  "0100100";
                    when  6 =>
                        anode   <=  "0111";
                        cathode <=  "0100000";
                    when  7 =>
                        anode   <=  "0111";
                        cathode <=  "0001111";
                    when  8 =>
                        anode   <=  "0111";
                        cathode <=  "0000000";
                    when  9 =>
                        anode   <=  "0111";
                        cathode <=  "0000100";
                    
                    when others =>

                end case ;
            
            when others =>
             
        end case;          
        
        digit := digit + 1;
   
    end if;
end process;

end Behavioral;
