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

type T_etat is (init,
                led0wait1,
                led0wait2,
                led0wait3,
                led1wait1,
                led1wait2,
                led1wait3,
                led2wait1,
                led2wait2,
                led2wait3,
                led3wait1,
                led3wait2,
                led3wait3,
                noLedWait1,
                noLedWait2,
                noLedWait3
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
begin
	case etat_present is
		when init =>
		    if seq_i = "0001" then
		      etat_suivant <= led0wait1;
		      lumi_seq_f <= "0001";
		    elsif seq_i = "0010" then
		      etat_suivant <= led1wait1;
		      lumi_seq_f <= "0010";
		    elsif seq_i = "0100" then
		      etat_suivant <= led2wait1;
		      lumi_seq_f <= "0100";
		    elsif seq_i = "1000" then
		      etat_suivant <= led3wait1;
		      lumi_seq_f <= "1000";
		    else
		      etat_suivant <= noLedwait1;
		      lumi_seq_f <= "0000";
		    end if;

		when led0wait1 =>
		    etat_suivant <= led0wait2;
		    lumi_seq_f <= "0001";
		    
		when led0wait2 =>
		    etat_suivant <= led0wait3;
		    lumi_seq_f <= "0001";
		    
		when led0wait3 =>
		    etat_suivant <= init;
		    lumi_seq_f <= "1111";  
		    
		when led1wait1 =>
		    etat_suivant <= led1wait2;
		    lumi_seq_f <= "0010";
		    
		when led1wait2 =>
		    etat_suivant <= led1wait3;
		    lumi_seq_f <= "0010";
		    
		when led1wait3 =>
		    etat_suivant <= init;
		    lumi_seq_f <= "1111";  
		
		when led2wait1 =>
		    etat_suivant <= led2wait2;
		    lumi_seq_f <= "0100";
		    
		when led2wait2 =>
		    etat_suivant <= led2wait3;
		    lumi_seq_f <= "0100";
		    
		when led2wait3 =>
		    etat_suivant <= init;
		    lumi_seq_f <= "1111"; 
		
		when led3wait1 =>
		    etat_suivant <= led3wait2;
		    lumi_seq_f <= "1000";
		    
		when led3wait2 =>
		    etat_suivant <= led3wait3;
		    lumi_seq_f <= "1000";
		    
		when led3wait3 =>
		    etat_suivant <= init;
		    lumi_seq_f <= "1111";
		    
		when noLedWait1 =>
		    etat_suivant <= noLedWait2;
		    lumi_seq_f <= "0000";
		    
		when noLedWait2 =>
		    etat_suivant <= noLedWait3;
		    lumi_seq_f <= "0000";

		when others => --noLedWait3
            etat_suivant <= init;
            lumi_seq_f <= "1111";
			 
	end case;

end process;
  
end behavioral;
