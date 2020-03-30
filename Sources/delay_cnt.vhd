----------------------------------------------------------------------------------
-- POLYTECHNIQUE MONTREAL
-- ELE3311 - Systemes logiques programmables 
-- 
-- Module Name:    delay_cnt 
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

entity delay_cnt is
generic (
  -- Default is 30M cycles, with a 100MHz clock, which is 300 ms
  -- This is a VHDL 2008 construct, modify FILE_TYPE property in Vivado
  SHORT_SIM             : boolean               := false;
  COUNT_VAL             : unsigned(24 downto 0) := to_unsigned(30000000, 25);
  COUNT_VAL_SHORT       : unsigned(24 downto 0) := to_unsigned(2, 25)
);
port (
  rst_i                 : in    std_logic;
  clk_i                 : in    std_logic;
  start_delay_i         : in    std_logic;
  end_delay_o           : out   std_logic
);
end delay_cnt;



architecture behavioral of delay_cnt is
type T_etat is (etat_init, etat_counting, etat_final);
signal etat_present, etat_suivant : T_etat := etat_init;
signal counter : unsigned(24 downto 0) := "0000000000000000000000000"; -- This will count up to 30M
begin
  
reg_process : process(rst_i, clk_i)
begin
	if rst_i='1' then
		etat_present <= etat_init;
	elsif clk_i'event and clk_i='1' then
		etat_present <= etat_suivant;
	end if;
end process;

counting_process : process(etat_present, counter)
begin
	case etat_present is
		when etat_init =>
			end_delay_o <= '0';
			counter <= "0000000000000000000000000"; -- reset the counter
			
			if start_delay_i = '1' then
			     etat_suivant <= etat_counting;
			else
			     etat_suivant <= etat_init;
		    end if;
		    
		when etat_counting =>
			end_delay_o <= '0';
			counter <= counter+1;
			if counter = COUNT_VAL then
			   etat_suivant <= etat_final;
			else
			   etat_suivant <= etat_counting;
			end if;
			
		when others => --etat_final
            end_delay_o <= '1';
			etat_suivant <= etat_init;
			counter <= "0000000000000000000000000"; -- reset the counter
	end case;

end process;
  
end behavioral;
