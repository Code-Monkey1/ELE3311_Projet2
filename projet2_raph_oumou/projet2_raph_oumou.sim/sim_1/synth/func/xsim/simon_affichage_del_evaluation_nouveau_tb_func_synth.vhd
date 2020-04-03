-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Apr  2 21:16:22 2020
-- Host        : RAPH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/RAPH/Documents/Polytechnique/Systemes_Logiques_Programmables/Labos/Projet2GitHub/ELE3311_Projet2/projet2_raph_oumou/projet2_raph_oumou.sim/sim_1/synth/func/xsim/simon_affichage_del_evaluation_nouveau_tb_func_synth.vhd
-- Design      : simon_affichage_del
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnt is
  port (
    \cnt_p_reg[7]_0\ : out STD_LOGIC;
    cnt_p : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
end cnt;

architecture STRUCTURE of cnt is
  signal \FSM_onehot_etat_present[17]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_etat_present[17]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_p[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_p[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_p[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_p[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_p[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_p[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_p[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_p[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_p[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_p_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_p_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_p_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_p_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_p_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_p_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_p_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_p_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_p[1]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_p[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_p[3]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_p[4]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_p[6]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_p[7]_i_1__0\ : label is "soft_lutpair2";
begin
\FSM_onehot_etat_present[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => cnt_p(7),
      I1 => \cnt_p_reg_n_0_[7]\,
      I2 => cnt_p(6),
      I3 => \cnt_p_reg_n_0_[6]\,
      I4 => \FSM_onehot_etat_present[17]_i_3_n_0\,
      I5 => \FSM_onehot_etat_present[17]_i_4_n_0\,
      O => \cnt_p_reg[7]_0\
    );
\FSM_onehot_etat_present[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_p_reg_n_0_[3]\,
      I1 => cnt_p(3),
      I2 => cnt_p(5),
      I3 => \cnt_p_reg_n_0_[5]\,
      I4 => cnt_p(4),
      I5 => \cnt_p_reg_n_0_[4]\,
      O => \FSM_onehot_etat_present[17]_i_3_n_0\
    );
\FSM_onehot_etat_present[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \cnt_p_reg_n_0_[0]\,
      I1 => cnt_p(0),
      I2 => cnt_p(2),
      I3 => \cnt_p_reg_n_0_[2]\,
      I4 => cnt_p(1),
      I5 => \cnt_p_reg_n_0_[1]\,
      O => \FSM_onehot_etat_present[17]_i_4_n_0\
    );
\cnt_p[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_p_reg_n_0_[0]\,
      O => \cnt_p[0]_i_1_n_0\
    );
\cnt_p[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_p_reg_n_0_[0]\,
      I1 => \cnt_p_reg_n_0_[1]\,
      O => \cnt_p[1]_i_1__0_n_0\
    );
\cnt_p[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_p_reg_n_0_[0]\,
      I1 => \cnt_p_reg_n_0_[1]\,
      I2 => \cnt_p_reg_n_0_[2]\,
      O => \cnt_p[2]_i_1__0_n_0\
    );
\cnt_p[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_p_reg_n_0_[1]\,
      I1 => \cnt_p_reg_n_0_[0]\,
      I2 => \cnt_p_reg_n_0_[2]\,
      I3 => \cnt_p_reg_n_0_[3]\,
      O => \cnt_p[3]_i_1__0_n_0\
    );
\cnt_p[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \cnt_p_reg_n_0_[2]\,
      I1 => \cnt_p_reg_n_0_[0]\,
      I2 => \cnt_p_reg_n_0_[1]\,
      I3 => \cnt_p_reg_n_0_[3]\,
      I4 => \cnt_p_reg_n_0_[4]\,
      O => \cnt_p[4]_i_1__0_n_0\
    );
\cnt_p[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \cnt_p_reg_n_0_[3]\,
      I1 => \cnt_p_reg_n_0_[1]\,
      I2 => \cnt_p_reg_n_0_[0]\,
      I3 => \cnt_p_reg_n_0_[2]\,
      I4 => \cnt_p_reg_n_0_[4]\,
      I5 => \cnt_p_reg_n_0_[5]\,
      O => \cnt_p[5]_i_1__0_n_0\
    );
\cnt_p[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_p[7]_i_2__0_n_0\,
      I1 => \cnt_p_reg_n_0_[6]\,
      O => \cnt_p[6]_i_1__0_n_0\
    );
\cnt_p[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_p[7]_i_2__0_n_0\,
      I1 => \cnt_p_reg_n_0_[6]\,
      I2 => \cnt_p_reg_n_0_[7]\,
      O => \cnt_p[7]_i_1__0_n_0\
    );
\cnt_p[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \cnt_p_reg_n_0_[5]\,
      I1 => \cnt_p_reg_n_0_[3]\,
      I2 => \cnt_p_reg_n_0_[1]\,
      I3 => \cnt_p_reg_n_0_[0]\,
      I4 => \cnt_p_reg_n_0_[2]\,
      I5 => \cnt_p_reg_n_0_[4]\,
      O => \cnt_p[7]_i_2__0_n_0\
    );
\cnt_p_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \cnt_p[0]_i_1_n_0\,
      Q => \cnt_p_reg_n_0_[0]\,
      R => SR(0)
    );
\cnt_p_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \cnt_p[1]_i_1__0_n_0\,
      Q => \cnt_p_reg_n_0_[1]\,
      R => SR(0)
    );
\cnt_p_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \cnt_p[2]_i_1__0_n_0\,
      Q => \cnt_p_reg_n_0_[2]\,
      R => SR(0)
    );
\cnt_p_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \cnt_p[3]_i_1__0_n_0\,
      Q => \cnt_p_reg_n_0_[3]\,
      R => SR(0)
    );
\cnt_p_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \cnt_p[4]_i_1__0_n_0\,
      Q => \cnt_p_reg_n_0_[4]\,
      R => SR(0)
    );
\cnt_p_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \cnt_p[5]_i_1__0_n_0\,
      Q => \cnt_p_reg_n_0_[5]\,
      R => SR(0)
    );
\cnt_p_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \cnt_p[6]_i_1__0_n_0\,
      Q => \cnt_p_reg_n_0_[6]\,
      R => SR(0)
    );
\cnt_p_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \cnt_p[7]_i_1__0_n_0\,
      Q => \cnt_p_reg_n_0_[7]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnt_0 is
  port (
    cnt_p : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnt_0 : entity is "cnt";
end cnt_0;

architecture STRUCTURE of cnt_0 is
  signal \^cnt_p\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cnt_p[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_p[7]_i_2_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_p[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cnt_p[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cnt_p[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt_p[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt_p[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cnt_p[7]_i_1\ : label is "soft_lutpair24";
begin
  cnt_p(7 downto 0) <= \^cnt_p\(7 downto 0);
\cnt_p[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DE"
    )
        port map (
      I0 => E(0),
      I1 => SR(0),
      I2 => \^cnt_p\(0),
      O => \cnt_p[0]_i_1_n_0\
    );
\cnt_p[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^cnt_p\(0),
      I1 => \^cnt_p\(1),
      O => plusOp(1)
    );
\cnt_p[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^cnt_p\(0),
      I1 => \^cnt_p\(1),
      I2 => \^cnt_p\(2),
      O => plusOp(2)
    );
\cnt_p[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^cnt_p\(1),
      I1 => \^cnt_p\(0),
      I2 => \^cnt_p\(2),
      I3 => \^cnt_p\(3),
      O => plusOp(3)
    );
\cnt_p[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^cnt_p\(2),
      I1 => \^cnt_p\(0),
      I2 => \^cnt_p\(1),
      I3 => \^cnt_p\(3),
      I4 => \^cnt_p\(4),
      O => plusOp(4)
    );
\cnt_p[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^cnt_p\(3),
      I1 => \^cnt_p\(1),
      I2 => \^cnt_p\(0),
      I3 => \^cnt_p\(2),
      I4 => \^cnt_p\(4),
      I5 => \^cnt_p\(5),
      O => plusOp(5)
    );
\cnt_p[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_p[7]_i_2_n_0\,
      I1 => \^cnt_p\(6),
      O => plusOp(6)
    );
\cnt_p[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_p[7]_i_2_n_0\,
      I1 => \^cnt_p\(6),
      I2 => \^cnt_p\(7),
      O => plusOp(7)
    );
\cnt_p[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^cnt_p\(5),
      I1 => \^cnt_p\(3),
      I2 => \^cnt_p\(1),
      I3 => \^cnt_p\(0),
      I4 => \^cnt_p\(2),
      I5 => \^cnt_p\(4),
      O => \cnt_p[7]_i_2_n_0\
    );
\cnt_p_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt_p[0]_i_1_n_0\,
      Q => \^cnt_p\(0),
      R => '0'
    );
\cnt_p_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(1),
      Q => \^cnt_p\(1),
      R => SR(0)
    );
\cnt_p_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(2),
      Q => \^cnt_p\(2),
      R => SR(0)
    );
\cnt_p_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(3),
      Q => \^cnt_p\(3),
      R => SR(0)
    );
\cnt_p_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(4),
      Q => \^cnt_p\(4),
      R => SR(0)
    );
\cnt_p_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(5),
      Q => \^cnt_p\(5),
      R => SR(0)
    );
\cnt_p_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(6),
      Q => \^cnt_p\(6),
      R => SR(0)
    );
\cnt_p_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(7),
      Q => \^cnt_p\(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity delay_cnt is
  port (
    end_delay_o : out STD_LOGIC;
    rst : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n_i_IBUF : in STD_LOGIC;
    start_delay_o : in STD_LOGIC
  );
end delay_cnt;

architecture STRUCTURE of delay_cnt is
  signal end_delay_o_i_1_n_0 : STD_LOGIC;
  signal end_delay_o_i_2_n_0 : STD_LOGIC;
  signal end_delay_o_i_3_n_0 : STD_LOGIC;
  signal end_delay_o_i_4_n_0 : STD_LOGIC;
  signal end_delay_o_i_5_n_0 : STD_LOGIC;
  signal end_delay_o_i_6_n_0 : STD_LOGIC;
  signal end_delay_o_i_7_n_0 : STD_LOGIC;
  signal end_delay_o_i_8_n_0 : STD_LOGIC;
  signal end_delay_o_i_9_n_0 : STD_LOGIC;
  signal is_counting : STD_LOGIC;
  signal is_counting_i_1_n_0 : STD_LOGIC;
  signal is_counting_i_2_n_0 : STD_LOGIC;
  signal is_counting_i_3_n_0 : STD_LOGIC;
  signal is_counting_i_4_n_0 : STD_LOGIC;
  signal \my_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \my_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \my_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \my_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \my_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \my_counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \my_counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \my_counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \my_counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \my_counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \my_counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \my_counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \my_counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \my_counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \my_counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \my_counter[20]_i_4_n_0\ : STD_LOGIC;
  signal \my_counter[20]_i_5_n_0\ : STD_LOGIC;
  signal \my_counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \my_counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \my_counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \my_counter[24]_i_5_n_0\ : STD_LOGIC;
  signal \my_counter[28]_i_2_n_0\ : STD_LOGIC;
  signal \my_counter[28]_i_3_n_0\ : STD_LOGIC;
  signal \my_counter[28]_i_4_n_0\ : STD_LOGIC;
  signal \my_counter[28]_i_5_n_0\ : STD_LOGIC;
  signal \my_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \my_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \my_counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \my_counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \my_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \my_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \my_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \my_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal my_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \my_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \my_counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \my_counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \my_counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \my_counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \my_counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \my_counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \my_counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \my_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \my_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \my_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \my_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \my_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \my_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \my_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \my_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \my_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \my_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \my_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \my_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \my_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \my_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \my_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \my_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \my_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \my_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \my_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \my_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \my_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \my_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \my_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \my_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \my_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \my_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \my_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \my_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \my_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \my_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \my_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \my_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \my_counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \my_counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \my_counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \my_counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \my_counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \my_counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \my_counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \my_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \my_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \my_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \my_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \my_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \my_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \my_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \my_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \my_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \my_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \my_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \my_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \my_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \my_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \my_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \my_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^rst\ : STD_LOGIC;
  signal \NLW_my_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  rst <= \^rst\;
\FSM_onehot_etat_present[18]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_i_IBUF,
      O => \^rst\
    );
end_delay_o_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => is_counting,
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => end_delay_o_i_1_n_0
    );
end_delay_o_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => my_counter_reg(19),
      I1 => my_counter_reg(22),
      I2 => my_counter_reg(15),
      I3 => my_counter_reg(16),
      I4 => end_delay_o_i_6_n_0,
      O => end_delay_o_i_2_n_0
    );
end_delay_o_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => my_counter_reg(2),
      I1 => my_counter_reg(3),
      I2 => my_counter_reg(4),
      I3 => my_counter_reg(5),
      I4 => end_delay_o_i_7_n_0,
      O => end_delay_o_i_3_n_0
    );
end_delay_o_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => my_counter_reg(28),
      I1 => my_counter_reg(29),
      I2 => my_counter_reg(31),
      I3 => my_counter_reg(30),
      I4 => end_delay_o_i_8_n_0,
      O => end_delay_o_i_4_n_0
    );
