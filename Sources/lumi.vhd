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

-- 2 Versions Raph en state machine:

type T_etat is (init, -- 4 états possibles
                wait1,
                wait2,
                wait3
                );
                
signal etat_present, etat_suivant : T_etat;
signal lumi_seq_p, lumi_seq_f : std_logic_vector(WIDTH-1 downto 0) := "0000";


begin

lumi_seq_o <= lumi_seq_p;
  
reg_process : process(clk_i)
begin
    if rising_edge(clk_i) then
		etat_present <= etat_suivant;
		lumi_seq_p <= lumi_seq_f;
	end if;
end process;

lumi_msa_process : process(
                             etat_present,
                             seq_i)
                             
-- Version Raph petite MSA:                             
 begin
	case etat_present is
		when init => -- Tout est allumé dans cet état pour avoir au minimum 25% du temps allumé
		    etat_suivant <= wait1;
		    lumi_seq_f <= seq_i;

		when wait1 => -- 
		    etat_suivant <= wait2;
		    lumi_seq_f <= seq_i;
		    
		when wait2 =>
		    etat_suivant <= wait3;
		    lumi_seq_f <= seq_i;

		when others => -- wait3
            etat_suivant <= init;
            lumi_seq_f <= "1111";
			 
	end case;

end process;
  
end behavioral;      
    

