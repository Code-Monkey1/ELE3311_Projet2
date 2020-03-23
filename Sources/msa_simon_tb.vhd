----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2020 03:15:51 PM
-- Design Name: 
-- Module Name: msa_simon_tb - Behavioral
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

entity msa_simon_tb is
end msa_simon_tb;

architecture Behavioral of msa_simon_tb is

component msa_simon
port (
  rst_i                 : in    std_logic;
  clk_i                 : in    std_logic;
  start_game_i          : in    std_logic;
  next_prbs_o           : out   std_logic;
  load_prbs_o           : out   std_logic;
  key_pressed_i         : in    std_logic;
  key_correct_i         : in    std_logic;
  ms_player_o           : out   std_logic;
  ms_gameover_o         : out   std_logic;
  ms_digit_valid_o      : out   std_logic;
  display_ready_i       : in    std_logic;
  seq_length_1_o        : out   std_logic;
  seq_length_inc_o      : out   std_logic;
  item_cnt_rst_o        : out   std_logic;
  item_cnt_inc_o        : out   std_logic
);
end msa_simon;
end component;

component cnt is
  generic (
  WIDTH                 : integer := 8
  );
		 port (
		  clk_i                 : in    std_logic;
		  inc_i                 : in    std_logic;
		  rst_i                 : in    std_logic;
		  set_1_i               : in    std_logic;
		  cnt_o                 : out   std_logic_vector(WIDTH-1 downto 0)
		);
end component;


  -- Entr�es et sorties du UUT et valeur initiale
  signal clk_100mhz           : std_logic;
  signal seed                 : std_logic_vector (6 downto 0) := "0001011"; -- Test seed is eleven (November <3 )
  signal load_prbs           : std_logic := '0';
  signal next_prbs           : std_logic := '0';
  signal digit : std_logic_vector(1 downto 0) := "00";
  

 signal key_pressed        : std_logic;
 signal key_correct        : std_logic;
 signal seq_length_1       : std_logic;
 signal seq_length         : std_logic_vector(7 downto 0);
 signal display_ready      : std_logic;
 signal rst                : std_logic;
 signal clk                : std_logic;
 signal start_game         : std_logic;
 
 signal  seq_length_inc    :    std_logic;
 signal item_cnt_rst       :    std_logic;
 signal item_cnt_inc       :    std_logic;
 signal  item_cnt          :    std_logic_vector(7 downto 0);
 signal  ms_player         :    std_logic;
 signal ms_gameover        :    std_logic;
 signal ms_digit_valid     :    std_logic;

  
  begin
uut: msa_simon
-- A gauche les signaux de l'autre fichier a tester (msa_simon.vhd).
-- A droite, les signaux internes de ce fichier
port map 
(
 seq_length_1_o => seq_length_1,     
 seq_length_inc_o  => seq_length_inc,    
 seq_length_i   => seq_length,     
 item_cnt_rst_o  => item_cnt_rst,      
 item_cnt_inc_o  => item_cnt_inc,    
 rst_i =>rst,                
 clk_i  =>clk,               
 start_game_i =>start_game,         
 next_prbs_o   =>next_prbs,        
 load_prbs_o    =>load_prbs,      
 key_pressed_i  =>key_pressed,   
 key_correct_i   => key_correct,     
 item_cnt_i     => item_cnt,      
 ms_player_o    => ms_player,     
 ms_gameover_o    => ms_gameover,    
 ms_digit_valid_o => ms_digit_valid,     
 display_ready_i   => display_ready
 );

     -- Clock period definitions
  constant clk_period         : time := 10ns;
  signal enable_clk_src       : boolean := true;
  

  item_counter: cnt
  generic (
  WIDTH                 : integer := 8
  )
	port map
	(
	  clk_i     => clk,            
	  rst_i     => item_cnt_rst ,          
	  set_1_i   => '0',          
	  inc_i     => item_cnt_inc,        
	  cnt_o     => item_cnt          
	);
	
  sequence_counter: cnt
  generic (
  WIDTH                 : integer := 8
  )
	port map
	(
	  clk_i     => clk,            
	  rst_i     => '0',          
	  set_1_i   => seq_length_1 ,          
	  inc_i     => seq_length_inc,        
	  cnt_o     => seq_length         
	);

  ------- Clock
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
    
  rst <= '1';
  
	wait for clk_period*2;
	
    seed      <= "1001011";

	---------------OUMOU-----------------------
  
       --------Reset-------
       rst <= '1', '0' after 80ns;
      ----------------------
  
  start_game <= '0';
  display_ready <='0';
           
	
    wait for 60 ns;
	-- On the first run, lose the game
  start_game <= '1';
  display_ready <='0';

    wait for 4 * clk_period; 
  
  start_game <= '1';
  display_ready <='1';
    wait for  2 * clk_period;
  display_ready <='0';
  start_game<='0';
    wait for  5 * clk_period;
  display_ready <='1';
  key_pressed<='0';
  key_correct<='0';
    wait for 5 * clk_period;
  display_ready <='0';
  key_pressed<='1';
  key_correct<='0';

    wait for 7 * clk_period;

  display_ready <='1';

    wait for 1 * clk_period;

  display_ready <='0';

  -- On the second run, succeed 
    wait for 4 * clk_period;
  start_game <= '1';
    wait for 3 * clk_period;
  start_game <= '0';
  display_ready <='1';
    wait for 2 * clk_period;
  display_ready <='0';  
    wait for 5 * clk_period;
  display_ready <='0';
    wait for 4 * clk_period; 
  display_ready <='1';
    wait for 3 * clk_period; 
  display_ready <= '0';
  key_pressed <= '1';
  key_correct <= '1';

    wait for 4 * clk_period; -- Here we are at good key state
  key_pressed <='0';
  key_correct <= '0';
  display_ready <= '1';
    wait for 1 * clk_period; 
  display_ready <= '0';

    wait for 9 * clk_period; 
  display_ready <= '1'; -- Here we are at wait1 state
    wait for 2 * clk_period; 
  display_ready <= '0';
    wait for 6 * clk_period; 
  display_ready <= '1'; -- Here we are at wait1 state
    wait for 2 * clk_period; 
  display_ready <= '0';
    wait for 6 * clk_period; 
  display_ready <= '1'; -- Land on wait key state
    wait for 3 * clk_period;
  display_ready <= '0'; 
  key_pressed <='1';
  key_correct <= '0';
    wait for 6 * clk_period; 
  display_ready <= '1';
    wait for 1 * clk_period; 
  display_ready <= '0';
    wait for 10 * clk_period;
    -- Arrêter l'horloge pour terminer la simulation automatiquement
    enable_clk_src <= false;
    wait;
  end process;
  




end Behavioral;

