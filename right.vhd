----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2023 01:37:31 PM
-- Design Name: 
-- Module Name: right - Behavioral
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

entity right is
--  Port ( );
Port ( a: in std_logic_vector(31 DOWNTO 0); b: in std_logic_vector(4 DOWNTO 0); c: out std_logic_vector(31 DOWNTO 0));
end right;

architecture Behavioral of right is

begin
with b(4 DOWNTO 0) select
c <= a(0) & a(31 DOWNTO 1) when "00001",
     a(1 DOWNTO 0) & a(31 DOWNTO 2) when "00010",
     a(2 DOWNTO 0) & a(31 DOWNTO 3) when "00011",
     a(3 DOWNTO 0) & a(31 DOWNTO 4) when "00100",
     a(4 DOWNTO 0) & a(31 DOWNTO 5) when "00101",
     a(5 DOWNTO 0) & a(31 DOWNTO 6) when "00110",
     a(6 DOWNTO 0) & a(31 DOWNTO 7) when "00111",
     a(7 DOWNTO 0) & a(31 DOWNTO 8) when "01000",
     a(8 DOWNTO 0) & a(31 DOWNTO 9) when "01001",
     a(9 DOWNTO 0) & a(31 DOWNTO 10) when "01010",
     a(10 DOWNTO 0) & a(31 DOWNTO 11) when "01011",
     a(11 DOWNTO 0) & a(31 DOWNTO 12) when "01100",
     a(12 DOWNTO 0) & a(31 DOWNTO 13) when "01101",
     a(13 DOWNTO 0) & a(31 DOWNTO 14) when "01110",
     a(14 DOWNTO 0) & a(31 DOWNTO 15) when "01111",
     a(15 DOWNTO 0) & a(31 DOWNTO 16) when "10000",
     a(16 DOWNTO 0) & a(31 DOWNTO 17) when "10001",
     a(17 DOWNTO 0) & a(31 DOWNTO 18) when "10010",
     a(18 DOWNTO 0) & a(31 DOWNTO 19) when "10011",
     a(19 DOWNTO 0) & a(31 DOWNTO 20) when "10100",
     a(20 DOWNTO 0) & a(31 DOWNTO 21) when "10101",
     a(21 DOWNTO 0) & a(31 DOWNTO 22) when "10110",
     a(22 DOWNTO 0) & a(31 DOWNTO 23) when "10111",
     a(23 DOWNTO 0) & a(31 DOWNTO 24) when "11000",
     a(24 DOWNTO 0) & a(31 DOWNTO 25) when "11001",
     a(25 DOWNTO 0) & a(31 DOWNTO 26) when "11010",
     a(26 DOWNTO 0) & a(31 DOWNTO 27) when "11011",
     a(27 DOWNTO 0) & a(31 DOWNTO 28) when "11100",
     a(28 DOWNTO 0) & a(31 DOWNTO 29) when "11101",
     a(29 DOWNTO 0) & a(31 DOWNTO 30) when "11110",
     a(30 DOWNTO 0) & a(31) when "11111",
     a when others;


end Behavioral;