end_delay_o_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => my_counter_reg(6),
      I1 => my_counter_reg(10),
      I2 => my_counter_reg(11),
      I3 => my_counter_reg(12),
      I4 => end_delay_o_i_9_n_0,
      O => end_delay_o_i_5_n_0
    );
end_delay_o_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => my_counter_reg(8),
      I1 => my_counter_reg(7),
      I2 => my_counter_reg(14),
      I3 => my_counter_reg(9),
      O => end_delay_o_i_6_n_0
    );
end_delay_o_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => my_counter_reg(24),
      I1 => my_counter_reg(23),
      I2 => my_counter_reg(1),
      I3 => my_counter_reg(0),
      O => end_delay_o_i_7_n_0
    );
end_delay_o_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => my_counter_reg(25),
      I1 => my_counter_reg(21),
      I2 => my_counter_reg(27),
      I3 => my_counter_reg(26),
      O => end_delay_o_i_8_n_0
    );
end_delay_o_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => my_counter_reg(20),
      I1 => my_counter_reg(18),
      I2 => my_counter_reg(17),
      I3 => my_counter_reg(13),
      O => end_delay_o_i_9_n_0
    );
end_delay_o_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst\,
      D => end_delay_o_i_1_n_0,
      Q => end_delay_o
    );
is_counting_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFBFFFF000000"
    )
        port map (
      I0 => is_counting_i_2_n_0,
      I1 => end_delay_o_i_4_n_0,
      I2 => end_delay_o_i_5_n_0,
      I3 => rst_n_i_IBUF,
      I4 => start_delay_o,
      I5 => is_counting,
      O => is_counting_i_1_n_0
    );
is_counting_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => end_delay_o_i_6_n_0,
      I1 => is_counting_i_3_n_0,
      I2 => end_delay_o_i_7_n_0,
      I3 => is_counting_i_4_n_0,
      O => is_counting_i_2_n_0
    );
is_counting_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => my_counter_reg(16),
      I1 => my_counter_reg(15),
      I2 => my_counter_reg(22),
      I3 => my_counter_reg(19),
      O => is_counting_i_3_n_0
    );
is_counting_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => my_counter_reg(5),
      I1 => my_counter_reg(4),
      I2 => my_counter_reg(3),
      I3 => my_counter_reg(2),
      O => is_counting_i_4_n_0
    );
is_counting_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => is_counting_i_1_n_0,
      Q => is_counting,
      R => '0'
    );
\my_counter[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(0),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[0]_i_2_n_0\
    );
\my_counter[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(3),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[0]_i_3_n_0\
    );
\my_counter[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(2),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[0]_i_4_n_0\
    );
\my_counter[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(1),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[0]_i_5_n_0\
    );
\my_counter[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55551555"
    )
        port map (
      I0 => my_counter_reg(0),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[0]_i_6_n_0\
    );
\my_counter[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(15),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[12]_i_2_n_0\
    );
\my_counter[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(14),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[12]_i_3_n_0\
    );
\my_counter[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(13),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[12]_i_4_n_0\
    );
\my_counter[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(12),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[12]_i_5_n_0\
    );
\my_counter[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(19),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[16]_i_2_n_0\
    );
\my_counter[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(18),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[16]_i_3_n_0\
    );
\my_counter[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(17),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[16]_i_4_n_0\
    );
\my_counter[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(16),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[16]_i_5_n_0\
    );
\my_counter[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(23),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[20]_i_2_n_0\
    );
\my_counter[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(22),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[20]_i_3_n_0\
    );
\my_counter[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(21),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[20]_i_4_n_0\
    );
\my_counter[20]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(20),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[20]_i_5_n_0\
    );
\my_counter[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(27),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[24]_i_2_n_0\
    );
\my_counter[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(26),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[24]_i_3_n_0\
    );
\my_counter[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(25),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[24]_i_4_n_0\
    );
\my_counter[24]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(24),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[24]_i_5_n_0\
    );
\my_counter[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(31),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[28]_i_2_n_0\
    );
\my_counter[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(30),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[28]_i_3_n_0\
    );
\my_counter[28]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(29),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[28]_i_4_n_0\
    );
\my_counter[28]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(28),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[28]_i_5_n_0\
    );
\my_counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(7),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[4]_i_2_n_0\
    );
\my_counter[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(6),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[4]_i_3_n_0\
    );
\my_counter[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(5),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[4]_i_4_n_0\
    );
\my_counter[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(4),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[4]_i_5_n_0\
    );
\my_counter[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(11),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[8]_i_2_n_0\
    );
\my_counter[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(10),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[8]_i_3_n_0\
    );
\my_counter[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(9),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[8]_i_4_n_0\
    );
\my_counter[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => my_counter_reg(8),
      I1 => end_delay_o_i_2_n_0,
      I2 => end_delay_o_i_3_n_0,
      I3 => end_delay_o_i_4_n_0,
      I4 => end_delay_o_i_5_n_0,
      O => \my_counter[8]_i_5_n_0\
    );
\my_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[0]_i_1_n_7\,
      Q => my_counter_reg(0)
    );
\my_counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \my_counter_reg[0]_i_1_n_0\,
      CO(2) => \my_counter_reg[0]_i_1_n_1\,
      CO(1) => \my_counter_reg[0]_i_1_n_2\,
      CO(0) => \my_counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \my_counter[0]_i_2_n_0\,
      O(3) => \my_counter_reg[0]_i_1_n_4\,
      O(2) => \my_counter_reg[0]_i_1_n_5\,
      O(1) => \my_counter_reg[0]_i_1_n_6\,
      O(0) => \my_counter_reg[0]_i_1_n_7\,
      S(3) => \my_counter[0]_i_3_n_0\,
      S(2) => \my_counter[0]_i_4_n_0\,
      S(1) => \my_counter[0]_i_5_n_0\,
      S(0) => \my_counter[0]_i_6_n_0\
    );
\my_counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[8]_i_1_n_5\,
      Q => my_counter_reg(10)
    );
\my_counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[8]_i_1_n_4\,
      Q => my_counter_reg(11)
    );
\my_counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[12]_i_1_n_7\,
      Q => my_counter_reg(12)
    );
\my_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \my_counter_reg[8]_i_1_n_0\,
      CO(3) => \my_counter_reg[12]_i_1_n_0\,
      CO(2) => \my_counter_reg[12]_i_1_n_1\,
      CO(1) => \my_counter_reg[12]_i_1_n_2\,
      CO(0) => \my_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \my_counter_reg[12]_i_1_n_4\,
      O(2) => \my_counter_reg[12]_i_1_n_5\,
      O(1) => \my_counter_reg[12]_i_1_n_6\,
      O(0) => \my_counter_reg[12]_i_1_n_7\,
      S(3) => \my_counter[12]_i_2_n_0\,
      S(2) => \my_counter[12]_i_3_n_0\,
      S(1) => \my_counter[12]_i_4_n_0\,
      S(0) => \my_counter[12]_i_5_n_0\
    );
\my_counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[12]_i_1_n_6\,
      Q => my_counter_reg(13)
    );
\my_counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[12]_i_1_n_5\,
      Q => my_counter_reg(14)
    );
\my_counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[12]_i_1_n_4\,
      Q => my_counter_reg(15)
    );
