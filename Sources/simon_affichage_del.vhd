----------------------------------------------------------------------------------
-- POLYTECHNIQUE MONTREAL
-- ELE3311 - Systemes logiques programmables 
-- 
-- Module Name:    simon_affichage_del 
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
library UNISIM;
use UNISIM.VComponents.all;

entity simon_affichage_del is
generic (
  SHORT_SIM             : boolean := false
);
port (
  --RST & CLK
  rst_n_i               : in    std_logic;
  clk_100mhz_i          : in    std_logic;
      
  start_game_i          : in    std_logic;
  btn_i                 : in    std_logic_vector(3 downto 0);
  seed_i                : in    std_logic_vector(6 downto 0);

  del_o                 : out   std_logic_vector(7 downto 0)
);
end simon_affichage_del;


architecture behavioral of simon_affichage_del is
-- ###########################################################################
-- Entete de l'architecture
-- ###########################################################################

  signal rst                    : std_logic;
  signal clk                    : std_logic;
  signal sample_8khz            : std_logic;
  signal hb_heartbeat           : std_logic;
  signal start_game_clk         : std_logic;
  signal btn_clk                : std_logic_vector(3 downto 0);
  signal dbnc_start_game        : std_logic;
  signal dbnc_btn               : std_logic_vector(3 downto 0);
  signal encod_digit            : std_logic_vector(1 downto 0);
  signal encod_key_pressed      : std_logic;
  signal key_correct            : std_logic;
  signal seq_length_1           : std_logic;
  signal seq_length_inc         : std_logic;
  signal seq_length             : std_logic_vector(7 downto 0);
  signal item_cnt_rst           : std_logic;
  signal item_cnt_inc           : std_logic;
  signal item_cnt               : std_logic_vector(7 downto 0);
  signal prbs_digit             : std_logic_vector(1 downto 0);
  signal correct                : std_logic;
  signal load_prbs              : std_logic;
  signal next_prbs              : std_logic;
  signal ms_player              : std_logic;
  signal ms_gameover            : std_logic;
  signal ms_digit_valid         : std_logic;
  signal display_ready          : std_logic;
  signal start_delay            : std_logic;
  signal end_delay              : std_logic;
  signal md_player              : std_logic;
  signal md_gameover            : std_logic;
  signal md_seq                 : std_logic_vector(3 downto 0);
  signal lumi_seq               : std_logic_vector(3 downto 0);

  component meta_harden	
  generic (
    GENERIC_IO_LOGIC : std_logic := '1'; -- 1=POSITIVE 0=NEGATIVE
    WIDTH            : integer   := 1
  );
  port ( 
    sig_src_i  : in  std_logic_vector(WIDTH-1 downto 0);
    rst_dst_i  : in  std_logic;
    clk_dst_i  : in  std_logic;
    sig_dst_o  : out std_logic_vector(WIDTH-1 downto 0)
  );
  end component;

  component dbnc
  port (
    rst_i                 : in    std_logic;
    clk_i                 : in    std_logic;
    sample_i              : in    std_logic;  -- sample signal should be around 8 kHz
    sig_i                 : in    std_logic;
    dbnc_sig_o            : out   std_logic
  );
  end component;

  --#############
  -- À compléter
  component prbs7



  --#############
  -- À compléter
  component msa_simon

  component cnt
  generic (
    WIDTH                 : integer := 8
  );
  port (
    clk_i                 : in    std_logic;
    rst_i                 : in    std_logic;
    set_1_i               : in    std_logic;
    inc_i                 : in    std_logic;
    cnt_o                 : out   std_logic_vector(WIDTH-1 downto 0)
  );
  end component;

  component msa_display
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
  end component;

  --#############
  -- À compléter
  component delay_cnt


  --#############
  -- À compléter
  component lumi


  component heartbeat
  generic (
    COUNT_VAL             : unsigned(26 downto 0) := resize(d"25000000", 27)
  );
  port (
    clk_i                 : in    std_logic;
    heartbeat_o           : out   std_logic
  );
  end component;

