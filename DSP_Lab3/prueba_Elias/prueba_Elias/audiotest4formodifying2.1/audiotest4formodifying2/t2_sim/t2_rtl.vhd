-- ------------------------------------------------------------------------- 
-- Altera DSP Builder Advanced Flow Tools Release Version 14.0
-- Quartus II development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2014 Altera Corporation.  All rights reserved.
-- Your use of  Altera  Corporation's design tools,  logic functions and other
-- software and tools,  and its AMPP  partner logic functions, and  any output
-- files  any of the  foregoing  device programming or simulation files),  and
-- any associated  documentation or information are expressly subject  to  the
-- terms and conditions  of the Altera Program License Subscription Agreement,
-- Altera  MegaCore  Function  License  Agreement, or other applicable license
-- agreement,  including,  without limitation,  that your use  is for the sole
-- purpose of  programming  logic  devices  manufactured by Altera and sold by
-- Altera or its authorized  distributors.  Please  refer  to  the  applicable
-- agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from t2_rtl
-- VHDL created on Mon Dec 01 23:32:31 2014


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity t2_rtl is
    port (
        xIn_v : in std_logic_vector(0 downto 0);
        xIn_c : in std_logic_vector(7 downto 0);
        xIn_0 : in std_logic_vector(23 downto 0);
        xOut_v : out std_logic_vector(0 downto 0);
        xOut_c : out std_logic_vector(7 downto 0);
        xOut_0 : out std_logic_vector(53 downto 0);
        clk : in std_logic;
        areset : in std_logic
    );
end t2_rtl;