\my_counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[16]_i_1_n_7\,
      Q => my_counter_reg(16)
    );
\my_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \my_counter_reg[12]_i_1_n_0\,
      CO(3) => \my_counter_reg[16]_i_1_n_0\,
      CO(2) => \my_counter_reg[16]_i_1_n_1\,
      CO(1) => \my_counter_reg[16]_i_1_n_2\,
      CO(0) => \my_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \my_counter_reg[16]_i_1_n_4\,
      O(2) => \my_counter_reg[16]_i_1_n_5\,
      O(1) => \my_counter_reg[16]_i_1_n_6\,
      O(0) => \my_counter_reg[16]_i_1_n_7\,
      S(3) => \my_counter[16]_i_2_n_0\,
      S(2) => \my_counter[16]_i_3_n_0\,
      S(1) => \my_counter[16]_i_4_n_0\,
      S(0) => \my_counter[16]_i_5_n_0\
    );
\my_counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[16]_i_1_n_6\,
      Q => my_counter_reg(17)
    );
\my_counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[16]_i_1_n_5\,
      Q => my_counter_reg(18)
    );
\my_counter_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[16]_i_1_n_4\,
      Q => my_counter_reg(19)
    );
\my_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[0]_i_1_n_6\,
      Q => my_counter_reg(1)
    );
\my_counter_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[20]_i_1_n_7\,
      Q => my_counter_reg(20)
    );
\my_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \my_counter_reg[16]_i_1_n_0\,
      CO(3) => \my_counter_reg[20]_i_1_n_0\,
      CO(2) => \my_counter_reg[20]_i_1_n_1\,
      CO(1) => \my_counter_reg[20]_i_1_n_2\,
      CO(0) => \my_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \my_counter_reg[20]_i_1_n_4\,
      O(2) => \my_counter_reg[20]_i_1_n_5\,
      O(1) => \my_counter_reg[20]_i_1_n_6\,
      O(0) => \my_counter_reg[20]_i_1_n_7\,
      S(3) => \my_counter[20]_i_2_n_0\,
      S(2) => \my_counter[20]_i_3_n_0\,
      S(1) => \my_counter[20]_i_4_n_0\,
      S(0) => \my_counter[20]_i_5_n_0\
    );
\my_counter_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[20]_i_1_n_6\,
      Q => my_counter_reg(21)
    );
\my_counter_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[20]_i_1_n_5\,
      Q => my_counter_reg(22)
    );
\my_counter_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[20]_i_1_n_4\,
      Q => my_counter_reg(23)
    );
\my_counter_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[24]_i_1_n_7\,
      Q => my_counter_reg(24)
    );
\my_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \my_counter_reg[20]_i_1_n_0\,
      CO(3) => \my_counter_reg[24]_i_1_n_0\,
      CO(2) => \my_counter_reg[24]_i_1_n_1\,
      CO(1) => \my_counter_reg[24]_i_1_n_2\,
      CO(0) => \my_counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \my_counter_reg[24]_i_1_n_4\,
      O(2) => \my_counter_reg[24]_i_1_n_5\,
      O(1) => \my_counter_reg[24]_i_1_n_6\,
      O(0) => \my_counter_reg[24]_i_1_n_7\,
      S(3) => \my_counter[24]_i_2_n_0\,
      S(2) => \my_counter[24]_i_3_n_0\,
      S(1) => \my_counter[24]_i_4_n_0\,
      S(0) => \my_counter[24]_i_5_n_0\
    );
\my_counter_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[24]_i_1_n_6\,
      Q => my_counter_reg(25)
    );
\my_counter_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[24]_i_1_n_5\,
      Q => my_counter_reg(26)
    );
\my_counter_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[24]_i_1_n_4\,
      Q => my_counter_reg(27)
    );
\my_counter_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[28]_i_1_n_7\,
      Q => my_counter_reg(28)
    );
\my_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \my_counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_my_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \my_counter_reg[28]_i_1_n_1\,
      CO(1) => \my_counter_reg[28]_i_1_n_2\,
      CO(0) => \my_counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \my_counter_reg[28]_i_1_n_4\,
      O(2) => \my_counter_reg[28]_i_1_n_5\,
      O(1) => \my_counter_reg[28]_i_1_n_6\,
      O(0) => \my_counter_reg[28]_i_1_n_7\,
      S(3) => \my_counter[28]_i_2_n_0\,
      S(2) => \my_counter[28]_i_3_n_0\,
      S(1) => \my_counter[28]_i_4_n_0\,
      S(0) => \my_counter[28]_i_5_n_0\
    );
\my_counter_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[28]_i_1_n_6\,
      Q => my_counter_reg(29)
    );
\my_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[0]_i_1_n_5\,
      Q => my_counter_reg(2)
    );
\my_counter_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[28]_i_1_n_5\,
      Q => my_counter_reg(30)
    );
\my_counter_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[28]_i_1_n_4\,
      Q => my_counter_reg(31)
    );
\my_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[0]_i_1_n_4\,
      Q => my_counter_reg(3)
    );
\my_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[4]_i_1_n_7\,
      Q => my_counter_reg(4)
    );
\my_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \my_counter_reg[0]_i_1_n_0\,
      CO(3) => \my_counter_reg[4]_i_1_n_0\,
      CO(2) => \my_counter_reg[4]_i_1_n_1\,
      CO(1) => \my_counter_reg[4]_i_1_n_2\,
      CO(0) => \my_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \my_counter_reg[4]_i_1_n_4\,
      O(2) => \my_counter_reg[4]_i_1_n_5\,
      O(1) => \my_counter_reg[4]_i_1_n_6\,
      O(0) => \my_counter_reg[4]_i_1_n_7\,
      S(3) => \my_counter[4]_i_2_n_0\,
      S(2) => \my_counter[4]_i_3_n_0\,
      S(1) => \my_counter[4]_i_4_n_0\,
      S(0) => \my_counter[4]_i_5_n_0\
    );
\my_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[4]_i_1_n_6\,
      Q => my_counter_reg(5)
    );
\my_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[4]_i_1_n_5\,
      Q => my_counter_reg(6)
    );
\my_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[4]_i_1_n_4\,
      Q => my_counter_reg(7)
    );
\my_counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[8]_i_1_n_7\,
      Q => my_counter_reg(8)
    );
\my_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \my_counter_reg[4]_i_1_n_0\,
      CO(3) => \my_counter_reg[8]_i_1_n_0\,
      CO(2) => \my_counter_reg[8]_i_1_n_1\,
      CO(1) => \my_counter_reg[8]_i_1_n_2\,
      CO(0) => \my_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \my_counter_reg[8]_i_1_n_4\,
      O(2) => \my_counter_reg[8]_i_1_n_5\,
      O(1) => \my_counter_reg[8]_i_1_n_6\,
      O(0) => \my_counter_reg[8]_i_1_n_7\,
      S(3) => \my_counter[8]_i_2_n_0\,
      S(2) => \my_counter[8]_i_3_n_0\,
      S(1) => \my_counter[8]_i_4_n_0\,
      S(0) => \my_counter[8]_i_5_n_0\
    );
\my_counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => is_counting,
      CLR => \^rst\,
      D => \my_counter_reg[8]_i_1_n_6\,
      Q => my_counter_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity heartbeat is
  port (
    del_o_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
end heartbeat;

architecture STRUCTURE of heartbeat is
  signal data0 : STD_LOGIC_VECTOR ( 26 downto 1 );
  signal \^del_o_obuf\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal delay_cnt_f : STD_LOGIC_VECTOR ( 0 to 0 );
  signal delay_cnt_p : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \delay_cnt_p[0]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt_p[0]_i_3_n_0\ : STD_LOGIC;
  signal \delay_cnt_p[0]_i_4_n_0\ : STD_LOGIC;
  signal \delay_cnt_p[0]_i_5_n_0\ : STD_LOGIC;
  signal \delay_cnt_p[0]_i_6_n_0\ : STD_LOGIC;
  signal \delay_cnt_p[0]_i_7_n_0\ : STD_LOGIC;
  signal \delay_cnt_p[0]_i_8_n_0\ : STD_LOGIC;
  signal heartbeat_f : STD_LOGIC;
  signal heartbeat_p_i_1_n_0 : STD_LOGIC;
  signal \minusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_carry__3_n_2\ : STD_LOGIC;
  signal \minusOp_carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_n_1\ : STD_LOGIC;
  signal \minusOp_carry__4_n_2\ : STD_LOGIC;
  signal \minusOp_carry__4_n_3\ : STD_LOGIC;
  signal \minusOp_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_n_3\ : STD_LOGIC;
  signal minusOp_carry_i_1_n_0 : STD_LOGIC;
  signal minusOp_carry_i_2_n_0 : STD_LOGIC;
  signal minusOp_carry_i_3_n_0 : STD_LOGIC;
  signal minusOp_carry_i_4_n_0 : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal \NLW_minusOp_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_minusOp_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \delay_cnt_p[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of heartbeat_p_i_1 : label is "soft_lutpair0";
begin
  del_o_OBUF(0) <= \^del_o_obuf\(0);
\delay_cnt_p[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \delay_cnt_p[0]_i_2_n_0\,
      I1 => delay_cnt_p(0),
      O => delay_cnt_f(0)
    );
\delay_cnt_p[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \delay_cnt_p[0]_i_3_n_0\,
      I1 => \delay_cnt_p[0]_i_4_n_0\,
      I2 => \delay_cnt_p[0]_i_5_n_0\,
      I3 => \delay_cnt_p[0]_i_6_n_0\,
      I4 => \delay_cnt_p[0]_i_7_n_0\,
      I5 => \delay_cnt_p[0]_i_8_n_0\,
      O => \delay_cnt_p[0]_i_2_n_0\
    );
\delay_cnt_p[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delay_cnt_p(16),
      I1 => delay_cnt_p(15),
      I2 => delay_cnt_p(18),
      I3 => delay_cnt_p(17),
      O => \delay_cnt_p[0]_i_3_n_0\
    );
\delay_cnt_p[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delay_cnt_p(20),
      I1 => delay_cnt_p(19),
      I2 => delay_cnt_p(22),
      I3 => delay_cnt_p(21),
      O => \delay_cnt_p[0]_i_4_n_0\
    );
\delay_cnt_p[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delay_cnt_p(8),
      I1 => delay_cnt_p(7),
      I2 => delay_cnt_p(10),
      I3 => delay_cnt_p(9),
      O => \delay_cnt_p[0]_i_5_n_0\
    );
\delay_cnt_p[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delay_cnt_p(12),
      I1 => delay_cnt_p(11),
      I2 => delay_cnt_p(14),
      I3 => delay_cnt_p(13),
      O => \delay_cnt_p[0]_i_6_n_0\
    );
\delay_cnt_p[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delay_cnt_p(4),
      I1 => delay_cnt_p(3),
      I2 => delay_cnt_p(6),
      I3 => delay_cnt_p(5),
      O => \delay_cnt_p[0]_i_7_n_0\
    );
\delay_cnt_p[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => delay_cnt_p(25),
      I1 => delay_cnt_p(26),
      I2 => delay_cnt_p(23),
      I3 => delay_cnt_p(24),
      I4 => delay_cnt_p(2),
      I5 => delay_cnt_p(1),
      O => \delay_cnt_p[0]_i_8_n_0\
    );
\delay_cnt_p[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(0),
      I1 => \delay_cnt_p[0]_i_2_n_0\,
      O => heartbeat_f
    );
\delay_cnt_p_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => delay_cnt_f(0),
      Q => delay_cnt_p(0),
      R => '0'
    );
\delay_cnt_p_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(10),
      Q => delay_cnt_p(10),
      R => heartbeat_f
    );
