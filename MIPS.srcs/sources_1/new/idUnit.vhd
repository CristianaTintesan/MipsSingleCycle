----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/23/2020 08:58:54 PM
-- Design Name: 
-- Module Name: idUnit - Behavioral
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

entity idUnit is
   port (  clk : in std_logic;
           instr : in STD_LOGIC_VECTOR (15 downto 0);
           RegWrite : in STD_LOGIC;
           RegDst : in STD_LOGIC;
           ExtOp : in STD_LOGIC;
           readData1 : inout STD_LOGIC_VECTOR (15 downto 0);
           readData2 : inout STD_LOGIC_VECTOR (15 downto 0);
           writeData : inout STD_LOGIC_VECTOR (15 downto 0);
           Ext_Imm : out STD_LOGIC_VECTOR (15 downto 0);
           func : out STD_LOGIC_VECTOR (2 downto 0);
           sa : out STD_LOGIC);
end idUnit;

architecture Behavioral of idUnit is

component registerFile is
    port ( readAddress1 : in STD_LOGIC_VECTOR (3 downto 0);
           readAddress2 : in STD_LOGIC_VECTOR (3 downto 0);
           writeAddress : in STD_LOGIC_VECTOR (3 downto 0);
           writeData : in STD_LOGIC_VECTOR(15 downto 0);
           wen : in STD_LOGIC;
           clk : in STD_LOGIC;
           readData1 : out STD_LOGIC_VECTOR (15 downto 0);
           readdata2 : out STD_LOGIC_VECTOR (15 downto 0));
end component;



signal rs:std_logic_vector(3 downto 0);
signal rd:std_logic_vector(3 downto 0);
signal rt:std_logic_vector(3 downto 0);
signal wadr:std_logic_vector(3 downto 0);


begin

rs <= "0"&Instr(12 downto 10);
rt <= "0"&Instr(9 downto 7);
rd <= "0"&Instr(6 downto 4);


process(RegDst)
begin
  case (RegDst) is
      when '0' =>wadr<=rt;
      when '1' =>wadr<=rd;
   end case;   

end process;

sa <= Instr(3);
func <= Instr(2 downto 0);

writeData <= readData1 + readData2;

RFPort:RegisterFile port map(rd,rt,wadr,writeData,'1',clk,readData1,readData2);


end Behavioral;
