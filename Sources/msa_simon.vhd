----------------------------------------------------------------------------------
-- POLYTECHNIQUE MONTREAL
-- ELE3311 - Systemes logiques programmables 
-- 
-- Module Name:    msa_simon 
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


entity msa_simon is
port (
-- inputs
  rst_i                 : in    std_logic;
  clk_i                 : in    std_logic;
  start_game_i          : in    std_logic;
  key_pressed_i         : in    std_logic;
  key_correct_i         : in    std_logic;
  display_ready_i       : in    std_logic;
  item_cnt_i            : in    std_logic_vector(7 downto 0);
  seq_length_i          : in    std_logic_vector(7 downto 0);
  
  -- outputs
  seq_length_1_o        : out   std_logic;
  seq_length_inc_o      : out   std_logic;
  item_cnt_rst_o        : out   std_logic;
  item_cnt_inc_o        : out   std_logic;
  ms_player_o           : out   std_logic;
  ms_gameover_o         : out   std_logic;
  ms_digit_valid_o      : out   std_logic;
  next_prbs_o           : out   std_logic;
  load_prbs_o           : out   std_logic
  
);
end msa_simon;

architecture behavioral of msa_simon is

type T_etat is (init,
                wait_for_start,
                start_instr,
                wait1,
                wait2,
                wait_key,
                increment_item,
                compare,
                next_1_instr,
                next_2_instr,
                prepare_to_play,
                bad_key,
                show_gameover,
                good_key,
                next_item,
                success,
                next_1_play,
                next_2_play,
                start_new_round);
                
signal etat_present, etat_suivant : T_etat;

-- Present outputs
  signal seq_length_1_p       :    std_logic := '0';
  signal seq_length_inc_p     :    std_logic := '0';
  signal item_cnt_rst_p       :    std_logic := '0';
  signal item_cnt_inc_p       :    std_logic := '0';
  signal ms_player_p          :    std_logic := '0';
  signal ms_gameover_p        :    std_logic := '0';
  signal ms_digit_valid_p     :    std_logic := '0';
  signal next_prbs_p          :    std_logic := '0';
  signal load_prbs_p          :    std_logic := '0';

-- Futur outputs
  signal seq_length_1_f       :    std_logic := '0';
  signal seq_length_inc_f     :    std_logic := '0';
  signal item_cnt_rst_f       :    std_logic := '0';
  signal item_cnt_inc_f       :    std_logic := '0';
  signal ms_player_f          :    std_logic := '0';
  signal ms_gameover_f        :    std_logic := '0';
  signal ms_digit_valid_f     :    std_logic := '0';
  signal next_prbs_f          :    std_logic := '0';
  signal load_prbs_f          :    std_logic := '0';

  

begin

-- Association des signaux internes aux sorties:
seq_length_1_o       <= seq_length_1_p;
seq_length_inc_o     <= seq_length_inc_p;
item_cnt_rst_o       <= item_cnt_rst_p;
item_cnt_inc_o       <= item_cnt_inc_p;
ms_player_o          <= ms_player_p;
ms_gameover_o        <= ms_gameover_p;
ms_digit_valid_o     <= ms_digit_valid_p;
next_prbs_o          <= next_prbs_p;
load_prbs_o          <= load_prbs_p;

-- Processus qui gère le reset et les changements d'états présent par coup d'horloge
reg_process : process(clk_i, rst_i)
begin
    if rst_i = '1' then
          etat_present <= init;
          seq_length_1_p       <= '0';
          seq_length_inc_p     <= '0';
          item_cnt_rst_p       <= '0';
          item_cnt_inc_p       <= '0';
          ms_player_p          <= '0';
          ms_gameover_p        <= '0';
          ms_digit_valid_p     <= '0';
          next_prbs_p          <= '0';
          load_prbs_p          <= '0';
	elsif rising_edge(clk_i) then
		  etat_present <= etat_suivant;
		  -- for every output, affect the futur to the present
          seq_length_1_p       <= seq_length_1_f;
          seq_length_inc_p     <= seq_length_inc_f;
          item_cnt_rst_p       <= item_cnt_rst_f;
          item_cnt_inc_p       <= item_cnt_inc_f;
          ms_player_p          <= ms_player_f;
          ms_gameover_p        <= ms_gameover_f;
          ms_digit_valid_p     <= ms_digit_valid_f;
          next_prbs_p          <= next_prbs_f;
          load_prbs_p          <= load_prbs_f;
	end if;
end process;