\delay_cnt_p_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(11),
      Q => delay_cnt_p(11),
      S => heartbeat_f
    );
\delay_cnt_p_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(12),
      Q => delay_cnt_p(12),
      S => heartbeat_f
    );
\delay_cnt_p_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(13),
      Q => delay_cnt_p(13),
      S => heartbeat_f
    );
\delay_cnt_p_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(14),
      Q => delay_cnt_p(14),
      S => heartbeat_f
    );
\delay_cnt_p_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(15),
      Q => delay_cnt_p(15),
      R => heartbeat_f
    );
\delay_cnt_p_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(16),
      Q => delay_cnt_p(16),
      S => heartbeat_f
    );
\delay_cnt_p_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(17),
      Q => delay_cnt_p(17),
      R => heartbeat_f
    );
\delay_cnt_p_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(18),
      Q => delay_cnt_p(18),
      S => heartbeat_f
    );
\delay_cnt_p_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(19),
      Q => delay_cnt_p(19),
      S => heartbeat_f
    );
\delay_cnt_p_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(1),
      Q => delay_cnt_p(1),
      R => heartbeat_f
    );
\delay_cnt_p_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(20),
      Q => delay_cnt_p(20),
      S => heartbeat_f
    );
\delay_cnt_p_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(21),
      Q => delay_cnt_p(21),
      S => heartbeat_f
    );
\delay_cnt_p_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(22),
      Q => delay_cnt_p(22),
      S => heartbeat_f
    );
\delay_cnt_p_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(23),
      Q => delay_cnt_p(23),
      R => heartbeat_f
    );
\delay_cnt_p_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(24),
      Q => delay_cnt_p(24),
      S => heartbeat_f
    );
\delay_cnt_p_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(25),
      Q => delay_cnt_p(25),
      R => heartbeat_f
    );
\delay_cnt_p_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(26),
      Q => delay_cnt_p(26),
      R => heartbeat_f
    );
\delay_cnt_p_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(2),
      Q => delay_cnt_p(2),
      R => heartbeat_f
    );
\delay_cnt_p_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(3),
      Q => delay_cnt_p(3),
      R => heartbeat_f
    );
\delay_cnt_p_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(4),
      Q => delay_cnt_p(4),
      R => heartbeat_f
    );
\delay_cnt_p_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(5),
      Q => delay_cnt_p(5),
      R => heartbeat_f
    );
\delay_cnt_p_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(6),
      Q => delay_cnt_p(6),
      S => heartbeat_f
    );
\delay_cnt_p_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(7),
      Q => delay_cnt_p(7),
      R => heartbeat_f
    );
\delay_cnt_p_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(8),
      Q => delay_cnt_p(8),
      R => heartbeat_f
    );
\delay_cnt_p_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(9),
      Q => delay_cnt_p(9),
      R => heartbeat_f
    );
heartbeat_p_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => delay_cnt_p(0),
      I1 => \delay_cnt_p[0]_i_2_n_0\,
      I2 => \^del_o_obuf\(0),
      O => heartbeat_p_i_1_n_0
    );
heartbeat_p_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => heartbeat_p_i_1_n_0,
      Q => \^del_o_obuf\(0),
      R => '0'
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => delay_cnt_p(0),
      DI(3 downto 0) => delay_cnt_p(4 downto 1),
      O(3 downto 0) => data0(4 downto 1),
      S(3) => minusOp_carry_i_1_n_0,
      S(2) => minusOp_carry_i_2_n_0,
      S(1) => minusOp_carry_i_3_n_0,
      S(0) => minusOp_carry_i_4_n_0
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delay_cnt_p(8 downto 5),
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \minusOp_carry__0_i_1_n_0\,
      S(2) => \minusOp_carry__0_i_2_n_0\,
      S(1) => \minusOp_carry__0_i_3_n_0\,
      S(0) => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(8),
      O => \minusOp_carry__0_i_1_n_0\
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(7),
      O => \minusOp_carry__0_i_2_n_0\
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(6),
      O => \minusOp_carry__0_i_3_n_0\
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(5),
      O => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delay_cnt_p(12 downto 9),
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \minusOp_carry__1_i_1_n_0\,
      S(2) => \minusOp_carry__1_i_2_n_0\,
      S(1) => \minusOp_carry__1_i_3_n_0\,
      S(0) => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(12),
      O => \minusOp_carry__1_i_1_n_0\
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(11),
      O => \minusOp_carry__1_i_2_n_0\
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(10),
      O => \minusOp_carry__1_i_3_n_0\
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(9),
      O => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3) => \minusOp_carry__2_n_0\,
      CO(2) => \minusOp_carry__2_n_1\,
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delay_cnt_p(16 downto 13),
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \minusOp_carry__2_i_1_n_0\,
      S(2) => \minusOp_carry__2_i_2_n_0\,
      S(1) => \minusOp_carry__2_i_3_n_0\,
      S(0) => \minusOp_carry__2_i_4_n_0\
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(16),
      O => \minusOp_carry__2_i_1_n_0\
    );
\minusOp_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(15),
      O => \minusOp_carry__2_i_2_n_0\
    );
\minusOp_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(14),
      O => \minusOp_carry__2_i_3_n_0\
    );
\minusOp_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(13),
      O => \minusOp_carry__2_i_4_n_0\
    );
\minusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__2_n_0\,
      CO(3) => \minusOp_carry__3_n_0\,
      CO(2) => \minusOp_carry__3_n_1\,
      CO(1) => \minusOp_carry__3_n_2\,
      CO(0) => \minusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delay_cnt_p(20 downto 17),
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \minusOp_carry__3_i_1_n_0\,
      S(2) => \minusOp_carry__3_i_2_n_0\,
      S(1) => \minusOp_carry__3_i_3_n_0\,
      S(0) => \minusOp_carry__3_i_4_n_0\
    );
\minusOp_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(20),
      O => \minusOp_carry__3_i_1_n_0\
    );
\minusOp_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(19),
      O => \minusOp_carry__3_i_2_n_0\
    );
\minusOp_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(18),
      O => \minusOp_carry__3_i_3_n_0\
    );
\minusOp_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(17),
      O => \minusOp_carry__3_i_4_n_0\
    );
\minusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__3_n_0\,
      CO(3) => \minusOp_carry__4_n_0\,
      CO(2) => \minusOp_carry__4_n_1\,
      CO(1) => \minusOp_carry__4_n_2\,
      CO(0) => \minusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => delay_cnt_p(24 downto 21),
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \minusOp_carry__4_i_1_n_0\,
      S(2) => \minusOp_carry__4_i_2_n_0\,
      S(1) => \minusOp_carry__4_i_3_n_0\,
      S(0) => \minusOp_carry__4_i_4_n_0\
    );
\minusOp_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(24),
      O => \minusOp_carry__4_i_1_n_0\
    );
\minusOp_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(23),
      O => \minusOp_carry__4_i_2_n_0\
    );
\minusOp_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(22),
      O => \minusOp_carry__4_i_3_n_0\
    );
\minusOp_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(21),
      O => \minusOp_carry__4_i_4_n_0\
    );
\minusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__4_n_0\,
      CO(3 downto 1) => \NLW_minusOp_carry__5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \minusOp_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => delay_cnt_p(25),
      O(3 downto 2) => \NLW_minusOp_carry__5_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(26 downto 25),
      S(3 downto 2) => B"00",
      S(1) => \minusOp_carry__5_i_1_n_0\,
      S(0) => \minusOp_carry__5_i_2_n_0\
    );
\minusOp_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(26),
      O => \minusOp_carry__5_i_1_n_0\
    );
\minusOp_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(25),
      O => \minusOp_carry__5_i_2_n_0\
    );
minusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(4),
      O => minusOp_carry_i_1_n_0
    );
minusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(3),
      O => minusOp_carry_i_2_n_0
    );
minusOp_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(2),
      O => minusOp_carry_i_3_n_0
    );
minusOp_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt_p(1),
      O => minusOp_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lumi is
  port (
    del_o_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    md_seq : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC
  );
end lumi;

architecture STRUCTURE of lumi is
  signal etat_present : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal etat_suivant : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[0]\ : label is "iSTATE:1000,init:0001,wait1:0010,wait2:0100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[1]\ : label is "iSTATE:1000,init:0001,wait1:0010,wait2:0100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[2]\ : label is "iSTATE:1000,init:0001,wait1:0010,wait2:0100,";
begin
\FSM_onehot_etat_present[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => etat_present(1),
      I1 => etat_present(0),
      I2 => etat_present(2),
      O => etat_suivant(0)
    );
\FSM_onehot_etat_present_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => etat_suivant(0),
      Q => etat_present(0),
      R => '0'
    );
\FSM_onehot_etat_present_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => etat_present(0),
      Q => etat_present(1),
      R => '0'
    );
