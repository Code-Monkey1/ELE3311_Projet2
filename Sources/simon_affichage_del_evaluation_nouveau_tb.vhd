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


entity simon_affichage_del_evaluation_nouveau_tb is
end simon_affichage_del_evaluation_nouveau_tb;


architecture bench of simon_affichage_del_evaluation_nouveau_tb is

  component simon_affichage_del
  generic (
    SHORT_SIM             : boolean := true
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
    -- Attendre la fin du reset
    seed      <= "1001000"; -- À modifier
    wait for 13 * clk_period;
    
    report "Debuter une premiere partie. seed = " & to_hstring(seed);
    start_game <= '1';
    
    wait on del(3 downto 0) until del(3 downto 0) = "0001" for 100 * clk_period;
    assert del(3 downto 0) = "0001" report "Error PRBS7 output" severity error;
    wait on del(6) until del(6) = '1' for 100 * clk_period;
    assert del(6) = '1' report "Error Md_player_o value" severity error;
    
    start_game <= '0' ;
    wait for 200 * clk_period;
    
    -- Seq 1
    assert del(6) = '1' report "Error player mode output seq 1" severity error;
    btn(0) <= '1';    
    wait on del(3 downto 0) until del(3 downto 0) = "0001" for 100 * clk_period;
    assert del(3 downto 0) = "0001" report "Error Encoder seq 1" severity error;
    wait for 20 * clk_period;
    btn(0) <= '0';    
    
    assert del(6) = '0' report "Error generation mode output seq 1" severity error;
    wait for 500 * clk_period;
    
    -- Seq 2
    assert del(6) = '1' report "Error player mode output seq 2" severity error;
    btn(0) <= '1';   
    wait on del(3 downto 0) until del(3 downto 0) = "0001" for 100 * clk_period;
    assert del(3 downto 0) = "0001" report "Error Encoder seq 2" severity error; 
    wait for 20 * clk_period;  
    btn(0) <= '0';
    wait for 200 * clk_period;
    
    btn(2) <= '1';
    wait on del(3 downto 0) until del(3 downto 0) = "0100" for 100 * clk_period;
    assert del(3 downto 0) = "0100" report "Error Encoder seq 2" severity error;     
    wait for 20 * clk_period;
    btn(2) <= '0';   

    assert del(6) = '0' report "Error generation mode output seq 2" severity error;
    wait for 500 * clk_period;
    
    -- Seq 3
    assert del(6) = '1' report "Error player mode output seq 3" severity error;
    btn(0) <= '1';
    wait on del(3 downto 0) until del(3 downto 0) = "0001" for 100 * clk_period;
    assert del(3 downto 0) = "0001" report "Error Encoder seq 3" severity error;
    wait for 20 * clk_period;
    btn(0) <= '0';
    wait for 200 * clk_period;
    
    btn(2) <= '1';
    wait on del(3 downto 0) until del(3 downto 0) = "0100" for 100 * clk_period;
    assert del(3 downto 0) = "0100" report "Error Encoder seq 3" severity error;   
    wait for 20 * clk_period;
    btn(2) <= '0';
    wait for 200 * clk_period;

    btn(3) <= '1';
    wait on del(3 downto 0) until del(3 downto 0) = "1000" for 100 * clk_period;
    assert del(3 downto 0) = "1000" report "Error Encoder seq 3" severity error; 
    wait for 20 * clk_period;
    btn(3) <= '0';
   
    assert del(6) = '0' report "Error generation mode output seq 3" severity error;
    wait for 500 * clk_period;

    -- Seq 4
    assert del(6) = '1' report "Error player mode output" severity error;
    btn(0) <= '1', '0' after 50 * clk_period;
    wait for 500 * clk_period;
    
    -- Seq 4 erreur
    btn(0) <= '1', '0' after 50 * clk_period;
    wait for 500 * clk_period;
    assert del(5) = '1' report "Error Md_gameover output" severity error;

    report "Debuter une nouvelle partie. seed = " & to_hstring(seed);
    start_game <= '1', '0' after 50 * clk_period;
    wait for 200 * clk_period;

    btn(3) <= '1', '0' after 50 * clk_period;
    wait for 200 * clk_period;

    wait for 500 * clk_period;
    report "Fin de la simulation.";
    -- Arrêter l'horloge pour terminer la simulation automatiquement
    enable_clk_src <= false;
    wait;
    
  end process;
  
  
end;
