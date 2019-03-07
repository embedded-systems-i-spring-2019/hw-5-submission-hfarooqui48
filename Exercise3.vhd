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

entity Exercise3 is
  Port ( A,B: in std_logic_vector(1 downto 0);
           D_1 : in std_logic;
           E_out : out std_logic);
end Exercise3;

architecture Behavioral of Exercise3 is
    signal A1 : STD_LOGIC;
    signal B1 : STD_LOGIC;
    signal C1 : STD_LOGIC;
begin
    A1 <= A(0) and A(1);
    B1 <= B(0) or B(1);
    C1 <= B(1) and (not D_1);
    E_out <= A1 or B1 or C1;
end Behavioral;