-- La MSA qui gère le coeur du jeu
msa_game_process : process(
                            clk_i,
                            rst_i, 
                            start_game_i, 
                            key_pressed_i, 
                            key_correct_i, 
                            display_ready_i, 
                            etat_present,
                            item_cnt_i,
                            seq_length_i,
                            seq_length_1_p,
                            seq_length_inc_p,
                            item_cnt_rst_p,
                            item_cnt_inc_p,
                            ms_player_p,
                            ms_gameover_p,
                            ms_digit_valid_p,
                            next_prbs_p,
                            load_prbs_p,
                            etat_present)
begin
    case etat_present is
        when init => -- Init vient du reset ou du gameover
                etat_suivant <= wait_for_start;
                seq_length_1_f       <= '1';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '1';
                item_cnt_inc_f       <= '0';
                ms_player_f          <= '1'; -- montre au joueur qu'on l'attend
                ms_digit_valid_f     <= '0';
                next_prbs_f          <= '0';
                load_prbs_f          <= '0';
                
                -- On ne remet pas le gameover à zéro, car gameover doit être afficher jusqu'à ce que le joueur recommence une partie à moins que la MSA vient de commencer
                if (ms_gameover_p = '1') then
                    ms_gameover_f <= '1';
                else
                    ms_gameover_f <= '0';
                end if;
                
                
        when wait_for_start => -- attend l'entrée du joueur
            if start_game_i = '0' then
                etat_suivant <= wait_for_start;
                seq_length_1_f       <= '1';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '1';
                item_cnt_inc_f       <= '0';
                ms_player_f          <= '1'; -- montre au joueur qu'on l'attend
                
                -- On ne remet pas le gameover à zéro, car gameover doit être afficher jusqu'à ce que le joueur recommence une partie à moins que la MSA vient de commencer
                if (ms_gameover_p = '1') then
                    ms_gameover_f <= '1';
                else
                    ms_gameover_f <= '0';
                end if;
                
                
                ms_digit_valid_f     <= '0';
                next_prbs_f          <= '0';
                load_prbs_f          <= '0';
             else
                etat_suivant <= start_instr;
                seq_length_1_f       <= '0';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '1';
                item_cnt_inc_f       <= '0';
                ms_player_f          <= '0';
                ms_gameover_f        <= '0'; -- On reset gameover si on commence une nouvelle partie
                ms_digit_valid_f     <= '0';
                next_prbs_f          <= '0';
                load_prbs_f          <= '1';
              end if;
              
        when  start_instr => -- Commence à montrer la(les) LED(s) que le joueur doit mémoriser
             seq_length_1_f       <= '0';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '0';
                item_cnt_inc_f       <= '0';
                ms_player_f          <= '0';
                ms_gameover_f        <= '0';
                ms_digit_valid_f     <= '0';
                next_prbs_f          <= '0';
                load_prbs_f          <= '0';
             etat_suivant <= wait1;
             
        when wait1 => -- Attend display_ready
           if  display_ready_i = '1' then
               etat_suivant <= increment_item;
               seq_length_1_f       <= '0';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '0';
                item_cnt_inc_f       <= '1';
                ms_player_f          <= '0';
                ms_gameover_f        <= '0';
                ms_digit_valid_f     <= '1';
                next_prbs_f          <= '0';
                load_prbs_f          <= '0';
           else 
               etat_suivant <= wait1;
               seq_length_1_f       <= '0';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '0';
                item_cnt_inc_f       <= '0';
                ms_player_f          <= '0';
                ms_gameover_f        <= '0';
                ms_digit_valid_f     <= '0';
                next_prbs_f          <= '0';
                load_prbs_f          <= '0';
            end if;
            
        when increment_item => -- Incrémente le compteur d'item pour parcourir tout les items de la séquence
                seq_length_1_f       <= '0';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '0';
                item_cnt_inc_f       <= '0';
                ms_player_f          <= '0';
                ms_gameover_f        <= '0';
                ms_digit_valid_f     <= '0';
                next_prbs_f          <= '0';
                load_prbs_f          <= '0';
                etat_suivant <= compare;
        when compare  => -- Check pour voir si on a fini de montrer les instructions
           if item_cnt_i = seq_length_i then
              etat_suivant <=  prepare_to_play;
              seq_length_1_f       <= '0';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '1';
                item_cnt_inc_f       <= '0';
                ms_player_f          <= '0';
                ms_gameover_f        <= '0';
                ms_digit_valid_f     <= '0';
                next_prbs_f          <= '0';
                load_prbs_f          <= '1';
           else
              etat_suivant <= next_1_instr;
              seq_length_1_f       <= '0';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '0';
                item_cnt_inc_f       <= '0';
                ms_player_f          <= '0';
                ms_gameover_f        <= '0';
                ms_digit_valid_f     <= '0';
                next_prbs_f          <= '1';
                load_prbs_f          <= '0';
			end if;
		
		When next_1_instr => -- 1er shift du prbs7
              seq_length_1_f       <= '0';
            seq_length_inc_f     <= '0';
            item_cnt_rst_f       <= '0';
            item_cnt_inc_f       <= '0';
            ms_player_f          <= '0';
            ms_gameover_f        <= '0';
            ms_digit_valid_f     <= '0';
            next_prbs_f          <= '1';
            load_prbs_f          <= '0';
			  etat_suivant <=next_2_instr;
			  
		When next_2_instr =>  -- 2ieme shift du prbs7
			seq_length_1_f       <= '0';
            seq_length_inc_f     <= '0';
            item_cnt_rst_f       <= '0';
            item_cnt_inc_f       <= '0';
            ms_player_f          <= '0';
            ms_gameover_f        <= '0';
            ms_digit_valid_f     <= '0';
            next_prbs_f          <= '0';
            load_prbs_f          <= '0';
            etat_suivant <= wait1;
 
		When prepare_to_play => -- Reset le compteur d'item avant de jouer et reload le prbs7
			etat_suivant <= wait2;
			seq_length_1_f       <= '0';
            seq_length_inc_f     <= '0';
            item_cnt_rst_f       <= '0';
            item_cnt_inc_f       <= '0';
            ms_player_f          <= '0';
            ms_gameover_f        <= '0';
            ms_digit_valid_f     <= '0';
            next_prbs_f          <= '0';
            load_prbs_f          <= '0';
		
		When wait2 => -- Attend que l'affichage soit prêt
			if display_ready_i = '1' then
			    seq_length_1_f       <= '0';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '0';
                item_cnt_inc_f       <= '0';
                ms_player_f          <= '1';
                ms_gameover_f        <= '0';
                ms_digit_valid_f     <= '0';
                next_prbs_f          <= '0';
                load_prbs_f          <= '0';
				etat_suivant <= wait_key;
			else
				etat_suivant <= wait2;
                seq_length_1_f       <= '0';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '0';
                item_cnt_inc_f       <= '0';
                ms_player_f          <= '0';
                ms_gameover_f        <= '0';
                ms_digit_valid_f     <= '0';
                next_prbs_f          <= '0';
                load_prbs_f          <= '0';
			end if;
		
		when wait_key => -- Montre au joueur qu'on est prêt à jouer

			if (key_pressed_i = '1') and (key_correct_i = '0') then
				etat_suivant <= bad_key;
				seq_length_1_f       <= '0';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '0';
                item_cnt_inc_f       <= '0';
                ms_player_f          <= '0';
                ms_gameover_f        <= '0';
                ms_digit_valid_f     <= '0';
                next_prbs_f          <= '0';
                load_prbs_f          <= '0';
            -- ONLY accept the key_correct if key_pressed is also true (more strict & robust)
            elsif (key_pressed_i = '1') and (key_correct_i = '1') then
                  etat_suivant <= good_key;
                  seq_length_1_f       <= '0';
                  seq_length_inc_f     <= '0';
                  item_cnt_rst_f       <= '0';
                  item_cnt_inc_f       <= '0';
                  ms_player_f          <= '0';
                  ms_gameover_f        <= '0';
                  ms_digit_valid_f     <= '0';
                  next_prbs_f          <= '0';
                  load_prbs_f          <= '0';
			else -- If key_pressed is false, keep waiting
                etat_suivant <= wait_key;
				seq_length_1_f       <= '0';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '0';
                item_cnt_inc_f       <= '0';
                ms_player_f          <= '1'; -- Keep showing that we are waiting for input
                ms_gameover_f        <= '0';
                ms_digit_valid_f     <= '0';
                next_prbs_f          <= '0';
                load_prbs_f          <= '0';
			end if;

        when bad_key => -- FAIL: on se dirige vers le gameover (GG)
			ms_player_f <= '0';
			if display_ready_i = '1' then
			    seq_length_1_f       <= '0';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '0';
                item_cnt_inc_f       <= '0';
                ms_player_f          <= '0';
                ms_gameover_f        <= '1';
                ms_digit_valid_f     <= '0';
                next_prbs_f          <= '0';
                load_prbs_f          <= '0';
				etat_suivant <= show_gameover;
			else
		  seq_length_1_f       <= '0';
          seq_length_inc_f     <= '0';
          item_cnt_rst_f       <= '0';
          item_cnt_inc_f       <= '0';
          ms_player_f          <= '0';
          ms_gameover_f        <= '0';
          ms_digit_valid_f     <= '0';
          next_prbs_f          <= '0';
          load_prbs_f          <= '0';
				etat_suivant <= bad_key;
			end if;
			
		when show_gameover => -- Montre le gameover au display
			    seq_length_1_f       <= '0';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '0';
                item_cnt_inc_f       <= '0';
                ms_player_f          <= '0';
                ms_digit_valid_f     <= '0';
                next_prbs_f          <= '0';
                load_prbs_f          <= '0';
                ms_gameover_f        <= '1'; -- Continue de montrer le gameover au prochain état
                etat_suivant <= init;
			
		when good_key => -- Attend que le display soit prêt avant de passer à la prochaine manche
			if display_ready_i = '1' then
				etat_suivant <= next_item;
				seq_length_1_f       <= '0';
                  seq_length_inc_f     <= '0';
                  item_cnt_rst_f       <= '0';
                  item_cnt_inc_f       <= '1';
                  ms_player_f          <= '0';
                  ms_gameover_f        <= '0';
                  ms_digit_valid_f     <= '0';
                  next_prbs_f          <= '0';
                  load_prbs_f          <= '0';
			else
				etat_suivant <= good_key;
                  seq_length_1_f       <= '0';
                  seq_length_inc_f     <= '0';
                  item_cnt_rst_f       <= '0';
                  item_cnt_inc_f       <= '0';
                  ms_player_f          <= '0';
                  ms_gameover_f        <= '0';
                  ms_digit_valid_f     <= '0';
                  next_prbs_f          <= '0';
                  load_prbs_f          <= '0';
			end if;
			
		when next_item => -- Incremente le compteur d'item pour savoir si on a fini la séquence
			seq_length_1_f       <= '0';
                  seq_length_inc_f     <= '0';
                  item_cnt_rst_f       <= '0';
                  item_cnt_inc_f       <= '0';
                  ms_player_f          <= '0';
                  ms_gameover_f        <= '0';
                  ms_digit_valid_f     <= '1';
                  next_prbs_f          <= '0';
                  load_prbs_f          <= '0';
			etat_suivant <= success;
			
		when success =>

			if item_cnt_i = seq_length_i then
				etat_suivant <= start_new_round;
				seq_length_1_f       <= '0';
                  seq_length_inc_f     <= '1';
                  item_cnt_rst_f       <= '0';
                  item_cnt_inc_f       <= '0';
                  ms_player_f          <= '0';
                  ms_gameover_f        <= '0';
                  ms_digit_valid_f     <= '0';
                  next_prbs_f          <= '0';
                  load_prbs_f          <= '0';
			else
				etat_suivant <= next_1_play;
				seq_length_1_f       <= '0';
                  seq_length_inc_f     <= '0';
                  item_cnt_rst_f       <= '0';
                  item_cnt_inc_f       <= '0';
                  ms_player_f          <= '0';
                  ms_gameover_f        <= '0';
                  ms_digit_valid_f     <= '0';
                  next_prbs_f          <= '1';
                  load_prbs_f          <= '0';
			end if;
			
		when next_1_play =>
			seq_length_1_f       <= '0';
              seq_length_inc_f     <= '0';
              item_cnt_rst_f       <= '0';
              item_cnt_inc_f       <= '0';
              ms_player_f          <= '0';
              ms_gameover_f        <= '0';
              ms_digit_valid_f     <= '0';
              next_prbs_f          <= '1';
              load_prbs_f          <= '0';
			etat_suivant <= next_2_play;
		when next_2_play =>
			seq_length_1_f       <= '0';
              seq_length_inc_f     <= '0';
              item_cnt_rst_f       <= '0';
              item_cnt_inc_f       <= '0';
              ms_player_f          <= '0';
              ms_gameover_f        <= '0';
              ms_digit_valid_f     <= '0';
              next_prbs_f          <= '0';
              load_prbs_f          <= '0';
			etat_suivant <= wait2;
			
		when others => --start_new_round
			seq_length_1_f       <= '0';
                seq_length_inc_f     <= '0';
                item_cnt_rst_f       <= '1';
                item_cnt_inc_f       <= '0';
                ms_player_f          <= '0';
                ms_gameover_f        <= '0';
                ms_digit_valid_f     <= '0';
                next_prbs_f          <= '0';
                load_prbs_f          <= '1';
			etat_suivant <= start_instr;
		
		end case;
end process;
 
end behavioral;








