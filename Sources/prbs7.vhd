----------------------------------------------------------------------------------
-- POLYTECHNIQUE MONTREAL
-- ELE3311 - Systemes logiques programmables 
-- 
-- Module Name:    prbs7 
-- Description: 
--
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with signed or unsigned values
--use IEEE.numeric_std.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity prbs7 is
port (
  clk_i                 : in    std_logic;
  load_prbs_i           : in    std_logic;
  next_prbs_i           : in    std_logic;
  seed_i                : in    std_logic_vector(6 downto 0);
  digit_o               : out   std_logic_vector(1 downto 0)
);
end prbs7;


architecture behavioral of prbs7 is
type T_etat is (etat_read_seed, etat_attente, etat_generate_new_output);
signal etat_present, etat_suivant : T_etat := etat_attente;
signal seed : std_logic_vector(6 downto 0) := "0000000"; --A saved copy of the seed used to generate random bits
begin
  
reg_process : process(clk_i)
begin
	if clk_i'event and clk_i='1' then
		etat_present <= etat_suivant;
	end if;
end process;

pseudo_random_msa_process : process(
                                     etat_present,
                                     load_prbs_i,
                                     next_prbs_i, 
                                     seed_i,
                                     seed)
begin
	case etat_present is
		when etat_read_seed =>
		    seed <= seed_i;
			etat_suivant <= etat_attente;
			
		    digit_o(0) <= seed(0);
		    digit_o(1) <= seed(1);
		    
		when etat_generate_new_output => -- For every "next = 1", we shift and do the XOR once.
		    
		    seed <= seed(5 downto 0) & (seed(6) XOR seed(5)); -- Right shift (with rotation) and XOR :-)
		    
		    if load_prbs_i = '1' then -- Load is more important than next if they are both true
		          etat_suivant <= etat_read_seed;
		    elsif next_prbs_i = '1' then
		          etat_suivant <= etat_generate_new_output;
		    else
		          etat_suivant <= etat_attente;
		    end if;
		    
		    digit_o(0) <= seed(0);
		    digit_o(1) <= seed(1);

		when others => --etat_attente
		     if load_prbs_i = '1' then
		          etat_suivant <= etat_read_seed;
		     elsif next_prbs_i = '1' then
		          etat_suivant <= etat_generate_new_output;
		     else
		          etat_suivant <= etat_attente;
			 end if;
			 
			digit_o(0) <= seed(0);
		    digit_o(1) <= seed(1); 
			 
	end case;

end process;
  
end behavioral;