\FSM_onehot_etat_present_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => etat_present(1),
      Q => etat_present(2),
      R => '0'
    );
\lumi_seq_p_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => md_seq(0),
      Q => del_o_OBUF(0),
      S => etat_suivant(0)
    );
\lumi_seq_p_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => md_seq(1),
      Q => del_o_OBUF(1),
      S => etat_suivant(0)
    );
\lumi_seq_p_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => md_seq(2),
      Q => del_o_OBUF(2),
      S => etat_suivant(0)
    );
\lumi_seq_p_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => md_seq(3),
      Q => del_o_OBUF(3),
      S => etat_suivant(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity meta_harden is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \etat_suivant1__14\ : out STD_LOGIC;
    etat_suivant12_out : out STD_LOGIC;
    ms_player_f1_out : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    display_ready_o : in STD_LOGIC;
    \FSM_onehot_etat_present_reg[11]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sig_meta_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end meta_harden;

architecture STRUCTURE of meta_harden is
  signal \^etat_suivant12_out\ : STD_LOGIC;
  signal \^etat_suivant1__14\ : STD_LOGIC;
  signal sig_dst : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sig_dst : signal is "true";
  signal sig_meta : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute async_reg of sig_meta : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sig_dst_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sig_dst_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sig_dst_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sig_dst_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sig_dst_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sig_dst_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sig_dst_reg[3]\ : label is std.standard.true;
  attribute KEEP of \sig_dst_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sig_dst_reg[4]\ : label is std.standard.true;
  attribute KEEP of \sig_dst_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sig_meta_reg[0]\ : label is std.standard.true;
  attribute KEEP of \sig_meta_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sig_meta_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sig_meta_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sig_meta_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sig_meta_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sig_meta_reg[3]\ : label is std.standard.true;
  attribute KEEP of \sig_meta_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sig_meta_reg[4]\ : label is std.standard.true;
  attribute KEEP of \sig_meta_reg[4]\ : label is "yes";
begin
  etat_suivant12_out <= \^etat_suivant12_out\;
  \etat_suivant1__14\ <= \^etat_suivant1__14\;
  \out\(0) <= sig_dst(4);
\FSM_onehot_etat_present[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2020"
    )
        port map (
      I0 => \^etat_suivant1__14\,
      I1 => \^etat_suivant12_out\,
      I2 => Q(0),
      I3 => display_ready_o,
      I4 => Q(1),
      O => D(0)
    );
\FSM_onehot_etat_present[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC30000CC0000C2"
    )
        port map (
      I0 => sig_dst(0),
      I1 => \FSM_onehot_etat_present_reg[11]\(1),
      I2 => sig_dst(2),
      I3 => sig_dst(3),
      I4 => \FSM_onehot_etat_present_reg[11]\(0),
      I5 => sig_dst(1),
      O => \^etat_suivant1__14\
    );
\FSM_onehot_etat_present[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333CFFFF33FAFF38"
    )
        port map (
      I0 => sig_dst(0),
      I1 => \FSM_onehot_etat_present_reg[11]\(1),
      I2 => sig_dst(2),
      I3 => sig_dst(3),
      I4 => \FSM_onehot_etat_present_reg[11]\(0),
      I5 => sig_dst(1),
      O => \^etat_suivant12_out\
    );
ms_player_p_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sig_dst(1),
      I1 => sig_dst(3),
      I2 => sig_dst(2),
      I3 => sig_dst(0),
      O => ms_player_f1_out
    );
\sig_dst_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => sig_meta(0),
      Q => sig_dst(0)
    );
\sig_dst_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => sig_meta(1),
      Q => sig_dst(1)
    );
\sig_dst_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => sig_meta(2),
      Q => sig_dst(2)
    );
\sig_dst_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => sig_meta(3),
      Q => sig_dst(3)
    );
\sig_dst_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => sig_meta(4),
      Q => sig_dst(4)
    );
\sig_meta_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \sig_meta_reg[4]_0\(0),
      Q => sig_meta(0)
    );
\sig_meta_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \sig_meta_reg[4]_0\(1),
      Q => sig_meta(1)
    );
\sig_meta_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \sig_meta_reg[4]_0\(2),
      Q => sig_meta(2)
    );
\sig_meta_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \sig_meta_reg[4]_0\(3),
      Q => sig_meta(3)
    );
\sig_meta_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => \sig_meta_reg[4]_0\(4),
      Q => sig_meta(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msa_display is
  port (
    start_delay_o : out STD_LOGIC;
    del_o_OBUF : out STD_LOGIC_VECTOR ( 1 downto 0 );
    display_ready_o : out STD_LOGIC;
    \FSM_sequential_etat_p_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    md_seq : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    ms_gameover_p : in STD_LOGIC;
    ms_player_p : in STD_LOGIC;
    ms_digit_valid_o : in STD_LOGIC;
    end_delay_o : in STD_LOGIC;
    \md_seq_p_reg[3]_0\ : in STD_LOGIC;
    \md_seq_p_reg[2]_0\ : in STD_LOGIC;
    \md_seq_p_reg[1]_0\ : in STD_LOGIC;
    \md_seq_p_reg[0]_0\ : in STD_LOGIC
  );
end msa_display;

architecture STRUCTURE of msa_display is
  signal \FSM_sequential_etat_p[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_etat_p[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_etat_p[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_etat_p_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^display_ready_o\ : STD_LOGIC;
  signal display_ready_p_i_1_n_0 : STD_LOGIC;
  signal etat_p : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^md_seq\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \md_seq_p[0]_i_1_n_0\ : STD_LOGIC;
  signal \md_seq_p[1]_i_1_n_0\ : STD_LOGIC;
  signal \md_seq_p[2]_i_1_n_0\ : STD_LOGIC;
  signal \md_seq_p[3]_i_1_n_0\ : STD_LOGIC;
  signal start_delay_p_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_etat_p[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_etat_p[1]_i_1\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_etat_p_reg[0]\ : label is "pret:000,surbrillance:001,attente_sb:010,pause:011,attente_pause:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_etat_p_reg[1]\ : label is "pret:000,surbrillance:001,attente_sb:010,pause:011,attente_pause:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_etat_p_reg[2]\ : label is "pret:000,surbrillance:001,attente_sb:010,pause:011,attente_pause:100,";
  attribute SOFT_HLUTNM of \md_seq_p[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of start_delay_p_i_1 : label is "soft_lutpair5";
begin
  \FSM_sequential_etat_p_reg[1]_0\(0) <= \^fsm_sequential_etat_p_reg[1]_0\(0);
  display_ready_o <= \^display_ready_o\;
  md_seq(3 downto 0) <= \^md_seq\(3 downto 0);
\FSM_sequential_etat_p[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99988898"
    )
        port map (
      I0 => etat_p(2),
      I1 => etat_p(0),
      I2 => ms_digit_valid_o,
      I3 => \^fsm_sequential_etat_p_reg[1]_0\(0),
      I4 => end_delay_o,
      O => \FSM_sequential_etat_p[0]_i_1_n_0\
    );
\FSM_sequential_etat_p[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => etat_p(2),
      I1 => etat_p(0),
      I2 => \^fsm_sequential_etat_p_reg[1]_0\(0),
      O => \FSM_sequential_etat_p[1]_i_1_n_0\
    );
\FSM_sequential_etat_p[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E8EA"
    )
        port map (
      I0 => etat_p(2),
      I1 => etat_p(0),
      I2 => \^fsm_sequential_etat_p_reg[1]_0\(0),
      I3 => end_delay_o,
      O => \FSM_sequential_etat_p[2]_i_1_n_0\
    );
\FSM_sequential_etat_p_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_etat_p[0]_i_1_n_0\,
      Q => etat_p(0),
      R => rst
    );
\FSM_sequential_etat_p_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_etat_p[1]_i_1_n_0\,
      Q => \^fsm_sequential_etat_p_reg[1]_0\(0),
      R => rst
    );
\FSM_sequential_etat_p_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_etat_p[2]_i_1_n_0\,
      Q => etat_p(2),
      R => rst
    );
display_ready_p_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFEF11000000"
    )
        port map (
      I0 => etat_p(0),
      I1 => \^fsm_sequential_etat_p_reg[1]_0\(0),
      I2 => ms_digit_valid_o,
      I3 => etat_p(2),
      I4 => end_delay_o,
      I5 => \^display_ready_o\,
      O => display_ready_p_i_1_n_0
    );
display_ready_p_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => display_ready_p_i_1_n_0,
      Q => \^display_ready_o\,
      S => rst
    );
md_gameover_p_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ms_gameover_p,
      Q => del_o_OBUF(0),
      R => rst
    );
md_player_p_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ms_player_p,
      Q => del_o_OBUF(1),
      R => rst
    );
\md_seq_p[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF0100"
    )
        port map (
      I0 => \^fsm_sequential_etat_p_reg[1]_0\(0),
      I1 => etat_p(0),
      I2 => etat_p(2),
      I3 => \md_seq_p_reg[0]_0\,
      I4 => \^md_seq\(0),
      O => \md_seq_p[0]_i_1_n_0\
    );
\md_seq_p[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF0100"
    )
        port map (
      I0 => \^fsm_sequential_etat_p_reg[1]_0\(0),
      I1 => etat_p(0),
      I2 => etat_p(2),
      I3 => \md_seq_p_reg[1]_0\,
      I4 => \^md_seq\(1),
      O => \md_seq_p[1]_i_1_n_0\
    );
\md_seq_p[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF0100"
    )
        port map (
      I0 => \^fsm_sequential_etat_p_reg[1]_0\(0),
      I1 => etat_p(0),
      I2 => etat_p(2),
      I3 => \md_seq_p_reg[2]_0\,
      I4 => \^md_seq\(2),
      O => \md_seq_p[2]_i_1_n_0\
    );
\md_seq_p[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF0100"
    )
        port map (
      I0 => \^fsm_sequential_etat_p_reg[1]_0\(0),
      I1 => etat_p(0),
      I2 => etat_p(2),
      I3 => \md_seq_p_reg[3]_0\,
      I4 => \^md_seq\(3),
      O => \md_seq_p[3]_i_1_n_0\
    );
\md_seq_p_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \md_seq_p[0]_i_1_n_0\,
      Q => \^md_seq\(0),
      R => rst
    );
