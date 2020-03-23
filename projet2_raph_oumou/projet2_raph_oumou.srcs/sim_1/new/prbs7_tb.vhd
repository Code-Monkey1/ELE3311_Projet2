----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2020 03:15:51 PM
-- Design Name: 
-- Module Name: prbs7_tb - Behavioral
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

entity prbs7_tb is
end prbs7_tb;

architecture Behavioral of prbs7_tb is

component prbs7
  Port (
      
      clk_i          : in    std_logic;
      seed_i                : in    std_logic_vector(6 downto 0);
      load_prbs_i           : in    std_logic;
      next_prbs_i           : in    std_logic;
      digit_o               : out   std_logic_vector(1 downto 0)
   );
end component;

  -- Entr�es et sorties du UUT et valeur initiale
  signal clk_100mhz           : std_logic;
  signal seed                 : std_logic_vector (6 downto 0) := "0000000"; -- Test seed is eleven (November <3 )
  signal load_prbs           : std_logic := '0';
  signal next_prbs           : std_logic := '0';
  signal digit : std_logic_vector(1 downto 0) := "00";
  
     -- Clock period definitions
  constant clk_period         : time := 10ns;
  signal enable_clk_src       : boolean := true;
  
begin


-- A gauche les signaux de l'autre fichier a tester (prbs7.vhd).
-- A droite, les signaux internes de ce fichier
  uut: prbs7
  port map (
    clk_i            => clk_100mhz,
    seed_i                  => seed,
    next_prbs_i             => next_prbs,
    load_prbs_i            => load_prbs,
    digit_o                 => digit
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
    
    seed      <= "1001011";
    
	next_prbs <= '0';
	load_prbs <= '0';
	
    wait for clk_period*10;

	next_prbs <= '1';
	load_prbs <= '0';
	
    wait for clk_period*2;

	next_prbs <= '0';
	load_prbs <= '0';
	
    wait for clk_period*10;

	next_prbs <= '0';
	load_prbs <= '0';
	
    wait for clk_period*10;

	next_prbs <= '0';
	load_prbs <= '1';
	
    wait for clk_period*10;

	next_prbs <= '0';
	load_prbs <= '0';
	
    wait for clk_period*10;

	next_prbs <= '1';
	load_prbs <= '0';
	
    wait for clk_period*2;

	next_prbs <= '0';
	load_prbs <= '0';
	
    wait for clk_period*10;

	next_prbs <= '1';
	load_prbs <= '0';
	
    wait for clk_period*2;

	next_prbs <= '0';
	load_prbs <= '0';
	
	wait for clk_period*2;

	next_prbs <= '0';
	load_prbs <= '0';
	
    wait for clk_period*10;

	next_prbs <= '1';
	load_prbs <= '0';
	
    wait for clk_period*2;

	next_prbs <= '0';
	load_prbs <= '0';
	
    wait for clk_period*10;

	next_prbs <= '0';
	load_prbs <= '1';
	
    wait for clk_period*10;

	next_prbs <= '0';
	load_prbs <= '0';

    wait for 50 * clk_period;
    -- Arrêter l'horloge pour terminer la simulation automatiquement
    enable_clk_src <= false;
    wait;
  end process;
  




end Behavioral;

