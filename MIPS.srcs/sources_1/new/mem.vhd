----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/23/2020 10:02:57 PM
-- Design Name: 
-- Module Name: mem - Behavioral
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

entity mem is
  port(
     clk: in std_logic;
     aluRes1: in std_logic_vector(15 downto 0);
     aluRes2: out std_logic_vector(15 downto 0);
     writeData: in std_logic_vector(15 downto 0);
     memWrite: in std_logic;
     memWriteCtrl: in std_logic;
     memData: out std_logic_vector(15 downto 0)
     
  );
       
end mem;

architecture Behavioral of mem is

signal Address: std_logic_vector(3 downto 0);

type ram_type is array (0 to 15) of std_logic_vector(15 downto 0);
signal RAM:ram_type:=(X"000A",X"000B",X"0000",X"0001",X"0002",X"0003",X"0004",X"0005",others =>X"1111");

begin

Address<=ALURes1(3 downto 0);

process(clk) 			
begin
	if(rising_edge(clk)) then
		if MemWriteCtrl='1' then
			if MemWrite='1' then
				RAM(conv_integer(Address))<=WriteData;			
			end if;
		end if;	
	end if;
	MemData<=RAM(conv_integer(Address));
end process;
	
ALURes2<=ALURes1;

end Behavioral;
