----------------------------------------------------------------------------------
-- POLYTECHNIQUE MONTREAL
-- ELE3311 - Systemes logiques programmables 
-- 
-- Module Name:    lumi 
-- Description: 
--
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with signed or unsigned values
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lumi is
generic (
  -- La luminosité est défini par le nombre de cycles actifs
  -- La valeur par défault (4) indique une luminosité nominale de 25%
  -- soit 4 cycles actif sur 16 cycles d'horloge au total
  -- This is a VHDL 2008 construct, modify FILE_TYPE property in Vivado
  RATIO_16             : unsigned(3 downto 0) := X"4";
  WIDTH                : integer              := 4
);
port (
  clk_i                 : in    std_logic;
  seq_i                 : in    std_logic_vector(WIDTH-1 downto 0);
  lumi_seq_o            : out   std_logic_vector(WIDTH-1 downto 0)
);
end lumi;


architecture behavioral of lumi is
begin
  
  --#############
  -- À compléter
  
end behavioral;