\md_seq_p_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \md_seq_p[1]_i_1_n_0\,
      Q => \^md_seq\(1),
      R => rst
    );
\md_seq_p_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \md_seq_p[2]_i_1_n_0\,
      Q => \^md_seq\(2),
      R => rst
    );
\md_seq_p_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \md_seq_p[3]_i_1_n_0\,
      Q => \^md_seq\(3),
      R => rst
    );
start_delay_p_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A4"
    )
        port map (
      I0 => \^fsm_sequential_etat_p_reg[1]_0\(0),
      I1 => ms_digit_valid_o,
      I2 => etat_p(0),
      I3 => etat_p(2),
      O => start_delay_p_i_1_n_0
    );
start_delay_p_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => start_delay_p_i_1_n_0,
      Q => start_delay_o,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msa_simon is
  port (
    load_prbs_p : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ms_digit_valid_o : out STD_LOGIC;
    next_prbs_o : out STD_LOGIC;
    ms_player_p : out STD_LOGIC;
    \FSM_onehot_etat_present_reg[14]_0\ : out STD_LOGIC;
    \FSM_onehot_etat_present_reg[1]_0\ : out STD_LOGIC;
    ms_gameover_p : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    display_ready_o : in STD_LOGIC;
    \etat_suivant1__14\ : in STD_LOGIC;
    etat_suivant12_out : in STD_LOGIC;
    ms_player_f1_out : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_prbs_p_reg_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end msa_simon;

architecture STRUCTURE of msa_simon is
  signal \FSM_onehot_etat_present[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_etat_present[12]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_etat_present[14]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_etat_present[15]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_etat_present[17]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_etat_present[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_etat_present[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_etat_present[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_etat_present[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_etat_present[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_etat_present[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_etat_present[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_etat_present[9]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_etat_present_reg[14]_0\ : STD_LOGIC;
  signal \^fsm_onehot_etat_present_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_etat_present_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_etat_present_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_etat_present_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_etat_present_reg_n_0_[13]\ : STD_LOGIC;
  signal \FSM_onehot_etat_present_reg_n_0_[15]\ : STD_LOGIC;
  signal \FSM_onehot_etat_present_reg_n_0_[16]\ : STD_LOGIC;
  signal \FSM_onehot_etat_present_reg_n_0_[17]\ : STD_LOGIC;
  signal \FSM_onehot_etat_present_reg_n_0_[18]\ : STD_LOGIC;
  signal \FSM_onehot_etat_present_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_etat_present_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_etat_present_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_etat_present_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_etat_present_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_etat_present_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_etat_present_reg_n_0_[9]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal item_cnt_inc_f : STD_LOGIC;
  signal item_cnt_rst_f : STD_LOGIC;
  signal load_prbs_f : STD_LOGIC;
  signal ms_digit_valid_f : STD_LOGIC;
  signal \^ms_gameover_p\ : STD_LOGIC;
  signal ms_gameover_p_i_1_n_0 : STD_LOGIC;
  signal ms_gameover_p_i_2_n_0 : STD_LOGIC;
  signal ms_gameover_p_i_3_n_0 : STD_LOGIC;
  signal ms_gameover_p_i_4_n_0 : STD_LOGIC;
  signal ms_gameover_p_i_5_n_0 : STD_LOGIC;
  signal ms_gameover_p_i_6_n_0 : STD_LOGIC;
  signal ms_player_f : STD_LOGIC;
  signal ms_player_p_i_3_n_0 : STD_LOGIC;
  signal next_prbs_f : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_etat_present[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_etat_present[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_onehot_etat_present[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_etat_present[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_etat_present[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_etat_present[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_etat_present[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_onehot_etat_present[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_etat_present[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_etat_present[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_etat_present[9]_i_1\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[0]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[10]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[11]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[12]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[13]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[14]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[15]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[16]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[17]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[18]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[1]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[2]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[3]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[4]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[5]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[6]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[7]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[8]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_etat_present_reg[9]\ : label is "next_item:0000001000000000000,good_key:0000000100000000000,show_gameover:0000000010000000000,start_new_round:0000100000000000000,wait1:0000000000000001000,next_2_play:0010000000000000000,start_instr:0000000000000000100,next_1_play:0001000000000000000,wait_for_start:0000000000000000010,bad_key:0000000001000000000,init:0000000000000000001,prepare_to_play:0000000000001000000,compare:0000000000000100000,increment_item:0000000000000010000,next_2_instr:1000000000000000000,next_1_instr:0100000000000000000,wait_key:0000000000100000000,success:0000010000000000000,wait2:0000000000010000000";
  attribute SOFT_HLUTNM of item_cnt_rst_p_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of load_prbs_p_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ms_digit_valid_p_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of ms_gameover_p_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of ms_gameover_p_i_4 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of ms_gameover_p_i_5 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of ms_gameover_p_i_6 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of ms_player_p_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of next_prbs_p_i_1 : label is "soft_lutpair7";
begin
  \FSM_onehot_etat_present_reg[14]_0\ <= \^fsm_onehot_etat_present_reg[14]_0\;
  \FSM_onehot_etat_present_reg[1]_0\ <= \^fsm_onehot_etat_present_reg[1]_0\;
  Q(1 downto 0) <= \^q\(1 downto 0);
  ms_gameover_p <= \^ms_gameover_p\;
\FSM_onehot_etat_present[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[9]\,
      I1 => display_ready_o,
      O => \FSM_onehot_etat_present[10]_i_1_n_0\
    );
\FSM_onehot_etat_present[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => display_ready_o,
      O => \FSM_onehot_etat_present[12]_i_1_n_0\
    );
\FSM_onehot_etat_present[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[13]\,
      I1 => load_prbs_p_reg_0,
      O => \FSM_onehot_etat_present[14]_i_1_n_0\
    );
\FSM_onehot_etat_present[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[13]\,
      I1 => load_prbs_p_reg_0,
      O => \FSM_onehot_etat_present[15]_i_1_n_0\
    );
\FSM_onehot_etat_present[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[5]\,
      I1 => load_prbs_p_reg_0,
      O => \FSM_onehot_etat_present[17]_i_1_n_0\
    );
\FSM_onehot_etat_present[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[0]\,
      I1 => \out\(0),
      I2 => \^fsm_onehot_etat_present_reg[1]_0\,
      O => \FSM_onehot_etat_present[1]_i_1_n_0\
    );
\FSM_onehot_etat_present[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^fsm_onehot_etat_present_reg[14]_0\,
      I1 => \out\(0),
      I2 => \^fsm_onehot_etat_present_reg[1]_0\,
      O => \FSM_onehot_etat_present[2]_i_1_n_0\
    );
\FSM_onehot_etat_present[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[2]\,
      I1 => \FSM_onehot_etat_present_reg_n_0_[3]\,
      I2 => display_ready_o,
      I3 => \FSM_onehot_etat_present_reg_n_0_[18]\,
      O => \FSM_onehot_etat_present[3]_i_1_n_0\
    );
\FSM_onehot_etat_present[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[3]\,
      I1 => display_ready_o,
      O => \FSM_onehot_etat_present[4]_i_1_n_0\
    );
\FSM_onehot_etat_present[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[5]\,
      I1 => load_prbs_p_reg_0,
      O => \FSM_onehot_etat_present[6]_i_1_n_0\
    );
\FSM_onehot_etat_present[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[6]\,
      I1 => \FSM_onehot_etat_present_reg_n_0_[7]\,
      I2 => display_ready_o,
      I3 => \FSM_onehot_etat_present_reg_n_0_[16]\,
      O => \FSM_onehot_etat_present[7]_i_1_n_0\
    );
\FSM_onehot_etat_present[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8888"
    )
        port map (
      I0 => display_ready_o,
      I1 => \FSM_onehot_etat_present_reg_n_0_[7]\,
      I2 => \etat_suivant1__14\,
      I3 => etat_suivant12_out,
      I4 => \^q\(0),
      O => \FSM_onehot_etat_present[8]_i_1_n_0\
    );
\FSM_onehot_etat_present[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => etat_suivant12_out,
      I1 => \^q\(0),
      I2 => display_ready_o,
      I3 => \FSM_onehot_etat_present_reg_n_0_[9]\,
      O => \FSM_onehot_etat_present[9]_i_1_n_0\
    );
\FSM_onehot_etat_present_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_etat_present_reg_n_0_[10]\,
      PRE => rst,
      Q => \FSM_onehot_etat_present_reg_n_0_[0]\
    );
\FSM_onehot_etat_present_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present[10]_i_1_n_0\,
      Q => \FSM_onehot_etat_present_reg_n_0_[10]\
    );
\FSM_onehot_etat_present_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => D(0),
      Q => \^q\(1)
    );
\FSM_onehot_etat_present_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present[12]_i_1_n_0\,
      Q => \FSM_onehot_etat_present_reg_n_0_[12]\
    );
\FSM_onehot_etat_present_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present_reg_n_0_[12]\,
      Q => \FSM_onehot_etat_present_reg_n_0_[13]\
    );
\FSM_onehot_etat_present_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present[14]_i_1_n_0\,
      Q => \^fsm_onehot_etat_present_reg[14]_0\
    );
\FSM_onehot_etat_present_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present[15]_i_1_n_0\,
      Q => \FSM_onehot_etat_present_reg_n_0_[15]\
    );
\FSM_onehot_etat_present_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present_reg_n_0_[15]\,
      Q => \FSM_onehot_etat_present_reg_n_0_[16]\
    );
\FSM_onehot_etat_present_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present[17]_i_1_n_0\,
      Q => \FSM_onehot_etat_present_reg_n_0_[17]\
    );
\FSM_onehot_etat_present_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present_reg_n_0_[17]\,
      Q => \FSM_onehot_etat_present_reg_n_0_[18]\
    );
\FSM_onehot_etat_present_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present[1]_i_1_n_0\,
      Q => \^fsm_onehot_etat_present_reg[1]_0\
    );
\FSM_onehot_etat_present_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present[2]_i_1_n_0\,
      Q => \FSM_onehot_etat_present_reg_n_0_[2]\
    );
\FSM_onehot_etat_present_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present[3]_i_1_n_0\,
      Q => \FSM_onehot_etat_present_reg_n_0_[3]\
    );
\FSM_onehot_etat_present_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present[4]_i_1_n_0\,
      Q => \FSM_onehot_etat_present_reg_n_0_[4]\
    );
\FSM_onehot_etat_present_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present_reg_n_0_[4]\,
      Q => \FSM_onehot_etat_present_reg_n_0_[5]\
    );
\FSM_onehot_etat_present_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present[6]_i_1_n_0\,
      Q => \FSM_onehot_etat_present_reg_n_0_[6]\
    );
\FSM_onehot_etat_present_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present[7]_i_1_n_0\,
      Q => \FSM_onehot_etat_present_reg_n_0_[7]\
    );
\FSM_onehot_etat_present_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present[8]_i_1_n_0\,
      Q => \^q\(0)
    );
\FSM_onehot_etat_present_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_etat_present[9]_i_1_n_0\,
      Q => \FSM_onehot_etat_present_reg_n_0_[9]\
    );
