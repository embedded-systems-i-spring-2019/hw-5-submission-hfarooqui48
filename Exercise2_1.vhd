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

entity Exercise2_1 is
  Port (A, B: in std_logic_vector(1 downto 0);
        D_1: in std_logic;
        E_out: out std_logic);
end Exercise2_1;

architecture Behavioral of Exercise2_1 is

begin
process(A,B)
  begin
  if A = "00" or A = "01" or A = "10" or B = "00" then
  E_out <= '0';
  else
  E_out <= '1';
  end if;
  end process;
end Behavioral;
