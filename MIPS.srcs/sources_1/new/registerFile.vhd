----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/23/2020 05:21:41 PM
-- Design Name: 
-- Module Name: registerFile - Behavioral
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

entity registerFile is
    port ( readAddress1 : in STD_LOGIC_VECTOR (3 downto 0);
           readAddress2 : in STD_LOGIC_VECTOR (3 downto 0);
           writeAddress : in STD_LOGIC_VECTOR (3 downto 0);
           writeData : in STD_LOGIC_VECTOR(15 downto 0);
           wen : in STD_LOGIC;
           clk : in STD_LOGIC;
           readData1 : out STD_LOGIC_VECTOR (15 downto 0);
           readdata2 : out STD_LOGIC_VECTOR (15 downto 0));
end registerFile;

architecture Behavioral of registerFile is

type reg_array is array (0 to 7) of std_logic_vector(15 downto 0);
signal reg_file: reg_array:=(X"0000",X"0001",X"0002",X"0003",X"0004",X"0005",X"0006",X"0007",others =>X"0000");    

begin

process(clk,wen)
begin
    if rising_edge(clk) then
      if wen='1' then
         reg_file(conv_integer(writeAddress))<=writeData;
      end if;
    end if;
 end process;
 
 readData1 <= reg_file(conv_integer(readAddress1));
 readData2 <= reg_file(conv_integer(readAddress2));


end Behavioral;
