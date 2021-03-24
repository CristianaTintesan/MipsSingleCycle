----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/23/2020 05:31:10 PM
-- Design Name: 
-- Module Name: instructionFetch - Behavioral
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

entity instructionFetch is
  
   Port (  clk : in STD_LOGIC;
           en : in STD_LOGIC;
           jumpAddress: in STD_LOGIC_VECTOR (15 downto 0);
           branchAddress : in STD_LOGIC_VECTOR (15 downto 0);
           jmpS : in STD_LOGIC;
           brS : in STD_LOGIC;
           reset : in STD_LOGIC;
           instr : out STD_LOGIC_VECTOR (15 downto 0);
           next_instr : out STD_LOGIC_VECTOR (15 downto 0));
  
end instructionFetch;

architecture Behavioral of instructionFetch is

type rom_type is array(0 to 255) of std_logic_vector(15 downto 0);
signal mem:rom_type:=(
--Instructiuni de tipul R:

b"000_001_010_000_0_000",  --add 
b"000_101_100_011_0_001",  -- sub
b"000_011_000_100_1_010",      -- sll
b"000_000_000_011_1_011",  --srl
b"000_001_010_110_0_100",  --and
b"000_001_010_111_0_101",  --or
b"000_110_111_001_0_110",  --nand
b"000_110_111_010_0_111",  --nor

--instrunctiuni de tipul I:

b"001_000_001_0000011",    --addi
b"010_000_010_0000101",    --lw
b"011_000_011_0001001",    --sw
b"100_101_100_0000110",    --beq
b"101_111_110_0000010",    --subi
b"110_111_111_0000011",    --bne

--Instructiunie de tipul jump:

b"111_0000000001101",
others=>x"1111");

signal pCounter:STD_LOGIC_VECTOR(15 downto 0):=x"0000";
signal nextAddress:STD_LOGIC_VECTOR(15 downto 0):=x"0000";
signal aux:STD_LOGIC_VECTOR(15 downto 0):=x"0000";

begin

process (clk,en,reset)
begin
    if reset='1' then
       pCounter<=x"0000";
    elsif en='1' and rising_edge(clk)
       then pCounter<=nextAddress;
       end if;
end process;

instr <=mem(conv_integer(pCounter(7 downto 0)));
next_instr <= pCounter +1;

process(brS)
begin
   case(brS) is 
    when '0'  => aux<=pCounter+1;
    when '1'  => aux<=branchAddress;
   end case; 
end process;    
    

process(jmpS)
begin
  case(jmpS) is
    when '0' => nextAddress<=aux;
    when '1' => nextAddress<=jumpAddress;
  end case;
end process;    

end Behavioral;