item_cnt_inc_p_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => display_ready_o,
      I1 => \^q\(1),
      I2 => \FSM_onehot_etat_present_reg_n_0_[3]\,
      O => item_cnt_inc_f
    );
item_cnt_inc_p_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => item_cnt_inc_f,
      Q => E(0)
    );
item_cnt_rst_p_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \^fsm_onehot_etat_present_reg[14]_0\,
      I1 => \FSM_onehot_etat_present_reg_n_0_[0]\,
      I2 => \FSM_onehot_etat_present_reg_n_0_[5]\,
      I3 => load_prbs_p_reg_0,
      I4 => \^fsm_onehot_etat_present_reg[1]_0\,
      O => item_cnt_rst_f
    );
item_cnt_rst_p_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => item_cnt_rst_f,
      Q => SR(0)
    );
load_prbs_p_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_etat_present_reg[14]_0\,
      I1 => \^fsm_onehot_etat_present_reg[1]_0\,
      I2 => \out\(0),
      I3 => \FSM_onehot_etat_present_reg_n_0_[5]\,
      I4 => load_prbs_p_reg_0,
      O => load_prbs_f
    );
load_prbs_p_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => load_prbs_f,
      Q => load_prbs_p
    );
ms_digit_valid_p_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[12]\,
      I1 => display_ready_o,
      I2 => \FSM_onehot_etat_present_reg_n_0_[3]\,
      O => ms_digit_valid_f
    );
ms_digit_valid_p_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ms_digit_valid_f,
      Q => ms_digit_valid_o
    );
ms_gameover_p_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEA0000"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[10]\,
      I1 => \FSM_onehot_etat_present_reg_n_0_[9]\,
      I2 => display_ready_o,
      I3 => \FSM_onehot_etat_present_reg_n_0_[0]\,
      I4 => ms_gameover_p_i_2_n_0,
      I5 => \^ms_gameover_p\,
      O => ms_gameover_p_i_1_n_0
    );
ms_gameover_p_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[17]\,
      I1 => \FSM_onehot_etat_present_reg_n_0_[18]\,
      I2 => ms_gameover_p_i_3_n_0,
      I3 => ms_gameover_p_i_4_n_0,
      I4 => ms_gameover_p_i_5_n_0,
      I5 => ms_gameover_p_i_6_n_0,
      O => ms_gameover_p_i_2_n_0
    );
ms_gameover_p_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[7]\,
      I1 => \^q\(0),
      I2 => \FSM_onehot_etat_present_reg_n_0_[5]\,
      I3 => \FSM_onehot_etat_present_reg_n_0_[6]\,
      O => ms_gameover_p_i_3_n_0
    );
ms_gameover_p_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[3]\,
      I1 => \FSM_onehot_etat_present_reg_n_0_[4]\,
      I2 => \^fsm_onehot_etat_present_reg[1]_0\,
      I3 => \out\(0),
      I4 => \FSM_onehot_etat_present_reg_n_0_[2]\,
      O => ms_gameover_p_i_4_n_0
    );
ms_gameover_p_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[15]\,
      I1 => \FSM_onehot_etat_present_reg_n_0_[16]\,
      I2 => \FSM_onehot_etat_present_reg_n_0_[13]\,
      I3 => \^fsm_onehot_etat_present_reg[14]_0\,
      O => ms_gameover_p_i_5_n_0
    );
ms_gameover_p_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_etat_present_reg_n_0_[12]\,
      I2 => \FSM_onehot_etat_present_reg_n_0_[9]\,
      I3 => \FSM_onehot_etat_present_reg_n_0_[10]\,
      O => ms_gameover_p_i_6_n_0
    );
ms_gameover_p_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ms_gameover_p_i_1_n_0,
      Q => \^ms_gameover_p\
    );
ms_player_p_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \FSM_onehot_etat_present_reg_n_0_[7]\,
      I1 => display_ready_o,
      I2 => \FSM_onehot_etat_present_reg_n_0_[0]\,
      I3 => \^q\(0),
      I4 => ms_player_f1_out,
      I5 => ms_player_p_i_3_n_0,
      O => ms_player_f
    );
ms_player_p_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^fsm_onehot_etat_present_reg[1]_0\,
      I1 => \out\(0),
      O => ms_player_p_i_3_n_0
    );
ms_player_p_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ms_player_f,
      Q => ms_player_p
    );
next_prbs_p_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF54"
    )
        port map (
      I0 => load_prbs_p_reg_0,
      I1 => \FSM_onehot_etat_present_reg_n_0_[13]\,
      I2 => \FSM_onehot_etat_present_reg_n_0_[5]\,
      I3 => \FSM_onehot_etat_present_reg_n_0_[15]\,
      I4 => \FSM_onehot_etat_present_reg_n_0_[17]\,
      O => next_prbs_f
    );
next_prbs_p_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => next_prbs_f,
      Q => next_prbs_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prbs7 is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    end_delay_o_reg : out STD_LOGIC;
    end_delay_o_reg_0 : out STD_LOGIC;
    end_delay_o_reg_1 : out STD_LOGIC;
    end_delay_o_reg_2 : out STD_LOGIC;
    seed_i_IBUF : in STD_LOGIC_VECTOR ( 6 downto 0 );
    load_prbs_p : in STD_LOGIC;
    next_prbs_o : in STD_LOGIC;
    end_delay_o : in STD_LOGIC;
    \md_seq_p_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ms_digit_valid_o : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end prbs7;

architecture STRUCTURE of prbs7 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal etat_present : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal etat_suivant : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal seed : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal \seed__0\ : STD_LOGIC;
  signal \seed_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \seed_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \seed_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \seed_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \seed_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \seed_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \seed_reg[6]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_etat_present[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_etat_present[1]_i_1\ : label is "soft_lutpair18";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_etat_present_reg[0]\ : label is "etat_read_seed:10,iSTATE:00,etat_generate_new_output:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_etat_present_reg[1]\ : label is "etat_read_seed:10,iSTATE:00,etat_generate_new_output:01";
  attribute SOFT_HLUTNM of \md_seq_p[0]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \md_seq_p[1]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \md_seq_p[2]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \md_seq_p[3]_i_2\ : label is "soft_lutpair17";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \seed_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \seed_reg[0]_i_1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \seed_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \seed_reg[1]_i_1\ : label is "soft_lutpair21";
  attribute XILINX_LEGACY_PRIM of \seed_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \seed_reg[2]_i_1\ : label is "soft_lutpair21";
  attribute XILINX_LEGACY_PRIM of \seed_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \seed_reg[3]_i_1\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of \seed_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \seed_reg[4]_i_1\ : label is "soft_lutpair22";
  attribute XILINX_LEGACY_PRIM of \seed_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \seed_reg[5]_i_1\ : label is "soft_lutpair22";
  attribute XILINX_LEGACY_PRIM of \seed_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \seed_reg[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \seed_reg[6]_i_2\ : label is "soft_lutpair20";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_sequential_etat_present[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2030"
    )
        port map (
      I0 => etat_present(0),
      I1 => load_prbs_p,
      I2 => next_prbs_o,
      I3 => etat_present(1),
      O => etat_suivant(0)
    );
\FSM_sequential_etat_present[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => etat_present(0),
      I1 => load_prbs_p,
      I2 => etat_present(1),
      O => etat_suivant(1)
    );
\FSM_sequential_etat_present_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => etat_suivant(0),
      Q => etat_present(0),
      R => '0'
    );
\FSM_sequential_etat_present_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => etat_suivant(1),
      Q => etat_present(1),
      R => '0'
    );
\md_seq_p[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888B8"
    )
        port map (
      I0 => end_delay_o,
      I1 => \md_seq_p_reg[0]\(0),
      I2 => ms_digit_valid_o,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => end_delay_o_reg
    );
\md_seq_p[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => end_delay_o,
      I1 => \md_seq_p_reg[0]\(0),
      I2 => ms_digit_valid_o,
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => end_delay_o_reg_0
    );
\md_seq_p[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => end_delay_o,
      I1 => \md_seq_p_reg[0]\(0),
      I2 => ms_digit_valid_o,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => end_delay_o_reg_1
    );
\md_seq_p[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => end_delay_o,
      I1 => \md_seq_p_reg[0]\(0),
      I2 => ms_digit_valid_o,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => end_delay_o_reg_2
    );
\seed_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \seed_reg[0]_i_1_n_0\,
      G => \seed__0\,
      GE => '1',
      Q => \^q\(0)
    );
\seed_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => seed_i_IBUF(0),
      I1 => etat_present(1),
      I2 => seed(5),
      I3 => seed(6),
      O => \seed_reg[0]_i_1_n_0\
    );
\seed_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \seed_reg[1]_i_1_n_0\,
      G => \seed__0\,
      GE => '1',
      Q => \^q\(1)
    );
\seed_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => seed_i_IBUF(1),
      I1 => etat_present(1),
      I2 => \^q\(0),
      O => \seed_reg[1]_i_1_n_0\
    );
\seed_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \seed_reg[2]_i_1_n_0\,
      G => \seed__0\,
      GE => '1',
      Q => seed(2)
    );
\seed_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => seed_i_IBUF(2),
      I1 => etat_present(1),
      I2 => \^q\(1),
      O => \seed_reg[2]_i_1_n_0\
    );
\seed_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \seed_reg[3]_i_1_n_0\,
      G => \seed__0\,
      GE => '1',
      Q => seed(3)
    );
