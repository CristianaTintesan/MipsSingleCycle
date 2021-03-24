----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/23/2020 05:11:49 PM
-- Design Name: 
-- Module Name: ssd - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ssd is

Port ( clk : in STD_LOGIC;
           an : out STD_LOGIC_VECTOR (3 downto 0);
           cat : out STD_LOGIC_VECTOR (6 downto 0);
           cif : in STD_LOGIC_VECTOR (15 downto 0));

end ssd;

architecture Behavioral of ssd is

signal cnt:std_logic_vector(15 downto 0):=x"0000";
signal cifra:std_logic_vector(3 downto 0):="0000";

begin


process(clk)
begin
if clk'event and clk='1' then
  cnt<=cnt+1;
end if;
end process;

process(cnt(15 downto 14))
begin
case cnt(15 downto 14) is
when "00" => an <="0111"; cifra<=cif(15 downto 12);
when "01" => an<="1011"; cifra<=cif(11 downto 8);
when "10" => an<="1101"; cifra<=cif(7 downto 4);
when others => an<="1110"; cifra<=cif(3 downto 0);
end case;
end process;

process(cifra)
begin
case cifra is 
    when "0000" => cat <=not("0111111"); --0
    when "0001" => cat <=not("0000110");  --1
    when "0010" => cat <=not("1011011");  --2
    when "0011" => cat <=not("1001111");  --3
    when "0100" => cat <=not("1100110");  --4
    when "0101" => cat <=not("1101101");  --5
    when "0110" => cat <=not("1111101");  --6
    when "0111" => cat <=not("0000111");  --7
    when "1000" => cat <=not("1111111");  --8
    when "1001" => cat <=not("1101111");  --9
    when "1010" => cat <=not("1110111");  --A
    when "1011" => cat <=not("1111100");  --B
    when "1100" => cat <=not("0111001");  --C
    when "1101" => cat <=not("1011110");  --D
    when "1110" => cat <=not("1111001");  --E
    when others => cat <=not("1110001");  --F
           
end case;
end process;



end Behavioral;
