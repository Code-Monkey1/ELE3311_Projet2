----------------------------------------------------------------------------------
-- POLYTECHNIQUE MONTREAL
-- ELE3311 - Systemes logiques programmables 
-- 
-- Module Name:    heartbeat 
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

entity heartbeat is
generic (
  -- A 2 Hz heartbeat with 50% duty cycle on a 100 MHz clock
  -- This is a VHDL 2008 construct, modify FILE_TYPE property in Vivado
  COUNT_VAL             : unsigned(26 downto 0) := resize(d"25000000", 27)
);
port (
  clk_i                 : in    std_logic;
  heartbeat_o           : out   std_logic
);
end heartbeat;


architecture behavioral of heartbeat is

  signal clk                   : std_logic;

  signal delay_cnt_p           : unsigned(26 downto 0)  := (others => '0');
  signal heartbeat_p           : std_logic              := '0';

  signal delay_cnt_f           : unsigned(26 downto 0);
  signal heartbeat_f           : std_logic;

begin
  clk <= clk_i;


  REGISTERED: process(clk)
  begin
    if rising_edge(clk) then
      delay_cnt_p   <= delay_cnt_f;
      heartbeat_p   <= heartbeat_f;
    end if;
  end process;


  COMBINATORIAL: process(delay_cnt_p, heartbeat_p)
  begin
    if delay_cnt_p = 0 then
      delay_cnt_f <= COUNT_VAL;
      -- toggle heartbeat
      heartbeat_f   <= not heartbeat_p;
    else
      delay_cnt_f   <= delay_cnt_p - 1;
      heartbeat_f   <= heartbeat_p;
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- Assign outputs
  ----------------------------------------------------------------------------
  heartbeat_o           <= heartbeat_p;


end behavioral;
