----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/25/2020 06:02:24 PM
-- Design Name: 
-- Module Name: delay_cnt_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity delay_cnt_tb is
--  Port ( );
end delay_cnt_tb;

architecture Behavioral of delay_cnt_tb is

component delay_cnt
port (
  rst_i                 : in    std_logic;
  clk_i                 : in    std_logic;
  start_delay_i         : in    std_logic;
  end_delay_o           : out   std_logic
);
end component;

  -- Entr�es et sorties du UUT et valeur initiale
  signal clk_100mhz           : std_logic := '0';
  signal start_delay          : std_logic := '0';
  signal end_delay            : std_logic := '0';
  signal reset                : std_logic := '0';
  
     -- Clock period definitions
  constant clk_period         : time := 10ns;
  signal enable_clk_src       : boolean := true;

begin


-- A gauche les signaux de l'autre fichier a tester (delay_cnt.vhd).
-- A droite, les signaux internes de ce fichier
  uut: delay_cnt
  port map (
    rst_i               => reset,
    clk_i               => clk_100mhz,
    start_delay_i       => start_delay,
    end_delay_o         => end_delay
  );

  -- Clock
  clocking: process
  begin
    while enable_clk_src loop
      clk_100mhz <= '0', '1' after clk_period / 2;
      wait for clk_period;
    end loop;
    wait;
  end process;

  ------------------------------------------------------------------------------
  -- Definir la sequence d'entrées pour exercer la fonctionalité du système
  stimulus: process
  begin

    reset <= '1';
    wait for clk_period*2;

    reset <= '0';
    
    wait for clk_period*2;
    
    start_delay <= '1';
    
    wait for 2 * clk_period;
    
    start_delay <= '0';
    
    wait for 9999 * clk_period;
    
    start_delay <= '1';
    
    wait for 10 * clk_period;
    
    start_delay <= '0';
    
    wait for 2000000000 * clk_period;
    
    -- Arrêter l'horloge pour terminer la simulation automatiquement
    enable_clk_src <= false;
    wait;
  end process;


end Behavioral;

















