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

-- nouvelle version test
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
    signal is_counting: std_logic := '0';
    signal my_counter: integer := 0;
    signal FINAL_COUNTER_VALUE : unsigned(24 downto 0) := COUNT_VAL;
    
begin 

  process (clk_i, rst_i, start_delay_i)
  begin 
    if (rst_i = '1')then
        end_delay_o <='0'; -- No output on reset
        my_counter <= 0; -- Reset the counter
    else
        if (SHORT_SIM = true) then
            FINAL_COUNTER_VALUE <= COUNT_VAL_SHORT; -- Only useful for simulations
        end if;
        if start_delay_i = '1' then
            is_counting <= '1'; -- Raise flag
        end if;    
        if  rising_edge(clk_i) then
            if is_counting = '1' then
                if (my_counter = FINAL_COUNTER_VALUE) then
                    end_delay_o <='1'; -- Done counting!
                    my_counter <= 0; -- Reset the counter
                    is_counting <= '0'; -- Reset the flag
                 else
                     my_counter <= my_counter +1; -- Increment counter
                     end_delay_o <='0';
                     is_counting <= '1';
                 end if;
             else
                  end_delay_o <='0';   
             end if;   
        end if;
    end if;
  end process;
  
end behavioral;




-- DOES NOT WORK!
-- version raph oumou 30 mars 2020
--entity delay_cnt is
--generic (
--  -- Default is 30M cycles, with a 100MHz clock, which is 300 ms
--  -- This is a VHDL 2008 construct, modify FILE_TYPE property in Vivado
--  SHORT_SIM             : boolean               := false;
--  COUNT_VAL             : unsigned(24 downto 0) := to_unsigned(30000000, 25);
--  COUNT_VAL_SHORT       : unsigned(24 downto 0) := to_unsigned(2, 25)
--);
--port (
--  rst_i                 : in    std_logic;
--  clk_i                 : in    std_logic;
--  start_delay_i         : in    std_logic;
--  end_delay_o           : out   std_logic
--);
--end delay_cnt;



--architecture behavioral of delay_cnt is
--type T_etat is (etat_init, etat_counting, etat_final);
--signal etat_present, etat_suivant : T_etat;
--signal end_delay_present, end_delay_suivant : std_logic := '0';
--signal counter : unsigned(24 downto 0); -- This will count up to 30M
--begin
  
--    end_delay_o <= end_delay_present;
  
--reg_process : process(rst_i, clk_i)
--begin
--	if rst_i='1' then
--		etat_present <= etat_init;
--	elsif clk_i'event and clk_i='1' then
--		etat_present <= etat_suivant;
--		end_delay_present <= end_delay_suivant;
--	end if;
--end process;

--counting_process : process(etat_present, counter)
--begin
--	case etat_present is
--		when etat_init =>
--			counter <= "0000000000000000000000000"; -- reset the counter
			
--			if start_delay_i = '1' then
--			     etat_suivant <= etat_counting;
--			     end_delay_suivant <= '0';
--			else
--			     end_delay_suivant <= '0';
--			     etat_suivant <= etat_init;
--		    end if;
		    
--		when etat_counting =>
--			counter <= counter+1;
--			if counter = COUNT_VAL then
--			   end_delay_suivant <= '1';
--			   etat_suivant <= etat_final;
--			else
--			   end_delay_suivant <= '0';
--			   etat_suivant <= etat_counting;
--			end if;
			
--		when others => --etat_final
--            end_delay_suivant <= '0';
--			etat_suivant <= etat_init;
--	end case;

--end process;
  
--end behavioral;
