----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 01:42:41 AM
-- Design Name: 
-- Module Name: Exercise2_1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Exercise7_1 is
  Port( input: in std_logic_vector(2 downto 0);
        clock: in std_logic;
        reset: in std_logic;
        output: out std_logic_vector(7 downto 0));
end Exercise7_1;

architecture Behavioral of Exercise7_1 is 
begin 
process(clock)
begin
   if ( clock'event and clock ='1') then
      if ( reset = '1') then
         output <= "00000000";
      else
         case input is
            when "000" => output <= "00000001";
            when "001" => output <= "00000010";
            when "010" => output <= "00000100";
            when "011" => output <= "00001000";
            when "100" => output <= "00010000";
            when "101" => output <= "00100000";
            when "110" => output <= "01000000";
            when "111" => output <= "10000000";
            when others => output <= "00000000";
         end case;
      end if;
   end if;
end process;

end Behavioral;