architecture normal of t2_rtl is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_19_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_wi0_phasedelay0_q_14_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_delayr1_q_13_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr3_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_delayr3_q_12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr4_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_delayr4_q_12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr5_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_delayr5_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr6_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr7_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr8_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr9_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_delayr9_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr10_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr13_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_delayr13_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr14_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr15_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr16_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr17_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr18_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr19_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr20_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr21_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_delayr21_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr22_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr23_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr24_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr25_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_delayr25_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr26_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr27_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr28_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr29_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_delayr29_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr30_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr31_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr32_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr33_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_delayr33_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr34_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr35_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr36_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_cm0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_cm1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_cm3_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_cm4_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_cm5_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_cm7_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_cm8_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_cm9_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_cm11_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_cm12_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_cm13_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_cm15_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_cm16_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_cm17_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_cm18_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add0_2_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add0_2_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add0_2_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add0_2_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add0_4_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_4_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_4_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_4_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_6_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_6_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_6_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_6_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_8_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_8_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_8_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_8_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_9_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_9_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_9_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_9_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_10_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_10_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_10_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_10_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_12_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_12_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_12_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_12_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_14_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_14_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_14_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_14_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add0_16_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add0_16_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add0_16_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add0_16_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add1_1_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add1_1_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add1_1_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add1_1_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add1_2_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add1_2_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add1_2_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add1_2_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add1_3_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add1_3_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add1_3_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add1_3_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add1_4_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_4_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_4_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_4_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_5_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_5_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_5_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_5_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_6_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add1_6_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add1_6_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add1_6_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add1_7_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add1_7_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add1_7_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add1_7_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add1_8_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add1_8_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add1_8_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add1_8_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add2_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add2_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add2_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add2_1_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add2_1_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add2_1_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add2_1_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add2_2_a : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_2_b : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_2_o : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_2_q : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_3_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add2_3_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add2_3_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add2_3_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add2_4_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add2_4_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add2_4_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add2_4_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add3_0_a : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add3_0_b : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add3_0_o : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add3_0_q : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add3_1_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add3_1_b : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add3_1_o : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add3_1_q : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add4_0_a : STD_LOGIC_VECTOR (52 downto 0);
    signal u0_m0_wo0_mtree_add4_0_b : STD_LOGIC_VECTOR (52 downto 0);
    signal u0_m0_wo0_mtree_add4_0_o : STD_LOGIC_VECTOR (52 downto 0);
    signal u0_m0_wo0_mtree_add4_0_q : STD_LOGIC_VECTOR (52 downto 0);
    signal u0_m0_wo0_mtree_add5_0_a : STD_LOGIC_VECTOR (53 downto 0);
    signal u0_m0_wo0_mtree_add5_0_b : STD_LOGIC_VECTOR (53 downto 0);
    signal u0_m0_wo0_mtree_add5_0_o : STD_LOGIC_VECTOR (53 downto 0);
    signal u0_m0_wo0_mtree_add5_0_q : STD_LOGIC_VECTOR (53 downto 0);
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_36_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_36_bs2_b_15_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_36_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im7_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im7_s1 : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_36_im7_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im11_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im11_s1 : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_36_im11_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_35_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_35_bs2_b_14_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_35_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im7_b0 : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im7_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_35_im7_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im11_b0 : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im11_s1 : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_35_im11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_1_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_1_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_1_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_1_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_33_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_33_bs2_b_13_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_33_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im7_b0 : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im7_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_33_im7_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im11_b0 : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im11_s1 : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_33_im11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_1_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_1_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_1_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_1_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_32_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_32_bs2_b_13_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_32_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im7_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im7_s1 : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_32_im7_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im11_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im11_s1 : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_32_im11_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_31_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_31_bs2_b_12_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_31_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im7_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im7_s1 : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_31_im7_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im11_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im11_s1 : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_31_im11_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_29_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_29_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_29_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im7_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im7_s1 : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_29_im7_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im11_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im11_s1 : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_29_im11_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_28_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_28_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_28_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im7_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im7_s1 : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_28_im7_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im11_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im11_s1 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_28_im11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_27_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_27_bs2_b_12_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_27_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im7_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im7_s1 : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_27_im7_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im11_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im11_s1 : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_27_im11_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_25_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_25_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_25_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im7_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im7_s1 : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_25_im7_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im11_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im11_s1 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_25_im11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_24_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_24_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_24_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im7_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im7_s1 : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_24_im7_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im11_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im11_s1 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_24_im11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_23_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_23_bs2_b_12_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_23_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im7_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im7_s1 : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_23_im7_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_s1 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_23_im11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_21_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_21_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_21_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_b0 : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_21_im7_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im11_b0 : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im11_s1 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_21_im11_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_1_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_1_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_1_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_1_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_20_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_20_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_20_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im7_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im7_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_20_im7_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im11_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im11_s1 : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_20_im11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_1_0_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_1_0_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_1_0_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_1_0_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_19_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_19_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_19_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_19_im7_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im11_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im11_s1 : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_19_im11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_1_0_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_1_0_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_1_0_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_1_0_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_18_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_18_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_18_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im7_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im7_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_18_im7_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im11_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im11_s1 : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_18_im11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_1_0_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_1_0_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_1_0_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_1_0_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_17_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_17_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_17_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_17_im7_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im11_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im11_s1 : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_17_im11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_1_0_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_1_0_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_1_0_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_1_0_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_16_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_16_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_16_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im7_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im7_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_16_im7_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im11_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im11_s1 : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_16_im11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_1_0_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_1_0_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_1_0_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_1_0_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_15_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_15_bs2_b_12_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_15_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_b0 : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_s1 : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_15_im7_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im11_b0 : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im11_s1 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_15_im11_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_1_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_1_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_1_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_1_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_13_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_13_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_13_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im7_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im7_s1 : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_13_im7_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_s1 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_13_im11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_12_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_12_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_12_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im7_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im7_s1 : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_12_im7_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im11_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im11_s1 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_12_im11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_11_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_11_bs2_b_12_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_11_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im7_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im7_s1 : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_11_im7_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im11_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im11_s1 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_11_im11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_9_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im7_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im7_s1 : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_im7_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im11_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im11_s1 : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_im11_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_8_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im7_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im7_s1 : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_im7_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im11_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im11_s1 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_im11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_1_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_1_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_1_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_1_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_7_bs2_b_12_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im7_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im7_s1 : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_im7_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im11_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im11_s1 : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_im11_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_5_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im7_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im7_s1 : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_im7_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im11_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im11_s1 : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_im11_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_4_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im7_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im7_s1 : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_im7_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im11_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im11_s1 : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_im11_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_3_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_3_bs2_b_12_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_3_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im7_b0 : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im7_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_3_im7_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im11_b0 : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im11_s1 : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_3_im11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_1_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_1_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_1_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_1_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_1_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im7_b0 : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im7_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_im7_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im11_b0 : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im11_s1 : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_im11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_1_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_1_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_1_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_1_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_0_bs2_b_11_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_b0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_im3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im7_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im7_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im7_s1 : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_im7_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im11_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im11_b0 : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im11_s1 : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_im11_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_1_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_1_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_1_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_1_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bjB10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs8_in : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs8_b : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bs8_in : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bs8_b : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bs8_in : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bs8_b : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs8_in : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs8_b : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs8_in : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs8_b : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs8_in : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs8_b : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs8_in : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs8_b : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs8_in : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs8_b : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs8_in : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs8_b : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs8_in : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs8_b : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs8_in : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs8_b : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs8_in : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs8_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs8_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs8_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs8_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs8_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs8_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs8_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_join_14_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_align_17_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_align_17_q_int : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_join_14_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_align_17_q : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_align_17_q_int : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_join_14_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_align_17_q : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_align_17_q_int : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_join_14_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_align_17_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_align_17_q_int : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_join_14_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_17_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_17_q_int : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_join_14_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_17_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_17_q_int : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_join_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_17_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_17_q_int : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_join_14_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_17_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_17_q_int : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_join_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_17_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_17_q_int : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_join_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_17_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_17_q_int : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_join_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_17_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_17_q_int : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_join_14_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_17_q : STD_LOGIC_VECTOR (40 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_17_q_int : STD_LOGIC_VECTOR (40 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_join_14_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_17_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_join_14_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_17_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_join_14_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_17_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_join_14_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_17_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_join_14_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_17_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_17_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_join_14_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_17_q : STD_LOGIC_VECTOR (40 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_17_q_int : STD_LOGIC_VECTOR (40 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_join_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_17_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_17_q_int : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_join_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_17_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_17_q_int : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_join_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_17_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_17_q_int : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_join_14_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_17_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_17_q_int : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_join_14_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_17_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_17_q_int : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_join_14_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_17_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_17_q_int : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_join_14_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_17_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_17_q_int : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_join_14_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_17_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_17_q_int : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_join_14_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_align_17_q : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_align_17_q_int : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_join_14_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_align_17_q : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_align_17_q_int : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_join_14_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_15_q : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_15_q_int : STD_LOGIC_VECTOR (41 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_17_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_17_q_int : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- u0_m0_wo0_cm0(CONSTANT,44)@0
    u0_m0_wo0_cm0_q <= "010010000110101010011";

    -- u0_m0_wo0_mtree_mult1_36_bs8(BITSELECT,174)@10
    u0_m0_wo0_mtree_mult1_36_bs8_in <= STD_LOGIC_VECTOR(u0_m0_wo0_cm0_q);
    u0_m0_wo0_mtree_mult1_36_bs8_b <= u0_m0_wo0_mtree_mult1_36_bs8_in(20 downto 17);

    -- xIn(PORTIN,2)@10

    -- d_u0_m0_wo0_wi0_phasedelay0_q_14(DELAY,776)@10
    d_u0_m0_wo0_wi0_phasedelay0_q_14 : dspba_delay
    GENERIC MAP ( width => 24, depth => 4 )
    PORT MAP ( xin => xIn_0, xout => d_u0_m0_wo0_wi0_phasedelay0_q_14_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_36_bs2(BITSELECT,168)@14
    u0_m0_wo0_mtree_mult1_36_bs2_in <= d_u0_m0_wo0_wi0_phasedelay0_q_14_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_36_bs2_b <= u0_m0_wo0_mtree_mult1_36_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_36_bs2_b_15(DELAY,787)@14
    d_u0_m0_wo0_mtree_mult1_36_bs2_b_15 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_36_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_36_bs2_b_15_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_36_bjB10(BITJOIN,176)@15
    u0_m0_wo0_mtree_mult1_36_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_36_bs2_b_15_q;

    -- u0_m0_wo0_mtree_mult1_36_im7(MULT,173)@15
    u0_m0_wo0_mtree_mult1_36_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bjB10_q);
    u0_m0_wo0_mtree_mult1_36_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bs8_b);
    u0_m0_wo0_mtree_mult1_36_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_36_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 4,
        lpm_widthp => 22,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_36_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_36_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_36_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_36_im7_s1
    );
    u0_m0_wo0_mtree_mult1_36_im7_q <= u0_m0_wo0_mtree_mult1_36_im7_s1;

    -- u0_m0_wo0_mtree_mult1_36_align_17(BITSHIFT,183)@17
    u0_m0_wo0_mtree_mult1_36_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_36_align_17_q <= u0_m0_wo0_mtree_mult1_36_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_36_bs6(BITSELECT,172)@14
    u0_m0_wo0_mtree_mult1_36_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_phasedelay0_q_14_q);
    u0_m0_wo0_mtree_mult1_36_bs6_b <= u0_m0_wo0_mtree_mult1_36_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_36_bs1(BITSELECT,167)@10
    u0_m0_wo0_mtree_mult1_36_bs1_in <= u0_m0_wo0_cm0_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_36_bs1_b <= u0_m0_wo0_mtree_mult1_36_bs1_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_bjA5(BITJOIN,171)@10
    u0_m0_wo0_mtree_mult1_36_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_36_bs1_b;

    -- u0_m0_wo0_mtree_mult1_36_im3(MULT,169)@14
    u0_m0_wo0_mtree_mult1_36_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bjA5_q);
    u0_m0_wo0_mtree_mult1_36_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bs6_b);
    u0_m0_wo0_mtree_mult1_36_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_36_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_36_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_36_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_36_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_36_im3_s1
    );
    u0_m0_wo0_mtree_mult1_36_im3_q <= u0_m0_wo0_mtree_mult1_36_im3_s1;

    -- u0_m0_wo0_mtree_mult1_36_align_15(BITSHIFT,181)@16
    u0_m0_wo0_mtree_mult1_36_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_36_align_15_q <= u0_m0_wo0_mtree_mult1_36_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_36_im11(MULT,177)@14
    u0_m0_wo0_mtree_mult1_36_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bs6_b);
    u0_m0_wo0_mtree_mult1_36_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bs8_b);
    u0_m0_wo0_mtree_mult1_36_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_36_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 4,
        lpm_widthp => 11,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_36_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_36_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_36_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_36_im11_s1
    );
    u0_m0_wo0_mtree_mult1_36_im11_q <= u0_m0_wo0_mtree_mult1_36_im11_s1;

    -- u0_m0_wo0_mtree_mult1_36_im0(MULT,166)@14
    u0_m0_wo0_mtree_mult1_36_im0_a0 <= u0_m0_wo0_mtree_mult1_36_bs1_b;
    u0_m0_wo0_mtree_mult1_36_im0_b0 <= u0_m0_wo0_mtree_mult1_36_bs2_b;
    u0_m0_wo0_mtree_mult1_36_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_36_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_36_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_36_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_36_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_36_im0_s1
    );
    u0_m0_wo0_mtree_mult1_36_im0_q <= u0_m0_wo0_mtree_mult1_36_im0_s1;

    -- u0_m0_wo0_mtree_mult1_36_join_14(BITJOIN,180)@16
    u0_m0_wo0_mtree_mult1_36_join_14_q <= u0_m0_wo0_mtree_mult1_36_im11_q & u0_m0_wo0_mtree_mult1_36_im0_q;

    -- u0_m0_wo0_mtree_mult1_36_result_add_0_0(ADD,185)@16
    u0_m0_wo0_mtree_mult1_36_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_36_join_14_q(44)) & u0_m0_wo0_mtree_mult1_36_join_14_q));
    u0_m0_wo0_mtree_mult1_36_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 42 => u0_m0_wo0_mtree_mult1_36_align_15_q(41)) & u0_m0_wo0_mtree_mult1_36_align_15_q));
    u0_m0_wo0_mtree_mult1_36_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_36_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_36_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_36_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_36_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_36_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_36_result_add_0_0_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_result_add_1_0(ADD,186)@17
    u0_m0_wo0_mtree_mult1_36_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_36_result_add_0_0_q(45)) & u0_m0_wo0_mtree_mult1_36_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_36_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 39 => u0_m0_wo0_mtree_mult1_36_align_17_q(38)) & u0_m0_wo0_mtree_mult1_36_align_17_q));
    u0_m0_wo0_mtree_mult1_36_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_36_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_36_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_36_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_36_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_36_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_36_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_cm1(CONSTANT,45)@0
    u0_m0_wo0_cm1_q <= "01101100011100000011";

    -- u0_m0_wo0_mtree_mult1_35_bs8(BITSELECT,195)@10
    u0_m0_wo0_mtree_mult1_35_bs8_in <= STD_LOGIC_VECTOR(u0_m0_wo0_cm1_q);
    u0_m0_wo0_mtree_mult1_35_bs8_b <= u0_m0_wo0_mtree_mult1_35_bs8_in(19 downto 17);

    -- u0_m0_wo0_wi0_delayr1(DELAY,8)@10
    u0_m0_wo0_wi0_delayr1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => xIn_0, xout => u0_m0_wo0_wi0_delayr1_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_delayr1_q_13(DELAY,777)@10
    d_u0_m0_wo0_wi0_delayr1_q_13 : dspba_delay
    GENERIC MAP ( width => 24, depth => 3 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr1_q, xout => d_u0_m0_wo0_wi0_delayr1_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_35_bs2(BITSELECT,189)@13
    u0_m0_wo0_mtree_mult1_35_bs2_in <= d_u0_m0_wo0_wi0_delayr1_q_13_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_35_bs2_b <= u0_m0_wo0_mtree_mult1_35_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_35_bs2_b_14(DELAY,788)@13
    d_u0_m0_wo0_mtree_mult1_35_bs2_b_14 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_35_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_35_bs2_b_14_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_35_bjB10(BITJOIN,197)@14
    u0_m0_wo0_mtree_mult1_35_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_35_bs2_b_14_q;

    -- u0_m0_wo0_mtree_mult1_35_im7(MULT,194)@14
    u0_m0_wo0_mtree_mult1_35_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bjB10_q);
    u0_m0_wo0_mtree_mult1_35_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bs8_b);
    u0_m0_wo0_mtree_mult1_35_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_35_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 3,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_35_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_35_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_35_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_35_im7_s1
    );
    u0_m0_wo0_mtree_mult1_35_im7_q <= u0_m0_wo0_mtree_mult1_35_im7_s1;

    -- u0_m0_wo0_mtree_mult1_35_align_17(BITSHIFT,204)@16
    u0_m0_wo0_mtree_mult1_35_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_35_align_17_q <= u0_m0_wo0_mtree_mult1_35_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_35_bs6(BITSELECT,193)@13
    u0_m0_wo0_mtree_mult1_35_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_delayr1_q_13_q);
    u0_m0_wo0_mtree_mult1_35_bs6_b <= u0_m0_wo0_mtree_mult1_35_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_35_bs1(BITSELECT,188)@10
    u0_m0_wo0_mtree_mult1_35_bs1_in <= u0_m0_wo0_cm1_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_35_bs1_b <= u0_m0_wo0_mtree_mult1_35_bs1_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_bjA5(BITJOIN,192)@10
    u0_m0_wo0_mtree_mult1_35_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_35_bs1_b;

    -- u0_m0_wo0_mtree_mult1_35_im3(MULT,190)@13
    u0_m0_wo0_mtree_mult1_35_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bjA5_q);
    u0_m0_wo0_mtree_mult1_35_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bs6_b);
    u0_m0_wo0_mtree_mult1_35_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_35_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_35_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_35_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_35_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_35_im3_s1
    );
    u0_m0_wo0_mtree_mult1_35_im3_q <= u0_m0_wo0_mtree_mult1_35_im3_s1;

    -- u0_m0_wo0_mtree_mult1_35_align_15(BITSHIFT,202)@15
    u0_m0_wo0_mtree_mult1_35_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_35_align_15_q <= u0_m0_wo0_mtree_mult1_35_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_35_im11(MULT,198)@13
    u0_m0_wo0_mtree_mult1_35_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bs6_b);
    u0_m0_wo0_mtree_mult1_35_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bs8_b);
    u0_m0_wo0_mtree_mult1_35_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_35_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 3,
        lpm_widthp => 10,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_35_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_35_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_35_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_35_im11_s1
    );
    u0_m0_wo0_mtree_mult1_35_im11_q <= u0_m0_wo0_mtree_mult1_35_im11_s1;

    -- u0_m0_wo0_mtree_mult1_35_im0(MULT,187)@13
    u0_m0_wo0_mtree_mult1_35_im0_a0 <= u0_m0_wo0_mtree_mult1_35_bs1_b;
    u0_m0_wo0_mtree_mult1_35_im0_b0 <= u0_m0_wo0_mtree_mult1_35_bs2_b;
    u0_m0_wo0_mtree_mult1_35_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_35_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_35_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_35_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_35_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_35_im0_s1
    );
    u0_m0_wo0_mtree_mult1_35_im0_q <= u0_m0_wo0_mtree_mult1_35_im0_s1;

    -- u0_m0_wo0_mtree_mult1_35_join_14(BITJOIN,201)@15
    u0_m0_wo0_mtree_mult1_35_join_14_q <= u0_m0_wo0_mtree_mult1_35_im11_q & u0_m0_wo0_mtree_mult1_35_im0_q;

    -- u0_m0_wo0_mtree_mult1_35_result_add_0_0(ADD,206)@15
    u0_m0_wo0_mtree_mult1_35_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_35_join_14_q(43)) & u0_m0_wo0_mtree_mult1_35_join_14_q));
    u0_m0_wo0_mtree_mult1_35_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 42 => u0_m0_wo0_mtree_mult1_35_align_15_q(41)) & u0_m0_wo0_mtree_mult1_35_align_15_q));
    u0_m0_wo0_mtree_mult1_35_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_35_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_35_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_35_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_35_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_35_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_35_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_result_add_1_0(ADD,207)@16
    u0_m0_wo0_mtree_mult1_35_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_35_result_add_0_0_q(44)) & u0_m0_wo0_mtree_mult1_35_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_35_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 38 => u0_m0_wo0_mtree_mult1_35_align_17_q(37)) & u0_m0_wo0_mtree_mult1_35_align_17_q));
    u0_m0_wo0_mtree_mult1_35_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_35_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_35_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_35_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_35_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_35_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_35_result_add_1_0_o(45 downto 0);

    -- u0_m0_wo0_cm3(CONSTANT,47)@0
    u0_m0_wo0_cm3_q <= "10000101000110010110";

    -- u0_m0_wo0_mtree_mult1_33_bs8(BITSELECT,216)@11
    u0_m0_wo0_mtree_mult1_33_bs8_in <= STD_LOGIC_VECTOR(u0_m0_wo0_cm3_q);
    u0_m0_wo0_mtree_mult1_33_bs8_b <= u0_m0_wo0_mtree_mult1_33_bs8_in(19 downto 17);

    -- u0_m0_wo0_wi0_delayr2(DELAY,9)@10
    u0_m0_wo0_wi0_delayr2 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr1_q, xout => u0_m0_wo0_wi0_delayr2_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_delayr3(DELAY,10)@10
    u0_m0_wo0_wi0_delayr3 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr2_q, xout => u0_m0_wo0_wi0_delayr3_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_delayr3_q_12(DELAY,778)@10
    d_u0_m0_wo0_wi0_delayr3_q_12 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr3_q, xout => d_u0_m0_wo0_wi0_delayr3_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_33_bs2(BITSELECT,210)@12
    u0_m0_wo0_mtree_mult1_33_bs2_in <= d_u0_m0_wo0_wi0_delayr3_q_12_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_33_bs2_b <= u0_m0_wo0_mtree_mult1_33_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_33_bs2_b_13(DELAY,789)@12
    d_u0_m0_wo0_mtree_mult1_33_bs2_b_13 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_33_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_33_bs2_b_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_33_bjB10(BITJOIN,218)@13
    u0_m0_wo0_mtree_mult1_33_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_33_bs2_b_13_q;

    -- u0_m0_wo0_mtree_mult1_33_im7(MULT,215)@13
    u0_m0_wo0_mtree_mult1_33_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bjB10_q);
    u0_m0_wo0_mtree_mult1_33_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bs8_b);
    u0_m0_wo0_mtree_mult1_33_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_33_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 3,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_33_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_33_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_33_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_33_im7_s1
    );
    u0_m0_wo0_mtree_mult1_33_im7_q <= u0_m0_wo0_mtree_mult1_33_im7_s1;

    -- u0_m0_wo0_mtree_mult1_33_align_17(BITSHIFT,225)@15
    u0_m0_wo0_mtree_mult1_33_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_33_align_17_q <= u0_m0_wo0_mtree_mult1_33_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_33_bs6(BITSELECT,214)@12
    u0_m0_wo0_mtree_mult1_33_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_delayr3_q_12_q);
    u0_m0_wo0_mtree_mult1_33_bs6_b <= u0_m0_wo0_mtree_mult1_33_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_33_bs1(BITSELECT,209)@11
    u0_m0_wo0_mtree_mult1_33_bs1_in <= u0_m0_wo0_cm3_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_33_bs1_b <= u0_m0_wo0_mtree_mult1_33_bs1_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_bjA5(BITJOIN,213)@11
    u0_m0_wo0_mtree_mult1_33_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_33_bs1_b;

    -- u0_m0_wo0_mtree_mult1_33_im3(MULT,211)@12
    u0_m0_wo0_mtree_mult1_33_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bjA5_q);
    u0_m0_wo0_mtree_mult1_33_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bs6_b);
    u0_m0_wo0_mtree_mult1_33_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_33_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_33_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_33_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_33_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_33_im3_s1
    );
    u0_m0_wo0_mtree_mult1_33_im3_q <= u0_m0_wo0_mtree_mult1_33_im3_s1;

    -- u0_m0_wo0_mtree_mult1_33_align_15(BITSHIFT,223)@14
    u0_m0_wo0_mtree_mult1_33_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_33_align_15_q <= u0_m0_wo0_mtree_mult1_33_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_33_im11(MULT,219)@12
    u0_m0_wo0_mtree_mult1_33_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bs6_b);
    u0_m0_wo0_mtree_mult1_33_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bs8_b);
    u0_m0_wo0_mtree_mult1_33_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_33_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 3,
        lpm_widthp => 10,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_33_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_33_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_33_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_33_im11_s1
    );
    u0_m0_wo0_mtree_mult1_33_im11_q <= u0_m0_wo0_mtree_mult1_33_im11_s1;

    -- u0_m0_wo0_mtree_mult1_33_im0(MULT,208)@12
    u0_m0_wo0_mtree_mult1_33_im0_a0 <= u0_m0_wo0_mtree_mult1_33_bs1_b;
    u0_m0_wo0_mtree_mult1_33_im0_b0 <= u0_m0_wo0_mtree_mult1_33_bs2_b;
    u0_m0_wo0_mtree_mult1_33_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_33_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_33_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_33_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_33_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_33_im0_s1
    );
    u0_m0_wo0_mtree_mult1_33_im0_q <= u0_m0_wo0_mtree_mult1_33_im0_s1;

    -- u0_m0_wo0_mtree_mult1_33_join_14(BITJOIN,222)@14
    u0_m0_wo0_mtree_mult1_33_join_14_q <= u0_m0_wo0_mtree_mult1_33_im11_q & u0_m0_wo0_mtree_mult1_33_im0_q;

    -- u0_m0_wo0_mtree_mult1_33_result_add_0_0(ADD,227)@14
    u0_m0_wo0_mtree_mult1_33_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_33_join_14_q(43)) & u0_m0_wo0_mtree_mult1_33_join_14_q));
    u0_m0_wo0_mtree_mult1_33_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 42 => u0_m0_wo0_mtree_mult1_33_align_15_q(41)) & u0_m0_wo0_mtree_mult1_33_align_15_q));
    u0_m0_wo0_mtree_mult1_33_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_33_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_33_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_33_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_33_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_33_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_33_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_result_add_1_0(ADD,228)@15
    u0_m0_wo0_mtree_mult1_33_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_33_result_add_0_0_q(44)) & u0_m0_wo0_mtree_mult1_33_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_33_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 38 => u0_m0_wo0_mtree_mult1_33_align_17_q(37)) & u0_m0_wo0_mtree_mult1_33_align_17_q));
    u0_m0_wo0_mtree_mult1_33_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_33_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_33_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_33_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_33_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_33_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_33_result_add_1_0_o(45 downto 0);

    -- u0_m0_wo0_cm4(CONSTANT,48)@0
    u0_m0_wo0_cm4_q <= "101000101110001100110";

    -- u0_m0_wo0_mtree_mult1_32_bs8(BITSELECT,237)@10
    u0_m0_wo0_mtree_mult1_32_bs8_in <= STD_LOGIC_VECTOR(u0_m0_wo0_cm4_q);
    u0_m0_wo0_mtree_mult1_32_bs8_b <= u0_m0_wo0_mtree_mult1_32_bs8_in(20 downto 17);

    -- u0_m0_wo0_wi0_delayr4(DELAY,11)@10
    u0_m0_wo0_wi0_delayr4 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr3_q, xout => u0_m0_wo0_wi0_delayr4_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_delayr4_q_12(DELAY,779)@10
    d_u0_m0_wo0_wi0_delayr4_q_12 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr4_q, xout => d_u0_m0_wo0_wi0_delayr4_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_32_bs2(BITSELECT,231)@12
    u0_m0_wo0_mtree_mult1_32_bs2_in <= d_u0_m0_wo0_wi0_delayr4_q_12_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_32_bs2_b <= u0_m0_wo0_mtree_mult1_32_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_32_bs2_b_13(DELAY,790)@12
    d_u0_m0_wo0_mtree_mult1_32_bs2_b_13 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_32_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_32_bs2_b_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_32_bjB10(BITJOIN,239)@13
    u0_m0_wo0_mtree_mult1_32_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_32_bs2_b_13_q;

    -- u0_m0_wo0_mtree_mult1_32_im7(MULT,236)@13
    u0_m0_wo0_mtree_mult1_32_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bjB10_q);
    u0_m0_wo0_mtree_mult1_32_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bs8_b);
    u0_m0_wo0_mtree_mult1_32_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_32_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 4,
        lpm_widthp => 22,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_32_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_32_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_32_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_32_im7_s1
    );
    u0_m0_wo0_mtree_mult1_32_im7_q <= u0_m0_wo0_mtree_mult1_32_im7_s1;

    -- u0_m0_wo0_mtree_mult1_32_align_17(BITSHIFT,246)@15
    u0_m0_wo0_mtree_mult1_32_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_32_align_17_q <= u0_m0_wo0_mtree_mult1_32_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_32_bs6(BITSELECT,235)@12
    u0_m0_wo0_mtree_mult1_32_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_delayr4_q_12_q);
    u0_m0_wo0_mtree_mult1_32_bs6_b <= u0_m0_wo0_mtree_mult1_32_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_32_bs1(BITSELECT,230)@10
    u0_m0_wo0_mtree_mult1_32_bs1_in <= u0_m0_wo0_cm4_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_32_bs1_b <= u0_m0_wo0_mtree_mult1_32_bs1_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_bjA5(BITJOIN,234)@10
    u0_m0_wo0_mtree_mult1_32_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_32_bs1_b;

    -- u0_m0_wo0_mtree_mult1_32_im3(MULT,232)@12
    u0_m0_wo0_mtree_mult1_32_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bjA5_q);
    u0_m0_wo0_mtree_mult1_32_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bs6_b);
    u0_m0_wo0_mtree_mult1_32_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_32_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_32_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_32_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_32_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_32_im3_s1
    );
    u0_m0_wo0_mtree_mult1_32_im3_q <= u0_m0_wo0_mtree_mult1_32_im3_s1;

    -- u0_m0_wo0_mtree_mult1_32_align_15(BITSHIFT,244)@14
    u0_m0_wo0_mtree_mult1_32_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_32_align_15_q <= u0_m0_wo0_mtree_mult1_32_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_32_im11(MULT,240)@12
    u0_m0_wo0_mtree_mult1_32_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bs6_b);
    u0_m0_wo0_mtree_mult1_32_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bs8_b);
    u0_m0_wo0_mtree_mult1_32_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_32_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 4,
        lpm_widthp => 11,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_32_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_32_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_32_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_32_im11_s1
    );
    u0_m0_wo0_mtree_mult1_32_im11_q <= u0_m0_wo0_mtree_mult1_32_im11_s1;

    -- u0_m0_wo0_mtree_mult1_32_im0(MULT,229)@12
    u0_m0_wo0_mtree_mult1_32_im0_a0 <= u0_m0_wo0_mtree_mult1_32_bs1_b;
    u0_m0_wo0_mtree_mult1_32_im0_b0 <= u0_m0_wo0_mtree_mult1_32_bs2_b;
    u0_m0_wo0_mtree_mult1_32_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_32_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_32_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_32_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_32_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_32_im0_s1
    );
    u0_m0_wo0_mtree_mult1_32_im0_q <= u0_m0_wo0_mtree_mult1_32_im0_s1;

    -- u0_m0_wo0_mtree_mult1_32_join_14(BITJOIN,243)@14
    u0_m0_wo0_mtree_mult1_32_join_14_q <= u0_m0_wo0_mtree_mult1_32_im11_q & u0_m0_wo0_mtree_mult1_32_im0_q;

    -- u0_m0_wo0_mtree_mult1_32_result_add_0_0(ADD,248)@14
    u0_m0_wo0_mtree_mult1_32_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_32_join_14_q(44)) & u0_m0_wo0_mtree_mult1_32_join_14_q));
    u0_m0_wo0_mtree_mult1_32_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 42 => u0_m0_wo0_mtree_mult1_32_align_15_q(41)) & u0_m0_wo0_mtree_mult1_32_align_15_q));
    u0_m0_wo0_mtree_mult1_32_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_32_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_32_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_32_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_32_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_32_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_32_result_add_0_0_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_result_add_1_0(ADD,249)@15
    u0_m0_wo0_mtree_mult1_32_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_32_result_add_0_0_q(45)) & u0_m0_wo0_mtree_mult1_32_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_32_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 39 => u0_m0_wo0_mtree_mult1_32_align_17_q(38)) & u0_m0_wo0_mtree_mult1_32_align_17_q));
    u0_m0_wo0_mtree_mult1_32_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_32_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_32_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_32_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_32_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_32_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_32_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_add0_16(ADD,134)@16
    u0_m0_wo0_mtree_add0_16_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_result_add_1_0_q(45 downto 0));
    u0_m0_wo0_mtree_add0_16_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_result_add_1_0_q);
    u0_m0_wo0_mtree_add0_16: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_16_a) + SIGNED(u0_m0_wo0_mtree_add0_16_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_16_q <= u0_m0_wo0_mtree_add0_16_o(45 downto 0);

    -- u0_m0_wo0_mtree_add1_8(ADD,144)@17
    u0_m0_wo0_mtree_add1_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_add0_16_q(45)) & u0_m0_wo0_mtree_add0_16_q));
    u0_m0_wo0_mtree_add1_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_35_result_add_1_0_q(45)) & u0_m0_wo0_mtree_mult1_35_result_add_1_0_q));
    u0_m0_wo0_mtree_add1_8: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_8_a) + SIGNED(u0_m0_wo0_mtree_add1_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_8_q <= u0_m0_wo0_mtree_add1_8_o(46 downto 0);

    -- u0_m0_wo0_mtree_add2_4(ADD,149)@18
    u0_m0_wo0_mtree_add2_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add1_8_q(46)) & u0_m0_wo0_mtree_add1_8_q));
    u0_m0_wo0_mtree_add2_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_36_result_add_1_0_q(46)) & u0_m0_wo0_mtree_mult1_36_result_add_1_0_q));
    u0_m0_wo0_mtree_add2_4: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_4_a) + SIGNED(u0_m0_wo0_mtree_add2_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_4_q <= u0_m0_wo0_mtree_add2_4_o(47 downto 0);

    -- u0_m0_wo0_cm5(CONSTANT,49)@0
    u0_m0_wo0_cm5_q <= "101110010001100001010";

    -- u0_m0_wo0_mtree_mult1_31_bs8(BITSELECT,258)@10
    u0_m0_wo0_mtree_mult1_31_bs8_in <= STD_LOGIC_VECTOR(u0_m0_wo0_cm5_q);
    u0_m0_wo0_mtree_mult1_31_bs8_b <= u0_m0_wo0_mtree_mult1_31_bs8_in(20 downto 17);

    -- u0_m0_wo0_wi0_delayr5(DELAY,12)@10
    u0_m0_wo0_wi0_delayr5 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr4_q, xout => u0_m0_wo0_wi0_delayr5_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_delayr5_q_11(DELAY,780)@10
    d_u0_m0_wo0_wi0_delayr5_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr5_q, xout => d_u0_m0_wo0_wi0_delayr5_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_31_bs2(BITSELECT,252)@11
    u0_m0_wo0_mtree_mult1_31_bs2_in <= d_u0_m0_wo0_wi0_delayr5_q_11_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_31_bs2_b <= u0_m0_wo0_mtree_mult1_31_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_31_bs2_b_12(DELAY,791)@11
    d_u0_m0_wo0_mtree_mult1_31_bs2_b_12 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_31_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_31_bs2_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_31_bjB10(BITJOIN,260)@12
    u0_m0_wo0_mtree_mult1_31_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_31_bs2_b_12_q;

    -- u0_m0_wo0_mtree_mult1_31_im7(MULT,257)@12
    u0_m0_wo0_mtree_mult1_31_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bjB10_q);
    u0_m0_wo0_mtree_mult1_31_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bs8_b);
    u0_m0_wo0_mtree_mult1_31_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_31_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 4,
        lpm_widthp => 22,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_31_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_31_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_31_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_31_im7_s1
    );
    u0_m0_wo0_mtree_mult1_31_im7_q <= u0_m0_wo0_mtree_mult1_31_im7_s1;

    -- u0_m0_wo0_mtree_mult1_31_align_17(BITSHIFT,267)@14
    u0_m0_wo0_mtree_mult1_31_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_31_align_17_q <= u0_m0_wo0_mtree_mult1_31_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_31_bs6(BITSELECT,256)@11
    u0_m0_wo0_mtree_mult1_31_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_delayr5_q_11_q);
    u0_m0_wo0_mtree_mult1_31_bs6_b <= u0_m0_wo0_mtree_mult1_31_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_31_bs1(BITSELECT,251)@10
    u0_m0_wo0_mtree_mult1_31_bs1_in <= u0_m0_wo0_cm5_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_31_bs1_b <= u0_m0_wo0_mtree_mult1_31_bs1_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_bjA5(BITJOIN,255)@10
    u0_m0_wo0_mtree_mult1_31_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_31_bs1_b;

    -- u0_m0_wo0_mtree_mult1_31_im3(MULT,253)@11
    u0_m0_wo0_mtree_mult1_31_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bjA5_q);
    u0_m0_wo0_mtree_mult1_31_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bs6_b);
    u0_m0_wo0_mtree_mult1_31_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_31_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_31_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_31_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_31_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_31_im3_s1
    );
    u0_m0_wo0_mtree_mult1_31_im3_q <= u0_m0_wo0_mtree_mult1_31_im3_s1;

    -- u0_m0_wo0_mtree_mult1_31_align_15(BITSHIFT,265)@13
    u0_m0_wo0_mtree_mult1_31_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_31_align_15_q <= u0_m0_wo0_mtree_mult1_31_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_31_im11(MULT,261)@11
    u0_m0_wo0_mtree_mult1_31_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bs6_b);
    u0_m0_wo0_mtree_mult1_31_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bs8_b);
    u0_m0_wo0_mtree_mult1_31_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_31_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 4,
        lpm_widthp => 11,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_31_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_31_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_31_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_31_im11_s1
    );
    u0_m0_wo0_mtree_mult1_31_im11_q <= u0_m0_wo0_mtree_mult1_31_im11_s1;

    -- u0_m0_wo0_mtree_mult1_31_im0(MULT,250)@11
    u0_m0_wo0_mtree_mult1_31_im0_a0 <= u0_m0_wo0_mtree_mult1_31_bs1_b;
    u0_m0_wo0_mtree_mult1_31_im0_b0 <= u0_m0_wo0_mtree_mult1_31_bs2_b;
    u0_m0_wo0_mtree_mult1_31_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_31_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_31_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_31_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_31_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_31_im0_s1
    );
    u0_m0_wo0_mtree_mult1_31_im0_q <= u0_m0_wo0_mtree_mult1_31_im0_s1;

    -- u0_m0_wo0_mtree_mult1_31_join_14(BITJOIN,264)@13
    u0_m0_wo0_mtree_mult1_31_join_14_q <= u0_m0_wo0_mtree_mult1_31_im11_q & u0_m0_wo0_mtree_mult1_31_im0_q;

    -- u0_m0_wo0_mtree_mult1_31_result_add_0_0(ADD,269)@13
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_31_join_14_q(44)) & u0_m0_wo0_mtree_mult1_31_join_14_q));
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 42 => u0_m0_wo0_mtree_mult1_31_align_15_q(41)) & u0_m0_wo0_mtree_mult1_31_align_15_q));
    u0_m0_wo0_mtree_mult1_31_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_31_result_add_0_0_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_result_add_1_0(ADD,270)@14
    u0_m0_wo0_mtree_mult1_31_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_31_result_add_0_0_q(45)) & u0_m0_wo0_mtree_mult1_31_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_31_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 39 => u0_m0_wo0_mtree_mult1_31_align_17_q(38)) & u0_m0_wo0_mtree_mult1_31_align_17_q));
    u0_m0_wo0_mtree_mult1_31_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_31_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_cm7(CONSTANT,51)@0
    u0_m0_wo0_cm7_q <= "010100111100111001010";

    -- u0_m0_wo0_mtree_mult1_29_bs8(BITSELECT,279)@10
    u0_m0_wo0_mtree_mult1_29_bs8_in <= STD_LOGIC_VECTOR(u0_m0_wo0_cm7_q);
    u0_m0_wo0_mtree_mult1_29_bs8_b <= u0_m0_wo0_mtree_mult1_29_bs8_in(20 downto 17);

    -- u0_m0_wo0_wi0_delayr6(DELAY,13)@10
    u0_m0_wo0_wi0_delayr6 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr5_q, xout => u0_m0_wo0_wi0_delayr6_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_delayr7(DELAY,14)@10
    u0_m0_wo0_wi0_delayr7 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr6_q, xout => u0_m0_wo0_wi0_delayr7_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_29_bs2(BITSELECT,273)@10
    u0_m0_wo0_mtree_mult1_29_bs2_in <= u0_m0_wo0_wi0_delayr7_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_29_bs2_b <= u0_m0_wo0_mtree_mult1_29_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_29_bs2_b_11(DELAY,792)@10
    d_u0_m0_wo0_mtree_mult1_29_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_29_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_29_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_29_bjB10(BITJOIN,281)@11
    u0_m0_wo0_mtree_mult1_29_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_29_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_29_im7(MULT,278)@11
    u0_m0_wo0_mtree_mult1_29_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bjB10_q);
    u0_m0_wo0_mtree_mult1_29_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bs8_b);
    u0_m0_wo0_mtree_mult1_29_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_29_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 4,
        lpm_widthp => 22,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_29_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_29_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_29_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_29_im7_s1
    );
    u0_m0_wo0_mtree_mult1_29_im7_q <= u0_m0_wo0_mtree_mult1_29_im7_s1;

    -- u0_m0_wo0_mtree_mult1_29_align_17(BITSHIFT,288)@13
    u0_m0_wo0_mtree_mult1_29_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_29_align_17_q <= u0_m0_wo0_mtree_mult1_29_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_29_bs6(BITSELECT,277)@10
    u0_m0_wo0_mtree_mult1_29_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr7_q);
    u0_m0_wo0_mtree_mult1_29_bs6_b <= u0_m0_wo0_mtree_mult1_29_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_29_bs1(BITSELECT,272)@10
    u0_m0_wo0_mtree_mult1_29_bs1_in <= u0_m0_wo0_cm7_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_29_bs1_b <= u0_m0_wo0_mtree_mult1_29_bs1_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_bjA5(BITJOIN,276)@10
    u0_m0_wo0_mtree_mult1_29_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_29_bs1_b;

    -- u0_m0_wo0_mtree_mult1_29_im3(MULT,274)@10
    u0_m0_wo0_mtree_mult1_29_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bjA5_q);
    u0_m0_wo0_mtree_mult1_29_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bs6_b);
    u0_m0_wo0_mtree_mult1_29_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_29_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_29_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_29_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_29_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_29_im3_s1
    );
    u0_m0_wo0_mtree_mult1_29_im3_q <= u0_m0_wo0_mtree_mult1_29_im3_s1;

    -- u0_m0_wo0_mtree_mult1_29_align_15(BITSHIFT,286)@12
    u0_m0_wo0_mtree_mult1_29_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_29_align_15_q <= u0_m0_wo0_mtree_mult1_29_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_29_im11(MULT,282)@10
    u0_m0_wo0_mtree_mult1_29_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bs6_b);
    u0_m0_wo0_mtree_mult1_29_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bs8_b);
    u0_m0_wo0_mtree_mult1_29_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_29_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 4,
        lpm_widthp => 11,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_29_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_29_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_29_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_29_im11_s1
    );
    u0_m0_wo0_mtree_mult1_29_im11_q <= u0_m0_wo0_mtree_mult1_29_im11_s1;

    -- u0_m0_wo0_mtree_mult1_29_im0(MULT,271)@10
    u0_m0_wo0_mtree_mult1_29_im0_a0 <= u0_m0_wo0_mtree_mult1_29_bs1_b;
    u0_m0_wo0_mtree_mult1_29_im0_b0 <= u0_m0_wo0_mtree_mult1_29_bs2_b;
    u0_m0_wo0_mtree_mult1_29_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_29_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_29_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_29_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_29_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_29_im0_s1
    );
    u0_m0_wo0_mtree_mult1_29_im0_q <= u0_m0_wo0_mtree_mult1_29_im0_s1;

    -- u0_m0_wo0_mtree_mult1_29_join_14(BITJOIN,285)@12
    u0_m0_wo0_mtree_mult1_29_join_14_q <= u0_m0_wo0_mtree_mult1_29_im11_q & u0_m0_wo0_mtree_mult1_29_im0_q;

    -- u0_m0_wo0_mtree_mult1_29_result_add_0_0(ADD,290)@12
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_29_join_14_q(44)) & u0_m0_wo0_mtree_mult1_29_join_14_q));
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 42 => u0_m0_wo0_mtree_mult1_29_align_15_q(41)) & u0_m0_wo0_mtree_mult1_29_align_15_q));
    u0_m0_wo0_mtree_mult1_29_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_29_result_add_0_0_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_result_add_1_0(ADD,291)@13
    u0_m0_wo0_mtree_mult1_29_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_29_result_add_0_0_q(45)) & u0_m0_wo0_mtree_mult1_29_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_29_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 39 => u0_m0_wo0_mtree_mult1_29_align_17_q(38)) & u0_m0_wo0_mtree_mult1_29_align_17_q));
    u0_m0_wo0_mtree_mult1_29_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_29_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_29_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_cm8(CONSTANT,52)@0
    u0_m0_wo0_cm8_q <= "0100000100101111100001";

    -- u0_m0_wo0_mtree_mult1_28_bs8(BITSELECT,300)@10
    u0_m0_wo0_mtree_mult1_28_bs8_in <= STD_LOGIC_VECTOR(u0_m0_wo0_cm8_q);
    u0_m0_wo0_mtree_mult1_28_bs8_b <= u0_m0_wo0_mtree_mult1_28_bs8_in(21 downto 17);

    -- u0_m0_wo0_wi0_delayr8(DELAY,15)@10
    u0_m0_wo0_wi0_delayr8 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr7_q, xout => u0_m0_wo0_wi0_delayr8_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_28_bs2(BITSELECT,294)@10
    u0_m0_wo0_mtree_mult1_28_bs2_in <= u0_m0_wo0_wi0_delayr8_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_28_bs2_b <= u0_m0_wo0_mtree_mult1_28_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_28_bs2_b_11(DELAY,793)@10
    d_u0_m0_wo0_mtree_mult1_28_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_28_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_28_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_28_bjB10(BITJOIN,302)@11
    u0_m0_wo0_mtree_mult1_28_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_28_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_28_im7(MULT,299)@11
    u0_m0_wo0_mtree_mult1_28_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bjB10_q);
    u0_m0_wo0_mtree_mult1_28_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bs8_b);
    u0_m0_wo0_mtree_mult1_28_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_28_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 5,
        lpm_widthp => 23,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_28_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_28_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_28_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_28_im7_s1
    );
    u0_m0_wo0_mtree_mult1_28_im7_q <= u0_m0_wo0_mtree_mult1_28_im7_s1;

    -- u0_m0_wo0_mtree_mult1_28_align_17(BITSHIFT,309)@13
    u0_m0_wo0_mtree_mult1_28_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_28_align_17_q <= u0_m0_wo0_mtree_mult1_28_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_28_bs6(BITSELECT,298)@10
    u0_m0_wo0_mtree_mult1_28_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr8_q);
    u0_m0_wo0_mtree_mult1_28_bs6_b <= u0_m0_wo0_mtree_mult1_28_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_28_bs1(BITSELECT,293)@10
    u0_m0_wo0_mtree_mult1_28_bs1_in <= u0_m0_wo0_cm8_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_28_bs1_b <= u0_m0_wo0_mtree_mult1_28_bs1_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_bjA5(BITJOIN,297)@10
    u0_m0_wo0_mtree_mult1_28_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_28_bs1_b;

    -- u0_m0_wo0_mtree_mult1_28_im3(MULT,295)@10
    u0_m0_wo0_mtree_mult1_28_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bjA5_q);
    u0_m0_wo0_mtree_mult1_28_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bs6_b);
    u0_m0_wo0_mtree_mult1_28_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_28_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_28_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_28_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_28_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_28_im3_s1
    );
    u0_m0_wo0_mtree_mult1_28_im3_q <= u0_m0_wo0_mtree_mult1_28_im3_s1;

    -- u0_m0_wo0_mtree_mult1_28_align_15(BITSHIFT,307)@12
    u0_m0_wo0_mtree_mult1_28_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_28_align_15_q <= u0_m0_wo0_mtree_mult1_28_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_28_im11(MULT,303)@10
    u0_m0_wo0_mtree_mult1_28_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bs6_b);
    u0_m0_wo0_mtree_mult1_28_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bs8_b);
    u0_m0_wo0_mtree_mult1_28_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_28_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 5,
        lpm_widthp => 12,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_28_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_28_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_28_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_28_im11_s1
    );
    u0_m0_wo0_mtree_mult1_28_im11_q <= u0_m0_wo0_mtree_mult1_28_im11_s1;

    -- u0_m0_wo0_mtree_mult1_28_im0(MULT,292)@10
    u0_m0_wo0_mtree_mult1_28_im0_a0 <= u0_m0_wo0_mtree_mult1_28_bs1_b;
    u0_m0_wo0_mtree_mult1_28_im0_b0 <= u0_m0_wo0_mtree_mult1_28_bs2_b;
    u0_m0_wo0_mtree_mult1_28_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_28_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_28_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_28_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_28_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_28_im0_s1
    );
    u0_m0_wo0_mtree_mult1_28_im0_q <= u0_m0_wo0_mtree_mult1_28_im0_s1;

    -- u0_m0_wo0_mtree_mult1_28_join_14(BITJOIN,306)@12
    u0_m0_wo0_mtree_mult1_28_join_14_q <= u0_m0_wo0_mtree_mult1_28_im11_q & u0_m0_wo0_mtree_mult1_28_im0_q;

    -- u0_m0_wo0_mtree_mult1_28_result_add_0_0(ADD,311)@12
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_28_join_14_q(45)) & u0_m0_wo0_mtree_mult1_28_join_14_q));
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 42 => u0_m0_wo0_mtree_mult1_28_align_15_q(41)) & u0_m0_wo0_mtree_mult1_28_align_15_q));
    u0_m0_wo0_mtree_mult1_28_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_28_result_add_0_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_result_add_1_0(ADD,312)@13
    u0_m0_wo0_mtree_mult1_28_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_28_result_add_0_0_q(46)) & u0_m0_wo0_mtree_mult1_28_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_28_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 40 => u0_m0_wo0_mtree_mult1_28_align_17_q(39)) & u0_m0_wo0_mtree_mult1_28_align_17_q));
    u0_m0_wo0_mtree_mult1_28_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_28_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_28_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_add0_14(ADD,132)@14
    u0_m0_wo0_mtree_add0_14_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_result_add_1_0_q(46 downto 0));
    u0_m0_wo0_mtree_add0_14_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_result_add_1_0_q);
    u0_m0_wo0_mtree_add0_14: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_14_a) + SIGNED(u0_m0_wo0_mtree_add0_14_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_14_q <= u0_m0_wo0_mtree_add0_14_o(46 downto 0);

    -- u0_m0_wo0_mtree_add1_7(ADD,143)@15
    u0_m0_wo0_mtree_add1_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add0_14_q(46)) & u0_m0_wo0_mtree_add0_14_q));
    u0_m0_wo0_mtree_add1_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_31_result_add_1_0_q(46)) & u0_m0_wo0_mtree_mult1_31_result_add_1_0_q));
    u0_m0_wo0_mtree_add1_7: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_7_a) + SIGNED(u0_m0_wo0_mtree_add1_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_7_q <= u0_m0_wo0_mtree_add1_7_o(47 downto 0);

    -- u0_m0_wo0_cm9(CONSTANT,53)@0
    u0_m0_wo0_cm9_q <= "011001100110111000001";

    -- u0_m0_wo0_mtree_mult1_27_bs8(BITSELECT,321)@10
    u0_m0_wo0_mtree_mult1_27_bs8_in <= STD_LOGIC_VECTOR(u0_m0_wo0_cm9_q);
    u0_m0_wo0_mtree_mult1_27_bs8_b <= u0_m0_wo0_mtree_mult1_27_bs8_in(20 downto 17);

    -- u0_m0_wo0_wi0_delayr9(DELAY,16)@10
    u0_m0_wo0_wi0_delayr9 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr8_q, xout => u0_m0_wo0_wi0_delayr9_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_delayr9_q_11(DELAY,781)@10
    d_u0_m0_wo0_wi0_delayr9_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr9_q, xout => d_u0_m0_wo0_wi0_delayr9_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_27_bs2(BITSELECT,315)@11
    u0_m0_wo0_mtree_mult1_27_bs2_in <= d_u0_m0_wo0_wi0_delayr9_q_11_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_27_bs2_b <= u0_m0_wo0_mtree_mult1_27_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_27_bs2_b_12(DELAY,794)@11
    d_u0_m0_wo0_mtree_mult1_27_bs2_b_12 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_27_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_27_bs2_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_27_bjB10(BITJOIN,323)@12
    u0_m0_wo0_mtree_mult1_27_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_27_bs2_b_12_q;

    -- u0_m0_wo0_mtree_mult1_27_im7(MULT,320)@12
    u0_m0_wo0_mtree_mult1_27_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bjB10_q);
    u0_m0_wo0_mtree_mult1_27_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bs8_b);
    u0_m0_wo0_mtree_mult1_27_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_27_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 4,
        lpm_widthp => 22,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_27_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_27_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_27_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_27_im7_s1
    );
    u0_m0_wo0_mtree_mult1_27_im7_q <= u0_m0_wo0_mtree_mult1_27_im7_s1;

    -- u0_m0_wo0_mtree_mult1_27_align_17(BITSHIFT,330)@14
    u0_m0_wo0_mtree_mult1_27_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_27_align_17_q <= u0_m0_wo0_mtree_mult1_27_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_27_bs6(BITSELECT,319)@11
    u0_m0_wo0_mtree_mult1_27_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_delayr9_q_11_q);
    u0_m0_wo0_mtree_mult1_27_bs6_b <= u0_m0_wo0_mtree_mult1_27_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_27_bs1(BITSELECT,314)@10
    u0_m0_wo0_mtree_mult1_27_bs1_in <= u0_m0_wo0_cm9_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_27_bs1_b <= u0_m0_wo0_mtree_mult1_27_bs1_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_bjA5(BITJOIN,318)@10
    u0_m0_wo0_mtree_mult1_27_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_27_bs1_b;

    -- u0_m0_wo0_mtree_mult1_27_im3(MULT,316)@11
    u0_m0_wo0_mtree_mult1_27_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bjA5_q);
    u0_m0_wo0_mtree_mult1_27_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bs6_b);
    u0_m0_wo0_mtree_mult1_27_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_27_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_27_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_27_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_27_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_27_im3_s1
    );
    u0_m0_wo0_mtree_mult1_27_im3_q <= u0_m0_wo0_mtree_mult1_27_im3_s1;

    -- u0_m0_wo0_mtree_mult1_27_align_15(BITSHIFT,328)@13
    u0_m0_wo0_mtree_mult1_27_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_27_align_15_q <= u0_m0_wo0_mtree_mult1_27_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_27_im11(MULT,324)@11
    u0_m0_wo0_mtree_mult1_27_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bs6_b);
    u0_m0_wo0_mtree_mult1_27_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bs8_b);
    u0_m0_wo0_mtree_mult1_27_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_27_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 4,
        lpm_widthp => 11,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_27_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_27_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_27_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_27_im11_s1
    );
    u0_m0_wo0_mtree_mult1_27_im11_q <= u0_m0_wo0_mtree_mult1_27_im11_s1;

    -- u0_m0_wo0_mtree_mult1_27_im0(MULT,313)@11
    u0_m0_wo0_mtree_mult1_27_im0_a0 <= u0_m0_wo0_mtree_mult1_27_bs1_b;
    u0_m0_wo0_mtree_mult1_27_im0_b0 <= u0_m0_wo0_mtree_mult1_27_bs2_b;
    u0_m0_wo0_mtree_mult1_27_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_27_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_27_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_27_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_27_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_27_im0_s1
    );
    u0_m0_wo0_mtree_mult1_27_im0_q <= u0_m0_wo0_mtree_mult1_27_im0_s1;

    -- u0_m0_wo0_mtree_mult1_27_join_14(BITJOIN,327)@13
    u0_m0_wo0_mtree_mult1_27_join_14_q <= u0_m0_wo0_mtree_mult1_27_im11_q & u0_m0_wo0_mtree_mult1_27_im0_q;

    -- u0_m0_wo0_mtree_mult1_27_result_add_0_0(ADD,332)@13
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_27_join_14_q(44)) & u0_m0_wo0_mtree_mult1_27_join_14_q));
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 42 => u0_m0_wo0_mtree_mult1_27_align_15_q(41)) & u0_m0_wo0_mtree_mult1_27_align_15_q));
    u0_m0_wo0_mtree_mult1_27_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_27_result_add_0_0_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_result_add_1_0(ADD,333)@14
    u0_m0_wo0_mtree_mult1_27_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_27_result_add_0_0_q(45)) & u0_m0_wo0_mtree_mult1_27_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_27_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 39 => u0_m0_wo0_mtree_mult1_27_align_17_q(38)) & u0_m0_wo0_mtree_mult1_27_align_17_q));
    u0_m0_wo0_mtree_mult1_27_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_27_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_27_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_cm11(CONSTANT,55)@0
    u0_m0_wo0_cm11_q <= "1011111000100110101010";

    -- u0_m0_wo0_mtree_mult1_25_bs8(BITSELECT,342)@10
    u0_m0_wo0_mtree_mult1_25_bs8_in <= STD_LOGIC_VECTOR(u0_m0_wo0_cm11_q);
    u0_m0_wo0_mtree_mult1_25_bs8_b <= u0_m0_wo0_mtree_mult1_25_bs8_in(21 downto 17);

    -- u0_m0_wo0_wi0_delayr10(DELAY,17)@10
    u0_m0_wo0_wi0_delayr10 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr9_q, xout => u0_m0_wo0_wi0_delayr10_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_delayr11(DELAY,18)@10
    u0_m0_wo0_wi0_delayr11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr10_q, xout => u0_m0_wo0_wi0_delayr11_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_25_bs2(BITSELECT,336)@10
    u0_m0_wo0_mtree_mult1_25_bs2_in <= u0_m0_wo0_wi0_delayr11_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_25_bs2_b <= u0_m0_wo0_mtree_mult1_25_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_25_bs2_b_11(DELAY,795)@10
    d_u0_m0_wo0_mtree_mult1_25_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_25_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_25_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_25_bjB10(BITJOIN,344)@11
    u0_m0_wo0_mtree_mult1_25_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_25_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_25_im7(MULT,341)@11
    u0_m0_wo0_mtree_mult1_25_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bjB10_q);
    u0_m0_wo0_mtree_mult1_25_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bs8_b);
    u0_m0_wo0_mtree_mult1_25_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_25_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 5,
        lpm_widthp => 23,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_25_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_25_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_25_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_25_im7_s1
    );
    u0_m0_wo0_mtree_mult1_25_im7_q <= u0_m0_wo0_mtree_mult1_25_im7_s1;

    -- u0_m0_wo0_mtree_mult1_25_align_17(BITSHIFT,351)@13
    u0_m0_wo0_mtree_mult1_25_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_25_align_17_q <= u0_m0_wo0_mtree_mult1_25_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_25_bs6(BITSELECT,340)@10
    u0_m0_wo0_mtree_mult1_25_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr11_q);
    u0_m0_wo0_mtree_mult1_25_bs6_b <= u0_m0_wo0_mtree_mult1_25_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_25_bs1(BITSELECT,335)@10
    u0_m0_wo0_mtree_mult1_25_bs1_in <= u0_m0_wo0_cm11_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_25_bs1_b <= u0_m0_wo0_mtree_mult1_25_bs1_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_bjA5(BITJOIN,339)@10
    u0_m0_wo0_mtree_mult1_25_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_25_bs1_b;

    -- u0_m0_wo0_mtree_mult1_25_im3(MULT,337)@10
    u0_m0_wo0_mtree_mult1_25_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bjA5_q);
    u0_m0_wo0_mtree_mult1_25_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bs6_b);
    u0_m0_wo0_mtree_mult1_25_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_25_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_25_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_25_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_25_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_25_im3_s1
    );
    u0_m0_wo0_mtree_mult1_25_im3_q <= u0_m0_wo0_mtree_mult1_25_im3_s1;

    -- u0_m0_wo0_mtree_mult1_25_align_15(BITSHIFT,349)@12
    u0_m0_wo0_mtree_mult1_25_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_25_align_15_q <= u0_m0_wo0_mtree_mult1_25_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_25_im11(MULT,345)@10
    u0_m0_wo0_mtree_mult1_25_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bs6_b);
    u0_m0_wo0_mtree_mult1_25_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bs8_b);
    u0_m0_wo0_mtree_mult1_25_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_25_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 5,
        lpm_widthp => 12,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_25_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_25_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_25_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_25_im11_s1
    );
    u0_m0_wo0_mtree_mult1_25_im11_q <= u0_m0_wo0_mtree_mult1_25_im11_s1;

    -- u0_m0_wo0_mtree_mult1_25_im0(MULT,334)@10
    u0_m0_wo0_mtree_mult1_25_im0_a0 <= u0_m0_wo0_mtree_mult1_25_bs1_b;
    u0_m0_wo0_mtree_mult1_25_im0_b0 <= u0_m0_wo0_mtree_mult1_25_bs2_b;
    u0_m0_wo0_mtree_mult1_25_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_25_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_25_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_25_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_25_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_25_im0_s1
    );
    u0_m0_wo0_mtree_mult1_25_im0_q <= u0_m0_wo0_mtree_mult1_25_im0_s1;

    -- u0_m0_wo0_mtree_mult1_25_join_14(BITJOIN,348)@12
    u0_m0_wo0_mtree_mult1_25_join_14_q <= u0_m0_wo0_mtree_mult1_25_im11_q & u0_m0_wo0_mtree_mult1_25_im0_q;

    -- u0_m0_wo0_mtree_mult1_25_result_add_0_0(ADD,353)@12
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_25_join_14_q(45)) & u0_m0_wo0_mtree_mult1_25_join_14_q));
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 42 => u0_m0_wo0_mtree_mult1_25_align_15_q(41)) & u0_m0_wo0_mtree_mult1_25_align_15_q));
    u0_m0_wo0_mtree_mult1_25_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_25_result_add_0_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_result_add_1_0(ADD,354)@13
    u0_m0_wo0_mtree_mult1_25_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_25_result_add_0_0_q(46)) & u0_m0_wo0_mtree_mult1_25_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_25_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 40 => u0_m0_wo0_mtree_mult1_25_align_17_q(39)) & u0_m0_wo0_mtree_mult1_25_align_17_q));
    u0_m0_wo0_mtree_mult1_25_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_25_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_cm12(CONSTANT,56)@0
    u0_m0_wo0_cm12_q <= "1001001101011010101000";

    -- u0_m0_wo0_mtree_mult1_24_bs8(BITSELECT,363)@10
    u0_m0_wo0_mtree_mult1_24_bs8_in <= STD_LOGIC_VECTOR(u0_m0_wo0_cm12_q);
    u0_m0_wo0_mtree_mult1_24_bs8_b <= u0_m0_wo0_mtree_mult1_24_bs8_in(21 downto 17);

    -- u0_m0_wo0_wi0_delayr12(DELAY,19)@10
    u0_m0_wo0_wi0_delayr12 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr11_q, xout => u0_m0_wo0_wi0_delayr12_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_24_bs2(BITSELECT,357)@10
    u0_m0_wo0_mtree_mult1_24_bs2_in <= u0_m0_wo0_wi0_delayr12_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_24_bs2_b <= u0_m0_wo0_mtree_mult1_24_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_24_bs2_b_11(DELAY,796)@10
    d_u0_m0_wo0_mtree_mult1_24_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_24_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_24_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_24_bjB10(BITJOIN,365)@11
    u0_m0_wo0_mtree_mult1_24_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_24_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_24_im7(MULT,362)@11
    u0_m0_wo0_mtree_mult1_24_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bjB10_q);
    u0_m0_wo0_mtree_mult1_24_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bs8_b);
    u0_m0_wo0_mtree_mult1_24_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_24_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 5,
        lpm_widthp => 23,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_24_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_24_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_24_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_24_im7_s1
    );
    u0_m0_wo0_mtree_mult1_24_im7_q <= u0_m0_wo0_mtree_mult1_24_im7_s1;

    -- u0_m0_wo0_mtree_mult1_24_align_17(BITSHIFT,372)@13
    u0_m0_wo0_mtree_mult1_24_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_24_align_17_q <= u0_m0_wo0_mtree_mult1_24_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_24_bs6(BITSELECT,361)@10
    u0_m0_wo0_mtree_mult1_24_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr12_q);
    u0_m0_wo0_mtree_mult1_24_bs6_b <= u0_m0_wo0_mtree_mult1_24_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_24_bs1(BITSELECT,356)@10
    u0_m0_wo0_mtree_mult1_24_bs1_in <= u0_m0_wo0_cm12_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_24_bs1_b <= u0_m0_wo0_mtree_mult1_24_bs1_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_bjA5(BITJOIN,360)@10
    u0_m0_wo0_mtree_mult1_24_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_24_bs1_b;

    -- u0_m0_wo0_mtree_mult1_24_im3(MULT,358)@10
    u0_m0_wo0_mtree_mult1_24_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bjA5_q);
    u0_m0_wo0_mtree_mult1_24_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bs6_b);
    u0_m0_wo0_mtree_mult1_24_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_24_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_24_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_24_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_24_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_24_im3_s1
    );
    u0_m0_wo0_mtree_mult1_24_im3_q <= u0_m0_wo0_mtree_mult1_24_im3_s1;

    -- u0_m0_wo0_mtree_mult1_24_align_15(BITSHIFT,370)@12
    u0_m0_wo0_mtree_mult1_24_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_24_align_15_q <= u0_m0_wo0_mtree_mult1_24_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_24_im11(MULT,366)@10
    u0_m0_wo0_mtree_mult1_24_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bs6_b);
    u0_m0_wo0_mtree_mult1_24_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bs8_b);
    u0_m0_wo0_mtree_mult1_24_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_24_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 5,
        lpm_widthp => 12,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_24_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_24_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_24_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_24_im11_s1
    );
    u0_m0_wo0_mtree_mult1_24_im11_q <= u0_m0_wo0_mtree_mult1_24_im11_s1;

    -- u0_m0_wo0_mtree_mult1_24_im0(MULT,355)@10
    u0_m0_wo0_mtree_mult1_24_im0_a0 <= u0_m0_wo0_mtree_mult1_24_bs1_b;
    u0_m0_wo0_mtree_mult1_24_im0_b0 <= u0_m0_wo0_mtree_mult1_24_bs2_b;
    u0_m0_wo0_mtree_mult1_24_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_24_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_24_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_24_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_24_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_24_im0_s1
    );
    u0_m0_wo0_mtree_mult1_24_im0_q <= u0_m0_wo0_mtree_mult1_24_im0_s1;

    -- u0_m0_wo0_mtree_mult1_24_join_14(BITJOIN,369)@12
    u0_m0_wo0_mtree_mult1_24_join_14_q <= u0_m0_wo0_mtree_mult1_24_im11_q & u0_m0_wo0_mtree_mult1_24_im0_q;

    -- u0_m0_wo0_mtree_mult1_24_result_add_0_0(ADD,374)@12
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_24_join_14_q(45)) & u0_m0_wo0_mtree_mult1_24_join_14_q));
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 42 => u0_m0_wo0_mtree_mult1_24_align_15_q(41)) & u0_m0_wo0_mtree_mult1_24_align_15_q));
    u0_m0_wo0_mtree_mult1_24_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_24_result_add_0_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_result_add_1_0(ADD,375)@13
    u0_m0_wo0_mtree_mult1_24_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_24_result_add_0_0_q(46)) & u0_m0_wo0_mtree_mult1_24_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_24_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 40 => u0_m0_wo0_mtree_mult1_24_align_17_q(39)) & u0_m0_wo0_mtree_mult1_24_align_17_q));
    u0_m0_wo0_mtree_mult1_24_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_24_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_add0_12(ADD,130)@14
    u0_m0_wo0_mtree_add0_12_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_result_add_1_0_q(46 downto 0));
    u0_m0_wo0_mtree_add0_12_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_result_add_1_0_q(46 downto 0));
    u0_m0_wo0_mtree_add0_12: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_12_a) + SIGNED(u0_m0_wo0_mtree_add0_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_12_q <= u0_m0_wo0_mtree_add0_12_o(46 downto 0);

    -- u0_m0_wo0_mtree_add1_6(ADD,142)@15
    u0_m0_wo0_mtree_add1_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add0_12_q(46)) & u0_m0_wo0_mtree_add0_12_q));
    u0_m0_wo0_mtree_add1_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_27_result_add_1_0_q(46)) & u0_m0_wo0_mtree_mult1_27_result_add_1_0_q));
    u0_m0_wo0_mtree_add1_6: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_6_a) + SIGNED(u0_m0_wo0_mtree_add1_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_6_q <= u0_m0_wo0_mtree_add1_6_o(47 downto 0);

    -- u0_m0_wo0_mtree_add2_3(ADD,148)@16
    u0_m0_wo0_mtree_add2_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_add1_6_q(47)) & u0_m0_wo0_mtree_add1_6_q));
    u0_m0_wo0_mtree_add2_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_add1_7_q(47)) & u0_m0_wo0_mtree_add1_7_q));
    u0_m0_wo0_mtree_add2_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_3_a) + SIGNED(u0_m0_wo0_mtree_add2_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_3_q <= u0_m0_wo0_mtree_add2_3_o(48 downto 0);

    -- u0_m0_wo0_cm13(CONSTANT,57)@0
    u0_m0_wo0_cm13_q <= "1010001111001111100000";

    -- u0_m0_wo0_mtree_mult1_23_bs8(BITSELECT,384)@10
    u0_m0_wo0_mtree_mult1_23_bs8_in <= STD_LOGIC_VECTOR(u0_m0_wo0_cm13_q);
    u0_m0_wo0_mtree_mult1_23_bs8_b <= u0_m0_wo0_mtree_mult1_23_bs8_in(21 downto 17);

    -- u0_m0_wo0_wi0_delayr13(DELAY,20)@10
    u0_m0_wo0_wi0_delayr13 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr12_q, xout => u0_m0_wo0_wi0_delayr13_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_delayr13_q_11(DELAY,782)@10
    d_u0_m0_wo0_wi0_delayr13_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr13_q, xout => d_u0_m0_wo0_wi0_delayr13_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_23_bs2(BITSELECT,378)@11
    u0_m0_wo0_mtree_mult1_23_bs2_in <= d_u0_m0_wo0_wi0_delayr13_q_11_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_23_bs2_b <= u0_m0_wo0_mtree_mult1_23_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_23_bs2_b_12(DELAY,797)@11
    d_u0_m0_wo0_mtree_mult1_23_bs2_b_12 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_23_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_23_bs2_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_23_bjB10(BITJOIN,386)@12
    u0_m0_wo0_mtree_mult1_23_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_23_bs2_b_12_q;

    -- u0_m0_wo0_mtree_mult1_23_im7(MULT,383)@12
    u0_m0_wo0_mtree_mult1_23_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_bjB10_q);
    u0_m0_wo0_mtree_mult1_23_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_bs8_b);
    u0_m0_wo0_mtree_mult1_23_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_23_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 5,
        lpm_widthp => 23,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_23_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_23_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_23_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_23_im7_s1
    );
    u0_m0_wo0_mtree_mult1_23_im7_q <= u0_m0_wo0_mtree_mult1_23_im7_s1;

    -- u0_m0_wo0_mtree_mult1_23_align_17(BITSHIFT,393)@14
    u0_m0_wo0_mtree_mult1_23_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_23_align_17_q <= u0_m0_wo0_mtree_mult1_23_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_23_bs6(BITSELECT,382)@11
    u0_m0_wo0_mtree_mult1_23_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_delayr13_q_11_q);
    u0_m0_wo0_mtree_mult1_23_bs6_b <= u0_m0_wo0_mtree_mult1_23_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_23_bs1(BITSELECT,377)@10
    u0_m0_wo0_mtree_mult1_23_bs1_in <= u0_m0_wo0_cm13_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_23_bs1_b <= u0_m0_wo0_mtree_mult1_23_bs1_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_bjA5(BITJOIN,381)@10
    u0_m0_wo0_mtree_mult1_23_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_23_bs1_b;

    -- u0_m0_wo0_mtree_mult1_23_im3(MULT,379)@11
    u0_m0_wo0_mtree_mult1_23_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_bjA5_q);
    u0_m0_wo0_mtree_mult1_23_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_bs6_b);
    u0_m0_wo0_mtree_mult1_23_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_23_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_23_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_23_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_23_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_23_im3_s1
    );
    u0_m0_wo0_mtree_mult1_23_im3_q <= u0_m0_wo0_mtree_mult1_23_im3_s1;

    -- u0_m0_wo0_mtree_mult1_23_align_15(BITSHIFT,391)@13
    u0_m0_wo0_mtree_mult1_23_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_23_align_15_q <= u0_m0_wo0_mtree_mult1_23_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_23_im11(MULT,387)@11
    u0_m0_wo0_mtree_mult1_23_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_bs6_b);
    u0_m0_wo0_mtree_mult1_23_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_bs8_b);
    u0_m0_wo0_mtree_mult1_23_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_23_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 5,
        lpm_widthp => 12,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_23_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_23_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_23_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_23_im11_s1
    );
    u0_m0_wo0_mtree_mult1_23_im11_q <= u0_m0_wo0_mtree_mult1_23_im11_s1;

    -- u0_m0_wo0_mtree_mult1_23_im0(MULT,376)@11
    u0_m0_wo0_mtree_mult1_23_im0_a0 <= u0_m0_wo0_mtree_mult1_23_bs1_b;
    u0_m0_wo0_mtree_mult1_23_im0_b0 <= u0_m0_wo0_mtree_mult1_23_bs2_b;
    u0_m0_wo0_mtree_mult1_23_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_23_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_23_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_23_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_23_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_23_im0_s1
    );
    u0_m0_wo0_mtree_mult1_23_im0_q <= u0_m0_wo0_mtree_mult1_23_im0_s1;

    -- u0_m0_wo0_mtree_mult1_23_join_14(BITJOIN,390)@13
    u0_m0_wo0_mtree_mult1_23_join_14_q <= u0_m0_wo0_mtree_mult1_23_im11_q & u0_m0_wo0_mtree_mult1_23_im0_q;

    -- u0_m0_wo0_mtree_mult1_23_result_add_0_0(ADD,395)@13
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_23_join_14_q(45)) & u0_m0_wo0_mtree_mult1_23_join_14_q));
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 42 => u0_m0_wo0_mtree_mult1_23_align_15_q(41)) & u0_m0_wo0_mtree_mult1_23_align_15_q));
    u0_m0_wo0_mtree_mult1_23_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_23_result_add_0_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_result_add_1_0(ADD,396)@14
    u0_m0_wo0_mtree_mult1_23_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_23_result_add_0_0_q(46)) & u0_m0_wo0_mtree_mult1_23_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_23_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 40 => u0_m0_wo0_mtree_mult1_23_align_17_q(39)) & u0_m0_wo0_mtree_mult1_23_align_17_q));
    u0_m0_wo0_mtree_mult1_23_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_23_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_cm15(CONSTANT,59)@0
    u0_m0_wo0_cm15_q <= "01001100110100111100011";

    -- u0_m0_wo0_mtree_mult1_21_bs8(BITSELECT,405)@10
    u0_m0_wo0_mtree_mult1_21_bs8_in <= STD_LOGIC_VECTOR(u0_m0_wo0_cm15_q);
    u0_m0_wo0_mtree_mult1_21_bs8_b <= u0_m0_wo0_mtree_mult1_21_bs8_in(22 downto 17);

    -- u0_m0_wo0_wi0_delayr14(DELAY,21)@10
    u0_m0_wo0_wi0_delayr14 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr13_q, xout => u0_m0_wo0_wi0_delayr14_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_delayr15(DELAY,22)@10
    u0_m0_wo0_wi0_delayr15 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr14_q, xout => u0_m0_wo0_wi0_delayr15_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_21_bs2(BITSELECT,399)@10
    u0_m0_wo0_mtree_mult1_21_bs2_in <= u0_m0_wo0_wi0_delayr15_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_21_bs2_b <= u0_m0_wo0_mtree_mult1_21_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_21_bs2_b_11(DELAY,798)@10
    d_u0_m0_wo0_mtree_mult1_21_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_21_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_21_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_21_bjB10(BITJOIN,407)@11
    u0_m0_wo0_mtree_mult1_21_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_21_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_21_im7(MULT,404)@11
    u0_m0_wo0_mtree_mult1_21_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bjB10_q);
    u0_m0_wo0_mtree_mult1_21_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bs8_b);
    u0_m0_wo0_mtree_mult1_21_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_21_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 6,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_21_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_21_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_21_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_21_im7_s1
    );
    u0_m0_wo0_mtree_mult1_21_im7_q <= u0_m0_wo0_mtree_mult1_21_im7_s1;

    -- u0_m0_wo0_mtree_mult1_21_align_17(BITSHIFT,414)@13
    u0_m0_wo0_mtree_mult1_21_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_21_align_17_q <= u0_m0_wo0_mtree_mult1_21_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_21_bs6(BITSELECT,403)@10
    u0_m0_wo0_mtree_mult1_21_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr15_q);
    u0_m0_wo0_mtree_mult1_21_bs6_b <= u0_m0_wo0_mtree_mult1_21_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_21_bs1(BITSELECT,398)@10
    u0_m0_wo0_mtree_mult1_21_bs1_in <= u0_m0_wo0_cm15_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_21_bs1_b <= u0_m0_wo0_mtree_mult1_21_bs1_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_bjA5(BITJOIN,402)@10
    u0_m0_wo0_mtree_mult1_21_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_21_bs1_b;

    -- u0_m0_wo0_mtree_mult1_21_im3(MULT,400)@10
    u0_m0_wo0_mtree_mult1_21_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bjA5_q);
    u0_m0_wo0_mtree_mult1_21_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bs6_b);
    u0_m0_wo0_mtree_mult1_21_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_21_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_21_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_21_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_21_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_21_im3_s1
    );
    u0_m0_wo0_mtree_mult1_21_im3_q <= u0_m0_wo0_mtree_mult1_21_im3_s1;

    -- u0_m0_wo0_mtree_mult1_21_align_15(BITSHIFT,412)@12
    u0_m0_wo0_mtree_mult1_21_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_21_align_15_q <= u0_m0_wo0_mtree_mult1_21_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_21_im11(MULT,408)@10
    u0_m0_wo0_mtree_mult1_21_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bs6_b);
    u0_m0_wo0_mtree_mult1_21_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bs8_b);
    u0_m0_wo0_mtree_mult1_21_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_21_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 6,
        lpm_widthp => 13,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_21_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_21_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_21_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_21_im11_s1
    );
    u0_m0_wo0_mtree_mult1_21_im11_q <= u0_m0_wo0_mtree_mult1_21_im11_s1;

    -- u0_m0_wo0_mtree_mult1_21_im0(MULT,397)@10
    u0_m0_wo0_mtree_mult1_21_im0_a0 <= u0_m0_wo0_mtree_mult1_21_bs1_b;
    u0_m0_wo0_mtree_mult1_21_im0_b0 <= u0_m0_wo0_mtree_mult1_21_bs2_b;
    u0_m0_wo0_mtree_mult1_21_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_21_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_21_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_21_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_21_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_21_im0_s1
    );
    u0_m0_wo0_mtree_mult1_21_im0_q <= u0_m0_wo0_mtree_mult1_21_im0_s1;

    -- u0_m0_wo0_mtree_mult1_21_join_14(BITJOIN,411)@12
    u0_m0_wo0_mtree_mult1_21_join_14_q <= u0_m0_wo0_mtree_mult1_21_im11_q & u0_m0_wo0_mtree_mult1_21_im0_q;

    -- u0_m0_wo0_mtree_mult1_21_result_add_0_0(ADD,416)@12
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_21_join_14_q(46)) & u0_m0_wo0_mtree_mult1_21_join_14_q));
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 42 => u0_m0_wo0_mtree_mult1_21_align_15_q(41)) & u0_m0_wo0_mtree_mult1_21_align_15_q));
    u0_m0_wo0_mtree_mult1_21_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_21_result_add_0_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_result_add_1_0(ADD,417)@13
    u0_m0_wo0_mtree_mult1_21_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_21_result_add_0_0_q(47)) & u0_m0_wo0_mtree_mult1_21_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_21_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 41 => u0_m0_wo0_mtree_mult1_21_align_17_q(40)) & u0_m0_wo0_mtree_mult1_21_align_17_q));
    u0_m0_wo0_mtree_mult1_21_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_21_result_add_1_0_o(48 downto 0);

    -- u0_m0_wo0_cm16(CONSTANT,60)@0
    u0_m0_wo0_cm16_q <= "010100010111110011010110";

    -- u0_m0_wo0_mtree_mult1_20_bs8(BITSELECT,426)@10
    u0_m0_wo0_mtree_mult1_20_bs8_in <= STD_LOGIC_VECTOR(u0_m0_wo0_cm16_q);
    u0_m0_wo0_mtree_mult1_20_bs8_b <= u0_m0_wo0_mtree_mult1_20_bs8_in(23 downto 17);

    -- u0_m0_wo0_wi0_delayr16(DELAY,23)@10
    u0_m0_wo0_wi0_delayr16 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr15_q, xout => u0_m0_wo0_wi0_delayr16_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_20_bs2(BITSELECT,420)@10
    u0_m0_wo0_mtree_mult1_20_bs2_in <= u0_m0_wo0_wi0_delayr16_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_20_bs2_b <= u0_m0_wo0_mtree_mult1_20_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_20_bs2_b_11(DELAY,799)@10
    d_u0_m0_wo0_mtree_mult1_20_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_20_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_20_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_20_bjB10(BITJOIN,428)@11
    u0_m0_wo0_mtree_mult1_20_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_20_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_20_im7(MULT,425)@11
    u0_m0_wo0_mtree_mult1_20_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bjB10_q);
    u0_m0_wo0_mtree_mult1_20_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bs8_b);
    u0_m0_wo0_mtree_mult1_20_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_20_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_20_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_20_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_20_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_20_im7_s1
    );
    u0_m0_wo0_mtree_mult1_20_im7_q <= u0_m0_wo0_mtree_mult1_20_im7_s1;

    -- u0_m0_wo0_mtree_mult1_20_align_17(BITSHIFT,435)@13
    u0_m0_wo0_mtree_mult1_20_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_20_align_17_q <= u0_m0_wo0_mtree_mult1_20_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_20_bs6(BITSELECT,424)@10
    u0_m0_wo0_mtree_mult1_20_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr16_q);
    u0_m0_wo0_mtree_mult1_20_bs6_b <= u0_m0_wo0_mtree_mult1_20_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_20_bs1(BITSELECT,419)@10
    u0_m0_wo0_mtree_mult1_20_bs1_in <= u0_m0_wo0_cm16_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_20_bs1_b <= u0_m0_wo0_mtree_mult1_20_bs1_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_bjA5(BITJOIN,423)@10
    u0_m0_wo0_mtree_mult1_20_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_20_bs1_b;

    -- u0_m0_wo0_mtree_mult1_20_im3(MULT,421)@10
    u0_m0_wo0_mtree_mult1_20_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bjA5_q);
    u0_m0_wo0_mtree_mult1_20_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bs6_b);
    u0_m0_wo0_mtree_mult1_20_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_20_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_20_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_20_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_20_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_20_im3_s1
    );
    u0_m0_wo0_mtree_mult1_20_im3_q <= u0_m0_wo0_mtree_mult1_20_im3_s1;

    -- u0_m0_wo0_mtree_mult1_20_align_15(BITSHIFT,433)@12
    u0_m0_wo0_mtree_mult1_20_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_20_align_15_q <= u0_m0_wo0_mtree_mult1_20_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_20_im11(MULT,429)@10
    u0_m0_wo0_mtree_mult1_20_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bs8_b);
    u0_m0_wo0_mtree_mult1_20_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bs6_b);
    u0_m0_wo0_mtree_mult1_20_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_20_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 7,
        lpm_widthp => 14,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_20_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_20_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_20_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_20_im11_s1
    );
    u0_m0_wo0_mtree_mult1_20_im11_q <= u0_m0_wo0_mtree_mult1_20_im11_s1;

    -- u0_m0_wo0_mtree_mult1_20_im0(MULT,418)@10
    u0_m0_wo0_mtree_mult1_20_im0_a0 <= u0_m0_wo0_mtree_mult1_20_bs1_b;
    u0_m0_wo0_mtree_mult1_20_im0_b0 <= u0_m0_wo0_mtree_mult1_20_bs2_b;
    u0_m0_wo0_mtree_mult1_20_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_20_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_20_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_20_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_20_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_20_im0_s1
    );
    u0_m0_wo0_mtree_mult1_20_im0_q <= u0_m0_wo0_mtree_mult1_20_im0_s1;

    -- u0_m0_wo0_mtree_mult1_20_join_14(BITJOIN,432)@12
    u0_m0_wo0_mtree_mult1_20_join_14_q <= u0_m0_wo0_mtree_mult1_20_im11_q & u0_m0_wo0_mtree_mult1_20_im0_q;

    -- u0_m0_wo0_mtree_mult1_20_result_add_0_0(ADD,437)@12
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_20_join_14_q(47)) & u0_m0_wo0_mtree_mult1_20_join_14_q));
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 42 => u0_m0_wo0_mtree_mult1_20_align_15_q(41)) & u0_m0_wo0_mtree_mult1_20_align_15_q));
    u0_m0_wo0_mtree_mult1_20_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_20_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_result_add_1_0(ADD,438)@13
    u0_m0_wo0_mtree_mult1_20_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_mult1_20_result_add_0_0_q(48)) & u0_m0_wo0_mtree_mult1_20_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_20_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 42 => u0_m0_wo0_mtree_mult1_20_align_17_q(41)) & u0_m0_wo0_mtree_mult1_20_align_17_q));
    u0_m0_wo0_mtree_mult1_20_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_20_result_add_1_0_o(49 downto 0);

    -- u0_m0_wo0_mtree_add0_10(ADD,128)@14
    u0_m0_wo0_mtree_add0_10_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_result_add_1_0_q(48 downto 0));
    u0_m0_wo0_mtree_add0_10_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_result_add_1_0_q);
    u0_m0_wo0_mtree_add0_10: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_10_a) + SIGNED(u0_m0_wo0_mtree_add0_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_10_q <= u0_m0_wo0_mtree_add0_10_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_5(ADD,141)@15
    u0_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_10_q(48)) & u0_m0_wo0_mtree_add0_10_q));
    u0_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 48 => u0_m0_wo0_mtree_mult1_23_result_add_1_0_q(47)) & u0_m0_wo0_mtree_mult1_23_result_add_1_0_q));
    u0_m0_wo0_mtree_add1_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_5_a) + SIGNED(u0_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_5_q <= u0_m0_wo0_mtree_add1_5_o(49 downto 0);

    -- u0_m0_wo0_cm17(CONSTANT,61)@0
    u0_m0_wo0_cm17_q <= "011100110011110110001011";

    -- u0_m0_wo0_mtree_mult1_19_bs8(BITSELECT,447)@10
    u0_m0_wo0_mtree_mult1_19_bs8_in <= STD_LOGIC_VECTOR(u0_m0_wo0_cm17_q);
    u0_m0_wo0_mtree_mult1_19_bs8_b <= u0_m0_wo0_mtree_mult1_19_bs8_in(23 downto 17);

    -- u0_m0_wo0_wi0_delayr17(DELAY,24)@10
    u0_m0_wo0_wi0_delayr17 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr16_q, xout => u0_m0_wo0_wi0_delayr17_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_19_bs2(BITSELECT,441)@10
    u0_m0_wo0_mtree_mult1_19_bs2_in <= u0_m0_wo0_wi0_delayr17_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_19_bs2_b <= u0_m0_wo0_mtree_mult1_19_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_19_bs2_b_11(DELAY,800)@10
    d_u0_m0_wo0_mtree_mult1_19_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_19_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_19_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_19_bjB10(BITJOIN,449)@11
    u0_m0_wo0_mtree_mult1_19_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_19_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_19_im7(MULT,446)@11
    u0_m0_wo0_mtree_mult1_19_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bjB10_q);
    u0_m0_wo0_mtree_mult1_19_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bs8_b);
    u0_m0_wo0_mtree_mult1_19_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_19_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_19_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_19_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_19_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_19_im7_s1
    );
    u0_m0_wo0_mtree_mult1_19_im7_q <= u0_m0_wo0_mtree_mult1_19_im7_s1;

    -- u0_m0_wo0_mtree_mult1_19_align_17(BITSHIFT,456)@13
    u0_m0_wo0_mtree_mult1_19_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_19_align_17_q <= u0_m0_wo0_mtree_mult1_19_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_19_bs6(BITSELECT,445)@10
    u0_m0_wo0_mtree_mult1_19_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr17_q);
    u0_m0_wo0_mtree_mult1_19_bs6_b <= u0_m0_wo0_mtree_mult1_19_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_19_bs1(BITSELECT,440)@10
    u0_m0_wo0_mtree_mult1_19_bs1_in <= u0_m0_wo0_cm17_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_19_bs1_b <= u0_m0_wo0_mtree_mult1_19_bs1_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_bjA5(BITJOIN,444)@10
    u0_m0_wo0_mtree_mult1_19_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_19_bs1_b;

    -- u0_m0_wo0_mtree_mult1_19_im3(MULT,442)@10
    u0_m0_wo0_mtree_mult1_19_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bjA5_q);
    u0_m0_wo0_mtree_mult1_19_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bs6_b);
    u0_m0_wo0_mtree_mult1_19_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_19_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_19_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_19_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_19_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_19_im3_s1
    );
    u0_m0_wo0_mtree_mult1_19_im3_q <= u0_m0_wo0_mtree_mult1_19_im3_s1;

    -- u0_m0_wo0_mtree_mult1_19_align_15(BITSHIFT,454)@12
    u0_m0_wo0_mtree_mult1_19_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_19_align_15_q <= u0_m0_wo0_mtree_mult1_19_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_19_im11(MULT,450)@10
    u0_m0_wo0_mtree_mult1_19_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bs8_b);
    u0_m0_wo0_mtree_mult1_19_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bs6_b);
    u0_m0_wo0_mtree_mult1_19_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_19_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 7,
        lpm_widthp => 14,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_19_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_19_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_19_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_19_im11_s1
    );
    u0_m0_wo0_mtree_mult1_19_im11_q <= u0_m0_wo0_mtree_mult1_19_im11_s1;

    -- u0_m0_wo0_mtree_mult1_19_im0(MULT,439)@10
    u0_m0_wo0_mtree_mult1_19_im0_a0 <= u0_m0_wo0_mtree_mult1_19_bs1_b;
    u0_m0_wo0_mtree_mult1_19_im0_b0 <= u0_m0_wo0_mtree_mult1_19_bs2_b;
    u0_m0_wo0_mtree_mult1_19_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_19_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_19_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_19_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_19_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_19_im0_s1
    );
    u0_m0_wo0_mtree_mult1_19_im0_q <= u0_m0_wo0_mtree_mult1_19_im0_s1;

    -- u0_m0_wo0_mtree_mult1_19_join_14(BITJOIN,453)@12
    u0_m0_wo0_mtree_mult1_19_join_14_q <= u0_m0_wo0_mtree_mult1_19_im11_q & u0_m0_wo0_mtree_mult1_19_im0_q;

    -- u0_m0_wo0_mtree_mult1_19_result_add_0_0(ADD,458)@12
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_19_join_14_q(47)) & u0_m0_wo0_mtree_mult1_19_join_14_q));
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 42 => u0_m0_wo0_mtree_mult1_19_align_15_q(41)) & u0_m0_wo0_mtree_mult1_19_align_15_q));
    u0_m0_wo0_mtree_mult1_19_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_19_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_result_add_1_0(ADD,459)@13
    u0_m0_wo0_mtree_mult1_19_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_mult1_19_result_add_0_0_q(48)) & u0_m0_wo0_mtree_mult1_19_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_19_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 42 => u0_m0_wo0_mtree_mult1_19_align_17_q(41)) & u0_m0_wo0_mtree_mult1_19_align_17_q));
    u0_m0_wo0_mtree_mult1_19_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_19_result_add_1_0_o(49 downto 0);

    -- u0_m0_wo0_cm18(CONSTANT,62)@0
    u0_m0_wo0_cm18_q <= "011111111111111111111111";

    -- u0_m0_wo0_mtree_mult1_18_bs8(BITSELECT,468)@10
    u0_m0_wo0_mtree_mult1_18_bs8_in <= STD_LOGIC_VECTOR(u0_m0_wo0_cm18_q);
    u0_m0_wo0_mtree_mult1_18_bs8_b <= u0_m0_wo0_mtree_mult1_18_bs8_in(23 downto 17);

    -- u0_m0_wo0_wi0_delayr18(DELAY,25)@10
    u0_m0_wo0_wi0_delayr18 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr17_q, xout => u0_m0_wo0_wi0_delayr18_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_18_bs2(BITSELECT,462)@10
    u0_m0_wo0_mtree_mult1_18_bs2_in <= u0_m0_wo0_wi0_delayr18_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_18_bs2_b <= u0_m0_wo0_mtree_mult1_18_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_18_bs2_b_11(DELAY,801)@10
    d_u0_m0_wo0_mtree_mult1_18_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_18_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_18_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_18_bjB10(BITJOIN,470)@11
    u0_m0_wo0_mtree_mult1_18_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_18_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_18_im7(MULT,467)@11
    u0_m0_wo0_mtree_mult1_18_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_bjB10_q);
    u0_m0_wo0_mtree_mult1_18_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_bs8_b);
    u0_m0_wo0_mtree_mult1_18_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_18_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_18_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_18_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_18_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_18_im7_s1
    );
    u0_m0_wo0_mtree_mult1_18_im7_q <= u0_m0_wo0_mtree_mult1_18_im7_s1;

    -- u0_m0_wo0_mtree_mult1_18_align_17(BITSHIFT,477)@13
    u0_m0_wo0_mtree_mult1_18_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_18_align_17_q <= u0_m0_wo0_mtree_mult1_18_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_18_bs6(BITSELECT,466)@10
    u0_m0_wo0_mtree_mult1_18_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr18_q);
    u0_m0_wo0_mtree_mult1_18_bs6_b <= u0_m0_wo0_mtree_mult1_18_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_18_bs1(BITSELECT,461)@10
    u0_m0_wo0_mtree_mult1_18_bs1_in <= u0_m0_wo0_cm18_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_18_bs1_b <= u0_m0_wo0_mtree_mult1_18_bs1_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_bjA5(BITJOIN,465)@10
    u0_m0_wo0_mtree_mult1_18_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_18_bs1_b;

    -- u0_m0_wo0_mtree_mult1_18_im3(MULT,463)@10
    u0_m0_wo0_mtree_mult1_18_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_bjA5_q);
    u0_m0_wo0_mtree_mult1_18_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_bs6_b);
    u0_m0_wo0_mtree_mult1_18_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_18_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_18_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_18_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_18_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_18_im3_s1
    );
    u0_m0_wo0_mtree_mult1_18_im3_q <= u0_m0_wo0_mtree_mult1_18_im3_s1;

    -- u0_m0_wo0_mtree_mult1_18_align_15(BITSHIFT,475)@12
    u0_m0_wo0_mtree_mult1_18_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_18_align_15_q <= u0_m0_wo0_mtree_mult1_18_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_18_im11(MULT,471)@10
    u0_m0_wo0_mtree_mult1_18_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_bs8_b);
    u0_m0_wo0_mtree_mult1_18_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_bs6_b);
    u0_m0_wo0_mtree_mult1_18_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_18_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 7,
        lpm_widthp => 14,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_18_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_18_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_18_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_18_im11_s1
    );
    u0_m0_wo0_mtree_mult1_18_im11_q <= u0_m0_wo0_mtree_mult1_18_im11_s1;

    -- u0_m0_wo0_mtree_mult1_18_im0(MULT,460)@10
    u0_m0_wo0_mtree_mult1_18_im0_a0 <= u0_m0_wo0_mtree_mult1_18_bs1_b;
    u0_m0_wo0_mtree_mult1_18_im0_b0 <= u0_m0_wo0_mtree_mult1_18_bs2_b;
    u0_m0_wo0_mtree_mult1_18_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_18_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_18_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_18_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_18_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_18_im0_s1
    );
    u0_m0_wo0_mtree_mult1_18_im0_q <= u0_m0_wo0_mtree_mult1_18_im0_s1;

    -- u0_m0_wo0_mtree_mult1_18_join_14(BITJOIN,474)@12
    u0_m0_wo0_mtree_mult1_18_join_14_q <= u0_m0_wo0_mtree_mult1_18_im11_q & u0_m0_wo0_mtree_mult1_18_im0_q;

    -- u0_m0_wo0_mtree_mult1_18_result_add_0_0(ADD,479)@12
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_18_join_14_q(47)) & u0_m0_wo0_mtree_mult1_18_join_14_q));
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 42 => u0_m0_wo0_mtree_mult1_18_align_15_q(41)) & u0_m0_wo0_mtree_mult1_18_align_15_q));
    u0_m0_wo0_mtree_mult1_18_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_18_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_result_add_1_0(ADD,480)@13
    u0_m0_wo0_mtree_mult1_18_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_mult1_18_result_add_0_0_q(48)) & u0_m0_wo0_mtree_mult1_18_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_18_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 42 => u0_m0_wo0_mtree_mult1_18_align_17_q(41)) & u0_m0_wo0_mtree_mult1_18_align_17_q));
    u0_m0_wo0_mtree_mult1_18_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_18_result_add_1_0_o(49 downto 0);

    -- u0_m0_wo0_mtree_add0_9(ADD,127)@14
    u0_m0_wo0_mtree_add0_9_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_result_add_1_0_q(48 downto 0));
    u0_m0_wo0_mtree_add0_9_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_result_add_1_0_q(48 downto 0));
    u0_m0_wo0_mtree_add0_9: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_9_a) + SIGNED(u0_m0_wo0_mtree_add0_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_9_q <= u0_m0_wo0_mtree_add0_9_o(48 downto 0);

    -- u0_m0_wo0_wi0_delayr19(DELAY,26)@10
    u0_m0_wo0_wi0_delayr19 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr18_q, xout => u0_m0_wo0_wi0_delayr19_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_17_bs2(BITSELECT,483)@10
    u0_m0_wo0_mtree_mult1_17_bs2_in <= u0_m0_wo0_wi0_delayr19_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_17_bs2_b <= u0_m0_wo0_mtree_mult1_17_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_17_bs2_b_11(DELAY,802)@10
    d_u0_m0_wo0_mtree_mult1_17_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_17_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_17_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_17_bjB10(BITJOIN,491)@11
    u0_m0_wo0_mtree_mult1_17_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_17_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_17_im7(MULT,488)@11
    u0_m0_wo0_mtree_mult1_17_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_bjB10_q);
    u0_m0_wo0_mtree_mult1_17_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bs8_b);
    u0_m0_wo0_mtree_mult1_17_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_17_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_17_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_17_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_17_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_17_im7_s1
    );
    u0_m0_wo0_mtree_mult1_17_im7_q <= u0_m0_wo0_mtree_mult1_17_im7_s1;

    -- u0_m0_wo0_mtree_mult1_17_align_17(BITSHIFT,498)@13
    u0_m0_wo0_mtree_mult1_17_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_17_align_17_q <= u0_m0_wo0_mtree_mult1_17_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_17_bs6(BITSELECT,487)@10
    u0_m0_wo0_mtree_mult1_17_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr19_q);
    u0_m0_wo0_mtree_mult1_17_bs6_b <= u0_m0_wo0_mtree_mult1_17_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_17_im3(MULT,484)@10
    u0_m0_wo0_mtree_mult1_17_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bjA5_q);
    u0_m0_wo0_mtree_mult1_17_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_bs6_b);
    u0_m0_wo0_mtree_mult1_17_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_17_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_17_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_17_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_17_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_17_im3_s1
    );
    u0_m0_wo0_mtree_mult1_17_im3_q <= u0_m0_wo0_mtree_mult1_17_im3_s1;

    -- u0_m0_wo0_mtree_mult1_17_align_15(BITSHIFT,496)@12
    u0_m0_wo0_mtree_mult1_17_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_17_align_15_q <= u0_m0_wo0_mtree_mult1_17_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_17_im11(MULT,492)@10
    u0_m0_wo0_mtree_mult1_17_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bs8_b);
    u0_m0_wo0_mtree_mult1_17_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_bs6_b);
    u0_m0_wo0_mtree_mult1_17_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_17_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 7,
        lpm_widthp => 14,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_17_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_17_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_17_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_17_im11_s1
    );
    u0_m0_wo0_mtree_mult1_17_im11_q <= u0_m0_wo0_mtree_mult1_17_im11_s1;

    -- u0_m0_wo0_mtree_mult1_17_im0(MULT,481)@10
    u0_m0_wo0_mtree_mult1_17_im0_a0 <= u0_m0_wo0_mtree_mult1_19_bs1_b;
    u0_m0_wo0_mtree_mult1_17_im0_b0 <= u0_m0_wo0_mtree_mult1_17_bs2_b;
    u0_m0_wo0_mtree_mult1_17_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_17_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_17_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_17_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_17_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_17_im0_s1
    );
    u0_m0_wo0_mtree_mult1_17_im0_q <= u0_m0_wo0_mtree_mult1_17_im0_s1;

    -- u0_m0_wo0_mtree_mult1_17_join_14(BITJOIN,495)@12
    u0_m0_wo0_mtree_mult1_17_join_14_q <= u0_m0_wo0_mtree_mult1_17_im11_q & u0_m0_wo0_mtree_mult1_17_im0_q;

    -- u0_m0_wo0_mtree_mult1_17_result_add_0_0(ADD,500)@12
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_17_join_14_q(47)) & u0_m0_wo0_mtree_mult1_17_join_14_q));
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 42 => u0_m0_wo0_mtree_mult1_17_align_15_q(41)) & u0_m0_wo0_mtree_mult1_17_align_15_q));
    u0_m0_wo0_mtree_mult1_17_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_17_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_result_add_1_0(ADD,501)@13
    u0_m0_wo0_mtree_mult1_17_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_mult1_17_result_add_0_0_q(48)) & u0_m0_wo0_mtree_mult1_17_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_17_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 42 => u0_m0_wo0_mtree_mult1_17_align_17_q(41)) & u0_m0_wo0_mtree_mult1_17_align_17_q));
    u0_m0_wo0_mtree_mult1_17_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_17_result_add_1_0_o(49 downto 0);

    -- u0_m0_wo0_wi0_delayr20(DELAY,27)@10
    u0_m0_wo0_wi0_delayr20 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr19_q, xout => u0_m0_wo0_wi0_delayr20_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_16_bs2(BITSELECT,504)@10
    u0_m0_wo0_mtree_mult1_16_bs2_in <= u0_m0_wo0_wi0_delayr20_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_16_bs2_b <= u0_m0_wo0_mtree_mult1_16_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_16_bs2_b_11(DELAY,803)@10
    d_u0_m0_wo0_mtree_mult1_16_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_16_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_16_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_16_bjB10(BITJOIN,512)@11
    u0_m0_wo0_mtree_mult1_16_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_16_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_16_im7(MULT,509)@11
    u0_m0_wo0_mtree_mult1_16_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_bjB10_q);
    u0_m0_wo0_mtree_mult1_16_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bs8_b);
    u0_m0_wo0_mtree_mult1_16_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_16_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_16_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_16_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_16_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_16_im7_s1
    );
    u0_m0_wo0_mtree_mult1_16_im7_q <= u0_m0_wo0_mtree_mult1_16_im7_s1;

    -- u0_m0_wo0_mtree_mult1_16_align_17(BITSHIFT,519)@13
    u0_m0_wo0_mtree_mult1_16_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_16_align_17_q <= u0_m0_wo0_mtree_mult1_16_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_16_bs6(BITSELECT,508)@10
    u0_m0_wo0_mtree_mult1_16_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr20_q);
    u0_m0_wo0_mtree_mult1_16_bs6_b <= u0_m0_wo0_mtree_mult1_16_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_16_im3(MULT,505)@10
    u0_m0_wo0_mtree_mult1_16_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bjA5_q);
    u0_m0_wo0_mtree_mult1_16_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_bs6_b);
    u0_m0_wo0_mtree_mult1_16_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_16_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_16_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_16_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_16_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_16_im3_s1
    );
    u0_m0_wo0_mtree_mult1_16_im3_q <= u0_m0_wo0_mtree_mult1_16_im3_s1;

    -- u0_m0_wo0_mtree_mult1_16_align_15(BITSHIFT,517)@12
    u0_m0_wo0_mtree_mult1_16_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_16_align_15_q <= u0_m0_wo0_mtree_mult1_16_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_16_im11(MULT,513)@10
    u0_m0_wo0_mtree_mult1_16_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bs8_b);
    u0_m0_wo0_mtree_mult1_16_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_bs6_b);
    u0_m0_wo0_mtree_mult1_16_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_16_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 7,
        lpm_widthp => 14,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_16_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_16_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_16_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_16_im11_s1
    );
    u0_m0_wo0_mtree_mult1_16_im11_q <= u0_m0_wo0_mtree_mult1_16_im11_s1;

    -- u0_m0_wo0_mtree_mult1_16_im0(MULT,502)@10
    u0_m0_wo0_mtree_mult1_16_im0_a0 <= u0_m0_wo0_mtree_mult1_20_bs1_b;
    u0_m0_wo0_mtree_mult1_16_im0_b0 <= u0_m0_wo0_mtree_mult1_16_bs2_b;
    u0_m0_wo0_mtree_mult1_16_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_16_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_16_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_16_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_16_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_16_im0_s1
    );
    u0_m0_wo0_mtree_mult1_16_im0_q <= u0_m0_wo0_mtree_mult1_16_im0_s1;

    -- u0_m0_wo0_mtree_mult1_16_join_14(BITJOIN,516)@12
    u0_m0_wo0_mtree_mult1_16_join_14_q <= u0_m0_wo0_mtree_mult1_16_im11_q & u0_m0_wo0_mtree_mult1_16_im0_q;

    -- u0_m0_wo0_mtree_mult1_16_result_add_0_0(ADD,521)@12
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_16_join_14_q(47)) & u0_m0_wo0_mtree_mult1_16_join_14_q));
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 42 => u0_m0_wo0_mtree_mult1_16_align_15_q(41)) & u0_m0_wo0_mtree_mult1_16_align_15_q));
    u0_m0_wo0_mtree_mult1_16_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_16_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_result_add_1_0(ADD,522)@13
    u0_m0_wo0_mtree_mult1_16_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_mult1_16_result_add_0_0_q(48)) & u0_m0_wo0_mtree_mult1_16_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_16_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 42 => u0_m0_wo0_mtree_mult1_16_align_17_q(41)) & u0_m0_wo0_mtree_mult1_16_align_17_q));
    u0_m0_wo0_mtree_mult1_16_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_16_result_add_1_0_o(49 downto 0);

    -- u0_m0_wo0_mtree_add0_8(ADD,126)@14
    u0_m0_wo0_mtree_add0_8_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_result_add_1_0_q(48 downto 0));
    u0_m0_wo0_mtree_add0_8_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_result_add_1_0_q(48 downto 0));
    u0_m0_wo0_mtree_add0_8: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_8_a) + SIGNED(u0_m0_wo0_mtree_add0_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_8_q <= u0_m0_wo0_mtree_add0_8_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_4(ADD,140)@15
    u0_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_8_q(48)) & u0_m0_wo0_mtree_add0_8_q));
    u0_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_9_q(48)) & u0_m0_wo0_mtree_add0_9_q));
    u0_m0_wo0_mtree_add1_4: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_4_a) + SIGNED(u0_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_4_q <= u0_m0_wo0_mtree_add1_4_o(49 downto 0);

    -- u0_m0_wo0_mtree_add2_2(ADD,147)@16
    u0_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_4_q(49)) & u0_m0_wo0_mtree_add1_4_q));
    u0_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_5_q(49)) & u0_m0_wo0_mtree_add1_5_q));
    u0_m0_wo0_mtree_add2_2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_2_a) + SIGNED(u0_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_2_q <= u0_m0_wo0_mtree_add2_2_o(50 downto 0);

    -- u0_m0_wo0_mtree_add3_1(ADD,151)@17
    u0_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 51 => u0_m0_wo0_mtree_add2_2_q(50)) & u0_m0_wo0_mtree_add2_2_q));
    u0_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 49 => u0_m0_wo0_mtree_add2_3_q(48)) & u0_m0_wo0_mtree_add2_3_q));
    u0_m0_wo0_mtree_add3_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_1_a) + SIGNED(u0_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_1_q <= u0_m0_wo0_mtree_add3_1_o(51 downto 0);

    -- u0_m0_wo0_wi0_delayr21(DELAY,28)@10
    u0_m0_wo0_wi0_delayr21 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr20_q, xout => u0_m0_wo0_wi0_delayr21_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_delayr21_q_11(DELAY,783)@10
    d_u0_m0_wo0_wi0_delayr21_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr21_q, xout => d_u0_m0_wo0_wi0_delayr21_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_15_bs2(BITSELECT,525)@11
    u0_m0_wo0_mtree_mult1_15_bs2_in <= d_u0_m0_wo0_wi0_delayr21_q_11_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_15_bs2_b <= u0_m0_wo0_mtree_mult1_15_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_15_bs2_b_12(DELAY,804)@11
    d_u0_m0_wo0_mtree_mult1_15_bs2_b_12 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_15_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_15_bs2_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_15_bjB10(BITJOIN,533)@12
    u0_m0_wo0_mtree_mult1_15_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_15_bs2_b_12_q;

    -- u0_m0_wo0_mtree_mult1_15_im7(MULT,530)@12
    u0_m0_wo0_mtree_mult1_15_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_bjB10_q);
    u0_m0_wo0_mtree_mult1_15_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bs8_b);
    u0_m0_wo0_mtree_mult1_15_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_15_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 6,
        lpm_widthp => 24,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_15_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_15_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_15_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_15_im7_s1
    );
    u0_m0_wo0_mtree_mult1_15_im7_q <= u0_m0_wo0_mtree_mult1_15_im7_s1;

    -- u0_m0_wo0_mtree_mult1_15_align_17(BITSHIFT,540)@14
    u0_m0_wo0_mtree_mult1_15_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_15_align_17_q <= u0_m0_wo0_mtree_mult1_15_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_15_bs6(BITSELECT,529)@11
    u0_m0_wo0_mtree_mult1_15_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_delayr21_q_11_q);
    u0_m0_wo0_mtree_mult1_15_bs6_b <= u0_m0_wo0_mtree_mult1_15_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_15_im3(MULT,526)@11
    u0_m0_wo0_mtree_mult1_15_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bjA5_q);
    u0_m0_wo0_mtree_mult1_15_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_bs6_b);
    u0_m0_wo0_mtree_mult1_15_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_15_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_15_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_15_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_15_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_15_im3_s1
    );
    u0_m0_wo0_mtree_mult1_15_im3_q <= u0_m0_wo0_mtree_mult1_15_im3_s1;

    -- u0_m0_wo0_mtree_mult1_15_align_15(BITSHIFT,538)@13
    u0_m0_wo0_mtree_mult1_15_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_15_align_15_q <= u0_m0_wo0_mtree_mult1_15_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_15_im11(MULT,534)@11
    u0_m0_wo0_mtree_mult1_15_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_bs6_b);
    u0_m0_wo0_mtree_mult1_15_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bs8_b);
    u0_m0_wo0_mtree_mult1_15_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_15_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 6,
        lpm_widthp => 13,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_15_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_15_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_15_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_15_im11_s1
    );
    u0_m0_wo0_mtree_mult1_15_im11_q <= u0_m0_wo0_mtree_mult1_15_im11_s1;

    -- u0_m0_wo0_mtree_mult1_15_im0(MULT,523)@11
    u0_m0_wo0_mtree_mult1_15_im0_a0 <= u0_m0_wo0_mtree_mult1_21_bs1_b;
    u0_m0_wo0_mtree_mult1_15_im0_b0 <= u0_m0_wo0_mtree_mult1_15_bs2_b;
    u0_m0_wo0_mtree_mult1_15_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_15_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_15_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_15_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_15_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_15_im0_s1
    );
    u0_m0_wo0_mtree_mult1_15_im0_q <= u0_m0_wo0_mtree_mult1_15_im0_s1;

    -- u0_m0_wo0_mtree_mult1_15_join_14(BITJOIN,537)@13
    u0_m0_wo0_mtree_mult1_15_join_14_q <= u0_m0_wo0_mtree_mult1_15_im11_q & u0_m0_wo0_mtree_mult1_15_im0_q;

    -- u0_m0_wo0_mtree_mult1_15_result_add_0_0(ADD,542)@13
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_15_join_14_q(46)) & u0_m0_wo0_mtree_mult1_15_join_14_q));
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 42 => u0_m0_wo0_mtree_mult1_15_align_15_q(41)) & u0_m0_wo0_mtree_mult1_15_align_15_q));
    u0_m0_wo0_mtree_mult1_15_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_15_result_add_0_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_result_add_1_0(ADD,543)@14
    u0_m0_wo0_mtree_mult1_15_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_15_result_add_0_0_q(47)) & u0_m0_wo0_mtree_mult1_15_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_15_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 41 => u0_m0_wo0_mtree_mult1_15_align_17_q(40)) & u0_m0_wo0_mtree_mult1_15_align_17_q));
    u0_m0_wo0_mtree_mult1_15_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_15_result_add_1_0_o(48 downto 0);

    -- u0_m0_wo0_wi0_delayr22(DELAY,29)@10
    u0_m0_wo0_wi0_delayr22 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr21_q, xout => u0_m0_wo0_wi0_delayr22_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_delayr23(DELAY,30)@10
    u0_m0_wo0_wi0_delayr23 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr22_q, xout => u0_m0_wo0_wi0_delayr23_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_13_bs2(BITSELECT,546)@10
    u0_m0_wo0_mtree_mult1_13_bs2_in <= u0_m0_wo0_wi0_delayr23_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_13_bs2_b <= u0_m0_wo0_mtree_mult1_13_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_13_bs2_b_11(DELAY,805)@10
    d_u0_m0_wo0_mtree_mult1_13_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_13_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_13_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_13_bjB10(BITJOIN,554)@11
    u0_m0_wo0_mtree_mult1_13_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_13_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_13_im7(MULT,551)@11
    u0_m0_wo0_mtree_mult1_13_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_13_bjB10_q);
    u0_m0_wo0_mtree_mult1_13_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_bs8_b);
    u0_m0_wo0_mtree_mult1_13_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_13_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 5,
        lpm_widthp => 23,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_13_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_13_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_13_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_13_im7_s1
    );
    u0_m0_wo0_mtree_mult1_13_im7_q <= u0_m0_wo0_mtree_mult1_13_im7_s1;

    -- u0_m0_wo0_mtree_mult1_13_align_17(BITSHIFT,561)@13
    u0_m0_wo0_mtree_mult1_13_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_13_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_13_align_17_q <= u0_m0_wo0_mtree_mult1_13_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_13_bs6(BITSELECT,550)@10
    u0_m0_wo0_mtree_mult1_13_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr23_q);
    u0_m0_wo0_mtree_mult1_13_bs6_b <= u0_m0_wo0_mtree_mult1_13_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_13_im3(MULT,547)@10
    u0_m0_wo0_mtree_mult1_13_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_bjA5_q);
    u0_m0_wo0_mtree_mult1_13_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_13_bs6_b);
    u0_m0_wo0_mtree_mult1_13_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_13_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_13_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_13_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_13_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_13_im3_s1
    );
    u0_m0_wo0_mtree_mult1_13_im3_q <= u0_m0_wo0_mtree_mult1_13_im3_s1;

    -- u0_m0_wo0_mtree_mult1_13_align_15(BITSHIFT,559)@12
    u0_m0_wo0_mtree_mult1_13_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_13_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_13_align_15_q <= u0_m0_wo0_mtree_mult1_13_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_13_im11(MULT,555)@10
    u0_m0_wo0_mtree_mult1_13_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_13_bs6_b);
    u0_m0_wo0_mtree_mult1_13_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_bs8_b);
    u0_m0_wo0_mtree_mult1_13_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_13_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 5,
        lpm_widthp => 12,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_13_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_13_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_13_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_13_im11_s1
    );
    u0_m0_wo0_mtree_mult1_13_im11_q <= u0_m0_wo0_mtree_mult1_13_im11_s1;

    -- u0_m0_wo0_mtree_mult1_13_im0(MULT,544)@10
    u0_m0_wo0_mtree_mult1_13_im0_a0 <= u0_m0_wo0_mtree_mult1_23_bs1_b;
    u0_m0_wo0_mtree_mult1_13_im0_b0 <= u0_m0_wo0_mtree_mult1_13_bs2_b;
    u0_m0_wo0_mtree_mult1_13_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_13_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_13_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_13_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_13_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_13_im0_s1
    );
    u0_m0_wo0_mtree_mult1_13_im0_q <= u0_m0_wo0_mtree_mult1_13_im0_s1;

    -- u0_m0_wo0_mtree_mult1_13_join_14(BITJOIN,558)@12
    u0_m0_wo0_mtree_mult1_13_join_14_q <= u0_m0_wo0_mtree_mult1_13_im11_q & u0_m0_wo0_mtree_mult1_13_im0_q;

    -- u0_m0_wo0_mtree_mult1_13_result_add_0_0(ADD,563)@12
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_13_join_14_q(45)) & u0_m0_wo0_mtree_mult1_13_join_14_q));
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 42 => u0_m0_wo0_mtree_mult1_13_align_15_q(41)) & u0_m0_wo0_mtree_mult1_13_align_15_q));
    u0_m0_wo0_mtree_mult1_13_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_13_result_add_0_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_result_add_1_0(ADD,564)@13
    u0_m0_wo0_mtree_mult1_13_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_13_result_add_0_0_q(46)) & u0_m0_wo0_mtree_mult1_13_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_13_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 40 => u0_m0_wo0_mtree_mult1_13_align_17_q(39)) & u0_m0_wo0_mtree_mult1_13_align_17_q));
    u0_m0_wo0_mtree_mult1_13_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_13_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_wi0_delayr24(DELAY,31)@10
    u0_m0_wo0_wi0_delayr24 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr23_q, xout => u0_m0_wo0_wi0_delayr24_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_12_bs2(BITSELECT,567)@10
    u0_m0_wo0_mtree_mult1_12_bs2_in <= u0_m0_wo0_wi0_delayr24_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_12_bs2_b <= u0_m0_wo0_mtree_mult1_12_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_12_bs2_b_11(DELAY,806)@10
    d_u0_m0_wo0_mtree_mult1_12_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_12_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_12_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_12_bjB10(BITJOIN,575)@11
    u0_m0_wo0_mtree_mult1_12_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_12_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_12_im7(MULT,572)@11
    u0_m0_wo0_mtree_mult1_12_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_bjB10_q);
    u0_m0_wo0_mtree_mult1_12_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bs8_b);
    u0_m0_wo0_mtree_mult1_12_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_12_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 5,
        lpm_widthp => 23,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_12_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_12_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_12_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_12_im7_s1
    );
    u0_m0_wo0_mtree_mult1_12_im7_q <= u0_m0_wo0_mtree_mult1_12_im7_s1;

    -- u0_m0_wo0_mtree_mult1_12_align_17(BITSHIFT,582)@13
    u0_m0_wo0_mtree_mult1_12_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_12_align_17_q <= u0_m0_wo0_mtree_mult1_12_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_12_bs6(BITSELECT,571)@10
    u0_m0_wo0_mtree_mult1_12_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr24_q);
    u0_m0_wo0_mtree_mult1_12_bs6_b <= u0_m0_wo0_mtree_mult1_12_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_12_im3(MULT,568)@10
    u0_m0_wo0_mtree_mult1_12_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bjA5_q);
    u0_m0_wo0_mtree_mult1_12_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_bs6_b);
    u0_m0_wo0_mtree_mult1_12_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_12_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_12_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_12_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_12_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_12_im3_s1
    );
    u0_m0_wo0_mtree_mult1_12_im3_q <= u0_m0_wo0_mtree_mult1_12_im3_s1;

    -- u0_m0_wo0_mtree_mult1_12_align_15(BITSHIFT,580)@12
    u0_m0_wo0_mtree_mult1_12_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_12_align_15_q <= u0_m0_wo0_mtree_mult1_12_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_12_im11(MULT,576)@10
    u0_m0_wo0_mtree_mult1_12_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_bs6_b);
    u0_m0_wo0_mtree_mult1_12_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bs8_b);
    u0_m0_wo0_mtree_mult1_12_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_12_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 5,
        lpm_widthp => 12,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_12_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_12_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_12_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_12_im11_s1
    );
    u0_m0_wo0_mtree_mult1_12_im11_q <= u0_m0_wo0_mtree_mult1_12_im11_s1;

    -- u0_m0_wo0_mtree_mult1_12_im0(MULT,565)@10
    u0_m0_wo0_mtree_mult1_12_im0_a0 <= u0_m0_wo0_mtree_mult1_24_bs1_b;
    u0_m0_wo0_mtree_mult1_12_im0_b0 <= u0_m0_wo0_mtree_mult1_12_bs2_b;
    u0_m0_wo0_mtree_mult1_12_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_12_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_12_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_12_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_12_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_12_im0_s1
    );
    u0_m0_wo0_mtree_mult1_12_im0_q <= u0_m0_wo0_mtree_mult1_12_im0_s1;

    -- u0_m0_wo0_mtree_mult1_12_join_14(BITJOIN,579)@12
    u0_m0_wo0_mtree_mult1_12_join_14_q <= u0_m0_wo0_mtree_mult1_12_im11_q & u0_m0_wo0_mtree_mult1_12_im0_q;

    -- u0_m0_wo0_mtree_mult1_12_result_add_0_0(ADD,584)@12
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_12_join_14_q(45)) & u0_m0_wo0_mtree_mult1_12_join_14_q));
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 42 => u0_m0_wo0_mtree_mult1_12_align_15_q(41)) & u0_m0_wo0_mtree_mult1_12_align_15_q));
    u0_m0_wo0_mtree_mult1_12_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_12_result_add_0_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_result_add_1_0(ADD,585)@13
    u0_m0_wo0_mtree_mult1_12_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_12_result_add_0_0_q(46)) & u0_m0_wo0_mtree_mult1_12_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_12_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 40 => u0_m0_wo0_mtree_mult1_12_align_17_q(39)) & u0_m0_wo0_mtree_mult1_12_align_17_q));
    u0_m0_wo0_mtree_mult1_12_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_12_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_add0_6(ADD,124)@14
    u0_m0_wo0_mtree_add0_6_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_result_add_1_0_q(46 downto 0));
    u0_m0_wo0_mtree_add0_6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_13_result_add_1_0_q(46 downto 0));
    u0_m0_wo0_mtree_add0_6: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_6_a) + SIGNED(u0_m0_wo0_mtree_add0_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_6_q <= u0_m0_wo0_mtree_add0_6_o(46 downto 0);

    -- u0_m0_wo0_mtree_add1_3(ADD,139)@15
    u0_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 47 => u0_m0_wo0_mtree_add0_6_q(46)) & u0_m0_wo0_mtree_add0_6_q));
    u0_m0_wo0_mtree_add1_3_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_result_add_1_0_q);
    u0_m0_wo0_mtree_add1_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_3_a) + SIGNED(u0_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_3_q <= u0_m0_wo0_mtree_add1_3_o(48 downto 0);

    -- u0_m0_wo0_wi0_delayr25(DELAY,32)@10
    u0_m0_wo0_wi0_delayr25 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr24_q, xout => u0_m0_wo0_wi0_delayr25_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_delayr25_q_11(DELAY,784)@10
    d_u0_m0_wo0_wi0_delayr25_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr25_q, xout => d_u0_m0_wo0_wi0_delayr25_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_11_bs2(BITSELECT,588)@11
    u0_m0_wo0_mtree_mult1_11_bs2_in <= d_u0_m0_wo0_wi0_delayr25_q_11_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_11_bs2_b <= u0_m0_wo0_mtree_mult1_11_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_11_bs2_b_12(DELAY,807)@11
    d_u0_m0_wo0_mtree_mult1_11_bs2_b_12 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_11_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_11_bs2_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_11_bjB10(BITJOIN,596)@12
    u0_m0_wo0_mtree_mult1_11_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_11_bs2_b_12_q;

    -- u0_m0_wo0_mtree_mult1_11_im7(MULT,593)@12
    u0_m0_wo0_mtree_mult1_11_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_bjB10_q);
    u0_m0_wo0_mtree_mult1_11_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bs8_b);
    u0_m0_wo0_mtree_mult1_11_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_11_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 5,
        lpm_widthp => 23,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_11_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_11_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_11_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_11_im7_s1
    );
    u0_m0_wo0_mtree_mult1_11_im7_q <= u0_m0_wo0_mtree_mult1_11_im7_s1;

    -- u0_m0_wo0_mtree_mult1_11_align_17(BITSHIFT,603)@14
    u0_m0_wo0_mtree_mult1_11_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_11_align_17_q <= u0_m0_wo0_mtree_mult1_11_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_11_bs6(BITSELECT,592)@11
    u0_m0_wo0_mtree_mult1_11_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_delayr25_q_11_q);
    u0_m0_wo0_mtree_mult1_11_bs6_b <= u0_m0_wo0_mtree_mult1_11_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_11_im3(MULT,589)@11
    u0_m0_wo0_mtree_mult1_11_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bjA5_q);
    u0_m0_wo0_mtree_mult1_11_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_bs6_b);
    u0_m0_wo0_mtree_mult1_11_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_11_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_11_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_11_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_11_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_11_im3_s1
    );
    u0_m0_wo0_mtree_mult1_11_im3_q <= u0_m0_wo0_mtree_mult1_11_im3_s1;

    -- u0_m0_wo0_mtree_mult1_11_align_15(BITSHIFT,601)@13
    u0_m0_wo0_mtree_mult1_11_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_11_align_15_q <= u0_m0_wo0_mtree_mult1_11_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_11_im11(MULT,597)@11
    u0_m0_wo0_mtree_mult1_11_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_bs6_b);
    u0_m0_wo0_mtree_mult1_11_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bs8_b);
    u0_m0_wo0_mtree_mult1_11_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_11_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 5,
        lpm_widthp => 12,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_11_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_11_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_11_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_11_im11_s1
    );
    u0_m0_wo0_mtree_mult1_11_im11_q <= u0_m0_wo0_mtree_mult1_11_im11_s1;

    -- u0_m0_wo0_mtree_mult1_11_im0(MULT,586)@11
    u0_m0_wo0_mtree_mult1_11_im0_a0 <= u0_m0_wo0_mtree_mult1_25_bs1_b;
    u0_m0_wo0_mtree_mult1_11_im0_b0 <= u0_m0_wo0_mtree_mult1_11_bs2_b;
    u0_m0_wo0_mtree_mult1_11_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_11_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_11_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_11_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_11_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_11_im0_s1
    );
    u0_m0_wo0_mtree_mult1_11_im0_q <= u0_m0_wo0_mtree_mult1_11_im0_s1;

    -- u0_m0_wo0_mtree_mult1_11_join_14(BITJOIN,600)@13
    u0_m0_wo0_mtree_mult1_11_join_14_q <= u0_m0_wo0_mtree_mult1_11_im11_q & u0_m0_wo0_mtree_mult1_11_im0_q;

    -- u0_m0_wo0_mtree_mult1_11_result_add_0_0(ADD,605)@13
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_11_join_14_q(45)) & u0_m0_wo0_mtree_mult1_11_join_14_q));
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 42 => u0_m0_wo0_mtree_mult1_11_align_15_q(41)) & u0_m0_wo0_mtree_mult1_11_align_15_q));
    u0_m0_wo0_mtree_mult1_11_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_11_result_add_0_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_result_add_1_0(ADD,606)@14
    u0_m0_wo0_mtree_mult1_11_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_11_result_add_0_0_q(46)) & u0_m0_wo0_mtree_mult1_11_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_11_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 40 => u0_m0_wo0_mtree_mult1_11_align_17_q(39)) & u0_m0_wo0_mtree_mult1_11_align_17_q));
    u0_m0_wo0_mtree_mult1_11_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_11_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_wi0_delayr26(DELAY,33)@10
    u0_m0_wo0_wi0_delayr26 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr25_q, xout => u0_m0_wo0_wi0_delayr26_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_delayr27(DELAY,34)@10
    u0_m0_wo0_wi0_delayr27 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr26_q, xout => u0_m0_wo0_wi0_delayr27_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_9_bs2(BITSELECT,609)@10
    u0_m0_wo0_mtree_mult1_9_bs2_in <= u0_m0_wo0_wi0_delayr27_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_9_bs2_b <= u0_m0_wo0_mtree_mult1_9_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_9_bs2_b_11(DELAY,808)@10
    d_u0_m0_wo0_mtree_mult1_9_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_9_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_9_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_9_bjB10(BITJOIN,617)@11
    u0_m0_wo0_mtree_mult1_9_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_9_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_9_im7(MULT,614)@11
    u0_m0_wo0_mtree_mult1_9_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_bjB10_q);
    u0_m0_wo0_mtree_mult1_9_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bs8_b);
    u0_m0_wo0_mtree_mult1_9_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_9_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 4,
        lpm_widthp => 22,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_9_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_9_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_9_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_9_im7_s1
    );
    u0_m0_wo0_mtree_mult1_9_im7_q <= u0_m0_wo0_mtree_mult1_9_im7_s1;

    -- u0_m0_wo0_mtree_mult1_9_align_17(BITSHIFT,624)@13
    u0_m0_wo0_mtree_mult1_9_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_9_align_17_q <= u0_m0_wo0_mtree_mult1_9_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_9_bs6(BITSELECT,613)@10
    u0_m0_wo0_mtree_mult1_9_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr27_q);
    u0_m0_wo0_mtree_mult1_9_bs6_b <= u0_m0_wo0_mtree_mult1_9_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_9_im3(MULT,610)@10
    u0_m0_wo0_mtree_mult1_9_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bjA5_q);
    u0_m0_wo0_mtree_mult1_9_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_bs6_b);
    u0_m0_wo0_mtree_mult1_9_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_9_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_9_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_9_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_9_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_9_im3_s1
    );
    u0_m0_wo0_mtree_mult1_9_im3_q <= u0_m0_wo0_mtree_mult1_9_im3_s1;

    -- u0_m0_wo0_mtree_mult1_9_align_15(BITSHIFT,622)@12
    u0_m0_wo0_mtree_mult1_9_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_9_align_15_q <= u0_m0_wo0_mtree_mult1_9_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_9_im11(MULT,618)@10
    u0_m0_wo0_mtree_mult1_9_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_bs6_b);
    u0_m0_wo0_mtree_mult1_9_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bs8_b);
    u0_m0_wo0_mtree_mult1_9_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_9_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 4,
        lpm_widthp => 11,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_9_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_9_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_9_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_9_im11_s1
    );
    u0_m0_wo0_mtree_mult1_9_im11_q <= u0_m0_wo0_mtree_mult1_9_im11_s1;

    -- u0_m0_wo0_mtree_mult1_9_im0(MULT,607)@10
    u0_m0_wo0_mtree_mult1_9_im0_a0 <= u0_m0_wo0_mtree_mult1_27_bs1_b;
    u0_m0_wo0_mtree_mult1_9_im0_b0 <= u0_m0_wo0_mtree_mult1_9_bs2_b;
    u0_m0_wo0_mtree_mult1_9_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_9_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_9_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_9_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_9_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_9_im0_s1
    );
    u0_m0_wo0_mtree_mult1_9_im0_q <= u0_m0_wo0_mtree_mult1_9_im0_s1;

    -- u0_m0_wo0_mtree_mult1_9_join_14(BITJOIN,621)@12
    u0_m0_wo0_mtree_mult1_9_join_14_q <= u0_m0_wo0_mtree_mult1_9_im11_q & u0_m0_wo0_mtree_mult1_9_im0_q;

    -- u0_m0_wo0_mtree_mult1_9_result_add_0_0(ADD,626)@12
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_9_join_14_q(44)) & u0_m0_wo0_mtree_mult1_9_join_14_q));
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 42 => u0_m0_wo0_mtree_mult1_9_align_15_q(41)) & u0_m0_wo0_mtree_mult1_9_align_15_q));
    u0_m0_wo0_mtree_mult1_9_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_9_result_add_0_0_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_result_add_1_0(ADD,627)@13
    u0_m0_wo0_mtree_mult1_9_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_9_result_add_0_0_q(45)) & u0_m0_wo0_mtree_mult1_9_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_9_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 39 => u0_m0_wo0_mtree_mult1_9_align_17_q(38)) & u0_m0_wo0_mtree_mult1_9_align_17_q));
    u0_m0_wo0_mtree_mult1_9_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_9_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_9_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_wi0_delayr28(DELAY,35)@10
    u0_m0_wo0_wi0_delayr28 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr27_q, xout => u0_m0_wo0_wi0_delayr28_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_8_bs2(BITSELECT,630)@10
    u0_m0_wo0_mtree_mult1_8_bs2_in <= u0_m0_wo0_wi0_delayr28_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_8_bs2_b <= u0_m0_wo0_mtree_mult1_8_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_8_bs2_b_11(DELAY,809)@10
    d_u0_m0_wo0_mtree_mult1_8_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_8_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_8_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_8_bjB10(BITJOIN,638)@11
    u0_m0_wo0_mtree_mult1_8_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_8_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_8_im7(MULT,635)@11
    u0_m0_wo0_mtree_mult1_8_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_bjB10_q);
    u0_m0_wo0_mtree_mult1_8_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bs8_b);
    u0_m0_wo0_mtree_mult1_8_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_8_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 5,
        lpm_widthp => 23,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_8_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_8_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_8_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_8_im7_s1
    );
    u0_m0_wo0_mtree_mult1_8_im7_q <= u0_m0_wo0_mtree_mult1_8_im7_s1;

    -- u0_m0_wo0_mtree_mult1_8_align_17(BITSHIFT,645)@13
    u0_m0_wo0_mtree_mult1_8_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_8_align_17_q <= u0_m0_wo0_mtree_mult1_8_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_8_bs6(BITSELECT,634)@10
    u0_m0_wo0_mtree_mult1_8_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr28_q);
    u0_m0_wo0_mtree_mult1_8_bs6_b <= u0_m0_wo0_mtree_mult1_8_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_8_im3(MULT,631)@10
    u0_m0_wo0_mtree_mult1_8_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bjA5_q);
    u0_m0_wo0_mtree_mult1_8_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_bs6_b);
    u0_m0_wo0_mtree_mult1_8_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_8_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_8_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_8_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_8_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_8_im3_s1
    );
    u0_m0_wo0_mtree_mult1_8_im3_q <= u0_m0_wo0_mtree_mult1_8_im3_s1;

    -- u0_m0_wo0_mtree_mult1_8_align_15(BITSHIFT,643)@12
    u0_m0_wo0_mtree_mult1_8_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_8_align_15_q <= u0_m0_wo0_mtree_mult1_8_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_8_im11(MULT,639)@10
    u0_m0_wo0_mtree_mult1_8_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_bs6_b);
    u0_m0_wo0_mtree_mult1_8_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bs8_b);
    u0_m0_wo0_mtree_mult1_8_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_8_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 5,
        lpm_widthp => 12,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_8_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_8_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_8_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_8_im11_s1
    );
    u0_m0_wo0_mtree_mult1_8_im11_q <= u0_m0_wo0_mtree_mult1_8_im11_s1;

    -- u0_m0_wo0_mtree_mult1_8_im0(MULT,628)@10
    u0_m0_wo0_mtree_mult1_8_im0_a0 <= u0_m0_wo0_mtree_mult1_28_bs1_b;
    u0_m0_wo0_mtree_mult1_8_im0_b0 <= u0_m0_wo0_mtree_mult1_8_bs2_b;
    u0_m0_wo0_mtree_mult1_8_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_8_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_8_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_8_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_8_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_8_im0_s1
    );
    u0_m0_wo0_mtree_mult1_8_im0_q <= u0_m0_wo0_mtree_mult1_8_im0_s1;

    -- u0_m0_wo0_mtree_mult1_8_join_14(BITJOIN,642)@12
    u0_m0_wo0_mtree_mult1_8_join_14_q <= u0_m0_wo0_mtree_mult1_8_im11_q & u0_m0_wo0_mtree_mult1_8_im0_q;

    -- u0_m0_wo0_mtree_mult1_8_result_add_0_0(ADD,647)@12
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_8_join_14_q(45)) & u0_m0_wo0_mtree_mult1_8_join_14_q));
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 42 => u0_m0_wo0_mtree_mult1_8_align_15_q(41)) & u0_m0_wo0_mtree_mult1_8_align_15_q));
    u0_m0_wo0_mtree_mult1_8_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_8_result_add_0_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_mult1_8_result_add_1_0(ADD,648)@13
    u0_m0_wo0_mtree_mult1_8_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_mult1_8_result_add_0_0_q(46)) & u0_m0_wo0_mtree_mult1_8_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_8_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 40 => u0_m0_wo0_mtree_mult1_8_align_17_q(39)) & u0_m0_wo0_mtree_mult1_8_align_17_q));
    u0_m0_wo0_mtree_mult1_8_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_8_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_8_result_add_1_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_add0_4(ADD,122)@14
    u0_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_result_add_1_0_q(46 downto 0));
    u0_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_result_add_1_0_q);
    u0_m0_wo0_mtree_add0_4: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_4_a) + SIGNED(u0_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(46 downto 0);

    -- u0_m0_wo0_mtree_add1_2(ADD,138)@15
    u0_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add0_4_q(46)) & u0_m0_wo0_mtree_add0_4_q));
    u0_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_result_add_1_0_q);
    u0_m0_wo0_mtree_add1_2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_2_a) + SIGNED(u0_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_2_q <= u0_m0_wo0_mtree_add1_2_o(47 downto 0);

    -- u0_m0_wo0_mtree_add2_1(ADD,146)@16
    u0_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 48 => u0_m0_wo0_mtree_add1_2_q(47)) & u0_m0_wo0_mtree_add1_2_q));
    u0_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add1_3_q(48)) & u0_m0_wo0_mtree_add1_3_q));
    u0_m0_wo0_mtree_add2_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_1_a) + SIGNED(u0_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_1_q <= u0_m0_wo0_mtree_add2_1_o(49 downto 0);

    -- u0_m0_wo0_wi0_delayr29(DELAY,36)@10
    u0_m0_wo0_wi0_delayr29 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr28_q, xout => u0_m0_wo0_wi0_delayr29_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_delayr29_q_11(DELAY,785)@10
    d_u0_m0_wo0_wi0_delayr29_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr29_q, xout => d_u0_m0_wo0_wi0_delayr29_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_7_bs2(BITSELECT,651)@11
    u0_m0_wo0_mtree_mult1_7_bs2_in <= d_u0_m0_wo0_wi0_delayr29_q_11_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_7_bs2_b <= u0_m0_wo0_mtree_mult1_7_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_7_bs2_b_12(DELAY,810)@11
    d_u0_m0_wo0_mtree_mult1_7_bs2_b_12 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_7_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_7_bs2_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_7_bjB10(BITJOIN,659)@12
    u0_m0_wo0_mtree_mult1_7_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_7_bs2_b_12_q;

    -- u0_m0_wo0_mtree_mult1_7_im7(MULT,656)@12
    u0_m0_wo0_mtree_mult1_7_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_bjB10_q);
    u0_m0_wo0_mtree_mult1_7_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bs8_b);
    u0_m0_wo0_mtree_mult1_7_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_7_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 4,
        lpm_widthp => 22,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_7_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_7_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_7_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_7_im7_s1
    );
    u0_m0_wo0_mtree_mult1_7_im7_q <= u0_m0_wo0_mtree_mult1_7_im7_s1;

    -- u0_m0_wo0_mtree_mult1_7_align_17(BITSHIFT,666)@14
    u0_m0_wo0_mtree_mult1_7_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_7_align_17_q <= u0_m0_wo0_mtree_mult1_7_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_7_bs6(BITSELECT,655)@11
    u0_m0_wo0_mtree_mult1_7_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_delayr29_q_11_q);
    u0_m0_wo0_mtree_mult1_7_bs6_b <= u0_m0_wo0_mtree_mult1_7_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_7_im3(MULT,652)@11
    u0_m0_wo0_mtree_mult1_7_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bjA5_q);
    u0_m0_wo0_mtree_mult1_7_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_bs6_b);
    u0_m0_wo0_mtree_mult1_7_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_7_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_7_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_7_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_7_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_7_im3_s1
    );
    u0_m0_wo0_mtree_mult1_7_im3_q <= u0_m0_wo0_mtree_mult1_7_im3_s1;

    -- u0_m0_wo0_mtree_mult1_7_align_15(BITSHIFT,664)@13
    u0_m0_wo0_mtree_mult1_7_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_7_align_15_q <= u0_m0_wo0_mtree_mult1_7_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_7_im11(MULT,660)@11
    u0_m0_wo0_mtree_mult1_7_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_bs6_b);
    u0_m0_wo0_mtree_mult1_7_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bs8_b);
    u0_m0_wo0_mtree_mult1_7_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_7_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 4,
        lpm_widthp => 11,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_7_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_7_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_7_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_7_im11_s1
    );
    u0_m0_wo0_mtree_mult1_7_im11_q <= u0_m0_wo0_mtree_mult1_7_im11_s1;

    -- u0_m0_wo0_mtree_mult1_7_im0(MULT,649)@11
    u0_m0_wo0_mtree_mult1_7_im0_a0 <= u0_m0_wo0_mtree_mult1_29_bs1_b;
    u0_m0_wo0_mtree_mult1_7_im0_b0 <= u0_m0_wo0_mtree_mult1_7_bs2_b;
    u0_m0_wo0_mtree_mult1_7_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_7_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_7_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_7_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_7_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_7_im0_s1
    );
    u0_m0_wo0_mtree_mult1_7_im0_q <= u0_m0_wo0_mtree_mult1_7_im0_s1;

    -- u0_m0_wo0_mtree_mult1_7_join_14(BITJOIN,663)@13
    u0_m0_wo0_mtree_mult1_7_join_14_q <= u0_m0_wo0_mtree_mult1_7_im11_q & u0_m0_wo0_mtree_mult1_7_im0_q;

    -- u0_m0_wo0_mtree_mult1_7_result_add_0_0(ADD,668)@13
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_7_join_14_q(44)) & u0_m0_wo0_mtree_mult1_7_join_14_q));
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 42 => u0_m0_wo0_mtree_mult1_7_align_15_q(41)) & u0_m0_wo0_mtree_mult1_7_align_15_q));
    u0_m0_wo0_mtree_mult1_7_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_7_result_add_0_0_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_result_add_1_0(ADD,669)@14
    u0_m0_wo0_mtree_mult1_7_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_7_result_add_0_0_q(45)) & u0_m0_wo0_mtree_mult1_7_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_7_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 39 => u0_m0_wo0_mtree_mult1_7_align_17_q(38)) & u0_m0_wo0_mtree_mult1_7_align_17_q));
    u0_m0_wo0_mtree_mult1_7_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_7_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_7_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_wi0_delayr30(DELAY,37)@10
    u0_m0_wo0_wi0_delayr30 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr29_q, xout => u0_m0_wo0_wi0_delayr30_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_delayr31(DELAY,38)@10
    u0_m0_wo0_wi0_delayr31 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr30_q, xout => u0_m0_wo0_wi0_delayr31_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_5_bs2(BITSELECT,672)@10
    u0_m0_wo0_mtree_mult1_5_bs2_in <= u0_m0_wo0_wi0_delayr31_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_5_bs2_b <= u0_m0_wo0_mtree_mult1_5_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_5_bs2_b_11(DELAY,811)@10
    d_u0_m0_wo0_mtree_mult1_5_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_5_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_5_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_5_bjB10(BITJOIN,680)@11
    u0_m0_wo0_mtree_mult1_5_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_5_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_5_im7(MULT,677)@11
    u0_m0_wo0_mtree_mult1_5_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_bjB10_q);
    u0_m0_wo0_mtree_mult1_5_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bs8_b);
    u0_m0_wo0_mtree_mult1_5_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_5_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 4,
        lpm_widthp => 22,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_5_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_5_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_5_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_5_im7_s1
    );
    u0_m0_wo0_mtree_mult1_5_im7_q <= u0_m0_wo0_mtree_mult1_5_im7_s1;

    -- u0_m0_wo0_mtree_mult1_5_align_17(BITSHIFT,687)@13
    u0_m0_wo0_mtree_mult1_5_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_5_align_17_q <= u0_m0_wo0_mtree_mult1_5_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_5_bs6(BITSELECT,676)@10
    u0_m0_wo0_mtree_mult1_5_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr31_q);
    u0_m0_wo0_mtree_mult1_5_bs6_b <= u0_m0_wo0_mtree_mult1_5_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_5_im3(MULT,673)@10
    u0_m0_wo0_mtree_mult1_5_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bjA5_q);
    u0_m0_wo0_mtree_mult1_5_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_bs6_b);
    u0_m0_wo0_mtree_mult1_5_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_5_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_5_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_5_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_5_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_5_im3_s1
    );
    u0_m0_wo0_mtree_mult1_5_im3_q <= u0_m0_wo0_mtree_mult1_5_im3_s1;

    -- u0_m0_wo0_mtree_mult1_5_align_15(BITSHIFT,685)@12
    u0_m0_wo0_mtree_mult1_5_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_5_align_15_q <= u0_m0_wo0_mtree_mult1_5_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_5_im11(MULT,681)@10
    u0_m0_wo0_mtree_mult1_5_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_bs6_b);
    u0_m0_wo0_mtree_mult1_5_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bs8_b);
    u0_m0_wo0_mtree_mult1_5_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_5_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 4,
        lpm_widthp => 11,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_5_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_5_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_5_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_5_im11_s1
    );
    u0_m0_wo0_mtree_mult1_5_im11_q <= u0_m0_wo0_mtree_mult1_5_im11_s1;

    -- u0_m0_wo0_mtree_mult1_5_im0(MULT,670)@10
    u0_m0_wo0_mtree_mult1_5_im0_a0 <= u0_m0_wo0_mtree_mult1_31_bs1_b;
    u0_m0_wo0_mtree_mult1_5_im0_b0 <= u0_m0_wo0_mtree_mult1_5_bs2_b;
    u0_m0_wo0_mtree_mult1_5_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_5_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_5_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_5_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_5_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_5_im0_s1
    );
    u0_m0_wo0_mtree_mult1_5_im0_q <= u0_m0_wo0_mtree_mult1_5_im0_s1;

    -- u0_m0_wo0_mtree_mult1_5_join_14(BITJOIN,684)@12
    u0_m0_wo0_mtree_mult1_5_join_14_q <= u0_m0_wo0_mtree_mult1_5_im11_q & u0_m0_wo0_mtree_mult1_5_im0_q;

    -- u0_m0_wo0_mtree_mult1_5_result_add_0_0(ADD,689)@12
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_5_join_14_q(44)) & u0_m0_wo0_mtree_mult1_5_join_14_q));
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 42 => u0_m0_wo0_mtree_mult1_5_align_15_q(41)) & u0_m0_wo0_mtree_mult1_5_align_15_q));
    u0_m0_wo0_mtree_mult1_5_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_5_result_add_0_0_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_result_add_1_0(ADD,690)@13
    u0_m0_wo0_mtree_mult1_5_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_5_result_add_0_0_q(45)) & u0_m0_wo0_mtree_mult1_5_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_5_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 39 => u0_m0_wo0_mtree_mult1_5_align_17_q(38)) & u0_m0_wo0_mtree_mult1_5_align_17_q));
    u0_m0_wo0_mtree_mult1_5_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_5_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_wi0_delayr32(DELAY,39)@10
    u0_m0_wo0_wi0_delayr32 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr31_q, xout => u0_m0_wo0_wi0_delayr32_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_4_bs2(BITSELECT,693)@10
    u0_m0_wo0_mtree_mult1_4_bs2_in <= u0_m0_wo0_wi0_delayr32_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_4_bs2_b <= u0_m0_wo0_mtree_mult1_4_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_4_bs2_b_11(DELAY,812)@10
    d_u0_m0_wo0_mtree_mult1_4_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_4_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_4_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_4_bjB10(BITJOIN,701)@11
    u0_m0_wo0_mtree_mult1_4_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_4_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_4_im7(MULT,698)@11
    u0_m0_wo0_mtree_mult1_4_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_bjB10_q);
    u0_m0_wo0_mtree_mult1_4_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bs8_b);
    u0_m0_wo0_mtree_mult1_4_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_4_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 4,
        lpm_widthp => 22,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_4_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_4_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_4_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_4_im7_s1
    );
    u0_m0_wo0_mtree_mult1_4_im7_q <= u0_m0_wo0_mtree_mult1_4_im7_s1;

    -- u0_m0_wo0_mtree_mult1_4_align_17(BITSHIFT,708)@13
    u0_m0_wo0_mtree_mult1_4_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_4_align_17_q <= u0_m0_wo0_mtree_mult1_4_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_4_bs6(BITSELECT,697)@10
    u0_m0_wo0_mtree_mult1_4_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr32_q);
    u0_m0_wo0_mtree_mult1_4_bs6_b <= u0_m0_wo0_mtree_mult1_4_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_4_im3(MULT,694)@10
    u0_m0_wo0_mtree_mult1_4_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bjA5_q);
    u0_m0_wo0_mtree_mult1_4_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_bs6_b);
    u0_m0_wo0_mtree_mult1_4_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_4_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_4_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_4_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_4_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_4_im3_s1
    );
    u0_m0_wo0_mtree_mult1_4_im3_q <= u0_m0_wo0_mtree_mult1_4_im3_s1;

    -- u0_m0_wo0_mtree_mult1_4_align_15(BITSHIFT,706)@12
    u0_m0_wo0_mtree_mult1_4_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_4_align_15_q <= u0_m0_wo0_mtree_mult1_4_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_4_im11(MULT,702)@10
    u0_m0_wo0_mtree_mult1_4_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_bs6_b);
    u0_m0_wo0_mtree_mult1_4_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bs8_b);
    u0_m0_wo0_mtree_mult1_4_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_4_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 4,
        lpm_widthp => 11,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_4_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_4_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_4_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_4_im11_s1
    );
    u0_m0_wo0_mtree_mult1_4_im11_q <= u0_m0_wo0_mtree_mult1_4_im11_s1;

    -- u0_m0_wo0_mtree_mult1_4_im0(MULT,691)@10
    u0_m0_wo0_mtree_mult1_4_im0_a0 <= u0_m0_wo0_mtree_mult1_32_bs1_b;
    u0_m0_wo0_mtree_mult1_4_im0_b0 <= u0_m0_wo0_mtree_mult1_4_bs2_b;
    u0_m0_wo0_mtree_mult1_4_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_4_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_4_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_4_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_4_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_4_im0_s1
    );
    u0_m0_wo0_mtree_mult1_4_im0_q <= u0_m0_wo0_mtree_mult1_4_im0_s1;

    -- u0_m0_wo0_mtree_mult1_4_join_14(BITJOIN,705)@12
    u0_m0_wo0_mtree_mult1_4_join_14_q <= u0_m0_wo0_mtree_mult1_4_im11_q & u0_m0_wo0_mtree_mult1_4_im0_q;

    -- u0_m0_wo0_mtree_mult1_4_result_add_0_0(ADD,710)@12
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_4_join_14_q(44)) & u0_m0_wo0_mtree_mult1_4_join_14_q));
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 42 => u0_m0_wo0_mtree_mult1_4_align_15_q(41)) & u0_m0_wo0_mtree_mult1_4_align_15_q));
    u0_m0_wo0_mtree_mult1_4_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_4_result_add_0_0_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_result_add_1_0(ADD,711)@13
    u0_m0_wo0_mtree_mult1_4_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_4_result_add_0_0_q(45)) & u0_m0_wo0_mtree_mult1_4_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_4_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 39 => u0_m0_wo0_mtree_mult1_4_align_17_q(38)) & u0_m0_wo0_mtree_mult1_4_align_17_q));
    u0_m0_wo0_mtree_mult1_4_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_4_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_4_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_add0_2(ADD,120)@14
    u0_m0_wo0_mtree_add0_2_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_result_add_1_0_q(45 downto 0));
    u0_m0_wo0_mtree_add0_2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_result_add_1_0_q(45 downto 0));
    u0_m0_wo0_mtree_add0_2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_2_a) + SIGNED(u0_m0_wo0_mtree_add0_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_2_q <= u0_m0_wo0_mtree_add0_2_o(45 downto 0);

    -- u0_m0_wo0_mtree_add1_1(ADD,137)@15
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_add0_2_q(45)) & u0_m0_wo0_mtree_add0_2_q));
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_result_add_1_0_q);
    u0_m0_wo0_mtree_add1_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(46 downto 0);

    -- u0_m0_wo0_wi0_delayr33(DELAY,40)@10
    u0_m0_wo0_wi0_delayr33 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr32_q, xout => u0_m0_wo0_wi0_delayr33_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_delayr33_q_11(DELAY,786)@10
    d_u0_m0_wo0_wi0_delayr33_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr33_q, xout => d_u0_m0_wo0_wi0_delayr33_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_3_bs2(BITSELECT,714)@11
    u0_m0_wo0_mtree_mult1_3_bs2_in <= d_u0_m0_wo0_wi0_delayr33_q_11_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_3_bs2_b <= u0_m0_wo0_mtree_mult1_3_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_3_bs2_b_12(DELAY,813)@11
    d_u0_m0_wo0_mtree_mult1_3_bs2_b_12 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_3_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_3_bs2_b_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_3_bjB10(BITJOIN,722)@12
    u0_m0_wo0_mtree_mult1_3_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_3_bs2_b_12_q;

    -- u0_m0_wo0_mtree_mult1_3_im7(MULT,719)@12
    u0_m0_wo0_mtree_mult1_3_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_3_bjB10_q);
    u0_m0_wo0_mtree_mult1_3_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bs8_b);
    u0_m0_wo0_mtree_mult1_3_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_3_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 3,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_3_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_3_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_3_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_3_im7_s1
    );
    u0_m0_wo0_mtree_mult1_3_im7_q <= u0_m0_wo0_mtree_mult1_3_im7_s1;

    -- u0_m0_wo0_mtree_mult1_3_align_17(BITSHIFT,729)@14
    u0_m0_wo0_mtree_mult1_3_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_3_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_3_align_17_q <= u0_m0_wo0_mtree_mult1_3_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_3_bs6(BITSELECT,718)@11
    u0_m0_wo0_mtree_mult1_3_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_delayr33_q_11_q);
    u0_m0_wo0_mtree_mult1_3_bs6_b <= u0_m0_wo0_mtree_mult1_3_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_3_im3(MULT,715)@11
    u0_m0_wo0_mtree_mult1_3_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bjA5_q);
    u0_m0_wo0_mtree_mult1_3_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_3_bs6_b);
    u0_m0_wo0_mtree_mult1_3_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_3_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_3_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_3_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_3_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_3_im3_s1
    );
    u0_m0_wo0_mtree_mult1_3_im3_q <= u0_m0_wo0_mtree_mult1_3_im3_s1;

    -- u0_m0_wo0_mtree_mult1_3_align_15(BITSHIFT,727)@13
    u0_m0_wo0_mtree_mult1_3_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_3_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_3_align_15_q <= u0_m0_wo0_mtree_mult1_3_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_3_im11(MULT,723)@11
    u0_m0_wo0_mtree_mult1_3_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_3_bs6_b);
    u0_m0_wo0_mtree_mult1_3_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bs8_b);
    u0_m0_wo0_mtree_mult1_3_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_3_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 3,
        lpm_widthp => 10,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_3_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_3_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_3_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_3_im11_s1
    );
    u0_m0_wo0_mtree_mult1_3_im11_q <= u0_m0_wo0_mtree_mult1_3_im11_s1;

    -- u0_m0_wo0_mtree_mult1_3_im0(MULT,712)@11
    u0_m0_wo0_mtree_mult1_3_im0_a0 <= u0_m0_wo0_mtree_mult1_33_bs1_b;
    u0_m0_wo0_mtree_mult1_3_im0_b0 <= u0_m0_wo0_mtree_mult1_3_bs2_b;
    u0_m0_wo0_mtree_mult1_3_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_3_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_3_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_3_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_3_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_3_im0_s1
    );
    u0_m0_wo0_mtree_mult1_3_im0_q <= u0_m0_wo0_mtree_mult1_3_im0_s1;

    -- u0_m0_wo0_mtree_mult1_3_join_14(BITJOIN,726)@13
    u0_m0_wo0_mtree_mult1_3_join_14_q <= u0_m0_wo0_mtree_mult1_3_im11_q & u0_m0_wo0_mtree_mult1_3_im0_q;

    -- u0_m0_wo0_mtree_mult1_3_result_add_0_0(ADD,731)@13
    u0_m0_wo0_mtree_mult1_3_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_3_join_14_q(43)) & u0_m0_wo0_mtree_mult1_3_join_14_q));
    u0_m0_wo0_mtree_mult1_3_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 42 => u0_m0_wo0_mtree_mult1_3_align_15_q(41)) & u0_m0_wo0_mtree_mult1_3_align_15_q));
    u0_m0_wo0_mtree_mult1_3_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_3_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_3_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_3_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_3_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_3_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_3_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_3_result_add_1_0(ADD,732)@14
    u0_m0_wo0_mtree_mult1_3_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_3_result_add_0_0_q(44)) & u0_m0_wo0_mtree_mult1_3_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_3_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 38 => u0_m0_wo0_mtree_mult1_3_align_17_q(37)) & u0_m0_wo0_mtree_mult1_3_align_17_q));
    u0_m0_wo0_mtree_mult1_3_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_3_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_3_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_3_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_3_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_3_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_3_result_add_1_0_o(45 downto 0);

    -- u0_m0_wo0_wi0_delayr34(DELAY,41)@10
    u0_m0_wo0_wi0_delayr34 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr33_q, xout => u0_m0_wo0_wi0_delayr34_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_delayr35(DELAY,42)@10
    u0_m0_wo0_wi0_delayr35 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr34_q, xout => u0_m0_wo0_wi0_delayr35_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_1_bs2(BITSELECT,735)@10
    u0_m0_wo0_mtree_mult1_1_bs2_in <= u0_m0_wo0_wi0_delayr35_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_1_bs2_b <= u0_m0_wo0_mtree_mult1_1_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_1_bs2_b_11(DELAY,814)@10
    d_u0_m0_wo0_mtree_mult1_1_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_1_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_1_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_1_bjB10(BITJOIN,743)@11
    u0_m0_wo0_mtree_mult1_1_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_1_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_1_im7(MULT,740)@11
    u0_m0_wo0_mtree_mult1_1_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_1_bjB10_q);
    u0_m0_wo0_mtree_mult1_1_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bs8_b);
    u0_m0_wo0_mtree_mult1_1_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_1_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 3,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_1_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_1_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_1_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_1_im7_s1
    );
    u0_m0_wo0_mtree_mult1_1_im7_q <= u0_m0_wo0_mtree_mult1_1_im7_s1;

    -- u0_m0_wo0_mtree_mult1_1_align_17(BITSHIFT,750)@13
    u0_m0_wo0_mtree_mult1_1_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_1_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_1_align_17_q <= u0_m0_wo0_mtree_mult1_1_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_1_bs6(BITSELECT,739)@10
    u0_m0_wo0_mtree_mult1_1_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr35_q);
    u0_m0_wo0_mtree_mult1_1_bs6_b <= u0_m0_wo0_mtree_mult1_1_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_1_im3(MULT,736)@10
    u0_m0_wo0_mtree_mult1_1_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bjA5_q);
    u0_m0_wo0_mtree_mult1_1_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_1_bs6_b);
    u0_m0_wo0_mtree_mult1_1_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_1_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_1_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_1_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_1_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_1_im3_s1
    );
    u0_m0_wo0_mtree_mult1_1_im3_q <= u0_m0_wo0_mtree_mult1_1_im3_s1;

    -- u0_m0_wo0_mtree_mult1_1_align_15(BITSHIFT,748)@12
    u0_m0_wo0_mtree_mult1_1_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_1_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_1_align_15_q <= u0_m0_wo0_mtree_mult1_1_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_1_im11(MULT,744)@10
    u0_m0_wo0_mtree_mult1_1_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_1_bs6_b);
    u0_m0_wo0_mtree_mult1_1_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bs8_b);
    u0_m0_wo0_mtree_mult1_1_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_1_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 3,
        lpm_widthp => 10,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_1_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_1_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_1_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_1_im11_s1
    );
    u0_m0_wo0_mtree_mult1_1_im11_q <= u0_m0_wo0_mtree_mult1_1_im11_s1;

    -- u0_m0_wo0_mtree_mult1_1_im0(MULT,733)@10
    u0_m0_wo0_mtree_mult1_1_im0_a0 <= u0_m0_wo0_mtree_mult1_35_bs1_b;
    u0_m0_wo0_mtree_mult1_1_im0_b0 <= u0_m0_wo0_mtree_mult1_1_bs2_b;
    u0_m0_wo0_mtree_mult1_1_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_1_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_1_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_1_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_1_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_1_im0_s1
    );
    u0_m0_wo0_mtree_mult1_1_im0_q <= u0_m0_wo0_mtree_mult1_1_im0_s1;

    -- u0_m0_wo0_mtree_mult1_1_join_14(BITJOIN,747)@12
    u0_m0_wo0_mtree_mult1_1_join_14_q <= u0_m0_wo0_mtree_mult1_1_im11_q & u0_m0_wo0_mtree_mult1_1_im0_q;

    -- u0_m0_wo0_mtree_mult1_1_result_add_0_0(ADD,752)@12
    u0_m0_wo0_mtree_mult1_1_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_1_join_14_q(43)) & u0_m0_wo0_mtree_mult1_1_join_14_q));
    u0_m0_wo0_mtree_mult1_1_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 42 => u0_m0_wo0_mtree_mult1_1_align_15_q(41)) & u0_m0_wo0_mtree_mult1_1_align_15_q));
    u0_m0_wo0_mtree_mult1_1_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_1_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_1_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_1_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_1_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_1_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_1_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_mult1_1_result_add_1_0(ADD,753)@13
    u0_m0_wo0_mtree_mult1_1_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_1_result_add_0_0_q(44)) & u0_m0_wo0_mtree_mult1_1_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_1_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 38 => u0_m0_wo0_mtree_mult1_1_align_17_q(37)) & u0_m0_wo0_mtree_mult1_1_align_17_q));
    u0_m0_wo0_mtree_mult1_1_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_1_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_1_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_1_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_1_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_1_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_1_result_add_1_0_o(45 downto 0);

    -- u0_m0_wo0_wi0_delayr36(DELAY,43)@10
    u0_m0_wo0_wi0_delayr36 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr35_q, xout => u0_m0_wo0_wi0_delayr36_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_0_bs2(BITSELECT,756)@10
    u0_m0_wo0_mtree_mult1_0_bs2_in <= u0_m0_wo0_wi0_delayr36_q(16 downto 0);
    u0_m0_wo0_mtree_mult1_0_bs2_b <= u0_m0_wo0_mtree_mult1_0_bs2_in(16 downto 0);

    -- d_u0_m0_wo0_mtree_mult1_0_bs2_b_11(DELAY,815)@10
    d_u0_m0_wo0_mtree_mult1_0_bs2_b_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_0_bs2_b, xout => d_u0_m0_wo0_mtree_mult1_0_bs2_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_0_bjB10(BITJOIN,764)@11
    u0_m0_wo0_mtree_mult1_0_bjB10_q <= GND_q & d_u0_m0_wo0_mtree_mult1_0_bs2_b_11_q;

    -- u0_m0_wo0_mtree_mult1_0_im7(MULT,761)@11
    u0_m0_wo0_mtree_mult1_0_im7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_bjB10_q);
    u0_m0_wo0_mtree_mult1_0_im7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bs8_b);
    u0_m0_wo0_mtree_mult1_0_im7_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_im7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 4,
        lpm_widthp => 22,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_0_im7_a0,
        datab => u0_m0_wo0_mtree_mult1_0_im7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_0_im7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_0_im7_s1
    );
    u0_m0_wo0_mtree_mult1_0_im7_q <= u0_m0_wo0_mtree_mult1_0_im7_s1;

    -- u0_m0_wo0_mtree_mult1_0_align_17(BITSHIFT,771)@13
    u0_m0_wo0_mtree_mult1_0_align_17_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_im7_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_0_align_17_q <= u0_m0_wo0_mtree_mult1_0_align_17_q_int;

    -- u0_m0_wo0_mtree_mult1_0_bs6(BITSELECT,760)@10
    u0_m0_wo0_mtree_mult1_0_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr36_q);
    u0_m0_wo0_mtree_mult1_0_bs6_b <= u0_m0_wo0_mtree_mult1_0_bs6_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_0_im3(MULT,757)@10
    u0_m0_wo0_mtree_mult1_0_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bjA5_q);
    u0_m0_wo0_mtree_mult1_0_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_bs6_b);
    u0_m0_wo0_mtree_mult1_0_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 7,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_0_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_0_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_0_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_0_im3_s1
    );
    u0_m0_wo0_mtree_mult1_0_im3_q <= u0_m0_wo0_mtree_mult1_0_im3_s1;

    -- u0_m0_wo0_mtree_mult1_0_align_15(BITSHIFT,769)@12
    u0_m0_wo0_mtree_mult1_0_align_15_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_im3_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_0_align_15_q <= u0_m0_wo0_mtree_mult1_0_align_15_q_int;

    -- u0_m0_wo0_mtree_mult1_0_im11(MULT,765)@10
    u0_m0_wo0_mtree_mult1_0_im11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_bs6_b);
    u0_m0_wo0_mtree_mult1_0_im11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bs8_b);
    u0_m0_wo0_mtree_mult1_0_im11_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_im11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 4,
        lpm_widthp => 11,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_0_im11_a0,
        datab => u0_m0_wo0_mtree_mult1_0_im11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_0_im11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_0_im11_s1
    );
    u0_m0_wo0_mtree_mult1_0_im11_q <= u0_m0_wo0_mtree_mult1_0_im11_s1;

    -- u0_m0_wo0_mtree_mult1_0_im0(MULT,754)@10
    u0_m0_wo0_mtree_mult1_0_im0_a0 <= u0_m0_wo0_mtree_mult1_36_bs1_b;
    u0_m0_wo0_mtree_mult1_0_im0_b0 <= u0_m0_wo0_mtree_mult1_0_bs2_b;
    u0_m0_wo0_mtree_mult1_0_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_0_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_0_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_0_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_0_im0_s1
    );
    u0_m0_wo0_mtree_mult1_0_im0_q <= u0_m0_wo0_mtree_mult1_0_im0_s1;

    -- u0_m0_wo0_mtree_mult1_0_join_14(BITJOIN,768)@12
    u0_m0_wo0_mtree_mult1_0_join_14_q <= u0_m0_wo0_mtree_mult1_0_im11_q & u0_m0_wo0_mtree_mult1_0_im0_q;

    -- u0_m0_wo0_mtree_mult1_0_result_add_0_0(ADD,773)@12
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_mult1_0_join_14_q(44)) & u0_m0_wo0_mtree_mult1_0_join_14_q));
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 42 => u0_m0_wo0_mtree_mult1_0_align_15_q(41)) & u0_m0_wo0_mtree_mult1_0_align_15_q));
    u0_m0_wo0_mtree_mult1_0_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_0_result_add_0_0_o(45 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_result_add_1_0(ADD,774)@13
    u0_m0_wo0_mtree_mult1_0_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_0_result_add_0_0_q(45)) & u0_m0_wo0_mtree_mult1_0_result_add_0_0_q));
    u0_m0_wo0_mtree_mult1_0_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 39 => u0_m0_wo0_mtree_mult1_0_align_17_q(38)) & u0_m0_wo0_mtree_mult1_0_align_17_q));
    u0_m0_wo0_mtree_mult1_0_result_add_1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_1_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_result_add_1_0_q <= u0_m0_wo0_mtree_mult1_0_result_add_1_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_add0_0(ADD,118)@14
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_result_add_1_0_q(45 downto 0));
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_1_result_add_1_0_q);
    u0_m0_wo0_mtree_add0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(45 downto 0);

    -- u0_m0_wo0_mtree_add1_0(ADD,136)@15
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_add0_0_q(45)) & u0_m0_wo0_mtree_add0_0_q));
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_mult1_3_result_add_1_0_q(45)) & u0_m0_wo0_mtree_mult1_3_result_add_1_0_q));
    u0_m0_wo0_mtree_add1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_add2_0(ADD,145)@16
    u0_m0_wo0_mtree_add2_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add1_0_q(46)) & u0_m0_wo0_mtree_add1_0_q));
    u0_m0_wo0_mtree_add2_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add1_1_q(46)) & u0_m0_wo0_mtree_add1_1_q));
    u0_m0_wo0_mtree_add2_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_0_a) + SIGNED(u0_m0_wo0_mtree_add2_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_0_q <= u0_m0_wo0_mtree_add2_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_add3_0(ADD,150)@17
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 48 => u0_m0_wo0_mtree_add2_0_q(47)) & u0_m0_wo0_mtree_add2_0_q));
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add2_1_q(49)) & u0_m0_wo0_mtree_add2_1_q));
    u0_m0_wo0_mtree_add3_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(50 downto 0);

    -- u0_m0_wo0_mtree_add4_0(ADD,152)@18
    u0_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 51 => u0_m0_wo0_mtree_add3_0_q(50)) & u0_m0_wo0_mtree_add3_0_q));
    u0_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 52 => u0_m0_wo0_mtree_add3_1_q(51)) & u0_m0_wo0_mtree_add3_1_q));
    u0_m0_wo0_mtree_add4_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_0_a) + SIGNED(u0_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_0_q <= u0_m0_wo0_mtree_add4_0_o(52 downto 0);

    -- u0_m0_wo0_mtree_add5_0(ADD,153)@19
    u0_m0_wo0_mtree_add5_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((53 downto 53 => u0_m0_wo0_mtree_add4_0_q(52)) & u0_m0_wo0_mtree_add4_0_q));
    u0_m0_wo0_mtree_add5_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((53 downto 48 => u0_m0_wo0_mtree_add2_4_q(47)) & u0_m0_wo0_mtree_add2_4_q));
    u0_m0_wo0_mtree_add5_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add5_0_a) + SIGNED(u0_m0_wo0_mtree_add5_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add5_0_q <= u0_m0_wo0_mtree_add5_0_o(53 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- d_u0_m0_wo0_memread_q_19(DELAY,775)@10
    d_u0_m0_wo0_memread_q_19 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9 )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_memread_q_19_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_oseq_gated_reg(REG,154)@19
    u0_m0_wo0_oseq_gated_reg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(d_u0_m0_wo0_memread_q_19_q);
        END IF;
    END PROCESS;

    -- xOut(PORTOUT,157)@20
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_mtree_add5_0_q;

END normal;
