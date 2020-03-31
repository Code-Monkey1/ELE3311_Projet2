----------------------------------------------------------------------------------
-- POLYTECHNIQUE MONTREAL
-- ELE3311 - Systemes logiques programmables 
-- 
-- Module Name:    simon_affichage_del_tb 
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


entity simon_affichage_del_tb is
end simon_affichage_del_tb;


architecture bench of simon_affichage_del_tb is

  component simon_affichage_del
  generic (
   SHORT_SIM             : boolean := false
  );
  port (
    rst_n_i               : in    std_logic;
    clk_100mhz_i          : in    std_logic;
    start_game_i          : in    std_logic;
    btn_i                 : in    std_logic_vector(3 downto 0);
    seed_i                : in    std_logic_vector(6 downto 0);
    del_o                 : out   std_logic_vector(7 downto 0)
  );
  end component;

  -- Entrées et sorties du UUT et valeur initiale
  signal rst                  : std_logic;
  signal rst_n                : std_logic;
  signal clk_100mhz           : std_logic;
  signal start_game           : std_logic                     := '0';
  signal btn                  : std_logic_vector (3 downto 0) := (others => '0');
  signal seed                 : std_logic_vector (6 downto 0);
  signal del                  : std_logic_vector (7 downto 0);

  constant clk_period         : time := 10ns;
  signal enable_clk_src       : boolean := true;
  
  
begin

  uut: simon_affichage_del
  generic  map (
    SHORT_SIM               => true
 )
    port map (
    clk_100mhz_i            => clk_100mhz,
    rst_n_i                 => rst_n,
    start_game_i            => start_game,
    btn_i                   => btn,
    seed_i                  => seed,
    del_o                   => del
  );


  -- Reset
  rst_n       <= not rst;
  rst         <= '1', '0' after 52 ns;

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
    
    seed      <= "0000010";
    wait for 5 * clk_period;
    start_game <= '1';
    wait for 5 * clk_period;
    start_game <= '0';

    -- state = wait 2
    wait for 60000000*clk_period; -- Le temps nécessaire pour 2 délais de 300ms (le temps que display_ready devienne 1)
    
    -- state = waitKey
    -- Joue une touche
    wait for 15 * clk_period;
    btn <= "0100";
    wait for 10 * clk_period;
    btn <= "0000"; 
    
    -- state = badKey
    wait for 60000000*clk_period; -- Le temps nécessaire pour 2 délais de 300ms (le temps que display_ready devienne 1)
    
    wait for 5*clk_period;
    start_game <= '1';
    wait for 5 * clk_period;
    start_game <= '0';
    wait for 10*clk_period;

    wait for 60000000*clk_period; -- Le temps nécessaire pour 2 délais de 300ms (le temps que display_ready devienne 1)
    
    -- Joue une touche
    wait for 15 * clk_period;
    btn <= "0001";
    wait for 10 * clk_period;
    btn <= "0000"; -- state = goodKey (?)

    wait for 60000000*clk_period; -- Le temps nécessaire pour 2 délais de 300ms (le temps que display_ready devienne 1)

    -- Joue une touche
    wait for 15 * clk_period;
    btn <= "1000";
    wait for 10 * clk_period;
    btn <= "0000";

    wait for 1000000000 * clk_period;
    -- Arrêter l'horloge pour terminer la simulation automatiquement
    enable_clk_src <= false;
    wait;
  end process;
  
  
end;
