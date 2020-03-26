----------------------------------------------------------------------------------
-- POLYTECHNIQUE MONTREAL
-- ELE3311 - Systemes logiques programmables 
-- 
-- Module Name:    msa_display 
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

entity msa_display is
port (
  rst_i                 : in    std_logic;
  clk_i                 : in    std_logic;
  player_i              : in    std_logic;
  gameover_i            : in    std_logic;
  digit_valid_i         : in    std_logic;
  digit_i               : in    std_logic_vector(1 downto 0);
  start_delay_o         : out   std_logic;
  end_delay_i           : in    std_logic;
  display_ready_o       : out   std_logic;
  md_player_o           : out   std_logic;
  md_gameover_o         : out   std_logic;
  md_seq_o              : out   std_logic_vector(3 downto 0)
);
end msa_display;


architecture behavioral of msa_display is

  type t_etat is (
    PRET,
    SURBRILLANCE,
    ATTENTE_SB,
    PAUSE,
    ATTENTE_PAUSE
  );

  signal rst                   : std_logic;
  signal clk                   : std_logic;
  -- Registered internal signals for outputs
  signal start_delay_p         : std_logic;
  signal display_ready_p       : std_logic;
  signal md_player_p           : std_logic;
  signal md_gameover_p         : std_logic;
  signal md_seq_p              : std_logic_vector(3 downto 0);

  signal start_delay_f         : std_logic;
  signal display_ready_f       : std_logic;
  signal md_player_f           : std_logic;
  signal md_gameover_f         : std_logic;
  signal md_seq_f              : std_logic_vector(3 downto 0);

  -- Internal signals
  signal etat_p, etat_f        : t_etat;

begin
  rst <= rst_i;
  clk <= clk_i;


  REGISTERED: process(clk)
  begin
    if rising_edge(clk) then
      if (rst = '1') then
        etat_p          <= PRET;
        start_delay_p   <= '0';
        display_ready_p <= '1';
        md_player_p     <= '0';
        md_gameover_p   <= '0';
        md_seq_p        <= (others => '0');
      else
        etat_p          <= etat_f;
        start_delay_p   <= start_delay_f;
        display_ready_p <= display_ready_f;
        md_player_p     <= md_player_f;
        md_gameover_p   <= md_gameover_f;
        md_seq_p        <= md_seq_f;
      end if;
    end if;
  end process;


  COMBINATORIAL: process(etat_p, display_ready_p, player_i, gameover_i, md_seq_p, 
                         digit_valid_i, digit_i, end_delay_i)
  begin
    -- Valeurs par défaut, on ne change pas d'état, les sorties sont inactives
    -- Les valeurs par défaut permettent d'éviter les 'else' et de générer des latch
    etat_f          <= etat_p;
    start_delay_f   <= '0';  -- actif un seul cycle d'horloge à la fois
    display_ready_f <= display_ready_p;
    md_player_f     <= player_i;
    md_gameover_f   <= gameover_i;
    md_seq_f        <= md_seq_p;
  
    case etat_p is
      when PRET =>
        if digit_valid_i = '1' then
          etat_f          <= SURBRILLANCE;
          start_delay_f   <= '1';
          display_ready_f <= '0';
          -- un bit en surbrillance
          -- on échantillone digit lorsque digit_valid
          md_seq_f(to_integer(unsigned(digit_i))) <= '1'; 
        end if;
      when SURBRILLANCE =>
        etat_f          <= ATTENTE_SB;
      when ATTENTE_SB =>
        if end_delay_i = '1' then
          etat_f          <= PAUSE;
          md_seq_f        <= (others => '0');  -- fin de la surbrillance
        end if;
      when PAUSE =>
        etat_f          <= ATTENTE_PAUSE;
        start_delay_f   <= '1';
      when ATTENTE_PAUSE =>
        if end_delay_i = '1' then
          etat_f          <= PRET;
          display_ready_f <= '1';
        end if;
      when others =>
        etat_f          <= PRET;
        display_ready_f <= '1';
    end case;
  end process;


  -- Assignation des sorties
  start_delay_o         <= start_delay_p;
  display_ready_o       <= display_ready_p;
  md_player_o           <= md_player_p;
  md_gameover_o         <= md_gameover_p;
  md_seq_o              <= md_seq_p;

end behavioral;