\seed_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => seed_i_IBUF(3),
      I1 => etat_present(1),
      I2 => seed(2),
      O => \seed_reg[3]_i_1_n_0\
    );
\seed_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \seed_reg[4]_i_1_n_0\,
      G => \seed__0\,
      GE => '1',
      Q => seed(4)
    );
\seed_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => seed_i_IBUF(4),
      I1 => etat_present(1),
      I2 => seed(3),
      O => \seed_reg[4]_i_1_n_0\
    );
\seed_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \seed_reg[5]_i_1_n_0\,
      G => \seed__0\,
      GE => '1',
      Q => seed(5)
    );
\seed_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => seed_i_IBUF(5),
      I1 => etat_present(1),
      I2 => seed(4),
      O => \seed_reg[5]_i_1_n_0\
    );
\seed_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \seed_reg[6]_i_1_n_0\,
      G => \seed__0\,
      GE => '1',
      Q => seed(6)
    );
\seed_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => seed_i_IBUF(6),
      I1 => etat_present(1),
      I2 => seed(5),
      O => \seed_reg[6]_i_1_n_0\
    );
\seed_reg[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => etat_present(0),
      I1 => etat_present(1),
      O => \seed__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity simon_affichage_del is
  port (
    rst_n_i : in STD_LOGIC;
    clk_100mhz_i : in STD_LOGIC;
    start_game_i : in STD_LOGIC;
    btn_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    seed_i : in STD_LOGIC_VECTOR ( 6 downto 0 );
    del_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of simon_affichage_del : entity is true;
  attribute SHORT_SIM : string;
  attribute SHORT_SIM of simon_affichage_del : entity is "FALSE";
end simon_affichage_del;

architecture STRUCTURE of simon_affichage_del is
  signal btn_i_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk : STD_LOGIC;
  signal clk_100mhz_i_IBUF : STD_LOGIC;
  signal cnt_p : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal del_o_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal display_ready_o : STD_LOGIC;
  signal end_delay_o : STD_LOGIC;
  signal etat_p : STD_LOGIC_VECTOR ( 1 to 1 );
  signal etat_suivant12_out : STD_LOGIC;
  signal \etat_suivant1__14\ : STD_LOGIC;
  signal item_cnt_inc_p : STD_LOGIC;
  signal item_cnt_inst_n_0 : STD_LOGIC;
  signal item_cnt_rst_p : STD_LOGIC;
  signal load_prbs_p : STD_LOGIC;
  signal md_seq : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ms_digit_valid_o : STD_LOGIC;
  signal ms_gameover_p : STD_LOGIC;
  signal ms_player_f1_out : STD_LOGIC;
  signal ms_player_p : STD_LOGIC;
  signal msa_simon_inst_n_10 : STD_LOGIC;
  signal msa_simon_inst_n_6 : STD_LOGIC;
  signal msa_simon_inst_n_7 : STD_LOGIC;
  signal msa_simon_inst_n_9 : STD_LOGIC;
  signal next_prbs_o : STD_LOGIC;
  signal prbs7_inst_n_2 : STD_LOGIC;
  signal prbs7_inst_n_3 : STD_LOGIC;
  signal prbs7_inst_n_4 : STD_LOGIC;
  signal prbs7_inst_n_5 : STD_LOGIC;
  signal prbs_digit : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal resynchronisation_inst_n_1 : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal rst_n_i_IBUF : STD_LOGIC;
  signal seed_i_IBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal start_delay_o : STD_LOGIC;
  signal start_game_clk : STD_LOGIC;
  signal start_game_i_IBUF : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of BUFG_inst : label is "PRIMITIVE";
begin
BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_100mhz_i_IBUF,
      O => clk
    );
\btn_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn_i(0),
      O => btn_i_IBUF(0)
    );
\btn_i_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn_i(1),
      O => btn_i_IBUF(1)
    );
\btn_i_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn_i(2),
      O => btn_i_IBUF(2)
    );
\btn_i_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn_i(3),
      O => btn_i_IBUF(3)
    );
clk_100mhz_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_100mhz_i,
      O => clk_100mhz_i_IBUF
    );
\del_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => del_o_OBUF(0),
      O => del_o(0)
    );
\del_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => del_o_OBUF(1),
      O => del_o(1)
    );
\del_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => del_o_OBUF(2),
      O => del_o(2)
    );
\del_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => del_o_OBUF(3),
      O => del_o(3)
    );
\del_o_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => del_o(4)
    );
\del_o_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => del_o_OBUF(5),
      O => del_o(5)
    );
\del_o_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => del_o_OBUF(6),
      O => del_o(6)
    );
\del_o_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => del_o_OBUF(7),
      O => del_o(7)
    );
delay_cnt_inst: entity work.delay_cnt
     port map (
      clk => clk,
      end_delay_o => end_delay_o,
      rst => rst,
      rst_n_i_IBUF => rst_n_i_IBUF,
      start_delay_o => start_delay_o
    );
heartbeat_inst: entity work.heartbeat
     port map (
      clk => clk,
      del_o_OBUF(0) => del_o_OBUF(7)
    );
item_cnt_inst: entity work.cnt
     port map (
      E(0) => item_cnt_inc_p,
      SR(0) => item_cnt_rst_p,
      clk => clk,
      cnt_p(7 downto 0) => cnt_p(7 downto 0),
      \cnt_p_reg[7]_0\ => item_cnt_inst_n_0
    );
lumi_inst: entity work.lumi
     port map (
      clk => clk,
      del_o_OBUF(3 downto 0) => del_o_OBUF(3 downto 0),
      md_seq(3 downto 0) => md_seq(3 downto 0)
    );
msa_display_inst: entity work.msa_display
     port map (
      \FSM_sequential_etat_p_reg[1]_0\(0) => etat_p(1),
      clk => clk,
      del_o_OBUF(1 downto 0) => del_o_OBUF(6 downto 5),
      display_ready_o => display_ready_o,
      end_delay_o => end_delay_o,
      md_seq(3 downto 0) => md_seq(3 downto 0),
      \md_seq_p_reg[0]_0\ => prbs7_inst_n_2,
      \md_seq_p_reg[1]_0\ => prbs7_inst_n_3,
      \md_seq_p_reg[2]_0\ => prbs7_inst_n_4,
      \md_seq_p_reg[3]_0\ => prbs7_inst_n_5,
      ms_digit_valid_o => ms_digit_valid_o,
      ms_gameover_p => ms_gameover_p,
      ms_player_p => ms_player_p,
      rst => rst,
      start_delay_o => start_delay_o
    );
msa_simon_inst: entity work.msa_simon
     port map (
      D(0) => resynchronisation_inst_n_1,
      E(0) => item_cnt_inc_p,
      \FSM_onehot_etat_present_reg[14]_0\ => msa_simon_inst_n_6,
      \FSM_onehot_etat_present_reg[1]_0\ => msa_simon_inst_n_7,
      Q(1) => msa_simon_inst_n_9,
      Q(0) => msa_simon_inst_n_10,
      SR(0) => item_cnt_rst_p,
      clk => clk,
      display_ready_o => display_ready_o,
      etat_suivant12_out => etat_suivant12_out,
      \etat_suivant1__14\ => \etat_suivant1__14\,
      load_prbs_p => load_prbs_p,
      load_prbs_p_reg_0 => item_cnt_inst_n_0,
      ms_digit_valid_o => ms_digit_valid_o,
      ms_gameover_p => ms_gameover_p,
      ms_player_f1_out => ms_player_f1_out,
      ms_player_p => ms_player_p,
      next_prbs_o => next_prbs_o,
      \out\(0) => start_game_clk,
      rst => rst
    );
prbs7_inst: entity work.prbs7
     port map (
      Q(1 downto 0) => prbs_digit(1 downto 0),
      clk => clk,
      end_delay_o => end_delay_o,
      end_delay_o_reg => prbs7_inst_n_2,
      end_delay_o_reg_0 => prbs7_inst_n_3,
      end_delay_o_reg_1 => prbs7_inst_n_4,
      end_delay_o_reg_2 => prbs7_inst_n_5,
      load_prbs_p => load_prbs_p,
      \md_seq_p_reg[0]\(0) => etat_p(1),
      ms_digit_valid_o => ms_digit_valid_o,
      next_prbs_o => next_prbs_o,
      seed_i_IBUF(6 downto 0) => seed_i_IBUF(6 downto 0)
    );
resynchronisation_inst: entity work.meta_harden
     port map (
      AR(0) => rst,
      D(0) => resynchronisation_inst_n_1,
      \FSM_onehot_etat_present_reg[11]\(1 downto 0) => prbs_digit(1 downto 0),
      Q(1) => msa_simon_inst_n_9,
      Q(0) => msa_simon_inst_n_10,
      clk => clk,
      display_ready_o => display_ready_o,
      etat_suivant12_out => etat_suivant12_out,
      \etat_suivant1__14\ => \etat_suivant1__14\,
      ms_player_f1_out => ms_player_f1_out,
      \out\(0) => start_game_clk,
      \sig_meta_reg[4]_0\(4) => start_game_i_IBUF,
      \sig_meta_reg[4]_0\(3 downto 0) => btn_i_IBUF(3 downto 0)
    );
rst_n_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst_n_i,
      O => rst_n_i_IBUF
    );
\seed_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => seed_i(0),
      O => seed_i_IBUF(0)
    );
\seed_i_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => seed_i(1),
      O => seed_i_IBUF(1)
    );
\seed_i_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => seed_i(2),
      O => seed_i_IBUF(2)
    );
\seed_i_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => seed_i(3),
      O => seed_i_IBUF(3)
    );
\seed_i_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => seed_i(4),
      O => seed_i_IBUF(4)
    );
\seed_i_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => seed_i(5),
      O => seed_i_IBUF(5)
    );
\seed_i_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => seed_i(6),
      O => seed_i_IBUF(6)
    );
seq_length_inst: entity work.cnt_0
     port map (
      E(0) => msa_simon_inst_n_6,
      SR(0) => msa_simon_inst_n_7,
      clk => clk,
      cnt_p(7 downto 0) => cnt_p(7 downto 0)
    );
start_game_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => start_game_i,
      O => start_game_i_IBUF
    );
end STRUCTURE;
