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
    signal cnt: integer := 0;
    Signal flag: STD_LOGIC := '0';
begin 
  process (clk_i, rst_i )
  begin 
    if (rst_i = '1')then
        end_delay_o <='0';
    else
        if start_delay_i = '1' then
            flag <= '1';
        end if;    
        if  rising_edge(clk_i) then
            if flag = '1' then
                if (cnt = COUNT_VAL) then
                    end_delay_o <='1';
                    cnt <=0;
                    flag <= '0'; 
                 else
                     cnt <= cnt +1;
                     end_delay_o <='0';
                     flag <= '1';
                 end if;
             else
                  end_delay_o <='0';   
             end if;   
        end if;
    end if;
  end process;
  
end behavioral;





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
