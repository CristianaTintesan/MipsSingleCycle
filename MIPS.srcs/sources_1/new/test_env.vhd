----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/23/2020 04:53:48 PM
-- Design Name: 
-- Module Name: test_env - Behavioral
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

entity test_env is
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC_VECTOR (4 downto 0);
           sw : in STD_LOGIC_VECTOR (15 downto 0);
           led : out STD_LOGIC_VECTOR (15 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0);
           cat : out STD_LOGIC_VECTOR (6 downto 0));
end test_env;

architecture Behavioral of test_env is

signal enableNum:std_logic;
signal counter:std_logic_vector(15 downto 0) := (others=>'0');

--Semnale pentru memoria Rom
signal cntROM : std_logic_vector(7 downto 0):="00000000";
type rom_type is array(0 to 255) of std_logic_vector(15 downto 0);
signal rom_out:std_logic_vector(15 downto 0):=x"0000";
signal r:rom_type:=(
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




--Semnale pentru ControlUnit
signal RegDst: std_logic;
signal ExtOp:std_logic;
signal RegWrite:std_logic;
signal ALUsrc: std_logic;
signal branch:std_logic;
signal jump:std_logic;
signal MemWrite:std_logic;
signal MemToReg: std_logic;
signal aluOp: std_logic_vector(2 downto 0);


signal func:std_logic_vector(2 downto 0):="000";
signal wd:std_logic_vector(15 downto 0):=x"0000";
signal rd1:std_logic_vector(15 downto 0):=x"0000";
signal rd2:std_logic_vector(15 downto 0):=x"0000";
signal extimm:std_logic_vector(15 downto 0):=x"0000";
signal sa:std_logic;
signal instr:std_logic_vector(15 downto 0);
signal instr_next:std_logic_vector(15 downto 0);
signal iesire:std_logic_vector(15 downto 0);
signal iesire2:std_logic;

signal jumpAddress: std_logic_vector(15 downto 0);
signal branchAddress: std_logic_vector(15 downto 0);
signal pcSrc: std_logic;
signal reset: std_logic;
signal ALURes: std_logic_vector(15 downto 0);			   
signal ZeroSignal: std_logic;	
signal MemData: std_logic_vector(15 downto 0);	
signal ALUResFinal: std_logic_vector(15 downto 0);
signal ssdAfisare: std_logic_vector(15 downto 0);
signal WriteDataReg: std_logic_vector(15 downto 0);

component mpg is
  port(clk : in STD_LOGIC;
     btn : in STD_LOGIC;
     enable : out STD_LOGIC);
end component;

component ssd is
  port ( clk : in STD_LOGIC;
           an : out STD_LOGIC_VECTOR (3 downto 0);
           cat : out STD_LOGIC_VECTOR (6 downto 0);
           cif : in STD_LOGIC_VECTOR (15 downto 0));
end component;

component instructionFetch is
   Port (  clk : in STD_LOGIC;
           en : in STD_LOGIC;
           jumpAddress : in STD_LOGIC_VECTOR (15 downto 0);
           branchAddress : in STD_LOGIC_VECTOR (15 downto 0);
           jmpS : in STD_LOGIC;
           brS : in STD_LOGIC;
           reset : in STD_LOGIC;
           instr : out STD_LOGIC_VECTOR (15 downto 0);
           next_instr : out STD_LOGIC_VECTOR (15 downto 0));
end component;

component idUnit is
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
end component;

component mem is
  port(
     clk: in std_logic;
     aluRes1: in std_logic_vector(15 downto 0);
     aluRes2: out std_logic_vector(15 downto 0);
     writeData: in std_logic_vector(15 downto 0);
     memWrite: in std_logic;
     memWriteCtrl: in std_logic;
     memData: out std_logic_vector(15 downto 0)
     
  );
end component;

component executionUnit is
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
end component;


begin

process (clk) 
 begin  
 if rising_edge(clk) then
  if enableNum='1' then 
  if sw(0)='1' then
      counter <= counter + '1';   
      else counter<=counter-1;
       end if; 
       end if;
     end if;
    -- led<=counter;
  end process; 
  
  process(cntROM)
 begin
 rom_out<=r(conv_integer(cntROM));
 end process; 
 
 process(enableNum)
 begin
 if rising_edge(clk) then
   if enableNum='1' then 
      cntROM<=cntROM+1;
      end if;
      end if;
      end process;
      
process(instr)
begin
case(instr(15 downto 13)) is
   when "000"=>RegDst<='1';ExtOp<='0';RegWrite<='1';ALUsrc<='0';branch<='0';jump<='0';MemWrite<='0';MemToReg<='0';aluOp<="000";
   when "001"=>RegDst<='0';ExtOp<='1';RegWrite<='1';ALUsrc<='1';branch<='0';jump<='0';MemWrite<='0';MemToReg<='0';aluOp<="001";
   when "010"=>RegDst<='0';ExtOp<='1';RegWrite<='1';ALUsrc<='1';branch<='0';jump<='0';MemWrite<='0';MemToReg<='1';aluOp<="010";
   when "011"=>RegDst<='0';ExtOp<='1';RegWrite<='0';ALUsrc<='1';branch<='0';jump<='0';MemWrite<='1';MemToReg<='0';aluOp<="011";
   when "100"=>RegDst<='0';ExtOp<='1';RegWrite<='0';ALUsrc<='0';branch<='1';jump<='0';MemWrite<='0';MemToReg<='0';aluOp<="100";
   when "101"=>RegDst<='0';ExtOp<='1';RegWrite<='1';ALUsrc<='1';branch<='0';jump<='0';MemWrite<='0';MemToReg<='0';aluOp<="101";
   when "110"=>RegDst<='0';ExtOp<='1';RegWrite<='0';ALUsrc<='0';branch<='1';jump<='0';MemWrite<='0';MemToReg<='0';aluOp<="110";
   when "111"=>RegDst<='X';ExtOp<='1';RegWrite<='0';ALUsrc<='X';branch<='0';jump<='1';MemWrite<='0';MemToReg<='0';aluOp<="111";
  
   end case;

end process;   

iesire <= instr when sw(7)='0' else instr_next;

     
     IFPort:instructionFetch port map(clk, enableNum, jumpAddress, branchAddress,jump,pcSrc,reset,instr,instr_next);
     
      idport : idUnit port map(clk,instr,RegWrite,RegDst,ExtOp,rd1,rd2,wd,extimm,func,sa);
      
      exUnit : executionUnit port map(instr_next,rd1,rd2,extimm,func,sa,ALUsrc,aluOp,branchAddress,aluRes,zeroSignal);
      
      memory : mem port map(clk,aluRes,aluResFinal,rd2,MemWrite, enableNum, MemData); 
     
     mpgport : mpg port map(clk,btn(0),enableNum);
     mpgportmap2 : mpg port map (clk,btn(1),reset);

    afisare: ssd port map(clk,an,cat,ssdAfisare);
    
process(MemToReg,AluResFinal,MemData)
begin
     case(MemToReg) is
           when '1' => WriteDataReg<=MemData;
           when '0' => WriteDataReg<=AluResFinal;
     end case;
end process;

pcSrc<= ZeroSignal and branch;

jumpAddress<= instr_next(15 downto 14) & instr(13 downto 0);  

process(instr_next, instr, rd1, rd2,extimm,aluRes, MemData, WriteDataReg, sw)
begin

    case(sw(7 downto 5)) is
       when "000" => ssdAfisare<=instr_next;
       when "001" => ssdAfisare<=instr;
       when "010" => ssdAfisare<=rd1;
       when "011" => ssdAfisare<=rd2;
       when "100" => ssdAfisare<=extimm;
       when "101" => ssdAfisare<= aluRes;
       when "110" => ssdAfisare<= MemData;
       when "111" => ssdAfisare<=WriteDataReg;
     end case;     
end process; 

process(RegDst, ExtOp,RegWrite,ALUsrc,branch, jump, MemWrite,MemToreg,aluOp,sw,RegWrite)
begin
  if sw(0)='0' then
        led(7)<= RegDst;
        led(6)<=ExtOp;
        led(5)<=RegWrite;
        led(4)<=ALUsrc;
        led(3)<=branch;
        led(2)<=jump;
        led(1)<=MemWrite;
        led(0)<=RegWrite;
    else
        led(2 downto 0)<=aluOp(2 downto 0);
		led(7 downto 3)<="00000";
	end if;
           
          
end process;    
end Behavioral;
