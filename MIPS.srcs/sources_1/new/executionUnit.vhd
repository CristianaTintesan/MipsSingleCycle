----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/23/2020 09:36:11 PM
-- Design Name: 
-- Module Name: executionUnit - Behavioral
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

entity executionUnit is
  port ( 
      pcout: in std_logic_vector(15 downto 0);
      rd1: in std_logic_vector(15 downto 0);
      rd2: in std_logic_vector(15 downto 0);
      ext_imm: in std_logic_vector(15 downto 0);
      func: in std_logic_vector(2 downto 0);
      sa: in std_logic;
      alusrc: in std_logic;
      aluop: in std_logic_vector(2 downto 0);
      branchAddress: out std_logic_vector(15 downto 0);
      aluRes: out std_logic_vector(15 downto 0);
      zero : out std_logic
      
  );
end executionUnit;

architecture Behavioral of executionUnit is

signal aluIn: std_logic_vector(15 downto 0);
signal aluControl: std_logic_vector( 3 downto 0);
signal ALUResAux:std_logic_vector(15 downto 0);
signal zeroAux: std_logic;

begin

branchAddress<=pcout + ext_imm;

process(aluSrc)
begin
   case (aluSrc) is
     when '0' => aluIn<=rd2;
     when '1' => aluIn<= ext_imm;
   end case;  
end process;


process(aluop,func)
begin
    case(aluop) is 
        when "000"=>
				case (func) is
					when "000"=> aluControl<="0000"; 	    --add
					when "001"=> aluControl<="0001";		--sub
					when "010"=> aluControl<="0010";		--sll
					when "011"=> aluControl<="0011";		--srl
					when "100"=> aluControl<="0100";		--and
					when "101"=> aluControl<="0101";		--or
					when "110"=> aluControl<="0110";		--nand
					when "111"=> aluControl<="0111";		--nor
				end case;  
		when "001"=> ALUControl<="0000";		--addi
		when "010"=> ALUControl<="0000";		--lw
		when "011"=> ALUControl<="0000";		--sw
		when "100"=> ALUControl<="1000";		--beq
		when "101"=> ALUControl<="0001";        --subi
		when "110"=> ALUControl<="1001";		--bne
		
		when "111"=> AluControl<="1111";       --jump
		
	end case;
end process;

process(aluControl,rd1,aluIn,sa)
begin
	case(ALUControl) is
		when "0000" => ALUResAux<=RD1+AluIn;   --add
		when "0001" => ALUResAux<=RD1-AluIn;   --sub
		when "0010" => 				--sll
			case (SA) is
					when '1' => ALUResAux<=RD1(14 downto 0) & "0";
					when others => ALUResAux<=RD1;	
			end case;
		when "0011" => 		--srl
			 case (SA) is
					when '1' => ALUResAux<="0" & RD1(15 downto 1);
					when others => ALUResAux<=RD1;
			 end case;
		when "0100" => ALUResAux<=RD1 and AluIn;		--and
		when "0101" => ALUResAux<=RD1 or AluIn;		    --or
		when "0110" => ALUResAux<=RD1 nand AluIn;		--nand
		when "0111" => AluResAux<= Rd1 xor AluIn;       --xor
		when "1111" => ALUResAux<=X"0000";		        --jump
		when others => ALUResAUx<=X"0000";		-----OTHERS-----
	end case;

	case (ALUResAux) is					-----ZERO SIGNAL-----
		when X"0000" => ZeroAux<='1';
		when others => ZeroAux<='0';
	end case;

end process;	      
      zero<=ZeroAux;			-----ZERO_OUT-----
      ALURes<=ALUResAux;			-----ALU_OUT-----  

end Behavioral;
