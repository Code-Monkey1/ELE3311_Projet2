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

  signal rst                    : std_logic := '0';
  signal clk                    : std_logic := '0';
  signal sample_8khz            : std_logic := '0';
  signal hb_heartbeat           : std_logic := '0';
  signal start_game_clk         : std_logic := '0';
  signal btn_clk                : std_logic_vector(3 downto 0);
  signal dbnc_start_game        : std_logic := '0';
  signal dbnc_btn               : std_logic_vector(3 downto 0);
  signal encod_digit            : std_logic_vector(1 downto 0);
  signal encod_key_pressed      : std_logic := '0';
  signal key_correct            : std_logic := '0';
  signal seq_length_1           : std_logic := '0';
  signal seq_length_inc         : std_logic := '0';
  signal seq_length             : std_logic_vector(7 downto 0);
  signal item_cnt_rst           : std_logic := '0';
  signal item_cnt_inc           : std_logic := '0';
  signal item_cnt               : std_logic_vector(7 downto 0);
  signal prbs_digit             : std_logic_vector(1 downto 0);
  signal correct                : std_logic := '0';
  signal load_prbs              : std_logic := '0';
  signal next_prbs              : std_logic := '0';
  signal ms_player              : std_logic := '0';
  signal ms_gameover            : std_logic := '0';
  signal ms_digit_valid         : std_logic := '0';
  signal display_ready          : std_logic := '0';
  signal start_delay            : std_logic := '0';
  signal end_delay              : std_logic := '0';
  signal md_player              : std_logic := '0';
  signal md_gameover            : std_logic := '0';
  signal md_seq                 : std_logic_vector(3 downto 0);
  signal lumi_seq               : std_logic_vector(3 downto 0);
  constant clk_period           : time := 10 ns;
  signal clk_enable_8kHz        : std_logic := '0';
  signal clk_enable_counter     : unsigned(9 downto 0) := "0000000000";

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

component prbs7
  Port (
      
      clk_i          : in    std_logic;
      seed_i                : in    std_logic_vector(6 downto 0);
      load_prbs_i           : in    std_logic;
      next_prbs_i           : in    std_logic;
      digit_o               : out   std_logic_vector(1 downto 0)
   );
end component;



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
  item_cnt_inc_o        : out   std_logic;
  item_cnt_i            : in    std_logic_vector(7 downto 0);
  seq_length_i          : in    std_logic_vector(7 downto 0)
);
end component;

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


  component delay_cnt
  generic (
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
  end component;

  component lumi
  generic (
  -- La luminosité est défini par le nombre de cycles actifs
  -- La valeur par défault (4) indique une luminosité nominale de 25%
  -- soit 4 cycles actif sur 16 cycles d'horloge au total
  -- This is a VHDL 2008 construct, modify FILE_TYPE property in Vivado
  RATIO_16             : unsigned(3 downto 0) := X"4";
  WIDTH                : integer              := 4
  );
  port (
      clk_i                 : in    std_logic;
      seq_i                 : in    std_logic_vector(WIDTH - 1 downto 0);
      lumi_seq_o            : out   std_logic_vector(WIDTH - 1 downto 0)
  );
  end component;


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
  --clk <= clk_100mhz_i; --keep??
  
  -- Instantiation d'un BUFG pour la distribution de l'horloge
    BUFG_inst : BUFG -- :-)
    port map ( 
       O => clk, -- 1-bit output: Clock output
       I => clk_100mhz_i  -- 1-bit input: Clock input
     );
   
  -- Ajustement de la polarite du reset
   rst <= not (rst_n_i);
   
 -- Generation du signal d'echantillonnage pour le dbnc

--Create the clock enable:
--    clock_enable_process : process(clk)
--    begin
--      if(rising_edge(clk)) then
--        clk_enable_counter <= clk_enable_counter + 1;
        
--        if(clk_enable_counter = 12500) then
--          clk_enable_8khz <= '1';
--        else
--          clk_enable_8khz <= '0';
--        end if;
--      end if;
--    end process;
    
--    slow_clk_process : process(clk)
--    begin
--    if(rising_edge(clk)) then
--        if(clk_enable_8khz = '1') then
--          sample_8khz <= '1', '0' after clk_period;
--        end if;
--  end if;
--end process;

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

  prbs7_inst : prbs7
  port map (
    clk_i            => clk,
    seed_i                  => seed_i,
    next_prbs_i             => next_prbs,
    load_prbs_i            => load_prbs,
    digit_o                 => prbs_digit
  );


  ----------------------------------------------------------------------------
  msa_simon_inst : msa_simon
  port map 
(
 seq_length_1_o => seq_length_1,     
 seq_length_inc_o  => seq_length_inc,    
 seq_length_i   => seq_length,     
 item_cnt_rst_o  => item_cnt_rst,      
 item_cnt_inc_o  => item_cnt_inc,    
 rst_i =>rst,                
 clk_i  =>clk,               
 start_game_i => start_game_clk,         
 next_prbs_o   => next_prbs,        
 load_prbs_o    =>load_prbs,      
 key_pressed_i  => encod_key_pressed,   
 key_correct_i   => key_correct,     
 item_cnt_i     => item_cnt,      
 ms_player_o    => ms_player,     
 ms_gameover_o    => ms_gameover,    
 ms_digit_valid_o => ms_digit_valid,     
 display_ready_i   => display_ready
 );

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
  encod_digit        <= (btn_clk(2) or btn_clk(3)) & (btn_clk(1) or btn_clk(3));

  encod_key_pressed  <= btn_clk(0) OR btn_clk(1) OR btn_clk(2) OR btn_clk(3);


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
  port map(
    rst_i                   => rst,
    clk_i                   => clk,
    start_delay_i           => start_delay,
    end_delay_o             => end_delay
  );

  ----------------------------------------------------------------------------
  lumi_inst : lumi
  port map(
    clk_i       => clk,
    seq_i       => md_seq,
    lumi_seq_o  => lumi_seq
  );

 ------------------------------------------------------------------------------
 
 Sample_8khz_inst : delay_cnt
 generic map (
  SHORT_SIM             => SHORT_SIM, 
  COUNT_VAL             => to_unsigned(1250000, 25),
  COUNT_VAL_SHORT       => to_unsigned(2, 25)
)
port map (
rst_i                  =>rst,
clk_i                  =>clk,
start_delay_i          =>start_delay,
end_delay_o            =>end_delay
);



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