-- ###########################################################################
-- Debut de l'architecture
-- ###########################################################################
begin

  ----------------------------------------------------------------------------
  -- Horloge et remise a zero
  -- Instantiation d'un BUFG pour la distribution de l'horloge
  -- Generation du signal d'echantillonnage pour le dbnc
  -- Ajustement de la polarite du reset
  ----------------------------------------------------------------------------
  --#############
  -- À compléter



  ----------------------------------------------------------------------------
  resynchronisation_inst : meta_harden
  generic map(
    WIDTH                   => 5 
  )
  port map(
    sig_src_i(4)            => start_game_i,
    sig_src_i(3 downto 0)   => btn_i,
    rst_dst_i               => rst,
    clk_dst_i               => clk,
    sig_dst_o(4)            => start_game_clk,
    sig_dst_o(3 downto 0)   => btn_clk
  );


  ----------------------------------------------------------------------------
  dbnc_start_game_inst : dbnc
  port map(
    rst_i                   => rst,
    clk_i                   => clk,
    sample_i                => sample_8khz,
    sig_i                   => start_game_clk,
    dbnc_sig_o              => dbnc_start_game
  );
  
  DBNC_GEN: 
  for W in 0 to 3 generate
    dbnc_btn_inst : dbnc
    port map(
      rst_i                   => rst,
      clk_i                   => clk,
      sample_i                => sample_8khz,
      sig_i                   => btn_clk(W),
      dbnc_sig_o              => dbnc_btn(W)
    );
  end generate DBNC_GEN;

  ----------------------------------------------------------------------------
  --#############
  -- À compléter
  prbs7_inst : prbs7


  ----------------------------------------------------------------------------
  --#############
  -- À compléter
  msa_simon_inst : msa_simon

  seq_length_inst : cnt
  port map(
    clk_i                   => clk,
    rst_i                   => '0',
    set_1_i                 => seq_length_1,
    inc_i                   => seq_length_inc,
    cnt_o                   => seq_length
  );

  item_cnt_inst : cnt
  port map(
    clk_i                   => clk,
    rst_i                   => item_cnt_rst,
    set_1_i                 => '0',
    inc_i                   => item_cnt_inc,
    cnt_o                   => item_cnt
  );

  ----------------------------------------------------------------------------
  -- encodeur 4 a 2
  -- Description comportementale (combinatoire uniquement)
  ----------------------------------------------------------------------------
  --#############
  -- À compléter
  encod_digit        <= 



  encod_key_pressed  <= 


  ----------------------------------------------------------------------------
  msa_display_inst : msa_display
  port map(
    rst_i                   => rst,
    clk_i                   => clk,
    player_i                => ms_player,
    gameover_i              => ms_gameover,
    digit_valid_i           => ms_digit_valid,
    digit_i                 => prbs_digit,
    start_delay_o           => start_delay,
    end_delay_i             => end_delay,
    display_ready_o         => display_ready,
    md_player_o             => md_player,
    md_gameover_o           => md_gameover,
    md_seq_o                => md_seq
  );

  ----------------------------------------------------------------------------
  delay_cnt_inst : delay_cnt
  generic map(
    SHORT_SIM               => SHORT_SIM,
    COUNT_VAL               => to_unsigned(30000000, 25),
    COUNT_VAL_SHORT         => to_unsigned(5, 25)
   )
  port map(
    rst_i                   => rst,
    clk_i                   => clk,
    start_delay_i           => start_delay,
    end_delay_o             => end_delay
  );

  ----------------------------------------------------------------------------
  lumi_inst : lumi
  --#############
  -- À compléter


  ----------------------------------------------------------------------------
  heartbeat_inst : heartbeat
  port map(
    clk_i                   => clk,
    heartbeat_o             => hb_heartbeat
  );
  
  ----------------------------------------------------------------------------
  -- Glue logic
  ----------------------------------------------------------------------------
  key_correct         <= '1' when encod_digit = prbs_digit else
                         '0';

  ----------------------------------------------------------------------------
  -- Assign outputs
  ----------------------------------------------------------------------------
  del_o(7)            <= hb_heartbeat;
  del_o(6)            <= md_player;
  del_o(5)            <= md_gameover;
  del_o(4)            <= '0';             -- Tie low, inactive
  del_o(3 downto 0)   <= lumi_seq;

end behavioral;

